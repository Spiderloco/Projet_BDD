
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
		echo '1';
		session_destroy();
		header('Location: index.php?page=admin');
	
	}

	// On déclare le mode admin
	$sessionAdmin = isset($_SESSION['admin'])? '<div id="admin">Bienvenue Administrateur</div>': '';
?>	

<?php
	echo $sessionAdmin; 
	echo $message;
	if(!$sessionAdmin){ ?>
<div id="formulaireAuthentification">
<form method="post" action="">
<p> <label id="labelLogin" for="login">Login :</label></br>
<input id="login" name="login" type="text" value="" size="40" > </p>
<p> <label id="labelMotDePasse" for="motDePasse">Mot de Passe (saisir 'admin123'):</label></br>
<input id="motDePasse" name="motDePasse" type="password" value="" size="40" > </p>
<p><input type="submit" name="boutonValider" id="boutonValider" value="VALIDER" ></p>
</form>
	<?php } else {?>
<div id="choixAdmin">
<input type="button" id="boutonChoixAjout" value="Ajouter des 
descripteurs" onclick="self.location.href='ajouterDescripteur.html'">
<input type="button" id="boutonChoixModif" value="Modifier/Supprimer
des descripteurs" onclick="self.location.href='modifDescripteur.html'">
</div>
<center><a href="admin.php?deconnexion">Deconnexion</a></center>
 <?php } ?>
</div>

