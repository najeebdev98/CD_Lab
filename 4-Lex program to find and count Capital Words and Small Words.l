%{
	#include<stdio.h>
%}
%%

[a-z]+[ \t\n] {printf("%s  is small \n", yytext);}
[A-Z]+[ \t\n] {printf("%s is Capital \n", yytext);}
%%
int main()
{
	printf("Enter the String : \n\n");
	yylex();
}
int yywrap()
{
	return 1;
}
