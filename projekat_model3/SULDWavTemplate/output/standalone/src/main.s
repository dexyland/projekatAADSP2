	.public _inputGain
	.public _outputChannelNum
	.public _sampleBuffer
	.public _sampleBufferLeft
	.public _sampleBufferLeftSide
	.public _sampleBufferRight
	.public _sampleBufferRightSide
	.public _tremolo_data
	.extern _cl_wavread_bits_per_sample
	.extern _cl_wavread_close
	.extern _cl_wavread_frame_rate
	.extern _cl_wavread_getnchannels
	.extern _cl_wavread_number_of_frames
	.extern _cl_wavread_open
	.extern _cl_wavread_recvsample
	.extern _cl_wavwrite_close
	.extern _cl_wavwrite_open
	.extern _cl_wavwrite_sendsample
	.public _lfo
	.public _main
	.extern _memset
	.extern _printf
	.public _processing_foo
	.extern _strcpy
	.public _tremolo_init
	.public _tremolo_procces
	.extern __mul_sat_laccum
	.extern __div
	.xdata_ovly
__extractedConst_0_8
	.dw  (0x7fffffff)
	.xdata_ovly
__extractedConst_1_2
	.dw  (0x0)
	.dw  (0x3d70a3d7)
	.dw  (0xa3d70a4)
	.xdata_ovly
__extractedConst_2_2
	.dw  (0x0)
	.dw  (0x7d70a3d7)
	.dw  (0xa3d70a4)
	.xdata_ovly
__extractedConst_3_1
	.dw  (0x50a3d70a)
	.xdata_ovly
_inputGain
	.bss (0x1)
	.xdata_ovly
_outputChannelNum
	.bss (0x1)
	.ydata_ovly
_sampleBuffer
	.bss (0x80)
	.xdata_ovly
_sampleBufferLeft
	.dw _sampleBuffer
	.xdata_ovly
_sampleBufferLeftSide
	.dw _sampleBuffer+32
	.xdata_ovly
_sampleBufferRight
	.dw _sampleBuffer+16
	.xdata_ovly
_sampleBufferRightSide
	.dw _sampleBuffer+48
	.xdata_ovly
_string_const_0
	.dw  (0x45)
	.dw  (0x72)
	.dw  (0x72)
	.dw  (0x6f)
	.dw  (0x72)
	.dw  (0x3a)
	.dw  (0x20)
	.dw  (0x43)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x6c)
	.dw  (0x64)
	.dw  (0x20)
	.dw  (0x6e)
	.dw  (0x6f)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x70)
	.dw  (0x65)
	.dw  (0x6e)
	.dw  (0x20)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x65)
	.dw  (0x66)
	.dw  (0x69)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x2e)
	.dw  (0xa)
	.dw  (0x0)
	.xdata_ovly
_string_const_1
	.dw  (0x45)
	.dw  (0x72)
	.dw  (0x72)
	.dw  (0x6f)
	.dw  (0x72)
	.dw  (0x3a)
	.dw  (0x20)
	.dw  (0x43)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x6c)
	.dw  (0x64)
	.dw  (0x20)
	.dw  (0x6e)
	.dw  (0x6f)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x70)
	.dw  (0x65)
	.dw  (0x6e)
	.dw  (0x20)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x65)
	.dw  (0x66)
	.dw  (0x69)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x2e)
	.dw  (0xa)
	.dw  (0x0)
	.xdata_ovly
_tremolo_data
	.bss (0x8)
	.code_ovly



