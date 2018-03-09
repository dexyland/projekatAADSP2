	.public _inputGain
	.public _outputChannelNum
	.public _sampleBuffer
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



_lfo:			/* LN: 148 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 148 | 
	i7 += 1			# LN: 148 | 
	i7 = i7 + (0x3)			# LN: 148 | 
	i0 = i7 - (0x3)			# LN: 148 | 
	xmem[i0] = a0g; i0 += 1			# LN: 148, 148 | 
	xmem[i0] = a0h; i0 += 1			# LN: 148, 148 | 
	xmem[i0] = a0l			# LN: 148 | 
cline_148_0:			/* LN: 150 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_tremolo_data + 3]			# LN: 150 | 
	uhalfword(a1) = (0x2)			# LN: 150 | 
	a0 - a1			# LN: 150 | 
	if (a != 0) jmp (else_1)			# LN: 150 | 
cline_150_0:			/* LN: 152 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 152 | 
	a0g = xmem[i0]; i0 += 1			# LN: 152, 152 | 
	a0h = xmem[i0]; i0 += 1			# LN: 152, 152 | 
	a0l = xmem[i0]			# LN: 152 | 
	a0 = a0 >> 1			# LN: 152 | 
	ufixed16(a1) = (0x2000)			# LN: 152 | 
	a1 = a1 >> 1			# LN: 152 | 
	a0 - a1			# LN: 152 | 
	if (a >= 0) jmp (else_2)			# LN: 152 | 
cline_152_0:			/* LN: 154 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 154 | 
	a0g = xmem[i0]; i0 += 1			# LN: 154, 154 | 
	a0h = xmem[i0]; i0 += 1			# LN: 154, 154 | 
	a0l = xmem[i0]			# LN: 154 | 
	a0 = a0 << 1			# LN: 154 | 
	ufixed16(a1) = (0x4000)			# LN: 154 | 
	a0 = a1 + a0			# LN: 154 | 
	a0 = a0			# LN: 154 | 
	jmp (__epilogue_224)			# LN: 154 | 
cline_154_0:			/* LN: 156 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 152 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 156 | 
	a0g = xmem[i0]; i0 += 1			# LN: 156, 156 | 
	a0h = xmem[i0]; i0 += 1			# LN: 156, 156 | 
	a0l = xmem[i0]			# LN: 156 | 
	a0 = a0 >> 1			# LN: 156 | 
	ufixed16(a1) = (0x6000)			# LN: 156 | 
	a1 = a1 >> 1			# LN: 156 | 
	a0 - a1			# LN: 156 | 
	if (a >= 0) jmp (else_3)			# LN: 156 | 
cline_156_0:			/* LN: 158 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 158 | 
	a0g = xmem[i0]; i0 += 1			# LN: 158, 158 | 
	a0h = xmem[i0]; i0 += 1			# LN: 158, 158 | 
	a0l = xmem[i0]			# LN: 158 | 
	ufixed16(a1) = (0x2000)			# LN: 158 | 
	a0 = a0 - a1			# LN: 158 | 
	a0 = a0 << 1			# LN: 158 | 
	ufixed16(a1) = (0x8000)			# LN: 158 | 
	a0 = a1 - a0			# LN: 158 | 
	a0 = a0			# LN: 158 | 
	jmp (__epilogue_224)			# LN: 158 | 
cline_158_0:			/* LN: 162 | CYCLE: 0 | RULES: () */ 
else_3:			/* LN: 156 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 162 | 
	a0g = xmem[i0]; i0 += 1			# LN: 162, 162 | 
	a0h = xmem[i0]; i0 += 1			# LN: 162, 162 | 
	a0l = xmem[i0]			# LN: 162 | 
	ufixed16(a1) = (0x6000)			# LN: 162 | 
	a0 = a0 - a1			# LN: 162 | 
	a0 = a0 << 1			# LN: 162 | 
	a0 = a0			# LN: 162 | 
	jmp (__epilogue_224)			# LN: 162 | 
cline_152_1:			/* LN: 165 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 150 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_tremolo_data + 3]			# LN: 165 | 
	uhalfword(a1) = (0x3)			# LN: 165 | 
	a0 - a1			# LN: 165 | 
	if (a != 0) jmp (else_4)			# LN: 165 | 
cline_165_0:			/* LN: 167 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 167 | 
	a0g = xmem[i0]; i0 += 1			# LN: 167, 167 | 
	a0h = xmem[i0]; i0 += 1			# LN: 167, 167 | 
	a0l = xmem[i0]			# LN: 167 | 
	b0 =+ a0			# LN: 167 | 
	b0 = b0 >> 1			# LN: 167 | 
	a0 = (0x4000)			# LN: 167 | 
	a0 = a0 >> 1			# LN: 167 | 
	b0 - a0			# LN: 167 | 
	if (b >= 0) jmp (else_5)			# LN: 167 | 
cline_167_0:			/* LN: 169 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_8 + 0]			# LN: 169 | 
	jmp (__epilogue_224)			# LN: 169 | 
cline_169_0:			/* LN: 173 | CYCLE: 0 | RULES: () */ 
else_5:			/* LN: 167 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 173 | 
	jmp (__epilogue_224)			# LN: 173 | 
cline_167_1:			/* LN: 176 | CYCLE: 0 | RULES: () */ 
else_4:			/* LN: 165 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_tremolo_data + 3]			# LN: 176 | 
	uhalfword(a1) = (0x4)			# LN: 176 | 
	a0 - a1			# LN: 176 | 
	if (a != 0) jmp (else_6)			# LN: 176 | 
cline_176_0:			/* LN: 178 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 178 | 
	a0g = xmem[i0]; i0 += 1			# LN: 178, 178 | 
	a0h = xmem[i0]; i0 += 1			# LN: 178, 178 | 
	a0l = xmem[i0]			# LN: 178 | 
	b0 =+ a0			# LN: 178 | 
	a0g = xmem[__extractedConst_1_2 + 0]			# LN: 178 | 
	b0 = b0 >> 1			# LN: 178 | 
	a0h = xmem[__extractedConst_1_2 + 1]			# LN: 178 | 
	a0l = xmem[__extractedConst_1_2 + 2]			# LN: 178 | 
	a0 = a0 >> 1			# LN: 178 | 
	b0 - a0			# LN: 178 | 
	if (b >= 0) jmp (else_7)			# LN: 178 | 
cline_178_0:			/* LN: 180 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_8 + 0]			# LN: 180 | 
	jmp (__epilogue_224)			# LN: 180 | 
cline_180_0:			/* LN: 182 | CYCLE: 0 | RULES: () */ 
else_7:			/* LN: 178 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 182 | 
	a0g = xmem[i0]; i0 += 1			# LN: 182, 182 | 
	a0h = xmem[i0]; i0 += 1			# LN: 182, 182 | 
	a0l = xmem[i0]			# LN: 182 | 
	a0 = a0 >> 1			# LN: 182 | 
	ufixed16(a1) = (0x4000)			# LN: 182 | 
	a1 = a1 >> 1			# LN: 182 | 
	a0 - a1			# LN: 182 | 
	if (a >= 0) jmp (else_8)			# LN: 182 | 
cline_182_0:			/* LN: 184 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 184 | 
	a0g = xmem[i0]; i0 += 1			# LN: 184, 184 | 
	a0h = xmem[i0]; i0 += 1			# LN: 184, 184 | 
	a0l = xmem[i0]			# LN: 184 | 
	a1g = xmem[__extractedConst_1_2 + 0]			# LN: 184 | 
	a1h = xmem[__extractedConst_1_2 + 1]			# LN: 184 | 
	a1l = xmem[__extractedConst_1_2 + 2]			# LN: 184 | 
	a1 = a0 - a1			# LN: 184 | 
	a0 = 0			# LN: 184 | 
	a0g = (0x19)			# LN: 184 | 
	call (__mul_sat_laccum)			# LN: 184 | 
	a1 = xmem[__extractedConst_0_8 + 0]			# LN: 184 | 
	a0 = a1 - a0			# LN: 184 | 
	a0 = a0			# LN: 184 | 
	jmp (__epilogue_224)			# LN: 184 | 
cline_184_0:			/* LN: 186 | CYCLE: 0 | RULES: () */ 
else_8:			/* LN: 182 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 186 | 
	a0g = xmem[i0]; i0 += 1			# LN: 186, 186 | 
	a0h = xmem[i0]; i0 += 1			# LN: 186, 186 | 
	a0l = xmem[i0]			# LN: 186 | 
	b0 =+ a0			# LN: 186 | 
	a0g = xmem[__extractedConst_2_2 + 0]			# LN: 186 | 
	b0 = b0 >> 1			# LN: 186 | 
	a0h = xmem[__extractedConst_2_2 + 1]			# LN: 186 | 
	a0l = xmem[__extractedConst_2_2 + 2]			# LN: 186 | 
	a0 = a0 >> 1			# LN: 186 | 
	b0 - a0			# LN: 186 | 
	if (b >= 0) jmp (else_9)			# LN: 186 | 
cline_186_0:			/* LN: 188 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 188 | 
	jmp (__epilogue_224)			# LN: 188 | 
cline_188_0:			/* LN: 192 | CYCLE: 0 | RULES: () */ 
else_9:			/* LN: 186 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 192 | 
	a0g = xmem[i0]; i0 += 1			# LN: 192, 192 | 
	a0h = xmem[i0]; i0 += 1			# LN: 192, 192 | 
	a0l = xmem[i0]			# LN: 192 | 
	a1g = xmem[__extractedConst_2_2 + 0]			# LN: 192 | 
	a1h = xmem[__extractedConst_2_2 + 1]			# LN: 192 | 
	a1l = xmem[__extractedConst_2_2 + 2]			# LN: 192 | 
	a1 = a0 - a1			# LN: 192 | 
	a0 = 0			# LN: 192 | 
	a0g = (0x19)			# LN: 192 | 
	call (__mul_sat_laccum)			# LN: 192 | 
	a0 = a0			# LN: 192 | 
	jmp (__epilogue_224)			# LN: 192 | 
cline_178_1:			/* LN: 197 | CYCLE: 0 | RULES: () */ 
else_6:			/* LN: 176 | CYCLE: 0 | RULES: () */ 
	a0 = (0x4000)			# LN: 197 | 
	jmp (__epilogue_224)			# LN: 197 | 
