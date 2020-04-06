#include <BS45F3235.H>
#include "BS45F3235.h"
#include "include.h"

bit_type Flag1;
unsigned char buffer[2];
//unsigned int	adc_16bit,Status[10],Status_Max,Status_Min;
//unsigned char	Uart_L,Uart_H,M_1sec,i;
//unsigned long	adc_32bit;
///////////////////////////////////////////////////////////interrupt
//void __attribute((interrupt(0x10))) stm_p (void)
//{
//	_stmpf=0;							//512us
//}
/////////////////////////////////////////////////////////////
//void __attribute((interrupt(0x28))) uart (void)
//{
//	_usimf=0;
//}
///////////////////////////////////////////////////////////
void uart_sent()
{
	_utxr_rxr=buffer[1];
	while(!_utidle)
	GCC_CLRWDT();
	
	_utxr_rxr=buffer[0];
	while(!_utidle)
	GCC_CLRWDT();
}

void main()
{
	if(_to==0)						//watch dog timeout flag
	{
		while(_hircf==0)			//hirc stable flag
		GCC_DELAY(100);
		GCC_DELAY(20000);			//wait lirc stable(cause no flag)
		
		clear_ram();
		initial();
	}
	else
	{
		_to=0;
		wake_set();
	}
	SCLPU=1;
	SDAPU=1;
	SDAC=0;
	SCLC=0;

	ReadTOF(0x00,buffer,1); // get chip ID
	buffer[1]=0x55;
	uart_sent();
	InitTOF(buffer);

	buffer[0]=0;
	buffer[1]=0xff;
	uart_sent();
	while(1)
	{	
		GCC_CLRWDT();
		doScan(buffer);

		if(halt_sleep)				//halt function(sleep)
		{
			halt_set();
			GCC_HALT();
		}
		else
			GCC_DELAY(2000);
	}
}
