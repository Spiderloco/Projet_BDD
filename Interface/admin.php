<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

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


	// On initialise les sessions
	session_start();

	// On définit le mot de passe et login
	define( 'USER','administrateur');
	define( 'PASS','admin123');
	// Message a afficher en cas d'erreur
	$message = '';
	
	if(isset($_POST) && !empty($_POST['login']) && !empty($_POST['motDePasse'])) {
		$login = htmlspecialchars($_POST['login']);
		$motDePasse = htmlspecialchars($_POST['motDePasse']);
		// connexion a la BD
		// verifications
		if ($login == USER && $motDePasse == PASS) {
		   
			$_SESSION['admin'] = $_SERVER['REMOTE_ADDR'];
		   header('Location: index.php?page=admin');
		}
		else {
		// Autrement => message d'erreur
		$message = 'Nom d\'utilisateur ou mot de passe faux';
		}
	}

	// Pour gerer la deconnexion
	if(isset($_GET['deconnexion'])){
		session_destroy();
		header('Location: index.php?page=admin');
	
	}

	// On déclare le mode admin
	$sessionAdmin = isset($_SESSION['admin'])? 'ok': '';
	
	$ajoutform = false;
	echo $message;

	// Permuter entre les formulaires / boutons
	switch ($_POST['ajoutSup']) {
		case 'Ajouter':
		$ajoutform = true;
		$suppform = false;
		break;
		case 'Modifier/Supprimer':
		$suppform = true;
		$ajoutform = false;
		break;
		default:
		// erreur
		break;
	}
	switch ($_POST['retour']) {
		case 'Retour':
		$ajoutform = false;
		$suppform = false;
		break;
		default:
		// erreur
		break;
	}
	if(isset($_POST['validerAjout'])) {
		echo $_POST['validerAjout'];

		$nom = $_POST['nom'];
		$description = $_POST['description'];
		switch ($_POST['RadioGroup']) {
			case '1':
				// requete ajout descripteur
				$requete = $sth->prepare("INSERT INTO DESCRIPTEUR VALUES (:terme, :description)");
				$requete->bindParam(':terme', $nom, PDO::PARAM_STR, 50);
				$requete->bindParam(':description', $description, PDO::PARAM_STR, 100);
				$requete->execute();
				break;

			case '2':
				// requete ajout descripteur V
				$requete = $sth->prepare("INSERT INTO DESCRIPTEUR_VEDETTE VALUES (:terme)");
				$requete->bindParam(':terme', $nom, PDO::PARAM_STR, 50);
				$requete->execute();
				break;

			case '3':
				// requete ajout concept
				$requete = $sth->prepare("INSERT INTO CONCEPT VALUES (:terme)");
				$requete->bindParam(':terme', $nom, PDO::PARAM_STR, 50);
				$requete->execute();
				break;

			default:
				break;
		}
	}
	else if(isset($_POST['validerSupp'])) {
		echo $_POST['validerSupp'];

		$nom = $_POST['nomSup'];
		//requetes
		$requete = $sth->prepare("DELETE FROM SPECIALISATION_CONCEPT WHERE (ConceptSpecialise = :terme OR ConceptSpecialisant = :terme)");
		$requete->bindParam(':terme', $nom, PDO::PARAM_STR, 50);
		$requete->execute();

		$requete2 = $sth->prepare("DELETE FROM SPECIALISATION_DESCRIPTEUR WHERE (DescripteurV = :terme OR Concept = :terme)");
		$requete2->bindParam(':terme', $nom, PDO::PARAM_STR, 50);
		$requete2->execute();

		$requete3 = $sth->prepare("DELETE FROM ASSOCIATION WHERE (Descripteur = :terme OR DescripteurVedette = :terme)");
		$requete3->bindParam(':terme', $nom, PDO::PARAM_STR, 50);
		$requete3->execute();

		$requete4 = $sth->prepare("DELETE FROM SYNONYME WHERE (Descripteur = :terme OR Descripteur2 = :terme)");
		$requete4->bindParam(':terme', $nom, PDO::PARAM_STR, 50);
		$requete4->execute();

		$requete5 = $sth->prepare("DELETE FROM CONCEPT WHERE Concept = :terme");
		$requete5->bindParam(':terme', $nom, PDO::PARAM_STR, 50);
		$requete5->execute();

		$requete6 = $sth->prepare("DELETE FROM DESCRIPTEUR_VEDETTE WHERE DescripteurVedette = :terme");
		$requete6->bindParam(':terme', $nom, PDO::PARAM_STR, 50);
		$requete6->execute();

		$requete7 = $sth->prepare("DELETE FROM DESCRIPTEUR WHERE libelle = :terme");
		$requete7->bindParam(':terme', $nom, PDO::PARAM_STR, 50);
		$requete7->execute();
	}

	//Si pas de session afficher le formulaire de connexion
	if(!$sessionAdmin){ ?>

	<form id="formulaireAuthentification" method="post" action="">
		<p><label id="labelLogin" for="login">Login :</label></br>
		<input id="login" name="login" type="text" value="" size="40" > </p>
		<p> <label id="labelMotDePasse" for="motDePasse">Mot de Passe (saisir 'admin123'):</label></br>
		<input id="motDePasse" name="motDePasse" type="password" value="" size="40" > </p>
		<p><input type="submit" name="boutonValider" id="boutonValider" value="VALIDER" ></p>
	</form>

	<?php
	// Sinon si on a choisi d'ajouter
	// on affiche le formulaire d'ajout de mot
 	} else { 
		if($ajoutform){ ?>
			<form id="formulaireRemplissage" method="post" action="index.php?page=admin">
				<label>*Nom :</label>
				<input type="text" name="nom" value=""/>
				<label>*Description :</label>
				<input type="text" name="description" value=""/>
				<!-- Checkbox --><BR />
				<INPUT id="id_radio" type="radio" name="RadioGroup" value="1">Descripteur<BR />
				<INPUT id="id_radiov" type="radio" name="RadioGroup" value="2">Descripteur Vedette<BR />
				<INPUT id="id_radiofail" type="radio" name="RadioGroup" value="3">Concept<BR /><BR />

				<label>Ajouter des relations</label>
				<input type="checkbox" value="dif" name="displayRelation" id="id_displayRelation"><BR />
			 	<select class = "inputRelation">
					<option class="noDescript" value="1">specialise</option>
		  			<option class="descript" value="2">est synonyme de</option>
		  			<option class="descript" value="3">est associe a</option>
				</select> 
				<input class = "champRelation" type="text" name="champ" value=""/>
				<BR /><BR /><input name="validerAjout" type="submit" value="Ajouter">
				<BR /><BR /><center><input name="retour" type="submit" id="boutonRetour" value="Retour"></center>
			</form>
		<?php
		} else if ($suppform){ ?>
			<form id="formulaireSupress" method="post" action="index.php?page=admin">
				<label>*Nom :</label>
				<input type="text" name="nomSup" value=""/>
				<BR /><BR /><input name="validerSupp" type="submit" value="Supprimer">
				<BR /><BR /><center><input name="retour" type="submit" id="boutonRetour" value="Retour"></center>
			</form>
		<?php
		// Sinon on demande de choisir entre ajouter et supprimer
		} else {?>
			<form method="post" action="index.php?page=admin">
				<div id="choixAdmin">
					<input name="ajoutSup" type="submit" id="boutonChoixAjout" value="Ajouter">
					<input name="ajoutSup" type="submit" id="boutonChoixModif" value="Modifier/Supprimer">
				</div>
			</form>
		<?php } ?>
	<center><a href="admin.php?deconnexion">Deconnexion</a></center>
	<?php } 
