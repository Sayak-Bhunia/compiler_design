%{
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

// Function to check if a number is prime
int is_prime(int num) {
    if (num <= 1) return 0; // Not prime
    if (num == 2) return 1; // 2 is prime
    if (num % 2 == 0) return 0; // Even numbers greater than 2 are not prime
    for (int i = 3; i <= sqrt(num); i += 2) {
        if (num % i == 0) return 0;
    }
    return 1;
}
%}

%%

[0-9]+      {
                int num = atoi(yytext);
                if (is_prime(num))
                    printf("%d is a prime number.\n", num);
                else
                    printf("%d is not a prime number.\n", num);
            }

\n          { /* Ignore newlines */ }

.           { /* Ignore any other characters */ }

%%

int main() {
    printf("Enter a number: ");
    yylex();
    return 0;
}
