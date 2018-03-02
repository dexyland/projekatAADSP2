/////////////////////////////////////////////////////////////////////////////////
//
// @file main.cpp
//
// Module: multitapEcho
// Description:  Add multitap echo to input signal
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

/////////////////////////////////////////////////////////////////////////////////
// Constant definitions
/////////////////////////////////////////////////////////////////////////////////
#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 8
#define SAMPLE_RATE 48000
#define BLOCK_SIZE 16
#define PI 3.14159265358979323846
/////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////
// IO buffers
/////////////////////////////////////////////////////////////////////////////////
double sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];
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
	float LFO_frequency;			// LFO frequency (Hz)
	float depth;					// Depth of effect (0-1)
	wave_forms_t   waveform;		// What shape should be used for the LFO
	float lfoPhase;
	float inverseSampleRate;
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
// E-mail:	dejan.martinov94@yahoo.com
//
/////////////////////////////////////////////////////////////////////////////////
void tremolo_init(tremolo_struct_t * tremolo_data)
{
	// Set default values:
	tremolo_data->LFO_frequency = 2.0;
	tremolo_data->depth = 1.0;
	tremolo_data->waveform = kWaveformSine;
	tremolo_data->lfoPhase = 0.0;
	tremolo_data->inverseSampleRate = 1.0 / SAMPLE_RATE;
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
// Comment: Apply echo to input samples
//
// E-mail:	dejan.martinov94@yahoo.com
//
/////////////////////////////////////////////////////////////////////////////////
float lfo(float phase, wave_forms_t waveform);

void tremolo_procces(double* input, double* output, tremolo_struct_t* data, int numSamples)
{
	float ph;

	// Make a temporary copy of any state variables which need to be
	// maintained between calls to processBlock(). Each channel needs to be processed identically
	// which means that the activity of processing one channel can't affect the state variable for
	// the next channel.
	ph = data->lfoPhase;

	for (int i = 0; i < numSamples; ++i)
	{
		const float in = input[i];

		// Ring modulation is easy! Just multiply the waveform by a periodic carrier
		output[i] = in * (1.0f - data->depth*lfo(ph, data->waveform));

		// Update the carrier and LFO phases, keeping them in the range 0-1
		ph += data->LFO_frequency*data->inverseSampleRate;

		if (ph >= 1.0)
			ph -= 1.0;
	}
	// Having made a local copy of the state variables for each channel, now transfer the result
	// back to the main state variable so they will be preserved for the next call of processBlock()
	data->lfoPhase = ph;
}

float lfo(float phase, wave_forms_t waveform)
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
// main
//
// @param - argv[0] - Input file name
//        - argv[1] - Output file name
// @return - nothing
// Comment: main routine of a program
//
// E-mail:	dejan.martinov94@yahoo.com
//
/////////////////////////////////////////////////////////////////////////////////
int main(int argc, char* argv[])
{
	FILE *wav_in=NULL;
	FILE *wav_out=NULL;
	char WavInputName[256];
	char WavOutputName[256];
	WAV_HEADER inputWAVhdr, outputWAVhdr;
	tremolo_struct_t* tremolo_data;


	// Init channel buffers
	for(int i=0; i<MAX_NUM_CHANNEL; i++)
		memset(&sampleBuffer[i],0,BLOCK_SIZE);

	// Open input and output wav files
	//-------------------------------------------------
	strcpy(WavInputName,argv[1]);
	wav_in = OpenWavFileForRead (WavInputName,"rb");
	strcpy(WavOutputName,argv[2]);
	wav_out = OpenWavFileForRead (WavOutputName,"wb");
	//-------------------------------------------------

	// Read input wav header
	//-------------------------------------------------
	ReadWavHeader(wav_in,inputWAVhdr);
	//-------------------------------------------------
	
	// Set up output WAV header
	//-------------------------------------------------	
	outputWAVhdr = inputWAVhdr;
	outputWAVhdr.fmt.NumChannels = 4; // change number of channels

	int oneChannelSubChunk2Size = inputWAVhdr.data.SubChunk2Size/inputWAVhdr.fmt.NumChannels;
	int oneChannelByteRate = inputWAVhdr.fmt.ByteRate/inputWAVhdr.fmt.NumChannels;
	int oneChannelBlockAlign = inputWAVhdr.fmt.BlockAlign/inputWAVhdr.fmt.NumChannels;
	
	outputWAVhdr.data.SubChunk2Size = oneChannelSubChunk2Size*outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.ByteRate = oneChannelByteRate*outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.BlockAlign = oneChannelBlockAlign*outputWAVhdr.fmt.NumChannels;

	// Write output WAV header to file
	//-------------------------------------------------
	WriteWavHeader(wav_out,outputWAVhdr);

	// Init tremolo module
	tremolo_init(tremolo_data);

	// Processing loop
	//-------------------------------------------------	
	{
		int sample;
		int BytesPerSample = inputWAVhdr.fmt.BitsPerSample/8;
		const double SAMPLE_SCALE = -(double)(1 << 31);		//2^31
		int iNumSamples = inputWAVhdr.data.SubChunk2Size/(inputWAVhdr.fmt.NumChannels*inputWAVhdr.fmt.BitsPerSample/8);
		
		// exact file length should be handled correctly...
		for(int i=0; i<iNumSamples/BLOCK_SIZE; i++)
		{	
			for(int j=0; j<BLOCK_SIZE; j++)
			{
				
				for(int k=0; k<inputWAVhdr.fmt.NumChannels; k++)
				{	
					sample = 0; //debug
					fread(&sample, BytesPerSample, 1, wav_in);
					sample = sample << (32 - inputWAVhdr.fmt.BitsPerSample); // force signextend
					sampleBuffer[k][j] = sample / SAMPLE_SCALE;				// scale sample to 1.0/-1.0 range		
				}
			}

			for(int j=0; j<BLOCK_SIZE; j++)
			{
				sampleBuffer[0][j] *= 0.63;
				sampleBuffer[1][j] *= 0.63;
			}

			// Call processing on L and R channels
			tremolo_procces(sampleBuffer[0], sampleBuffer[2], tremolo_data, BLOCK_SIZE);
			tremolo_procces(sampleBuffer[1], sampleBuffer[3], tremolo_data, BLOCK_SIZE);
		}
	}
	
	// Close files
	//-------------------------------------------------	
	fclose(wav_in);
	fclose(wav_out);
	//-------------------------------------------------	

	return 0;
}