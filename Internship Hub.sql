-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: internshiphub
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contactus`
--

DROP TABLE IF EXISTS `contactus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactus` (
  `Name` varchar(45) NOT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Phone` varchar(10) NOT NULL,
  `Question` longtext NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactus`
--

LOCK TABLES `contactus` WRITE;
/*!40000 ALTER TABLE `contactus` DISABLE KEYS */;
INSERT INTO `contactus` VALUES ('Mansi Jaiswal','mansijais345@gmail.com','7266970898','Is this internship paid?','2023-08-20'),('Nidhi','nidhi786@gmail.com','7299764789','Is this internship available for 3rd semester student?','2023-08-20'),('Nidhi','nidhi34@gmail.com','7266970898','When it is going to start?\r\n','2023-08-26');
/*!40000 ALTER TABLE `contactus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `FeedbackId` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Date` date NOT NULL,
  `FeedBackText` longtext NOT NULL,
  `Rating` int NOT NULL,
  `CheckBox` varchar(5) NOT NULL,
  PRIMARY KEY (`FeedbackId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'Mansi ','mansijais345@gmail.com','2023-08-20','Excellent platform',4,'agree'),(2,'Nidhi','nidhi786@gmail.com','2023-08-20','Can be better and more interactive',3,'agree'),(3,'Rahul ','rahulpandey811@gmail.com','2023-08-20','Interactive platform and learnt alot',4,'agree');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `NoticeId` int NOT NULL AUTO_INCREMENT,
  `ProviderId` varchar(45) NOT NULL,
  `NoticeTopic` varchar(100) DEFAULT NULL,
  `NoticeContents` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`NoticeId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,'mansi345','Internship Programme','We believe we can make an excellent addition in your skills.','2023-08-24'),(2,'nidhi08','Internship Programme','By this internship you will get to experience the environment of the particular trade.','2023-08-24');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `program_details`
--

DROP TABLE IF EXISTS `program_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `program_details` (
  `ProgramId` int NOT NULL AUTO_INCREMENT,
  `ProviderId` varchar(45) NOT NULL,
  `ProgramName` varchar(100) NOT NULL,
  `Duration` varchar(20) NOT NULL,
  `Fees` varchar(30) NOT NULL,
  `StartDate` varchar(10) NOT NULL,
  `EndDate` varchar(10) NOT NULL,
  `Perquisite` varchar(255) DEFAULT NULL,
  `Stipend` varchar(3) NOT NULL,
  `Description` varchar(255) NOT NULL,
  PRIMARY KEY (`ProgramId`),
  UNIQUE KEY `ProgramId_UNIQUE` (`ProgramId`),
  KEY `providerid_FK_idx` (`ProviderId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `program_details`
--

LOCK TABLES `program_details` WRITE;
/*!40000 ALTER TABLE `program_details` DISABLE KEYS */;
INSERT INTO `program_details` VALUES (1,'mansi345','Internship','45days','7500','2023-08-30','2023-10-15','Basic knowlegde of the code','no','Product management'),(2,'nidhi08','Internship','30days','6000','2023-09-10','2023-10-10','Basic knowlegde of the bacics','no','Product management and sales');
/*!40000 ALTER TABLE `program_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provider`
--

DROP TABLE IF EXISTS `provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provider` (
  `ProviderId` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `OrganizationName` varchar(100) NOT NULL,
  `OwnerName` varchar(45) NOT NULL,
  `PhoneNumber` varchar(10) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Domain` varchar(100) NOT NULL,
  `AboutOrganization` longtext NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`ProviderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider`
--

LOCK TABLES `provider` WRITE;
/*!40000 ALTER TABLE `provider` DISABLE KEYS */;
INSERT INTO `provider` VALUES ('mansi345','Mansi@345','Infosys','N.R. Narayana Murthy','7266970891','mansijais345@gmail.com','  No.44&97/A, Infosys Avenue, Next SBI Bank,  Hosur Road, Electronic City-560100','Bengaluru','infosys.com.ru','NYSE listed global consulting and IT services company.','2023-08-21'),('nidhi08','nidhi@08','TCS','K.Krithivasan','7387654322','nidhi08@gmail.com','TCS House,2nd Floor , Raveline Street, Fort-400001','Mumbai','tcs.com','IT Services ,consulting, and business solutions organization','2023-08-21');
/*!40000 ALTER TABLE `provider` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-26 11:52:18