_lfo:			/* LN: 151 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 151 | 
	i7 += 1			# LN: 151 | 
	i7 = i7 + (0x3)			# LN: 151 | 
	i0 = i7 - (0x3)			# LN: 151 | 
	xmem[i0] = a0g; i0 += 1			# LN: 151, 151 | 
	xmem[i0] = a0h; i0 += 1			# LN: 151, 151 | 
	xmem[i0] = a0l			# LN: 151 | 
cline_151_0:			/* LN: 153 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_tremolo_data + 3]			# LN: 153 | 
	uhalfword(a1) = (0x2)			# LN: 153 | 
	a0 - a1			# LN: 153 | 
	if (a != 0) jmp (else_1)			# LN: 153 | 
cline_153_0:			/* LN: 155 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 155 | 
	a0g = xmem[i0]; i0 += 1			# LN: 155, 155 | 
	a0h = xmem[i0]; i0 += 1			# LN: 155, 155 | 
	a0l = xmem[i0]			# LN: 155 | 
	a0 = a0 >> 1			# LN: 155 | 
	ufixed16(a1) = (0x2000)			# LN: 155 | 
	a1 = a1 >> 1			# LN: 155 | 
	a0 - a1			# LN: 155 | 
	if (a >= 0) jmp (else_2)			# LN: 155 | 
cline_155_0:			/* LN: 157 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 157 | 
	a0g = xmem[i0]; i0 += 1			# LN: 157, 157 | 
	a0h = xmem[i0]; i0 += 1			# LN: 157, 157 | 
	a0l = xmem[i0]			# LN: 157 | 
	a0 = a0 << 1			# LN: 157 | 
	ufixed16(a1) = (0x4000)			# LN: 157 | 
	a0 = a1 + a0			# LN: 157 | 
	a0 = a0			# LN: 157 | 
	jmp (__epilogue_224)			# LN: 157 | 
cline_157_0:			/* LN: 159 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 155 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 159 | 
	a0g = xmem[i0]; i0 += 1			# LN: 159, 159 | 
	a0h = xmem[i0]; i0 += 1			# LN: 159, 159 | 
	a0l = xmem[i0]			# LN: 159 | 
	a0 = a0 >> 1			# LN: 159 | 
	ufixed16(a1) = (0x6000)			# LN: 159 | 
	a1 = a1 >> 1			# LN: 159 | 
	a0 - a1			# LN: 159 | 
	if (a >= 0) jmp (else_3)			# LN: 159 | 
cline_159_0:			/* LN: 161 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 161 | 
	a0g = xmem[i0]; i0 += 1			# LN: 161, 161 | 
	a0h = xmem[i0]; i0 += 1			# LN: 161, 161 | 
	a0l = xmem[i0]			# LN: 161 | 
	ufixed16(a1) = (0x2000)			# LN: 161 | 
	a0 = a0 - a1			# LN: 161 | 
	a0 = a0 << 1			# LN: 161 | 
	ufixed16(a1) = (0x8000)			# LN: 161 | 
	a0 = a1 - a0			# LN: 161 | 
	a0 = a0			# LN: 161 | 
	jmp (__epilogue_224)			# LN: 161 | 
cline_161_0:			/* LN: 165 | CYCLE: 0 | RULES: () */ 
else_3:			/* LN: 159 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 165 | 
	a0g = xmem[i0]; i0 += 1			# LN: 165, 165 | 
	a0h = xmem[i0]; i0 += 1			# LN: 165, 165 | 
	a0l = xmem[i0]			# LN: 165 | 
	ufixed16(a1) = (0x6000)			# LN: 165 | 
	a0 = a0 - a1			# LN: 165 | 
	a0 = a0 << 1			# LN: 165 | 
	a0 = a0			# LN: 165 | 
	jmp (__epilogue_224)			# LN: 165 | 
cline_155_1:			/* LN: 168 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 153 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_tremolo_data + 3]			# LN: 168 | 
	uhalfword(a1) = (0x3)			# LN: 168 | 
	a0 - a1			# LN: 168 | 
	if (a != 0) jmp (else_4)			# LN: 168 | 
cline_168_0:			/* LN: 170 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 170 | 
	a0g = xmem[i0]; i0 += 1			# LN: 170, 170 | 
	a0h = xmem[i0]; i0 += 1			# LN: 170, 170 | 
	a0l = xmem[i0]			# LN: 170 | 
	b0 =+ a0			# LN: 170 | 
	b0 = b0 >> 1			# LN: 170 | 
	a0 = (0x4000)			# LN: 170 | 
	a0 = a0 >> 1			# LN: 170 | 
	b0 - a0			# LN: 170 | 
	if (b >= 0) jmp (else_5)			# LN: 170 | 
cline_170_0:			/* LN: 172 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_8 + 0]			# LN: 172 | 
	jmp (__epilogue_224)			# LN: 172 | 
cline_172_0:			/* LN: 176 | CYCLE: 0 | RULES: () */ 
else_5:			/* LN: 170 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 176 | 
	jmp (__epilogue_224)			# LN: 176 | 
cline_170_1:			/* LN: 179 | CYCLE: 0 | RULES: () */ 
else_4:			/* LN: 168 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_tremolo_data + 3]			# LN: 179 | 
	uhalfword(a1) = (0x4)			# LN: 179 | 
	a0 - a1			# LN: 179 | 
	if (a != 0) jmp (else_6)			# LN: 179 | 
cline_179_0:			/* LN: 181 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 181 | 
	a0g = xmem[i0]; i0 += 1			# LN: 181, 181 | 
	a0h = xmem[i0]; i0 += 1			# LN: 181, 181 | 
	a0l = xmem[i0]			# LN: 181 | 
	b0 =+ a0			# LN: 181 | 
	a0g = xmem[__extractedConst_1_2 + 0]			# LN: 181 | 
	b0 = b0 >> 1			# LN: 181 | 
	a0h = xmem[__extractedConst_1_2 + 1]			# LN: 181 | 
	a0l = xmem[__extractedConst_1_2 + 2]			# LN: 181 | 
	a0 = a0 >> 1			# LN: 181 | 
	b0 - a0			# LN: 181 | 
	if (b >= 0) jmp (else_7)			# LN: 181 | 
cline_181_0:			/* LN: 183 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_8 + 0]			# LN: 183 | 
	jmp (__epilogue_224)			# LN: 183 | 
cline_183_0:			/* LN: 185 | CYCLE: 0 | RULES: () */ 
else_7:			/* LN: 181 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 185 | 
	a0g = xmem[i0]; i0 += 1			# LN: 185, 185 | 
	a0h = xmem[i0]; i0 += 1			# LN: 185, 185 | 
	a0l = xmem[i0]			# LN: 185 | 
	a0 = a0 >> 1			# LN: 185 | 
	ufixed16(a1) = (0x4000)			# LN: 185 | 
	a1 = a1 >> 1			# LN: 185 | 
	a0 - a1			# LN: 185 | 
	if (a >= 0) jmp (else_8)			# LN: 185 | 
cline_185_0:			/* LN: 187 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 187 | 
	a0g = xmem[i0]; i0 += 1			# LN: 187, 187 | 
	a0h = xmem[i0]; i0 += 1			# LN: 187, 187 | 
	a0l = xmem[i0]			# LN: 187 | 
	a1g = xmem[__extractedConst_1_2 + 0]			# LN: 187 | 
	a1h = xmem[__extractedConst_1_2 + 1]			# LN: 187 | 
	a1l = xmem[__extractedConst_1_2 + 2]			# LN: 187 | 
	a1 = a0 - a1			# LN: 187 | 
	a0 = 0			# LN: 187 | 
	a0g = (0x19)			# LN: 187 | 
	call (__mul_sat_laccum)			# LN: 187 | 
	a1 = xmem[__extractedConst_0_8 + 0]			# LN: 187 | 
	a0 = a1 - a0			# LN: 187 | 
	a0 = a0			# LN: 187 | 
	jmp (__epilogue_224)			# LN: 187 | 
cline_187_0:			/* LN: 189 | CYCLE: 0 | RULES: () */ 
else_8:			/* LN: 185 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 189 | 
	a0g = xmem[i0]; i0 += 1			# LN: 189, 189 | 
	a0h = xmem[i0]; i0 += 1			# LN: 189, 189 | 
	a0l = xmem[i0]			# LN: 189 | 
	b0 =+ a0			# LN: 189 | 
	a0g = xmem[__extractedConst_2_2 + 0]			# LN: 189 | 
	b0 = b0 >> 1			# LN: 189 | 
	a0h = xmem[__extractedConst_2_2 + 1]			# LN: 189 | 
	a0l = xmem[__extractedConst_2_2 + 2]			# LN: 189 | 
	a0 = a0 >> 1			# LN: 189 | 
	b0 - a0			# LN: 189 | 
	if (b >= 0) jmp (else_9)			# LN: 189 | 
cline_189_0:			/* LN: 191 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 191 | 
	jmp (__epilogue_224)			# LN: 191 | 
cline_191_0:			/* LN: 195 | CYCLE: 0 | RULES: () */ 
else_9:			/* LN: 189 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 195 | 
	a0g = xmem[i0]; i0 += 1			# LN: 195, 195 | 
	a0h = xmem[i0]; i0 += 1			# LN: 195, 195 | 
	a0l = xmem[i0]			# LN: 195 | 
	a1g = xmem[__extractedConst_2_2 + 0]			# LN: 195 | 
	a1h = xmem[__extractedConst_2_2 + 1]			# LN: 195 | 
	a1l = xmem[__extractedConst_2_2 + 2]			# LN: 195 | 
	a1 = a0 - a1			# LN: 195 | 
	a0 = 0			# LN: 195 | 
	a0g = (0x19)			# LN: 195 | 
	call (__mul_sat_laccum)			# LN: 195 | 
	a0 = a0			# LN: 195 | 
	jmp (__epilogue_224)			# LN: 195 | 
cline_181_1:			/* LN: 200 | CYCLE: 0 | RULES: () */ 
else_6:			/* LN: 179 | CYCLE: 0 | RULES: () */ 
	a0 = (0x4000)			# LN: 200 | 
	jmp (__epilogue_224)			# LN: 200 | 
