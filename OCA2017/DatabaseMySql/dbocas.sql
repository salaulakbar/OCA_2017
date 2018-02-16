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

--
-- Table structure for table `admin_reg`
--

DROP TABLE IF EXISTS `admin_reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_reg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` varchar(45) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `subject` varchar(45) DEFAULT NULL,
  `emp_id` varchar(45) DEFAULT NULL,
  `contact_no` varchar(45) DEFAULT NULL,
  `email_id` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `reg_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_reg`
--

LOCK TABLES `admin_reg` WRITE;
/*!40000 ALTER TABLE `admin_reg` DISABLE KEYS */;
INSERT INTO `admin_reg` VALUES (1,'1Dutta','Chandan','Dutta','1991-10-22','Science','MATH','1900','8759430434','chandan.19@gmail.com','chandan22','2017-12-27'),(2,'2Akbar','Salaul','Akbar','1993-04-25','Science','MATH','2401','9134334877','salaul.akbar@gmail.com','salaul','2017-12-27');
/*!40000 ALTER TABLE `admin_reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_details`
--

DROP TABLE IF EXISTS `personal_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `reg_id` varchar(45) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `fa_name` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `nationality` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_details`
--

LOCK TABLES `personal_details` WRITE;
/*!40000 ALTER TABLE `personal_details` DISABLE KEYS */;
INSERT INTO `personal_details` VALUES (1,'1Dutta','Chandan','Dutta','Madhusudan Dutta','1991-10-22','male','Indian','General'),(2,'2Akbar','Salaul','Akbar','Younus Ali','1993-04-25','male','Indian','General'),(3,'3Barman','Avijit ','Barman','Prusun Barman','1993-04-10','male','Indian','General'),(4,'4Mandal','Suman','Mandal','xxxxxx','1992-12-29','male','Indian','General'),(5,'5Das','Tanmoy','Das','Ram Das','1993-12-25','male','Indian','General'),(6,'6Murmu','Sarabendu','Murmu','Jaladhar Murmu','1992-06-22','male','Indian','ST'),(7,'7sarkar','sujoy','sarkar','depak','1994-12-03','male','indian','ST');
/*!40000 ALTER TABLE `personal_details` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2018-01-06 17:49:39
