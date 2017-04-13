-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: lbms
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `isbn` varchar(20) NOT NULL,
  `book name` varchar(50) NOT NULL,
  `author name` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `self no` int(11) NOT NULL,
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES ('123-456-789','爱因斯坦谈人生','杜卡斯','传记',10),('12312','百年孤独','马尔克斯','文学',7),('135520','北岛诗选','北岛','诗歌',7),('14789','变化社会中的政治秩序','塞缪尔','政治',18),('1968','博尔赫斯短篇小说集','博尔赫斯','外国文学',18),('45564','城堡','卡夫卡','外国文学',50),('7988','存在与时间','海德格尔','哲学',18);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrow`
--

DROP TABLE IF EXISTS `borrow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `borrow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student id` varchar(20) NOT NULL,
  `book id` varchar(50) NOT NULL,
  `borrow date` date NOT NULL,
  `return date` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrow`
--

LOCK TABLES `borrow` WRITE;
/*!40000 ALTER TABLE `borrow` DISABLE KEYS */;
INSERT INTO `borrow` VALUES (1,'1202031','12312','2017-02-28','2017-03-07',1),(2,'1202024','12312','2017-02-28','2017-03-07',1),(3,'1202036','135520','2017-02-28','2017-03-07',1),(4,'1202043','123-456-789','2017-02-28','2017-03-07',1),(5,'1202031','12312','2017-03-01','2017-03-08',1),(6,'1202031','12312','2017-03-01','2017-03-08',0),(7,'1202031','12312','2017-03-01','2017-03-08',0),(8,'1202031','135520','2017-03-02','2017-03-09',1),(9,'1202031','135520','2017-03-02','2017-03-09',1),(10,'1202031','135520','2017-03-02','2017-03-09',0),(11,'1202031','12312','2017-03-02','2017-03-09',0),(12,'1002004','123-456-789','2017-04-12','2017-04-19',0),(13,'201549434','1968','2017-04-13','2017-04-20',1),(14,'201549434','123-456-789','2017-04-13','2017-04-20',0);
/*!40000 ALTER TABLE `borrow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `returns`
--

DROP TABLE IF EXISTS `returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `returns` (
  `id` int(11) NOT NULL,
  `student id` varchar(20) NOT NULL,
  `book id` varchar(50) NOT NULL,
  `return date` date NOT NULL,
  `fine` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `id` FOREIGN KEY (`id`) REFERENCES `borrow` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `returns`
--

LOCK TABLES `returns` WRITE;
/*!40000 ALTER TABLE `returns` DISABLE KEYS */;
INSERT INTO `returns` VALUES (1,'1202031','12312','2017-03-02',0),(2,'1202024','12312','2017-03-02',0),(3,'1202036','135520','2017-03-02',0),(4,'1202043','123-456-789','2017-03-02',0),(5,'1202031','12312','2017-04-12',175),(8,'1202031','135520','2017-03-02',0),(9,'1202031','135520','2017-03-02',0),(13,'201549434','1968','2017-04-13',0);
/*!40000 ALTER TABLE `returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `Id` int(11) NOT NULL,
  `First Name` varchar(20) NOT NULL,
  `Last Name` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Phone No` varchar(20) NOT NULL,
  `Address` varchar(80) NOT NULL,
  `Gender` int(11) NOT NULL,
  `MS` int(11) NOT NULL,
  `Dept` varchar(15) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1002004,'紫宫','初雪','harun.cse@hstu.com','12346','中南海一号',1,2,'SE'),(1102009,'尚山','夏香','u.h@test.com','01950230498','天堂路一号',2,2,'CS'),(1102015,'刘','如花','sumya.hstu@gmail.com','0172XXXXXXX','天山人间二号',2,1,'CS'),(1202002,'唐纳德','老宫','hasan@test.com','017xxxxxxxx','创新路59号',1,1,'SE'),(1202007,'海蜇王','田纳西','juthy@test.com','017xxxx58xx','藏精阁119号',1,1,'EE'),(1202014,'菲拉','拉稀','agef@test.com','10904343','人民路一号',1,1,'SE'),(1202024,'普罗','摩尔','rasha@roy.com','017XXXXXXX9','外滩路十八号',1,2,'CS'),(201549434,'刘','斌','12343@test.com','10086','二舍A119',1,2,'SE');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  PRIMARY KEY (`user name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin','a','admin@test.com'),('admin1','a1','admin1@test.com'),('admin2','a2','admin2@test.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-13 11:55:52
