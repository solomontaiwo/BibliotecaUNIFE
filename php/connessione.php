<?php
	$link = mysqli_connect("127.0.0.1", "solomon", "solomon123", "BibliotecaUNIFE");

	if (!$link) { 
		echo "Impossibile collegarsi al database. Per cambiare le credenziali modifica il file /php/connessione.php";
		exit(-1);
	}
?>