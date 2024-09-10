
%{
#include<stdio.h>
%}

%%
[A-Z] { printf("%s", yytext); }
. ;
%%

main()
{
printf("Enter some strings with capital words in between\n");
yylex();
}

int yywrap(){return 1;}
