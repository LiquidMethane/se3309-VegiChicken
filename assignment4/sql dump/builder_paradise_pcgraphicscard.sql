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
-- Table structure for table `pcgraphicscard`
--

DROP TABLE IF EXISTS `pcgraphicscard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pcgraphicscard` (
  `partNo` int(11) NOT NULL,
  `chipset` varchar(30) NOT NULL,
  `memoryCapacity` int(11) NOT NULL,
  `coreClock` int(11) NOT NULL,
  PRIMARY KEY (`partNo`),
  CONSTRAINT `pcgraphicscard_ibfk_1` FOREIGN KEY (`partNo`) REFERENCES `part` (`partNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pcgraphicscard`
--

LOCK TABLES `pcgraphicscard` WRITE;
/*!40000 ALTER TABLE `pcgraphicscard` DISABLE KEYS */;
INSERT INTO `pcgraphicscard` VALUES (10500,'Radeon RX 580',8,1257),(10501,'GeForce GTX 1660 Ti',6,1500),(10502,'GeForce RTX 2080 Ti',11,1350),(10503,'GeForce RTX 2070 SUPER',8,1605),(10504,'GeForce RTX 2070 SUPER',8,1605),(10505,'Radeon RX 5700 XT',8,1650),(10506,'GeForce RTX 2070',8,1410),(10507,'GeForce GTX 1050 Ti',4,1341),(10508,'GeForce RTX 2060',6,1365),(10509,'GeForce RTX 2080',8,1515),(10510,'Radeon RX 570',8,1168),(10511,'Radeon RX 5700 XT',8,1670),(10512,'GeForce GTX 1660',6,1530),(10513,'GeForce GTX 1660 Ti',6,1500),(10514,'GeForce RTX 2060 SUPER',8,1470),(10515,'GeForce GTX 1660',6,1530),(10516,'GeForce RTX 2080 Ti',11,1350),(10517,'Radeon RX 590',8,1469),(10518,'GeForce RTX 2080 Ti',11,1350),(10519,'GeForce RTX 2080 Ti',11,1350),(10520,'Radeon RX 5700 XT',8,1605),(10521,'GeForce RTX 2080 SUPER',8,1650),(10522,'GeForce RTX 2060',6,1365),(10523,'Radeon RX 570',4,1168),(10524,'Radeon RX 570',4,1168),(10525,'Radeon RX 580',8,1257),(10526,'GeForce GTX 1060 6GB',6,1506),(10527,'GeForce GTX 1660 Ti',6,1500),(10528,'Radeon RX 5700',8,1465),(10529,'Radeon RX 5700 XT',8,1770),(10530,'Radeon RX 5700 XT',8,1770),(10531,'Radeon RX 580',8,1366),(10532,'GeForce RTX 2070 SUPER',8,1605),(10533,'Radeon RX 590',8,1469),(10534,'GeForce RTX 2070 SUPER',8,1635),(10535,'GeForce RTX 2060',6,1680),(10536,'GeForce RTX 2060 SUPER',8,1470),(10537,'GeForce GTX 1660',6,1530),(10538,'GeForce GTX 1660 Super',6,1530),(10539,'GeForce RTX 2060 SUPER',8,1650),(10540,'GeForce RTX 2070',8,1410),(10541,'GeForce RTX 2080 Ti',11,1350),(10542,'GeForce RTX 2080 SUPER',8,1650),(10543,'GeForce RTX 2070 SUPER',8,1605),(10544,'Radeon RX 5700 XT',8,1605),(10545,'GeForce RTX 2080 SUPER',8,1650),(10546,'GeForce RTX 2060 SUPER',8,1470),(10547,'GeForce RTX 2070 SUPER',8,1605),(10548,'Radeon RX 5700 XT',8,1605),(10549,'GeForce RTX 2060',6,1365),(10550,'GeForce GTX 1660 Ti',6,1500),(10551,'GeForce GTX 1660 Ti',6,1500),(10552,'GeForce GTX 1660',6,1530),(10553,'GeForce RTX 2080 Ti',11,1350),(10554,'Radeon RX 5700',8,1565),(10555,'Radeon RX 570',8,1168),(10556,'GeForce RTX 2070',8,1410),(10557,'GeForce GTX 1050 Ti',4,1290),(10558,'GeForce RTX 2080 SUPER',8,1650),(10559,'GeForce RTX 2070 SUPER',8,1605),(10560,'Radeon RX 5700',8,1540),(10561,'GeForce RTX 2060 SUPER',8,1470),(10562,'GeForce RTX 2070 SUPER',8,1605),(10563,'GeForce RTX 2060',6,1365),(10564,'GeForce GTX 1650',4,1485),(10565,'GeForce RTX 2080 Ti',11,1350),(10566,'GeForce GTX 1060 3GB',3,1607),(10567,'Radeon RX 590',8,1580),(10568,'GeForce GTX 1050 Ti',4,1290),(10569,'GeForce GTX 1660 Ti',6,1500),(10570,'GeForce RTX 2080 SUPER',8,1650),(10571,'GeForce RTX 2060',6,1680),(10572,'Radeon RX 5700 XT',8,1670),(10573,'GeForce GTX 1660 Ti',6,1500),(10574,'GeForce GTX 1660 Super',6,1530),(10575,'GeForce GTX 1660',6,1530),(10576,'GeForce RTX 2070 SUPER',8,1605),(10577,'Radeon RX 580',8,1257),(10578,'GeForce RTX 2070',8,1410),(10579,'GeForce RTX 2080',8,1515),(10580,'Radeon RX 590',8,1469),(10581,'GeForce GT 1030',2,1290),(10582,'GeForce RTX 2060',6,1365),(10583,'Radeon RX 5700',8,1515),(10584,'GeForce GTX 1660 Super',6,1530),(10585,'GeForce GT 610',1,810),(10586,'GeForce RTX 2070 SUPER',8,1605),(10587,'GeForce RTX 2070 SUPER',8,1635),(10588,'Radeon RX 5700',8,1565),(10589,'GeForce GTX 1660 Ti',6,1500),(10590,'GeForce GTX 1070 Ti',8,1607),(10591,'GeForce GTX 1060 6GB',6,1518),(10592,'GeForce RTX 2070 SUPER',8,1605),(10593,'Radeon RX 5700 XT',8,1730),(10594,'Radeon RX 590',8,1469),(10595,'GeForce RTX 2080 SUPER',8,1650),(10596,'GeForce RTX 2060 SUPER',8,1470),(10597,'GeForce GTX 1060 6GB',6,1582),(10598,'Radeon RX 580',8,1257),(10599,'Radeon RX 5700 XT',8,1650);
/*!40000 ALTER TABLE `pcgraphicscard` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-30 14:29:14
