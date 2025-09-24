-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: biblioteca_marco_migracao
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
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autor` (
  `id_autor` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `nacionalidade` varchar(50) NOT NULL,
  PRIMARY KEY (`id_autor`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (1,'Machado de Assis','Brasil'),(2,'José Saramago','Portugal'),(3,'George Orwell','Reino Unido'),(4,'Jane Austen','Reino Unido'),(5,'Jorge Luis Borges','Argentina'),(6,'Gabriel García Márquez','Colômbia'),(7,'Franz Kafka','Alemanha'),(8,'J.K. Rowling','Reino Unido'),(9,'Haruki Murakami','Japão'),(10,'Ernest Hemingway','EUA'),(11,'Clarice Lispector','Brasil'),(12,'Eça de Queiroz','Portugal'),(13,'William Shakespeare','Reino Unido'),(14,'Virginia Woolf','Reino Unido'),(15,'Albert Camus','França'),(16,'Italo Calvino','Itália'),(17,'Stephen King','EUA'),(18,'Carlos Drummond de Andrade','Brasil'),(19,'Margaret Atwood','Canadá'),(20,'Mia Couto','Moçambique'),(21,'Paulo Coelho','Brasil'),(22,'Oscar Wilde','Irlanda'),(23,'Fiódor Dostoiévski','Rússia'),(24,'Lev Tolstói','Rússia'),(25,'Graciliano Ramos','Brasil'),(26,'José de Alencar','Brasil'),(27,'Fernando Pessoa','Portugal'),(28,'Agatha Christie','Reino Unido'),ₐ(29,'Julio Cortázar','Argentina'),(30,'Mario Vargas Llosa','Peru'),(31,'H.P. Lovecraft','EUA'),(32,'Cecília Meireles','Brasil'),(33,'Rubem Braga','Brasil'),(34,'Albert Einstein','Alemanha'),(35,'Sun Tzu','China'),(36,'Homer','Grécia'),(37,'Platão','Grécia'),(38,'Aristóteles','Grécia'),(39,'Sigmund Freud','Áustria'),(40,'Jean-Paul Sartre','França'),(41,'Simone de Beauvoir','França'),(42,'Umberto Eco','Itália'),(43,'João Cabral de Melo Neto','Brasil'),(44,'Carlos Fuentes','México'),(45,'José Martí','Cuba'),(46,'Chimamanda Ngozi Adichie','Nigéria'),(47,'José Hernández','Argentina'),(48,'Rubem Fonseca','Brasil'),(49,'Monteiro Lobato','Brasil'),(50,'Lima Barreto','Brasil'),(51,'Mo Yan','China'),(52,'André Gide','França'),(53,'Thomas Mann','Alemanha'),(54,'Hermann Hesse','Alemanha'),(55,'Khaled Hosseini','Afeganistão'),(56,'Kazuo Ishiguro','Reino Unido'),(57,'Toni Morrison','EUA'),(58,'Mário Quintana','Brasil'),(59,'Rupi Kaur','Canadá'),(60,'Lygia Fagundes Telles','Brasil'),(61,'José Lins do Rego','Brasil'),(62,'Emily Brontë','Reino Unido'),(63,'Charlotte Brontë','Reino Unido'),(64,'Mary Shelley','Reino Unido'),(65,'Bram Stoker','Irlanda'),(66,'James Joyce','Irlanda'),(67,'Dante Alighieri','Itália');(68,'Giovanni Boccaccio','Itália'),(69,'Nicolau Maquiavel','Itália'),(70,'Voltaire','França'),(71,'Victor Hugo','França'),(72,'Alexandre Dumas','França'),(73,'Honoré de Balzac','França'),(74,'Jules Verne','França'),(75,'Edgar Allan Poe','EUA'),(76,'Mark Twain','EUA'),(77,'Jack London','EUA'),(78,'Herman Melville','EUA'),(79,'John Steinbeck','EUA'),(80,'Erico Verissimo','Brasil'),(81,'Jorge Amado','Brasil'),(82,'Nelson Rodrigues','Brasil'),(83,'Rachel de Queiroz','Brasil'),(84,'Cyro dos Anjos','Brasil'),(85,'Fernando Sabino','Brasil'),(86,'Murilo Rubião','Brasil'),(87,'Moacyr Scliar','Brasil'),(88,'Orhan Pamuk','Turquia'),(89,'José Donoso','Chile'),(90,'Isabel Allende','Chile'),(91,'Pablo Neruda','Chile'),(92,'Mario Benedetti','Uruguai'),(93,'Juan Rulfo','México'),(94,'Octavio Paz','México'),(95,'J. R. R. Tolkien','Reino Unido'),(96,'C.S. Lewis','Reino Unido'),(97,'Neil Gaiman','Reino Unido'),(98,'Douglas Adams','Reino Unido');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livro`
--

