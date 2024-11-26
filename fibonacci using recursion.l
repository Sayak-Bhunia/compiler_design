%{
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int helper(int n) {
    if(n<=1) return n;
    else return helper(n-1) + helper(n-2);
}
%}

%%

[0-9]+      {
                int t = atoi(yytext);
	        printf("fibonacci series: ");
	        for(int i=0;i<t;i++) printf("%d ",helper(i));
            }

\n          
.;           

%%

int main() {
    printf("Enter the number of terms: ");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
