: Delete log files first.




:Execute Model 0, Model 1
cd projekat_model3\SULDWavTemplate\


c:\CirrusDSP\bin\cmdline_simulator.exe -project SimulatorConfigurationTemp.sbr -max_cycles 10000000


cd ..
cd ..
cd OutStreams
cd ..


:"..//tools//PCMCompare.exe" OutStreams//speech_out_21.wav OutStreams//speech_out_31.wav 2> OutCmp//speech_Model2_vs_Model3.txt
"tools//PCMCompare.exe" OutStreams//Freq_sweep_model2.wav OutStreams//Freq_sweep_model3.wav 2> OutCmp//Freq_sweep_Model2_vs_Model3.txt

pause