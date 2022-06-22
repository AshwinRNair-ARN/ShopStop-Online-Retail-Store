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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `P_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(17) NOT NULL,
  `Quantity` varchar(2) NOT NULL,
  `Price` varchar(5) NOT NULL,
  `C_Name` varchar(19) NOT NULL,
  PRIMARY KEY (`P_ID`),
  KEY `C_Name` (`C_Name`),
  KEY `on_price` (`Price`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`C_Name`) REFERENCES `category` (`C_Name`),
  CONSTRAINT `product_chk_1` CHECK ((`Quantity` >= 0)),
  CONSTRAINT `product_chk_2` CHECK ((`Price` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'T-Shirt','8','1569','Clothing'),(2,'Shirt','14','1694','Clothing'),(3,'Jeans','17','1797','Clothing'),(4,'Boxers','21','917','Clothing'),(5,'Sarees','15','1580','Clothing'),(6,'Suits','11','723','Clothing'),(7,'Hat','8','1101','Clothing'),(8,'Blazers','21','545','Clothing'),(9,'Jacket','14','592','Clothing'),(10,'SweatShirt','11','1576','Clothing'),(11,'Formals','12','526','Footwear'),(12,'Casuals','8','453','Footwear'),(13,'Sports','11','666','Footwear'),(14,'Skates','12','573','Footwear'),(15,'Sandals','21','473','Footwear'),(16,'Boots','17','579','Footwear'),(17,'Socks','12','628','Footwear'),(18,'Shoe Polish','18','461','Footwear'),(19,'Slippers','21','666','Footwear'),(20,'Heals','12','427','Footwear'),(21,'Rolex','19','454','Watches'),(22,'Gshock','10','464','Watches'),(23,'Casio','15','312','Watches'),(24,'Adidas','8','527','Watches'),(25,'Nike','15','612','Watches'),(26,'Titan','10','469','Watches'),(27,'Zoom','15','502','Watches'),(28,'Tommy Hilfger','19','1046','Watches'),(29,'Fossil','17','495','Watches'),(30,'Fastrack','17','357','Watches'),(31,'Kiwi','10','129','Fruits & Vegetables'),(32,'Apple','21','152','Fruits & Vegetables'),(33,'Banana','12','107','Fruits & Vegetables'),(34,'Tomato','18','189','Fruits & Vegetables'),(35,'Capsicum','21','141','Fruits & Vegetables'),(36,'Onion','6','105','Fruits & Vegetables'),(37,'Chili','6','179','Fruits & Vegetables'),(38,'Spinach','21','172','Fruits & Vegetables'),(39,'Olives','17','182','Fruits & Vegetables'),(40,'Cauliflower','17','177','Fruits & Vegetables'),(41,'Chips','6','80','Snacks'),(42,'Nuggets','18','104','Snacks'),(43,'Crackers','19','105','Snacks'),(44,'Chocolate','10','117','Snacks'),(45,'Cold Drinks','18','89','Snacks'),(46,'Burger','14','73','Snacks'),(47,'Pizza','8','130','Snacks'),(48,'Pasta','17','89','Snacks'),(49,'Buns','8','113','Snacks'),(50,'Lays','14','67','Snacks'),(51,'TV','11','3685','Electronics'),(52,'AC','17','3561','Electronics'),(53,'Camera','11','2965','Electronics'),(54,'Headphones','14','988','Electronics'),(55,'Earphones','17','3296','Electronics'),(56,'Speaker','10','1205','Electronics'),(57,'Home Studio','11','3710','Electronics'),(58,'Radio','10','2877','Electronics'),(59,'Refrigerator','12','2071','Electronics'),(60,'Washing Machine','17','3424','Electronics'),(61,'Laptop','17','16250','Mobiles & Computers'),(62,'Chromebook','15','10410','Mobiles & Computers'),(63,'Iphone','8','12206','Mobiles & Computers'),(64,'Vivobook','15','13440','Mobiles & Computers'),(65,'Ipod','11','10667','Mobiles & Computers'),(66,'Computer','15','14015','Mobiles & Computers'),(67,'OnePlus','19','24815','Mobiles & Computers'),(68,'MacBook','17','11794','Mobiles & Computers'),(69,'Samsung','8','15615','Mobiles & Computers'),(70,'Alienware','11','16920','Mobiles & Computers'),(71,'Guitar','21','6309','Musical Instruments'),(72,'Piano','21','15040','Musical Instruments'),(73,'Violin','15','11082','Musical Instruments'),(74,'Saxophone','21','15596','Musical Instruments'),(75,'Drum','19','9722','Musical Instruments'),(76,'Trumpet','11','14160','Musical Instruments'),(77,'Flute','11','10303','Musical Instruments'),(78,'Banjo','8','14639','Musical Instruments'),(79,'Cello','8','12912','Musical Instruments'),(80,'Harmonica','14','12326','Musical Instruments'),(81,'Food processor','19','737','Kitchen Appliances'),(82,'Microwave','21','926','Kitchen Appliances'),(83,'Dishwasher','15','520','Kitchen Appliances'),(84,'Hand blender','14','1386','Kitchen Appliances'),(85,'Pressure cooker','21','1434','Kitchen Appliances'),(86,'Mixer Grinder','11','318','Kitchen Appliances'),(87,'Electric Kettle','11','1488','Kitchen Appliances'),(88,'Rice cooker','10','1136','Kitchen Appliances'),(89,'Knife','12','1435','Kitchen Appliances'),(90,'Spoons','10','1429','Kitchen Appliances'),(91,'Chair','21','2397','Furniture'),(92,'Study Table','18','4316','Furniture'),(93,'Rocky Chair','8','2992','Furniture'),(94,'Bench','19','2002','Furniture'),(95,'Couch','11','4379','Furniture'),(96,'Recliner','21','1799','Furniture'),(97,'Sofa','8','3909','Furniture'),(98,'Book Shelf','12','2210','Furniture'),(99,'Dining Table','12','4482','Furniture'),(100,'Bed','8','4017','Furniture'),(101,'Self Growth','19','412','Books'),(102,'School','6','108','Books'),(103,'Engineering','8','139','Books'),(104,'Medical','19','209','Books'),(105,'CivilServices','17','471','Books'),(106,'Comics','18','182','Books'),(107,'Biography','10','352','Books'),(108,'Research Papers','19','313','Books'),(109,'Encyclopedia','19','320','Books'),(110,'Ebooks','10','213','Books'),(111,'PUBG','18','215','Gaming'),(112,'CSGO','14','847','Gaming'),(113,'Valorant','12','792','Gaming'),(114,'MineCraft','21','399','Gaming'),(115,'WatchDogs','15','784','Gaming'),(116,'Hitman','12','989','Gaming'),(117,'Assassin Creed','18','1693','Gaming'),(118,'Max Payne','19','835','Gaming'),(119,'GTA','8','502','Gaming'),(120,'COD','19','1177','Gaming'),(121,'Cream','18','1161','Cosmetics'),(122,'Hair Oil','21','665','Cosmetics'),(123,'Comb','14','1453','Cosmetics'),(124,'Lipstick','21','801','Cosmetics'),(125,'Shampoo','18','1435','Cosmetics'),(126,'Conditioner','14','1293','Cosmetics'),(127,'Bodywash','17','910','Cosmetics'),(128,'Facewash','8','1088','Cosmetics'),(129,'Eye Liner','10','935','Cosmetics'),(130,'Lip Gloss','19','1061','Cosmetics'),(131,'Bollywood','15','953','Movies'),(132,'Hollywood','15','301','Movies'),(133,'Retro Songs','10','528','Movies'),(134,'Comical','21','551','Movies'),(135,'Thriller','8','800','Movies'),(136,'Animated','15','406','Movies'),(137,'Tollywood','12','325','Movies'),(138,'Kid','19','704','Movies'),(139,'Drama','11','727','Movies'),(140,'Horror','17','631','Movies'),(141,'Collectibles','10','1287','Toys'),(142,'Cars','11','476','Toys'),(143,'Helicopter','21','1174','Toys'),(144,'Blasters','18','544','Toys'),(145,'Puzzles','14','912','Toys'),(146,'Ludo','21','1185','Toys'),(147,'Chess','12','1326','Toys'),(148,'DetectiveGame','12','1170','Toys'),(149,'Doll Set','15','1281','Toys'),(150,'Anime Characters','6','815','Toys'),(151,'Bread','18','244','Grocery'),(152,'Wheat','12','277','Grocery'),(153,'Rice','21','100','Grocery'),(154,'Maize','10','274','Grocery'),(155,'Sugar','18','241','Grocery'),(156,'Salt','12','109','Grocery'),(157,'Chilly Powder','11','199','Grocery'),(158,'Cardamon','11','153','Grocery'),(159,'Butter','6','248','Grocery'),(160,'Milk','17','143','Grocery'),(161,'Antibiotic','17','344','Medicines'),(162,'Antipyretic','17','264','Medicines'),(163,'Anti Inflammatory','19','395','Medicines'),(164,'AntiSeptic','21','275','Medicines'),(165,'Bandages','14','372','Medicines'),(166,'Band Aid','17','274','Medicines'),(167,'Dettol','18','167','Medicines'),(168,'Sanitizer','11','252','Medicines'),(169,'Calcium','14','101','Medicines'),(170,'Vitamins','21','113','Medicines'),(171,'Hand Bag','12','1835','Luggage'),(172,'Gym Bag','10','1912','Luggage'),(173,'School Bag','6','319','Luggage'),(174,'Casual bag','8','408','Luggage'),(175,'Laptop Bag','15','506','Luggage'),(176,'Messenger Bag','21','1096','Luggage'),(177,'Sling Bag','21','594','Luggage'),(178,'Suitcase','14','869','Luggage'),(179,'Purse','17','1399','Luggage'),(180,'Trolley','6','1597','Luggage'),(181,'Bat','10','950','Sports & Fitness'),(182,'Racket','17','936','Sports & Fitness'),(183,'Shuttle','15','595','Sports & Fitness'),(184,'Ball','10','773','Sports & Fitness'),(185,'Stumps','21','988','Sports & Fitness'),(186,'Gloves','19','625','Sports & Fitness'),(187,'Pads','18','945','Sports & Fitness'),(188,'Helmet','18','649','Sports & Fitness'),(189,'Weighted Pins','15','658','Sports & Fitness'),(190,'Bails','17','792','Sports & Fitness'),(191,'Chandelier','10','1608','Home Decor'),(192,'Carpets','8','1293','Home Decor'),(193,'Vase','12','1768','Home Decor'),(194,'Curtains','21','1454','Home Decor'),(195,'Clock','21','1998','Home Decor'),(196,'Wallpaper','14','1290','Home Decor'),(197,'Lights','14','1329','Home Decor'),(198,'Paintings','10','1975','Home Decor'),(199,'Mirrors','10','1465','Home Decor'),(200,'Wall Hangings','6','1537','Home Decor');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
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
