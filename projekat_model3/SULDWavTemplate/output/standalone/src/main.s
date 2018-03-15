	.public _inputGain
	.public _outputChannelNum
	.public _p_sine_table
	.public _p_squareSlopedEdges_table
	.public _p_square_table
	.public _p_triangle_table
	.public _sampleBuffer
	.public _sine_table
	.public _squareSlopedEdges_table
	.public _square_table
	.public _tremolo_data
	.public _triangle_table
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
__extractedConst_0_6
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
	.xdata_ovly
_p_sine_table
	.dw _sine_table
	.xdata_ovly
_p_squareSlopedEdges_table
	.dw _squareSlopedEdges_table
	.xdata_ovly
_p_square_table
	.dw _square_table
	.xdata_ovly
_p_triangle_table
	.dw _triangle_table
	.ydata_ovly
_sampleBuffer
	.bss (0x80)
	.xdata_ovly
_sine_table
	.dw  (0x40000000)
	.dw  (0x40c91080)
	.dw  (0x4192189c)
	.dw  (0x425b0ff1)
	.dw  (0x4323ee1c)
	.dw  (0x43ecaab9)
	.dw  (0x44b545c8)
	.dw  (0x457db6e5)
	.dw  (0x4645ed4a)
	.dw  (0x470de093)
	.dw  (0x47d590c1)
	.dw  (0x489cf56f)
	.dw  (0x4964063a)
	.dw  (0x4a2ababf)
	.dw  (0x4af10a9a)
	.dw  (0x4bb6ed67)
	.dw  (0x4c7c5ac4)
	.dw  (0x4d4152b1)
	.dw  (0x4e05c465)
	.dw  (0x4ec9a77e)
	.dw  (0x4f8cfbfc)
	.dw  (0x504fb97c)
	.dw  (0x5111cf35)
	.dw  (0x51d3458d)
	.dw  (0x52940358)
	.dw  (0x535410f9)
	.dw  (0x54135dab)
	.dw  (0x54d1e109)
	.dw  (0x558f9b13)
	.dw  (0x564c7b03)
	.dw  (0x5708893b)
	.dw  (0x57c3ac93)
	.dw  (0x587de508)
	.dw  (0x59372a39)
	.dw  (0x59ef7c24)
	.dw  (0x5aa6ca04)
	.dw  (0x5b5d13d7)
	.dw  (0x5c1248d8)
	.dw  (0x5cc67169)
	.dw  (0x5d797460)
	.dw  (0x5e2b5a21)
	.dw  (0x5edc1a48)
	.dw  (0x5f8ba40e)
	.dw  (0x6039f773)
	.dw  (0x60e70c13)
	.dw  (0x6192e1ef)
	.dw  (0x623d6840)
	.dw  (0x62e696a2)
	.dw  (0x638e7579)
	.dw  (0x6434f3fe)
	.dw  (0x64da09cc)
	.dw  (0x657db6e5)
	.dw  (0x661ff2e5)
	.dw  (0x66c0b567)
	.dw  (0x675ff60a)
	.dw  (0x67fdb4cc)
	.dw  (0x6899e94b)
	.dw  (0x69348b22)
	.dw  (0x69cd91ef)
	.dw  (0x6a650614)
	.dw  (0x6aface68)
	.dw  (0x6b8efbb1)
	.dw  (0x6c216c61)
	.dw  (0x6cb23140)
	.dw  (0x6d413986)
	.dw  (0x6dce8534)
	.dw  (0x6e5a1449)
	.dw  (0x6ee3cd9a)
	.dw  (0x6f6bc1f0)
	.dw  (0x6ff1d81f)
	.dw  (0x7076188b)
	.dw  (0x70f88334)
	.dw  (0x7178feef)
	.dw  (0x71f79c84)
	.dw  (0x727442c8)
	.dw  (0x72eefa1e)
	.dw  (0x7367c287)
	.dw  (0x73de8b3b)
	.dw  (0x74534bd7)
	.dw  (0x74c61523)
	.dw  (0x7536cdf2)
	.dw  (0x75a57647)
	.dw  (0x76121683)
	.dw  (0x767c9de0)
	.dw  (0x76e503fb)
	.dw  (0x774b5137)
	.dw  (0x77af7d31)
	.dw  (0x781187e8)
	.dw  (0x787168f9)
	.dw  (0x78cf1801)
	.dw  (0x792a94ff)
	.dw  (0x7983dff4)
	.dw  (0x79daf8df)
	.dw  (0x7a2fcefb)
	.dw  (0x7a826aa9)
	.dw  (0x7ad2c387)
	.dw  (0x7b20d994)
	.dw  (0x7b6ca46e)
	.dw  (0x7bb62414)
	.dw  (0x7bfd60e9)
	.dw  (0x7c4241c4)
	.dw  (0x7c84d76b)
	.dw  (0x7cc51117)
	.dw  (0x7d02f72b)
	.dw  (0x7d3e8145)
	.dw  (0x7d77af64)
	.dw  (0x7dae8188)
	.dw  (0x7de2ef4e)
	.dw  (0x7e150119)
	.dw  (0x7e44a622)
	.dw  (0x7e71e6cd)
	.dw  (0x7e9cc31a)
	.dw  (0x7ec532a5)
	.dw  (0x7eeb356e)
	.dw  (0x7f0ecb75)
	.dw  (0x7f2ff4ba)
	.dw  (0x7f4ea8da)
	.dw  (0x7f6af039)
	.dw  (0x7f84cad5)
	.dw  (0x7f9c27e9)
	.dw  (0x7fb1183b)
	.dw  (0x7fc39368)
	.dw  (0x7fd39970)
	.dw  (0x7fe12a52)
	.dw  (0x7fec460f)
	.dw  (0x7ff4e443)
	.dw  (0x7ffb0d52)
	.dw  (0x7ffec13c)
	.dw  (0x7fffffff)
	.dw  (0x7ffec13c)
	.dw  (0x7ffb0d52)
	.dw  (0x7ff4e443)
	.dw  (0x7fec460f)
	.dw  (0x7fe12a52)
	.dw  (0x7fd39970)
	.dw  (0x7fc39368)
	.dw  (0x7fb1183b)
	.dw  (0x7f9c27e9)
	.dw  (0x7f84cad5)
	.dw  (0x7f6af039)
	.dw  (0x7f4ea8da)
	.dw  (0x7f2ff4ba)
	.dw  (0x7f0ecb75)
	.dw  (0x7eeb356e)
	.dw  (0x7ec532a5)
	.dw  (0x7e9cc31a)
	.dw  (0x7e71e6cd)
	.dw  (0x7e44a622)
	.dw  (0x7e150119)
	.dw  (0x7de2ef4e)
	.dw  (0x7dae8188)
	.dw  (0x7d77af64)
	.dw  (0x7d3e8145)
	.dw  (0x7d02f72b)
	.dw  (0x7cc51117)
	.dw  (0x7c84d76b)
	.dw  (0x7c4241c4)
	.dw  (0x7bfd60e9)
	.dw  (0x7bb62414)
	.dw  (0x7b6ca46e)
	.dw  (0x7b20d994)
	.dw  (0x7ad2c387)
	.dw  (0x7a826aa9)
	.dw  (0x7a2fcefb)
	.dw  (0x79daf8df)
	.dw  (0x7983dff4)
	.dw  (0x792a94ff)
	.dw  (0x78cf1801)
	.dw  (0x787168f9)
	.dw  (0x781187e8)
	.dw  (0x77af8594)
	.dw  (0x774b5137)
	.dw  (0x76e503fb)
	.dw  (0x767c9de0)
	.dw  (0x76121683)
	.dw  (0x75a57647)
	.dw  (0x7536cdf2)
	.dw  (0x74c61523)
	.dw  (0x74534bd7)
	.dw  (0x73de8b3b)
	.dw  (0x7367c287)
	.dw  (0x72eefa1e)
	.dw  (0x727442c8)
	.dw  (0x71f79c84)
	.dw  (0x7178feef)
	.dw  (0x70f88334)
	.dw  (0x7076188b)
	.dw  (0x6ff1d81f)
	.dw  (0x6f6bc1f0)
	.dw  (0x6ee3cd9a)
	.dw  (0x6e5a1449)
	.dw  (0x6dce8534)
	.dw  (0x6d413986)
	.dw  (0x6cb23140)
	.dw  (0x6c216c61)
	.dw  (0x6b8ef34d)
	.dw  (0x6afad6cb)
	.dw  (0x6a650614)
	.dw  (0x69cd91ef)
	.dw  (0x69348b22)
	.dw  (0x6899e94b)
	.dw  (0x67fdb4cc)
	.dw  (0x675ff60a)
	.dw  (0x66c0b567)
	.dw  (0x661ff2e5)
	.dw  (0x657db6e5)
	.dw  (0x64da09cc)
	.dw  (0x6434f3fe)
	.dw  (0x638e7579)
	.dw  (0x62e69f06)
	.dw  (0x623d6840)
	.dw  (0x6192e1ef)
	.dw  (0x60e70c13)
	.dw  (0x6039f773)
	.dw  (0x5f8ba40e)
	.dw  (0x5edc1a48)
	.dw  (0x5e2b5a21)
	.dw  (0x5d797460)
	.dw  (0x5cc67169)
	.dw  (0x5c1248d8)
	.dw  (0x5b5d13d7)
	.dw  (0x5aa6ca04)
	.dw  (0x59ef7c24)
	.dw  (0x59372a39)
	.dw  (0x587de508)
	.dw  (0x57c3ac93)
	.dw  (0x5708893b)
	.dw  (0x564c7b03)
	.dw  (0x558f9b13)
	.dw  (0x54d1e109)
	.dw  (0x54135dab)
	.dw  (0x535410f9)
	.dw  (0x52940358)
	.dw  (0x51d3458d)
	.dw  (0x5111cf35)
	.dw  (0x504fb97c)
	.dw  (0x4f8cfbfc)
	.dw  (0x4ec9a77e)
	.dw  (0x4e05c465)
	.dw  (0x4d4152b1)
	.dw  (0x4c7c5ac4)
	.dw  (0x4bb6ed67)
	.dw  (0x4af10a9a)
	.dw  (0x4a2ababf)
	.dw  (0x4964063a)
	.dw  (0x489cf56f)
	.dw  (0x47d590c1)
	.dw  (0x470de093)
	.dw  (0x4645ed4a)
	.dw  (0x457db6e5)
	.dw  (0x44b545c8)
	.dw  (0x43ecaab9)
	.dw  (0x4323ee1c)
	.dw  (0x425b0ff1)
	.dw  (0x4192189c)
	.dw  (0x40c91080)
	.dw  (0x40000000)
	.dw  (0x3f36ef80)
	.dw  (0x3e6de764)
	.dw  (0x3da4f00f)
	.dw  (0x3cdc11e4)
	.dw  (0x3c135547)
	.dw  (0x3b4aba38)
	.dw  (0x3a82491b)
	.dw  (0x39ba12b6)
	.dw  (0x38f21f6d)
	.dw  (0x382a6f3f)
	.dw  (0x37630a91)
	.dw  (0x369bf9c6)
	.dw  (0x35d54541)
	.dw  (0x350ef566)
	.dw  (0x34491299)
	.dw  (0x3383a53c)
	.dw  (0x32bead4f)
	.dw  (0x31fa3b9b)
	.dw  (0x31365882)
	.dw  (0x30730404)
	.dw  (0x2fb04684)
	.dw  (0x2eee30cb)
	.dw  (0x2e2cba73)
	.dw  (0x2d6bfca8)
	.dw  (0x2cabef07)
	.dw  (0x2beca255)
	.dw  (0x2b2e1ef7)
	.dw  (0x2a7064ed)
	.dw  (0x29b384fd)
	.dw  (0x28f77f28)
	.dw  (0x283c536d)
	.dw  (0x27821af8)
	.dw  (0x26c8d5c7)
	.dw  (0x261083dc)
	.dw  (0x255935fc)
	.dw  (0x24a2ec29)
	.dw  (0x23edb728)
	.dw  (0x23398e97)
	.dw  (0x22868ba0)
	.dw  (0x21d4a5df)
	.dw  (0x2123e5b8)
	.dw  (0x20745bf2)
	.dw  (0x1fc6088d)
	.dw  (0x1f18f3ed)
	.dw  (0x1e6d1e11)
	.dw  (0x1dc297c0)
	.dw  (0x1d1960fa)
	.dw  (0x1c718a87)
	.dw  (0x1bcb0c02)
	.dw  (0x1b25f634)
	.dw  (0x1a82491b)
	.dw  (0x19e00d1b)
	.dw  (0x193f4a99)
	.dw  (0x18a009f6)
	.dw  (0x18024b34)
	.dw  (0x176616b5)
	.dw  (0x16cb74de)
	.dw  (0x16326e11)
	.dw  (0x159af9ec)
	.dw  (0x15053198)
	.dw  (0x1471044f)
	.dw  (0x13de939f)
	.dw  (0x134dcec0)
	.dw  (0x12bec67a)
	.dw  (0x12317acc)
	.dw  (0x11a5ebb7)
	.dw  (0x111c3266)
	.dw  (0x10943e10)
	.dw  (0x100e27e1)
	.dw  (0xf89e775)
	.dw  (0xf077ccc)
	.dw  (0xe870111)
	.dw  (0xe08637c)
	.dw  (0xd8bbd38)
	.dw  (0xd1105e2)
	.dw  (0xc983d79)
	.dw  (0xc2174c5)
	.dw  (0xbacb429)
	.dw  (0xb39eadd)
	.dw  (0xac9320e)
	.dw  (0xa5a89b9)
	.dw  (0x9ede97d)
	.dw  (0x9836220)
	.dw  (0x91afc05)
	.dw  (0x8b4aec9)
	.dw  (0x85082cf)
	.dw  (0x7ee7818)
	.dw  (0x78e9707)
	.dw  (0x730e7ff)
	.dw  (0x6d56b01)
	.dw  (0x67c200c)
	.dw  (0x6250721)
	.dw  (0x5d03105)
	.dw  (0x57d9557)
	.dw  (0x52d3c79)
	.dw  (0x4df266c)
	.dw  (0x4935b92)
	.dw  (0x449dbec)
	.dw  (0x4029f17)
	.dw  (0x3bdbe3c)
	.dw  (0x37b2895)
	.dw  (0x33aeee9)
	.dw  (0x2fd08d5)
	.dw  (0x2c17ebb)
	.dw  (0x288509c)
	.dw  (0x2517e78)
	.dw  (0x21d10b2)
	.dw  (0x1eafee7)
	.dw  (0x1bb59de)
	.dw  (0x18e1933)
	.dw  (0x1633ce6)
	.dw  (0x13acd5b)
	.dw  (0x114ca92)
	.dw  (0xf1348b)
	.dw  (0xd00b46)
	.dw  (0xb15726)
	.dw  (0x950fc7)
	.dw  (0x7b352b)
	.dw  (0x63d817)
	.dw  (0x4ee7c5)
	.dw  (0x3c6c98)
	.dw  (0x2c6690)
	.dw  (0x1ed5ae)
	.dw  (0x13b9f1)
	.dw  (0xb1bbd)
	.dw  (0x4f2ae)
	.dw  (0x13ec4)
	.dw  (0x863)
	.dw  (0x13ec4)
	.dw  (0x4f2ae)
	.dw  (0xb1bbd)
	.dw  (0x13b9f1)
	.dw  (0x1ed5ae)
	.dw  (0x2c6690)
	.dw  (0x3c6c98)
	.dw  (0x4ee7c5)
	.dw  (0x63d817)
	.dw  (0x7b352b)
	.dw  (0x950fc7)
	.dw  (0xb15726)
	.dw  (0xd00b46)
	.dw  (0xf1348b)
	.dw  (0x114ca92)
	.dw  (0x13acd5b)
	.dw  (0x1633ce6)
	.dw  (0x18e1933)
	.dw  (0x1bb59de)
	.dw  (0x1eafee7)
	.dw  (0x21d10b2)
	.dw  (0x2517e78)
	.dw  (0x288509c)
	.dw  (0x2c17ebb)
	.dw  (0x2fd08d5)
	.dw  (0x33aeee9)
	.dw  (0x37b2895)
	.dw  (0x3bdbe3c)
	.dw  (0x4029f17)
	.dw  (0x449dbec)
	.dw  (0x4935b92)
	.dw  (0x4df266c)
	.dw  (0x52d3c79)
	.dw  (0x57d9557)
	.dw  (0x5d03105)
	.dw  (0x6250721)
	.dw  (0x67c200c)
	.dw  (0x6d56b01)
	.dw  (0x730e7ff)
	.dw  (0x78e9707)
	.dw  (0x7ee7818)
	.dw  (0x85082cf)
	.dw  (0x8b4aec9)
	.dw  (0x91afc05)
	.dw  (0x9836220)
	.dw  (0x9ede97d)
	.dw  (0xa5a89b9)
	.dw  (0xac9320e)
	.dw  (0xb39eadd)
	.dw  (0xbacb429)
	.dw  (0xc2174c5)
	.dw  (0xc983d79)
	.dw  (0xd1105e2)
	.dw  (0xd8bbd38)
	.dw  (0xe08637c)
	.dw  (0xe870111)
	.dw  (0xf077ccc)
	.dw  (0xf89e775)
	.dw  (0x100e27e1)
	.dw  (0x10943e10)
	.dw  (0x111c3266)
	.dw  (0x11a5ebb7)
	.dw  (0x12317acc)
	.dw  (0x12bec67a)
	.dw  (0x134dcec0)
	.dw  (0x13de939f)
	.dw  (0x1471044f)
	.dw  (0x15053198)
	.dw  (0x159af9ec)
	.dw  (0x16326e11)
	.dw  (0x16cb74de)
	.dw  (0x176616b5)
	.dw  (0x18024b34)
	.dw  (0x18a009f6)
	.dw  (0x193f52fc)
	.dw  (0x19e00d1b)
	.dw  (0x1a82491b)
	.dw  (0x1b25f634)
	.dw  (0x1bcb0c02)
	.dw  (0x1c718a87)
	.dw  (0x1d1960fa)
	.dw  (0x1dc297c0)
	.dw  (0x1e6d1e11)
	.dw  (0x1f18f3ed)
	.dw  (0x1fc6088d)
	.dw  (0x20745bf2)
	.dw  (0x2123e5b8)
	.dw  (0x21d4a5df)
	.dw  (0x22868ba0)
	.dw  (0x23398e97)
	.dw  (0x23edb728)
	.dw  (0x24a2ec29)
	.dw  (0x255935fc)
	.dw  (0x261083dc)
	.dw  (0x26c8d5c7)
	.dw  (0x27821af8)
	.dw  (0x283c536d)
	.dw  (0x28f77f28)
	.dw  (0x29b384fd)
	.dw  (0x2a7064ed)
	.dw  (0x2b2e1ef7)
	.dw  (0x2beca255)
	.dw  (0x2cabef07)
	.dw  (0x2d6bfca8)
	.dw  (0x2e2cba73)
	.dw  (0x2eee30cb)
	.dw  (0x2fb04684)
	.dw  (0x30730404)
	.dw  (0x31365882)
	.dw  (0x31fa3b9b)
	.dw  (0x32bead4f)
	.dw  (0x3383a53c)
	.dw  (0x34491299)
	.dw  (0x350ef566)
	.dw  (0x35d54541)
	.dw  (0x369bf9c6)
	.dw  (0x37630a91)
	.dw  (0x382a6f3f)
	.dw  (0x38f21f6d)
	.dw  (0x39ba12b6)
	.dw  (0x3a82491b)
	.dw  (0x3b4aba38)
	.dw  (0x3c135547)
	.dw  (0x3cdc11e4)
	.dw  (0x3da4f00f)
	.dw  (0x3e6de764)
	.dw  (0x3f36ef80)
	.xdata_ovly
