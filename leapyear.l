%{
#include<stdio.h>
%}

%%

[0-9]+ {
		int n = atoi(yytext);
		if(n%400 == 0 || (n%4 == 0 && n%100 != 0)) printf("leap year");
		else printf("not leap year");
	}
\n
.;

%%

int main() {
	printf("enter a year: ");
	yylex();
	return 0;
}

int yywrap() {
	return 1;
}
