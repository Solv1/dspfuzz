 

void IMG_wave_decom_two_dim( int **image, int *ws, int Width, int Height, int *wavename, int Level )
{
	int		i, k, half, ImgWid;
	
	ImgWid = Width;	
	for( k = 0; k < Level; k++ )
	{	
		half = Height>>1;	
		for( i = 0; i < Height; i++ )   
			decomInplace( image[i], ws, Width, wavename );
		for( i = 0; i < Width; i++ )
		{
			col2row( &image[0][i], ws, ImgWid, Height );
			decomCol( ws, &image[0][i], &image[half][i], ImgWid, Height, wavename ); 
		}
		Width>>=1; Height>>=1;
	}
}

void IMG_wave_recon_two_dim( int **image, int *ws, int Width, int Height, int *wavename, int Level )
{ 
	int		i, k, half, ImgWid;         
	
	ImgWid = Width;   
	Width>>=(Level-1); Height>>=(Level-1);
	for( k = 0; k < Level; k++ )
	{
		half = Height>>1;
		for( i = 0; i < Width; i++ )
   		{
   			interlaceCol( &image[0][i], &image[half][i], ws, ImgWid, Height, wavename[0] );
   			reconCol( ws, &image[0][i], ImgWid, Height, wavename );
   		}
   		for( i = 0; i < Height; i++ ) 
			reconInplace( image[i], ws, Width, wavename );
		Width<<=1; Height<<=1;
	}
}
void IMG_wavep_decom_two_dim( int **image, int *ws, int Width, int Height, int *wavename, int Level )
{
	int		i, j, k, half, ImgWid, ImgHt;  
	int		row_start, col_start, seg_num;
	
	ImgWid = Width;	ImgHt = Height;
	seg_num = 1;
	for( k = 0; k < Level; k++ )
	{	
		//Do the decomposition for each row         
		//-----------------------------------------------------------
		for( i = 0; i < ImgHt; i++ )
		{
			row_start = 0;
			for( j = 0; j < seg_num; j++ )
			{   
				decomInplace( &image[i][row_start], ws, Width, wavename );
				row_start += Width;    
			}   
		}
		//===========================================================  
			
		//Do the decomposition for each column
		//----------------------------------------------------------- 
		for( i = 0; i < ImgWid; i++ )
		{
			col_start = 0; 
			for( j = 0; j < seg_num; j++)
			{
				half = col_start + (Height>>1);
				col2row( &image[col_start][i], ws, ImgWid, Height );
				decomCol( ws, &image[col_start][i], &image[half][i], ImgWid, Height, wavename ); 
				col_start += Height;
			}
		}       
		//===========================================================
		Width>>=1; Height>>=1;
		seg_num<<=1;   
	}
}

void IMG_wavep_recon_two_dim( int **image, int *ws, int Width, int Height, int *wavename, int Level )
{         
	int		i, j, k, half, ImgWid, ImgHt;  
	int		row_start, col_start, seg_num;
	
	ImgWid  = Width;	
	ImgHt   = Height;    
	Width >>=(Level-1);         
	Height>>=(Level-1);
	seg_num = 1<<(Level-1);
	
	for( k = 0; k < Level; k++ )
	{	
		//Do the reconstruction for each column
		//----------------------------------------------------------- 
		for( i = 0; i < ImgWid; i++ )
		{
			col_start = 0; 
			for( j = 0; j < seg_num; j++)
			{
				half = col_start + (Height>>1);
				interlaceCol( &image[col_start][i], &image[half][i], ws, ImgWid, Height, wavename[0] );
				reconCol( ws, &image[col_start][i], ImgWid, Height, wavename ); 
				col_start += Height;
			}
		}       
		//Do the reconstruction for each row         
		//-----------------------------------------------------------
		for( i = 0; i < ImgHt; i++ )
		{
			row_start = 0;
			for( j = 0; j < seg_num; j++ )
			{   
				reconInplace( &image[i][row_start], ws, Width, wavename );
				row_start += Width;    
			}   
		}
		
		Width<<=1; Height<<=1;
		seg_num>>=1;  
	}
}


