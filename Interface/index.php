
<?php
//Tableau qui contient les pages
$lesPages['accueil'] = 'accueil.php';
$lesPages['stats'] = 'stats.php';

//Definition de la page par defaut
$page = 'accueil';

if(!empty($_GET['page'])
&& array_key_exists($_GET['page'], $lesPages))
{
    //La page à afficher devient celle de l'URL
    $page = $_GET['page'];
}
?>


<html>
    <head>
        <title>Alcool</title>
    </head>

    <body>
		<center>
			Thesaurus : L'Alcool
		</center>
		</br>
        <div id="menu">
            <!-- Menu de navigation du site -->
			<center>
				<?php include('navigation.php'); ?>
			</center>
        </div>
		
        <div id="page">
            <!-- Le contenu, affichera les resultats etc  -->
			<!-- Sera principalement du JavaScript  -->	
			<?php include($lesPages[$page]); ?>
        </div>

    </body>
</html>