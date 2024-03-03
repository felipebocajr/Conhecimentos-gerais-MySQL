
/* Crie uma variável chamada NUMNOTAS e atribua a ela o número de notas fiscais do dia 01/01/2017. 
Mostre na saída do script o valor da variável. (Chame esta Stored Procedure de Quantidade_Notas).
*/
SELECT * FROM notas_fiscais WHERE DATA_VENDA = "2017-01-01";

CALL Quantidade_Notas;