%{
#include <stdio.h>
%}

%%
[0-9]+   { 
            int number = atoi(yytext);
            if (number % 2 == 0) {
                printf("%d is Even\n", number);
            } else {
                printf("%d is Odd\n", number);
            }
          }
\n       { /* ignore newline */ }
.;       { printf("Invalid input\n"); }
%% 

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
