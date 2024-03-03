
/* podemos usar o seguinte comando para mostrar uma mensagem quando ocorre algum erro com o código:

DECLARE EXIT HANDLER FOR 1062 
BEGIN
SET mensagem = "Problema de chave primária";
SELECT mensagem;
END;

basicamente: caso o código apresente o erro informado (1062), ele irá parar de executar o programa
mas antes disso irá rodar o código dentro do begin (no caso, mostrar mensagem de erro amigável)
*/

call inclui_novo_produto_parametro("4000004", "Sabor do Pantanal 1 Litro - Melancia",
"Melancia", "1 Litro", "PET", 4.76);

