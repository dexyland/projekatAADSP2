: Delete log files first.
cd OutCmp

del out_2ch_contour_model0_vs_model1.txt
del out_2ch_contour_model1_vs_model2.txt
:del whiteNoise_Model2_vs_Model3.txt

cd ..

:: Execute Model 0, Model 1, Model 2 and Model 3 with 2ch_contour_ne40_24b_48k test stream
:cd projekat_model0//Debug
:"projekat_model0.exe" "..//..//TestStreams//2ch_contour_ne40_24b_48k.wav" "..//..//OutStreams//out_2ch_contour_ne40_24b_48k_model0.wav" "-4"
:cd .. 
:cd ..
:cd projekat_model1//Debug
:"projekat_model1.exe" "..//..//TestStreams//2ch_contour_ne40_24b_48k.wav" "..//..//OutStreams//out_2ch_contour_ne40_24b_48k_model1.wav" "-4"
:cd ..
:cd ..
:cd projekat_model2//Debug
:"projekat_model2.exe" "..//..//TestStreams//2ch_contour_ne40_24b_48k.wav" "..//..//OutStreams//out_2ch_contour_ne40_24b_48k_model2.wav" "-4"
:cd ..
:cd ..
:
:: Execute Model 0, Model 1, Model 2 and Model 3 with 2ch_lvl_amt_48k test stream
:cd projekat_model0//Debug
:"projekat_model0.exe" "..//..//TestStreams//2ch_lvl_amt_48k.wav" "..//..//OutStreams//2ch_lvl_amt_48k_model0.wav" "-4"
:cd .. 
:cd ..
:cd projekat_model1//Debug
:"projekat_model1.exe" "..//..//TestStreams//2ch_lvl_amt_48k.wav" "..//..//OutStreams//2ch_lvl_amt_48k_model1.wav" "-4"
:cd ..
:cd ..
:cd projekat_model2//Debug
:"projekat_model2.exe" "..//..//TestStreams//2ch_lvl_amt_48k.wav" "..//..//OutStreams//2ch_lvl_amt_48k_model2.wav" "-4"
:cd ..
:cd ..
:
:: Execute Model 0, Model 1, Model 2 and Model 3 Amp_Sweep test stream
:cd projekat_model0//Debug
:"projekat_model0.exe" "..//..//TestStreams//Amp_Sweep.wav" "..//..//OutStreams//Amp_Sweep_model0.wav" "-4"
:cd .. 
:cd ..
:cd projekat_model1//Debug
:"projekat_model1.exe" "..//..//TestStreams//Amp_Sweep.wav" "..//..//OutStreams//Amp_Sweep_model1.wav" "-4"
:cd ..
:cd ..
:cd projekat_model2//Debug
:"projekat_model2.exe" "..//..//TestStreams//Amp_Sweep.wav" "..//..//OutStreams//Amp_Sweep_model2.wav" "-4"
:cd ..
:cd ..
:
:: Execute Model 0, Model 1, Model 2 and Model 3 with Freq_sweep test stream
cd projekat_model0//Debug
"projekat_model0.exe" "..//..//TestStreams//Freq_sweep.wav" "..//..//OutStreams//Freq_sweep_model0.wav" "-4"
cd .. 
cd ..
cd projekat_model1//Debug
"projekat_model1.exe" "..//..//TestStreams//Freq_sweep.wav" "..//..//OutStreams//Freq_sweep_model1.wav" "-4"
cd ..
cd ..
cd projekat_model2//Debug
"projekat_model2.exe" "..//..//TestStreams//Freq_sweep.wav" "..//..//OutStreams//Freq_sweep_model2.wav" "-4"
cd ..
cd ..

