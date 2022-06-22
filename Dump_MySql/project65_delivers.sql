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
-- Table structure for table `delivers`
--

DROP TABLE IF EXISTS `delivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivers` (
  `D_ID` int NOT NULL,
  `O_ID` int NOT NULL,
  `DStatus` varchar(3) NOT NULL DEFAULT (_utf8mb4'NO'),
  PRIMARY KEY (`O_ID`,`D_ID`),
  KEY `D_ID` (`D_ID`),
  KEY `DeliveryStatus` (`DStatus`),
  CONSTRAINT `delivers_ibfk_1` FOREIGN KEY (`D_ID`) REFERENCES `delivery_agent` (`D_ID`),
  CONSTRAINT `delivers_ibfk_2` FOREIGN KEY (`O_ID`) REFERENCES `orders` (`O_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivers`
--

LOCK TABLES `delivers` WRITE;
/*!40000 ALTER TABLE `delivers` DISABLE KEYS */;
INSERT INTO `delivers` VALUES (1,60,'NO'),(12,61,'NO'),(17,62,'NO'),(14,63,'NO'),(16,64,'NO'),(5,65,'NO'),(16,66,'NO'),(7,67,'NO'),(5,68,'NO'),(17,69,'NO'),(12,1,'YES'),(16,2,'YES'),(1,3,'YES'),(2,4,'YES'),(14,5,'YES'),(18,6,'YES'),(13,7,'YES'),(3,8,'YES'),(5,9,'YES'),(12,10,'YES'),(16,11,'YES'),(14,12,'YES'),(5,13,'YES'),(7,14,'YES'),(18,15,'YES'),(12,16,'YES'),(14,17,'YES'),(10,18,'YES'),(16,19,'YES'),(13,20,'YES'),(18,21,'YES'),(10,22,'YES'),(3,23,'YES'),(2,24,'YES'),(1,25,'YES'),(8,26,'YES'),(6,27,'YES'),(2,28,'YES'),(1,29,'YES'),(3,30,'YES'),(12,31,'YES'),(17,32,'YES'),(18,33,'YES'),(16,34,'YES'),(11,35,'YES'),(1,36,'YES'),(14,37,'YES'),(10,38,'YES'),(11,39,'YES'),(15,40,'YES'),(17,41,'YES'),(12,42,'YES'),(1,43,'YES'),(2,44,'YES'),(6,45,'YES'),(3,46,'YES'),(6,47,'YES'),(9,48,'YES'),(5,49,'YES'),(16,50,'YES'),(13,51,'YES'),(15,52,'YES'),(18,53,'YES'),(19,54,'YES'),(11,55,'YES'),(1,56,'YES'),(2,57,'YES'),(4,58,'YES'),(3,59,'YES');
/*!40000 ALTER TABLE `delivers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-27 21:54:16
