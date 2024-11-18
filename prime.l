%{
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int is_prime(int n) {
    for(int i=2;i<=sqrt(n);i++) {
        if(n%i == 0) return 0;
    }
    return 1;
}
%}

%%

[0-9]+      {
                int n = atoi(yytext);
                if (is_prime(n))
                    printf("%d is a prime number.\n", n);
                else
                    printf("%d is not a prime number.\n", n);
            }

\n          
.;           

%%

int main() {
    printf("Enter a number: ");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
