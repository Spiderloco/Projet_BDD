
<?php
	
	if(isset($_POST) && !empty($_POST['login']) && !empty($_POST['motDePasse'])) {
		$login = htmlspecialchars($_POST['login']);
		$motDePasse = htmlspecialchars($_POST['motDePasse']);
		// connexion a la BD
		// verifications
		if ($motDePasse == "test") {
		   //$page = 'admin';
		   header('Location: index.php?page=admin');
		   exit();
		}
	}
?>	



<div id="formulaireAuthentification">
<form method="post" action="">
	<p> <label id="labelLogin" for="login">Login :</label></br>
	<input id="login" name="login" type="text" value="" size="40" > </p>
	
	<p> <label id="labelMotDePasse" for="motDePasse">Mot de Passe (saisir 'test'):</label></br>
	<input id="motDePasse" name="motDePasse" type="password" value="" size="40" > </p>
		
	<p><input type="submit" name="boutonValider" id="boutonValider" value="VALIDER" ></p>
</form>
</div>