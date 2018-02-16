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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `reg_id` varchar(45) DEFAULT NULL,
  `village` varchar(45) DEFAULT NULL,
  `post_office` varchar(45) DEFAULT NULL,
  `police_station` varchar(45) DEFAULT NULL,
  `dist` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `contactno` varchar(20) DEFAULT NULL,
  `parmanent_address` int(10) unsigned zerofill DEFAULT NULL,
  `Vill` varchar(45) DEFAULT NULL,
  `po` varchar(45) DEFAULT NULL,
  `ps` varchar(45) DEFAULT NULL,
  `distric` varchar(45) DEFAULT NULL,
  `stat` varchar(45) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='					';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'1Dutta','Upper nadiha','Dulmi nadiha','Purulia','Purulia','West Bengal','8436009362',NULL,'Upper nadiha','Dulmi nadiha','Purulia','Purulia','West Bengal','8436009362'),(2,'2Akbar','Enayet Nagar','Jitar Pur','Chanchal','Malda','West Bengal','9134334877',NULL,'Enayet Nagar','Jitar Pur','Chanchal','Malda','West Bengal','9134334877'),(3,'3Barman','Kupadaha','Kupadaha','Bamangola','Malda','West Bengal','8759954786',NULL,'Kupadaha','Kupadaha','Bamangola','Malda','West Bengal','8759954786'),(4,'4Mandal','Leninpur','Kadamtala','Matigara','Darjeeling','West Bengal','9635324588',NULL,'Leninpur','Kadamtala','Matigara','Darjeeling','West Bengal','9635324588'),(5,'5Das','Upper nadiha','Upper nadiha','Purulia','Purulia','West Bengal','8436009362',NULL,'Upper nadiha','Upper nadiha','Purulia','Purulia','West Bengal','8436009362'),(6,'6Murmu','Bhingol','Bhingol','Medinapur','Medinapur','West Bengal','9536242865',NULL,'Asapur','Chandua','Chandua','Medinapur','West Bengal','9532635289'),(7,'7sarkar','sivmandir','sivmandir','matgara','darjeeling','west bengal','8436009362',NULL,'sivmandir','sivmandir','matgara','darjeeling','west bengal','8436009362');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
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