_squareSlopedEdges_table
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7cfffbce)
	.dw  (0x707ffde7)
	.dw  (0x64000000)
	.dw  (0x57800219)
	.dw  (0x4afffbce)
	.dw  (0x3e7ffde7)
	.dw  (0x32000000)
	.dw  (0x25800219)
	.dw  (0x18fffbce)
	.dw  (0xc7ffde7)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x3000432)
	.dw  (0xf800219)
	.dw  (0x1c000000)
	.dw  (0x287ffde7)
	.dw  (0x35000432)
	.dw  (0x41800219)
	.dw  (0x4e000000)
	.dw  (0x5a7ffde7)
	.dw  (0x67000432)
	.dw  (0x73800219)
	.xdata_ovly
_square_table
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x7fffffff)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
	.dw  (0x863)
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
	.bss (0x9)
	.xdata_ovly
_triangle_table
	.dw  (0x40000000)
	.dw  (0x407ffde7)
	.dw  (0x41000432)
	.dw  (0x41800219)
	.dw  (0x42000000)
	.dw  (0x427ffde7)
	.dw  (0x43000432)
	.dw  (0x43800219)
	.dw  (0x44000000)
	.dw  (0x447ffde7)
	.dw  (0x45000432)
	.dw  (0x45800219)
	.dw  (0x46000000)
	.dw  (0x467ffde7)
	.dw  (0x47000432)
	.dw  (0x47800219)
	.dw  (0x48000000)
	.dw  (0x487ffde7)
	.dw  (0x49000432)
	.dw  (0x49800219)
	.dw  (0x4a000000)
	.dw  (0x4a7ffde7)
	.dw  (0x4b000432)
	.dw  (0x4b800219)
	.dw  (0x4c000000)
	.dw  (0x4c7ffde7)
	.dw  (0x4d000432)
	.dw  (0x4d800219)
	.dw  (0x4e000000)
	.dw  (0x4e7ffde7)
	.dw  (0x4f000432)
	.dw  (0x4f800219)
	.dw  (0x50000000)
	.dw  (0x507ffde7)
	.dw  (0x51000432)
	.dw  (0x51800219)
	.dw  (0x52000000)
	.dw  (0x527ffde7)
	.dw  (0x53000432)
	.dw  (0x53800219)
	.dw  (0x54000000)
	.dw  (0x547ffde7)
	.dw  (0x55000432)
	.dw  (0x55800219)
	.dw  (0x56000000)
	.dw  (0x567ffde7)
	.dw  (0x57000432)
	.dw  (0x57800219)
	.dw  (0x58000000)
	.dw  (0x587ffde7)
	.dw  (0x59000432)
	.dw  (0x59800219)
	.dw  (0x5a000000)
	.dw  (0x5a7ffde7)
	.dw  (0x5b000432)
	.dw  (0x5b800219)
	.dw  (0x5c000000)
	.dw  (0x5c7ffde7)
	.dw  (0x5d000432)
	.dw  (0x5d800219)
	.dw  (0x5e000000)
	.dw  (0x5e7ffde7)
	.dw  (0x5f000432)
	.dw  (0x5f800219)
	.dw  (0x60000000)
	.dw  (0x607ffde7)
	.dw  (0x61000432)
	.dw  (0x61800219)
	.dw  (0x62000000)
	.dw  (0x627ffde7)
	.dw  (0x63000432)
	.dw  (0x63800219)
	.dw  (0x64000000)
	.dw  (0x647ffde7)
	.dw  (0x65000432)
	.dw  (0x65800219)
	.dw  (0x66000000)
	.dw  (0x667ffde7)
	.dw  (0x67000432)
	.dw  (0x67800219)
	.dw  (0x68000000)
	.dw  (0x687ffde7)
	.dw  (0x69000432)
	.dw  (0x69800219)
	.dw  (0x6a000000)
	.dw  (0x6a7ffde7)
	.dw  (0x6b000432)
	.dw  (0x6b800219)
	.dw  (0x6c000000)
	.dw  (0x6c7ffde7)
	.dw  (0x6d000432)
	.dw  (0x6d800219)
	.dw  (0x6e000000)
	.dw  (0x6e7ffde7)
	.dw  (0x6f000432)
	.dw  (0x6f800219)
	.dw  (0x70000000)
	.dw  (0x707ffde7)
	.dw  (0x71000432)
	.dw  (0x71800219)
	.dw  (0x72000000)
	.dw  (0x727ffde7)
	.dw  (0x73000432)
	.dw  (0x73800219)
	.dw  (0x74000000)
	.dw  (0x747ffde7)
	.dw  (0x75000432)
	.dw  (0x75800219)
	.dw  (0x76000000)
	.dw  (0x767ffde7)
	.dw  (0x77000432)
	.dw  (0x77800219)
	.dw  (0x78000000)
	.dw  (0x787ffde7)
	.dw  (0x79000432)
	.dw  (0x79800219)
	.dw  (0x7a000000)
	.dw  (0x7a7ffde7)
	.dw  (0x7b000432)
	.dw  (0x7b800219)
	.dw  (0x7c000000)
	.dw  (0x7c7ffde7)
	.dw  (0x7d000432)
	.dw  (0x7d800219)
	.dw  (0x7e000000)
	.dw  (0x7e7ffde7)
	.dw  (0x7f000432)
	.dw  (0x7f800219)
	.dw  (0x7fffffff)
	.dw  (0x7f800219)
	.dw  (0x7f000432)
	.dw  (0x7e7ffde7)
	.dw  (0x7e000000)
	.dw  (0x7d800219)
	.dw  (0x7d000432)
	.dw  (0x7c7ffde7)
	.dw  (0x7c000000)
	.dw  (0x7b800219)
	.dw  (0x7b000432)
	.dw  (0x7a7ffde7)
	.dw  (0x7a000000)
	.dw  (0x79800219)
	.dw  (0x79000432)
	.dw  (0x787ffde7)
	.dw  (0x78000000)
	.dw  (0x77800219)
	.dw  (0x77000432)
	.dw  (0x767ffde7)
	.dw  (0x76000000)
	.dw  (0x75800219)
	.dw  (0x75000432)
	.dw  (0x747ffde7)
	.dw  (0x74000000)
	.dw  (0x73800219)
	.dw  (0x73000432)
	.dw  (0x727ffde7)
	.dw  (0x72000000)
	.dw  (0x71800219)
	.dw  (0x71000432)
	.dw  (0x707ffde7)
	.dw  (0x70000000)
	.dw  (0x6f800219)
	.dw  (0x6f000432)
	.dw  (0x6e7ffde7)
	.dw  (0x6e000000)
	.dw  (0x6d800219)
	.dw  (0x6d000432)
	.dw  (0x6c7ffde7)
	.dw  (0x6c000000)
	.dw  (0x6b800219)
	.dw  (0x6b000432)
	.dw  (0x6a7ffde7)
	.dw  (0x6a000000)
	.dw  (0x69800219)
	.dw  (0x69000432)
	.dw  (0x687ffde7)
	.dw  (0x68000000)
	.dw  (0x67800219)
	.dw  (0x67000432)
	.dw  (0x667ffde7)
	.dw  (0x66000000)
	.dw  (0x65800219)
	.dw  (0x65000432)
	.dw  (0x647ffde7)
	.dw  (0x64000000)
	.dw  (0x63800219)
	.dw  (0x63000432)
	.dw  (0x627ffde7)
	.dw  (0x62000000)
	.dw  (0x61800219)
	.dw  (0x61000432)
	.dw  (0x607ffde7)
	.dw  (0x60000000)
	.dw  (0x5f800219)
	.dw  (0x5f000432)
	.dw  (0x5e7ffde7)
	.dw  (0x5e000000)
	.dw  (0x5d800219)
	.dw  (0x5d000432)
	.dw  (0x5c7ffde7)
	.dw  (0x5c000000)
	.dw  (0x5b800219)
	.dw  (0x5b000432)
	.dw  (0x5a7ffde7)
	.dw  (0x5a000000)
	.dw  (0x59800219)
	.dw  (0x59000432)
	.dw  (0x587ffde7)
	.dw  (0x58000000)
	.dw  (0x57800219)
	.dw  (0x57000432)
	.dw  (0x567ffde7)
	.dw  (0x56000000)
	.dw  (0x55800219)
	.dw  (0x55000432)
	.dw  (0x547ffde7)
	.dw  (0x54000000)
	.dw  (0x53800219)
	.dw  (0x53000432)
	.dw  (0x527ffde7)
	.dw  (0x52000000)
	.dw  (0x51800219)
	.dw  (0x51000432)
	.dw  (0x507ffde7)
	.dw  (0x50000000)
	.dw  (0x4f800219)
	.dw  (0x4f000432)
	.dw  (0x4e7ffde7)
	.dw  (0x4e000000)
	.dw  (0x4d800219)
	.dw  (0x4d000432)
	.dw  (0x4c7ffde7)
	.dw  (0x4c000000)
	.dw  (0x4b800219)
	.dw  (0x4b000432)
	.dw  (0x4a7ffde7)
	.dw  (0x4a000000)
	.dw  (0x49800219)
	.dw  (0x49000432)
	.dw  (0x487ffde7)
	.dw  (0x48000000)
	.dw  (0x47800219)
	.dw  (0x47000432)
	.dw  (0x467ffde7)
	.dw  (0x46000000)
	.dw  (0x45800219)
	.dw  (0x45000432)
	.dw  (0x447ffde7)
	.dw  (0x44000000)
	.dw  (0x43800219)
	.dw  (0x43000432)
	.dw  (0x427ffde7)
	.dw  (0x42000000)
	.dw  (0x41800219)
	.dw  (0x41000432)
	.dw  (0x407ffde7)
	.dw  (0x40000000)
	.dw  (0x3f800219)
	.dw  (0x3f000432)
	.dw  (0x3e7ffde7)
	.dw  (0x3e000000)
	.dw  (0x3d800219)
	.dw  (0x3d000432)
	.dw  (0x3c7ffde7)
	.dw  (0x3c000000)
	.dw  (0x3b800219)
	.dw  (0x3b000432)
	.dw  (0x3a7ffde7)
	.dw  (0x3a000000)
	.dw  (0x39800219)
	.dw  (0x39000432)
	.dw  (0x387ffde7)
	.dw  (0x38000000)
	.dw  (0x37800219)
	.dw  (0x37000432)
	.dw  (0x367ffde7)
	.dw  (0x36000000)
	.dw  (0x35800219)
	.dw  (0x35000432)
	.dw  (0x347ffde7)
	.dw  (0x34000000)
	.dw  (0x33800219)
	.dw  (0x33000432)
	.dw  (0x327ffde7)
	.dw  (0x32000000)
	.dw  (0x31800219)
	.dw  (0x31000432)
	.dw  (0x307ffde7)
	.dw  (0x30000000)
	.dw  (0x2f800219)
	.dw  (0x2f000432)
	.dw  (0x2e7ffde7)
	.dw  (0x2e000000)
	.dw  (0x2d800219)
	.dw  (0x2d000432)
	.dw  (0x2c7ffde7)
	.dw  (0x2c000000)
	.dw  (0x2b800219)
	.dw  (0x2b000432)
	.dw  (0x2a7ffde7)
	.dw  (0x2a000000)
	.dw  (0x29800219)
	.dw  (0x29000432)
	.dw  (0x287ffde7)
	.dw  (0x28000000)
	.dw  (0x27800219)
	.dw  (0x27000432)
	.dw  (0x267ffde7)
	.dw  (0x26000000)
	.dw  (0x25800219)
	.dw  (0x25000432)
	.dw  (0x247ffde7)
	.dw  (0x24000000)
	.dw  (0x23800219)
	.dw  (0x23000432)
	.dw  (0x227ffde7)
	.dw  (0x22000000)
	.dw  (0x21800219)
	.dw  (0x21000432)
	.dw  (0x207ffde7)
	.dw  (0x20000000)
	.dw  (0x1f800219)
	.dw  (0x1f000432)
	.dw  (0x1e7ffde7)
	.dw  (0x1e000000)
	.dw  (0x1d800219)
	.dw  (0x1d000432)
	.dw  (0x1c7ffde7)
	.dw  (0x1c000000)
	.dw  (0x1b800219)
	.dw  (0x1b000432)
	.dw  (0x1a7ffde7)
	.dw  (0x1a000000)
	.dw  (0x19800219)
	.dw  (0x19000432)
	.dw  (0x187ffde7)
	.dw  (0x18000000)
	.dw  (0x17800219)
	.dw  (0x17000432)
	.dw  (0x167ffde7)
	.dw  (0x16000000)
	.dw  (0x15800219)
	.dw  (0x15000432)
	.dw  (0x147ffde7)
	.dw  (0x14000000)
	.dw  (0x13800219)
	.dw  (0x13000432)
	.dw  (0x127ffde7)
	.dw  (0x12000000)
	.dw  (0x11800219)
	.dw  (0x11000432)
	.dw  (0x107ffde7)
	.dw  (0x10000000)
	.dw  (0xf800219)
	.dw  (0xf000432)
	.dw  (0xe7ffde7)
	.dw  (0xe000000)
	.dw  (0xd800219)
	.dw  (0xd000432)
	.dw  (0xc7ffde7)
	.dw  (0xc000000)
	.dw  (0xb800219)
	.dw  (0xb000432)
	.dw  (0xa7ffde7)
	.dw  (0xa000000)
	.dw  (0x9800219)
	.dw  (0x9000432)
	.dw  (0x87ffde7)
	.dw  (0x8000000)
	.dw  (0x7800219)
	.dw  (0x7000432)
	.dw  (0x67ffde7)
	.dw  (0x6000000)
	.dw  (0x5800219)
	.dw  (0x5000432)
	.dw  (0x47ffde7)
	.dw  (0x4000000)
	.dw  (0x3800219)
	.dw  (0x3000432)
	.dw  (0x27ffde7)
	.dw  (0x2000000)
	.dw  (0x1800219)
	.dw  (0x1000432)
	.dw  (0x7ffde7)
	.dw  (0x863)
	.dw  (0x7ffde7)
	.dw  (0x1000432)
	.dw  (0x1800219)
	.dw  (0x2000000)
	.dw  (0x27ffde7)
	.dw  (0x3000432)
	.dw  (0x3800219)
	.dw  (0x4000000)
	.dw  (0x47ffde7)
	.dw  (0x5000432)
	.dw  (0x5800219)
	.dw  (0x6000000)
	.dw  (0x67ffde7)
	.dw  (0x7000432)
	.dw  (0x7800219)
	.dw  (0x8000000)
	.dw  (0x87ffde7)
	.dw  (0x9000432)
	.dw  (0x9800219)
	.dw  (0xa000000)
	.dw  (0xa7ffde7)
	.dw  (0xb000432)
	.dw  (0xb800219)
	.dw  (0xc000000)
	.dw  (0xc7ffde7)
	.dw  (0xd000432)
	.dw  (0xd800219)
	.dw  (0xe000000)
	.dw  (0xe7ffde7)
	.dw  (0xf000432)
	.dw  (0xf800219)
	.dw  (0x10000000)
	.dw  (0x107ffde7)
	.dw  (0x11000432)
	.dw  (0x11800219)
	.dw  (0x12000000)
	.dw  (0x127ffde7)
	.dw  (0x13000432)
	.dw  (0x13800219)
	.dw  (0x14000000)
	.dw  (0x147ffde7)
	.dw  (0x15000432)
	.dw  (0x15800219)
	.dw  (0x16000000)
	.dw  (0x167ffde7)
	.dw  (0x17000432)
	.dw  (0x17800219)
	.dw  (0x18000000)
	.dw  (0x187ffde7)
	.dw  (0x19000432)
	.dw  (0x19800219)
	.dw  (0x1a000000)
	.dw  (0x1a7ffde7)
	.dw  (0x1b000432)
	.dw  (0x1b800219)
	.dw  (0x1c000000)
	.dw  (0x1c7ffde7)
	.dw  (0x1d000432)
	.dw  (0x1d800219)
	.dw  (0x1e000000)
	.dw  (0x1e7ffde7)
	.dw  (0x1f000432)
	.dw  (0x1f800219)
	.dw  (0x20000000)
	.dw  (0x207ffde7)
	.dw  (0x21000432)
	.dw  (0x21800219)
	.dw  (0x22000000)
	.dw  (0x227ffde7)
	.dw  (0x23000432)
	.dw  (0x23800219)
	.dw  (0x24000000)
	.dw  (0x247ffde7)
	.dw  (0x25000432)
	.dw  (0x25800219)
	.dw  (0x26000000)
	.dw  (0x267ffde7)
	.dw  (0x27000432)
	.dw  (0x27800219)
	.dw  (0x28000000)
	.dw  (0x287ffde7)
	.dw  (0x29000432)
	.dw  (0x29800219)
	.dw  (0x2a000000)
	.dw  (0x2a7ffde7)
	.dw  (0x2b000432)
	.dw  (0x2b800219)
	.dw  (0x2c000000)
	.dw  (0x2c7ffde7)
	.dw  (0x2d000432)
	.dw  (0x2d800219)
	.dw  (0x2e000000)
	.dw  (0x2e7ffde7)
	.dw  (0x2f000432)
	.dw  (0x2f800219)
	.dw  (0x30000000)
	.dw  (0x307ffde7)
	.dw  (0x31000432)
	.dw  (0x31800219)
	.dw  (0x32000000)
	.dw  (0x327ffde7)
	.dw  (0x33000432)
	.dw  (0x33800219)
	.dw  (0x34000000)
	.dw  (0x347ffde7)
	.dw  (0x35000432)
	.dw  (0x35800219)
	.dw  (0x36000000)
	.dw  (0x367ffde7)
	.dw  (0x37000432)
	.dw  (0x37800219)
	.dw  (0x38000000)
	.dw  (0x387ffde7)
	.dw  (0x39000432)
	.dw  (0x39800219)
	.dw  (0x3a000000)
	.dw  (0x3a7ffde7)
	.dw  (0x3b000432)
	.dw  (0x3b800219)
	.dw  (0x3c000000)
	.dw  (0x3c7ffde7)
	.dw  (0x3d000432)
	.dw  (0x3d800219)
	.dw  (0x3e000000)
	.dw  (0x3e7ffde7)
	.dw  (0x3f000432)
	.dw  (0x3f800219)
	.code_ovly



