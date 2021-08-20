-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: peekpa_db1
-- ------------------------------------------------------
-- Server version	8.0.25

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add category',7,'add_category'),(26,'Can change category',7,'change_category'),(27,'Can delete category',7,'delete_category'),(28,'Can view category',7,'view_category'),(29,'Can add post',8,'add_post'),(30,'Can change post',8,'change_post'),(31,'Can delete post',8,'delete_post'),(32,'Can view post',8,'view_post'),(33,'Can add link',9,'add_link'),(34,'Can change link',9,'change_link'),(35,'Can delete link',9,'delete_link'),(36,'Can view link',9,'view_link'),(37,'Can add advertise',10,'add_advertise'),(38,'Can change advertise',10,'change_advertise'),(39,'Can delete advertise',10,'delete_advertise'),(40,'Can view advertise',10,'view_advertise'),(41,'Can add daily visit num',11,'add_dailyvisitnum'),(42,'Can change daily visit num',11,'change_dailyvisitnum'),(43,'Can delete daily visit num',11,'delete_dailyvisitnum'),(44,'Can view daily visit num',11,'view_dailyvisitnum'),(45,'Can add total visit num',12,'add_totalvisitnum'),(46,'Can change total visit num',12,'change_totalvisitnum'),(47,'Can delete total visit num',12,'delete_totalvisitnum'),(48,'Can view total visit num',12,'view_totalvisitnum'),(49,'Can add user visit',13,'add_uservisit'),(50,'Can change user visit',13,'change_uservisit'),(51,'Can delete user visit',13,'delete_uservisit'),(52,'Can view user visit',13,'view_uservisit');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bloguser_dailyvisitnum`
--