cline_200_0:			/* LN: 202 | CYCLE: 0 | RULES: () */ 
__epilogue_224:			/* LN: 202 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x3)			# LN: 202 | 
	i7 -= 1			# LN: 202 | 
	ret			# LN: 202 | 



	# This construction should ensure linking of crt0 in case when target is a standalone program without the OS
	.if defined(_OVLY_)
		.if .strcmp('standalone',_OVLY_)=0
		.if .strcmp('crystal32',_TARGET_FAMILY_)=0
			.extern __start         # dummy use of __start to force linkage of crt0
dummy		.equ(__start)
		.else
			.extern __intvec         # dummy use of __intvec to force linkage of intvec
dummy		.equ(__intvec)
		.endif
		.endif
	.endif

_main:			/* LN: 259 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 259 | 
	i7 += 1			# LN: 259 | 
	i7 = i7 + (0x20e)			# LN: 259 | 
	i1 = i7 - (0x1)			# LN: 259 | 
	xmem[i1] = a0h			# LN: 259 | 
	i1 = i7 - (0x2)			# LN: 259 | 
	xmem[i1] = i0			# LN: 259 | 
cline_259_0:			/* LN: 268 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 268 | 
	uhalfword(a0) = (0x4)			# LN: 268 | 
	xmem[i0] = a0h			# LN: 268 | 
cline_268_0:			/* LN: 275 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 275 | 
	a0 = 0			# LN: 275 | 
	xmem[i0] = a0h			# LN: 275 | 
	do (0x8), label_end_92			# LN: 275 | 
cline_275_0:			/* LN: 276 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 275 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 276 | 
	a1 = xmem[i0]; a0 = 0			# LN: 276, 276 | 
	a1 = a1 << 4			# LN: 276 | 
	i0 = a1			# LN: 276 | 
	uhalfword(a1) = (0x10)			# LN: 276 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 276 | 
	call (_memset)			# LN: 276 | 
cline_276_0:			/* LN: 275 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 276 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 275 | 
	a0 = xmem[i0]			# LN: 275 | 
	uhalfword(a1) = (0x1)			# LN: 275 | 
	a0 = a0 + a1			# LN: 275 | 
	i0 = i7 - (0x4)			# LN: 275 | 
label_end_92:			# LN: 275 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 275 | 
cline_275_1:			/* LN: 280 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 275 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 280 | 
	i0 = xmem[i0]			# LN: 280 | 
	i1 = i7 - (260 - 0)			# LN: 280 | 
	i4 = xmem[i0]			# LN: 280 | 
	i0 = i1			# LN: 280 | 
	i1 = i4			# LN: 280 | 
	call (_strcpy)			# LN: 280 | 
cline_280_0:			/* LN: 281 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (260 - 0)			# LN: 281 | 
	call (_cl_wavread_open)			# LN: 281 | 
	AnyReg(i0, a0h)			# LN: 281 | 
	i1 = i7 - (0x105)			# LN: 281 | 
	xmem[i1] = i0			# LN: 281 | 
cline_281_0:			/* LN: 282 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 282 | 
	a0 = xmem[i0]			# LN: 282 | 
	a0 & a0			# LN: 282 | 
	if (a != 0) jmp (else_11)			# LN: 282 | 
cline_282_0:			/* LN: 284 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_0)			# LN: 284 | 
	call (_printf)			# LN: 284 | 
cline_284_0:			/* LN: 285 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 285 | 
	jmp (__epilogue_228)			# LN: 285 | 
cline_285_0:			/* LN: 291 | CYCLE: 0 | RULES: () */ 
endif_11:			/* LN: 282 | CYCLE: 0 | RULES: () */ 
else_11:			/* LN: 282 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 291 | 
	i0 = xmem[i0]			# LN: 291 | 
	call (_cl_wavread_getnchannels)			# LN: 291 | 
	i0 = i7 - (0x106)			# LN: 291 | 
	xmem[i0] = a0h			# LN: 291 | 
cline_291_0:			/* LN: 292 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 292 | 
	i0 = xmem[i0]			# LN: 292 | 
	call (_cl_wavread_bits_per_sample)			# LN: 292 | 
	i0 = i7 - (0x107)			# LN: 292 | 
	xmem[i0] = a0h			# LN: 292 | 
cline_292_0:			/* LN: 293 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 293 | 
	i0 = xmem[i0]			# LN: 293 | 
	call (_cl_wavread_frame_rate)			# LN: 293 | 
	i0 = i7 - (0x108)			# LN: 293 | 
	xmem[i0] = a0h			# LN: 293 | 
cline_293_0:			/* LN: 294 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 294 | 
	i0 = xmem[i0]			# LN: 294 | 
	call (_cl_wavread_number_of_frames)			# LN: 294 | 
	i0 = i7 - (0x109)			# LN: 294 | 
	xmem[i0] = a0h			# LN: 294 | 
cline_294_0:			/* LN: 299 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 299 | 
	i0 = xmem[i0]			# LN: 299 | 
	i1 = i7 - (521 - 0)			# LN: 299 | 
	i0 += 1			# LN: 299 | 
	i4 = xmem[i0]			# LN: 299 | 
	i0 = i1			# LN: 299 | 
	i1 = i4			# LN: 299 | 
	call (_strcpy)			# LN: 299 | 
cline_299_0:			/* LN: 300 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (521 - 0)			# LN: 300 | 
	i1 = i7 - (0x107)			# LN: 300 | 
	a0 = xmem[i1]			# LN: 300 | 
	i1 = i7 - (0x3)			# LN: 300 | 
	a1 = xmem[i1]			# LN: 300 | 
	i1 = i7 - (0x108)			# LN: 300 | 
	b0 = xmem[i1]			# LN: 300 | 
	call (_cl_wavwrite_open)			# LN: 300 | 
	AnyReg(i0, a0h)			# LN: 300 | 
	i1 = i7 - (0x20a)			# LN: 300 | 
	xmem[i1] = i0			# LN: 300 | 
cline_300_0:			/* LN: 301 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 301 | 
	a0 = xmem[i0]			# LN: 301 | 
	a0 & a0			# LN: 301 | 
	if (a != 0) jmp (else_12)			# LN: 301 | 
cline_301_0:			/* LN: 303 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_1)			# LN: 303 | 
	call (_printf)			# LN: 303 | 
cline_303_0:			/* LN: 304 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 304 | 
	jmp (__epilogue_228)			# LN: 304 | 
cline_304_0:			/* LN: 307 | CYCLE: 0 | RULES: () */ 
endif_12:			/* LN: 301 | CYCLE: 0 | RULES: () */ 
else_12:			/* LN: 301 | CYCLE: 0 | RULES: () */ 
	call (_tremolo_init)			# LN: 307 | 
