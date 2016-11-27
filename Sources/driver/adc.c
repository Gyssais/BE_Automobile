/*
 * adc.c
 *
 *  Created on: Nov 18, 2016
 *      Author: Theo
 */

#include "adc.h"
#include "pin.h"
#include "MPC5604B.h"


int setupAdc()
{
	if(ADC.MSR.B.ADCSTATUS !=1) // if not in power-down mode
		{
			ADC.MCR.B.PWDN = 1; // request power-down mode. needed before configuring the ADC.
			while(ADC.MSR.B.ADCSTATUS != 1) {} // wait to be in power-down mode.
		}
	
	
	 ADC.MCR.B.OWREN = 1; // overwrite enabled
	 ADC.MCR.B.ADCLKSEL =1; // full clock speed
	 ADC.MCR.B.MODE = 0;   // one shot mode
	
	 
	 ADC.NCMR[0].R = 0; // Mask disable for all channels
	 ADC.NCMR[1].R = 0; // Mask disable for all channels
	 ADC.NCMR[2].R = 0; // Mask disable for all channels
	 ADC.JCMR[0].R = 0; // Mask disable for all channels
	 ADC.JCMR[1].R = 0; // Mask disable for all channels
	 ADC.JCMR[2].R = 0; // Mask disable for all channels
	 
	
	 
	 return 0;
}


//external channels not supported
int pinToAdcChannel(int pin, char * channel, char *type)
{
	 // precision channels
	  if(pin >= PB_4 && pin <=PB_7) 
		  {
		  *channel = (char) pin-PB_4; // ajout de (char) pour �viter un warning. 
		  *type = 0;
		  return 0;
		  }
	  else if (pin >= PD_0 && pin <=PD_11) 
		  {
		  *channel = pin-PD_0;
		  *type = 0;
		  return 0;
		  }
	  
	  // normal channels
	  else if(pin >= PB_8 && pin <=PB_11) 
		  {
		  *channel = pin-PB_8;
		  *type = 1;
		  return 0;
		  }
	  else if (pin >= PD_12 && pin <=PD_15)
		  {
		  *channel = pin-PD_12;
		  *type = 1;
		  return 0;
		  }
	  else if (pin >= PF_0 && pin <=PF_7)
		  {
		  *channel =pin-PF_0 ;
		  *type = 1;
		  return 0;
		  }
	
	  else return WRONG_PIN;
}

void enableADC()
{
	 ADC.MCR.B.PWDN = 0; /* ADC enable */
}

void startConversion()
{
	ADC.MCR.B.NSTART =1;
	
}

int setupPin(int pin)
{
	
	if(ADC.MSR.B.ADCSTATUS !=1) // if not in power-down mode
		{
			ADC.MCR.B.PWDN = 1; // request power-down mode. needed before configuring the ADC.
			while(ADC.MSR.B.ADCSTATUS != 1) {} // wait to be in power-down mode.
		}
	
	  
	  // enable channel corresponding to the pin for normal conversion.
	  
	  // precision channel
	  if(pin >= PB_4 && pin <=PB_7)  ADC.NCMR[0].R  |= (1<<(pin-PB_4)); 
	  else if (pin >= PD_0 && pin <=PD_11) ADC.NCMR[0].R |= (1<<(pin-PD_0)); 
	  
	  // normal channel
	  else if(pin >= PB_8 && pin <=PB_11) ADC.NCMR[1].R |= (1<<(pin-PB_8));
	  else if (pin >= PD_12 && pin <=PD_15) ADC.NCMR[1].R |= (1<<(pin-PD_12));
	  else if (pin >= PF_0 && pin <=PF_7) ADC.NCMR[1].R |= (1<<(pin-PF_0));
	
	  else return WRONG_PIN;
	  
	  SIU.PCR[pin].R = 0x2000; // pin  in analog mode 
	  return 0;
}


int analogRead(int pin)
{
	char channel;
	char channel_type;
	 
	if(pinToAdcChannel(pin,&channel, &channel_type) !=0 ) return WRONG_PIN; // check if the pin corresponds to a valid channel
	if(!(ADC.NCMR[channel_type].R & (1<<channel)))  return CHANNEL_DISABLED; // check if the channel is enabled in the NCMR register.
	
	
	ADC.MCR.B.NSTART =1;
	while(ADC.MSR.B.NSTART ==1) {} // wait the conversion to be completed
	
	if(channel_type ==1) channel +=32; // translate channel for standard channel
	
	if(ADC.CDR[channel].B.VALID ==1) // if data is valid
	{
		return ADC.CDR[channel].B.CDATA;
	}
	else return UNVALID_DATA;
		
}

 
//TODO  interrupt setup
int setupAnalogWatchdog(int pin, int high_threshold, int low_threshold, int watchdog)
{
	char channel;
	char channel_type;
	
	/* check all the arguments */
	if(pinToAdcChannel(pin,&channel, &channel_type) !=0 ) return WRONG_PIN; // check if the pin corresponds to a valid channel
	if(watchdog <0 || watchdog > 3) return WRONG_WATCHDOG;	
	
	if(high_threshold > ADC_MAX) high_threshold = ADC_MAX;
	if(low_threshold < ADC_MIN) low_threshold = ADC_MIN;
	
	TRC[watchdog].B.THRCH = channel; // set the channel
	THRHLR[watchdog].B.THRH = high_threshold; // set the threshold
	THRHLR[watchdog].B.THRL = low_threshold;
	
	return 0;	
}

void startAnalogWatchdog(int watchdog)
{
	TRC[watchdog].B.THREN = 1;
}

void stopAnalogWatchdog(int watchdog)
{
	TRC[watchdog].B.THREN = 0;
}


void adc_example()
{
	int result;
	
	result = setupAdc();
	result =  setupPin(AD_PIN);
	enableADC();
	
	while(1)
	{
		result = analogRead(AD_PIN);
	}
}