cline_197_0:			/* LN: 199 | CYCLE: 0 | RULES: () */ 
__epilogue_224:			/* LN: 199 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x3)			# LN: 199 | 
	i7 -= 1			# LN: 199 | 
	ret			# LN: 199 | 



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

_main:			/* LN: 260 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 260 | 
	i7 += 1			# LN: 260 | 
	i7 = i7 + (0x20f)			# LN: 260 | 
	i1 = i7 - (0x1)			# LN: 260 | 
	xmem[i1] = a0h			# LN: 260 | 
	i1 = i7 - (0x2)			# LN: 260 | 
	xmem[i1] = i0			# LN: 260 | 
cline_260_0:			/* LN: 269 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 269 | 
	uhalfword(a0) = (0x4)			# LN: 269 | 
	xmem[i0] = a0h			# LN: 269 | 
cline_269_0:			/* LN: 277 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 277 | 
	a0 = 0			# LN: 277 | 
	xmem[i0] = a0h			# LN: 277 | 
	do (0x8), label_end_95			# LN: 277 | 
cline_277_0:			/* LN: 278 | CYCLE: 0 | RULES: () */ 
label_begin_95:			/* LN: 277 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 278 | 
	a0 = 0			# LN: 278 | 
	xmem[i0] = a0h			# LN: 278 | 
	do (0x10), label_end_94			# LN: 278 | 
cline_278_0:			/* LN: 279 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 278 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 279 | 
	a0 = xmem[i0]; a1 = 0			# LN: 279, 279 | 
	a0 = a0 << 4			# LN: 279 | 
	i0 = a0			# LN: 279 | 
	i1 = i7 - (0x5)			# LN: 279 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 279 | 
	a0 = xmem[i1]			# LN: 279 | 
	b0 = i0			# LN: 279 | 
	a0 = a0 + b0			# LN: 279 | 
	AnyReg(i0, a0h)			# LN: 279 | 
	nop #empty cycle
	ymem[i0] = a1h			# LN: 279 | 
cline_279_0:			/* LN: 278 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 279 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 278 | 
	a0 = xmem[i0]			# LN: 278 | 
	uhalfword(a1) = (0x1)			# LN: 278 | 
	a0 = a0 + a1			# LN: 278 | 
	i0 = i7 - (0x5)			# LN: 278 | 
label_end_94:			# LN: 278 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 278 | 
cline_278_1:			/* LN: 277 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 279 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 278 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 277 | 
	a0 = xmem[i0]			# LN: 277 | 
	uhalfword(a1) = (0x1)			# LN: 277 | 
	a0 = a0 + a1			# LN: 277 | 
	i0 = i7 - (0x4)			# LN: 277 | 
label_end_95:			# LN: 277 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 277 | 
cline_277_1:			/* LN: 283 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 277 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 283 | 
	i0 = xmem[i0]			# LN: 283 | 
	i1 = i7 - (261 - 0)			# LN: 283 | 
	i4 = xmem[i0]			# LN: 283 | 
	i0 = i1			# LN: 283 | 
	i1 = i4			# LN: 283 | 
	call (_strcpy)			# LN: 283 | 
cline_283_0:			/* LN: 284 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (261 - 0)			# LN: 284 | 
	call (_cl_wavread_open)			# LN: 284 | 
	AnyReg(i0, a0h)			# LN: 284 | 
	i1 = i7 - (0x106)			# LN: 284 | 
	xmem[i1] = i0			# LN: 284 | 
cline_284_0:			/* LN: 285 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x106)			# LN: 285 | 
	a0 = xmem[i0]			# LN: 285 | 
	a0 & a0			# LN: 285 | 
	if (a != 0) jmp (else_11)			# LN: 285 | 
cline_285_0:			/* LN: 287 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_0)			# LN: 287 | 
	call (_printf)			# LN: 287 | 
cline_287_0:			/* LN: 288 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 288 | 
	jmp (__epilogue_228)			# LN: 288 | 
cline_288_0:			/* LN: 294 | CYCLE: 0 | RULES: () */ 
endif_11:			/* LN: 285 | CYCLE: 0 | RULES: () */ 
else_11:			/* LN: 285 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x106)			# LN: 294 | 
	i0 = xmem[i0]			# LN: 294 | 
	call (_cl_wavread_getnchannels)			# LN: 294 | 
	i0 = i7 - (0x107)			# LN: 294 | 
	xmem[i0] = a0h			# LN: 294 | 
cline_294_0:			/* LN: 295 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x106)			# LN: 295 | 
	i0 = xmem[i0]			# LN: 295 | 
	call (_cl_wavread_bits_per_sample)			# LN: 295 | 
	i0 = i7 - (0x108)			# LN: 295 | 
	xmem[i0] = a0h			# LN: 295 | 
cline_295_0:			/* LN: 296 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x106)			# LN: 296 | 
	i0 = xmem[i0]			# LN: 296 | 
	call (_cl_wavread_frame_rate)			# LN: 296 | 
	i0 = i7 - (0x109)			# LN: 296 | 
	xmem[i0] = a0h			# LN: 296 | 
cline_296_0:			/* LN: 297 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x106)			# LN: 297 | 
	i0 = xmem[i0]			# LN: 297 | 
	call (_cl_wavread_number_of_frames)			# LN: 297 | 
	i0 = i7 - (0x10a)			# LN: 297 | 
	xmem[i0] = a0h			# LN: 297 | 
cline_297_0:			/* LN: 302 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 302 | 
	i0 = xmem[i0]			# LN: 302 | 
	i1 = i7 - (522 - 0)			# LN: 302 | 
	i0 += 1			# LN: 302 | 
	i4 = xmem[i0]			# LN: 302 | 
	i0 = i1			# LN: 302 | 
	i1 = i4			# LN: 302 | 
	call (_strcpy)			# LN: 302 | 
cline_302_0:			/* LN: 303 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (522 - 0)			# LN: 303 | 
	i1 = i7 - (0x108)			# LN: 303 | 
	a0 = xmem[i1]			# LN: 303 | 
	i1 = i7 - (0x3)			# LN: 303 | 
	a1 = xmem[i1]			# LN: 303 | 
	i1 = i7 - (0x109)			# LN: 303 | 
	b0 = xmem[i1]			# LN: 303 | 
	call (_cl_wavwrite_open)			# LN: 303 | 
	AnyReg(i0, a0h)			# LN: 303 | 
	i1 = i7 - (0x20b)			# LN: 303 | 
	xmem[i1] = i0			# LN: 303 | 
cline_303_0:			/* LN: 304 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 304 | 
	a0 = xmem[i0]			# LN: 304 | 
	a0 & a0			# LN: 304 | 
	if (a != 0) jmp (else_12)			# LN: 304 | 
cline_304_0:			/* LN: 306 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_1)			# LN: 306 | 
	call (_printf)			# LN: 306 | 
cline_306_0:			/* LN: 307 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 307 | 
	jmp (__epilogue_228)			# LN: 307 | 
cline_307_0:			/* LN: 310 | CYCLE: 0 | RULES: () */ 
endif_12:			/* LN: 304 | CYCLE: 0 | RULES: () */ 
else_12:			/* LN: 304 | CYCLE: 0 | RULES: () */ 
	call (_tremolo_init)			# LN: 310 | 
