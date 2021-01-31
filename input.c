#include<stdio.h>

//The header files are also meant to be ommited by lexical analyzer
//This is a single line comment meant to be ommited by the lexical analyzer

int fast_power(int a, int b, int m)
{
    if(b==0) return 1;
    if(b==1) return a;
    int temp=fast_power(a,b/2,m);
    if(b%2==0) return (temp*temp)%m;
    return ((temp*temp)%m*a)%m;
}

/*
This is a multi-line
comment meant to be ommited by the lexical analyzer
*/

int main()
{
    int a=20,b=10;
    int x=0x762868;
    int y=0762;
    int z=0X2313;
    float c=123.4E-10;
    a=a+b;
    a+=b;
    a^=20;
    b>>2;
    a=a/b;
    a=a%10;
    if(a==b) printf("%d\n",a);
    else printf("%d",b);
    int hehdio1_3nnjkn;
    char d='d',c='c';
    char newline='\n';
    char s[20]="String";
    return 0;
}