_lfo:			/* LN: 435 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 435 | 
	i7 += 1			# LN: 435 | 
	i7 = i7 + (0x3)			# LN: 435 | 
	i0 = i7 - (0x3)			# LN: 435 | 
	xmem[i0] = a0g; i0 += 1			# LN: 435, 435 | 
	xmem[i0] = a0h; i0 += 1			# LN: 435, 435 | 
	xmem[i0] = a0l			# LN: 435 | 
cline_435_0:			/* LN: 437 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_tremolo_data + 3]			# LN: 437 | 
	uhalfword(a1) = (0x2)			# LN: 437 | 
	a0 - a1			# LN: 437 | 
	if (a != 0) jmp (else_1)			# LN: 437 | 
cline_437_0:			/* LN: 439 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 439 | 
	a0g = xmem[i0]; i0 += 1			# LN: 439, 439 | 
	a0h = xmem[i0]; i0 += 1			# LN: 439, 439 | 
	a0l = xmem[i0]			# LN: 439 | 
	a0 = a0 >> 1			# LN: 439 | 
	ufixed16(a1) = (0x2000)			# LN: 439 | 
	a1 = a1 >> 1			# LN: 439 | 
	a0 - a1			# LN: 439 | 
	if (a >= 0) jmp (else_2)			# LN: 439 | 
cline_439_0:			/* LN: 441 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 441 | 
	a0g = xmem[i0]; i0 += 1			# LN: 441, 441 | 
	a0h = xmem[i0]; i0 += 1			# LN: 441, 441 | 
	a0l = xmem[i0]			# LN: 441 | 
	a0 = a0 << 1			# LN: 441 | 
	ufixed16(a1) = (0x4000)			# LN: 441 | 
	a0 = a1 + a0			# LN: 441 | 
	a0 = a0			# LN: 441 | 
	jmp (__epilogue_224)			# LN: 441 | 
cline_441_0:			/* LN: 443 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 439 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 443 | 
	a0g = xmem[i0]; i0 += 1			# LN: 443, 443 | 
	a0h = xmem[i0]; i0 += 1			# LN: 443, 443 | 
	a0l = xmem[i0]			# LN: 443 | 
	a0 = a0 >> 1			# LN: 443 | 
	ufixed16(a1) = (0x6000)			# LN: 443 | 
	a1 = a1 >> 1			# LN: 443 | 
	a0 - a1			# LN: 443 | 
	if (a >= 0) jmp (else_3)			# LN: 443 | 
cline_443_0:			/* LN: 445 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 445 | 
	a0g = xmem[i0]; i0 += 1			# LN: 445, 445 | 
	a0h = xmem[i0]; i0 += 1			# LN: 445, 445 | 
	a0l = xmem[i0]			# LN: 445 | 
	ufixed16(a1) = (0x2000)			# LN: 445 | 
	a0 = a0 - a1			# LN: 445 | 
	a0 = a0 << 1			# LN: 445 | 
	ufixed16(a1) = (0x8000)			# LN: 445 | 
	a0 = a1 - a0			# LN: 445 | 
	a0 = a0			# LN: 445 | 
	jmp (__epilogue_224)			# LN: 445 | 
cline_445_0:			/* LN: 449 | CYCLE: 0 | RULES: () */ 
else_3:			/* LN: 443 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 449 | 
	a0g = xmem[i0]; i0 += 1			# LN: 449, 449 | 
	a0h = xmem[i0]; i0 += 1			# LN: 449, 449 | 
	a0l = xmem[i0]			# LN: 449 | 
	ufixed16(a1) = (0x6000)			# LN: 449 | 
	a0 = a0 - a1			# LN: 449 | 
	a0 = a0 << 1			# LN: 449 | 
	a0 = a0			# LN: 449 | 
	jmp (__epilogue_224)			# LN: 449 | 
cline_439_1:			/* LN: 452 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 437 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_tremolo_data + 3]			# LN: 452 | 
	uhalfword(a1) = (0x3)			# LN: 452 | 
	a0 - a1			# LN: 452 | 
	if (a != 0) jmp (else_4)			# LN: 452 | 
cline_452_0:			/* LN: 454 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 454 | 
	a0g = xmem[i0]; i0 += 1			# LN: 454, 454 | 
	a0h = xmem[i0]; i0 += 1			# LN: 454, 454 | 
	a0l = xmem[i0]			# LN: 454 | 
	b0 =+ a0			# LN: 454 | 
	b0 = b0 >> 1			# LN: 454 | 
	a0 = (0x4000)			# LN: 454 | 
	a0 = a0 >> 1			# LN: 454 | 
	b0 - a0			# LN: 454 | 
	if (b >= 0) jmp (else_5)			# LN: 454 | 
cline_454_0:			/* LN: 456 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_6 + 0]			# LN: 456 | 
	jmp (__epilogue_224)			# LN: 456 | 
cline_456_0:			/* LN: 460 | CYCLE: 0 | RULES: () */ 
else_5:			/* LN: 454 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 460 | 
	jmp (__epilogue_224)			# LN: 460 | 
cline_454_1:			/* LN: 463 | CYCLE: 0 | RULES: () */ 
else_4:			/* LN: 452 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_tremolo_data + 3]			# LN: 463 | 
	uhalfword(a1) = (0x4)			# LN: 463 | 
	a0 - a1			# LN: 463 | 
	if (a != 0) jmp (else_6)			# LN: 463 | 
cline_463_0:			/* LN: 465 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 465 | 
	a0g = xmem[i0]; i0 += 1			# LN: 465, 465 | 
	a0h = xmem[i0]; i0 += 1			# LN: 465, 465 | 
	a0l = xmem[i0]			# LN: 465 | 
	b0 =+ a0			# LN: 465 | 
	a0g = xmem[__extractedConst_1_2 + 0]			# LN: 465 | 
	b0 = b0 >> 1			# LN: 465 | 
	a0h = xmem[__extractedConst_1_2 + 1]			# LN: 465 | 
	a0l = xmem[__extractedConst_1_2 + 2]			# LN: 465 | 
	a0 = a0 >> 1			# LN: 465 | 
	b0 - a0			# LN: 465 | 
	if (b >= 0) jmp (else_7)			# LN: 465 | 
cline_465_0:			/* LN: 467 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_6 + 0]			# LN: 467 | 
	jmp (__epilogue_224)			# LN: 467 | 
cline_467_0:			/* LN: 469 | CYCLE: 0 | RULES: () */ 
else_7:			/* LN: 465 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 469 | 
	a0g = xmem[i0]; i0 += 1			# LN: 469, 469 | 
	a0h = xmem[i0]; i0 += 1			# LN: 469, 469 | 
	a0l = xmem[i0]			# LN: 469 | 
	a0 = a0 >> 1			# LN: 469 | 
	ufixed16(a1) = (0x4000)			# LN: 469 | 
	a1 = a1 >> 1			# LN: 469 | 
	a0 - a1			# LN: 469 | 
	if (a >= 0) jmp (else_8)			# LN: 469 | 
cline_469_0:			/* LN: 471 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 471 | 
	a0g = xmem[i0]; i0 += 1			# LN: 471, 471 | 
	a0h = xmem[i0]; i0 += 1			# LN: 471, 471 | 
	a0l = xmem[i0]			# LN: 471 | 
	a1g = xmem[__extractedConst_1_2 + 0]			# LN: 471 | 
	a1h = xmem[__extractedConst_1_2 + 1]			# LN: 471 | 
	a1l = xmem[__extractedConst_1_2 + 2]			# LN: 471 | 
	a1 = a0 - a1			# LN: 471 | 
	a0 = 0			# LN: 471 | 
	a0g = (0x19)			# LN: 471 | 
	call (__mul_sat_laccum)			# LN: 471 | 
	a1 = xmem[__extractedConst_0_6 + 0]			# LN: 471 | 
	a0 = a1 - a0			# LN: 471 | 
	a0 = a0			# LN: 471 | 
	jmp (__epilogue_224)			# LN: 471 | 
cline_471_0:			/* LN: 473 | CYCLE: 0 | RULES: () */ 
else_8:			/* LN: 469 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 473 | 
	a0g = xmem[i0]; i0 += 1			# LN: 473, 473 | 
	a0h = xmem[i0]; i0 += 1			# LN: 473, 473 | 
	a0l = xmem[i0]			# LN: 473 | 
	b0 =+ a0			# LN: 473 | 
	a0g = xmem[__extractedConst_2_2 + 0]			# LN: 473 | 
	b0 = b0 >> 1			# LN: 473 | 
	a0h = xmem[__extractedConst_2_2 + 1]			# LN: 473 | 
	a0l = xmem[__extractedConst_2_2 + 2]			# LN: 473 | 
	a0 = a0 >> 1			# LN: 473 | 
	b0 - a0			# LN: 473 | 
	if (b >= 0) jmp (else_9)			# LN: 473 | 
cline_473_0:			/* LN: 475 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 475 | 
	jmp (__epilogue_224)			# LN: 475 | 
cline_475_0:			/* LN: 479 | CYCLE: 0 | RULES: () */ 
else_9:			/* LN: 473 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 479 | 
	a0g = xmem[i0]; i0 += 1			# LN: 479, 479 | 
	a0h = xmem[i0]; i0 += 1			# LN: 479, 479 | 
	a0l = xmem[i0]			# LN: 479 | 
	a1g = xmem[__extractedConst_2_2 + 0]			# LN: 479 | 
	a1h = xmem[__extractedConst_2_2 + 1]			# LN: 479 | 
	a1l = xmem[__extractedConst_2_2 + 2]			# LN: 479 | 
	a1 = a0 - a1			# LN: 479 | 
	a0 = 0			# LN: 479 | 
	a0g = (0x19)			# LN: 479 | 
	call (__mul_sat_laccum)			# LN: 479 | 
	a0 = a0			# LN: 479 | 
	jmp (__epilogue_224)			# LN: 479 | 
cline_465_1:			/* LN: 484 | CYCLE: 0 | RULES: () */ 
else_6:			/* LN: 463 | CYCLE: 0 | RULES: () */ 
	a0 = (0x4000)			# LN: 484 | 
	jmp (__epilogue_224)			# LN: 484 | 
