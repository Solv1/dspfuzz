#ifndef _IMAGELIB
#define _IMAGELIB
void IMG_conv_3x3(unsigned char *input, unsigned char *output,unsigned char *mask,int column, int shift); 
void IMG_corr_3x3(unsigned char *input, unsigned char *output,unsigned char *mask,int row, int column, int shift, int roundval);
void IMG_dequantize_8x8(short *quantize_tbl, short *deq_data);
void IMG_fdct_8x8 (short *fdct_data, short *inter_buffer);
void IMG_idct_8x8 (short *idct_data, short *inter_buffer);
void IMG_jpeg_make_recip_tbl(short *quantize_tbl);
void IMG_jpeg_quantize(short *quantize_input, short *zigzag, short *recip_tbl,int *quantize_output);
void IMG_jpeg_vlc(int *ptr,int *output,int *VLC_status, int type); 
void IMG_mad_8x8(unsigned short *ref_data, unsigned short* src_data, int pitch, int sx, int sy, unsigned int *match);
void IMG_mad_16x16(unsigned short *ref_data,unsigned short *src_data, int pitch, int sx, int sy,unsigned int *match);
void IMG_mad_16x16_4step(short *src_data, short * search_window, unsigned int *match);
void IMG_pix_inter_16x16(short *reference_window, short *pixel_inter_block,  int offset, short align_variable);
void IMG_sw_fdct_8x8 (short *fdct_data, short *inter_buffer);
void IMG__sw_idct_8x8 (short *idct_data, short *inter_buffer);
void IMG_wave_decom_one_dim(short *in_data, short *wksp, int *wavename, int length, int level);
void IMG_wave_decom_two_dim(short **image, short * wksp, int width, int height, int *wavename, int level);
void IMG_wave_recon_one_dim(short *in_data, short *wksp, int *wavename, int length, int level);
void IMG_wave_recon_two_dim(short **image, short * wksp, int width, int height, int *wavename, int level);
void IMG_wavep_decom_one_dim(short *in_data, short *wksp, int *wavename, int length, int level);
void IMG_wavep_decom_two_dim(short **image, short * wksp, int width, int height, int *wavename,int level);
void IMG_wavep_recon_one_dim(short *in_data, short *wksp, int *wavename, int length, int level);
void IMG_wavep_recon_two_dim(short **image, short * wksp, int width, int height, int *wavename, int level);
void IMG_boundary(short * in_data, int rows, int cols, int *out_coord, int *out_gray);
void IMG_histogram(short * in_data, short *out_data, int size);
void IMG_perimeter( short * in_data, int cols, short *out_data);
void IMG_scale_by_2(short *org_image, short *inter_image, int row, int column);
unsigned short IMG_sad_8x8(unsigned short *srcImg, unsigned short *search_point, int pitch);
unsigned short IMG_sad_16x16(unsigned short *srcImg,unsigned short *search_point, int pitch);
void IMG_threshold(short * in_data, short *out_data, short cols, short rows, short threshold_value);
void IMG_ycbcr422_rgb565(short *coeff,short *y_data,short *cb_data,short *cr_data, short *rgb_data, short size); 
#endif
