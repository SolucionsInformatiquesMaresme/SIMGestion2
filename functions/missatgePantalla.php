<?php
error_reporting(~E_ALL);

/*
Mostra un missatge a la pantalla, informatiu o d'error.
$text: missatge a mostrar.
$color: color de fons del missatge.
*/



function missatgePantalla($text,$color) 
{
	echo "<center><table><tr><td style=\"background-color:".$color."; color:white; width:400px; vertical-align:middle;height:50px; text-align:center;\">";
	echo $text;
	echo "</td></tr></table></center>";
}


?>