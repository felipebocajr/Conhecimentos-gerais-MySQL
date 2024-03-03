SELECT (23+((25-2)/2)*45) AS RESULTADO;

#seleciona o próximo número inteiro independente do valor decimal
SELECT CEILING(12.2333) AS RESULTADO;

#aredonda o resultado
SELECT ROUND(12.2333) AS RESULTADO;

#seleciona apenas o número inteiro
SELECT FLOOR(12.2333) AS RESULTADO;

#cria um número aleatório
SELECT RAND() AS RESULTADO;

#mostra muitos decimais no faturamento
SELECT NUMERO, QUANTIDADE, PRECO, QUANTIDADE * PRECO AS FATURAMENTO FROM itens_notas_fiscais;

#aredonda o faturamento com duas casas decimais, tornando mais facil de visualizar
SELECT NUMERO, QUANTIDADE, PRECO, ROUND(QUANTIDADE * PRECO, 2) AS FATURAMENTO FROM itens_notas_fiscais;

#EXERCÍCIO: Na tabela de notas fiscais temos o valor do imposto.
#Já na tabela de itens temos a quantidade e o faturamento. 
#Calcule o valor do imposto pago no ano de 2016 arredondando para o menor inteiro.

SELECT * FROM notas_fiscais; 
SELECT * FROM itens_notas_fiscais; 

#eu criei uma view que continha todos os valores necessários, e ficou assim:
SELECT * FROM vw_2016;

SELECT YEAR(DATA_VENDA) AS ANO, CONCAT("R$ ", FLOOR(SUM(((QUANTIDADE * PRECO) * IMPOSTO)))) AS IMPOSTO_PAGO 
FROM vw_2016 
WHERE YEAR(DATA_VENDA) = 2016 
GROUP BY YEAR(DATA_VENDA);

#porém a melhor maneira é usar um INNER JOIN, que funcionará sem problemas
SELECT YEAR(DATA_VENDA) AS ANO, FLOOR(SUM(IMPOSTO * (QUANTIDADE * PRECO))) AS IMPOSTO_PAGO
FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY YEAR(DATA_VENDA)