cline_484_0:			/* LN: 486 | CYCLE: 0 | RULES: () */ 
__epilogue_224:			/* LN: 486 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x3)			# LN: 486 | 
	i7 -= 1			# LN: 486 | 
	ret			# LN: 486 | 



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

_main:			/* LN: 547 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 547 | 
	i7 += 1			# LN: 547 | 
	i7 = i7 + (0x20f)			# LN: 547 | 
	i1 = i7 - (0x1)			# LN: 547 | 
	xmem[i1] = a0h			# LN: 547 | 
	i1 = i7 - (0x2)			# LN: 547 | 
	xmem[i1] = i0			# LN: 547 | 
cline_547_0:			/* LN: 556 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 556 | 
	uhalfword(a0) = (0x4)			# LN: 556 | 
	xmem[i0] = a0h			# LN: 556 | 
cline_556_0:			/* LN: 564 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 564 | 
	a0 = 0			# LN: 564 | 
	xmem[i0] = a0h			# LN: 564 | 
	do (0x8), label_end_95			# LN: 564 | 
cline_564_0:			/* LN: 565 | CYCLE: 0 | RULES: () */ 
label_begin_95:			/* LN: 564 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 565 | 
	a0 = 0			# LN: 565 | 
	xmem[i0] = a0h			# LN: 565 | 
	do (0x10), label_end_94			# LN: 565 | 
cline_565_0:			/* LN: 566 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 565 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 566 | 
	a0 = xmem[i0]; a1 = 0			# LN: 566, 566 | 
	a0 = a0 << 4			# LN: 566 | 
	i0 = a0			# LN: 566 | 
	i1 = i7 - (0x5)			# LN: 566 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 566 | 
	a0 = xmem[i1]			# LN: 566 | 
	b0 = i0			# LN: 566 | 
	a0 = a0 + b0			# LN: 566 | 
	AnyReg(i0, a0h)			# LN: 566 | 
	nop #empty cycle
	ymem[i0] = a1h			# LN: 566 | 
cline_566_0:			/* LN: 565 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 566 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 565 | 
	a0 = xmem[i0]			# LN: 565 | 
	uhalfword(a1) = (0x1)			# LN: 565 | 
	a0 = a0 + a1			# LN: 565 | 
	i0 = i7 - (0x5)			# LN: 565 | 
label_end_94:			# LN: 565 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 565 | 
cline_565_1:			/* LN: 564 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 566 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 565 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 564 | 
	a0 = xmem[i0]			# LN: 564 | 
	uhalfword(a1) = (0x1)			# LN: 564 | 
	a0 = a0 + a1			# LN: 564 | 
	i0 = i7 - (0x4)			# LN: 564 | 
label_end_95:			# LN: 564 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 564 | 
cline_564_1:			/* LN: 570 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 564 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 570 | 
	i0 = xmem[i0]			# LN: 570 | 
	i1 = i7 - (261 - 0)			# LN: 570 | 
	i4 = xmem[i0]			# LN: 570 | 
	i0 = i1			# LN: 570 | 
	i1 = i4			# LN: 570 | 
	call (_strcpy)			# LN: 570 | 
cline_570_0:			/* LN: 571 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (261 - 0)			# LN: 571 | 
	call (_cl_wavread_open)			# LN: 571 | 
	AnyReg(i0, a0h)			# LN: 571 | 
	i1 = i7 - (0x106)			# LN: 571 | 
	xmem[i1] = i0			# LN: 571 | 
cline_571_0:			/* LN: 572 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x106)			# LN: 572 | 
	a0 = xmem[i0]			# LN: 572 | 
	a0 & a0			# LN: 572 | 
	if (a != 0) jmp (else_11)			# LN: 572 | 
cline_572_0:			/* LN: 574 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_0)			# LN: 574 | 
	call (_printf)			# LN: 574 | 
cline_574_0:			/* LN: 575 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 575 | 
	jmp (__epilogue_228)			# LN: 575 | 
cline_575_0:			/* LN: 581 | CYCLE: 0 | RULES: () */ 
endif_11:			/* LN: 572 | CYCLE: 0 | RULES: () */ 
else_11:			/* LN: 572 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x106)			# LN: 581 | 
	i0 = xmem[i0]			# LN: 581 | 
	call (_cl_wavread_getnchannels)			# LN: 581 | 
	i0 = i7 - (0x107)			# LN: 581 | 
	xmem[i0] = a0h			# LN: 581 | 
cline_581_0:			/* LN: 582 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x106)			# LN: 582 | 
	i0 = xmem[i0]			# LN: 582 | 
	call (_cl_wavread_bits_per_sample)			# LN: 582 | 
	i0 = i7 - (0x108)			# LN: 582 | 
	xmem[i0] = a0h			# LN: 582 | 
cline_582_0:			/* LN: 583 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x106)			# LN: 583 | 
	i0 = xmem[i0]			# LN: 583 | 
	call (_cl_wavread_frame_rate)			# LN: 583 | 
	i0 = i7 - (0x109)			# LN: 583 | 
	xmem[i0] = a0h			# LN: 583 | 
cline_583_0:			/* LN: 584 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x106)			# LN: 584 | 
	i0 = xmem[i0]			# LN: 584 | 
	call (_cl_wavread_number_of_frames)			# LN: 584 | 
	i0 = i7 - (0x10a)			# LN: 584 | 
	xmem[i0] = a0h			# LN: 584 | 
cline_584_0:			/* LN: 589 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 589 | 
	i0 = xmem[i0]			# LN: 589 | 
	i1 = i7 - (522 - 0)			# LN: 589 | 
	i0 += 1			# LN: 589 | 
	i4 = xmem[i0]			# LN: 589 | 
	i0 = i1			# LN: 589 | 
	i1 = i4			# LN: 589 | 
	call (_strcpy)			# LN: 589 | 
cline_589_0:			/* LN: 590 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (522 - 0)			# LN: 590 | 
	i1 = i7 - (0x108)			# LN: 590 | 
	a0 = xmem[i1]			# LN: 590 | 
	i1 = i7 - (0x3)			# LN: 590 | 
	a1 = xmem[i1]			# LN: 590 | 
	i1 = i7 - (0x109)			# LN: 590 | 
	b0 = xmem[i1]			# LN: 590 | 
	call (_cl_wavwrite_open)			# LN: 590 | 
	AnyReg(i0, a0h)			# LN: 590 | 
	i1 = i7 - (0x20b)			# LN: 590 | 
	xmem[i1] = i0			# LN: 590 | 
cline_590_0:			/* LN: 591 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 591 | 
	a0 = xmem[i0]			# LN: 591 | 
	a0 & a0			# LN: 591 | 
	if (a != 0) jmp (else_12)			# LN: 591 | 
cline_591_0:			/* LN: 593 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_1)			# LN: 593 | 
	call (_printf)			# LN: 593 | 
cline_593_0:			/* LN: 594 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 594 | 
	jmp (__epilogue_228)			# LN: 594 | 
cline_594_0:			/* LN: 597 | CYCLE: 0 | RULES: () */ 
endif_12:			/* LN: 591 | CYCLE: 0 | RULES: () */ 
else_12:			/* LN: 591 | CYCLE: 0 | RULES: () */ 
	call (_tremolo_init)			# LN: 597 | 
