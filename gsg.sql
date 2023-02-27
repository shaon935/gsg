-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: gsg
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.04.2

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'gsg');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (1,1,9),(2,1,10),(3,1,11),(4,1,12),(5,1,18),(6,1,21),(7,1,22),(8,1,23),(9,1,24),(10,1,25),(11,1,26),(12,1,27),(13,1,28),(14,1,33),(15,1,34),(16,1,35),(17,1,36),(18,1,38),(19,1,40),(20,1,41),(21,1,42),(22,1,43),(23,1,44),(24,1,57),(25,1,58),(26,1,59),(27,1,60),(28,1,65),(29,1,66),(30,1,67),(31,1,68),(32,1,97),(33,1,98),(34,1,100),(35,1,101),(36,1,102),(37,1,103),(38,1,104),(39,1,105),(40,1,106),(41,1,107),(42,1,108),(43,1,109),(44,1,110),(45,1,111),(46,1,112),(47,1,113),(48,1,114),(49,1,115),(50,1,116);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add announcement',1,'add_announcement'),(2,'Can change announcement',1,'change_announcement'),(3,'Can delete announcement',1,'delete_announcement'),(4,'Can view announcement',1,'view_announcement'),(5,'Can add article',2,'add_article'),(6,'Can change article',2,'change_article'),(7,'Can delete article',2,'delete_article'),(8,'Can view article',2,'view_article'),(9,'Can add collaborator',3,'add_collaborator'),(10,'Can change collaborator',3,'change_collaborator'),(11,'Can delete collaborator',3,'delete_collaborator'),(12,'Can view collaborator',3,'view_collaborator'),(13,'Can add committee',4,'add_committee'),(14,'Can change committee',4,'change_committee'),(15,'Can delete committee',4,'delete_committee'),(16,'Can view committee',4,'view_committee'),(17,'Can add counter',5,'add_counter'),(18,'Can change counter',5,'change_counter'),(19,'Can delete counter',5,'delete_counter'),(20,'Can view counter',5,'view_counter'),(21,'Can add event',6,'add_event'),(22,'Can change event',6,'change_event'),(23,'Can delete event',6,'delete_event'),(24,'Can view event',6,'view_event'),(25,'Can add gallery',7,'add_gallery'),(26,'Can change gallery',7,'change_gallery'),(27,'Can delete gallery',7,'delete_gallery'),(28,'Can view gallery',7,'view_gallery'),(29,'Can add group',8,'add_group'),(30,'Can change group',8,'change_group'),(31,'Can delete group',8,'delete_group'),(32,'Can view group',8,'view_group'),(33,'Can add member',9,'add_member'),(34,'Can change member',9,'change_member'),(35,'Can delete member',9,'delete_member'),(36,'Can view member',9,'view_member'),(37,'Can add page',10,'add_page'),(38,'Can change page',10,'change_page'),(39,'Can delete page',10,'delete_page'),(40,'Can view page',10,'view_page'),(41,'Can add photo gallery',11,'add_photogallery'),(42,'Can change photo gallery',11,'change_photogallery'),(43,'Can delete photo gallery',11,'delete_photogallery'),(44,'Can view photo gallery',11,'view_photogallery'),(45,'Can add program',12,'add_program'),(46,'Can change program',12,'change_program'),(47,'Can delete program',12,'delete_program'),(48,'Can view program',12,'view_program'),(49,'Can add research',13,'add_research'),(50,'Can change research',13,'change_research'),(51,'Can delete research',13,'delete_research'),(52,'Can view research',13,'view_research'),(53,'Can add resource',14,'add_resource'),(54,'Can change resource',14,'change_resource'),(55,'Can delete resource',14,'delete_resource'),(56,'Can view resource',14,'view_resource'),(57,'Can add slider',15,'add_slider'),(58,'Can change slider',15,'change_slider'),(59,'Can delete slider',15,'delete_slider'),(60,'Can view slider',15,'view_slider'),(61,'Can add testimonial',16,'add_testimonial'),(62,'Can change testimonial',16,'change_testimonial'),(63,'Can delete testimonial',16,'delete_testimonial'),(64,'Can view testimonial',16,'view_testimonial'),(65,'Can add photo file',17,'add_photofile'),(66,'Can change photo file',17,'change_photofile'),(67,'Can delete photo file',17,'delete_photofile'),(68,'Can view photo file',17,'view_photofile'),(69,'Can add article file',18,'add_articlefile'),(70,'Can change article file',18,'change_articlefile'),(71,'Can delete article file',18,'delete_articlefile'),(72,'Can view article file',18,'view_articlefile'),(73,'Can add log entry',19,'add_logentry'),(74,'Can change log entry',19,'change_logentry'),(75,'Can delete log entry',19,'delete_logentry'),(76,'Can view log entry',19,'view_logentry'),(77,'Can add permission',20,'add_permission'),(78,'Can change permission',20,'change_permission'),(79,'Can delete permission',20,'delete_permission'),(80,'Can view permission',20,'view_permission'),(81,'Can add group',21,'add_group'),(82,'Can change group',21,'change_group'),(83,'Can delete group',21,'delete_group'),(84,'Can view group',21,'view_group'),(85,'Can add user',22,'add_user'),(86,'Can change user',22,'change_user'),(87,'Can delete user',22,'delete_user'),(88,'Can view user',22,'view_user'),(89,'Can add content type',23,'add_contenttype'),(90,'Can change content type',23,'change_contenttype'),(91,'Can delete content type',23,'delete_contenttype'),(92,'Can view content type',23,'view_contenttype'),(93,'Can add session',24,'add_session'),(94,'Can change session',24,'change_session'),(95,'Can delete session',24,'delete_session'),(96,'Can view session',24,'view_session'),(97,'Can add news category',25,'add_newscategory'),(98,'Can change news category',25,'change_newscategory'),(99,'Can delete news category',25,'delete_newscategory'),(100,'Can view news category',25,'view_newscategory'),(101,'Can add news image',26,'add_newsimage'),(102,'Can change news image',26,'change_newsimage'),(103,'Can delete news image',26,'delete_newsimage'),(104,'Can view news image',26,'view_newsimage'),(105,'Can add news',27,'add_news'),(106,'Can change news',27,'change_news'),(107,'Can delete news',27,'delete_news'),(108,'Can view news',27,'view_news'),(109,'Can add publication',28,'add_publication'),(110,'Can change publication',28,'change_publication'),(111,'Can delete publication',28,'delete_publication'),(112,'Can view publication',28,'view_publication'),(113,'Can add alumni',29,'add_alumni'),(114,'Can change alumni',29,'change_alumni'),(115,'Can delete alumni',29,'delete_alumni'),(116,'Can view alumni',29,'view_alumni');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$bjOrl713dspGfboznP3qx8$cljxRoo6p8KUbXRb3GkY3FnNEgHqtdJwhxKlgkkN890=','2023-02-06 05:13:06.176647',1,'ksrahman','','','ksrahman@iub.edu.bd',1,1,'2023-01-22 03:59:43.964569'),(2,'pbkdf2_sha256$390000$MveElhaAd700mtADmk5k18$phyIvblo+DUnsqvH3W2k7FcXW5RAFIXzDAXHCGsU49I=','2023-02-09 06:39:53.915644',0,'admin','GSG Admin','User','marufa@iub.edu.bd',1,1,'2023-01-24 05:03:48.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,2,1);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-01-22 04:01:11.855176','1','Hult Prize',1,'[{\"added\": {}}]',6,1),(2,'2023-01-22 04:03:15.712261','1','REGISTRATION, Spring 2023',1,'[{\"added\": {}}]',1,1),(3,'2023-01-22 04:03:39.684138','2','TENTATIVE ACADEMIC CALENDAR, SPRING 2023 SEMESTER',1,'[{\"added\": {}}]',1,1),(4,'2023-01-22 04:06:19.874938','1','Slider object (1)',1,'[{\"added\": {}}]',15,1),(5,'2023-01-22 04:06:27.331819','2','Slider object (2)',1,'[{\"added\": {}}]',15,1),(6,'2023-01-22 04:15:52.111372','2','Trustee Award',1,'[{\"added\": {}}, {\"added\": {\"name\": \"photo file\", \"object\": \"PhotoFile object (2)\"}}, {\"added\": {\"name\": \"photo file\", \"object\": \"PhotoFile object (3)\"}}, {\"added\": {\"name\": \"photo file\", \"object\": \"PhotoFile object (4)\"}}]',11,1),(7,'2023-01-22 04:16:27.129758','2','Trustee Award',2,'[]',11,1),(8,'2023-01-22 04:17:23.254609','3','Rohingya Conference',1,'[{\"added\": {}}, {\"added\": {\"name\": \"photo file\", \"object\": \"PhotoFile object (5)\"}}, {\"added\": {\"name\": \"photo file\", \"object\": \"PhotoFile object (6)\"}}, {\"added\": {\"name\": \"photo file\", \"object\": \"PhotoFile object (7)\"}}, {\"added\": {\"name\": \"photo file\", \"object\": \"PhotoFile object (8)\"}}, {\"added\": {\"name\": \"photo file\", \"object\": \"PhotoFile object (9)\"}}]',11,1),(9,'2023-01-22 04:17:57.693583','4','Quadrangulated Quandry',1,'[{\"added\": {}}, {\"added\": {\"name\": \"photo file\", \"object\": \"PhotoFile object (10)\"}}, {\"added\": {\"name\": \"photo file\", \"object\": \"PhotoFile object (11)\"}}, {\"added\": {\"name\": \"photo file\", \"object\": \"PhotoFile object (12)\"}}, {\"added\": {\"name\": \"photo file\", \"object\": \"PhotoFile object (13)\"}}]',11,1),(10,'2023-01-22 04:22:48.615373','5','New Mega City',1,'[{\"added\": {}}, {\"added\": {\"name\": \"photo file\", \"object\": \"PhotoFile object (14)\"}}, {\"added\": {\"name\": \"photo file\", \"object\": \"PhotoFile object (15)\"}}, {\"added\": {\"name\": \"photo file\", \"object\": \"PhotoFile object (16)\"}}, {\"added\": {\"name\": \"photo file\", \"object\": \"PhotoFile object (17)\"}}]',11,1),(11,'2023-01-22 04:36:30.673099','1','Global Day',1,'[{\"added\": {}}]',25,1),(12,'2023-01-22 04:36:53.473181','2','Conference/Roundtable',1,'[{\"added\": {}}]',25,1),(13,'2023-01-22 04:43:37.608559','1','IUB observers UN Global Day 2020',1,'[{\"added\": {}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (1)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (2)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (3)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (4)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (5)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (6)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (7)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (8)\"}}]',27,1),(14,'2023-01-22 05:15:48.992307','2','International Conference on “Cultivating Competitive Cooperation” held at IUB',1,'[{\"added\": {}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (9)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (10)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (11)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (12)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (13)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (14)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (15)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (16)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (17)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (18)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (19)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (20)\"}}]',27,1),(15,'2023-01-22 05:24:05.568983','2','Conference/ Roundtable',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',25,1),(16,'2023-01-22 05:32:32.475140','3','Book Launching',1,'[{\"added\": {}}]',25,1),(17,'2023-01-22 05:32:51.390985','4','Students Competition',1,'[{\"added\": {}}]',25,1),(18,'2023-01-22 05:33:13.896918','5','Special Days Celebration',1,'[{\"added\": {}}]',25,1),(19,'2023-01-22 05:33:28.902133','6','Webinar',1,'[{\"added\": {}}]',25,1),(20,'2023-01-22 05:34:53.169278','1','overview',1,'[{\"added\": {}}]',10,1),(21,'2023-01-22 05:50:00.841497','3','Conference on \'Accountability in Bangladesh: Issues & Debates\'',1,'[{\"added\": {}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (21)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (22)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (23)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (24)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (25)\"}}]',27,1),(22,'2023-01-22 06:10:19.102352','1','Dr. Marufa Akter',1,'[{\"added\": {}}]',9,1),(23,'2023-01-22 06:11:48.269200','2','Prof. Dr. Imtiaz A Hussain',1,'[{\"added\": {}}]',9,1),(24,'2023-01-22 06:13:05.173108','3','Dr Md Shanawez Hossain',1,'[{\"added\": {}}]',9,1),(25,'2023-01-22 06:14:23.625863','4','Mr. Md. Ohidujjaman',1,'[{\"added\": {}}]',9,1),(26,'2023-01-22 06:16:41.000921','2','Prof. Dr. Imtiaz A Hussain',2,'[{\"changed\": {\"fields\": [\"Photo\"]}}]',9,1),(27,'2023-01-22 06:17:55.494650','3','Dr Md Shanawez Hossain',2,'[{\"changed\": {\"fields\": [\"Photo\"]}}]',9,1),(28,'2023-01-22 06:36:53.590672','1','ICCCAD',1,'[{\"added\": {}}]',3,1),(29,'2023-01-22 09:10:31.307381','1','Counter object (1)',1,'[{\"added\": {}}]',5,1),(30,'2023-01-23 04:58:53.442071','1','Dr. Marufa Akter',2,'[{\"changed\": {\"fields\": [\"Photo\"]}}]',9,1),(31,'2023-01-23 05:27:37.631431','1','Coronavirus Pandemic & Online Education',1,'[{\"added\": {}}]',28,1),(32,'2023-01-23 05:51:33.116815','1','Coronavirus Pandemic & Online Education',2,'[]',28,1),(33,'2023-01-23 05:54:15.913853','2','Branding Bangladesh: From ‘Bottomless Pit’ to a ‘Middle Income’ Country',1,'[{\"added\": {}}]',28,1),(34,'2023-01-23 05:55:11.254489','2','Branding Bangladesh: From ‘Bottomless Pit’ to a ‘Middle Income’ Country',2,'[{\"changed\": {\"fields\": [\"Link\"]}}]',28,1),(35,'2023-01-23 05:57:55.835392','3','Rohingya Camp Narratives',1,'[{\"added\": {}}]',28,1),(36,'2023-01-23 06:01:11.624079','4','Transatlantic Transitions',1,'[{\"added\": {}}]',28,1),(37,'2023-01-23 06:03:10.100481','5','Global-Local Tradeoffs, Order-Disorder Consequences',1,'[{\"added\": {}}]',28,1),(38,'2023-01-23 06:05:45.461197','6','South Asia in Global Power Rivalry',1,'[{\"added\": {}}]',28,1),(39,'2023-01-23 06:08:45.628721','7','Bangladesh Country Gender Assessment 2021',1,'[{\"added\": {}}]',28,1),(40,'2023-01-23 06:13:33.389810','8','Amar Sonar Bangla… a treasure-trove!',1,'[{\"added\": {}}]',28,1),(41,'2023-01-23 06:36:26.830696','1','Counter object (1)',2,'[{\"changed\": {\"fields\": [\"Option1\", \"Option2\", \"Option3\", \"Option4\"]}}]',5,1),(42,'2023-01-23 06:58:41.061321','2','icddrb',1,'[{\"added\": {}}]',3,1),(43,'2023-01-23 07:01:45.855377','3','BIGD',1,'[{\"added\": {}}]',3,1),(44,'2023-01-23 07:03:07.582635','3','BIGD',2,'[{\"changed\": {\"fields\": [\"Photo (270x130)\"]}}]',3,1),(45,'2023-01-23 07:06:25.574200','4','UNESCO',1,'[{\"added\": {}}]',3,1),(46,'2023-01-23 07:08:59.875034','5','CBOBS',1,'[{\"added\": {}}]',3,1),(47,'2023-01-23 07:41:50.035228','1','overview',2,'[]',10,1),(48,'2023-01-23 07:43:05.833447','2','research',1,'[{\"added\": {}}]',10,1),(49,'2023-01-23 07:44:02.048239','2','research',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(50,'2023-01-23 07:45:06.398040','2','research',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(51,'2023-01-23 07:46:08.551958','2','research',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(52,'2023-01-23 07:49:27.531297','2','research',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(53,'2023-01-23 07:50:55.202497','2','research',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(54,'2023-01-23 07:51:15.856442','2','research',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(55,'2023-01-23 07:51:32.200358','2','research',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(56,'2023-01-23 07:51:54.163060','2','research',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(57,'2023-01-23 07:52:14.696343','2','research',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(58,'2023-01-23 07:52:29.673223','2','research',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(59,'2023-01-23 07:53:13.508062','2','research',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(60,'2023-01-23 07:55:19.223756','2','research',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(61,'2023-01-23 07:56:26.028374','2','research',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(62,'2023-01-23 07:57:18.305210','2','research',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(63,'2023-01-23 07:58:32.436832','2','research',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(64,'2023-01-23 08:03:23.365842','2','research',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(65,'2023-01-23 08:05:40.698416','2','research',3,'',10,1),(66,'2023-01-23 08:06:01.501838','3','test',1,'[{\"added\": {}}]',10,1),(67,'2023-01-23 08:06:26.175060','3','test',3,'',10,1),(68,'2023-01-23 08:07:57.334853','4','test',1,'[{\"added\": {}}]',10,1),(69,'2023-01-23 08:08:23.630422','4','test',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(70,'2023-01-23 08:08:35.048935','4','test',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(71,'2023-01-23 08:11:41.797157','4','test',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(72,'2023-01-23 08:12:23.332772','4','research',2,'[{\"changed\": {\"fields\": [\"Pagename\", \"Title\"]}}]',10,1),(73,'2023-01-23 08:19:11.414449','4','research',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(74,'2023-01-23 08:19:37.550146','4','research',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(75,'2023-01-23 08:20:16.014834','4','research',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(76,'2023-01-23 08:20:45.876306','4','research',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(77,'2023-01-23 08:26:59.955662','4','research',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(78,'2023-01-23 08:30:44.083523','4','research',2,'[]',10,1),(79,'2023-01-23 08:31:33.613787','5','career',1,'[{\"added\": {}}]',10,1),(80,'2023-01-23 08:35:34.685760','1','Special talk on \"Bangladesh-Latin America Relations',2,'[{\"changed\": {\"fields\": [\"Title\", \"Location\", \"Event date\", \"Body\"]}}]',6,1),(81,'2023-01-23 08:47:38.507431','2','Discussion session on a book titled The Origin of Human & Development of Society: Perspective on sociocultural and political development',1,'[{\"added\": {}}]',6,1),(82,'2023-01-24 04:38:07.446453','6','hult',1,'[{\"added\": {}}]',10,1),(83,'2023-01-24 04:38:54.934626','6','hult',3,'',10,1),(84,'2023-01-24 04:40:01.128862','7','hult',1,'[{\"added\": {}}]',10,1),(85,'2023-01-24 04:40:14.572854','7','hult',3,'',10,1),(86,'2023-01-24 04:40:46.754523','8','hult',1,'[{\"added\": {}}]',10,1),(87,'2023-01-24 04:42:08.495887','8','hult',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(88,'2023-01-24 05:02:50.056637','1','gsg',1,'[{\"added\": {}}]',21,1),(89,'2023-01-24 05:03:49.184943','2','gsg',1,'[{\"added\": {}}]',22,1),(90,'2023-01-24 05:04:59.408938','2','gsg',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Groups\"]}}]',22,1),(91,'2023-01-24 05:06:04.067034','2','gsg',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',22,1),(92,'2023-01-24 05:06:10.822652','2','admin',2,'[{\"changed\": {\"fields\": [\"Username\"]}}]',22,1),(93,'2023-01-24 05:06:49.158807','2','admin',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',22,1),(94,'2023-01-27 13:41:49.972624','9','major',1,'[{\"added\": {}}]',10,1),(95,'2023-01-27 13:42:23.608771','9','major',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(96,'2023-01-27 13:42:48.651073','9','major',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(97,'2023-01-27 13:44:06.777333','9','major',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(98,'2023-01-27 13:45:39.401364','9','major',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(99,'2023-01-27 13:47:49.547390','9','major',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(100,'2023-01-27 13:49:12.931523','9','major',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(101,'2023-01-27 13:49:38.111198','9','major',2,'[]',10,1),(102,'2023-01-27 13:58:27.440906','9','major',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(103,'2023-01-27 15:33:50.710265','9','major',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(104,'2023-01-29 07:09:55.468729','9','major',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(105,'2023-01-29 07:12:05.334884','9','major',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(106,'2023-01-29 07:14:15.607010','9','major',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(107,'2023-01-29 07:22:12.359141','9','major',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(108,'2023-01-29 07:24:38.114568','9','major',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(109,'2023-01-29 07:25:57.016259','9','major',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(110,'2023-01-29 07:26:19.641412','9','major',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(111,'2023-01-29 07:29:16.587458','9','major',2,'[]',10,1),(112,'2023-01-29 07:31:10.346370','10','foundation',1,'[{\"added\": {}}]',10,1),(113,'2023-01-29 07:32:15.867774','10','foundation',2,'[]',10,1),(114,'2023-01-29 07:32:37.858254','11','minor',1,'[{\"added\": {}}]',10,1),(115,'2023-01-29 07:32:52.841637','11','minor',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',10,1),(116,'2023-01-31 08:23:35.304406','3','Slider object (3)',1,'[{\"added\": {}}]',15,1),(117,'2023-01-31 08:24:03.238908','2','Slider object (2)',2,'[{\"changed\": {\"fields\": [\"Order\"]}}]',15,1),(118,'2023-02-05 07:10:07.348496','12','studytour',1,'[{\"added\": {}}]',10,1),(119,'2023-02-05 07:47:08.662397','1','Mohammad Joy',1,'[{\"added\": {}}]',29,1),(120,'2023-02-05 07:48:41.635570','2','Subaita Fairooz',1,'[{\"added\": {}}]',29,1),(121,'2023-02-05 07:49:53.357520','2','Subaita Fairooz',2,'[]',29,1),(122,'2023-02-05 07:50:35.326569','3','Md. Ebnul Shahriar',1,'[{\"added\": {}}]',29,1),(123,'2023-02-06 03:57:16.502327','1','gsg',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',21,1),(124,'2023-02-06 05:08:58.066290','4','Workshop on Academic Writing & Integrity',1,'[{\"added\": {}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (26)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (27)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (28)\"}}]',27,2),(125,'2023-02-06 05:19:13.086260','5','Global Day Conference 2021',1,'[{\"added\": {}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (29)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (30)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (31)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (32)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (33)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (34)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (35)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (36)\"}}]',27,2),(126,'2023-02-06 05:29:10.169923','7','Workshop',1,'[{\"added\": {}}]',25,1),(127,'2023-02-06 05:31:13.537343','5','Jessica Tartila Suma',1,'[{\"added\": {}}]',9,2),(128,'2023-02-06 05:31:55.860316','4','Mr. Md. Ohidujjaman',2,'[{\"changed\": {\"fields\": [\"Order\"]}}]',9,2),(129,'2023-02-06 05:33:43.784662','4','Workshop on Academic Writing & Integrity',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',27,2),(130,'2023-02-06 05:35:41.674294','2','Discussion session on a book titled The Origin of Human & Development of Society: Perspective on sociocultural and political development',3,'',6,2),(131,'2023-02-06 05:39:26.584468','12','studytour',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',10,2),(132,'2023-02-07 08:00:59.272822','6','Workshop on Academic Writing & Integrity',1,'[{\"added\": {}}]',27,2),(133,'2023-02-07 08:08:49.644408','7','Bangabandhu’s 100th Birth Centennial and 49th Victory Day',1,'[{\"added\": {}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (37)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (38)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (39)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (40)\"}}]',27,2),(134,'2023-02-07 08:18:33.057026','8','Book Launching Event, 9 June 2022',1,'[{\"added\": {}}]',27,2),(135,'2023-02-07 08:22:01.992321','9','Book Launching Event, 28 July 2022',1,'[{\"added\": {}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (41)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (42)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (43)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (44)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (45)\"}}]',27,2),(136,'2023-02-07 08:32:23.120443','10','Conference on Accountability',1,'[{\"added\": {}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (46)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (47)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (48)\"}}]',27,2),(137,'2023-02-07 08:41:29.898308','11','	Conference on “Quadrangulated Quandary”',1,'[{\"added\": {}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (49)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (50)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (51)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (52)\"}}]',27,2),(138,'2023-02-07 08:42:04.213966','11','Conference on “Quadrangulated Quandary”',2,'[{\"changed\": {\"fields\": [\"Title\", \"Menuname\"]}}]',27,2),(139,'2023-02-07 08:46:11.204309','12','City on the Hill: Aims & Claims, Life  & Land',1,'[{\"added\": {}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (53)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (54)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (55)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (56)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (57)\"}}]',27,2),(140,'2023-02-07 09:21:57.866681','13','Workshop on Data Collection & Analysis in Social Research',1,'[{\"added\": {}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (58)\"}}]',27,2),(141,'2023-02-07 09:24:48.725703','14','Global Day, 2018',1,'[{\"added\": {}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (59)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (60)\"}}]',27,2),(142,'2023-02-07 09:39:39.259682','15','Public lecture on the “Future of Indo-Pacific Regional Coordination”',1,'[{\"added\": {}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (61)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (62)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (63)\"}}]',27,2),(143,'2023-02-08 04:36:29.358092','13','Workshop on Data Collection & Analysis in Social Research',2,'[{\"changed\": {\"fields\": [\"Body\"]}}, {\"deleted\": {\"name\": \"news image\", \"object\": \"NewsImage object (None)\"}}]',27,1),(144,'2023-02-08 04:36:55.392313','15','Public lecture on the “Future of Indo-Pacific Regional Coordination”',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',27,1),(145,'2023-02-08 04:37:13.522331','14','Global Day, 2018',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',27,1),(146,'2023-02-08 04:37:30.466409','13','Workshop on Data Collection & Analysis in Social Research',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',27,1),(147,'2023-02-08 04:37:48.625617','13','Workshop on Data Collection & Analysis in Social Research',2,'[{\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (64)\"}}]',27,1),(148,'2023-02-08 04:48:53.735774','13','internship',1,'[{\"added\": {}}]',10,1),(149,'2023-02-09 06:43:25.689740','15','Public lecture on the “Future of Indo-Pacific Regional Coordination”',2,'[{\"changed\": {\"fields\": [\"Menuname\"]}}]',27,2),(150,'2023-02-09 06:46:32.014480','16','Global Partnership for Sustainable Development focused on 50 years of US-Bangladesh Relations & Fulbright Scholarship Program.',1,'[{\"added\": {}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (65)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (66)\"}}, {\"added\": {\"name\": \"news image\", \"object\": \"NewsImage object (67)\"}}]',27,2),(151,'2023-02-12 09:12:40.236588','5','Jessica Tartila Suma',2,'[{\"changed\": {\"fields\": [\"Image (357x355)\"]}}]',9,1),(152,'2023-02-12 09:21:55.267770','13','internship',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',10,1),(153,'2023-02-12 09:22:03.679608','13','internship',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',10,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (19,'admin','logentry'),(21,'auth','group'),(20,'auth','permission'),(22,'auth','user'),(23,'contenttypes','contenttype'),(24,'sessions','session'),(29,'web','alumni'),(1,'web','announcement'),(2,'web','article'),(18,'web','articlefile'),(3,'web','collaborator'),(4,'web','committee'),(5,'web','counter'),(6,'web','event'),(7,'web','gallery'),(8,'web','group'),(9,'web','member'),(27,'web','news'),(25,'web','newscategory'),(26,'web','newsimage'),(10,'web','page'),(17,'web','photofile'),(11,'web','photogallery'),(12,'web','program'),(28,'web','publication'),(13,'web','research'),(14,'web','resource'),(15,'web','slider'),(16,'web','testimonial');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-01-22 03:59:06.110733'),(2,'auth','0001_initial','2023-01-22 03:59:06.597151'),(3,'admin','0001_initial','2023-01-22 03:59:06.716169'),(4,'admin','0002_logentry_remove_auto_add','2023-01-22 03:59:06.736275'),(5,'admin','0003_logentry_add_action_flag_choices','2023-01-22 03:59:06.747274'),(6,'contenttypes','0002_remove_content_type_name','2023-01-22 03:59:06.890656'),(7,'auth','0002_alter_permission_name_max_length','2023-01-22 03:59:06.942928'),(8,'auth','0003_alter_user_email_max_length','2023-01-22 03:59:06.977893'),(9,'auth','0004_alter_user_username_opts','2023-01-22 03:59:06.992732'),(10,'auth','0005_alter_user_last_login_null','2023-01-22 03:59:07.037435'),(11,'auth','0006_require_contenttypes_0002','2023-01-22 03:59:07.041948'),(12,'auth','0007_alter_validators_add_error_messages','2023-01-22 03:59:07.059719'),(13,'auth','0008_alter_user_username_max_length','2023-01-22 03:59:07.118473'),(14,'auth','0009_alter_user_last_name_max_length','2023-01-22 03:59:07.169878'),(15,'auth','0010_alter_group_name_max_length','2023-01-22 03:59:07.197231'),(16,'auth','0011_update_proxy_permissions','2023-01-22 03:59:07.208228'),(17,'auth','0012_alter_user_first_name_max_length','2023-01-22 03:59:07.254979'),(18,'sessions','0001_initial','2023-01-22 03:59:07.296398'),(19,'web','0001_initial','2023-01-22 03:59:07.753181'),(20,'web','0002_news_newscategory_newsimage_news_category','2023-01-22 04:33:09.772514'),(21,'web','0003_publication_alter_collaborator_photo','2023-01-23 05:20:25.293486'),(22,'web','0004_counter_option4','2023-01-23 06:33:08.936199'),(23,'web','0005_alter_member_photo_alter_news_menuname_and_more','2023-01-31 09:09:50.896192'),(24,'web','0006_alumni','2023-02-05 07:25:48.652900');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('d9yyn3hyd4v58qog2ukvualou2il4fvj','.eJxVjDsOwyAQRO9CHSED5pcyvc-AdmEJTiIsGbuKcvdgyUXSTPHmzbxZgH0rYW-0hjmxK5Ps8ssQ4pPqUaQH1PvC41K3dUZ-KPxsG5-WRK_b6f4dFGilrzVYMJY0jD3EmAflhY0ovJM2a8jSDYoSCfSYpFQ2QydoAFU00jnHPl_a_jen:1pKBWf:NPpieD3aSzyZshBbJjBfyYwcFYC0YaxCkwlGRoe-UnY','2023-02-07 05:07:17.662209'),('ktphqhog4tj160qz1q8ykdzjx0ndldzj','.eJxVjMEOwiAQRP-FsyEtLFA8eu83ENjdStVAUtqT8d9tkx70OPPezFuEuK05bI2XMJO4il5cfrsU8cnlAPSI5V4l1rIuc5KHIk_a5FiJX7fT_TvIseV9rZkVOWCLKanBWDf4vlPWkEN0HIERwTg1MexZE0zJWLSavEfgzlnx-QLytDhM:1pOtoQ:-owzwhmOjOU-jtp4Zv4S5-1Ti_FsHC8zqJcDZed0oJk','2023-02-20 05:13:06.180092'),('p098mkr93qz5i29t9wq73c7nc5v8crwc','.eJxVjMEOwiAQRP-FsyEtLFA8eu83ENjdStVAUtqT8d9tkx70OPPezFuEuK05bI2XMJO4il5cfrsU8cnlAPSI5V4l1rIuc5KHIk_a5FiJX7fT_TvIseV9rZkVOWCLKanBWDf4vlPWkEN0HIERwTg1MexZE0zJWLSavEfgzlnx-QLytDhM:1pLOyU:MeBYJakDt-F1QlsOnEUB0OsA0c4gTqI4SY68gQVw1Vg','2023-02-10 13:41:02.800458'),('qr472jmyyj4swy66wld3igmrj7e5qezc','.eJxVjMEOwiAQRP-FsyEtLFA8eu83ENjdStVAUtqT8d9tkx70OPPezFuEuK05bI2XMJO4il5cfrsU8cnlAPSI5V4l1rIuc5KHIk_a5FiJX7fT_TvIseV9rZkVOWCLKanBWDf4vlPWkEN0HIERwTg1MexZE0zJWLSavEfgzlnx-QLytDhM:1pMltG:aHdmto9BffxY9v8OSPhBVOZwwNDTA50BUil7tEQ0JrE','2023-02-14 08:21:18.028761'),('w8io2vv7lztb69ap1f6ryn9cfowypphd','.eJxVjDsOwyAQRO9CHSED5pcyvc-AdmEJTiIsGbuKcvdgyUXSTPHmzbxZgH0rYW-0hjmxK5Ps8ssQ4pPqUaQH1PvC41K3dUZ-KPxsG5-WRK_b6f4dFGilrzVYMJY0jD3EmAflhY0ovJM2a8jSDYoSCfSYpFQ2QydoAFU00jnHPl_a_jen:1pKyqi:9XJbUCM1WHbnHLUBZowz845DlIokuI1OafUeDkqJbhA','2023-02-09 09:47:16.611273'),('x069t31npsxnxvklogqgie77pm39oyu7','.eJxVjDsOwyAQRO9CHSED5pcyvc-AdmEJTiIsGbuKcvdgyUXSTPHmzbxZgH0rYW-0hjmxK5Ps8ssQ4pPqUaQH1PvC41K3dUZ-KPxsG5-WRK_b6f4dFGilrzVYMJY0jD3EmAflhY0ovJM2a8jSDYoSCfSYpFQ2QydoAFU00jnHPl_a_jen:1pKBbe:mLAPR9exBrJ0XnWJX1avsw9hSfFg28dgWACsQ6qgKvU','2023-02-07 05:12:26.016260');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_alumni`
--

DROP TABLE IF EXISTS `web_alumni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_alumni` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `std_id` varchar(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `cell` varchar(15) NOT NULL,
  `email` varchar(250) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_alumni`
--

LOCK TABLES `web_alumni` WRITE;
/*!40000 ALTER TABLE `web_alumni` DISABLE KEYS */;
INSERT INTO `web_alumni` VALUES (1,'2020644','Mohammad Joy','01752213842','2020644@iub.edu.bd','2023-02-05 07:47:08.661143','2023-02-05 07:47:08.661178'),(2,'1830024','Subaita Fairooz','01715126911','1830024@iub.edu.bd','2023-02-05 07:48:41.634526','2023-02-05 07:49:53.355375'),(3,'1610921','Md. Ebnul Shahriar','01777065299','1610921@iub.edu.bd','2023-02-05 07:50:35.325487','2023-02-05 07:50:35.325535');
/*!40000 ALTER TABLE `web_alumni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_announcement`
--

DROP TABLE IF EXISTS `web_announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_announcement` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `file` varchar(100) NOT NULL,
  `publish` datetime(6) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_announcement`
--

LOCK TABLES `web_announcement` WRITE;
/*!40000 ALTER TABLE `web_announcement` DISABLE KEYS */;
INSERT INTO `web_announcement` VALUES (1,'REGISTRATION, Spring 2023','notice/notice1001202301.pdf','2023-01-22 04:01:57.000000','2023-01-22 04:03:15.710766','2023-01-22 04:03:15.710784'),(2,'TENTATIVE ACADEMIC CALENDAR, SPRING 2023 SEMESTER','notice/tentative19012023.pdf','2023-01-22 04:03:33.000000','2023-01-22 04:03:39.682106','2023-01-22 04:03:39.682125');
/*!40000 ALTER TABLE `web_announcement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_article`
--

DROP TABLE IF EXISTS `web_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_article` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `body` longtext NOT NULL,
  `url` varchar(250) NOT NULL,
  `publish` datetime(6) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_article`
--

LOCK TABLES `web_article` WRITE;
/*!40000 ALTER TABLE `web_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_articlefile`
--

DROP TABLE IF EXISTS `web_articlefile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_articlefile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `article_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `web_articlefile_article_id_c97264ae_fk_web_article_id` (`article_id`),
  CONSTRAINT `web_articlefile_article_id_c97264ae_fk_web_article_id` FOREIGN KEY (`article_id`) REFERENCES `web_article` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_articlefile`
--

LOCK TABLES `web_articlefile` WRITE;
/*!40000 ALTER TABLE `web_articlefile` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_articlefile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_collaborator`
--

DROP TABLE IF EXISTS `web_collaborator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_collaborator` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `url` varchar(250) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `publish` datetime(6) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_collaborator`
--

LOCK TABLES `web_collaborator` WRITE;
/*!40000 ALTER TABLE `web_collaborator` DISABLE KEYS */;
INSERT INTO `web_collaborator` VALUES (1,'ICCCAD','https://www.icccad.net/','group/ICCCAD-logoHQ-1200x625.jpg','2023-01-22 06:34:23.000000','2023-01-22 06:36:53.588661','2023-01-22 06:36:53.588677'),(2,'icddrb','https://www.icddrb.org/','group/icddrb-logo.png','2023-01-23 06:57:22.000000','2023-01-23 06:58:41.058394','2023-01-23 06:58:41.058413'),(3,'BIGD','https://bigd.bracu.ac.bd/','group/bigd1.png','2023-01-23 07:01:10.000000','2023-01-23 07:01:45.853815','2023-01-23 07:03:07.581055'),(4,'UNESCO','https://www.unesco.org/en','group/UNESCO_logo_English.svg.jpg','2023-01-23 07:04:30.000000','2023-01-23 07:06:25.572328','2023-01-23 07:06:25.572346'),(5,'CBOBS','','group/1.jpg','2023-01-23 07:08:49.000000','2023-01-23 07:08:59.873709','2023-01-23 07:08:59.873725');
/*!40000 ALTER TABLE `web_collaborator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_committee`
--

DROP TABLE IF EXISTS `web_committee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_committee` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `member` longtext NOT NULL,
  `publish` datetime(6) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_committee`
--

LOCK TABLES `web_committee` WRITE;
/*!40000 ALTER TABLE `web_committee` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_committee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_counter`
--

DROP TABLE IF EXISTS `web_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_counter` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `option1` int NOT NULL,
  `option2` int NOT NULL,
  `option3` int NOT NULL,
  `publish` datetime(6) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `option4` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_counter`
--

LOCK TABLES `web_counter` WRITE;
/*!40000 ALTER TABLE `web_counter` DISABLE KEYS */;
INSERT INTO `web_counter` VALUES (1,100,5,700,'2023-01-22 09:10:21.000000','2023-01-22 09:10:31.304396','2023-01-23 06:36:26.828971',40);
/*!40000 ALTER TABLE `web_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_event`
--

DROP TABLE IF EXISTS `web_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_event` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `event_date` datetime(6) NOT NULL,
  `body` longtext NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_event`
--

LOCK TABLES `web_event` WRITE;
/*!40000 ALTER TABLE `web_event` DISABLE KEYS */;
INSERT INTO `web_event` VALUES (1,'Special talk on \"Bangladesh-Latin America Relations','Room 7010','2023-03-26 05:00:00.000000','<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Department of&nbsp; Global Studies &amp; Governance (GSG), IUB is organizing a <a name=\"_Hlk125372939\">special talk on &quot;Bangladesh-Latin America Relations</a>&quot; on January 26, 2023.&nbsp; H.E. Abida Islam, Ambassador of the People&rsquo;s Republic of Bangladesh to the United Mexican States, will be the event&#39;s speaker.&quot;</span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><img alt=\"\" src=\"/media/uploads/2023/01/23/fig-1_bangladesh-latin-america_BawhsD1.png\" style=\"height:1000px; width:1000px\" /></span></span></p>\r\n\r\n<p>&nbsp;</p>','2023-01-22 04:01:11.853923','2023-01-23 08:35:34.684181');
/*!40000 ALTER TABLE `web_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_gallery`
--

DROP TABLE IF EXISTS `web_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_gallery` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `photo` varchar(100) NOT NULL,
  `publish` datetime(6) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_gallery`
--

LOCK TABLES `web_gallery` WRITE;
/*!40000 ALTER TABLE `web_gallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_group`
--

DROP TABLE IF EXISTS `web_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_group` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `url` varchar(250) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `homephoto` varchar(100) NOT NULL,
  `publish` datetime(6) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_group`
--

LOCK TABLES `web_group` WRITE;
/*!40000 ALTER TABLE `web_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_member`
--

DROP TABLE IF EXISTS `web_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_member` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `designation` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `directory` varchar(250) NOT NULL,
  `type` varchar(10) NOT NULL,
  `order` int NOT NULL,
  `publish` datetime(6) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_member`
--

LOCK TABLES `web_member` WRITE;
/*!40000 ALTER TABLE `web_member` DISABLE KEYS */;
INSERT INTO `web_member` VALUES (1,'Dr. Marufa Akter','Assistant Professor & Head','marufa@iub.edu.bd','member/marufa.jpeg','http://directory.iub.edu.bd/staffs/515','fulltime',1,'2023-01-22 06:09:15.000000','2023-01-22 06:10:19.099681','2023-01-23 04:58:53.439554'),(2,'Prof. Dr. Imtiaz A Hussain','Professor','imtiaz.hussain@iub.edu.bd','member/imtiaz_i7ovtB1.jpg','http://directory.iub.edu.bd/staffs/183','fulltime',2,'2023-01-22 06:11:05.000000','2023-01-22 06:11:48.266764','2023-01-22 06:16:40.997641'),(3,'Dr Md Shanawez Hossain','Assistant Professor','shanawez@iub.edu.bd','member/shanewaz_ASxfOF4.jpg','http://directory.iub.edu.bd/staffs/575','fulltime',3,'2023-01-22 06:12:16.000000','2023-01-22 06:13:05.171655','2023-01-22 06:17:55.492737'),(4,'Mr. Md. Ohidujjaman','Lecturer A','jaman@iub.edu.bd','member/ohid.jpg','http://directory.iub.edu.bd/staffs/576','fulltime',5,'2023-01-22 06:13:05.000000','2023-01-22 06:14:23.622471','2023-02-06 05:31:55.858593'),(5,'Jessica Tartila Suma','Lecturer A (Study Leave: Conducting Ph.D)','jessica@iub.edu.bd','member/Jessica_Miss.png','','fulltime',4,'2023-02-06 05:21:43.000000','2023-02-06 05:31:13.533667','2023-02-12 09:12:40.232339');
/*!40000 ALTER TABLE `web_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_news`
--

DROP TABLE IF EXISTS `web_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_news` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `menuname` varchar(250) NOT NULL,
  `publish` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `web_news_category_id_a20f15e8_fk_web_newscategory_id` (`category_id`),
  CONSTRAINT `web_news_category_id_a20f15e8_fk_web_newscategory_id` FOREIGN KEY (`category_id`) REFERENCES `web_newscategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_news`
--

LOCK TABLES `web_news` WRITE;
/*!40000 ALTER TABLE `web_news` DISABLE KEYS */;
INSERT INTO `web_news` VALUES (1,'IUB observers UN Global Day 2020','<p>Global Gatekeepers Club of the Global Studies and Governance (GSG) Program of SLASS, at IUB organized day-long online events to observe the UN Global Day on October 22, 2020. As part of it, four Webinars have been implemented very successfully where external resource persons and faculties from IUB also participated and present papers, chaired the session and took part in various discussion.<br />\r\nThe very first Webinar took place in the morning on DAAD Information Session on Higher Studies in Germany. Dr. Nafisa Huq, Head, Department of Public Health at IUB talked on the topic &lsquo;Pandemic and Education&rsquo;. Mrs. Annuroopa Dixit, Mrs. Pooja Midha and Ms. Rumana Kabir were the Guest Speakers from DAAD. They highlighted the study, research and student visa requirements for Germany and explained the scholarship facilities. The event was moderated by Mr. Hossain Ahmed Taufiq from GSG Program at IUB.<br />\r\nTwo separate Webinar was held under the topic of &lsquo;Bangabandhu and Bangladesh&rsquo;s Foreign Policy&rsquo;. Country&rsquo;s renowned educationist, scholars, policymakers and professional specialists took part in presenting papers and discussing on topic. Prof. Milan Pagon, Vice Chancellor (IUB), IUB delivered welcome speech. Former Ambassador Mr. Muhammad Zamir Chaired the afternoon session and Dr. Fakrul Alam from Department of English, University of Dhaka, (First) Director, Bangabandhu Sheikh Mujib Research Institute Chaired the evening session. Ambassador (Ret.) Tariq A Karim, Senior Fellow, Bay of Bengal Institute Project at IUB and Dr. Delwar Hossain from Department of International Relations, University of Dhaka were there as respected discussants. Mr. Shahab Enam Khan from Department of International Relations, Jahangir Nagor University; Dr. Lailufar Yasmin from Department of International Relations, University of Dhaka; Dr. Niloy Ranjan Biswas from Department of International Relations, University of Dhaka; Nahian Reza from Centre for Genocide Studies, University of Dhaka; Dr. AKM Jasim Uddin from Department of History, Jahangir Nagor University; Sayed Abu Touab Shakir from Department of History, Jahangir Nagor University; GM Arifuzzaman, Research Associate, Department of History, Jahangir Nagor University; Sheikh Shams Morsalin from Department of International Relations, University of Dhaka and Md. Saifullah Akon from Department of Japanese Studies, University of Dhaka took part and spoke on the occasion. The discussants of the program highlighted Bangabandhu&#39;s pioneering role in building a progressive, all-inclusive, democratic and sovereign Bangladesh. Dr. Imtiaz A. Hussain, Dean (Acting), SLASS at IUB delivered closing remarks.<br />\r\nThe third Webinar was held with the title, &lsquo;COVID Unravelled&rsquo;. Dr. Meghna Guhathakurta, Executive Director, Research Initiatives, Bangladesh; Dr. Md. Mamun Habib, from School of Business &amp; Entrepreneurship at IUB; Dr. Mohammad Sorowar Hossain from Department of Environment Science and Management at IUB and Dr. Marsela Nyawara, Migration Health Officer (COVID 19 Response), IOM Cox&rsquo;s Bazar were the Guest Speakers of the program. Jessica Tartila Suma from Department of Media &amp; Communication at IUB moderated the session.</p>','2020','2023-01-22 04:42:02.000000','2023-01-22 04:43:37.535829','2023-01-22 04:43:37.535847',1),(2,'International Conference on “Cultivating Competitive Cooperation” held at IUB','<p>A daylong International Conference titled &ldquo;China, India &amp; the United States in Bangladesh: Cultivating Competitive Cooperation&rdquo; was implemented on February 23, 2017 at the own campus of Independent University, Bangladesh (IUB) in Bashundhara, Dhaka. The Conference was organized by the Global Studies &amp; Governance (GSG) Program at IUB. In the Inaugural Session of the Conference, US Ambassador to Bangladesh, Ms. Marcia Bernicat was present as Chief Guest. Ms. Bernicat stated that &ldquo;all India, China and the United States share the goal of a prosperous, safe and stable society for Bangladesh. USA recognize that helping Bangladesh meet its own ambitious development goals will require the good ideas and resources of more than a single country. The United States welcomes development and economic assistance from other countries and international organizations&rdquo;. &ldquo;A key issue is ensuring fair and transparent rules&rdquo;, the US Ambassador emphasized.<br />\r\nMr. Kunzang N. Tshering, Director, BIMSTEC, Bangladesh also spoke on the occasion along with former Ambassador Dr. Salehuddin Ahmed, Adjunct Professor of IUB and former Pro-Vice Chancellor of BRAC University. Welcome speech was delivered by Mr. Rashed Chowdhury, Chairman, Board of Trustees, IUB, Prof. M. Omar Rahman, Vice Chancellor, IUB; Prof. Milan Pagon, Pro-Vice Chancellor (Designate), Dr. Mahbub Alam, Dean, School of Liberal Arts and Social Sciences, IUB; Dr. Md. Abdul Khaleque, Dean, School of Environmental Science and Management, IUB and Dr. Imtiaz A. Hussain, Head of GSG Program also spoke on the occasion. Mr. Abdul Hai Sarker, Chairman, ESTCDT gave formal vote of thanks upon conclusion of inaugural session.<br />\r\nFor middle-income membership, Bangladesh requires enormous infrastructural investments in various sectors from foreign countries and corporations. At the same time, Bangladesh needs to take care of the exploding consumer needs: from automobiles, ships, to solar panels, increasingly high-end garments and pharmaceutical products, not to mention more food, fuel and fiber. Bangladesh needs to be cautious of protecting environment, women, farmers and minority groups against full-blooded market competition; dissipating security concerns; balancing infrastructural project distribution between crisscrossing Chinese, Japanese and US interests, among others; and attracting others in Southeast Asia, South Korea, Europe, or across Latin America, to come, create, and cultivate opportunities opened by this transformation. These themes, through three working sessions of the daylong Conference, were reflected in eleven insightful papers presented by renowned academics and researchers of national and international institutions that include Dr. Francisco Haro Navejas and Professor Cristina Tapia Muro from University of Colima, Mexico; Dr. Syed Mahmud Ali, formerly Associate, East Asia International Affairs Program, London School of Economics, IDEAS; former ambassador Mr. Munshi Faiz Ahmad, director, Bangladesh Institute of International and Strategic Studies; Mr. Ashfaqur Rahman, former ambassador to China; and Major General Muhammad Ashab Uddin, former ambassador to Kuwait/Yemen.<br />\r\nFormer State Minister of Foreign Affairs Mr. Abul Hasan Chowdhury, Executive Director of Center for Policy Dialogue Dr. Mustafizur Rahman, Executive Director of Research Initiatives Dr. Meghna Guhathakurta and former Ambassador to USA Mr. M. Humayun Kabir moderated different sessions and put their valuable remarks based on their long experience.<br />\r\nDuring the closing session, eminent citizens shared their first-hand experiences and expressed views on how Bangladesh can maintain and nurture important strategic relations with USA, China, India to prosper. All papers presented throughout the day were reviewed thoroughly and a comprehensive &ldquo;plan of action&rdquo; was developed eventually. There was also a widespread questions-answers session during the closing session. Foreign and local diplomats, academics, policymakers, educationists, researchers, members from faculty and administration of IUB and students attended the Conference throughout the day.</p>','International Conference: China, India & the United States in Bangladesh, Cultivating Competitive Cooperation','2023-01-22 05:14:05.000000','2023-01-22 05:15:48.894553','2023-01-22 05:15:48.894570',2),(3,'Conference on \'Accountability in Bangladesh: Issues & Debates\'','<p>A daylong Conference on &quot;Accountability in Bangladesh: Issues &amp; Debates&quot; was held at the Independent University, Bangladesh (IUB) on March 29, 2018 at the university campus in Bashundhara R/A, Dhaka. The Conference was organized by &#39;Global Studies and Governance&#39; program of the School of Liberal Arts and Social Sciences (SLASS) at IUB.<br />\r\nThe objectives of the Conference were in 2-fold; i) to identify the areas of accountability of different sectors, segments &amp; clusters in Bangladesh and ii) recommend &amp; utilize the findings and outcomes of the Conference to ensure quality higher education, good governance, individual responsibilities, humanity, integrities, economic, social and environmental advancement, decent &amp; effective media performances and health &amp; societal prosperity in Bangladesh.<br />\r\nThe inaugural session of the Conference held in the morning and the Vice Chancellor of IUB, Prof. M. Omar Rahman opened the daylong activity as the Chief Guest. Prof. Imtiaz A. Hussain, Head of Global Studies and Governance program at IUB made a thematic presentation during inaugural session. Pro-Vice Chancellor Prof. Milan Pagon and Deans of SLASS and School of Business also spoke on the occasion.<br />\r\nThroughout the day, 11 working and an extremely fruitful plenary session were held to clinch the objectives of the Conference. In total, 34 four highly credible papers were presented while country&rsquo;s renowned educationist, scholars, policymakers, civil society leaders, media experts and professional specialists took part in presenting papers and discussing on various topics &amp; issues.<br />\r\nAmong others, Dr. Atiur Rahman, former Governor of Bangladesh Bank, Dr. Mizanur Rahman, former Chairman, Bangladesh Human Rights Commission, Dr. Najmul Karim Chowdhury, Vice Chancellor, Far East International University, Dr. Anwar Hossain, Vice Chancellor, Northern University, Bangladesh, Dr. Amena Mohsin, Professor, Department of International Relations, University of Dhaka, Brigadier General (Retd.) M. Sakhawat Hossain, former Election Commissioner, Dr. Ataur Rahman, Chairman, Center for Governance Studies, Dr. Salimullah Khan, Professor, University of Liberal Arts, Dr. Farid Sobhani, Dean, Business School, Daffodil University and Mr. Muhammad Shahjahan, Additional Secretary, Finance Division, Ministry of Finance participated in this high-profile Conference as external resource persons.</p>','Conference on Accountability in Bangladesh: Issues & Debates','2018-03-29 05:48:18.000000','2023-01-22 05:50:00.778990','2023-01-22 05:50:00.779008',2),(4,'Workshop on Academic Writing & Integrity','<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Global Studies and Governance Department organized a workshop titled &#39;Academic Writing and Integrity Workshop&#39; on 18 May 2022 to raise students&#39; academic writing and integrity skills.&nbsp; The interactive workshop was conducted on both platforms with limited in person and virtually via zoom. The workshop highlighted and touched upon numerous academic literacies and writing skills such as academic English for speech and writing, avoiding plagiarism, citation and referencing, analytical writing and structuring, writing research proposal and data analysis with coding.&nbsp; The workshop began with a welcome speech by Professor Dr Imtiaz A Hussain and Dr. Marufa Akter, assistant Professor and Head, Global Studies, and Governance (GSG) Department. The whole event covered by Dr. Shanawez Hossain, Assistant Professor and Lecturer Raian Hossain, GSG. As part of the academic commitment, the Department of Global Studies and Governance (GSG) is organizing a series of Academic Literacy Workshops for whole IUB students from 2021 onwards.</span></span></span></span></p>','Workshop on Academic Writing & Integrity','2023-02-06 05:04:17.000000','2023-02-06 05:08:57.393654','2023-02-06 05:33:43.781681',7),(5,'Global Day Conference 2021','<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\"><span style=\"font-family:&quot;Cambria&quot;,serif\"><span style=\"color:black\">Global Studies &amp; Governance (GSG) organized the annual flagship event, &ldquo;Global Day&rsquo;&rsquo; on 24th October 2021 with a day-long conference focused on three themes: Governing Nature, Governing Bay of Bengal and Governing Sustainability. His Excellency Dr A. K. Abdul Momen, Honorable Foreign Minister of Bangladesh; His Excellency Mr Earl Miller, Ambassador of United States of America to Bangladesh; His Excellency Mr ITO Naoki, Ambassador of Japan to Bangladesh; His Excellency Mr Vikram Doraiswami, High Commissioner of India to Bangladesh; Ms Mia Seppo, UN </span></span></span><span style=\"font-size:14.0pt\"><span style=\"font-family:&quot;Cambria&quot;,serif\">Resident<span style=\"color:black\"> Coordinator in Bangladesh illuminated the mega event along with other national and international distinguished speakers.</span></span></span></span></span></p>','2021','2023-02-06 05:16:09.000000','2023-02-06 05:19:08.993122','2023-02-06 05:19:08.993138',1),(6,'Workshop on Academic Writing & Integrity','<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Global Studies and Governance Department is organised a<a name=\"_Hlk95419470\">workshop titled &#39;Academic Writing and Reading Workshop&#39;</a> on 22 September 2022 to raise students&#39; academic writing and reading skills.&nbsp; The workshop highlighted and touched upon numerous academic writing and reading skills such as academic English for speech and writing, avoiding plagiarism, citation and referencing, analytical writing and structuring, writing research proposal and data analysis with coding.&nbsp; The workshop covered by Professor Dr Imtiaz A Hussain and Assistant Professor Dr. Shanawez Hossain, Global Studies and Governance Department.&nbsp; Faculties of Global Studies and Governance Department, Professor Dr Imtiaz A Hussain, Assistant Professor Dr Shanawez Hossain, Senior Lecturer Md Ohidujjaman and Lecturer Ashiqur Rahman Ahnaf also conducted different sessions of the workshop. As part of the academic commitment, the Department of Global Studies and Governance (GSG) is organizing a series of Academic Literacy Workshops for whole IUB students from 2021 onwards.</span></span></span></span></p>','Workshop on Academic Writing & Integrity, 22 September 2022','2023-02-07 05:12:18.000000','2023-02-07 08:00:59.270701','2023-02-07 08:00:59.270717',7),(7,'Bangabandhu’s 100th Birth Centennial and 49th Victory Day','<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\"><span style=\"font-family:&quot;Cambria&quot;,serif\">GSG observed <strong>Bangabandhu&rsquo;s 100<sup>th</sup> Birth Centennial and 49<sup>th</sup> Victory Day</strong> of the country by arranging the <strong>Bangabandhu Essay Competition and verbal contests</strong> for high school students and <strong>IUB&rsquo;s Freedom Fighters Trustees Recognition</strong> on 10 December 2020.&nbsp; His Excellency Mr A K M Mozammel Haque, Honorable Minister, Ministry of Liberation War Affairs, Bangladesh illuminated the mega event as Chief Guest.</span></span></span></span></p>','Bangabandhu’s 100th Birth Centennial and 49th Victory Day','2023-02-07 08:02:28.000000','2023-02-07 08:08:49.336372','2023-02-07 08:08:49.336389',5),(8,'Book Launching Event, 9 June 2022','<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Independent University, Bangladesh&#39;s (IUB) School of Liberal Arts &amp; Social Sciences (SLASS), in collaboration with the Department of Global Studies &amp; Governance (GSG), hosted a grandiloquent book-launching session today (June 9, 2022) from 4 pm at the Multi-purpose Hall, IUB. The book, &quot;<em>Global-Local Tradeoffs, Order-Disorder Consequences: &#39;State&#39; No More An Island?</em>&quot; is the third internationally published volume in the 5-year GSG history. The book was edited by&nbsp; Professor Dr. Imtiaz A Hussain, founder of the department of the Global Studies &amp; Governance (GSG), IUB and published by the prestigious international publishing house, Palgrave Macmillan.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">The State Minister for Foreign Affairs of the People&#39;s Republic of Bangladesh, Md. Shahriar Alam, MP, joined the event as a chief guest and gave his noteworthy remarks. Eminent Professor Dr. Imtiaz Ahmed from the Department of International Relations, University of Dhaka and Mr.</span></span> <span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Abul Hasan Chowdhury, the former State Minister of Foreign Affairs of Bangladesh, enlightened the event as special guests. The book synopsis was presented by the book&#39;s editor, Professor Dr. Imtiaz A Hussain. Professor Dr. Amena Mohsin from the Department of International Relations, Dhaka University and Professor Dr. Shahab Enam Khan from the Department of International Relations, Jahangirnagar University gave their appraisals from the scholar&#39;s point of view. Ms. Subaita Fairooz, a Graduate Student from the Department of Global Studies &amp; Governance (GSG), IUB, also gave her appraisals from the graduate students&#39; viewpoint. </span></span></span></span></p>','Book Launching Event, 9 June 2022','2023-02-07 08:16:05.000000','2023-02-07 08:18:33.055420','2023-02-07 08:18:33.055438',3),(9,'Book Launching Event, 28 July 2022','<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Independent University, Bangladesh&#39;s (IUB) Department of Global Studies &amp; Governance (GSG) hosted an engaging book-launching session today (July 28, 2022) from 11 am at the Multi-purpose Hall, IUB. The book <em>Rohingya Camp Narratives: Tales From the &lsquo;Lesser Roads&rsquo; Traveled</em> is the fourth internationally published volume in the 5-year GSG history. Edited by Professor Dr Imtiaz A Hussain, founder of the department of the Global Studies &amp; Governance (GSG), IUB and published by the prestigious international publishing house Palgrave Macmillan, it contains 13 chapters. </span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">The Minister for Foreign Affairs of the People&#39;s Republic of Bangladesh, Dr A. K. Abdul Momen, M.P., gave his noteworthy remarks as the chief guest. Ambassador Mr Shabbir Ahmed Chowdhury, Secretary (West), Ministry of Foreign Affairs,&nbsp; Mr Johannes van der Klaauw, UNHCR&#39;s Representative in Bangladesh and Mr Abdusattor Esoev, Chief of Mission, IOM Bangladesh, enlightened the event as special guests. Professor Hussain gave a chapter-by-chapter overview ov the book, which was substantively reviewed by two specialists: Eminent Professor Dr Meghna Guhathakurta, Executive Director, Research Initiative Bangladesh (RIB), and Dr Tasneem Siddiqui, Professor and Chairperson, Department of Political Science, University of Dhaka &amp; Founding Chair, RMMRU. </span></span></span></span></p>','Book Launching Event, 28 July 2022','2023-02-07 08:19:41.000000','2023-02-07 08:22:00.122585','2023-02-07 08:22:00.122602',3),(10,'Conference on Accountability','<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:14.0pt\"><span style=\"font-family:&quot;Cambria&quot;,serif\">A day-long Conference</span></span></strong><span style=\"font-size:14.0pt\"><span style=\"font-family:&quot;Cambria&quot;,serif\"> on &ldquo;Accountability in Bangladesh: Issues &amp; Debates&rdquo; was held on 23 March 2018 at the IUB campus.&nbsp; The objectives of the Conference were 2-fold; (a) to identify the areas of accountability of different sectors, segments &amp; clusters in Bangladesh; &amp; (b) to recommend &amp; utilise the findings and outcomes of the conference to ensure quality higher education, good governance, individual responsibilities, humanity, integrities, economic, social, and environmental advancement, decent &amp; adequate media performances and health &amp; societal prosperity in Bangladesh.</span></span></span></span></p>','Conference on Accountability','2023-02-07 08:30:33.000000','2023-02-07 08:32:23.070659','2023-02-07 08:32:23.070676',2),(11,'Conference on “Quadrangulated Quandary”','<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:14.0pt\"><span style=\"font-family:&quot;Cambria&quot;,serif\">Conference on &ldquo;Quadrangulated Quandary&rdquo;</span></span></strong><span style=\"font-size:14.0pt\"><span style=\"font-family:&quot;Cambria&quot;,serif\"> held on 4 July 2019. Scholars and policymakers have presented more than 50 research papers focused on four policy-making challenges: globalization-localization, ICT revolutions, gender-bender no-mender and environmental entrapment.&nbsp;</span></span></span></span></p>','Conference on “Quadrangulated Quandary”','2023-02-07 08:39:35.000000','2023-02-07 08:41:27.838335','2023-02-07 08:42:04.212034',2),(12,'City on the Hill: Aims & Claims, Life  & Land','<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:14.0pt\"><span style=\"font-family:&quot;Cambria&quot;,serif\">GSG Conference on Rohingya</span></span></strong><span style=\"font-size:14.0pt\"><span style=\"font-family:&quot;Cambria&quot;,serif\"> titled &ldquo;City on the Hill: Aims &amp; Claims, Life&nbsp; &amp; Land&rdquo; held on 24 January 2021. His Excellency Mr Robert Chatterton Dickson, British High Commissioner to Bangladesh, was the Chief Guest of the Inaugural session and His Excellency Ambassador Masud Bin Momen, Foreign Secretary, Ministry of Foreign Affairs, Bangladesh Chief Guest, Closing session.&nbsp;</span></span></span></span></p>','Conference on Rohingya','2023-02-07 08:43:35.000000','2023-02-07 08:46:08.765032','2023-02-07 08:46:08.765048',2),(13,'Workshop on Data Collection & Analysis in Social Research','<p><span style=\"font-size:13.999999999999998pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Global Studies and Governance Department organized a workshop titled &#39;Data Collection &amp; Analysis in Social Research&#39; on 11</span></span></span><span style=\"font-size:13.999999999999998pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><sup>th</sup></span></span></span><span style=\"font-size:13.999999999999998pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"> August 2022 to raise students&#39; in data collection and analysis in social research skills.</span></span></span><span style=\"font-size:13.999999999999998pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\"><span style=\"background-color:#ffffff\"> Mr. Mehrab Ali, Founder &amp; Executive Director, ARCED Foundation, Solutions of Things Lab (SoTLab),&nbsp;Co-founder &amp; Chairman, CaST Network Ltd,&nbsp;was facilitated the workshop.</span></span></span></span><span style=\"font-size:13.999999999999998pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">&nbsp; The interactive workshop was conducted in person. The workshop highlighted and touched upon numerous academic literacies such as data collection, social research, data analysis with coding and so on.&nbsp; The workshop began with a welcome speech by Professor Dr Imtiaz A Hussain, Global Studies, and Governance (GSG) Department and other faculties of GSG&rsquo;s had a session in the workshop. As part of the academic commitment, the Department of Global Studies and Governance (GSG) is organizing a series of Academic Literacy Workshops for IUB students from 2021 onwards.&nbsp;</span></span></span></p>','Workshop on Data Collection & Analysis in Social Research, 11th August 2022','2023-02-07 09:16:57.000000','2023-02-07 09:21:57.789790','2023-02-08 04:37:48.611294',7),(14,'Global Day, 2018','<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:14.0pt\"><span style=\"font-family:&quot;Cambria&quot;,serif\"><span style=\"color:black\">Global Studies &amp; Governance (GSG) organized the annual flagship event, &ldquo;Global Day&rsquo;&rsquo; on 24th October 2018 with a day-long conference focused on four themes: 1<sup>st</sup>: Rohin-gyas or Rohin-goes? A long-and-winding or dead-end road? 2<sup>nd</sup>: Climate Change, Static Humans, Rising Costs 3<sup>rd</sup>: Demand &amp; Governance Supply and 4<sup>th</sup>: Globalization at Bay?. His Excellency Mr. Abul Hasan Chowdhury, Honorable Former State Minister of Foreign Affairs; Dr. Rashed Uz Zaman, Professor, International Relations, Dhaka University; His Excellency Ms. Nahida Sobhan, Director General, United Nations, Ministry of Foreign Affairs, Government of Bangladesh; Dr. Lailufer Yasmin, Deputy Director, Bangladesh institute of Law and International Affairs (BILIA), Professor, International Relations, Dhaka University; His Excellency Mr. Adrian Pereira, Executive Director, North South Initiative, illuminated the mega event along with other national and international distinguished speakers.</span></span></span></span></span></p>','2018','2023-02-07 09:23:16.000000','2023-02-07 09:24:48.694755','2023-02-08 04:37:13.520686',1),(15,'Public lecture on the “Future of Indo-Pacific Regional Coordination”','<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">As part of the GSG flagship event, &ldquo;Global Day&rdquo;, the Department of Global Studies &amp; Governance (GSG) organized a series of events. Targeting the UN declaration of SDGs number 17th , the theme of the GSG Global Day this year is &ldquo;Global Partnership and Sustainable Development.&rdquo; The first episode was held on the 16th of October, 2022. The department of GSG arranged a public lecture on the &ldquo;Future of Indo-Pacific Regional Coordination&rdquo; on that day. His Excellency Dr. Ari Nathan, Indo-Pacific Regional Coordinator, U.S Embassy, Colombo, Sri Lanka, illuminated the event as the keynote speaker.</span></span></span></span></span></p>','2022 (1st Session)','2023-02-07 09:35:30.000000','2023-02-07 09:39:38.420986','2023-02-09 06:43:25.687590',1),(16,'Global Partnership for Sustainable Development focused on 50 years of US-Bangladesh Relations & Fulbright Scholarship Program.','<p><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Global Day Conference 2022:</span></span></strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"> Global Studies &amp; Governance (GSG) organized the annual flagship event, &ldquo;Global Day&rsquo;&rsquo; on 13<sup>th</sup> November 2022 with a celebration theme: Global Partnership for Sustainable Development focused on 50 years of US-Bangladesh Relations &amp; Fulbright Scholarship Program. Sharnila Hussain-Morgan, Cultural Affairs Officer, U.S. Embassy, Dhaka and Sarah McLewin, Program Officer, Fulbright Scholarship Program, Washington D.C. illuminated the seminar along with other distinguished speakers.&nbsp; </span></span></p>','2022 (2nd Session)','2023-02-09 06:43:31.000000','2023-02-09 06:46:31.755905','2023-02-09 06:46:31.755921',1);
/*!40000 ALTER TABLE `web_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_newscategory`
--

DROP TABLE IF EXISTS `web_newscategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_newscategory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `order` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_newscategory`
--

LOCK TABLES `web_newscategory` WRITE;
/*!40000 ALTER TABLE `web_newscategory` DISABLE KEYS */;
INSERT INTO `web_newscategory` VALUES (1,'Global Day',1),(2,'Conference/ Roundtable',1),(3,'Book Launching',3),(4,'Students Competition',4),(5,'Special Days Celebration',5),(6,'Webinar',7),(7,'Workshop',1);
/*!40000 ALTER TABLE `web_newscategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_newsimage`
--

DROP TABLE IF EXISTS `web_newsimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_newsimage` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `news_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `web_newsimage_news_id_09341ccc_fk_web_news_id` (`news_id`),
  CONSTRAINT `web_newsimage_news_id_09341ccc_fk_web_news_id` FOREIGN KEY (`news_id`) REFERENCES `web_news` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_newsimage`
--

LOCK TABLES `web_newsimage` WRITE;
/*!40000 ALTER TABLE `web_newsimage` DISABLE KEYS */;
INSERT INTO `web_newsimage` VALUES (1,'news_images/1.jpg',1),(2,'news_images/2.jpg',1),(3,'news_images/3.jpg',1),(4,'news_images/4.jpg',1),(5,'news_images/5.jpg',1),(6,'news_images/6.jpg',1),(7,'news_images/7.jpg',1),(8,'news_images/8.jpg',1),(9,'news_images/1_Xo8uAAa.jpg',2),(10,'news_images/2_SsfBr0g.jpg',2),(11,'news_images/3_5f81vkV.jpg',2),(12,'news_images/4_dzS1GNG.jpg',2),(13,'news_images/5_ima7cCL.jpg',2),(14,'news_images/6_Eh5qkZD.jpg',2),(15,'news_images/7_JgNUJij.jpg',2),(16,'news_images/8_R4XvKD5.jpg',2),(17,'news_images/9.jpg',2),(18,'news_images/10.jpg',2),(19,'news_images/11.jpg',2),(20,'news_images/12.jpg',2),(21,'news_images/1_WZ1MVhP.jpg',3),(22,'news_images/2_ywHS0n7.jpg',3),(23,'news_images/3_t2fYNql.jpg',3),(24,'news_images/4_EWupALG.jpg',3),(25,'news_images/5_6VEtLxZ.jpg',3),(26,'news_images/8C51A353-7176-437C-AF54-28C71369F954.png',4),(27,'news_images/416B63E0-3C96-48FF-B643-33D11CB72039.png',4),(28,'news_images/863094FA-1998-4648-B8CD-BFCD8631EAA0.png',4),(29,'news_images/IMG_2151.JPG',5),(30,'news_images/IMG_2126.JPG',5),(31,'news_images/IMG_1944_1.JPG',5),(32,'news_images/IMG_1859.JPG',5),(33,'news_images/IMG_1769.JPG',5),(34,'news_images/IMG_1733.JPG',5),(35,'news_images/IMG_1650.JPG',5),(36,'news_images/IMG_1561.JPG',5),(37,'news_images/100th_Birth_Centennial_picture.jpg',7),(38,'news_images/picture_2.jpg',7),(39,'news_images/Trustee_Award-03.jpg',7),(40,'news_images/Trustee_Award-04.jpg',7),(41,'news_images/_DSC1847.jpg',9),(42,'news_images/_DSC1653.jpg',9),(43,'news_images/_DSC1568.jpg',9),(44,'news_images/_DSC1424.jpg',9),(45,'news_images/_DSC1746.jpg',9),(46,'news_images/Accountability-5.jpg',10),(47,'news_images/Accountability-8.jpg',10),(48,'news_images/Accountability-4.jpg',10),(49,'news_images/IMG_0555.JPG',11),(50,'news_images/IMG_0805.JPG',11),(51,'news_images/IMG_1020.JPG',11),(52,'news_images/IMG_0387.JPG',11),(53,'news_images/IMG_1544.JPG',12),(54,'news_images/IMG_1528.JPG',12),(55,'news_images/IMG_1404.JPG',12),(56,'news_images/IMG_1308.JPG',12),(57,'news_images/IMG_0991.JPG',12),(59,'news_images/Global_Day-4.jpg',14),(60,'news_images/Global_Day-2.jpg',14),(61,'news_images/unnamed_1.png',15),(62,'news_images/unnamed.png',15),(63,'news_images/8CC17106-FD0E-49D1-9BDA-1D249C7FB4D2.png',15),(64,'news_images/abcde.jpg',13),(65,'news_images/US-BANGLADESH_Relations_2.jpg',16),(66,'news_images/US-_BANGLADESH_Relations_1.jpg',16),(67,'news_images/Global_Day_2022__US-Bangladesh_relations.jpg',16);
/*!40000 ALTER TABLE `web_newsimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_page`
--

DROP TABLE IF EXISTS `web_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_page` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pagename` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `banner` varchar(100) NOT NULL,
  `body` longtext NOT NULL,
  `name` varchar(250) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `designation` varchar(250) NOT NULL,
  `publish` datetime(6) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_page`
--

LOCK TABLES `web_page` WRITE;
/*!40000 ALTER TABLE `web_page` DISABLE KEYS */;
INSERT INTO `web_page` VALUES (1,'overview','Overview','','<p><strong>What is GSG?</strong><br />\r\nEnvisioning cross-border analysis of sustainable governance and development, the Global Studies &amp; Governance (GSG) Program interprets global diversities pragmatically and theoretically to influence socio-cultural, politic-economic, interactive, and ecological policies. By offering 7 specialized tracks, GSG skills streamline such 21st Century priorities as multi-tasking, networking, and workplace fluidity, armed with Third/Fourth Industrial Revolutions knowledge. Expected outcomes include governance of foreign relations, the ecology, business, society, politics, grassroots interests, and ICT/software fluency.</p>\r\n\r\n<p><strong>MISSION</strong><br />\r\nInterpreting global diversities through multidisciplinary/ inter-disciplinary lenses to prescribe socio-cultural, politico- economic, and ecological policies.</p>\r\n\r\n<p><strong>VISION</strong><br />\r\nAnalyzing cross-border governance pragmatically and theoretically for a sustainable future.</p>','','','','','','2023-01-22 05:34:40.000000','2023-01-22 05:34:53.167165','2023-01-23 07:41:50.030556'),(4,'research','Research & Award/Grants','','<p><strong>Prof. Dr. Imtiaz A Hussain<br />\r\nResearch Projects</strong></p>\r\n\r\n<ul>\r\n	<li>Project Title: &ldquo;China and South Asia,&rdquo; 2020-21.<br />\r\n	Project Manager: Carnegie Endowment for International Peace</li>\r\n	<li>Project Title: Building Resiliency for Interconnected Democracies in Global Environments (BRIDGE) Workshop, February 11-12, 2020, New Delhi, India.<br />\r\n	Project Manager: International Republican Institute, Washington, D.C., United States</li>\r\n	<li>Project Title: South/Southeast Asian Conference on &ldquo;Best Practices in Developing and Managing Public Private Partnerships For Transportation Infrastructure.&rdquo; Phnom Penh, Cambodia. March 10-14, 2018.<br />\r\n	Project Manager: U.S. Department of Transportation, Washington D.C., &amp; U.S. Embassy, Dhaka.</li>\r\n	<li>Project Title: Cocaine trafficking and Canadian counter-measures, in 2004 to examine Canada&rsquo;s free-trade agreements in Central America.<br />\r\n	Project Manager: Canada-Latin America-Caribbean (CLACA) program of International Council for Canadian Studies (ICCS), 2011</li>\r\n	<li>Project Title: CONACYT, Mexico&rsquo;s National Council of Science and Technology, in 2010-13 to study Mexico&rsquo;s economy during the 15-years of NAFTA (2010-12);<br />\r\n	Project Manager: CONACYT, Mexico&rsquo;s National Council of Science and Technology, in 2010-13 to study</li>\r\n	<li>Project Title: Mexico&rsquo;s economy during the 15-years of NAFTA (2010-12).<br />\r\n	Project Manager: CONACYT, Mexico&rsquo;s National Council of Science and Technology, in 2010-13 to study</li>\r\n	<li>Project Title: Central American/Mexican indigenous responses to globalization<br />\r\n	Project Manager: CONACYT, Mexico&rsquo;s National Council of Science and Technology, in 2003-05 to study</li>\r\n	<li>Project Title: NAFTA&rsquo;s 15-year performances<br />\r\n	Project Manager: Programa interinstitucional sobre Estudios la regi&oacute;n del Am&eacute;rica de Norte (PIERAN), administered by El Colegio de M&eacute;xico, in 2010-12</li>\r\n	<li>Project Title: Border governance<br />\r\n	Project Manager: North American Research Linkages (NARL), Canada, July 2009.</li>\r\n	<li>Project Title: European Union&rsquo;s Common Agricultural Policy<br />\r\n	Project Manager: German Historical Institute, Paris (May 25-6, 2009).</li>\r\n	<li>Project Title: Atlantic Community Unraveling conference<br />\r\n	Project Manager: German Historical Institute &amp; Vanderbilt University (September 2004).</li>\r\n	<li>Project Title: NAFTA&rsquo;s 15-year performances.<br />\r\n	Project Manager: Department of Investigation (DINV),2008-11, Universidad Iberoamericana.</li>\r\n	<li>Project Title: Research in Canada.<br />\r\n	Project Manager: Faculty Research Program (FRP) fellowships from International Council for Canadian Studies (ICCS), 2008, 2003.</li>\r\n	<li>Project Title: NAFTA&rsquo;s 15-year performances.<br />\r\n	Project Manager: Fellowship, Canadian Conference Grant Program, Department of Foreign Affairs (one for Spring 2008, another for Fall 2008): financed April 7-8, 2008 and October 27-9, 2008 conferences.</li>\r\n	<li>Project Title: NAFTA conference, April 2006<br />\r\n	Project Manager: Fomento de Investigaci&oacute;n y Cultura Superior, AC (FICSAC), 2006, Universidad Iberoamericana, April 2006.</li>\r\n	<li>Project Title: Examine the April 2001 Qu&eacute;bec Summit of the Americas<br />\r\n	Project Manager: Robarts Centre for Canadian Studies Summer Institute, Torontoi, Canada, 2001.</li>\r\n	<li>Project Title: Researching doctoral dissertation on 1947 Wool Legislation in U.S. Congress.<br />\r\n	Project Manager: University of Pennsylvania grants to research atTruman Library, 1987; &amp; National Archives, 1988.<br />\r\n	&nbsp;</li>\r\n</ul>\r\n\r\n<p>Membership:</p>\r\n\r\n<ul>\r\n	<li>American Political Science Association (APSA)</li>\r\n	<li>Consejo de Academico (Academic Council, Mexico&rsquo;s highest academic group)</li>\r\n	<li>European Union Studies Association (EUSA)</li>\r\n	<li>International Political Science Association (IPSA)</li>\r\n	<li>International Studies Association (ISA)</li>\r\n	<li>Mexican International Studies Association (AMEI)<br />\r\n	&nbsp;</li>\r\n</ul>\r\n\r\n<p>Awards:</p>\r\n\r\n<ul>\r\n	<li>*Research award, given to the top citation-holders, School of Liberal Arts &amp; Social Sciences, Independent University, Bangladesh, December 2020</li>\r\n	<li>&nbsp;* Teaching award, given to the highest score in quarter-based teaching over 3 years, Global Studies &amp; Governance (GSG) Program, School of Liberal Arts &amp; Social Sciences, Independent University, Bangladesh, December &nbsp;2020</li>\r\n	<li>*Merit awarded by Universidad Iberoamericana&rsquo;s Academic Council (2011).</li>\r\n	<li>*Top Social Science Productivity Prize, 2011, 2009: Department of Investigation, Universidad Iberoamericana, Mexico.</li>\r\n	<li>*Teaching awards (six), given to highest score in semester-based teaching evaluations, Universidad de las Am&eacute;ricas (UDLA), Mexico City, Fall 2009, Spring 2008, Fall 2008, Spring 2000, Fall 1998, &amp; Spring 1999.</li>\r\n	<li>*Dean&rsquo;s Teaching Award, University of Pennsylvania (1987): one of 15 from 500+ TAs in that year.</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>Dr. Marufa Akter<br />\r\nRESAERCH PROJECTS (on-going)</strong></p>\r\n\r\n<ul>\r\n	<li>Project Title: Rethinking Discourse of Approaching Trafficking of Rohingya Women and Girls in Cox&rsquo;s Bazar, by Calcatta Mahanirban Research Institute, India</li>\r\n	<li>Project title: Women and Work in South Asia: Rights and Innovations, from Centre for Genocide Studies, Dhaka University and Friedrich-Ebert-Stiftung Bangladesh</li>\r\n	<li>Project Title: Women in Work: Legal Regimes in Bangladesh</li>\r\n	<li>Project Title: Globalization and Cultural Transformations among the Youth: A Study of Public and Private Universities in Bangladesh, funded by Centre for Genocide Studies, University of Dhaka and Friedrich-Ebert-Stiftung Bangladesh.&nbsp;</li>\r\n	<li>Profile Title: &nbsp;&ldquo;Social Media in Understanding Cultural Transformation: Experiences of Students from Selective Private Universities in Dhaka&rdquo;&nbsp;</li>\r\n	<li>Project Ttile: &ldquo;Women as a Transformative Agents: Trajectories of Women Empowerment&rdquo;, an IUB 2021 Sponsored Research project, whose manuscript will be deposited one year from receiving the formal notification (likely end of 2021-22 fiscal year)<br />\r\n	&nbsp;</li>\r\n</ul>\r\n\r\n<p>AWARDS OF ACADEMIC EXCELLENCE &amp; RESEARCH GRANTS</p>\r\n\r\n<ul>\r\n	<li>2022&nbsp;&nbsp; &nbsp;SUSI Fellowship Summer Programe for Insitutte of Foreign Policy, University of Delaware, USA.</li>\r\n	<li>2022&nbsp;&nbsp; &nbsp;Fellowship for Women in Conflict 1325 Fellowship Programme, Beyond Borders, Scotland.</li>\r\n	<li>2020&nbsp;&nbsp; &nbsp;Fellowship Grant for the research on Women and Work in South Asia: Rights and Innovations, Firedrich Ebert Stiftung (FES), Dhaka&nbsp;</li>\r\n	<li>2017 &nbsp;&nbsp; &nbsp;Dissertation Completion Grant, International Center of Bremen University, Germany.</li>\r\n	<li>2017&nbsp;&nbsp; &nbsp;DAAD Mirror Stipend for research stay abroad, Bremen International Graduate School of Social Sciences, Bremen, Germany.</li>\r\n	<li>2015 &nbsp; &nbsp; Bremen IDEA-OUT Grant for field research, Bremen University, Germany.</li>\r\n	<li>2014 &nbsp; Doctoral Fellowship (2014-2015 to 2016-2017), Bremen International Graduate School of Social Sciences, Bremen, Germany. &nbsp;&nbsp;</li>\r\n	<li>2013 &nbsp; &nbsp; Graduate School Certificate Course Grant, SIT Graduate Institute, Vermont, USA.</li>\r\n	<li>2012&nbsp;&nbsp; &nbsp;US State Department Fund sponsorship for three weeks International Conference in Nepal and Bangladesh.</li>\r\n	<li>2012&nbsp;&nbsp; &nbsp;&lsquo;Commitment Award 2012&rsquo; First prize winner; awarded by Willy Brandt School of Public Policy and the Engagementpreis Foundation for an outstanding social project. The project dubbed &ldquo;Open Sky Class for the Street Children of Dhaka City&rdquo; received a first prize cash amount of 2,500 Euros for the implementation in Bangladesh.&nbsp;</li>\r\n	<li>2010&nbsp;&nbsp; &nbsp;German Academic Exchange Service (DAAD) Scholarship for Masters in Public Policy and Good Governance (2010-2012).</li>\r\n	<li>2005&nbsp;&nbsp; &nbsp;University Merit Scholarship awarded by the University of Dhaka for the year 2004-2005 on Master&rsquo;s result: full tuition fees waiver.</li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>Dr. Shanawez Hossain<br />\r\nResearch Activities&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>Project Title: Inclusive Cities through Equitable access to Urban Mobility Infrastructures for India and Bangladesh 2019- to till date&nbsp;<br />\r\n	Position: PI, from BIGD, BRAC University&nbsp;<br />\r\n	Client: Utrecht University, Netherlands&nbsp;</li>\r\n	<li>Project Title: An Assessment of Urban Social&nbsp; Protection and Jobs Program in Dhaka, Bangladesh, 2019-20<br />\r\n	Position held: Team Leader&nbsp;<br />\r\n	Client: The World Bank&nbsp;</li>\r\n	<li>Project Title: Partnership Facilitation and City&nbsp;Diagnostics to Support Equitable Economic Growth in Two Secondary&nbsp;Cities in Bangladesh, 2016- 2019&nbsp;<br />\r\n	Positions held: Team Leader&nbsp;<br />\r\n	Client: Cities Alliance, UNOPS, and BIGD, BRAC University.&nbsp;</li>\r\n	<li>Project Title: Think Tank Initiative (TTI) Phase 2&nbsp;Institutional Support: BIGD, BRAC University, 2014- 2019<br />\r\n	Positions held: Lead&nbsp;<br />\r\n	Client: International Development Research Centre (IDRC), BIGD, BRAC&nbsp;University&nbsp;</li>\r\n	<li>Project Title: Digitizing Implementation Monitoring and&nbsp;Public Procurement Project (DIMAPPP), 2018- 2021<br />\r\n	Position: Advisor&nbsp;</li>\r\n	<li>Project Title: State of Cities (SOC) 2018-Water Governance in Dhaka, 2018-2019 Position and activities: Leading the SOC team as the head of the UCCE Cluster&nbsp;</li>\r\n	<li>Project Title: National Governance Assessment Framework (NGAF), 2015-2018<br />\r\n	Positions held: Core Member and Consultant&nbsp;<br />\r\n	Client: Governance Innovation Unit (GIU), Prime Minister Office Bangladesh;&nbsp;United Nations Development Programme (UNDP) and BIGD, BRAC University.&nbsp;</li>\r\n	<li>Project Title: Public Procurement Reform Project (PPRP-II), 2016-2017<br />\r\n	Positions held: Research Specialist, Technical Specialist&nbsp;<br />\r\n	Client: World Bank, Government of Bangladesh and BIGD</li>\r\n</ul>','','','','','','2023-01-23 08:06:27.000000','2023-01-23 08:07:57.331768','2023-01-23 08:30:44.080282'),(5,'career','Career Oppotunities','','<p><img alt=\"\" src=\"/media/uploads/2023/01/23/career-prospects-01-1024x512.png\" style=\"height:512px; width:1024px\" /></p>','','','','','','2023-01-23 08:30:44.000000','2023-01-23 08:31:33.612749','2023-01-23 08:31:33.612765'),(8,'hult','Hult Prize','','<p>The Hult Prize challenges young people worldwide to solve the planet&#39;s most pressing issues through social entrepreneurship. The 2023 Hult Prize Challenge is Redesigning Fashion allows participants to explore the opportunity to develop a for-profit social enterprise in the fashion/clothing sector.</p>\r\n\r\n<ul>\r\n	<li>Hult Prize IUB Info Session: 27th of November 2022</li>\r\n	<li>Hult Prize at IUB Team Registration: 3rd December 2022 - 2nd February 2023&nbsp;</li>\r\n	<li>The Idea Submission: 4th of February 2023</li>\r\n	<li>Hult Week : 29th of January to 1st of February 2023</li>\r\n	<li>Semifinals: 12th February 2023</li>\r\n	<li>The Grand Final: 15th of February 2023<br />\r\n	&nbsp;</li>\r\n</ul>','','','','','','2023-01-24 04:40:16.000000','2023-01-24 04:40:46.752890','2023-01-24 04:42:08.494119'),(9,'major','GSG Major','','<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong>GSG Major (GSG Major: Total 127/128 Credits)</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Specialized Tracks 1. International Relations &amp; Comparative Politics 2. International Security &amp; Strategic Studies 3. Public Policy &amp; Governance 4. Global Media and International Communications 5. Socio-political Economy of Development 6. Ecological Governance 7. Independent Track </span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong>Curriculum Structure</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">&bull; 14 Foundation Courses (14 x 2/3 = 40/41 credits)</span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">&bull; 11 Core Courses (11 x 3= 33 credits)</span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">&bull; 5 Specialized Track Courses (5x3= 15 credits)</span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">&bull; 7 Elective Courses (7x3= 21 credits)</span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">&bull; Senior Project/ Internship (3x1=3 credits)</span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">&bull; Minor (from any discipline, 5 x3 = 15 credits)</span></span></p>\r\n\r\n<table cellspacing=\"0\" class=\"MsoTableGrid\" style=\"border-collapse:collapse; border:none; width:666px\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:17px; vertical-align:top; width:666px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Courses for all Global Studies &amp; Governance (GSG) Majors</span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:17px; vertical-align:top; width:666px\">\r\n			<ul style=\"list-style-type:square\">\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Core courses: 33 Credits (All courses are mandatory for all GSG majors)</span></span></strong></span></span></li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Course Code</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Course Title</span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG101</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Introduction to Global Studies </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG102</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Introduction to Governance Studies</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:34px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG103</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:34px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Theories and Methods of Interdisciplinary Studies </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG201</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Theories of International Relations </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:33px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG202</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:33px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Global History: 20<sup>th</sup> Century and beyond</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:34px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG203</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:34px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Security Studies: military, economic, political, social, human </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:34px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG304</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:34px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Research Methodology: Qualitative and Quantitative </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:21px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG305</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:21px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Politics and Government in Developing Countries with Special Reference to Bangladesh</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:23px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG306</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Dynamics of International Organizations </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:24px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG402</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:24px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Theories of Socio-Political Economy of Development </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:23px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG403</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:23px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Global Ecology: Culture, Demography &amp; Resources </span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:34px; vertical-align:top; width:666px\">\r\n			<ul style=\"list-style-type:square\">\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Specialized Track courses: 18 Credits (any 6 courses, 2 from 200-level, 2 from 300-level and 2 from 400-level)</span></strong></span></span></li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG 210 </span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Foreign Policy Analysis&nbsp; </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG 220 </span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Theories of War and Conflict </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:34px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG 221</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:34px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Surveillance, Intelligence and National Security&nbsp; </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:34px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG 230 </span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:34px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Comparative Public Policy </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG 231&nbsp; </span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Cultural Governance and Soft Power </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG 251 </span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Gender, Equality and Development </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:34px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG 260 </span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:34px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Human Geography &amp; Global Demography </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG 261 </span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Resource Governance </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:26px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG 360</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:26px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Environmental Conscience-building</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG 310 </span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Introduction to International Law </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG 311</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Political Ideologies </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:20px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG 320 </span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:20px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Ethnic Conflict and Counterinsurgencies </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:18px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG 321 </span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:18px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">International Terrorism and Counterterrorism </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG 331 </span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Public Policy Making in Bangladesh </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:34px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG 351 </span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:34px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Regional Economic Integration and Rural Development </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:34px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG371</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:34px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Sustainable Development: Local and Global context </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG 410 </span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Political Institutions </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG 420 </span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Strategic Studies &amp; Human Security</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:34px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG 450 </span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:34px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">International Economic Institutions &amp; Global Poverty&nbsp; </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:34px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG 440 </span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:34px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Global Communication &amp; Public Diplomacy</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:34px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG460</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:34px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Climate Change Governance: Performance Monitoring </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:34px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG470</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:34px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Development Planning &amp; Project Management </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:34px; vertical-align:top; width:666px\">\r\n			<ul style=\"list-style-type:square\">\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG Elective A (Regional Studies) : 6 Credits (Any two from the followings, at 1 from 200-level courses and 1 from 300 level courses)</span></strong></span></span></li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG280</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">South Asian Politics</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG282</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">China in International System </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG380</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Middle Eastern Studies </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG381</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">North American Studies </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG382</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">East Asian Studies </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG383</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">European Studies </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG386</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Latin American Studies </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:19px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG387</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:19px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Southeast Asian Studies </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:17px; vertical-align:top; width:666px\">\r\n			<ul style=\"list-style-type:square\">\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG Elective B: Specialized Courses: 9 Credits&nbsp; (Any 3 from the followings) </span></strong></span></span></li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG480</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Contemporary Bangladesh Society </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG483</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Peace &amp; Conflict Studies </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:21px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG484</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:21px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Mass Violence, Genocide and Social Memory </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG485</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&nbsp;Ethics and Morality in Politics </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG 490 </span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Global Environmental Politics </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG 491 </span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&nbsp;Global Public Health </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG492</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Citizenship, Statelessness and Refugee Crisis </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:16px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG495</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:16px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Advanced Statistics&nbsp; </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:16px; vertical-align:top; width:666px\">\r\n			<ul style=\"list-style-type:square\">\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Elective C (Foreign Language): 3 Credits</span></strong></span></span></li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:16px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG497</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:16px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Language Study</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:14px; vertical-align:top; width:666px\">\r\n			<ul style=\"list-style-type:square\">\r\n				<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Internship/Senior Project (Thesis): 3 Credits (Any 1 from the followings) </span></strong></span></span></li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:19px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG498</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:19px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Internship </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:19px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG499</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:19px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Senior Project/Thesis </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:34px; vertical-align:top; width:666px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-family:&quot;Times New Roman&quot;,serif\">*** Besides this, all GSG Majors have to take a Minor to earn 15 Credits (Students&nbsp; have to take any 5 suggestive courses from any one department or program within IUB) </span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>','','','','','','2023-01-27 13:41:19.000000','2023-01-27 13:41:49.971056','2023-01-29 07:29:16.583043'),(10,'foundation','Foundation Courses','','<table cellspacing=\"0\" class=\"MsoTableGrid\" style=\"border-collapse:collapse; border:none; width:666px\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:17px; vertical-align:top; width:666px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Foundation Courses for GSG Major: 40 Credits</span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:17px; vertical-align:top; width:666px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-family:&quot;Times New Roman&quot;,serif\">1. Communication Skills: 9 Credits (Mandatory) </span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:14px; vertical-align:top; width:78px\">\r\n			<p style=\"margin-left:-8px; text-align:center\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:9.0pt\">Course Code</span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:14px; vertical-align:top; width:588px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:10.0pt\">Course Title</span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">ENG101 </span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">English Listening &amp; Speaking Skills </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">ENG102</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Reading &amp; Composition </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">ENG105 </span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Business English </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:16px; vertical-align:top; width:666px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-family:&quot;Times New Roman&quot;,serif\">2. Computer Skills: 4 Credits (Labs 1 Credit) </span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">CIS101</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Fundamentals of Computer System </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:34px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">CIS101 Labs </span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:34px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Fundamentals of Computer System Labs </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:16px; vertical-align:top; width:666px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&nbsp;<strong>3. Numeracy: 6 Credits</strong></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">MAT100 </span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Basic University Mathematics &ndash; I</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">MAT210</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Basic University Mathematics &ndash; II</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:16px; vertical-align:top; width:666px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-family:&quot;Times New Roman&quot;,serif\">4. Natural Sciences: 6 Credits</span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">ENV100</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Basics of Climate Change </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">ENV101</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Introduction to Environmental Science&nbsp;</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">ENV102</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">World Geography </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">ENV102T</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">World Geography Tutorial </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:16px; vertical-align:top; width:666px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-family:&quot;Times New Roman&quot;,serif\">5. Social Sciences. 6 Credits (any two from the followings)</span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">ANT101 </span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Introduction to Anthropology </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">CMN201</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Introduction to Communications </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">ECN200</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Introduction to Economics </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">HEA101</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Health and Society </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:34px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">SOC202/SOC205</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:34px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Social Psychology/Society and Identity </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:16px; vertical-align:top; width:666px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">6. <strong>Humanities:</strong> <strong>6 Credits (All students of IUB must take any one of BDS109, BPH101, BLA101 &amp; NCH 101. Furthermore, FRN101 or CHI101 is mandatory for GSG Major)</strong></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">NCN101</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">National Culture and Heritage </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">BLA101</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Bangla Literature &amp; Art </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:34px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">BDS109</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:34px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Bangladesh 1971: Through the Lenses </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">BPH101</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Bangladesh Political History </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">FRN101</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Elementary French </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">CHI101</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:25px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Elementary Chinese</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:17px; vertical-align:top; width:666px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-family:&quot;Times New Roman&quot;,serif\">7. Live-in-Field Experience. 3 Credits (Mandatory for all majors) </span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:10px; vertical-align:top; width:78px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">LFE201</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; height:10px; vertical-align:top; width:588px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Live-in-Field Experience </span></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>','','','','','','2023-01-29 07:30:44.000000','2023-01-29 07:31:10.343201','2023-01-29 07:32:15.864452'),(11,'minor','GSG Minor','','<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong>GSG Minor (Total 15 Credits) </strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">A GSG &ldquo;Minor&rdquo; aligns almost perfectly with existing IUB &ldquo;Majors,&rdquo; or &ldquo;Schools.&rdquo; Two &ldquo;automatic&rdquo; alignments illustrate: the School of Business&rsquo;s &ldquo;International Business&rdquo; segment not only fits into, but also profits from a GSG &ldquo;minor&rdquo;: Corporate behavior and strategies taught under &ldquo;International Business&rdquo; also need knowledge of the cultural, political, social, or environmental nuances within target countries, especially as these arenas address &ldquo;governance&rdquo; issues, something a typical GSG curriculum offers. Both the breadth and depth of this Business School alignment speak equally for the departments of Environment Management and Environment Science: a GSG &ldquo;Minor&rdquo; adds governance-based skills to the technical information learned about environment protection and for climate-change strategies. A GSG &ldquo;Minor&rdquo; increasingly carries a &ldquo;Special relationship&rdquo; with the School of Engineering, Computer science, Pharmacy and Pubic Health.</span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong>Curriculum Structure*</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">&bull; The required course, GSG 102 (3x1 =3 credits)</span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">&bull; Any 2 Courses from the 200 level GSG course list (3x2=6 Credits)</span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">&bull; 1 course from the 300 level GSG course List (3x1=3 credits)</span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">&bull; 1 course from the 400 level GSG course list (3x1=3 credits)</span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><em><span style=\"color:red\">*Students are eligible to choose courses from Core, Specialized Track or Elective Courses maintaining above criteria </span></em></strong></span></span></p>','','','','','','2023-01-29 07:32:15.000000','2023-01-29 07:32:37.856677','2023-01-29 07:32:52.839889'),(12,'studytour','Study Tour 2022','','<p><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">The GSG Department organized a Study Tour with Major &amp; Minor students of Global Studies &amp; Governance at Bangladesh Academy for Rural Development (BARD) on 3rd &amp; 4th June 2022. They visited Cumilla&nbsp;Cantonment, War Cemetry, Shalban Bihar, Bibir Bazar Border and so on. The BARD also had a session for the students.</span></span></p>','','','','','','2023-02-05 07:09:28.000000','2023-02-05 07:10:07.346878','2023-02-06 05:39:26.582595'),(13,'internship','Internship','','<p style=\"text-align:start\"><span style=\"font-size:11pt\"><span style=\"color:#222222\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG 498: Internship (3 credit hours)</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start\"><span style=\"font-size:11pt\"><span style=\"color:#222222\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">GSG students require to fulfill the internship requirement to complete graduation.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:72px; text-align:start\"><span style=\"font-size:11pt\"><span style=\"color:#222222\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">I.&nbsp; </span></span></strong><strong><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Specific Internship Obligations:</span></span></strong></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:96px; text-align:start\"><span style=\"font-size:11pt\"><span style=\"color:#222222\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">(1)&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Each student is required during the semester to spend at least five hours per week for the duration of the term at an approved agency in order to receive three (3) credits as an enrollee in GSG 498. In other words, those three credits must reflect minimum&nbsp;of&nbsp;70 hours at the assigned agency for each student.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:96px; text-align:start\"><span style=\"font-size:11pt\"><span style=\"color:#222222\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">*Clerical duties, such as typing, filing, and photocopying will not be acceptable as intern assignments.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:96px; text-align:start\"><span style=\"font-size:11pt\"><span style=\"color:#222222\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">(2)&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Maintain a daily log of internship activities. Highlighting each day&rsquo;s work with date and time is sufficient. This log must be signed by your workplace/ internship supervisor and submitted to your GSG Supervisor along with your internship term paper at the end of the semester.</span></span></span></span></span></span><span style=\"font-size:11pt\"><span style=\"color:#222222\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Calibri,sans-serif\">&nbsp;</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:96px; text-align:start\"><span style=\"font-size:11pt\"><span style=\"color:#222222\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">(3)&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Workplace/Internship Supervisor&rsquo;s evaluation is a requirement. The workplace supervisor needs to be introduced by your academic supervisor (from the department). The evaluation form will be provided to your workplace Supervisor and must be returned in a sealed envelope or through email to your GSG Supervisor at the end of your internship program.</span></span></span></span></span></span><span style=\"font-size:11pt\"><span style=\"color:#222222\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Calibri,sans-serif\">&nbsp;</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:96px; text-align:start\"><span style=\"font-size:11pt\"><span style=\"color:#222222\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">(4)&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Submission of a final paper is required. The paper is due at the end of the term in which the student is enrolled. The exact date of submission should be agreed upon in consultation with the GSG Supervisor in compliance with the semester calendar prior to beginning the internship.</span></span></span></span></span></span></p>','','','','','','2023-02-08 04:47:54.000000','2023-02-08 04:48:53.731919','2023-02-12 09:22:03.677455');
/*!40000 ALTER TABLE `web_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_photofile`
--

DROP TABLE IF EXISTS `web_photofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_photofile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `photogallery_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `web_photofile_photogallery_id_85841d60_fk_web_photogallery_id` (`photogallery_id`),
  CONSTRAINT `web_photofile_photogallery_id_85841d60_fk_web_photogallery_id` FOREIGN KEY (`photogallery_id`) REFERENCES `web_photogallery` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_photofile`
--

LOCK TABLES `web_photofile` WRITE;
/*!40000 ALTER TABLE `web_photofile` DISABLE KEYS */;
INSERT INTO `web_photofile` VALUES (2,'gallery/2/trustee-award-03.jpg',2),(3,'gallery/2/trustee-award-02.jpg',2),(4,'gallery/2/trustee-award-01.jpg',2),(5,'gallery/3/img_0991.jpg',3),(6,'gallery/3/img_1308.jpg',3),(7,'gallery/3/img_1404.jpg',3),(8,'gallery/3/img_1528.jpg',3),(9,'gallery/3/img_1544.jpg',3),(10,'gallery/4/img_0387.jpg',4),(11,'gallery/4/img_0555.jpg',4),(12,'gallery/4/img_0805.jpg',4),(13,'gallery/4/img_1020.jpg',4),(14,'gallery/5/img_2142.jpg',5),(15,'gallery/5/img_2169.jpg',5),(16,'gallery/5/img_2311.jpg',5),(17,'gallery/5/img_2343.jpg',5);
/*!40000 ALTER TABLE `web_photofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_photogallery`
--

DROP TABLE IF EXISTS `web_photogallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_photogallery` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `publish` datetime(6) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_photogallery`
--

LOCK TABLES `web_photogallery` WRITE;
/*!40000 ALTER TABLE `web_photogallery` DISABLE KEYS */;
INSERT INTO `web_photogallery` VALUES (2,'Trustee Award','2023-01-22 04:15:49.000000','2023-01-22 04:15:51.877490','2023-01-22 04:16:27.128389'),(3,'Rohingya Conference','2023-01-22 04:16:27.000000','2023-01-22 04:17:20.649125','2023-01-22 04:17:20.649141'),(4,'Quadrangulated Quandry','2023-01-22 04:17:23.000000','2023-01-22 04:17:55.555812','2023-01-22 04:17:55.555829'),(5,'New Mega City','2023-01-22 04:22:16.000000','2023-01-22 04:22:46.353581','2023-01-22 04:22:46.353603');
/*!40000 ALTER TABLE `web_photogallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_program`
--

DROP TABLE IF EXISTS `web_program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_program` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `body` longtext NOT NULL,
  `url` varchar(250) NOT NULL,
  `publish` datetime(6) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_program`
--

LOCK TABLES `web_program` WRITE;
/*!40000 ALTER TABLE `web_program` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_publication`
--

DROP TABLE IF EXISTS `web_publication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_publication` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `image` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL,
  `link` varchar(250) NOT NULL,
  `publish` datetime(6) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_publication`
--

LOCK TABLES `web_publication` WRITE;
/*!40000 ALTER TABLE `web_publication` DISABLE KEYS */;
INSERT INTO `web_publication` VALUES (1,'Coronavirus Pandemic & Online Education','publication/book1.jpg','','https://link.springer.com/book/10.1007/978-981-19-6853-2','2023-01-23 05:20:54.000000','2023-01-23 05:27:37.628930','2023-01-23 05:51:33.114152'),(2,'Branding Bangladesh: From ‘Bottomless Pit’ to a ‘Middle Income’ Country','publication/book2.jpg','','https://www.amazon.com/Branding-Bangladesh-Bottomless-Middle-Country/dp/9811971943','2023-01-23 05:51:33.000000','2023-01-23 05:54:15.912005','2023-01-23 05:55:11.252896'),(3,'Rohingya Camp Narratives','publication/book3.jpg','','https://link.springer.com/book/10.1007/978-981-19-1197-2','2023-01-23 05:57:25.000000','2023-01-23 05:57:55.833540','2023-01-23 05:57:55.833556'),(4,'Transatlantic Transitions','publication/book4.jpg','','https://link.springer.com/book/10.1007/978-981-10-6608-5','2023-01-23 05:57:55.000000','2023-01-23 06:01:11.622015','2023-01-23 06:01:11.622032'),(5,'Global-Local Tradeoffs, Order-Disorder Consequences','publication/book5.jpg','','https://link.springer.com/book/10.1007/978-981-16-9419-6','2023-01-23 06:02:48.000000','2023-01-23 06:03:10.099058','2023-01-23 06:03:10.099076'),(6,'South Asia in Global Power Rivalry','publication/book6.jpg','','https://link.springer.com/book/10.1007/978-981-13-7240-7','2023-01-23 06:03:10.000000','2023-01-23 06:05:45.459809','2023-01-23 06:05:45.459829'),(7,'Bangladesh Country Gender Assessment 2021','publication/book7.jpg','','https://openknowledge.worldbank.org/handle/10986/38316','2023-01-23 06:08:17.000000','2023-01-23 06:08:45.627505','2023-01-23 06:08:45.627521'),(8,'Amar Sonar Bangla… a treasure-trove!','publication/book8.jpg','publication/Amar-Sonar-Bangla...-a-treasure-trove.pdf','','2023-01-23 06:12:52.000000','2023-01-23 06:13:33.388320','2023-01-23 06:13:33.388336');
/*!40000 ALTER TABLE `web_publication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_research`
--

DROP TABLE IF EXISTS `web_research`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_research` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `initial` varchar(500) NOT NULL,
  `body` longtext NOT NULL,
  `publish` datetime(6) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_research`
--

LOCK TABLES `web_research` WRITE;
/*!40000 ALTER TABLE `web_research` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_research` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_resource`
--

DROP TABLE IF EXISTS `web_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_resource` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `category` varchar(10) NOT NULL,
  `file` varchar(100) NOT NULL,
  `url` varchar(250) NOT NULL,
  `type` varchar(30) NOT NULL,
  `publish` datetime(6) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_resource`
--

LOCK TABLES `web_resource` WRITE;
/*!40000 ALTER TABLE `web_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_slider`
--

DROP TABLE IF EXISTS `web_slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_slider` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `photo` varchar(100) NOT NULL,
  `order` int NOT NULL,
  `publish` datetime(6) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_slider`
--

LOCK TABLES `web_slider` WRITE;
/*!40000 ALTER TABLE `web_slider` DISABLE KEYS */;
INSERT INTO `web_slider` VALUES (1,'slider/iub1.jpg',1,'2023-01-22 04:06:12.000000','2023-01-22 04:06:19.873405','2023-01-22 04:06:19.873426'),(2,'slider/iub3.JPG',3,'2023-01-22 04:06:22.000000','2023-01-22 04:06:27.330650','2023-01-31 08:24:03.237451'),(3,'slider/234.jpg',2,'2023-01-31 08:21:24.000000','2023-01-31 08:23:35.302779','2023-01-31 08:23:35.302803');
/*!40000 ALTER TABLE `web_slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_testimonial`
--

DROP TABLE IF EXISTS `web_testimonial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_testimonial` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `body` varchar(120) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `order` int NOT NULL,
  `publish` datetime(6) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_testimonial`
--

LOCK TABLES `web_testimonial` WRITE;
/*!40000 ALTER TABLE `web_testimonial` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_testimonial` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-27  3:25:51
