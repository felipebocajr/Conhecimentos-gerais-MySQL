SELECT SABOR FROM tabela_de_produtos WHERE codigo_do_produto = 4000001;

/* ao criar a procedure, atribuimos o resultado de um select a uma variavel */ 
call acha_sabor_produto(1013793);

SELECT * FROM tabela_de_produtos;