
<?php 

	// connexion à la base de données
	$tns = "
	   (DESCRIPTION =
	   (ADDRESS_LIST =
	   (ADDRESS = (PROTOCOL = TCP)(HOST = venus)(PORT = 1521))
	   )
	   (CONNECT_DATA =
	   (SERVICE_NAME = master)
	   )
	   )
	   ";
	$db_username = "jpastor";
	$db_password = "cx32000";
	try {
		$sth = new PDO("oci:dbname=".$tns,$db_username,$db_password);
	} catch(PDOException $e) {
		echo ($e->getMessage());
	}


	// recherche pas lettre
	if (isset($_GET['lettre']) && !empty($_GET['lettre'])){
		$lettreSelectionnee = $_GET['lettre'];
		$requete = $sth->prepare('SELECT libelle FROM descripteur WHERE libelle LIKE ?');
		$requete->execute(array("$lettreSelectionnee%")); 
		echo '<h2>Termes en "' . $lettreSelectionnee . '" :</h2>'; ?>
		<ul id="listeTermes"> 
		<?php
		while ($data = $requete->fetch(PDO::FETCH_ASSOC)) {
			echo '<li><a href="index.php?page=recherche&termeSelectionne=' . $data['LIBELLE'] . '">' . $data['LIBELLE'] . '</a></li>';
		}
		print_r($data);
		?>
		</ul>
		<?php
	}

	// recherche par mots
	else {
		// si recherche par mots via le formulaire à l'accueil
		if (isset($_POST['termeSaisi']) && !empty($_POST['termeSaisi'])) {
			$terme = strtolower($_POST['termeSaisi']);
		}
		// si recherche par mots via la recherche par lettre
		if (isset($_GET['termeSelectionne']) && !empty($_GET['termeSelectionne'])) {
			$terme = strtolower($_GET['termeSelectionne']);
		}
		?>

		<!-- requetes et affichage -->
		<h1><?php echo $terme; ?></h1>

		<?php 
		$requete = $sth->prepare('SELECT description FROM descripteur WHERE LOWER(libelle) = :terme');
		$requete->bindParam(':terme', $terme, PDO::PARAM_STR, 30);
		$requete->execute();

		if($data = $requete->fetch(PDO::FETCH_ASSOC)) { ?>
			<h2>Definition</h2>
			<?php echo $data['DESCRIPTION'] . '<br/>';?>
			<h2>Synonymes</h2>
			<h2>Est generalise par</h2>
			<h2>Est specialise par</h2>
			<h2>Autres associations</h2>

		<?php } 
		else {
			echo 'Aucun terme ne correspond!';
		}

	} ?>