cline_597_0:			/* LN: 608 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 608 | 
	a0 = 0			# LN: 608 | 
	xmem[i0] = a0h			# LN: 608 | 
for_4:			/* LN: 608 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x10a)			# LN: 608 | 
	a0 = xmem[i0]			# LN: 608 | 
	uhalfword(a1) = (0x10)			# LN: 608 | 
	call (__div)			# LN: 608 | 
	i0 = i7 - (0x20c)			# LN: 608 | 
	a1 = xmem[i0]			# LN: 608 | 
	a1 - a0			# LN: 608 | 
	if (a >= 0) jmp (for_end_4)			# LN: 608 | 
cline_608_0:			/* LN: 610 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 610 | 
	a0 = 0			# LN: 610 | 
	xmem[i0] = a0h			# LN: 610 | 
	do (0x10), label_end_96			# LN: 610 | 
cline_610_0:			/* LN: 612 | CYCLE: 0 | RULES: () */ 
label_begin_96:			/* LN: 610 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 612 | 
	a0 = 0			# LN: 612 | 
	xmem[i0] = a0h			# LN: 612 | 
for_6:			/* LN: 612 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 612 | 
	a0 = xmem[i0]			# LN: 612 | 
	i0 = i7 - (0x107)			# LN: 612 | 
	a1 = xmem[i0]			# LN: 612 | 
	a0 - a1			# LN: 612 | 
	if (a >= 0) jmp (for_end_6)			# LN: 612 | 
cline_612_0:			/* LN: 614 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x106)			# LN: 614 | 
	i0 = xmem[i0]			# LN: 614 | 
	call (_cl_wavread_recvsample)			# LN: 614 | 
	i0 = i7 - (0x20f)			# LN: 614 | 
	xmem[i0] = a0h			# LN: 614 | 
cline_614_0:			/* LN: 615 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 615 | 
	a0 = xmem[i0]			# LN: 615 | 
	a0 = a0 << 4			# LN: 615 | 
	i0 = a0			# LN: 615 | 
	i1 = i7 - (0x20d)			# LN: 615 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 615 | 
	a0 = xmem[i1]			# LN: 615 | 
	a1 = i0			# LN: 615 | 
	a0 = a1 + a0			# LN: 615 | 
	AnyReg(i0, a0h)			# LN: 615 | 
	i1 = i7 - (0x20f)			# LN: 615 | 
	a0 = xmem[i1]			# LN: 615 | 
	ymem[i0] = a0h			# LN: 615 | 
cline_615_0:			/* LN: 612 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 616 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 612 | 
	a0 = xmem[i0]			# LN: 612 | 
	uhalfword(a1) = (0x1)			# LN: 612 | 
	a0 = a0 + a1			# LN: 612 | 
	i0 = i7 - (0x20e)			# LN: 612 | 
	xmem[i0] = a0h			# LN: 612 | 
	jmp (for_6)			# LN: 612 | 
cline_612_1:			/* LN: 610 | CYCLE: 0 | RULES: () */ 
init_latch_label_5:			/* LN: 617 | CYCLE: 0 | RULES: () */ 
for_end_6:			/* LN: 612 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 610 | 
	a0 = xmem[i0]			# LN: 610 | 
	uhalfword(a1) = (0x1)			# LN: 610 | 
	a0 = a0 + a1			# LN: 610 | 
	i0 = i7 - (0x20d)			# LN: 610 | 
label_end_96:			# LN: 610 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 610 | 
cline_610_1:			/* LN: 619 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 610 | CYCLE: 0 | RULES: () */ 
	call (_processing_foo)			# LN: 619 | 
