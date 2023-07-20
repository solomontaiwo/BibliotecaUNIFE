-- MySQL dump 10.13  Distrib 8.0.33, for macos13.3 (arm64)
--
-- Host: localhost    Database: BibliotecaUNIFE
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Autore`
--

DROP TABLE IF EXISTS `Autore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Autore` (
  `CodAutore` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(30) DEFAULT NULL,
  `Cognome` varchar(30) DEFAULT NULL,
  `DataNascita` date DEFAULT NULL,
  `LuogoNascita` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CodAutore`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Autore`
--

LOCK TABLES `Autore` WRITE;
/*!40000 ALTER TABLE `Autore` DISABLE KEYS */;
INSERT INTO `Autore` VALUES (1,'Fiorenze','Deluca','1984-07-22','Lawrence'),(2,'Alessandro','Oldam','1972-07-09','New York'),(3,'Adamo','Ligoe','1971-03-26','New York'),(4,'Bryanty','Froud','1970-10-30','London'),(5,'Lewes','Salsberg','1988-05-18','Cumberland'),(6,'Quincey','Franke','1964-10-12','Bloomington'),(7,'Inesita','Dallender','1982-04-05','New York'),(8,'Raquel','Semered','1972-03-21','Bloomington'),(9,'Kerri','Adiscot','1980-06-28','Cumberland'),(10,'Barr','Labbet','1967-07-06','Lawrence'),(11,'Godwin','Lebbern','1983-11-16','San Diego'),(12,'Ange','Symcox','1977-07-01','Paris'),(13,'Marja','Rosedale','1989-03-25','New York'),(14,'Pincas','Paulisch','1973-12-24','Berlino'),(15,'Ami','Adamo','1978-08-10','Lawrence'),(16,'Sansone','Jansen','1968-05-12','Lawrence'),(17,'Brynn','Semor','1986-05-09','Oslo'),(18,'Merrick','Harbron','1959-11-09','Pleasantville'),(19,'Petunia','Breznovic','1981-02-19','Prague'),(20,'Enrico','Zimuel','1972-04-11','Milan'),(21,'Luciano','Gamberini','1979-11-08','Rome'),(22,'Erny','Wrixon','1967-02-25','Nashville'),(23,'Corri','Gavrieli','1974-06-30','London'),(24,'Jefferson','Dewire','1971-02-16','Cardiff'),(25,'Lavena','Capey','1972-02-17','Cumberland'),(26,'Hastings','Sweetman','1978-08-13','Los Angeles'),(27,'Cointon','Stranaghan','1963-12-30','New York'),(28,'Fanchon','Bish','1987-08-27','New York'),(29,'Ramez','Elmasri','1970-02-16','Oxford'),(30,'Shamkant','Navathe','1962-11-24','London'),(31,'Sella','Marriage','1988-12-01','Madison'),(32,'Zilvia','Silver','1958-04-25','Nashville'),(33,'Marnie','Spinke','1987-09-07','Los Angeles'),(34,'Cecile','Follacaro','1986-01-08','New York'),(35,'Theo','McLauchlin','1961-03-01','Cardiff'),(36,'Junia','Everal','1973-11-09','Los Angeles'),(37,'Lu','Jenne','1977-01-11','Seul'),(38,'Giustina','Jezzard','1969-02-04','Pleasantville'),(39,'Breanne','Weben','1989-11-13','London'),(40,'Bartolemo','Chadwin','1969-07-22','Pleasantville'),(41,'Jon','Duckett','1978-08-16','Los Angeles'),(42,'Betti','Benz','1977-08-05','Berlino'),(43,'Cristian','Pes','1981-09-10','New York'),(44,'Jermaine','Van Velde','1979-04-23','Los Angeles'),(45,'Perrine','Blagden','1984-01-04','Washington'),(46,'Bruno','Goodsall','1963-04-27','London'),(47,'Hirsch','Legging','1961-12-19','Oxford'),(48,'Walker','Dumberell','1965-12-30','London'),(49,'Shelbi','Wheelton','1987-09-12','Los Angeles'),(50,'Reta','Philippsohn','1966-10-08','Washington'),(51,'Harlene','Tartt','1984-09-20','New York'),(52,'Jodee','Westwick','1968-01-23','Liverpool'),(53,'Margaretha','Aysik','1973-03-18','Washington'),(54,'Merna','Lambal','1969-09-30','London'),(55,'Vitia','Douch','1977-08-20','London'),(56,'Chelsea','Nannetti','1973-04-14','San Diego'),(57,'Gwyneth','Tinsley','1986-05-12','Los Angeles'),(58,'Jacquenette','Snookes','1973-08-07','Lawrence'),(59,'Yancey','Sacher','1961-04-17','Lawrence'),(60,'Sim','Frondt','1967-05-20','Bloomington'),(61,'Abey','Crowest','1965-07-20','New York'),(62,'Ileane','Spurriar','1969-09-03','Los Angeles'),(63,'Andrej','Von Der Empten','1989-12-17','Amsterdam'),(64,'Beverlee','Jepensen','1976-12-17','Cumberland'),(65,'Maible','Twidale','1963-01-29','Bloomington'),(66,'Cal','Inkin','1969-11-22','Oxford'),(67,'Karie','Bendixen','1969-12-29','Amsterdam'),(68,'Jasen','Itter','1967-12-24','Madison'),(69,'Peri','Maher','1967-04-08','Wilpen'),(70,'Burk','Torr','1984-08-01','Bloomington'),(71,'Farrah','Letham','1962-07-15','Oxford'),(72,'Sandro','Wilcher','1990-09-25','Nashville'),(73,'Roxy','Burnage','1955-04-13','Oxford'),(74,'Boycie','Shorey','1989-11-20','Amsterdam'),(75,'Nicki','Pharrow','1984-09-16','Los Angeles'),(76,'Xylia','Bendle','1975-01-01','Cumberland'),(77,'Ursula','Lockitt','1967-12-14','Liverpool'),(78,'Hannah','Bachnic','1956-06-22','Madison'),(79,'Gabriella','Orum','1958-11-21','Madison'),(80,'Gregorius','McPhater','1976-12-04','Pleasantville'),(81,'Hortense','Whatson','1978-08-25','Washington'),(82,'Gil','Lettington','1974-08-11','Los Angeles'),(83,'Briant','Anespie','1989-01-01','Los Angeles'),(84,'Angil','Beckson','1956-05-01','Oxford'),(85,'Giffer','Leisman','1959-05-25','Los Angeles'),(86,'Mirelle','Hehnke','1968-06-25','Los Angeles'),(87,'Eva','Elcum','1956-02-20','Pleasantville'),(88,'Margaretta','Pardal','1970-03-08','New York'),(89,'Merissa','Senechault','1956-02-02','New York'),(90,'Leroy','Vasiltsov','1976-10-13','San Diego'),(91,'Gertrudis','Corzon','1983-06-21','Oxford'),(92,'Rubie','Delgua','1970-06-03','Los Angeles'),(93,'Ludvig','Callf','1971-06-05','London'),(94,'Emiline','Greenhough','1982-04-11','Madison'),(95,'Booth','Belvard','1959-10-11','London'),(96,'Russ','Leander','1959-11-16','Oxford'),(97,'Branden','Huffer','1955-01-03','Bloomington'),(98,'De','Wackly','1989-09-17','Bloomington'),(99,'Alejandrina','Bardell','1962-10-25','Wilpen'),(100,'Isacco','McSherry','1976-04-17','Edimburg');
/*!40000 ALTER TABLE `Autore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Dipartimento`
--

DROP TABLE IF EXISTS `Dipartimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Dipartimento` (
  `CodDip` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) DEFAULT NULL,
  `Via` varchar(30) DEFAULT NULL,
  `NCivico` varchar(4) DEFAULT NULL,
  `Cap` char(7) DEFAULT NULL,
  `Città` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CodDip`),
  UNIQUE KEY `Nome` (`Nome`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dipartimento`
--

LOCK TABLES `Dipartimento` WRITE;
/*!40000 ALTER TABLE `Dipartimento` DISABLE KEYS */;
INSERT INTO `Dipartimento` VALUES (1,'Architettura','Via Ghiara','36','44121','Ferrara'),(2,'Economia e management','Via Voltapaletto','11','44121','Ferrara'),(3,'Fisica e Scienze della Terra','Via Saragat','1','44122','Ferrara'),(4,'Giurisprudenza','Corso Ercole I d\'Este','37','44121','Ferrara'),(5,'Ingegneria','Via Saragat','1','44122','Ferrara'),(6,'Matematica e informatica','Via Machiavelli','30','44121','Ferrara'),(7,'Morfologia chirurgia e medicina sperimentale','Via Luigi Borsari','46','44121','Ferrara'),(8,'Scienze biomediche e chirurgico specialistiche','Via Luigi Borsari','46','44121','Ferrara'),(9,'Scienze chimiche e farmaceutiche','Via Luigi Borsari','46','44121','Ferrara'),(10,'Scienze della vita e biotecnologie','Via Luigi Borsari','46','44121','Ferrara'),(11,'Scienze mediche','Via Fossato di Mortara','64/B','44121','Ferrara'),(12,'Studi umanistici','Via Paradiso','12','44121','Ferrara');
/*!40000 ALTER TABLE `Dipartimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Libro`
--

DROP TABLE IF EXISTS `Libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Libro` (
  `CodLibro` int NOT NULL AUTO_INCREMENT,
  `Titolo` varchar(90) DEFAULT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `Lingua` varchar(20) DEFAULT NULL,
  `AnnoPubb` year DEFAULT NULL,
  `CodDip` int DEFAULT NULL,
  PRIMARY KEY (`CodLibro`),
  KEY `CodDip` (`CodDip`),
  CONSTRAINT `libro_ibfk_1` FOREIGN KEY (`CodDip`) REFERENCES `Dipartimento` (`CodDip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Libro`
--

LOCK TABLES `Libro` WRITE;
/*!40000 ALTER TABLE `Libro` DISABLE KEYS */;
INSERT INTO `Libro` VALUES (1,'Get Smart','387623794-7','English',2010,2),(2,'South of Heaven West of Hell','346481000-3','English',2015,9),(3,'Human Failure (Menschliches Versagen)','068254989-4','English',2014,8),(4,'Revenge of the Nerds','502714957-3','Japanese',2019,5),(5,'Lone Ranger The','698429931-4','Icelandic',2011,3),(6,'Brides (Nyfes)','752213396-3','Georgian',2012,6),(7,'Larceny Inc','857627191-5','English',2012,9),(8,'Stonewall','660038142-6','Icelandic',2016,2),(9,'Eight Crazy Nights (Adam Sandler s Eight Crazy Nights)','870560200-9','English',2018,1),(10,'Gone Fishin ','137066182-7','Georgian',2012,1),(11,'Richard III','863050834-5','Chinese',2019,8),(12,'Stupid Boy (Garçon stupide)','998941371-1','Italian',2013,5),(13,'Secret Garden The','368968937-6','English',2014,4),(14,'Act Da Fool','653073623-9','English',2020,9),(15,'Hot Fuzz','867778553-1','Polish',2012,2),(16,'Get Bruce','389625239-9','Hebrew',2020,7),(17,'No Retreat No Surrender 2 Raging Thunder','204897847-9','Italian',2019,1),(18,'Back Soon','772713523-2','English',2013,6),(19,'Pitch Black','255439894-1','English',2015,6),(20,'Gingerbread Man The','004023598-X','Dari',2012,4),(21,'Woman on the Beach (Haebyeonui yeoin)','661872594-1','English',2020,3),(22,'Lost City The','666013383-6','English',2014,10),(23,'Paradise Lost 2 Revelations','165632171-8','Italian',2010,2),(24,'Key Largo','425111017-X','Estonian',2019,8),(25,'Diplomacy (Diplomatie)','507124152-8','French',2019,2),(26,'Lavender Hill Mob The','435456826-8','English',2016,9),(27,'Chronicle of a Summer (Chronique d un été)','851106761-2','Italian',2019,3),(28,'Such Is Life (Así es la vida)','301170811-8','English',2019,3),(29,'Tenchi The Samurai Astronomer','214940353-6','English',2018,3),(30,'Boys from Fengkuei The (Feng gui lai de ren)','351898785-2','Portuguese',2016,10),(31,'Thieves The (Dodookdeul)','887526619-0','Romanian',2011,6),(32,'Blackmailed','618325112-7','Czech',2013,5),(33,'Cocaine Cowboys II Hustlin  With the Godmother','670271351-7','Indonesian',2011,1),(34,'Ingeborg Holm','814543114-X','English',2013,3),(35,'1208 East of Bucharest (A fost sau n-a fost?)','601546113-6','Gujarati',2011,9),(36,'Redemption The Stan Tookie Williams Story','501862280-6','Finnish',2011,9),(37,'Inspectors The','050916783-7','Catalan',2017,3),(38,'Animal House','265972215-3','English',2017,8),(39,'Red Riding 1983','848202184-2','English',2019,3),(40,'Missionary Man','927994979-9','Dhivehi',2017,8),(41,'Golem','296111646-5','Japanese',2019,3),(42,'Project X','829914597-X','English',2019,9),(43,'Dragon Ball Z Bio-Broly (Doragon bôru Z 11 Sûpâ senshi gekiha! Katsu no wa ore da)','786395256-5','English',2019,7),(44,'Forbidden Christ The (Cristo proibito Il)','970334328-7','Danish',2019,9),(45,'Stingray Sam','086031288-7','Polish',2019,9),(46,'Inspector Palmu s Error (Komisario Palmun erehdys)','763200529-3','English',2016,3),(47,'Streetcar Named Desire A','510453377-8','English',2013,5),(48,'World of Kanako The (Kawaki)','290005808-2','Lao',2020,4),(49,'Suit for Wedding A (aka The Wedding Suit) (Lebassi Baraye Arossi)','085745713-6','English',2020,7),(50,'Human-computer interaction','364615054-8','English',2017,2),(51,'I m Reed Fish','775940054-3','Kashmiri',2017,10),(52,'Kumail Nanjiani Beta Male ','925812482-0','German',2010,2),(53,'Teaching Mrs Tingle','584224789-5','English',2020,10),(54,'Always','354835830-6','Catalan',2015,4),(55,'Delta','285192251-3','English',2011,2),(56,'Gunfighter The','386397507-3','Albanian',2013,1),(57,'Angels  Share The','733508116-5','English',2017,9),(58,'Murder by Proxy How America Went Postal','801081738-4','English',2019,7),(59,'Arthur and the Revenge of Maltazard (Arthur et la vengeance de Maltazard)','560797299-2','English',2017,1),(60,'Closure','492112694-1','English',2018,6),(61,'Meet Joe Black','182342356-6','Japanese',2011,4),(62,'Scenic Route','299282269-8','English',2015,5),(63,'Private Detective 62','055417113-9','English',2017,9),(64,'Cars','101215590-0','English',2012,8),(65,'Iron Mask The','951964371-0','Bengali',2014,2),(66,'Wave The (Welle Die)','469785019-X','English',2014,6),(67,'Andrei Rublev (Andrey Rublyov)','368990830-2','English',2017,1),(68,'Wild River','300485539-9','Dzongkha',2012,10),(69,'Krrish','976860084-5','English',2016,8),(70,'You Only Live Once','147191251-5','Dari',2018,4),(71,'Bed & Breakfast Love is a Happy Accident (Bed & Breakfast)','076691563-8','Dari',2018,3),(72,'Iron Horse The','860964250-X','Japanese',2013,10),(73,'Ninotchka','384050463-5','Quechua',2017,8),(74,'Rains of Ranchipur The','158999545-7','English',2012,6),(75,'Maniac','136964378-0','English',2013,5),(76,'Dakota Skye','194862546-6','English',2011,4),(77,'Family Tree','129488690-8','English',2017,3),(78,'Rebecca','432587582-4','Swedish',2015,5),(79,'The Frame','515279116-1','English',2010,9),(80,'Kairat','825867311-4','Hiri Motu',2013,2),(81,'Fear','712463375-3','English',2012,1),(82,'Slaves to the Underground','536751983-0','French',2014,1),(83,'Trial','284203566-6','Korean',2013,5),(84,'Gasoline (Benzina)','175205668-X','English',2019,1),(85,'Heaven s Prisoners','672217513-8','Bengali',2014,10),(86,'HTM & CSS','607745120-7','Italian',2018,1),(87,'Cyrano de Bergerac','611928800-7','Korean',2017,7),(88,'State of Siege (État de siège)','226372696-9','Hindi',2013,1),(89,'Memory','083845517-4','Punjabi',2014,5),(90,'Ironclad','184722570-5','Kashmiri',2011,9),(91,'Happy People A Year in the Taiga','653175736-1','Swedish',2012,8),(92,'Convoy','989371762-0','German',2015,6),(93,'Général Idi Amin Dada A Self Portrait (Général Idi Amin Dada Autoportrait)','521329516-9','English',2015,9),(94,'Come Blow Your Horn','087133062-8','English',2013,6),(95,'Carmen Comes Home (Karumen kokyo ni kaeru)','517581126-6','Hindi',2020,2),(96,'Heroine','023019395-1','Dzongkha',2013,7),(97,'Luna de Avellaneda','441842932-8','Guaraní',2018,5),(98,'Under the Bridges (Unter den Brücken)','742437654-3','Swedish',2016,9),(99,'Story of My Life The (Mensonges et trahisons et plus si affinités)','760264513-8','English',2012,8),(100,'The Fourth War','171208472-0','English',2020,4),(101,'Life of Another The (La vie d une autre)','009047587-9','English',2015,5),(102,'Sergeant Rutledge','372098427-3','Arabic',2011,9),(103,'Black Windmill The','449571196-2','English',2013,6),(104,'Nicholas on Holiday','362309208-8','English',2018,4),(105,'Beefcake','457456450-4','Aymara',2016,1),(106,'Oliver Twist','369048652-1','Guaraní',2020,1),(107,'Salvage','190222315-2','Belarusian',2014,9),(108,'Cassandra Crossing The','945660604-X','Arabic',2016,10),(109,'Crocodile Hunter Collision Course The','711604128-1','English',2014,10),(110,'Abbott and Costello Meet the Killer Boris Karloff','465297052-8','English',2016,9),(111,'Wolf Man The','836374770-X','Indonesian',2013,8),(112,'Vehicle 19','509808775-9','English',2013,2),(113,'Rollerball','595626866-2','Hungarian',2014,7),(114,'Carbon Nation','168316748-1','Portuguese',2012,7),(115,'Times Square','744780754-0','English',2020,7),(116,'Memory Keeper s Daughter The','594275024-6','English',2012,5),(117,'And Nobody Weeps for Me (Und keiner weint mir nach)','992229254-8','Italian',2017,4),(118,'Tyler Perry s I Can Do Bad All by Myself','560211284-7','Italian',2018,7),(119,'Day of the Triffids The','179592990-1','English',2011,8),(120,'Deadline','663119553-5','Spanish',2015,7),(121,'Holy Flying Circus','521847642-0','English',2016,9),(122,'Mala Noche','190401007-5','Northern Sotho',2017,8),(123,'Tracks','288231977-0','Icelandic',2010,8),(124,'Sound of Music The','103300276-3','Khmer',2019,4),(125,'Nick and Norah s Infinite Playlist','671158165-2','Czech',2019,6),(126,'Purple Rose of Cairo The','292051296-X','Guaraní',2013,3),(127,'Thief of Hearts','000369692-8','English',2016,10),(128,'Hollywood Party','769740772-8','English',2018,7),(129,'Absolute Power','946684198-X','Czech',2016,1),(130,'In the Park','264788349-1','Haitian Creole',2018,9),(131,'Life is to Whistle (Vida es silbar La)','421128511-4','English',2012,7),(132,'Avengers The','843331705-9','Bengali',2012,1),(133,'Kirikou and the Wild Beast (Kirikou et les bêtes sauvages)','978061177-0','Khmer',2010,7),(134,'Love s Labour s Lost','368515943-7','Czech',2011,9),(135,'Attack of the 50 Foot Woman','075305079-X','Danish',2010,2),(136,'Longest Yard The','014330257-4','Georgian',2010,6),(137,'PHP 7 development','331424241-7','Italian',2015,3),(138,'Great Expectations','436501926-0','Catalan',2013,1),(139,'Concrete Night (Betoniyö)','222223087-X','Irish Gaelic',2010,5),(140,'Deep Impact','385828979-5','Bengali',2019,8),(141,'Big Squeeze The','516983356-3','English',2014,10),(142,'Red White & Blue','253760945-X','English',2016,4),(143,'Saboteur','167947701-3','English',2014,1),(144,'Children Are Watching Us The (Bambini ci guardano I)','015674765-0','English',2018,4),(145,'Flight of the Living Dead','391578830-9','Kazakh',2014,8),(146,'Phil Spector','065646345-7','Irish Gaelic',2020,3),(147,'Inhale','259418123-4','English',2011,9),(148,'Little Children','756564271-1','English',2014,10),(149,'No Distance Left to Run','192373118-1','English',2019,6),(150,'Addams Family The','131544489-5','English',2019,4),(151,'From Above','872379238-8','English',2018,1),(152,'Enemy','216013488-0','Arabic',2012,2),(153,'Waydowntown','259579784-0','English',2018,7),(154,'Dead Man Walking','052706515-3','English',2011,8),(155,'Agent Vinod','526942871-7','Catalan',2017,4),(156,'Young Cassidy','280992700-6','German',2018,4),(157,'A Viking Saga The Darkest Day','835266674-6','Hindi',2012,7),(158,'Million Ways to Die in the West A','875127371-3','Norwegian',2014,10),(159,'High Spirits','256739345-5','Swedish',2016,8),(160,'Day the Universe Changed The','672560381-5','Northern Sotho',2018,4),(161,'Captain America The First Avenger','144577227-2','English',2020,8),(162,'Strangers on a Train','565659819-5','Dutch',2014,1),(163,'Buddy','170243376-5','English',2015,10),(164,'Death Defying Acts','009140312-X','Dhivehi',2017,3),(165,'History Boys The','333748888-9','Catalan',2017,2),(166,'Battle Royale 2 Requiem (Batoru rowaiaru II Chinkonka)','585173205-9','English',2018,2),(167,'Counterfeiters The (Die Fälscher)','006821799-4','Estonian',2018,9),(168,'Svidd Neger','376459959-6','English',2018,2),(169,'Altman','404884623-X','Czech',2010,4),(170,'Incredibly Strange Creatures Who Stopped Living and Became Mixed-Up Zombies!!? The','335294364-8','Italian',2018,6),(171,'Mondays in the Sun (Lunes al sol Los)','060088686-7','English',2019,9),(172,'Shaka Zulu The Citadel','829509196-4','Swedish',2014,10),(173,'Peculiarities of the National Hunt (Osobennosti natsionalnoy okhoty) ','947990234-6','English',2019,2),(174,'Sting II The','966859767-2','English',2020,9),(175,'Renaissance','554021569-9','English',2018,7),(176,'Jubilee','343838580-5','English',2015,5),(177,'Open Windows','405663612-5','English',2015,2),(178,'Elizabeth','356414253-3','English',2012,10),(179,'LA Without a Map','421308038-2','English',2014,1),(180,'Almanya - Welcome to Germany (Almanya - Willkommen in Deutschland)','022938411-0','Guaraní',2014,7),(181,'City Hall','687448355-2','English',2019,8),(182,'Kleines Arschloch - Der Film','768148078-1','Korean',2017,7),(183,'Last Ride','347737564-5','Haitian Creole',2019,6),(184,'Starflight The Plane That Couldn t Land','659332931-2','Italian',2016,9),(185,'Fundamentals of Database Systems','740153355-3','Italian',2019,2),(186,'Raisin in the Sun A','469863297-8','Punjabi',2015,5),(187,'Boys of St Vincent The','366292343-2','English',2013,1),(188,'Wall Street','600597433-5','English',2020,7),(189,'19th Wife The','371268896-2','Belarusian',2016,5),(190,'Shuttle','271280652-2','English',2017,4),(191,'Doc Savage The Man of Bronze','093035174-6','English',2015,3),(192,'Family Life','394873350-3','English',2014,3),(193,'Mon oncle d Amérique','136320382-7','English',2017,6),(194,'The Dark Horse','132261731-7','Guaraní',2018,3),(195,'My Bloody Valentine','685607790-4','Danish',2014,8),(196,'Breakdown','127368309-9','Chinese',2011,8),(197,'From the Life of the Marionettes (Aus dem Leben der Marionetten) ','542931356-4','Italian',2015,5),(198,'Split Second','816886703-3','Italian',2012,4),(199,'Knack and How to Get It The','657583349-7','English',2015,1);
/*!40000 ALTER TABLE `Libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Prestito`
--

DROP TABLE IF EXISTS `Prestito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Prestito` (
  `CodPrestito` int NOT NULL AUTO_INCREMENT,
  `Restituzione` tinyint(1) DEFAULT NULL,
  `DataUscita` date DEFAULT NULL,
  `CodLibro` int DEFAULT NULL,
  `NMatricola` int DEFAULT NULL,
  PRIMARY KEY (`CodPrestito`),
  KEY `CodLibro` (`CodLibro`),
  KEY `NMatricola` (`NMatricola`),
  CONSTRAINT `prestito_ibfk_1` FOREIGN KEY (`CodLibro`) REFERENCES `Libro` (`CodLibro`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `prestito_ibfk_2` FOREIGN KEY (`NMatricola`) REFERENCES `Utente` (`NMatricola`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Prestito`
--

LOCK TABLES `Prestito` WRITE;
/*!40000 ALTER TABLE `Prestito` DISABLE KEYS */;
INSERT INTO `Prestito` VALUES (1,1,'2022-04-12',35,186600),(2,1,'2021-05-23',56,218287),(3,1,'2022-02-25',44,205526),(4,1,'2022-11-10',77,138863),(5,1,'2021-10-03',22,210296),(6,1,'2023-03-08',12,218287),(7,1,'2023-05-29',4,171927),(8,0,'2023-07-11',19,138863),(9,1,'2022-01-27',134,155352),(10,1,'2022-04-01',123,284119),(11,0,'2023-07-23',105,271300),(12,0,'2023-07-18',88,178605),(13,1,'2022-06-11',98,218287),(14,1,'2022-10-22',14,296336),(15,1,'2022-12-14',10,217396),(16,1,'2022-09-16',17,271300),(17,1,'2021-09-30',23,205526),(18,1,'2023-05-20',8,237108),(19,1,'2022-07-05',3,265877),(20,1,'2022-10-10',21,244492),(21,1,'2021-12-01',25,120582),(22,1,'2021-11-09',165,117625),(23,1,'2023-03-28',133,260486),(24,0,'2023-02-13',155,120582),(25,1,'2022-04-17',166,296067),(26,1,'2022-02-10',199,209386),(27,1,'2021-01-19',195,169508),(28,1,'2021-06-05',40,209386),(29,1,'2021-03-03',50,260486),(30,0,'2022-11-13',29,102112),(31,1,'2022-12-04',11,131767),(32,1,'2021-09-16',2,282671),(33,1,'2022-03-18',16,105602),(34,1,'2022-04-12',61,115620),(35,1,'2021-06-23',57,112450),(36,0,'2023-03-22',43,250996),(37,1,'2023-05-30',26,115620),(38,1,'2022-01-29',28,259606),(39,1,'2021-11-03',110,250996),(40,1,'2022-10-21',133,245256),(41,1,'2023-04-22',145,259102),(42,1,'2022-12-12',176,207415),(43,1,'2021-09-02',162,223543),(44,1,'2021-10-18',149,127647),(45,1,'2022-06-23',137,171927),(46,1,'2022-06-17',192,156003),(47,0,'2023-04-28',190,243034),(48,1,'2021-10-29',180,229640),(49,1,'2023-02-28',34,127902),(50,1,'2022-05-19',7,295352);
/*!40000 ALTER TABLE `Prestito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Scrivere`
--

DROP TABLE IF EXISTS `Scrivere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Scrivere` (
  `CodScrivere` int NOT NULL AUTO_INCREMENT,
  `CodLibro` int DEFAULT NULL,
  `CodAutore` int DEFAULT NULL,
  PRIMARY KEY (`CodScrivere`),
  KEY `CodLibro` (`CodLibro`),
  KEY `CodAutore` (`CodAutore`),
  CONSTRAINT `scrivere_ibfk_1` FOREIGN KEY (`CodLibro`) REFERENCES `Libro` (`CodLibro`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `scrivere_ibfk_2` FOREIGN KEY (`CodAutore`) REFERENCES `Autore` (`CodAutore`)
) ENGINE=InnoDB AUTO_INCREMENT=523 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Scrivere`
--

LOCK TABLES `Scrivere` WRITE;
/*!40000 ALTER TABLE `Scrivere` DISABLE KEYS */;
INSERT INTO `Scrivere` VALUES (1,1,89),(2,1,76),(3,1,52),(4,2,29),(5,3,33),(6,3,84),(7,4,23),(8,4,5),(9,4,9),(10,5,80),(11,5,88),(12,5,65),(13,5,98),(14,6,52),(15,6,47),(16,6,26),(17,7,25),(18,7,90),(19,7,54),(20,7,11),(21,8,58),(22,9,80),(23,10,12),(24,11,77),(25,11,18),(26,11,90),(27,12,80),(28,13,72),(29,13,75),(30,13,93),(31,13,63),(32,14,19),(33,15,30),(34,15,67),(35,16,40),(36,19,95),(37,19,83),(38,20,40),(39,20,56),(40,20,11),(41,20,76),(42,21,57),(43,21,93),(44,22,72),(45,22,47),(46,22,17),(47,22,76),(48,22,67),(49,22,93),(50,22,69),(51,23,43),(52,24,76),(53,24,44),(54,24,28),(55,25,26),(56,25,11),(57,25,5),(58,25,68),(59,25,42),(60,25,73),(61,26,45),(62,26,1),(63,27,43),(64,27,60),(65,27,36),(66,28,84),(67,28,75),(68,29,32),(69,29,66),(70,30,71),(71,30,82),(72,31,80),(73,31,4),(74,31,77),(75,31,39),(76,31,8),(77,34,68),(78,34,3),(79,35,90),(80,35,49),(81,36,29),(82,37,51),(83,37,53),(84,38,22),(85,38,45),(86,40,28),(87,40,10),(88,41,85),(89,41,38),(90,41,24),(91,41,20),(92,41,58),(93,42,84),(94,42,5),(95,42,99),(96,43,24),(97,43,34),(98,43,18),(99,44,86),(100,44,37),(101,44,86),(102,44,62),(103,44,22),(104,44,57),(105,44,40),(106,45,3),(107,45,64),(108,47,91),(109,47,71),(110,47,94),(111,48,83),(112,49,9),(113,50,19),(114,50,24),(115,50,4),(116,51,32),(117,51,18),(118,52,57),(119,52,38),(120,52,63),(121,52,96),(122,52,25),(123,52,49),(124,53,20),(125,53,53),(126,53,61),(127,53,43),(128,56,47),(129,56,54),(130,56,81),(131,56,66),(132,57,14),(133,58,79),(134,58,97),(135,59,50),(136,60,35),(137,60,52),(138,60,26),(139,61,32),(140,61,51),(141,61,25),(142,61,35),(143,62,60),(144,62,53),(145,62,31),(146,62,79),(147,63,8),(148,63,11),(149,64,88),(150,64,49),(151,64,20),(152,64,97),(153,64,3),(154,65,93),(155,66,91),(156,66,64),(157,66,23),(158,67,68),(159,67,74),(160,67,43),(161,67,46),(162,68,52),(163,68,96),(164,68,10),(165,69,64),(166,69,25),(167,69,47),(168,69,62),(169,69,20),(170,69,29),(171,69,45),(172,69,46),(173,69,84),(174,69,9),(175,70,89),(176,70,43),(177,70,11),(178,71,67),(179,72,78),(180,72,79),(181,72,65),(182,72,43),(183,72,78),(184,72,66),(185,73,77),(186,73,3),(187,73,40),(188,73,15),(189,74,89),(190,74,77),(191,75,74),(192,75,74),(193,75,30),(194,76,78),(195,77,93),(196,77,93),(197,77,61),(198,78,65),(199,78,80),(200,78,5),(201,79,77),(202,79,99),(203,79,72),(204,79,69),(205,79,2),(206,79,21),(207,79,65),(208,79,49),(209,80,43),(210,80,47),(211,80,90),(212,81,59),(213,81,9),(214,82,81),(215,82,46),(216,82,17),(217,83,60),(218,83,67),(219,83,92),(220,84,92),(221,84,45),(222,84,65),(223,85,18),(224,85,21),(225,86,16),(226,86,77),(227,87,59),(228,88,31),(229,88,72),(230,88,9),(231,88,3),(232,88,53),(233,89,70),(234,90,80),(235,90,16),(236,90,17),(237,91,29),(238,91,100),(239,91,15),(240,91,81),(241,92,4),(242,92,65),(243,92,95),(244,92,33),(245,93,74),(246,93,46),(247,93,13),(248,94,29),(249,94,45),(250,95,43),(251,95,91),(252,96,7),(253,96,16),(254,96,74),(255,96,33),(256,97,96),(257,97,85),(258,97,92),(259,98,44),(260,99,33),(261,99,13),(262,100,11),(263,101,80),(264,101,7),(265,102,83),(266,102,23),(267,102,13),(268,103,29),(269,104,52),(270,105,88),(271,105,85),(272,105,100),(273,105,32),(274,105,17),(275,106,100),(276,106,37),(277,107,73),(278,107,63),(279,108,31),(280,108,27),(281,108,66),(282,108,85),(283,108,75),(284,109,59),(285,109,50),(286,109,43),(287,111,72),(288,111,40),(289,111,52),(290,112,88),(291,113,70),(292,113,7),(293,114,27),(294,114,1),(295,114,13),(296,115,81),(297,115,29),(298,115,8),(299,116,46),(300,116,67),(301,116,42),(302,116,40),(303,117,99),(304,117,47),(305,117,39),(306,118,74),(307,118,10),(308,119,30),(309,119,28),(310,120,4),(311,121,9),(312,121,34),(313,124,86),(314,124,41),(315,124,62),(316,125,34),(317,125,44),(318,126,60),(319,127,42),(320,127,44),(321,127,59),(322,128,11),(323,128,23),(324,128,60),(325,128,33),(326,129,4),(327,129,51),(328,129,10),(329,130,65),(330,130,7),(331,130,25),(332,131,95),(333,131,31),(334,131,94),(335,131,51),(336,132,61),(337,132,39),(338,132,72),(339,133,8),(340,133,92),(341,134,32),(342,134,34),(343,135,60),(344,136,67),(345,136,31),(346,137,53),(347,137,3),(348,137,88),(349,138,87),(350,138,45),(351,139,93),(352,140,43),(353,140,17),(354,140,81),(355,140,38),(356,140,84),(357,140,54),(358,141,29),(359,142,3),(360,142,45),(361,142,46),(362,143,86),(363,143,82),(364,143,23),(365,144,41),(366,144,12),(367,144,59),(368,145,77),(369,146,60),(370,146,6),(371,146,84),(372,146,34),(373,146,48),(374,147,16),(375,148,84),(376,148,56),(377,148,26),(378,149,14),(379,149,15),(380,150,38),(381,150,1),(382,151,29),(383,151,60),(384,151,62),(385,151,31),(386,151,90),(387,151,64),(388,151,52),(389,152,5),(390,152,44),(391,152,1),(392,152,26),(393,153,60),(394,153,48),(395,153,62),(396,154,55),(397,154,61),(398,154,57),(399,155,33),(400,155,54),(401,155,56),(402,155,63),(403,155,97),(404,156,21),(405,156,2),(406,156,27),(407,158,74),(408,158,67),(409,158,92),(410,158,4),(411,159,46),(412,159,51),(413,160,51),(414,160,18),(415,160,30),(416,160,10),(417,160,48),(418,160,98),(419,160,27),(420,160,66),(421,162,28),(422,162,17),(423,162,7),(424,162,33),(425,163,69),(426,164,86),(427,164,19),(428,164,66),(429,165,45),(430,165,21),(431,166,79),(432,166,17),(433,166,22),(434,167,50),(435,167,96),(436,167,62),(437,167,50),(438,168,34),(439,168,26),(440,168,96),(441,168,36),(442,169,10),(443,169,38),(444,169,59),(445,169,55),(446,169,95),(447,171,12),(448,171,60),(449,171,89),(450,172,54),(451,172,99),(452,173,64),(453,173,41),(454,173,12),(455,174,73),(456,174,21),(457,175,1),(458,175,52),(459,175,74),(460,175,86),(461,176,62),(462,176,91),(463,176,92),(464,176,39),(465,176,74),(466,177,93),(467,177,9),(468,177,44),(469,177,39),(470,177,36),(471,177,30),(472,178,8),(473,178,22),(474,178,54),(475,179,74),(476,179,91),(477,179,62),(478,180,4),(479,180,89),(480,180,82),(481,182,55),(482,183,51),(483,183,82),(484,183,92),(485,185,52),(486,185,31),(487,185,36),(488,186,1),(489,186,26),(490,187,35),(491,187,96),(492,187,41),(493,188,68),(494,189,99),(495,189,83),(496,190,42),(497,190,96),(498,190,50),(499,190,51),(500,191,20),(501,191,29),(502,191,8),(503,191,33),(504,192,64),(505,192,56),(506,192,3),(507,192,93),(508,193,46),(509,193,89),(510,194,76),(511,194,96),(512,194,44),(513,194,47),(514,197,47),(515,197,65),(516,197,94),(517,197,70),(518,197,16),(519,198,18),(520,198,39),(521,199,34),(522,199,70);
/*!40000 ALTER TABLE `Scrivere` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Utente`
--

DROP TABLE IF EXISTS `Utente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Utente` (
  `NMatricola` int NOT NULL,
  `Nome` varchar(20) DEFAULT NULL,
  `Cognome` varchar(20) DEFAULT NULL,
  `Via` varchar(40) DEFAULT NULL,
  `NCivico` varchar(4) DEFAULT NULL,
  `Cap` char(7) DEFAULT NULL,
  `Città` varchar(20) DEFAULT NULL,
  `NTelefono` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`NMatricola`),
  UNIQUE KEY `NTelefono` (`NTelefono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Utente`
--

LOCK TABLES `Utente` WRITE;
/*!40000 ALTER TABLE `Utente` DISABLE KEYS */;
INSERT INTO `Utente` VALUES (102112,' Tommaso',' Merlino',' Via Bentivoglio',' 29',' 44123',' Ferrara',' 0893448677\r'),(105602,' Gabriela',' Cena',' Via P. Lucci',' 19',' 48012',' Ravenna',' 6642611930\r'),(106332,' Navier',' Harris',' Via Redipuglia',' 11',' 46041',' Mantova',' 7566141646\r'),(112450,' Ettore',' Foresta',' Via Pablo Neruda',' 10',' 45030',' Rovigo',' 4112658293\r'),(115445,' Clarissa',' Spadoni',' Via Andrea Mmemmo',' 45',' 35122',' Padova',' 4367137956\r'),(115620,' Joe',' Price',' Via Catene',' 22',' 37050',' Verona',' 8969874365\r'),(117625,' Giulia',' Mastrianni',' Via Lodi',' 55',' 41125',' Modena',' 5153256724\r'),(120582,' Giulio',' Stefanini',' Via L. Lana',' 37',' 41124',' Modena',' 3749007820\r'),(127647,' Fabiola',' Rigoli',' Via Valsesia',' 37',' 46100',' Mantova',' 6852307146\r'),(127902,' Cristoforo',' Paolino',' Via Candia',' 38',' 40014',' Bologna',' 6926230239\r'),(131767,' Beatrice',' Mainiero',' Via Marconi',' 51',' 44022',' Ferrara',' 3191117964\r'),(138863,' Devi',' Vishwakumar',' Via Padova',' 4',' 45030',' Rovigo',' 6468217012\r'),(141394,' Massimo',' Sanguinetti',' Via Giovanni Tasso',' 4',' 45030',' Rovigo',' 2110288676\r'),(144483,' Fabiano',' Vendetti',' Via Rovigo',' 45',' 35042',' Padova',' 2477345139\r'),(145002,' Clarissa',' Mangone',' Via Nizza',' 133',' 31010',' Treviso',' 1698841275\r'),(148882,' Marta',' Cimino',' Via Dino Mingolini',' 15',' 48123',' Ravenna',' 9207833400\r'),(155352,' Paxton',' Hall-Yoshida',' Via Canazei',' 12',' 45030',' Rovigo',' 1316135422\r'),(156003,' Emilio',' Santeramo',' Via Carlo Emaldi',' 67',' 48123',' Ravenna',' 4288638764\r'),(165664,' Valerio',' Tavella',' Via Enrico Lodi',' 7',' 40066',' Bologna',' 3866488703\r'),(169508,' Olimpia',' Catalanotto',' Via Minguzzi',' 36',' 48124',' Ravenna',' 3032867441\r'),(171927,' Maitreyi',' Ramakrishnan',' Via Piazza della Liberta\'',' 23',' 45030',' Rovigo',' 5206437240\r'),(173210,' Franco',' Frediani',' Via Vicenza',' 51',' 40125',' Bologna',' 9403521108\r'),(178605,' Isabella',' Testa',' Via Giuseppe Fabbri',' 105',' 44123',' Ferrara',' 5538649456\r'),(186250,' Elisa',' Cappetta',' Via Grazia Deledda',' 2',' 48032',' Ravenna',' 7477160256\r'),(186600,' Guglielmo',' Lucci',' Via Belviglieri',' 23','  36076',' Vicenza',' 9051372524\r'),(191236,' Cameron',' Adams',' Via Veneto',' 23',' 46030',' Mantova',' 1080425744\r'),(205526,' Sara',' Di Spirito',' Via Carlo Mayr',' 23',' 44121',' Ferrara',' 7069753019\r'),(207415,' Virginia',' Leonardis',' Via B. Lattes',' 12',' 31100',' Treviso',' 9736885632\r'),(209386,' Luca',' Mazzetti',' Via Sebastiano Perin',' 25',' 35020',' Padova',' 7427586255\r'),(210296,' Darren',' Barnet',' Via Piazza della Liberta\'',' 18',' 45030',' Rovigo',' 6976217497\r'),(214163,' Marcia',' Panella',' Via Giuseppina Rippa',' 41',' 46100',' Mantova',' 3956161498\r'),(215278,' Dominic',' Scott',' Via Della Chiesa',' 32',' 44028',' Ferrara',' 6002266006\r'),(217396,' Filippo',' Triglia',' Via Giovecca',' 50',' 44121',' Ferrara',' 6739365529\r'),(218166,' Pio',' Lancia',' Via Viazza',' 45',' 44030',' Ferrara',' 2469169778\r'),(218287,' Giacomo',' Dato',' Via Copparo',' 120',' 44123',' Ferrara',' 4504927842\r'),(223543,' Massima',' Moffa',' Via Cesare Battisti',' 73',' 31036',' Treviso',' 5579204324'),(229640,' Irene',' Calderaro',' Via Grazia Deledda',' 2',' 44049',' Ferrara',' 4418202140\r'),(234180,' Pia',' Perrelli',' Via G. Verdi',' 88',' 48011',' Ravenna',' 5720432143\r'),(236154,' Donato',' Vescovi',' Via Copparo',' 110',' 44123',' Ferrara',' 6495085655\r'),(237108,' Fabrizio',' Centanni',' Via Corso Porta Po',' 49',' 44121',' Ferrara',' 9481842242\r'),(243034,' Camilla',' Cerutti',' Via Daniele Manin',' 12',' 35040',' Padova',' 3466333846\r'),(244492,' Massimo',' Zanoni',' Via Francesco Girardi',' 43',' 35020',' Padova',' 9275727707\r'),(245256,' Giuseppe',' Carli',' Via Flavio Gioia',' 66',' 37135',' Verona',' 5149912208\r'),(245945,' Mario',' Sabatine',' Via U. Foscolo',' 17',' 40017',' Bologna',' 4848971934\r'),(246190,' Fidelia',' Pera',' Via Campetto',' 9',' 44043',' Ferrara',' 9090284382\r'),(250996,' Marta',' Sulla',' Via Alassio',' 45',' 41125',' Modena',' 7699395844\r'),(259102,' Corrado',' Alagna',' Via Francesco Petrarca',' 71',' 40136',' Bologna',' 4677151647\r'),(259606,' Vincenzo',' Nanna',' Via Del Rosario',' 1',' 44022',' Ferrara',' 9638066391\r'),(260486,' Ruth',' Minieri',' Via Friggeri',' 21',' 40014',' Bologna',' 5372026222\r'),(265877,' Patrizio',' Sartore',' Via Archimede',' 110',' 40022',' Bologna',' 7603825552\r'),(271300,' Ginevra',' Pizzino',' Via Darsena',' 25',' 44122',' Ferrara',' 0372732351\r'),(282671,' Tommaso',' Rinella',' Via Goffredo Mameli',' 63',' 47921',' Rimini',' 6090830331\r'),(283928,' Michelangelo',' Chiavetta',' Via Giacinto Gigante',' 5',' 41030',' Modena',' 7793104144\r'),(284119,' Melania',' Piraino',' Via Galvani',' 104',' 45100',' Rovigo',' 0558024595\r'),(284312,' Gianni',' Giambruno',' Via Elio Vittorini',' 10',' 48012',' Ravenna',' 9207952588\r'),(295352,' Giacinta',' Tenaglia',' Via Torino',' 33',' 35142',' Padova',' 5366070784\r'),(296067,' Vittorio',' Rolla',' Via Piazza della liberta\'',' 18',' 45030',' Rovigo',' 8803137305\r'),(296336,' Marcella',' Sereno',' Via Comacchio',' 46',' 44124',' Ferrara',' 9424351226\r');
/*!40000 ALTER TABLE `Utente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-20 12:17:58
