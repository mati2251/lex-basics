%{
  #include <stdio.h>
  int yywrap(void);
  int yylex(void);  
%}
%%
^[ \t]+   { /* pomiń początkowe spacje */ }
%%
int yywrap(void) { return 1; }
int main(void) { return yylex(); }
