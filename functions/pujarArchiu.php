<?php
error_reporting(~E_ALL);
include ('missatgePantalla.php');

/*
Valida si l'usuari te permissos d'administrador a la opció.
$id_tipo: identificador del tipus d'archiu.
$archivo: archiu a pujar.
$archivo_name: nom de l'archiu.
$archivo_size: tamany de l'archiu.
$archivo_type: tipus d'archiu.

Per obtenir aquest informació cal utilitzar el codi següent :

		if (version_compare(phpversion(), "4.0.0", ">")) {
			$archivo_name = $_FILES['archivo']['name'];
			$archivo_size = $_FILES['archivo']['size'];
			$archivo_type =  $_FILES['archivo']['type'];
			$archivo = $_FILES['archivo']['tmp_name'];
			$tipo = $_POST["id_tipo"];
		}
		if (version_compare(phpversion(), "4.0.1", "<")) {
			$archivo_name = $HTTP_POST_FILES['archivo']['name'];
			$archivo_size = $HTTP_POST_FILES['archivo']['size'];
			$archivo_type =  $HTTP_POST_FILES['archivo']['type'];
			$archivo = $HTTP_POST_FILES['archivo']['tmp_name'];
			$tipo = $HTTP_POST_VARS["id_tipo"];
		}

*/

function pujarArchiu($id_tipo, $archivo, $archivo_name, $archivo_size, $archivo_type) {
	global $db;
	$sql = "select * from sgm_files_tipos where id=".$tipo;
	$result = mysql_query(convert_sql($sql));
	$row = mysql_fetch_array($result);
	$lim_tamano = $row["limite_kb"]*1000;
	$sqlt = "select count(*) as total from sgm_files where name='".$archivo_name."'";
	$resultt = mysql_query(convert_sql($sqlt));
	$rowt = mysql_fetch_array($resultt);
	if ($rowt["total"] != 0) {
		missatgePantalla("No se puede añadir archivo por que ya existe uno con el mismo nombre.","red");
	} else {
		if (($archivo != "none") AND ($archivo_size != 0) AND ($archivo_size<=$lim_tamano)){
			if (copy ($archivo, "archivos/".$archivo_name)) {
				missatgePantalla("Se ha transferido el archivo:".$archivo_name."<br><br>Su tamaño es: ".$archivo_size." bytes.","red");
				$sql = "insert into sgm_files (id_tipo,name,type,size) ";
				$sql = $sql."values (";
				$sql = $sql."".$tipo."";
				$sql = $sql.",'".$archivo_name."'";
				$sql = $sql.",'".$archivo_type."'";
				$sql = $sql.",".$archivo_size."";
				$sql = $sql.")";
				mysql_query(convert_sql($sql));
			}
		}else{
			missatgePantalla("No ha podido transferirse el archivo.<br><br>Su tamaño no puede exceder de ".$lim_tamano." bytes.","red");
		}
	}
}

?>