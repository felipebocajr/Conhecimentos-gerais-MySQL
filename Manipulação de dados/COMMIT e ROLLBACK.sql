SELECT * FROM VENDEDORES;

/* inicia um ponto de backup */
START TRANSACTION;

/* atualizo a tabela */
UPDATE VENDEDORES SET COMISSAO = COMISSAO * 1.15;

/* desfaz todas as ações desde o ultimo TRANSACTION (BACKUP) */
ROLLBACK;

/* confirma todas as ações desde o ultimo TRANSACTION (BACKUP) */
COMMIT;

/* modificando uma tabela para depois confirmar ou não a ação */
INSERT INTO `vendas_sucos`.`vendedores`
(`MATRICULA`,
`NOME`,
`BAIRRO`,
`COMISSAO`,
`DATA_ADMISSAO`,
`FERIAS`)
VALUES
("99999",
"JOAO DA SILVA",
"Icaraí",
0.08,
"2012-01-15",
0);

ROLLBACK;

START TRANSACTION;