cline_307_0:			/* LN: 318 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 318 | 
	a0 = 0			# LN: 318 | 
	xmem[i0] = a0h			# LN: 318 | 
for_3:			/* LN: 318 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x109)			# LN: 318 | 
	a0 = xmem[i0]			# LN: 318 | 
	uhalfword(a1) = (0x10)			# LN: 318 | 
	call (__div)			# LN: 318 | 
	i0 = i7 - (0x20b)			# LN: 318 | 
	a1 = xmem[i0]			# LN: 318 | 
	a1 - a0			# LN: 318 | 
	if (a >= 0) jmp (for_end_3)			# LN: 318 | 
cline_318_0:			/* LN: 320 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 320 | 
	a0 = 0			# LN: 320 | 
	xmem[i0] = a0h			# LN: 320 | 
	do (0x10), label_end_93			# LN: 320 | 
cline_320_0:			/* LN: 322 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 320 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 322 | 
	a0 = 0			# LN: 322 | 
	xmem[i0] = a0h			# LN: 322 | 
for_5:			/* LN: 322 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 322 | 
	a0 = xmem[i0]			# LN: 322 | 
	i0 = i7 - (0x106)			# LN: 322 | 
	a1 = xmem[i0]			# LN: 322 | 
	a0 - a1			# LN: 322 | 
	if (a >= 0) jmp (for_end_5)			# LN: 322 | 
cline_322_0:			/* LN: 324 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 324 | 
	i0 = xmem[i0]			# LN: 324 | 
	call (_cl_wavread_recvsample)			# LN: 324 | 
	i0 = i7 - (0x20e)			# LN: 324 | 
	xmem[i0] = a0h			# LN: 324 | 
cline_324_0:			/* LN: 325 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 325 | 
	a0 = xmem[i0]			# LN: 325 | 
	a0 = a0 << 4			# LN: 325 | 
	i0 = a0			# LN: 325 | 
	i1 = i7 - (0x20c)			# LN: 325 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 325 | 
	a0 = xmem[i1]			# LN: 325 | 
	a1 = i0			# LN: 325 | 
	a0 = a1 + a0			# LN: 325 | 
	AnyReg(i0, a0h)			# LN: 325 | 
	i1 = i7 - (0x20e)			# LN: 325 | 
	a0 = xmem[i1]			# LN: 325 | 
	ymem[i0] = a0h			# LN: 325 | 
cline_325_0:			/* LN: 322 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 326 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 322 | 
	a0 = xmem[i0]			# LN: 322 | 
	uhalfword(a1) = (0x1)			# LN: 322 | 
	a0 = a0 + a1			# LN: 322 | 
	i0 = i7 - (0x20d)			# LN: 322 | 
	xmem[i0] = a0h			# LN: 322 | 
	jmp (for_5)			# LN: 322 | 
cline_322_1:			/* LN: 320 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 327 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 322 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 320 | 
	a0 = xmem[i0]			# LN: 320 | 
	uhalfword(a1) = (0x1)			# LN: 320 | 
	a0 = a0 + a1			# LN: 320 | 
	i0 = i7 - (0x20c)			# LN: 320 | 
label_end_93:			# LN: 320 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 320 | 
cline_320_1:			/* LN: 329 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 320 | CYCLE: 0 | RULES: () */ 
	call (_processing_foo)			# LN: 329 | 
