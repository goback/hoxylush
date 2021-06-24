-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: hoxylush
-- ------------------------------------------------------
-- Server version	8.0.25-0ubuntu0.20.04.1

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'베스트'),(2,'신제품'),(3,'배쓰'),(4,'샤워'),(5,'보디'),(6,'페이스'),(7,'헤어'),(8,'메이크업'),(9,'퍼퓸'),(10,'기프트'),(11,'비건');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
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
  `object_id` longtext COLLATE utf8mb4_general_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
  `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(19,'orders','order'),(21,'orders','orderitem'),(20,'orders','orderstatus'),(7,'products','category'),(8,'products','ingredient'),(9,'products','like'),(10,'products','product'),(11,'products','productdescription'),(12,'products','productimage'),(13,'products','productoption'),(14,'products','producttag'),(15,'products','review'),(18,'products','reviewimage'),(17,'products','subcategory'),(16,'products','tag'),(5,'sessions','session'),(6,'users','user');
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
  `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-06-18 19:33:40.799588'),(2,'contenttypes','0002_remove_content_type_name','2021-06-18 19:33:42.039543'),(3,'auth','0001_initial','2021-06-18 19:33:45.718419'),(4,'auth','0002_alter_permission_name_max_length','2021-06-18 19:33:46.548212'),(5,'auth','0003_alter_user_email_max_length','2021-06-18 19:33:46.597052'),(6,'auth','0004_alter_user_username_opts','2021-06-18 19:33:46.630466'),(7,'auth','0005_alter_user_last_login_null','2021-06-18 19:33:46.676768'),(8,'auth','0006_require_contenttypes_0002','2021-06-18 19:33:46.689306'),(9,'auth','0007_alter_validators_add_error_messages','2021-06-18 19:33:46.723274'),(10,'auth','0008_alter_user_username_max_length','2021-06-18 19:33:46.773865'),(11,'auth','0009_alter_user_last_name_max_length','2021-06-18 19:33:46.827863'),(12,'auth','0010_alter_group_name_max_length','2021-06-18 19:33:46.897728'),(13,'auth','0011_update_proxy_permissions','2021-06-18 19:33:46.931125'),(14,'auth','0012_alter_user_first_name_max_length','2021-06-18 19:33:46.968320'),(15,'users','0001_initial','2021-06-18 19:33:49.722155'),(16,'admin','0001_initial','2021-06-18 19:33:50.441189'),(17,'admin','0002_logentry_remove_auto_add','2021-06-18 19:33:50.490910'),(18,'admin','0003_logentry_add_action_flag_choices','2021-06-18 19:33:50.534886'),(19,'products','0001_initial','2021-06-18 19:33:53.214407'),(20,'orders','0001_initial','2021-06-18 19:33:53.895683'),(21,'orders','0002_initial','2021-06-18 19:33:54.880530'),(22,'orders','0003_order_user','2021-06-18 19:33:55.221765'),(23,'products','0002_initial','2021-06-18 19:33:59.320348'),(24,'sessions','0001_initial','2021-06-18 19:33:59.557097');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredients` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `image_url` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ingredients_product_id_3ab80c36_fk_products_id` (`product_id`),
  CONSTRAINT `ingredients_product_id_3ab80c36_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES (1,'바닷소금','부드럽고 촉촉한\\n피부에 도움\\n*씨솔트','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',1),(2,'만다린 껍질 오일','상쾌한 향기,\\n건강한 피부에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',1),(3,'베르가못 오일','밝고 상쾌한\\n무드에 도움','https://unsplash.com/photos/lamdffhcb_I',1),(4,'오렌지 주스','기분 좋은\\n상큼한 향기','https://unsplash.com/photos/fz4j0RPp9qo',1),(5,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',2),(6,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',2),(7,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','https://unsplash.com/photos/lamdffhcb_I',2),(8,'바닷소금','부드럽고 촉촉한\\n피부에 도움\\n*씨솔트','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',3),(9,'만다린 껍질 오일','상쾌한 향기,\\n건강한 피부에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',3),(10,'베르가못 오일','밝고 상쾌한\\n무드에 도움','https://unsplash.com/photos/lamdffhcb_I',3),(11,'오렌지 주스','기분 좋은\\n상큼한 향기','https://unsplash.com/photos/fz4j0RPp9qo',3),(12,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',4),(13,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',4),(14,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','https://unsplash.com/photos/lamdffhcb_I',4),(15,'바닷소금','부드럽고 촉촉한\\n피부에 도움\\n*씨솔트','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',5),(16,'만다린 껍질 오일','상쾌한 향기,\\n건강한 피부에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',5),(17,'베르가못 오일','밝고 상쾌한\\n무드에 도움','https://unsplash.com/photos/lamdffhcb_I',5),(18,'오렌지 주스','기분 좋은\\n상큼한 향기','https://unsplash.com/photos/fz4j0RPp9qo',5),(19,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',6),(20,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',6),(21,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','https://unsplash.com/photos/lamdffhcb_I',6),(22,'바닷소금','부드럽고 촉촉한\\n피부에 도움\\n*씨솔트','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',7),(23,'만다린 껍질 오일','상쾌한 향기,\\n건강한 피부에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',7),(24,'베르가못 오일','밝고 상쾌한\\n무드에 도움','https://unsplash.com/photos/lamdffhcb_I',7),(25,'오렌지 주스','기분 좋은\\n상큼한 향기','https://unsplash.com/photos/fz4j0RPp9qo',7),(26,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',8),(27,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',8),(28,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','https://unsplash.com/photos/lamdffhcb_I',8),(29,'바닷소금','부드럽고 촉촉한\\n피부에 도움\\n*씨솔트','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',9),(30,'만다린 껍질 오일','상쾌한 향기,\\n건강한 피부에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',9),(31,'베르가못 오일','밝고 상쾌한\\n무드에 도움','https://unsplash.com/photos/lamdffhcb_I',9),(32,'오렌지 주스','기분 좋은\\n상큼한 향기','https://unsplash.com/photos/fz4j0RPp9qo',9),(33,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',10),(34,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',10),(35,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','https://unsplash.com/photos/lamdffhcb_I',10),(36,'바닷소금','부드럽고 촉촉한\\n피부에 도움\\n*씨솔트','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',11),(37,'만다린 껍질 오일','상쾌한 향기,\\n건강한 피부에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',11),(38,'베르가못 오일','밝고 상쾌한\\n무드에 도움','https://unsplash.com/photos/lamdffhcb_I',11),(39,'오렌지 주스','기분 좋은\\n상큼한 향기','https://unsplash.com/photos/fz4j0RPp9qo',11),(40,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',12),(41,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',12),(42,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','https://unsplash.com/photos/lamdffhcb_I',12),(43,'바닷소금','부드럽고 촉촉한\\n피부에 도움\\n*씨솔트','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',13),(44,'만다린 껍질 오일','상쾌한 향기,\\n건강한 피부에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',13),(45,'베르가못 오일','밝고 상쾌한\\n무드에 도움','https://unsplash.com/photos/lamdffhcb_I',13),(46,'오렌지 주스','기분 좋은\\n상큼한 향기','https://unsplash.com/photos/fz4j0RPp9qo',13),(47,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',14),(48,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',14),(49,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','https://unsplash.com/photos/lamdffhcb_I',14),(50,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',15),(51,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',15),(52,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','https://unsplash.com/photos/lamdffhcb_I',15),(53,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',16),(54,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',16),(55,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','https://unsplash.com/photos/lamdffhcb_I',16),(56,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',17),(57,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',17),(58,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','https://unsplash.com/photos/lamdffhcb_I',17),(59,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',18),(60,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',18),(61,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','https://unsplash.com/photos/lamdffhcb_I',18),(62,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',19),(63,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',19),(64,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','https://unsplash.com/photos/lamdffhcb_I',19),(65,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',20),(66,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',20),(67,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','https://unsplash.com/photos/lamdffhcb_I',20),(68,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',21),(69,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',21),(70,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','https://unsplash.com/photos/lamdffhcb_I',21),(71,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',22),(72,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',22),(73,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','https://unsplash.com/photos/lamdffhcb_I',22),(74,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',23),(75,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',23),(76,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','https://unsplash.com/photos/lamdffhcb_I',23),(77,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',24),(78,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',24),(79,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','https://unsplash.com/photos/lamdffhcb_I',24),(80,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',25),(81,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',25),(82,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','https://unsplash.com/photos/lamdffhcb_I',25),(83,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',26),(84,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',26),(85,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','https://unsplash.com/photos/lamdffhcb_I',26),(86,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',27),(87,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',27),(88,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','https://unsplash.com/photos/lamdffhcb_I',27),(89,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',28),(90,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',28),(91,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','https://unsplash.com/photos/lamdffhcb_I',28),(92,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',29),(93,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',29),(94,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','https://unsplash.com/photos/lamdffhcb_I',29),(95,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',30),(96,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',30),(97,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','https://unsplash.com/photos/lamdffhcb_I',30),(98,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',31),(99,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',31),(100,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','https://unsplash.com/photos/lamdffhcb_I',31),(101,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',32),(102,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',32),(103,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','https://unsplash.com/photos/lamdffhcb_I',32),(104,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',33),(105,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',33),(106,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','https://unsplash.com/photos/lamdffhcb_I',33),(107,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',34),(108,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',34),(109,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','https://unsplash.com/photos/lamdffhcb_I',34),(110,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',35),(111,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',35),(112,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','https://unsplash.com/photos/lamdffhcb_I',35),(113,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',36),(114,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',36),(115,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','https://unsplash.com/photos/lamdffhcb_I',36),(116,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',37),(117,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',37),(118,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','https://unsplash.com/photos/lamdffhcb_I',37),(119,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',38),(120,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',38),(121,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','https://unsplash.com/photos/lamdffhcb_I',38),(122,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',39),(123,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',39),(124,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','https://unsplash.com/photos/lamdffhcb_I',39),(125,'레몬 껍질 오일','상큼한 향기로\\n밝은 무드에 도움','https://images.unsplash.com/photo-1577003811926-53b288a6e5d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',40),(126,'다마스크 장미 오일','감미로운 향기,\\n차분한 무드에 도움','https://images.unsplash.com/photo-1585757624274-c8efade100bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80',40),(127,'쿠푸아수 버터','촉촉한 피부에 도움\\n*코푸아수씨드버터','https://unsplash.com/photos/lamdffhcb_I',40);
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_product_id_7f73cfa5_fk_products_id` (`product_id`),
  KEY `likes_user_id_0899754c_fk_users_id` (`user_id`),
  CONSTRAINT `likes_product_id_7f73cfa5_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `likes_user_id_0899754c_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `price` decimal(10,2) NOT NULL,
  `quantity` int NOT NULL,
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `product_option_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_items_order_id_412ad78b_fk_orders_id` (`order_id`),
  KEY `order_items_product_id_dd557d5a_fk_products_id` (`product_id`),
  KEY `order_items_product_option_id_b1b990eb_fk_product_options_id` (`product_option_id`),
  CONSTRAINT `order_items_order_id_412ad78b_fk_orders_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `order_items_product_id_dd557d5a_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `order_items_product_option_id_b1b990eb_fk_product_options_id` FOREIGN KEY (`product_option_id`) REFERENCES `product_options` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_status`
--

DROP TABLE IF EXISTS `order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_status` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `status` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status`
--

