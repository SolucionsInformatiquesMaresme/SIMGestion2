<?php
error_reporting(~E_ALL);

/*
Crear un fitxer de registre de les accions del usuaris conforme a la llei LOPD.
$userid: identificador de l'usuari.
$username: nom de l'usuari.
$option: opció a la que ha accedit.
$soption: subopció a la que ha accedit.
*/



function lopd($userid,$username,$option,$soption) {
#	date_default_timezone_set('Europe/Paris');

	$sql1 = "$userid	$username	$option	$soption";
	$date = getdate();
	$sql1 = $sql1."	".date("Y-m-d", mktime($date["hours"] ,$date["minutes"], $date["seconds"],$date["mon"] ,$date["mday"], $date["year"]));
	$sql1 = $sql1."	".date("H:i:s", mktime($date["hours"] ,$date["minutes"], $date["seconds"],$date["mon"] ,$date["mday"], $date["year"]));
	if (version_compare(phpversion(), "4.0.0", ">")) {
		$sql1 = $sql1."	".$_SERVER[REMOTE_ADDR];
		$sql1 = $sql1."	".$_SERVER[HTTP_USER_AGENT];
			$x = $_SERVER[PHP_SELF];
			if ($_SERVER[QUERY_STRING] != "") { $x = $x."?".$_SERVER[QUERY_STRING]; }
		$sql1 = $sql1."	".$x;
		$sql1 = $sql1."	".$_SERVER[HTTP_REFERER];
	}
	if (version_compare(phpversion(), "4.0.1", "<")) {
		$sql1 = $sql1."	".$HTTP_SERVER_VARS[REMOTE_ADDR];
		$sql1 = $sql1."	".$HTTP_SERVER_VARS[HTTP_USER_AGENT];
			$x = $HTTP_SERVER_VARS[PHP_SELF];
			if ($HTTP_SERVER_VARS[QUERY_STRING] != "") { $x = $x."?".$HTTP_SERVER_VARS[QUERY_STRING]; }
		$sql1 = $sql1."	".$x;
		$sql1 = $sql1."	".$HTTP_SERVER_VARS[HTTP_REFERER];
	}

	if (!$gestor = fopen("reg_acces.txt", "a+")) { echo "No se pueden grabar los datos de registro de accesos."; }
	if (fwrite($gestor, $sql1.Chr(13)) === FALSE) { echo "Cannot write to file ($filename)"; }
}


?>