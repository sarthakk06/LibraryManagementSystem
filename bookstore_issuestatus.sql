-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bookstore
-- ------------------------------------------------------
-- Server version	9.2.0

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
-- Table structure for table `issuestatus`
--

DROP TABLE IF EXISTS `issuestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issuestatus` (
  `Issue_Id` varchar(10) NOT NULL,
  `Issued_cust` varchar(30) DEFAULT NULL,
  `Issued_book_name` varchar(80) DEFAULT NULL,
  `Issue_date` date DEFAULT NULL,
  `Isbn_book` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Issue_Id`),
  KEY `Issued_cust` (`Issued_cust`),
  KEY `Isbn_book` (`Isbn_book`),
  CONSTRAINT `issuestatus_ibfk_1` FOREIGN KEY (`Issued_cust`) REFERENCES `customer` (`Customer_Id`) ON DELETE CASCADE,
  CONSTRAINT `issuestatus_ibfk_2` FOREIGN KEY (`Isbn_book`) REFERENCES `books` (`ISBN`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issuestatus`
--

LOCK TABLES `issuestatus` WRITE;
/*!40000 ALTER TABLE `issuestatus` DISABLE KEYS */;
INSERT INTO `issuestatus` VALUES ('IS101','C101','The Catcher in the Rye','2023-05-01','978-0-553-29698-2'),('IS102','C102','The Da Vinci Code','2023-05-02','978-0-7432-4722-4'),('IS103','C103','1491: New Revelations of the Americas Before Columbus','2023-05-03','978-0-7432-7357-1'),('IS104','C104','Sapiens: A Brief History of Humankind','2023-05-04','978-0-307-58837-1'),('IS105','C105','The Diary of a Young Girl','2023-05-05','978-0-375-41398-8');
/*!40000 ALTER TABLE `issuestatus` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-07 15:21:49
