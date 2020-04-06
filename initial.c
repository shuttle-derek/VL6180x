#include "BS45F3235.h"
#include "include.h"

void initial(void)
{
	_cks2=0;
	_cks1=1;
	_cks0=0;
	/////io initial/////
	_pa=0b00100000;
//	_pac=0b10011010;
	_pac=0b10010000;
	_papu=0b00000000;
	_pawu=0b00000000;
	
//	_pb=0b00000010;
//	_pbc=0b00000100;
	_pb=0b00000010;
	_pbc=0b00000000;
	_pbpu=0b00000100;
	
	_pas0=0b00000100;
//	_pas1=0b10000001;
	_pas1=0b10000000;
	_pbs0=0b00000010;
	
	_ifs=0x0c;
	_simc2=0;
	_simc0=0b00010000;		//uart pa7 pb0
	_uucr1=0b10000000;		//n81
	_uucr2=0b10000001;
	_ubrg=12;
	/////lirc/////
	switch(wdt_timeout)
	{
		case 0:
		_ws2=0;
		_ws1=0;
		_ws0=0;
		break;
		
		case 1:
		_ws2=0;
		_ws1=0;
		_ws0=1;
		break;
		
		case 2:
		_ws2=0;
		_ws1=1;
		_ws0=0;
		break;
		
		case 3:
		_ws2=0;
		_ws1=1;
		_ws0=1;
		break;
		
		case 4:
		_ws2=1;
		_ws1=0;
		_ws0=0;
		break;
		
		case 5:
		_ws2=1;
		_ws1=0;
		_ws0=1;
		break;
		
		case 6:
		_ws2=1;
		_ws1=1;
		_ws0=0;
		break;
		
		case 7:
		_ws2=1;
		_ws1=1;
		_ws0=1;
		break;
		
	}
}


void halt_set(void)
{
	_scc=0;
	_sadc0=0;
	_sadc1=0;
	_sadc2=0;
	_emi=0;	
}

void wake_set(void)
{
	_scc=0;						//wdt timeout
}

void clear_ram(void)
{
	_bp=0;
	for(_mp0=0xff;_mp0>0xbf;_mp0--)
	{
		GCC_CLRWDT();
		_iar0=0;
	}
}
