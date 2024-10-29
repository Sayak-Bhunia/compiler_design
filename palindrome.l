%{
#include <stdio.h>
#include <string.h>
%}

%%
[0-9]+   {
            // Check if the number is a palindrome
            char *num = yytext;
            int len = strlen(num);
            int isPalindrome = 1;

            for (int i = 0; i < len / 2; i++) {
                if (num[i] != num[len - 1 - i]) {
                    isPalindrome = 0;
                    break;
                }
            }

            if (isPalindrome) {
                printf("%s is a Palindrome\n", num);
            } else {
                printf("%s is not a Palindrome\n", num);
            }
          }
\n       { /* ignore newline */ }
.;        { printf("Invalid input\n"); }
%% 

int main() {
    printf("Enter a number: ");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
