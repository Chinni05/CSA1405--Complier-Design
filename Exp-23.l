%{
#include <stdio.h>
int a, b;
%}

%%

[0-9]+[ \t]*\+[ \t]*[0-9]+ {
    sscanf(yytext, "%d + %d", &a, &b);
    printf("Addition Result = %d\n", a + b);
}

[0-9]+[ \t]*-[ \t]*[0-9]+ {
    sscanf(yytext, "%d - %d", &a, &b);
    printf("Subtraction Result = %d\n", a - b);
}

[0-9]+[ \t]*\*[ \t]*[0-9]+ {
    sscanf(yytext, "%d * %d", &a, &b);
    printf("Multiplication Result = %d\n", a * b);
}

[0-9]+[ \t]*\/[ \t]*[0-9]+ {
    sscanf(yytext, "%d / %d", &a, &b);
    if (b == 0)
        printf("Division by zero error!\n");
    else
        printf("Division Result = %d\n", a / b);
}

.   ;

%%

int main() {
    printf("Enter expression (e.g., 10 + 20):\n");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
