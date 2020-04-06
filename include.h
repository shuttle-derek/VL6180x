#include "define.h"

void clear_ram(void);
void initial(void);

void halt_set(void);
void wake_set(void);
void halt_set(void);
void TestGPIO(void);
_Bool ReadTOF(unsigned int addr, unsigned char *buf, unsigned char len);
_Bool WriteTOF(unsigned int addr, unsigned char *buf, unsigned char len);
_Bool ByteWriteTOF(unsigned int addr, unsigned char buf);
void InitTOF(unsigned char *buf);
void doScan(unsigned char *buffer);
void uart_sent(void);