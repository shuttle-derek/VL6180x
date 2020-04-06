
#include "BS45F3235.h"
#include "include.h"

//**********************************
//I2C start signal
//**********************************
void i2cStart(void)
{
	SDAC=0;//set SDA as output
	SCLC=0;//set SCL as output
	SDA=1;GCC_DELAY(5);//SDA=1
	SCL=1;GCC_DELAY(5);//SCL=1
	SDA=0;GCC_DELAY(5);//SDA=0
	SCL=0;GCC_DELAY(5);//SCL=0	
}

//**********************************
//I2C stop signal
//**********************************
void i2cStop(void)
{
	SDAC=0;//set SDA as output
	SCLC=0;//set SCL as output
	SDA=0;GCC_DELAY(5);//SDA=0
	SCL=1;GCC_DELAY(5);//SCL=1
	SDA=1;GCC_DELAY(5);//SDA=1
	SCL=0;GCC_DELAY(5);//SCL=0
		
}
//**********************************
//ACK(0) signal
//**********************************
void Ack(void)
{
	SDAC=0;//set SDA as output
	SCLC=0;//set SCL as output
	SDA=0;GCC_DELAY(5);//SDA=0
	SCL=1;GCC_DELAY(5);//SCL=1
	SCL=0;GCC_DELAY(5);//SCL=0
	SDA=1;GCC_DELAY(5);//SDA=1
}
//**********************************
//NoAck(1) signal
//**********************************
void NoAck(void)
{
	SDAC=0;//set SDA as output
	SCLC=0;//set SCL as output
	SDA=1;GCC_DELAY(5);//SDA=1
	SCL=1;GCC_DELAY(5);//SCL=1
	SCL=0;GCC_DELAY(5);//SCL=0
}
//**********************************
//master check ack signal
//0:ACK complete¡A1 no complete
//**********************************
_Bool TestAck(void)
{
	_Bool Ack_Bit;//define ack bit
	SDAC=1;//set SDA as input
	SCLC=0;//set SCL as output
	//SDA=1;_delay(30);//SDA=1
	SCL=1;GCC_DELAY(5);//SCL=1
	Ack_Bit=SDA;GCC_DELAY(5);//read back ACK
	SCL=0;GCC_DELAY(5);//SCL=0
	SDAC=0;
	return Ack_Bit;
}
//**********************************
//master write data
//**********************************
void i2cWrite(unsigned char Data)
{
	unsigned char count=8;
	SDAC=0;//set SDA as output
	SCLC=0;//set SCL as output
	while(count--)
	{
		SDA=(_Bool)(Data & 0x80);//bit7 sent to SDA pin
		GCC_DELAY(5);
		SCL=1;GCC_DELAY(5);//sent clock
		SCL=0;GCC_DELAY(5);
		Data=Data<<1;//Data shift left 1 bit
	}
}
//**********************************
//master read data
//**********************************
unsigned char i2cRead(void)
{
	unsigned char count=8,Data=0;
	SDAC=1;//set SDA as input
	SCLC=0;//set SCL as output
	while(count--)
	{
		SCL=1;GCC_DELAY(5);
		Data=Data<<1;//Data shift left 1 bit
		Data=Data|((unsigned char)(SDA));//read data and save in Data
		SCL=0;GCC_DELAY(5);
	}	
	return(Data);
}

_Bool AckTimeout()
{
	unsigned char cnt = 255;
	_Bool Ack_Bit=1;//define ack bit

	while (Ack_Bit) {
		SDAC=1;//set SDA as input
		SCLC=0;//set SCL as output
		SCL=1;GCC_DELAY(5);//SCL=1
		Ack_Bit=SDA;GCC_DELAY(5);//read back ACK
		SCL=0;GCC_DELAY(5);//SCL=0
		SDAC=0;
		if (--cnt ==0)
			return 1;
	}
	return 0;
	return Ack_Bit;
}

_Bool ByteWriteTOF(unsigned int addr, unsigned char buf)
{
	unsigned char data;
	i2cStart();
	i2cWrite(DevAddr);
	if (AckTimeout())
		return 1;

	data = (addr&0xff00)>>8;
	i2cWrite(data);
	
	if (AckTimeout())
		return 1;

	data = (addr&0x00ff);
	i2cWrite(data);
	if (AckTimeout())
		return 1;
	
	data = buf;
	i2cWrite(data); 
	if (AckTimeout())
		return 1;

	i2cStop();
	
	return 0;		
}

_Bool WriteTOF(unsigned int addr, unsigned char *buf, unsigned char len)
{
	unsigned char cnt, data;
	i2cStart();
	i2cWrite(DevAddr);
	if (AckTimeout())
		return 1;

	data = (addr&0xff00)>>8;
	i2cWrite(data);
	
	if (AckTimeout())
		return 1;

	data = (addr&0x00ff);
	i2cWrite(data);
	if (AckTimeout())
		return 1;
	
	for(cnt =0;cnt < len ; cnt++)				//write data form 0~255
	{
		data = buf[cnt];
		i2cWrite(data); 
		if (AckTimeout())
			return 1;
	}
	i2cStop();
	
	return 0;		
}
_Bool ReadTOF(unsigned int addr, unsigned char *buf, unsigned char len)
{
	unsigned char data=0,cnt;
	
	GCC_DELAY(5);
	
	i2cStart();
	i2cWrite(DevAddr);

	if (AckTimeout())
		return 1;
	data = (addr & 0xff00) >> 8;
	i2cWrite(data);
	if (AckTimeout())
		return 1;

	data = (addr & 0x00ff) ;
	i2cWrite(data);
	if (AckTimeout())
		return 1;

	i2cStart();
	i2cWrite(DevAddr+1);
	if (AckTimeout())
		return 1;

	for(cnt =0;cnt < len;cnt++)
	{
		data =i2cRead();
		buf[cnt] = data;
		if(cnt+1 != len)
			Ack();
	}
	NoAck();
	i2cStop();
	
	return 0;	
}

