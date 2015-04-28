<?php
error_reporting(~E_ALL);

/*
Valida si l'usuari te permissos d'administrador a la opció.
$userid: identificador de l'usuari.
$option: Opció a la que es vol accedir.
*/



function validarUsuariAdmin($userid,$option)
{ 
	global $db;
	$admin = false;
		$sql = "select count(*) as total from sgm_users_permisos WHERE id_user=".$userid." AND id_modulo=".$option;
		$result = mysql_query(convert_sql($sql));
		$row = mysql_fetch_array($result);
		if ($row["total"] != 0) { 
			$sqladmin = "select * from sgm_users_permisos WHERE id_user=".$userid." AND id_modulo=".$option;
			$resultadmin = mysql_query(convert_sql($sqladmin));
			$rowadmin = mysql_fetch_array($resultadmin);
				if ($rowadmin["admin"] == 1) { 
					$admin = true;
				}
		}
	return $admin; 
}


?>