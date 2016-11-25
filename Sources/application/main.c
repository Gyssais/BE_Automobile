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
#include "spi_drv.h"

/*************** Private function prototype **********/

/*************** Public function            **********/

uint16_t RxData[128];

 int main(void) {

	 // INITIALISATIONS
	 disableWatchdog();
	 initModesAndClock();
	 initialise_SPI_DRIVER(); // Initialise l'utilisation de SPI[i].fonctionnalite
	 enableIrq();
	 
	 // CODE SPI
	 SPI[1].init(SPI_BAUD_100000, SPI_DELAY_DEFAULT);
	 //SPI[1].write_array((uint16_t*)"Hello!\0",4,1);
	 
	 Init_SBC_DBG();

	 while (1) {}

}
	 
				





 
	
	
	




