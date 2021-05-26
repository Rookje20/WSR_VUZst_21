-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: car_tracking
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car` (
  `idcar` int NOT NULL,
  `type_car` varchar(45) NOT NULL,
  `color_car` varchar(45) NOT NULL,
  PRIMARY KEY (`idcar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game` (
  `idgame` int NOT NULL,
  `idcar` int NOT NULL,
  `idstart` int NOT NULL,
  `idsetting` int NOT NULL,
  PRIMARY KEY (`idgame`),
  KEY `idcar_idx` (`idcar`),
  KEY `idsetting_idx` (`idsetting`),
  KEY `idcarr_idx` (`idcar`),
  KEY `idsettingg_idx` (`idsetting`),
  KEY `Idstartt_idx` (`idstart`),
  CONSTRAINT `idcarr` FOREIGN KEY (`idcar`) REFERENCES `car` (`idcar`),
  CONSTRAINT `idsettingg` FOREIGN KEY (`idsetting`) REFERENCES `setting` (`idsetting`),
  CONSTRAINT `Idstartt` FOREIGN KEY (`idstart`) REFERENCES `start` (`idstart`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record`
--

DROP TABLE IF EXISTS `record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `record` (
  `idRecord` int NOT NULL,
  `IdStart` int NOT NULL,
  `Result_run` int NOT NULL,
  `Time_run` time NOT NULL,
  PRIMARY KEY (`idRecord`),
  KEY `idstartt_idx` (`IdStart`),
  KEY `idstarttt_idx` (`IdStart`),
  CONSTRAINT `idstarttt` FOREIGN KEY (`IdStart`) REFERENCES `start` (`idstart`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record`
--

LOCK TABLES `record` WRITE;
/*!40000 ALTER TABLE `record` DISABLE KEYS */;
/*!40000 ALTER TABLE `record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `run_record`
--

DROP TABLE IF EXISTS `run_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `run_record` (
  `idrun_record` int NOT NULL,
  `idcar` int NOT NULL,
  `idstart` int NOT NULL,
  `action_car` int NOT NULL,
  PRIMARY KEY (`idrun_record`),
  KEY `car_idx` (`idcar`),
  KEY `starting_idx` (`idstart`),
  CONSTRAINT `car` FOREIGN KEY (`idcar`) REFERENCES `car` (`idcar`),
  CONSTRAINT `starting` FOREIGN KEY (`idstart`) REFERENCES `start` (`idstart`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `run_record`
--

LOCK TABLES `run_record` WRITE;
/*!40000 ALTER TABLE `run_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `run_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting` (
  `idsetting` int NOT NULL,
  `idobject` int NOT NULL,
  `type_object` varchar(50) NOT NULL,
  `znach_set_obj` varchar(45) NOT NULL,
  PRIMARY KEY (`idsetting`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `start`
--

DROP TABLE IF EXISTS `start`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `start` (
  `idstart` int NOT NULL,
  `idcar` int NOT NULL,
  PRIMARY KEY (`idstart`),
  KEY `idcar_idx` (`idcar`),
  CONSTRAINT `idcar` FOREIGN KEY (`idcar`) REFERENCES `car` (`idcar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `start`
--

LOCK TABLES `start` WRITE;
/*!40000 ALTER TABLE `start` DISABLE KEYS */;
/*!40000 ALTER TABLE `start` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-26 11:27:04