LOCK TABLES `order_status` WRITE;
/*!40000 ALTER TABLE `order_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `order_status_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_order_status_id_05e726df_fk_order_status_id` (`order_status_id`),
  KEY `orders_user_id_7e2523fb_fk_users_id` (`user_id`),
  CONSTRAINT `orders_order_status_id_05e726df_fk_order_status_id` FOREIGN KEY (`order_status_id`) REFERENCES `order_status` (`id`),
  CONSTRAINT `orders_user_id_7e2523fb_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_descriptions`
--

DROP TABLE IF EXISTS `product_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_descriptions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `image_url` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_descriptions_product_id_b3b9f1aa_fk_products_id` (`product_id`),
  CONSTRAINT `product_descriptions_product_id_b3b9f1aa_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_descriptions`
--

LOCK TABLES `product_descriptions` WRITE;
/*!40000 ALTER TABLE `product_descriptions` DISABLE KEYS */;
INSERT INTO `product_descriptions` VALUES (1,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',1),(2,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',1),(3,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',1),(4,'은은한 장미 향기가 퍼집니다.\\n로즈 앱솔루트와 질 좋은 브라질넛의 만남은 목말라 있는\\n당신의 피부에 환상 그 이상의 촉촉함을 선사할 거예요.\\nTIP!장미가 가장 향기로운 시간인 새벽에 수확한 다마스크 장미를 듬뿍 담았답니다.','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',2),(5,'대표성분\\n레몬 껍질 오일, 다마스크 장미 오일, 쿠푸아수 버터\\n전 성분 표기\\n온천수,글리세린,정제수,스위트아몬드오일,브라질넛씨오일, 시어버터,스테아릭애씨드,코포아수씨드버터,아르간커넬오일(3.0%), 트라이에탄올아민,카카오씨드버터,영하구기자추출물,향료, 다마스크장미꽃오일,센티드제라늄꽃오일,레몬껍질오일,시트로넬올, 쿠마린,제라니올,세테아릴알코올,솔잣나무잎추출물,바닐라열매','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',2),(6,'헤어 컨디셔너를 사용하듯 몸에 사용해주세요. 입욕 또는 샤워 도중 젖은 피부 위로 부드럽게 마사지하듯 바르고 물로 헹궈낸 뒤, 가볍게 수건으로 닦아주세요.\\n#블랙팟의환생 #로즈아르간보디컨디셔너 #비건화장품 #보디컨디셔너 #RosArganBodyConditioner','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',2),(7,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',3),(8,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',3),(9,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',3),(10,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',4),(11,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',4),(12,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',4),(13,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',5),(14,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',5),(15,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',5),(16,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',6),(17,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',6),(18,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',6),(19,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',7),(20,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',7),(21,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',7),(22,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',9),(23,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',9),(24,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',9),(25,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',10),(26,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',10),(27,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',10),(28,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',11),(29,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',11),(30,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',11),(31,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',12),(32,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',12),(33,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',12),(34,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',13),(35,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',13),(36,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',13),(37,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',14),(38,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',14),(39,'은은한 장미 향기가 퍼집니다.\\n로즈 앱솔루트와 질 좋은 브라질넛의 만남은 목말라 있는\\n당신의 피부에 환상 그 이상의 촉촉함을 선사할 거예요.\\nTIP!장미가 가장 향기로운 시간인 새벽에 수확한 다마스크 장미를 듬뿍 담았답니다.','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',14),(40,'대표성분\\n레몬 껍질 오일, 다마스크 장미 오일, 쿠푸아수 버터\\n전 성분 표기\\n온천수,글리세린,정제수,스위트아몬드오일,브라질넛씨오일, 시어버터,스테아릭애씨드,코포아수씨드버터,아르간커넬오일(3.0%), 트라이에탄올아민,카카오씨드버터,영하구기자추출물,향료, 다마스크장미꽃오일,센티드제라늄꽃오일,레몬껍질오일,시트로넬올, 쿠마린,제라니올,세테아릴알코올,솔잣나무잎추출물,바닐라열매','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',15),(41,'헤어 컨디셔너를 사용하듯 몸에 사용해주세요. 입욕 또는 샤워 도중 젖은 피부 위로 부드럽게 마사지하듯 바르고 물로 헹궈낸 뒤, 가볍게 수건으로 닦아주세요.\\n#블랙팟의환생 #로즈아르간보디컨디셔너 #비건화장품 #보디컨디셔너 #RosArganBodyConditioner','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',15),(42,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',15),(43,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',16),(44,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',16),(45,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',16),(46,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',17),(47,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',17),(48,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',17),(49,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',18),(50,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',18),(51,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',18),(52,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',19),(53,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',19),(54,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',19),(55,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',20),(56,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',20),(57,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',20),(58,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',21),(59,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',21),(60,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',21),(61,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',22),(62,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',22),(63,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',22),(64,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',23),(65,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',23),(66,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',23),(67,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',24),(68,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',24),(69,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',24),(70,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',25),(71,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',25),(72,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',25),(73,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',26),(74,'은은한 장미 향기가 퍼집니다.\\n로즈 앱솔루트와 질 좋은 브라질넛의 만남은 목말라 있는\\n당신의 피부에 환상 그 이상의 촉촉함을 선사할 거예요.\\nTIP!장미가 가장 향기로운 시간인 새벽에 수확한 다마스크 장미를 듬뿍 담았답니다.','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',26),(75,'대표성분\\n레몬 껍질 오일, 다마스크 장미 오일, 쿠푸아수 버터\\n전 성분 표기\\n온천수,글리세린,정제수,스위트아몬드오일,브라질넛씨오일, 시어버터,스테아릭애씨드,코포아수씨드버터,아르간커넬오일(3.0%), 트라이에탄올아민,카카오씨드버터,영하구기자추출물,향료, 다마스크장미꽃오일,센티드제라늄꽃오일,레몬껍질오일,시트로넬올, 쿠마린,제라니올,세테아릴알코올,솔잣나무잎추출물,바닐라열매','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',26),(76,'헤어 컨디셔너를 사용하듯 몸에 사용해주세요. 입욕 또는 샤워 도중 젖은 피부 위로 부드럽게 마사지하듯 바르고 물로 헹궈낸 뒤, 가볍게 수건으로 닦아주세요.\\n#블랙팟의환생 #로즈아르간보디컨디셔너 #비건화장품 #보디컨디셔너 #RosArganBodyConditioner','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',27),(77,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',27),(78,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',27),(79,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',28),(80,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',28),(81,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',28),(82,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',29),(83,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',29),(84,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',29),(85,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',30),(86,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',30),(87,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',30),(88,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',31),(89,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',31),(90,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',31),(91,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',32),(92,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',32),(93,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',32),(94,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',33),(95,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',33),(96,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',33),(97,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',34),(98,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',34),(99,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',34),(100,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',35),(101,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',35),(102,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',35),(103,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',36),(104,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',36),(105,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',36),(106,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',37),(107,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',37),(108,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',37),(109,'은은한 장미 향기가 퍼집니다.\\n로즈 앱솔루트와 질 좋은 브라질넛의 만남은 목말라 있는\\n당신의 피부에 환상 그 이상의 촉촉함을 선사할 거예요.\\nTIP!장미가 가장 향기로운 시간인 새벽에 수확한 다마스크 장미를 듬뿍 담았답니다.','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',38),(110,'대표성분\\n레몬 껍질 오일, 다마스크 장미 오일, 쿠푸아수 버터\\n전 성분 표기\\n온천수,글리세린,정제수,스위트아몬드오일,브라질넛씨오일, 시어버터,스테아릭애씨드,코포아수씨드버터,아르간커넬오일(3.0%), 트라이에탄올아민,카카오씨드버터,영하구기자추출물,향료, 다마스크장미꽃오일,센티드제라늄꽃오일,레몬껍질오일,시트로넬올, 쿠마린,제라니올,세테아릴알코올,솔잣나무잎추출물,바닐라열매','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',38),(111,'헤어 컨디셔너를 사용하듯 몸에 사용해주세요. 입욕 또는 샤워 도중 젖은 피부 위로 부드럽게 마사지하듯 바르고 물로 헹궈낸 뒤, 가볍게 수건으로 닦아주세요.\\n#블랙팟의환생 #로즈아르간보디컨디셔너 #비건화장품 #보디컨디셔너 #RosArganBodyConditioner','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',38),(112,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',39),(113,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',39),(114,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',39),(115,'갓 만든 오렌지 주스 한 잔을 상상해보세요!\\n이 제품은 자연에서 얻은 깨끗한 소금을 가득 담아 빛나는 피부로 가꾸는데 도움을 줍니다.\\n빛나는 오렌지 빛 스크럽을 듬뿍 떠서 피부에 얹어주세요. 신선한 오렌지 주스와 바닷소금은\\n피부를 깨끗하게 하는데 도움을 주고 레드 만다린, 귤, 베르가못은 피부뿐 아니라 마음까지도 밝혀줍니다.\\nTIP!손으로 직접 재배한 우리의 바닷소금은 훌륭한 천연 스크럽 역할을 합니다. 물에 녹아 쓰레기도 남기지 않죠.','https://images.unsplash.com/photo-1533228705496-072ca298b122?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',40),(116,'대표성분\\n바닷소금, 만다린 껍질 오일, 베르가못 오일, 오렌지 주스\\n전 성분 표기\\n씨솔트,정제수,소듐라우레스설페이트,소듐코코암포아세테이트,향료, 필리핀오렌지전초오일,만다린껍질오일,베르가모트오일,리모넨, 시트랄,리날룰,오렌지즙(1%),라우릴베타인,락틱애씨드, 오렌지껍질(0.15%),오렌지껍질왁스,등색205호','https://images.unsplash.com/photo-1582073715578-de9b76ab3dbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1649&q=80',40),(117,'부드러운 스크럽을 원한다면 적당량을 덜어 샤워 젤 처럼 사용해주세요! 거칠고 강한 것이 좋다면 제품을 한 손에 듬뿍 덜어내어, 건조한 피부를 시원하게 문질러 준 후 샤워를 시작하세요!\\n#샤워스크럽 #블랙팟의환생 #ShowerScrub #OrangeShowerScrub #오렌지','https://images.unsplash.com/photo-1559830772-73d4ede5bcac?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',40);
/*!40000 ALTER TABLE `product_descriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_images` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image_url` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_images_product_id_28ebf5f0_fk_products_id` (`product_id`),
  CONSTRAINT `product_images_product_id_28ebf5f0_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (1,'https://bit.ly/hoxylush1',1),(2,'https://bit.ly/hoxylush2',1),(3,'https://bit.ly/hoxylush3',1),(4,'https://bit.ly/hoxylush4',2),(5,'https://bit.ly/hoxylush5',2),(6,'https://bit.ly/hoxylush6',2),(7,'https://bit.ly/hoxylush7',3),(8,'https://bit.ly/hoxylush8',4),(9,'https://bit.ly/hoxylush9',5),(10,'https://bit.ly/hoxylush10',6),(11,'https://bit.ly/hoxylush11',7),(12,'https://bit.ly/hoxylush12',8),(13,'https://bit.ly/hoxylush13',9),(14,'https://bit.ly/hoxylush14',10),(15,'https://bit.ly/hoxylush15',11),(16,'https://bit.ly/hoxylush16',12),(17,'https://bit.ly/hoxylush17',13),(18,'https://bit.ly/hoxylush18',14),(19,'https://bit.ly/hoxylush19',15),(20,'https://bit.ly/hoxylush20',16),(21,'https://bit.ly/hoxylush21',17),(22,'https://bit.ly/hoxylush22',18),(23,'https://bit.ly/hoxylush23',19),(24,'https://bit.ly/hoxylush24',20),(25,'https://bit.ly/hoxylush25',21),(26,'https://bit.ly/hoxylush26',22),(27,'https://bit.ly/hoxylush27',23),(28,'https://bit.ly/hoxylush28',24),(29,'https://bit.ly/hoxylush29',25),(30,'https://bit.ly/hoxylush30',26),(31,'https://bit.ly/hoxylush31',27),(32,'https://bit.ly/hoxylush32',28),(33,'https://bit.ly/hoxylush33',29),(34,'https://bit.ly/hoxylush34',30),(35,'https://bit.ly/hoxylush35',31),(36,'https://bit.ly/hoxylush36',32),(37,'https://bit.ly/hoxylush37',33),(38,'https://bit.ly/hoxylush38',34),(39,'https://bit.ly/hoxylush39',35),(40,'https://bit.ly/hoxylush40',36),(41,'https://bit.ly/hoxylush6',37),(42,'https://bit.ly/hoxylush20',38),(43,'https://bit.ly/hoxylush34',39),(44,'https://bit.ly/hoxylush11',40);
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_options`
--

DROP TABLE IF EXISTS `product_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_options` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `weight` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_options_product_id_5452622a_fk_products_id` (`product_id`),
  CONSTRAINT `product_options_product_id_5452622a_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_options`
--

LOCK TABLES `product_options` WRITE;
/*!40000 ALTER TABLE `product_options` DISABLE KEYS */;
INSERT INTO `product_options` VALUES (1,'330g',28000.00,3,1),(2,'665g',50000.00,3,1),(3,'225g',42000.00,3,2),(4,'450g',78000.00,3,2),(5,'180g',17000.00,3,3),(6,'185g',21000.00,3,4),(7,'200g',20000.00,3,5),(8,'180g',23000.00,3,6),(9,'75g',22000.00,3,7),(10,'200g',23000.00,3,8),(11,'160g',35000.00,3,9),(12,'150g',35000.00,3,10),(13,'150g',25000.00,3,11),(14,'120',18000.00,3,12),(15,'80g',18000.00,3,13),(16,'330g',28000.00,3,14),(17,'665g',50000.00,3,15),(18,'225g',42000.00,3,16),(19,'450g',78000.00,3,17),(20,'180g',17000.00,3,18),(21,'185g',21000.00,0,19),(22,'200g',20000.00,0,20),(23,'180g',23000.00,3,21),(24,'75g',22000.00,3,22),(25,'200g',23000.00,3,23),(26,'160g',35000.00,3,24),(27,'150g',35000.00,3,25),(28,'150g',25000.00,3,26),(29,'120',18000.00,3,27),(30,'80g',18000.00,3,28),(31,'330g',28000.00,3,29),(32,'665g',50000.00,3,30),(33,'225g',42000.00,3,31),(34,'450g',78000.00,3,32),(35,'180g',17000.00,3,33),(36,'185g',21000.00,3,34),(37,'200g',20000.00,3,35),(38,'180g',23000.00,3,36),(39,'75g',22000.00,3,37),(40,'200g',23000.00,3,38),(41,'160g',35000.00,3,39),(42,'150g',35000.00,3,40);
/*!40000 ALTER TABLE `product_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_tags`
--

DROP TABLE IF EXISTS `product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_tags_product_id_138ace6f_fk_products_id` (`product_id`),
  KEY `product_tags_tag_id_dd3a8625_fk_tags_id` (`tag_id`),
  CONSTRAINT `product_tags_product_id_138ace6f_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `product_tags_tag_id_dd3a8625_fk_tags_id` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_tags`
--

LOCK TABLES `product_tags` WRITE;
/*!40000 ALTER TABLE `product_tags` DISABLE KEYS */;
INSERT INTO `product_tags` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,2),(5,2,3),(6,3,1),(7,3,2),(8,3,3),(9,4,1),(10,4,3),(11,5,1),(12,5,3),(13,6,1),(14,6,3),(15,7,1),(16,8,1),(17,8,2),(18,9,1),(19,9,2),(20,10,1),(21,10,2),(22,11,1),(23,11,2),(24,12,1),(25,12,2),(26,13,2),(27,14,1),(28,14,2),(29,14,3),(30,15,2),(31,15,3),(32,16,1),(33,16,2),(34,16,3),(35,17,1),(36,17,3),(37,18,1),(38,18,3),(39,19,1),(40,19,3),(41,20,1),(42,21,1),(43,21,2),(44,22,1),(45,22,2),(46,23,1),(47,23,2),(48,24,1),(49,24,2),(50,25,1),(51,25,2),(52,26,2),(53,27,1),(54,27,2),(55,27,3),(56,28,2),(57,28,3),(58,29,1),(59,29,2),(60,29,3),(61,30,1),(62,30,3),(63,31,1),(64,31,3),(65,32,1),(66,32,3),(67,33,1),(68,34,1),(69,34,2),(70,35,1),(71,35,2),(72,36,1),(73,36,2),(74,37,1),(75,37,2),(76,38,1),(77,38,2),(78,39,2),(79,40,1),(80,40,2),(81,40,3);
/*!40000 ALTER TABLE `product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `hashtag` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `hit` int NOT NULL,
  `video_url` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `category_id` bigint NOT NULL,
  `sub_category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_category_id_a7a3a156_fk_categories_id` (`category_id`),
  KEY `products_sub_category_id_f08b7711_fk_sub_categories_id` (`sub_category_id`),
  CONSTRAINT `products_category_id_a7a3a156_fk_categories_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `products_sub_category_id_f08b7711_fk_sub_categories_id` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'오렌지','#샤워스크럽 #갓짜낸오렌지주스',1,'https://www.youtube.com/embed/T11HgSmAYuM',4,21),(2,'로즈 아르간 보디 컨디셔너','#보디컨디셔너 #장미꽃밭에누은듯',2,'https://www.youtube.com/embed/msyb_LI1H5k',4,18),(3,'더티','#배쓰밤 #고운바닷소금가득',3,'https://www.youtube.com/embed/gfwi_tg8aXw',3,12),(4,'로즈 골드','#배쓰밤 #놀라운배쓰아트',4,'https://www.youtube.com/embed/msyb_LI1H5k',3,12),(5,'아톰 하트 마더','#배쓰밤 #장미와오렌지',5,'https://www.youtube.com/embed/gfwi_tg8aXw',3,12),(6,'마더 오브 펄','#배쓰밤 #우아한진주',6,'https://www.youtube.com/embed/gfwi_tg8aXw',3,12),(7,'싱잉 대퍼딜','#버블바 #비누방울놀이',7,'https://www.youtube.com/embed/gfwi_tg8aXw',3,13),(8,'더티 퍼퓸 버블 보틀','#버블보틀 #더티마니아',8,'https://www.youtube.com/embed/gfwi_tg8aXw',3,13),(9,'러브 퍼퓸 버블 보틀','#버블바 #산뜻한레몬그라스',9,'https://www.youtube.com/embed/gfwi_tg8aXw',3,13),(10,'칵테일 퍼퓸 버블 보틀','#퍼퓸보틀 #부드러운칵테일',10,'https://www.youtube.com/embed/gfwi_tg8aXw',3,13),(11,'1000 키시스 딥 퍼퓸 버블 보틀','#퍼퓸보틀 #마음까지따뜻해지는',1,'https://www.youtube.com/embed/gfwi_tg8aXw',3,13),(12,'워리 몬스터','#버블바 #라벤더거품입욕',25,'https://www.youtube.com/embed/gfwi_tg8aXw',3,13),(13,'체리드웬즈 콜드론','#배쓰오일 #부드러운코코아버터',66,'https://www.youtube.com/embed/0hk7llGJraM',3,14),(14,'콜드 하츠','#콜드오일 #차가운마음',46,'https://www.youtube.com/embed/T11HgSmAYuM',3,21),(15,'퍼플 드래곤','#보라색 용 #어려지는 향',5,'https://www.youtube.com/embed/msyb_LI1H5k',3,18),(16,'배쓰 더티 버블 바','#더러운 목욕',6,'https://www.youtube.com/embed/gfwi_tg8aXw',3,12),(17,'댄싱퀸','#춤여왕 #뒤돌아보는 향',7,'https://www.youtube.com/embed/msyb_LI1H5k',3,12),(18,'위코드 비누','#위코드 비누 #어려지는 향',8,'https://www.youtube.com/embed/gfwi_tg8aXw',3,12),(19,'새러데이 나잇','#토요일 밤 #뒤돌아보는 향',9,'https://www.youtube.com/embed/gfwi_tg8aXw',3,12),(20,'라즈베리 블로어','#라즈베리 향 #어려지는 향',155,'https://www.youtube.com/embed/gfwi_tg8aXw',3,13),(21,'드라마 멜로우','#시나몬 #맛있는 샤워',1,'https://www.youtube.com/embed/gfwi_tg8aXw',3,13),(22,'핫 프로즌','#시나몬 #뒤돌아보는 향',65,'https://www.youtube.com/embed/gfwi_tg8aXw',3,13),(23,'엘사 더 윈터','#시나몬 #반신욕',3,'https://www.youtube.com/embed/gfwi_tg8aXw',3,13),(24,'보틀 오브 버블리 보틀','#시나몬 #맛있는 샤워',4,'https://www.youtube.com/embed/gfwi_tg8aXw',3,13),(25,'리유저블 빅보틀','#더러운 목욕',32,'https://www.youtube.com/embed/gfwi_tg8aXw',3,13),(26,'버블 스크럽 스퀵','#배쓰밤 #놀라운배쓰아트',6,'https://www.youtube.com/embed/0hk7llGJraM',3,14),(27,'트와일라잇','#꽃향기 #반신욕',12,'https://www.youtube.com/embed/T11HgSmAYuM',3,21),(28,'더 허니허니 팟','#꽃향기 #아픈 사랑의 향기',8,'https://www.youtube.com/embed/msyb_LI1H5k',3,18),(29,'레인보우 로망스','#배쓰밤 #놀라운배쓰아트',9,'https://www.youtube.com/embed/gfwi_tg8aXw',3,12),(30,'블랙 라이닝','#꽃향기 #뒤돌아보는 향',10,'https://www.youtube.com/embed/msyb_LI1H5k',3,12),(31,'말차 커피롤','#그 시절의 향기 #풍미의 향',14,'https://www.youtube.com/embed/gfwi_tg8aXw',3,12),(32,'레몬즙 배쓰','#꽃향기 #뒤돌아보는 향',44,'https://www.youtube.com/embed/gfwi_tg8aXw',3,12),(33,'미스 위피','#반신욕 #어려지는 향',3,'https://www.youtube.com/embed/gfwi_tg8aXw',3,13),(34,'캐슬 인 더 헬','#반신욕 #뒤돌아보는 향',11,'https://www.youtube.com/embed/gfwi_tg8aXw',3,13),(35,'애플 션샤인','#반신욕 #어려지는 향',5,'https://www.youtube.com/embed/gfwi_tg8aXw',3,13),(36,'위드 해피 마인드','#꽃향기 #아픈 사랑의 향기',42,'https://www.youtube.com/embed/gfwi_tg8aXw',3,13),(37,'옐로우 피치','#반신욕 #아픈 사랑의 향기',7,'https://www.youtube.com/embed/gfwi_tg8aXw',3,13),(38,'블루 바나나','#그 시절의 향기',18,'https://www.youtube.com/embed/gfwi_tg8aXw',3,13),(39,'블랙 코드','#반신욕 #아픈 사랑의 향기',9,'https://www.youtube.com/embed/0hk7llGJraM',3,14),(40,'데이코드','#꽃향기 #아픈 사랑의 향기',10,'https://www.youtube.com/embed/T11HgSmAYuM',3,13);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_images`
--

DROP TABLE IF EXISTS `review_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_images` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image_url` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `review_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `review_images_review_id_9c7a1455_fk_reviews_id` (`review_id`),
  CONSTRAINT `review_images_review_id_9c7a1455_fk_reviews_id` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_images`
--

LOCK TABLES `review_images` WRITE;
/*!40000 ALTER TABLE `review_images` DISABLE KEYS */;
INSERT INTO `review_images` VALUES (1,'https://lush.co.kr/data/plus_review/1000001344/t/square_dae044d3f2f2dedd',1),(2,'https://lush.co.kr/data/plus_review/1000001344/t/square_ac4cf3572a41cb0f',1),(3,'https://lush.co.kr/data/plus_review/1000001344/t/square_fb2b5b6bbcfb9d2e',2),(4,'https://phinf.pstatic.net/checkout.phinf/20210506_93/1620268512257RnONX_JPEG/review-attachment-1ed019a7-4134-46f3-8923-a89049bd1dae.jpeg?type=w640',4),(5,'https://lush.co.kr/data/plus_review/1000001739/t/square_6b2db874261b3f26',6),(6,'https://lush.co.kr/data/plus_review/1000001739/t/square_54b7e68e6c0676aa',6);
/*!40000 ALTER TABLE `review_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `rating` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `product_id` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_product_id_d4b78cfe_fk_products_id` (`product_id`),
  KEY `reviews_user_id_c23b0903_fk_users_id` (`user_id`),
  CONSTRAINT `reviews_product_id_d4b78cfe_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `reviews_user_id_c23b0903_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,'이름과 제형에서 느껴지시나요?\\n완벽하게 에요!!\\n다른 스크럽제품과 달리 입자가 굉장히 굵어서 시원하게 스크럽을 도와줘요. 각질이 많아지는 지금 이 시즌에 딱 맞는 제품이에요.',5,'2021-05-22 12:32:38.288138','2021-05-22 12:32:38.288160',1,1),(2,'상큼한 향기도 굿스멜 색도 굿 거기에 오일이 들어 있어 온몸이 촉촉 ㅎㅎ원래 바디제품 미끈거리고 끈적여서 싫어 했는데 이 제품 쓰고 하나 더 구매해서 딸선물 했더니 너무너무 좋아라합니다. 강추합니다',4,'2021-05-22 12:32:38.288174','2021-05-22 12:32:38.288179',1,2),(3,'매장에 친구따라갔다가 직원분께서 추천해주셔서 쓰고있습니다.\\n매직크리스탈,맘마미아 쓰고있었는데 이제 그 두 개는 쓰지않을정도로 향이너무좋고 스크럽도 잘돼요\\n적당히 까끌하고 보습력도 좋아요 냄새도 진짜 인위적인향아니고 방금 오렌지 갈아만든 그냥 생과일향이에요\\n러쉬 특유의 센 향 때문에 진입장벽을 느끼고계신분들께 최고인듯계속 내줬으면좋겠어요 진심...',2,'2021-05-22 12:32:38.288189','2021-05-22 12:32:38.288193',1,3),(4,'가격빼고 다 마음에 들어요 잘쓸게유 ㅎㅎ\\n가격빼고 다 마음에 들어요 잘쓸게유 ㅎㅎ',3,'2021-05-22 12:32:38.288203','2021-05-22 12:32:38.288207',3,4),(5,'아주좋아요 배송굿ㅎㅎ',5,'2021-05-22 12:32:38.288217','2021-05-22 12:32:38.288220',4,4),(6,'평소 살냄새 향수 좋아하시는 분들에게 강추입니다. 폭닥한 여리여리한 꽃향이 좋아요. 펄도 되게 잘고 쉬머해요~\'내가 펄이니라\'하고 둥둥 떠다니는게 아니라서 부담덜해요. 저는 평소에 배쓰밤 커팅 진짜 잘하는데 이건 내부에 반전부분없이 단독제형이라그런가~진짜 힘들게 잘랐습니다~ 걍 통으로쓰세요;;',4,'2021-05-22 12:32:38.288230','2021-05-22 12:32:38.288234',6,5);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sub_title` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sub_categories_category_id_dc42080e_fk_categories_id` (`category_id`),
  CONSTRAINT `sub_categories_category_id_dc42080e_fk_categories_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_categories`
--

LOCK TABLES `sub_categories` WRITE;
/*!40000 ALTER TABLE `sub_categories` DISABLE KEYS */;
INSERT INTO `sub_categories` VALUES (1,'주간베스트',1),(2,'별다섯개후기',1),(3,'온라인 전용',1),(4,'국내제조',1),(5,'네이키드',1),(6,'리틀 러쉬',1),(7,'디스커버리 키트',2),(8,'버블바 큐레이션',2),(9,'비건 메이크업',2),(10,'기프트',2),(11,'마더스&파더스',2),(12,'배쓰 밤',3),(13,'버블 바',3),(14,'배쓰 오일',3),(15,'펀',3),(16,'솝',4),(17,'샤워 젤&젤리',4),(18,'보디 컨디셔너',4),(19,'샤워 밤',4),(20,'샤워 오일',4),(21,'스크럽&버터',4),(22,'펀',4),(23,'클렌저',5),(24,'로션',5),(25,'핸드 앤 풋',5),(26,'마사지 바',5),(27,'더스팅 파우더',5),(28,'쉐이빙 크림',5),(29,'클렌저',6),(30,'페이스 마스크',6),(31,'토너',6),(32,'모이스춰라이저',6),(33,'프라이머',6),(34,'립',6),(35,'쉐이빙 크림',6),(36,'샴푸 바',7),(37,'샴푸',7),(38,'컨디셔너',7),(39,'트리트먼트',7),(40,'스타일링',7),(41,'페이스 파우더',8),(42,'아이 메이크업',8),(43,'립',8),(44,'파운데이션',8),(45,'스킨 틴트',8),(46,'비건 브러쉬',8),(47,'보디 스프레이',9),(48,'퍼퓸 라이브러리',9),(49,'코어 레인지',9),(50,'솔리드 퍼퓸',9),(51,'워시 카드',9),(52,'퍼퓸 기프트',9),(53,'낫랩',9),(54,'르네상스 퍼퓸',9),(55,'기프트 베스트',10),(56,'1-3만원대',10),(57,'4-6만원대',10),(58,'7만원 이상',10),(59,'낫랩',10),(60,'스웨그',10),(61,'악세서리',10),(62,'북',10),(63,'배쓰',11),(64,'샤워',11),(65,'보디',11),(66,'페이스',11),(67,'헤어',11),(68,'메이크업',11),(69,'퍼퓸',11);
/*!40000 ALTER TABLE `sub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'NEW'),(2,'VEGAN'),(3,'BEST');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `account` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `nickname` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_number` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`account`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone_number` (`phone_number`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,0,'','',0,1,'2021-06-18 19:49:45.868986','smlee','pbkdf2_sha256$260000$WOszWjqCFSdwMS0Wf0G9gn$1hIiQ9fAinvaFltxF/lEWdhINvrXghGzdbAy48XYyKs=',NULL,'',NULL,'','2021-06-18 19:49:45.870238','2021-06-18 19:49:46.306763'),(2,NULL,0,'','',0,1,'2021-06-18 19:57:02.654661','testuser1','pbkdf2_sha256$260000$dWDVc5iZmsLkaRWpR650j1$H8jA9oCF+oYtoGAc+wfMmGyk9zB409bXqRWl8tSCTY0=','nickname1','test2@mail.com','addr1','01011112222','2021-06-18 19:57:02.656046','2021-06-18 19:57:03.068197'),(3,NULL,0,'','',0,1,'2021-06-18 20:00:41.049279','testuser3','pbkdf2_sha256$260000$IHCMxZNEpCSAJF2lb8ZSIj$3wpWse8aDFVtBRzQaGuIf17rOrClsRnGnvhj9Iymoes=','대충닉네임','test4@mail.com','지구 어딘가','01099999999','2021-06-18 20:00:41.050313','2021-06-18 20:00:41.460311');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_groups_user_id_group_id_fc7788e8_uniq` (`user_id`,`group_id`),
  KEY `users_groups_group_id_2f3517aa_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_groups_group_id_2f3517aa_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `users_groups_user_id_f500bee5_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_groups`
--

LOCK TABLES `users_groups` WRITE;
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user_permissions`
--

DROP TABLE IF EXISTS `users_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_user_permissions_user_id_permission_id_3b86cbdf_uniq` (`user_id`,`permission_id`),
  KEY `users_user_permissio_permission_id_6d08dcd2_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_user_permissio_permission_id_6d08dcd2_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_user_permissions_user_id_92473840_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user_permissions`
--

LOCK TABLES `users_user_permissions` WRITE;
/*!40000 ALTER TABLE `users_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-24 14:01:48
