
%{
#include <stdlib.h>
void yyerror(char *);

#include "y.tab.h"

%}

%%

[0-9]+	{
	return INT;
	}

(["][A-Z]+["])	{
	return STRING;
	}

[A-Z]+ {
	return IDENT;
}

[[]	{
	return ABRECOLC;
	}

[]]	{
	return FECHACOLC;
	}

[,]	{
	return VIRG;
	}
[ ]	{
	return SPACE;
	}

\n	{
	return EOL;
	}

[\t]+ ;

.	{yyerror("Token nao reconhecido\n");}



%%

int yywrap() {
  return 1;
}
