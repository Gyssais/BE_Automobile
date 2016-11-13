/************ Include *********************/
#include "MPC5604B.h"
#include "IntcInterrupts.h"
#include "config.h"
#include "SBC.h"
#include "Mode_manager.h"
#include "Comodo.h" // à supprimer
#include "Driver_phare.h" // à supprimer
#include "MPC5604B_LED.h"
#include "BCM_appli.h"
#include "LCM_appli.h" // à supprimer

#include "DCM_appli.h"



/*************** Private function prototype **********/
void scheduler_BCM(void);
void scheduler_LCM(void);



//************** Public function *************/

 int main(void) {
  volatile int i = 0;
  uint8_t result;
  disableWatchdog();
  initModesAndClock();
  initPIT1();
  config_PORT_E();
  
  


  Init_SBC_DBG();
  
#ifdef BCM
  Init_button();
#endif
  
#ifdef LCM
  MC33983_DRV_init_0();
#endif
  
  enableIrq();
  INTC_InstallINTCInterruptHandler(PIT1_Interrupt,60,2);	/* Set PIT1 interrupt handler*/
  /* Loop forever */
  //initADC();
  //start_ADC();
  
  for (;;) {
	  //result=Read_luminosity_sensor();
	  ReceiveMsg(); // polling for receive message but should change with intterupt
  }
}




/* PIT 1 timer ISR		*/
void PIT1_Interrupt(void) 
{
	static uint8_t cpt_LED=0;
	
	//Clear PIT1 flag
	PIT.CH[1].TFLG.B.TIF = 1;
	
	if (cpt_LED>=10){
		Invert_Led1();
		cpt_LED=0;
	}
	else{
		cpt_LED++;
	}
	
	// application
	#ifdef BCM
			scheduler_BCM();
	#endif
			
	#ifdef LCM
			scheduler_LCM();
	#endif
				
}




 
	
	
	




