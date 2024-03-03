SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS MAIOR_PRECO 
FROM tabela_de_produtos
GROUP BY EMBALAGEM;

#criamos uma view da consulta anterior para facilitar, e usamos nessa consulta como VW_MAIORES_EMBALAGENS
SELECT X.EMBALAGEM, X.MAIOR_PRECO FROM
VW_MAIORES_EMBALAGENS X WHERE X.MAIOR_PRECO >= 10;

# aqui nós pegamos a tabela de produtos, e damos um inner join na view que criamos, para mostrar o maior preco de
#todas as embalagens que temos, e ainda colocamos um percentual do preco do produto comparado ao preço máximo da embalagem
SELECT A.NOME_DO_PRODUTO, A.EMBALAGEM, A.PRECO_DE_LISTA, X.MAIOR_PRECO, (A.PRECO_DE_LISTA / X.MAIOR_PRECO) * 100 AS PORCENTUAL
FROM tabela_de_produtos A INNER JOIN VW_MAIORES_EMBALAGENS X
ON A.EMBALAGEM = X.EMBALAGEM 