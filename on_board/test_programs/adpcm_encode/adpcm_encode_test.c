////////////////////////////////////////////////////////////////////////////
//                           **** ADPCM-XQ ****                           //
//                  Xtreme Quality ADPCM Encoder/Decoder                  //
//                    Copyright (c) 2024 David Bryant.                    //
//                          All Rights Reserved.                          //
//      Distributed under the BSD Software License (see license.txt)      //
////////////////////////////////////////////////////////////////////////////

#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>
#include <math.h>
#include <float.h>
#include "adpcm-lib.h"

// This runtime macro is not strictly needed because the code is endian-safe,
// but including it improves performance on little-endian systems because we
// can avoid a couple loops through the audio.
#define IS_BIG_ENDIAN (*(uint16_t *)"\0\xff" < 0x0100)

#define ADPCM_FLAG_NOISE_SHAPING 0x1
#define ADPCM_FLAG_RAW_OUTPUT 0x2
#define ADPCM_FLAG_MEASURE_NOISE 0x4

#define FactHeaderFormat "4LL"
#define ChunkHeaderFormat "4L"
#define WaveHeaderFormat "SSLLSSSSLS"

#define WAVE_FORMAT_PCM 0x1
#define WAVE_FORMAT_IMA_ADPCM 0x11
#define WAVE_FORMAT_EXTENSIBLE 0xfffe


typedef double rms_error_t; // best if "double" or "uint64_t", "float" okay in a pinch
#define MAX_RMS_ERROR UINT32_MAX
// typedef double rms_error_t;     // best if "double" or "uint64_t", "float" okay in a pinch
// #define MAX_RMS_ERROR DBL_MAX



typedef struct
{
    char ckID[4];
    uint32_t ckSize;
    char formType[4];
} RiffChunkHeader;

typedef struct
{
    char ckID[4];
    uint32_t ckSize;
} ChunkHeader;

typedef struct
{
    uint16_t FormatTag, NumChannels;
    uint32_t SampleRate, BytesPerSecond;
    uint16_t BlockAlign, BitsPerSample;
    uint16_t cbSize;
    union
    {
        uint16_t ValidBitsPerSample;
        uint16_t SamplesPerBlock;
        uint16_t Reserved;
    } Samples;
    int32_t ChannelMask;
    uint16_t SubFormat;
    char GUID[14];
} WaveHeader;

typedef struct
{
    char ckID[4];
    uint32_t ckSize;
    uint32_t TotalSamples;
} FactHeader;

struct adpcm_channel
{
    const struct adpcm_context *cxt;   // read-only pointer back to context
    int32_t pcmdata;                   // current PCM value
    int32_t error, weight, history[2]; // for noise shaping
    int32_t shaping_weight;            // for noise shaping
    int16_t index;                      // current index into step size table
};

struct adpcm_context
{
    struct adpcm_channel channels[2];
    int num_channels, lookahead, noise_shaping;
    int static_shaping_weight;
};



#define CLIP(data, min, max) \
    if ((data) > (max))      \
        data = max;          \
    else if ((data) < (min)) \
        data = min;

#define NIBBLE_TO_DELTA(n) ((n) < 8 ? (n) + 1 : 7 - (n))
#define DELTA_TO_NIBBLE(d) ((d) < 0 ? 7 - (d) : (d) - 1)

struct adpcm_context g_adpcm_context;

/* step table */
static const uint16_t step_table[89] = {
    7, 8, 9, 10, 11, 12, 13, 14,
    16, 17, 19, 21, 23, 25, 28, 31,
    34, 37, 41, 45, 50, 55, 60, 66,
    73, 80, 88, 97, 107, 118, 130, 143,
    157, 173, 190, 209, 230, 253, 279, 307,
    337, 371, 408, 449, 494, 544, 598, 658,
    724, 796, 876, 963, 1060, 1166, 1282, 1411,
    1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024,
    3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484,
    7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899,
    15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794,
    32767};

/* step index tables */
static const int index_table[] = {
    /* adpcm data size is 4 */
    -1, -1, -1, -1, 2, 4, 6, 8};

static const int index_table_3bit[] = {
    /* adpcm data size is 3 */
    -1, -1, 1, 2};

static const int index_table_5bit[] = {
    /* adpcm data size is 5 */
    -1, -1, -1, -1, -1, -1, -1, -1, 1, 2, 4, 6, 8, 10, 13, 16};


static uint32_t adpcm_converter();
static int32_t flags = ADPCM_FLAG_NOISE_SHAPING;
static int32_t lookahead = 3;
static int32_t blocksize_pow2 = 0;
static double static_shaping_weight = 0.0;

static uint32_t write_adpcm_wav_header(int32_t num_channels, uint32_t num_samples, uint32_t sample_rate, int32_t samples_per_block, uint32_t* checksum);
static uint32_t adpcm_encode_data(uint16_t *input_file_buf, int32_t num_channels, uint32_t num_samples, int32_t samples_per_block, int32_t sample_rate, uint32_t* checksum);
static void little_endian_to_native(void *data, char *format);
static void native_to_little_endian(void *data, char *format);

/*--------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/


/* Create ADPCM encoder context with given number of channels.
 * The returned pointer is used for subsequent calls. Note that
 * even though an ADPCM encoder could be set up to encode frames
 * independently, we use a context so that we can use previous
 * data to improve quality (this encoder might not be optimal
 * for encoding independent frames).
 */

