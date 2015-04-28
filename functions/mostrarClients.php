<?php
error_reporting(~E_ALL);

/*
Mostra un client en un llistat de clients.
$id: identificador del client.
$color: color de fons de la linea
*/



function mostrarClients($id,$color) {
	global $db;
	$sql = "select * from sgm_clients where id=".$id;
	$result = mysql_query(convert_sql($sql));
	$row = mysql_fetch_array($result);
	echo "<tr style=\"background-color:".$color."\">";
		if (($row["tipo_identificador"] == 2) or ($row["tipo_identificador"] == 3)) { $check_nif = 1;} else { $check_nif = valida_nif_cif_nie($row["nif"]);}
		if (($check_nif <= 0) OR ($row["nombre"] == "") OR ($row["direccion"] == "") OR ($row["cp"] == "") OR ($row["poblacion"] == "") OR ($row["provincia"] == "")) { 
			echo "<td><img src=\"mgestion/pics/icons-mini/page_white_error.png\" alt=\"ERROR\" border=\"0\"></td>";
		} else { 
			echo "<td></td>"; 
		}
		if ($row["client"] == 1) { echo "<td><img src=\"mgestion/pics/icons-mini/shape_handles.png\" alt=\"SI\" border=\"0\"></td>"; } else  { echo "<td></td>"; }
		if ($row["clientvip"] == 1) { echo "<td><img src=\"mgestion/pics/icons-mini/shape_handles.png\" alt=\"SI\" border=\"0\"></td>"; } else  { echo "<td></td>"; }
		$sqltotal= "select count(*) as total from sgm_clients where (visible=1) and (id_origen=".$row["id"].") and (id<>".$row["id"].")";
		$resulttotal = mysql_query(convert_sql($sqltotal));
		$rowtotal = mysql_fetch_array($resulttotal);
		if ($rowtotal["total"] > 0) { echo "<td><img src=\"mgestion/pics/icons-mini/building_add.png\" alt=\"SI\" border=\"0\"></td>"; } else  { echo "<td></td>"; }
		$distancia = 5;
		$letra = "normal";
		if ($row["id_agrupacio"] != 0) { $distancia = 15; }
		if ($row["id_agrupacio"] == 0) { $letra = "bold"; }
		echo "<td style=\"padding-left:".$distancia."px;font-weight:".$letra.";\"><a href=\"index.php?op=1008&sop=210&id=".$row["id"]."\">".$row["nombre"]." ".$row["cognom1"]." ".$row["cognom2"]."</a></td>";
		echo "<td>".$row["telefono"]."</td>";
		if ($row["mail"] != "") { echo "<td><a href=\"mailto:".$row["mail"]."\"><img src=\"mgestion/pics/icons-mini/email_link.png\" alt=\"e-mail\" border=\"0\"></a></td>"; } else { echo "<td></td>"; }
		if ($row["web"] != "") { echo "<td><a href=\"http://".$row["web"]."\" target=\"_blank\"><img src=\"mgestion/pics/icons-mini/page_white_link.png\" alt=\"URL\" border=\"0\"></a></td>"; } else { echo "<td></td>"; }
	echo "</tr>";
}


?>