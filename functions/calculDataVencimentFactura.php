<?php
error_reporting(~E_ALL);

/*
calcula la data de venciment d'una factura a partir de la data de la factura i els termes de pagamanet del client.
$id_client: identificador del client.
$fecha_factura: Data de la factura.
*/



function calculDataVencimentFactura($id_client,$fecha_factura) 
{ 
	global $db;
		$sqlc = "select * from sgm_clients where id=".$id_client;
		$resultc = mysql_query(convert_sql($sqlc));
		$rowc = mysql_fetch_array($resultc);

		$sqlt = "select count(*) as total from sgm_clients_dias_recibos where id_cliente=".$rowc["id"]." order by dia";
		$resultt = mysql_query(convert_sql($sqlt));
		$rowt = mysql_fetch_array($resultt);
		if ($rowt["total"] == 0) {
			$a = date("Y", strtotime($fecha_factura));
			$m = date("m", strtotime($fecha_factura));
			$d = date("d", strtotime($fecha_factura));
			if ($rowc["dias"] == 1) { $fecha_vencimiento = date("Y-m-d", mktime(0,0,0,$m ,$d+$rowc["dias_vencimiento"], $a)); }
			if ($rowc["dias"] == 0) { $fecha_vencimiento = date("Y-m-d", mktime(0,0,0,$m+$rowc["dias_vencimiento"] ,$d, $a)); }
		} else {
			$control = 0;
			$sqlz = "select * from sgm_clients_dias_recibos where id_cliente=".$rowc["id"]." order by dia";
			$resultz = mysql_query(convert_sql($sqlz));
			while ($rowz = mysql_fetch_array($resultz)) {
				$a = date("Y", strtotime($fecha_factura));
				$m = date("m", strtotime($fecha_factura));
				$df = date("d", strtotime($fecha_factura));
				$d = $rowz["dia"];
				if (($df <= $d) and ($control == 0)) {
					if ($rowc["dias"] == 1) { $fecha_vencimiento = date("Y-m-d", mktime(0,0,0,$m ,$d+$rowc["dias_vencimiento"], $a)); }
					if ($rowc["dias"] == 0) { $fecha_vencimiento = date("Y-m-d", mktime(0,0,0,$m+$rowc["dias_vencimiento"] ,$d, $a)); }
					$control = 1;
				} 
				if ($control == 0) {
					if ($rowc["dias"] == 1) { $fecha_vencimiento = date("Y-m-d", mktime(0,0,0,$m+1 ,$d+$rowc["dias_vencimiento"], $a)); }
					if ($rowc["dias"] == 0) { $fecha_vencimiento = date("Y-m-d", mktime(0,0,0,$m+1+$rowc["dias_vencimiento"] ,$d, $a)); }
				}
			}
		}
	return $fecha_vencimiento;
}


?>