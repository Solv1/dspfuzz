; Start of memTab[0]
;JPEGDEC_INC	.set	1

;; -------------------------------- 
;;  parameter settings
;; -------------------------------- 
 

p_uvldtabdc      .set  10
p_uvldctltabdc   .set  12
p_uvldtabac      .set  14
p_uvldctltabac   .set  16
p_uvldlenmaxdc   .set  18
p_uvldlenmaxac   .set  20
d_pass0          .set  22
d_pass1          .set  23
d_pass2          .set  24
d_tmp            .set  25
p_arg2           .set  26
p_arg3           .set  28
p_arg4           .set  30
d_dat            .set  32
d_decswflagin    .set  33
d_decswflagout   .set  34
d_decff00buffer  .set  35
p_interm         .set  36
p_interm2        .set  38
ARG0             .set  40
ARG1             .set  41

; mat_out points on start of memTab[3]
a_interm         .set  64
d_interm2        .set  136
 
MCUBUFFINLEN	.set	512			; IMPORTANT!!! This defines a circular
									; buffer size.
UVLDDCTABSIZE	.set	32
UVLDACTABSIZE	.set	256
UVLDCTLTABSIZE	.set	17

HWACCELERATOR	.set	0


;		.endif

