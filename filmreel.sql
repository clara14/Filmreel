-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: filmreel
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Film`
--

DROP TABLE IF EXISTS `Film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Film` (
  `film_id` int unsigned NOT NULL AUTO_INCREMENT,
  `film_name` varchar(255) NOT NULL,
  `release_date` date NOT NULL,
  `duration` smallint NOT NULL,
  `rating` varchar(5) NOT NULL,
  `image` varchar(255) NOT NULL,
  `synopsis` varchar(2000) NOT NULL,
  PRIMARY KEY (`film_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Film`
--

LOCK TABLES `Film` WRITE;
/*!40000 ALTER TABLE `Film` DISABLE KEYS */;
INSERT INTO `Film` VALUES (1,'Faces of Schlock','2008-10-05',176,'R','https://i.ibb.co/gRZmySn/film1.png','Faces of Schlock syn - Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum.'),(2,'A Good Year','2019-08-21',90,'NC-17','https://i.ibb.co/8DqwXCn/film2.png','Good Year syn - Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.'),(3,'Long Way Round','2013-01-10',179,'G','https://i.ibb.co/pPmbbs3/film3.png','Long Way Round syn - Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.'),(4,'Cool It','2015-12-16',128,'PG-13','https://i.ibb.co/PWdCRpW/film4.png','Cool it syn - Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.'),(5,'Fuzz','2019-01-23',127,'PG','https://i.ibb.co/4JZjPt7/film5.png','Fuzz syn - Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.'),(6,'Princess Protection Program','2012-02-27',147,'G','https://i.ibb.co/xgCXGzb/film6.png','PPP syn - Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla.'),(7,'Men with Guns','2015-01-12',103,'PG-13','https://i.ibb.co/HTKdgtC/film7.png','Men w Guns syn - Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo.'),(8,'Left Behind II: Tribulation Force','2010-12-17',100,'PG','https://i.ibb.co/bNPT2x0/film8.png','Left behind 2 syn - Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.'),(9,'Armadillo','2011-04-23',150,'PG','https://i.ibb.co/31GkwbR/film9.png','armadillo syn - Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero.'),(10,'Monster','2011-10-28',155,'PG-13','https://i.ibb.co/z4qGyZS/film10.png','Monster syn - Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum.'),(11,'Singles','2013-08-30',115,'G','https://i.ibb.co/nRhZK4x/film11.png','Singles syn - Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.'),(12,'Adam Resurrected','2013-06-23',138,'PG-13','https://i.ibb.co/4jf1LLb/film12.png','Adam Rezzed syn - In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio.'),(13,'Innocent Blood','2018-07-30',153,'R','https://i.ibb.co/8DcK0cX/film13.png','Innocent Blood syn - Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.'),(14,'Doomsday Book','2018-10-31',169,'PG','https://i.ibb.co/ZJShvXT/film14.png','Doomsday Book syn - In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.'),(15,'Beautiful Girl','2019-08-13',179,'G','https://i.ibb.co/cCdVzVs/film15.png','Beautiful Girl syn - In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc.'),(16,'Italian for Beginners','2017-07-18',117,'G','https://i.ibb.co/tMNzD0W/film16.png','Italian syn - Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.'),(17,'Life 2.0','2018-12-02',136,'PG-13','https://i.ibb.co/DWsCPmK/film17.png','Life two syn - In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem.'),(18,'King - Jari Litmanen, The (Kuningas Litmanen)','2011-07-02',142,'PG-13','https://i.ibb.co/mCqK19g/film18.png','King movie syn - Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.'),(19,'Homem Que Desafiou o Diabo, O','2017-04-18',138,'PG-13','https://i.ibb.co/Nj2JJBL/film19.png','Homenin movie syn - Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien.'),(20,'Karan Arjun','2009-11-12',154,'R','https://i.ibb.co/sWZSQL6/film20.png','the Karen syn - Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.');
/*!40000 ALTER TABLE `Film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Film_Genre`
--

DROP TABLE IF EXISTS `Film_Genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Film_Genre` (
  `film_id` int unsigned NOT NULL,
  `genre_id` smallint unsigned NOT NULL,
  KEY `film_id` (`film_id`),
  KEY `genre_id` (`genre_id`),
  CONSTRAINT `Film_Genre_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `Film` (`film_id`),
  CONSTRAINT `Film_Genre_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `Genre` (`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Film_Genre`
--

LOCK TABLES `Film_Genre` WRITE;
/*!40000 ALTER TABLE `Film_Genre` DISABLE KEYS */;
INSERT INTO `Film_Genre` VALUES (1,2),(1,4),(1,1),(2,8),(2,4),(3,11),(3,1),(3,5),(4,15),(4,6),(5,4),(5,9),(5,10),(6,16),(6,7),(7,1),(7,8),(8,3),(8,11),(9,15),(9,9),(10,7),(10,5),(11,2),(11,8),(12,7),(13,7),(13,1),(14,12),(14,9),(15,4),(15,13),(16,2),(16,10),(17,15),(17,6),(18,10),(18,5),(19,11),(19,14),(20,12),(20,13),(20,14);
/*!40000 ALTER TABLE `Film_Genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Genre`
--

DROP TABLE IF EXISTS `Genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Genre` (
  `genre_id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Genre`
--

LOCK TABLES `Genre` WRITE;
/*!40000 ALTER TABLE `Genre` DISABLE KEYS */;
INSERT INTO `Genre` VALUES (1,'Action'),(2,'Comedy'),(3,'Crime'),(4,'Drama'),(5,'Fantasy'),(6,'Historical'),(7,'Horror'),(8,'Romance'),(9,'Science'),(10,'Western'),(11,'Adventure'),(12,'War'),(13,'Musical'),(14,'Sports'),(15,'Documentary'),(16,'Children');
/*!40000 ALTER TABLE `Genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `List`
--

