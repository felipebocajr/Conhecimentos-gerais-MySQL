SELECT COUNT(*) FROM tabela_de_clientes;

SELECT CPF, COUNT(*) FROM notas_fiscais 
GROUP BY CPF; #tem um cliente safado que não comprou nada

#left joins
SELECT DISTINCT A.CPF, A.NOME, B.CPF FROM tabela_de_clientes A LEFT JOIN notas_fiscais B
ON A.CPF = B.CPF WHERE B.CPF IS NULL;

SELECT A.NOME, A.BAIRRO, B.NOME, B.BAIRRO FROM tabela_de_vendedores A LEFT JOIN tabela_de_clientes B
ON A.BAIRRO = B.BAIRRO; # Tem uma vendedora em copacabana, e não tem nenhum cliente lá.



#right joins
SELECT DISTINCT A.CPF, A.NOME, B.CPF FROM notas_fiscais B RIGHT JOIN tabela_de_clientes A
ON A.CPF = B.CPF WHERE B.CPF IS NULL; #Comando is null faz retornar apenas valores nulos

SELECT A.NOME, A.BAIRRO, B.NOME, B.BAIRRO FROM tabela_de_vendedores A RIGHT JOIN tabela_de_clientes B
ON A.BAIRRO = B.BAIRRO; #Existem clientes que não possuem nenhum vendedor em seus bairros

