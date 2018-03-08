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
	.dw  (0x4)
	.xdata_ovly
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



_lfo:			/* LN: 150 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 150 | 
	i7 += 1			# LN: 150 | 
	i7 = i7 + (0x3)			# LN: 150 | 
	i0 = i7 - (0x3)			# LN: 150 | 
	xmem[i0] = a0g; i0 += 1			# LN: 150, 150 | 
	xmem[i0] = a0h; i0 += 1			# LN: 150, 150 | 
	xmem[i0] = a0l			# LN: 150 | 
cline_150_0:			/* LN: 152 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_tremolo_data + 3]			# LN: 152 | 
	uhalfword(a1) = (0x2)			# LN: 152 | 
	a0 - a1			# LN: 152 | 
	if (a != 0) jmp (else_1)			# LN: 152 | 
cline_152_0:			/* LN: 154 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 154 | 
	a0g = xmem[i0]; i0 += 1			# LN: 154, 154 | 
	a0h = xmem[i0]; i0 += 1			# LN: 154, 154 | 
	a0l = xmem[i0]			# LN: 154 | 
	a0 = a0 >> 1			# LN: 154 | 
	ufixed16(a1) = (0x2000)			# LN: 154 | 
	a1 = a1 >> 1			# LN: 154 | 
	a0 - a1			# LN: 154 | 
	if (a >= 0) jmp (else_2)			# LN: 154 | 
cline_154_0:			/* LN: 156 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 156 | 
	a0g = xmem[i0]; i0 += 1			# LN: 156, 156 | 
	a0h = xmem[i0]; i0 += 1			# LN: 156, 156 | 
	a0l = xmem[i0]			# LN: 156 | 
	a0 = a0 << 1			# LN: 156 | 
	ufixed16(a1) = (0x4000)			# LN: 156 | 
	a0 = a1 + a0			# LN: 156 | 
	a0 = a0			# LN: 156 | 
	jmp (__epilogue_224)			# LN: 156 | 
cline_156_0:			/* LN: 158 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 154 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 158 | 
	a0g = xmem[i0]; i0 += 1			# LN: 158, 158 | 
	a0h = xmem[i0]; i0 += 1			# LN: 158, 158 | 
	a0l = xmem[i0]			# LN: 158 | 
	a0 = a0 >> 1			# LN: 158 | 
	ufixed16(a1) = (0x6000)			# LN: 158 | 
	a1 = a1 >> 1			# LN: 158 | 
	a0 - a1			# LN: 158 | 
	if (a >= 0) jmp (else_3)			# LN: 158 | 
cline_158_0:			/* LN: 160 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 160 | 
	a0g = xmem[i0]; i0 += 1			# LN: 160, 160 | 
	a0h = xmem[i0]; i0 += 1			# LN: 160, 160 | 
	a0l = xmem[i0]			# LN: 160 | 
	ufixed16(a1) = (0x2000)			# LN: 160 | 
	a0 = a0 - a1			# LN: 160 | 
	a0 = a0 << 1			# LN: 160 | 
	ufixed16(a1) = (0x8000)			# LN: 160 | 
	a0 = a1 - a0			# LN: 160 | 
	a0 = a0			# LN: 160 | 
	jmp (__epilogue_224)			# LN: 160 | 
cline_160_0:			/* LN: 164 | CYCLE: 0 | RULES: () */ 
else_3:			/* LN: 158 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 164 | 
	a0g = xmem[i0]; i0 += 1			# LN: 164, 164 | 
	a0h = xmem[i0]; i0 += 1			# LN: 164, 164 | 
	a0l = xmem[i0]			# LN: 164 | 
	ufixed16(a1) = (0x6000)			# LN: 164 | 
	a0 = a0 - a1			# LN: 164 | 
	a0 = a0 << 1			# LN: 164 | 
	a0 = a0			# LN: 164 | 
	jmp (__epilogue_224)			# LN: 164 | 
cline_154_1:			/* LN: 167 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 152 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_tremolo_data + 3]			# LN: 167 | 
	uhalfword(a1) = (0x3)			# LN: 167 | 
	a0 - a1			# LN: 167 | 
	if (a != 0) jmp (else_4)			# LN: 167 | 
cline_167_0:			/* LN: 169 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 169 | 
	a0g = xmem[i0]; i0 += 1			# LN: 169, 169 | 
	a0h = xmem[i0]; i0 += 1			# LN: 169, 169 | 
	a0l = xmem[i0]			# LN: 169 | 
	b0 =+ a0			# LN: 169 | 
	b0 = b0 >> 1			# LN: 169 | 
	a0 = (0x4000)			# LN: 169 | 
	a0 = a0 >> 1			# LN: 169 | 
	b0 - a0			# LN: 169 | 
	if (b >= 0) jmp (else_5)			# LN: 169 | 
cline_169_0:			/* LN: 171 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_8 + 0]			# LN: 171 | 
	jmp (__epilogue_224)			# LN: 171 | 
cline_171_0:			/* LN: 175 | CYCLE: 0 | RULES: () */ 
else_5:			/* LN: 169 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 175 | 
	jmp (__epilogue_224)			# LN: 175 | 
cline_169_1:			/* LN: 178 | CYCLE: 0 | RULES: () */ 
else_4:			/* LN: 167 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_tremolo_data + 3]			# LN: 178 | 
	uhalfword(a1) = (0x4)			# LN: 178 | 
	a0 - a1			# LN: 178 | 
	if (a != 0) jmp (else_6)			# LN: 178 | 
cline_178_0:			/* LN: 180 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 180 | 
	a0g = xmem[i0]; i0 += 1			# LN: 180, 180 | 
	a0h = xmem[i0]; i0 += 1			# LN: 180, 180 | 
	a0l = xmem[i0]			# LN: 180 | 
	b0 =+ a0			# LN: 180 | 
	a0g = xmem[__extractedConst_1_2 + 0]			# LN: 180 | 
	b0 = b0 >> 1			# LN: 180 | 
	a0h = xmem[__extractedConst_1_2 + 1]			# LN: 180 | 
	a0l = xmem[__extractedConst_1_2 + 2]			# LN: 180 | 
	a0 = a0 >> 1			# LN: 180 | 
	b0 - a0			# LN: 180 | 
	if (b >= 0) jmp (else_7)			# LN: 180 | 
cline_180_0:			/* LN: 182 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_8 + 0]			# LN: 182 | 
	jmp (__epilogue_224)			# LN: 182 | 
cline_182_0:			/* LN: 184 | CYCLE: 0 | RULES: () */ 
else_7:			/* LN: 180 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 184 | 
	a0g = xmem[i0]; i0 += 1			# LN: 184, 184 | 
	a0h = xmem[i0]; i0 += 1			# LN: 184, 184 | 
	a0l = xmem[i0]			# LN: 184 | 
	a0 = a0 >> 1			# LN: 184 | 
	ufixed16(a1) = (0x4000)			# LN: 184 | 
	a1 = a1 >> 1			# LN: 184 | 
	a0 - a1			# LN: 184 | 
	if (a >= 0) jmp (else_8)			# LN: 184 | 
cline_184_0:			/* LN: 186 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 186 | 
	a0g = xmem[i0]; i0 += 1			# LN: 186, 186 | 
	a0h = xmem[i0]; i0 += 1			# LN: 186, 186 | 
	a0l = xmem[i0]			# LN: 186 | 
	a1g = xmem[__extractedConst_1_2 + 0]			# LN: 186 | 
	a1h = xmem[__extractedConst_1_2 + 1]			# LN: 186 | 
	a1l = xmem[__extractedConst_1_2 + 2]			# LN: 186 | 
	a1 = a0 - a1			# LN: 186 | 
	a0 = 0			# LN: 186 | 
	a0g = (0x19)			# LN: 186 | 
	call (__mul_sat_laccum)			# LN: 186 | 
	a1 = xmem[__extractedConst_0_8 + 0]			# LN: 186 | 
	a0 = a1 - a0			# LN: 186 | 
	a0 = a0			# LN: 186 | 
	jmp (__epilogue_224)			# LN: 186 | 
cline_186_0:			/* LN: 188 | CYCLE: 0 | RULES: () */ 
else_8:			/* LN: 184 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 188 | 
	a0g = xmem[i0]; i0 += 1			# LN: 188, 188 | 
	a0h = xmem[i0]; i0 += 1			# LN: 188, 188 | 
	a0l = xmem[i0]			# LN: 188 | 
	b0 =+ a0			# LN: 188 | 
	a0g = xmem[__extractedConst_2_2 + 0]			# LN: 188 | 
	b0 = b0 >> 1			# LN: 188 | 
	a0h = xmem[__extractedConst_2_2 + 1]			# LN: 188 | 
	a0l = xmem[__extractedConst_2_2 + 2]			# LN: 188 | 
	a0 = a0 >> 1			# LN: 188 | 
	b0 - a0			# LN: 188 | 
	if (b >= 0) jmp (else_9)			# LN: 188 | 
cline_188_0:			/* LN: 190 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 190 | 
	jmp (__epilogue_224)			# LN: 190 | 
cline_190_0:			/* LN: 194 | CYCLE: 0 | RULES: () */ 
else_9:			/* LN: 188 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 194 | 
	a0g = xmem[i0]; i0 += 1			# LN: 194, 194 | 
	a0h = xmem[i0]; i0 += 1			# LN: 194, 194 | 
	a0l = xmem[i0]			# LN: 194 | 
	a1g = xmem[__extractedConst_2_2 + 0]			# LN: 194 | 
	a1h = xmem[__extractedConst_2_2 + 1]			# LN: 194 | 
	a1l = xmem[__extractedConst_2_2 + 2]			# LN: 194 | 
	a1 = a0 - a1			# LN: 194 | 
	a0 = 0			# LN: 194 | 
	a0g = (0x19)			# LN: 194 | 
	call (__mul_sat_laccum)			# LN: 194 | 
	a0 = a0			# LN: 194 | 
	jmp (__epilogue_224)			# LN: 194 | 
cline_180_1:			/* LN: 199 | CYCLE: 0 | RULES: () */ 
else_6:			/* LN: 178 | CYCLE: 0 | RULES: () */ 
	a0 = (0x4000)			# LN: 199 | 
	jmp (__epilogue_224)			# LN: 199 | 
