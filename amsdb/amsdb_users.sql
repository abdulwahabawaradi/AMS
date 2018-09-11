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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_aadharnumber` varchar(50) DEFAULT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  `user_dateofbirth` datetime DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_pancard` varchar(255) DEFAULT NULL,
  `user_registrationdate` datetime DEFAULT NULL,
  `user_role` varchar(255) DEFAULT NULL,
  `user_secondarycontact` bigint(20) DEFAULT NULL,
  `user_contact` bigint(20) DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `user_password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (8,'989779797','Bijapur','2018-04-13 00:00:00','wahabawaradi02@gmai.com','Abdul Wahab Awaradi','pan9897897978','2018-04-13 00:00:00','Active',9787878979,787878454,'2018-04-30 00:00:00',NULL,NULL,NULL,NULL,NULL),(10,'3545','Flat C3 Bhaijan Manzil, Shivaneri Nagar Lane No.11 Near Ideal Bakery','2018-12-31 00:00:00','marooflodi06@gmail.comkm','Maroof Lodi','411048','2018-12-31 00:00:00','Tenant',9848444949,465,'2018-12-31 00:00:00',NULL,NULL,NULL,NULL,NULL),(11,'8787878','Pune, Kond','2018-04-18 00:00:00','safdar@g','Safdar','78787878','2018-04-19 00:00:00','Tenant',9889478478,7787878978,'2018-04-19 00:00:00',NULL,NULL,NULL,NULL,NULL),(12,'8787878','Gulbarga','2018-12-31 00:00:00','balaji@gmail.com','BALAJI ','P211555','2018-12-30 00:00:00','Active',9889478478,8956,'2018-12-31 00:00:00',NULL,NULL,NULL,NULL,NULL),(13,'A1245145','Ataullhachowk J.M ROAD ','1995-05-19 00:00:00','Wahab@gmail.com','Abdulwahab','P211555','2018-12-31 00:00:00','Active',7797974454,7897974499,'2025-12-31 00:00:00','','Karnataka','Bijapur','Awaradi',NULL),(14,'A446464456','Flat C3 Bhaijan Manzil, Shivaneri Nagar Lane No.11 Near Ideal Bakery','1992-01-01 00:00:00','Alok@gmail.com','Alok','P464644545','2018-05-02 00:00:00','Active',5454545454,569445454,'2025-12-31 00:00:00','India','Maharashtra','Darbhanga','Kumar',NULL),(15,'454','jm road Bijapur','1995-05-19 00:00:00','Wahab@gmail.com','Abdulwahab','5454','2018-12-01 00:00:00','Active',54545,6454,'2018-12-31 00:00:00','India','Karnataka','Bijapur','Awaradi','123456'),(16,'5445454','xyz','2018-05-15 00:00:00','XYZ@gmail.com','Sandeep','4555','2018-12-31 00:00:00','Active',44545454,56356565,'2018-12-06 00:00:00','India','Maharashtra','Satara','Mahamulkar','123456');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-10 11:58:47
