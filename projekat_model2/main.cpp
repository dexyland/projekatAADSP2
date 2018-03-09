/////////////////////////////////////////////////////////////////////////////////
//
// @file main.cpp
//
// Module: tremolo
// Description:  Add tremolo effect to input signal
// $Source: /
// $Revision: 1.0 
// $Date:    02.03.2018.
// $Author:  Dejan Martinov
//
/////////////////////////////////////////////////////////////////////////////////

#include <stdlib.h>
#include <string.h>
//#include <math.h>
#include "stdfix_emu.h"
#include "fixed_point_math.h"
#include "common.h"
#include "WAVheader.h"

/////////////////////////////////////////////////////////////////////////////////
// Constant definitions
/////////////////////////////////////////////////////////////////////////////////
#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 8
#define SAMPLE_RATE 48000
#define PI 3.14159265358979323846
#define OUTPUT_CHANNELS_NUM 4
#define INVERSE_SAMPLE_RATE  0.00002083333333333333333
/////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////
// IO buffers
/////////////////////////////////////////////////////////////////////////////////
DSPfract sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];
/////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////
// Buffer pointers [L R][Ls Rs]
/////////////////////////////////////////////////////////////////////////////////
DSPfract* sampleBufferLeft = sampleBuffer[0];
DSPfract* sampleBufferRight = sampleBuffer[1];
DSPfract* sampleBufferLeftSide = sampleBuffer[2];
DSPfract* sampleBufferRightSide = sampleBuffer[3];
/////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////
// Input gain. Default -4dB.
/////////////////////////////////////////////////////////////////////////////////
DSPfract inputGain = FRACT_NUM(0.63);
/////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////
// Number of output channels. Default 4.
/////////////////////////////////////////////////////////////////////////////////
DSPint outputChannelNum = 4;
/////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////
// Control state structure
/////////////////////////////////////////////////////////////////////////////////
typedef enum
{
	kWaveformSine = 1,
	kWaveformTriangle,
	kWaveformSquare,
	kWaveformSquareSlopedEdges,
	kNumWaveforms
} wave_forms_t;

// Adjustable parameters:
typedef struct {
	DSPint numChannels;
	DSPfract LFO_frequency;			// LFO frequency (Hz)
	DSPfract depth;					// Depth of effect (0-1)
	wave_forms_t   waveform;		// What shape should be used for the LFO
	DSPfract lfoPhase;
	DSPaccum inverseSampleRate;
} tremolo_struct_t;
/////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////
// Tremolo effect parameters
/////////////////////////////////////////////////////////////////////////////////
tremolo_struct_t tremolo_data;
/////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////
// @Author	Dejan Martinov
// @Date	02.03.2018.
//
// Function:
// tremolo_init
//
// @param - tremolo_data - Control state structure
//
// @return - nothing
// Comment: Initialize tremolo structure
//
/////////////////////////////////////////////////////////////////////////////////
void tremolo_init()
{
	// Set default values:
	tremolo_data.LFO_frequency = FRACT_NUM(1.0);
	tremolo_data.depth = FRACT_NUM(1.0);
	tremolo_data.waveform = kWaveformSquare;
	tremolo_data.lfoPhase = FRACT_NUM(0.0);
	tremolo_data.inverseSampleRate = ACCUM_NUM(INVERSE_SAMPLE_RATE);
}

/////////////////////////////////////////////////////////////////////////////////
// @Author	Dejan Martinov
// @Date	02.03.2018.
//
// Function:
// tremolo_procces
//
// @param - input - Buffer with input samples
//		  - output - Buffer with output samples
//		  - data - Control state structure
//		  - numSamples - Length of buffer
//
// @return - nothing
// Comment: Apply tremolo to input samples
//
/////////////////////////////////////////////////////////////////////////////////
DSPfract lfo(DSPaccum phase);