cline_329_0:			/* LN: 331 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 331 | 
	a0 = 0			# LN: 331 | 
	xmem[i0] = a0h			# LN: 331 | 
	do (0x10), label_end_94			# LN: 331 | 
cline_331_0:			/* LN: 333 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 331 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 333 | 
	a0 = 0			# LN: 333 | 
	xmem[i0] = a0h			# LN: 333 | 
for_7:			/* LN: 333 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 333 | 
	a0 = xmem[i0]			# LN: 333 | 
	i0 = i7 - (0x3)			# LN: 333 | 
	a1 = xmem[i0]			# LN: 333 | 
	a0 - a1			# LN: 333 | 
	if (a >= 0) jmp (for_end_7)			# LN: 333 | 
cline_333_0:			/* LN: 335 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 335 | 
	a0 = xmem[i0]			# LN: 335 | 
	a0 = a0 << 4			# LN: 335 | 
	i0 = a0			# LN: 335 | 
	i1 = i7 - (0x20c)			# LN: 335 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 335 | 
	a0 = xmem[i1]			# LN: 335 | 
	a1 = i0			# LN: 335 | 
	a0 = a1 + a0			# LN: 335 | 
	AnyReg(i0, a0h)			# LN: 335 | 
	i1 = i7 - (0x20e)			# LN: 335 | 
	a0 = ymem[i0]			# LN: 335 | 
	xmem[i1] = a0h			# LN: 335 | 
cline_335_0:			/* LN: 336 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 336 | 
	i1 = i7 - (0x20e)			# LN: 336 | 
	a0 = xmem[i1]			# LN: 336 | 
	i0 = xmem[i0]			# LN: 336 | 
	call (_cl_wavwrite_sendsample)			# LN: 336 | 
cline_336_0:			/* LN: 333 | CYCLE: 0 | RULES: () */ 
init_latch_label_5:			/* LN: 337 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 333 | 
	a0 = xmem[i0]			# LN: 333 | 
	uhalfword(a1) = (0x1)			# LN: 333 | 
	a0 = a0 + a1			# LN: 333 | 
	i0 = i7 - (0x20d)			# LN: 333 | 
	xmem[i0] = a0h			# LN: 333 | 
	jmp (for_7)			# LN: 333 | 
cline_333_1:			/* LN: 331 | CYCLE: 0 | RULES: () */ 
init_latch_label_6:			/* LN: 338 | CYCLE: 0 | RULES: () */ 
for_end_7:			/* LN: 333 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 331 | 
	a0 = xmem[i0]			# LN: 331 | 
	uhalfword(a1) = (0x1)			# LN: 331 | 
	a0 = a0 + a1			# LN: 331 | 
	i0 = i7 - (0x20c)			# LN: 331 | 
label_end_94:			# LN: 331 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 331 | 
cline_331_1:			/* LN: 318 | CYCLE: 0 | RULES: () */ 
init_latch_label_7:			/* LN: 339 | CYCLE: 0 | RULES: () */ 
for_end_6:			/* LN: 331 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 318 | 
	a0 = xmem[i0]			# LN: 318 | 
	uhalfword(a1) = (0x1)			# LN: 318 | 
	a0 = a0 + a1			# LN: 318 | 
	i0 = i7 - (0x20b)			# LN: 318 | 
	xmem[i0] = a0h			# LN: 318 | 
	jmp (for_3)			# LN: 318 | 
cline_318_1:			/* LN: 344 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 318 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 344 | 
	i0 = xmem[i0]			# LN: 344 | 
	call (_cl_wavread_close)			# LN: 344 | 
cline_344_0:			/* LN: 345 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 345 | 
	i0 = xmem[i0]			# LN: 345 | 
	call (_cl_wavwrite_close)			# LN: 345 | 
cline_345_0:			/* LN: 348 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 348 | 
	jmp (__epilogue_228)			# LN: 348 | 
cline_348_0:			/* LN: 349 | CYCLE: 0 | RULES: () */ 
__epilogue_228:			/* LN: 349 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x20e)			# LN: 349 | 
	i7 -= 1			# LN: 349 | 
	ret			# LN: 349 | 



_processing_foo:			/* LN: 221 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 221 | 
	i7 += 1			# LN: 221 | 
	i7 = i7 + (0x5)			# LN: 221 | 
cline_221_0:			/* LN: 223 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 223 | 
	uhalfword(a0) = (_sampleBuffer + 0)			# LN: 223 | 
	xmem[i0] = a0			# LN: 223 | 
cline_223_0:			/* LN: 224 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 224 | 
	uhalfword(a0) = (_sampleBuffer + 16)			# LN: 224 | 
	xmem[i0] = a0			# LN: 224 | 
cline_224_0:			/* LN: 227 | CYCLE: 0 | RULES: () */ 
	jmp (dummy_init_1)			# LN: 227 | 
