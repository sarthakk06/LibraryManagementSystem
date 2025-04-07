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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `ISBN` varchar(25) NOT NULL,
  `Book_title` varchar(80) DEFAULT NULL,
  `Category` varchar(30) DEFAULT NULL,
  `Rental_Price` decimal(10,2) DEFAULT NULL,
  `Status` enum('Yes','No') DEFAULT NULL,
  `Author` varchar(30) DEFAULT NULL,
  `Publisher` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES ('978-0-09-957807-9','A Game of Thrones','Fantasy',7.50,'Yes','George R.R. Martin','Bantam'),('978-0-14-044930-3','The Histories','History',5.50,'Yes','Herodotus','Penguin Classics'),('978-0-14-118776-1','One Hundred Years of Solitude','Literary Fiction',6.50,'Yes','Gabriel Garcia Marquez','Penguin Books'),('978-0-141-44171-6','Jane Eyre','Classic',4.00,'No','Charlotte Bronte','Penguin Classics'),('978-0-19-280551-1','The Guns of August','History',7.00,'Yes','Barbara W. Tuchman','Oxford University Press'),('978-0-307-37840-1','The Alchemist','Fiction',2.50,'Yes','Paulo Coelho','HarperOne'),('978-0-307-58837-1','Sapiens: A Brief History of Humankind','History',8.00,'No','Yuval Noah Harari','Harper Perennial'),('978-0-330-25864-8','Animal Farm','Classic',5.50,'Yes','George Orwell','Penguin Books'),('978-0-375-41398-8','The Diary of a Young Girl','History',6.50,'Yes','Anne Frank','Bantam'),('978-0-393-05081-8','A People\'s History of the United States','History',9.00,'Yes','Howard Zinn','Harper Perennial'),('978-0-393-91257-8','Guns, Germs, and Steel: The Fates of Human Societies','History',7.00,'Yes','Jared Diamond','W. W. Norton & Company'),('978-0-525-47535-5','The Great Gatsby','Classic',8.00,'Yes','F. Scott Fitzgerald','Scribner'),('978-0-553-29698-2','The Catcher in the Rye','Classic',7.00,'Yes','J.D. Salinger','Little, Brown and Company'),('978-0-679-76489-8','Harry Potter and the Sorcerer\'s Stone','Fantasy',7.00,'Yes','J.K. Rowling','Scholastic'),('978-0-7432-4722-4','The Da Vinci Code','Mystery',8.00,'Yes','Dan Brown','Doubleday'),('978-0-7432-7357-1','1491: New Revelations of the Americas Before Columbus','History',6.50,'No','Charles C. Mann','Vintage Books');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-07 15:21:50
