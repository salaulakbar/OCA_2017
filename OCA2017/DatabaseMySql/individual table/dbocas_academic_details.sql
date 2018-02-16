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
-- Table structure for table `academic_details`
--

DROP TABLE IF EXISTS `academic_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `academic_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reg_id` varchar(45) DEFAULT NULL,
  `qualification` varchar(45) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL,
  `board` varchar(45) DEFAULT NULL,
  `marks_obtain` varchar(45) DEFAULT NULL,
  `total_marks` varchar(45) DEFAULT NULL,
  `percentage` varchar(45) DEFAULT NULL,
  `zero` varchar(45) DEFAULT NULL,
  `qualification1` varchar(45) DEFAULT NULL,
  `year1` varchar(45) DEFAULT NULL,
  `board1` varchar(45) DEFAULT NULL,
  `marks_obtain1` varchar(45) DEFAULT NULL,
  `total_marks1` varchar(45) DEFAULT NULL,
  `percentage1` varchar(45) DEFAULT NULL,
  `zero1` varchar(45) DEFAULT NULL,
  `qualification2` varchar(45) DEFAULT NULL,
  `year2` varchar(45) DEFAULT NULL,
  `board2` varchar(45) DEFAULT NULL,
  `marks_obtain2` varchar(45) DEFAULT NULL,
  `total_marks2` varchar(45) DEFAULT NULL,
  `percentage2` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='							';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic_details`
--

LOCK TABLES `academic_details` WRITE;
/*!40000 ALTER TABLE `academic_details` DISABLE KEYS */;
INSERT INTO `academic_details` VALUES (1,'1Dutta','M.P','2008','WBBSE','573','800','71',NULL,'H.S','2011','WBCHSE','395','500','59',NULL,'Diploma','2009','wbyctc','300','400','75'),(2,'2Akbar','M.P','2008','WBBSE','500','800','62.5',NULL,'H.S','2010','WBCHSE','300','500','60',NULL,'','','','','',''),(3,'3Barman','M.P','2008','WBBSE','510','800','63.75',NULL,'H.S','2010','WBCHSE','300','500','60',NULL,'','','','','',''),(4,'4Mandal','M.P','2008','WBBSE','500','800','62.5',NULL,'H.S','2010','WBCHSE','285','500','57',NULL,'Diploma','2008','wbyctc','256','300','85.33'),(5,'5Das','M.P','2012','WBBSE','573','800','71.62',NULL,'H.S','2010','WBCHSE','285','500','57',NULL,'','','','','',''),(6,'6Murmu','M.P','2011','WBBSE','490','800','61.25',NULL,'H.S','2013','WBCHSE','280','500','56',NULL,'','','','','',''),(7,'7sarkar','M.P','2008','cbse','600','800','75',NULL,'H.S','2010','cbse','400','500','80',NULL,'','','','','','');
/*!40000 ALTER TABLE `academic_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-06 17:47:36
