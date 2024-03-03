SELECT * FROM tabela_de_vendedores;

SELECT * FROM tabela_de_clientes;

#full join não existe no mySQL, porém se darmos RIGHT e LEFT JOIN ao mesmo tempo, é a mesma coisa.

SELECT A.NOME, A.BAIRRO, B.NOME, B.BAIRRO FROM tabela_de_vendedores A  , tabela_de_clientes B; #cross join
#mostra todas as combinações possíveis, e não tem condição