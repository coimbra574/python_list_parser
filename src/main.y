
%{
#include <stdio.h>
#include <stdlib.h>
void yyerror(char *c);
int yylex(void);
%}

%token INT SPACE STRING IDENT VIRG ABRECOLC FECHACOLC EOL

%%
PROGRAMA:
	PROGRAMA EXPRESSAO EOL { printf("OK\n");}
	|
	;

EXPRESSAO:
	INT 

	| STRING

	| IDENT

	| EXPRESSAO VIRG SPACE EXPRESSAO 

	| ABRECOLC EXPRESSAO FECHACOLC

	|
	;
%%

void yyerror(char *s) {
	printf("ERRO\n");
}

int main() {
  yyparse();
    return 0;

}
