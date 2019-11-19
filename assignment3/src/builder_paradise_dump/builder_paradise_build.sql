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
-- Table structure for table `build`
--

DROP TABLE IF EXISTS `build`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `build` (
  `buildNo` int(11) NOT NULL AUTO_INCREMENT,
  `buildName` varchar(100) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`buildNo`),
  KEY `userId` (`userId`),
  CONSTRAINT `build_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `build`
--

LOCK TABLES `build` WRITE;
/*!40000 ALTER TABLE `build` DISABLE KEYS */;
INSERT INTO `build` VALUES (1,'Glaciar point',164),(2,'i9 9900K RTX 2080ti multi-purpose build.',576),(3,'RGB Everything',618),(4,'The Beast',209),(5,'Gage Cleasby\'s finished gaming setup',562),(6,'Stream Station',656),(7,'Finally a station on which i\'m god darn proud. Yes there are som flaws but overall its great!',106),(8,'My First... now I\'m hooked!',33),(9,'Storm Shadow Part 2!',142),(10,'Mid 2019 first build',350),(11,'All AMD Build',977),(12,'Budget Gaming Rig - Upgrade Two',720),(13,'My First Custom Build',653),(14,'Purple rain',291),(15,'Booty Popper 3000',289),(16,'Black & White Ryzen 3600 + RX 5700XT Home Work/Gaming build',789),(17,'Oh, Hai Mark (E5-2689)',448),(18,'The purple game eater',903),(19,'Great ultra-portable Desktop using SGPC K39 case from Taobao',468),(20,'GG',614);
/*!40000 ALTER TABLE `build` ENABLE KEYS */;
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
