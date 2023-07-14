<?php

include_once('php/connessione.php');

$Data1 = $_POST["data1"];
$Data2 = $_POST["data2"];
$Data1G = $_GET["data1"];
$Data2G = $_GET["data2"];
$index = $_GET["index"];

if (!empty($Data1G)) {
    $Data1 = $Data1G;
}
if (!empty($Data2G)) {
    $Data2 = $Data2G;
}

$giorni = 30;
$countTotPrestiti = 0;
$flagResult = 0;


$TuplePerPagina = 50;

if (empty($index)) {
    $index = 0;
}


$IndexToGo = $index * $TuplePerPagina;


if (empty($Data1) && empty($Data2)) {
    $sql = "SELECT Utente.N_matricola, Utente.Nome, Utente.Cognome, Utente.N_telefono, Utente.Via, Utente.N_civico, Utente.Cap, Utente.Città, Libro.Titolo, Libro.ISBN, Prestito.Data_uscita, Prestito.Restituzione, Dipartimento.Nome, Dipartimento.Via, Dipartimento.N_civico, Dipartimento.Cap, Dipartimento.Città
FROM Utente, Prestito, Libro, Dipartimento
WHERE Utente.N_matricola = Prestito.N_matricola AND
Libro.Cod_libro = Prestito.Cod_libro AND
Libro.Cod_dip = Dipartimento.Cod_dip AND Prestito.Restituzione = 0
AND Prestito.Data_uscita > date_sub(current_date(), INTERVAL '$giorni' DAY)
ORDER BY Prestito.Data_uscita;";
    $flagResult = 0;
} else {

    if (!empty($Data1) && empty($Data2)) {
        $Data2 = date('Y-m-d');
    }

    $primaData = strtotime($Data1);
    $secondaData = strtotime($Data2);

    if ($primaData > $secondaData) {
        echo "Parametri sbagliati: la prima data inserita viene dopo la seconda!";
        exit();
    }

    $sql = "SELECT Utente.N_matricola, Utente.Nome, Utente.Cognome, Utente.N_telefono, Utente.Via, Utente.N_civico, Utente.Cap, Utente.Città, Libro.Titolo, Libro.ISBN, Prestito.Data_uscita, Prestito.Restituzione, Dipartimento.Nome, Dipartimento.Via, Dipartimento.N_civico, Dipartimento.Cap, Dipartimento.Città
FROM Utente, Prestito, Libro, Dipartimento
WHERE Utente.N_matricola = Prestito.N_matricola AND Libro.Cod_libro = Prestito.Cod_libro AND Libro.Cod_dip = Dipartimento.Cod_dip
AND Prestito.Data_uscita BETWEEN '$Data1' AND '$Data2'
ORDER BY Prestito.Data_uscita;";
    $flagResult = 1;
}


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
$Html = "";

for ($i = 0; $i < $Npage; $i++) {
    $p = $i + 1;

    $htmlPage = $htmlPage . "<a type='page' href='query7.php?index=$i&&data1=$Data1&&data2=$Data2'>$p</a>";
}
$htmlPage = $htmlPage . "</table>";


while ($row = mysqli_fetch_array($result)) {
    $countTotPrestiti++;
    $countG++;

    if ($countG > $IndexToGo) {
        $countS++;
        if ($countS <= $TuplePerPagina) {
            $state = "Non restituito";
            if ($row[11] == 1) {
                $state = "Restituito";
            }

            $date = strtotime("+$giorni day", strtotime("$row[10]"));
            $dataRientro = date("Y-m-d", $date);


            $Html = $Html . "<tr><td>$row[10]</td><td>$dataRientro</td><td>$state</td>
	<td>$row[0]</td> <td>$row[1]</td> <td>$row[2]</td><td>$row[3]</td>
	<td>$row[4], N.$row[5], $row[7], $row[6]</td>
	<td>$row[8]</td><td>$row[9]</td>
	<td>$row[12]</td><td>$row[13], N.$row[14], $row[16], $row[15]</td></tr>";
        }
    }
}

if ($flagResult == 0) {
    $ResultForHTML = "Prestiti prossimi in scadenza: " . $countTotPrestiti;
} else {
    $ResultForHTML = "Prestiti trovati da " . $Data1 . " a " . $Data2 . ": " . $countTotPrestiti;
}

mysqli_close($link);

?>

<!DOCTYPE html>
<html lang="it">

<head>
    <meta charset="utf-8">

    <title>Ricerca prestiti per data</title>

    <style>
        .date input {
            float: left;
            width: 50%;
        }

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

    <div style="text-align: center;"><a href="../index.html"><img src="immagini/logo_unife.png" height="100px" width="200px"></a></div>
    <h1 style="text-align: center;">Gestione Biblioteca UNIFE - Prestiti effettuati in un range di date</h1>

    <hr><br>

    <form action="query7.php" method="POST">
        <fieldset>
            <p style="text-align:center">
                Ricerca dei prestiti effettuati in un range di date – nel caso in cui non vengano inserite date deve mostrare i prossimi in scadenza (quelli che scadranno in futuro)
            </p>
            <div class="date" aling="center">
                <input style="text-align:center" type="date" name="data1" placeholder="Prima data">
                <input style="text-align:center" type="date" name="data2" placeholder="Seconda data">
                <input style="width: 100%; " type="submit" value="Invia" />
            </div>

            <br>
            <div>
                <h4 style="text-align:center">Pagina
                    <?php echo $index + 1; ?> di
                    <?php echo $Npage; ?>
                </h4>
            </div>
        </fieldset>
    </form>
    <h3>
        <?php echo $ResultForHTML ?>
    </h3>
    <hr>

    <table style="width:100%">
        <tr>
            <th>Data uscita</th>
            <th>Data scadenza prestito</th>
            <th>Stato</th>
            <th>Matricola</th>
            <th>Nome</th>
            <th>Cognome</th>
            <th>Numero di telefono</th>
            <th>Indirizzo</th>
            <th>Titolo</th>
            <th>ISBN</th>
            <th>Nome dipartimento</th>
            <th>Indirizzo</th>
        </tr>
        <?php echo $Html ?>

    </table>

    <div style="text-align:center">
        <?php echo $htmlPage; ?>
    </div>

    <br>

    <div class="centerLink"><a href="../index.html" style="text-align:center;">Torna alla homepage</a></div>

    <br>
    <hr>

    <footer style="text-align: center;">
        <p>Basi di dati 2021/22 - Progetto di <a href="mailto:gaia.marzola@edu.unife.it?subject=Progetto basi di dati 2021/22">Gaia Marzola</a>
            e <a href="mailto:solomonolamide.taiwo@edu.unife.it?subject=Progetto basi di dati 2021/22">Solomon Olamide
                Taiwo</a>
            (Gruppo n. 6)</p>
    </footer>

</body>

</html>