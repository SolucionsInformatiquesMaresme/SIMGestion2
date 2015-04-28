<?php
error_reporting(~E_ALL);

/*
Mostra la pantalla del formulari per la creació dels informes dels contractes. Després crida el fitxer que crea el PDF.
*/


function informesContractes(){
	global $db,$Informes,$Cliente,$Mes,$Ano,$Horas,$Imprimir,$urlmgestion,$Contrato,$Ver_Horas,$Hasta;
	echo "<strong>".$Informes."</strong>";
	echo "<br><br>";
	echo "<center><table cellspacing=\"0\">";
		echo "<tr style=\"background-color:silver;\">";
			echo "<td>".$Cliente."</td>";
			echo "<td>".$Contrato."</td>";
			echo "<td>".$Mes."-".$Ano."</td>";
			echo "<td>".$Mes."-".$Ano." ".$Hasta."</td>";
			echo "<td>".$Ver_Horas."</td>";
			echo "<td></td>";
		echo "</tr><tr>";
			echo "<form method=\"post\" name=\"form2\" action=\"".$urlmgestion."/mgestion/gestion-contratos-informe-print-pdf.php\" target=\"popup\" onsubmit=\"window.open('', 'popup', '')\">";
			echo "<td><select name=\"id_cliente\" id=\"id_cliente\" style=\"width:300px\" onchange=\"desplegableCombinado5()\">";
				echo "<option value=\"0\">Todos</option>";
				$sqli = "select * from sgm_clients where visible=1 and id in (select id_cliente from sgm_contratos where visible=1 and activo=1) order by nombre";
				$resulti = mysql_query(convert_sql($sqli));
				while ($rowi = mysql_fetch_array($resulti)) {
					if ($_POST["id_cliente"] == $rowi["id"]){
						echo "<option value=\"".$rowi["id"]."\" selected>".$rowi["nombre"]." ".$rowi["apellido1"]." ".$rowi["apellido2"]."</option>";
					} else {
						echo "<option value=\"".$rowi["id"]."\">".$rowi["nombre"]." ".$rowi["apellido1"]." ".$rowi["apellido2"]."</option>";
					}
				}
			echo "</select></td>";
			echo "<td><select name=\"id_contrato\" id=\"id_contrato\" style=\"width:300px\" onchange=\"desplegableCombinado5()\">";
				echo "<option value=\"0\">Todos</option>";
				$sqlc = "select id,descripcion from sgm_contratos where visible=1 and id_cliente=".$_POST["id_cliente"];
				$resultc = mysql_query(convert_sql($sqlc));
				while ($rowc = mysql_fetch_array($resultc)) {
					if ($_POST["id_contrato"] == $rowc["id"]){
						echo "<option value=\"".$rowc["id"]."\" selected>".$rowc["descripcion"]."</option>";
					} else {
						echo "<option value=\"".$rowc["id"]."\">".$rowc["descripcion"]."</option>";
					}
				}
			echo "</select></td>";
			$sqlco = "select * from sgm_contratos where id=".$_POST["id_contrato"]." order by fecha_ini";
			$resultco = mysql_query(convert_sql($sqlco));
			$rowco = mysql_fetch_array($resultco);
			if ($rowco){
				$mes_ini = date("U",strtotime($rowco["fecha_ini"]));
				$mes_fin = date("U",strtotime($rowco["fecha_fin"]));
				$mes_act = $mes_ini;
			} else {
				$count = 1;
				$sqlco2 = "select fecha_ini,fecha_fin from sgm_contratos where visible=1";
				if ($_POST["id_cliente"] > 0) { $sqlco2.=" and id_cliente=".$_POST["id_cliente"]; }
				$sqlco2.=" order by fecha_ini";
				$resultco2 = mysql_query(convert_sql($sqlco2));
				while ($rowco2 = mysql_fetch_array($resultco2)){
					if ($count == 1) {
						$mes_ini = date("U",strtotime($rowco2["fecha_ini"])); $mes_fin = date("U",strtotime($rowco2["fecha_fin"])); $count ++;
					} else {
						if ($rowco2["fecha_ini"] < $mes_ini) {$mes_ini = date("U",strtotime($rowco2["fecha_ini"]));}
						if ($rowco2["fecha_fin"] > $mes_fin) {$mes_fin = date("U",strtotime($rowco2["fecha_fin"]));}
					}
				}
				$mes_act = $mes_ini;
			}
			echo "<td style=\"width:100px;\"><select name=\"fecha\" style=\"width:150px;\" onchange=\"desplegableCombinado5()\">";

				while (($mes_ini<=$mes_act) and (($mes_act<=$mes_fin) and ($mes_act<=time()))){
					$any_inicio = date("Y",$mes_act);
					$mes_inicio = date("m",$mes_act);

					if ($_POST["fecha"] == $mes_inicio."-".$any_inicio){
						echo "<option value=\"".$mes_inicio."-".$any_inicio."\" selected>".$mes_inicio."-".$any_inicio."</option>";
					} else {
						echo "<option value=\"".$mes_inicio."-".$any_inicio."\">".$mes_inicio."-".$any_inicio."</option>";
					}
					$proxim_any = date("Y",$mes_act);
					$proxim_mes = date("m",$mes_act);
					$proxim_dia = date("d",$mes_act);
					$mes_act = date("U",mktime(0,0,0,$proxim_mes+1,$proxim_dia,$proxim_any));
					
				}
			echo "</select></td>";
			$sqlco = "select * from sgm_contratos where id=".$_POST["id_contrato"]." order by fecha_ini";
			$resultco = mysql_query(convert_sql($sqlco));
			$rowco = mysql_fetch_array($resultco);
			if ($rowco){
				$mes_fin = date("U",strtotime($rowco["fecha_fin"]));
			} else {
				$mes_fin = 0;
				$count = 1;
				$sqlco2 = "select fecha_ini,fecha_fin from sgm_contratos where visible=1 and activo=1";
				if ($_POST["id_cliente"] > 0) { $sqlco2.=" and id_cliente=".$_POST["id_cliente"]; }
				$sqlco2.=" order by fecha_ini";
				$resultco2 = mysql_query(convert_sql($sqlco2));
				while ($rowco2 = mysql_fetch_array($resultco2)){
					if ($count == 1) {
						$mes_fin = date("U",strtotime($rowco2["fecha_fin"])); $count ++;
					} else {
						if ($rowco2["fecha_fin"] > $mes_fin) {$mes_fin = date("U",strtotime($rowco2["fecha_fin"]));}
					}
				}
			}

			$fecha_ini = date("U",strtotime("01-".$_POST["fecha"]));
			if (($_POST["fecha"] > 0) and ($fecha_ini > $mes_ini)){
				list($mes,$any) = explode ("-",$_POST["fecha"]);
			} else {
				$any = date("Y",$mes_ini);
				$mes = date("m",$mes_ini);
			}
			$mes_ini2 = date("U",mktime(0,0,0,$mes+1,1,$any));

			$mes_act = $mes_ini2;
			echo "<td style=\"width:100px;\"><select name=\"fecha_hasta\" style=\"width:150px;\">";
				echo "<option value=\"0\">-</option>";
				while (($mes_ini<=$mes_act) and (($mes_act<=$mes_fin) and ($mes_act<=time()))){
					$any_inicio = date("Y",$mes_act);
					$mes_inicio = date("m",$mes_act);

					echo "<option value=\"".$mes_inicio."-".$any_inicio."\">".$mes_inicio."-".$any_inicio."</option>";
					$proxim_any = date("Y",$mes_act);
					$proxim_mes = date("m",$mes_act);
					$proxim_dia = date("d",$mes_act);
					$mes_act = date("U",mktime(0,0,0,$proxim_mes+1,$proxim_dia,$proxim_any));
					
				}
			echo "</select></td>";
			echo "<td><select name=\"horas\" style=\"width:50px\">";
				if ($_POST["horas"] == 0){
					echo "<option value=\"0\" selected>NO</option>";
					echo "<option value=\"1\">SI</option>";
				} else {
					echo "<option value=\"0\">NO</option>";
					echo "<option value=\"1\" selected>SI</option>";
				}
			echo "</select></td>";
			echo "<td><input type=\"Submit\" value=\"".$Imprimir."\" style=\"width:100px\"></td>";
			echo "</form>";
		echo "</tr>";
	echo "</table></center>";
}


?>