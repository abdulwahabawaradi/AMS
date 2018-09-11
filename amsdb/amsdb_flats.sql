-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: amsdb
-- ------------------------------------------------------
-- Server version	5.7.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `flats`
--

DROP TABLE IF EXISTS `flats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flats` (
  `flat_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_name` varchar(100) DEFAULT NULL,
  `flat_number` varchar(100) DEFAULT NULL,
  `wing` varchar(100) DEFAULT NULL,
  `floor_number` varchar(100) DEFAULT NULL,
  `electricity_meter` varchar(100) DEFAULT NULL,
  `gas_meter` varchar(100) DEFAULT NULL,
  `flat_area` varchar(100) DEFAULT NULL,
  `parking_details` varchar(100) DEFAULT NULL,
  `furnished_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`flat_id`),
  UNIQUE KEY `flat_number_UNIQUE` (`flat_number`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flats`
--

LOCK TABLES `flats` WRITE;
/*!40000 ALTER TABLE `flats` DISABLE KEYS */;
INSERT INTO `flats` VALUES (2,'Abdul Wahab Awaradi','F102','Wing A','Second','M5826','G110','20000','150Sq/f','Semi Furnish'),(4,'Abdul Wahab Awaradi','A202','Wing A','Second','M-5465','G-46654','20000','250','Non-Furnish'),(5,'Safdar','A203','Wing A','Second','M-54841','G-78951','50000','500','Full Furnish'),(6,'BALAJI ','B305','Wing B','Third','M-844555','G-7854545','18000','150','Non-Furnish'),(7,'Sandeep','D101','Wing D','First','E-5565644','G-46654','50000','250','Full Furnish'),(8,'Sandeep','A101','Wing A','First','M-5465','G-46654','20000','500','Semi Furnish'),(9,'Abdul Wahab Awaradi','A102','Wing A','First','M-844555','G-78951','50000','500','Full Furnish'),(11,'Maroof Lodi','B203','Wing B','Second','E-5565644','G-46654','50000','500','Semi Furnish');
/*!40000 ALTER TABLE `flats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-10 11:58:46
