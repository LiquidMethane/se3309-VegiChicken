CREATE DATABASE  IF NOT EXISTS `builder_paradise` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `builder_paradise`;
-- MySQL dump 10.13  Distrib 8.0.18, for Linux (x86_64)
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
-- Table structure for table `pcpowersupply`
--

DROP TABLE IF EXISTS `pcpowersupply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pcpowersupply` (
  `partNo` int(11) NOT NULL,
  `wattage` int(11) NOT NULL,
  PRIMARY KEY (`partNo`),
  CONSTRAINT `pcpowersupply_ibfk_1` FOREIGN KEY (`partNo`) REFERENCES `part` (`partNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pcpowersupply`
--

LOCK TABLES `pcpowersupply` WRITE;
/*!40000 ALTER TABLE `pcpowersupply` DISABLE KEYS */;
INSERT INTO `pcpowersupply` VALUES (10600,550),(10601,650),(10602,750),(10603,750),(10604,600),(10605,500),(10606,750),(10607,850),(10608,650),(10609,650),(10610,450),(10611,550),(10612,550),(10613,1600),(10614,650),(10615,650),(10616,450),(10617,500),(10618,650),(10619,520),(10620,750),(10621,400),(10622,600),(10623,1200),(10624,620),(10625,450),(10626,850),(10627,650),(10628,850),(10629,1000),(10630,500),(10631,500),(10632,1000),(10633,750),(10634,750),(10635,600),(10636,550),(10637,750),(10638,500),(10639,550),(10640,650),(10641,750),(10642,550),(10643,850),(10644,650),(10645,550),(10646,750),(10647,650),(10648,550),(10649,750),(10650,750),(10651,700),(10652,550),(10653,750),(10654,600),(10655,850),(10656,650),(10657,450),(10658,550),(10659,600),(10660,450),(10661,600),(10662,650),(10663,300),(10664,400),(10665,1000),(10666,650),(10667,520),(10668,500),(10669,850),(10670,650),(10671,750),(10672,750),(10673,1000),(10674,500),(10675,1200),(10676,750),(10677,1000),(10678,450),(10679,650),(10680,600),(10681,750),(10682,550),(10683,650),(10684,650),(10685,750),(10686,550),(10687,1600),(10688,650),(10689,850),(10690,500),(10691,550),(10692,750),(10693,850),(10694,750),(10695,850),(10696,450),(10697,450),(10698,450),(10699,600);
/*!40000 ALTER TABLE `pcpowersupply` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-19 12:49:32
