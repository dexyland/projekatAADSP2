: Delete log files first.
cd OutCmp

del compare_log.txt

cd ..

: Execute Model 0, Model 1, Model 2 and Model 3 with 2ch_contour_ne40_24b_48k test stream
cd projekat_model0//Debug
"projekat_model0.exe" "..//..//TestStreams//2ch_contour_ne40_24b_48k.wav" "..//..//OutStreams//out_2ch_contour_ne40_24b_48k_model0.wav" "-4"
cd .. 
cd ..
cd projekat_model1//Debug
"projekat_model1.exe" "..//..//TestStreams//2ch_contour_ne40_24b_48k.wav" "..//..//OutStreams//out_2ch_contour_ne40_24b_48k_model1.wav" "-4"
cd ..
cd ..
cd projekat_model2//Debug
"projekat_model2.exe" "..//..//TestStreams//2ch_contour_ne40_24b_48k.wav" "..//..//OutStreams//out_2ch_contour_ne40_24b_48k_model2.wav" "-4"
cd ..
cd ..

: Execute Model 0, Model 1, Model 2 and Model 3 with 2ch_lvl_amt_48k test stream
cd projekat_model0//Debug
"projekat_model0.exe" "..//..//TestStreams//2ch_lvl_amt_48k.wav" "..//..//OutStreams//2ch_lvl_amt_48k_model0.wav" "-4"
cd .. 
cd ..
cd projekat_model1//Debug
"projekat_model1.exe" "..//..//TestStreams//2ch_lvl_amt_48k.wav" "..//..//OutStreams//2ch_lvl_amt_48k_model1.wav" "-4"
cd ..
cd ..
cd projekat_model2//Debug
"projekat_model2.exe" "..//..//TestStreams//2ch_lvl_amt_48k.wav" "..//..//OutStreams//2ch_lvl_amt_48k_model2.wav" "-4"
cd ..
cd ..

: Execute Model 0, Model 1, Model 2 and Model 3 Amp_Sweep test stream
cd projekat_model0//Debug
"projekat_model0.exe" "..//..//TestStreams//Amp_Sweep.wav" "..//..//OutStreams//Amp_Sweep_model0.wav" "-4"
cd .. 
cd ..
cd projekat_model1//Debug
"projekat_model1.exe" "..//..//TestStreams//Amp_Sweep.wav" "..//..//OutStreams//Amp_Sweep_model1.wav" "-4"
cd ..
cd ..
cd projekat_model2//Debug
"projekat_model2.exe" "..//..//TestStreams//Amp_Sweep.wav" "..//..//OutStreams//Amp_Sweep_model2.wav" "-4"
cd ..
cd ..

: Execute Model 0, Model 1, Model 2 and Model 3 with Freq_sweep test stream
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

: Execute Model 0, Model 1, Model 2 and Model 3 Ch_Numbers test stream
cd projekat_model0//Debug
"projekat_model0.exe" "..//..//TestStreams//Ch_Numbers.wav" "..//..//OutStreams//Ch_Numbers_model0.wav" "-4"
cd .. 
cd ..
cd projekat_model1//Debug
"projekat_model1.exe" "..//..//TestStreams//Ch_Numbers.wav" "..//..//OutStreams//Ch_Numbers_model1.wav" "-4"
cd ..
cd ..
cd projekat_model2//Debug
"projekat_model2.exe" "..//..//TestStreams//Ch_Numbers.wav" "..//..//OutStreams//Ch_Numbers_model2.wav" "-4"
cd ..
cd ..

: Execute Model 0, Model 1, Model 2 and Model 3 with Multi_Tone test stream
cd projekat_model0//Debug
"projekat_model0.exe" "..//..//TestStreams//Multi_Tone.wav" "..//..//OutStreams//Multi_Tone_model0.wav" "-4"
cd .. 
cd ..
cd projekat_model1//Debug
"projekat_model1.exe" "..//..//TestStreams//Multi_Tone.wav" "..//..//OutStreams//Multi_Tone_model1.wav" "-4"
cd ..
cd ..
cd projekat_model2//Debug
"projekat_model2.exe" "..//..//TestStreams//Multi_Tone.wav" "..//..//OutStreams//Multi_Tone_model2.wav" "-4"
cd ..
cd ..