void *adpcm_create_context(int num_channels, int lookahead, int noise_shaping)
{
    struct adpcm_context *pcnxt = &g_adpcm_context;
    int ch;

    memset(pcnxt, 0, sizeof(struct adpcm_context));
    pcnxt->channels[0].cxt = pcnxt->channels[1].cxt = pcnxt;
    pcnxt->noise_shaping = noise_shaping;
    pcnxt->static_shaping_weight = 1024;
    pcnxt->num_channels = num_channels;
    pcnxt->lookahead = lookahead;

    // we set the indicies to invalid values so that we always recalculate them
    // on at least the first frame (and every frame if the depth is sufficient)

    for (ch = 0; ch < num_channels; ++ch)
        pcnxt->channels[ch].index = -1;

    return pcnxt;
}

/* Set the shaping weight in range: -1.0 > weight >= 1.0.
 * Note that previously this was fixed to pure first-order (i.e., 1.0).
 * Also, values very close to -1.0 are not recommended because
 * of the high DC gain.
 */

void adpcm_set_shaping_weight(void *p, double shaping_weight)
{
    struct adpcm_context *pcnxt = (struct adpcm_context *)p;

    pcnxt->static_shaping_weight = (int)floor(shaping_weight * 1024.0 + 0.5);

    if (pcnxt->static_shaping_weight > 1024)
        pcnxt->static_shaping_weight = 1024;
    if (pcnxt->static_shaping_weight < -1023)
        pcnxt->static_shaping_weight = -1023;
}

// Apply noise-shaping to the supplied sample value using the shaping_weight
// and accumulated error term stored in the adpcm_channel structure. Note that
// the error term in the structure is updated, but won't be "correct" until the
// final re-quantized sample value is added to it (and of course we don't know
// that value yet).

static inline int32_t noise_shape(struct adpcm_channel *pchan, int32_t sample)
{
    int32_t temp = -((pchan->shaping_weight * pchan->error + 512) >> 10);

    if (pchan->shaping_weight < 0 && temp)
    {
        if (temp == pchan->error)
        {
            temp = (temp < 0) ? temp + 1 : temp - 1;
        }

        pchan->error = -sample;
        sample += temp;
    }
    else
    {
        pchan->error = -(sample += temp);
    }

    return sample;
}

static rms_error_t minimum_error(const struct adpcm_channel *pchan, int nch, int32_t csample, const int16_t *sample, int depth, int *best_nibble, rms_error_t max_error)
{
    int32_t delta = csample - pchan->pcmdata, csample2;
    struct adpcm_channel chan = *pchan;
    uint16_t step = step_table[chan.index];
    uint16_t trial_delta = (step >> 3);
    int nibble, nibble2;
    rms_error_t min_error;

    // this odd-looking code always generates the nibble value with the least error,
    // regardless of step size (which was not true previously)

    if (delta < 0)
    {
        int mag = ((-delta << 2) + (step & 3) + ((step & 1) << 1)) / step;
        nibble = 0x8 | (mag > 7 ? 7 : mag);
    }
    else
    {
        int mag = ((delta << 2) + (step & 3) + ((step & 1) << 1)) / step;
        nibble = mag > 7 ? 7 : mag;
    }

    if (nibble & 1)
        trial_delta += (step >> 2);
    if (nibble & 2)
        trial_delta += (step >> 1);
    if (nibble & 4)
        trial_delta += step;

    if (nibble & 8)
        chan.pcmdata -= trial_delta;
    else
        chan.pcmdata += trial_delta;

    CLIP(chan.pcmdata, -32768, 32767);
    if (best_nibble)
        *best_nibble = nibble;
    min_error = (rms_error_t)(chan.pcmdata - csample) * (chan.pcmdata - csample);

    // if we're at a leaf, or we're not at a leaf but have already exceeded the error limit, return
    if (!depth || min_error >= max_error)
        return min_error;

    // otherwise we execute that naively closest nibble and search deeper for improvement

    chan.index += index_table[nibble & 0x07];
    CLIP(chan.index, 0, 88);
    csample2 = sample[nch];

    if (chan.cxt->noise_shaping)
    {
        chan.error += chan.pcmdata;
        csample2 = noise_shape(&chan, csample2);
    }

    min_error += minimum_error(&chan, nch, csample2, sample + nch, depth - 1, NULL, max_error - min_error);

    // min_error is the error (from here to the leaf) for the naively closest nibble.
    // We may be able to improve on that by doing an alternative (not closest) nibble.

    for (nibble2 = 0; nibble2 <= 0xF; ++nibble2)
    {
        rms_error_t error, threshold;

        if (nibble2 == nibble) // don't do the same value again
            continue;

        // we skip this trial if:
        // 1. we're not doing exhaustive search, and
        // 2. the trial value is not either 0x7 or 0x15 (i.e., delta +/- 8) and,
        // 3. the trial delta is greater than two away from the initial estimate...

        if (!(chan.cxt->lookahead & LOOKAHEAD_EXHAUSTIVE) && (~nibble2 & 0x7) &&
            abs(NIBBLE_TO_DELTA(nibble) - NIBBLE_TO_DELTA(nibble2)) > 2)
            continue;

        chan = *pchan;
        trial_delta = (step >> 3);

        if (nibble2 & 1)
            trial_delta += (step >> 2);
        if (nibble2 & 2)
            trial_delta += (step >> 1);
        if (nibble2 & 4)
            trial_delta += step;

        if (nibble2 & 8)
            chan.pcmdata -= trial_delta;
        else
            chan.pcmdata += trial_delta;

        CLIP(chan.pcmdata, -32768, 32767);

        error = (rms_error_t)(chan.pcmdata - csample) * (chan.pcmdata - csample);
        threshold = max_error < min_error ? max_error : min_error;

        if (error < threshold)
        {
            chan.index += index_table[nibble2 & 0x07];
            CLIP(chan.index, 0, 88);
            csample2 = sample[nch];

            if (chan.cxt->noise_shaping)
            {
                chan.error += chan.pcmdata;
                csample2 = noise_shape(&chan, csample2);
            }

            error += minimum_error(&chan, nch, csample2, sample + nch, depth - 1, NULL, threshold - error);

            if (error < min_error)
            {
                if (best_nibble)
                    *best_nibble = nibble2;
                min_error = error;
            }
        }
    }

    return min_error;
}

