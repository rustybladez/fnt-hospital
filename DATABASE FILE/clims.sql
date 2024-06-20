-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: climslara
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appointment_date` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `patient_id` int unsigned NOT NULL,
  `doctor_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `appointments_patient_id_foreign` (`patient_id`),
  KEY `appointments_doctor_id_foreign` (`doctor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (6,'Test Name','test description','Monday 05:30 AM-04:00 PM','2023-12-31 13:00:00',1,1,2,'2023-12-30 03:59:03','2024-01-03 03:54:32',NULL),(7,'ererer','sadasda','Saturday 05:30 AM-04:00 PM','2023-12-29 13:00:00',1,2,2,'2023-12-30 04:34:40','2023-12-30 04:35:04',NULL),(8,'T D','asdasas','Monday 08:00 AM-02:30 PM','2024-01-03 13:00:00',1,4,3,'2024-01-03 04:50:52','2024-01-11 20:32:36',NULL),(9,'TC','qweqwe','Friday 05:30 AM-04:00 PM','2024-01-11 13:00:00',1,3,2,'2024-01-11 20:36:52','2024-01-11 21:06:03',NULL),(10,'TE','qwwwweeee','Friday 10:30 AM-03:30 PM','2024-01-11 13:00:00',1,5,5,'2024-01-11 21:01:22','2024-01-15 19:54:01',NULL),(11,'qazz','qqqqqq','Friday 07:00 AM-12:00 PM','2024-01-11 13:00:00',1,6,4,'2024-01-11 21:02:07','2024-01-15 19:54:18',NULL),(12,'DP','just a demo','Friday 10:00 AM-05:00 PM','2024-01-11 13:00:00',1,10,6,'2024-01-11 21:41:29','2024-01-11 21:42:07',NULL);
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Hematology','2017-06-02 03:30:33','2017-06-02 03:30:33'),(2,'Bio-Chemistry','2017-06-02 03:30:50','2017-06-02 03:30:50'),(3,'Parasitology','2017-06-02 03:31:43','2017-06-02 03:31:43'),(4,'Microbiology','2017-06-02 03:31:55','2017-06-02 03:31:55'),(5,'Immunology','2017-06-02 03:32:25','2024-05-14 15:48:49'),(6,'Histopathology','2017-06-02 03:32:36','2017-06-02 03:55:39'),(7,'Cytology','2017-06-02 03:32:49','2017-06-02 03:32:49'),(8,'ENT','2017-06-02 03:32:55','2017-06-02 03:32:55'),(9,'Paediatrics','2017-06-02 03:34:53','2017-06-02 03:34:53'),(10,'USG','2017-06-02 03:35:04','2017-06-02 03:35:04'),(11,'Sermotology','2017-06-02 03:35:14','2017-06-02 03:35:14'),(12,'ECG','2017-06-02 03:35:26','2017-06-02 03:35:26'),(13,'Psychiatry','2017-06-02 03:35:49','2017-06-02 03:35:49'),(14,'General Health Checkup Plan','2017-06-02 03:36:12','2017-06-02 03:36:12'),(15,'Follow up','2017-06-02 03:36:22','2017-06-02 03:36:22'),(16,'Pediatrics','2017-06-02 03:36:37','2017-06-02 03:36:37'),(17,'Endocrinology','2017-07-24 01:21:12','2017-07-24 01:21:12'),(18,'Internal Medicine','2017-07-24 01:33:35','2017-07-24 01:33:35'),(19,'Neuro Psychiatry','2017-07-24 01:33:53','2017-07-24 01:33:53'),(20,'Gynaecologist','2017-07-24 01:34:18','2017-07-24 01:34:18'),(22,'Culture Sensitivity','2017-07-27 16:04:43','2024-05-14 15:52:10'),(23,'Serology','2024-05-14 15:49:05','2024-05-14 15:49:05'),(24,'Ultrasonography','2024-05-14 15:53:00','2024-05-14 15:53:00'),(25,'X-Ray','2024-05-14 15:53:08','2024-05-14 15:53:08'),(26,'Indoor','2024-05-14 15:53:16','2024-05-14 15:53:16'),(27,'Surgery','2024-05-31 01:39:44','2024-05-31 01:39:44'),(28,'Orthopedics','2024-05-31 01:52:54','2024-05-31 01:52:54');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_referreds`
--

DROP TABLE IF EXISTS `doctor_referreds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor_referreds` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `doctor_id` int unsigned NOT NULL,
  `invoice_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `doctor_referreds_doctor_id_foreign` (`doctor_id`),
  KEY `doctor_referreds_invoice_id_foreign` (`invoice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_referreds`
--

LOCK TABLES `doctor_referreds` WRITE;
/*!40000 ALTER TABLE `doctor_referreds` DISABLE KEYS */;
INSERT INTO `doctor_referreds` VALUES (1,2,6,'2023-12-30 04:36:49','2023-12-30 04:36:49',NULL),(2,6,2,'2024-01-11 21:43:09','2024-01-11 21:43:09',NULL),(3,2,6,'2024-05-12 18:03:57','2024-05-12 18:03:57',NULL),(4,2,8,'2024-05-12 18:07:53','2024-05-12 18:07:53',NULL),(5,2,9,'2024-05-12 18:18:21','2024-05-12 18:18:21',NULL),(6,2,10,'2024-05-12 18:19:36','2024-05-12 18:19:36',NULL),(7,2,11,'2024-05-12 18:28:06','2024-05-12 18:28:06',NULL),(8,2,12,'2024-05-12 18:34:16','2024-05-12 18:34:16',NULL),(9,2,13,'2024-05-12 18:35:31','2024-05-12 18:35:31',NULL),(10,2,14,'2024-05-12 18:37:46','2024-05-12 18:37:46',NULL),(11,2,17,'2024-05-12 18:59:40','2024-05-12 18:59:40',NULL),(12,2,18,'2024-05-16 05:40:48','2024-05-16 05:40:48',NULL),(13,2,19,'2024-05-16 06:32:58','2024-05-16 06:32:58',NULL),(14,2,21,'2024-05-18 06:35:54','2024-05-18 06:35:54',NULL),(15,2,23,'2024-05-28 08:34:51','2024-05-28 08:34:51',NULL),(16,2,24,'2024-05-28 09:22:01','2024-05-28 09:22:01',NULL),(17,2,25,'2024-05-28 09:29:49','2024-05-28 09:29:49',NULL),(18,2,26,'2024-05-28 14:18:29','2024-05-28 14:18:29',NULL),(19,2,27,'2024-05-28 14:19:25','2024-05-28 14:19:25',NULL),(20,2,28,'2024-05-28 17:02:38','2024-05-28 17:02:38',NULL),(21,2,29,'2024-05-29 18:03:57','2024-05-29 18:03:57',NULL),(22,2,30,'2024-06-05 11:44:43','2024-06-05 11:44:43',NULL),(23,3,31,'2024-06-05 11:48:36','2024-06-05 11:48:36',NULL),(24,6,32,'2024-06-05 11:56:04','2024-06-05 11:56:04',NULL),(25,3,33,'2024-06-05 12:00:31','2024-06-05 12:00:31',NULL),(26,4,34,'2024-06-05 12:02:10','2024-06-05 12:02:10',NULL),(27,5,35,'2024-06-05 12:05:29','2024-06-05 12:05:29',NULL),(28,2,36,'2024-06-05 12:10:43','2024-06-05 12:10:43',NULL),(29,2,37,'2024-06-05 12:19:01','2024-06-05 12:19:01',NULL),(30,2,38,'2024-06-05 12:20:38','2024-06-05 12:20:38',NULL),(31,2,39,'2024-06-05 12:27:40','2024-06-05 12:27:40',NULL),(32,2,40,'2024-06-05 12:31:16','2024-06-05 12:31:16',NULL);
/*!40000 ALTER TABLE `doctor_referreds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int unsigned NOT NULL,
  `fee` double(8,2) NOT NULL,
  `opd_charge` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `doctors_employee_id_foreign` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (2,6,119.05,128.57,'2023-12-16 20:29:41','2024-01-11 21:30:50',NULL),(3,7,195.00,225.00,'2024-01-03 04:23:02','2024-01-03 04:23:02',NULL),(4,8,50.00,60.00,'2024-01-11 20:24:14','2024-01-11 20:24:14',NULL),(5,9,199.00,219.00,'2024-01-11 20:27:30','2024-01-11 20:27:30',NULL),(6,10,45.00,60.00,'2024-01-11 21:39:43','2024-01-11 21:39:43',NULL),(7,11,200.00,200.00,'2024-06-09 09:15:01','2024-06-09 09:15:01',NULL),(8,12,200.00,200.00,'2024-06-09 09:15:18','2024-06-09 09:15:18',NULL),(9,13,200.00,200.00,'2024-06-09 09:15:28','2024-06-09 09:15:28',NULL);
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `education` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `speciality` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_day` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_time` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `out_time` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employees_department_id_foreign` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (6,'Dr. Mahbub Hasan',NULL,'Yead','test@doctor.com','Savar Nabinagar','12341234','MBBS, CCD, CMU (Ultra), CPR (DMC), Training in Clinical Nephrology & Dialysis(Kidney Foundation), Training in CCU & EDHF(Heart Foundation)',NULL,NULL,'Medicine, Diabetes, Cardiac, Paedi, Skin & VD experienced','Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday','09:00 AM','05:00 PM','Doctor',9,'2023-12-16 20:26:08','2024-06-05 11:48:04',NULL),(7,'Dr. MD Atiqur Rahman',NULL,'(Noman)','atiq@doctor.com','Bangladesh','12341234','MBBS (Rajshahi), FCPS (Surgery)','Former Residential Surgeon, Kumudini Medical College and Hospital',NULL,'General Surgery specialist','Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday','09:00 AM','05:00 PM','Doctor',27,'2024-01-03 04:21:12','2024-06-05 11:47:27',NULL),(8,'Dr. MD Monowar',NULL,'Hosen','monowar@doctor.com','Bangladesh','12341234','MBBS (Raj), PGT in critical care, medicine and ICU','Medical Officer, ICU Department, Enam Medical College and Hospital, Savar, Dhaka',NULL,'Medicine and Rheumatologist','Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday','09:00 AM','05:00 PM','Doctor',18,'2024-01-11 20:22:36','2024-05-31 01:44:26',NULL),(9,'Dr. Kutub Uddin Billah',NULL,'(Rana)','kutub@doctor.com','Bangladesh','12341234','MBBS (Dhaka), FCPS (Surgery)','Register Surgery, Dhaka Medical College and Hospital',NULL,'General Surgery Specialist','Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday','09:00 AM','05:00 PM','Doctor',27,'2024-01-11 20:26:06','2024-05-31 01:46:45',NULL),(10,'Dr. Nazia',NULL,'Andalib','nazia@doctor.com','Bangladesh','12341234','MBBS (DU), PGT (Gynae and OBS), E.O.C (MOHFW), CMU (Clinical Ultra Sound)','Former Residential Surgeon, Sir Salimullah Medical College and Hospital, Dhaka',NULL,'Gynecology and Anesthesiology','Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday','09:00 AM','05:00 PM','Doctor',20,'2024-01-11 21:39:08','2024-05-31 01:50:04',NULL),(11,'Dr. Umme',NULL,'Salma',NULL,'Bangladesh','0000','MBBS (Dhaka), PGT (Gynae and Obs), CCD (BIRDEM), MPH (NSU), DMU (BITMIR)','Former Residential Surgeon, Kumudini Hospital',NULL,'Gynecology & Obstetrics','Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday','12:00 AM','12:30 AM','Doctor',20,'2024-05-29 18:37:46','2024-05-29 18:41:57',NULL),(12,'Dr. Moshiur',NULL,'Rahman','moshiur@doctor.com','Bangladesh','12341234','MBBS(Dhaka), BCS(Shastho), MS(Orthopedics)','Pongu Hospital, Dhaka',NULL,'Orthopedics, Rheumatology Specialist and Surgeon','Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday','09:00 AM','05:00 PM','Doctor',28,'2024-05-29 18:41:02','2024-06-05 11:47:50',NULL),(13,'Dr. MD. Usuf Ali',NULL,'Khan','usuf@doctor.com','Bangladesh','12341234','MBBS, BCS (shastho), FCPS (last part), ENT\r\nMS (Residency Course) ENT\r\nBangabandhu Sheikh Mujib Medical College University','Former PG Hospital, Shahbag, Dhaka',NULL,'ENT Specialist and Surgeon','Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday','09:00 AM','05:00 PM','Doctor',8,'2024-05-31 01:57:26','2024-05-31 01:57:26',NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examination_results`
--

DROP TABLE IF EXISTS `examination_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examination_results` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `test_report_id` int unsigned NOT NULL,
  `macroscopic_result` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `microscopic_result` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `result` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `examination_results_test_report_id_foreign` (`test_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examination_results`
--

LOCK TABLES `examination_results` WRITE;
/*!40000 ALTER TABLE `examination_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `examination_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospitals`
--

DROP TABLE IF EXISTS `hospitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospitals` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slogan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pan_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `registration_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_message` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_prefix` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LWC-',
  `patient_prefix` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LWC-',
  `tax_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_percent` int NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospitals`
--

LOCK TABLES `hospitals` WRITE;
/*!40000 ALTER TABLE `hospitals` DISABLE KEYS */;
INSERT INTO `hospitals` VALUES (1,'FNT Charitable Health Complex','Enhancing Life','uploads/logo.png','Gorai, Momin Nagor, Mirzapur, Tangail','01709815050','fnthospital58@gmail.com','123','12345','Invoice',NULL,'FNT is a renowned chartiable health complex in Bangladesh','INV-','ID','Tax Free',0,NULL,NULL,'2024-05-15 14:20:53');
/*!40000 ALTER TABLE `hospitals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_returns`
--

DROP TABLE IF EXISTS `invoice_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice_returns` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` int unsigned NOT NULL,
  `return_amount` double(8,2) NOT NULL,
  `return_reason` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_returns_invoice_id_foreign` (`invoice_id`),
  KEY `invoice_returns_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_returns`
--

LOCK TABLES `invoice_returns` WRITE;
/*!40000 ALTER TABLE `invoice_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `invoice_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Cash',
  `comment` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_amount` double(28,21) NOT NULL,
  `sub_total` double(28,21) NOT NULL,
  `tax_amount` double(28,21) NOT NULL,
  `discount` double(8,2) DEFAULT NULL,
  `cash` double(8,2) DEFAULT NULL,
  `patient_id` int unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `doctor_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoices_user_id_foreign` (`user_id`),
  KEY `invoices_patient_id_foreign` (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (1,3,'LWC-1','Cash',NULL,126.000000000000000000000,120.000000000000000000000,6.000000000000000000000,0.00,130.00,3,1,'2024-01-11 21:06:49','2024-01-11 21:06:49',NULL,NULL),(2,3,'LWC-2','Credit',NULL,200.000000000000000000000,190.476190476190480000000,9.523809523809524000000,0.00,200.00,10,1,'2024-01-11 21:43:08','2024-01-11 21:43:08',NULL,NULL),(3,3,'LWC-3','Cash',NULL,63.000000000000000000000,60.000000000000000000000,3.000000000000000000000,0.00,100.00,10,1,'2024-01-11 21:44:37','2024-01-11 21:44:37',NULL,NULL),(4,3,'LWC-4','Credit',NULL,271.950000000000000000000,259.000000000000000000000,12.950000000000000000000,0.00,272.00,10,1,'2024-01-11 21:46:59','2024-01-11 21:46:59',NULL,NULL),(5,3,'LWC-5','Cash',NULL,395.400000000000000000000,428.571428571428560000000,18.828571428571426000000,52.00,1000.00,1,1,'2024-05-09 05:29:28','2024-05-09 05:29:28',NULL,NULL),(6,3,'INV-6','Cash',NULL,235.714285714285720000000,285.714285714285700000000,0.000000000000000000000,50.00,300.00,10,1,'2024-05-12 18:03:57','2024-05-12 18:03:57',NULL,NULL),(7,3,'INV-7','Cash',NULL,285.714285714285700000000,285.714285714285700000000,0.000000000000000000000,NULL,500.00,1,1,'2024-05-12 18:06:40','2024-05-12 18:06:40',NULL,NULL),(8,3,'INV-8','Cash',NULL,285.714285714285700000000,285.714285714285700000000,0.000000000000000000000,NULL,500.00,2,1,'2024-05-12 18:07:53','2024-05-12 18:07:53',NULL,NULL),(9,3,'INV-9','Cash',NULL,1142.857142857143000000000,1142.857142857143000000000,0.000000000000000000000,NULL,1500.00,1,1,'2024-05-12 18:18:21','2024-05-12 18:18:21',NULL,NULL),(10,3,'INV-10','Cash',NULL,1000.000000000000000000000,1000.000000000000000000000,0.000000000000000000000,NULL,1500.00,3,1,'2024-05-12 18:19:36','2024-05-12 18:19:36',NULL,NULL),(11,3,'INV-11','Cash',NULL,285.714285714285700000000,285.714285714285700000000,0.000000000000000000000,NULL,501.00,4,1,'2024-05-12 18:28:06','2024-05-12 18:28:06',NULL,NULL),(12,3,'INV-12','Cash',NULL,809.523809523809500000000,809.523809523809500000000,0.000000000000000000000,NULL,1000.00,1,1,'2024-05-12 18:34:16','2024-05-12 18:34:16',NULL,NULL),(13,3,'INV-12','Cash',NULL,142.857142857142860000000,142.857142857142860000000,0.000000000000000000000,NULL,1000.00,1,1,'2024-05-12 18:35:31','2024-05-12 18:35:31',NULL,NULL),(14,3,'INV-14','Cash',NULL,142.857142857142860000000,142.857142857142860000000,0.000000000000000000000,NULL,500.00,1,1,'2024-05-12 18:37:46','2024-05-12 18:37:46',NULL,NULL),(15,3,'INV-15','Cash',NULL,128.570000000000000000000,128.570000000000000000000,0.000000000000000000000,NULL,500.00,1,1,'2024-05-12 18:38:26','2024-05-12 18:38:26',NULL,NULL),(16,3,'INV-16','Cash',NULL,128.570000000000000000000,128.570000000000000000000,0.000000000000000000000,NULL,500.00,1,1,'2024-05-12 18:39:08','2024-05-12 18:39:08',NULL,NULL),(17,3,'INV-17','Cash',NULL,142.857142857142860000000,142.857142857142860000000,0.000000000000000000000,NULL,200.00,2,1,'2024-05-12 18:59:40','2024-05-12 18:59:40',NULL,NULL),(18,3,'INV-18','Cash',NULL,600.000000000000000000000,600.000000000000000000000,0.000000000000000000000,NULL,1000.00,1,1,'2024-05-16 05:40:48','2024-05-16 05:40:48',NULL,NULL),(19,3,'INV-19','Cash',NULL,600.000000000000000000000,600.000000000000000000000,0.000000000000000000000,NULL,1000.00,1,1,'2024-05-16 06:32:58','2024-05-16 06:32:58',NULL,NULL),(20,3,'INV-20','Cash',NULL,600.000000000000000000000,600.000000000000000000000,0.000000000000000000000,NULL,1000.00,1,1,'2024-05-16 06:33:48','2024-05-16 06:33:48',NULL,NULL),(21,3,'INV-21','Cash',NULL,600.000000000000000000000,600.000000000000000000000,0.000000000000000000000,NULL,1000.00,1,1,'2024-05-18 06:35:53','2024-05-18 06:35:53',NULL,NULL),(22,3,'INV-22','Cash',NULL,600.000000000000000000000,600.000000000000000000000,0.000000000000000000000,NULL,1000.00,1,1,'2024-05-18 06:37:36','2024-05-18 06:37:36',NULL,NULL),(23,3,'INV-23','Cash',NULL,600.000000000000000000000,600.000000000000000000000,0.000000000000000000000,NULL,1000.00,1,1,'2024-05-28 08:34:51','2024-05-28 08:34:51',NULL,NULL),(24,3,'INV-24','Cash',NULL,600.000000000000000000000,600.000000000000000000000,0.000000000000000000000,NULL,1000.00,1,1,'2024-05-28 09:22:01','2024-05-28 09:22:01',NULL,NULL),(25,3,'INV-25','Cash',NULL,600.000000000000000000000,600.000000000000000000000,0.000000000000000000000,NULL,1000.00,1,1,'2024-05-28 09:29:49','2024-05-28 09:29:49',NULL,NULL),(26,3,'INV-26','Cash',NULL,200.000000000000000000000,200.000000000000000000000,0.000000000000000000000,NULL,500.00,1,1,'2024-05-28 14:18:29','2024-05-28 14:18:29',NULL,NULL),(27,3,'INV-27','Cash',NULL,600.000000000000000000000,600.000000000000000000000,0.000000000000000000000,NULL,1000.00,1,1,'2024-05-28 14:19:25','2024-05-28 14:19:25',NULL,NULL),(28,3,'INV-28','Cash',NULL,600.000000000000000000000,600.000000000000000000000,0.000000000000000000000,NULL,1000.00,1,1,'2024-05-28 17:02:38','2024-05-28 17:02:38',NULL,'DR.Test Doctor'),(29,5,'INV-29','Cash',NULL,150.000000000000000000000,200.000000000000000000000,0.000000000000000000000,50.00,500.00,1,1,'2024-05-29 18:03:57','2024-05-29 18:03:57',NULL,'DR.Test Doctor'),(30,1,'INV-30','Cash',NULL,200.000000000000000000000,200.000000000000000000000,0.000000000000000000000,NULL,500.00,1,1,'2024-06-05 11:44:43','2024-06-05 11:44:43',NULL,'Dr. Dr. Mahbub Hasan Yead'),(31,1,'INV-31','Cash',NULL,600.000000000000000000000,600.000000000000000000000,0.000000000000000000000,NULL,1000.00,1,1,'2024-06-05 11:48:36','2024-06-05 11:48:36',NULL,'Dr. MD Atiqur Rahman (Noman)'),(32,1,'INV-32','Cash',NULL,800.000000000000000000000,800.000000000000000000000,0.000000000000000000000,NULL,1000.00,1,1,'2024-06-05 11:56:04','2024-06-05 11:56:04',NULL,'Dr. Nazia Andalib'),(33,1,'INV-33','Cash',NULL,500.000000000000000000000,600.000000000000000000000,0.000000000000000000000,100.00,1000.00,1,1,'2024-06-05 12:00:31','2024-06-05 12:00:31',NULL,'Dr. MD Atiqur Rahman (Noman)'),(34,1,'INV-34','Cash',NULL,150.000000000000000000000,200.000000000000000000000,0.000000000000000000000,50.00,500.00,2,1,'2024-06-05 12:02:10','2024-06-05 12:02:10',NULL,'Dr. MD Monowar Hosen'),(35,1,'INV-35','Cash',NULL,180.000000000000000000000,200.000000000000000000000,0.000000000000000000000,20.00,500.00,10,1,'2024-06-05 12:05:29','2024-06-05 12:05:29',NULL,'Dr. Kutub Uddin Billah (Rana)'),(36,1,'INV-36','Cash',NULL,1900.000000000000000000000,1900.000000000000000000000,0.000000000000000000000,NULL,2000.00,1,1,'2024-06-05 12:10:43','2024-06-05 12:10:43',NULL,'Dr. Mahbub Hasan Yead'),(37,1,'INV-37','Cash',NULL,1800.000000000000000000000,1900.000000000000000000000,0.000000000000000000000,100.00,2000.00,1,1,'2024-06-05 12:19:01','2024-06-05 12:19:01',NULL,'Dr. Mahbub Hasan Yead'),(38,1,'INV-38','Cash',NULL,2600.000000000000000000000,2700.000000000000000000000,0.000000000000000000000,100.00,3000.00,3,1,'2024-06-05 12:20:38','2024-06-05 12:20:38',NULL,'Dr. Mahbub Hasan Yead'),(39,1,'INV-39','Cash',NULL,2500.000000000000000000000,2600.000000000000000000000,0.000000000000000000000,100.00,3000.00,9,1,'2024-06-05 12:27:40','2024-06-05 12:27:40',NULL,'Dr. Mahbub Hasan Yead'),(40,1,'INV-40','Cash',NULL,2550.000000000000000000000,2600.000000000000000000000,0.000000000000000000000,50.00,3000.00,2,1,'2024-06-05 12:31:16','2024-06-05 12:31:16',NULL,'Dr. Mahbub Hasan Yead');
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_05_03_144856_create_hospitals_table',1),(2,'2014_10_12_000000_create_users_table',1),(3,'2014_10_12_100000_create_password_resets_table',1),(4,'2016_09_04_000000_create_roles_table',1),(5,'2017_05_03_105229_create_departments_table',1),(6,'2017_05_03_108812_create_employees_table',1),(7,'2017_05_03_113257_create_doctors_table',1),(8,'2017_05_03_113812_create_services_table',1),(9,'2017_05_03_114713_create_patients_table',1),(10,'2017_05_03_144134_create_appointments_table',1),(11,'2017_05_07_103011_create_invoices_table',1),(12,'2017_05_07_103212_create_service_sales_table',1),(13,'2017_05_10_172506_create_temps_table',1),(14,'2017_05_12_115857_create_tests_table',1),(15,'2017_05_12_121150_create_test_references_table',1),(16,'2017_05_13_084837_create_test_test_reference_table',1),(17,'2017_05_13_160840_create_reports_table',1),(18,'2017_05_16_134531_create_opd_sales_table',1),(19,'2017_05_20_112840_create_test_reports_table',1),(20,'2017_05_21_065026_create_test_results_table',1),(21,'2017_05_26_141428_create_invoice_returns_table',1),(22,'2017_05_27_142501_create_doctor_referreds_table',1),(23,'2017_05_29_154917_create_packages_table',1),(24,'2017_05_29_155432_create_package_tests_table',1),(25,'2017_05_29_155748_create_package_sales_table',1),(26,'2017_06_13_061359_create_permission_role_table',1),(27,'2017_06_23_151525_create_reference_results_table',1),(28,'2017_06_23_153028_create_test_examinations_table',1),(29,'2017_06_23_155143_create_examination_results_table',1),(30,'2017_06_23_155601_create_test_antibiotics_table',1),(31,'2017_06_23_155702_create_test_test_antibiotic_table',1),(32,'2017_06_23_164519_create_permissions_table',1),(33,'2017_07_03_143253_create_test_stains_table',1),(34,'2017_07_04_164725_create_test_reference_results_table',1),(35,'2017_07_08_070551_create_test_antibiotic_results_table',1),(36,'2024_05_28_225433_add_doctor_name_to_invoices_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opd_sales`
--

DROP TABLE IF EXISTS `opd_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opd_sales` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `opd_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_id` int unsigned NOT NULL,
  `invoice_id` int unsigned NOT NULL,
  `doctor_fee` double(8,2) NOT NULL,
  `opd_charge` double(8,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `opd_sales_doctor_id_foreign` (`doctor_id`),
  KEY `opd_sales_invoice_id_foreign` (`invoice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opd_sales`
--

LOCK TABLES `opd_sales` WRITE;
/*!40000 ALTER TABLE `opd_sales` DISABLE KEYS */;
INSERT INTO `opd_sales` VALUES (1,'OPD Charge(DR.Test Doctor)',2,1,125.00,120.00,1,'2024-01-11 21:06:49','2024-01-11 21:24:09',NULL),(2,'OPD Charge(DR.Doc Four)',6,3,45.00,60.00,1,'2024-01-11 21:44:37','2024-01-11 21:45:01',NULL),(3,'OPD Charge(DR.Test Doctor)',2,15,119.05,128.57,0,'2024-05-12 18:38:26','2024-05-12 18:38:26',NULL),(4,'OPD Charge(DR.Test Doctor)',2,16,119.05,128.57,0,'2024-05-12 18:39:08','2024-05-12 18:39:08',NULL);
/*!40000 ALTER TABLE `opd_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_sales`
--

DROP TABLE IF EXISTS `package_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package_sales` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `package_id` int unsigned NOT NULL,
  `invoice_id` int unsigned NOT NULL,
  `patient_id` int unsigned NOT NULL,
  `package_price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `package_sales_package_id_foreign` (`package_id`),
  KEY `package_sales_invoice_id_foreign` (`invoice_id`),
  KEY `package_sales_patient_id_foreign` (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_sales`
--

LOCK TABLES `package_sales` WRITE;
/*!40000 ALTER TABLE `package_sales` DISABLE KEYS */;
INSERT INTO `package_sales` VALUES (1,2,4,10,259.00,'2024-01-11 21:46:59','2024-01-11 21:46:59',NULL);
/*!40000 ALTER TABLE `package_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_tests`
--

DROP TABLE IF EXISTS `package_tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package_tests` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `package_id` int unsigned NOT NULL,
  `test_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `package_tests_test_id_foreign` (`test_id`),
  KEY `package_tests_package_id_foreign` (`package_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_tests`
--

LOCK TABLES `package_tests` WRITE;
/*!40000 ALTER TABLE `package_tests` DISABLE KEYS */;
INSERT INTO `package_tests` VALUES (1,2,1,'2024-01-11 21:37:58','2024-01-11 21:37:58',NULL),(2,2,2,'2024-01-11 21:37:58','2024-01-11 21:37:58',NULL);
/*!40000 ALTER TABLE `package_tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packages`
--

DROP TABLE IF EXISTS `packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packages`
--

LOCK TABLES `packages` WRITE;
/*!40000 ALTER TABLE `packages` DISABLE KEYS */;
INSERT INTO `packages` VALUES (1,'Basic health Care plan','Basic Health care plan',1000.00,'2017-07-15 12:35:07','2017-07-15 12:35:07',NULL),(2,'Demo Package','this is demo test',259.00,'2024-01-11 21:37:57','2024-01-11 21:37:57',NULL);
/*!40000 ALTER TABLE `packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` int NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('Male','Female','Other') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Nepal',
  `state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Bagmati',
  `district` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Kathmandu',
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relative_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relative_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` enum('single','married','other') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_group` enum('A+','A-','B+','AB+','AB-','B-','O+','O-') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'Test',NULL,'A','a@patient.com',34,'7777777777','Male','1989-06-06','TestCountry','Testate','Testd','Demo Location','Demo demo','demo demo demo','Rel A','7747777777','married','B+','2023-12-30 03:45:57','2023-12-30 03:45:57',NULL),(2,'Test',NULL,'B','test@patient.com',26,'7774447777','Male','1998-12-04','Demo','demo','demo','demo','demo','demo','none','7777777777','single','B-','2023-12-30 03:51:57','2023-12-30 03:51:57',NULL),(3,'Test',NULL,'C','testc@patient.com',29,'1111111111','Male','1994-12-05','demo','demo','demo','demo','demo','demodemo','none','7777777777','married','AB+','2024-01-03 04:24:44','2024-01-03 04:24:44',NULL),(4,'Test',NULL,'D','testd@patient.com',26,'1111110000','Female','1998-11-11','asd','asd','asd','asd','asd','asd','nnnn','7777777777','single','O+','2024-01-03 04:50:17','2024-01-03 04:50:17',NULL),(5,'Test',NULL,'E','test@pat.com',26,'1111111117','Female','1997-02-19','demo','demo','demo','demo','demo','demo','none','7777777777','single','AB-','2024-01-11 20:29:42','2024-01-11 20:29:42',NULL),(6,'Test',NULL,'F','teste@patt.com',30,'2222222220','Male','1994-11-11','demmmmo','demo','demo','demo','demo','demo','nnn','8888888888','married','B-','2024-01-11 20:30:44','2024-01-11 20:30:44',NULL),(7,'Test',NULL,'G','testg@pat.com',31,'1011111111','Female','1993-03-03','qwe','qwe','qwe','qwe','qwe','qweqweqweqweqweqwqeqwqe','asdasd','7777777770','single','A+','2024-01-11 20:32:22','2024-01-11 20:32:22',NULL),(8,'Test',NULL,'H','testh@mail.com',34,'2222222200','Male','1990-10-10','ad','asd','asd','asd','asd','asdas','asd','4444444455','married','A-','2024-01-11 20:38:40','2024-01-11 20:38:40',NULL),(9,'Test',NULL,'I','testi@mail.com',34,'2000000002','Male','1990-01-01','asd','asd','asd','asd','asd','asd','asd','7777777779','married','AB+','2024-01-11 20:39:56','2024-01-11 20:39:56',NULL),(10,'Demo',NULL,'Patient','demop@patient.com',34,'2222212100','Male','1990-11-11','qweqw','qwewq','qweqw','qweqw','qweqe','qweqw','qweqw','7777777111','married','A+','2024-01-11 21:40:42','2024-01-11 21:40:42',NULL);
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_role` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=294 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1,1,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(2,1,2,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(3,1,3,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(4,1,4,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(5,1,5,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(6,1,6,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(7,1,7,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(8,1,8,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(9,1,9,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(10,1,10,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(11,1,11,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(12,1,12,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(13,1,13,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(14,1,14,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(15,1,15,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(16,1,16,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(17,1,17,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(18,1,18,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(19,1,19,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(20,1,20,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(21,1,21,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(22,1,22,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(23,1,23,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(24,1,24,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(25,1,25,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(26,1,26,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(27,1,27,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(28,1,28,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(29,1,29,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(30,1,30,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(31,1,31,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(32,1,32,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(33,1,33,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(34,1,34,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(35,1,35,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(36,1,36,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(37,1,37,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(38,1,38,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(39,1,39,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(40,1,40,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(41,1,41,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(42,1,42,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(43,1,43,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(44,1,44,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(45,1,45,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(46,1,46,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(47,1,47,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(48,1,48,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(49,1,49,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(50,1,50,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(51,1,51,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(52,1,52,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(53,1,53,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(54,1,54,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(55,1,55,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(56,1,56,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(57,1,57,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(58,1,58,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(59,1,59,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(60,1,60,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(61,1,61,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(62,1,62,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(63,1,63,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(64,1,64,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(65,1,65,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(66,1,66,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(67,1,67,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(68,1,68,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(69,1,69,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(70,1,70,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(71,1,71,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(72,1,72,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(73,1,73,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(74,1,74,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(75,1,75,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(76,1,76,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(77,1,77,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(78,1,78,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(79,1,79,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(80,1,80,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(81,1,81,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(82,1,82,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(83,1,83,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(84,1,84,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(85,1,85,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(86,1,86,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(87,1,87,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(88,1,88,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(89,1,89,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(90,1,90,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(91,1,91,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(92,1,92,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(93,1,93,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(94,1,94,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(95,1,95,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(96,1,96,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(97,1,97,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(98,1,98,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(99,1,99,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(100,1,100,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(101,1,101,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(102,1,102,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(103,1,103,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(104,1,104,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(105,1,105,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(106,1,106,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(107,1,107,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(108,1,108,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(109,1,109,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(110,1,110,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(111,1,111,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(112,1,112,'2017-07-11 03:27:25','2017-07-11 03:27:25'),(113,2,1,'2017-07-15 12:27:38','2017-07-15 12:27:38'),(114,2,33,'2017-07-15 12:27:38','2017-07-15 12:27:38'),(115,2,34,'2017-07-15 12:27:38','2017-07-15 12:27:38'),(116,2,35,'2017-07-15 12:27:38','2017-07-15 12:27:38'),(117,2,36,'2017-07-15 12:27:38','2017-07-15 12:27:38'),(118,2,37,'2017-07-15 12:27:38','2017-07-15 12:27:38'),(119,2,38,'2017-07-15 12:27:38','2017-07-15 12:27:38'),(120,2,40,'2017-07-15 12:27:38','2017-07-15 12:27:38'),(121,2,41,'2017-07-15 12:27:38','2017-07-15 12:27:38'),(122,2,42,'2017-07-15 12:27:38','2017-07-15 12:27:38'),(123,2,43,'2017-07-15 12:27:38','2017-07-15 12:27:38'),(124,2,44,'2017-07-15 12:27:38','2017-07-15 12:27:38'),(125,2,45,'2017-07-15 12:27:38','2017-07-15 12:27:38'),(126,2,59,'2017-07-15 12:27:38','2017-07-15 12:27:38'),(127,2,60,'2017-07-15 12:27:38','2017-07-15 12:27:38'),(128,2,61,'2017-07-15 12:27:38','2017-07-15 12:27:38'),(129,2,62,'2017-07-15 12:27:38','2017-07-15 12:27:38'),(131,2,64,'2017-07-15 12:27:38','2017-07-15 12:27:38'),(132,2,65,'2017-07-15 12:27:38','2017-07-15 12:27:38'),(133,2,66,'2017-07-15 12:27:38','2017-07-15 12:27:38'),(134,2,68,'2017-07-15 12:27:38','2017-07-15 12:27:38'),(135,2,67,'2017-07-15 12:27:38','2017-07-15 12:27:38'),(136,2,97,'2017-07-15 12:27:38','2017-07-15 12:27:38'),(137,2,102,'2017-07-15 12:27:38','2017-07-15 12:27:38'),(138,3,1,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(139,3,3,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(140,3,33,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(141,3,34,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(142,3,35,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(143,3,36,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(144,3,37,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(145,3,38,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(146,3,40,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(147,3,41,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(148,3,42,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(149,3,43,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(150,3,44,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(151,3,45,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(152,3,59,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(153,3,67,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(154,3,74,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(155,3,75,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(156,3,76,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(157,3,77,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(158,3,79,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(159,3,80,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(160,3,81,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(161,3,83,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(162,3,84,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(163,3,85,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(164,3,86,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(165,3,87,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(166,3,88,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(167,3,89,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(168,3,90,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(169,3,91,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(170,3,92,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(171,3,93,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(172,3,97,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(173,3,98,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(174,3,99,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(175,3,100,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(176,3,101,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(177,3,102,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(178,3,107,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(179,3,108,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(180,3,109,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(181,3,103,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(182,3,104,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(183,3,105,'2017-07-15 12:29:37','2017-07-15 12:29:37'),(184,4,1,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(185,4,2,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(186,4,4,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(187,4,3,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(188,4,5,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(189,4,6,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(190,4,7,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(191,4,8,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(192,4,9,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(193,4,11,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(194,4,12,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(195,4,13,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(196,4,14,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(197,4,15,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(198,4,16,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(199,4,17,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(200,4,18,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(201,4,19,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(202,4,20,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(203,4,21,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(204,4,22,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(205,4,23,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(206,4,24,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(207,4,26,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(208,4,27,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(209,4,28,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(210,4,29,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(211,4,30,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(212,4,31,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(213,4,33,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(214,4,34,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(215,4,35,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(216,4,36,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(217,4,37,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(218,4,38,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(219,4,39,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(220,4,40,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(221,4,41,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(222,4,42,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(223,4,43,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(224,4,44,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(225,4,45,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(226,4,46,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(227,4,59,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(228,4,54,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(229,4,55,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(230,4,56,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(231,4,57,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(232,4,58,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(233,4,71,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(234,4,72,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(235,4,73,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(236,4,60,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(237,4,61,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(238,4,62,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(239,4,63,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(240,4,64,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(241,4,65,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(242,4,66,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(243,4,68,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(244,4,74,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(245,4,75,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(246,4,76,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(247,4,77,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(248,4,78,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(249,4,79,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(250,4,80,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(251,4,81,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(252,4,82,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(253,4,83,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(254,4,84,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(255,4,85,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(256,4,86,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(257,4,87,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(258,4,88,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(259,4,89,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(260,4,90,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(261,4,91,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(262,4,92,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(263,4,93,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(264,4,94,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(265,4,95,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(266,4,96,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(267,4,97,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(268,4,98,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(269,4,99,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(270,4,100,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(271,4,101,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(272,4,102,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(273,4,107,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(274,4,108,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(275,4,109,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(276,4,103,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(277,4,104,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(278,4,105,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(279,4,106,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(280,4,110,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(281,4,111,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(282,4,112,'2017-07-15 12:32:13','2017-07-15 12:32:13'),(283,2,15,'2024-05-29 18:05:51','2024-05-29 18:05:51'),(284,2,16,'2024-05-29 18:05:51','2024-05-29 18:05:51'),(285,2,17,'2024-05-29 18:05:51','2024-05-29 18:05:51'),(286,2,18,'2024-05-29 18:05:51','2024-05-29 18:05:51'),(289,2,11,'2024-05-29 18:15:57','2024-05-29 18:15:57'),(290,2,19,'2024-05-29 18:15:57','2024-05-29 18:15:57'),(291,2,26,'2024-05-29 18:15:57','2024-05-29 18:15:57'),(292,2,54,'2024-05-29 18:15:57','2024-05-29 18:15:57'),(293,2,69,'2024-05-29 18:15:57','2024-05-29 18:15:57');
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `object` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'dashboard','index','dashboard.index','2017-07-11 03:27:21','2017-07-11 03:27:21'),(2,'hospital','setting','hospital.setting','2017-07-11 03:27:22','2017-07-11 03:27:22'),(3,'change','password','change.password','2017-07-11 03:27:22','2017-07-11 03:27:22'),(4,'hospital','update','hospital.update','2017-07-11 03:27:22','2017-07-11 03:27:22'),(5,'tax','update','tax.update','2017-07-11 03:27:22','2017-07-11 03:27:22'),(6,'config','update','config.update','2017-07-11 03:27:22','2017-07-11 03:27:22'),(7,'user','index','user.index','2017-07-11 03:27:22','2017-07-11 03:27:22'),(8,'user','store','user.store','2017-07-11 03:27:22','2017-07-11 03:27:22'),(9,'user','edit','user.edit','2017-07-11 03:27:22','2017-07-11 03:27:22'),(10,'user','delete','user.delete','2017-07-11 03:27:22','2017-07-11 03:27:22'),(11,'department','index','department.index','2017-07-11 03:27:22','2017-07-11 03:27:22'),(12,'department','add','department.add','2017-07-11 03:27:22','2017-07-11 03:27:22'),(13,'department','edit','department.edit','2017-07-11 03:27:22','2017-07-11 03:27:22'),(14,'department','delete','department.delete','2017-07-11 03:27:22','2017-07-11 03:27:22'),(15,'service','index','service.index','2017-07-11 03:27:22','2017-07-11 03:27:22'),(16,'service','add','service.add','2017-07-11 03:27:22','2017-07-11 03:27:22'),(17,'service','edit','service.edit','2017-07-11 03:27:22','2017-07-11 03:27:22'),(18,'service','delete','service.delete','2017-07-11 03:27:22','2017-07-11 03:27:22'),(19,'employee','index','employee.index','2017-07-11 03:27:22','2017-07-11 03:27:22'),(20,'employee','create','employee.create','2017-07-11 03:27:22','2017-07-11 03:27:22'),(21,'employee','store','employee.store','2017-07-11 03:27:22','2017-07-11 03:27:22'),(22,'employee','show','employee.show','2017-07-11 03:27:22','2017-07-11 03:27:22'),(23,'employee','edit','employee.edit','2017-07-11 03:27:22','2017-07-11 03:27:22'),(24,'employee','update','employee.update','2017-07-11 03:27:22','2017-07-11 03:27:22'),(25,'employee','destroy','employee.destroy','2017-07-11 03:27:22','2017-07-11 03:27:22'),(26,'doctor','index','doctor.index','2017-07-11 03:27:22','2017-07-11 03:27:22'),(27,'doctor','create','doctor.create','2017-07-11 03:27:22','2017-07-11 03:27:22'),(28,'doctor','store','doctor.store','2017-07-11 03:27:22','2017-07-11 03:27:22'),(29,'doctor','show','doctor.show','2017-07-11 03:27:22','2017-07-11 03:27:22'),(30,'doctor','edit','doctor.edit','2017-07-11 03:27:22','2017-07-11 03:27:22'),(31,'doctor','update','doctor.update','2017-07-11 03:27:22','2017-07-11 03:27:22'),(32,'doctor','destroy','doctor.destroy','2017-07-11 03:27:22','2017-07-11 03:27:22'),(33,'patient','index','patient.index','2017-07-11 03:27:22','2017-07-11 03:27:22'),(34,'patient','create','patient.create','2017-07-11 03:27:22','2017-07-11 03:27:22'),(35,'patient','store','patient.store','2017-07-11 03:27:22','2017-07-11 03:27:22'),(36,'patient','show','patient.show','2017-07-11 03:27:23','2017-07-11 03:27:23'),(37,'patient','edit','patient.edit','2017-07-11 03:27:23','2017-07-11 03:27:23'),(38,'patient','update','patient.update','2017-07-11 03:27:23','2017-07-11 03:27:23'),(39,'patient','destroy','patient.destroy','2017-07-11 03:27:23','2017-07-11 03:27:23'),(40,'appointment','index','appointment.index','2017-07-11 03:27:23','2017-07-11 03:27:23'),(41,'appointment','create','appointment.create','2017-07-11 03:27:23','2017-07-11 03:27:23'),(42,'appointment','store','appointment.store','2017-07-11 03:27:23','2017-07-11 03:27:23'),(43,'appointment','show','appointment.show','2017-07-11 03:27:23','2017-07-11 03:27:23'),(44,'appointment','edit','appointment.edit','2017-07-11 03:27:23','2017-07-11 03:27:23'),(45,'appointment','update','appointment.update','2017-07-11 03:27:23','2017-07-11 03:27:23'),(46,'appointment','destroy','appointment.destroy','2017-07-11 03:27:23','2017-07-11 03:27:23'),(47,'role','index','role.index','2017-07-11 03:27:23','2017-07-11 03:27:23'),(48,'role','create','role.create','2017-07-11 03:27:23','2017-07-11 03:27:23'),(49,'role','store','role.store','2017-07-11 03:27:23','2017-07-11 03:27:23'),(50,'role','show','role.show','2017-07-11 03:27:23','2017-07-11 03:27:23'),(51,'role','edit','role.edit','2017-07-11 03:27:23','2017-07-11 03:27:23'),(52,'role','update','role.update','2017-07-11 03:27:23','2017-07-11 03:27:23'),(53,'role','destroy','role.destroy','2017-07-11 03:27:23','2017-07-11 03:27:23'),(54,'package','index','package.index','2017-07-11 03:27:23','2017-07-11 03:27:23'),(55,'package','store','package.store','2017-07-11 03:27:23','2017-07-11 03:27:23'),(56,'package','edit','package.edit','2017-07-11 03:27:23','2017-07-11 03:27:23'),(57,'package','test','package.test.delete','2017-07-11 03:27:23','2017-07-11 03:27:23'),(58,'package','delete','package.delete','2017-07-11 03:27:23','2017-07-11 03:27:23'),(59,'appointment','updated','appointment.updated','2017-07-11 03:27:23','2017-07-11 03:27:23'),(60,'invoice','index','invoice.index','2017-07-11 03:27:23','2017-07-11 03:27:23'),(61,'invoice','store','invoice.store','2017-07-11 03:27:23','2017-07-11 03:27:23'),(62,'invoice','patient','invoice.patient','2017-07-11 03:27:23','2017-07-11 03:27:23'),(63,'invoice','remove','invoice.remove','2017-07-11 03:27:23','2017-07-11 03:27:23'),(64,'invoice','sale','invoice.sale','2017-07-11 03:27:23','2017-07-11 03:27:23'),(65,'invoice','opd','invoice.opd','2017-07-11 03:27:23','2017-07-11 03:27:23'),(66,'invoice','report','invoice.report','2017-07-11 03:27:23','2017-07-11 03:27:23'),(67,'search','invoice','search.invoice','2017-07-11 03:27:23','2017-07-11 03:27:23'),(68,'invoice','return','invoice.return','2017-07-11 03:27:23','2017-07-11 03:27:23'),(69,'opd','index','opd.index','2017-07-11 03:27:23','2017-07-11 03:27:23'),(70,'opd','store','opd.store','2017-07-11 03:27:23','2017-07-11 03:27:23'),(71,'package','sale','package.sale','2017-07-11 03:27:23','2017-07-11 03:27:23'),(72,'package','sale','package.sale','2017-07-11 03:27:23','2017-07-11 03:27:23'),(73,'package','sales','package.sales','2017-07-11 03:27:24','2017-07-11 03:27:24'),(74,'test','index','test.index','2017-07-11 03:27:24','2017-07-11 03:27:24'),(75,'test','status','test.status','2017-07-11 03:27:24','2017-07-11 03:27:24'),(76,'test','store','test.store','2017-07-11 03:27:24','2017-07-11 03:27:24'),(77,'test','edit','test.edit','2017-07-11 03:27:24','2017-07-11 03:27:24'),(78,'test','delete','test.delete','2017-07-11 03:27:24','2017-07-11 03:27:24'),(79,'reference','index','reference.index','2017-07-11 03:27:24','2017-07-11 03:27:24'),(80,'reference','store','reference.store','2017-07-11 03:27:24','2017-07-11 03:27:24'),(81,'reference','update','reference.update','2017-07-11 03:27:24','2017-07-11 03:27:24'),(82,'reference','delete','reference.delete','2017-07-11 03:27:24','2017-07-11 03:27:24'),(83,'antibiotic','store','antibiotic.store','2017-07-11 03:27:24','2017-07-11 03:27:24'),(84,'antibiotic','edit','antibiotic.edit','2017-07-11 03:27:24','2017-07-11 03:27:24'),(85,'haematology','index','haematology.index','2017-07-11 03:27:24','2017-07-11 03:27:24'),(86,'haematology','store','haematology.store','2017-07-11 03:27:24','2017-07-11 03:27:24'),(87,'microbiology','index','microbiology.index','2017-07-11 03:27:24','2017-07-11 03:27:24'),(88,'microbiology','store','microbiology.store','2017-07-11 03:27:24','2017-07-11 03:27:24'),(89,'examination','index','examination.index','2017-07-11 03:27:24','2017-07-11 03:27:24'),(90,'examination','store','examination.store','2017-07-11 03:27:24','2017-07-11 03:27:24'),(91,'examination','update','examination.update','2017-07-11 03:27:24','2017-07-11 03:27:24'),(92,'biochemistry','index','biochemistry.index','2017-07-11 03:27:24','2017-07-11 03:27:24'),(93,'biochemistry','store','biochemistry.store','2017-07-11 03:27:24','2017-07-11 03:27:24'),(94,'stain','index','stain.index','2017-07-11 03:27:24','2017-07-11 03:27:24'),(95,'stain','store','stain.store','2017-07-11 03:27:24','2017-07-11 03:27:24'),(96,'stain','edit','stain.edit','2017-07-11 03:27:24','2017-07-11 03:27:24'),(97,'report','index','report.index','2017-07-11 03:27:24','2017-07-11 03:27:24'),(98,'report','status','report.status','2017-07-11 03:27:24','2017-07-11 03:27:24'),(99,'report','edit','report.edit','2017-07-11 03:27:24','2017-07-11 03:27:24'),(100,'report','patient','report.patient','2017-07-11 03:27:24','2017-07-11 03:27:24'),(101,'report','update','report.update','2017-07-11 03:27:24','2017-07-11 03:27:24'),(102,'report','print','report.print','2017-07-11 03:27:24','2017-07-11 03:27:24'),(103,'result','test','result.test','2017-07-11 03:27:24','2017-07-11 03:27:24'),(104,'result','tests','result.tests','2017-07-11 03:27:24','2017-07-11 03:27:24'),(105,'result','store','result.store','2017-07-11 03:27:24','2017-07-11 03:27:24'),(106,'result','edit','result.edit','2017-07-11 03:27:24','2017-07-11 03:27:24'),(107,'report','generate','report.generate','2017-07-11 03:27:24','2017-07-11 03:27:24'),(108,'report','comment','report.comment','2017-07-11 03:27:24','2017-07-11 03:27:24'),(109,'report','result','report.result','2017-07-11 03:27:24','2017-07-11 03:27:24'),(110,'account','service','account.service','2017-07-11 03:27:24','2017-07-11 03:27:24'),(111,'account','opd','account.opd','2017-07-11 03:27:24','2017-07-11 03:27:24'),(112,'account','package','account.package','2017-07-11 03:27:25','2017-07-11 03:27:25');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_results`
--

DROP TABLE IF EXISTS `reference_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reference_results` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `test_report_id` int unsigned NOT NULL,
  `test_reference_id` int unsigned NOT NULL,
  `result` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reference_results_test_report_id_foreign` (`test_report_id`),
  KEY `reference_results_test_reference_id_foreign` (`test_reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_results`
--

LOCK TABLES `reference_results` WRITE;
/*!40000 ALTER TABLE `reference_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `reference_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reports` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int unsigned NOT NULL,
  `doctor_id` int DEFAULT NULL,
  `report` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reports_patient_id_foreign` (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES (1,10,NULL,NULL,NULL,0,'2024-01-11 21:47:00','2024-01-11 21:47:00',NULL),(2,9,2,NULL,NULL,0,'2024-06-05 12:27:41','2024-06-05 12:27:41',NULL);
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Superadmin','Role for Super administrator','2017-07-11 03:27:25','2017-07-11 03:27:25'),(2,'user','user','2017-07-15 12:27:38','2017-07-15 12:27:38'),(3,'lab','lab','2017-07-15 12:29:37','2017-07-15 12:29:37'),(4,'admin','admin','2017-07-15 12:32:13','2017-07-15 12:32:13');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_sales`
--

DROP TABLE IF EXISTS `service_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_sales` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `service_id` int NOT NULL,
  `service_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `invoice_id` int unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `service_sales_invoice_id_foreign` (`invoice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_sales`
--

LOCK TABLES `service_sales` WRITE;
/*!40000 ALTER TABLE `service_sales` DISABLE KEYS */;
INSERT INTO `service_sales` VALUES (1,45,'Total Cholesterol',190.48,2,1,'2024-01-11 21:43:09','2024-01-11 21:43:09',NULL),(2,1,'Absolute Basophil Count',142.86,5,1,'2024-05-09 05:29:28','2024-05-09 05:29:28',NULL),(3,2,'Absolute Eosinophil Count',142.86,5,1,'2024-05-09 05:29:28','2024-05-09 05:29:28',NULL),(4,3,'Absolute Neutrophil Count',142.86,5,1,'2024-05-09 05:29:28','2024-05-09 05:29:28',NULL),(5,1,'Absolute Basophil Count',142.86,6,1,'2024-05-12 18:03:57','2024-05-12 18:03:57',NULL),(6,2,'Absolute Eosinophil Count',142.86,6,1,'2024-05-12 18:03:57','2024-05-12 18:03:57',NULL),(7,1,'Absolute Basophil Count',142.86,7,1,'2024-05-12 18:06:40','2024-05-12 18:06:40',NULL),(8,2,'Absolute Eosinophil Count',142.86,7,1,'2024-05-12 18:06:40','2024-05-12 18:06:40',NULL),(9,1,'Absolute Basophil Count',142.86,8,1,'2024-05-12 18:07:53','2024-05-12 18:07:53',NULL),(10,3,'Absolute Neutrophil Count',142.86,8,1,'2024-05-12 18:07:53','2024-05-12 18:07:53',NULL),(11,4,'Acid Phosphatase',333.33,9,1,'2024-05-12 18:18:21','2024-05-12 18:18:21',NULL),(12,5,'Albumin/Ceatinine ratio',809.52,9,1,'2024-05-12 18:18:21','2024-05-12 18:18:21',NULL),(13,23,'Anticardiolipin IgG',1000.00,10,1,'2024-05-12 18:19:36','2024-05-12 18:19:36',NULL),(14,1,'Absolute Basophil Count',142.86,11,1,'2024-05-12 18:28:06','2024-05-12 18:28:06',NULL),(15,3,'Absolute Neutrophil Count',142.86,11,1,'2024-05-12 18:28:06','2024-05-12 18:28:06',NULL),(16,5,'Albumin/Ceatinine ratio',809.52,12,1,'2024-05-12 18:34:16','2024-05-12 18:34:16',NULL),(17,1,'Absolute Basophil Count',142.86,13,1,'2024-05-12 18:35:31','2024-05-12 18:35:31',NULL),(18,1,'Absolute Basophil Count',142.86,14,1,'2024-05-12 18:37:46','2024-05-12 18:37:46',NULL),(19,1,'Absolute Basophil Count',142.86,17,1,'2024-05-12 18:59:40','2024-05-12 18:59:40',NULL),(20,1,'CBC',600.00,18,1,'2024-05-16 05:40:48','2024-05-16 05:40:48',NULL),(21,1,'CBC',600.00,19,1,'2024-05-16 06:32:58','2024-05-16 06:32:58',NULL),(22,1,'CBC',600.00,20,1,'2024-05-16 06:33:48','2024-05-16 06:33:48',NULL),(23,1,'CBC',600.00,21,1,'2024-05-18 06:35:54','2024-05-18 06:35:54',NULL),(24,1,'CBC',600.00,22,1,'2024-05-18 06:37:36','2024-05-18 06:37:36',NULL),(25,1,'CBC',600.00,23,1,'2024-05-28 08:34:51','2024-05-28 08:34:51',NULL),(26,1,'CBC',600.00,24,1,'2024-05-28 09:22:01','2024-05-28 09:22:01',NULL),(27,1,'CBC',600.00,25,1,'2024-05-28 09:29:49','2024-05-28 09:29:49',NULL),(28,2,'ESR',200.00,26,1,'2024-05-28 14:18:29','2024-05-28 14:18:29',NULL),(29,1,'CBC',600.00,27,1,'2024-05-28 14:19:25','2024-05-28 14:19:25',NULL),(30,1,'CBC',600.00,28,1,'2024-05-28 17:02:38','2024-05-28 17:02:38',NULL),(31,2,'ESR',200.00,29,1,'2024-05-29 18:03:57','2024-05-29 18:03:57',NULL),(32,2,'ESR',200.00,30,1,'2024-06-05 11:44:43','2024-06-05 11:44:43',NULL),(33,1,'CBC',600.00,31,1,'2024-06-05 11:48:36','2024-06-05 11:48:36',NULL),(34,1,'CBC',600.00,32,1,'2024-06-05 11:56:04','2024-06-05 11:56:04',NULL),(35,4,'Total circulating eosinophil count',200.00,32,1,'2024-06-05 11:56:04','2024-06-05 11:56:04',NULL),(36,1,'CBC',600.00,33,1,'2024-06-05 12:00:31','2024-06-05 12:00:31',NULL),(37,2,'ESR',200.00,34,1,'2024-06-05 12:02:10','2024-06-05 12:02:10',NULL),(38,4,'Total circulating eosinophil count',200.00,35,1,'2024-06-05 12:05:29','2024-06-05 12:05:29',NULL),(39,1,'CBC',600.00,36,1,'2024-06-05 12:10:43','2024-06-05 12:10:43',NULL),(40,2,'ESR',200.00,36,1,'2024-06-05 12:10:43','2024-06-05 12:10:43',NULL),(41,3,'BT, CT',200.00,36,1,'2024-06-05 12:10:43','2024-06-05 12:10:43',NULL),(42,4,'Total circulating eosinophil count',200.00,36,1,'2024-06-05 12:10:43','2024-06-05 12:10:43',NULL),(43,12,'PBF (Peripheral Blood Film)',700.00,36,1,'2024-06-05 12:10:43','2024-06-05 12:10:43',NULL),(44,2,'ESR',200.00,37,1,'2024-06-05 12:19:01','2024-06-05 12:19:01',NULL),(45,1,'CBC',600.00,37,1,'2024-06-05 12:19:01','2024-06-05 12:19:01',NULL),(46,3,'BT, CT',200.00,37,1,'2024-06-05 12:19:01','2024-06-05 12:19:01',NULL),(47,4,'Total circulating eosinophil count',200.00,37,1,'2024-06-05 12:19:01','2024-06-05 12:19:01',NULL),(48,12,'PBF (Peripheral Blood Film)',700.00,37,1,'2024-06-05 12:19:01','2024-06-05 12:19:01',NULL),(49,1,'CBC',600.00,38,1,'2024-06-05 12:20:38','2024-06-05 12:20:38',NULL),(50,2,'ESR',200.00,38,1,'2024-06-05 12:20:38','2024-06-05 12:20:38',NULL),(51,3,'BT, CT',200.00,38,1,'2024-06-05 12:20:38','2024-06-05 12:20:38',NULL),(52,4,'Total circulating eosinophil count',200.00,38,1,'2024-06-05 12:20:38','2024-06-05 12:20:38',NULL),(53,23,'Anticardiolipin IgG',1000.00,38,1,'2024-06-05 12:20:38','2024-06-05 12:20:38',NULL),(54,32,'S.Bilirubin',500.00,38,1,'2024-06-05 12:20:38','2024-06-05 12:20:38',NULL),(55,1,'CBC',600.00,39,1,'2024-06-05 12:27:40','2024-06-05 12:27:40',NULL),(56,2,'ESR',200.00,39,1,'2024-06-05 12:27:40','2024-06-05 12:27:40',NULL),(57,3,'BT, CT',200.00,39,1,'2024-06-05 12:27:40','2024-06-05 12:27:40',NULL),(58,4,'Total circulating eosinophil count',200.00,39,1,'2024-06-05 12:27:40','2024-06-05 12:27:40',NULL),(59,12,'PBF (Peripheral Blood Film)',700.00,39,1,'2024-06-05 12:27:41','2024-06-05 12:27:41',NULL),(60,27,'ASO titer',500.00,39,1,'2024-06-05 12:27:41','2024-06-05 12:27:41',NULL),(61,82,'HB%',200.00,39,1,'2024-06-05 12:27:41','2024-06-05 12:27:41',NULL),(62,1,'CBC',600.00,40,1,'2024-06-05 12:31:16','2024-06-05 12:31:16',NULL),(63,2,'ESR',200.00,40,1,'2024-06-05 12:31:16','2024-06-05 12:31:16',NULL),(64,3,'BT, CT',200.00,40,1,'2024-06-05 12:31:16','2024-06-05 12:31:16',NULL),(65,4,'Total circulating eosinophil count',200.00,40,1,'2024-06-05 12:31:16','2024-06-05 12:31:16',NULL),(66,15,'ALP (Alkaline Phosphatase)',500.00,40,1,'2024-06-05 12:31:16','2024-06-05 12:31:16',NULL),(67,41,'S.Calcium',500.00,40,1,'2024-06-05 12:31:16','2024-06-05 12:31:16',NULL),(68,46,'Cholesterol - HDL',400.00,40,1,'2024-06-05 12:31:16','2024-06-05 12:31:16',NULL);
/*!40000 ALTER TABLE `service_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(20,15) NOT NULL,
  `department_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=267 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'CBC',600.000000000000000,1,'2017-06-02 05:46:51','2024-05-14 15:58:31'),(2,'ESR',200.000000000000000,1,'2017-06-02 05:46:51','2024-05-14 15:58:55'),(3,'BT, CT',200.000000000000000,1,'2017-06-02 05:46:51','2024-05-14 16:00:54'),(4,'Total circulating eosinophil count',200.000000000000000,1,'2017-06-02 05:46:51','2024-05-14 16:03:24'),(5,'Albumin/Ceatinine ratio',809.523809523809500,1,'2017-06-02 05:46:51','2017-07-27 15:47:52'),(12,'PBF (Peripheral Blood Film)',700.000000000000000,1,'2017-06-02 05:46:51','2024-05-14 16:05:46'),(15,'ALP (Alkaline Phosphatase)',500.000000000000000,2,'2017-06-02 05:46:51','2024-05-14 16:16:44'),(16,'S.Amylase',800.000000000000000,2,'2017-06-02 05:46:51','2024-05-14 16:19:05'),(22,'Anti TPO Antibody',3000.000000000000000,5,'2017-06-02 05:46:51','2024-05-14 16:43:18'),(23,'Anticardiolipin IgG',1000.000000000000000,1,'2017-06-02 05:46:51','2017-07-27 15:47:53'),(24,'Anticardiolipin IgM',1000.000000000000000,1,'2017-06-02 05:46:51','2017-07-27 15:47:53'),(27,'ASO titer',500.000000000000000,23,'2017-06-02 05:46:51','2024-05-14 16:25:57'),(32,'S.Bilirubin',500.000000000000000,2,'2017-06-02 05:46:51','2024-05-14 16:17:51'),(35,'Blood Group',100.000000000000000,23,'2017-06-02 05:46:51','2024-05-14 16:24:33'),(41,'S.Calcium',500.000000000000000,2,'2017-06-02 05:46:51','2024-05-14 16:18:09'),(42,'C-ANCA',1200.000000000000000,1,'2017-06-02 05:46:51','2017-07-27 15:47:54'),(45,'Total Cholesterol',400.000000000000000,2,'2017-06-02 05:46:51','2024-05-14 16:09:56'),(46,'Cholesterol - HDL',400.000000000000000,2,'2017-06-02 05:46:51','2024-05-14 16:10:52'),(56,'Creatinine',500.000000000000000,2,'2017-06-02 05:46:51','2024-05-14 16:08:26'),(59,'CRP (C-Reactive Protein)',500.000000000000000,23,'2017-06-02 05:46:51','2024-05-14 16:25:20'),(71,'FSH',1200.000000000000000,5,'2017-06-02 05:46:51','2024-05-14 16:40:25'),(77,'Blood Glucose PP',47.619047619047620,1,'2017-06-02 05:46:51','2017-07-27 15:47:55'),(82,'HB%',200.000000000000000,1,'2017-06-02 05:46:51','2024-05-14 16:04:56'),(85,'Anti H Pylori',600.000000000000000,23,'2017-06-02 05:46:51','2024-05-14 16:28:02'),(86,'HBS Ag',500.000000000000000,23,'2017-06-02 05:46:51','2024-05-14 16:32:32'),(105,'LH',1200.000000000000000,5,'2017-06-02 05:46:51','2024-05-14 16:39:02'),(106,'S.Lipase',800.000000000000000,2,'2017-06-02 05:46:51','2024-05-14 16:19:32'),(107,'Lipid Profile',1000.000000000000000,2,'2017-06-02 05:46:51','2024-05-14 16:09:35'),(108,'LFT (Liver Function Test)',1300.000000000000000,2,'2017-06-02 05:46:51','2024-05-14 16:15:36'),(110,'Mantoux Test',300.000000000000000,1,'2017-06-02 05:46:51','2024-05-14 16:07:47'),(119,'Platelets Count',200.000000000000000,1,'2017-06-02 05:46:51','2024-05-14 16:01:49'),(122,'S. Prolactin',1200.000000000000000,5,'2017-06-02 05:46:51','2024-05-14 16:41:32'),(128,'Pus For C/S',1500.000000000000000,22,'2017-06-02 05:46:51','2024-05-15 13:54:23'),(130,'RA Factor',500.000000000000000,23,'2017-06-02 05:46:51','2024-05-14 16:26:39'),(135,'VDRL',500.000000000000000,23,'2017-06-02 05:46:51','2024-05-14 16:31:46'),(138,'Widal Test',500.000000000000000,23,'2017-06-02 05:46:51','2024-05-14 16:29:14'),(139,'Semen Analysis',1000.000000000000000,2,'2017-06-02 05:46:51','2024-05-14 16:20:13'),(141,'SGOT (AST)',500.000000000000000,2,'2017-06-02 05:46:51','2024-05-14 16:16:11'),(142,'SGPT (ALT)',500.000000000000000,2,'2017-06-02 05:46:51','2024-05-14 16:15:55'),(148,'S. T3',1200.000000000000000,5,'2017-06-02 05:46:51','2024-05-14 16:37:57'),(149,'S. T4',1200.000000000000000,5,'2017-06-02 05:46:51','2024-05-14 16:38:26'),(150,'S. TSH',1200.000000000000000,5,'2017-06-02 05:46:51','2024-05-14 16:34:57'),(151,'S. FT3',1200.000000000000000,5,'2017-06-02 05:46:51','2024-05-14 16:36:59'),(157,'TPHA',600.000000000000000,23,'2017-06-02 05:46:51','2024-05-14 16:33:22'),(160,'Troponin I',800.000000000000000,23,'2017-06-02 05:46:51','2024-05-14 16:28:28'),(163,'S.Uric Acid',500.000000000000000,2,'2017-06-02 05:46:51','2024-05-14 16:18:30'),(164,'Urine For R/M/E',100.000000000000000,22,'2017-06-02 05:46:51','2024-05-15 13:55:20'),(165,'Urine For C/S',1500.000000000000000,22,'2017-06-02 05:46:51','2024-05-15 13:52:49'),(168,'Vitamin-D',3000.000000000000000,5,'2017-06-02 05:46:51','2024-05-14 16:42:45'),(172,'Random blood sugar (RBS)',100.000000000000000,2,'2017-06-04 12:22:51','2024-05-14 16:08:08'),(173,'S. FT4',1200.000000000000000,5,'2017-06-05 11:50:36','2024-05-14 16:37:27'),(176,'Direct/Indirect Bilirubin',800.000000000000000,2,'2017-07-12 09:35:52','2024-05-14 16:17:26'),(177,'Triglyceride',400.000000000000000,2,'2017-07-12 10:08:02','2024-05-14 16:10:28'),(182,'USG OF KUB (Color)',800.000000000000000,24,'2024-05-14 15:54:38','2024-05-15 13:55:44'),(183,'ECG',300.000000000000000,12,'2024-05-14 15:57:27','2024-05-14 15:57:27'),(184,'Histopathology Big/Small',2500.000000000000000,1,'2024-05-14 16:06:55','2024-05-14 16:06:55'),(185,'OGTT (Oral glucose tolerance tests)',400.000000000000000,2,'2024-05-14 16:09:04','2024-05-14 16:09:04'),(186,'FBS & 2HABF',200.000000000000000,2,'2024-05-14 16:13:16','2024-05-14 16:13:16'),(187,'FBS',100.000000000000000,2,'2024-05-14 16:14:32','2024-05-14 16:14:32'),(188,'2 HABF',100.000000000000000,2,'2024-05-14 16:15:05','2024-05-14 16:15:05'),(189,'Skin Scrapping',600.000000000000000,2,'2024-05-14 16:20:51','2024-05-14 16:20:51'),(190,'Crossmatching',300.000000000000000,23,'2024-05-14 16:30:00','2024-05-14 16:30:00'),(191,'Triple Antigen',800.000000000000000,23,'2024-05-14 16:30:40','2024-05-14 16:30:40'),(192,'Syphilis',500.000000000000000,23,'2024-05-14 16:32:59','2024-05-14 16:32:59'),(193,'Urine For PT',100.000000000000000,23,'2024-05-14 16:33:50','2024-05-14 16:33:50'),(194,'S.IgE Level',1200.000000000000000,5,'2024-05-14 16:35:41','2024-05-14 16:35:41'),(195,'B. Hch',1200.000000000000000,5,'2024-05-14 16:41:08','2024-05-14 16:41:08'),(196,'AMH',3000.000000000000000,5,'2024-05-14 16:42:12','2024-05-14 16:42:12'),(197,'USG OF KUB (White)',400.000000000000000,24,'2024-05-15 13:56:18','2024-05-15 13:56:18'),(198,'USG OF L/A (Color)',800.000000000000000,24,'2024-05-15 13:57:14','2024-05-15 13:57:14'),(199,'USG OF L/A (White)',400.000000000000000,24,'2024-05-15 13:57:51','2024-05-15 13:57:51'),(200,'USG OF U/A (Color)',800.000000000000000,24,'2024-05-15 13:58:33','2024-05-15 13:58:33'),(201,'USG OF U/A (White)',400.000000000000000,24,'2024-05-15 13:59:18','2024-05-15 13:59:18'),(202,'USG OF P/P (Color)',800.000000000000000,24,'2024-05-15 14:00:02','2024-05-15 14:00:02'),(203,'USG OF P/P (White)',400.000000000000000,24,'2024-05-15 14:00:18','2024-05-15 14:00:18'),(204,'USG OF W/A (Color)',1000.000000000000000,24,'2024-05-15 14:00:43','2024-05-15 14:00:43'),(205,'USG OF W/A (White)',700.000000000000000,24,'2024-05-15 14:01:11','2024-05-15 14:01:11'),(206,'Folliculometry (Color)',2500.000000000000000,24,'2024-05-15 14:01:38','2024-05-15 14:01:38'),(207,'TVS',2000.000000000000000,24,'2024-05-15 14:02:01','2024-05-15 14:02:01'),(208,'Echo',2500.000000000000000,24,'2024-05-15 14:02:16','2024-05-15 14:02:16'),(209,'Chest PA View / Chest AP View',400.000000000000000,25,'2024-05-15 14:03:00','2024-05-15 14:03:00'),(210,'Skull PA View / Skull AP View',400.000000000000000,25,'2024-05-15 14:03:37','2024-05-15 14:03:37'),(211,'Skull B/V',800.000000000000000,25,'2024-05-15 14:03:49','2024-05-15 14:03:49'),(212,'PNS OM',400.000000000000000,25,'2024-05-15 14:04:08','2024-05-15 14:04:08'),(213,'Mastoid Towns view',400.000000000000000,25,'2024-05-15 14:04:26','2024-05-15 14:04:26'),(214,'Cervical Spine AP View / PA View',400.000000000000000,25,'2024-05-15 14:04:41','2024-05-15 14:04:41'),(215,'Cervical Spine B/V',800.000000000000000,25,'2024-05-15 14:04:52','2024-05-15 14:04:52'),(216,'Thoracic Spine AP View /PA View',400.000000000000000,25,'2024-05-15 14:05:02','2024-05-15 14:05:02'),(217,'Thoracic Spine B/V',800.000000000000000,25,'2024-05-15 14:05:10','2024-05-15 14:05:10'),(218,'Lumber Spine AP View / PA View',400.000000000000000,25,'2024-05-15 14:05:20','2024-05-15 14:05:20'),(219,'Lumber Spine B/V',800.000000000000000,25,'2024-05-15 14:09:36','2024-05-15 14:09:36'),(220,'Pelvis AP View',400.000000000000000,25,'2024-05-15 14:09:45','2024-05-15 14:09:45'),(221,'Pelvis B/V',800.000000000000000,25,'2024-05-15 14:09:55','2024-05-15 14:09:55'),(222,'Shoulder Joint AP View / PA View',400.000000000000000,25,'2024-05-15 14:10:06','2024-05-15 14:10:06'),(223,'Shoulder Joint B/V',800.000000000000000,25,'2024-05-15 14:10:15','2024-05-15 14:10:15'),(224,'Elbow Joint AP + Lt View',400.000000000000000,25,'2024-05-15 14:10:25','2024-05-15 14:10:25'),(225,'Wrist Joint B/V',400.000000000000000,25,'2024-05-15 14:10:35','2024-05-15 14:10:35'),(226,'Rt Hand B/V',400.000000000000000,25,'2024-05-15 14:10:45','2024-05-15 14:10:45'),(227,'Lt Hand B/V',400.000000000000000,25,'2024-05-15 14:10:58','2024-05-15 14:10:58'),(228,'Forearm B/V',400.000000000000000,25,'2024-05-15 14:11:09','2024-05-15 14:11:09'),(229,'Arm B/V',400.000000000000000,25,'2024-05-15 14:11:18','2024-05-15 14:11:18'),(230,'KUB',400.000000000000000,25,'2024-05-15 14:11:27','2024-05-15 14:11:27'),(231,'Abdomen EP',400.000000000000000,25,'2024-05-15 14:11:34','2024-05-15 14:11:34'),(232,'HIP Joint AP View',400.000000000000000,25,'2024-05-15 14:11:43','2024-05-15 14:11:43'),(233,'HIP Joint B/V',800.000000000000000,25,'2024-05-15 14:11:55','2024-05-15 14:11:55'),(234,'Femur B/V',800.000000000000000,25,'2024-05-15 14:12:05','2024-05-15 14:12:05'),(235,'Knee Joint B/V',400.000000000000000,25,'2024-05-15 14:12:14','2024-05-15 14:12:14'),(236,'Ankle joint B/V',400.000000000000000,25,'2024-05-15 14:12:30','2024-05-15 14:12:30'),(237,'Rt Leg B/V',400.000000000000000,25,'2024-05-15 14:12:40','2024-05-15 14:12:40'),(238,'Lt Leg B/V',400.000000000000000,25,'2024-05-15 14:12:52','2024-05-15 14:12:52'),(239,'Rt foot B/V',400.000000000000000,25,'2024-05-15 14:13:02','2024-05-15 14:13:02'),(240,'Lt Foot B/V',400.000000000000000,25,'2024-05-15 14:13:12','2024-05-15 14:13:12'),(241,'Neck UP View',400.000000000000000,25,'2024-05-15 14:13:40','2024-05-15 14:13:40'),(242,'Nasopharynx Lt View',400.000000000000000,25,'2024-05-15 14:13:50','2024-05-15 14:13:50'),(243,'IVU (3500+ Medicine 1500)',5000.000000000000000,25,'2024-05-15 14:14:00','2024-05-15 14:14:00'),(244,'Fistulogram (2000+ Medicine 1500)',3500.000000000000000,25,'2024-05-15 14:14:18','2024-05-15 14:14:18'),(245,'Sinogram ( 2000 + Medicine 1500 )',3500.000000000000000,25,'2024-05-15 14:14:35','2024-05-15 14:14:35'),(246,'Ba- Meal ( 1500 + Medicine 700 )',2200.000000000000000,25,'2024-05-15 14:14:48','2024-05-15 14:14:48'),(247,'Ba- Swallow (1500 + Medicine 700)',2200.000000000000000,25,'2024-05-15 14:15:08','2024-05-15 14:15:08'),(248,'Admission',100.000000000000000,26,'2024-05-15 14:15:28','2024-05-15 14:15:28'),(249,'NVD (Normal Delivery)',3000.000000000000000,26,'2024-05-15 14:15:49','2024-05-15 14:15:49'),(250,'LUCS (C- Section Operation)',6000.000000000000000,26,'2024-05-15 14:16:07','2024-05-15 14:16:07'),(251,'Circumcision',3000.000000000000000,26,'2024-05-15 14:16:22','2024-05-15 14:16:22'),(252,'D & C (Dilation & Curettage)',3500.000000000000000,26,'2024-05-15 14:16:49','2024-05-15 14:16:49'),(253,'Perineal Tear',3500.000000000000000,26,'2024-05-15 14:17:00','2024-05-15 14:17:00'),(254,'MOT Charge',1500.000000000000000,26,'2024-05-15 14:17:14','2024-05-15 14:17:14'),(255,'Dressing charge',100.000000000000000,26,'2024-05-15 14:17:25','2024-05-15 14:17:25'),(256,'Tonsillectomy',10000.000000000000000,26,'2024-05-15 14:17:37','2024-05-15 14:17:37'),(257,'Appendicectomy',8000.000000000000000,26,'2024-05-15 14:17:48','2024-05-15 14:17:48'),(258,'Gallbladder ( Cholecystectomy )',10000.000000000000000,26,'2024-05-15 14:18:07','2024-05-15 14:18:07'),(259,'Hysterectomy (TAH)',10000.000000000000000,26,'2024-05-15 14:18:19','2024-05-15 14:18:19'),(260,'Breast Abscess',8000.000000000000000,26,'2024-05-15 14:18:30','2024-05-15 14:18:30'),(261,'Cyst Abscess',8000.000000000000000,26,'2024-05-15 14:18:39','2024-05-15 14:18:39'),(262,'Nebulization',100.000000000000000,26,'2024-05-15 14:18:47','2024-05-15 14:18:47'),(263,'Bed Charge',300.000000000000000,26,'2024-05-15 14:18:59','2024-05-15 14:18:59'),(264,'Service Charge',300.000000000000000,26,'2024-05-15 14:19:12','2024-05-15 14:19:12'),(265,'Round fee',500.000000000000000,26,'2024-05-15 14:19:22','2024-05-15 14:19:22'),(266,'Token',30.000000000000000,26,'2024-06-03 09:13:16','2024-06-03 09:13:16');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temps`
--

DROP TABLE IF EXISTS `temps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temps` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `service_id` int NOT NULL,
  `service_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(28,20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temps`
--

LOCK TABLES `temps` WRITE;
/*!40000 ALTER TABLE `temps` DISABLE KEYS */;
/*!40000 ALTER TABLE `temps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_antibiotic_results`
--

DROP TABLE IF EXISTS `test_antibiotic_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_antibiotic_results` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `test_report_id` int NOT NULL,
  `test_antibiotic_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `result` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_antibiotic_results`
--

LOCK TABLES `test_antibiotic_results` WRITE;
/*!40000 ALTER TABLE `test_antibiotic_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_antibiotic_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_antibiotics`
--

DROP TABLE IF EXISTS `test_antibiotics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_antibiotics` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_antibiotics`
--

LOCK TABLES `test_antibiotics` WRITE;
/*!40000 ALTER TABLE `test_antibiotics` DISABLE KEYS */;
INSERT INTO `test_antibiotics` VALUES (1,'Ciprofloxacin','2017-07-12 14:34:37','2017-07-12 14:34:37'),(2,'Ofloxacin','2017-07-12 14:34:43','2017-07-12 14:34:43'),(3,'Chloramphenicol','2017-07-12 14:34:50','2017-07-12 14:34:50'),(4,'Cephalexin','2017-07-12 14:34:56','2017-07-12 14:34:56'),(5,'Ceftriaxone','2017-07-12 14:35:04','2017-07-12 14:35:04'),(6,'Cotrimoxazole','2017-07-12 14:35:11','2017-07-12 14:35:11'),(7,'Amoxicillin','2017-07-12 14:35:17','2017-07-12 14:35:17'),(8,'Cephadroxilo','2017-07-12 14:35:22','2017-07-12 14:35:22'),(9,'Norfloxacin','2017-07-12 14:35:44','2017-07-12 14:35:44'),(10,'Nitrofurantoin','2017-07-12 14:36:02','2017-07-12 14:36:02'),(11,'Co-trimoxazole','2017-07-12 14:36:16','2017-07-12 14:36:16'),(12,'Cefixime','2017-07-12 14:36:51','2017-07-12 14:36:51'),(13,'Erythromycin','2017-07-12 14:37:17','2017-07-12 14:37:17'),(14,'Gentamicin','2017-07-12 14:37:49','2017-07-12 14:37:49'),(15,'Amikacin','2017-07-12 14:37:56','2017-07-12 14:37:56');
/*!40000 ALTER TABLE `test_antibiotics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_examinations`
--

DROP TABLE IF EXISTS `test_examinations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_examinations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `test_id` int unsigned NOT NULL,
  `macroscopics` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `microscopics` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `test_examinations_test_id_foreign` (`test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_examinations`
--

LOCK TABLES `test_examinations` WRITE;
/*!40000 ALTER TABLE `test_examinations` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_examinations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_reference_results`
--

DROP TABLE IF EXISTS `test_reference_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_reference_results` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `test_report_id` int NOT NULL,
  `test_reference_id` int NOT NULL,
  `result` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_reference_results`
--

LOCK TABLES `test_reference_results` WRITE;
/*!40000 ALTER TABLE `test_reference_results` DISABLE KEYS */;
INSERT INTO `test_reference_results` VALUES (1,1,36,'70','L','2024-01-11 21:49:56','2024-01-11 21:49:56'),(2,1,37,'80','L','2024-01-11 21:49:56','2024-01-11 21:49:56');
/*!40000 ALTER TABLE `test_reference_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_references`
--

DROP TABLE IF EXISTS `test_references`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_references` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `test_id` int unsigned DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `range` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_references`
--

LOCK TABLES `test_references` WRITE;
/*!40000 ALTER TABLE `test_references` DISABLE KEYS */;
INSERT INTO `test_references` VALUES (26,NULL,'Bilirubin (Direct)','mg/dl','0.1-0.4',NULL,'2017-07-12 14:31:12','2017-07-12 14:31:12',NULL),(27,NULL,'SGPT (ALT)','IU/L','Upto 40',NULL,'2017-07-12 14:32:12','2017-07-12 14:32:12',NULL),(28,NULL,'SGOT (AST)','IU/L','Upto 40',NULL,'2017-07-12 14:32:48','2017-07-12 14:32:48',NULL),(29,NULL,'Alkaline Phosphatase','U/L','80-240',NULL,'2017-07-12 14:33:15','2017-07-12 14:33:15',NULL),(30,NULL,'Total Cholesterol','mg/dl','0 - 200',NULL,'2017-07-12 14:33:59','2017-07-12 14:33:59',NULL),(31,NULL,'Triglyceride','mg/dl','0 -150',NULL,'2017-07-12 14:35:08','2017-07-12 14:35:08',NULL),(32,NULL,'HDL','mg/dl','35-60',NULL,'2017-07-12 14:35:59','2017-07-12 14:35:59',NULL),(33,NULL,'LDL','mg/dl','0 - 100',NULL,'2017-07-12 14:37:45','2017-07-12 14:37:45',NULL),(34,NULL,'VLDL','mg/dl','0 - 30',NULL,'2017-07-12 14:38:20','2017-07-12 14:38:20',NULL),(35,NULL,'HBA1C','%','Normal : 0-5.7% , Pre-diabetes :5.7-6.4%,  Diabetic : 0-6.4%',NULL,'2017-07-12 14:58:51','2017-07-12 14:58:51',NULL),(36,NULL,'Blood Glucose PP','mg/dl','Non-diabetic : 70-140 American Diabetes   : 0 - 180',NULL,'2017-07-12 15:17:57','2017-07-12 15:35:35',NULL),(37,NULL,'Blood Glucose Random','mg/dl','80 - 140',NULL,'2017-07-12 15:19:20','2017-07-12 15:19:20',NULL),(38,NULL,'Blood Urea','mg/dl','15 - 45',NULL,'2017-07-12 15:20:37','2017-07-12 15:20:37',NULL),(40,NULL,'HDL Cholesterol','mg/dl','> 55    (No Risk) 35-45  (Moderate Risk) < 35     (High Risk)',NULL,'2017-07-12 15:28:52','2017-07-12 15:28:52',NULL),(41,NULL,'LDL  Cholesterol','mg/dl','0-130',NULL,'2017-07-12 15:29:54','2017-07-12 15:29:54',NULL),(42,NULL,'Thyroid Function Test (TFT)',NULL,NULL,NULL,'2017-07-12 15:31:57','2017-07-12 15:31:57',NULL),(43,NULL,'TSH','uIU/ml','0.40-5.50',42,'2017-07-12 15:32:28','2017-07-12 15:32:28',NULL),(44,NULL,'GOT (AST)','IU/L','Upto 40',NULL,'2017-07-12 15:32:43','2017-07-12 15:32:43',NULL),(45,NULL,'T3','ng/ml','0.60-1.81',42,'2017-07-12 15:34:00','2017-07-12 15:34:00',NULL),(46,NULL,'T4','ug/dl','5.0-12.5',42,'2017-07-12 15:34:24','2017-07-12 15:34:24',NULL),(47,NULL,'FT3','pg/ml','3.5-6.5',42,'2017-07-12 15:34:45','2017-07-12 15:34:45',NULL),(48,NULL,'FT4','ng/dl','9.0-23.0',42,'2017-07-12 15:35:07','2017-07-12 15:35:07',NULL),(49,NULL,'Albumin','gm/dl','3.5 – 5.0',NULL,'2017-07-12 15:35:12','2017-07-12 15:35:37',NULL),(50,NULL,'A/G Ratio','mg/l','0.9 – 2.1',NULL,'2017-07-12 15:36:26','2017-07-24 12:26:36',NULL),(51,NULL,'CPK','U/L','Male : 46 -171 Female : 34 - 145',NULL,'2017-07-12 15:37:24','2017-07-12 15:37:24',NULL),(52,NULL,'CPK-MB','U/L','below 25',NULL,'2017-07-12 15:37:55','2017-07-12 15:37:55',NULL),(53,NULL,'Amylase','U/L','0-86',NULL,'2017-07-12 15:38:37','2017-07-12 15:38:37',NULL),(54,NULL,'LDH','U/L','Adults : 125 – 220 Children : 180 - 360',NULL,'2017-07-12 15:39:12','2017-07-12 15:39:12',NULL),(55,NULL,'Gamma GT','U/L','0-32',NULL,'2017-07-12 15:40:20','2017-07-12 15:40:20',NULL),(56,NULL,'free PSA','ng/ml','0- 0.42',NULL,'2017-07-12 15:40:40','2017-07-12 15:42:11',NULL),(57,NULL,'PSA (quantitative)','ng/ml','<4  Normal 4-10  probably BPH >10 probably',NULL,'2017-07-12 15:43:48','2017-07-12 15:43:48',NULL),(58,NULL,'testosterone','ng/ml','0.10-0.96',NULL,'2017-07-12 15:44:29','2017-07-12 15:44:29',NULL),(59,NULL,'Acid Phosphatase','U/L','80-240',NULL,'2017-07-24 13:11:23','2017-07-24 13:11:23',NULL),(60,NULL,'Beta-HCG Level',NULL,NULL,NULL,'2017-07-25 16:09:51','2017-07-25 16:09:51',NULL);
/*!40000 ALTER TABLE `test_references` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_reports`
--

DROP TABLE IF EXISTS `test_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_reports` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `report_id` int unsigned NOT NULL,
  `test_id` int unsigned NOT NULL,
  `report_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sample` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `test_reports_test_id_foreign` (`test_id`),
  KEY `test_reports_report_id_foreign` (`report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_reports`
--

LOCK TABLES `test_reports` WRITE;
/*!40000 ALTER TABLE `test_reports` DISABLE KEYS */;
INSERT INTO `test_reports` VALUES (1,1,1,'haematology',1,1,'2024-01-11 21:47:00','2024-01-11 21:49:57',NULL),(2,1,2,'examination',1,0,'2024-01-11 21:47:00','2024-01-11 21:49:04',NULL),(3,2,1,'haematology',0,0,'2024-06-05 12:27:41','2024-06-05 12:27:41',NULL);
/*!40000 ALTER TABLE `test_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_results`
--

DROP TABLE IF EXISTS `test_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_results` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `test_report_id` int unsigned NOT NULL,
  `result` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `test_results_test_report_id_foreign` (`test_report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_results`
--

LOCK TABLES `test_results` WRITE;
/*!40000 ALTER TABLE `test_results` DISABLE KEYS */;
INSERT INTO `test_results` VALUES (1,1,'no comments, just a demo',1,'2024-01-11 21:49:56','2024-01-11 21:49:56',NULL),(2,1,'no comments, just a demo',1,'2024-01-11 21:49:56','2024-01-11 21:49:56',NULL);
/*!40000 ALTER TABLE `test_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_stains`
--

DROP TABLE IF EXISTS `test_stains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_stains` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `test_id` int unsigned NOT NULL,
  `test_names` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `test_stains_test_id_foreign` (`test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_stains`
--

LOCK TABLES `test_stains` WRITE;
/*!40000 ALTER TABLE `test_stains` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_stains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_test_antibiotic`
--

DROP TABLE IF EXISTS `test_test_antibiotic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_test_antibiotic` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `test_id` int NOT NULL,
  `test_antibiotic_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_test_antibiotic`
--

LOCK TABLES `test_test_antibiotic` WRITE;
/*!40000 ALTER TABLE `test_test_antibiotic` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_test_antibiotic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_test_reference`
--

DROP TABLE IF EXISTS `test_test_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_test_reference` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `test_id` int NOT NULL,
  `test_reference_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_test_reference`
--

LOCK TABLES `test_test_reference` WRITE;
/*!40000 ALTER TABLE `test_test_reference` DISABLE KEYS */;
INSERT INTO `test_test_reference` VALUES (27,108,26,NULL,NULL,NULL),(28,108,27,NULL,NULL,NULL),(29,108,28,NULL,NULL,NULL),(35,75,17,NULL,NULL,NULL),(36,100,24,NULL,NULL,NULL),(37,108,29,NULL,NULL,NULL),(38,178,32,NULL,NULL,NULL),(39,178,33,NULL,NULL,NULL),(40,178,34,NULL,NULL,NULL),(41,178,30,NULL,NULL,NULL),(42,178,31,NULL,NULL,NULL),(44,2,8,NULL,NULL,NULL),(45,151,42,NULL,NULL,NULL),(46,16,53,NULL,NULL,NULL),(47,3,5,NULL,NULL,NULL),(48,13,49,NULL,NULL,NULL),(49,4,59,NULL,NULL,NULL),(50,175,25,NULL,NULL,NULL),(51,45,30,NULL,NULL,NULL),(52,56,21,NULL,NULL,NULL),(53,120,23,NULL,NULL,NULL),(54,143,22,NULL,NULL,NULL),(55,101,54,NULL,NULL,NULL),(56,181,42,NULL,NULL,NULL),(57,183,61,NULL,NULL,NULL),(58,1,36,NULL,NULL,NULL),(59,1,37,NULL,NULL,NULL);
/*!40000 ALTER TABLE `test_test_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tests`
--

DROP TABLE IF EXISTS `tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tests` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `service_id` int unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `report_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tests`
--

LOCK TABLES `tests` WRITE;
/*!40000 ALTER TABLE `tests` DISABLE KEYS */;
INSERT INTO `tests` VALUES (1,82,'Haemoglobin (Hb)','haematology','TTTTEEESST','2023-12-30 04:48:20','2023-12-30 04:48:20',NULL),(2,77,'Blood Glucose PP','examination','demo demo','2024-01-11 20:41:05','2024-01-11 20:41:05',NULL);
/*!40000 ALTER TABLE `tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Superadmin','admin@admin.com','$2y$10$/1UZ2XHMAD8KznK7B80mTe/.UP.rba9Cta0bXWKuQebFjTGSddbhm',1,'9Cv37wFJwP60y5j2Nl4c6kxV5ytfBOWCiJI4q4Own9UuzTGnZQRIwpk0nxWY','2017-07-11 03:27:25','2017-07-23 23:52:46',NULL),(2,'User','user@user.com','$2y$10$XuwWv0DZmGDQ0Do14vffSu1iROgkAgAYnabfZLhNVUHfhSzYfEcwi',2,'xnjdI35WL2S5Ki63FWyg4sgloQItroGVkeLoIL5vqA4qkxh7tanpLTwPGb8J','2017-07-15 12:26:11','2017-07-24 01:00:09',NULL),(3,'admin','admin@mail.com','$2y$10$YCYfFsiYpH.udai3JF1fUOyYlM4Wm/JzqZ2ka1OMCGZ23p7eiWPVK',1,'qPOPnJieGhQHhOnHCq17kLLb25Y1Av8AoGsqtypWkbJQJ7Hpsg6Hig9jUr9y','2024-01-03 04:52:53','2024-01-03 04:52:53',NULL),(4,'lab','lab@mail.com','$2y$10$qAWXFLrHsj9zdADrsXic1.hXuCaUMYbI2qmimkTwrcUBo.25/NTPG',3,'b8STBVlxJQ9druRZD3Aufe8C63e2Hef2qLQf6hPsQ0Yj67mF91cqx11IolK6','2024-01-11 20:43:29','2024-01-11 20:43:29',NULL),(5,'Receptionist','receptionist@receptionist.com','$2y$10$605Z2uNi/Tgv./HbblkLYeSI/6whvdjhEal/zclw5jQaMFD5uKvpq',2,'GA7Zhu1EHAcM3UQuiEUOm1rFw3ErW2L4fbjIu2l4Z6ZublKm1xWxzwp0cWE4','2024-05-29 18:02:25','2024-05-29 18:02:25',NULL);
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

-- Dump completed on 2024-06-11 18:28:04