cline_199_0:			/* LN: 201 | CYCLE: 0 | RULES: () */ 
__epilogue_224:			/* LN: 201 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x3)			# LN: 201 | 
	i7 -= 1			# LN: 201 | 
	ret			# LN: 201 | 



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

_main:			/* LN: 258 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 258 | 
	i7 += 1			# LN: 258 | 
	i7 = i7 + (0x20e)			# LN: 258 | 
	i1 = i7 - (0x1)			# LN: 258 | 
	xmem[i1] = a0h			# LN: 258 | 
	i1 = i7 - (0x2)			# LN: 258 | 
	xmem[i1] = i0			# LN: 258 | 
cline_258_0:			/* LN: 267 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 267 | 
	uhalfword(a0) = (0x4)			# LN: 267 | 
	xmem[i0] = a0h			# LN: 267 | 
cline_267_0:			/* LN: 274 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 274 | 
	a0 = 0			# LN: 274 | 
	xmem[i0] = a0h			# LN: 274 | 
	do (0x8), label_end_92			# LN: 274 | 
cline_274_0:			/* LN: 275 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 274 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 275 | 
	a1 = xmem[i0]; a0 = 0			# LN: 275, 275 | 
	a1 = a1 << 4			# LN: 275 | 
	i0 = a1			# LN: 275 | 
	uhalfword(a1) = (0x10)			# LN: 275 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 275 | 
	call (_memset)			# LN: 275 | 
cline_275_0:			/* LN: 274 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 275 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 274 | 
	a0 = xmem[i0]			# LN: 274 | 
	uhalfword(a1) = (0x1)			# LN: 274 | 
	a0 = a0 + a1			# LN: 274 | 
	i0 = i7 - (0x4)			# LN: 274 | 
label_end_92:			# LN: 274 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 274 | 
cline_274_1:			/* LN: 279 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 274 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 279 | 
	i0 = xmem[i0]			# LN: 279 | 
	i1 = i7 - (260 - 0)			# LN: 279 | 
	i4 = xmem[i0]			# LN: 279 | 
	i0 = i1			# LN: 279 | 
	i1 = i4			# LN: 279 | 
	call (_strcpy)			# LN: 279 | 
cline_279_0:			/* LN: 280 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (260 - 0)			# LN: 280 | 
	call (_cl_wavread_open)			# LN: 280 | 
	AnyReg(i0, a0h)			# LN: 280 | 
	i1 = i7 - (0x105)			# LN: 280 | 
	xmem[i1] = i0			# LN: 280 | 
cline_280_0:			/* LN: 281 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 281 | 
	a0 = xmem[i0]			# LN: 281 | 
	a0 & a0			# LN: 281 | 
	if (a != 0) jmp (else_11)			# LN: 281 | 
cline_281_0:			/* LN: 283 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_0)			# LN: 283 | 
	call (_printf)			# LN: 283 | 
cline_283_0:			/* LN: 284 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 284 | 
	jmp (__epilogue_228)			# LN: 284 | 
cline_284_0:			/* LN: 290 | CYCLE: 0 | RULES: () */ 
endif_11:			/* LN: 281 | CYCLE: 0 | RULES: () */ 
else_11:			/* LN: 281 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 290 | 
	i0 = xmem[i0]			# LN: 290 | 
	call (_cl_wavread_getnchannels)			# LN: 290 | 
	i0 = i7 - (0x106)			# LN: 290 | 
	xmem[i0] = a0h			# LN: 290 | 
cline_290_0:			/* LN: 291 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 291 | 
	i0 = xmem[i0]			# LN: 291 | 
	call (_cl_wavread_bits_per_sample)			# LN: 291 | 
	i0 = i7 - (0x107)			# LN: 291 | 
	xmem[i0] = a0h			# LN: 291 | 
cline_291_0:			/* LN: 292 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 292 | 
	i0 = xmem[i0]			# LN: 292 | 
	call (_cl_wavread_frame_rate)			# LN: 292 | 
	i0 = i7 - (0x108)			# LN: 292 | 
	xmem[i0] = a0h			# LN: 292 | 
cline_292_0:			/* LN: 293 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 293 | 
	i0 = xmem[i0]			# LN: 293 | 
	call (_cl_wavread_number_of_frames)			# LN: 293 | 
	i0 = i7 - (0x109)			# LN: 293 | 
	xmem[i0] = a0h			# LN: 293 | 
cline_293_0:			/* LN: 298 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 298 | 
	i0 = xmem[i0]			# LN: 298 | 
	i1 = i7 - (521 - 0)			# LN: 298 | 
	i0 += 1			# LN: 298 | 
	i4 = xmem[i0]			# LN: 298 | 
	i0 = i1			# LN: 298 | 
	i1 = i4			# LN: 298 | 
	call (_strcpy)			# LN: 298 | 
cline_298_0:			/* LN: 299 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (521 - 0)			# LN: 299 | 
	i1 = i7 - (0x107)			# LN: 299 | 
	a0 = xmem[i1]			# LN: 299 | 
	i1 = i7 - (0x3)			# LN: 299 | 
	a1 = xmem[i1]			# LN: 299 | 
	i1 = i7 - (0x108)			# LN: 299 | 
	b0 = xmem[i1]			# LN: 299 | 
	call (_cl_wavwrite_open)			# LN: 299 | 
	AnyReg(i0, a0h)			# LN: 299 | 
	i1 = i7 - (0x20a)			# LN: 299 | 
	xmem[i1] = i0			# LN: 299 | 
cline_299_0:			/* LN: 300 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 300 | 
	a0 = xmem[i0]			# LN: 300 | 
	a0 & a0			# LN: 300 | 
	if (a != 0) jmp (else_12)			# LN: 300 | 
cline_300_0:			/* LN: 302 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_1)			# LN: 302 | 
	call (_printf)			# LN: 302 | 
cline_302_0:			/* LN: 303 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 303 | 
	jmp (__epilogue_228)			# LN: 303 | 
cline_303_0:			/* LN: 306 | CYCLE: 0 | RULES: () */ 
endif_12:			/* LN: 300 | CYCLE: 0 | RULES: () */ 
else_12:			/* LN: 300 | CYCLE: 0 | RULES: () */ 
	call (_tremolo_init)			# LN: 306 | 