cline_310_0:			/* LN: 321 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 321 | 
	a0 = 0			# LN: 321 | 
	xmem[i0] = a0h			# LN: 321 | 
for_4:			/* LN: 321 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x10a)			# LN: 321 | 
	a0 = xmem[i0]			# LN: 321 | 
	uhalfword(a1) = (0x10)			# LN: 321 | 
	call (__div)			# LN: 321 | 
	i0 = i7 - (0x20c)			# LN: 321 | 
	a1 = xmem[i0]			# LN: 321 | 
	a1 - a0			# LN: 321 | 
	if (a >= 0) jmp (for_end_4)			# LN: 321 | 
cline_321_0:			/* LN: 323 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 323 | 
	a0 = 0			# LN: 323 | 
	xmem[i0] = a0h			# LN: 323 | 
	do (0x10), label_end_96			# LN: 323 | 
cline_323_0:			/* LN: 325 | CYCLE: 0 | RULES: () */ 
label_begin_96:			/* LN: 323 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 325 | 
	a0 = 0			# LN: 325 | 
	xmem[i0] = a0h			# LN: 325 | 
for_6:			/* LN: 325 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 325 | 
	a0 = xmem[i0]			# LN: 325 | 
	i0 = i7 - (0x107)			# LN: 325 | 
	a1 = xmem[i0]			# LN: 325 | 
	a0 - a1			# LN: 325 | 
	if (a >= 0) jmp (for_end_6)			# LN: 325 | 
cline_325_0:			/* LN: 327 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x106)			# LN: 327 | 
	i0 = xmem[i0]			# LN: 327 | 
	call (_cl_wavread_recvsample)			# LN: 327 | 
	i0 = i7 - (0x20f)			# LN: 327 | 
	xmem[i0] = a0h			# LN: 327 | 
cline_327_0:			/* LN: 328 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 328 | 
	a0 = xmem[i0]			# LN: 328 | 
	a0 = a0 << 4			# LN: 328 | 
	i0 = a0			# LN: 328 | 
	i1 = i7 - (0x20d)			# LN: 328 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 328 | 
	a0 = xmem[i1]			# LN: 328 | 
	a1 = i0			# LN: 328 | 
	a0 = a1 + a0			# LN: 328 | 
	AnyReg(i0, a0h)			# LN: 328 | 
	i1 = i7 - (0x20f)			# LN: 328 | 
	a0 = xmem[i1]			# LN: 328 | 
	ymem[i0] = a0h			# LN: 328 | 
cline_328_0:			/* LN: 325 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 329 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 325 | 
	a0 = xmem[i0]			# LN: 325 | 
	uhalfword(a1) = (0x1)			# LN: 325 | 
	a0 = a0 + a1			# LN: 325 | 
	i0 = i7 - (0x20e)			# LN: 325 | 
	xmem[i0] = a0h			# LN: 325 | 
	jmp (for_6)			# LN: 325 | 
cline_325_1:			/* LN: 323 | CYCLE: 0 | RULES: () */ 
init_latch_label_5:			/* LN: 330 | CYCLE: 0 | RULES: () */ 
for_end_6:			/* LN: 325 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 323 | 
	a0 = xmem[i0]			# LN: 323 | 
	uhalfword(a1) = (0x1)			# LN: 323 | 
	a0 = a0 + a1			# LN: 323 | 
	i0 = i7 - (0x20d)			# LN: 323 | 
label_end_96:			# LN: 323 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 323 | 
cline_323_1:			/* LN: 332 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 323 | CYCLE: 0 | RULES: () */ 
	call (_processing_foo)			# LN: 332 | 
