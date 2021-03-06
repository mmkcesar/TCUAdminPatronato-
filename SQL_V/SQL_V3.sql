/* *****************STORED PROCEDURES******************************* */

/* *********************estudiante****************************/
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_estudiante`(in s_Id_estudiante varchar(15),
in s_Apellido_1 varchar(45), in s_Apellido_2 varchar(45), in s_Nombre_Completo varchar(45))
BEGIN
	insert into mydb.estudiante (Id_estudiante, Apellido_1, Apellido_2, Nombre_Completo)
	values (s_Id_estudiante, s_Apellido_1, s_Apellido_2, s_Nombre_Completo);
END

/* ****************************** */

USE `mydb`;
DROP procedure IF EXISTS `borrar_estudiante`;

DELIMITER $$
USE `mydb`$$
CREATE PROCEDURE `borrar_estudiante` (in s_Id_Estudiante varchar(15))
begin
	delete from mydb.estudiante where Id_Estudiante = s_Id_Estudiante;
END
$$

DELIMITER ;

/* ****************************** */

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificar_estudiante`(in p_Id_Estudiante varchar(15), s_Id_estudiante varchar(15),
in s_Apellido_1 varchar(45), in s_Apellido_2 varchar(45), in s_Nombre_Completo varchar(45))
BEGIN
update mydb.estudiante 
set Id_Estudiante = s_Id_estudiante,
Apellido_1 = s_Apellido_1,
Apellido_2 = s_Apellido_2,
Nombre_Completo = s_Nombre_Completo
where Id_Estudiante = p_Id_Estudiante; 
END

/* ********************************* */

CREATE PROCEDURE `consultar_Estudiante` (s_Id_estudiante varchar(15))
BEGIN

select * from mydb.estudiante 
where Id_Estudiante = s_Id_Estudiante;

END


/* ********************************* */

