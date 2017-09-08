
%{
#include <stdio.h>
%}

Alfanum [A-Za-z0-9]
Simbolos [-_.]

%%

({Alfanum})+(({Simbolos})?({Alfanum}))*@({Alfanum})+(({Simbolos})?({Alfanum}))* {
        printf("%s\n", yytext);
}

({Alfanum})+(({Simbolos})?({Alfanum}))*@({Alfanum})+(({Simbolos})?({Alfanum}))*[-_]+ ;

. ;

\n ;

%%

int main() {
  yylex();
  return 0;
}
