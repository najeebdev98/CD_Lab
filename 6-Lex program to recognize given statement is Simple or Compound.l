%{
	#include<stdio.h>
	int flag=0;
%}
%%
[and | or | but | because | if |then | nevertheless] {flag=1;}
.;
\n {return 0;}
%%
int main()
{
	printf("Enter the sentence : \n");
	yylex();
	if(flag==0)
	{
	printf("\n It is simple sentence");
	}
	else
	{
	printf("It is compound sentence");
	}
}
int yywrap()
{
	return 1;
}
