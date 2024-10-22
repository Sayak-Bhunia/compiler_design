%{
#include <stdio.h>
#include <math.h>

int is_armstrong(int num) {
    int original_num, remainder, result = 0, n = 0;

    // Find the number of digits
    original_num = num;
    while (original_num != 0) {
        original_num /= 10;
        ++n;
    }

    original_num = num;

    // Calculate sum of nth powers of its digits
    while (original_num != 0) {
        remainder = original_num % 10;
        result += pow(remainder, n);
        original_num /= 10;
    }

    return (result == num);
}
%}

%%

[0-9]+ {
    int num = atoi(yytext);
    if (is_armstrong(num)) {
        printf("%d is an Armstrong number.\n", num);
    } else {
        printf("%d is not an Armstrong number.\n", num);
    }
}

.|\n    ;  // Ignore other characters or newlines

%%

int main() {
    printf("Enter a number: ");
    yylex();
    return 0;
}
