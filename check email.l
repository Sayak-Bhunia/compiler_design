%{
#include <stdio.h>
#include <string.h>
#include <ctype.h>
%}

%%

[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,} {
    printf("Valid email: %s\n", yytext);
}

.|\n { /* Ignore everything else */ }

%%

int main() {
    printf("Enter strings to check for valid email format:\n");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
