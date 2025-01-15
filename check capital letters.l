%{
#include<stdio.h>
%}

%%

[A-Z]+ {
	printf("%s", yytext);
      }
.|\n

%%

int main() {
	printf("enter string = ");
	yylex();
	return 0;
}

int yywrap() {
	return 1;
}
