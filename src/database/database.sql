USE `heroku_6fa037995bc57eb`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- ------------------------------------------------------
--
-- Table structure for table `cliente`
--

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

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idcliente` int(11)  AUTO_INCREMENT,
  `primernombre` varchar(250) ,
  `segundonombre` varchar(250) ,
  `primerapellido` varchar(250) ,
  `segundoapellido` varchar(250) ,
  `documento` int(15) ,
  `phone` int(15) ,
  `direccion` varchar(300) ,
  `email` varchar(250) ,
  `datetimeCreated` timestamp default current_timestamp,

  PRIMARY KEY (`idcliente`),
  KEY `addedByDocumentoId1idx` (`documento`),
  
  --CONSTRAINT `addedbyusuario1Fk1` FOREIGN KEY (`idcliente`) REFERENCES `vehiculo` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  --CONSTRAINT `addedbyusuario2Fk2` FOREIGN KEY (`documento`) REFERENCES `vehiculo` (`documento`) ON DELETE NO ACTION ON UPDATE NO ACTION
    
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculo`
--

DROP TABLE IF EXISTS `vehiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiculo` (
  `idvehiculo` int(11)  AUTO_INCREMENT,
  `idcliente` int(11),
  `documento` int(15) ,
  `placa` varchar(250) ,
  `modelo` varchar(250) ,
  `color` varchar(250) ,
  `tipo` varchar(250) ,
  `datetimeCreated`  timestamp default current_timestamp ,

  PRIMARY KEY (`idvehiculo`),
  KEY `addedByClientevehiculoId1idx` (`idcliente`),
  KEY `addedByClientedocumentoId1idx` (`documento`),
  
  --CONSTRAINT `vehiculoFk1` FOREIGN KEY (`idvehiculo`) REFERENCES `mantenimiento` (`idvehiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vehiculo`
--

LOCK TABLES `vehiculo` WRITE;
/*!40000 ALTER TABLE `vehiculo` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantenimiento`
--


DROP TABLE IF EXISTS `mantenimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantenimiento` (
  `idmantenimiento` int(11)  AUTO_INCREMENT,
  `idvehiculo` int(11),
  `idservicio` int(11),
  `descripcionmantenimiento` varchar(350),
  `imagen` varchar(300),
  `fotomantenimiento` varchar(1000) ,
  `datetimeCreated`  timestamp default current_timestamp ,

  PRIMARY KEY (`idmantenimiento`),
  KEY `addedByMantenimientovehiculoId1idx` (`idvehiculo`),
  KEY `addedByServicioMantenId1idx` (`idservicio`),
  
  --CONSTRAINT `serviciomantenimientoFk1` FOREIGN KEY (`idservicio`) REFERENCES `servicio` (`idservicio`) ON DELETE NO ACTION ON UPDATE NO ACTION
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mantenimiento`
--

LOCK TABLES `mantenimiento` WRITE;
/*!40000 ALTER TABLE `mantenimiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantenimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mecanico`
--


DROP TABLE IF EXISTS `mecanico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mecanico` (
  `idmecanico` int(11)  AUTO_INCREMENT,
  `mecprimernombre` varchar(250) ,
  `mecsegundonombre` varchar(250) ,
  `meccprimerapellido` varchar(250) ,
  `mecsegundoapellido` varchar(250) ,
  `mecdocumento` int(15) ,
  `mecphone` int(15) ,
  `mecdireccion` varchar(300) ,
  `mecemail` varchar(250) ,
  `mecdatetimeCreated`  timestamp default current_timestamp ,

  PRIMARY KEY (`idmecanico`),
  
  --CONSTRAINT `mecanicoFk1` FOREIGN KEY (`idmecanico`) REFERENCES `servicio` (`idmecanico`) ON DELETE NO ACTION ON UPDATE NO ACTION
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mecanico`
--

LOCK TABLES `mecanico` WRITE;
/*!40000 ALTER TABLE `mecanico` DISABLE KEYS */;
/*!40000 ALTER TABLE `mecanico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repuestos`
--


DROP TABLE IF EXISTS `repuestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repuestos` (
  `idrepuestos` int(11)  AUTO_INCREMENT,
  `idservicio` int(11),
  `nombrerepuesto` varchar(350) ,
  `preciounidad` int(15) ,
  `numerounidades` int(20) ,
  `descuento` int(10) ,
  `datetimeCreated`  timestamp default current_timestamp ,

  PRIMARY KEY (`idrepuestos`),
  KEY `addedByServicio1idx` (`idservicio`),
  
  --CONSTRAINT `servrepuestosFk1` FOREIGN KEY (`idservicio`) REFERENCES `servicio` (`idservicio`) ON DELETE NO ACTION ON UPDATE NO ACTION
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `repuestos`
--

LOCK TABLES `repuestos` WRITE;
/*!40000 ALTER TABLE `repuestos` DISABLE KEYS */;
/*!40000 ALTER TABLE `repuestos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicio`
--


DROP TABLE IF EXISTS `servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicio` (
  `idservicio` int(11)  AUTO_INCREMENT,
  `idmecanico` int(11),
  `idrepuestos` int(11),
  `nombre` varchar(350) ,
  `precioobra` int(15) ,
  `datetimeCreated`  timestamp default current_timestamp ,

  PRIMARY KEY (`idservicio`),
  KEY `addedBymecanicoId1idx` (`idmecanico`),
  KEY `addedByrepuestosId1idx` (`idrepuestos`)
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `repuestos`
--

LOCK TABLES `servicio` WRITE;
/*!40000 ALTER TABLE `servicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicio` ENABLE KEYS */;
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
