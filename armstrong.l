%{
#include <stdio.h>
#include <math.h>
%}

%%

[0-9]+ {
    int n = atoi(yytext);
    int k = n;
    int c = 0;
    while(k != 0) {
        c++;
        k /= 10;
    }
    int t = n;
    int m = 0;
    while(t != 0) {
        int r = t%10;
        int p = 1;
        while(c--) p *= r;
        m += p;
    }
    if(m == n) printf("Armstrong Number");
    else printf("Not Armstrong Number");
}

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
