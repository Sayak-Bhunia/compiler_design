%{
#include<stdio.h>
%}

%%

[0-9]+ {
	    int n = atoi(yytext);
	    int m = n;
	    int sum = 0;
	    while(n != 0) {
		    sum = sum*10 + n%10;
		    n /= 10;
	    }
	    if(m == sum) printf("palindrome");
	    else printf("not palindrome");
	}
\n
.;

%%

int main() {
	printf("enter a number: ");
	yylex();
	return 0;
}

int yywrap() {
	return 1;
}