void tremolo_procces(DSPfract* input, DSPfract* output)
{
	DSPaccum ph;
	DSPfract* p_in = input;
	DSPfract* p_out = output;
	DSPfract temp_lfo = FRACT_NUM(0.0);
	DSPaccum temp_depth;
	DSPaccum temp_phase;

	// Make a temporary copy of any state variables which need to be
	// maintained between calls to processBlock(). Each channel needs to be processed identically
	// which means that the activity of processing one channel can't affect the state variable for
	// the next channel.
	ph = tremolo_data.lfoPhase;

	for (; p_in <= input + BLOCK_SIZE - 1; ++p_in, ++p_out)
	{
		//const DSPfract in = (DSPfract)*p_in;

		// Ring modulation is easy! Just multiply the waveform by a periodic carrier
		temp_lfo = lfo(ph);
		temp_depth = tremolo_data.depth * temp_lfo;
		*p_out = *p_in * (FRACT_NUM(1.0) - temp_depth);

		// Update the carrier and LFO phases, keeping them in the range 0-1
		temp_phase = tremolo_data.inverseSampleRate;
		ph = ph + temp_phase;

		if (ph >= FRACT_NUM(1.0))
			ph -= FRACT_NUM(1.0);
	}
	// Having made a local copy of the state variables for each channel, now transfer the result
	// back to the main state variable so they will be preserved for the next call of processBlock()
	tremolo_data.lfoPhase = ph;
}

DSPfract lfo(DSPaccum phase)
{
	if (tremolo_data.waveform == kWaveformTriangle)
	{
		if (phase < ACCUM_NUM(0.25))
		{
			return ACCUM_NUM(0.5) + (phase<<1);
		}
		else if (phase < ACCUM_NUM(0.75))
		{
			return ACCUM_NUM(1.0) - ((phase - ACCUM_NUM(0.25))<<1);
		}
		else
		{
			return (phase - ACCUM_NUM(0.75))<<1;
		}
	}
	else if (tremolo_data.waveform == kWaveformSquare)
	{
		if (phase < FRACT_NUM(0.5))
		{
			return FRACT_NUM(1.0);
		}
		else
		{
			return FRACT_NUM(0.0);
		}
	}
	else if (tremolo_data.waveform == kWaveformSquareSlopedEdges)
	{
		if (phase < ACCUM_NUM(0.48))
		{
			return ACCUM_NUM(1.0);
		}
		else if (phase < ACCUM_NUM(0.5))
		{
			return ACCUM_NUM(1.0) - (ACCUM_NUM(0.78125) << 6)*(phase - ACCUM_NUM(0.48));
		}
		else if (phase < ACCUM_NUM(0.98))
		{
			return ACCUM_NUM(0.0);
		}
		else
		{
			return (ACCUM_NUM(0.78125)<<6) * (phase - ACCUM_NUM(0.98));
		}
	}
	else
	{
		//return FRACT_NUM(0.5) + FRACT_NUM(0.5)*sinf(2.0 * PI * phase);
	}
}


/////////////////////////////////////////////////////////////////////////////////
// @Author	Dejan Martinov
// @Date	02.03.2018.
//
// Function:
// processing_foo
//
// @param - input - Buffer with input samples
//		  - output - Buffer with output samples
//		  - data - Control state structure
//		  - numSamples - Length of buffer
//
// @return - nothing
// Comment: process input samples
//
/////////////////////////////////////////////////////////////////////////////////
void processing_foo()
{
	DSPfract* p_L = sampleBufferLeft;
	DSPfract* p_R = sampleBufferRight;
	DSPaccum temp;

	for (; p_L <= sampleBufferLeft + BLOCK_SIZE - 1; p_L++, p_R++)
	{
		temp = *p_L * inputGain;
		*p_L = temp;

		temp = *p_R * inputGain;
		*p_R = temp;
	}

	// Add tremolo effect on Ls and Rs channels
	if (outputChannelNum == 4)
	{
		tremolo_procces(sampleBufferLeft, sampleBufferLeftSide);
		tremolo_procces(sampleBufferRight, sampleBufferRightSide);
	}
}

