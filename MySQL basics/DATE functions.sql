#seleciona a data atual
SELECT CURDATE();

#seleciona o horario atual
SELECT CURRENT_TIME();

#seleciona a data e horario atual
SELECT CURRENT_TIMESTAMP();

#seleciona o dia atual
SELECT DAY(CURRENT_TIMESTAMP()) AS RESULTADO;

#seleciona o mês (numero) da data atual
SELECT MONTH(CURRENT_TIMESTAMP()) AS RESULTADO;

#seleciona o nome do mês da data atual
SELECT MONTHNAME(CURRENT_TIMESTAMP()) AS RESULTADO;

#seleciona o ano atual
SELECT year(CURRENT_TIMESTAMP());

#diferença da data selecionada para o dia de hoje (current time stamp)
SELECT DATEDIFF(CURRENT_TIMESTAMP(), '2003-11-17') AS DIAS_VIVIDOS;

#subtrai 5 dias ao dia de hoje
SELECT CURRENT_TIMESTAMP AS DIA_HOJE, DATE_SUB(CURRENT_TIMESTAMP(), INTERVAL 5 DAY) AS RESULTADO  ;

#mostra a data, dia da semana, mês, e ano da venda
SELECT DISTINCT DATA_VENDA,
DAYNAME(DATA_VENDA) AS DIA, MONTHNAME(DATA_VENDA) AS MES, YEAR(DATA_VENDA) AS ANO FROM NOTAS_FISCAIS;

#Exercicio: Crie uma consulta que mostre o nome e a idade atual dos clientes.
#Dica: Vc pode usar a função "TIMESTAMPDIFF" neste caso
SELECT NOME, TIMESTAMPDIFF(YEAR, DATA_DE_NASCIMENTO, CURDATE()) AS IDADE FROM tabela_de_clientes;




