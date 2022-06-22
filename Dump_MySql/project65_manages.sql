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
-- Table structure for table `manages`
--

DROP TABLE IF EXISTS `manages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manages` (
  `C_Name` varchar(19) NOT NULL,
  `E_ID` int NOT NULL DEFAULT (NULL),
  `DateofAppointment` date NOT NULL DEFAULT (NULL),
  PRIMARY KEY (`E_ID`,`C_Name`,`DateofAppointment`),
  KEY `C_Name` (`C_Name`),
  CONSTRAINT `manages_ibfk_1` FOREIGN KEY (`E_ID`) REFERENCES `employee` (`E_ID`),
  CONSTRAINT `manages_ibfk_2` FOREIGN KEY (`C_Name`) REFERENCES `category` (`C_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manages`
--

LOCK TABLES `manages` WRITE;
/*!40000 ALTER TABLE `manages` DISABLE KEYS */;
INSERT INTO `manages` VALUES ('Books',23,'2016-07-31'),('Clothing',1,'2015-01-30'),('Clothing',2,'2022-04-21'),('Cosmetics',27,'2014-07-21'),('Electronics',10,'2016-10-17'),('Footwear',3,'2015-10-13'),('Fruits & Vegetables',7,'2014-04-23'),('Furniture',20,'2020-07-31'),('Gaming',25,'2020-07-31'),('Grocery',34,'2019-09-01'),('Home Decor',47,'2017-09-28'),('Kitchen Appliances',16,'2020-07-31'),('Luggage',41,'2018-10-07'),('Medicines',35,'2019-07-27'),('Mobiles & Computers',13,'2013-12-23'),('Movies',31,'2016-07-21'),('Musical Instruments',15,'2013-07-31'),('Snacks',9,'2020-07-31'),('Sports & Fitness',43,'2020-07-28'),('Toys',32,'2020-07-22'),('Watches',6,'2012-04-12');
/*!40000 ALTER TABLE `manages` ENABLE KEYS */;
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
