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
-- Table structure for table `generic_dropdowns`
--

DROP TABLE IF EXISTS `generic_dropdowns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generic_dropdowns` (
  `gener_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `flat_wing` varchar(255) DEFAULT NULL,
  `flat_floor` varchar(255) DEFAULT NULL,
  `flat_no` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`gener_id`),
  UNIQUE KEY `flat_no_UNIQUE` (`flat_no`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generic_dropdowns`
--

LOCK TABLES `generic_dropdowns` WRITE;
/*!40000 ALTER TABLE `generic_dropdowns` DISABLE KEYS */;
INSERT INTO `generic_dropdowns` VALUES (5,'Wing A','First','A101'),(6,'Wing A','First','A102'),(7,'Wing A','First','A103'),(8,'Wing A','First','A104'),(9,'Wing A','Second','A201'),(10,'Wing A','Second','A202'),(11,'Wing A','Second','A203'),(12,'Wing A','Second','A204'),(13,'Wing A','Third','A301'),(14,'Wing A','Third','A302'),(15,'Wing A','Third','A303'),(16,'Wing A','Third','A304'),(17,'Wing B','First','B101'),(18,'Wing B','First','B102'),(19,'Wing B','First','B103'),(20,'Wing B','First','B104'),(21,'Wing B','Second','B201'),(22,'Wing B','Second','B202'),(23,'Wing B','Second','B203'),(24,'Wing B','Second','B204'),(26,'Wing B','Third','B301'),(27,'Wing B','Third','B302'),(28,'Wing B','Third','B303'),(29,'Wing B','Third','B304');
/*!40000 ALTER TABLE `generic_dropdowns` ENABLE KEYS */;
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