cline_306_0:			/* LN: 317 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 317 | 
	a0 = 0			# LN: 317 | 
	xmem[i0] = a0h			# LN: 317 | 
for_3:			/* LN: 317 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x109)			# LN: 317 | 
	a0 = xmem[i0]			# LN: 317 | 
	uhalfword(a1) = (0x10)			# LN: 317 | 
	call (__div)			# LN: 317 | 
	i0 = i7 - (0x20b)			# LN: 317 | 
	a1 = xmem[i0]			# LN: 317 | 
	a1 - a0			# LN: 317 | 
	if (a >= 0) jmp (for_end_3)			# LN: 317 | 
cline_317_0:			/* LN: 319 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 319 | 
	a0 = 0			# LN: 319 | 
	xmem[i0] = a0h			# LN: 319 | 
	do (0x10), label_end_93			# LN: 319 | 
cline_319_0:			/* LN: 321 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 319 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 321 | 
	a0 = 0			# LN: 321 | 
	xmem[i0] = a0h			# LN: 321 | 
for_5:			/* LN: 321 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 321 | 
	a0 = xmem[i0]			# LN: 321 | 
	i0 = i7 - (0x106)			# LN: 321 | 
	a1 = xmem[i0]			# LN: 321 | 
	a0 - a1			# LN: 321 | 
	if (a >= 0) jmp (for_end_5)			# LN: 321 | 
cline_321_0:			/* LN: 323 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 323 | 
	i0 = xmem[i0]			# LN: 323 | 
	call (_cl_wavread_recvsample)			# LN: 323 | 
	i0 = i7 - (0x20e)			# LN: 323 | 
	xmem[i0] = a0h			# LN: 323 | 
cline_323_0:			/* LN: 324 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 324 | 
	a0 = xmem[i0]			# LN: 324 | 
	a0 = a0 << 4			# LN: 324 | 
	i0 = a0			# LN: 324 | 
	i1 = i7 - (0x20c)			# LN: 324 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 324 | 
	a0 = xmem[i1]			# LN: 324 | 
	a1 = i0			# LN: 324 | 
	a0 = a1 + a0			# LN: 324 | 
	AnyReg(i0, a0h)			# LN: 324 | 
	i1 = i7 - (0x20e)			# LN: 324 | 
	a0 = xmem[i1]			# LN: 324 | 
	xmem[i0] = a0h			# LN: 324 | 
cline_324_0:			/* LN: 321 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 325 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 321 | 
	a0 = xmem[i0]			# LN: 321 | 
	uhalfword(a1) = (0x1)			# LN: 321 | 
	a0 = a0 + a1			# LN: 321 | 
	i0 = i7 - (0x20d)			# LN: 321 | 
	xmem[i0] = a0h			# LN: 321 | 
	jmp (for_5)			# LN: 321 | 
cline_321_1:			/* LN: 319 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 326 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 321 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 319 | 
	a0 = xmem[i0]			# LN: 319 | 
	uhalfword(a1) = (0x1)			# LN: 319 | 
	a0 = a0 + a1			# LN: 319 | 
	i0 = i7 - (0x20c)			# LN: 319 | 
label_end_93:			# LN: 319 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 319 | 
cline_319_1:			/* LN: 328 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 319 | CYCLE: 0 | RULES: () */ 
	call (_processing_foo)			# LN: 328 | 
