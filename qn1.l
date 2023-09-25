%{
#include<stdio.h>
#include<string.h>
%}
%%
[/][*][a-zA-Z_0-9]*[*][/] {printf("comments");}
int|if|else|while|for {printf("%s :Keyword\n",yytext);}
[a-zA-z_][a-zA-Z_0-9]* {printf("%s :identifier\n",yytext);}
[0-9]* {printf("%s :Number \n",yytext);}
[+\-*/=] {printf("%s :operator\n",yytext);}
[.(){}[\];,] {printf("%s :punctuation\n",yytext);}
[\n] {}
[\t] {}
[ ] {}
. {printf("undefined\n");}
%%
int yywrap(void){return 1;}
int main()
{
int token;
    while((token==yylex())!=0)
    {
        printf("\n\n");
    }
    return 0;
}
