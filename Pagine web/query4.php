<?php

include_once 'php/connessione.php';
$index = $_GET["index"];
$TuplePerPagina = 50;

if (empty($index)) {
    $index = 0;
}

$IndexToGo = $index * $TuplePerPagina;

$sql = "SELECT *
    FROM BibliotecaUNIFE.Utente";

$result = mysqli_query($link, $sql);
$countP = 0;
$Npage = 0;
$TotTupleT = 0;

while (mysqli_fetch_array($result)) {
    $countP++;
    $TotTupleT++;
}

if (($countP % $TuplePerPagina) != 0) {
    $Npage++;
}

$countP = (int) ($countP / $TuplePerPagina);
$Npage += $countP;

$result = mysqli_query($link, $sql);

$countS = 0;
$countG = 0;

$htmlPage = "";

for ($i = 0; $i < $Npage; $i++) {
    $p = $i + 1;
    $htmlPage = $htmlPage . "<a type='page' href='Q4.php?index=$i'>$p</a>";
}

while ($row = mysqli_fetch_array($result)) {
    $countG++;

    if ($countG > $IndexToGo) {
        $countS++;
        if ($countS <= $TuplePerPagina) {
            $Html = $Html . "<tr><td>$row[0]</td> <td>$row[1]</td> <td>$row[2]</td><td>$row[3]</td><td>$row[4], N.$row[5], $row[7], $row[6]</td><td>$row[8]</td><td>$row[9]</td></tr>";
        }
    }
}

mysqli_close($link);
?>

<!DOCTYPE html>
<html lang="it">
    <head>
        <meta charset="utf-8">

		<title>Elenco utenti</title>

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
        <h1 style="text-align: center;">Gestione Biblioteca UNIFE - Elenco utenti</h1>

        <hr><br>

        <h4 style="text-align:center">Pagina <?php echo $index + 1; ?> di <?php echo $Npage; ?></h4>

		<h3>Totale utenti trovati: <?php echo $TotTupleT; ?></h3>
		<table style="width:100%;">
  		<tr>
    	<th>Matricola</th>
    	<th>Nome</th>
    	<th>Cognome</th>
		<th>Numero di telefono</th>
		<th>Indirizzo</th>
		<th>Sesso</th>
		<th>Data di nascita</th>
  		</tr>
		  <?php echo $Html ?>

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