static uint16_t encode_sample(struct adpcm_context *pcnxt, int ch, const int16_t *sample, int num_samples)
{
    struct adpcm_channel *pchan = pcnxt->channels + ch;
    int32_t csample = *sample;
    int depth = num_samples - 1, nibble;
    uint16_t step = step_table[pchan->index];
    uint16_t trial_delta = (step >> 3);

    if (pcnxt->noise_shaping == NOISE_SHAPING_DYNAMIC)
    {
        int32_t sam = (3 * pchan->history[0] - pchan->history[1]) >> 1;
        int32_t temp = csample - (((pchan->weight * sam) + 512) >> 10);

        if (sam && temp)
            pchan->weight -= (((sam ^ temp) >> 29) & 4) - 2;
        pchan->history[1] = pchan->history[0];
        pchan->history[0] = csample;

        pchan->shaping_weight = (pchan->weight < 256) ? 1024 : 1536 - (pchan->weight * 2);
    }
    else if (pcnxt->noise_shaping == NOISE_SHAPING_STATIC)
        pchan->shaping_weight = pcnxt->static_shaping_weight;

    if (pcnxt->noise_shaping)
        csample = noise_shape(pchan, csample);

    if (depth > (pcnxt->lookahead & LOOKAHEAD_DEPTH))
        depth = (pcnxt->lookahead & LOOKAHEAD_DEPTH);

    minimum_error(pchan, pcnxt->num_channels, csample, sample, depth, &nibble, MAX_RMS_ERROR);

    if (nibble & 1)
        trial_delta += (step >> 2);
    if (nibble & 2)
        trial_delta += (step >> 1);
    if (nibble & 4)
        trial_delta += step;

    if (nibble & 8)
        pchan->pcmdata -= trial_delta;
    else
        pchan->pcmdata += trial_delta;

    pchan->index += index_table[nibble & 0x07];
    CLIP(pchan->index, 0, 88);
    CLIP(pchan->pcmdata, -32768, 32767);

    if (pcnxt->noise_shaping)
        pchan->error += pchan->pcmdata;

    return nibble;
}

static void encode_chunks(struct adpcm_context *pcnxt, uint16_t **outbuf, size_t *outbufsize, const int16_t **inbuf, int inbufcount)
{
    const int16_t *pcmbuf;
    int chunks, ch, i;

    chunks = (inbufcount - 1) / 8;
    *outbufsize += (chunks * 4) * pcnxt->num_channels;

    while (chunks--)
    {
        for (ch = 0; ch < pcnxt->num_channels; ch++)
        {
            pcmbuf = *inbuf + ch;

            for (i = 0; i < 4; i++)
            {
                **outbuf = encode_sample(pcnxt, ch, pcmbuf, chunks * 8 + (3 - i) * 2 + 2);
                pcmbuf += pcnxt->num_channels;
                **outbuf |= encode_sample(pcnxt, ch, pcmbuf, chunks * 8 + (3 - i) * 2 + 1) << 4;
                pcmbuf += pcnxt->num_channels;
                (*outbuf)++;
            }
        }

        *inbuf += 8 * pcnxt->num_channels;
    }
}

/* Encode a block of 16-bit PCM data into 4-bit ADPCM.
 *
 * Parameters:
 *  p               the context returned by adpcm_begin()
 *  outbuf          destination buffer
 *  outbufsize      pointer to variable where the number of bytes written
 *                   will be stored
 *  inbuf           source PCM samples
 *  inbufcount      number of composite PCM samples provided (note: this is
 *                   the total number of 16-bit samples divided by the number
 *                   of channels)
 *
 * Returns 1 (for success as there is no error checking)
 */

