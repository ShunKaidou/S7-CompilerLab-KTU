%{

#include<stdio.h>
int chars = 0;
int word = 0;
int space = 0;
int lines = 0;

%}

%%

[^ \n\t]+ {word++,chars+=yyleng;}
\t {space++;}
" " {space++;}
\n {lines++;}

%%

int yywrap(){ return 1; }

void main(){

	yylex();
	printf("char: %d\nword: %d\nspace: %d\nlines: %d\n", chars,word,space,lines);	
	}

