SELECT CURRENT_TIMESTAMP() AS RESULTADO;

SELECT CONCAT("O dia de hoje é: ", CURRENT_TIMESTAMP()) AS RESULTADO;

#no site https://dev.mysql.com/doc/refman/5.7/en/date-and-time-functions.html#function_date-format 
#é possivel ver o que cada caractere pode fazer com o concat
SELECT CONCAT ("O dia de hoje é: ", DATE_FORMAT(CURRENT_TIMESTAMP(), "%W/d/%m/%Y - %U")) AS RESULTADO;

#converte valores; no caso, converte o 23.3 em CHAR
SELECT CONVERT(23.3, CHAR) AS RESULTADO;

#também é possível utilizar STRINGS functions juntamente
SELECT SUBSTRING(CONVERT(23.3, CHAR),1,1) AS RESULTADO;

#Exercício: Queremos construir um SQL cujo resultado seja, para cada cliente:
#“O cliente João da Silva faturou 120000 no ano de 2016”.
#Somente para o ano de 2016.

SELECT * FROM tabela_de_clientes;
SELECT * FROM notas_fiscais;
SELECT * FROM itens_notas_fiscais;

SELECT CONCAT("O cliente ", TC.NOME, " faturou ", ROUND(SUM(INF.QUANTIDADE * INF.PRECO), 2), " no ano de 2016") AS RESULTADO
FROM itens_notas_fiscais INF INNER JOIN notas_fiscais NF ON INF.NUMERO = NF.NUMERO 
INNER JOIN tabela_de_clientes TC ON NF.CPF = TC.CPF
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY TC.CPF;

#amostra do resultado dos INNER JOINS
SELECT * FROM tabela_de_clientes A INNER JOIN notas_fiscais B ON A.CPF = B.CPF 
INNER JOIN itens_notas_fiscais C ON B.NUMERO = C.NUMERO;

#método proposto pela Alura, com dois GROUP BY sem motivo
SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

SELECT CONCAT('O cliente ', TC.NOME, ' faturou ', 
CAST(SUM(INF.QUANTIDADE * INF.preco) AS char (20))
 , ' no ano ', CAST(YEAR(NF.DATA_VENDA) AS char (20))) AS SENTENCA FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF ON NF.NUMERO = INF.NUMERO
INNER JOIN tabela_de_clientes TC ON NF.CPF = TC.CPF
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY TC.NOME, YEAR(DATA_VENDA);
