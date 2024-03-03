SELECT * FROM tabela_de_produtos WHERE CODIGO_DO_PRODUTO = 4000001;

/* ao criar a procedure, são colocadas as variáveis, e seus respectivos tipos dentro do () de parametros.
Então, ao chamar a procedure, é necessário apenas colocar o valor das variáveis, respectivamente */
call inclui_novo_produto_parametro("4000001", "Sabor do Pantanal 1 Litro - Melancia",
"Melancia", "1 Litro", "PET", 4.76);