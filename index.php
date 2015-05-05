<?php
include ("../archivos_comunes/config.php");
$dbhandle = mysql_connect($dbhost, $dbuname, $dbpass) or die("Couldn't connect to SQL Server on $dbhost");
$db = mysql_select_db($dbname, $dbhandle) or die("Couldn't open database $myDB");
?>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8"/>
    <meta name="SIMGetion" content="Web de gestió d'empresa" />
	<title>SIMGestion 2.0</title>
	<!--[if IE]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
<link rel="stylesheet" href="styles/style.css" type="text/css">
</head>
<body class="general">
	<header>
		<img src="images/logos/logo.jpg" alt="logo">
		<nav>
		  <ul class="menu">
<?php
			$sql = "select * from sgm_users_permisos_modulos_grupos where visible=1 order by nombre";
			$result = mysql_query($sql);
			while ($row = mysql_fetch_array($result)) {
?>
				<li><a href="#">
<?php
					echo $row["nombre"];
?>				
					</a>
					<ul>
<?php
					$sqlm = "select * from sgm_users_permisos_modulos where visible=1 and id_grupo=".$row["id"]." order by nombre";
					$resultm = mysql_query($sqlm);
					while ($rowm = mysql_fetch_array($resultm)) {
?>
							<li>
<?php
								echo "<a href=\"index.php?op=".$rowm["id_modulo"]."\">".$rowm["nombre"]."</a>";
?>				
							</li>
<?php
					}
?>
					</ul>
				 </li>
<?php
			}
?>
		  </ul>
		</nav>
	</header>
	<section class="articulos">
		<article class="post">
			<h2>Aquí va un post, con su titulo en h2</h2>
			<p>Aqui puede ir los contenidos del post</p>
		</article>
		<article class="post">
			<h2>Aquí va otro post, con su titulo en h2</h2>
			<p>Aqui puede ir los contenidos del post</p>
		</article>
	</section>
		<aside>
			<h2>Titulo del sidebar</h2>
			<p>alguna informacion que se muestra en la barra lateral </p>
			<ul>
				<li><a href="#">enlaces</a></li>
				<li><a href="#">enlaces</a></li>
			</ul>
		</aside>
 <footer>
         © 2015 Solucions Informàtiques Maresme S.L. 
  </footer>
</body>
</html>