:: Execute Model 0, Model 1, Model 2 and Model 3 Ch_Numbers test stream
:cd projekat_model0//Debug
:"projekat_model0.exe" "..//..//TestStreams//Ch_Numbers.wav" "..//..//OutStreams//Ch_Numbers_model0.wav" "-4"
:cd .. 
:cd ..
:cd projekat_model1//Debug
:"projekat_model1.exe" "..//..//TestStreams//Ch_Numbers.wav" "..//..//OutStreams//Ch_Numbers_model1.wav" "-4"
:cd ..
:cd ..
:cd projekat_model2//Debug
:"projekat_model2.exe" "..//..//TestStreams//Ch_Numbers.wav" "..//..//OutStreams//Ch_Numbers_model2.wav" "-4"
:cd ..
:cd ..
:
:: Execute Model 0, Model 1, Model 2 and Model 3 with Multi_Tone test stream
:cd projekat_model0//Debug
:"projekat_model0.exe" "..//..//TestStreams//Multi_Tone.wav" "..//..//OutStreams//Multi_Tone_model0.wav" "-4"
:cd .. 
:cd ..
:cd projekat_model1//Debug
:"projekat_model1.exe" "..//..//TestStreams//Multi_Tone.wav" "..//..//OutStreams//Multi_Tone_model1.wav" "-4"
:cd ..
:cd ..
:cd projekat_model2//Debug
:"projekat_model2.exe" "..//..//TestStreams//Multi_Tone.wav" "..//..//OutStreams//Multi_Tone_model2.wav" "-4"
:cd ..
:cd ..
:
:: Execute Model 0, Model 1, Model 2 and Model 3 with Test3_WMA_v9_1pCBR_320kbps_48Khz_2 test stream
:cd projekat_model0//Debug
:"projekat_model0.exe" "..//..//TestStreams//Test3_WMA_v9_1pCBR_320kbps_48Khz_2.wav" "..//..//OutStreams//Test3_WMA_v9_1pCBR_320kbps_48Khz_2_model0.wav" "-4"
:cd .. 
:cd ..
:cd projekat_model1//Debug
:"projekat_model1.exe" "..//..//TestStreams//Test3_WMA_v9_1pCBR_320kbps_48Khz_2.wav" "..//..//OutStreams//Test3_WMA_v9_1pCBR_320kbps_48Khz_2_model1.wav" "-4"
:cd ..
:cd ..
:cd projekat_model2//Debug
:"projekat_model2.exe" "..//..//TestStreams//Test3_WMA_v9_1pCBR_320kbps_48Khz_2.wav" "..//..//OutStreams//Test3_WMA_v9_1pCBR_320kbps_48Khz_2_model2.wav" "-4"
:cd ..
:cd ..

: Execute Model 0, Model 1, Model 2 and Model 3 with titanic_horn test stream
:cd projekat_model0//Debug
:"projekat_model0.exe" "..//..//TestStreams//titanic_horn.wav" "..//..//OutStreams//out_titanic_horn_model0.wav" "-4"
:cd .. 
:cd ..
:cd projekat_model1//Debug
:"projekat_model1.exe" "..//..//TestStreams//titanic_horn.wav" "..//..//OutStreams//out_titanic_horn_model1.wav" "-4"
:cd ..
:cd ..
:cd projekat_model2//Debug
:"projekat_model2.exe" "..//..//TestStreams//titanic_horn.wav" "..//..//OutStreams//out_titanic_horn_model2.wav" "-4"
:cd ..
:cd ..

:: Execute Model 0, Model 1, Model 2 and Model 3 with Tone_L1k_R3k test stream
:cd projekat_model0//Debug
:"projekat_model0.exe" "..//..//TestStreams//Tone_L1k_R3k.wav" "..//..//OutStreams//Tone_L1k_R3k_model0.wav" "-4"
:cd .. 
:cd ..
:cd projekat_model1//Debug
:"projekat_model1.exe" "..//..//TestStreams//Tone_L1k_R3k.wav" "..//..//OutStreams//Tone_L1k_R3k_model1.wav" "-4"
:cd ..
:cd ..
:cd projekat_model2//Debug
:"projekat_model2.exe" "..//..//TestStreams//Tone_L1k_R3k.wav" "..//..//OutStreams//Tone_L1k_R3k_model2.wav" "-4"
:cd ..
:cd ..

: Execute Model 0, Model 1, Model 2 and Model 3 with WhiteNoise test stream
:cd projekat_model0//Debug
:"projekat_model0.exe" "..//..//TestStreams//WhiteNoise.wav" "..//..//OutStreams//WhiteNoise_model0.wav" "-4"
:cd .. 
:cd ..
:cd projekat_model1//Debug
:"projekat_model1.exe" "..//..//TestStreams//WhiteNoise.wav" "..//..//OutStreams//WhiteNoise_model1.wav" "-4"
:cd ..
:cd ..
:cd projekat_model2//Debug
:"projekat_model2.exe" "..//..//TestStreams//WhiteNoise.wav" "..//..//OutStreams//WhiteNoise_model2.wav" "-4"
:cd ..
:cd ..



