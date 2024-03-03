call hello_world;
call mostra_numero;
call mostra_numero_alias;
call sp_com_funcoes;
call sp_com_comentarios;  
call hello_world_2;

USE `sucos_vendas`;
DROP procedure IF EXISTS `hello_world_3`;

USE `sucos_vendas`;
DROP procedure IF EXISTS `sucos_vendas`.`hello_world_3`;
;

DELIMITER $$
USE `sucos_vendas`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `hello_world_3`()
BEGIN
SELECT "hello world !, TUDO BEM? versao 3" as RESULTADO;
END$$

DELIMITER ;
;



call exibe_variavel; 

call tipos_de_dados;

call hora_data_local;

call sem_declaracao;

call mesmo_tipo_dados;

call atribui_valor;

call sp_Exerc01;