cline_332_0:			/* LN: 334 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 334 | 
	a0 = 0			# LN: 334 | 
	xmem[i0] = a0h			# LN: 334 | 
	do (0x10), label_end_97			# LN: 334 | 
cline_334_0:			/* LN: 336 | CYCLE: 0 | RULES: () */ 
label_begin_97:			/* LN: 334 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 336 | 
	a0 = 0			# LN: 336 | 
	xmem[i0] = a0h			# LN: 336 | 
for_8:			/* LN: 336 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 336 | 
	a0 = xmem[i0]			# LN: 336 | 
	i0 = i7 - (0x3)			# LN: 336 | 
	a1 = xmem[i0]			# LN: 336 | 
	a0 - a1			# LN: 336 | 
	if (a >= 0) jmp (for_end_8)			# LN: 336 | 
cline_336_0:			/* LN: 338 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 338 | 
	a0 = xmem[i0]			# LN: 338 | 
	a0 = a0 << 4			# LN: 338 | 
	i0 = a0			# LN: 338 | 
	i1 = i7 - (0x20d)			# LN: 338 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 338 | 
	a0 = xmem[i1]			# LN: 338 | 
	a1 = i0			# LN: 338 | 
	a0 = a1 + a0			# LN: 338 | 
	AnyReg(i0, a0h)			# LN: 338 | 
	i1 = i7 - (0x20f)			# LN: 338 | 
	a0 = ymem[i0]			# LN: 338 | 
	xmem[i1] = a0h			# LN: 338 | 
cline_338_0:			/* LN: 339 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 339 | 
	i1 = i7 - (0x20f)			# LN: 339 | 
	a0 = xmem[i1]			# LN: 339 | 
	i0 = xmem[i0]			# LN: 339 | 
	call (_cl_wavwrite_sendsample)			# LN: 339 | 
cline_339_0:			/* LN: 336 | CYCLE: 0 | RULES: () */ 
init_latch_label_6:			/* LN: 340 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 336 | 
	a0 = xmem[i0]			# LN: 336 | 
	uhalfword(a1) = (0x1)			# LN: 336 | 
	a0 = a0 + a1			# LN: 336 | 
	i0 = i7 - (0x20e)			# LN: 336 | 
	xmem[i0] = a0h			# LN: 336 | 
	jmp (for_8)			# LN: 336 | 
cline_336_1:			/* LN: 334 | CYCLE: 0 | RULES: () */ 
init_latch_label_7:			/* LN: 341 | CYCLE: 0 | RULES: () */ 
for_end_8:			/* LN: 336 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 334 | 
	a0 = xmem[i0]			# LN: 334 | 
	uhalfword(a1) = (0x1)			# LN: 334 | 
	a0 = a0 + a1			# LN: 334 | 
	i0 = i7 - (0x20d)			# LN: 334 | 
label_end_97:			# LN: 334 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 334 | 
cline_334_1:			/* LN: 321 | CYCLE: 0 | RULES: () */ 
init_latch_label_8:			/* LN: 342 | CYCLE: 0 | RULES: () */ 
for_end_7:			/* LN: 334 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 321 | 
	a0 = xmem[i0]			# LN: 321 | 
	uhalfword(a1) = (0x1)			# LN: 321 | 
	a0 = a0 + a1			# LN: 321 | 
	i0 = i7 - (0x20c)			# LN: 321 | 
	xmem[i0] = a0h			# LN: 321 | 
	jmp (for_4)			# LN: 321 | 
cline_321_1:			/* LN: 347 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 321 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x106)			# LN: 347 | 
	i0 = xmem[i0]			# LN: 347 | 
	call (_cl_wavread_close)			# LN: 347 | 
cline_347_0:			/* LN: 348 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 348 | 
	i0 = xmem[i0]			# LN: 348 | 
	call (_cl_wavwrite_close)			# LN: 348 | 
cline_348_0:			/* LN: 351 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 351 | 
	jmp (__epilogue_228)			# LN: 351 | 
cline_351_0:			/* LN: 352 | CYCLE: 0 | RULES: () */ 
__epilogue_228:			/* LN: 352 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x20f)			# LN: 352 | 
	i7 -= 1			# LN: 352 | 
	ret			# LN: 352 | 



_processing_foo:			/* LN: 218 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 218 | 
	i7 += 1			# LN: 218 | 
	i7 = i7 + (0x6)			# LN: 218 | 
cline_218_0:			/* LN: 220 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 220 | 
	uhalfword(a0) = (_sampleBuffer + 0)			# LN: 220 | 
	xmem[i0] = a0			# LN: 220 | 
cline_220_0:			/* LN: 221 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 221 | 
	uhalfword(a0) = (_sampleBuffer + 16)			# LN: 221 | 
	xmem[i0] = a0			# LN: 221 | 
cline_221_0:			/* LN: 225 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 225 | 
	a0 = 0			# LN: 225 | 
	xmem[i0] = a0h			# LN: 225 | 
	do (0x10), label_end_93			# LN: 225 | 
cline_225_0:			/* LN: 227 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 225 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 227 | 
	i0 = xmem[i0]			# LN: 227 | 
	x0 = xmem[_inputGain + 0]			# LN: 227 | 
	x1 = ymem[i0]			# LN: 227 | 
	a0 = x1 * x0			# LN: 227 | 
	i0 = i7 - (0x6)			# LN: 227 | 
	xmem[i0] = a0g; i0 += 1			# LN: 227, 227 | 
	xmem[i0] = a0h; i0 += 1			# LN: 227, 227 | 
	xmem[i0] = a0l			# LN: 227 | 
cline_227_0:			/* LN: 228 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 228 | 
	a0g = xmem[i0]; i0 += 1			# LN: 228, 228 | 
	a0h = xmem[i0]; i0 += 1			# LN: 228, 228 | 
	i1 = i7 - (0x1)			# LN: 228 | 
	i1 = xmem[i1]			# LN: 228 | 
	a0l = xmem[i0]			# LN: 228 | 
	ymem[i1] = a0			# LN: 228 | 
cline_228_0:			/* LN: 230 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 230 | 
	i0 = xmem[i0]			# LN: 230 | 
	x0 = xmem[_inputGain + 0]			# LN: 230 | 
	x1 = ymem[i0]			# LN: 230 | 
	a0 = x1 * x0			# LN: 230 | 
	i0 = i7 - (0x6)			# LN: 230 | 
	xmem[i0] = a0g; i0 += 1			# LN: 230, 230 | 
	xmem[i0] = a0h; i0 += 1			# LN: 230, 230 | 
	xmem[i0] = a0l			# LN: 230 | 
cline_230_0:			/* LN: 231 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 231 | 
	a0g = xmem[i0]; i0 += 1			# LN: 231, 231 | 
	a0h = xmem[i0]; i0 += 1			# LN: 231, 231 | 
	i1 = i7 - (0x2)			# LN: 231 | 
	i1 = xmem[i1]			# LN: 231 | 
	a0l = xmem[i0]			# LN: 231 | 
	ymem[i1] = a0			# LN: 231 | 
cline_231_0:			/* LN: 233 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 233 | 
	i0 = xmem[i0]			# LN: 233 | 
	i1 = i7 - (0x1)			# LN: 233 | 
	i0 += 1			# LN: 233 | 
	xmem[i1] = i0			# LN: 233 | 
cline_233_0:			/* LN: 234 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 234 | 
	i0 = xmem[i0]			# LN: 234 | 
	i1 = i7 - (0x2)			# LN: 234 | 
	i0 += 1			# LN: 234 | 
	xmem[i1] = i0			# LN: 234 | 
cline_234_0:			/* LN: 225 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 235 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 225 | 
	a0 = xmem[i0]			# LN: 225 | 
	uhalfword(a1) = (0x1)			# LN: 225 | 
	a0 = a0 + a1			# LN: 225 | 
	i0 = i7 - (0x3)			# LN: 225 | 
label_end_93:			# LN: 225 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 225 | 
cline_225_1:			/* LN: 238 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 225 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_outputChannelNum + 0]			# LN: 238 | 
	uhalfword(a1) = (0x4)			# LN: 238 | 
	a0 - a1			# LN: 238 | 
	if (a != 0) jmp (else_10)			# LN: 238 | 
cline_238_0:			/* LN: 240 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer)			# LN: 240 | 
	i1 = (0) + (_sampleBuffer + 32)			# LN: 240 | 
	call (_tremolo_procces)			# LN: 240 | 
cline_240_0:			/* LN: 241 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 16)			# LN: 241 | 
	i1 = (0) + (_sampleBuffer + 48)			# LN: 241 | 
	call (_tremolo_procces)			# LN: 241 | 
	jmp (endif_10)			# LN: 241 | 
cline_241_0:			/* LN: 243 | CYCLE: 0 | RULES: () */ 
endif_10:			/* LN: 238 | CYCLE: 0 | RULES: () */ 
else_10:			/* LN: 238 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_226)			# LN: 243 | 
__epilogue_226:			/* LN: 243 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x6)			# LN: 243 | 
	i7 -= 1			# LN: 243 | 
	ret			# LN: 243 | 



_tremolo_init:			/* LN: 68 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 68 | 
	i7 += 1			# LN: 68 | 
cline_68_0:			/* LN: 71 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_3_1 + 0]			# LN: 71 | 
	xmem[_inputGain + 0] = a0h			# LN: 71 | 
cline_71_0:			/* LN: 72 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x4)			# LN: 72 | 
	xmem[_outputChannelNum + 0] = a0h			# LN: 72 | 
cline_72_0:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_8 + 0]			# LN: 73 | 
	xmem[_tremolo_data + 1] = a0h			# LN: 73 | 
cline_73_0:			/* LN: 74 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_8 + 0]			# LN: 74 | 
	xmem[_tremolo_data + 2] = a0h			# LN: 74 | 
cline_74_0:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x3)			# LN: 75 | 
	xmem[_tremolo_data + 3] = a0h			# LN: 75 | 
cline_75_0:			/* LN: 76 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 76 | 
	xmem[_tremolo_data + 4] = a0h			# LN: 76 | 
cline_76_0:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0xaec3)			# LN: 77 | 
	a0l = (0x3e1f)			# LN: 77 | 
	lo16(a0l) = (0x6715)			# LN: 77 | 
	xmem[_tremolo_data + 5] = a0g			# LN: 77 | 
	xmem[_tremolo_data + 6] = a0h			# LN: 77 | 
	xmem[_tremolo_data + 7] = a0l			# LN: 77 | 
cline_77_0:			/* LN: 78 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_220)			# LN: 78 | 
__epilogue_220:			/* LN: 78 | CYCLE: 0 | RULES: () */ 
	i7 -= 1			# LN: 78 | 
	ret			# LN: 78 | 



