SELECT * FROM tabela_de_produtos;

# selecionamos as embalagens, os status de preços para cada embalagem, e a média do preço de cada um desses status
SELECT EMBALAGEM,
CASE 
    WHEN PRECO_DE_LISTA >= 12 THEN 'PRODUTO CARO'
    WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'PRODUTO EM CONTA'
    ELSE 'PRODUTO BARATO' 
END AS STATUS_PRECO, AVG(PRECO_DE_LISTA) AS PRECO_MEDIO
FROM tabela_de_produtos
WHERE SABOR = "MANGA"
GROUP BY EMBALAGEM,
CASE 
    WHEN PRECO_DE_LISTA >= 12 THEN 'PRODUTO CARO'
    WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'PRODUTO EM CONTA'
    ELSE 'PRODUTO BARATO' 
END
ORDER BY EMBALAGEM;

#checar se deu certo
SELECT * FROM tabela_de_produtos HAVING EMBALAGEM = "Lata" AND SABOR = "MANGA" ORDER BY PRECO_DE_LISTA DESC;

#EXERCÍCIO
#Veja o ano de nascimento dos clientes e classifique-os como: Nascidos antes de 1990 são velhos, nascidos entre 1990 e 1995 são jovens 
#e nascidos depois de 1995 são crianças. Liste o nome do cliente e esta classificação

SELECT * FROM tabela_de_clientes;

SELECT NOME, DATA_DE_NASCIMENTO,
CASE
	WHEN YEAR(DATA_DE_NASCIMENTO) < 1990 THEN "Velho"
    WHEN YEAR(DATA_DE_NASCIMENTO) BETWEEN 1990 AND 1995 THEN "Jovem"
    WHEN YEAR(DATA_DE_NASCIMENTO) > 1995 THEN "Criança"
END AS "status_de_idade"
FROM tabela_de_clientes 
ORDER BY DATA_DE_NASCIMENTO;

