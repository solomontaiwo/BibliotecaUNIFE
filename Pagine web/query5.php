<?php 
	$nome=$_POST["nome"];
    $cognome=$_POST["cognome"];
    $matricola=$_POST["matricola"];

	include_once('php/connessione.php');

	if(empty($matricola)){
	    $sql = "SELECT *
	    FROM BibliotecaUNIFE.Utente 
	    WHERE Utente.Nome LIKE '%".$nome."%' AND Utente.Cognome LIKE '%".$cognome."%'";
	}else{
		$sql = "SELECT *
		FROM BibliotecaUNIFE.Utente 
		WHERE Utente.N_atricola = '$matricola' AND Utente.Nome LIKE '%".$nome."%' AND Utente.Cognome LIKE '%".$cognome."%'";
	}
	
    $result = mysqli_query($link, $sql);
	
    $TotTupleT=0;
    while ($row = mysqli_fetch_array($result)) {
		$TotTupleT++;
		$Html =  $Html."<tr><td>$row[0]</td> <td>$row[1]</td> <td>$row[2]</td><td>$row[3]</td><td>$row[4], N.$row[5], $row[7], $row[6]</td><td>$row[8]</td><td>$row[9]</td><td>
		<form action='php/getPrestiti.php' method='POST'>
		<input type='hidden' value='$row[0]' name='matricola'><input type='submit' style=' width: 100%;' value='Prestiti'>
		</form></td></tr>";
    }
	    
    mysqli_close($link);
?>

<!DOCTYPE html>
<html lang="it">
    <head>
        <meta charset="utf-8">
		        
		<title>Ricerca utente e storico</title>

		<style>
			table, td, th {
				text-align:center;
				width: 100%;
				vertical-align: middle;
			}

            .centerLink {
            display: flex;
            justify-content: center;
            align-items: center;
            }
		</style>
    </head>

    <body>

        <div style="text-align: center;"><a href="../index.html"><img src="../immagini/logo_unife.png" height="100px"
                        width="200px"></a></div>
        <h1 style="text-align: center;">Gestione Biblioteca UNIFE - Ricerca utente e storico</h1>

        <hr><br>

		<form action="query5.php" method="POST">
        <fieldset>
		
		    <p style="text-align: center">
		    Ricerca di un utente della biblioteca e il suo storico dei prestiti 
		    (compresi quelli in corso)
		    </p>

		  	<input style="width:100%" type="text" name="nome" placeholder="Scrivi qui il nome dell'utente">
            <input  style="width:100%" type="text" name="cognome" placeholder="Scrivi qui il cognome dell'utente">
            <input  style="width:100%" type="text" name="matricola" placeholder="Scrivi qui la matricola dell'utente">
            <input style="width: 100%; " type="submit" value="Invia" />
		    
            <br>
		
        </fieldset>
		</form>
		<h3>Totale risultati trovati: <?php echo $TotTupleT; ?></h3>

		<table style="width:100%">
            <tr>
            <th>Matricola</th>
            <th>Nome</th>
            <th>Cognome</th>
            <th>Numero di telefono</th>
            <th>Indirizzo</th>
            <th>Sesso</th>
            <th>Data di nascita</th>
            <th>Storico prestiti</th>
            </tr>
            <?php echo $Html?>

		</table>

		<div  style="text-align:center"> 
		<?php echo $htmlPage; ?>
		</div>
		
        <div class="centerLink"><a href="../index.html" style="text-align:center;">Torna alla homepage</a></div>

		<br><hr>

		<footer style="text-align: center;">
			<p>Basi di dati 2021/22 - Progetto di Gaia Marzola e Solomon Olamide Taiwo (Gruppo n. 6)</p>
    	</footer>

    </body>

</html>
