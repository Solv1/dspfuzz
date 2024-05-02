 

void  IMG_wave_decom_one_dim( int *in_data, int *wksp, int *wavename, int Length, int Level )
{          
	int		i;
	for( i = 0; i < Level; i++ )
	{
		decomInplace( in_data, wksp, Length, wavename );
		Length>>=1;
	}
}

void IMG_wave_recon_one_dim( int *in_data, int *wksp, int *wavename, int Length, int Level )
{         
	int		i;      
	
	Length>>=(Level-1);
	for( i = 0; i < Level; i++ )
	{
		reconInplace(in_data, wksp, Length, wavename);
		Length<<=1;
	}
}	  

void IMG_wavep_decom_one_dim( int *in_data, int *wksp, int *wavename, int Length, int Level )
{          
	int		i, j;   
	int		start, seg_num;
	
	seg_num = 1;
	for( i = 0; i < Level; i++ )
	{   
		start = 0;         
		for( j = 0; j < seg_num; j++ )
		{
			decomInplace( &in_data[start], wksp, Length, wavename );
			start += Length;
		}
		Length>>=1;      
		seg_num<<=1;
	}   
}

void IMG_wavep_recon_one_dim( int *in_data, int *wksp, int *wavename, int Length, int Level )
{         
	int		i, j;      
	int		start, seg_num;
	
	Length>>=(Level-1);         
	seg_num = 1<<(Level-1);
	for( i = 0; i < Level; i++ )
	{   
		start = 0;
		for( j = 0; j < seg_num; j++ )
		{
			reconInplace(&in_data[start], wksp, Length, wavename);
			start +=Length;
		}
		Length<<=1;           
		seg_num>>=1;
	}
}
