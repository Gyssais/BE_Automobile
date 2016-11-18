/*
 * adc.c
 *
 *  Created on: Nov 18, 2016
 *      Author: Theo
 */

#include "adc.h"
#include "MPC5604B.h"

int initAdc()
{
	 ADC.MCR.B.PWDN = 0; /* ADC enable */
	 ADC.MCR.B.OWREN = 1; // overwrite enabled
	 ADC.MCR.B.ADCLKSEL =1;
	 ADC.MCR.B.MODE = 0;   // one shot mode
	 
	 ADC.NCMR[0].R = 0; // Mask disable for all channels
	 ADC.NCMR[1].R = 0; // Mask disable for all channels
	 ADC.NCMR[2].R = 0; // Mask disable for all channels
	 ADC.JCMR[0].R = 0; // Mask disable for all channels
	 ADC.JCMR[1].R = 0; // Mask disable for all channels
	 ADC.JCMR[2].R = 0; // Mask disable for all channels
	 
	 return 0;
}


void startConversion()
{
	ADC.MSR.B.NSTART =1;
	
}

int setupPin(int pin)
{
	  SIU.PCR[pin].R = 0x2000; // pin  in analog mode 
	  
	  ADC.NCMR[0].R |= pin;  // enable channel for normal conversion.
	
}


int analogRead(int channel)
{
	startConversion();
	while(ADC.MSR.B.NSTART ==1) {}
	
	if(ADC.CDR[channel].B.VALID ==1) // if data is valid
	{
		return ADC.CDR[channel].B.CDATA;
	}
	else return -1;
	
	
}