DROP TABLE IF EXISTS `bloguser_dailyvisitnum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bloguser_dailyvisitnum` (
  `id` int NOT NULL AUTO_INCREMENT,
  `day` date NOT NULL,
  `count` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloguser_dailyvisitnum`
--

LOCK TABLES `bloguser_dailyvisitnum` WRITE;
/*!40000 ALTER TABLE `bloguser_dailyvisitnum` DISABLE KEYS */;
INSERT INTO `bloguser_dailyvisitnum` VALUES (1,'2021-07-08',25),(2,'2021-07-09',25);
/*!40000 ALTER TABLE `bloguser_dailyvisitnum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bloguser_totalvisitnum`
--

DROP TABLE IF EXISTS `bloguser_totalvisitnum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bloguser_totalvisitnum` (
  `id` int NOT NULL AUTO_INCREMENT,
  `count` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloguser_totalvisitnum`
--

LOCK TABLES `bloguser_totalvisitnum` WRITE;
/*!40000 ALTER TABLE `bloguser_totalvisitnum` DISABLE KEYS */;
INSERT INTO `bloguser_totalvisitnum` VALUES (1,50);
/*!40000 ALTER TABLE `bloguser_totalvisitnum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bloguser_user`
--

DROP TABLE IF EXISTS `bloguser_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bloguser_user` (
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `uid` varchar(22) NOT NULL,
  `email` varchar(254) NOT NULL,
  `username` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `data_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloguser_user`
--

LOCK TABLES `bloguser_user` WRITE;
/*!40000 ALTER TABLE `bloguser_user` DISABLE KEYS */;
INSERT INTO `bloguser_user` VALUES ('pbkdf2_sha256$150000$G2i5O8vXr3Aa$uhgLVVItvjp5RBDRSP6XNWj50PzosJhe/RL7YSgOU1M=',NULL,0,'ABFtTs5fjWseHFeDJXGjbS','admin@peekpa.com','testuser',0,1,'2021-07-08 11:50:07.690201'),('pbkdf2_sha256$150000$WgaN4yIBgZlp$S0LsnE12Bvs9GS0czisXdpuBhwpSsnfaTvzf1xHUU7o=','2021-07-09 04:23:53.577551',1,'CSqSPVi8z4c7iY6YvsmZuf','2170428893@qq.com','zrm',1,1,'2021-07-07 06:44:51.687612'),('pbkdf2_sha256$150000$OJoP3DqTevRV$kgt3RLV3XYD4fYJwU4T9ZmRthyyZ2vSugFCBtad2S7s=','2021-07-08 17:04:42.850383',0,'nEhHQTcEQEqtXsk62ygWMa','test2@peekpa.com','PeekpaTest2',1,1,'2021-07-08 16:57:29.353468');
/*!40000 ALTER TABLE `bloguser_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bloguser_user_groups`
--

DROP TABLE IF EXISTS `bloguser_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bloguser_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(22) NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bloguser_user_groups_user_id_group_id_69c4a080_uniq` (`user_id`,`group_id`),
  KEY `bloguser_user_groups_group_id_8f554e44_fk_auth_group_id` (`group_id`),
  CONSTRAINT `bloguser_user_groups_group_id_8f554e44_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `bloguser_user_groups_user_id_27646886_fk_bloguser_user_uid` FOREIGN KEY (`user_id`) REFERENCES `bloguser_user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloguser_user_groups`
--

LOCK TABLES `bloguser_user_groups` WRITE;
/*!40000 ALTER TABLE `bloguser_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `bloguser_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bloguser_user_user_permissions`
--

DROP TABLE IF EXISTS `bloguser_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bloguser_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(22) NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bloguser_user_user_permi_user_id_permission_id_bd9d87d4_uniq` (`user_id`,`permission_id`),
  KEY `bloguser_user_user_p_permission_id_deb90a5c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `bloguser_user_user_p_permission_id_deb90a5c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `bloguser_user_user_p_user_id_de74689f_fk_bloguser_` FOREIGN KEY (`user_id`) REFERENCES `bloguser_user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloguser_user_user_permissions`
--

LOCK TABLES `bloguser_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `bloguser_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `bloguser_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bloguser_uservisit`
--

DROP TABLE IF EXISTS `bloguser_uservisit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bloguser_uservisit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(30) NOT NULL,
  `end_point` varchar(200) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `day` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloguser_uservisit`
--

LOCK TABLES `bloguser_uservisit` WRITE;
/*!40000 ALTER TABLE `bloguser_uservisit` DISABLE KEYS */;
INSERT INTO `bloguser_uservisit` VALUES (1,'127.0.0.1','/','2021-07-08 15:04:46.837703','2021-07-08'),(2,'127.0.0.1','/detail/202107076122/','2021-07-08 15:04:49.379791','2021-07-08'),(3,'127.0.0.1','/detail/202107076122/','2021-07-08 15:04:51.507283','2021-07-08'),(4,'127.0.0.1','/','2021-07-08 15:04:53.611552','2021-07-08'),(5,'127.0.0.1','/list/','2021-07-08 15:04:54.765726','2021-07-08'),(6,'127.0.0.1','/detail/202107081392/','2021-07-08 15:04:56.016562','2021-07-08'),(7,'127.0.0.1','/detail/202107085584/','2021-07-08 15:04:59.298186','2021-07-08'),(8,'127.0.0.1','/detail/202107085584/','2021-07-08 15:05:00.923096','2021-07-08'),(9,'127.0.0.1','/detail/202107084941/','2021-07-08 15:05:03.070535','2021-07-08'),(10,'127.0.0.1','/detail/202107084941/','2021-07-08 15:05:05.387541','2021-07-08'),(11,'127.0.0.1','/detail/202107088065/','2021-07-08 15:05:09.658860','2021-07-08'),(12,'127.0.0.1','/detail/202107076122/','2021-07-08 15:05:14.126034','2021-07-08'),(13,'127.0.0.1','/detail/202107085584/','2021-07-08 15:05:15.499117','2021-07-08'),(14,'127.0.0.1','/','2021-07-08 15:05:24.814813','2021-07-08'),(15,'127.0.0.1','/detail/202107086496/','2021-07-08 15:05:27.069723','2021-07-08'),(16,'127.0.0.1','/','2021-07-08 15:28:14.456946','2021-07-08'),(17,'127.0.0.1','/','2021-07-08 15:32:31.664645','2021-07-08'),(18,'127.0.0.1','/','2021-07-08 15:38:08.038439','2021-07-08'),(19,'127.0.0.1','/','2021-07-08 15:43:13.801031','2021-07-08'),(20,'127.0.0.1','/','2021-07-08 15:43:44.567488','2021-07-08'),(21,'127.0.0.1','/','2021-07-08 15:43:45.681510','2021-07-08'),(22,'127.0.0.1','/','2021-07-08 15:43:46.612939','2021-07-08'),(23,'127.0.0.1','/','2021-07-08 15:43:47.567993','2021-07-08'),(24,'127.0.0.1','/','2021-07-08 15:43:48.684865','2021-07-08'),(25,'127.0.0.1','/','2021-07-08 15:53:28.058266','2021-07-08'),(26,'127.0.0.1','/','2021-07-08 16:00:31.388230','2021-07-09'),(27,'127.0.0.1','/','2021-07-08 16:03:14.156136','2021-07-09'),(28,'127.0.0.1','/','2021-07-08 16:03:15.758362','2021-07-09'),(29,'127.0.0.1','/','2021-07-08 16:11:37.002799','2021-07-09'),(30,'127.0.0.1','/detail/202107076122/','2021-07-08 16:11:38.597182','2021-07-09'),(31,'127.0.0.1','/detail/202107076122/','2021-07-08 16:11:43.899417','2021-07-09'),(32,'127.0.0.1','/','2021-07-08 16:25:50.897484','2021-07-09'),(33,'127.0.0.1','/','2021-07-08 16:32:45.954736','2021-07-09'),(34,'127.0.0.1','/','2021-07-08 16:47:30.348285','2021-07-09'),(35,'127.0.0.1','/','2021-07-08 16:48:17.808247','2021-07-09'),(36,'127.0.0.1','/','2021-07-08 16:56:20.059948','2021-07-09'),(37,'127.0.0.1','/','2021-07-08 17:00:34.673649','2021-07-09'),(38,'127.0.0.1','/','2021-07-08 17:04:24.103298','2021-07-09'),(39,'127.0.0.1','/','2021-07-09 04:10:37.188208','2021-07-09'),(40,'127.0.0.1','/','2021-07-09 04:11:26.497362','2021-07-09'),(41,'127.0.0.1','/','2021-07-09 04:23:48.414504','2021-07-09'),(42,'127.0.0.1','/','2021-07-09 04:37:44.563465','2021-07-09'),(43,'127.0.0.1','/','2021-07-09 04:45:45.032077','2021-07-09'),(44,'127.0.0.1','/','2021-07-09 04:47:21.251134','2021-07-09'),(45,'127.0.0.1','/','2021-07-09 07:53:41.315795','2021-07-09'),(46,'127.0.0.1','/','2021-07-09 07:53:45.246868','2021-07-09'),(47,'127.0.0.1','/','2021-07-09 07:55:37.689781','2021-07-09'),(48,'127.0.0.1','/','2021-07-09 07:55:39.836795','2021-07-09'),(49,'127.0.0.1','/','2021-07-09 07:55:43.115031','2021-07-09'),(50,'127.0.0.1','/','2021-07-09 07:56:04.344037','2021-07-09');
/*!40000 ALTER TABLE `bloguser_uservisit` ENABLE KEYS */;
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
  `user_id` varchar(22) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_bloguser_user_uid` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_bloguser_user_uid` FOREIGN KEY (`user_id`) REFERENCES `bloguser_user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(11,'bloguser','dailyvisitnum'),(12,'bloguser','totalvisitnum'),(6,'bloguser','user'),(13,'bloguser','uservisit'),(4,'contenttypes','contenttype'),(10,'link','advertise'),(9,'link','link'),(7,'post','category'),(8,'post','post'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-07-07 06:43:45.630145'),(2,'contenttypes','0002_remove_content_type_name','2021-07-07 06:43:45.699965'),(3,'auth','0001_initial','2021-07-07 06:43:45.760891'),(4,'auth','0002_alter_permission_name_max_length','2021-07-07 06:43:45.971642'),(5,'auth','0003_alter_user_email_max_length','2021-07-07 06:43:45.978623'),(6,'auth','0004_alter_user_username_opts','2021-07-07 06:43:45.984655'),(7,'auth','0005_alter_user_last_login_null','2021-07-07 06:43:45.992635'),(8,'auth','0006_require_contenttypes_0002','2021-07-07 06:43:45.997618'),(9,'auth','0007_alter_validators_add_error_messages','2021-07-07 06:43:46.004633'),(10,'auth','0008_alter_user_username_max_length','2021-07-07 06:43:46.011614'),(11,'auth','0009_alter_user_last_name_max_length','2021-07-07 06:43:46.018595'),(12,'auth','0010_alter_group_name_max_length','2021-07-07 06:43:46.036540'),(13,'auth','0011_update_proxy_permissions','2021-07-07 06:43:46.044491'),(14,'bloguser','0001_initial','2021-07-07 06:43:46.112339'),(15,'admin','0001_initial','2021-07-07 06:43:46.434624'),(16,'admin','0002_logentry_remove_auto_add','2021-07-07 06:43:46.540341'),(17,'admin','0003_logentry_add_action_flag_choices','2021-07-07 06:43:46.551312'),(18,'sessions','0001_initial','2021-07-07 06:43:46.591205'),(19,'post','0001_initial','2021-07-07 09:43:51.831832'),(20,'post','0002_post','2021-07-07 12:57:34.354986'),(21,'link','0001_initial','2021-07-08 07:11:23.341577'),(22,'link','0002_advertise','2021-07-08 09:12:04.119927'),(23,'bloguser','0002_dailyvisitnum_totalvisitnum_uservisit','2021-07-08 14:56:36.058940');
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
INSERT INTO `django_session` VALUES ('3dmebh90ir7hgxshw38hgek1fk9c45z8','OGNhN2Q2MjE0ZWQ0NDA1ZGFlZjg0MDY3ZjUyZmE4MTYwNTkwODk3Zjp7Il9hdXRoX3VzZXJfaWQiOiJDU3FTUFZpOHo0YzdpWTZZdnNtWnVmIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyODIzZDkwMDRhYTBkODAxZDlmMWM4MDQ1ZTQyYjAwYTJlNGU3Yjk3In0=','2021-07-23 04:23:53.582512');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link_advertise`
--

DROP TABLE IF EXISTS `link_advertise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `link_advertise` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image_url` varchar(200) NOT NULL,
  `link_url` varchar(200) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link_advertise`
--

LOCK TABLES `link_advertise` WRITE;
/*!40000 ALTER TABLE `link_advertise` DISABLE KEYS */;
INSERT INTO `link_advertise` VALUES (3,'太科大','https://img2.baidu.com/it/u=3297900923,3951409276&fm=26&fmt=auto&gp=0.jpg','https://www.tyust.edu.cn/index.htm','2021-07-09 04:38:07.074166');
/*!40000 ALTER TABLE `link_advertise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link_link`
--

DROP TABLE IF EXISTS `link_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `link_link` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `show_name` varchar(30) NOT NULL,
  `url` varchar(200) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `status` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link_link`
--

LOCK TABLES `link_link` WRITE;
/*!40000 ALTER TABLE `link_link` DISABLE KEYS */;
INSERT INTO `link_link` VALUES (1,'京东','京东','https://jd.com','2021-07-08 07:39:17.076496',1),(2,'京东二','京东二','https://jd.com','2021-07-08 08:18:51.537207',0);
/*!40000 ALTER TABLE `link_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_category`
--

DROP TABLE IF EXISTS `post_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_category`
--

LOCK TABLES `post_category` WRITE;
/*!40000 ALTER TABLE `post_category` DISABLE KEYS */;
INSERT INTO `post_category` VALUES (1,'C++基本语法','2021-07-07 10:39:38.625560'),(3,'萌系统','2021-07-07 14:47:28.501207');
/*!40000 ALTER TABLE `post_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_post`
--

DROP TABLE IF EXISTS `post_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `thumbnail` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `content_html` longtext NOT NULL,
  `priority` int NOT NULL,
  `is_hot` tinyint(1) NOT NULL,
  `status` int unsigned NOT NULL,
  `publish_time` datetime(6) NOT NULL,
  `time_id` varchar(30) NOT NULL,
  `read_num` int unsigned NOT NULL,
  `author_id` varchar(22) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_post_author_id_99d134d5_fk_bloguser_user_uid` (`author_id`),
  KEY `post_post_category_id_f4001070_fk_post_category_id` (`category_id`),
  CONSTRAINT `post_post_author_id_99d134d5_fk_bloguser_user_uid` FOREIGN KEY (`author_id`) REFERENCES `bloguser_user` (`uid`),
  CONSTRAINT `post_post_category_id_f4001070_fk_post_category_id` FOREIGN KEY (`category_id`) REFERENCES `post_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_post`
--

LOCK TABLES `post_post` WRITE;
/*!40000 ALTER TABLE `post_post` DISABLE KEYS */;
INSERT INTO `post_post` VALUES (1,'萌操作系统——致阿萌','今年阿萌的操作系统——萌系统','https://labfile.oss.aliyuncs.com/courses/3326/00001.jpeg','### 萌操作系统\r\n萌操作系统内核采用混合架构，这种`架构` 最大的好处就是简单，**快捷**。 这里不做过多讲解，仅仅只是*一笔带过*。','<h3 id=\"_1\">萌操作系统</h3>\n<p>萌操作系统内核采用混合架构，这种<code>架构</code> 最大的好处就是简单，<strong>快捷</strong>。 这里不做过多讲解，仅仅只是<em>一笔带过</em>。</p>',0,1,1,'2021-07-07 14:49:58.318844','202107076122',3,'CSqSPVi8z4c7iY6YvsmZuf',3),(2,'Peekpa首页大焦点图','这篇文章是用来展示首页大焦点图推荐位置的','https://labfile.oss.aliyuncs.com/courses/3326/00002.jpeg','首页大焦点图推荐位置， Priority 是 100。','<p>首页大焦点图推荐位置， Priority 是 100。</p>',100,1,1,'2021-07-08 03:22:13.443893','202107085584',2,'CSqSPVi8z4c7iY6YvsmZuf',1),(3,'Peekpa小焦点图左一，展示详情页图片','这篇文章主要展示的是文章的图片信息。','https://labfile.oss.aliyuncs.com/courses/3326/00003.jpeg','### 测试图片\r\n每一篇文章都可能会有很多配图，这些配图都是使用 Markdown 语法来实现的。所以我们这列就来实现一张配图的展示：\r\n\r\n![演示](https://labfile.oss.aliyuncs.com/courses/3326/00003.jpeg)\r\n\r\n演示完毕，上面的这个就是在博客详情页图片的展示。','<h3 id=\"_1\">测试图片</h3>\n<p>每一篇文章都可能会有很多配图，这些配图都是使用 Markdown 语法来实现的。所以我们这列就来实现一张配图的展示：</p>\n<p><img alt=\"演示\" src=\"https://labfile.oss.aliyuncs.com/courses/3326/00003.jpeg\" /></p>\n<p>演示完毕，上面的这个就是在博客详情页图片的展示。</p>',99,0,1,'2021-07-08 03:23:23.390113','202107081392',2,'CSqSPVi8z4c7iY6YvsmZuf',3),(4,'Peekpa小焦点中间，标题列表展示','这篇文章主要展示标题列表样式。','https://labfile.oss.aliyuncs.com/courses/3326/00004.jpeg','### 标题一\r\n一篇文章有很多标题，而且有很多层级的标题。我们这里就来实验左侧的标题列表是如何展示的。\r\n#### 子标题一\r\n子标题一内容。\r\n#### 子标题二\r\n子标题二内容。\r\n### 标题二\r\n#### 标题二的子标题\r\n标题二的子标题内容','<h3 id=\"_1\">标题一</h3>\n<p>一篇文章有很多标题，而且有很多层级的标题。我们这里就来实验左侧的标题列表是如何展示的。</p>\n<h4 id=\"_2\">子标题一</h4>\n<p>子标题一内容。</p>\n<h4 id=\"_3\">子标题二</h4>\n<p>子标题二内容。</p>\n<h3 id=\"_4\">标题二</h3>\n<h4 id=\"_5\">标题二的子标题</h4>\n<p>标题二的子标题内容</p>',98,0,1,'2021-07-08 03:24:19.747717','202107084941',2,'CSqSPVi8z4c7iY6YvsmZuf',1),(5,'Peekpa小焦点右一，代码部分展示','这篇文章主要展示文章代码样例。','https://labfile.oss.aliyuncs.com/courses/3326/00005.jpeg','计算机的博客文章，一般会有大量代码模块在文章中，那么我们这里就来给大家看代码如何展示。\r\n这里代码块需要遵循 Markdown 格式格式。所以应该是将以下代码包裹在三个 **`** 中：\r\n```python\r\nclass CategoryEditView(View):\r\n    def get(self, request):\r\n        category_id = request.GET.get(\'category_id\')\r\n        category = Category.objects.get(pk=category_id)\r\n        context = {\r\n            \'item_data\': category,\r\n        }\r\n        return render(request, \'cms/category/publish.html\', context=context)\r\n```','<p>计算机的博客文章，一般会有大量代码模块在文章中，那么我们这里就来给大家看代码如何展示。\n这里代码块需要遵循 Markdown 格式格式。所以应该是将以下代码包裹在三个 <strong>`</strong> 中：</p>\n<div class=\"codehilite\"><pre><span></span><code><span class=\"k\">class</span> <span class=\"nc\">CategoryEditView</span><span class=\"p\">(</span><span class=\"n\">View</span><span class=\"p\">):</span>\n    <span class=\"k\">def</span> <span class=\"nf\">get</span><span class=\"p\">(</span><span class=\"bp\">self</span><span class=\"p\">,</span> <span class=\"n\">request</span><span class=\"p\">):</span>\n        <span class=\"n\">category_id</span> <span class=\"o\">=</span> <span class=\"n\">request</span><span class=\"o\">.</span><span class=\"n\">GET</span><span class=\"o\">.</span><span class=\"n\">get</span><span class=\"p\">(</span><span class=\"s1\">&#39;category_id&#39;</span><span class=\"p\">)</span>\n        <span class=\"n\">category</span> <span class=\"o\">=</span> <span class=\"n\">Category</span><span class=\"o\">.</span><span class=\"n\">objects</span><span class=\"o\">.</span><span class=\"n\">get</span><span class=\"p\">(</span><span class=\"n\">pk</span><span class=\"o\">=</span><span class=\"n\">category_id</span><span class=\"p\">)</span>\n        <span class=\"n\">context</span> <span class=\"o\">=</span> <span class=\"p\">{</span>\n            <span class=\"s1\">&#39;item_data&#39;</span><span class=\"p\">:</span> <span class=\"n\">category</span><span class=\"p\">,</span>\n        <span class=\"p\">}</span>\n        <span class=\"k\">return</span> <span class=\"n\">render</span><span class=\"p\">(</span><span class=\"n\">request</span><span class=\"p\">,</span> <span class=\"s1\">&#39;cms/category/publish.html&#39;</span><span class=\"p\">,</span> <span class=\"n\">context</span><span class=\"o\">=</span><span class=\"n\">context</span><span class=\"p\">)</span>\n</code></pre></div>',97,0,1,'2021-07-08 03:26:03.165588','202107088065',2,'CSqSPVi8z4c7iY6YvsmZuf',1),(6,'Peekpa综合展示内容','博客详情页综合展示','https://labfile.oss.aliyuncs.com/courses/3326/00006.jpeg','因为是综合展示内容，所以内容会比较多。\r\n### 标题一\r\n一篇文章有很多标题，而且有很多层级的标题。我们这里就来实验左侧的标题列表是如何展示的。\r\n#### 代码部分展示\r\n\'\'\'\r\nclass CategoryEditView(View):\r\n    def get(self, request):\r\n        category_id = request.GET.get(\'category_id\')\r\n        category = Category.objects.get(pk=category_id)\r\n        context = {\r\n            \'item_data\': category,\r\n        }\r\n        return render(request, \'cms/category/publish.html\', context=context)\r\n\'\'\'\r\n#### 图片部分展示\r\n这个区域是图片位置展示，具体图片如下：\r\n![](https://labfile.oss.aliyuncs.com/courses/3326/00006.jpeg)\r\n### Markdown语法\r\n文章采用的是 Markdown 语法，这个 `语法` 最大的好处就是方便，**快捷**。 这里不做过多讲解，仅仅只是*演示使用*。','<p>因为是综合展示内容，所以内容会比较多。</p>\n<h3 id=\"_1\">标题一</h3>\n<p>一篇文章有很多标题，而且有很多层级的标题。我们这里就来实验左侧的标题列表是如何展示的。</p>\n<h4 id=\"_2\">代码部分展示</h4>\n<p>\'\'\'\nclass CategoryEditView(View):\n    def get(self, request):\n        category_id = request.GET.get(\'category_id\')\n        category = Category.objects.get(pk=category_id)\n        context = {\n            \'item_data\': category,\n        }\n        return render(request, \'cms/category/publish.html\', context=context)\n\'\'\'</p>\n<h4 id=\"_3\">图片部分展示</h4>\n<p>这个区域是图片位置展示，具体图片如下：\n<img alt=\"\" src=\"https://labfile.oss.aliyuncs.com/courses/3326/00006.jpeg\" /></p>\n<h3 id=\"markdown\">Markdown语法</h3>\n<p>文章采用的是 Markdown 语法，这个 <code>语法</code> 最大的好处就是方便，<strong>快捷</strong>。 这里不做过多讲解，仅仅只是<em>演示使用</em>。</p>',0,0,1,'2021-07-08 03:27:24.241261','202107086496',1,'CSqSPVi8z4c7iY6YvsmZuf',3);
/*!40000 ALTER TABLE `post_post` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-09 16:41:25
