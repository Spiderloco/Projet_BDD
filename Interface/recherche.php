
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
	//$db_username = "jpastor";
	//$db_password = "cx32000";
	$db_username = "vderousiers";
	$db_password = "mdpOracl";

	try {
		$sth = new PDO("oci:dbname=".$tns,$db_username,$db_password);
	} catch(PDOException $e) {
		echo ($e->getMessage());
	}


	// recherche pas lettre
	if (isset($_GET['lettre']) && !empty($_GET['lettre'])){
		$lettreSelectionneeMaj = $_GET['lettre'];
		$lettreSelectionneeMin = strtolower($_GET['lettre']);
		$requete = $sth->prepare('(SELECT libelle FROM descripteur WHERE libelle LIKE ?) UNION (SELECT libelle FROM descripteur WHERE libelle LIKE ?)');
		$requete->execute(array("$lettreSelectionneeMaj%", "$lettreSelectionneeMin%")); 
		echo '<h2>Termes en "' . $lettreSelectionneeMaj . '" :</h2>'; ?>
		<div class="rechercheL">
		<ul id="listeTermes"> 
		<?php
		while ($data = $requete->fetch(PDO::FETCH_ASSOC)) {
			echo '<li><a href="index.php?page=recherche&termeSelectionne=' . $data['LIBELLE'] . '">' . $data['LIBELLE'] . '</a></li>';
		}
		?>
		</ul>
		</div>
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
			<?php 
				$requeteSynonymes = $sth->prepare('(SELECT Descripteur FROM synonyme WHERE LOWER(Descripteur2) = :terme) UNION (SELECT Descripteur2 FROM synonyme 					WHERE LOWER(Descripteur) = :terme)');
				$requeteSynonymes->bindParam(':terme', $terme, PDO::PARAM_STR, 30);
				$requeteSynonymes->execute();
				$res = $requeteSynonymes->fetchAll();

				if (count($res) == 0) {
					echo "Ce terme n'a pas de synonymes !";
				} else { ?>
					<div class="rechercheL">
					<ul id="listeTermes"> <?php					
					foreach ($res as $ligne) {
						echo '<li><a href="index.php?page=recherche&termeSelectionne=' . $ligne['DESCRIPTEUR'] . '">' . $ligne['DESCRIPTEUR'] . '</a></li>';
					} ?>
					</ul>
					</div>
				<?php } ?>
					
			
			<h2>Est generalise par</h2>
			<?php
				$requeteGeneralisation = $sth->prepare('(SELECT DISTINCT ConceptSpecialisant FROM SPECIALISATION_CONCEPT WHERE LOWER(ConceptSpecialise) = :terme) 					UNION (SELECT DISTINCT Concept FROM SPECIALISATION_DESCRIPTEUR WHERE LOWER(DescripteurV) = :terme)');
				$requeteGeneralisation->bindParam(':terme', $terme, PDO::PARAM_STR, 30);
				$requeteGeneralisation->execute();
			
				$res = $requeteGeneralisation->fetchAll();
				if (count($res) == 0) {
					echo "Ce terme n'a pas de termes qui le generalise !";
				} else { ?>
					<div class="rechercheL">
					<ul id="listeTermes"> <?php					
					foreach ($res as $ligne) {
						echo '<li><a href="index.php?page=recherche&termeSelectionne=' . $ligne['CONCEPTSPECIALISANT'] . '">' . $ligne['CONCEPTSPECIALISANT'] . 							'</a></li>';
					} ?>
					</ul>
					</div>
				<?php } ?>


			<h2>Est specialise par</h2>
			<?php
				$requeteSpecialisation = $sth->prepare('(SELECT DISTINCT ConceptSpecialise FROM SPECIALISATION_CONCEPT WHERE LOWER(ConceptSpecialisant) = :terme) 					UNION (SELECT DISTINCT DescripteurV FROM SPECIALISATION_DESCRIPTEUR WHERE LOWER(Concept) = :terme)');
				$requeteSpecialisation->bindParam(':terme', $terme, PDO::PARAM_STR, 30);
				$requeteSpecialisation->execute();
			
				$res = $requeteSpecialisation->fetchAll();
				if (count($res) == 0) {
					echo "Ce terme n'a pas de termes qui le specialise !";
				} else { ?>
					<div class="rechercheL">
					<ul id="listeTermes"> <?php					
					foreach ($res as $ligne) {
						echo '<li><a href="index.php?page=recherche&termeSelectionne=' . $ligne['CONCEPTSPECIALISE'] . '">' .
						$ligne['CONCEPTSPECIALISE'] . '</a></li>';
					} ?>
					</ul>
					</div>
				<?php } ?>

			

			<h2>Autres associations</h2>
			<?php 
				$requeteAutresAssociations = $sth->prepare('(SELECT Descripteur FROM association WHERE LOWER(DescripteurVedette) = :terme) UNION 
				(SELECT DescripteurVedette FROM association WHERE LOWER(Descripteur) = :terme)');
				$requeteAutresAssociations->bindParam(':terme', $terme, PDO::PARAM_STR, 30);
				$requeteAutresAssociations->execute();
			
				$res = $requeteAutresAssociations->fetchAll();
				if (count($res) == 0) {
					echo "Ce terme n'a pas d'autres termes associee !";
				} else { ?>
					<div class="rechercheL">
					<ul id="listeTermes"> <?php			
					foreach ($res as $ligne) {
						echo '<li><a href="index.php?page=recherche&termeSelectionne=' . $ligne['DESCRIPTEUR'] . '">' . $ligne['DESCRIPTEUR'] . '</a></li>';
					}
					?></ul></div><?php
				}
		} else {
			echo 'Aucun terme ne correspond !';
		}

	} ?>
