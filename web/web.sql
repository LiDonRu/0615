-- MySQL dump 10.13  Distrib 5.7.35, for Win64 (x86_64)
--
-- Host: localhost    Database: web
-- ------------------------------------------------------
-- Server version	5.7.35-log

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add news',7,'add_news'),(26,'Can change news',7,'change_news'),(27,'Can delete news',7,'delete_news'),(28,'Can view news',7,'view_news'),(29,'Can add customer',8,'add_customer'),(30,'Can change customer',8,'change_customer'),(31,'Can delete customer',8,'delete_customer'),(32,'Can view customer',8,'view_customer'),(33,'Can add products',9,'add_products'),(34,'Can change products',9,'change_products'),(35,'Can delete products',9,'delete_products'),(36,'Can view products',9,'view_products'),(37,'Can add contact',10,'add_contact'),(38,'Can change contact',10,'change_contact'),(39,'Can delete contact',10,'delete_contact'),(40,'Can view contact',10,'view_contact'),(41,'Can add photo',11,'add_photo'),(42,'Can change photo',11,'change_photo'),(43,'Can delete photo',11,'delete_photo'),(44,'Can view photo',11,'view_photo');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$320000$BNHcS9wABspnbAolBr1kzb$aSEla7M+ovRKif8UBUsLOGG4lq7q+8fnpvzcSkLdvCA=','2022-02-14 11:27:59.051430',1,'admin','','','admin@good.com.tw',1,1,'2022-01-10 11:34:37.140494');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `create_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'John','Taipei','101 office?','ans??','2022-02-09 12:30:46.319172');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `sex` varchar(2) NOT NULL,
  `birthday` date NOT NULL,
  `email` varchar(70) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `create_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'陳大明','M','1988-01-01','','','','123','2022-01-10 13:25:33.348161'),(2,'王小明','F','1990-01-01','wang@gmail.com','048888888','台中市火車站1號','9999','2022-01-19 13:50:05.463529');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-01-10 12:21:10.202162','1','News object (1)',1,'[{\"added\": {}}]',7,1),(2,'2022-01-10 13:25:33.370157','1','Customer object (1)',1,'[{\"added\": {}}]',8,1),(3,'2022-01-12 13:39:27.997644','2','News object (2)',1,'[{\"added\": {}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(10,'contact','contact'),(5,'contenttypes','contenttype'),(8,'customer','customer'),(7,'news','news'),(11,'photos','photo'),(9,'product','products'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-01-10 11:24:24.205086'),(2,'auth','0001_initial','2022-01-10 11:24:24.829921'),(3,'admin','0001_initial','2022-01-10 11:24:25.064233'),(4,'admin','0002_logentry_remove_auto_add','2022-01-10 11:24:25.079854'),(5,'admin','0003_logentry_add_action_flag_choices','2022-01-10 11:24:25.079854'),(6,'contenttypes','0002_remove_content_type_name','2022-01-10 11:24:25.204821'),(7,'auth','0002_alter_permission_name_max_length','2022-01-10 11:24:25.282925'),(8,'auth','0003_alter_user_email_max_length','2022-01-10 11:24:25.361030'),(9,'auth','0004_alter_user_username_opts','2022-01-10 11:24:25.361030'),(10,'auth','0005_alter_user_last_login_null','2022-01-10 11:24:25.423614'),(11,'auth','0006_require_contenttypes_0002','2022-01-10 11:24:25.439139'),(12,'auth','0007_alter_validators_add_error_messages','2022-01-10 11:24:25.439139'),(13,'auth','0008_alter_user_username_max_length','2022-01-10 11:24:25.501622'),(14,'auth','0009_alter_user_last_name_max_length','2022-01-10 11:24:25.579722'),(15,'auth','0010_alter_group_name_max_length','2022-01-10 11:24:25.642205'),(16,'auth','0011_update_proxy_permissions','2022-01-10 11:24:25.657827'),(17,'auth','0012_alter_user_first_name_max_length','2022-01-10 11:24:25.735930'),(18,'sessions','0001_initial','2022-01-10 11:24:25.782793'),(19,'news','0001_initial','2022-01-10 12:12:46.922540'),(20,'customer','0001_initial','2022-01-10 13:15:54.613287'),(21,'product','0001_initial','2022-01-17 11:38:17.570273'),(22,'contact','0001_initial','2022-02-09 11:24:49.688149'),(23,'photos','0001_initial','2022-02-11 10:35:26.313103');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('3lbadta8d0swxsjhj8u7s8va66ql5j15','eyJVbG9naW5lZCI6dHJ1ZX0:1nIPG1:8NX7EfyVLLvTFHemlaHyyPrjBvixc9fVOR8nk5VIHP4','2022-02-25 06:18:13.534058'),('6rccv24cfwswlkvwmp6nvmr8amdijf1n','.eJxVjDsOwjAQBe_iGlmJ8ZeSPmew1t5dHEC2FCcV4u4QKQW0b2beS0TY1hK3TkucUVzEKE6_W4L8oLoDvEO9NZlbXZc5yV2RB-1yakjP6-H-HRTo5Vsb8tmNhHlUqNiDGVICDk4lZ11AYjae2BqvlQWGwWQc2CJC1kkHPov3Bw26OTM:1n7bFL:Tim11BZXhuDobGsWusifNBPM6gOwviRuUNDMbA2ror8','2022-01-26 10:52:51.578631'),('jgtp6bypq7iif7vxaoa0rm9n6h7rgh4i','.eJxVjDsOwjAQBe_iGlmJ8ZeSPmew1t5dHEC2FCcV4u4QKQW0b2beS0TY1hK3TkucUVzEKE6_W4L8oLoDvEO9NZlbXZc5yV2RB-1yakjP6-H-HRTo5Vsb8tmNhHlUqNiDGVICDk4lZ11AYjae2BqvlQWGwWQc2CJC1kkHPov3Bw26OTM:1n6t6o:ymL3PwOwSi1xv59HpaDgtPpDRa-28nU7X0h46BzCJh4','2022-01-24 11:45:06.337113'),('utqjmj2sjwab65y9zyaz3ps2iizoe9bb','.eJxVjrkOwjAQRP_FdWQlJj5ChZAoKamjtXedGBJbyiEKxL9jSxRQ7s7M03uxHvZt7PeVlj4gO7KGVb8_C-5BsQR4hzgk7lLclmB5qfBvuvJrQprO3-4fYIR1zGtJxumG0DUChTcga2vBd1pYrXSH5L005JU0rVDgoZYOa68QwbW27fwhQ29TGkKk7LItO1Ws4C8zhCnjn9ntNJQjC87s_QF5zEjN:1nJat9:EuQAwpgK5ezTxmGxuPBEjGIDG8njcstDWgjN2Dk50tA','2022-02-28 12:55:31.505083'),('ys6ukzmygavtxosurktx89c3ta6y33z5','.eJxVjrkOwjAQRP_FNbIcEx-hpE9Jba29u0kgsqUcFeLfcaQU0M6beZq3CLBvY9hXWsKE4iYacfnNIqQX5QPgE_JQZCp5W6Yoj4o86Sr7gjTfz-6fYIR1rGtDPrmGMDUaNXswKkbgzunorOuQmI0ntsa32gKDMgkVW0RIbWw7vlbpYy7DlKl-2ZadPl_LqD7U:1nIV6K:sCVg2-wuaUi7ygMkUr2Jqujd_SjOKQUC0QJGFhRFo8M','2022-02-25 12:32:36.351653');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '標題',
  `content` longtext NOT NULL,
  `photo_file` varchar(200) NOT NULL,
  `video_url` varchar(200) NOT NULL,
  `create_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'內政部強化防疫 宗教場所全程戴口罩 餐會不得逐桌敬酒','中央流行疫情指揮中心昨天宣布，維持二級警戒至1月24日，並調整部分防疫措施。\r\n\r\n內政部表示，為防堵疫情擴散，即日起加強宗教場所及宗教集會活動相關防疫措施，除須配合指揮中心防疫指引，全程配戴口罩、落實實聯制、量體溫外，欲辦理繞境、遊行及其他大型宗教活動者，都須提報防疫計畫，並經地方政府同意後辦理。\r\n\r\n內政部指出，10日起宗教團體神職人員主持宗教儀式或講道，必須全程配戴口罩。如果有舉辦餐會、宴席等飲食活動，不得逐桌敬酒、敬茶，並建議參與者維持適當社交距離。此外，如有提供住宿的場所，除同住家人外，以1人1室為限。\r\n\r\n內政部強調，為維護宗教團體內部人員自身及信眾安全，宗教團體應提供洗手設備或消毒用品，並定時清潔宗教場所、設備及用具；另外，宗教團體務必備有充足的人力落實防疫措施，並隨時注意疫情變化，維持勤洗手、戴口罩、保持社交距離，保護自己也保護家人。','001.jpg','https://www.youtube.com/watch?v=8MG--WuNW1Y','2022-01-10'),(2,'成員今成兩派 王少偉：懷念奮鬥時光','昔日男子天團「5566」是許多人的青春回憶，當時討厭他們的人怒罵「醜又台」但至今依然有眾多支持者敲碗合體，但成員如今壁壘分明，孫協志、王仁甫及許孟哲嗨玩《飢餓遊戲》，王少偉則在《綜藝3國智》撐起一片天，王少偉雖自認不會懷念過去，仍坦言：「很想念團體共同奮鬥的時候。」','news001.jpg','youtube','2022-01-12');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos_photo`
--

DROP TABLE IF EXISTS `photos_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos_photo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `upload_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos_photo`
--

LOCK TABLES `photos_photo` WRITE;
/*!40000 ALTER TABLE `photos_photo` DISABLE KEYS */;
INSERT INTO `photos_photo` VALUES (1,'image/chart-download.jpg','2022-02-11'),(2,'image/AI蚊子辨識.drawio.png','2022-02-11'),(3,'image/光敏電阻.drawio.png','2022-02-11'),(4,'image/1935025.png','2022-02-11'),(5,'image/220214184843/backicon.png','2022-02-14'),(6,'image/220214184935.jpg/范仲維手繪圖_-_范小強.jpg','2022-02-14'),(7,'image/大魔王.png','2022-02-14'),(8,'image/螢幕擷取畫面_2021-12-18_095017.png','2022-02-14');
/*!40000 ALTER TABLE `photos_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `brand` varchar(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `size` decimal(4,1) NOT NULL,
  `color` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `photo_url` varchar(200) NOT NULL,
  `discount` decimal(4,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Nike','NIKE RYZ 365 II 女休閒鞋-白-CU4874100',0.0,'',1928,'https://s.yimg.com/zp/MerchandiseImages/5DAEC0E983-SP-9528026.jpg',0.00),(2,'Nike','Nike 休閒鞋 TC 7900 運動 女鞋 基本款 厚底 舒適 簡約 穿搭 反光 米白 白 DD9682100',0.0,'',3932,'https://s.yimg.com/zp/MerchandiseImages/FA23366512-SP-9474821.jpg',0.00),(3,'Nike','NIKE 慢跑鞋 AIR ZOOM TEMPO NEXT% FK 灰黑 編織 男 (布魯克林) CI9923-006',0.0,'',2701,'https://s.yimg.com/ut/api/res/1.2/g9X4aSVjq9KLo41Box1HtQ--~B/dz0xNjg7aD0xNjg7cT0xMDA7Zmk9Zml0O3NzPTEuMDthcHBpZD15dHdtYWxs/https://s.yimg.com/fy/f014/item/p0373233048828-item-8bf1xf4x1000x1000-m.jpg',0.00),(4,'Nike','NIKE AIR FORCE 1 07 LV8男復古休閒運動鞋 -白綠-DO5220131',0.0,'',3024,'https://s.yimg.com/zp/MerchandiseImages/C43CDCB9D0-SP-10539773.jpg',0.00),(5,'Nike','NIKE KD Trey 5 VII EP 男鞋 籃球 避震 包覆 耐磨 黑 紅【運動世界】CK2089-002',0.0,'',1852,'https://s.yimg.com/ut/api/res/1.2/BL4uat8RMy_a4vykXh8aFg--~B/dz0xNjg7aD0xNjg7cT0xMDA7Zmk9Zml0O3NzPTEuMDthcHBpZD15dHdtYWxs/https://s.yimg.com/fy/95c2/item/p0268209274919-item-e218xf4x1000x1000-m.jpg',0.00),(6,'Nike','Nike 慢跑鞋 Flyknit Trainer 男鞋',0.0,'',2504,'https://s.yimg.com/zp/images/7D868D0F67AB673DECFB6665C670579F2098B0AD',0.00),(7,'Nike','NIKE 運動鞋 運動 健身 慢跑  男鞋 黑 CD4371012 REACT INFINITY RUN FK',0.0,'',3869,'https://s.yimg.com/zp/MerchandiseImages/CA1F1559F1-SP-8971248.jpg',0.00),(8,'Nike','Nike 休閒鞋 Air Max 90 SE 運動 女鞋 經典款 氣墊 舒適 簡約 球鞋 穿搭 白 灰 CV8824100',0.0,'',2924,'https://s.yimg.com/zp/MerchandiseImages/15086A68BA-SP-9553390.jpg',0.00),(9,'Nike','NIKE NIKE REVOLUTION 6 NN  男 慢跑鞋-DC3728001',0.0,'',1253,'https://s.yimg.com/zp/MerchandiseImages/B5247EF062-SP-10797241.jpg',0.00),(10,'Nike','Nike 休閒鞋 W  Air Zoom Type 女鞋 奶茶 網美 舒適 氣墊 球鞋 米白 粉 CZ1151101',0.0,'',3092,'https://s.yimg.com/zp/MerchandiseImages/6F9F8826C2-Product-27323654.jpg',0.00),(11,'Nike','Nike 休閒鞋 Wearallday WNTR 運動 男鞋 輕量 舒適 避震 簡約 球鞋 穿搭 黑 白 CT1729001',0.0,'',1328,'https://s.yimg.com/zp/MerchandiseImages/6A2DB10B80-SP-8881204.jpg',0.00),(12,'Nike','Nike Air Jordan 11代 Retro 男鞋 Cool Grey 喬丹 AJ11 酷灰 灰 白 CT8012005',0.0,'',6704,'https://s.yimg.com/zp/MerchandiseImages/B940C9D185-SP-10727411.jpg',0.00),(13,'Nike','Nike 拖鞋 Offline 2 0 穆勒鞋 套腳 男女鞋 多層次網布 軟木塞 反光 半包拖 情侶款 黑 CZ0332-001',0.0,'',3176,'https://s.yimg.com/zp/MerchandiseImages/2310ecf57b-Gd-9698318.jpg',0.00),(14,'Nike','Nike 休閒鞋 RYZ 365 II 運動 女鞋 厚底 舒適 增高 球鞋 穿搭 簡約 黑 白 CU4874001',0.0,'',2084,'https://s.yimg.com/zp/MerchandiseImages/6903FFF764-SP-9258062.jpg',0.00),(15,'Nike','NIKE 休閒鞋  運動鞋 男鞋 粉白 DC4831002 AF1 AF1 CRATER FLYKNIT',0.0,'',2470,'https://s.yimg.com/zp/MerchandiseImages/06364C453C-SP-10544511.jpg',0.00);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-14 21:04:15
