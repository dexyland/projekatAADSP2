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
#include <math.h>
#include "WAVheader.h"
#include "table.h"

/////////////////////////////////////////////////////////////////////////////////
// Constant definitions
/////////////////////////////////////////////////////////////////////////////////
#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 8
#define SAMPLE_RATE 48000
#define PI 3.14159265358979323846
#define INVERSE_SAMPLE_RATE 0.000030517578125
#define MAX_LOOKUP_INDEX 511
/////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////
// IO buffers
/////////////////////////////////////////////////////////////////////////////////
double sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];
/////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////
// Input gain
/////////////////////////////////////////////////////////////////////////////////
double inputGain = 0.63;
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
	int numChannels;
	double LFO_frequency;			// LFO frequency (Hz)
	double depth;					// Depth of effect (0-1)
	wave_forms_t   waveform;		// What shape should be used for the LFO
	double lfoPhase;
	double inverseSampleRate;
	int index;
} tremolo_struct_t;
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
void tremolo_init(tremolo_struct_t * tremolo_data)
{
	// Set default values:
	tremolo_data->LFO_frequency = 1.0;
	tremolo_data->depth = 1.0;
	tremolo_data->waveform = kWaveformSquare;
	tremolo_data->lfoPhase = 0.0;
	tremolo_data->inverseSampleRate = INVERSE_SAMPLE_RATE;
	tremolo_data->index = 0;
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
double lfo(double phase, wave_forms_t waveform);

void tremolo_procces(double* input, double* output, tremolo_struct_t* data, int numSamples)
{
	//double ph;
	int index;

	// Make a temporary copy of any state variables which need to be
	// maintained between calls to processBlock(). Each channel needs to be processed identically
	// which means that the activity of processing one channel can't affect the state variable for
	// the next channel.
	//ph = data->lfoPhase;
	index = data->index;

	for (int i = 0; i < numSamples; ++i)
	{
		const double in = input[i];

		// Ring modulation is easy! Just multiply the waveform by a periodic carrier
		//int index = round(ph * 512.0);


		output[i] = in * (1.0f - p_sine_table[index]);
		//output[i] = in * (1.0f - data->depth*lfo(ph, data->waveform));

		// Update the carrier and LFO phases, keeping them in the range 0-1
		//ph += data->LFO_frequency*data->inverseSampleRate;
		index++;

		if (index > MAX_LOOKUP_INDEX)
			index = 0;

		//if (ph >= 1.0)
		//	ph -= 1.0;
	}
	// Having made a local copy of the state variables for each channel, now transfer the result
	// back to the main state variable so they will be preserved for the next call of processBlock()
	//data->lfoPhase = ph;
	data->index = index;
}

double lfo(double phase, wave_forms_t waveform)
{
	switch (waveform)
	{
		case kWaveformTriangle:
			if (phase < 0.25f)
			{
				return 0.5f + 2.0f*phase;
			}
			else if (phase < 0.75f)
			{
				return 1.0f - 2.0f*(phase - 0.25f);
			}
			else
			{
				return 2.0f*(phase - 0.75f);
			}
		case kWaveformSquare:
			if (phase < 0.5f)
			{
				return 1.0f;
			}
			else
			{
				return 0.0f;
			}
		case kWaveformSquareSlopedEdges:
			if (phase < 0.48f)
			{
				return 1.0f;
			}
			else if (phase < 0.5f)
			{
				return 1.0f - 50.0f*(phase - 0.48f);
			}
			else if (phase < 0.98f)
			{
				return 0.0f;
			}
			else
			{
				return 50.0f*(phase - 0.98f);
			}
		case kWaveformSine:
		default:
			return 0.5f + 0.5f*sinf(2.0 * PI * phase);
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
void processing_foo(int outputChannelNum, tremolo_struct_t* tremolo_data)
{
	for (int j = 0; j < BLOCK_SIZE; j++)
	{
		sampleBuffer[0][j] *= inputGain;
		sampleBuffer[1][j] *= inputGain;
	}

	// Call processing on L and R channels
	if (outputChannelNum == 4)
	{
		tremolo_procces(sampleBuffer[0], sampleBuffer[2], tremolo_data, BLOCK_SIZE);
		tremolo_procces(sampleBuffer[1], sampleBuffer[3], tremolo_data, BLOCK_SIZE);
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
int main(int argc, char* argv[])
{
	FILE *wav_in = NULL;
	FILE *wav_out = NULL;
	char WavInputName[256];
	char WavOutputName[256];
	WAV_HEADER inputWAVhdr, outputWAVhdr;
	tremolo_struct_t tremolo_data;
	int outputChannelNum = 4;

	// Init channel buffers
	for (int i = 0; i<MAX_NUM_CHANNEL; i++)
		for (int j = 0; j<BLOCK_SIZE; j++)
			sampleBuffer[i][j] = 0;

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
	tremolo_init(&tremolo_data);

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

			processing_foo(outputChannelNum, &tremolo_data);

			for (int j = 0; j<BLOCK_SIZE; j++)
			{
				for (int k = 0; k<outputWAVhdr.fmt.NumChannels; k++)
				{
					sample = sampleBuffer[k][j] * SAMPLE_SCALE;	// crude, non-rounding 			
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