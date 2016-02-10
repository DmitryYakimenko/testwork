-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 192.168.1.38    Database: testwork
-- ------------------------------------------------------
-- Server version	5.6.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `task_id` smallint(7) unsigned NOT NULL AUTO_INCREMENT,
  `task_name` varchar(45) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '0',
  `task_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`task_id`),
  UNIQUE KEY `task_id_UNIQUE` (`task_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,'Задача 1',1,'2016-02-09 15:45:37'),(2,'Задание 2',0,'2016-02-09 16:07:56'),(3,'Задача 3',0,'2016-02-09 18:42:56'),(4,'Задание 4',0,'2016-02-09 18:49:58'),(5,'Задание 5',0,'2016-02-09 18:52:58'),(6,'Задача 6',0,'2016-02-09 19:01:05'),(7,'sdfsdfsd',1,'2016-02-09 19:11:36'),(8,'Главное задание',0,'2016-02-10 09:59:05'),(9,'Задание ++',1,'2016-02-10 10:17:57'),(10,'Задача +',0,'2016-02-10 10:19:14'),(11,'Не сложная задача',1,'2016-02-10 10:24:39'),(12,'Задача +1',1,'2016-02-10 10:25:34'),(13,'Задача +2',1,'2016-02-10 10:27:52'),(14,'fghhfgh',1,'2016-02-10 10:39:06'),(15,'sdfsdfsdfsd',1,'2016-02-10 10:46:02'),(16,'ssdasdaddggg',1,'2016-02-10 10:46:08'),(17,'dgdgg',1,'2016-02-10 12:20:11'),(18,'dfgdfgdf',1,'2016-02-10 12:41:34'),(19,'Hello!',1,'2016-02-10 12:50:16');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-10 16:23:30
