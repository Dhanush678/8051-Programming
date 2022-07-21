#include<reg51.h>
sbit MYBIT =P2^5;
void main(void){
while(1){
unsigned char mess[]="HELLO  ";
unsigned char mess2[]="WELCOME   ";
TMOD=0x20;
TH1=-3;
SCON=0x50;
TR1=1;
if(MYBIT==1){
unsigned char i;
for(i=0;i<=6;i=i+1){
SBUF=mess[i];
while(TI==0){}
TI=0;
}
}
else{
unsigned char j;
for(j=0;j<=7;j=j+1){
SBUF=mess2[j];
while(TI==0){}
TI=0;
}
}
}
}