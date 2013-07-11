-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: Transport
-- ------------------------------------------------------
-- Server version	5.5.31-0ubuntu0.12.04.2

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
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cars` (
  `model` varchar(20) DEFAULT NULL,
  `makes` varchar(20) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `count_passengers` int(11) DEFAULT NULL,
  KEY `model` (`model`),
  CONSTRAINT `cars_ibfk_1` FOREIGN KEY (`model`) REFERENCES `vehicles` (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES ('Cayenne','Porsche','black',900000,4),('X5(E70)','BMW','gray',700000,5),('CLS-Class','Mercedes','red',900000,4),('Z4(E89)','BMW','black',500000,2),('LX','Lexus','red',1000000,4),('Journey','Dodge','white',300000,5),('Accord 2013','Honda','black',300000,5),('CR-Z','Honda','green',280000,2);
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `motorbikes`
--

DROP TABLE IF EXISTS `motorbikes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `motorbikes` (
  `model` varchar(20) DEFAULT NULL,
  `makes` varchar(20) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  KEY `model` (`model`),
  CONSTRAINT `motorbikes_ibfk_1` FOREIGN KEY (`model`) REFERENCES `vehicles` (`model`),
  CONSTRAINT `motorbikes_ibfk_2` FOREIGN KEY (`model`) REFERENCES `vehicles` (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motorbikes`
--

LOCK TABLES `motorbikes` WRITE;
/*!40000 ALTER TABLE `motorbikes` DISABLE KEYS */;
INSERT INTO `motorbikes` VALUES ('Diavel','Ducati','black',240000,'cruiser'),('VT1300CX Fury','Honda','red',150000,'cruiser'),('CB600F Hornet','Honda','black',110000,'street'),('GSR750','Suzuki','red',130000,'street'),('R1200R','BMW','black',150000,'street'),('V-Rod Muscle','Harley-Davidson','black',270000,'chopper'),('WR250F','Yamaha','green',106000,'cross'),('R1200 GS','BMW','gray',175000,'enduro');
/*!40000 ALTER TABLE `motorbikes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicles` (
  `type` varchar(20) DEFAULT NULL,
  `maker` varchar(20) DEFAULT NULL,
  `model` varchar(20) NOT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES ('Car','Japan','Accord 2013'),('Car','Germany','Cayenne'),('Motorbike','Japan','CB600F Hornet'),('Car','Germany','CLS-Class'),('Car','Japan','CR-Z'),('Motorbike','Italy','Diavel'),('Motorbike','Japan','GSR750'),('Car','USA','Journey'),('Car','Japan','LX'),('Motorbike','Germany','R1200 GS'),('Motorbike','Germany','R1200R'),('Motorbike','USA','V-Rod Muscle'),('Motorbike','Japan','VT1300CX Fury'),('Motorbike','Japan','WR250F'),('Car','Germany','X5(E70)'),('Car','Germany','Z4(E89)');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-07-11 17:50:43
