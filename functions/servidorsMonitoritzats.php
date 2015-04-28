<?php
error_reporting(~E_ALL);

/*
Mostra la pantalla general d'estat dels servidors del clients.
$id_client: identificador del client (id de la taula sim clients).
$serv_linea: numero de servidor a mostrar a cada linea.
$ssop: subopció des d'on es crida la funció.
*/


function servidorsMonitoritzats ($id_cliente, $serv_linea,$ssop){
	global $db,$dbhandle,$Uso,$Memoria;
	echo "<tr>";
	$i = 1;
	$sqlcs2 = "select * from sgm_clients_servidors where id_client in (".$id_cliente.") and visible=1";
	$resultcs2 = mysql_query($sqlcs2,$dbhandle);
	while ($rowcs2 = mysql_fetch_array($resultcs2)){
		if ($i > $serv_linea) { echo "</tr><tr>"; }
		$sqlcbd = "select * from sgm_clients_bases_dades where visible=1 and id_client in (".$id_cliente.")";
		$resultcbd = mysql_query($sqlcbd,$dbhandle);
		$rowcbd = mysql_fetch_array($resultcbd);
		$ip = $rowcbd["ip"];
		$usuario = $rowcbd["usuario"];
		$pass = $rowcbd["pass"];
		$base = $rowcbd["base"];

		$sqlcsa = "select * from sgm_clients_servidors_param";
		$resultcsa = mysql_query($sqlcsa,$dbhandle);
		$rowcsa = mysql_fetch_array($resultcsa);
		$cpu = $rowcsa["cpu"];
		$mem = $rowcsa["mem"];
		$memswap = $rowcsa["memswap"];
		$hhdd = $rowcsa["hd"];

		$dbhandle3 = mysql_connect($ip, $usuario, $pass, true) or die("Couldn't connect to SQL Server on $dbhost");
		$db3 = mysql_select_db($base, $dbhandle3) or die("Couldn't open database $myDB");

		$sqlna = "select * from sim_nagios where id_servidor=".$rowcs2["servidor"]." order by time_register desc";
		$resultna = mysql_query(convert_sql($sqlna,$dbhandle3));
		$rowna = mysql_fetch_array($resultna);

		if ($rowna["nagios"] == 0){ $nagios = "OFF"; $colorn = "red"; $colorna = "white"; } else { $nagios = "ON"; $colorn = "Yellowgreen"; $colorna = "black"; }
		if ($rowna["httpd"] == 0){ $httpd = "OFF"; $colorh = "red"; $colorht = "white"; } else { $httpd = "ON"; $colorh = "Yellowgreen"; $colorht = "black"; }
		if ($rowna["mysqld"] == 0){ $mysqld = "OFF"; $colors = "red"; $colorsq = "white"; } else { $mysqld = "ON"; $colors = "Yellowgreen"; $colorsq = "black"; }
		if ($rowna["cpu"] >= $cpu){ $colorc = "red"; $colorcp = "white"; } else { $colorc = "Yellowgreen"; $colorcp = "black"; }
		if ($rowna["mem"] >= $mem){ $colorm = "red"; $colorme = "white"; } else { $colorm = "Yellowgreen"; $colorme = "black"; }
		if ($rowna["mem_swap"] <= $memswap){ $colorms = "red"; $colormsw = "white"; } else { $colorms = "Yellowgreen"; $colormsw = "black"; }
		if ($rowna["hd"] <= $hhdd){ $colorhd = "red"; $colorhhdd = "white"; } else { $colorhd = "Yellowgreen"; $colorhhdd = "black"; }
		$hd = ($rowna["hd"]/1000000);
		$diezmin = 600;
		if (($rowna["time_register"]+$diezmin) < time()){
			$color_linea = "red";
			$color_letras = "white";
			$colorn = "red"; $colorna = "white";
			$colorh = "red"; $colorht = "white";
			$colors = "red"; $colorsq = "white";
			$colorc = "red"; $colorcp = "white";
			$colorm = "red"; $colorme = "white";
			$colorms = "red"; $colormsw = "white";
			$colorhd = "red"; $colorhhdd = "white";
		} else { $color_linea = "white";}
		echo "<td style=\"vertical-align:top;\"><table>";
			echo "<tr><td style=\"vertical-align:top;\">".$rowcs2["descripcion"]."</td></tr>";
			echo "<tr><td><table><tr>";
				echo "<td style=\"text-align:center;vertical-align:top;background-color:".$color_linea.";color:".$color_letras.";\">";
					$fecha_ser = date("Y-m-d H:i:s", $rowna["time_server"]);
					echo $fecha_ser."<br>";
					echo "<a href=\"index.php?op=".$_GET["op"]."&sop=".$ssop."&id=".$_GET["id"]."&id_serv=".$rowcs2["servidor"]."&id_cli=".$id_cliente."\" style=\"text-decoration: none;\"><img src=\"".$urlmgestion."/archivos_comunes/images/server_nagios.JPG\" style=\"border:0px;\"></a>";
				echo "</td>";
				echo "<td style=\"vertical-align:top;\">";
					echo "<table>";
						echo "<tr><td style=\"text-align:left;background-color:".$colorc.";color:".$colorcp."\">".$Uso." CPU : ".$rowna["cpu"]."%</td></tr>";
						echo "<tr><td style=\"text-align:left;background-color:".$colorm.";color:".$colorme."\">".$Uso." ".$Memoria." : ".$rowna["mem"]."%</td></tr>";
						echo "<tr><td style=\"text-align:left;background-color:".$colorms.";color:".$colormsw."\">".$Uso." ".$Memoria." SWAP : ".$rowna["mem_swap"]."%</td></tr>";
						echo "<tr><td style=\"text-align:left;background-color:".$colorhd.";color:".$colorhhdd."\">".$Espacio." HD : ".number_format ( $hd,2,".",",")." Gb.</td></tr>";
						echo "<tr><td style=\"text-align:left;background-color:".$colorn.";color:".$colorna."\">Nagios : ".$nagios."</td></tr>";
						echo "<tr><td style=\"text-align:left;background-color:".$colorh.";color:".$colorht."\">HTTP : ".$httpd."</td></tr>";
						echo "<tr><td style=\"text-align:left;background-color:".$colors.";color:".$colorsq."\">MYSQL : ".$mysqld."</td></tr>";
					echo "</table>";
				echo "</td>";
			echo "</tr></table></td></tr>";
		echo "</table></td>";
		$i++;
	}
	echo "</tr>";
}

