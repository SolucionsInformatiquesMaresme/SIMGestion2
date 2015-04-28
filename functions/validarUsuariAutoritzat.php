<?php
error_reporting(~E_ALL);

/*
Valida si l'usuari te permissos per accedir a la opció.
$userid: identificador de l'usuari.
$option: Opció a la que es vol accedir.
*/



function validarUsuariAutoritzat($userid,$option)
{ 
	global $db;
	$autorizado = false;
		$sql = "select count(*) as total from sgm_users_permisos WHERE id_user=".$userid." AND id_modulo=".$option;
		$result = mysql_query(convert_sql($sql));
		$row = mysql_fetch_array($result);
		if ($row["total"] != 0) { 
			$autorizado = true;
		}
	return $autorizado; 
}


?>