for_1:			/* LN: 227 | CYCLE: 0 | RULES: () */ 
dummy_init_1:			/* LN: 227 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_sampleBufferLeft + 0]			# LN: 227 | 
	i1 = i7 - (0x1)			# LN: 227 | 
	i0 = i0 + (0x10)			# LN: 227 | 
	i0 -= 1			# LN: 227 | 
	a0 = xmem[i1]			# LN: 227 | 
	a1 = i0			# LN: 227 | 
	a0 - a1			# LN: 227 | 
	if (a > 0) jmp (for_end_1)			# LN: 227 | 
cline_227_0:			/* LN: 229 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 229 | 
	i0 = xmem[i0]			# LN: 229 | 
	x0 = xmem[_inputGain + 0]			# LN: 229 | 
	x1 = ymem[i0]			# LN: 229 | 
	a0 = x1 * x0			# LN: 229 | 
	i0 = i7 - (0x5)			# LN: 229 | 
	xmem[i0] = a0g; i0 += 1			# LN: 229, 229 | 
	xmem[i0] = a0h; i0 += 1			# LN: 229, 229 | 
	xmem[i0] = a0l			# LN: 229 | 
cline_229_0:			/* LN: 230 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 230 | 
	a0g = xmem[i0]; i0 += 1			# LN: 230, 230 | 
	a0h = xmem[i0]; i0 += 1			# LN: 230, 230 | 
	i1 = i7 - (0x1)			# LN: 230 | 
	i1 = xmem[i1]			# LN: 230 | 
	a0l = xmem[i0]			# LN: 230 | 
	ymem[i1] = a0			# LN: 230 | 
cline_230_0:			/* LN: 232 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 232 | 
	i0 = xmem[i0]			# LN: 232 | 
	x0 = xmem[_inputGain + 0]			# LN: 232 | 
	x1 = ymem[i0]			# LN: 232 | 
	a0 = x1 * x0			# LN: 232 | 
	i0 = i7 - (0x5)			# LN: 232 | 
	xmem[i0] = a0g; i0 += 1			# LN: 232, 232 | 
	xmem[i0] = a0h; i0 += 1			# LN: 232, 232 | 
	xmem[i0] = a0l			# LN: 232 | 
cline_232_0:			/* LN: 233 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 233 | 
	a0g = xmem[i0]; i0 += 1			# LN: 233, 233 | 
	a0h = xmem[i0]; i0 += 1			# LN: 233, 233 | 
	i1 = i7 - (0x2)			# LN: 233 | 
	i1 = xmem[i1]			# LN: 233 | 
	a0l = xmem[i0]			# LN: 233 | 
	ymem[i1] = a0			# LN: 233 | 
cline_233_0:			/* LN: 227 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 234 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 227 | 
	i0 = xmem[i0]			# LN: 227 | 
	i1 = i7 - (0x1)			# LN: 227 | 
	i0 += 1			# LN: 227 | 
	xmem[i1] = i0			# LN: 227 | 
	i0 = i7 - (0x2)			# LN: 227 | 
	i0 = xmem[i0]			# LN: 227 | 
	i1 = i7 - (0x2)			# LN: 227 | 
	i0 += 1			# LN: 227 | 
	xmem[i1] = i0			# LN: 227 | 
	jmp (for_1)			# LN: 227 | 
cline_227_1:			/* LN: 237 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 227 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_outputChannelNum + 0]			# LN: 237 | 
	uhalfword(a1) = (0x4)			# LN: 237 | 
	a0 - a1			# LN: 237 | 
	if (a != 0) jmp (else_10)			# LN: 237 | 
cline_237_0:			/* LN: 239 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 0)			# LN: 239 | 
	i1 = (0) + (_sampleBuffer + 32)			# LN: 239 | 
	call (_tremolo_procces)			# LN: 239 | 
cline_239_0:			/* LN: 240 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 16)			# LN: 240 | 
	i1 = (0) + (_sampleBuffer + 48)			# LN: 240 | 
	call (_tremolo_procces)			# LN: 240 | 
	jmp (endif_10)			# LN: 240 | 
cline_240_0:			/* LN: 242 | CYCLE: 0 | RULES: () */ 
endif_10:			/* LN: 237 | CYCLE: 0 | RULES: () */ 
else_10:			/* LN: 237 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_226)			# LN: 242 | 
__epilogue_226:			/* LN: 242 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x5)			# LN: 242 | 
	i7 -= 1			# LN: 242 | 
	ret			# LN: 242 | 



_tremolo_init:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 73 | 
	i7 += 1			# LN: 73 | 
cline_73_0:			/* LN: 76 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_3_1 + 0]			# LN: 76 | 
	xmem[_inputGain + 0] = a0h			# LN: 76 | 
cline_76_0:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x4)			# LN: 77 | 
	xmem[_outputChannelNum + 0] = a0h			# LN: 77 | 
cline_77_0:			/* LN: 78 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_8 + 0]			# LN: 78 | 
	xmem[_tremolo_data + 1] = a0h			# LN: 78 | 
cline_78_0:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_8 + 0]			# LN: 79 | 
	xmem[_tremolo_data + 2] = a0h			# LN: 79 | 
cline_79_0:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x3)			# LN: 80 | 
	xmem[_tremolo_data + 3] = a0h			# LN: 80 | 
cline_80_0:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 81 | 
	xmem[_tremolo_data + 4] = a0h			# LN: 81 | 
cline_81_0:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0xaec3)			# LN: 82 | 
	a0l = (0x3e1f)			# LN: 82 | 
	lo16(a0l) = (0x6715)			# LN: 82 | 
	xmem[_tremolo_data + 5] = a0g			# LN: 82 | 
	xmem[_tremolo_data + 6] = a0h			# LN: 82 | 
	xmem[_tremolo_data + 7] = a0l			# LN: 82 | 
cline_82_0:			/* LN: 83 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_220)			# LN: 83 | 
__epilogue_220:			/* LN: 83 | CYCLE: 0 | RULES: () */ 
	i7 -= 1			# LN: 83 | 
	ret			# LN: 83 | 



