#include <stdio.h>
#include <dsplib\wavefile.h>
#include <stdfix.h>
#include <string.h>
#include"common.h"

#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 8
#define SAMPLE_RATE 48000
#define INVERSE_SAMPLE_RATE ACCUM_NUM(0.00002083333333333333333)

fract sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];

////////////////////////////////////////////////////////////////
// Buffer pointers [L R][Ls Rs]
////////////////////////////////////////////////////////////////
__memY fract* sampleBufferLeft = sampleBuffer[0];
__memY fract* sampleBufferRight = sampleBuffer[1];
__memY fract* sampleBufferLeftSide = sampleBuffer[2];
__memY fract* sampleBufferRightSide = sampleBuffer[3];
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
// Input gain. Default -4dB.
////////////////////////////////////////////////////////////////
fract inputGain;
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
// Number of output channels. Default 4.
////////////////////////////////////////////////////////////////
int outputChannelNum = 4;
////////////////////////////////////////////////////////////////
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
	fract LFO_frequency;			// LFO frequency (Hz)
	fract depth;					// Depth of effect (0-1)
	wave_forms_t   waveform;		// What shape should be used for the LFO
	fract lfoPhase;
	accum inverseSampleRate;
} tremolo_struct_t;
/////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////
// Tremolo effect parameters
/////////////////////////////////////////////////////////////////////////////////
__memX tremolo_struct_t tremolo_data;
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
	inputGain = FRACT_NUM(0.63);
	tremolo_data.LFO_frequency = FRACT_NUM(1.0);
	tremolo_data.depth = FRACT_NUM(1.0);
	tremolo_data.waveform = kWaveformSquare;
	tremolo_data.lfoPhase = FRACT_NUM(0.0);
	tremolo_data.inverseSampleRate = INVERSE_SAMPLE_RATE;
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
fract lfo(accum phase);

void tremolo_procces(__memY fract* input, __memY fract* output)
{
	/*DSPaccum ph;
	DSPaccum temp_phase;
	DSPaccum temp_depth;
	DSPfract* p_in = input;
	DSPfract* p_out = output;
	DSPfract temp_lfo;
	DSPaccum outVal;
	*/
	accum ph;
	__memY fract* p_in = input;
	__memY fract* p_out = output;
	fract temp_lfo = FRACT_NUM(0.0);
	accum temp_depth;
	accum temp_phase;

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

	/*	temp = tremolo_data.depth*lfo(ph);
		outVal = (DSPaccum)*p_in *(ACCUM_NUM(1.0) - temp);
		*p_out = (DSPfract)outVal;
*/
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

fract lfo(accum phase)
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
			return FRACT_NUM(1.0);
		}
		else if (phase < ACCUM_NUM(0.5))
		{
			return FRACT_NUM(1.0) - (ACCUM_NUM(0.78125) << 6)*(phase - ACCUM_NUM(0.48));
		}
		else if (phase < ACCUM_NUM(0.98))
		{
			return FRACT_NUM(0.0);
		}
		else
		{
			return (ACCUM_NUM(0.78125)<<6) * (phase - ACCUM_NUM(0.98));
		}
	}
	else
	{
		return FRACT_NUM(0.5);// + FRACT_NUM(0.5)*sinf(2.0 * PI * phase);
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
	__memY fract* p_L = sampleBufferLeft;
	__memY fract* p_R = sampleBufferRight;
	accum temp;

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

 
int main(int argc, char *argv[])
 {
    WAVREAD_HANDLE *wav_in;
    WAVWRITE_HANDLE *wav_out;
	
	char WavInputName[256];
	char WavOutputName[256];
	
    int nChannels;
    int OutChannels = 4;
	int bitsPerSample;
    int sampleRate;
    int iNumSamples;
    int i;

	// Init channel buffers
	for(i=0; i<MAX_NUM_CHANNEL; i++)
		memset(&sampleBuffer[i],0,BLOCK_SIZE);
    
	// Open input wav file
	//-------------------------------------------------
	strcpy(WavInputName,argv[0]);
	wav_in = cl_wavread_open(WavInputName);
	 if(wav_in == NULL)
    {
        printf("Error: Could not open wavefile.\n");
        return -1;
    }
	//-------------------------------------------------
	
	// Read input wav header
	//-------------------------------------------------
	nChannels = cl_wavread_getnchannels(wav_in);
    bitsPerSample = cl_wavread_bits_per_sample(wav_in);
    sampleRate = cl_wavread_frame_rate(wav_in);
    iNumSamples =  cl_wavread_number_of_frames(wav_in);
	//-------------------------------------------------
	
	// Open output wav file
	//-------------------------------------------------
	strcpy(WavOutputName,argv[1]);
	wav_out = cl_wavwrite_open(WavOutputName, bitsPerSample, OutChannels, sampleRate);
	if(!wav_out)
    {
        printf("Error: Could not open wavefile.\n");
        return -1;
    }
	//-------------------------------------------------
	
	// Processing loop
	//-------------------------------------------------	
    {
		int i;
		int j;
		int k;
		int sample;
		
		// exact file length should be handled correctly...
		for(i=0; i<iNumSamples/BLOCK_SIZE; i++)
		{	
			for(j=0; j<BLOCK_SIZE; j++)
			{
				for(k=0; k<nChannels; k++)
				{	
					sample = cl_wavread_recvsample(wav_in);
        			sampleBuffer[k][j] = rbits(sample);
				}
			}

			processing_foo();

			for(j=0; j<BLOCK_SIZE; j++)
			{
				for(k=0; k<OutChannels; k++)
				{	
					sample = bitsr(sampleBuffer[k][j]);
					cl_wavwrite_sendsample(wav_out, sample);
				}
			}		
		}
	}
	
	// Close files
	//-------------------------------------------------	
    cl_wavread_close(wav_in);
    cl_wavwrite_close(wav_out);
	//-------------------------------------------------	

    return 0;
 }
