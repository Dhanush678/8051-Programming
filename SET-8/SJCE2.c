#include<reg51.h>
sbit MYBIT =P2^5;
void inter(void) interrupt 4{
}
void main(){
while(1){
unsigned char i;
unsigned char mess[]="SJCE";
TMOD=0x20;
TH1=-3;
SCON=0x50;
TR1=1;

for(i=0;i<=4;i=i+1){
SBUF=mess[i];
while(TI==0){}
	TI=0;
}}
}