cline_619_0:			/* LN: 621 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 621 | 
	a0 = 0			# LN: 621 | 
	xmem[i0] = a0h			# LN: 621 | 
	do (0x10), label_end_97			# LN: 621 | 
cline_621_0:			/* LN: 623 | CYCLE: 0 | RULES: () */ 
label_begin_97:			/* LN: 621 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 623 | 
	a0 = 0			# LN: 623 | 
	xmem[i0] = a0h			# LN: 623 | 
for_8:			/* LN: 623 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 623 | 
	a0 = xmem[i0]			# LN: 623 | 
	i0 = i7 - (0x3)			# LN: 623 | 
	a1 = xmem[i0]			# LN: 623 | 
	a0 - a1			# LN: 623 | 
	if (a >= 0) jmp (for_end_8)			# LN: 623 | 
cline_623_0:			/* LN: 625 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 625 | 
	a0 = xmem[i0]			# LN: 625 | 
	a0 = a0 << 4			# LN: 625 | 
	i0 = a0			# LN: 625 | 
	i1 = i7 - (0x20d)			# LN: 625 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 625 | 
	a0 = xmem[i1]			# LN: 625 | 
	a1 = i0			# LN: 625 | 
	a0 = a1 + a0			# LN: 625 | 
	AnyReg(i0, a0h)			# LN: 625 | 
	i1 = i7 - (0x20f)			# LN: 625 | 
	a0 = ymem[i0]			# LN: 625 | 
	xmem[i1] = a0h			# LN: 625 | 
cline_625_0:			/* LN: 626 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 626 | 
	i1 = i7 - (0x20f)			# LN: 626 | 
	a0 = xmem[i1]			# LN: 626 | 
	i0 = xmem[i0]			# LN: 626 | 
	call (_cl_wavwrite_sendsample)			# LN: 626 | 
cline_626_0:			/* LN: 623 | CYCLE: 0 | RULES: () */ 
init_latch_label_6:			/* LN: 627 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20e)			# LN: 623 | 
	a0 = xmem[i0]			# LN: 623 | 
	uhalfword(a1) = (0x1)			# LN: 623 | 
	a0 = a0 + a1			# LN: 623 | 
	i0 = i7 - (0x20e)			# LN: 623 | 
	xmem[i0] = a0h			# LN: 623 | 
	jmp (for_8)			# LN: 623 | 
cline_623_1:			/* LN: 621 | CYCLE: 0 | RULES: () */ 
init_latch_label_7:			/* LN: 628 | CYCLE: 0 | RULES: () */ 
for_end_8:			/* LN: 623 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 621 | 
	a0 = xmem[i0]			# LN: 621 | 
	uhalfword(a1) = (0x1)			# LN: 621 | 
	a0 = a0 + a1			# LN: 621 | 
	i0 = i7 - (0x20d)			# LN: 621 | 
label_end_97:			# LN: 621 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 621 | 
cline_621_1:			/* LN: 608 | CYCLE: 0 | RULES: () */ 
init_latch_label_8:			/* LN: 629 | CYCLE: 0 | RULES: () */ 
for_end_7:			/* LN: 621 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 608 | 
	a0 = xmem[i0]			# LN: 608 | 
	uhalfword(a1) = (0x1)			# LN: 608 | 
	a0 = a0 + a1			# LN: 608 | 
	i0 = i7 - (0x20c)			# LN: 608 | 
	xmem[i0] = a0h			# LN: 608 | 
	jmp (for_4)			# LN: 608 | 
cline_608_1:			/* LN: 634 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 608 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x106)			# LN: 634 | 
	i0 = xmem[i0]			# LN: 634 | 
	call (_cl_wavread_close)			# LN: 634 | 
cline_634_0:			/* LN: 635 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 635 | 
	i0 = xmem[i0]			# LN: 635 | 
	call (_cl_wavwrite_close)			# LN: 635 | 
cline_635_0:			/* LN: 638 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 638 | 
	jmp (__epilogue_228)			# LN: 638 | 
cline_638_0:			/* LN: 639 | CYCLE: 0 | RULES: () */ 
__epilogue_228:			/* LN: 639 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x20f)			# LN: 639 | 
	i7 -= 1			# LN: 639 | 
	ret			# LN: 639 | 



_processing_foo:			/* LN: 505 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 505 | 
	i7 += 1			# LN: 505 | 
	i7 = i7 + (0x6)			# LN: 505 | 
cline_505_0:			/* LN: 507 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 507 | 
	uhalfword(a0) = (_sampleBuffer + 0)			# LN: 507 | 
	xmem[i0] = a0			# LN: 507 | 
cline_507_0:			/* LN: 508 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 508 | 
	uhalfword(a0) = (_sampleBuffer + 16)			# LN: 508 | 
	xmem[i0] = a0			# LN: 508 | 
cline_508_0:			/* LN: 512 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 512 | 
	a0 = 0			# LN: 512 | 
	xmem[i0] = a0h			# LN: 512 | 
	do (0x10), label_end_93			# LN: 512 | 
cline_512_0:			/* LN: 514 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 512 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 514 | 
	i0 = xmem[i0]			# LN: 514 | 
	x0 = xmem[_inputGain + 0]			# LN: 514 | 
	x1 = ymem[i0]			# LN: 514 | 
	a0 = x1 * x0			# LN: 514 | 
	i0 = i7 - (0x6)			# LN: 514 | 
	xmem[i0] = a0g; i0 += 1			# LN: 514, 514 | 
	xmem[i0] = a0h; i0 += 1			# LN: 514, 514 | 
	xmem[i0] = a0l			# LN: 514 | 
cline_514_0:			/* LN: 515 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 515 | 
	a0g = xmem[i0]; i0 += 1			# LN: 515, 515 | 
	a0h = xmem[i0]; i0 += 1			# LN: 515, 515 | 
	i1 = i7 - (0x1)			# LN: 515 | 
	i1 = xmem[i1]			# LN: 515 | 
	a0l = xmem[i0]			# LN: 515 | 
	ymem[i1] = a0			# LN: 515 | 
cline_515_0:			/* LN: 517 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 517 | 
	i0 = xmem[i0]			# LN: 517 | 
	x0 = xmem[_inputGain + 0]			# LN: 517 | 
	x1 = ymem[i0]			# LN: 517 | 
	a0 = x1 * x0			# LN: 517 | 
	i0 = i7 - (0x6)			# LN: 517 | 
	xmem[i0] = a0g; i0 += 1			# LN: 517, 517 | 
	xmem[i0] = a0h; i0 += 1			# LN: 517, 517 | 
	xmem[i0] = a0l			# LN: 517 | 
cline_517_0:			/* LN: 518 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 518 | 
	a0g = xmem[i0]; i0 += 1			# LN: 518, 518 | 
	a0h = xmem[i0]; i0 += 1			# LN: 518, 518 | 
	i1 = i7 - (0x2)			# LN: 518 | 
	i1 = xmem[i1]			# LN: 518 | 
	a0l = xmem[i0]			# LN: 518 | 
	ymem[i1] = a0			# LN: 518 | 
cline_518_0:			/* LN: 520 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 520 | 
	i0 = xmem[i0]			# LN: 520 | 
	i1 = i7 - (0x1)			# LN: 520 | 
	i0 += 1			# LN: 520 | 
	xmem[i1] = i0			# LN: 520 | 
cline_520_0:			/* LN: 521 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 521 | 
	i0 = xmem[i0]			# LN: 521 | 
	i1 = i7 - (0x2)			# LN: 521 | 
	i0 += 1			# LN: 521 | 
	xmem[i1] = i0			# LN: 521 | 
cline_521_0:			/* LN: 512 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 522 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 512 | 
	a0 = xmem[i0]			# LN: 512 | 
	uhalfword(a1) = (0x1)			# LN: 512 | 
	a0 = a0 + a1			# LN: 512 | 
	i0 = i7 - (0x3)			# LN: 512 | 
label_end_93:			# LN: 512 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 512 | 
cline_512_1:			/* LN: 525 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 512 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_outputChannelNum + 0]			# LN: 525 | 
	uhalfword(a1) = (0x4)			# LN: 525 | 
	a0 - a1			# LN: 525 | 
	if (a != 0) jmp (else_10)			# LN: 525 | 
cline_525_0:			/* LN: 527 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer)			# LN: 527 | 
	i1 = (0) + (_sampleBuffer + 32)			# LN: 527 | 
	call (_tremolo_procces)			# LN: 527 | 
cline_527_0:			/* LN: 528 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 16)			# LN: 528 | 
	i1 = (0) + (_sampleBuffer + 48)			# LN: 528 | 
	call (_tremolo_procces)			# LN: 528 | 
	jmp (endif_10)			# LN: 528 | 
cline_528_0:			/* LN: 530 | CYCLE: 0 | RULES: () */ 
endif_10:			/* LN: 525 | CYCLE: 0 | RULES: () */ 
else_10:			/* LN: 525 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_226)			# LN: 530 | 
__epilogue_226:			/* LN: 530 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x6)			# LN: 530 | 
	i7 -= 1			# LN: 530 | 
	ret			# LN: 530 | 



_tremolo_init:			/* LN: 352 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 352 | 
	i7 += 1			# LN: 352 | 
cline_352_0:			/* LN: 355 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_3_1 + 0]			# LN: 355 | 
	xmem[_inputGain + 0] = a0h			# LN: 355 | 
cline_355_0:			/* LN: 356 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x4)			# LN: 356 | 
	xmem[_outputChannelNum + 0] = a0h			# LN: 356 | 
cline_356_0:			/* LN: 357 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_6 + 0]			# LN: 357 | 
	xmem[_tremolo_data + 1] = a0h			# LN: 357 | 
cline_357_0:			/* LN: 358 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_6 + 0]			# LN: 358 | 
	xmem[_tremolo_data + 2] = a0h			# LN: 358 | 
cline_358_0:			/* LN: 359 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x3)			# LN: 359 | 
	xmem[_tremolo_data + 3] = a0h			# LN: 359 | 
cline_359_0:			/* LN: 360 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 360 | 
	xmem[_tremolo_data + 4] = a0h			# LN: 360 | 
cline_360_0:			/* LN: 361 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0xaec3)			# LN: 361 | 
	a0l = (0x3e1f)			# LN: 361 | 
	lo16(a0l) = (0x6715)			# LN: 361 | 
	xmem[_tremolo_data + 5] = a0g			# LN: 361 | 
	xmem[_tremolo_data + 6] = a0h			# LN: 361 | 
	xmem[_tremolo_data + 7] = a0l			# LN: 361 | 
cline_361_0:			/* LN: 362 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_220)			# LN: 362 | 
__epilogue_220:			/* LN: 362 | CYCLE: 0 | RULES: () */ 
	i7 -= 1			# LN: 362 | 
	ret			# LN: 362 | 



