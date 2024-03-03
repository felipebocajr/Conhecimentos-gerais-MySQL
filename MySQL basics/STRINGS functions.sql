# tira espaços da direita
SELECT LTRIM("   OLÁ") AS RESULTADO;

#tira espaços da esquerda
SELECT RTRIM("OLÁ          ") AS RESULTADO;

#tira espaços da direita e da esquerda
SELECT TRIM("    OLÁ     ") AS RESULTADO;

#Concatena várias strings (junta)
SELECT CONCAT("OLÁ", " ", "TUDO BEM", "?") AS RESULTADO;

# torna as palavras em maiúsculo
SELECT UPPER("olá, tudo bem?") AS RESULTADO;

# torna as palavras em minúsculo
SELECT LOWER("OLÁ, TUDO BEM?") AS RESULTADO;

#Seleciona apenas o texto que vem após o número escolhido
SELECT SUBSTRING("OLÁ, TUDO BEM", 6) AS RESULTADO;

#seleciona apenas o texto que vem após o primeiro número, com limite do segundo número
SELECT SUBSTRING("OLÁ, TUDO BEM", 6, 4) AS RESULTADO;

#concatena os textos e campos escolhidos em coluna só
SELECT CONCAT(NOME, " (", CPF, ") ") AS RESULTADO FROM tabela_de_clientes; 

#também podemos colocar uma função de string dentro de outra função string
SELECT CONCAT(UPPER(NOME), ", (", CPF, ") ") AS RESULTADO FROM tabela_de_clientes;

# EXERCÍCIO: Faça uma consulta listando o nome do cliente 
#e o endereço completo (Com rua, bairro, cidade e estado).
SELECT * FROM tabela_de_clientes;

SELECT nome, CONCAT(ENDERECO_1,", ", BAIRRO,", ", CIDADE,", ", ESTADO) 
AS ENDEREÇO_COMPLETO FROM tabela_de_clientes;