_tremolo_procces:			/* LN: 103 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 103 | 
	i7 += 1			# LN: 103 | 
	i7 = i7 + (0xe)			# LN: 103 | 
	i4 = i7 - (0x1)			# LN: 103 | 
	xmem[i4] = i0			# LN: 103 | 
	i0 = i7 - (0x2)			# LN: 103 | 
	xmem[i0] = i1			# LN: 103 | 
cline_103_0:			/* LN: 114 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 114 | 
	a0 = xmem[i0]			# LN: 114 | 
	i0 = i7 - (0x3)			# LN: 114 | 
	xmem[i0] = a0			# LN: 114 | 
cline_114_0:			/* LN: 115 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 115 | 
	a0 = xmem[i0]			# LN: 115 | 
	i0 = i7 - (0x4)			# LN: 115 | 
	xmem[i0] = a0			# LN: 115 | 
cline_115_0:			/* LN: 116 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 116 | 
	a0 = 0			# LN: 116 | 
	xmem[i0] = a0h			# LN: 116 | 
cline_116_0:			/* LN: 124 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_tremolo_data + 4]			# LN: 124 | 
	i0 = i7 - (0x8)			# LN: 124 | 
	xmem[i0] = a0g; i0 += 1			# LN: 124, 124 | 
	xmem[i0] = a0h; i0 += 1			# LN: 124, 124 | 
	xmem[i0] = a0l			# LN: 124 | 
cline_124_0:			/* LN: 126 | CYCLE: 0 | RULES: () */ 
	jmp (dummy_init_0)			# LN: 126 | 
for_0:			/* LN: 126 | CYCLE: 0 | RULES: () */ 
dummy_init_0:			/* LN: 126 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 126 | 
	i0 = xmem[i0]			# LN: 126 | 
	i1 = i7 - (0x3)			# LN: 126 | 
	i0 = i0 + (0x10)			# LN: 126 | 
	i0 -= 1			# LN: 126 | 
	a0 = xmem[i1]			# LN: 126 | 
	a1 = i0			# LN: 126 | 
	a0 - a1			# LN: 126 | 
	if (a > 0) jmp (for_end_0)			# LN: 126 | 
cline_126_0:			/* LN: 131 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 131 | 
	a0g = xmem[i0]; i0 += 1			# LN: 131, 131 | 
	a0h = xmem[i0]; i0 += 1			# LN: 131, 131 | 
	a0l = xmem[i0]			# LN: 131 | 
	call (_lfo)			# LN: 131 | 
	i0 = i7 - (0x5)			# LN: 131 | 
	xmem[i0] = a0h			# LN: 131 | 
cline_131_0:			/* LN: 132 | CYCLE: 0 | RULES: () */ 
	x0 = xmem[_tremolo_data + 2]			# LN: 132 | 
	i0 = i7 - (0x5)			# LN: 132 | 
	x1 = xmem[i0]			# LN: 132 | 
	a0 = x0 * x1			# LN: 132 | 
	i0 = i7 - (0xb)			# LN: 132 | 
	xmem[i0] = a0g; i0 += 1			# LN: 132, 132 | 
	xmem[i0] = a0h; i0 += 1			# LN: 132, 132 | 
	xmem[i0] = a0l			# LN: 132 | 
