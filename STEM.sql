CREATE DATABASE  IF NOT EXISTS `stemhire` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `stemhire`;
-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: stemhire
-- ------------------------------------------------------
-- Server version	5.6.25-log

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
-- Table structure for table `applicant`
--

DROP TABLE IF EXISTS `applicant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant` (
  `idApplicanr` int(11) NOT NULL AUTO_INCREMENT,
  `Applicant_lastname` varchar(45) NOT NULL,
  `Applicant_firstname` varchar(45) NOT NULL,
  `Applicant_contactid` varchar(2) NOT NULL,
  `Applicant_coverletter` varchar(1) NOT NULL,
  `Applicant_Resume` varchar(1) NOT NULL,
  `Applicant_Reference` varchar(1) NOT NULL,
  `Applicant_Referencechecked` varchar(1) NOT NULL,
  PRIMARY KEY (`idApplicanr`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant`
--

LOCK TABLES `applicant` WRITE;
/*!40000 ALTER TABLE `applicant` DISABLE KEYS */;
INSERT INTO `applicant` VALUES (1,'FRANKLIN','ALEX','PR','Y','Y','N','N'),(2,'JONES','JOHN','EM','N','Y','Y','N'),(3,'RUTH','EDWARD','PI','Y','Y','Y','Y');
/*!40000 ALTER TABLE `applicant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacttype`
--

DROP TABLE IF EXISTS `contacttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacttype` (
  `idContacttype` varchar(2) NOT NULL,
  `Contacttype_description` varchar(45) NOT NULL,
  PRIMARY KEY (`idContacttype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacttype`
--

LOCK TABLES `contacttype` WRITE;
/*!40000 ALTER TABLE `contacttype` DISABLE KEYS */;
INSERT INTO `contacttype` VALUES ('EM','Email'),('PC','Phone'),('PI','Phone Interview'),('PR','Personal contact'),('SN','Social Networking'),('WS','Web Job site');
/*!40000 ALTER TABLE `contacttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `idLogin` int(11) NOT NULL AUTO_INCREMENT,
  `Login_id` varchar(90) NOT NULL,
  `Login_pw` varchar(18) NOT NULL,
  `Login_access` varchar(1) NOT NULL,
  `Login_count` int(11) NOT NULL,
  PRIMARY KEY (`idLogin`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'admin','admin','A',0),(2,'rmorgam','Sally12!','R',0),(3,'ddarrow@Headhunters.com','Donna78!','R',0),(4,'jjohnson@SSS.com','Pepper12!','R',0),(5,'ggeronimo@acme.com','Skydive1!','R',0),(6,'afranklin','Lizzy01!','R',0);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offerdocs`
--

DROP TABLE IF EXISTS `offerdocs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offerdocs` (
  `idOfferdocs` int(11) NOT NULL AUTO_INCREMENT,
  `Offerdocs_applicanrtid` int(11) NOT NULL,
  `Offerdocs_positionid` int(11) NOT NULL,
  `Offerdocs_dateoffer` datetime NOT NULL,
  `Offerdocs_salary` decimal(15,2) NOT NULL,
  `Offerdocs_agencycost` decimal(9,2) NOT NULL,
  PRIMARY KEY (`idOfferdocs`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offerdocs`
--

LOCK TABLES `offerdocs` WRITE;
/*!40000 ALTER TABLE `offerdocs` DISABLE KEYS */;
INSERT INTO `offerdocs` VALUES (1,1,4,'2015-07-07 12:00:00',5000000.00,250000.00),(2,3,8,'2015-07-08 12:30:00',6000000.00,150000.00);
/*!40000 ALTER TABLE `offerdocs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position` (
  `idPosition` int(11) NOT NULL AUTO_INCREMENT,
  `Position_stemid` int(11) NOT NULL,
  `Position_city` varchar(45) DEFAULT NULL,
  `Positionstate` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`idPosition`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,5,'Detroit','MI'),(2,6,'Grosse Pointe Park','MI'),(3,7,'Detroit','MI'),(4,8,'Detroit','MI'),(5,8,'Southfield','MI'),(6,9,'Redford','MI'),(7,10,'Detroit','MI'),(8,10,'Detroit','MI'),(9,10,'Redford','MI'),(10,10,'Detroit','MI'),(11,11,'Detroit','MI'),(12,12,'Redford','MI'),(13,13,'Detroit','MI'),(14,14,'Dearborn','MI'),(15,15,'Detroit','MI'),(16,16,'Southfield','MI'),(17,17,'Detroit','MI'),(18,18,'Ferndale','MI'),(19,19,'Detroit','MI'),(20,20,'Detroit','MI'),(21,21,'Detroit','MI'),(22,22,'Dearborn','MI'),(23,23,'Detroit','MI'),(24,24,'Detroit','MI'),(25,25,'Oak Park','MI'),(26,26,'Detroit','MI'),(27,27,'Detroit','MI'),(28,28,'Detroit','MI'),(29,29,'Detroit','MI'),(30,30,'Warren','MI'),(31,31,'Grosse Pointe Woods','MI'),(32,32,'Detroit','MI'),(33,33,'Detroit','MI'),(34,34,'Detroit','MI'),(35,35,'Detroit','MI'),(36,36,'Southfield','MI'),(37,37,'Dearborn Heights','MI'),(38,38,'Hazel Park','MI'),(39,39,'Detroit','MI'),(40,40,'Detroit','MI'),(41,41,'Detroit','MI'),(42,42,'Detroit','MI'),(43,43,'Detroit','MI'),(44,44,'Detroit','MI'),(45,45,'Detroit','MI'),(46,46,'Detroit','MI'),(47,47,'Detroit','MI'),(48,48,'Grosse Pointe Woods','MI'),(49,49,'Southfield','MI'),(50,50,'Detroit','MI'),(51,51,'Ferndale','MI'),(52,52,'Center Line','MI'),(53,53,'Detroit','MI'),(54,54,'Eastpointe','MI'),(55,55,'Detroit','MI'),(56,56,'Dearborn','MI'),(57,57,'Redford','MI'),(58,58,'Dearborn','MI'),(59,59,'Detroit','MI'),(60,60,'Southfield','MI'),(61,61,'Detroit','MI'),(62,62,'Ferndale','MI'),(63,63,'Dearborn','MI'),(64,64,'Detroit','MI'),(65,65,'Center Line','MI'),(66,66,'Detroit','MI'),(67,67,'Detroit','MI'),(68,68,'Eastpointe','MI'),(69,69,'Detroit','MI'),(70,70,'Detroit','MI'),(71,71,'Oak Park','MI'),(72,72,'Detroit','MI'),(73,73,'Detroit','MI'),(74,74,'Southfield','MI'),(75,75,'Detroit','MI');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recruiter`
--

DROP TABLE IF EXISTS `recruiter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recruiter` (
  `idRecruiter` int(11) NOT NULL AUTO_INCREMENT,
  `Recruiter_Loginid` int(11) NOT NULL,
  `Recruiter_lastname` varchar(45) NOT NULL,
  `Recruiter_firstname` varchar(45) NOT NULL,
  `Recruiter_AgencyName` varchar(45) NOT NULL,
  PRIMARY KEY (`idRecruiter`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recruiter`
--

LOCK TABLES `recruiter` WRITE;
/*!40000 ALTER TABLE `recruiter` DISABLE KEYS */;
INSERT INTO `recruiter` VALUES (1,2,'MORGAN','ROBERTA','SSS'),(2,3,'DARROW','DWIGHT','Headhunters'),(3,4,'JOHNSON','JOYCE','SSS'),(4,5,'GERONIMO','GEORGE','ACME'),(5,6,'FRANKLIN','ALBERT','ACME');
/*!40000 ALTER TABLE `recruiter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stem`
--

DROP TABLE IF EXISTS `stem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stem` (
  `idSTEM` int(11) NOT NULL AUTO_INCREMENT,
  `STEM_type` varchar(45) NOT NULL,
  `STEM_description` varchar(90) NOT NULL,
  PRIMARY KEY (`idSTEM`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stem`
--

LOCK TABLES `stem` WRITE;
/*!40000 ALTER TABLE `stem` DISABLE KEYS */;
INSERT INTO `stem` VALUES (1,'Management','Architectural and engineering managers'),(2,'Management','Computer and information systems'),(3,'Management','managers'),(4,'Management','Natural sciences managers'),(5,'Computer / mathematics','Actuaries'),(6,'Computer / mathematics','Computer and information'),(7,'Computer / mathematics','research scientists'),(8,'Computer / mathematics','Computer network architects'),(9,'Computer / mathematics','Computer network support specialists'),(10,'Computer / mathematics','Computer programmers'),(11,'Computer / mathematics','Computer systems analysts'),(12,'Computer / mathematics','Computer user support specialists'),(13,'Computer / mathematics','Database administrators'),(14,'Computer / mathematics','Information security analysts'),(15,'Computer / mathematics','Mathematical technicians'),(16,'Computer / mathematics','Mathematicians'),(17,'Computer / mathematics','Network and computer systems'),(18,'Computer / mathematics','administrators'),(19,'Computer / mathematics','Operations research analysts'),(20,'Computer / mathematics','Software developers applications'),(21,'Computer / mathematics','Software developers systems software'),(22,'Computer / mathematics','Statisticians'),(23,'Computer / mathematics','Web developers'),(24,'Computer / mathematics','Computer occupations all other'),(25,'Computer / mathematics','Mathematical science occupations,'),(26,'Computer / mathematics','all other'),(27,'Architecture / engineering','Aerospace engineering and operations'),(28,'Architecture / engineering','technicians'),(29,'Architecture / engineering','Aerospace engineers'),(30,'Architecture / engineering','Agricultural engineers'),(31,'Architecture / engineering','Architectural and civil drafters'),(32,'Architecture / engineering','Biomedical engineers'),(33,'Architecture / engineering','Chemical engineers'),(34,'Architecture / engineering','Civil engineering technicians'),(35,'Architecture / engineering','Civil engineers'),(36,'Architecture / engineering','Computer hardware engineers'),(37,'Architecture / engineering','Electrical and electronics drafters'),(38,'Architecture / engineering','Electrical and electronics engineering'),(39,'Architecture / engineering','technicians'),(40,'Architecture / engineering','Electrical engineers'),(41,'Architecture / engineering','Electro-mechanical technicians'),(42,'Architecture / engineering','Electronics engineers except computer'),(43,'Architecture / engineering','Environmental engineering technicians'),(44,'Architecture / engineering','Environmental engineers'),(45,'Architecture / engineering','Health and safety engineers except'),(46,'Architecture / engineering','mining safety engineers and inspectors'),(47,'Architecture / engineering','Industrial engineering technicians'),(48,'Architecture / engineering','Industrial engineers'),(49,'Architecture / engineering','Marine engineers and naval architects'),(50,'Architecture / engineering','Materials engineers'),(51,'Architecture / engineering','Mechanical drafters'),(52,'Architecture / engineering','Mechanical engineering technicians'),(53,'Architecture / engineering','Mechanical engineers'),(54,'Architecture / engineering','Mining and geological engineers,'),(55,'Architecture / engineering','including mining safety engineers'),(56,'Architecture / engineering','Nuclear engineers'),(57,'Architecture / engineering','Petroleum engineers'),(58,'Architecture / engineering','Surveying and mapping technicians'),(59,'Architecture / engineering','Drafters all other'),(60,'Architecture / engineering','Engineering technicians except drafters'),(61,'Architecture / engineering','all other'),(62,'Architecture / engineering','Engineers all other'),(63,'Life /physical / social sciences','Agricultural and food science technicians'),(64,'Life /physical / social sciences','Animal scientists'),(65,'Life /physical / social sciences','Astronomers'),(66,'Life /physical / social sciences','Atmospheric and space scientists'),(67,'Life /physical / social sciences','Biochemists and biophysicists'),(68,'Life /physical / social sciences','Biological technicians'),(69,'Life /physical / social sciences','Chemical technicians'),(70,'Life /physical / social sciences','Chemists'),(71,'Life /physical / social sciences','Conservation scientists'),(72,'Life /physical / social sciences','Environmental science and protection'),(73,'Life /physical / social sciences','technicians including health'),(74,'Life /physical / social sciences','Environmental scientists and specialists including health'),(75,'Life /physical / social sciences','Epidemiologists'),(76,'Life /physical / social sciences','Food scientists and technologists'),(77,'Life /physical / social sciences','Forensic science technicians'),(78,'Life /physical / social sciences','Forest and conservation technicians'),(79,'Life /physical / social sciences','Foresters'),(80,'Life /physical / social sciences','Geological and petroleum technicians'),(81,'Life /physical / social sciences','Geoscientists except hydrologists and'),(82,'Life /physical / social sciences','geographers'),(83,'Life /physical / social sciences','Hydrologists'),(84,'Life /physical / social sciences','Life physical and social science'),(85,'Life /physical / social sciences','technicians all other'),(86,'Life /physical / social sciences','Materials scientists'),(87,'Life /physical / social sciences','Medical scientists except epidemiologists'),(88,'Life /physical / social sciences','Microbiologists'),(89,'Life /physical / social sciences','Nuclear technicians'),(90,'Life /physical / social sciences','Physicists'),(91,'Life /physical / social sciences','Soil and plant scientists'),(92,'Life /physical / social sciences','Zoologists and wildlife biologists'),(93,'Life /physical / social sciences','Biological scientists all other'),(94,'Life /physical / social sciences','Life scientists all other'),(95,'Life /physical / social sciences','Physical scientists all other'),(96,'Education /training / library','Agricultural sciences teachers,'),(97,'Education /training / library','postsecondary'),(98,'Education /training / library','Architecture teachers postsecondary'),(99,'Education /training / library','Atmospheric earth marine and space'),(100,'Education /training / library','sciences teachers postsecondary'),(101,'Education /training / library','Biological science teachers postsecondary'),(102,'Education /training / library','Chemistry teachers postsecondary'),(103,'Education /training / library','Computer science teachers postsecondary'),(104,'Education /training / library','Engineering teachers postsecondary'),(105,'Education /training / library','Environmental science teachers,'),(106,'Education /training / library','postsecondary'),(107,'Education /training / library','Forestry and conservation science'),(108,'Education /training / library','teachers postsecondary'),(109,'Education /training / library','Mathematical science teachers,'),(110,'Education /training / library','postsecondary'),(111,'Education /training / library','Physics teachers postsecondary'),(112,'Sales / related','Sales engineers'),(113,'Sales / related','Sales representatives wholesale and'),(114,'Sales / related','manufacturing technical and scientific products');
/*!40000 ALTER TABLE `stem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-23 19:52:54
