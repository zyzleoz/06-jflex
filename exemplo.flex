/* Definição: seção para código do usuário. */

%%

/* Opções e Declarações */

%standalone         
%line               
%column             
%class Scanner     

%{  
    // Método auxiliar para retornar o lexema (substitui yytext())
    public String getLexema() {
        return yytext();
    }
%}

// Macros:
letra = [a-zA-Z]
numero = [0-9]
digito = {numero}+
identificador = {letra}({letra}|{numero})*

%%

/* Regras e Ações Associadas */

{digito}        {System.out.println(" -> Encontrei um <Token: DIGITO, Lexema: "        + getLexema() + ", Tamanho: " + yylength() + ", Linha: " + yyline + ", Coluna: " + yycolumn + ">");}
{identificador} {System.out.println(" -> Encontrei um <Token: IDENTIFICADOR, Lexema: " + getLexema() + ", Tamanho: " + yylength() + ", Linha: " + yyline + ", Coluna: " + yycolumn + ">");}
