#include <stdio.h>

#include "common.h"
#include "jpec.h"
#include "input.h"

#define OUTPUT_IMAGE_NAME "output.jpg"
#define OUTPUT_IMAGE_QUALITY 90

#define INPUT_IMAGE_WIDTH 176
#define INPUT_IMAGE_HEIGHT 104

int32_t jpeg_test(uint16_t * input, uint16_t w, uint16_t h)
{
    // uint16_t w = INPUT_IMAGE_WIDTH;
    // uint16_t h = INPUT_IMAGE_HEIGHT;
    // jpec_enc_t *e = jpec_enc_new2(test_data, w, h, OUTPUT_IMAGE_QUALITY);
    jpec_enc_t *e = jpec_enc_new2(input, w, h, OUTPUT_IMAGE_QUALITY);

    // printf("Image width: %u\r\n", w);
    // printf("Image height: %u\r\n", h);
    // printf("Output image quality: %u\r\n", OUTPUT_IMAGE_QUALITY);

    int32_t len;
    const uint16_t *jpeg = jpec_enc_run(e, &len);

    uint32_t checksum = 0;
    uint32_t i;
    for (i = 0; i < len; i++)
    {
        checksum += jpeg[i];
    }
    // printf("Output image size: %d\r\n", len);
    // printf("Output image checksum: %u\r\n", checksum);

#if HOST_TEST
    FILE *file = fopen(OUTPUT_IMAGE_NAME, "wb");
    fwrite(jpeg, sizeof(uint16_t), len, file);
    fclose(file);
    printf("Output image written to %s\r\n", OUTPUT_IMAGE_NAME);
#endif  // HOST_TEST

    return 0;
}
