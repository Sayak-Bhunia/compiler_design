%{
#include <stdio.h>
#include <stdlib.h>
%}

%%
[0-9]+   {
            int r = atoi(yytext);
            for(int i=1;i<=rows;i++) {
                for(int j=1;j<=i;j++) printf("* ");
                printf("\n");
            }
            exit(0); 
          }


\n 
.,        
%%

int main() {
    printf("Enter the number of rows: ");
    yylex();
    return 0;
}
int yywrap() {
    return 1;
}

