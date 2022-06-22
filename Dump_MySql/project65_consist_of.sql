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
-- Table structure for table `consist_of`
--

DROP TABLE IF EXISTS `consist_of`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consist_of` (
  `O_ID` int NOT NULL,
  `P_ID` int NOT NULL,
  `Quantity` int DEFAULT NULL,
  PRIMARY KEY (`O_ID`,`P_ID`),
  KEY `P_ID` (`P_ID`),
  CONSTRAINT `consist_of_ibfk_1` FOREIGN KEY (`O_ID`) REFERENCES `orders` (`O_ID`),
  CONSTRAINT `consist_of_ibfk_2` FOREIGN KEY (`P_ID`) REFERENCES `product` (`P_ID`),
  CONSTRAINT `consist_of_chk_1` CHECK ((`Quantity` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consist_of`
--

LOCK TABLES `consist_of` WRITE;
/*!40000 ALTER TABLE `consist_of` DISABLE KEYS */;
INSERT INTO `consist_of` VALUES (1,1,5),(1,3,2),(1,5,3),(1,7,2),(1,12,10),(2,32,4),(2,41,5),(3,47,2),(3,54,3),(3,72,1),(4,74,2),(4,86,4),(5,129,7),(6,153,1),(6,160,1),(6,181,1),(7,199,5),(8,4,2),(8,11,2),(9,18,12),(9,49,3),(10,1,1),(10,60,2),(10,200,3),(11,195,2),(12,12,12),(12,158,7),(12,160,5),(13,15,5),(13,195,1),(14,106,8),(14,108,4),(14,189,3),(15,8,1),(15,32,3),(15,133,2),(16,107,3),(17,81,2),(17,197,2),(18,2,2),(18,42,1),(19,43,6),(19,78,1),(20,111,5),(20,122,3),(20,133,2),(21,144,2),(21,161,3),(22,5,2),(22,11,7),(23,75,1),(24,3,2),(24,121,1),(25,28,1),(25,151,3),(26,33,6),(26,57,1),(26,93,1),(27,161,5),(27,166,2),(27,170,12),(28,169,17),(29,19,3),(29,29,1),(29,50,21),(29,176,1),(30,44,3),(30,46,32),(30,66,1),(31,48,10),(32,33,4),(32,45,13),(33,37,5),(33,40,7),(34,35,9),(34,158,7),(35,127,4),(35,131,3),(35,198,2),(36,31,6),(36,34,6),(37,38,8),(38,42,7),(38,119,1),(38,128,3),(39,94,3),(40,11,2),(40,93,1),(40,193,1),(41,14,1),(42,3,4),(42,7,3),(43,40,4),(43,67,1),(44,63,1),(44,65,1),(45,126,3),(45,146,2),(45,153,6),(46,27,3),(46,37,9),(47,58,7),(47,77,1),(48,36,12),(48,82,14),(48,189,2),(49,76,1),(49,113,3),(49,172,4),(50,11,1),(50,25,2),(51,27,3),(51,184,1),(52,187,2),(53,70,1),(53,86,4),(53,104,1),(54,31,12),(54,36,3),(54,89,2),(55,1,5),(55,3,2),(55,5,3),(55,7,2),(55,12,10),(56,32,4),(56,41,5),(57,47,2),(57,54,3),(57,72,1),(58,74,2),(58,86,4),(59,129,7),(60,153,1),(60,160,1),(60,181,1),(61,199,5),(62,4,2),(62,11,2),(63,18,12),(63,49,3),(64,1,1),(64,60,2),(64,200,3),(65,195,2),(66,12,12),(66,158,7),(66,160,5),(67,15,5),(67,195,1),(68,106,8),(68,108,4),(68,189,3),(69,8,1),(69,32,3),(69,133,2);
/*!40000 ALTER TABLE `consist_of` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_amount` AFTER INSERT ON `consist_of` FOR EACH ROW Update Orders 
	Set Orders.Net_Amount=Orders.Net_Amount+ ((New.Quantity)*(Select price from Product where Product.P_ID=new.P_ID)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `place_order` AFTER INSERT ON `consist_of` FOR EACH ROW Update Product 
        Set Product .Quantity=Product .Quantity+25
		Where Product.Quantity<=10 and Product.P_ID=New.P_ID and product.C_Name in
		(
		select V.C_Name from vendor as V,availability as A where
		V.V_ID=A.V_ID and AStatus="YES"
		) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_product` AFTER INSERT ON `consist_of` FOR EACH ROW Update Product 
	Set Product.Quantity=Product.Quantity-New.Quantity
	Where Product.P_ID=New.P_ID */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-27 21:54:17
