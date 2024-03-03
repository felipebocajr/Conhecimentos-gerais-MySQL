
/* Crie uma Stored procedure para reajustar o % de comissão dos vendedores. 
Inclua como parâmetro da SP o %, expresso em valor (Ex: 0,90).]
*/

SELECT * FROM tabela_de_vendedores;

/* ao criar a procedure foi definida a variavel "vReajuste", e feito o update de acordo com
o valor inserido ao chamar a procedure */
call reajuste_comissao (0.95);