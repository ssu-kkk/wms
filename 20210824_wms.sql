-- MySQL dump 10.19  Distrib 10.3.29-MariaDB, for debian-linux-gnueabihf (armv7l)
--
-- Host: localhost    Database: yourock_scm_db
-- ------------------------------------------------------
-- Server version	10.3.29-MariaDB-0+deb10u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `location_info`
--

DROP TABLE IF EXISTS `location_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_info`
--

LOCK TABLES `location_info` WRITE;
/*!40000 ALTER TABLE `location_info` DISABLE KEYS */;
INSERT INTO `location_info` VALUES (1,'전주'),(2,'익산'),(3,'김제'),(4,'군산');
/*!40000 ALTER TABLE `location_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_product_info_input_cancel_log`
--

DROP TABLE IF EXISTS `ms_product_info_input_cancel_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_product_info_input_cancel_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `trade_id` int(11) NOT NULL,
  `product_info_input_log_id` int(11) NOT NULL,
  `product_input_cancel_datetime` datetime NOT NULL,
  `product_input_cancel_comment` varchar(500) NOT NULL,
  `product_input_count_cancel` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_product_info_input_cancel_log`
--

LOCK TABLES `ms_product_info_input_cancel_log` WRITE;
/*!40000 ALTER TABLE `ms_product_info_input_cancel_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ms_product_info_input_cancel_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_product_info_input_log`
--

DROP TABLE IF EXISTS `ms_product_info_input_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_product_info_input_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `trade_id` int(11) NOT NULL,
  `product_input_count` varchar(45) NOT NULL,
  `product_input_datetime` datetime NOT NULL,
  `product_input_comment` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_product_info_input_log`
--

LOCK TABLES `ms_product_info_input_log` WRITE;
/*!40000 ALTER TABLE `ms_product_info_input_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ms_product_info_input_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_product_info_output_cancel_log`
--

DROP TABLE IF EXISTS `ms_product_info_output_cancel_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_product_info_output_cancel_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `trade_id` int(11) NOT NULL,
  `product_info_output_log_id` int(11) NOT NULL,
  `product_output_cancel_datetime` datetime NOT NULL,
  `product_output_cancel_comment` varchar(500) NOT NULL,
  `product_output_count_cancel` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_product_info_output_cancel_log`
--

LOCK TABLES `ms_product_info_output_cancel_log` WRITE;
/*!40000 ALTER TABLE `ms_product_info_output_cancel_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ms_product_info_output_cancel_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_product_info_output_log`
--

DROP TABLE IF EXISTS `ms_product_info_output_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_product_info_output_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `trade_id` int(11) NOT NULL,
  `product_output_count` varchar(45) NOT NULL,
  `product_output_datetime` datetime NOT NULL,
  `product_output_comment` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_product_info_output_log`
--

LOCK TABLES `ms_product_info_output_log` WRITE;
/*!40000 ALTER TABLE `ms_product_info_output_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ms_product_info_output_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_info`
--

DROP TABLE IF EXISTS `product_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_type` int(11) DEFAULT NULL,
  `product_code` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `product_name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `product_trade_id` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `product_now_count` int(11) DEFAULT NULL,
  `product_comment` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_info`
--

LOCK TABLES `product_info` WRITE;
/*!40000 ALTER TABLE `product_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_info_type`
--

DROP TABLE IF EXISTS `product_info_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_info_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_type_name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_info_type`
--

LOCK TABLES `product_info_type` WRITE;
/*!40000 ALTER TABLE `product_info_type` DISABLE KEYS */;
INSERT INTO `product_info_type` VALUES (1,'자재'),(2,'반제품'),(3,'제품');
/*!40000 ALTER TABLE `product_info_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trade_info`
--

DROP TABLE IF EXISTS `trade_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trade_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trade_name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `trade_addr` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `trade_call` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `trade_phone` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `trade_admin` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `trade_number` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `trade_location_id` int(11) DEFAULT NULL,
  `trade_fax` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `trade_type_id` int(11) DEFAULT NULL,
  `trade_comment` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trade_info`
--

LOCK TABLES `trade_info` WRITE;
/*!40000 ALTER TABLE `trade_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `trade_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trade_info_type`
--

DROP TABLE IF EXISTS `trade_info_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trade_info_type` (
  `id` int(11) NOT NULL,
  `trade_type_name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trade_info_type`
--

LOCK TABLES `trade_info_type` WRITE;
/*!40000 ALTER TABLE `trade_info_type` DISABLE KEYS */;
INSERT INTO `trade_info_type` VALUES (1,'매출처'),(2,'매입처');
/*!40000 ALTER TABLE `trade_info_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-24 11:47:19
