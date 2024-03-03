SELECT * FROM tabela_de_vendedores;
SELECT * FROM notas_fiscais;	
SELECT * FROM tabela_de_clientes;
SELECT * FROM tabela_de_produtos;
SELECT * FROM itens_notas_fiscais;



SELECT A.NOME, B.MATRICULA FROM
tabela_de_clientes A INNER JOIN notas_fiscais B
ON A.CPF = B.CPF;

#Obtenha o faturamento anual da empresa. 
#Leve em consideração que o valor financeiro das vendas consiste em multiplicar a quantidade pelo preço.

SELECT YEAR(DATA_VENDA), SUM(QUANTIDADE * PRECO) AS FATURAMENTO
FROM notas_fiscais NF INNER JOIN itens_notas_fiscais INF
ON NF.NUMERO = INF.NUMERO
GROUP BY YEAR(DATA_VENDA)	




