<?php 
	$matricola=$_POST["matricola"];

	include_once('connessione.php');
	
    $sql = "SELECT Libro.Titolo, Libro.ISBN, Libro.Lingua, Libro.Anno_pub, Prestito.Data_uscita, Prestito.Restituzione, Dipartimento.Nome, Dipartimento.Via, Dipartimento.N_civico, Dipartimento.Cap, Dipartimento.Città
	FROM Utente, Prestito, Libro, Dipartimento
	WHERE Utente.N_matricola = '$matricola' AND Utente.N_matricola = Prestito.N_matricola AND
	Libro.Cod_libro = Prestito.Cod_libro AND Libro.Cod_dip = Dipartimento.Cod_dip
	ORDER BY Prestito.Data_uscita DESC;";
    
    $result = mysqli_query($link, $sql);
    

    while ($row = mysqli_fetch_array($result)) {
		$state="Non restituito";
		if($row[5]==1){
			$state="Restituito";
		}
		$Html =  $Html."<tr><td>$row[0]</td> <td>$row[1]</td> <td>$row[2]</td><td>$row[3]</td><td>$row[4]</td><td>$state</td><td>$row[6]</td><td>$row[7], N.$row[8], $row[10], $row[9]</td></tr>";
    }
	    
    mysqli_close($link);
?>

<!DOCTYPE html>
<html lang="it">
    <head>
        <meta charset="utf-8">
		        
		<title>Storico utente</title>

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
        <h1 style="text-align: center;">Gestione Biblioteca UNIFE - Storico utente</h1>

        <hr><br>

        <fieldset>
            <p style="text-align: center">
            Utente con matricola: <b><?php echo $matricola;?></b>
            </p>
        </fieldset>
	
		<table style="width:100%">
            <tr>
                <th>Titolo</th>
                <th>ISBN</th>
                <th>Lingua</th>
                <th>Anno pubblicazione</th>
                <th>Data del prestito</th>
                <th>Stato</th>
                <th>Nome del dipartimento</th>
                <th>Indirizzo del dipartimento</th>
            </tr>
            
            <?php echo $Html?>

		</table>

        <div class="centerLink"><a href="../index.html" style="text-align:center;">Torna alla homepage</a></div>

		<br><hr>

		<footer style="text-align: center;">
			<p>Basi di dati 2021/22 - Progetto di Gaia Marzola e Solomon Olamide Taiwo (Gruppo n. 6)</p>
    	</footer>

    </body>

</html>