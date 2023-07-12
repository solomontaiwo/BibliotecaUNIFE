<?php 
	$nome=$_POST["nome"];
    $cognome=$_POST["cognome"];
    $data=$_POST["data"];
    $luogo=$_POST["luogo"];

	include_once('connessione.php');
	
	$sql = "SELECT Autore.Cod_autore, Autore.Nome, Autore.Cognome, Autore.Data_nascita, Autore.Luogo_nascita
	FROM BibliotecaUNIFE.Autore 
	WHERE Autore.Nome LIKE '%".$nome."%' AND Autore.Cognome LIKE '%".$cognome."%' AND Autore.Data_nascita LIKE '%".$data."%' AND Autore.Luogo_nascita LIKE '%".$luogo."%'";
    
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
		        
		<title>Ricerca autore</title>

		<style>
			body {
				max-width: 80%;
			}

			table, td, th {
				text-align:center;
				width: 100%;
				vertical-align: middle;
			}
		</style>
    </head>

    <body>

		<form action="libriAutore.php" method="POST">
            <fieldset>
                <h1 style="text-align:center">Ricerca di un autore con uno o più parametri</h1>
                <p style="text-align: center">Ricerca degli autori inserendo uno o più parametri (anche parziali)</p>
                <input style="width: 100%; " type="text" name="nome" placeholder="Scrivi qui il nome dell'autore">
                <input style="width: 100%; " type="text" name="cognome" placeholder="Scrivi qui il cognome dell'autore">
                <input style="width: 100%; " type="text" name="data" placeholder="Scrivi qui la data dell'autore">
                <input style="width: 100%; " type="text" name="luogo" placeholder="Scrivi qui il luogo di nascita dell'autore">
                <input style="width: 100%; " type="submit" value="Invia" />
            </fieldset>
		</form>

		<table style="width:100%">
            <tr>
            <th>Nome</th>
            <th>Cognome</th>
            <th>Data di nascita</th>
            <th>Luogo di nascita</th>
            </tr>
            <?php echo $Html?>
		</table>
		
    </body>

</html>