: Execute Model 0, Model 1, Model 2 and Model 3 with titanic_horn test stream
cd projekat_model0//Debug
"projekat_model0.exe" "..//..//TestStreams//titanic_horn.wav" "..//..//OutStreams//out_titanic_horn_model0.wav" "-4"
cd .. 
cd ..
cd projekat_model1//Debug
"projekat_model1.exe" "..//..//TestStreams//titanic_horn.wav" "..//..//OutStreams//out_titanic_horn_model1.wav" "-4"
cd ..
cd ..
cd projekat_model2//Debug
"projekat_model2.exe" "..//..//TestStreams//titanic_horn.wav" "..//..//OutStreams//out_titanic_horn_model2.wav" "-4"
cd ..
cd ..

: Execute Model 0, Model 1, Model 2 and Model 3 with Tone_L1k_R3k test stream
cd projekat_model0//Debug
"projekat_model0.exe" "..//..//TestStreams//Tone_L1k_R3k.wav" "..//..//OutStreams//Tone_L1k_R3k_model0.wav" "-4"
cd .. 
cd ..
cd projekat_model1//Debug
"projekat_model1.exe" "..//..//TestStreams//Tone_L1k_R3k.wav" "..//..//OutStreams//Tone_L1k_R3k_model1.wav" "-4"
cd ..
cd ..
cd projekat_model2//Debug
"projekat_model2.exe" "..//..//TestStreams//Tone_L1k_R3k.wav" "..//..//OutStreams//Tone_L1k_R3k_model2.wav" "-4"
cd ..
cd ..

: Execute Model 0, Model 1, Model 2 and Model 3 with WhiteNoise test stream
cd projekat_model0//Debug
"projekat_model0.exe" "..//..//TestStreams//WhiteNoise.wav" "..//..//OutStreams//WhiteNoise_model0.wav" "-4"
cd .. 
cd ..
cd projekat_model1//Debug
"projekat_model1.exe" "..//..//TestStreams//WhiteNoise.wav" "..//..//OutStreams//WhiteNoise_model1.wav" "-4"
cd ..
cd ..
cd projekat_model2//Debug
"projekat_model2.exe" "..//..//TestStreams//WhiteNoise.wav" "..//..//OutStreams//WhiteNoise_model2.wav" "-4"
cd ..
cd ..



: Generate new logs
:out_2ch_contour
echo . >> OutCmp//compare_log.txt
echo #out_2ch_contour test: >> OutCmp//compare_log.txt
echo   -model0 vs model1: >> OutCmp//compare_log.txt
"tools//PCMCompare.exe" OutStreams//out_2ch_contour_ne40_24b_48k_model0.wav OutStreams//out_2ch_contour_ne40_24b_48k_model1.wav >> OutCmp//compare_log.txt
echo   -model1 vs model2: >> OutCmp//compare_log.txt
"tools//PCMCompare.exe" OutStreams//out_2ch_contour_ne40_24b_48k_model1.wav OutStreams//out_2ch_contour_ne40_24b_48k_model2.wav >> OutCmp//compare_log.txt

:2ch_lvl_amt_48k
echo . >> OutCmp//compare_log.txt
echo #2ch_lvl_amt_48k test: >> OutCmp//compare_log.txt
echo   -model0 vs model1: >> OutCmp//compare_log.txt
"tools//PCMCompare.exe" OutStreams//2ch_lvl_amt_48k_model0.wav OutStreams//2ch_lvl_amt_48k_model1.wav >> OutCmp//compare_log.txt
echo   -model1 vs model2: >> OutCmp//compare_log.txt
"tools//PCMCompare.exe" OutStreams//2ch_lvl_amt_48k_model1.wav OutStreams//2ch_lvl_amt_48k_model2.wav >> OutCmp//compare_log.txt

