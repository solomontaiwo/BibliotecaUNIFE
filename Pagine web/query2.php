<?php

include_once('php/connessione.php');
$index = $_GET["index"];
$TuplePerPagina = 50;

if (empty($index)) {
    $index = 0;
}

$IndexToGo = $index * $TuplePerPagina;

$sql = "SELECT Autore.Cod_autore, Autore.Nome, Autore.Cognome, Autore.Data_nascita, Autore.Luogo_nascita 
    FROM BibliotecaUNIFE.Autore";

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
    $htmlPage = $htmlPage . "<a type='page' href='Q2.php?index=$i'>$p</a>";
}

while ($row = mysqli_fetch_array($result)) {
    $countG++;

    if ($countG > $IndexToGo) {
        $countS++;
        if ($countS <= $TuplePerPagina) {
            $Html = $Html . "<tr><td>$row[1]</td> <td>$row[2]</td><td>$row[3]</td><td>$row[4]</td><td>
                <form action='php/getLibriA.php' method='POST'>
                <input type='hidden' value='$row[0]' name='codice'><input style=' width: 100%;' type='submit' value='Vedi libri'>
                </form></td></tr>";
        }
    }
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

    <div style="text-align: center;"><a href="../index.html"><img src="../immagini/logo_unife.png" height="100px" width="200px"></a></div>
    <h1 style="text-align: center;">Gestione Biblioteca UNIFE - Bibliografia autore</h1>

    <hr><br>

    <p style="text-align: center">
        Visualizzazione di tutti i libri di un determinato autore,
        eventualmente suddivisi per anno di pubblicazione
    </p>
    <h4 style="text-align:center">Pagina
        <?php echo $index + 1; ?> di
        <?php echo $Npage; ?>
    </h4>

    <h3>Totale risultati trovati:
        <?php echo $TotTupleT; ?>
    </h3>
    <table>
        <tr>
            <th>Nome</th>
            <th>Cognome</th>
            <th>Data di nascita</th>
            <th>Luogo di nascita</th>
            <th>Bibliografia</th>
        </tr>
        <?php echo $Html ?>

    </table>

    <div style="text-align:center">
        <?php echo $htmlPage; ?>
    </div>

    <div class="centerLink"><a href="../index.html" style="text-align:center;">Torna alla homepage</a></div>

    <br>
    <hr>

    <footer style="text-align: center;">
        <p>Basi di dati 2021/22 - Progetto di Gaia Marzola e Solomon Olamide Taiwo (Gruppo n. 6)</p>
    </footer>

</body>

</html>