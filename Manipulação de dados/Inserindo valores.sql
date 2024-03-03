/* inserindo valores na tabela */

/* inserindo produtos na tabela de produtos */
INSERT INTO PRODUTOS (CODIGO, DESCRITOR, SABOR, TAMANHO, EMBALAGEM, PRECO_LISTA)
VALUES ("1040110", "Light - 350 ml - Jaca", "Jaca", "350 ml", "Lata", 6.00),
       ("1040111", "Light - 350 ml - Manga", "Manga", "350 ml", "Lata", 3.50),
       ("1040109", "Light - 350 ml - Acaí", "Açaí", "350 ml", "Lata", 5.60),
       ("1040108", "Light - 350 ml - Graviola", "Graviola", "350 ml", "Lata", 4.00),
       ("1040107", "Light - 350 ml - Melância", "melância", "350 ml", "lata", 4.56);
       
/* inserindo clientes na tabela de clientes */
INSERT INTO CLIENTES
VALUES (19290992743, "Fernando Cavalcante", "R. Dois de Fevereiro", "Água Santa", "Rio de Janeiro", "RJ", 22000000, "200-02-12", 18, "M",
100000, 20000, 1),
(1471156710, "Érica Carvalho", "R. Iriquitia", "Jardins", "São Paulo", "SP", 80012212, "1990-09-01", 27, "F",
170000, 24500, 0),
(2600586709, "César Teixeira", "Rua Conde de Bonfim", "Tijuca", "Rio de Janeiro", "RJ", 22020001, "2000-03-12", 18, "M",
120000, 22000, 0),
(2600586744, "Bruno Teixeira", "Rua Conde de Bonfim", "Tijuca", "Rio de Janeiro", "RJ", 22020001, "2000-03-12", 18, "M",
120000, 22000, 0);


/* atualizando uma informação que foi introduzida errada na tabela */
UPDATE CLIENTES SET DATA_NASCIMENTO = "2000-02-12" WHERE CPF = 19290992743;


