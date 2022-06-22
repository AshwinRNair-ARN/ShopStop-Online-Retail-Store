CREATE DATABASE  IF NOT EXISTS `project65` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `project65`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: project65
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `delivery_agent`
--

DROP TABLE IF EXISTS `delivery_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_agent` (
  `D_ID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `AptNumber` int NOT NULL,
  `Street` varchar(15) DEFAULT NULL,
  `State` varchar(15) NOT NULL,
  `Pincode` int NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Age` int NOT NULL,
  `ContactNo` varchar(15) NOT NULL,
  `DateofJoining` date NOT NULL,
  PRIMARY KEY (`D_ID`),
  UNIQUE KEY `ContactNo` (`ContactNo`),
  CONSTRAINT `delivery_agent_chk_1` CHECK ((`Age` > 18))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_agent`
--

LOCK TABLES `delivery_agent` WRITE;
/*!40000 ALTER TABLE `delivery_agent` DISABLE KEYS */;
INSERT INTO `delivery_agent` VALUES (1,'Quinn','Stembridge',35,'NRI colony','Gujarat',110376,'qstembridge0@washington.edu',28,'495-685-2416','2020-01-28'),(2,'Ignaz','Rogans',16,'Mahal yojana','Himachal',110669,'irogans1@example.com',33,'609-446-9327','2020-02-18'),(3,'Markus','Eldredge',36,'Mahal yojana','Bangalore',110536,'meldredge2@gnu.org',27,'200-361-9085','2018-05-11'),(4,'Felike','Skipp',19,'Bapu nagar','Haryana',111359,'fskipp3@stumbleupon.com',41,'988-207-1936','2021-06-16'),(5,'Michal','Christensen',18,'Krishna colony','Bihar',110210,'mchristensen4@hugedomains.com',32,'766-937-7541','2020-06-12'),(6,'Der','Franzettoini',31,'Jawahar nagar','Uttar Pradesh',111447,'dfranzettoini5@ebay.co.uk',28,'918-915-6335','2019-11-27'),(7,'Blinny','Zavattiero',32,'Ram Nagar','Tamil Nadu',111912,'bzavattiero6@skype.com',40,'166-616-3375','2017-03-05'),(8,'Tonia','Kimberley',39,'Bapu marg','Rajasthan',111042,'tkimberley7@trellian.com',28,'323-311-9097','2019-02-03'),(9,'Klemens','Britland',18,'Agra highway','Jammu & Kashmir',110031,'kbritland8@alibaba.com',36,'949-776-4528','2018-06-16'),(10,'Fowler','Larrad',38,'NRI colony','Gujarat',111120,'flarrad9@cnet.com',34,'502-382-4050','2020-09-09'),(11,'Wilek','Blaase',20,'Shivanji circle','Haryana',111869,'wblaasea@shinystat.com',32,'251-693-8251','2018-01-05'),(12,'Waylen','Pearmain',28,'Cheelgadi road','Jammu & Kashmir',111770,'wpearmainb@usnews.com',41,'269-107-6408','2020-11-06'),(13,'Alyosha','Hizir',38,'Mahal yojana','Punjab',110250,'ahizirc@indiegogo.com',27,'657-940-9327','2019-07-06'),(14,'Wakefield','Amaya',32,'Bapu marg','Punjab',111229,'wamayad@behance.net',41,'381-512-4375','2020-01-13'),(15,'Husein','Fittis',20,'Cheelgadi road','Tripura',110016,'hfittise@nyu.edu',33,'557-693-8163','2021-01-15'),(16,'Andra','Bourgourd',21,'Lakshmi Nagar','Bangalore',111526,'abourgourdf@npr.org',43,'420-601-0960','2019-05-27'),(17,'Livy','Tomkys',20,'Malviya nagar','Himachal',110709,'ltomkysg@umich.edu',25,'665-608-9881','2019-05-25'),(18,'Renault','Duny',31,'Shivanji circle','Bangalore',111498,'rdunyh@guardian.co.uk',39,'899-548-4342','2018-09-19'),(19,'Renato','Culmer',20,'Lalsot marg','Rajasthan',111125,'rculmeri@technorati.com',25,'125-804-2945','2017-10-05'),(20,'Georgine','Trathan',36,'Jawahar nagar','Bihar',110138,'gtrathanj@digg.com',37,'102-702-2280','2017-11-30');
/*!40000 ALTER TABLE `delivery_agent` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-27 21:54:17
