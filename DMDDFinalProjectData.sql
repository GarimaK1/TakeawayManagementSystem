CREATE DATABASE  IF NOT EXISTS `dmdd_project_garima` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dmdd_project_garima`;
-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: dmdd_project_garima
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'9858747895'),(2,NULL),(3,'5487965894'),(4,NULL),(5,NULL),(6,NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `customer_orders`
--

LOCK TABLES `customer_orders` WRITE;
/*!40000 ALTER TABLE `customer_orders` DISABLE KEYS */;
INSERT INTO `customer_orders` VALUES (2,3,'average'),(1,1,'good'),(4,5,'poor'),(3,2,'recommend');
/*!40000 ALTER TABLE `customer_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `employee_personal`
--

LOCK TABLES `employee_personal` WRITE;
/*!40000 ALTER TABLE `employee_personal` DISABLE KEYS */;
INSERT INTO `employee_personal` VALUES (100,'Katie','Smith','8574125036','123@gmail.com','MA12345','40, Main Road',NULL,'Townsville','State12','123456','USA'),(101,'Jenny','Jones','5748967875','jones@gmail.com','MA14876','22, Winding Road',NULL,'Big Town','State45','547857','USA'),(102,'Daisy','Moore','8527414569','Daisy@hotmail.com','TX25478','77, abc road','Apt 6','Small Village','State36','895748','USA'),(200,'Bob','Robson','8574126987','456@gmail.com','CA24578','12, Little Street',NULL,'Big City','Small State','254879','USA'),(300,'Sandra','Jakes','9875879654','sandra@her_mail.com','TX45874','25, Village Main',NULL,'Windy Village','Golden State','254785','USA'),(301,'John','Jones','8745896857','jj@jonesmail.org','MA15568','32, Main Road',NULL,'Townsville','Distant State','245875','USA'),(400,'Steve','Gee','2547898547','steve@gee.com','CA36598','45, Happy Lane',NULL,'Big Apple City','New State','478578','USA'),(401,'Nick','White','5787458796','white@house.com','NJ54875','3, Tiny Terrace','Apt 8','Big City','Small State','874589','USA');
/*!40000 ALTER TABLE `employee_personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `employee_professional`
--

LOCK TABLES `employee_professional` WRITE;
/*!40000 ALTER TABLE `employee_professional` DISABLE KEYS */;
INSERT INTO `employee_professional` VALUES (100,'2018-02-16',1000,'Cook'),(101,'2016-04-23',1000,'Cook'),(102,'2016-05-30',1000,'Cook'),(200,'2015-05-22',3700,'Manager'),(300,'2016-08-04',700,'Server'),(301,'2017-06-29',700,'Server'),(400,'2017-06-24',1000,'Cashier'),(401,'2016-12-03',1000,'Cashier');
/*!40000 ALTER TABLE `employee_professional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ingred_supplies`
--

LOCK TABLES `ingred_supplies` WRITE;
/*!40000 ALTER TABLE `ingred_supplies` DISABLE KEYS */;
INSERT INTO `ingred_supplies` VALUES (1,1,18,100),(1,2,20,100),(2,1,4,5);
/*!40000 ALTER TABLE `ingred_supplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES (1,'peas',100,150,20,'boxes'),(2,'lemons',10,8,10,'pounds'),(3,'veg patty',300,350,10,'pieces'),(4,'ketchup',500,550,10,'sachets');
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `manager_alert` BEFORE UPDATE ON `ingredients` FOR EACH ROW begin
     if NEW.current_inventory_level<OLD.ingred_threshold then
		insert into manager_action_table (from_table, alert_comment) values ('ingredients','quantity below threshold levels. Please check.');
	 end if;
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping data for table `kitchen_copy`
--

LOCK TABLES `kitchen_copy` WRITE;
/*!40000 ALTER TABLE `kitchen_copy` DISABLE KEYS */;
INSERT INTO `kitchen_copy` VALUES (3,5,1,'Initial');
/*!40000 ALTER TABLE `kitchen_copy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `manager_action_table`
--

LOCK TABLES `manager_action_table` WRITE;
/*!40000 ALTER TABLE `manager_action_table` DISABLE KEYS */;
INSERT INTO `manager_action_table` VALUES (1,'ingredients','quantity below threshold levels. Please check.');
/*!40000 ALTER TABLE `manager_action_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `menu_category`
--

LOCK TABLES `menu_category` WRITE;
/*!40000 ALTER TABLE `menu_category` DISABLE KEYS */;
INSERT INTO `menu_category` VALUES (1,'burgers'),(2,'fries'),(3,'sides'),(4,'beverages'),(5,'dessert');
/*!40000 ALTER TABLE `menu_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `menu_ingred`
--

LOCK TABLES `menu_ingred` WRITE;
/*!40000 ALTER TABLE `menu_ingred` DISABLE KEYS */;
INSERT INTO `menu_ingred` VALUES (1,1,1),(1,3,1),(1,4,1),(2,1,1),(2,2,2),(2,4,1);
/*!40000 ALTER TABLE `menu_ingred` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `menu_item`
--

LOCK TABLES `menu_item` WRITE;
/*!40000 ALTER TABLE `menu_item` DISABLE KEYS */;
INSERT INTO `menu_item` VALUES (1,'veg burger','totally veg',4,1),(2,'chicken burger','contains non vegetarian elements',6,1),(3,'fries','totally veg',4,2),(4,'garlic bread','vegatarian',3,3),(5,'cheese sticks','mozzarella filling',6,3),(6,'cocacola','beverage',2,4),(7,'pastry','lots of calories!',5,5);
/*!40000 ALTER TABLE `menu_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `order_menu`
--

LOCK TABLES `order_menu` WRITE;
/*!40000 ALTER TABLE `order_menu` DISABLE KEYS */;
INSERT INTO `order_menu` VALUES (1,1,1),(1,2,1),(1,6,2),(2,3,2),(2,4,1),(2,6,2),(3,5,1);
/*!40000 ALTER TABLE `order_menu` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `popolate_kitchen_copy` AFTER INSERT ON `order_menu` FOR EACH ROW begin
     insert into kitchen_copy (order_id, menu_id, quantity) values (NEW.order_id, NEW.menu_id, NEW.quantity);
	end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,400,105,'2018-12-13 06:48:00','2018-12-13 07:18:00.00'),(2,400,102,'2018-12-13 05:48:00','2018-12-13 06:18:00.00'),(3,401,100,'2018-12-13 05:48:00','2018-12-13 06:18:00.00'),(4,400,4,'2018-12-13 05:48:00','2018-12-13 06:18:00.00'),(5,400,101,'2018-12-13 05:48:00','2018-12-13 06:18:00.00'),(6,400,103,'2018-12-13 05:59:00','2018-12-13 06:29:00.00'),(7,400,104,'2018-12-13 05:59:00','2018-12-13 06:29:00.00'),(8,401,106,'2018-12-13 09:13:56','2018-12-13 09:43:56.00');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `invoice_id_generator` BEFORE INSERT ON `orders` FOR EACH ROW begin
     set new.invoice_number=(select max(invoice_number) + 1 from orders);
	end */;;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `out_time_generator` BEFORE INSERT ON `orders` FOR EACH ROW begin
     set new.expected_out_time=(select adddate(NEW.in_time, interval 30 minute));
	end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES ('average'),('good'),('poor'),('recommend');
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES ('Complete'),('Delivered'),('In progress'),('Initial');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `supplier_list`
--

LOCK TABLES `supplier_list` WRITE;
/*!40000 ALTER TABLE `supplier_list` DISABLE KEYS */;
INSERT INTO `supplier_list` VALUES (1,'Bright Brothers','bright@gmail.com','2587459865','09, Kite Lane',NULL,'Boston','MA','245875','USA'),(2,'Spice Kings','king@hotmail.com','9874563248','34, Lengthy Lane','Apt 6','Malden','MA','658749','USA');
/*!40000 ALTER TABLE `supplier_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dmdd_project_garima'
--

--
-- Dumping routines for database 'dmdd_project_garima'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-13  9:59:45
