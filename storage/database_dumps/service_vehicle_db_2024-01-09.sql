-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: service_vehicle_db
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `sv_catalog_items`
--

DROP TABLE IF EXISTS `sv_catalog_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sv_catalog_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `price` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sv_catalog_items`
--

LOCK TABLES `sv_catalog_items` WRITE;
/*!40000 ALTER TABLE `sv_catalog_items` DISABLE KEYS */;
INSERT INTO `sv_catalog_items` VALUES (1,'Goodyear winter tires',100,200),(2,'Goodyear summer tires',100,195),(3,'Linglongs winter tires',20,50),(4,'Linglongs summer tires',20,40),(5,'Lightbulbs(Halogen)',200,8),(6,'Lightbulbs(LED)',100,15),(7,'Lightbulbs(Xenon)',50,25),(8,'First aid kit',500,30),(9,'Car tire iron',100,5),(10,'Car jack 2 Tonne',100,50),(11,'Service tool set',200,45),(12,'Brake caliper',100,90),(13,'Brake pads(pair)',500,15),(14,'Motor oil(Synthetic)',600,20),(15,'Motor oil(Synthetic-blend)',600,22),(16,'Motor oil(High mileage)',600,30),(17,'Motor oil(Common)',600,25),(18,'Brake disc',100,150),(19,'Heat shrink tube set',100,20),(20,'Vehicle jack stands 4 Tonne',50,80),(21,'Steering wheel cover',100,25),(22,'Seat cover',200,35),(23,'Floor mats',300,45),(24,'Antifreeze 1l',200,10),(25,'Ice scrapper',200,12),(26,'High polish compound 0.3l',100,15),(27,'Wax for paint protection',100,20),(28,'Paint spray gun',50,75),(29,'High visibility vest',200,5),(30,'High visibility safety road triangle',200,15),(31,'Turbo & intercooler set',10,1500),(32,'Car stickers(random)',300,4),(33,'Car scent(random)',500,1),(34,'Car battery 12V',300,100);
/*!40000 ALTER TABLE `sv_catalog_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sv_catalog_items_service_types`
--

DROP TABLE IF EXISTS `sv_catalog_items_service_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sv_catalog_items_service_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_id` int NOT NULL,
  `service_type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sv_catalog_items_item` (`item_id`),
  KEY `fk_sv_catalog_items_service_type` (`service_type_id`),
  CONSTRAINT `sv_catalog_items_service_types_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `sv_catalog_items` (`id`),
  CONSTRAINT `sv_catalog_items_service_types_ibfk_2` FOREIGN KEY (`service_type_id`) REFERENCES `sv_service_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sv_catalog_items_service_types`
--

LOCK TABLES `sv_catalog_items_service_types` WRITE;
/*!40000 ALTER TABLE `sv_catalog_items_service_types` DISABLE KEYS */;
INSERT INTO `sv_catalog_items_service_types` VALUES (1,26,1),(2,27,1),(3,28,1),(4,32,1),(8,11,2),(9,19,2),(11,5,5),(12,6,5),(13,7,5),(14,11,5),(15,19,5),(18,10,6),(19,11,6),(20,20,6),(21,31,6),(25,9,7),(26,10,7),(27,11,7),(28,12,7),(29,13,7),(30,18,7),(31,20,7),(32,11,8),(33,14,8),(34,15,8),(35,16,8),(36,17,8),(39,1,9),(40,2,9),(41,3,9),(42,4,9),(43,9,9),(44,10,9),(45,11,9),(46,20,9),(54,34,10);
/*!40000 ALTER TABLE `sv_catalog_items_service_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sv_catalogs`
--

DROP TABLE IF EXISTS `sv_catalogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sv_catalogs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `active_date` date NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` smallint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sv_catalogs`
--

LOCK TABLES `sv_catalogs` WRITE;
/*!40000 ALTER TABLE `sv_catalogs` DISABLE KEYS */;
INSERT INTO `sv_catalogs` VALUES (1,'2023-03-01','2023 Spring catalog Mar/Apr/May',0),(2,'2023-06-01','2023 Summer catalog Jun/Jul/Aug',0),(3,'2023-09-01','2023 Fall catalog Sep/Oct/Nov',0),(4,'2023-12-01','2023 Winter catalog Dec/Jan/Feb',1),(5,'2024-03-01','2024 Spring catalog Mar/Apr/May',0);
/*!40000 ALTER TABLE `sv_catalogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sv_catalogs_catalog_items`
--

DROP TABLE IF EXISTS `sv_catalogs_catalog_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sv_catalogs_catalog_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `catalog_id` int NOT NULL,
  `item_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sv_catalogs_catalog` (`catalog_id`),
  KEY `fk_sv_catalogs_item` (`item_id`),
  CONSTRAINT `sv_catalogs_catalog_items_ibfk_1` FOREIGN KEY (`catalog_id`) REFERENCES `sv_catalogs` (`id`),
  CONSTRAINT `sv_catalogs_catalog_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `sv_catalog_items` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sv_catalogs_catalog_items`
--

LOCK TABLES `sv_catalogs_catalog_items` WRITE;
/*!40000 ALTER TABLE `sv_catalogs_catalog_items` DISABLE KEYS */;
INSERT INTO `sv_catalogs_catalog_items` VALUES (1,1,2),(2,1,4),(3,1,5),(4,1,6),(5,1,7),(6,1,8),(7,1,9),(8,1,10),(9,1,11),(10,1,12),(11,1,13),(12,1,14),(13,1,15),(14,1,16),(15,1,17),(16,1,18),(17,1,19),(18,1,20),(19,1,21),(20,1,22),(21,1,23),(22,1,26),(23,1,27),(24,1,28),(25,1,29),(26,1,30),(27,1,31),(28,1,32),(29,1,33),(32,2,2),(33,2,4),(34,2,5),(35,2,6),(36,2,7),(37,2,8),(38,2,9),(39,2,10),(40,2,11),(41,2,12),(42,2,13),(43,2,14),(44,2,15),(45,2,16),(46,2,17),(47,2,18),(48,2,19),(49,2,20),(50,2,21),(51,2,22),(52,2,23),(53,2,26),(54,2,27),(55,2,28),(56,2,29),(57,2,30),(58,2,31),(59,2,32),(60,2,33),(63,3,1),(64,3,3),(65,3,5),(66,3,6),(67,3,7),(68,3,8),(69,3,9),(70,3,10),(71,3,11),(72,3,12),(73,3,13),(74,3,14),(75,3,15),(76,3,16),(77,3,17),(78,3,18),(79,3,19),(80,3,20),(81,3,21),(82,3,22),(83,3,23),(84,3,26),(85,3,27),(86,3,28),(87,3,29),(88,3,30),(89,3,31),(90,3,32),(91,3,33),(94,4,1),(95,4,3),(96,4,5),(97,4,6),(98,4,7),(99,4,8),(100,4,9),(101,4,10),(102,4,11),(103,4,12),(104,4,13),(105,4,14),(106,4,15),(107,4,16),(108,4,17),(109,4,18),(110,4,19),(111,4,20),(112,4,21),(113,4,22),(114,4,23),(115,4,24),(116,4,25),(117,4,26),(118,4,27),(119,4,28),(120,4,29),(121,4,30),(122,4,31),(123,4,32),(124,4,33),(125,5,2),(126,5,4),(127,5,5),(128,5,6),(129,5,7),(130,5,8),(131,5,9),(132,5,10),(133,5,11),(134,5,12),(135,5,13),(136,5,14),(137,5,15),(138,5,16),(139,5,17),(140,5,18),(141,5,19),(142,5,20),(143,5,21),(144,5,22),(145,5,23),(146,5,26),(147,5,27),(148,5,28),(149,5,29),(150,5,30),(151,5,31),(152,5,32),(153,5,33),(156,1,34),(157,2,34),(158,3,34),(159,4,34),(160,5,34);
/*!40000 ALTER TABLE `sv_catalogs_catalog_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sv_cities`
--

DROP TABLE IF EXISTS `sv_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sv_cities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `country_id` int DEFAULT NULL,
  `founded` date DEFAULT NULL,
  `flag_id` int DEFAULT NULL,
  `shield_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fk_sv_cities_country` (`country_id`),
  KEY `fk_sv_cities_flag` (`flag_id`),
  KEY `fk_sv_cities_shield` (`shield_id`),
  CONSTRAINT `sv_cities_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `sv_countries` (`id`),
  CONSTRAINT `sv_cities_ibfk_2` FOREIGN KEY (`flag_id`) REFERENCES `sv_thumbnails` (`id`),
  CONSTRAINT `sv_cities_ibfk_3` FOREIGN KEY (`shield_id`) REFERENCES `sv_thumbnails` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sv_cities`
--

LOCK TABLES `sv_cities` WRITE;
/*!40000 ALTER TABLE `sv_cities` DISABLE KEYS */;
INSERT INTO `sv_cities` VALUES (1,'Sarajevo',1,NULL,NULL,NULL),(2,'Mostar',1,NULL,NULL,NULL),(3,'Tuzla',1,NULL,NULL,NULL),(4,'Banja Luka',1,NULL,NULL,NULL),(5,'Bihać',1,NULL,NULL,NULL),(6,'Bijeljina',1,NULL,NULL,NULL),(7,'Bosanska Krupa',1,NULL,NULL,NULL),(8,'Cazin',1,NULL,NULL,NULL),(9,'Čapljina',1,NULL,NULL,NULL),(10,'Derventa',1,NULL,NULL,NULL),(11,'Doboj',1,NULL,NULL,NULL),(12,'Goražde',1,NULL,NULL,NULL),(13,'Gračanica',1,NULL,NULL,NULL),(14,'Gradačac',1,NULL,NULL,NULL),(15,'Gradiška',1,NULL,NULL,NULL),(16,'Konjic',1,NULL,NULL,NULL),(17,'Laktaši',1,NULL,NULL,NULL),(18,'Livno',1,NULL,NULL,NULL),(19,'Lukavac',1,NULL,NULL,NULL),(20,'Ljubuški',1,NULL,NULL,NULL),(21,'Orašje',1,NULL,NULL,NULL),(22,'Prijedor',1,NULL,NULL,NULL),(23,'Srebrenik',1,NULL,NULL,NULL),(24,'Stolac',1,NULL,NULL,NULL),(25,'Široki Brijeg',1,NULL,NULL,NULL),(26,'Trebinje',1,NULL,NULL,NULL),(27,'Visoko',1,NULL,NULL,NULL),(28,'Zavidovići',1,NULL,NULL,NULL),(29,'Zenica',1,NULL,NULL,NULL),(30,'Zvornik',1,NULL,NULL,NULL),(31,'Živinice',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sv_cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sv_colors`
--

DROP TABLE IF EXISTS `sv_colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sv_colors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sv_colors`
--

LOCK TABLES `sv_colors` WRITE;
/*!40000 ALTER TABLE `sv_colors` DISABLE KEYS */;
INSERT INTO `sv_colors` VALUES (1,'black'),(6,'blue'),(7,'brown'),(4,'green'),(11,'grey'),(8,'orange'),(9,'pink'),(10,'purple'),(3,'red'),(2,'white'),(5,'yellow');
/*!40000 ALTER TABLE `sv_colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sv_countries`
--

DROP TABLE IF EXISTS `sv_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sv_countries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `capital_city_id` int NOT NULL,
  `founded` date NOT NULL,
  `flag_id` int DEFAULT NULL,
  `shield_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fk_sv_countries_capital_city` (`capital_city_id`),
  KEY `fk_sv_countries_flag` (`flag_id`),
  KEY `fk_sv_countries_shield` (`shield_id`),
  CONSTRAINT `sv_countries_ibfk_1` FOREIGN KEY (`capital_city_id`) REFERENCES `sv_cities` (`id`),
  CONSTRAINT `sv_countries_ibfk_2` FOREIGN KEY (`flag_id`) REFERENCES `sv_thumbnails` (`id`),
  CONSTRAINT `sv_countries_ibfk_3` FOREIGN KEY (`shield_id`) REFERENCES `sv_thumbnails` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sv_countries`
--

LOCK TABLES `sv_countries` WRITE;
/*!40000 ALTER TABLE `sv_countries` DISABLE KEYS */;
INSERT INTO `sv_countries` VALUES (1,'Bosnia and Herzegovina',1,'1995-12-14',NULL,NULL);
/*!40000 ALTER TABLE `sv_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sv_employees`
--

DROP TABLE IF EXISTS `sv_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sv_employees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `maiden_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(45) NOT NULL,
  `date_of_birth` date NOT NULL,
  `social_security_number` int NOT NULL,
  `gender` tinyint DEFAULT NULL,
  `profile_thumbnail_id` int DEFAULT NULL,
  `country_of_birth_id` int DEFAULT NULL,
  `country_of_origin_id` int DEFAULT NULL,
  `address` varchar(90) NOT NULL,
  `city_id` int NOT NULL,
  `country_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sv_employees_profile_thumbnail` (`profile_thumbnail_id`),
  KEY `fk_sv_employees_country_of_birth` (`country_of_birth_id`),
  KEY `fk_sv_employees_country_of_origin` (`country_of_origin_id`),
  KEY `fk_sv_employees_city` (`city_id`),
  KEY `fk_sv_employees_country` (`country_id`),
  CONSTRAINT `sv_employees_ibfk_1` FOREIGN KEY (`profile_thumbnail_id`) REFERENCES `sv_thumbnails` (`id`),
  CONSTRAINT `sv_employees_ibfk_2` FOREIGN KEY (`country_of_birth_id`) REFERENCES `sv_countries` (`id`),
  CONSTRAINT `sv_employees_ibfk_3` FOREIGN KEY (`country_of_origin_id`) REFERENCES `sv_countries` (`id`),
  CONSTRAINT `sv_employees_ibfk_5` FOREIGN KEY (`city_id`) REFERENCES `sv_cities` (`id`),
  CONSTRAINT `sv_employees_ibfk_6` FOREIGN KEY (`country_id`) REFERENCES `sv_countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sv_employees`
--

LOCK TABLES `sv_employees` WRITE;
/*!40000 ALTER TABLE `sv_employees` DISABLE KEYS */;
INSERT INTO `sv_employees` VALUES (1,'Jose','Ward','Patton','1968-11-10',19681110,1,NULL,1,1,'Zmaj od Bosne 37',1,1),(2,'Helen','Tonkin','Thompson','1982-04-05',19820405,0,NULL,1,1,'Aleja Lipa 20',1,1),(3,'Rick','-','Paulo','1988-10-02',19881002,1,NULL,1,1,'Behdzeta Mutevelica 66',1,1),(4,'Evan','Henderson','Church','1991-03-04',19910403,1,NULL,1,1,'Krupska 70',1,1),(5,'Rolando','-','Benson','1989-04-16',19890416,1,NULL,1,1,'Safeta Hadzica 4',1,1),(6,'Victoria','Sheets','Faulkner','1998-03-17',19980317,0,NULL,1,1,'Dzemala Bijedica St 50',1,1),(7,'Jill','Keller','Smith','1998-06-01',19980601,0,NULL,1,1,'Aleja Lipa 25',1,1),(8,'Rondal','-','Skipworth','1998-12-11',19981211,1,NULL,1,1,'Krupska 77',1,1);
/*!40000 ALTER TABLE `sv_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sv_employment`
--

DROP TABLE IF EXISTS `sv_employment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sv_employment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `contract_number` varchar(15) NOT NULL,
  `agreed_salary` decimal(10,0) NOT NULL,
  `status` int NOT NULL,
  `position_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sv_employment_employee` (`employee_id`),
  KEY `fk_sv_employment_position` (`position_id`),
  CONSTRAINT `sv_employment_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `sv_employees` (`id`),
  CONSTRAINT `sv_employment_ibfk_2` FOREIGN KEY (`position_id`) REFERENCES `sv_employment_positions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sv_employment`
--

LOCK TABLES `sv_employment` WRITE;
/*!40000 ALTER TABLE `sv_employment` DISABLE KEYS */;
INSERT INTO `sv_employment` VALUES (7,3,'2022-01-01',NULL,'1-561-B',4000,1,1),(8,2,'2022-01-10',NULL,'1-570-B',3000,1,2),(9,1,'2022-01-12',NULL,'1-572-B',2200,1,3),(10,4,'2022-01-20',NULL,'1-580-B',2000,1,5),(11,5,'2022-02-25',NULL,'2-585-B',1900,1,5),(12,6,'2022-02-27',NULL,'2-590-B',1800,1,4),(13,7,'2022-01-03',NULL,'1-563-B',1500,1,10),(14,8,'2022-01-05',NULL,'1-565-B',1500,1,10);
/*!40000 ALTER TABLE `sv_employment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sv_employment_positions`
--

DROP TABLE IF EXISTS `sv_employment_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sv_employment_positions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `position` varchar(45) NOT NULL,
  `title` varchar(30) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sv_employment_positions`
--

LOCK TABLES `sv_employment_positions` WRITE;
/*!40000 ALTER TABLE `sv_employment_positions` DISABLE KEYS */;
INSERT INTO `sv_employment_positions` VALUES (1,'Chief Executive Officer','CEO','Head of the companies executive orders'),(2,'Chief Operating Officer','COO','Head of the companies operating orders'),(3,'Shift Manager','SM','Manager for companies shifts'),(4,'Human Resources','HR','Manager for companies human interactions'),(5,'General Mechanic','GENM','Jack of all trades type mechanic'),(6,'Electronics Mechanic','ELEM','Mechanic specialized in electronics'),(7,'Engine Mechanic','ENGM','Mechanic specialized in engine'),(8,'Body Mechanic','BODM','Mechanic specialized in body corrections and tune ups'),(9,'Paint Mechanic','PAIM','Mechanic specialized in paint jobs'),(10,'Front desk','FD','Employee that works and handles incoming requests');
/*!40000 ALTER TABLE `sv_employment_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sv_log`
--

DROP TABLE IF EXISTS `sv_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sv_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  `user` varchar(288) DEFAULT NULL,
  `sql_query` text,
  `old_data` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sv_log`
--

LOCK TABLES `sv_log` WRITE;
/*!40000 ALTER TABLE `sv_log` DISABLE KEYS */;
INSERT INTO `sv_log` VALUES (1,'2024-01-08 17:38:01','root@localhost','/* ApplicationName=DataGrip 2023.2.2 */ UPDATE service_vehicle_db.sv_work_sheets t SET t.service_type_id = 7 WHERE t.id = 18','[{\"id\": 18, \"price\": 10, \"value\": null, \"number\": 3, \"discount\": 0.00, \"quantity\": 1, \"employee_id\": 5, \"hours_spent\": 1, \"employee_states\": \"test\", \"service_type_id\": 8, \"service_sheet_id\": 12}]'),(2,'2024-01-08 17:40:13','root@localhost','/* ApplicationName=DataGrip 2023.2.2 */ UPDATE service_vehicle_db.sv_work_sheets t SET t.service_type_id = 6 WHERE t.id = 18','[{\"id\": 18, \"price\": 10, \"value\": null, \"number\": 3, \"discount\": 0.00, \"quantity\": 1, \"employee_id\": 5, \"hours_spent\": 1, \"employee_states\": \"test\", \"service_type_id\": 7, \"service_sheet_id\": 12}]');
/*!40000 ALTER TABLE `sv_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sv_measurement_units`
--

DROP TABLE IF EXISTS `sv_measurement_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sv_measurement_units` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sv_measurement_units`
--

LOCK TABLES `sv_measurement_units` WRITE;
/*!40000 ALTER TABLE `sv_measurement_units` DISABLE KEYS */;
INSERT INTO `sv_measurement_units` VALUES (1,'Meter'),(2,'Kilogram'),(3,'Lumen'),(4,'Horsepower'),(5,'Bar'),(6,'Decibel'),(7,'Voltage'),(8,'Liter'),(9,'Seconds');
/*!40000 ALTER TABLE `sv_measurement_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sv_service_items`
--

DROP TABLE IF EXISTS `sv_service_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sv_service_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(16) NOT NULL,
  `name` varchar(30) NOT NULL,
  `unit_of_measurement` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sv_service_items_measurement_unit` (`unit_of_measurement`),
  CONSTRAINT `sv_service_items_ibfk_1` FOREIGN KEY (`unit_of_measurement`) REFERENCES `sv_measurement_units` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sv_service_items`
--

LOCK TABLES `sv_service_items` WRITE;
/*!40000 ALTER TABLE `sv_service_items` DISABLE KEYS */;
INSERT INTO `sv_service_items` VALUES (1,'3489-MOIL-10','Motor oil',8),(2,'3269-BPAD-04','Brake pads',2),(3,'1466-TIRE-06','Tire',2),(4,'1467-RIM-06','Rim',2),(5,'0188-BATT-02','Battery',7),(6,'1469-LBUL-07','Light bulb',3),(7,'3890-TRBO-07','Turbo',2),(8,'1001-GENE-01','General inspection',9);
/*!40000 ALTER TABLE `sv_service_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sv_service_sheets`
--

DROP TABLE IF EXISTS `sv_service_sheets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sv_service_sheets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` varchar(16) DEFAULT NULL,
  `employee_id` int NOT NULL,
  `vehicle_id` int NOT NULL,
  `customer_name` varchar(90) NOT NULL,
  `date` date NOT NULL,
  `mileage` int NOT NULL,
  `customer_states` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `number` (`number`),
  KEY `fk_sv_service_sheets_employee` (`employee_id`),
  KEY `fk_sv_service_sheets_vehicle` (`vehicle_id`),
  CONSTRAINT `sv_service_sheets_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `sv_employees` (`id`),
  CONSTRAINT `sv_service_sheets_ibfk_2` FOREIGN KEY (`vehicle_id`) REFERENCES `sv_vehicles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sv_service_sheets`
--

LOCK TABLES `sv_service_sheets` WRITE;
/*!40000 ALTER TABLE `sv_service_sheets` DISABLE KEYS */;
INSERT INTO `sv_service_sheets` VALUES (1,'2022Q1-1',7,1,'Mary','2022-03-10',450000,'Car won\'t start'),(2,'2022Q1-3',8,2,'Jim','2022-03-11',235000,'Oil change, brake check'),(3,'2022Q1-4',8,3,'Mike Poulus','2022-03-11',150000,'Headlights - High beams don\'t work'),(4,'2022Q1-7',7,4,'Dan','2022-03-12',80000,'Tire change needed'),(5,'2022Q1-8',7,5,'Gerald','2022-03-12',87000,'Dead battery'),(6,'2022Q1-9',7,6,'Jessica Alexander','2022-03-12',76000,'Oil change'),(7,'2022Q1-10',7,7,'Allen Powell','2022-03-12',95000,'Dead battery'),(8,'2022Q1-15',8,8,'Betty','2022-03-15',25000,'Turbo upgrade'),(9,'2022Q1-16',8,9,'Jose','2022-03-15',55000,'Turbo replacement, oil change needed'),(10,'2022Q1-19',8,10,'Karlo Fong','2022-03-17',45000,'Sound system replacement'),(11,'2022Q1-21',7,11,'Carl','2022-03-18',10000,'Oil change'),(12,'2022Q1-23',8,12,'Sam Tay','2022-03-20',110000,'Oil change, Headlights flicker sometimes');
/*!40000 ALTER TABLE `sv_service_sheets` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `t_service_sheet_number` BEFORE INSERT ON `sv_service_sheets` FOR EACH ROW begin
        set new.number = func_combine_numbers(year(new.date), func_get_quarter(new.date), (select count(*) from sv_service_sheets where year(date) = year(new.date) and func_get_quarter(date) = func_get_quarter(new.date) and date <= new.date) + last_insert_id());
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sv_service_types`
--

DROP TABLE IF EXISTS `sv_service_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sv_service_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `unit_of_measurement` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sv_service_types_measurement_unit` (`unit_of_measurement`),
  CONSTRAINT `sv_service_types_ibfk_1` FOREIGN KEY (`unit_of_measurement`) REFERENCES `sv_measurement_units` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sv_service_types`
--

LOCK TABLES `sv_service_types` WRITE;
/*!40000 ALTER TABLE `sv_service_types` DISABLE KEYS */;
INSERT INTO `sv_service_types` VALUES (1,'Paint job',1),(2,'Sound system',6),(3,'Weight reduction',2),(4,'Armor plating',2),(5,'Lights',3),(6,'Turbo',4),(7,'Brake job',2),(8,'Oil change',8),(9,'Tire change',5),(10,'Battery change',7);
/*!40000 ALTER TABLE `sv_service_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sv_supply_sheets`
--

DROP TABLE IF EXISTS `sv_supply_sheets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sv_supply_sheets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` int NOT NULL,
  `service_item_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `price` int NOT NULL,
  `discount` decimal(2,2) NOT NULL DEFAULT '0.00',
  `value` decimal(6,2) DEFAULT NULL,
  `work_sheet_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sv_supply_sheets_service_item` (`service_item_id`),
  KEY `fk_sv_supply_sheets_work_sheet` (`work_sheet_id`),
  CONSTRAINT `sv_supply_sheets_ibfk_1` FOREIGN KEY (`service_item_id`) REFERENCES `sv_service_items` (`id`),
  CONSTRAINT `sv_supply_sheets_ibfk_2` FOREIGN KEY (`work_sheet_id`) REFERENCES `sv_work_sheets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sv_supply_sheets`
--

LOCK TABLES `sv_supply_sheets` WRITE;
/*!40000 ALTER TABLE `sv_supply_sheets` DISABLE KEYS */;
INSERT INTO `sv_supply_sheets` VALUES (1,1,5,1,100,0.00,NULL,1),(2,1,1,1,60,0.00,NULL,2),(3,2,2,1,100,0.00,NULL,3),(4,1,6,1,20,0.00,NULL,4),(5,1,3,1,800,0.00,NULL,5),(6,1,5,1,100,0.00,NULL,6),(7,1,1,1,60,0.00,NULL,7),(8,1,5,1,100,0.00,NULL,8),(9,1,7,1,1500,0.00,NULL,9),(10,1,7,1,1500,0.00,NULL,10),(11,1,1,1,60,0.00,NULL,11),(12,1,8,1,10,0.00,NULL,12),(13,1,1,1,60,0.00,NULL,13),(14,1,1,1,60,0.00,NULL,14),(15,2,8,1,10,0.00,NULL,15);
/*!40000 ALTER TABLE `sv_supply_sheets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sv_thumbnails`
--

DROP TABLE IF EXISTS `sv_thumbnails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sv_thumbnails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `thumbnail_data` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sv_thumbnails`
--

LOCK TABLES `sv_thumbnails` WRITE;
/*!40000 ALTER TABLE `sv_thumbnails` DISABLE KEYS */;
/*!40000 ALTER TABLE `sv_thumbnails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sv_vehicle_brands`
--

DROP TABLE IF EXISTS `sv_vehicle_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sv_vehicle_brands` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `founder` varchar(90) NOT NULL,
  `founded` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sv_vehicle_brands`
--

LOCK TABLES `sv_vehicle_brands` WRITE;
/*!40000 ALTER TABLE `sv_vehicle_brands` DISABLE KEYS */;
INSERT INTO `sv_vehicle_brands` VALUES (1,'Ford','Henry Ford','1903-06-16'),(2,'BMW','Camillo Castiglioni, Franz Josef Popp, Karl Rapp','1916-03-07'),(3,'Chevrolet','Arthur Chevrolet, Louis Chevrolet, William C. Durant','1911-11-03'),(4,'Mercedes-Benz','Gottlieb Daimler, Wilhelm Maybach','1926-06-28'),(5,'TOYOTA','Kiichiro Toyoda','1937-08-28'),(6,'General Motors','William C. Durant, Charles Stewart Mott, Frederic L. Smith','1908-09-16'),(7,'Honda','Soichiro Honda','1948-09-24'),(8,'Hyundai','Chung Ju-yung','1967-12-29'),(9,'Volkswagen','German Labour Front','1937-05-28'),(10,'Nissan','Masujiro Hashimoto','1933-12-26'),(11,'Audi','August Horch','1909-06-16'),(12,'Porsche','Ferdinand Porsche','1931-01-01'),(13,'Volvo','Assar Gabrielsson, Gustav Larson','1927-01-01'),(14,'Bentley','H. M. Bentley, W. O. Bentley','1919-01-18'),(15,'Kia','-','1944-06-09'),(16,'Subaru','Kenji Kita, Chikuhei Nakajima','1953-06-15'),(17,'Mazda','Jujiro Matsuda','1920-01-30');
/*!40000 ALTER TABLE `sv_vehicle_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sv_vehicle_owner`
--

DROP TABLE IF EXISTS `sv_vehicle_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sv_vehicle_owner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `maiden_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(45) NOT NULL,
  `date_of_birth` date NOT NULL,
  `social_security_number` int NOT NULL,
  `gender` tinyint DEFAULT NULL,
  `address` varchar(90) NOT NULL,
  `city_id` int NOT NULL,
  `country_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sv_vehicle_owner_city` (`city_id`),
  KEY `fk_sv_vehicle_owner_country` (`country_id`),
  CONSTRAINT `sv_vehicle_owner_ibfk_2` FOREIGN KEY (`city_id`) REFERENCES `sv_cities` (`id`),
  CONSTRAINT `sv_vehicle_owner_ibfk_3` FOREIGN KEY (`country_id`) REFERENCES `sv_countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sv_vehicle_owner`
--

LOCK TABLES `sv_vehicle_owner` WRITE;
/*!40000 ALTER TABLE `sv_vehicle_owner` DISABLE KEYS */;
INSERT INTO `sv_vehicle_owner` VALUES (1,'Mary','Potter','Sherman','1989-03-08',19890308,0,'Krupska 40',1,1),(2,'Jimmy','-','Miller','1983-05-16',19830516,1,'Zmaj od Bosne 10',1,1),(3,'Kimberly','Green','Poulos','1964-03-28',19640328,0,'Dzemala Bijedica St 100',1,1),(4,'Dan','Stroud','Morgan','1976-03-17',19760317,1,'Safeta Hadzica 40',1,1),(5,'Gerald','-','Schumacher','1975-03-09',19750309,1,'Aleja Lipa 100',1,1),(6,'Eddie','-','Alexander','1983-12-13',19831213,1,'Krupska 93',1,1),(7,'Jessica','Shanks','Powell','1988-11-20',19881120,0,'Aleja lipa 100',1,1),(8,'Betty','-','Russo','1991-02-06',19910206,0,'Behdzeta Mutevelica 88',1,1),(9,'Jose','-','Smith','1999-05-11',19990511,1,'Zmaj od Bosne 62',1,1),(10,'Gwen','Spangler','Fong','1981-07-21',19810721,0,'Zmaj od Bosne 100',1,1),(11,'Carl','Schneider','Jones','2003-06-26',20030626,0,'Aleja Lipa 55',1,1),(12,'Petrina','Rogers','Tay','1989-10-24',19891024,0,'Safeta Hadzica 45',1,1);
/*!40000 ALTER TABLE `sv_vehicle_owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sv_vehicle_types`
--

DROP TABLE IF EXISTS `sv_vehicle_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sv_vehicle_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sv_vehicle_types`
--

LOCK TABLES `sv_vehicle_types` WRITE;
/*!40000 ALTER TABLE `sv_vehicle_types` DISABLE KEYS */;
INSERT INTO `sv_vehicle_types` VALUES (6,'Convertible'),(8,'Coupe'),(2,'Crossover'),(9,'Electric'),(10,'Hybrid'),(7,'Luxury'),(3,'Sedan'),(12,'Sports car'),(1,'SUV'),(4,'Truck'),(11,'Van / Minivan'),(5,'Wagon / Hatchback');
/*!40000 ALTER TABLE `sv_vehicle_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sv_vehicles`
--

DROP TABLE IF EXISTS `sv_vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sv_vehicles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand_id` int NOT NULL,
  `num_wheels` int NOT NULL DEFAULT '4',
  `num_doors` int NOT NULL DEFAULT '5',
  `color_id` int NOT NULL,
  `type_id` int NOT NULL,
  `manufacture_date` date NOT NULL,
  `vehicle_identification_number` varchar(17) NOT NULL,
  `owner_id` int DEFAULT NULL,
  `registration` varchar(16) NOT NULL,
  `registration_date` date NOT NULL DEFAULT '1970-01-01',
  PRIMARY KEY (`id`),
  KEY `fk_sv_vehicles_brand` (`brand_id`),
  KEY `fk_sv_vehicles_color` (`color_id`),
  KEY `fk_sv_vehicles_type` (`type_id`),
  KEY `fk_sv_vehicles_owner` (`owner_id`),
  CONSTRAINT `sv_vehicles_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `sv_vehicle_brands` (`id`),
  CONSTRAINT `sv_vehicles_ibfk_2` FOREIGN KEY (`color_id`) REFERENCES `sv_colors` (`id`),
  CONSTRAINT `sv_vehicles_ibfk_3` FOREIGN KEY (`type_id`) REFERENCES `sv_vehicle_types` (`id`),
  CONSTRAINT `sv_vehicles_ibfk_5` FOREIGN KEY (`owner_id`) REFERENCES `sv_vehicle_owner` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sv_vehicles`
--

LOCK TABLES `sv_vehicles` WRITE;
/*!40000 ALTER TABLE `sv_vehicles` DISABLE KEYS */;
INSERT INTO `sv_vehicles` VALUES (1,1,4,5,6,3,'2000-12-01','1FRD2000BL1201SED',1,'HFD7394','2002-02-01'),(2,1,4,5,3,1,'2010-10-11','1FRD2010RD1011SUV',2,'AKJG28','2010-12-30'),(3,10,4,5,11,12,'2012-11-11','1NSN2012GY1111SPO',3,'115SGR','2013-11-01'),(4,10,4,5,3,12,'2016-12-12','1NSN2016RD1212SPO',4,'92705H1','2017-01-01'),(5,10,4,5,3,1,'2015-12-12','1NSN2015RD1212SUV',5,'BMF4232','2016-01-01'),(6,10,4,5,1,3,'2015-12-12','1NSN2015BL1212SED',6,'Y23JAV','2016-02-01'),(7,10,4,5,1,3,'2016-11-28','1NSN2016BL1128SED',7,'AN73033','2017-12-20'),(8,10,4,5,1,4,'2018-12-28','1NSN2018BL1228TRU',8,'LJB7194','2020-11-10'),(9,1,4,5,3,12,'2018-02-20','1FRD2018RD0220SPO',9,'GJW1063','2019-12-01'),(10,1,4,5,11,12,'2018-02-21','1FRD2018GY0221SPO',10,'Y74GVK','2020-02-02'),(11,1,4,5,11,7,'2020-02-22','1FRD2020GY0222LUX',11,'GAIYE','2022-02-10'),(12,1,4,5,1,12,'2016-02-12','1FRD2016BC0212SPO',12,'MTL622','2018-01-20');
/*!40000 ALTER TABLE `sv_vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sv_work_sheets`
--

DROP TABLE IF EXISTS `sv_work_sheets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sv_work_sheets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` int DEFAULT NULL,
  `service_type_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `price` int NOT NULL,
  `discount` decimal(2,2) NOT NULL DEFAULT '0.00',
  `value` decimal(6,2) DEFAULT NULL,
  `employee_id` int NOT NULL,
  `hours_spent` int NOT NULL,
  `service_sheet_id` int NOT NULL,
  `employee_states` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sv_work_sheets_service_type` (`service_type_id`),
  KEY `fk_sv_work_sheets_employee` (`employee_id`),
  KEY `fk_sv_work_sheets_service_sheet` (`service_sheet_id`),
  CONSTRAINT `sv_work_sheets_ibfk_1` FOREIGN KEY (`service_type_id`) REFERENCES `sv_service_types` (`id`),
  CONSTRAINT `sv_work_sheets_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `sv_employees` (`id`),
  CONSTRAINT `sv_work_sheets_ibfk_3` FOREIGN KEY (`service_sheet_id`) REFERENCES `sv_service_sheets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sv_work_sheets`
--

LOCK TABLES `sv_work_sheets` WRITE;
/*!40000 ALTER TABLE `sv_work_sheets` DISABLE KEYS */;
INSERT INTO `sv_work_sheets` VALUES (1,1,10,1,115,0.00,NULL,5,1,1,'Car battery needed replacement'),(2,1,8,1,80,0.00,NULL,4,1,2,'Flushed the whole system, no problems detected'),(3,2,7,1,120,0.00,NULL,4,2,2,'Brake pads changed, brake discs seem damaged'),(4,1,5,1,30,0.00,NULL,1,1,3,'Light bulbs were burned out'),(5,1,9,1,1000,0.00,NULL,5,2,4,'Clean tire change, no problems'),(6,1,10,1,115,0.00,NULL,1,1,5,'Installed new battery'),(7,1,8,1,120,0.00,NULL,1,2,6,'Oil was pure sludge, flushed the system'),(8,1,10,1,115,0.00,NULL,4,2,7,'Had trouble finding the battery'),(9,1,6,1,2000,0.00,NULL,4,6,8,'Parts fitted nicely, works perfectly'),(10,1,6,1,2000,0.00,NULL,4,7,9,'Had some issue fitting necessary parts'),(11,2,8,1,100,0.00,NULL,1,1,9,'Oil change went smoothly'),(12,1,2,1,100,0.00,NULL,5,2,10,'Customer provided their own sound system, fitted without a problem'),(13,1,8,1,120,0.00,NULL,5,2,11,'Vehicle oil was black, flushed the system, no problems detected'),(14,1,8,1,80,0.00,NULL,5,1,12,'Oil changed, no problems detected'),(15,2,8,1,10,0.00,NULL,5,1,12,'Bad fuse connection, problem fixed');
/*!40000 ALTER TABLE `sv_work_sheets` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `t_work_sheet_number` BEFORE INSERT ON `sv_work_sheets` FOR EACH ROW begin
        set new.number = (select count(*) from sv_work_sheets where service_sheet_id = new.service_sheet_id) + 1;
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
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `t_work_sheet_updates` BEFORE UPDATE ON `sv_work_sheets` FOR EACH ROW begin
        declare sql_statement text;
        declare json_data json;

        set sql_statement = (select info from information_schema.processlist where user = substring_index(user(), '@', 1) and command = 'Query' and time = 0);

        set json_data = (
        select json_arrayagg(
                       json_object(
                               'id', id,
                               'number', number,
                               'service_type_id', service_type_id,
                               'quantity', quantity,
                               'price', price,
                               'discount', discount,
                               'value', value,
                               'employee_id', employee_id,
                               'hours_spent', hours_spent,
                               'service_sheet_id', service_sheet_id,
                               'employee_states', employee_states
                       )
               ) from sv_work_sheets where id = new.id);

        insert into sv_log(user, sql_query, old_data) value (user(), sql_statement, json_data);

    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `v_active_catalog`
--

DROP TABLE IF EXISTS `v_active_catalog`;
/*!50001 DROP VIEW IF EXISTS `v_active_catalog`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_active_catalog` AS SELECT 
 1 AS `Item(in stock)`,
 1 AS `Current price($)`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'service_vehicle_db'
--

--
-- Dumping routines for database 'service_vehicle_db'
--
/*!50003 DROP FUNCTION IF EXISTS `func_calculate_value` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `func_calculate_value`(price int, quantity int, discount decimal(2, 2)) RETURNS decimal(6,2)
    NO SQL
return price * quantity - discount * price * quantity ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `func_combine_numbers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `func_combine_numbers`(first int, second int, third int) RETURNS varchar(16) CHARSET utf8mb4
    NO SQL
    DETERMINISTIC
begin
    return concat(first, 'Q', second, '-', third);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `func_get_quarter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `func_get_quarter`(date date) RETURNS int
    NO SQL
    DETERMINISTIC
begin
    declare month double default 1;

    set month = month(date) / 3;

    if month <= 1 then
        return 1;
    elseif month <= 2 then
        return 2;
    elseif month <= 3 then
        return 3;
    else
        return 4;
    end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_active_front_desk_accepted_jobs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_active_front_desk_accepted_jobs`(date_from date, date_to date)
    READS SQL DATA
begin
    if(date_from > date_to) then
        signal sqlstate value '45000'
            set message_text = 'date_from MUST BE SMALLER THAN date_to';
    end if;

    select first_name as `First name`, last_name as `Last name`, count(distinct service_s.id) as `Number of accepted service requests` from sv_employees
        inner join sv_employment on sv_employment.employee_id = sv_employees.id
        inner join sv_employment_positions e_postions on sv_employment.position_id = e_postions.id
        inner join sv_service_sheets service_s on service_s.employee_id = sv_employees.id
        inner join sv_work_sheets work_s on work_s.service_sheet_id = service_s.id
    where sv_employment.status = 1 and date between date_from and date_to
    group by first_name, last_name;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_brands_types_serviced` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_brands_types_serviced`()
    READS SQL DATA
begin

    declare done int default 0;
    declare current_type varchar(30);
    declare current_type_id int;
    declare old_id int default 0;
    declare current_case text default '';
    declare cases text default '';

    declare curs cursor for select id, type from sv_vehicle_types;
    declare continue handler for not found set done = 1;

    open curs;

    repeat
        fetch curs into current_type_id, current_type;

        set current_case = concat(' max(case when type_id = ', current_type_id, ' then (select count(*) from sv_vehicles v where v.type_id = ', current_type_id,' and sv.brand_id = v.brand_id) else "-" end) as `', current_type, '`');

        if old_id <> current_type_id then
            set cases = concat(cases, concat(current_case, ','));
        else
            set cases = trim(trailing ',' from cases);
        end if;

        set old_id = current_type_id;
    until done end repeat;

    close curs;

    set @query = concat('select name as `Brand name`,', cases, ' from sv_vehicles sv inner join sv_vehicle_brands brands on brands.id = brand_id group by brand_id;');

    prepare statement from @query;
    execute statement;
    deallocate prepare statement;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_brand_reported_problems` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_brand_reported_problems`()
    READS SQL DATA
begin
    select brands.name as `Brand name`, sum(service_s.mileage) as `Combined mileage`, count(work_s.id) as `Number of reported problems` from sv_vehicles
        inner join sv_vehicle_brands brands on brands.id = sv_vehicles.brand_id
        inner join sv_service_sheets service_s on service_s.vehicle_id = sv_vehicles.id
        inner join sv_work_sheets work_s on work_s.service_sheet_id = service_s.id
    group by brands.name;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_completed_services_between_periods` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_completed_services_between_periods`(first_date_from date, first_date_to date, second_date_from date, second_date_to date)
    READS SQL DATA
begin
    if(first_date_from > first_date_to) then
        signal sqlstate value '45000'
            set message_text = 'first_date_from MUST BE SMALLER THAN first_date_to';
    elseif(second_date_from > second_date_to) then
        signal sqlstate value '45000'
            set message_text = 'second_date_from MUST BE SMALLER THAN second_date_to';
    end if;
    select
        service_t.id as 'Type ID',
        service_t.name as 'Type',
        ifnull(period1.sum_quantity, '-') as 'First period quantity',
        ifnull(period1.new_value, '-') as 'First period value',
        ifnull(period2.sum_quantity, '-') as 'Second period quantity',
        ifnull(period2.new_value, '-') as 'Second period quantity'
    from sv_service_types service_t left join
        (
        select
            service_t.id,
            sum(work_s.quantity) as sum_quantity,
            func_calculate_value(sum(work_s.price), sum(work_s.quantity), sum(work_s.discount)) as new_value
        from sv_service_sheets service_s
            inner join sv_work_sheets work_s on work_s.service_sheet_id = service_s.id
            inner join sv_service_types service_t on service_t.id = work_s.service_type_id
        where service_s.date between first_date_from and first_date_to
        group by service_t.id) as period1 on service_t.id = period1.id left join
        (
        select
            service_t.id,
            sum(work_s.quantity) as sum_quantity,
            func_calculate_value(sum(work_s.price), sum(work_s.quantity), sum(work_s.discount)) as new_value
        from sv_service_sheets service_s
            inner join sv_work_sheets work_s on work_s.service_sheet_id = service_s.id
            inner join sv_service_types service_t on service_t.id = work_s.service_type_id
        where service_s.date between second_date_from and second_date_to
        group by service_t.id) as period2 on service_t.id = period2.id
    where (period1.sum_quantity and period1.new_value) or (period2.sum_quantity and period2.new_value);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_completed_service_items_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_completed_service_items_list`(in date_from date,in date_to date)
    READS SQL DATA
begin
    if(date_from > date_to) then
        signal sqlstate value '45000'
            set message_text = 'date_from MUST BE SMALLER THAN date_to';
    end if;
    select
        service_i.code as 'Code',
        service_i.name as 'Name',
        sum(supply_s.quantity) as 'Quantity',
        sum(supply_s.price) as 'Price',
        sum(supply_s.discount) as 'Discount',
        sum(func_calculate_value(supply_s.price, supply_s.quantity, supply_s.discount)) as 'Total Value'
    from sv_service_sheets service_s
        inner join sv_work_sheets work_s on service_s.id = work_s.service_sheet_id
        inner join sv_supply_sheets supply_s on work_s.id = supply_s.work_sheet_id
        inner join sv_service_items service_i on service_i.id = supply_s.service_item_id
            where service_s.date between date_from and date_to
    group by service_i.id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_employee_completed_services_report` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_employee_completed_services_report`(date_from date, date_to date, n int)
    READS SQL DATA
begin
    if(date_from > date_to) then
        signal sqlstate value '45000'
            set message_text = 'date_from MUST BE SMALLER THAN date_to';
    end if;
    select
        sv_employees.id as 'Employee ID',
        sv_employees.first_name as 'Employee first name',
        sv_employees.last_name as 'Employee last name'
    from sv_service_sheets service_s
        inner join sv_work_sheets work_s on work_s.service_sheet_id = service_s.id
        inner join sv_employees on sv_employees.id = work_s.employee_id
        inner join sv_service_types service_t on service_t.id = work_s.service_type_id
    where service_s.date between date_from and date_to
    group by sv_employees.id
    having count(distinct service_t.id) >= n;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_employee_work_report` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_employee_work_report`(sum_hours_spent int, date_from date, date_to date)
    READS SQL DATA
begin
    if(date_from > date_to) then
        signal sqlstate value '45000'
            set message_text = 'date_from MUST BE SMALLER THAN date_to';
    end if;
    select
    sv_employees.id as 'Employee ID',
    sv_employees.first_name as 'Employee first name',
    sv_employees.last_name as 'Employee last name',
    count(distinct supply_s.id) as 'Quantity of completed services',
    count(distinct supply_s.number) as 'Number of completed services',
    sum(func_calculate_value(supply_s.price, supply_s.quantity, supply_s.discount)) as 'Total Value of completed services'
from sv_service_sheets service_s
    inner join sv_work_sheets work_s on work_s.service_sheet_id = service_s.id
    inner join sv_employees on sv_employees.id = work_s.employee_id
    inner join sv_supply_sheets supply_s on supply_s.work_sheet_id = work_s.id
where service_s.date between date_from and date_to
group by sv_employees.id
    having sum(work_s.hours_spent) >= sum_hours_spent;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_position_spent_hours` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_position_spent_hours`(date_from date, date_to date)
    READS SQL DATA
begin
    if(date_from > date_to) then
        signal sqlstate value '45000'
            set message_text = 'date_from MUST BE SMALLER THAN date_to';
    end if;

    select position as `Position`, sum(hours_spent) as `Hours`, count(work_s.id) as `Number of completed work` from sv_employees
    inner join sv_employment on sv_employment.employee_id = sv_employees.id
    inner join sv_employment_positions e_postions on sv_employment.position_id = e_postions.id
    inner join sv_work_sheets work_s on work_s.employee_id = sv_employees.id
    inner join sv_service_sheets service_s on service_s.id = work_s.service_sheet_id
where date between date_from and date_to
group by position;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_summed_vehicle_type_report` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_summed_vehicle_type_report`(date_from date, date_to date)
    READS SQL DATA
begin
    if(date_from > date_to) then
        signal sqlstate value '45000'
            set message_text = 'date_from MUST BE SMALLER THAN date_to';
    end if;
    select
        v_types.id as 'Type ID',
        v_types.type as 'Type',
        count(work_s.id) as 'Work sheet quantity',
        sum(func_calculate_value(work_s.price, work_s.quantity, work_s.discount)) as 'Work sheet value'
    from sv_vehicles
        inner join sv_vehicle_types v_types on v_types.id = sv_vehicles.type_id
        inner join sv_service_sheets service_s on service_s.vehicle_id = sv_vehicles.id
        inner join sv_work_sheets work_s on work_s.service_sheet_id = service_s.id
    where service_s.date between date_from and date_to
    group by v_types.id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_vehicle_completed_services_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_vehicle_completed_services_list`(services text)
    READS SQL DATA
begin

    declare i int default 1;
    declare current_case text default '';
    declare cases text default '';
    declare current_service text default '';
    declare service_type text default '';
    declare service_column text default '';
    declare having_services text default 'having ';

    while length(services) > 0 do
        set current_service = substring_index(services, ',', 1);
        set services = ltrim(substring(services, length(current_service) + 2));
        set service_type = concat("'", current_service, "'");
        set service_column = concat("`", current_service, "`");
        set having_services = concat(having_services, (IF(length(services) > 0, concat(service_column, ' or '), concat(service_column, ';'))));
        set current_case = concat(' max(case when service_t.name = ', service_type, ' then (select sum(work_s.quantity) from sv_service_sheets service_s
    inner join sv_work_sheets work_s on work_s.service_sheet_id = service_s.id
    inner join sv_service_types service_t on service_t.id = work_s.service_type_id
      where service_t.name = ', service_type, ' and service_s.vehicle_id = sv_vehicles.id) else ''-'' end) ', service_column);
        set cases = concat(cases, (IF(length(services) > 0, concat(current_case, ','), current_case)));
        set i = i + 1;
    end while;

    set @query = concat('select sv_vehicles.vehicle_identification_number as `Vehicle Identification Number`, sv_vehicles.registration as `Registration`,', cases, ' from sv_vehicles
    inner join sv_service_sheets service_s on service_s.vehicle_id = sv_vehicles.id
    inner join sv_work_sheets work_s on work_s.service_sheet_id = service_s.id
    inner join sv_service_types service_t on service_t.id = work_s.service_type_id
group by sv_vehicles.id, service_t.name ', having_services);

    prepare statement from @query;
    execute statement;
    deallocate prepare statement;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `v_active_catalog`
--

/*!50001 DROP VIEW IF EXISTS `v_active_catalog`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_active_catalog` AS select `sci`.`name` AS `Item(in stock)`,`sci`.`price` AS `Current price($)` from ((`sv_catalogs` `sc` join `sv_catalogs_catalog_items` `scci` on((`sc`.`id` = `scci`.`catalog_id`))) join `sv_catalog_items` `sci` on((`sci`.`id` = `scci`.`item_id`))) where ((`sc`.`status` = 1) and (`sci`.`quantity` > 0)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-09 17:02:48
