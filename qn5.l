%{
int vowels=0;
int cons=0;
%}

%%
[aeiouAEIOU] {vowels++;}
[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ] {cons++;}
. {}
\n {
printf("The number of consonants is :%d\n",cons);
printf("The number of vowels is :%d\n",vowels);
vowels=0;
cons=0;
}
%%
int yywrap(void){return 1;}
int main() {
yylex();
return 0;
}