DR0P TABLE IF EXISTS `livro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livro` (
  `id_livro` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(150) NOT NULL,
  `ano_publicacao` int NOT NULL,
  `id_autor_fk` int NOT NULL,
  PRIMARY KEY (`id_livro`),
  KEY `id_autor_fk` (`id_autor_fk`),
  CONSTRAINT `livro_ibfk_1` FOREIGN KEY (`id_autor_fk`) REFERENCES `autor` (`id_autor`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATES=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livro`
--

LOCK TABLES `livro` WRITE;
/*!40000 ALTER TABLE `livro` DISABLE KEYS */;
INSERT INTO `livro` VALUES (1,'Dom Casmurro',1899,1),(2,'Memorial do Convento',1982,2),(3,'1984',1949,3),(4,'Orgulho e Preconceito',1813,4),(5,'Ficções',1944,5),(6,'Cem Anos de Solidão',1967,6),(7,'A Metamorfose',1915,7),(8,'Harry Potter e a Pedra Filosofal',1997,8),(9,'Kafka à Beira-Mar',2002,9),(10,'O Velho e o Mar',1952,10),(11,'A Hora da Estrela',1977,11),(12,'Os Maias',1888,12),(13,'Hamlet',1603,13),(14,'Mrs. Dalloway',1925,14),(15,'O Estrangeiro',1942,15),(16,'Se um Viajante numa Noite de Inverno',1979,16),(17,'O Iluminado',1977,17),(18,'Alguma Poesia',1930,18),(19,'O Conto da Aia',1985,19),(20,'Terra Sonâmbula',1992,20),(21,'O Alquimista',1988,21),(22,'O Retrato de Dorian Gray',1890,22),(23,'Crime e Castigo',1866,23),(24,'Guerra e Paz',1869,24),(25,'Vidas Secas',1938,25),(26,'Iracema',1865,26),(27,'Mensagem',1934,27),(28,'Assassinato no Expresso do Oriente',1934,28),(29,'Rayuela',1963,29),(30,'Conversa na Catedral',1969,30),(31,'O Chamado de Cthulhu',1928,31),(32,'Romanceiro da Inconfidência',1953,32),(33,'A Cidade e as Serras',1901,12),(34,'O Mundo Como Eu Vejo',1934,34),(35,'A Arte da Guerra',-500,35),(36,'Ilíada',-750,36),(37,'A República',-380,37),(38,'Ética a Nicômaco',-340,38),(39,'A Interpretação dos Sonhos',1899,39),(40,'A Náusea',1938,40),(41,'O Segundo Sexo',1949,41),(42,'O Nome da Rosa',1980,42),(43,'Morte e Vida Severina',1955,43),(44,'Aura',1962,44),(45,'Versos Sencillos',1891,45),(46,'Americanah',2013,46),(47,'Martín Fierro',1872,47),(48,'Agosto',1990,48),(49,'Sítio do Picapau Amarelo',1920,49),(50,'Triste Fim de Policarpo Quaresma',1911,50),(51,'Mudança',1987,51),(52,'Os Moedeiros Falsos',1925,52),(53,'A Montanha Mágica',1924,53),(54,'Sidarta',1922,54),(55,'O Caçador de Pipas',2003,55),(56,'Os Despojos do Dia',1989,56),(57,'Amada',1987,57),(58,'Caderno H',1973,58),(59,'Outros Jeitos de Usar a Boca',2014,59),(60,'As Meninas',1973,60),(61,'Menino de Engenho',1932,61),(62,'Morro dos Ventos Uivantes',1847,62),(63,'Jane Eyre',1847,63),(64,'Frankenstein',1818,64),(65,'Drácula',1897,65),(66,'Ulisses',1922,66),(67,'A Divina Comédia',1320,67),(68,'Decamerão',1353,68),(69,'O Príncipe',1532,69),(70,'Cândido',1759,70),(71,'Os Miseráveis',1862,71),(72,'O Conde de Monte Cristo',1844,72),(73,'A Comédia Humana',1848,73),(74,'Vinte Mil Léguas Submarinas',1870,74),(75,'O Corvo',1845,75),(76,'As Aventuras de Tom Sawyer',1876,76),(77,'Caninos Brancos',1906,77),(78,'Moby Dick',1851,78),(79,'As Vinhas da Ira',1939,79),(80,'O Tempo e o Vento',1949,80),(81,'Capitães da Areia',1937,81),(82,'Vestido de Noiva',1943,82),(83,'O Quinze',1930,83),(84,'O Amanuense Belmiro',1937,84),(85,'O Encontro Marcado',1956,85),(86,'O Ex-Mágico da Taberna Minhota',1947,86),(87,'O Centauro no Jardim',1980,87),(88,'Neve',2002,88),(89,'O Obsceno Pássaro da Noite',1970,89),(90,'A Casa dos Espíritos',1982,90),(91,'Vinte Poemas de Amor e uma Canção Desesperada',1924,91),(92,'A Trégua',1960,92),(93,'Pedro Páramo',1955,93),(94,'O Labirinto da Solidão',1950,94),(95,'O Senhor dos Anéis',1954,95),(96,'As Crônicas de Nárnia',1950,96),(97,'Deuses Americanos',2001,97),(98,'O Guia do Mochileiro das Galáxias',1979,98),(99,'Beloved',1987,57),(100,'O Livro do Desassossego',1982,27);
/*!40000 ALTER TABLE `livro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-23 12:40:44
