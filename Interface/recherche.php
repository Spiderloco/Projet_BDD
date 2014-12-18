

<?php 
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

if (isset($_POST['termeSaisi']) && !empty($_POST['termeSaisi'])) { ?>

<h1><?php echo $_POST['termeSaisi']; } ?></h1>

	<?php
		echo $termeSaisi;
		$termeSaisi = $_POST['termeSaisi'];
		$requete = $sth->prepare('SELECT description FROM descripteur WHERE libelle = :terme');
		$requete->bindParam(':terme', $termeSaisi, PDO::PARAM_STR, 30);
		$requete->execute();
		
		if($data = $requete->fetch(PDO::FETCH_ASSOC)) { ?>

			<h2>Definition</h2>
			<?php   
				echo $data['DESCRIPTION'] . '<br/>';?>
			<h2>Synonymes</h2>

			<h2>Est generalise par</h2>
			<h2>Est specialise par</h2>
			<h2>Autres associations</h2>

		<?php } else {
			echo 'Aucun terme ne correspond!';
		} ?>