void TestGPIO()
{
	SDAPU=1;
	SCLPU=1;
	SDAC=0;//set SDA as output
	SCLC=0;//set SCL as output

	SDA=0;//SDA=0
	SCL=0;GCC_DELAY(200000);//SCL=1
	SDA=1;//SDA=0
	SCL=1;GCC_DELAY(200000);//SCL=1


}

void InitTOF(unsigned char *buf)
{
//	unsigned char data=0;
	
	ByteWriteTOF(0x0207, 0x01);
	ByteWriteTOF(0x0208, 0x01);
	ByteWriteTOF(0x0096, 0x00);
	ByteWriteTOF(0x0097, 0xfd);
	ByteWriteTOF(0x00e3, 0x00);
	ByteWriteTOF(0x00e4, 0x04);
	ByteWriteTOF(0x00e5, 0x02);
	ByteWriteTOF(0x00e6, 0x01);
	ByteWriteTOF(0x00e7, 0x03);
	ByteWriteTOF(0x00f5, 0x02);
	ByteWriteTOF(0x00d9, 0x05);
	ByteWriteTOF(0x00db, 0xce);
	ByteWriteTOF(0x00dc, 0x03);
	ByteWriteTOF(0x00dd, 0xf8);
	ByteWriteTOF(0x009f, 0x00);
	ByteWriteTOF(0x00a3, 0x3c);
	ByteWriteTOF(0x00b7, 0x00);
	ByteWriteTOF(0x00bb, 0x3c);
	ByteWriteTOF(0x00b2, 0x09);
	ByteWriteTOF(0x00ca, 0x09);
	ByteWriteTOF(0x0198, 0x01);
	ByteWriteTOF(0x01b0, 0x17);
	ByteWriteTOF(0x01ad, 0x00);
	ByteWriteTOF(0x00ff, 0x05);
	ByteWriteTOF(0x0100, 0x05);
	ByteWriteTOF(0x0199, 0x05);
	ByteWriteTOF(0x01a6, 0x1b);
	ByteWriteTOF(0x01ac, 0x3e);
	ByteWriteTOF(0x01a7, 0x1f);
	ByteWriteTOF(0x0030, 0x00);

	/* Recommended : Public registers - See data sheet for more detail */
	ByteWriteTOF(0x0011, 0x10); /* Enables polling for New Sample ready when measurement completes */
	ByteWriteTOF(0x010a, 0x30); /* Set the averaging sample period (compromise between lower noise and increased execution time) */
	ByteWriteTOF(0x003f, 0x46); /* Sets the light and dark gain (upper nibble). Dark gain should not be changed.*/
	ByteWriteTOF(0x0031, 0xFF); /* sets the # of range measurements after which auto calibration of system is performed */
	ByteWriteTOF(0x0040, 0x63); /* Set ALS integration time to 100ms */
	ByteWriteTOF(0x002e, 0x01); /* perform a single temperature calibration of the ranging sensor */

	/* Optional: Public registers - See data sheet for more detail */
	ByteWriteTOF(0x001b, 0x09); /* Set default ranging inter-measurement period to 100ms */
	ByteWriteTOF(0x003e, 0x31); /* Set default ALS inter-measurement period to 500ms */
	ByteWriteTOF(0x0014, 0x24); /* Configures interrupt on New sample ready */

	ByteWriteTOF(0x0016,0); // reset, derek
	buf[0]=0;
	while ((buf[0]&0x01) == 0) {
		ReadTOF(0x004d,buf,1);	
		buf[1]=0xFB; // TOF range not ready
		GCC_DELAY(20000);	
		uart_sent();
	}
	
}

void doScan(unsigned char *buffer)
{
	unsigned char cnt=0;
	buffer[0]=0;

	while ((buffer[0]&0x01) == 0) {
		ReadTOF(0x004d,buffer,1);
		GCC_DELAY(10);	
		if (++cnt>250) {
			buffer[1]=0xFB;
			uart_sent();
			cnt=0;
		}
	}


	ByteWriteTOF(0x0018, 1);
	while ( (buffer[0] & 0x07)!=4 ) {
		if (ReadTOF(0x004F, buffer, 1))
		{ // i2c fail , error code 0xfc
			buffer[1]=0xFC;
			uart_sent();
			cnt=0xff;
			break;
		}
		if (buffer[0]&0xc0) { // TOF error, 
			buffer[1]=0xFE;
			uart_sent();
			cnt=0xff;
			break;
		}
			
		GCC_DELAY(100);		
		if (++cnt > 200) { // wait Range ready interrupt time out
			buffer[1]=0xFD;
			uart_sent();
			cnt=0;
		}
	}
	ReadTOF(0x0062, buffer,1);
	ByteWriteTOF(0x0015, 0x7);	
	buffer[1]=0xAA; // get tof value
	uart_sent();
}