?>


<script>
	/* JavaScript */
	var toggleFieldsetRelation = function(){
		if(!$("#id_displayRelation").is(":checked") ){
			//On cache
			$(".inputRelation").hide();
			$(".champRelation").hide();		
		}
		else {
			//On affiche
			$(".inputRelation").show();
			$(".champRelation").show();
		}
	};

	toggleFieldsetRelation();

	$("#id_displayRelation").click(function() {
	toggleFieldsetRelation();
	});

	document.getElementById('id_radiofail').onclick = function(e) {
		if(!$("#id_displayRelation").is(":checked") ){
	       		var valeur = 1;
			$('.inputRelation').val(valeur);
			$(".descript").hide();
		}
		else{
			e.preventDefault();
			alert("Impossible de changer de categorie si des relations sont en cours d'ajout!");
		}
	}

	document.getElementById('id_radio').onclick = function(e) {
		if(!$("#id_displayRelation").is(":checked") ){
			var valeur = 2;
			$('.inputRelation').val(valeur);
		       	$(".descript").show();
		}
		else{
			e.preventDefault();
			alert("Impossible de changer de categorie si des relations sont en cours d'ajout!");
		}	
	}

	document.getElementById('id_radiov').onclick = function(e) {
		if(!$("#id_displayRelation").is(":checked") ){
			var valeur = 2;
			$('.inputRelation').val(valeur);
	       		$(".descript").show();	
		}
		else{
			e.preventDefault();
			alert("Impossible de changer de categorie si des relations sont en cours d'ajout!");
		}
	}
</script>
