-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: cinema
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `diretores`
--

DROP TABLE IF EXISTS `diretores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diretores` (
  `id_diretor` int NOT NULL AUTO_INCREMENT,
  `nome_diretor` varchar(100) NOT NULL,
  `nacionalidade` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_diretor`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diretores`
--

LOCK TABLES `diretores` WRITE;
/*!40000 ALTER TABLE `diretores` DISABLE KEYS */;
INSERT INTO `diretores` VALUES (1,'Steven Spielberg','EUA'),(2,'Christopher Nolan','Reino Unido'),(3,'Martin Scorsese','EUA'),(4,'Quentin Tarantino','EUA'),(5,'James Cameron','Canadá'),(6,'Peter Jackson','Nova Zelândia'),(7,'Ridley Scott','Reino Unido'),(8,'Alfred Hitchcock','Reino Unido'),(9,'Stanley Kubrick','EUA'),(10,'Francis Ford Coppola','EUA'),(11,'Wes Anderson','EUA'),(12,'Guillermo del Toro','México'),(13,'Tim Burton','EUA'),(14,'Clint Eastwood','EUA'),(15,'Ang Lee','Taiwan'),(16,'George Lucas','EUA'),(17,'Joel Coen','EUA'),(18,'Ethan Coen','EUA'),(19,'Patty Jenkins','EUA'),(20,'Denis Villeneuve','Canadá'),(21,'James Wan','Malásia'),(22,'David Fincher','EUA'),(23,'Sofia Coppola','EUA'),(24,'Robert Zemeckis','EUA'),(25,'Mel Gibson','EUA'),(26,'Richard Linklater','EUA'),(27,'Guy Ritchie','Reino Unido'),(28,'Baz Luhrmann','Austrália'),(29,'David Lynch','EUA'),(30,'Michael Bay','EUA'),(31,'Ron Howard','EUA'),(32,'Jean-Pierre Jeunet','França'),(33,'Zack Snyder','EUA'),(34,'Hayao Miyazaki','Japão'),(35,'Makoto Shinkai','Japão'),(36,'Peter Weir','Austrália'),(37,'Pedro Almodóvar','Espanha'),(38,'Alejandro González Iñárritu','México'),(39,'Fernando Meirelles','Brasil'),(40,'Walter Salles','Brasil'),(41,'Gus Van Sant','EUA'),(42,'Paul Thomas Anderson','EUA'),(43,'Spike Lee','EUA'),(44,'Angelo Orlando','EUA'),(45,'Lars von Trier','Dinamarca'),(46,'Terry Gilliam','Reino Unido'),(47,'Jonathan Demme','EUA'),(48,'M. Night Shyamalan','EUA'),(49,'Robert Rodriguez','EUA'),(50,'Wong Kar-wai','China'),(51,'Guillermo Arriaga','México'),(52,'Tom Hooper','Reino Unido'),(53,'Danny Boyle','Reino Unido'),(54,'Oliver Stone','EUA'),(55,'John Woo','Hong Kong'),(56,'Sergio Leone','Itália'),(57,'Ken Loach','Reino Unido'),(58,'Spike Jonze','EUA'),(59,'Darren Aronofsky','EUA'),(60,'Roberto Benigni','Itália'),(61,'Hirokazu Kore-eda','Japão'),(62,'Lilly Wachowski','EUA'),(63,'Lana Wachowski','EUA'),(64,'Clint Mansell','Reino Unido'),(65,'Terrence Malick','EUA'),(66,'Richard Curtis','Reino Unido'),(67,'Shane Black','EUA'),(68,'Sam Mendes','Reino Unido'),(69,'Brad Bird','EUA'),(70,'Chris Columbus','EUA'),(71,'James L. Brooks','EUA'),(72,'Norman Jewison','Canadá'),(73,'Ivan Reitman','Canadá'),(74,'Robert Altman','EUA'),(75,'John Carpenter','EUA'),(76,'Terry Zwigoff','EUA'),(77,'Peter Bogdanovich','EUA'),(78,'Frank Darabont','EUA'),(79,'Bong Joon-ho','Coreia do Sul'),(80,'Park Chan-wook','Coreia do Sul'),(81,'Hideo Nakata','Japão'),(82,'Koreyoshi Kurahara','Japão'),(83,'Yasujiro Ozu','Japão'),(84,'Akira Kurosawa','Japão'),(85,'Jean-Luc Godard','França'),(86,'François Truffaut','França'),(87,'Luc Besson','França'),(88,'Claude Chabrol','França'),(89,'Andrei Tarkovsky','Rússia'),(90,'Sergei Eisenstein','Rússia'),(91,'Alejandro Amenábar','Espanha'),(92,'Victor Fleming','EUA'),(93,'John Huston','EUA'),(94,'Fred Zinnemann','EUA'),(95,'Nicholas Ray','EUA'),(96,'Vittorio De Sica','Itália'),(97,'Luchino Visconti','Itália'),(98,'Federico Fellini','Itália'),(99,'Bernardo Bertolucci','Itália'),(100,'Ingmar Bergman','Suécia'),(101,'Roy Andersson','Suécia'),(102,'Michael Haneke','Áustria'),(103,'Gus Meins','EUA'),(104,'Rian Johnson','EUA'),(105,'Taika Waititi','Nova Zelândia');
/*!40000 ALTER TABLE `diretores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filmes`
--

DROP TABLE IF EXISTS `filmes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filmes` (
  `id_filme` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `ano_lancamento` year DEFAULT NULL,
  `id_diretor` int NOT NULL,
  PRIMARY KEY (`id_filme`),
  KEY `id_diretor` (`id_diretor`),
  CONSTRAINT `filmes_ibfk_1` FOREIGN KEY (`id_diretor`) REFERENCES `diretores` (`id_diretor`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filmes`
--

LOCK TABLES `filmes` WRITE;
/*!40000 ALTER TABLE `filmes` DISABLE KEYS */;
INSERT INTO `filmes` VALUES (1,'Jurassic Park',1993,1),(2,'Inception',2010,2),(3,'The Irishman',2019,3),(4,'Pulp Fiction',1994,4),(5,'Titanic',1997,5),(6,'The Lord of the Rings: The Fellowship of the Ring',2001,6),(7,'Gladiator',2000,7),(8,'Psycho',1960,8),(9,'2001: A Space Odyssey',1968,9),(10,'The Godfather',1972,10),(11,'The Grand Budapest Hotel',2014,11),(12,'Pans Labyrinth',2006,12),(13,'Edward Scissorhands',1990,13),(14,'Million Dollar Baby',2004,14),(15,'Crouching Tiger, Hidden Dragon',2000,15),(16,'Star Wars: A New Hope',1977,16),(17,'No Country for Old Men',2007,17),(18,'Fargo',1996,18),(19,'Wonder Woman',2017,19),(20,'Dune',2021,20),(21,'The Conjuring',2013,21),(22,'Fight Club',1999,22),(23,'Lost in Translation',2003,23),(24,'Forrest Gump',1994,24),(25,'Braveheart',1995,25),(26,'Boyhood',2014,26),(27,'Snatch',2000,27),(28,'Moulin Rouge!',2001,28),(29,'Mulholland Drive',2001,29),(30,'Transformers',2007,30),(31,'A Beautiful Mind',2001,31),(32,'Amélie',2001,32),(33,'Watchmen',2009,33),(34,'Spirited Away',2001,34),(35,'Your Name',2016,35),(36,'Dead Poets Society',1989,36),(37,'Talk to Her',2002,37),(38,'Birdman',2014,38),(39,'City of God',2002,39),(40,'Central Station',1998,40),(41,'Good Will Hunting',1997,41),(42,'Magnolia',1999,42),(43,'Do the Right Thing',1989,43),(44,'Billy Madison',1995,44),(45,'Melancholia',2011,45),(46,'Breaking the Waves',1996,46),(47,'12 Monkeys',1995,47),(48,'Silence of the Lambs',1991,48),(49,'Desperado',1995,49),(50,'In the Mood for Love',2000,50),(51,'Amores Perros',2000,51),(52,'The King\s Speech',2010,52),(53,'Slumdog Millionaire',2008,53),(54,'Trainspotting',1996,54),(55,'The Aviator',2004,55),(56,'Heat',1995,56),(57,'The Fisher King',1991,57),(58,'Black Swan',2010,58),(59,'Life is Beautiful',1997,59),(60,'Still Walking',2008,60),(61,'The Matrix',1999,61),(62,'Cloud Atlas',2012,62),(63,'Love Actually',2003,63),(64,'Kiss Kiss Bang Bang',2005,64),(65,'Skyfall',2012,65),(66,'The Incredibles',2004,66),(67,'Home Alone',1990,67),(68,'Terms of Endearment',1983,68),(69,'Ghostbusters',1984,69),(70,'M*A*S*H',1970,70),(71,'The Shawshank Redemption',1994,71),(72,'Parasite',2019,72),(73,'Oldboy',2003,73),(74,'Ring',1998,74),(75,'The Warped Forest',1978,75),(76,'Tokyo Story',1953,76),(77,'Seven Samurai',1954,77),(78,'Breathless',1960,78),(79,'The 400 Blows',1959,79),(80,'Léon: The Professional',1994,80),(81,'Solaris',1972,81),(82,'Battleship Potemkin',1925,82),(83,'The Others',2001,83),(84,'Gone with the Wind',1939,84),(85,'The Wizard of Oz',1939,85),(86,'High Noon',1952,86),(87,'Escape from Alcatraz',1979,87),(88,'Ghost World',2001,88),(89,'The Last Picture Show',1971,89),(90,'The Green Mile',1999,90),(91,'Parasite',2019,91),(92,'Oldboy',2003,92),(93,'The Ring',1998,93),(94,'Melancholia',2011,94),(95,'Love & Death',1975,95),(96,'Knives Out',2019,96),(97,'The Piano',1993,97),(98,'Jojo Rabbit',2019,98),(99,'The Lighthouse',2019,99),(100,'Thor: Ragnarok',2017,100);
/*!40000 ALTER TABLE `filmes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-24 11:03:19