cline_132_0:			/* LN: 133 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 133 | 
	i0 = xmem[i0]			# LN: 133 | 
	a0 = xmem[__extractedConst_0_8 + 0]			# LN: 133 | 
	i1 = i7 - (0xb)			# LN: 133 | 
	a1g = xmem[i1]; i1 += 1			# LN: 133, 133 | 
	a1h = xmem[i1]; i1 += 1			# LN: 133, 133 | 
	a1l = xmem[i1]			# LN: 133 | 
	x0 = ymem[i0]; a1 = a0 - a1			# LN: 133, 133 | 
	a0 = +x0			# LN: 133 | 
	call (__mul_sat_laccum)			# LN: 133 | 
	i0 = i7 - (0x4)			# LN: 133 | 
	i0 = xmem[i0]			# LN: 133 | 
	nop #empty cycle
	ymem[i0] = a0			# LN: 133 | 
cline_133_0:			/* LN: 140 | CYCLE: 0 | RULES: () */ 
	a0g = xmem[_tremolo_data + 5]			# LN: 140 | 
	a0h = xmem[_tremolo_data + 6]			# LN: 140 | 
	a0l = xmem[_tremolo_data + 7]			# LN: 140 | 
	i0 = i7 - (0xe)			# LN: 140 | 
	xmem[i0] = a0g; i0 += 1			# LN: 140, 140 | 
	xmem[i0] = a0h; i0 += 1			# LN: 140, 140 | 
	xmem[i0] = a0l			# LN: 140 | 
cline_140_0:			/* LN: 141 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 141 | 
	a0g = xmem[i0]; i0 += 1			# LN: 141, 141 | 
	a0h = xmem[i0]; i0 += 1			# LN: 141, 141 | 
	a0l = xmem[i0]			# LN: 141 | 
	i0 = i7 - (0xe)			# LN: 141 | 
	a1g = xmem[i0]; i0 += 1			# LN: 141, 141 | 
	a1h = xmem[i0]; i0 += 1			# LN: 141, 141 | 
	a1l = xmem[i0]			# LN: 141 | 
	a0 = a0 + a1			# LN: 141 | 
	i0 = i7 - (0x8)			# LN: 141 | 
	xmem[i0] = a0g; i0 += 1			# LN: 141, 141 | 
	xmem[i0] = a0h; i0 += 1			# LN: 141, 141 | 
	xmem[i0] = a0l			# LN: 141 | 
cline_141_0:			/* LN: 143 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 143 | 
	a0g = xmem[i0]; i0 += 1			# LN: 143, 143 | 
	a0h = xmem[i0]; i0 += 1			# LN: 143, 143 | 
	a0l = xmem[i0]			# LN: 143 | 
	b0 =+ a0			# LN: 143 | 
	b0 = b0 >> 1			# LN: 143 | 
	a0 = xmem[__extractedConst_0_8 + 0]			# LN: 143 | 
	a0 = a0 >> 1			# LN: 143 | 
	b0 - a0			# LN: 143 | 
	if (b < 0) jmp (else_0)			# LN: 143 | 
cline_143_0:			/* LN: 144 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 144 | 
	a0g = xmem[i0]; i0 += 1			# LN: 144, 144 | 
	a0h = xmem[i0]; i0 += 1			# LN: 144, 144 | 
	a0l = xmem[i0]			# LN: 144 | 
	a1 = xmem[__extractedConst_0_8 + 0]			# LN: 144 | 
	a0 = a0 - a1			# LN: 144 | 
	i0 = i7 - (0x8)			# LN: 144 | 
	xmem[i0] = a0g; i0 += 1			# LN: 144, 144 | 
	xmem[i0] = a0h; i0 += 1			# LN: 144, 144 | 
	xmem[i0] = a0l			# LN: 144 | 
	jmp (endif_0)			# LN: 144 | 
cline_144_0:			/* LN: 126 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 145 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 143 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 143 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 126 | 
	i0 = xmem[i0]			# LN: 126 | 
	i1 = i7 - (0x3)			# LN: 126 | 
	i0 += 1			# LN: 126 | 
	xmem[i1] = i0			# LN: 126 | 
	i0 = i7 - (0x4)			# LN: 126 | 
	i0 = xmem[i0]			# LN: 126 | 
	i1 = i7 - (0x4)			# LN: 126 | 
	i0 += 1			# LN: 126 | 
	xmem[i1] = i0			# LN: 126 | 
	jmp (for_0)			# LN: 126 | 
cline_126_1:			/* LN: 148 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 126 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 148 | 
	a0g = xmem[i0]; i0 += 1			# LN: 148, 148 | 
	a0h = xmem[i0]; i0 += 1			# LN: 148, 148 | 
	a0l = xmem[i0]			# LN: 148 | 
	xmem[_tremolo_data + 4] = a0			# LN: 148 | 
cline_148_0:			/* LN: 149 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_222)			# LN: 149 | 
__epilogue_222:			/* LN: 149 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0xe)			# LN: 149 | 
	i7 -= 1			# LN: 149 | 
	ret			# LN: 149 | 
