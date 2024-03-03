CREATE TABLE `produtos2` (
  `CODIGO` varchar(10) NOT NULL,
  `DESCRITOR` varchar(100) DEFAULT NULL,
  `SABOR` varchar(50) DEFAULT NULL,
  `TAMANHO` varchar(50) DEFAULT NULL,
  `EMBALAGEM` varchar(50) DEFAULT NULL,
  `PRECO_LISTA` float DEFAULT NULL,
  PRIMARY KEY (`CODIGO`)
);

SELECT * FROM produtos2;

/* inserindo dados na tabela produtos2 da tabela produtos */
INSERT INTO produtos2
SELECT * FROM produtos;

/* atualizando o preco de lista da tabela */
UPDATE produtos2 SET PRECO_LISTA = 8;

/* deletando os dados da tabela */
DELETE FROM produtos2;
 
 
/* Apague todos os dados da tabela NOTAS e ITENS_NOTAS. */
DELETE FROM NOTAS;
DELETE FROM ITENS_NOTAS;
SELECT * FROM NOTAS;
SELECT * FROM ITENS_NOTAS