CREATE DATABASE  IF NOT EXISTS `fabricacerveza` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `fabricacerveza`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: fabricacerveza
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `categoriac_tipo`
--

DROP TABLE IF EXISTS `categoriac_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoriac_tipo` (
  `IdCategoria` int NOT NULL,
  `IdTipoCategoria` int NOT NULL,
  PRIMARY KEY (`IdCategoria`,`IdTipoCategoria`),
  KEY `IdTipoCategoria` (`IdTipoCategoria`),
  CONSTRAINT `categoriac_tipo_ibfk_1` FOREIGN KEY (`IdCategoria`) REFERENCES `categoriacerveza` (`IdCategoria`),
  CONSTRAINT `categoriac_tipo_ibfk_2` FOREIGN KEY (`IdTipoCategoria`) REFERENCES `tipocategoria` (`IdTipoCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoriac_tipo`
--

LOCK TABLES `categoriac_tipo` WRITE;
/*!40000 ALTER TABLE `categoriac_tipo` DISABLE KEYS */;
INSERT INTO `categoriac_tipo` VALUES (1,1),(1,2),(2,2),(3,2),(1,3),(2,4),(2,5),(2,6),(2,7),(3,7);
/*!40000 ALTER TABLE `categoriac_tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoriacerveza`
--

DROP TABLE IF EXISTS `categoriacerveza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoriacerveza` (
  `IdCategoria` int NOT NULL AUTO_INCREMENT,
  `nombreCategoria` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoriacerveza`
--

LOCK TABLES `categoriacerveza` WRITE;
/*!40000 ALTER TABLE `categoriacerveza` DISABLE KEYS */;
INSERT INTO `categoriacerveza` VALUES (1,'Lagers'),(2,'Ales'),(3,'Dorada');
/*!40000 ALTER TABLE `categoriacerveza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cerveza`
--

DROP TABLE IF EXISTS `cerveza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cerveza` (
  `IdCerveza` int NOT NULL AUTO_INCREMENT,
  `nombreCerveza` varchar(100) DEFAULT NULL,
  `IdCategoria` int DEFAULT NULL,
  PRIMARY KEY (`IdCerveza`),
  KEY `IdCategoria` (`IdCategoria`),
  CONSTRAINT `cerveza_ibfk_1` FOREIGN KEY (`IdCategoria`) REFERENCES `categoriacerveza` (`IdCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cerveza`
--

LOCK TABLES `cerveza` WRITE;
/*!40000 ALTER TABLE `cerveza` DISABLE KEYS */;
INSERT INTO `cerveza` VALUES (1,'Aguila',1),(2,'Costeña',2),(3,'Club Colombia',3);
/*!40000 ALTER TABLE `cerveza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cerveza_materiaprima`
--

DROP TABLE IF EXISTS `cerveza_materiaprima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cerveza_materiaprima` (
  `IdCerveza` int NOT NULL,
  `IdMateriaPrima` int NOT NULL,
  PRIMARY KEY (`IdCerveza`,`IdMateriaPrima`),
  KEY `IdMateriaPrima` (`IdMateriaPrima`),
  CONSTRAINT `cerveza_materiaprima_ibfk_1` FOREIGN KEY (`IdCerveza`) REFERENCES `cerveza` (`IdCerveza`),
  CONSTRAINT `cerveza_materiaprima_ibfk_2` FOREIGN KEY (`IdMateriaPrima`) REFERENCES `materiaprima` (`IdMateriaPrima`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cerveza_materiaprima`
--

LOCK TABLES `cerveza_materiaprima` WRITE;
/*!40000 ALTER TABLE `cerveza_materiaprima` DISABLE KEYS */;
INSERT INTO `cerveza_materiaprima` VALUES (1,1),(3,1),(1,2),(2,2),(3,2),(3,3),(2,4);
/*!40000 ALTER TABLE `cerveza_materiaprima` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materiaprima`
--

DROP TABLE IF EXISTS `materiaprima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materiaprima` (
  `IdMateriaPrima` int NOT NULL AUTO_INCREMENT,
  `nombreMateriaPrima` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdMateriaPrima`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materiaprima`
--

LOCK TABLES `materiaprima` WRITE;
/*!40000 ALTER TABLE `materiaprima` DISABLE KEYS */;
INSERT INTO `materiaprima` VALUES (1,'Cebada'),(2,'Agua'),(3,'Colorantes'),(4,'Lupulo');
/*!40000 ALTER TABLE `materiaprima` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipocategoria`
--

DROP TABLE IF EXISTS `tipocategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipocategoria` (
  `IdTipoCategoria` int NOT NULL AUTO_INCREMENT,
  `nombreTipoCategoria` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdTipoCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipocategoria`
--

LOCK TABLES `tipocategoria` WRITE;
/*!40000 ALTER TABLE `tipocategoria` DISABLE KEYS */;
INSERT INTO `tipocategoria` VALUES (1,'Dark'),(2,'Pale'),(3,'Bocks'),(4,'Stouts'),(5,'Porters'),(6,'Belgians'),(7,'Sours');
/*!40000 ALTER TABLE `tipocategoria` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-31 20:39:55