:Amp_Sweep
echo . >> OutCmp//compare_log.txt
echo #Amp_sweep test: >> OutCmp//compare_log.txt
echo   -model0 vs model1: >> OutCmp//compare_log.txt
"tools//PCMCompare.exe" OutStreams//Amp_Sweep_model0.wav OutStreams//Amp_Sweep_model1.wav >> OutCmp//compare_log.txt
echo   -model1 vs model2: >> OutCmp//compare_log.txt
"tools//PCMCompare.exe" OutStreams//Amp_Sweep_model1.wav OutStreams//Amp_Sweep_model2.wav >> OutCmp//compare_log.txt

:Freq_sweep
echo . >> OutCmp//compare_log.txt
echo #Freq_sweep test: >> OutCmp//compare_log.txt
echo   -model0 vs model1: >> OutCmp//compare_log.txt
"tools//PCMCompare.exe" OutStreams//Freq_sweep_model0.wav OutStreams//Freq_sweep_model1.wav >> OutCmp//compare_log.txt
echo   -model1 vs model2: >> OutCmp//compare_log.txt
"tools//PCMCompare.exe" OutStreams//Freq_sweep_model1.wav OutStreams//Freq_sweep_model2.wav >> OutCmp//compare_log.txt

:Ch_Numbers
echo . >> OutCmp//compare_log.txt
echo #Ch_Numbers test: >> OutCmp//compare_log.txt
echo   -model0 vs model1: >> OutCmp//compare_log.txt
"tools//PCMCompare.exe" OutStreams//Ch_Numbers_model0.wav OutStreams//Ch_Numbers_model1.wav >> OutCmp//compare_log.txt
echo   -model1 vs model2: >> OutCmp//compare_log.txt
"tools//PCMCompare.exe" OutStreams//Ch_Numbers_model1.wav OutStreams//Ch_Numbers_model2.wav >> OutCmp//compare_log.txt

:Titanic_horn
echo . >> OutCmp//compare_log.txt
echo #Titanic_horn test: >> OutCmp//compare_log.txt
echo   -model0 vs model1: >> OutCmp//compare_log.txt
"tools//PCMCompare.exe" OutStreams//out_titanic_horn_model0.wav OutStreams//out_titanic_horn_model1.wav >> OutCmp//compare_log.txt
echo   -model1 vs model2: >> OutCmp//compare_log.txt
"tools//PCMCompare.exe" OutStreams//out_titanic_horn_model1.wav OutStreams//out_titanic_horn_model2.wav >> OutCmp//compare_log.txt

:WhiteNoise
echo . >> OutCmp//compare_log.txt
echo #WhiteNoise test: >> OutCmp//compare_log.txt
echo   -model0 vs model1: >> OutCmp//compare_log.txt
"tools//PCMCompare.exe" OutStreams//WhiteNoise_model0.wav OutStreams//WhiteNoise_model1.wav >> OutCmp//compare_log.txt
echo   -model1 vs model2: >> OutCmp//compare_log.txt
"tools//PCMCompare.exe" OutStreams//WhiteNoise_model1.wav OutStreams//WhiteNoise_model2.wav >> OutCmp//compare_log.txt

:Tone_L1k_R3k
echo . >> OutCmp//compare_log.txt
echo #Tone_L1k_R3k test: >> OutCmp//compare_log.txt
echo   -model0 vs model1: >> OutCmp//compare_log.txt
"tools//PCMCompare.exe" OutStreams//Tone_L1k_R3k_model0.wav OutStreams//Tone_L1k_R3k_model1.wav >> OutCmp//compare_log.txt
echo   -model1 vs model2: >> OutCmp//compare_log.txt
"tools//PCMCompare.exe" OutStreams//Tone_L1k_R3k_model1.wav OutStreams//Tone_L1k_R3k_model2.wav >> OutCmp//compare_log.txt

:Multi_Tone
echo . >> OutCmp//compare_log.txt
echo #Multi_Tone test: >> OutCmp//compare_log.txt
echo   -model0 vs model1: >> OutCmp//compare_log.txt
"tools//PCMCompare.exe" OutStreams//Multi_Tone_model0.wav OutStreams//Multi_Tone_model1.wav >> OutCmp//compare_log.txt
echo   -model1 vs model2: >> OutCmp//compare_log.txt
"tools//PCMCompare.exe" OutStreams//Multi_Tone_model1.wav OutStreams//Multi_Tone_model2.wav >> OutCmp//compare_log.txt


