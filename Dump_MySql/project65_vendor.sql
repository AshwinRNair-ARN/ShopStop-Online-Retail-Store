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
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor` (
  `V_ID` int NOT NULL AUTO_INCREMENT,
  `StoreName` varchar(9) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `C_Name` varchar(19) NOT NULL,
  PRIMARY KEY (`V_ID`),
  KEY `C_Name` (`C_Name`),
  CONSTRAINT `vendor_ibfk_1` FOREIGN KEY (`C_Name`) REFERENCES `category` (`C_Name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES (1,'Zara','677-807-6896','Clothing'),(2,'Nike','360-744-3368','Footwear'),(3,'Rolex','942-249-0251','Watches'),(4,'Grofers','591-234-2645','Fruits & Vegetables'),(5,'Haldiram','865-740-8200','Snacks'),(6,'HP','692-249-8424','Electronics'),(7,'Xiaomi','208-913-3637','Mobiles & Computers'),(8,'Roland','765-351-1589','Musical Instruments'),(9,'Borosil','156-726-5130','Kitchen Appliances'),(10,'PepperFry','405-840-7225','Furniture'),(11,'SChand','398-193-8487','Books'),(12,'Tencent','847-449-6918','Gaming'),(13,'Lakme','464-963-5506','Cosmetics'),(14,'Sonic','827-491-6996','Movies'),(15,'Mario','849-574-9799','Toys'),(16,'bigBasket','633-967-9398','Grocery'),(17,'Apolo','799-116-8626','Medicines'),(18,'AT','358-654-7028','Luggage'),(19,'MRF','348-830-6650','Sports & Fitness'),(20,'Pathik','980-655-9416','Home Decor');
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-27 21:54:18