/////////////////////////////////////////////////////////////////////////////////
// @Author	Dejan Martinov
// @Date	02.03.2018.
//
// Function:
// main
//
// @param - argv[1] - Input file name
//        - argv[2] - Output file name
// @return - nothing
// Comment: main routine of a program
//
/////////////////////////////////////////////////////////////////////////////////
DSPint main(DSPint argc, char* argv[])
{
	FILE *wav_in = NULL;
	FILE *wav_out = NULL;
	char WavInputName[256];
	char WavOutputName[256];
	WAV_HEADER inputWAVhdr, outputWAVhdr;

	DSPint outputChannelNum = 4;

	// Init channel buffers
	for (DSPint i = 0; i<MAX_NUM_CHANNEL; i++)
		for (DSPint j = 0; j<BLOCK_SIZE; j++)
			sampleBuffer[i][j] = FRACT_NUM(0.0);

	// check for input arguments (input gain and mode)
	if (argc >= 4)
	{
		inputGain = pow(10, atoi(argv[3]) / 20.0);
	}

	if (argc == 5)
	{
		if (strcmp(argv[4], "2_0_0") == 0)
		{
			outputChannelNum = 2;
		}
	}

	// Open input and output wav files
	//-------------------------------------------------
	strcpy(WavInputName, argv[1]);
	wav_in = OpenWavFileForRead(WavInputName, "rb");
	strcpy(WavOutputName, argv[2]);
	wav_out = OpenWavFileForRead(WavOutputName, "wb");
	//-------------------------------------------------

	// Read input wav header
	//-------------------------------------------------
	ReadWavHeader(wav_in, inputWAVhdr);
	//-------------------------------------------------

	// Set up output WAV header
	//-------------------------------------------------	
	outputWAVhdr = inputWAVhdr;
	outputWAVhdr.fmt.NumChannels = outputChannelNum; // change number of channels

	int oneChannelSubChunk2Size = inputWAVhdr.data.SubChunk2Size / inputWAVhdr.fmt.NumChannels;
	int oneChannelByteRate = inputWAVhdr.fmt.ByteRate / inputWAVhdr.fmt.NumChannels;
	int oneChannelBlockAlign = inputWAVhdr.fmt.BlockAlign / inputWAVhdr.fmt.NumChannels;

	outputWAVhdr.data.SubChunk2Size = oneChannelSubChunk2Size*outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.ByteRate = oneChannelByteRate*outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.BlockAlign = oneChannelBlockAlign*outputWAVhdr.fmt.NumChannels;

	// Write output WAV header to file
	//-------------------------------------------------
	WriteWavHeader(wav_out, outputWAVhdr);

	// Init tremolo module
	tremolo_init();

	printf("Starting processing loop ...\n");
	// Processing loop
	//-------------------------------------------------	
	{
		int sample;
		int BytesPerSample = inputWAVhdr.fmt.BitsPerSample / 8;
		const double SAMPLE_SCALE = -(double)(1 << 31);		//2^31
		int iNumSamples = inputWAVhdr.data.SubChunk2Size / (inputWAVhdr.fmt.NumChannels*inputWAVhdr.fmt.BitsPerSample / 8);

		// exact file length should be handled correctly...
		for (int i = 0; i<iNumSamples / BLOCK_SIZE; i++)
		{
			for (int j = 0; j<BLOCK_SIZE; j++)
			{
				for (int k = 0; k<inputWAVhdr.fmt.NumChannels; k++)
				{
					sample = 0; //debug
					fread(&sample, BytesPerSample, 1, wav_in);
					sample = sample << (32 - inputWAVhdr.fmt.BitsPerSample); // force signextend
					sampleBuffer[k][j] = sample / SAMPLE_SCALE;				// scale sample to 1.0/-1.0 range

					if (inputWAVhdr.fmt.NumChannels == 1)
					{
						sampleBuffer[1][j] = sample / SAMPLE_SCALE;
					}
				}
			}

			processing_foo();

			for (int j = 0; j<BLOCK_SIZE; j++)
			{
				for (int k = 0; k<outputWAVhdr.fmt.NumChannels; k++)
				{
					sample = sampleBuffer[k][j].toLong();	// crude, non-rounding 			
					sample = sample >> (32 - inputWAVhdr.fmt.BitsPerSample);
					fwrite(&sample, outputWAVhdr.fmt.BitsPerSample / 8, 1, wav_out);
				}
			}
		}
	}

	printf("Processing loop finished!\n");

	// Close files
	//-------------------------------------------------	
	fclose(wav_in);
	fclose(wav_out);
	//-------------------------------------------------	

	return 0;
}

