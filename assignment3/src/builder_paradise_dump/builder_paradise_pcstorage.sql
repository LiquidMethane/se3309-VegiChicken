CREATE DATABASE  IF NOT EXISTS `builder_paradise` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `builder_paradise`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: builder_paradise
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `pcstorage`
--

DROP TABLE IF EXISTS `pcstorage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pcstorage` (
  `partNo` int(11) NOT NULL,
  `sType` varchar(30) NOT NULL,
  `capacity` int(11) NOT NULL,
  PRIMARY KEY (`partNo`),
  CONSTRAINT `pcstorage_ibfk_1` FOREIGN KEY (`partNo`) REFERENCES `part` (`partNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pcstorage`
--

LOCK TABLES `pcstorage` WRITE;
/*!40000 ALTER TABLE `pcstorage` DISABLE KEYS */;
INSERT INTO `pcstorage` VALUES (10400,'HDD',1024),(10401,'SSD',500),(10402,'SSD',1024),(10403,'SSD',500),(10404,'HDD',2048),(10405,'SSD',1024),(10406,'SSD',1024),(10407,'SSD',240),(10408,'SSD',1044),(10409,'HDD',1024),(10410,'HDD',3072),(10411,'SSD',500),(10412,'HDD',2048),(10413,'SSD',2048),(10414,'SSD',120),(10415,'SSD',1024),(10416,'SSD',250),(10417,'SSD',500),(10418,'SSD',2097),(10419,'SSD',480),(10420,'SSD',1024),(10421,'SSD',250),(10422,'SSD',4096),(10423,'HDD',4096),(10424,'SSD',1024),(10425,'SSD',1024),(10426,'SSD',512),(10427,'SSD',512),(10428,'SSD',2048),(10429,'SSD',500),(10430,'SSD',1024),(10431,'SSD',1024),(10432,'HDD',4096),(10433,'SSD',500),(10434,'SSD',500),(10435,'SSD',4096),(10436,'HDD',1024),(10437,'SSD',240),(10438,'SSD',2048),(10439,'SSD',512),(10440,'SSD',480),(10441,'SSD',1024),(10442,'SSD',1024),(10443,'HDD',500),(10444,'SSD',1024),(10445,'SSD',240),(10446,'HDD',2048),(10447,'SSD',1024),(10448,'HDD',2048),(10449,'SSD',1024),(10450,'SSD',120),(10451,'SSD',512),(10452,'SSD',512),(10453,'SSD',960),(10454,'SSD',256),(10455,'SSD',1024),(10456,'SSD',500),(10457,'HDD',4096),(10458,'SSD',240),(10459,'HDD',2048),(10460,'SSD',512),(10461,'SSD',120),(10462,'SSD',2048),(10463,'SSD',512),(10464,'SSD',250),(10465,'SSD',2048),(10466,'SSD',512),(10467,'HDD',320),(10468,'SSD',240),(10469,'SSD',1024),(10470,'SSD',3276),(10471,'SSD',500),(10472,'SSD',500),(10473,'SSD',512),(10474,'SSD',250),(10475,'SSD',2048),(10476,'SSD',480),(10477,'SSD',256),(10478,'HDD',2048),(10479,'HDD',16384),(10480,'HDD',8192),(10481,'SSD',250),(10482,'SSD',2048),(10483,'SSD',4096),(10484,'SSD',500),(10485,'SSD',256),(10486,'SSD',60),(10487,'HDD',1024),(10488,'SSD',1024),(10489,'SSD',120),(10490,'HDD',500),(10491,'SSD',960),(10492,'SSD',512),(10493,'HDD',6144),(10494,'HDD',4096),(10495,'SSD',512),(10496,'SSD',1024),(10497,'SSD',1024),(10498,'SSD',240),(10499,'SSD',240);
/*!40000 ALTER TABLE `pcstorage` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-18 20:39:05
