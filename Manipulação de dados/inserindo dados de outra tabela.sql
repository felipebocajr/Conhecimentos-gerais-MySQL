/* importando dados de outra tabela de outro banco de dados */
INSERT INTO produtos 
SELECT CODIGO_DO_PRODUTO AS CODIGO, NOME_DO_PRODUTO AS DESCRITOR, 
SABOR, TAMANHO, EMBALAGEM, PRECO_DE_LISTA AS PRECO_LISTA
FROM sucos_vendas.tabela_de_produtos
WHERE CODIGO_DO_PRODUTO NOT IN (SELECT CODIGO FROM PRODUTOS);

SELECT * FROM PRODUTOS;
SELECT * FROM clientes;

/* importando dados de outra tabela de outro banco de dados */
INSERT INTO clientes 
SELECT CPF, NOME, ENDERECO_1 AS ENDERECO, BAIRRO, CIDADE, ESTADO, CEP, DATA_DE_NASCIMENTO AS DATA_NASCIMENTO,
IDADE, SEXO, LIMITE_DE_CREDITO AS LIMITE_CREDITO, VOLUME_DE_COMPRA, PRIMEIRA_COMPRA
FROM sucos_vendas.tabela_de_clientes
WHERE CPF NOT IN (SELECT CPF FROM clientes);

SELECT * FROM sucos_vendas.tabela_de_clientes;
select * from vendedores;

/* 
para inserir dados de uma tabela em .csv, siga esses passos:
1. Clique com botão direito na tabela que deseja importar esses dados
2. Clique em table data import wizard
3. Ache o arquivo .csv
 */
 

