<?php
error_reporting(~E_ALL);

/*
Funcions de modificació de les taules de la Base de Dades
$tabla: nom de la taula a modificar.
$camposInsert: string amb els camps separats per comes que s'ha d'insertar.
$datosInsert: array amb els valors dels camps a insertar.
$id: identificador de la fila a modificar/eliminar.
$camposUpdate: array amb els camps separats per comes que s'ha de modificar.
$datosUpdate: array amb els valors dels camps a modificar.
*/




function insertFunction ($tabla,$camposInsert,$datosInsert){
	$sql = "insert into ".$tabla." (".$camposInsert.")";
	$sql = $sql."values (";
	for ($i=0;$i<=(count($datosInsert)-1);$i++){
		if ($i == 0) {
			$sql = $sql."";
		} else {
			$sql = $sql.",";
		}
		$sql = $sql."'".comillas($datosInsert[$i])."'";
	}
	$sql = $sql.")";
	mysql_query(convert_sql($sql));
	echo $sql;
}

function updateFunction ($tabla,$id,$camposUpdate,$datosUpdate){
	$sql = "update ".$tabla." set ";
	for ($i=0;$i<=(count($datosUpdate)-1);$i++){
		if ($i == 0) {
			$sql = $sql."";
		} else {
			$sql = $sql.",";
		}
		$sql = $sql.$camposUpdate[$i]."='".comillas($datosUpdate[$i])."'";
	}
	$sql = $sql." WHERE id=".$id."";
	mysql_query(convert_sql($sql));
#	echo $sql;
}

function deleteFunction ($tabla,$id){
	$sql = "delete from ".$tabla." WHERE id=".$id;
	mysql_query(convert_sql($sql));
}

?>