cline_328_0:			/* LN: 330 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 330 | 
	a0 = 0			# LN: 330 | 
	xmem[i0] = a0h			# LN: 330 | 
	do (0x10), label_end_94			# LN: 330 | 
cline_330_0:			/* LN: 332 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 330 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 332 | 
	a0 = 0			# LN: 332 | 
	xmem[i0] = a0h			# LN: 332 | 
for_7:			/* LN: 332 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 332 | 
	a0 = xmem[i0]			# LN: 332 | 
	i0 = i7 - (0x3)			# LN: 332 | 
	a1 = xmem[i0]			# LN: 332 | 
	a0 - a1			# LN: 332 | 
	if (a >= 0) jmp (for_end_7)			# LN: 332 | 
cline_332_0:			/* LN: 334 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 334 | 
	a0 = xmem[i0]			# LN: 334 | 
	a0 = a0 << 4			# LN: 334 | 
	i0 = a0			# LN: 334 | 
	i1 = i7 - (0x20c)			# LN: 334 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 334 | 
	a0 = xmem[i1]			# LN: 334 | 
	a1 = i0			# LN: 334 | 
	a0 = a1 + a0			# LN: 334 | 
	AnyReg(i0, a0h)			# LN: 334 | 
	i1 = i7 - (0x20e)			# LN: 334 | 
	a0 = xmem[i0]			# LN: 334 | 
	xmem[i1] = a0h			# LN: 334 | 
cline_334_0:			/* LN: 335 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 335 | 
	i1 = i7 - (0x20e)			# LN: 335 | 
	a0 = xmem[i1]			# LN: 335 | 
	i0 = xmem[i0]			# LN: 335 | 
	call (_cl_wavwrite_sendsample)			# LN: 335 | 
cline_335_0:			/* LN: 332 | CYCLE: 0 | RULES: () */ 
init_latch_label_5:			/* LN: 336 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 332 | 
	a0 = xmem[i0]			# LN: 332 | 
	uhalfword(a1) = (0x1)			# LN: 332 | 
	a0 = a0 + a1			# LN: 332 | 
	i0 = i7 - (0x20d)			# LN: 332 | 
	xmem[i0] = a0h			# LN: 332 | 
	jmp (for_7)			# LN: 332 | 
cline_332_1:			/* LN: 330 | CYCLE: 0 | RULES: () */ 
init_latch_label_6:			/* LN: 337 | CYCLE: 0 | RULES: () */ 
for_end_7:			/* LN: 332 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 330 | 
	a0 = xmem[i0]			# LN: 330 | 
	uhalfword(a1) = (0x1)			# LN: 330 | 
	a0 = a0 + a1			# LN: 330 | 
	i0 = i7 - (0x20c)			# LN: 330 | 
label_end_94:			# LN: 330 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 330 | 
cline_330_1:			/* LN: 317 | CYCLE: 0 | RULES: () */ 
init_latch_label_7:			/* LN: 338 | CYCLE: 0 | RULES: () */ 
for_end_6:			/* LN: 330 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 317 | 
	a0 = xmem[i0]			# LN: 317 | 
	uhalfword(a1) = (0x1)			# LN: 317 | 
	a0 = a0 + a1			# LN: 317 | 
	i0 = i7 - (0x20b)			# LN: 317 | 
	xmem[i0] = a0h			# LN: 317 | 
	jmp (for_3)			# LN: 317 | 
cline_317_1:			/* LN: 343 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 317 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 343 | 
	i0 = xmem[i0]			# LN: 343 | 
	call (_cl_wavread_close)			# LN: 343 | 
cline_343_0:			/* LN: 344 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 344 | 
	i0 = xmem[i0]			# LN: 344 | 
	call (_cl_wavwrite_close)			# LN: 344 | 
cline_344_0:			/* LN: 347 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 347 | 
	jmp (__epilogue_228)			# LN: 347 | 
cline_347_0:			/* LN: 348 | CYCLE: 0 | RULES: () */ 
__epilogue_228:			/* LN: 348 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x20e)			# LN: 348 | 
	i7 -= 1			# LN: 348 | 
	ret			# LN: 348 | 



_processing_foo:			/* LN: 220 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 220 | 
	i7 += 1			# LN: 220 | 
	i7 = i7 + (0x5)			# LN: 220 | 
cline_220_0:			/* LN: 222 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_sampleBufferLeft + 0]			# LN: 222 | 
	i0 = i7 - (0x1)			# LN: 222 | 
	xmem[i0] = a0			# LN: 222 | 
cline_222_0:			/* LN: 223 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_sampleBufferRight + 0]			# LN: 223 | 
	i0 = i7 - (0x2)			# LN: 223 | 
	xmem[i0] = a0			# LN: 223 | 
cline_223_0:			/* LN: 226 | CYCLE: 0 | RULES: () */ 
	jmp (dummy_init_1)			# LN: 226 | 
