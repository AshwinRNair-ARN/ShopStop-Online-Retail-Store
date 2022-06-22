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
-- Temporary view structure for view `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!50001 DROP VIEW IF EXISTS `user_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_details` AS SELECT 
 1 AS `U_ID`,
 1 AS `FirstName`,
 1 AS `LastName`,
 1 AS `Email`,
 1 AS `ContactNo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `pendingdelivery`
--

DROP TABLE IF EXISTS `pendingdelivery`;
/*!50001 DROP VIEW IF EXISTS `pendingdelivery`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pendingdelivery` AS SELECT 
 1 AS `D_ID`,
 1 AS `O_ID`,
 1 AS `DStatus`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `order_history`
--

DROP TABLE IF EXISTS `order_history`;
/*!50001 DROP VIEW IF EXISTS `order_history`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_history` AS SELECT 
 1 AS `U_ID`,
 1 AS `O_ID`,
 1 AS `PurchaseDate`,
 1 AS `Net_Amount`,
 1 AS `DStatus`,
 1 AS `DeliveryAgent`,
 1 AS `ContactNo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `employee_details`
--

DROP TABLE IF EXISTS `employee_details`;
/*!50001 DROP VIEW IF EXISTS `employee_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employee_details` AS SELECT 
 1 AS `E_ID`,
 1 AS `FirstName`,
 1 AS `LastName`,
 1 AS `Email`,
 1 AS `ContactNo`,
 1 AS `DateofJoining`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `still_active`
--

DROP TABLE IF EXISTS `still_active`;
/*!50001 DROP VIEW IF EXISTS `still_active`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `still_active` AS SELECT 
 1 AS `U_ID`,
 1 AS `S_ID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `deliveryagentdetails`
--

DROP TABLE IF EXISTS `deliveryagentdetails`;
/*!50001 DROP VIEW IF EXISTS `deliveryagentdetails`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `deliveryagentdetails` AS SELECT 
 1 AS `D_ID`,
 1 AS `FirstName`,
 1 AS `LastName`,
 1 AS `Email`,
 1 AS `ContactNo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `previousdelivery`
--

DROP TABLE IF EXISTS `previousdelivery`;
/*!50001 DROP VIEW IF EXISTS `previousdelivery`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `previousdelivery` AS SELECT 
 1 AS `D_ID`,
 1 AS `O_ID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_manager`
--

DROP TABLE IF EXISTS `view_manager`;
/*!50001 DROP VIEW IF EXISTS `view_manager`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_manager` AS SELECT 
 1 AS `E_ID`,
 1 AS `C_Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `subscription_history`
--

DROP TABLE IF EXISTS `subscription_history`;
/*!50001 DROP VIEW IF EXISTS `subscription_history`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `subscription_history` AS SELECT 
 1 AS `PurchaseDate`,
 1 AS `U_ID`,
 1 AS `S_ID`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `user_details`
--

/*!50001 DROP VIEW IF EXISTS `user_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_details` AS select `users`.`U_ID` AS `U_ID`,`users`.`FirstName` AS `FirstName`,`users`.`LastName` AS `LastName`,`users`.`Email` AS `Email`,`users`.`ContactNo` AS `ContactNo` from `users` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pendingdelivery`
--

/*!50001 DROP VIEW IF EXISTS `pendingdelivery`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pendingdelivery` AS select `delivers`.`D_ID` AS `D_ID`,`delivers`.`O_ID` AS `O_ID`,`delivers`.`DStatus` AS `DStatus` from `delivers` where (`delivers`.`DStatus` = 'NO') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `order_history`
--

/*!50001 DROP VIEW IF EXISTS `order_history`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_history` AS select `orders`.`U_ID` AS `U_ID`,`orders`.`O_ID` AS `O_ID`,`orders`.`PurchaseDate` AS `PurchaseDate`,`orders`.`Net_Amount` AS `Net_Amount`,`delivers`.`DStatus` AS `DStatus`,`delivery_agent`.`FirstName` AS `DeliveryAgent`,`delivery_agent`.`ContactNo` AS `ContactNo` from ((`orders` join `delivers` on((`orders`.`O_ID` = `delivers`.`O_ID`))) join `delivery_agent` on((`delivers`.`D_ID` = `delivery_agent`.`D_ID`))) order by `orders`.`U_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employee_details`
--

/*!50001 DROP VIEW IF EXISTS `employee_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employee_details` AS select `employee`.`E_ID` AS `E_ID`,`employee`.`FirstName` AS `FirstName`,`employee`.`LastName` AS `LastName`,`employee`.`Email` AS `Email`,`employee`.`ContactNo` AS `ContactNo`,`employee`.`DateofJoining` AS `DateofJoining` from `employee` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `still_active`
--

/*!50001 DROP VIEW IF EXISTS `still_active`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `still_active` AS select `has`.`U_ID` AS `U_ID`,`has`.`S_ID` AS `S_ID` from (`has` join `subscription` on((`has`.`S_ID` = `subscription`.`S_ID`))) where ((`has`.`PurchaseDate` + interval substr(`subscription`.`Duration`,1,2) month) > curdate()) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `deliveryagentdetails`
--

/*!50001 DROP VIEW IF EXISTS `deliveryagentdetails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `deliveryagentdetails` AS select `delivery_agent`.`D_ID` AS `D_ID`,`delivery_agent`.`FirstName` AS `FirstName`,`delivery_agent`.`LastName` AS `LastName`,`delivery_agent`.`Email` AS `Email`,`delivery_agent`.`ContactNo` AS `ContactNo` from `delivery_agent` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `previousdelivery`
--

/*!50001 DROP VIEW IF EXISTS `previousdelivery`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `previousdelivery` AS select `delivers`.`D_ID` AS `D_ID`,`delivers`.`O_ID` AS `O_ID` from `delivers` where (`delivers`.`DStatus` = 'YES') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_manager`
--

/*!50001 DROP VIEW IF EXISTS `view_manager`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_manager` AS select `manages`.`E_ID` AS `E_ID`,`manages`.`C_Name` AS `C_Name` from `manages` where `manages`.`DateofAppointment` in (select max(`manages`.`DateofAppointment`) from `manages` group by `manages`.`C_Name`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `subscription_history`
--

/*!50001 DROP VIEW IF EXISTS `subscription_history`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `subscription_history` AS select `has`.`PurchaseDate` AS `PurchaseDate`,`has`.`U_ID` AS `U_ID`,`has`.`S_ID` AS `S_ID` from `has` order by `has`.`U_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'project65'
--

--
-- Dumping routines for database 'project65'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-27 21:54:18
