<?php
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
	$sessionAdmin = isset($_SESSION['admin'])? '<div id="admin">Bienvenue Administrateur</div>': '';
	
	echo $sessionAdmin; 
	$ajoutform = false;
	echo $message;

	// Permuter entre les formulaires / boutons
	switch ($_POST['ajoutSup']) {
		case 'Ajouter':
		$ajoutform = true;
		break;
		case 'Modifier/Supprimer':
		$ajoutform = false;
		break;
		default:
		// erreur
		break;
	}
	switch ($_POST['retour']) {
		case 'Retour':
		$ajoutform = false;
		break;
		default:
		// erreur
		break;
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
				<BR /><BR /><input type="submit" value="Valider">
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
	/* JavaScripts */
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

