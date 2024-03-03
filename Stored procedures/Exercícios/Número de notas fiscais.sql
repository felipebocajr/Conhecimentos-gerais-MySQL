/*
Crie uma Stored Procedure que, baseado em uma data, contamos o número de notas fiscais. 
Se houverem mais que 70 notas exibimos a mensagem: ‘Muita nota’. 
Ou então exibimos a mensagem ‘Pouca nota’. 
Também exibir o número de notas. 
Chame esta Stored Procedure de Testa_Numero_Notas.
A data a ser usada para testar a nota será um parâmetro da Stored Procedure.
*/

SELECT * FROM notas_fiscais;

SELECT COUNT(NUMERO) FROM notas_fiscais WHERE data_venda = "2016-06-06";

call Testa_Numero_Notas("20160606");