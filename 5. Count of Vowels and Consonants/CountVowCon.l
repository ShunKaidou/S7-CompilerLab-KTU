%{

#include<stdio.h>
int vow=0,con=0;

%}

%%

[aeiouAEIOU] {vow++;}
[a-zA-Z] {con++;}

%%

int main(){
	printf("Enter input string... at end press ^d :\n");
	yylex();
	printf("Number of vowels=%d\n",vow);
	printf("Number of consonants=%d\n",con);
	}

int yywrap() {return 1;}
