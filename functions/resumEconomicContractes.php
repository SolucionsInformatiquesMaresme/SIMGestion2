<?php
error_reporting(~E_ALL);

function resumEconomicContractes($id){
	global $Enero,$Febrero,$Marzo,$Abril,$Mayo,$Junio,$Julio,$Agosto,$Septiembre,$Octubre,$Noviembre,$Diciembre,$Total;
		echo "<center><table cellspacing=\"0\" style=\"width:200px\">";
			echo "<tr>";
				if ($_GET["y"] == "") {
					$fechahoy = getdate();
					$yact = $fechahoy["year"];
				} else {
					$yact = $_GET["y"];
				}
				$yant = $yact - 1;
				$ypost = $yact +1;
				if ($yant >= 2012){
					echo "<td style=\"text-align:center;\"><a href=\"index.php?op=".$_GET["op"]."&sop=".$_GET["sop"]."&id=".$_GET["id"]."&id_con=".$_GET["id_con"]."&y=".$yant."\">".$yant."&lt;</a></td>";
				} else { echo "<td></td>";}
				echo "<td style=\"text-align:center;\"><a href=\"index.php?op=".$_GET["op"]."&sop=".$_GET["sop"]."&id=".$_GET["id"]."&id_con=".$_GET["id_con"]."&y=".$yact."\">".$yact."</a></td>";
				echo "<td style=\"text-align:center;\"><a href=\"index.php?op=".$_GET["op"]."&sop=".$_GET["sop"]."&id=".$_GET["id"]."&id_con=".$_GET["id_con"]."&y=".$ypost."\">&gt;".$ypost."</a></td>";
		echo "</tr></table></center>";
	if ($id == 0) { 
		echo "<br><center><table cellspacing=\"0\" style=\"width:1800px\">";
			echo "<tr>";
				echo "<td></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Enero."</strong></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Total." €</strong></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Febrero."</strong></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Total." €</strong></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Marzo."</strong></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Total." €</strong></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Abril."</strong></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Total." €</strong></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Mayo."</strong></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Total." €</strong></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Junio."</strong></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Total." €</strong></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Julio."</strong></a></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Total." €</strong></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Agosto."</strong></a></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Total." €</strong></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Septiembre."</strong></a></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Total." €</strong></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Octubre."</strong></a></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Total." €</strong></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Noviembre."</strong></a></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Total." €</strong></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Diciembre."</strong></a></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Total." €</strong></td>";
			echo "</tr>";
			echo "<tr><td>&nbsp;</td></tr>";
			$mes = date("n");
			$sqltipos = "select * from sgm_contratos where activo=1 and renovado=0 and visible=1";
			$sqltipos .= " order by id_cliente";
			$resulttipos = mysql_query(convert_sql($sqltipos));
			while ($rowtipos = mysql_fetch_array($resulttipos)){
				unset($total_horas_mes);
				unset($total_euros_mes);
				$sqlc = "select * from sgm_clients where id=".$rowtipos["id_cliente"];
				$resultc = mysql_query(convert_sql($sqlc));
				$rowc = mysql_fetch_array($resultc);
				echo "<tr><td style=\"vertical-align:top;\" colspan=\"14\"><strong>";
					echo "<a href=\"index.php?op=1008&sop=210&id=".$rowc["id"]."\">".$rowc["nombre"]."</a> : </strong><a href=\"index.php?op=1011&sop=100&id=".$rowtipos["id"]."\">".$rowtipos["num_contrato"]."</a>";
				echo "</td></tr>";
				$sqls = "select * from sgm_contratos_servicio where visible=1 and id_contrato=".$rowtipos["id"]." order by servicio";
				$results = mysql_query(convert_sql($sqls));
				while ($rows = mysql_fetch_array($results)){
					echo "<tr>";
						echo "<td>".$rows["servicio"]."</td>";
					for ($x = 1; $x <= 12; $x++) {
						if ($x == $mes) {$color = "yellow";} else {$color = "white";}
						$inicio_mes = date("U", mktime(0,0,0,$x, 1, $yact));
						$final_mes = date("U", mktime(23,59,59,$x+1, 1-1,$yact));
						echo "<td style=\"text-align:right;background-color:".$color."\">";
							$sqlind = "select sum(duracion) as total from sgm_incidencias where fecha_inicio between ".$inicio_mes." and ".$final_mes." and id_incidencia IN (select id from sgm_incidencias where visible=1 and id_servicio=".$rows["id"].")";
							$resultind = mysql_query(convert_sql($sqlind));
							$rowind = mysql_fetch_array($resultind);
							$hora = $rowind["total"]/60;
							$horas = explode(".",$hora);
							$minutos = $rowind["total"] % 60;
							echo "".$horas[0]." h. ".$minutos." m.";
						echo "</td>";
						$total_euros = $hora * $rows["precio_hora"];
						echo "<td style=\"text-align:right;background-color:".$color."\">".number_format ($total_euros,2,',','')." €</td>";
						$total_horas_mes[$x] += $rowind["total"];
						$total_euros_mes[$x] += $total_euros;
					}
					echo "</tr>";
				}
				echo "<tr>";
					echo "<td></td>";
					for ($x = 1; $x <= 12; $x++) {
						if ($x == $mes) {$color = "yellow";} else {$color = "white";}
						$hora2 = $total_horas_mes[$x]/60;
						$horas2 = explode(".",$hora2);
						$minutos2 = $total_horas_mes[$x] % 60;
						echo "<td style=\"text-align:right;background-color:".$color."\"><strong>".$horas2[0]." h. ".$minutos2." m.</strong></td><td style=\"text-align:right;background-color:".$color."\"><strong>".number_format ($total_euros_mes[$x],2,',','')." €</strong></td>";
					}
				echo "</tr>";
				echo "<tr><td>&nbsp;</td></tr>";
			}
		echo "</table></center>";
	} else {
		echo "<br><center><table cellspacing=\"0\" style=\"width:1200px\">";
			echo "<tr>";
				echo "<td></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Enero."</strong></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Total." €</strong></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Febrero."</strong></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Total." €</strong></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Marzo."</strong></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Total." €</strong></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Abril."</strong></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Total." €</strong></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Mayo."</strong></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Total." €</strong></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Junio."</strong></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Total." €</strong></td>";
			echo "</tr>";
			echo "<tr><td>&nbsp;</td></tr>";
			$mes = date("n");
			$sqltipos = "select * from sgm_contratos where activo=1 and renovado=0 and visible=1 and id=".$id;
			$sqltipos .= " order by id_cliente";
			$resulttipos = mysql_query(convert_sql($sqltipos));
			while ($rowtipos = mysql_fetch_array($resulttipos)){
				unset($total_horas_mes);
				unset($total_euros_mes);
				$sqlc = "select * from sgm_clients where id=".$rowtipos["id_cliente"];
				$resultc = mysql_query(convert_sql($sqlc));
				$rowc = mysql_fetch_array($resultc);
				echo "<tr><td style=\"vertical-align:top;\" colspan=\"14\"><strong>";
				echo "</td></tr>";
				$sqls = "select * from sgm_contratos_servicio where visible=1 and id_contrato=".$rowtipos["id"]." order by servicio";
				$results = mysql_query(convert_sql($sqls));
				while ($rows = mysql_fetch_array($results)){
					echo "<tr>";
						echo "<td>".$rows["servicio"]."</td>";
					for ($x = 1; $x <= 6; $x++) {
						if ($x == $mes) {$color = "yellow";} else {$color = "white";}
						$inicio_mes = date("U", mktime(0,0,0,$x, 1, $yact));
						$final_mes = date("U", mktime(23,59,59,$x+1, 1-1,$yact));
						echo "<td style=\"text-align:right;background-color:".$color."\">";
							$sqlind = "select sum(duracion) as total from sgm_incidencias where fecha_inicio between ".$inicio_mes." and ".$final_mes." and id_incidencia IN (select id from sgm_incidencias where visible=1 and id_servicio=".$rows["id"].")";
							$resultind = mysql_query(convert_sql($sqlind));
							$rowind = mysql_fetch_array($resultind);
							$hora = $rowind["total"]/60;
							$horas = explode(".",$hora);
							$minutos = $rowind["total"] % 60;
							echo "".$horas[0]." h. ".$minutos." m.";
						echo "</td>";
						$total_euros = $hora * $rows["precio_hora"];
						echo "<td style=\"text-align:right;background-color:".$color."\"><a href=\"index.php?op=".$_GET["op"]."&sop=13&id=".$_GET["id"]."&id_con=".$_GET["id_con"]."&id_serv=".$rows["id"]."&mes=".$x."&any=".$yact."\">".number_format ($total_euros,2,',','')." €</a></td>";
						$total_horas_mes[$x] += $rowind["total"];
						$total_euros_mes[$x] += $total_euros;
					}
					echo "</tr>";
				}
				echo "<tr>";
					echo "<td></td>";
					for ($x = 1; $x <= 6; $x++) {
						if ($x == $mes) {$color = "yellow";} else {$color = "white";}
						$hora2 = $total_horas_mes[$x]/60;
						$horas2 = explode(".",$hora2);
						$minutos2 = $total_horas_mes[$x] % 60;
						echo "<td style=\"text-align:right;background-color:".$color."\"><strong>".$horas2[0]." h. ".$minutos2." m.</strong></td><td style=\"text-align:right;background-color:".$color."\"><strong><a href=\"index.php?op=".$_GET["op"]."&sop=13&id=".$_GET["id"]."&id_con=".$_GET["id_con"]."&mes=".$x."&any=".$yact."\">".number_format ($total_euros_mes[$x],2,',','')." €</a></strong></td>";
					}
				echo "</tr>";
				echo "<tr><td>&nbsp;</td></tr>";
			}
			echo "<tr><td>&nbsp;</td></tr>";
			echo "<tr>";
				echo "<td></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Julio."</strong></a></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Total." €</strong></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Agosto."</strong></a></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Total." €</strong></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Septiembre."</strong></a></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Total." €</strong></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Octubre."</strong></a></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Total." €</strong></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Noviembre."</strong></a></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Total." €</strong></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Diciembre."</strong></a></td>";
				echo "<td style=\"text-align:right;\"><strong>".$Total." €</strong></td>";
			echo "</tr>";
			echo "<tr><td>&nbsp;</td></tr>";
			$mes = date("n");
			$sqltipos = "select * from sgm_contratos where activo=1 and renovado=0 and visible=1 and id=".$id;
			$sqltipos .= " order by id_cliente";
			$resulttipos = mysql_query(convert_sql($sqltipos));
			while ($rowtipos = mysql_fetch_array($resulttipos)){
				unset($total_horas_mes);
				unset($total_euros_mes);
				$sqlc = "select * from sgm_clients where id=".$rowtipos["id_cliente"];
				$resultc = mysql_query(convert_sql($sqlc));
				$rowc = mysql_fetch_array($resultc);
				echo "<tr><td style=\"vertical-align:top;\" colspan=\"14\"><strong>";
				echo "</td></tr>";
				$sqls = "select * from sgm_contratos_servicio where visible=1 and id_contrato=".$rowtipos["id"]." order by servicio";
				$results = mysql_query(convert_sql($sqls));
				while ($rows = mysql_fetch_array($results)){
					echo "<tr>";
						echo "<td>".$rows["servicio"]."</td>";
					for ($x = 7; $x <= 12; $x++) {
						if ($x == $mes) {$color = "yellow";} else {$color = "white";}
						$inicio_mes = date("U", mktime(0,0,0,$x, 1, $yact));
						$final_mes = date("U", mktime(23,59,59,$x+1, 1-1,$yact));
						echo "<td style=\"text-align:right;background-color:".$color."\">";
							$sqlind = "select sum(duracion) as total from sgm_incidencias where fecha_inicio between ".$inicio_mes." and ".$final_mes." and id_incidencia IN (select id from sgm_incidencias where visible=1 and id_servicio=".$rows["id"].")";
							$resultind = mysql_query(convert_sql($sqlind));
							$rowind = mysql_fetch_array($resultind);
							$hora = $rowind["total"]/60;
							$horas = explode(".",$hora);
							$minutos = $rowind["total"] % 60;
							echo "".$horas[0]." h. ".$minutos." m.";
						echo "</td>";
						$total_euros = $hora * $rows["precio_hora"];
						echo "<td style=\"text-align:right;background-color:".$color."\"><a href=\"index.php?op=".$_GET["op"]."&sop=13&id=".$_GET["id"]."&id_con=".$_GET["id_con"]."&id_serv=".$rows["id"]."&mes=".$x."&any=".$yact."\">".number_format ($total_euros,2,',','')." €</a></td>";
						$total_horas_mes[$x] += $rowind["total"];
						$total_euros_mes[$x] += $total_euros;
					}
					echo "</tr>";
				}
				echo "<tr>";
					echo "<td></td>";
					for ($x = 7; $x <= 12; $x++) {
						if ($x == $mes) {$color = "yellow";} else {$color = "white";}
						$hora2 = $total_horas_mes[$x]/60;
						$horas2 = explode(".",$hora2);
						$minutos2 = $total_horas_mes[$x] % 60;
						echo "<td style=\"text-align:right;background-color:".$color."\"><strong>".$horas2[0]." h. ".$minutos2." m.</strong></td><td style=\"text-align:right;background-color:".$color."\"><strong><a href=\"index.php?op=".$_GET["op"]."&sop=13&id=".$_GET["id"]."&id_con=".$_GET["id_con"]."&mes=".$x."&any=".$yact."\">".number_format ($total_euros_mes[$x],2,',','')." €</a></strong></td>";
					}
				echo "</tr>";
				echo "<tr><td>&nbsp;</td></tr>";
			}
		echo "</table></center>";
	}
}

?>