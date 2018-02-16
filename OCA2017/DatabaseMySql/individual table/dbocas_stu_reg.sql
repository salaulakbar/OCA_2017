-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: dbocas
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `stu_reg`
--

DROP TABLE IF EXISTS `stu_reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stu_reg` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `reg_id_user` varchar(45) NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `fa_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phon` varchar(45) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `regdate` date DEFAULT NULL,
  PRIMARY KEY (`id`,`reg_id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_reg`
--

LOCK TABLES `stu_reg` WRITE;
/*!40000 ALTER TABLE `stu_reg` DISABLE KEYS */;
INSERT INTO `stu_reg` VALUES (1,'1Dutta','Chandan','Dutta','Madhusudan Dutta','chandan.snow.cs.143@gmail.com','8436009362','chandan19','2017-12-27'),(2,'2Akbar','Salaul','Akbar','Younus Ali','salaul.akbar@gmail.com','9134334877','salaul','2017-12-27'),(3,'3Barman','Avijit ','Barman','Prusun Barman','avijit148@gmail.com','8759954786','avijit','2017-12-27'),(4,'4Mandal','Suman','Mandal','xxxxxx','sumanmandal@gmail.com','9635324588','suman','2017-12-28'),(5,'5Das','Tanmoy','Das','Ram Das','tanmoydas@gmail.com','8598685789','tanmoy','2017-12-28'),(6,'6Murmu','Sarabendu','Murmu','Jaladhar Murmu','sarabendu@gmail.com','7854258691','murmu','2017-12-28'),(7,'7sarkar','sujoy ','sarkar','depak sarkar','sujoy34@gmail.com','8574968523','sujoy','2017-12-29');
/*!40000 ALTER TABLE `stu_reg` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-06 17:47:34
