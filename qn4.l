%{
int line_count=0;
int word_count=0;
int char_count=0;
%}

%%
abc {printf("ABC");}
. {putchar(yytext[0]);}
%%
int yywrap(void){return 1;}
int main() {
yylex();
}
