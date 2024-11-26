%{
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int helper(int *a, int *b) {
    int z = *a;
    *a = *b;
    *b = z;
}
%}

%%

[0-9]+      {
                int a = atoi(yytext);
                int b = atoi(yytext);
	        helper(&a, &b);
                printf("%d %d", a, b);
            }

\n          
.;           

%%

int main() {
    printf("Enter two numbers: ");
    yylex();
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
