
<div id="lettreRecherche">
<?php
	echo '<ul id="listeLettres">';
	echo '<li><strong>Recherche par lettre :</strong></li>';
	    for($i=0;$i<=25;$i++){
		 echo '<li><a href="index.php?page=recherche?l='.chr(65+$i).'">'.chr(65+$i).'</a></li>';
	    }
	echo '</ul>';
?>
</div>
