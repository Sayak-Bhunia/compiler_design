%{
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int is_prime(int n) {
    if(n<=1) return 0; 
    if(n == 2) return 1; 
    if(n%2 == 0) return 0; 
    for(int i=3;i<=sqrt(n);i+=2) {
        if (n%i == 0) return 0;
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
