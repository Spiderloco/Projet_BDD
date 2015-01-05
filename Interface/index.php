	
<?php
//Tableau qui contient les pages
$lesPages['accueil'] = 'accueil.php';
$lesPages['stats'] = 'stats.php';
$lesPages['admin'] = 'admin.php';
$lesPages['recherche'] = 'recherche.php';
for($i=0;$i<=25;$i++){
$lesPages['recherche&lettre='.chr(65+$i).''] = 'recherche.php';
}
//Definition de la page par defaut
$page = 'accueil';
//$lettre = '';

if(!empty($_GET['page'])
&& array_key_exists($_GET['page'], $lesPages))
{
    //La page à afficher devient celle de l'URL
    $page = $_GET['page'];
}

?>
<html>
    <head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="style.css" /> 
		<title>Thésaurus des alcools</title>
    </head>
	


    <body>
	<div id="body">
		<header>
		<div id="titre">Thésaurus des alcools</div>
		<!-- Menu de navigation du site -->
		<nav><?php include('navigation.php'); ?></nav>
		</header>
		
        <div id="page">
            <!-- Le contenu, affichera les resultats etc  -->
			<!-- Sera principalement du JavaScript  -->
			<?php include('lettres.php'); ?>	
			<?php include($lesPages[$page]); ?>
        </div>
	
	
	<footer>
		<p>Site réalisé par Jérémy, Julien, Loic, Vincent, Yohann </br>
		Dans le cadre du projet de "Bases de données avancées" de M1 Informatique à l'UM2</p>
	</footer>
	
	</div>
    </body>
</html>
