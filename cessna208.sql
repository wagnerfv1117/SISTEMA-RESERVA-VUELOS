-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cessna208
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `avioneta`
--

DROP TABLE IF EXISTS `avioneta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avioneta` (
  `idavioneta` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad_sillas` int(11) NOT NULL,
  `identificacion` varchar(45) NOT NULL,
  `estado` varchar(1) NOT NULL,
  PRIMARY KEY (`idavioneta`),
  UNIQUE KEY `identificacion_UNIQUE` (`identificacion`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avioneta`
--

LOCK TABLES `avioneta` WRITE;
/*!40000 ALTER TABLE `avioneta` DISABLE KEYS */;
INSERT INTO `avioneta` VALUES (1,12,'sd21','I'),(2,30,'av2345','I'),(4,25,'AV4321','I'),(5,16,'AV9567','I'),(6,14,'AEROVCESS001','A'),(7,14,'AEROVCESS002','A'),(8,14,'AEROVCESS003','A');
/*!40000 ALTER TABLE `avioneta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avioneta_silla`
--

DROP TABLE IF EXISTS `avioneta_silla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avioneta_silla` (
  `idavionetaFK` int(11) NOT NULL,
  `idsillaFK` int(11) NOT NULL,
  `estado_silla` varchar(1) NOT NULL,
  PRIMARY KEY (`idavionetaFK`,`idsillaFK`),
  KEY `fk_avioneta_has_silla_silla1_idx` (`idsillaFK`),
  KEY `fk_avioneta_has_silla_avioneta_idx` (`idavionetaFK`),
  CONSTRAINT `fk_avioneta_has_silla_avioneta` FOREIGN KEY (`idavionetaFK`) REFERENCES `avioneta` (`idavioneta`),
  CONSTRAINT `fk_avioneta_has_silla_silla1` FOREIGN KEY (`idsillaFK`) REFERENCES `silla` (`idsilla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avioneta_silla`
--

LOCK TABLES `avioneta_silla` WRITE;
/*!40000 ALTER TABLE `avioneta_silla` DISABLE KEYS */;
INSERT INTO `avioneta_silla` VALUES (6,1,'D'),(6,2,'R'),(6,3,'R'),(6,4,'R'),(6,5,'D'),(6,6,'R'),(6,9,'R'),(6,10,'D'),(6,15,'O'),(6,16,'D'),(6,17,'D'),(6,18,'D'),(6,19,'D'),(6,24,'R'),(7,1,'D'),(7,2,'O'),(7,3,'D'),(7,4,'O'),(7,5,'D'),(7,6,'O'),(7,9,'D'),(7,10,'D'),(7,15,'D'),(7,16,'D'),(7,17,'D'),(7,18,'D'),(7,19,'D'),(7,24,'O'),(8,1,'D'),(8,2,'D'),(8,3,'O'),(8,4,'O'),(8,5,'O'),(8,6,'D'),(8,9,'D'),(8,10,'D'),(8,15,'O'),(8,16,'D'),(8,17,'D'),(8,18,'D'),(8,19,'D'),(8,24,'D');
/*!40000 ALTER TABLE `avioneta_silla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pasajero`
--

DROP TABLE IF EXISTS `pasajero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pasajero` (
  `idpasajero` int(11) NOT NULL AUTO_INCREMENT,
  `identificacion` bigint(15) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `telefono` bigint(15) DEFAULT NULL,
  PRIMARY KEY (`idpasajero`),
  UNIQUE KEY `identificacion_UNIQUE` (`identificacion`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pasajero`
--

LOCK TABLES `pasajero` WRITE;
/*!40000 ALTER TABLE `pasajero` DISABLE KEYS */;
INSERT INTO `pasajero` VALUES (1,123456,'andres','moreno',31214343),(3,34533,'danilo','zuñiga',31376237),(5,543445,'pedro','Luna',64545),(7,34343,'djfhdjf','fvgg',243434),(8,1111,'sds','wdsd',3333),(9,12789,'eee','dddd',55667),(10,444444444,'wagner','no melo se',3434545),(11,3333,'juan','quintero',32432343),(12,123458,'lucas','perez',6666),(13,2333,'victor','campo',11222),(14,1245,'carlos','yepez',99000),(15,3334556,'THAIZ','RECIOLINO',565667),(16,34995429,'ROSARIO','VILLALOBOS',34555),(17,32135678,'BERNARDO','BAENA',313567890),(18,1067856251,'WAGNER','FERNANDEZ',3205186986),(19,1090396922,'CINDY','FUENTES',3122344562),(20,234567,'MAIRA','LOPEZ',312456789),(21,1077,'Danilo','Zuñiga',23432),(22,0,'juan','prueba',345643);
/*!40000 ALTER TABLE `pasajero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruta`
--

DROP TABLE IF EXISTS `ruta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ruta` (
  `idruta` int(11) NOT NULL AUTO_INCREMENT,
  `origen` varchar(45) NOT NULL,
  `destino` varchar(45) NOT NULL,
  `idvuelo` int(11) NOT NULL,
  PRIMARY KEY (`idruta`),
  KEY `fk_ruta_vuelo1_idx` (`idvuelo`),
  CONSTRAINT `fk_ruta_vuelo1` FOREIGN KEY (`idvuelo`) REFERENCES `vuelo` (`idvuelo`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruta`
--

LOCK TABLES `ruta` WRITE;
/*!40000 ALTER TABLE `ruta` DISABLE KEYS */;
INSERT INTO `ruta` VALUES (1,'Barranquilla','Bogota',1),(2,'Medellin','Cali',1),(3,'Neiva','Florencia',1),(4,'Florencia','Mocoa',1),(5,'Mocoa','Florencia',1),(6,'Florencia','Cali',1),(8,'Florencia','Cali',2),(9,'Barranquilla','Santa Marta',2),(10,'Barranquilla','Santa Marta',3),(11,'Neiva','Ibague',2),(12,'Neiva','Ibague',3),(13,'Cali','Medellin',3),(14,'Medellin','Cali',3),(15,'Medellin','Cali',2);
/*!40000 ALTER TABLE `ruta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `silla`
--

DROP TABLE IF EXISTS `silla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `silla` (
  `idsilla` int(11) NOT NULL AUTO_INCREMENT,
  `ubicacion` varchar(45) NOT NULL,
  `puesto` int(11) NOT NULL,
  `estado` varchar(1) NOT NULL,
  PRIMARY KEY (`idsilla`),
  UNIQUE KEY `puesto_UNIQUE` (`puesto`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `silla`
--

LOCK TABLES `silla` WRITE;
/*!40000 ALTER TABLE `silla` DISABLE KEYS */;
INSERT INTO `silla` VALUES (1,'Ventana',1,'A'),(2,'Pasillo',2,'A'),(3,'Ventana',3,'A'),(4,'Ventana',4,'A'),(5,'Pasillo',5,'A'),(6,'Ventana',6,'A'),(9,'Ventana',7,'A'),(10,'Pasillo',8,'A'),(15,'Ventana',9,'A'),(16,'Ventana',10,'A'),(17,'Ventana',11,'A'),(18,'Ventana',12,'A'),(19,'Pasillo',13,'A'),(24,'Pasillo',14,'A');
/*!40000 ALTER TABLE `silla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vuelo`
--

DROP TABLE IF EXISTS `vuelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vuelo` (
  `idvuelo` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(45) NOT NULL,
  `fecha` date NOT NULL,
  `hora_salida` time NOT NULL,
  `hora_llegada` time NOT NULL,
  `idavionetaFK` int(11) NOT NULL,
  PRIMARY KEY (`idvuelo`),
  UNIQUE KEY `codigo_UNIQUE` (`codigo`),
  KEY `fk_vuelo_avioneta1_idx` (`idavionetaFK`),
  CONSTRAINT `fk_vuelo_avioneta1` FOREIGN KEY (`idavionetaFK`) REFERENCES `avioneta` (`idavioneta`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vuelo`
--

LOCK TABLES `vuelo` WRITE;
/*!40000 ALTER TABLE `vuelo` DISABLE KEYS */;
INSERT INTO `vuelo` VALUES (1,'vd27','2019-04-18','13:30:00','14:15:00',6),(2,'avd454','2019-04-18','15:30:00','16:45:00',7),(3,'AV1020','2019-04-18','18:30:30','19:30:30',8);
/*!40000 ALTER TABLE `vuelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vuelo_pasajero`
--

DROP TABLE IF EXISTS `vuelo_pasajero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vuelo_pasajero` (
  `idvueloFK` int(11) NOT NULL,
  `idpasajeroFK` int(11) NOT NULL,
  `estado_abordo` varchar(2) NOT NULL,
  `origen` varchar(45) NOT NULL,
  `destino` varchar(45) NOT NULL,
  `estado_vuelo` varchar(1) NOT NULL,
  `idsillaFK` int(11) NOT NULL,
  PRIMARY KEY (`idvueloFK`,`idpasajeroFK`),
  KEY `fk_vuelo_has_pasajero_pasajero1_idx` (`idpasajeroFK`),
  KEY `fk_vuelo_has_pasajero_vuelo1_idx` (`idvueloFK`),
  CONSTRAINT `fk_vuelo_has_pasajero_pasajero1` FOREIGN KEY (`idpasajeroFK`) REFERENCES `pasajero` (`idpasajero`),
  CONSTRAINT `fk_vuelo_has_pasajero_vuelo1` FOREIGN KEY (`idvueloFK`) REFERENCES `vuelo` (`idvuelo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vuelo_pasajero`
--

LOCK TABLES `vuelo_pasajero` WRITE;
/*!40000 ALTER TABLE `vuelo_pasajero` DISABLE KEYS */;
INSERT INTO `vuelo_pasajero` VALUES (1,1,'NO','Medellin','Cali','A',15),(1,3,'NO','Florencia','Mocoa','A',2),(1,5,'NO','Neiva','Florencia','A',3),(1,7,'NO','Barranquilla','Bogota','A',24),(1,8,'NO','Neiva','Florencia','A',18),(1,9,'NO','Florencia','Mocoa','A',6),(1,10,'NO','Neiva','Florencia','A',9),(2,17,'NO','Florencia','Cali','A',1),(2,18,'NO','Florencia','Cali','A',2),(2,19,'NO','Florencia','Cali','A',4),(2,21,'SI','Florencia','Cali','A',24),(2,22,'SI','Medellin','Cali','A',6),(3,14,'NO','Neiva','Ibague','A',5),(3,15,'NO','Cali','Medellin','A',4),(3,16,'NO','Cali','Medellin','A',3),(3,20,'NO','Cali','Medellin','A',15);
/*!40000 ALTER TABLE `vuelo_pasajero` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-19 22:50:26
