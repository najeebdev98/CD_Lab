%{ 
#include<stdio.h>
int l=0;
int u=0;
%}
%%
[A-Z] {printf("%s is : Uppercase\n",yytext);u++;}
[a-z] {printf("%s is : Lowercase\n",yytext);l++;}
%%
int main()
{
	printf("Enter a string:\n");
	yylex();
	
}
int yywrap()
{
	return 1;
}