_tremolo_procces:			/* LN: 98 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 98 | 
	i7 += 1			# LN: 98 | 
	i7 = i7 + (0xf)			# LN: 98 | 
	i4 = i7 - (0x1)			# LN: 98 | 
	xmem[i4] = i0			# LN: 98 | 
	i0 = i7 - (0x2)			# LN: 98 | 
	xmem[i0] = i1			# LN: 98 | 
cline_98_0:			/* LN: 109 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 109 | 
	a0 = xmem[i0]			# LN: 109 | 
	i0 = i7 - (0x3)			# LN: 109 | 
	xmem[i0] = a0			# LN: 109 | 
cline_109_0:			/* LN: 110 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 110 | 
	a0 = xmem[i0]			# LN: 110 | 
	i0 = i7 - (0x4)			# LN: 110 | 
	xmem[i0] = a0			# LN: 110 | 
cline_110_0:			/* LN: 111 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 111 | 
	a0 = 0			# LN: 111 | 
	xmem[i0] = a0h			# LN: 111 | 
cline_111_0:			/* LN: 120 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_tremolo_data + 4]			# LN: 120 | 
	i0 = i7 - (0x8)			# LN: 120 | 
	xmem[i0] = a0g; i0 += 1			# LN: 120, 120 | 
	xmem[i0] = a0h; i0 += 1			# LN: 120, 120 | 
	xmem[i0] = a0l			# LN: 120 | 
cline_120_0:			/* LN: 122 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 122 | 
	a0 = 0			# LN: 122 | 
	xmem[i0] = a0h			# LN: 122 | 
	do (0x10), label_end_92			# LN: 122 | 
cline_122_0:			/* LN: 125 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 122 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 125 | 
	a0g = xmem[i0]; i0 += 1			# LN: 125, 125 | 
	a0h = xmem[i0]; i0 += 1			# LN: 125, 125 | 
	a0l = xmem[i0]			# LN: 125 | 
	call (_lfo)			# LN: 125 | 
	i0 = i7 - (0x5)			# LN: 125 | 
	xmem[i0] = a0h			# LN: 125 | 
cline_125_0:			/* LN: 126 | CYCLE: 0 | RULES: () */ 
	x0 = xmem[_tremolo_data + 2]			# LN: 126 | 
	i0 = i7 - (0x5)			# LN: 126 | 
	x1 = xmem[i0]			# LN: 126 | 
	a0 = x0 * x1			# LN: 126 | 
	i0 = i7 - (0xc)			# LN: 126 | 
	xmem[i0] = a0g; i0 += 1			# LN: 126, 126 | 
	xmem[i0] = a0h; i0 += 1			# LN: 126, 126 | 
	xmem[i0] = a0l			# LN: 126 | 
