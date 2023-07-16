/* Modificare "/Applications/.../.csv" inserendo percorso assoluto corretto */
LOAD DATA 
    LOCAL 
    INFILE '/Applications/MAMP/htdocs/SQL/Database/Author.csv' 
    INTO TABLE BibliotecaUNIFE.Autore 
    FIELDS 
        TERMINATED BY ',' 
    LINES 
        TERMINATED BY '\n';

LOAD DATA
    LOCAL 
    INFILE '/Applications/MAMP/htdocs/SQL/Database/Library_Branch.csv' 
    INTO TABLE BibliotecaUNIFE.Dipartimento 
    FIELDS 
        TERMINATED BY ',' 
    LINES 
        TERMINATED BY '\n';

LOAD DATA
    LOCAL 
    INFILE '/Applications/MAMP/htdocs/SQL/Database/Book.csv' 
    INTO TABLE BibliotecaUNIFE.Libro 
    FIELDS 
        TERMINATED BY ',' 
    LINES 
        TERMINATED BY '\n';

LOAD DATA
    LOCAL 
    INFILE '/Applications/MAMP/htdocs/SQL/Database/Book_Authors.csv' 
    INTO TABLE BibliotecaUNIFE.Scrivere 
    FIELDS 
        TERMINATED BY ',' 
    LINES 
        TERMINATED BY '\n';

LOAD DATA
    LOCAL 
    INFILE '/Applications/MAMP/htdocs/SQL/Database/Utenti.csv' 
    INTO TABLE BibliotecaUNIFE.Utente 
    FIELDS 
        TERMINATED BY ',' 
    LINES 
        TERMINATED BY '\n';

LOAD DATA
    LOCAL 
    INFILE '/Applications/MAMP/htdocs/SQL/Database/Prestito.csv' 
    INTO TABLE BibliotecaUNIFE.Prestito 
    FIELDS 
        TERMINATED BY ',' 
    LINES 
        TERMINATED BY '\n';