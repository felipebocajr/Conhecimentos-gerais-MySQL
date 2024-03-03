SELECT DISTINCT BAIRRO FROM tabela_de_clientes ORDER BY BAIRRO;

SELECT DISTINCT BAIRRO FROM tabela_de_vendedores ORDER BY BAIRRO;

SELECT BAIRRO, NOME, "CLIENTE" AS TIPO FROM tabela_de_clientes 
UNION #Une todas as duas colunas em uma só, aplicando distinct.
SELECT BAIRRO, NOME, "VENDEDOR" AS TIPO FROM tabela_de_vendedores ORDER BY NOME;

SELECT BAIRRO FROM tabela_de_clientes 
UNION ALL #não aplica o distinct
SELECT BAIRRO FROM tabela_de_vendedores ORDER BY BAIRRO;

SELECT A.NOME, A.BAIRRO, B.NOME, B.BAIRRO FROM tabela_de_vendedores A LEFT JOIN tabela_de_clientes B
ON A.BAIRRO = B.BAIRRO 
UNION 
SELECT A.NOME, A.BAIRRO, B.NOME, B.BAIRRO FROM tabela_de_vendedores A RIGHT JOIN tabela_de_clientes B
ON A.BAIRRO = B.BAIRRO; #Basicamente um full join, unindo um LEFT e um RIGHT join