cline_126_0:			/* LN: 127 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 127 | 
	i0 = xmem[i0]			# LN: 127 | 
	a0 = xmem[__extractedConst_0_8 + 0]			# LN: 127 | 
	i1 = i7 - (0xc)			# LN: 127 | 
	a1g = xmem[i1]; i1 += 1			# LN: 127, 127 | 
	a1h = xmem[i1]; i1 += 1			# LN: 127, 127 | 
	a1l = xmem[i1]			# LN: 127 | 
	x0 = ymem[i0]; a1 = a0 - a1			# LN: 127, 127 | 
	a0 = +x0			# LN: 127 | 
	call (__mul_sat_laccum)			# LN: 127 | 
	i0 = i7 - (0x4)			# LN: 127 | 
	i0 = xmem[i0]			# LN: 127 | 
	nop #empty cycle
	ymem[i0] = a0			# LN: 127 | 
cline_127_0:			/* LN: 134 | CYCLE: 0 | RULES: () */ 
	a0g = xmem[_tremolo_data + 5]			# LN: 134 | 
	a0h = xmem[_tremolo_data + 6]			# LN: 134 | 
	a0l = xmem[_tremolo_data + 7]			# LN: 134 | 
	i0 = i7 - (0xf)			# LN: 134 | 
	xmem[i0] = a0g; i0 += 1			# LN: 134, 134 | 
	xmem[i0] = a0h; i0 += 1			# LN: 134, 134 | 
	xmem[i0] = a0l			# LN: 134 | 
