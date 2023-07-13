<?php

include_once('php/connessione.php');

//query
$sql = "SELECT Autore.Cod_autore, Autore.Nome, Autore.Cognome , Autore.Data_nascita, Autore.Luogo_nascita, COUNT(Libro.Cod_libro)  AS N_libri
            FROM Scrivere, Libro, Autore
            WHERE Scrivere.Cod_autore = Autore.Cod_autore AND
            Scrivere.Cod_libro = Libro.Cod_libro
            GROUP BY Autore.Cod_autore
        ";

$result = mysqli_query($link, $sql);


while ($row = mysqli_fetch_array($result)) {
    $Html =  $Html . "<tr><td>$row[1]</td> <td>$row[2]</td><td>$row[3]</td><td>$row[4]</td><td>$row[5]</td></tr>";
}

mysqli_close($link);
?>

<!DOCTYPE html>
<html lang="it">

<head>
    <meta charset="utf-8">

    <title>Numero libri per autore</title>

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
    <h1 style="text-align: center;">Gestione Biblioteca UNIFE - Numero di libri pubblicati per autore</h1>

    <hr><br>

    <table style="width:100%;">
        <tr>
            <th>Nome</th>
            <th>Cognome</th>
            <th>Data di nascita</th>
            <th>Luogo di nascita</th>
            <th>Numero di libri scritti</th>
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