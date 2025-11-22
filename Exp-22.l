%{
#include <stdio.h>
%}
MOBILE   [6-9][0-9]{9}
%%
^{MOBILE}$     { printf("Valid Mobile Number\n"); }
.*             { printf("Invalid Mobile Number\n"); }
%%
int main()
{
    printf("Enter Mobile Number:\n");
    yylex();
    return 0;
}
int yywrap()
{
    return 1;
}