int adpcm_encode_block(void *p, uint16_t *outbuf, size_t *outbufsize, const int16_t *inbuf, int inbufcount)
{
    struct adpcm_context *pcnxt = (struct adpcm_context *)p;
    int depth = inbufcount - 1;
    int ch;
	int tindex = 0;

    *outbufsize = 0;

    if (!inbufcount)
        return 1;

    if (depth > (pcnxt->lookahead & LOOKAHEAD_DEPTH))
        depth = (pcnxt->lookahead & LOOKAHEAD_DEPTH);

    for (ch = 0; ch < pcnxt->num_channels; ch++)
        pcnxt->channels[ch].pcmdata = *inbuf++;

    // Use minimum_error() to find the optimum initial index if this is the first frame or
    // the lookahead depth is at least 3. Below that just using the value leftover from
    // the previous frame is better, and of course faster.

    if (pcnxt->channels[0].index < 0 || depth >= 3)
        for (ch = 0; ch < pcnxt->num_channels; ch++)
        {
            rms_error_t min_error = MAX_RMS_ERROR;
            rms_error_t error_per_index[89];
            int best_index;

            if (depth < 3) // don't use a lower depth than 3 for this
                depth = 3;

            for (tindex = 0; tindex <= 88; tindex++)
            {
                struct adpcm_channel chan = pcnxt->channels[ch];

                chan.index = tindex;
                chan.shaping_weight = 0;
                error_per_index[tindex] = minimum_error(&chan, pcnxt->num_channels, inbuf[ch], inbuf + ch, depth, NULL, MAX_RMS_ERROR);
            }

            // we use a 3-wide average window because the minimum_error() results can be noisy

            for (tindex = 0; tindex <= 87; tindex++)
            {
                rms_error_t terror = error_per_index[tindex];

                if (tindex)
                    terror = (error_per_index[tindex - 1] + terror + error_per_index[tindex + 1]) / 3;

                if (terror < min_error)
                {
                    best_index = tindex;
                    min_error = terror;
                }
            }

            pcnxt->channels[ch].index = best_index;
        }

    for (ch = 0; ch < pcnxt->num_channels; ch++)
    {
        outbuf[0] = pcnxt->channels[ch].pcmdata;
        outbuf[1] = pcnxt->channels[ch].pcmdata >> 8;
        outbuf[2] = pcnxt->channels[ch].index;
        outbuf[3] = 0;

        outbuf += 4;
        *outbufsize += 4;
    }

    encode_chunks(pcnxt, &outbuf, outbufsize, &inbuf, inbufcount);

    return 1;
}

/********************************* 4-bit ADPCM decoder ********************************/

/* Decode the block of 4-bit ADPCM data into PCM. This requires no context because ADPCM
 * blocks are independently decodable. This assumes that a single entire block is always
 * decoded; it must be called multiple times for multiple blocks and cannot resume in the
 * middle of a block. Note that for all other bit depths, use adpcm_decode_block_ex().
 *
 * Parameters:
 *  outbuf          destination for interleaved PCM samples
 *  inbuf           source ADPCM block
 *  inbufsize       size of source ADPCM block
 *  channels        number of channels in block (must be determined from other context)
 *
 * Returns number of converted composite samples (total samples divided by number of channels)
 */

int adpcm_decode_block(int16_t *outbuf, const uint16_t *inbuf, size_t inbufsize, int channels)
{
    int ch, samples = 1, chunks;
    int32_t pcmdata[2];
    int16_t index[2];

    if (inbufsize < (uint32_t)channels * 4)
        return 0;

    for (ch = 0; ch < channels; ch++)
    {
        *outbuf++ = pcmdata[ch] = (int16_t)(inbuf[0] | (inbuf[1] << 8));
        index[ch] = inbuf[2];

        if (index[ch] < 0 || index[ch] > 88 || inbuf[3]) // sanitize the input a little...
            return 0;

        inbufsize -= 4;
        inbuf += 4;
    }

    chunks = inbufsize / (channels * 4);
    samples += chunks * 8;

    while (chunks--)
    {
        int ch, i;

        for (ch = 0; ch < channels; ++ch)
        {

            for (i = 0; i < 4; ++i)
            {
                uint16_t step = step_table[index[ch]], delta = step >> 3;

                if (*inbuf & 1)
                    delta += (step >> 2);
                if (*inbuf & 2)
                    delta += (step >> 1);
                if (*inbuf & 4)
                    delta += step;

                if (*inbuf & 8)
                    pcmdata[ch] -= delta;
                else
                    pcmdata[ch] += delta;

                index[ch] += index_table[*inbuf & 0x7];
                CLIP(index[ch], 0, 88);
                CLIP(pcmdata[ch], -32768, 32767);
                outbuf[i * 2 * channels] = pcmdata[ch];

                step = step_table[index[ch]];
                delta = step >> 3;

                if (*inbuf & 0x10)
                    delta += (step >> 2);
                if (*inbuf & 0x20)
                    delta += (step >> 1);
                if (*inbuf & 0x40)
                    delta += step;

                if (*inbuf & 0x80)
                    pcmdata[ch] -= delta;
                else
                    pcmdata[ch] += delta;

                index[ch] += index_table[(*inbuf >> 4) & 0x7];
                CLIP(index[ch], 0, 88);
                CLIP(pcmdata[ch], -32768, 32767);
                outbuf[(i * 2 + 1) * channels] = pcmdata[ch];

                inbuf++;
            }

            outbuf++;
        }

        outbuf += channels * 7;
    }

    return samples;
}

/********************************* 4-bit ADPCM decoder ********************************/

/* Decode the block of ADPCM data, with from 2 to 5 bits per sample, into 16-bit PCM.
 * This requires no context because ADPCM blocks are independently decodable. This assumes
 * that a single entire block is always decoded; it must be called multiple times for
 * multiple blocks and cannot resume in the middle of a block.
 *
 * Parameters:
 *  outbuf          destination for interleaved PCM samples
 *  inbuf           source ADPCM block
 *  inbufsize       size of source ADPCM block
 *  channels        number of channels in block (must be determined from other context)
 *  bps             bits per ADPCM sample (2-5, must be determined from other context)
 *
 * Returns number of converted composite samples (total samples divided by number of channels)
 */