_tremolo_procces:			/* LN: 382 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 382 | 
	i7 += 1			# LN: 382 | 
	i7 = i7 + (0xd)			# LN: 382 | 
	i4 = i7 - (0x1)			# LN: 382 | 
	xmem[i4] = i0			# LN: 382 | 
	i0 = i7 - (0x2)			# LN: 382 | 
	xmem[i0] = i1			# LN: 382 | 
cline_382_0:			/* LN: 393 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 393 | 
	a0 = xmem[i0]			# LN: 393 | 
	i0 = i7 - (0x3)			# LN: 393 | 
	xmem[i0] = a0			# LN: 393 | 
cline_393_0:			/* LN: 394 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 394 | 
	a0 = xmem[i0]			# LN: 394 | 
	i0 = i7 - (0x4)			# LN: 394 | 
	xmem[i0] = a0			# LN: 394 | 
cline_394_0:			/* LN: 395 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 395 | 
	a0 = 0			# LN: 395 | 
	xmem[i0] = a0h			# LN: 395 | 
cline_395_0:			/* LN: 399 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_tremolo_data + 8]			# LN: 399 | 
	i0 = i7 - (0x6)			# LN: 399 | 
	xmem[i0] = a0h			# LN: 399 | 
cline_399_0:			/* LN: 405 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_tremolo_data + 4]			# LN: 405 | 
	i0 = i7 - (0x9)			# LN: 405 | 
	xmem[i0] = a0g; i0 += 1			# LN: 405, 405 | 
	xmem[i0] = a0h; i0 += 1			# LN: 405, 405 | 
	xmem[i0] = a0l			# LN: 405 | 
cline_405_0:			/* LN: 407 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xa)			# LN: 407 | 
	a0 = 0			# LN: 407 | 
	xmem[i0] = a0h			# LN: 407 | 
	do (0x10), label_end_92			# LN: 407 | 
cline_407_0:			/* LN: 410 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 407 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 410 | 
	a0g = xmem[i0]; i0 += 1			# LN: 410, 410 | 
	a0h = xmem[i0]; i0 += 1			# LN: 410, 410 | 
	a0l = xmem[i0]			# LN: 410 | 
	call (_lfo)			# LN: 410 | 
	i0 = i7 - (0x5)			# LN: 410 | 
	xmem[i0] = a0h			# LN: 410 | 
cline_410_0:			/* LN: 412 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 412 | 
	i1 = i7 - (0x6)			# LN: 412 | 
	a0 = xmem[i1]			# LN: 412 | 
	a1 = xmem[_p_sine_table + 0]			# LN: 412 | 
	a0 = a1 + a0			# LN: 412 | 
	AnyReg(i1, a0h)			# LN: 412 | 
	i0 = xmem[i0]			# LN: 412 | 
	a0 = xmem[i1]			# LN: 412 | 
	a1 = xmem[__extractedConst_0_6 + 0]			# LN: 412 | 
	x0 = ymem[i0]; a0 = a1 - a0			# LN: 412, 412 | 
	x1 = a0h			# LN: 412 | 
	i0 = i7 - (0x4)			# LN: 412 | 
	i0 = xmem[i0]			# LN: 412 | 
	a0 = x0 * x1			# LN: 412 | 
	ymem[i0] = a0			# LN: 412 | 
cline_412_0:			/* LN: 419 | CYCLE: 0 | RULES: () */ 
	a0g = xmem[_tremolo_data + 5]			# LN: 419 | 
	a0h = xmem[_tremolo_data + 6]			# LN: 419 | 
	a0l = xmem[_tremolo_data + 7]			# LN: 419 | 
	i0 = i7 - (0xd)			# LN: 419 | 
	xmem[i0] = a0g; i0 += 1			# LN: 419, 419 | 
	xmem[i0] = a0h; i0 += 1			# LN: 419, 419 | 
	xmem[i0] = a0l			# LN: 419 | 