DROP TABLE IF EXISTS `List`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `List` (
  `list_id` int unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int unsigned NOT NULL,
  `list_title` varchar(255) NOT NULL,
  PRIMARY KEY (`list_id`),
  KEY `account_id` (`account_id`),
  CONSTRAINT `List_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `Users` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `List`
--

LOCK TABLES `List` WRITE;
/*!40000 ALTER TABLE `List` DISABLE KEYS */;
INSERT INTO `List` VALUES (1,16,'With the homies'),(2,9,'My Favorites'),(3,4,'For Later'),(4,19,'best action flicks'),(5,13,'Summer 2k19'),(6,20,'Dead Franchises'),(7,15,'Stupid-High Budgets'),(8,6,'Dave’s Faves'),(9,16,'Must-Watch'),(10,16,'Must-Avoid'),(11,5,'listoffilms.org'),(12,11,'date night'),(13,1,'disguising your 150 TB Homework Folder'),(14,9,'after anime hours'),(15,7,'On the way to iHop'),(16,4,'Fortnite 2 releases on 12/31/2020'),(17,4,'films to watch when your dog runs away'),(19,45,'My First List'),(20,46,'My First List'),(43,45,'boi'),(44,47,'My First List'),(50,48,'My First List'),(54,44,'asdf'),(57,44,'For the Boys'),(58,49,'My First List'),(59,49,'favorites');
/*!40000 ALTER TABLE `List` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `List_Items`
--

DROP TABLE IF EXISTS `List_Items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `List_Items` (
  `list_id` int unsigned NOT NULL,
  `film_id` int unsigned NOT NULL,
  KEY `list_id` (`list_id`),
  KEY `film_id` (`film_id`),
  CONSTRAINT `List_Items_ibfk_1` FOREIGN KEY (`list_id`) REFERENCES `List` (`list_id`) ON DELETE CASCADE,
  CONSTRAINT `List_Items_ibfk_2` FOREIGN KEY (`film_id`) REFERENCES `Film` (`film_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `List_Items`
--

LOCK TABLES `List_Items` WRITE;
/*!40000 ALTER TABLE `List_Items` DISABLE KEYS */;
INSERT INTO `List_Items` VALUES (1,1),(1,7),(1,10),(1,11),(1,9),(1,2),(2,9),(2,13),(2,5),(2,8),(2,11),(2,19),(3,13),(3,14),(3,4),(3,17),(4,7),(4,10),(4,3),(4,9),(4,14),(5,2),(5,11),(5,4),(5,14),(5,3),(6,8),(6,7),(6,12),(6,15),(6,6),(7,9),(7,17),(7,18),(7,10),(7,3),(7,4),(7,12),(7,20),(8,4),(8,17),(8,18),(8,1),(9,2),(9,3),(9,11),(9,7),(9,14),(9,13),(9,10),(9,16),(9,1),(10,6),(10,9),(10,15),(10,12),(10,20),(10,17),(10,8),(10,5),(11,2),(11,3),(11,1),(11,11),(11,20),(11,12),(12,1),(12,2),(12,20),(12,5),(12,16),(12,4),(13,3),(13,13),(13,17),(13,9),(13,6),(13,15),(13,19),(14,4),(14,5),(14,12),(14,7),(14,18),(14,13),(15,4),(15,11),(15,12),(15,17),(16,12),(16,3),(16,4),(16,17),(17,5),(17,15),(17,7),(17,18),(17,3),(17,2),(17,6),(54,1),(54,2),(54,3),(57,1),(59,8);
/*!40000 ALTER TABLE `List_Items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Review`
--

DROP TABLE IF EXISTS `Review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Review` (
  `review_id` int unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int unsigned NOT NULL,
  `film_id` int unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `score` smallint NOT NULL,
  `description` varchar(2047) DEFAULT NULL,
  `review_date` date NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `account_id` (`account_id`),
  KEY `film_id` (`film_id`),
  CONSTRAINT `Review_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `Users` (`account_id`),
  CONSTRAINT `Review_ibfk_2` FOREIGN KEY (`film_id`) REFERENCES `Film` (`film_id`),
  CONSTRAINT `Review_chk_1` CHECK (((`score` >= 1) and (`score` <= 10)))
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Review`
--

LOCK TABLES `Review` WRITE;
/*!40000 ALTER TABLE `Review` DISABLE KEYS */;
INSERT INTO `Review` VALUES (1,14,11,'Public-key',10,'justo in blandit ultrices enim lorem ipsum dolor','2019-11-24'),(2,18,18,'implementation',9,'odio cras mi pede malesuada in','2020-07-05'),(3,4,3,'Quality-focused',6,'aenean fermentum donec ut mauris','2019-04-17'),(4,8,15,'artificial intelligence',3,'nibh fusce lacus purus aliquet','2019-09-16'),(5,3,20,'Grass-roots',2,'sodales sed tincidunt eu felis','2018-11-13'),(6,19,15,'Programmable',8,'suspendisse ornare consequat lectus in est risus auctor sed','2020-04-02'),(7,4,5,'explicit',1,'sociis natoque penatibus et magnis dis parturient montes','2019-02-13'),(8,17,19,'User-centric',3,'quis libero nullam sit amet turpis elementum','2020-01-02'),(9,5,15,'secured line',10,'accumsan tellus nisi','2020-06-24'),(10,18,16,'time-frame',4,'amet diam in magna bibendum imperdiet','2019-09-23'),(11,13,14,'secondary',3,'platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget','2020-05-18'),(12,17,13,'Business-focused',7,'ipsum primis in faucibus orci luctus et ultrices','2019-04-20'),(13,9,10,'Multi-channelled',6,'duis bibendum felis','2018-10-31'),(14,14,8,'Robust',10,'ultrices erat tortor sollicitudin mi sit amet','2019-10-01'),(15,7,11,'tertiary',2,'eros suspendisse accumsan tortor quis turpis sed ante vivamus','2019-09-12'),(16,12,3,'asymmetric',4,'curae donec pharetra magna vestibulum aliquet ultrices erat tortor','2020-09-11'),(17,10,18,'Quality-focused',3,'at nibh in hac habitasse','2019-10-31'),(18,20,16,'paradigm',5,'curae mauris viverra diam vitae quam suspendisse','2018-12-09'),(19,7,9,'Fully-configurable',8,'et ultrices posuere cubilia curae','2019-05-17'),(20,20,14,'discrete',7,'ultrices phasellus id sapien in sapien iaculis congue vivamus metus','2019-01-12'),(21,4,2,'adapter',4,'lacus morbi quis tortor id nulla ultrices','2020-01-16'),(22,4,10,'mission-critical',9,'nunc nisl duis bibendum felis sed interdum venenatis turpis enim','2019-04-13'),(23,1,1,'solution-oriented',10,'placerat praesent blandit nam nulla integer pede justo','2020-02-24'),(24,6,2,'secured line',9,'erat quisque erat eros viverra eget congue eget semper rutrum','2020-06-06'),(25,5,10,'motivating',9,'vitae nisi nam ultrices libero non','2020-01-16'),(26,18,17,'Robust',9,'sed tristique in tempus sit amet sem fusce consequat nulla','2019-09-12'),(27,4,7,'matrices',1,'varius ut blandit non interdum in ante vestibulum ante','2019-08-09'),(28,1,14,'grid-enabled',3,'nascetur ridiculus mus vivamus','2020-09-30'),(29,11,9,'context-sensitive',9,'ante nulla justo aliquam quis turpis eget elit sodales','2018-10-31'),(30,19,8,'parallelism',1,'nec sem duis aliquam convallis nunc','2019-07-08'),(31,19,1,'Public-key',6,'ut blandit non interdum in ante vestibulum ante ipsum','2019-04-29'),(32,7,3,'Down-sized',10,'mattis nibh ligula','2019-06-27'),(33,19,15,'Advanced',8,'neque aenean auctor gravida sem praesent id','2020-09-05'),(34,7,1,'Vision-oriented',10,'natoque penatibus et magnis dis parturient montes nascetur ridiculus mus','2019-09-19'),(35,6,19,'alliance',4,'vestibulum quam sapien varius','2019-09-16'),(36,11,20,'attitude-oriented',6,'massa volutpat convallis morbi odio odio elementum','2019-07-08'),(37,4,6,'Virtual',3,'lectus pellentesque at nulla suspendisse potenti cras in purus eu','2018-11-16'),(38,15,16,'Enterprise-wide',9,'id massa id nisl venenatis','2020-05-03'),(39,15,8,'multi-tasking',9,'lectus pellentesque at','2020-08-20'),(40,15,14,'Ergonomic',2,'dapibus augue vel accumsan tellus nisi','2020-01-01'),(41,1,6,'Profit-focused',7,'consequat nulla nisl nunc nisl duis bibendum felis sed','2019-07-30'),(42,3,16,'Phased',10,'a feugiat et','2020-02-14'),(43,14,20,'directional',2,'imperdiet nullam orci pede venenatis non sodales','2019-12-22'),(44,6,7,'knowledge user',6,'bibendum felis sed interdum venenatis turpis enim','2020-01-29'),(45,16,19,'User-centric',4,'ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis','2018-10-27'),(46,10,9,'collaboration',2,'vivamus in felis eu sapien cursus vestibulum proin','2019-02-18'),(47,11,16,'policy',7,'feugiat non pretium quis lectus suspendisse potenti','2019-08-12'),(48,1,1,'logistical',10,'mi integer ac neque duis bibendum morbi non quam nec','2019-04-25'),(49,5,6,'secured line',6,'condimentum curabitur in libero ut massa','2019-08-22'),(50,14,5,'Multi-tiered',6,'ante ipsum primis in','2019-06-26'),(51,16,3,'object-oriented',5,'orci eget orci','2020-08-12'),(52,19,8,'Streamlined',4,'erat nulla tempus vivamus in felis','2019-08-20'),(53,11,18,'support',1,'sed nisl nunc rhoncus dui vel sem sed sagittis','2019-06-05'),(54,7,18,'eco-centric',3,'ut nulla sed accumsan felis ut at','2020-02-29'),(55,15,20,'Phased',2,'dis parturient montes nascetur ridiculus mus vivamus vestibulum','2020-04-20'),(56,5,3,'encoding',1,'aenean sit amet justo','2019-02-22'),(57,17,15,'benchmark',10,'sollicitudin ut suscipit a feugiat et eros vestibulum ac','2019-09-09'),(58,4,8,'Realigned',9,'vulputate luctus cum sociis natoque penatibus et magnis dis parturient','2020-09-03'),(59,18,8,'Business-focused',5,'cum sociis natoque penatibus et magnis','2020-06-28'),(60,13,18,'executive',9,'tincidunt in leo maecenas pulvinar lobortis','2019-12-22'),(61,7,3,'moratorium',10,'non ligula pellentesque ultrices phasellus id sapien in sapien','2020-10-06'),(62,14,4,'Secured',4,'dapibus nulla suscipit ligula in lacus curabitur','2020-09-12'),(63,15,10,'solution',9,'nulla sed vel enim sit amet nunc viverra','2020-07-14'),(64,10,18,'intranet',9,'odio porttitor id consequat in consequat ut nulla','2019-02-08'),(65,15,3,'service-desk',3,'maecenas tincidunt lacus at velit vivamus vel','2020-01-07'),(66,13,6,'actuating',7,'vivamus in felis eu sapien cursus vestibulum proin eu','2020-04-17'),(67,5,12,'clear-thinking',6,'aliquam erat volutpat','2020-05-12'),(68,4,18,'installation',9,'id nulla ultrices aliquet maecenas leo','2020-09-16'),(69,14,3,'clear-thinking',7,'id sapien in sapien iaculis congue vivamus','2020-07-11'),(70,3,18,'4th generation',7,'mauris ullamcorper purus sit amet nulla quisque','2020-10-15'),(71,1,2,'Organic',3,'nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus','2019-02-24'),(72,16,6,'Assimilated',5,'interdum mauris ullamcorper','2018-10-31'),(73,3,2,'Seamless',7,'nunc viverra dapibus nulla suscipit ligula in lacus','2018-10-28'),(74,8,2,'standardization',3,'ac neque duis bibendum morbi non quam nec','2019-11-28'),(75,16,18,'global',4,'consequat morbi a ipsum integer a','2019-10-30'),(76,11,16,'Focused',4,'eleifend pede libero quis orci nullam molestie','2020-10-13'),(77,17,19,'disintermediate',9,'fusce congue diam id ornare imperdiet','2020-08-16'),(78,9,20,'Fully-configurable',1,'imperdiet nullam orci pede venenatis non sodales sed tincidunt','2019-12-31'),(79,9,3,'dedicated',9,'sem fusce consequat nulla nisl nunc nisl duis','2020-04-26'),(80,16,1,'24/7',2,'primis in faucibus orci luctus et','2020-06-09'),(81,9,16,'Re-contextualized',6,'id ligula suspendisse ornare consequat lectus in est risus','2019-06-29'),(82,14,13,'alliance',2,'vestibulum vestibulum ante','2020-02-28'),(83,10,11,'Up-sized',2,'nunc vestibulum ante ipsum primis in faucibus','2019-09-15'),(84,5,7,'Vision-oriented',6,'diam nam tristique tortor eu pede','2020-08-09'),(85,20,13,'Multi-layered',8,'augue vel accumsan tellus nisi eu orci mauris lacinia','2020-08-16'),(86,9,13,'Automated',9,'turpis nec euismod','2018-10-21'),(87,10,7,'Horizontal',9,'et ultrices posuere cubilia curae duis faucibus accumsan odio','2019-04-08'),(88,16,2,'workforce',10,'praesent lectus vestibulum quam sapien varius ut blandit','2019-11-26'),(89,20,16,'definition',6,'amet turpis elementum ligula','2019-03-10'),(90,16,7,'Programmable',9,'ipsum dolor sit amet consectetuer adipiscing elit proin risus','2020-09-25'),(91,6,8,'algorithm',3,'turpis eget elit sodales scelerisque mauris sit','2019-06-27'),(92,6,19,'Proactive',6,'nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti','2019-08-09'),(93,18,16,'exuding',4,'lobortis est phasellus sit amet erat nulla tempus vivamus','2020-08-04'),(94,17,13,'definition',1,'blandit nam nulla integer pede justo lacinia eget tincidunt eget','2019-12-23'),(95,17,5,'project',1,'justo sit amet sapien dignissim vestibulum vestibulum ante ipsum','2019-08-22'),(96,7,1,'Intuitive',5,'mi integer ac','2020-04-04'),(97,15,14,'initiative',2,'et magnis dis parturient montes nascetur','2019-06-20'),(98,11,10,'needs-based',2,'tellus nulla ut erat id mauris vulputate elementum','2019-03-31'),(99,9,12,'web-enabled',4,'porta volutpat quam pede lobortis ligula','2019-08-26'),(100,5,16,'instruction set',2,'dui nec nisi volutpat eleifend','2020-03-19'),(105,44,2,'it was more than good',7,'but not that good','2020-12-10'),(106,44,10,'outstanding work of art',8,'that\'s my little pogchamp','2020-12-10'),(107,44,5,'big chungus ooga',6,'best science western ','2020-12-10'),(108,44,6,'frog power',9,'i like frogs ','2020-12-10'),(109,49,8,'great movie',10,'The best movie ive ever seen','2020-12-15');
/*!40000 ALTER TABLE `Review` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_review` BEFORE UPDATE ON `Review` FOR EACH ROW BEGIN
SET new.review_date = CURDATE();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `account_id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birth_date` date NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `user_type` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`),
  CONSTRAINT `Users_chk_1` CHECK ((timestampdiff(YEAR,`birth_date`,sysdate()) >= 18))
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'flivsey0','$2y$10$20yE0g8gO8EX6bVzOCBjhuus7F6HzBT36i9AWsbUjwMBrnzqKy3X.','flivsey0@blog.com','2002-10-08','Fleming','Livsey',0),(2,'mwoolham1','$2y$10$.LpVGNAdMKKv7y.XZbdcHOYd0oaqqWQP190a728IH2DHmgf8xCA6a','mwoolham1@va.gov','1990-12-26','Mariska','Woolham',0),(3,'jgerling2','$2y$10$r6pqMb5hWPcTuov6KRiX/uTXcqVo0oymb6/IfG7rcqtz5kccY4dNS','jgerling2@over-blog.com','1998-01-15','Jannelle','Gerling',0),(4,'hateggart3','$2y$10$DTt/IWjS6JmgAmSSOL/oRe98eFxLmS/pt.OJbcucEelILfQxL5Dai','hateggart3@reddit.com','1996-05-06','Honoria','Ateggart',0),(5,'cscough4','$2y$10$GP3OlJYg6ncvQoG2H6kvGuXzMLaKiyp2RbHfsq8Rw22gwifcHXSi.','cscough4@tiny.cc','1985-06-29','Chen','Scough',0),(6,'mcrunkhorn5','$2y$10$mRMulEvRlaTsVJxEoaqU4eHKj2CCDaqSI53PHFEqMyZlU4eyIxXyW','mcrunkhorn5@soup.io','1984-06-14','Michael','Crunkhorn',0),(7,'zquixley6','$2y$10$HNyi0VrTRynETVPXIwL4f.JUSUdZeQaG913hf/lCv75WwXvv369Je','zquixley6@geocities.com','1987-02-25','Zandra','Quixley',0),(8,'glerway7','$2y$10$BVw4/1MwFIUQezeZdxjyg.yK5KH9sHY.kBMAFeu.sPjED.0jHvQ/.','glerway7@dropbox.com','1992-03-13','Gerhardt','Lerway',0),(9,'awarland8','$2y$10$NYgxhk9/qEonFXlk0GjkAesGMYwNsbSe9jp7ROmkmJzKz5SH6qeHm','awarland8@illinois.edu','1997-02-22','Annette','Warland',0),(10,'emoulster9','$2y$10$ycHzDM7P9ZVEZw6s.xCjku3rw5ewRo8BU2DMV.9zJQTLTPrvJRIoW','emoulster9@facebook.com','1995-02-11','Ezra','Moulster',0),(11,'erosena','$2y$10$cL5EoXaZ6ynbUb7wtM.6BOVsSPhmJKcSuIAemZjxIb2yuZ8Q/9GuG','erosena@omniture.com','1998-06-19','Elsi','Rosen',0),(12,'egrindlayb','$2y$10$2prUAc.Q/QeU8mUCCsuiKejDuYX4E/4dhJiHRyPbP0QUuwfm.B1IK','egrindlayb@admin.ch','2000-01-26','Erinka','Grindlay',0),(13,'bspinellac','$2y$10$Z1LgH2yisPCPeI9q4VdlTuuxu.hQe.oSbVMD31Ghc2F9YdfHCzECK','bspinellac@kickstarter.com','1986-02-20','Bernie','Spinella',0),(14,'amurnamed','$2y$10$Wkl5XzyrcfHx/Hkel5fjve0I3r7sODJkjrR7ZSzaNbL8j/jIzHOtm','amurnamed@elpais.com','1983-07-08','Alane','Murname',0),(15,'mbloxame','$2y$10$Oh8MTdM79L/erHAFv18hY.33kPNCywFNQCSsgFLTZ.O4vVEzkHLG.','mbloxame@reverbnation.com','1983-12-10','Marcello','Bloxam',0),(16,'rmilbornf','$2y$10$a16ZnDFf1t2wczPUq0gTrerOZP0SpjjCeSmYu9mTrKnRkCZt.LxrW','rmilbornf@mozilla.org','2001-07-12','Rowland','Milborn',0),(17,'tmcshaneg','$2y$10$7voFfi2BbqYc32rxHAlR5uNPRk3Jr0vc4cLpbdgseDeT5Xjj.DKUS','tmcshaneg@cnbc.com','1995-04-06','Tyrone','McShane',0),(18,'tbarnwillh','$2y$10$sdMGAVAyj788djx3oa/18eb1vuxY5F00HfjqVVAsPMsID63gm4yei','tbarnwillh@oracle.com','1985-03-19','Tracie','Barnwill',0),(19,'larnolli','$2y$10$YQHQgYQEqRO0YUJT7nttyeoHHBFiXNb7BdvsPAneumXaLaj5npCMK','larnolli@discuz.net','2002-03-01','Lion','Arnoll',0),(20,'cvaleroj','$2y$10$yLbDZqP7GZPHfYawaptirek6Nqoks4rYdTalWAkOo3cLdE2MwB.FC','cvaleroj@reddit.com','1981-07-20','Corinne','Valero',0),(21,'clara14','$2y$10$qG01VEyOfXMFw4nHB1eUouz5PgTXNKIJYTppbMoD3fFLkfG/1d1he','clara14@csub.edu','1997-12-03','Cesar','Lara',1),(44,'Darian','$2y$10$JLMImAGogEzvTPsundNpxOHgk3hgVZDm0opQtcHrluCIVfQ.6gmFu','atelan551462@gmail.com','1999-01-18','Adrian','Telan',0),(45,'jtesty','$2y$10$X9L0U8QAuQbjsrug2.URFe1mnTX8gnzthq4mrIZOhRbeVYHFvOr36','jtest@yahoo.com','1980-12-06','Johnny','Test',0),(46,'jtestysss','$2y$10$ZAHdKfd.FvsEw3O5wL.XvOjP2T1fhnIaYF/GR8.ZUQ//MFFqghbye','jtest2@yahoo.com','1980-12-04','Johnny','Test',0),(47,'dudebro','$2y$10$9cek/Crf/.D6jJZ9WWCJteisp.6F7Ep3OL34YrpLsQCFRYlDINNZu','dudbro@gmail.com','1000-12-24','dude','bro',0),(48,'mikeock23','$2y$10$c2IArEPwKiPRboBI4MWN.ep6qggCVLk0svvpOiWY/v.p9sZ.pvpMK','cringeboi@hotmail.com','2000-07-10','Michael','Ock',0),(49,'aaldana2','$2y$10$EaQSWIoaTKkKJXUmVwxBsuMsFISYZC0oXJAOfx1G/jWhsA1QWdVui','aaldana2@csub.edu','1997-01-10','Abraham','Aldana',0);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `defaultlist` AFTER INSERT ON `Users` FOR EACH ROW BEGIN
DECLARE lid INT;
SELECT MAX(list_id)+1 INTO lid FROM List;
INSERT INTO List(list_id, account_id, list_title)
VALUES(lid, NEW.account_id, 'My First List');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `deactivate_user` BEFORE DELETE ON `Users` FOR EACH ROW BEGIN
DELETE FROM Review WHERE Review.account_id = OLD.account_id;
DELETE FROM List WHERE List.account_id = OLD.account_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `film_stats`
--

DROP TABLE IF EXISTS `film_stats`;
/*!50001 DROP VIEW IF EXISTS `film_stats`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `film_stats` AS SELECT 
 1 AS `film_id`,
 1 AS `film_name`,
 1 AS `release_date`,
 1 AS `duration`,
 1 AS `rating`,
 1 AS `image`,
 1 AS `reviews`,
 1 AS `avg_score`,
 1 AS `listings`,
 1 AS `genre`,
 1 AS `synopsis`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_stats`
--

DROP TABLE IF EXISTS `user_stats`;
/*!50001 DROP VIEW IF EXISTS `user_stats`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_stats` AS SELECT 
 1 AS `id`,
 1 AS `username`,
 1 AS `age`,
 1 AS `lists`,
 1 AS `films_per_list`,
 1 AS `reviews`,
 1 AS `avg_score`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `usersfilms`
--

DROP TABLE IF EXISTS `usersfilms`;
/*!50001 DROP VIEW IF EXISTS `usersfilms`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `usersfilms` AS SELECT 
 1 AS `account_id`,
 1 AS `username`,
 1 AS `age`,
 1 AS `reviews`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `young_users`
--

DROP TABLE IF EXISTS `young_users`;
/*!50001 DROP VIEW IF EXISTS `young_users`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `young_users` AS SELECT 
 1 AS `id`,
 1 AS `username`,
 1 AS `age`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `film_stats`
--

/*!50001 DROP VIEW IF EXISTS `film_stats`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `film_stats` AS select `f`.`film_id` AS `film_id`,`f`.`film_name` AS `film_name`,`f`.`release_date` AS `release_date`,`f`.`duration` AS `duration`,`f`.`rating` AS `rating`,`f`.`image` AS `image`,count(distinct `r`.`review_id`) AS `reviews`,round(avg(`r`.`score`),2) AS `avg_score`,count(distinct `li`.`list_id`) AS `listings`,group_concat(distinct `g`.`name` separator ', ') AS `genre`,`f`.`synopsis` AS `synopsis` from ((((`Film` `f` left join `Review` `r` on((`f`.`film_id` = `r`.`film_id`))) left join `List_Items` `li` on((`f`.`film_id` = `li`.`film_id`))) join `Film_Genre` `fg` on((`f`.`film_id` = `fg`.`film_id`))) join `Genre` `g` on((`fg`.`genre_id` = `g`.`genre_id`))) group by `f`.`film_id` order by `f`.`film_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_stats`
--

/*!50001 DROP VIEW IF EXISTS `user_stats`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_stats` AS select `u`.`account_id` AS `id`,`u`.`username` AS `username`,timestampdiff(YEAR,`u`.`birth_date`,sysdate()) AS `age`,count(distinct `l`.`list_id`) AS `lists`,round((count(distinct `li`.`film_id`) / nullif(count(distinct `l`.`list_id`),0)),2) AS `films_per_list`,count(distinct `r`.`review_id`) AS `reviews`,round(avg(`r`.`score`),2) AS `avg_score` from (((`Users` `u` left join `List` `l` on((`u`.`account_id` = `l`.`account_id`))) left join `Review` `r` on((`u`.`account_id` = `r`.`account_id`))) left join `List_Items` `li` on((`l`.`list_id` = `li`.`list_id`))) where (`u`.`user_type` = 0) group by `u`.`account_id` order by `u`.`account_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `usersfilms`
--

/*!50001 DROP VIEW IF EXISTS `usersfilms`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `usersfilms` AS select `u`.`account_id` AS `account_id`,`u`.`username` AS `username`,timestampdiff(YEAR,`u`.`birth_date`,sysdate()) AS `age`,count(distinct `r`.`review_id`) AS `reviews` from (`Users` `u` left join `Review` `r` on((`u`.`account_id` = `r`.`account_id`))) group by `u`.`account_id` order by `u`.`account_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `young_users`
--

/*!50001 DROP VIEW IF EXISTS `young_users`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `young_users` AS select `u`.`account_id` AS `id`,`u`.`username` AS `username`,timestampdiff(YEAR,`u`.`birth_date`,sysdate()) AS `age` from `Users` `u` where ((timestampdiff(YEAR,`u`.`birth_date`,sysdate()) <= 25) and (timestampdiff(YEAR,`u`.`birth_date`,sysdate()) >= 18)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-15  6:36:34