/*
Mostra la pantalla amb la informació detallada d'un servidor de client concret.
$id_client: identificador del client (id de la taula sim_clients).
$id_serv: identificador del servidor (id de la taula sim_clients_servidors).
$color: color corporatiu (blau a SIMGes i gris a Area de Clients).
*/

function detallServidorsMonitoritzats ($id_cliente,$id_serv,$color){
	global $db,$dbhandle,$Volver,$Dia,$Mes,$Any,$Ultimos,$Estados,$Buscar,$Fecha,$Registro,$Servidor,$Uso,$Memoria,$Espacio;
		$sqlcbd = "select * from sgm_clients_bases_dades where visible=1 and id_client in (".$id_cliente.")";
		$resultcbd = mysql_query(convert_sql($sqlcbd));
		$rowcbd = mysql_fetch_array($resultcbd);
		$ip = $rowcbd["ip"];
		$usuario = $rowcbd["usuario"];
		$pass = $rowcbd["pass"];
		$base = $rowcbd["base"];

		$sqlcsa = "select * from sgm_clients_servidors_param";
		$resultcsa = mysql_query(convert_sql($sqlcsa));
		$rowcsa = mysql_fetch_array($resultcsa);
		$cpu = $rowcsa["cpu"];
		$mem = $rowcsa["mem"];
		$memswap = $rowcsa["memswap"];
		$hhdd = $rowcsa["hd"];

		$sqlcs = "select * from sgm_clients_servidors where servidor=".$id_serv." and id_client in (".$id_cliente.") and visible=1";
		$resultcs = mysql_query(convert_sql($sqlcs,$dbhandle));
		$rowcs = mysql_fetch_array($resultcs);

		echo "<strong>".$Ultimos." ".$Estados." :</strong> ".$rowcs["descripcion"]."";
		echo "<br>";
			echo "<table><tr>";
					echo "<td style=\"width:100px;height:20px;text-align:center;vertical-align:middle;background-color:".$color.";border:1px solid black\">";
						echo "<a href=\"javascript:history.go(-1);\" style=\"color:white;\">&laquo; ".$Volver."</a>";
					echo "</td>";
			echo "</tr></table>";
		echo "<br>";
		echo "<center><table cellpadding=\"0\" cellspacing=\"0\">";
			echo "<tr style=\"background-color:silver\"><td>".$Dia."</td><td>".$Mes."</td><td>".$Any."</td><td></td></tr>";
			echo "<form action=\"index.php?op=".$_GET["op"]."&sop=".$_GET["sop"]."&id_cli=".$id_cliente."&id_serv=".$_GET["id_serv"]."\" method=\"post\">";
			echo "<tr>";
				echo "<td><select name=\"dia\" style=\"width:40px\">";
					for ($i=1;$i<=31;$i++){
						if (($_POST["dia"] != "") and ($_POST["dia"] == $i)){
							echo "<option value=\"".$i."\" selected>".$i."</option>";
						} elseif (($_POST["dia"] == "") and (date("j") == $i)) {
							echo "<option value=\"".$i."\" selected>".$i."</option>";
						} else {
							echo "<option value=\"".$i."\">".$i."</option>";
						}
					}
					echo "</select></td>";
				echo "<td><select name=\"mes\" style=\"width:40px\">";
					for ($i=1;$i<=12;$i++){
						if (($_POST["mes"] != "") and ($_POST["mes"] == $i)){
							echo "<option value=\"".$i."\" selected>".$i."</option>";
						} elseif (($_POST["mes"] == "") and (date("n")) == $i) {
							echo "<option value=\"".$i."\" selected>".$i."</option>";
						} else {
							echo "<option value=\"".$i."\">".$i."</option>";
						}
					}
					echo "</select></td>";
				echo "<td><select name=\"any\" style=\"width:60px\">";
					for ($i=2013;$i<=2023;$i++){
						if (($_POST["any"] != "") and ($_POST["any"] == $i)){
							echo "<option value=\"".$i."\" selected>".$i."</option>";
						} elseif (($_POST["any"] == "") and (date("Y") == $i)) {
							echo "<option value=\"".$i."\" selected>".$i."</option>";
						} else {
							echo "<option value=\"".$i."\">".$i."</option>";
						}
					}
					echo "</select></td>";
					echo "<td><input type=\"submit\" value=\"".$Buscar."\"></td>";
			echo "</form>";
			echo "</tr>";
		echo "</table></center>";
		echo "<br><br>";
		echo "<center>";
		echo "<table cellpadding=\"0\" cellspacing=\"0\" style=\"width:1200px\">";
			echo "<tr style=\"background-color:silver\">";
				echo "<td style=\"text-align:center;width:150px\">".$Fecha." ".$Registro."</td>";
				echo "<td style=\"text-align:center;width:150px\">".$Fecha." ".$Servidor."</td>";
				echo "<td style=\"text-align:center;width:100px\">% ".$Uso." CPU</td>";
				echo "<td style=\"text-align:center;width:150px\">% ".$Uso." ".$Memoria."</td>";
				echo "<td style=\"text-align:center;width:150px\">% ".$Uso." ".$Memoria." SWAP</td>";
				echo "<td style=\"text-align:center;width:100px\">".$Espacio." HD</td>";
				echo "<td style=\"text-align:center;width:80px\">Nagios</td>";
				echo "<td style=\"text-align:center;width:80px\">HTTP</td>";
				echo "<td style=\"text-align:center;width:80px\">MYSQL</td>";
			echo "</tr>";

		$dbhandle2 = mysql_connect($ip, $usuario, $pass, true) or die("Couldn't connect to SQL Server on $dbhost");
		$db2 = mysql_select_db($base, $dbhandle2) or die("Couldn't open database $myDB");

		if ($_POST["dia"] != ""){
			$data_ini = (date(U, mktime (0,0,0,$_POST["mes"],$_POST["dia"],$_POST["any"])));
			$data_fin = (date(U, mktime (23,59,59,$_POST["mes"],$_POST["dia"],$_POST["any"])));
		} else {
			$data_ini = (date(U, mktime (0,0,0,date("n"),date("j"),date("Y"))));
			$data_fin = (date(U, mktime (23,59,59,date("n"),date("j"),date("Y"))));
		}
			$sqlna = "select * from sim_nagios where id_servidor=".$_GET["id_serv"]." and time_register between ".$data_ini." and ".$data_fin." order by time_register desc";
			$resultna = mysql_query(convert_sql($sqlna,$dbhandle2));
			while ($rowna = mysql_fetch_array($resultna)){
				if ($rowna["nagios"] == 0){ $nagios = "OFF"; $colorn = "red"; $colorna = "white"; } else { $nagios = "ON"; $colorn = "white"; $colorna = "black"; }
				if ($rowna["httpd"] == 0){ $httpd = "OFF"; $colorh = "red"; $colorht = "white"; } else { $httpd = "ON"; $colorh = "white"; $colorht = "black"; }
				if ($rowna["mysqld"] == 0){ $mysqld = "OFF"; $colors = "red"; $colormy = "white"; } else { $mysqld = "ON"; $colors = "white"; $colormy = "black"; }
				if ($rowna["cpu"] >= $cpu){ $colorc = "red"; $colorcp = "white"; } else { $colorc = "white"; $colorcp = "black"; }
				if ($rowna["mem"] >= $mem){ $colorm = "red"; $colorme = "white"; } else { $colorm = "white"; $colorme = "black"; }
				if ($rowna["mem_swap"] <= $memswap){ $colorms = "red"; $colormsw = "white"; } else { $colorms = "white"; $colormsw = "black"; }
				if ($rowna["hd"] <= $hhdd){ $colorhd = "red"; $colorhhdd = "white"; } else { $colorhd = "white"; $colorhhdd = "black"; }
				$difer = $rowna["time_register"] - $rowna["time_server"];
				if ($fechaant > 0){$difer2 = $fechaant - $rowna["time_register"];} else { $difer2=0;}
				if ((($difer < -600) or ($difer > 600)) or ($difer2 > 600)){ $colorti = "red"; $colorte = "white"; } else { $colorti = "white"; $colorte = "black"; }
				$fecha_reg = date("Y-m-d H:i:s", $rowna["time_register"]);
				$fecha_ser = date("Y-m-d H:i:s", $rowna["time_server"]);
				$hd = ($rowna["hd"]/1000000);
				echo "<tr>";
					echo "<td style=\"text-align:center;width:150px;heitgh:40px;background-color:".$colorti.";color:".$colorte.";\">".$fecha_reg."</td>";
					echo "<td style=\"text-align:center;width:150px;heitgh:40px;background-color:".$colorti.";color:".$colorte.";\">".$fecha_ser."</td>";
					echo "<td style=\"text-align:center;width:80px;heitgh:40px;background-color:".$colorc.";color:".$colorcp.";\">".$rowna["cpu"]."</td>";
					echo "<td style=\"text-align:center;width:150px;heitgh:40px;background-color:".$colorm.";color:".$colorme.";\">".$rowna["mem"]."</td>";
					echo "<td style=\"text-align:center;width:150px;heitgh:40px;background-color:".$colorms.";color:".$colormsw.";\">".$rowna["mem_swap"]."</td>";
					echo "<td style=\"text-align:center;width:150px;heitgh:40px;background-color:".$colorhd.";color:".$colorhhdd.";\">".number_format ( $hd,2,".",",")." Gb.</td>";
					echo "<td style=\"text-align:center;width:80px;heitgh:40px;background-color:".$colorn.";color:".$colorna.";\">".$nagios."</td>";
					echo "<td style=\"text-align:center;width:80px;heitgh:40px;background-color:".$colorh.";color:".$colorht.";\">".$httpd."</td>";
					echo "<td style=\"text-align:center;width:80px;heitgh:40px;background-color:".$colors.";color:".$colormy.";\">".$mysqld."</td>";
				echo "</tr>";
				$fechaant = $rowna["time_register"];
			}
		mysql_close($dbhandle2);
		echo "</table>";
		echo "</center>";
}

?>