cline_419_0:			/* LN: 420 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 420 | 
	a0g = xmem[i0]; i0 += 1			# LN: 420, 420 | 
	a0h = xmem[i0]; i0 += 1			# LN: 420, 420 | 
	a0l = xmem[i0]			# LN: 420 | 
	i0 = i7 - (0xd)			# LN: 420 | 
	a1g = xmem[i0]; i0 += 1			# LN: 420, 420 | 
	a1h = xmem[i0]; i0 += 1			# LN: 420, 420 | 
	a1l = xmem[i0]			# LN: 420 | 
	a0 = a0 + a1			# LN: 420 | 
	i0 = i7 - (0x9)			# LN: 420 | 
	xmem[i0] = a0g; i0 += 1			# LN: 420, 420 | 
	xmem[i0] = a0h; i0 += 1			# LN: 420, 420 | 
	xmem[i0] = a0l			# LN: 420 | 
cline_420_0:			/* LN: 421 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 421 | 
	a0 = xmem[i0]			# LN: 421 | 
	uhalfword(a1) = (0x1)			# LN: 421 | 
	a0 = a0 + a1			# LN: 421 | 
	i0 = i7 - (0x6)			# LN: 421 | 
	xmem[i0] = a0h			# LN: 421 | 
cline_421_0:			/* LN: 423 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 423 | 
	a0 = xmem[i0]			# LN: 423 | 
	uhalfword(a1) = (0x1ff)			# LN: 423 | 
	a0 - a1			# LN: 423 | 
	if (a <= 0) jmp (else_0)			# LN: 423 | 
cline_423_0:			/* LN: 424 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 424 | 
	a0 = 0			# LN: 424 | 
	xmem[i0] = a0h			# LN: 424 | 
	jmp (endif_0)			# LN: 424 | 
cline_424_0:			/* LN: 426 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 423 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 423 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 426 | 
	i0 = xmem[i0]			# LN: 426 | 
	i1 = i7 - (0x3)			# LN: 426 | 
	i0 += 1			# LN: 426 | 
	xmem[i1] = i0			# LN: 426 | 
cline_426_0:			/* LN: 427 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 427 | 
	i0 = xmem[i0]			# LN: 427 | 
	i1 = i7 - (0x4)			# LN: 427 | 
	i0 += 1			# LN: 427 | 
	xmem[i1] = i0			# LN: 427 | 
cline_427_0:			/* LN: 407 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 428 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xa)			# LN: 407 | 
	a0 = xmem[i0]			# LN: 407 | 
	uhalfword(a1) = (0x1)			# LN: 407 | 
	a0 = a0 + a1			# LN: 407 | 
	i0 = i7 - (0xa)			# LN: 407 | 
label_end_92:			# LN: 407 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 407 | 
cline_407_1:			/* LN: 431 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 407 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 431 | 
	a0g = xmem[i0]; i0 += 1			# LN: 431, 431 | 
	a0h = xmem[i0]; i0 += 1			# LN: 431, 431 | 
	a0l = xmem[i0]			# LN: 431 | 
	xmem[_tremolo_data + 4] = a0			# LN: 431 | 
cline_431_0:			/* LN: 432 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 432 | 
	a0 = xmem[i0]			# LN: 432 | 
	xmem[_tremolo_data + 8] = a0h			# LN: 432 | 
cline_432_0:			/* LN: 433 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_222)			# LN: 433 | 
__epilogue_222:			/* LN: 433 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0xd)			# LN: 433 | 
	i7 -= 1			# LN: 433 | 
	ret			# LN: 433 | 