: Generate new logs
::out_2ch_contour
:echo model0 vs model1: >> OutCmp//out_2ch_contour_model0_vs_model1.txt
:"tools//PCMCompare.exe" OutStreams//out_2ch_contour_ne40_24b_48k_model0.wav OutStreams//out_2ch_contour_ne40_24b_48k_model1.wav >> OutCmp//out_2ch_contour_model0_vs_model1.txt
:echo model1 vs model2: >> OutCmp//out_2ch_contour_model1_vs_model2.txt
:"tools//PCMCompare.exe" OutStreams//out_2ch_contour_ne40_24b_48k_model1.wav OutStreams//out_2ch_contour_ne40_24b_48k_model2.wav >> OutCmp//out_2ch_contour_model1_vs_model2.txt
:
::2ch_lvl_amt_48k
:echo model0 vs model1: >> OutCmp//2ch_lvl_amt_48k//model0_vs_model1.txt
:"tools//PCMCompare.exe" OutStreams//2ch_lvl_amt_48k_model0.wav OutStreams//2ch_lvl_amt_48k_model1.wav >> OutCmp//2ch_lvl_amt_48k//model0_vs_model1.txt
:echo model1 vs model2: >> OutCmp//2ch_lvl_amt_48k//model1_vs_model2.txt
:"tools//PCMCompare.exe" OutStreams//2ch_lvl_amt_48k_model1.wav OutStreams//2ch_lvl_amt_48k_model2.wav >> OutCmp//2ch_lvl_amt_48k//model1_vs_model2.txt
:
::Amp_Sweep
:echo model0 vs model1: >> OutCmp//Amp_Sweep//model0_vs_model1.txt
:"tools//PCMCompare.exe" OutStreams//Amp_Sweep_model0.wav OutStreams//Amp_Sweep_model1.wav >> OutCmp//Amp_Sweep//model0_vs_model1.txt
:echo model1 vs model2: >> OutCmp//Amp_Sweep//model1_vs_model2.txt
:"tools//PCMCompare.exe" OutStreams//Amp_Sweep_model1.wav OutStreams//Amp_Sweep_model2.wav >> OutCmp//Amp_Sweep//model1_vs_model2.txt

::Freq_sweep
:echo model0 vs model1: >> OutCmp//Freq_sweep//model0_vs_model1.txt
:"tools//PCMCompare.exe" OutStreams//Freq_sweep_model0.wav OutStreams//Freq_sweep_model1.wav >> OutCmp//Freq_sweep//model0_vs_model1.txt
:echo model1 vs model2: >> OutCmp//Freq_sweep//model1_vs_model2.txt
:"tools//PCMCompare.exe" OutStreams//Freq_sweep_model1.wav OutStreams//Freq_sweep_model2.wav >> OutCmp//Freq_sweep//model1_vs_model2.txt
:
::Ch_Numbers
:echo model0 vs model1: >> OutCmp//Ch_Numbers//model0_vs_model1.txt
:"tools//PCMCompare.exe" OutStreams//Ch_Numbers_model0.wav OutStreams//Ch_Numbers_model1.wav >> OutCmp//Ch_Numbers//model0_vs_model1.txt
:echo model1 vs model2: >> OutCmp//Ch_Numbers//model1_vs_model2.txt
:"tools//PCMCompare.exe" OutStreams//Ch_Numbers_model1.wav OutStreams//Ch_Numbers_model2.wav >> OutCmp//Ch_Numbers//model1_vs_model2.txt

echo model0 vs model1: >> OutCmp//titanic_model0_vs_model1.txt
"tools//PCMCompare.exe" OutStreams//out_titanic_horn_model0.wav OutStreams//out_titanic_horn_model1.wav >> OutCmp//titanic_model0_vs_model1.txt
echo model1 vs model2: >> OutCmp//titanic_model0_vs_model1.txt
"tools//PCMCompare.exe" OutStreams//out_titanic_horn_model1.wav OutStreams//out_titanic_horn_model2.wav >> OutCmp//titanic_model0_vs_model1.txt


:: TO DO: Compare output of model1 and model2 and store the result in OutCmp//whiteNoise_Model1_vs_Model2.txt


