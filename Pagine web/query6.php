<?php 

	include_once('php/connessione.php');
	$index=$_GET["index"];
	$TuplePerPagina=150;
	

	if(empty($index)){
		$index=0;
	}
	
	$IndexToGo=$index*$TuplePerPagina;

    $sql = "SELECT Utente.N_matricola, Utente.Nome, Utente.Cognome, Libro.Titolo, Libro.ISBN,
	Prestito.Data_uscita, Prestito.Restituzione, Dipartimento.Nome, Dipartimento.Via, Dipartimento.N_civico, 
	Dipartimento.Cap, Dipartimento.Città
	FROM Utente, Prestito, Libro, Dipartimento
	WHERE Utente.N_matricola = Prestito.N_matricola AND Libro.Cod_libro = Prestito.Cod_libro AND 
	Libro.Cod_dip = Dipartimento.Cod_dip
	ORDER BY Prestito.Data_uscita DESC;";

//variabili per generare le pagine-------------------------
    $result = mysqli_query($link, $sql);
    $countP=0;
	$Npage=0;
	$TotTupleT=0;
//contiamo il numero di pagine da generare-----------------
	while (mysqli_fetch_array($result)) {
		$countP ++;
		$TotTupleT++;
	}
	if(($countP % $TuplePerPagina) !=0){
		$Npage++;
	}
	$countP=(int)($countP/$TuplePerPagina);
	$Npage+=$countP;

	$result = mysqli_query($link, $sql);
	
	$countS=0;
	$countG=0;

	$htmlPage=""; //variabile che conterrà l'html per costruire i link delle pagine

	
	for($i=0; $i<$Npage; $i++){
		$p=$i+1;
		$htmlPage=$htmlPage."<a type='page' href='query6.php?index=$i'>$p</a>"; //costruisco i numeri con link alle pagine
	}
	//creo una tabella che dopo verrà visualizzata in html
    while ($row = mysqli_fetch_array($result)) {
		$countG++;

		if($countG > $IndexToGo){
			$countS ++;
			if($countS<=$TuplePerPagina){//stampo tot tuple per pagina
					$state="Non restituito";
				if($row[6]==1){
					$state="Restituito";
				}
				

				$Html =  $Html."<tr><td>$row[0]</td> <td>$row[1]</td> <td>$row[2]</td><td>$row[3]</td>
				<td>$row[4]</td><td>$row[5]</td><td>$state</td>
				<td>$row[7]</td><td>$row[8], N.$row[9], $row[11], $row[10]</td></tr>";
			}
		}

    }
	    
    mysqli_close($link);
?>

<!DOCTYPE html>
<html lang="it">
    <head>
        <meta charset="utf-8">
		        
		<title>Storico prestiti</title>

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
            <h1 style="text-align: center;">Gestione Biblioteca UNIFE - Storico prestiti con informazioni utente</h1>

        <hr><br>

        <fieldset>
			<h4 style="text-align:center">Pagina <?php echo $index+1; ?> di <?php echo $Npage; ?></h4>
        </fieldset>
		<h3  type="des">Totale prestiti trovati: <?php echo $TotTupleT; ?></h3>

		<table style="width:100%;">
  		<tr>
            <th>Matricola</th>
            <th>Nome</th>
            <th>Cognome</th>
            <th>Titolo Libro</th>
            <th>ISBN</th>
            <th>Data del prestito</th>
            <th>Stato</th>
            <th>Nome del dipartimento</th>
            <th>Indirizzo del dipartimento</th>
            </tr>

            <?php echo $Html?>

		</table>

		<hr>
		<div  style="text-align:center;"> 
		<?php echo $htmlPage; ?>
		</div>

		<div class="centerLink"><a href="../index.html" style="text-align:center;">Torna alla homepage</a></div>

		<br><hr>

		<footer style="text-align: center;">
			<p>Basi di dati 2021/22 - Progetto di Gaia Marzola e Solomon Olamide Taiwo (Gruppo n. 6)</p>
    	</footer>

    </body>

</html>