SELECT * FROM produtos;

/* atualizamos um valor de uma coluna de uma tabela */
UPDATE produtos SET PRECO_LISTA = 5 WHERE CODIGO = "1000889";

/* atualizamos varios valores colunas de uma tabela */
UPDATE produtos SET EMBALAGEM = "PET", TAMANHO = "1 Litro", DESCRITOR = "Sabor da Montanha - 1 Litro - Uva" 
WHERE CODIGO = 1000889;

SELECT * FROM produtos WHERE SABOR = "Maracujá";

/* aumentamos em 10% o preço de todos os produtos sabor maracujá */
UPDATE PRODUTOS SET PRECO_LISTA = PRECO_LISTA * 1.10 WHERE SABOR = "Maracujá";

/* Exercício: 
Atualize o endereço do cliente com cpf 19290992743 para R. Jorge Emílio 23 o bairro para Santo Amaro, 
a cidade para São Paulo, o estado para SP e o CEP para 8833223. */

SELECT * FROM clientes;
UPDATE CLIENTES SET ENDERECO = "R. Jorge Emílio 23", CIDADE = "São Paulo", ESTADO = "SP", CEP = 8833223 
WHERE CPF = 19290992743;


