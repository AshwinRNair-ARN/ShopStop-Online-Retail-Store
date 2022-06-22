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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `E_ID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `AptNumber` int NOT NULL,
  `Street` varchar(15) NOT NULL,
  `State` varchar(15) NOT NULL,
  `Pincode` int NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Age` int NOT NULL,
  `ContactNo` varchar(15) NOT NULL,
  `DateofJoining` date NOT NULL,
  PRIMARY KEY (`E_ID`),
  UNIQUE KEY `ContactNo` (`ContactNo`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Constantine','Gilogly',44,'Bapu nagar','Chennai',156953,'cgilogly0@cam.ac.uk',25,'744-686-9795','2014-01-30'),(2,'Blanche','Balassa',13,'Ram Nagar','Tripura',205073,'bbalassa1@jalbum.net',19,'214-274-5054','2010-08-05'),(3,'Brigida','Rodrigues',74,'Bapu marg','Punjab',144470,'brodrigues2@home.pl',23,'525-733-0509','2013-10-13'),(4,'Claudie','Bielfeldt',88,'Parshuram marg','Bihar',137560,'cbielfeldt3@clickbank.net',23,'802-740-0770','2017-01-27'),(5,'Britni','Bremen',68,'Bapu marg','Tamil Nadu',183403,'bbremen4@hatena.ne.jp',37,'915-949-4384','2012-02-27'),(6,'Loren','Trewhitt',81,'Janata colony','Tamil Nadu',131810,'ltrewhitt5@telegraph.co.uk',30,'880-789-1820','2010-04-12'),(7,'Mahalia','Hardwicke',64,'Krishna colony','Punjab',112602,'mhardwicke6@jiathis.com',25,'930-306-5273','2012-04-23'),(8,'Ives','Beausang',73,'Janata colony','Goa',174428,'ibeausang7@oracle.com',34,'157-187-1457','2017-09-18'),(9,'Deerdre','Camilio',53,'Lalsot marg','Gujarat',152657,'dcamilio8@marriott.com',50,'732-850-8582','2018-07-31'),(10,'Lise','Faill',49,'Baker street','Mumbai',206944,'lfaill9@stumbleupon.com',43,'362-801-1858','2014-10-17'),(11,'Tanhya','Tremblett',14,'Malviya nagar','Uttar Pradesh',161003,'ttrembletta@godaddy.com',26,'995-404-7715','2010-09-11'),(12,'Clo','Wilshire',74,'Baker street','Haryana',115332,'cwilshireb@blogs.com',34,'582-733-0210','2012-10-12'),(13,'Roddy','Moulin',22,'Cheelgadi road','Tamil Nadu',125865,'rmoulinc@reverbnation.com',43,'360-102-0409','2011-11-23'),(14,'Ellie','McGrowther',2,'Sanganer road','Uttar Pradesh',186193,'emcgrowtherd@squidoo.com',25,'135-173-4213','2018-06-16'),(15,'Lita','Twelve',69,'Srinivas nagar','Mumbai',185083,'ltwelvee@pcworld.com',40,'287-995-7713','2011-02-07'),(16,'Courtney','Prahl',51,'Cheelgadi road','Goa',121852,'cprahlf@sfgate.com',45,'373-677-0126','2016-04-14'),(17,'Coleen','Layfield',51,'Krishna colony','Himachal',110209,'clayfieldg@nih.gov',32,'900-161-5926','2011-09-30'),(18,'Gale','Ayshford',1,'Baker street','Himachal',197469,'gayshfordh@google.com.br',36,'804-245-4385','2011-08-02'),(19,'Coralyn','Hurdiss',66,'Malviya nagar','Himachal',133670,'churdissi@cbc.ca',41,'235-637-5091','2020-01-10'),(20,'Moll','Greenhead',85,'Mansarovar path','Himachal',139395,'mgreenheadj@intel.com',48,'563-217-1503','2019-09-23'),(21,'Dolly','Latham',83,'Srinivas nagar','Punjab',199303,'dlathamk@about.com',43,'789-275-0316','2015-01-31'),(22,'Andy','Lunck',52,'Malviya nagar','Tamil Nadu',156692,'alunckl@toplist.cz',24,'770-803-4374','2017-05-31'),(23,'Glennis','Diffley',95,'Janata colony','Himachal',154847,'gdiffleym@nih.gov',45,'430-151-2708','2013-05-23'),(24,'Corina','Cogley',8,'Srinivas nagar','Chennai',155255,'ccogleyn@github.io',30,'914-755-9783','2014-04-22'),(25,'Worthington','Stoggell',3,'Sanganer road','Tripura',209661,'wstoggello@addtoany.com',40,'395-809-7430','2018-11-15'),(26,'Ernst','Ortega',58,'Janata colony','Rajasthan',142353,'eortegap@sciencedirect.com',50,'622-785-1668','2011-07-28'),(27,'Bank','De Blasio',36,'Agra highway','Himachal',172360,'bdeblasioq@hc360.com',42,'595-224-2734','2012-02-25'),(28,'Debora','Duffrie',89,'Bapu nagar','Bangalore',193437,'dduffrier@baidu.com',43,'306-551-9526','2016-10-26'),(29,'Alessandro','Adriano',48,'Malviya nagar','Himachal',153666,'aadrianos@google.com.au',40,'808-759-5520','2010-11-10'),(30,'Cody','Eastway',76,'Jaipuria marg','Chennai',159432,'ceastwayt@aboutads.info',25,'930-801-3528','2012-04-25'),(31,'Deny','Salzberger',47,'Mansarovar path','Bangalore',179013,'dsalzbergeru@bloomberg.com',29,'400-325-9824','2014-11-28'),(32,'Florina','Bedding',21,'Srinivas nagar','West Bengal',161168,'fbeddingv@unblog.fr',35,'557-702-4515','2019-04-08'),(33,'Crawford','Overland',53,'Agra highway','Delhi',136107,'coverlandw@smh.com.au',25,'532-190-5726','2014-01-27'),(34,'Pepi','Janca',63,'Sanganer road','Mumbai',129162,'pjancax@networkadvertising.org',46,'591-680-3181','2017-02-16'),(35,'George','Packham',73,'Jaipuria marg','Gujarat',148795,'gpackhamy@bloglovin.com',34,'647-127-3390','2017-08-27'),(36,'Konstantine','Sawood',91,'Sanganer road','Chennai',174189,'ksawoodz@eventbrite.com',24,'394-435-2885','2016-03-09'),(37,'Marcello','Brunsden',89,'Baker street','Mumbai',187532,'mbrunsden10@businesswire.com',32,'245-153-5194','2019-02-22'),(38,'Wren','O\'Bradain',56,'Srinivas nagar','West Bengal',192342,'wobradain11@nature.com',25,'180-917-2437','2019-06-01'),(39,'Davine','Danks',83,'Mahal yojana','Bangalore',209760,'ddanks12@google.ca',40,'396-257-7147','2013-01-04'),(40,'Estelle','Charopen',50,'Jaipuria marg','Punjab',186514,'echaropen13@so-net.ne.jp',25,'138-607-1859','2019-10-29'),(41,'Cairistiona','Stancliffe',30,'Jawahar nagar','Bihar',153066,'cstancliffe14@biblegateway.com',29,'557-845-4519','2016-10-07'),(42,'Leigh','Buckthought',1,'Jaipuria marg','West Bengal',118002,'lbuckthought15@mashable.com',22,'731-932-8509','2017-12-26'),(43,'Ollie','Shilston',24,'Jaipuria marg','Jammu & Kashmir',150998,'oshilston16@pcworld.com',36,'376-786-5724','2018-02-14'),(44,'Bendite','Abbate',84,'Srinivas nagar','Delhi',125889,'babbate17@berkeley.edu',18,'838-491-1314','2018-10-01'),(45,'Cly','Wasson',77,'Bapu marg','Mumbai',198666,'cwasson18@bbb.org',22,'384-721-5271','2013-03-05'),(46,'Aubry','Gallamore',13,'NRI colony','West Bengal',206210,'agallamore19@elpais.com',50,'788-506-7719','2015-12-05'),(47,'Annice','Ullrich',54,'Bapu marg','Uttar Pradesh',114052,'aullrich1a@hhs.gov',33,'610-497-0972','2013-09-12'),(48,'Allayne','Royston',29,'Janata colony','Haryana',163530,'aroyston1b@yolasite.com',33,'512-964-4300','2017-05-05'),(49,'Sofia','Odeson',77,'Srinivas nagar','Chennai',136142,'sodeson1c@github.io',36,'733-308-3066','2010-01-22'),(50,'Rochell','Maroney',78,'NRI colony','Bangalore',126184,'rmaroney1d@barnesandnoble.com',39,'780-794-4221','2014-07-05');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `InsertPreventTrigger` BEFORE INSERT ON `employee` FOR EACH ROW BEGIN 
 IF(new.Age <18) THEN
 SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'You can not insert record';
END IF;
END */;;
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

-- Dump completed on 2022-04-27 21:54:16
