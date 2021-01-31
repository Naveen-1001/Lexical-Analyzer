%{

%}
start \/\* 
end  \*\/

/* Rules:*/
%%
(>|<) {fprintf(yyout,"%s  -->Operator\n",yytext);}
(-=)|(\+=|\*=|%=|<<=|>>=|&=|\|=|\^=) {fprintf(yyout,"%s  -->Operator\n",yytext);}
[\+\*/\-%] {fprintf(yyout,"%s  -->Operator\n",yytext);}
(==|>=|<=|!=) {fprintf(yyout,"%s  -->Operator\n",yytext);}
[=] {fprintf(yyout,"%s  -->Operator\n",yytext);}
(!|&&|\|\|) {fprintf(yyout,"%s  -->Operator\n",yytext);}
(&|\||>>|<<|~|\^) {fprintf(yyout,"%s  -->Operator\n",yytext);}
(\+\+|--) {fprintf(yyout,"%s  -->Operator\n",yytext);}
, {fprintf(yyout,"%s  -->Operator\n",yytext);}
(\.|\[\]|\(\)|->) {fprintf(yyout,"%s  -->Operator\n",yytext);}
(#|\$|\(|\)|\\|`|\{|\}|\[|\]|:|\"|;|\?|\/|@|'|\") {fprintf(yyout,"%s  -->Special Symbol\n",yytext);} 
("auto")|("break")|("case")|("char")|("const")|("continue")|("do")|("default")|("double")|("else")|("enum")|("extern")|("float")|("for")|("goto")|("if")|("int")|("long")|("register")|("return")|("short")|("signed")|("sizeof")|("static")|("struct")|("switch")|("typedef")|("union")|("unsigned")|("void")|("volatile")|("void") {fprintf(yyout,"%s  -->Keyword\n",yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {fprintf(yyout,"%s  -->Identifier\n",yytext);}
((0[0-7]+|0[xX][0-9A-Fa-f]+|[0-9]+)(U|L)?) {fprintf(yyout,"%s  -->Constant\n",yytext);}
[0-9]+([\.][0-9]+)?([eE](\+|-)?[0-9]+)? {fprintf(yyout,"%s  -->Constant\n",yytext);}
'(\\[tvrnafb\\]|[^\\'])' {fprintf(yyout,"%s  -->Constant\n",yytext);}
\"(([^\"]|\\\")*[^\\])?\" {fprintf(yyout,"%s  -->String Constant\n",yytext);}
[ ]* ;
\/\/(.*) ;
#(.*) ;
{start}(.|\n)*{end} ;  
%%


int yywrap(void) { 
    return 1;
}

int main()
{
    extern FILE *yyin, *yyout; 
    yyin = fopen("input.c", "r"); 
    yyout = fopen("Output.txt", "w"); 
    yylex();
    return 0; 
}
