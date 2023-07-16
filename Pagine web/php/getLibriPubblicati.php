<?php
$Anno = $_POST["anno"];

include_once('connessione.php');

$sql = "SELECT COUNT(Libro.CodLibro)
            FROM Libro
            WHERE Libro.AnnoPubb = '$Anno';
	          ";

$result = mysqli_query($link, $sql);

$Html =  "";

while ($row = mysqli_fetch_array($result)) {
    $Html =  $Html . "$row[0]";
}

mysqli_close($link);
?>

<!DOCTYPE html>
<html lang="it">

<head>
    <meta charset="utf-8">

    <title>Numero libri anno</title>


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
    <h1 style="text-align: center;">Gestione Biblioteca UNIFE - Libri pubblicati nel <?php echo $Anno ?></h1>

    <hr><br>

    <fieldset>
        <h2 style="margin-left: 48%;"><?php echo $Html ?></h2>
    </fieldset>

    <br>

    <div class="centerLink"><a href="../index.html" style="text-align:center;">Torna alla homepage</a></div>

    <br>
    <hr>

    <footer style="text-align: center;">
        <p>Basi di dati 2022/23 - Progetto di <a href="mailto:gaia.marzola@edu.unife.it?subject=Progetto basi di dati 2022/23">Gaia Marzola</a>
            e <a href="mailto:solomonolamide.taiwo@edu.unife.it?subject=Progetto basi di dati 2022/23">Solomon Olamide
                Taiwo</a>
            (Gruppo n. 6)</p>
    </footer>

</body>

</html>