cline_134_0:			/* LN: 135 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 135 | 
	a0g = xmem[i0]; i0 += 1			# LN: 135, 135 | 
	a0h = xmem[i0]; i0 += 1			# LN: 135, 135 | 
	a0l = xmem[i0]			# LN: 135 | 
	i0 = i7 - (0xf)			# LN: 135 | 
	a1g = xmem[i0]; i0 += 1			# LN: 135, 135 | 
	a1h = xmem[i0]; i0 += 1			# LN: 135, 135 | 
	a1l = xmem[i0]			# LN: 135 | 
	a0 = a0 + a1			# LN: 135 | 
	i0 = i7 - (0x8)			# LN: 135 | 
	xmem[i0] = a0g; i0 += 1			# LN: 135, 135 | 
	xmem[i0] = a0h; i0 += 1			# LN: 135, 135 | 
	xmem[i0] = a0l			# LN: 135 | 
cline_135_0:			/* LN: 137 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 137 | 
	a0g = xmem[i0]; i0 += 1			# LN: 137, 137 | 
	a0h = xmem[i0]; i0 += 1			# LN: 137, 137 | 
	a0l = xmem[i0]			# LN: 137 | 
	b0 =+ a0			# LN: 137 | 
	b0 = b0 >> 1			# LN: 137 | 
	a0 = xmem[__extractedConst_0_8 + 0]			# LN: 137 | 
	a0 = a0 >> 1			# LN: 137 | 
	b0 - a0			# LN: 137 | 
	if (b < 0) jmp (else_0)			# LN: 137 | 
cline_137_0:			/* LN: 138 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 138 | 
	a0g = xmem[i0]; i0 += 1			# LN: 138, 138 | 
	a0h = xmem[i0]; i0 += 1			# LN: 138, 138 | 
	a0l = xmem[i0]			# LN: 138 | 
	a1 = xmem[__extractedConst_0_8 + 0]			# LN: 138 | 
	a0 = a0 - a1			# LN: 138 | 
	i0 = i7 - (0x8)			# LN: 138 | 
	xmem[i0] = a0g; i0 += 1			# LN: 138, 138 | 
	xmem[i0] = a0h; i0 += 1			# LN: 138, 138 | 
	xmem[i0] = a0l			# LN: 138 | 
	jmp (endif_0)			# LN: 138 | 
cline_138_0:			/* LN: 140 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 137 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 137 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 140 | 
	i0 = xmem[i0]			# LN: 140 | 
	i1 = i7 - (0x3)			# LN: 140 | 
	i0 += 1			# LN: 140 | 
	xmem[i1] = i0			# LN: 140 | 
cline_140_0:			/* LN: 141 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 141 | 
	i0 = xmem[i0]			# LN: 141 | 
	i1 = i7 - (0x4)			# LN: 141 | 
	i0 += 1			# LN: 141 | 
	xmem[i1] = i0			# LN: 141 | 
cline_141_0:			/* LN: 122 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 122 | 
	a0 = xmem[i0]			# LN: 122 | 
	uhalfword(a1) = (0x1)			# LN: 122 | 
	a0 = a0 + a1			# LN: 122 | 
	i0 = i7 - (0x9)			# LN: 122 | 
label_end_92:			# LN: 122 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 122 | 
cline_122_1:			/* LN: 145 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 122 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 145 | 
	a0g = xmem[i0]; i0 += 1			# LN: 145, 145 | 
	a0h = xmem[i0]; i0 += 1			# LN: 145, 145 | 
	a0l = xmem[i0]			# LN: 145 | 
	xmem[_tremolo_data + 4] = a0			# LN: 145 | 
cline_145_0:			/* LN: 146 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_222)			# LN: 146 | 
__epilogue_222:			/* LN: 146 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0xf)			# LN: 146 | 
	i7 -= 1			# LN: 146 | 
	ret			# LN: 146 | 
