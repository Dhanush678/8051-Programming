#include<reg51.h>
sbit MYBIT =P2^5;
void main(void){
while(1){
unsigned char mess[]="hello ";
unsigned char mess2[]="welcome";
TMOD=0x20;
TH1=-3;
SCON=0x50;
TR1=1;
if(MYBIT==1){
unsigned char i;
for(i=0;i<=4;i=i+1){
SBUF=mess[i];
while(TI==0){}
TI=0;
}
}
else{
unsigned char j;
for(j=0;j<=5;j=j+1){
SBUF=mess2[j];
while(TI==0){}
TI=0;
}
}
}
}
