-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: MiniProject
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `Assesment`
--

DROP TABLE IF EXISTS `Assesment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Assesment` (
  `Group_id` int(11) NOT NULL,
  `Guide_id` varchar(15) NOT NULL,
  `Remark` varchar(15) NOT NULL,
  `changes` varchar(255) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  KEY `Group_id` (`Group_id`),
  KEY `Guide_id` (`Guide_id`),
  CONSTRAINT `Assesment_ibfk_1` FOREIGN KEY (`Group_id`) REFERENCES `Stud_Group` (`Group_id`),
  CONSTRAINT `Assesment_ibfk_2` FOREIGN KEY (`Guide_id`) REFERENCES `Guide` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Assesment`
--

LOCK TABLES `Assesment` WRITE;
/*!40000 ALTER TABLE `Assesment` DISABLE KEYS */;
/*!40000 ALTER TABLE `Assesment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Group_details`
--

DROP TABLE IF EXISTS `Group_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Group_details` (
  `group_id` int(11) DEFAULT NULL,
  `stud1` varchar(15) NOT NULL,
  `stud2` varchar(15) NOT NULL,
  `stud3` varchar(15) DEFAULT NULL,
  `stud` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Group_details`
--

LOCK TABLES `Group_details` WRITE;
/*!40000 ALTER TABLE `Group_details` DISABLE KEYS */;
INSERT INTO `Group_details` VALUES (58596,'i2k18205139','i2k18205170','i2k18205132','i2k18205136'),(25111,'i2k18205120','i2k18205154',NULL,NULL),(15804,'i2k18205104','i2k18205101',NULL,NULL);
/*!40000 ALTER TABLE `Group_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger updateid1  after insert on Group_details for each row  begin  update Student set Student.Group_id=new.group_id where Student.MIS_ID = new.stud1;  end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger updateid2  after insert on Group_details for each row  begin  update Student set Student.Group_id=new.group_id where Student.MIS_ID = new.stud2;  end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger updateid3  after insert on Group_details for each row  begin  update Student set Student.Group_id=new.group_id where Student.MIS_ID = new.stud3;  end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger updateid4  after insert on Group_details for each row  begin  update Student set Student.Group_id=new.group_id where Student.MIS_ID = new.stud;  end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Guide`
--

DROP TABLE IF EXISTS `Guide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Guide` (
  `ID` varchar(15) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Mobile` bigint(20) DEFAULT NULL,
  `password` varchar(16) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Guide`
--

LOCK TABLES `Guide` WRITE;
/*!40000 ALTER TABLE `Guide` DISABLE KEYS */;
INSERT INTO `Guide` VALUES ('s2k10090','sumitra jakhete','sumitrajakhete@gmail.com',7852659632,'1234'),('s2k10091','r b murumkar','rbmurumkar@gmail.com',5487966598,'1234');
/*!40000 ALTER TABLE `Guide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Schedule`
--

DROP TABLE IF EXISTS `Schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Schedule` (
  `Batch` varchar(6) DEFAULT NULL,
  `Activity` varchar(50) DEFAULT NULL,
  `SubmissionDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Schedule`
--

LOCK TABLES `Schedule` WRITE;
/*!40000 ALTER TABLE `Schedule` DISABLE KEYS */;
INSERT INTO `Schedule` VALUES ('N-11','Information Gathering and Analysis','2019-10-16'),('N-11','ER diagram','2019-10-20'),('K-11','ER diagram','2019-10-15'),('N-11','ER diagram','2019-10-14'),('N-11','Implementation and Testing','2019-10-18'),('K-11','Information Gathering and Analysis','2019-10-15'),('N-11','Deployment','2019-10-15');
/*!40000 ALTER TABLE `Schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Staff`
--

DROP TABLE IF EXISTS `Staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Staff` (
  `batch` varchar(6) DEFAULT NULL,
  `lab_teacher` varchar(15) DEFAULT NULL,
  KEY `lab_teacher` (`lab_teacher`),
  CONSTRAINT `Staff_ibfk_1` FOREIGN KEY (`lab_teacher`) REFERENCES `Guide` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Staff`
--

LOCK TABLES `Staff` WRITE;
/*!40000 ALTER TABLE `Staff` DISABLE KEYS */;
INSERT INTO `Staff` VALUES ('N-11','s2k10090');
/*!40000 ALTER TABLE `Staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stud_Group`
--

DROP TABLE IF EXISTS `Stud_Group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stud_Group` (
  `Group_id` int(11) NOT NULL,
  `Topic` varchar(100) DEFAULT NULL,
  `num_stud` int(11) NOT NULL,
  `Password` varchar(16) NOT NULL,
  PRIMARY KEY (`Group_id`),
  UNIQUE KEY `Topic` (`Topic`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stud_Group`
--

LOCK TABLES `Stud_Group` WRITE;
/*!40000 ALTER TABLE `Stud_Group` DISABLE KEYS */;
INSERT INTO `Stud_Group` VALUES (15804,'road system',2,'1234'),(25111,'student mangment',2,'1234'),(58596,'railway reservation system',4,'1234');
/*!40000 ALTER TABLE `Stud_Group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Student`
--

DROP TABLE IF EXISTS `Student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Student` (
  `MIS_ID` varchar(15) NOT NULL,
  `Roll_no` int(11) DEFAULT NULL,
  `Name` varchar(50) NOT NULL,
  `Classid` varchar(10) DEFAULT NULL,
  `Batch` varchar(5) DEFAULT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `Mobile` bigint(20) DEFAULT NULL,
  `Group_id` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`MIS_ID`),
  UNIQUE KEY `Roll_no` (`Roll_no`),
  UNIQUE KEY `Mobile` (`Mobile`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Student`
--

LOCK TABLES `Student` WRITE;
/*!40000 ALTER TABLE `Student` DISABLE KEYS */;
INSERT INTO `Student` VALUES ('i2k1111111',33333,'sankets sahane','TE-11','N-11','nikki@gmail.com',1223456777,'0'),('i2k18205101',33399,'pk','TE-11','N-11','pk@gmail.com',6565655555,'15804'),('i2k18205104',33343,'sataym','TE-11','M-11','stay@gmail.com',98955656565656,'15804'),('i2k18205110',33378,'xyz','TE-11','N-11','xyz@gmail.com',7855668994,'0'),('i2k18205120',33358,'swapnil','TE-11','N-11','swapnil@gmail.com',445445454544,'25111'),('i2k18205132',33362,'sanket sahane','TE-11','N-11','sanket@gmail.com',1254789632,'58596'),('i2k18205136',33361,'rupesh mali','TE-11','N-11','rupesh@gmail.com',8567848415,'58596'),('i2k18205139',33369,'prachi vavhal','TE-11','N-11','prachisvavhal@gmail.com',5874698965,'58596'),('i2k18205140',33347,'surabhi lone','TE-11','N-11','surabhi@gmail.com',6598745896,'0'),('i2k18205154',33356,'Niranjan','TE-11','N-11','niranjan@gmail.com',4454545469,'25111'),('i2k18205170',33372,'nikita yadav','TE-11','N-11','nikitayadav@gmail.com',8574965984,'58596');
/*!40000 ALTER TABLE `Student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Submission`
--

DROP TABLE IF EXISTS `Submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Submission` (
  `Group_id` int(11) NOT NULL,
  `Guide_id` varchar(15) NOT NULL,
  `File` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Submission`
--

LOCK TABLES `Submission` WRITE;
/*!40000 ALTER TABLE `Submission` DISABLE KEYS */;
/*!40000 ALTER TABLE `Submission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `association`
--

DROP TABLE IF EXISTS `association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `association` (
  `group_id` int(11) NOT NULL,
  `Stud_id` varchar(15) NOT NULL,
  `Guide_id` varchar(10) NOT NULL,
  PRIMARY KEY (`Stud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `association`
--

LOCK TABLES `association` WRITE;
/*!40000 ALTER TABLE `association` DISABLE KEYS */;
INSERT INTO `association` VALUES (15804,'i2k18205101','123456'),(15804,'i2k18205104','123456'),(25111,'i2k18205120','s2k10090'),(58596,'i2k18205132','s2k10090'),(58596,'i2k18205136','s2k10090'),(58596,'i2k18205139','s2k10090'),(25111,'i2k18205154','s2k10090'),(58596,'i2k18205170','s2k10090');
/*!40000 ALTER TABLE `association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_ordinator`
--

DROP TABLE IF EXISTS `co_ordinator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_ordinator` (
  `c_id` varchar(15) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Mobile` bigint(20) DEFAULT NULL,
  `password` varchar(16) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_ordinator`
--

LOCK TABLES `co_ordinator` WRITE;
/*!40000 ALTER TABLE `co_ordinator` DISABLE KEYS */;
INSERT INTO `co_ordinator` VALUES ('s2k1010011','s c dharmadhikari','dharmadhikari@gmail.com',8965758964,'1452'),('sk1010010','Prachi Vavhal','prachi@gmail.com',7854968574,'pict');
/*!40000 ALTER TABLE `co_ordinator` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-15  9:49:55