int adpcm_decode_block_ex(int16_t *outbuf, const uint16_t *inbuf, size_t inbufsize, int channels, int bps)
{
    int samples = 1, ch;
    int32_t pcmdata[2];
    int16_t index[2];

    if (bps == 4)
        return adpcm_decode_block(outbuf, inbuf, inbufsize, channels);

    if (bps < 2 || bps > 5 || inbufsize < (uint32_t)channels * 4)
        return 0;

    for (ch = 0; ch < channels; ch++)
    {
        *outbuf++ = pcmdata[ch] = (int16_t)(inbuf[0] | (inbuf[1] << 8));
        index[ch] = inbuf[2];

        if (index[ch] < 0 || index[ch] > 88 || inbuf[3]) // sanitize the input a little...
            return 0;

        inbufsize -= 4;
        inbuf += 4;
    }

    if (!inbufsize || (inbufsize % (channels * 4))) // extra clean
        return samples;

    samples += inbufsize / channels * 8 / bps;

    switch (bps)
    {
    case 2:
        for (ch = 0; ch < channels; ++ch)
        {
            int shiftbits = 0, numbits = 0, i, j;

            for (j = i = 0; i < samples - 1; ++i)
            {
                uint16_t step = step_table[index[ch]];

                if (numbits < bps)
                {
                    shiftbits |= inbuf[(j & ~3) * channels + (ch * 4) + (j & 3)] << numbits;
                    numbits += 8;
                    j++;
                }

                if (shiftbits & 2)
                    pcmdata[ch] -= step * (shiftbits & 1) + (step >> 1);
                else
                    pcmdata[ch] += step * (shiftbits & 1) + (step >> 1);

                index[ch] += (shiftbits & 1) * 3 - 1;
                shiftbits >>= bps;
                numbits -= bps;

                CLIP(index[ch], 0, 88);
                CLIP(pcmdata[ch], -32768, 32767);
                outbuf[i * channels + ch] = pcmdata[ch];
            }
        }

        break;

    case 3:
        for (ch = 0; ch < channels; ++ch)
        {
            int shiftbits = 0, numbits = 0, i, j;

            for (j = i = 0; i < samples - 1; ++i)
            {
                uint16_t step = step_table[index[ch]], delta = step >> 2;

                if (numbits < bps)
                {
                    shiftbits |= inbuf[(j & ~3) * channels + (ch * 4) + (j & 3)] << numbits;
                    numbits += 8;
                    j++;
                }

                if (shiftbits & 1)
                    delta += (step >> 1);
                if (shiftbits & 2)
                    delta += step;

                if (shiftbits & 4)
                    pcmdata[ch] -= delta;
                else
                    pcmdata[ch] += delta;

                index[ch] += index_table_3bit[shiftbits & 0x3];
                shiftbits >>= bps;
                numbits -= bps;

                CLIP(index[ch], 0, 88);
                CLIP(pcmdata[ch], -32768, 32767);
                outbuf[i * channels + ch] = pcmdata[ch];
            }
        }

        break;

    case 5:
        for (ch = 0; ch < channels; ++ch)
        {
            int shiftbits = 0, numbits = 0, i, j;

            for (j = i = 0; i < samples - 1; ++i)
            {
                uint16_t step = step_table[index[ch]], delta = step >> 4;

                if (numbits < bps)
                {
                    shiftbits |= inbuf[(j & ~3) * channels + (ch * 4) + (j & 3)] << numbits;
                    numbits += 8;
                    j++;
                }

                if (shiftbits & 1)
                    delta += (step >> 3);
                if (shiftbits & 2)
                    delta += (step >> 2);
                if (shiftbits & 4)
                    delta += (step >> 1);
                if (shiftbits & 8)
                    delta += step;

                if (shiftbits & 0x10)
                    pcmdata[ch] -= delta;
                else
                    pcmdata[ch] += delta;

                index[ch] += index_table_5bit[shiftbits & 0xf];
                shiftbits >>= bps;
                numbits -= bps;

                CLIP(index[ch], 0, 88);
                CLIP(pcmdata[ch], -32768, 32767);
                outbuf[i * channels + ch] = pcmdata[ch];
            }
        }

        break;

    default:
        return 0;
    }

    return samples;
}


