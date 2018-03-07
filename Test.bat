: Delete log files first.
cd OutCmp
:del output1_Model0_vs_Model1.txt
del out_2ch_contour_model0_vs_model1.txt
:del whiteNoise_Model2_vs_Model3.txt

cd ..

: Execute Model 0, Model 1, Model 2 and Model 3
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

: Generate new logs
echo model0 vs model1: >> OutCmp//out_2ch_contour_model0_vs_model1.txt
"tools//PCMCompare.exe" OutStreams//out_2ch_contour_ne40_24b_48k_model0.wav OutStreams//out_2ch_contour_ne40_24b_48k_model1.wav >> OutCmp//out_2ch_contour_model0_vs_model1.txt
echo model1 vs model2: >> OutCmp//out_2ch_contour_model1_vs_model2.txt
"tools//PCMCompare.exe" OutStreams//out_2ch_contour_ne40_24b_48k_model1.wav OutStreams//out_2ch_contour_ne40_24b_48k_model2.wav >> OutCmp//out_2ch_contour_model1_vs_model2.txt

:: TO DO: Compare output of model1 and model2 and store the result in OutCmp//whiteNoise_Model1_vs_Model2.txt


