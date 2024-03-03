SELECT * FROM itens_notas_fiscais;
SELECT * FROM notas_fiscais;
SELECT * FROM tabela_de_clientes;

# venda de clientes por mês #
SELECT NF.CPF, DATE_FORMAT(NF.DATA_VENDA, "%y-%m") AS MES_ANO, SUM(INF.QUANTIDADE) AS TOTAL FROM notas_fiscais NF 
INNER JOIN itens_notas_fiscais INF
ON NF.NUMERO = INF.NUMERO
GROUP BY NF.CPF, DATE_FORMAT(NF.DATA_VENDA, "%y-%m");

#criamos uma view dessa consulta
SELECT * FROM vw_total_mes;

#usamos a view anterior para pegar o volume de compra limite de cada cliente e comparar com o quanto ele gastou
SELECT TM.CPF, TC.NOME, TM.MES_ANO, TM.GASTO_TOTAL, TC.VOLUME_DE_COMPRA, (GASTO_TOTAL - VOLUME_DE_COMPRA) AS EXCESSO
FROM vw_total_mes TM INNER JOIN tabela_de_clientes TC
ON TM.CPF = TC.CPF
WHERE TM.GASTO_TOTAL > TC.VOLUME_DE_COMPRA;

# utilizamos uma subconsulta, usando um SELECT dentro de outro SELECT, para mostrar o total de gasto de cada cliente, 
# e qual era o limite de compra de cada cliente para aquele mês. Caso o volume de compra for maior, a compra será inválida.

SELECT CPF, NOME, MES_ANO, GASTO_TOTAL, LIMITE_DE_COMPRA, (GASTO_TOTAL - LIMITE_DE_COMPRA) AS DIFERENCA,
CASE	
	WHEN GASTO_TOTAL > LIMITE_DE_COMPRA THEN "INVÁLIDA"
    WHEN GASTO_TOTAL < LIMITE_DE_COMPRA THEN "VÁLIDA"
END AS STATUS_COMPRA
FROM (
SELECT NF.CPF, TC.NOME, DATE_FORMAT(NF.DATA_VENDA, "%y-%m") AS MES_ANO, SUM(INF.QUANTIDADE) AS GASTO_TOTAL
, TC.VOLUME_DE_COMPRA AS LIMITE_DE_COMPRA
FROM notas_fiscais NF 
INNER JOIN itens_notas_fiscais INF
ON NF.NUMERO = INF.NUMERO
INNER JOIN tabela_de_clientes TC
ON TC.CPF = NF.CPF
GROUP BY NF.CPF, DATE_FORMAT(NF.DATA_VENDA, "%y-%m")) X; 

#Exercício: Complemente este relatório listando somente os que tiveram vendas inválidas 
#e calculando a diferença entre o limite de venda máximo e o realizado, em percentuais.

SELECT CPF, NOME, MES_ANO, GASTO_TOTAL, LIMITE_DE_COMPRA, CONCAT(ROUND((GASTO_TOTAL / LIMITE_DE_COMPRA) * 10), "%") AS DIFERENCA
FROM (
SELECT NF.CPF, TC.NOME, DATE_FORMAT(NF.DATA_VENDA, "%y-%m") AS MES_ANO, SUM(INF.QUANTIDADE) AS GASTO_TOTAL
, TC.VOLUME_DE_COMPRA AS LIMITE_DE_COMPRA
FROM notas_fiscais NF 
INNER JOIN itens_notas_fiscais INF
ON NF.NUMERO = INF.NUMERO
INNER JOIN tabela_de_clientes TC
ON TC.CPF = NF.CPF
GROUP BY NF.CPF, DATE_FORMAT(NF.DATA_VENDA, "%y-%m")) X 
HAVING GASTO_TOTAL > LIMITE_DE_COMPRA;



