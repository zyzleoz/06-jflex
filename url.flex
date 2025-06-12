%%
%class url
%unicode
%standalone // Execução independente do analisador sintático.


/* ---------- MACROS ---------- */
CARACTERE        = \w+
LETRAS           = [a-z]+


/* ---------- REGRAS ---------- */
%%

"https://"{CARACTERE} \. {LETRAS}\.{LETRAS} {
  System.out.println("URL RECONHECIDA: " + yytext());
}