for_1:			/* LN: 226 | CYCLE: 0 | RULES: () */ 
dummy_init_1:			/* LN: 226 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_sampleBufferLeft + 0]			# LN: 226 | 
	i1 = i7 - (0x1)			# LN: 226 | 
	i0 = i0 + (0x10)			# LN: 226 | 
	i0 -= 1			# LN: 226 | 
	a0 = xmem[i1]			# LN: 226 | 
	a1 = i0			# LN: 226 | 
	a0 - a1			# LN: 226 | 
	if (a > 0) jmp (for_end_1)			# LN: 226 | 
cline_226_0:			/* LN: 228 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 228 | 
	i0 = xmem[i0]			# LN: 228 | 
	x0 = xmem[_inputGain + 0]			# LN: 228 | 
	x1 = ymem[i0]			# LN: 228 | 
	a0 = x1 * x0			# LN: 228 | 
	i0 = i7 - (0x5)			# LN: 228 | 
	xmem[i0] = a0g; i0 += 1			# LN: 228, 228 | 
	xmem[i0] = a0h; i0 += 1			# LN: 228, 228 | 
	xmem[i0] = a0l			# LN: 228 | 
cline_228_0:			/* LN: 229 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 229 | 
	a0g = xmem[i0]; i0 += 1			# LN: 229, 229 | 
	a0h = xmem[i0]; i0 += 1			# LN: 229, 229 | 
	i1 = i7 - (0x1)			# LN: 229 | 
	i1 = xmem[i1]			# LN: 229 | 
	a0l = xmem[i0]			# LN: 229 | 
	ymem[i1] = a0			# LN: 229 | 
cline_229_0:			/* LN: 231 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 231 | 
	i0 = xmem[i0]			# LN: 231 | 
	x0 = xmem[_inputGain + 0]			# LN: 231 | 
	x1 = ymem[i0]			# LN: 231 | 
	a0 = x1 * x0			# LN: 231 | 
	i0 = i7 - (0x5)			# LN: 231 | 
	xmem[i0] = a0g; i0 += 1			# LN: 231, 231 | 
	xmem[i0] = a0h; i0 += 1			# LN: 231, 231 | 
	xmem[i0] = a0l			# LN: 231 | 
cline_231_0:			/* LN: 232 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 232 | 
	a0g = xmem[i0]; i0 += 1			# LN: 232, 232 | 
	a0h = xmem[i0]; i0 += 1			# LN: 232, 232 | 
	i1 = i7 - (0x2)			# LN: 232 | 
	i1 = xmem[i1]			# LN: 232 | 
	a0l = xmem[i0]			# LN: 232 | 
	ymem[i1] = a0			# LN: 232 | 
cline_232_0:			/* LN: 226 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 233 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 226 | 
	i0 = xmem[i0]			# LN: 226 | 
	i1 = i7 - (0x1)			# LN: 226 | 
	i0 += 1			# LN: 226 | 
	xmem[i1] = i0			# LN: 226 | 
	i0 = i7 - (0x2)			# LN: 226 | 
	i0 = xmem[i0]			# LN: 226 | 
	i1 = i7 - (0x2)			# LN: 226 | 
	i0 += 1			# LN: 226 | 
	xmem[i1] = i0			# LN: 226 | 
	jmp (for_1)			# LN: 226 | 
cline_226_1:			/* LN: 236 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 226 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_outputChannelNum + 0]			# LN: 236 | 
	uhalfword(a1) = (0x4)			# LN: 236 | 
	a0 - a1			# LN: 236 | 
	if (a != 0) jmp (else_10)			# LN: 236 | 
cline_236_0:			/* LN: 238 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_sampleBufferLeft + 0]			# LN: 238 | 
	i1 = xmem[_sampleBufferLeftSide + 0]			# LN: 238 | 
	call (_tremolo_procces)			# LN: 238 | 
cline_238_0:			/* LN: 239 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_sampleBufferRight + 0]			# LN: 239 | 
	i1 = xmem[_sampleBufferRightSide + 0]			# LN: 239 | 
	call (_tremolo_procces)			# LN: 239 | 
	jmp (endif_10)			# LN: 239 | 
cline_239_0:			/* LN: 241 | CYCLE: 0 | RULES: () */ 
endif_10:			/* LN: 236 | CYCLE: 0 | RULES: () */ 
else_10:			/* LN: 236 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_226)			# LN: 241 | 
__epilogue_226:			/* LN: 241 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x5)			# LN: 241 | 
	i7 -= 1			# LN: 241 | 
	ret			# LN: 241 | 



_tremolo_init:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 73 | 
	i7 += 1			# LN: 73 | 
cline_73_0:			/* LN: 76 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_3_1 + 0]			# LN: 76 | 
	xmem[_inputGain + 0] = a0h			# LN: 76 | 
cline_76_0:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_8 + 0]			# LN: 77 | 
	xmem[_tremolo_data + 1] = a0h			# LN: 77 | 
cline_77_0:			/* LN: 78 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_8 + 0]			# LN: 78 | 
	xmem[_tremolo_data + 2] = a0h			# LN: 78 | 
cline_78_0:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x3)			# LN: 79 | 
	xmem[_tremolo_data + 3] = a0h			# LN: 79 | 
cline_79_0:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 80 | 
	xmem[_tremolo_data + 4] = a0h			# LN: 80 | 
cline_80_0:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0xaec3)			# LN: 81 | 
	a0l = (0x3e1f)			# LN: 81 | 
	lo16(a0l) = (0x6715)			# LN: 81 | 
	xmem[_tremolo_data + 5] = a0g			# LN: 81 | 
	xmem[_tremolo_data + 6] = a0h			# LN: 81 | 
	xmem[_tremolo_data + 7] = a0l			# LN: 81 | 
cline_81_0:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_220)			# LN: 82 | 
__epilogue_220:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
	i7 -= 1			# LN: 82 | 
	ret			# LN: 82 | 



_tremolo_procces:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 102 | 
	i7 += 1			# LN: 102 | 
	i7 = i7 + (0xe)			# LN: 102 | 
	i4 = i7 - (0x1)			# LN: 102 | 
	xmem[i4] = i0			# LN: 102 | 
	i0 = i7 - (0x2)			# LN: 102 | 
	xmem[i0] = i1			# LN: 102 | 
cline_102_0:			/* LN: 113 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 113 | 
	a0 = xmem[i0]			# LN: 113 | 
	i0 = i7 - (0x3)			# LN: 113 | 
	xmem[i0] = a0			# LN: 113 | 
cline_113_0:			/* LN: 114 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 114 | 
	a0 = xmem[i0]			# LN: 114 | 
	i0 = i7 - (0x4)			# LN: 114 | 
	xmem[i0] = a0			# LN: 114 | 
cline_114_0:			/* LN: 115 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 115 | 
	a0 = 0			# LN: 115 | 
	xmem[i0] = a0h			# LN: 115 | 
cline_115_0:			/* LN: 123 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_tremolo_data + 4]			# LN: 123 | 
	i0 = i7 - (0x8)			# LN: 123 | 
	xmem[i0] = a0g; i0 += 1			# LN: 123, 123 | 
	xmem[i0] = a0h; i0 += 1			# LN: 123, 123 | 
	xmem[i0] = a0l			# LN: 123 | 
cline_123_0:			/* LN: 125 | CYCLE: 0 | RULES: () */ 
	jmp (dummy_init_0)			# LN: 125 | 
