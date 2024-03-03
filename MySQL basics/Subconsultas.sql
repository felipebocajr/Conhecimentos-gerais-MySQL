SELECT DISTINCT BAIRRO FROM tabela_de_vendedores;		

#jeito antigo
SELECT * FROM tabela_de_clientes WHERE BAIRRO IN ("Tijuca", "Jardins", "Copacabana", "Santo Amaro"); 

#SubConsulta, utilizando uma consulta anterior dentro do comando IN ()
SELECT * FROM tabela_de_clientes WHERE BAIRRO IN (SELECT DISTINCT BAIRRO FROM tabela_de_vendedores); 


SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS PRECO_MAXIMO FROM tabela_de_produtos
GROUP BY EMBALAGEM;	

#usamos o código acima dentro do FROM e apenas colocamos um WHERE depois
SELECT X.EMBALAGEM, X.PRECO_MAXIMO FROM 
(SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS PRECO_MAXIMO FROM tabela_de_produtos
GROUP BY EMBALAGEM) X WHERE X.PRECO_MAXIMO >= 10;

#EXERCÍCIO: PEGUE A SEGUINTE CONSULTA E FAÇA UMA NOVA CONSULTA UTILIZANDO SUBCONSULTA
SELECT CPF, COUNT(*) FROM notas_fiscais
  WHERE YEAR(DATA_VENDA) = 2016
  GROUP BY CPF
  HAVING COUNT(*) > 2000;
  
# FICARIA ASSIM:
SELECT X.CPF, X.CONTADOR FROM
(SELECT CPF, COUNT(*) AS CONTADOR FROM notas_fiscais 
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY CPF) X WHERE X.CONTADOR > 2000;
  
