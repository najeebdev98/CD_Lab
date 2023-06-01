%{
	#include<stdio.h>
%}

%%

int |float |char {printf("%s is a keyword\n ",yytext);}
[a-zA-Z][a-zA-Z|0-9]* {printf("%S is a identifier \n",yytext);}
[0-9]+ {printf("%s is digit of constant \n",yytext);}
[+ | - | * | /] {printf("%s is an operator \n",yytext);}
[@ |# |$ |&] {printf("%s is a special symobl \n",yytext);}
.|\n {ECHO;}
%%

int main()
{
	printf("Enter the String:\n");
	yylex();
}
int yywrap()
{
	return 1;
}
