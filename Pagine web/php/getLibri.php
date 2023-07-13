<?php 
    include_once('connessione.php');
	$nomeLibro=$_POST["nomeLibro"];
			
    $sql = "SELECT Libro.Cod_libro, Libro.Titolo, Libro.ISBN, Libro.Lingua, Libro.Anno_pub, Libro.Cod_dip

	FROM BibliotecaUNIFE.Libro 
	WHERE Titolo LIKE '%".$nomeLibro."%'";
    
    $result = mysqli_query($link, $sql);
    
    while ($row = mysqli_fetch_array($result)) {
		$Html =  $Html."<tr><td>$row[1]</td> <td>$row[2]</td><td>$row[3]</td><td>$row[4]</td></tr>";
    }
	    
    mysqli_close($link);
?>

<!DOCTYPE html>
<html lang="it">
    <head>
        <meta charset="utf-8">
		        
		<title>Ricerca libro</title>
		
		<style>
			body {
				max-width: 100%;
			}

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
    <h1 style="text-align: center;">Gestione Biblioteca UNIFE - Ricerca libro</h1>

	<hr><br>

		<form action="getLibri.php" method="POST">
		<fieldset>
            <p style="text-align: center">
                Ricerca di un libro inserendo il titolo (anche parziale). Nel caso in cui nessun
                parametro venga specificato, viene presentata la lista completa dei libri.
            </p>
            <input style="width: 100%; " type="text" name="nomeLibro" placeholder="Scrivi qui il nome del libro">
            <input style="width: 100%; " type="submit" value="Invia" />
        </fieldset>
    </form>

		<table style="width:100%">
			<tr>
				<th>Titolo</th>
				<th>ISBN</th>
				<th>Lingua</th>
				<th>Anno pubblicazione</th>
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