/************ Include *********************/
#include "MPC5604B.h"
#include "IntcInterrupts.h"
#include "config.h"
#include "SBC.h"
#include "Mode_manager.h"
#include "MPC5604B_LED.h"
#include "BCM_appli.h"
#include "DCM_appli.h"
#include "pin.h"
#include "adc.h"
#include "define.h"



/*************** Private function prototype **********/

//************** Public function *************/


// configure the adc, configure the pin AD_PIN for analog input, and perform continuously a software triggered conversion.
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

 int main(void) {

	 adc_example(); // To test

}




 
	
	
	




