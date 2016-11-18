/*
 * adc.h
 *
 *  Created on: Nov 18, 2016
 *      Author: Theo
 */

#ifndef ADC_H_
#define ADC_H_

int initAdc();
int setupPin(int pin);
void startConversion();
int analogRead(int channel);

#endif /* ADC_H_ */
