<?php
$codice = $_POST["codice"];

include_once('connessione.php');


$sql = "SELECT Libro.Cod_libro, Libro.Titolo, Libro.ISBN, Libro.Lingua, Libro.Anno_pub, Libro.Cod_dip
	FROM Libro, Autore, Scrivere
	WHERE Autore.Cod_autore = '$codice' AND Autore.Cod_autore = Scrivere.Cod_autore AND Scrivere.Cod_libro = Libro.Cod_libro
	ORDER BY Anno_pub;
	";

$autore = "SELECT Autore.Nome, Autore.Cognome
    FROM BibliotecaUNIFE.Autore
    WHERE Autore.Cod_autore = '$codice'
    ";

$result = mysqli_query($link, $sql);

$Html = "";

while ($row = mysqli_fetch_array($result)) {
    $Html =  $Html . "<tr> <td>$row[1]</td> <td>$row[2]</td><td>$row[3]</td><td>$row[4]</td></tr>";
}

mysqli_close($link);
?>

<!DOCTYPE html>
<html lang="it">

<head>
    <meta charset="utf-8">

    <title>Libri per autore</title>

    <style>
        table,
        td,
        th {
            text-align: center;
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

    <div style="text-align: center;"><a href="../index.html"><img src="../immagini/logo_unife.png" height="100px" width="200px"></a></div>
    <h1 style="text-align: center;">Gestione Biblioteca UNIFE - Bibliografia di <?php echo $autore ?></h1>

    <hr><br>

    <fieldset>

        <p style="text-align: center">
            Visualizzazione di tutti i libri di un determinato autore,
            eventualmente suddivisi per anno di pubblicazione
        </p>
    </fieldset>


    <table style="width:100%">
        <tr>
            <th>Titolo</th>
            <th>ISBN</th>
            <th>Lingua</th>
            <th>Anno pubblicazione</th>
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