static uint32_t adpcm_converter(uint16_t * input, int16_t len)
{
    volatile uint32_t noprint_output;
    uint32_t checksum = 0;
    uint32_t bytes_written = 0;
    int32_t format = 0;
    int32_t bits_per_sample = 0;
    int32_t num_channels;
    uint32_t fact_samples = 0;
    uint32_t num_samples = 0;
    uint32_t sample_rate;
    RiffChunkHeader *riff_chunk_header;
    ChunkHeader *chunk_header;
    WaveHeader *pWaveHeader;

    uint16_t* input_file_buf = (uint16_t*)input;
    // printf("Input file size = %zu bytes\r\n", sizeof(test_data));

    // Read initial RIFF form header
    riff_chunk_header = (RiffChunkHeader *)input;
    input_file_buf += sizeof(RiffChunkHeader);
    if (strncmp(riff_chunk_header->ckID, "RIFF", 4) ||
        strncmp(riff_chunk_header->formType, "WAVE", 4))
    {
        // printf("Input is not a valid .WAV file!\r\n");
        return -1;
    }

    // Loop through all elements of the RIFF wav header (until the data chuck)
    while (1)
    {
        chunk_header = (ChunkHeader *)input_file_buf;
        input_file_buf += sizeof(ChunkHeader);

        little_endian_to_native(&chunk_header, ChunkHeaderFormat);

        // If it's the format chunk, we want to get some info out of there and make sure it's a .wav file we can handle
        if (!strncmp(chunk_header->ckID, "fmt ", 4))
        {
            int32_t supported = 1;

            if (chunk_header->ckSize < 16 || chunk_header->ckSize > sizeof(*pWaveHeader))
            {
                // printf("Input is not a valid .WAV file!\r\n");
                return -1;
            }

            pWaveHeader = (WaveHeader *)input_file_buf;
            input_file_buf += chunk_header->ckSize;

            little_endian_to_native(&pWaveHeader, WaveHeaderFormat);

            format = (pWaveHeader->FormatTag == WAVE_FORMAT_EXTENSIBLE && chunk_header->ckSize == 40) ? pWaveHeader->SubFormat : pWaveHeader->FormatTag;

            bits_per_sample = (chunk_header->ckSize == 40 && pWaveHeader->Samples.ValidBitsPerSample) ? pWaveHeader->Samples.ValidBitsPerSample : pWaveHeader->BitsPerSample;

            if (pWaveHeader->NumChannels < 1 || pWaveHeader->NumChannels > 2)
            {
                supported = 0;
            }
            else if (format == WAVE_FORMAT_PCM)
            {

                if (bits_per_sample < 9 || bits_per_sample > 16)
                {
                    supported = 0;
                }

                if (pWaveHeader->BlockAlign != pWaveHeader->NumChannels * 2)
                {
                    supported = 0;
                }
            }
            else
                supported = 0;

            if (!supported)
            {
                // printf("Input is an unsupported .WAV format!\r\n");
                return -1;
            }

            // printf("Input channels = %u\r\n", pWaveHeader->NumChannels);
            // printf("Input bits per sample = %u\r\n", pWaveHeader->BitsPerSample);
            // printf("Input sample rate = %u\r\n", pWaveHeader->SampleRate);
        }
        else if (!strncmp(chunk_header->ckID, "fact", 4))
        {
            memcpy(&fact_samples, input_file_buf, sizeof(fact_samples));
            input_file_buf += sizeof(fact_samples);

            little_endian_to_native(&fact_samples, "L");

            if (chunk_header->ckSize > 4)
            {
                int32_t bytes_to_skip = chunk_header->ckSize - 4;

                while (bytes_to_skip--)
                {
                    input_file_buf++;
                }
            }
        }
        else if (!strncmp(chunk_header->ckID, "data", 4))
        {
            // On the data chunk, get size and exit parsing loop
            if (!pWaveHeader->NumChannels)
            {
                // printf("Input is not a valid .WAV file!\r\n");
                return -1;
            }

            if (!chunk_header->ckSize)
            {
                // printf("This .WAV file has no audio samples, probably is corrupt!\r\n");
                return -1;
            }

            if (format == WAVE_FORMAT_PCM)
            {
                if (chunk_header->ckSize % pWaveHeader->BlockAlign)
                {
                    // printf("Input is not a valid .WAV file!\r\n");
                    return -1;
                }

                num_samples = chunk_header->ckSize / pWaveHeader->BlockAlign;
            }
            else
            {
                uint32_t complete_blocks = chunk_header->ckSize / pWaveHeader->BlockAlign;
                int32_t leftover_bytes = chunk_header->ckSize % pWaveHeader->BlockAlign;
                int32_t samples_last_block;

                num_samples = complete_blocks * pWaveHeader->Samples.SamplesPerBlock;

                if (leftover_bytes)
                {
                    if (leftover_bytes % (pWaveHeader->NumChannels * 4))
                    {
                        // printf("Input is not a valid .WAV file!\r\n");
                        return -1;
                    }

                    // printf("Data chunk has %d bytes left over for final ADPCM block\r\n", leftover_bytes);
                    samples_last_block = ((leftover_bytes - (pWaveHeader->NumChannels * 4)) * 8) / (bits_per_sample * pWaveHeader->NumChannels) + 1;
                    num_samples += samples_last_block;
                }
                else
                {
                    samples_last_block = pWaveHeader->Samples.SamplesPerBlock;
                }

                if (fact_samples)
                {
                    if (fact_samples < num_samples && fact_samples > num_samples - samples_last_block)
                    {
                        // printf("total samples reduced %u by FACT chunk\r\n", (num_samples - fact_samples));
                        num_samples = fact_samples;
                    }
                    else if (pWaveHeader->NumChannels == 2 && (fact_samples >>= 1) < num_samples && fact_samples > num_samples - samples_last_block)
                    {
                        // printf("num samples reduced %u by [incorrect] FACT chunk\r\n", (num_samples - fact_samples));
                        num_samples = fact_samples;
                    }
                }
            }

            if (!num_samples)
            {
                // printf("This .WAV file has no audio samples, probably is corrupt!\r\n");
                return -1;
            }

            // printf("Total input samples = %u\r\n", num_samples);

            num_channels = pWaveHeader->NumChannels;
            sample_rate = pWaveHeader->SampleRate;
            break;
        }
        else
        {
            // just ignore unknown chunks
            int32_t bytes_to_eat = (chunk_header->ckSize + 1) & ~1L;

            // printf("extra unknown chunk \"%c%c%c%c\" of %d bytes\r\n",
            //        chunk_header->ckID[0], chunk_header->ckID[1], chunk_header->ckID[2],
            //        chunk_header->ckID[3], chunk_header->ckSize);

            while (bytes_to_eat--)
            {
                input_file_buf++;
            }
        }
    }

    if (format == WAVE_FORMAT_PCM)
    {
        int32_t block_size, samples_per_block;

        if (blocksize_pow2)
            block_size = 1 << blocksize_pow2;
        else
            block_size = 256 * num_channels * (sample_rate < 11000 ? 1 : sample_rate / 11000);

        samples_per_block = (block_size - num_channels * 4) * (num_channels ^ 3) + 1;

        // printf("Each %d byte ADPCM block will contain %d samples\r\n",
        //        block_size, samples_per_block);

        bytes_written += write_adpcm_wav_header(num_channels, num_samples, sample_rate, samples_per_block, &checksum);
        bytes_written += adpcm_encode_data(input_file_buf, num_channels, num_samples, samples_per_block, sample_rate, &checksum);
    }

    // printf("Output file size = %u bytes\r\n", bytes_written);
    // printf("Checksum = %u\r\n", checksum);
    noprint_output = bytes_written;
    noprint_output = checksum;
    (void)noprint_output;

    return checksum;
}