for_0:			/* LN: 125 | CYCLE: 0 | RULES: () */ 
dummy_init_0:			/* LN: 125 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 125 | 
	i0 = xmem[i0]			# LN: 125 | 
	i1 = i7 - (0x3)			# LN: 125 | 
	i0 = i0 + (0x10)			# LN: 125 | 
	i0 -= 1			# LN: 125 | 
	a0 = xmem[i1]			# LN: 125 | 
	a1 = i0			# LN: 125 | 
	a0 - a1			# LN: 125 | 
	if (a > 0) jmp (for_end_0)			# LN: 125 | 
cline_125_0:			/* LN: 130 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 130 | 
	a0g = xmem[i0]; i0 += 1			# LN: 130, 130 | 
	a0h = xmem[i0]; i0 += 1			# LN: 130, 130 | 
	a0l = xmem[i0]			# LN: 130 | 
	call (_lfo)			# LN: 130 | 
	i0 = i7 - (0x5)			# LN: 130 | 
	xmem[i0] = a0h			# LN: 130 | 
cline_130_0:			/* LN: 131 | CYCLE: 0 | RULES: () */ 
	x0 = xmem[_tremolo_data + 2]			# LN: 131 | 
	i0 = i7 - (0x5)			# LN: 131 | 
	x1 = xmem[i0]			# LN: 131 | 
	a0 = x0 * x1			# LN: 131 | 
	i0 = i7 - (0xb)			# LN: 131 | 
	xmem[i0] = a0g; i0 += 1			# LN: 131, 131 | 
	xmem[i0] = a0h; i0 += 1			# LN: 131, 131 | 
	xmem[i0] = a0l			# LN: 131 | 
