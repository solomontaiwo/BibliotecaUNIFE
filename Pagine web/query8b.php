<?php

include_once('php/connessione.php');

$sql = "SELECT *
	FROM BibliotecaUNIFE.Dipartimento";

$result = mysqli_query($link, $sql);

while ($row = mysqli_fetch_array($result)) {
    $Html =  $Html . "<tr><td>$row[1]</td> <td>$row[2], N.$row[3], $row[5]</td> <td>$row[4]</td><td>
		<form action='php/query8b.php' method='POST'>
		<input type='hidden' value='$row[0]' name='codice'><input type='submit' style='width: 100%;' value='Conta'>
		</form></td></tr>";
}

mysqli_close($link);
?>

<!DOCTYPE html>
<html lang="it">

<head>
    <meta charset="utf-8">

    <title>Prestiti succursale</title>

    <style>
        table,
        td,
        th {
            text-align: center;
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

    <div style="text-align: center;"><a href="../index.html"><img src="immagini/logo_unife.png" height="100px" width="200px"></a></div>
    <h1 style="text-align: center;">Gestione Biblioteca UNIFE - Numero di prestiti effettuati in una determinata succursale</h1>

    <hr><br>

    <table style="width:100%">
        <tr>
            <th>Nome</th>
            <th>Indirizzo</th>
            <th>Codice postale</th>
            <th>Numero prestiti</th>
        </tr>
        <?php echo $Html ?>

    </table>

    <br>

    <div class="centerLink"><a href="../index.html" style="text-align:center;">Torna alla homepage</a></div>

    <br>
    <hr>

    <footer style="text-align: center;">
        <p>Basi di dati 2021/22 - Progetto di Gaia Marzola e Solomon Olamide Taiwo (Gruppo n. 6)</p>
    </footer>


</body>

</html>