static uint32_t add_or_write_buffer(void *buffer, uint32_t size)
{
	uint32_t i;
    uint32_t checksum = 0;

    for (i = 0; i < size; i++)
    {
        checksum += ((uint16_t *)buffer)[i];
    }

    return checksum;
}

static uint32_t write_adpcm_wav_header(int32_t num_channels, uint32_t num_samples, uint32_t sample_rate, int32_t samples_per_block, uint32_t* checksum)
{
    RiffChunkHeader riffhdr;
    ChunkHeader datahdr, fmthdr;
    WaveHeader wavhdr;
    FactHeader facthdr;

    uint32_t bytes_written = 0;
    int32_t wavhdrsize = 20;
    int32_t block_size = (samples_per_block - 1) / (num_channels ^ 3) + (num_channels * 4);
    uint32_t num_blocks = num_samples / samples_per_block;
    int32_t leftover_samples = num_samples % samples_per_block;
    uint32_t total_data_bytes = num_blocks * block_size;

    if (leftover_samples)
    {
        int32_t last_block_samples = ((leftover_samples + 6) & ~7) + 1;
        int32_t last_block_size = (last_block_samples - 1) / (num_channels ^ 3) + (num_channels * 4);
        total_data_bytes += last_block_size;
    }

    memset(&wavhdr, 0, sizeof(wavhdr));

    wavhdr.FormatTag = WAVE_FORMAT_IMA_ADPCM;
    wavhdr.NumChannels = num_channels;
    wavhdr.SampleRate = sample_rate;
    wavhdr.BytesPerSecond = sample_rate * block_size / samples_per_block;
    wavhdr.BlockAlign = block_size;
    wavhdr.BitsPerSample = 4;
    wavhdr.cbSize = 2;
    wavhdr.Samples.SamplesPerBlock = samples_per_block;

    strncpy(riffhdr.ckID, "RIFF", sizeof(riffhdr.ckID));
    strncpy(riffhdr.formType, "WAVE", sizeof(riffhdr.formType));
    riffhdr.ckSize = sizeof(riffhdr) + wavhdrsize + sizeof(facthdr) + sizeof(datahdr) + total_data_bytes;
    strncpy(fmthdr.ckID, "fmt ", sizeof(fmthdr.ckID));
    fmthdr.ckSize = wavhdrsize;
    strncpy(facthdr.ckID, "fact", sizeof(facthdr.ckID));
    facthdr.TotalSamples = num_samples;
    facthdr.ckSize = 4;

    strncpy(datahdr.ckID, "data", sizeof(datahdr.ckID));
    datahdr.ckSize = total_data_bytes;

    // write the RIFF chunks up to just before the data starts

    native_to_little_endian(&riffhdr, ChunkHeaderFormat);
    native_to_little_endian(&fmthdr, ChunkHeaderFormat);
    native_to_little_endian(&wavhdr, WaveHeaderFormat);
    native_to_little_endian(&facthdr, FactHeaderFormat);
    native_to_little_endian(&datahdr, ChunkHeaderFormat);

    *checksum += add_or_write_buffer(&riffhdr, sizeof(riffhdr));
    *checksum += add_or_write_buffer(&fmthdr, sizeof(fmthdr));
    *checksum += add_or_write_buffer(&wavhdr, wavhdrsize);
    *checksum += add_or_write_buffer(&facthdr, sizeof(facthdr));
    *checksum += add_or_write_buffer(&datahdr, sizeof(datahdr));

    bytes_written += sizeof(riffhdr) + sizeof(fmthdr) + wavhdrsize + sizeof(facthdr) + sizeof(datahdr);

    return bytes_written;
}