cline_131_0:			/* LN: 132 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 132 | 
	i0 = xmem[i0]			# LN: 132 | 
	a0 = xmem[__extractedConst_0_8 + 0]			# LN: 132 | 
	i1 = i7 - (0xb)			# LN: 132 | 
	a1g = xmem[i1]; i1 += 1			# LN: 132, 132 | 
	a1h = xmem[i1]; i1 += 1			# LN: 132, 132 | 
	a1l = xmem[i1]			# LN: 132 | 
	x0 = ymem[i0]; a1 = a0 - a1			# LN: 132, 132 | 
	a0 = +x0			# LN: 132 | 
	call (__mul_sat_laccum)			# LN: 132 | 
	i0 = i7 - (0x4)			# LN: 132 | 
	i0 = xmem[i0]			# LN: 132 | 
	nop #empty cycle
	ymem[i0] = a0			# LN: 132 | 
cline_132_0:			/* LN: 139 | CYCLE: 0 | RULES: () */ 
	a0g = xmem[_tremolo_data + 5]			# LN: 139 | 
	a0h = xmem[_tremolo_data + 6]			# LN: 139 | 
	a0l = xmem[_tremolo_data + 7]			# LN: 139 | 
	i0 = i7 - (0xe)			# LN: 139 | 
	xmem[i0] = a0g; i0 += 1			# LN: 139, 139 | 
	xmem[i0] = a0h; i0 += 1			# LN: 139, 139 | 
	xmem[i0] = a0l			# LN: 139 | 
