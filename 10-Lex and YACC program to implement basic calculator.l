%{
	#include<stdio.h>
	int Vow=0,Cons=0;
%}
%%
[\t\n]
[aeiouAEIOU] {printf(" is Vowel \n"); Vow++;}
[^aeiouAEIOU] {printf("This is Consonent \n"); Cons++;}
%%
int main()
{
	printf("Enter the String : \n");
	yylex();
	printf("Number of Vowel = %d and Number of Consonent = %d\n\n",Vow,Cons);
}
int yywrap()
{
	return 1;
}