static uint32_t adpcm_encode_data(uint16_t *input_file_buf, int32_t num_channels, uint32_t num_samples, int32_t samples_per_block, int32_t sample_rate, uint32_t* checksum)
{
    int32_t block_size = (samples_per_block - 1) / (num_channels ^ 3) + (num_channels * 4);
    int16_t *pcm_block = malloc(samples_per_block * num_channels * 2);
    void *adpcm_block = malloc(block_size);
    void *adpcm_cnxt = NULL;
    uint32_t bytes_written = 0;

    if (!pcm_block || !adpcm_block)
    {
        // printf("could not allocate memory for buffers!\r\n");
        if(!pcm_block && adpcm_block){
            free(adpcm_block);
        }
        else if(pcm_block && !adpcm_block){
            free(pcm_block);
        }
        return -1;
    }

    while (num_samples)
    {
        int32_t this_block_adpcm_samples = samples_per_block;
        int32_t this_block_pcm_samples = samples_per_block;
        size_t num_bytes;

        if (this_block_pcm_samples > num_samples)
        {
            this_block_adpcm_samples = ((num_samples + 6) & ~7) + 1;
            block_size = (this_block_adpcm_samples - 1) / (num_channels ^ 3) + (num_channels * 4);
            this_block_pcm_samples = num_samples;
        }

        memcpy(pcm_block, input_file_buf, this_block_pcm_samples * num_channels * 2);
        input_file_buf += this_block_pcm_samples * num_channels * 2;

        if (IS_BIG_ENDIAN)
        {
            int32_t scount = this_block_pcm_samples * num_channels;
            uint16_t *cp = (uint16_t *)pcm_block;

            while (scount--)
            {
                int16_t temp = cp[0] + (cp[1] << 8);
                *(int16_t *)cp = temp;
                cp += 2;
            }
        }

        // if this is the last block and it's not full, duplicate the last sample(s) so we don't
        // create problems for the lookahead

        if (this_block_adpcm_samples > this_block_pcm_samples)
        {
            int16_t *dst = pcm_block + this_block_pcm_samples * num_channels;
            int16_t *src = dst - num_channels;
            int32_t dups = (this_block_adpcm_samples - this_block_pcm_samples) * num_channels;

            while (dups--)
                *dst++ = *src++;
        }

        if (!adpcm_cnxt)
        {
            int32_t noise_shaping;

            if (flags & ADPCM_FLAG_NOISE_SHAPING)
            {
                if (static_shaping_weight != 0.0)
                    noise_shaping = NOISE_SHAPING_STATIC;
                else if (sample_rate > 64000)
                {
                    noise_shaping = NOISE_SHAPING_STATIC;
                    static_shaping_weight = 1.0;
                }
                else
                    noise_shaping = NOISE_SHAPING_DYNAMIC;
            }
            else
                noise_shaping = NOISE_SHAPING_OFF;

            adpcm_cnxt = adpcm_create_context(num_channels, lookahead, noise_shaping);

            if (noise_shaping == NOISE_SHAPING_STATIC)
                adpcm_set_shaping_weight(adpcm_cnxt, static_shaping_weight);
        }

        adpcm_encode_block(adpcm_cnxt, adpcm_block, &num_bytes, pcm_block, this_block_adpcm_samples);

        if (num_bytes != block_size)
        {
            // printf("\radpcm_encode_block() did not return expected value (expected %d, got %d)!\r\n", block_size, (int32_t)num_bytes);
            free(adpcm_block);
            free(pcm_block);
            return -1;
        }

        *checksum += add_or_write_buffer(adpcm_block, block_size);
        bytes_written += block_size;

        num_samples -= this_block_pcm_samples;
    }
    free(adpcm_block);
    free(pcm_block);
    return bytes_written;
}

static void little_endian_to_native(void *data, char *format)
{
    uint16_t *cp = (uint16_t *)data;
    int32_t temp;

    while (*format)
    {
        switch (*format)
        {
        case 'L':
            temp = cp[0] + ((int32_t)cp[1] << 8) + ((int32_t)cp[2] << 16) + ((int32_t)cp[3] << 24);
            *(int32_t *)cp = temp;
            cp += 4;
            break;

        case 'S':
            temp = cp[0] + (cp[1] << 8);
            *(int16_t *)cp = (int16_t)temp;
            cp += 2;
            break;

        default:
            if (isdigit((uint16_t)*format))
                cp += *format - '0';

            break;
        }

        format++;
    }
}

static void native_to_little_endian(void *data, char *format)
{
    uint16_t *cp = (uint16_t *)data;
    int32_t temp;

    while (*format)
    {
        switch (*format)
        {
        case 'L':
            temp = *(int32_t *)cp;
            *cp++ = (uint16_t)temp;
            *cp++ = (uint16_t)(temp >> 8);
            *cp++ = (uint16_t)(temp >> 16);
            *cp++ = (uint16_t)(temp >> 24);
            break;

        case 'S':
            temp = *(int16_t *)cp;
            *cp++ = (uint16_t)temp;
            *cp++ = (uint16_t)(temp >> 8);
            break;

        default:
            if (isdigit((uint16_t)*format))
                cp += *format - '0';

            break;
        }

        format++;
    }
}





int32_t adpcm_encode(uint16_t * input, int16_t len)
{
    flags &= ~ADPCM_FLAG_NOISE_SHAPING;
    static_shaping_weight = 0.0;
    adpcm_converter(input, len);
    return 0;
}
