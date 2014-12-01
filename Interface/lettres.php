
<div id="lettreRecherche">
<?php
	echo '<ul id="listeLettres">';
	echo '<li>Recherche par Lettre : </li>';
	    for($i=0;$i<=25;$i++){
		 echo '<li><a href="index.php?page=recherche?l='.chr(97+$i).'">'.chr(97+$i).'</a></li>';
	    }
	echo '</ul>';
?>
</div>
