%{
#include <stdio.h>
#include <stdlib.h>
%}

%%
[0-9]+   {
            int r = atoi(yytext);
	    int n = 1;
            for(int i=1;i<=r;i++) {
                for(int j=1;j<=i;j++) {
	            printf("%d ",n);
		    n++;
		}
                printf("\n");
            }
            exit(0); 
          }


[ \t\n]  
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