cline_139_0:			/* LN: 140 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 140 | 
	a0g = xmem[i0]; i0 += 1			# LN: 140, 140 | 
	a0h = xmem[i0]; i0 += 1			# LN: 140, 140 | 
	a0l = xmem[i0]			# LN: 140 | 
	i0 = i7 - (0xe)			# LN: 140 | 
	a1g = xmem[i0]; i0 += 1			# LN: 140, 140 | 
	a1h = xmem[i0]; i0 += 1			# LN: 140, 140 | 
	a1l = xmem[i0]			# LN: 140 | 
	a0 = a0 + a1			# LN: 140 | 
	i0 = i7 - (0x8)			# LN: 140 | 
	xmem[i0] = a0g; i0 += 1			# LN: 140, 140 | 
	xmem[i0] = a0h; i0 += 1			# LN: 140, 140 | 
	xmem[i0] = a0l			# LN: 140 | 
cline_140_0:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 142 | 
	a0g = xmem[i0]; i0 += 1			# LN: 142, 142 | 
	a0h = xmem[i0]; i0 += 1			# LN: 142, 142 | 
	a0l = xmem[i0]			# LN: 142 | 
	b0 =+ a0			# LN: 142 | 
	b0 = b0 >> 1			# LN: 142 | 
	a0 = xmem[__extractedConst_0_8 + 0]			# LN: 142 | 
	a0 = a0 >> 1			# LN: 142 | 
	b0 - a0			# LN: 142 | 
	if (b < 0) jmp (else_0)			# LN: 142 | 
cline_142_0:			/* LN: 143 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 143 | 
	a0g = xmem[i0]; i0 += 1			# LN: 143, 143 | 
	a0h = xmem[i0]; i0 += 1			# LN: 143, 143 | 
	a0l = xmem[i0]			# LN: 143 | 
	a1 = xmem[__extractedConst_0_8 + 0]			# LN: 143 | 
	a0 = a0 - a1			# LN: 143 | 
	i0 = i7 - (0x8)			# LN: 143 | 
	xmem[i0] = a0g; i0 += 1			# LN: 143, 143 | 
	xmem[i0] = a0h; i0 += 1			# LN: 143, 143 | 
	xmem[i0] = a0l			# LN: 143 | 
	jmp (endif_0)			# LN: 143 | 
cline_143_0:			/* LN: 125 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 144 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 125 | 
	i0 = xmem[i0]			# LN: 125 | 
	i1 = i7 - (0x3)			# LN: 125 | 
	i0 += 1			# LN: 125 | 
	xmem[i1] = i0			# LN: 125 | 
	i0 = i7 - (0x4)			# LN: 125 | 
	i0 = xmem[i0]			# LN: 125 | 
	i1 = i7 - (0x4)			# LN: 125 | 
	i0 += 1			# LN: 125 | 
	xmem[i1] = i0			# LN: 125 | 
	jmp (for_0)			# LN: 125 | 
cline_125_1:			/* LN: 147 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 125 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 147 | 
	a0g = xmem[i0]; i0 += 1			# LN: 147, 147 | 
	a0h = xmem[i0]; i0 += 1			# LN: 147, 147 | 
	a0l = xmem[i0]			# LN: 147 | 
	xmem[_tremolo_data + 4] = a0			# LN: 147 | 
cline_147_0:			/* LN: 148 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_222)			# LN: 148 | 
__epilogue_222:			/* LN: 148 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0xe)			# LN: 148 | 
	i7 -= 1			# LN: 148 | 
	ret			# LN: 148 | 
