-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: jobdb
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `administator`
--

DROP TABLE IF EXISTS `administator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administator` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Full_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `User_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `User_admin_idx` (`User_ID`),
  CONSTRAINT `user_admin_id` FOREIGN KEY (`User_ID`) REFERENCES `user` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administator`
--

LOCK TABLES `administator` WRITE;
/*!40000 ALTER TABLE `administator` DISABLE KEYS */;
INSERT INTO `administator` VALUES (1,'Nguyễn Trương Anh Minh','anhminh1@gmail.com',2);
/*!40000 ALTER TABLE `administator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Full_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `City` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Avatar` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `User_ID` int DEFAULT NULL,
  `Phone` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Degree` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Major` varchar(45) COLLATE utf32_bin DEFAULT NULL,
  `Sex` varchar(45) COLLATE utf32_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  KEY `candidate_user_idx` (`User_ID`),
  CONSTRAINT `candidate_user_id` FOREIGN KEY (`User_ID`) REFERENCES `user` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf32 COLLATE=utf32_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES (1,'Nguyễn Minh Anh','AnhMinhou01@gmail.com','2022-01-22','HCM','https://res.cloudinary.com/hm-findingjob/image/upload/v1661918516/%E1%BA%A3nh%20c%E1%BB%A7a%20project%20finding%20job/274217726_3137958043084426_1285133884762303049_n.jpg_qhofgc.jpg',NULL,129,'0354674111','Đại học','Công nghệ thông tin','Nam'),(2,'Phạm Minh Hoàng','hoangou01@gmail.com','2022-01-11','HCM','https://lh3.googleusercontent.com/ogw/AOh-ky09cT7-dYXHLJX-m-JNn4uXwxDTVPPocrZ97Fb0=s32-c-mo','',123,'0354674314','Đại học','Kinh tế','Nam'),(3,'Nguyễn Nhật Sang','sangou01@gmail.com','2022-01-11','HCM','https://res.cloudinary.com/hm-findingjob/image/upload/v1661918516/%E1%BA%A3nh%20c%E1%BB%A7a%20project%20finding%20job/274217726_3137958043084426_1285133884762303049_n.jpg_qhofgc.jpg',NULL,124,'0354674314','Đại học','Luật','Nữ'),(17,'Nguyễn Minh','anhmi1nh071020111115@gmail.com','2022-01-02','HCM','https://res.cloudinary.com/dnlryecwq/image/upload/v1662055419/xwokwfsdclbjmcdtnjtj.jpg',NULL,155,'0354674111','Đại học','Kinh tế','Nam'),(18,'Nguyễn Minh Anh','anhmin111h07102015@gmail.com','2022-01-16','Đà Nẵng','https://res.cloudinary.com/hm-findingjob/image/upload/v1661918516/%E1%BA%A3nh%20c%E1%BB%A7a%20project%20finding%20job/274217726_3137958043084426_1285133884762303049_n.jpg_qhofgc.jpg',NULL,156,'0354674111','Cấp 3','Công nghệ thông tin','Nam'),(22,'Nguyễn Minh','anh11min11h1107102015@gmail.com','2022-01-09','HCM','https://res.cloudinary.com/dnlryecwq/image/upload/v1662299301/knowm4bsafveodnpjfi7.jpg',NULL,158,'0354674111','Cấp 3','Công nghệ thông tin','Nam'),(23,'Phạm Minh hoàng','hoangou011@gmail.com','2022-01-14','Hà Nội','https://res.cloudinary.com/dnlryecwq/image/upload/v1662299468/uvozfudvya38fqc9jreo.png',NULL,159,'0354674123','Bằng nghề','Luật','Nữ');
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_category`
--

DROP TABLE IF EXISTS `candidate_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_category` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Candidate_ID` int DEFAULT NULL,
  `Cate_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Candidate_ID_idx` (`Candidate_ID`),
  KEY `can_cate_category_id_idx` (`Cate_ID`),
  CONSTRAINT `can_cate_candidate_id` FOREIGN KEY (`Candidate_ID`) REFERENCES `candidate` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `can_cate_category_id` FOREIGN KEY (`Cate_ID`) REFERENCES `category` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_category`
--

LOCK TABLES `candidate_category` WRITE;
/*!40000 ALTER TABLE `candidate_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_company`
--

DROP TABLE IF EXISTS `candidate_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_company` (
  `ID` int NOT NULL,
  `Candidate_ID` int DEFAULT NULL,
  `Company_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Candidate_company_candidate_idx` (`Candidate_ID`),
  KEY `Candidate_company_company_idx` (`Company_ID`),
  CONSTRAINT `Candidate_company_candidate` FOREIGN KEY (`Candidate_ID`) REFERENCES `candidate` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `Candidate_company_company` FOREIGN KEY (`Company_ID`) REFERENCES `company` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_company`
--

LOCK TABLES `candidate_company` WRITE;
/*!40000 ALTER TABLE `candidate_company` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_job`
--

DROP TABLE IF EXISTS `candidate_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_job` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Candidate_ID` int DEFAULT NULL,
  `Job_ID` int DEFAULT NULL,
  `AppliedDate` date DEFAULT NULL,
  `CV_ID` int DEFAULT NULL,
  `IsApplied` int DEFAULT '0',
  `IsLiked` int DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `can_job_candidate_id_idx` (`Candidate_ID`),
  KEY `can_job_job_id_idx` (`Job_ID`),
  KEY `can_job_cv_id_idx` (`CV_ID`),
  CONSTRAINT `can_job_candidate_id` FOREIGN KEY (`Candidate_ID`) REFERENCES `candidate` (`ID`),
  CONSTRAINT `can_job_cv_id` FOREIGN KEY (`CV_ID`) REFERENCES `curriculum_vitae` (`ID`),
  CONSTRAINT `can_job_job_id` FOREIGN KEY (`Job_ID`) REFERENCES `job` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_job`
--

LOCK TABLES `candidate_job` WRITE;
/*!40000 ALTER TABLE `candidate_job` DISABLE KEYS */;
INSERT INTO `candidate_job` VALUES (2,2,4,'2022-05-19',2,1,0),(3,2,2,'2022-05-19',6,1,0),(4,1,4,'2022-05-19',4,1,0),(5,3,3,'2022-05-19',3,1,0),(6,1,3,'2022-05-19',7,1,0),(7,3,2,'2022-05-19',5,1,0),(16,1,1,'2022-09-02',1,1,NULL),(17,1,2,'2022-09-03',1,1,NULL);
/*!40000 ALTER TABLE `candidate_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_major`
--

DROP TABLE IF EXISTS `candidate_major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_major` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Candidate_ID` int DEFAULT NULL,
  `Major_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `can_major_candidate_id_idx` (`Candidate_ID`),
  KEY `can_major_major_id_idx` (`Major_ID`),
  CONSTRAINT `can_major_candidate_id` FOREIGN KEY (`Candidate_ID`) REFERENCES `candidate` (`ID`),
  CONSTRAINT `can_major_major_id` FOREIGN KEY (`Major_ID`) REFERENCES `major` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_major`
--

LOCK TABLES `candidate_major` WRITE;
/*!40000 ALTER TABLE `candidate_major` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Major_ID` int DEFAULT NULL,
  `Name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `cate_major_id_idx` (`Major_ID`),
  CONSTRAINT `cate_major_id` FOREIGN KEY (`Major_ID`) REFERENCES `major` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Candidate_ID` int DEFAULT NULL,
  `Company_ID` int DEFAULT NULL,
  `Rating` int DEFAULT NULL,
  `Assessment` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Work_Candidate_ID_idx` (`Candidate_ID`),
  KEY `can_com_company_id_idx` (`Company_ID`),
  CONSTRAINT `can_com_candidate_id` FOREIGN KEY (`Candidate_ID`) REFERENCES `candidate` (`ID`),
  CONSTRAINT `can_com_company_id` FOREIGN KEY (`Company_ID`) REFERENCES `company` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,1,1,4,'Ngon','2022-08-30 12:39:00'),(2,1,1,3,'Tuyệt dời','2022-08-10 10:11:00'),(3,1,1,5,'Hết nước chấm','2022-08-31 10:11:00'),(108,1,1,5,'tuyet vo lam ei','2022-09-01 02:16:10'),(109,1,1,5,'tuyet vo lam ei','2022-09-01 02:17:14'),(110,1,1,5,'tuyet vo lam ei','2022-09-01 02:23:12'),(111,1,1,5,'tuyet vo lam ei','2022-09-01 02:27:28'),(112,1,1,5,'tuyet vo lam ei','2022-09-01 02:35:02'),(113,1,1,5,'tuyet vo lam e1111i','2022-09-01 02:36:20'),(114,1,1,5,'tuyet vo lam e112211i','2022-09-01 00:00:00'),(115,1,1,2,'Anh Minh','2022-09-01 00:00:00'),(116,1,1,2,'Hay lam nha be oi','2022-09-01 00:00:00'),(117,1,1,3,'Hat','2022-09-01 02:50:07'),(125,1,1,2,'AM ne` hihi','2022-09-01 00:00:00'),(126,1,1,1,'MA','2022-09-01 00:00:00'),(127,1,1,2,'Gioir qua','2022-09-01 00:00:00'),(128,1,1,2,'Gioi qua ma oi','2022-09-01 00:00:00'),(129,1,1,2,'Hay á','2022-09-01 00:00:00'),(130,1,1,2,'giỏi á','2022-09-01 00:00:00'),(131,1,1,2,'ghe troi','2022-09-01 00:00:00'),(132,1,1,1,'hay nha','2022-09-01 00:00:00'),(133,1,1,1,'duoc nha em','2022-09-01 00:00:00'),(134,1,1,2,'duoc nha em 1','2022-09-01 00:00:00'),(135,1,1,2,'Tuyet voi lam be','2022-09-01 04:34:51'),(136,1,1,2,'Giỏi lắm','2022-09-01 19:21:57'),(137,1,1,5,'tuyet vo lam e1111i','2022-09-01 19:22:33'),(138,1,2,3,'Công ty bóc lột sức lao động','2022-09-04 20:55:42'),(139,1,2,2,'Công ty trả lương chậm','2022-09-04 21:06:08'),(140,1,2,5,'Công ty này ưu đãi rất tốt','2022-09-04 21:07:17'),(141,1,2,4,'công ty xịn','2022-09-04 21:07:54'),(142,1,2,4,'công ty xịn xò','2022-09-04 21:08:12'),(143,1,2,5,'công ty đep','2022-09-04 21:09:46'),(144,1,2,2,'a vc ','2022-09-04 21:12:53'),(145,1,2,2,'Hay nha','2022-09-04 21:15:28');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `City` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Avatar` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `User_ID` int DEFAULT NULL,
  `IsChecked` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `com_user_id_idx` (`User_ID`),
  CONSTRAINT `com_user_id` FOREIGN KEY (`User_ID`) REFERENCES `user` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'SamSung Inc Thái nguyên','Tầng 7 - Tòa nhà DOJI Tower - Số 5 Lê Duẩn - Ba Đình','HCM','https://res.cloudinary.com/hm-findingjob/image/upload/v1659538960/%E1%BA%A3nh%20c%E1%BB%A7a%20project%20finding%20job/ogimage_mqr8if.jpg','Công Ty Cổ Phần Kỹ Thuật Số SBC (Sao Băng) – Nhà bán lẻ máy in phun, máy in vải, vật tư ngành in ấn hàng đầu tại Việt Nam – chuyên phân phối máy in cao cấp của Mỹ, Nhật Bản , Đài Loan, Trung Quốc trong ngành Quảng cáo, xây dựng, kiến trúc, dệt may,…Công Ty Cổ Phần Kỹ Thuật Số SBC (Sao Băng) – Nhà bán lẻ máy in phun, máy in vải, vật tư ngành in ấn hàng đầu tại Việt Nam – chuyên phân phối máy in cao cấp của Mỹ, Nhật Bản , Đài Loan, Trung Quốc trong ngành Quảng cáo, xây dựng, kiến trúc, dệt may,…','anhminh1234@gmail.com',1,1),(2,'mgm technology partners Vietnam','Tầng 4 - Tòa nhà DOJI Tower - Số 5 Lê Duẩn - Ba Đình','HCM','https://res.cloudinary.com/hm-findingjob/image/upload/v1659538762/%E1%BA%A3nh%20c%E1%BB%A7a%20project%20finding%20job/mgm-technology-partners-vietnam-logo_sw8wbv.png','Phấn đấu , nỗ lực , thành công',NULL,128,1),(3,'MB BANK','Tầng 9 - Tòa nhà DOJI Tower - Số 5 Lê Duẩn - Ba Đình','Hà Nội','https://res.cloudinary.com/hm-findingjob/image/upload/v1661758333/%E1%BA%A3nh%20c%E1%BB%A7a%20project%20finding%20job/Logo_20MB_20he_20mau_20RGB_2001_fjcsmr.png','Phấn đấu , nỗ lực , thành công',NULL,128,1),(4,'Yamaha Inc','Tầng 10 - Tòa nhà DOJI Tower - Số 5 Lê Duẩn - Ba Đình','HCM','https://res.cloudinary.com/hm-findingjob/image/upload/v1661758507/%E1%BA%A3nh%20c%E1%BB%A7a%20project%20finding%20job/yamaha_logo_20-_20Anh_20Thu_20Lai_aqwy5v.png','Phấn đấu , nỗ lực , thành công',NULL,129,1),(5,'Go1','Tầng 10 - Tòa nhà DOJI Tower - Số 5 Lê Duẩn -Quận 1','Hà Nội','https://res.cloudinary.com/hm-findingjob/image/upload/v1661754736/%E1%BA%A3nh%20c%E1%BB%A7a%20project%20finding%20job/GO1_Logo_Petrol_Green_RGB_nxwc1h.png','Phấn đấu , nỗ lực , thành công',NULL,133,1),(6,'Allgrowlabo Co.,Ltd.','Tầng 10 - Tòa nhà DOJI Tower - Số 5 Lê Duẩn -Quận 3','HCM','https://res.cloudinary.com/hm-findingjob/image/upload/v1661754857/%E1%BA%A3nh%20c%E1%BB%A7a%20project%20finding%20job/allgrowlabo-co-ltd-logo_kzuhed.png','Phấn đấu , nỗ lực , thành công',NULL,131,1),(7,'NashTech','Tầng 10 - Tòa nhà Nash Tower - Số 5 Lê Duẩn - Quận Ngũ Hành Sơn','Đà Nẵng','https://res.cloudinary.com/hm-findingjob/image/upload/v1661754928/%E1%BA%A3nh%20c%E1%BB%A7a%20project%20finding%20job/logo_l1mdsa.jpg','Phấn đấu , nỗ lực , thành công',NULL,135,1),(8,'Công Ty H&M','26 Nguyễn Thái Sơn','Hà Nội','https://res.cloudinary.com/dnlryecwq/image/upload/v1661803619/bdzl5f0zkq7md6vqg6de.png','https://res.cloudinary.com/dnlryecwq/image/upload/v1661803619/bdzl5f0zkq7md6vqg6de.png','anhminh0710@gmail.com',144,1),(9,'Nguyễn Minh','123','HCM','https://res.cloudinary.com/dnlryecwq/image/upload/v1661803716/gzvcy4eafrdkw4wkc3ll.png','https://res.cloudinary.com/dnlryecwq/image/upload/v1661803716/gzvcy4eafrdkw4wkc3ll.png','anhminh123@gmail.com',145,1),(10,'Nguyễn Minh','123','HCM','https://res.cloudinary.com/dnlryecwq/image/upload/v1661803876/t2otbnw1spi9odtnnpup.png','https://res.cloudinary.com/dnlryecwq/image/upload/v1661803876/t2otbnw1spi9odtnnpup.png','anhminh075@gmail.com',146,0),(11,'Nguyễn Minh','123','HCM','https://res.cloudinary.com/dnlryecwq/image/upload/v1661804479/jg5kirdbt5zewshe12go.png','https://res.cloudinary.com/dnlryecwq/image/upload/v1661804479/jg5kirdbt5zewshe12go.png','anhminh0712220@gmail.com',148,0),(12,'Nguyễn Minh','123','HCM','https://res.cloudinary.com/dnlryecwq/image/upload/v1661804958/gbsuwz3ikkptivxvxgsl.png','https://res.cloudinary.com/dnlryecwq/image/upload/v1661804958/gbsuwz3ikkptivxvxgsl.png','a1nhminh107102015@gmail.com',149,0),(13,'Công Ty H&M','26 Nguyễn Thái Sơn','HCM','https://res.cloudinary.com/dnlryecwq/image/upload/v1661806476/nq7x95jpxkowwwlkiftl.png','Công Ty Cổ Phần Kỹ Thuật Số SBC (Sao Băng) – Nhà bán lẻ máy in phun, máy in vải, vật tư ngành in ấn hàng đầu tại Việt Nam – chuyên phân phối máy in cao cấp của Mỹ, Nhật Bản , Đài Loan, Trung Quốc trong ngành Quảng cáo, xây dựng, kiến trúc, dệt may,…','anh1m1inh02271102015@gmail.com',150,0),(14,'Công ty H&M','26 Nguyễn Thái Sơn','HCM','https://res.cloudinary.com/dnlryecwq/image/upload/v1661806626/dpwxknf0gb4znwdaho8u.png','Công Ty Cổ Phần Kỹ Thuật Số SBC (Sao Băng) – Nhà bán lẻ máy in phun, máy in vải, vật tư ngành in ấn hàng đầu tại Việt Nam – chuyên phân phối máy in cao cấp của Mỹ, Nhật Bản , Đài Loan, Trung Quốc trong ngành Quảng cáo, xây dựng, kiến trúc, dệt may,…\r\nCông Ty Cổ Phần Kỹ Thuật Số SBC (Sao Băng) – Nhà bán lẻ máy in phun, máy in vải, vật tư ngành in ấn hàng đầu tại Việt Nam – chuyên phân phối máy in cao cấp của Mỹ, Nhật Bản , Đài Loan, Trung Quốc trong ngành Quảng cáo, xây dựng, kiến trúc, dệt may,…\r\n','anh1mi1nh07102015@gmail.com',151,0),(15,'Nguyễn Minh','123','HCM','https://res.cloudinary.com/dnlryecwq/image/upload/v1661806728/wahw7tf4aid4vwfz3thy.png','1','1anh1min1h07102015@gmail.com',152,1);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_major`
--

DROP TABLE IF EXISTS `company_major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_major` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Company_ID` int DEFAULT NULL,
  `Major_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `com_major_company_id_idx` (`Company_ID`),
  KEY `com_major_major_id_idx` (`Major_ID`),
  CONSTRAINT `com_major_company_id` FOREIGN KEY (`Company_ID`) REFERENCES `company` (`ID`),
  CONSTRAINT `com_major_major_id` FOREIGN KEY (`Major_ID`) REFERENCES `major` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_major`
--

LOCK TABLES `company_major` WRITE;
/*!40000 ALTER TABLE `company_major` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curriculum_vitae`
--

DROP TABLE IF EXISTS `curriculum_vitae`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curriculum_vitae` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CareerGoals` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DegreeDetail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ExperienceDetail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Skill` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ForeignLanguage` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Candidate_ID` int DEFAULT NULL,
  `CV_link` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsDeleted` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `cv_candidate_id_idx` (`Candidate_ID`),
  CONSTRAINT `cv_candidate_id` FOREIGN KEY (`Candidate_ID`) REFERENCES `candidate` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curriculum_vitae`
--

LOCK TABLES `curriculum_vitae` WRITE;
/*!40000 ALTER TABLE `curriculum_vitae` DISABLE KEYS */;
INSERT INTO `curriculum_vitae` VALUES (1,NULL,NULL,NULL,NULL,NULL,1,'https://res.cloudinary.com/dnlryecwq/image/upload/v1661619966/xou6xjjmynwlespoim5s.png',1),(2,NULL,NULL,NULL,NULL,NULL,2,'https://res.cloudinary.com/dnlryecwq/image/upload/v1661620779/byszjgoflbnjx3vragmz.png',0),(3,NULL,NULL,NULL,NULL,NULL,3,'https://res.cloudinary.com/dnlryecwq/image/upload/v1661682555/ukmtetwwtxj90suh3j4w.png',0),(4,NULL,NULL,NULL,NULL,NULL,1,'https://res.cloudinary.com/dnlryecwq/image/upload/v1661792008/whi8jwdo4p0ziwk9vayp.png',0),(5,NULL,NULL,NULL,NULL,NULL,3,'https://res.cloudinary.com/dnlryecwq/image/upload/v1661792730/dop9dav2swjed5kxumt4.png',0),(6,NULL,NULL,NULL,NULL,NULL,2,'https://res.cloudinary.com/dnlryecwq/image/upload/v1661793041/myzbu0wiiydugvtvulqt.png',0),(7,NULL,NULL,NULL,NULL,NULL,1,'https://res.cloudinary.com/dnlryecwq/image/upload/v1661793077/l6uyso6lu9y3ajzypnor.png',0),(8,NULL,NULL,NULL,NULL,NULL,2,'https://res.cloudinary.com/dnlryecwq/image/upload/v1661793246/z2nbii9obmirpx2uze5h.png',0),(13,NULL,NULL,NULL,NULL,NULL,NULL,'https://res.cloudinary.com/dnlryecwq/image/upload/v1662057641/dyz8ux3yzpzhznyvjp9a.png',0);
/*!40000 ALTER TABLE `curriculum_vitae` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Company_ID` int DEFAULT NULL,
  `Name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SalaryFrom` decimal(20,0) DEFAULT NULL,
  `SalaryTo` decimal(20,0) DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `DegreeRequired` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AgeTo` int DEFAULT NULL,
  `AgeFrom` int DEFAULT NULL,
  `IsChecked` int DEFAULT NULL,
  `IsDeleted` int DEFAULT NULL,
  `SexRequired` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProbationaryPeriod` int DEFAULT NULL,
  `Benefit` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Position` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Type` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `City` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `ExperienceRequired` int DEFAULT NULL,
  `JobRequired` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `job_company_id_idx` (`Company_ID`),
  CONSTRAINT `job_company_id` FOREIGN KEY (`Company_ID`) REFERENCES `company` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES (1,1,'Chuyên viên Content digital marketing 1','Đi sớm về muộn',15,20,'2022-12-12',2,'Đại Học',23,20,1,0,'Nam',2,'Thưởng lương tháng 13','Thực tập sinh','Toàn thời gian cố định','HCM','Tầng 9 Cnter town , Quận 1','2022-03-12',12,'Work from 9AM to 6PM'),(2,3,'Chuyên viên Content digital marketing 2 ','Đi sớm về muộ',12,18,'2022-12-25',3,'Đại Học',27,24,1,0,'Nữ',2,'Thưởng lương tháng 13','Nhân viên chính thức','Thời gian cố định','Hà Nội','Tầng 9 Cnter town , Quận 1','2022-02-12',6,'Work from 9AM to 6PM'),(3,2,'Chuyên viên ITl marketing 3','đi trễ về sớm',20,30,'2022-12-19',4,'Cao Học',30,18,1,0,'Tất cả',4,'Thưởng lương tháng 13','Nhân viên chính thức','Thời gian cố định','HCM','Tầng 9 Cnter town , Quận 1','2022-03-15',24,'Work from 9AM to 6PM'),(4,3,'Chuyên viên ITl marketing 4','thích đi giờ nào thì đi',10,20,'2022-12-18',2,'Trung Cấp',20,25,1,0,'Nam',2,'Thưởng lương tháng 14 - đầy đủ bảo hiểm xh','Quản Lý','Thời gian cố định','Đà Nẵng','Tầng 9 Cnter town , Quận 1','2022-01-12',0,'Work from 9AM to 6PM'),(5,1,'chuyên viên R&D SamSung ','Hard work',50,100,'2022-12-23',4,'Đại Học',25,35,1,0,'Tất cả',0,'Thưởng lương tháng 14 - đầy đủ bảo hiểm xh','Nhân viên chính thức','Thời gian cố định','Đà Nẵng','Tầng 9 Cnter town , Quận 1','2022-01-13',48,'Work from 9AM to 6PM'),(6,5,'chuyên viên IT GO1','Hard work',40,80,'2022-12-27',5,'Đại Học',22,35,1,0,'Nam',2,'Thưởng lương tháng 14 - đầy đủ bảo hiểm xh','Nhân viên chính thức','Thời gian cố định','Hà Nội','Tầng 9 Cnter town , Quận 1','2022-01-13',12,'Work from 9AM to 6PM'),(7,5,'Thực tập sinh IT GO1','Công ty được thành lập năm 1998 với 24 năm kinh nghiệm .',2,7,'2022-11-27',10,'Đại Học',18,25,1,0,'Tất cả',6,'Thưởng lương tháng 14 - đầy đủ bảo hiểm xh','Thực tập sinh','Thời gian cố định','HCM','Tầng 9 Cnter town , Quận 1','2022-01-13',0,'Work from 9AM to 6PM'),(8,6,'Bảo mật hệ thống Allgrowlabo','Hard work',80,100,'2022-11-30',1,'Đại Học',20,28,0,0,'Nam',0,'Thưởng lương tháng 14 - đầy đủ bảo hiểm xh','Nhân viên chính thức','Thời gian cố định','Hà Nội','Tầng 9 Cnter town , Quận 1','2022-01-28',0,'Work from 9AM to 6PM'),(9,7,'Thư Ký NashTech','Hard work',10,20,'2022-11-11',2,'Cao Đẳng',18,30,1,0,'Nữ',2,'Thưởng lương tháng 14 - đầy đủ bảo hiểm xh','Nhân viên chính thức','Thời gian cố định','HCM','Tầng 9 Cnter town , Quận 1','2022-01-30',2,'Work from 9AM to 6PM'),(10,7,'Nhân viên bảo mật NashTech','Hard work',50,100,'2022-11-11',1,'Đại Học',20,30,0,0,'Nam',0,'Thưởng lương tháng 14 - đầy đủ bảo hiểm xh','Nhân viên chính thức','Thời gian cố định','Đà Nẵng','Tầng 9 Cnter town , Quận 1','2022-01-30',12,'Work from 9AM to 6PM'),(11,4,'Chuyên viên phần mền R&D Yamaha ','am kết của chúng tôi là hoạt động có trách nhiệm',50,100,'2022-11-11',2,'Đại Học',20,40,1,0,'Nam',2,'Thưởng lương tháng 14 - đầy đủ bảo hiểm xh','Nhân viên chính thức','Thời gian cố định','HCM','Tầng 9 Cnter town , Quận 1','2022-01-30',12,'Work from 9AM to 6PM'),(12,1,'Công Ty H&M','ABC',1,10,'2022-01-15',NULL,'Đại học',10,1,0,0,'Nữ',1,'1 tháng lương','Thực tập sinh','Part-time','HCM','26 Nguyễn Thái Sơn','2022-09-04',1,'ABC');
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_category`
--

DROP TABLE IF EXISTS `job_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_category` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Job_ID` int DEFAULT NULL,
  `Cate_ID` int DEFAULT NULL,
  `Point` double DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `job_cate_job_id_idx` (`Job_ID`),
  KEY `job_cate_cate_id_idx` (`Cate_ID`),
  CONSTRAINT `job_cate_cate_id` FOREIGN KEY (`Cate_ID`) REFERENCES `category` (`ID`),
  CONSTRAINT `job_cate_job_id` FOREIGN KEY (`Job_ID`) REFERENCES `job` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_category`
--

LOCK TABLES `job_category` WRITE;
/*!40000 ALTER TABLE `job_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_major`
--

DROP TABLE IF EXISTS `job_major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_major` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Job_ID` int DEFAULT NULL,
  `Major_ID` int DEFAULT NULL,
  `Point` double DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `job_major_job_id_idx` (`Job_ID`),
  KEY `job_major_major_id_idx` (`Major_ID`),
  CONSTRAINT `job_major_job_id` FOREIGN KEY (`Job_ID`) REFERENCES `job` (`ID`),
  CONSTRAINT `job_major_major_id` FOREIGN KEY (`Major_ID`) REFERENCES `major` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_major`
--

LOCK TABLES `job_major` WRITE;
/*!40000 ALTER TABLE `job_major` DISABLE KEYS */;
INSERT INTO `job_major` VALUES (1,1,1,NULL),(2,1,2,NULL),(3,2,1,NULL),(4,2,3,NULL),(5,3,3,NULL),(6,1,3,NULL),(7,4,2,NULL),(8,5,1,NULL),(9,6,1,NULL),(10,7,1,NULL),(11,8,1,NULL),(12,9,4,NULL),(13,10,1,NULL),(14,9,1,NULL),(15,12,1,NULL),(16,12,3,NULL);
/*!40000 ALTER TABLE `job_major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `major`
--

DROP TABLE IF EXISTS `major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `major` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major`
--

LOCK TABLES `major` WRITE;
/*!40000 ALTER TABLE `major` DISABLE KEYS */;
INSERT INTO `major` VALUES (1,'Công nghệ thông tin'),(2,'Luật'),(3,'Kinh tế'),(4,'Tài chính');
/*!40000 ALTER TABLE `major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `major_category`
--

DROP TABLE IF EXISTS `major_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `major_category` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Major_ID` int DEFAULT NULL,
  `Cate_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `major_cate_major_id_idx` (`Major_ID`),
  KEY `major_cate_cate_id_idx` (`Cate_ID`),
  CONSTRAINT `major_cate_cate_id` FOREIGN KEY (`Cate_ID`) REFERENCES `category` (`ID`),
  CONSTRAINT `major_cate_major_id` FOREIGN KEY (`Major_ID`) REFERENCES `major` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major_category`
--

LOCK TABLES `major_category` WRITE;
/*!40000 ALTER TABLE `major_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `major_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `Password` char(200) COLLATE utf8_unicode_ci NOT NULL,
  `RegisterDate` date DEFAULT NULL,
  `UserRole` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Username_UNIQUE` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'anhminh1234@gmail.com','$2a$10$dwDSx97O78f8OZj0Lch0b.3i66ZJLAtCuzdqU5OCkCXzainrsd2ve',NULL,'ROLE_COMPANY'),(2,'ADMIN','$2a$10$h8NvdJHb/LIUTYjn7XYwGOlQTlc.mq4PI5eH0zsHFId2641gSQIXa',NULL,'ROLE_ADMIN'),(123,'anhminh0712202015@gmail.com','$2a$10$dwDSx97O78f8OZj0Lch0b.3i66ZJLAtCuzdqU5OCkCXzainrsd2ve',NULL,'ROLE_COMPANY'),(124,'anhminh071020111115@gmail.com','$2a$10$Aj6ZvXzpCPiMtz9gACOmYuJqCA5CRHXJFLuRdG6xE60UulNIvhJh2',NULL,'ROLE_COMPANY'),(125,'a1nhm11inh07102015@gmail.com','$2a$10$PAjcvPc0iNVXLat3G9eZOOure7f461s.sgPcPfIzGQMJoLoOUw/Km',NULL,'ROLE_COMPANY'),(126,'anh1minh017102015@gmail.com','$2a$10$5RUiPdBIBaoVrTaCSZexX.m1Ew55SWR7SEeRLt4LiUgiKGE/A6Rxu',NULL,'ROLE_COMPANY'),(127,'anhm1inh07102015@gmail.com','$2a$10$h/4Kbj07BIq2estcRdlGZ..lX003oz0glw1//E1R/07yiGpGx7maW',NULL,'ROLE_COMPANY'),(128,'anh1m1inh071102015@gmail.com','$2a$10$CNrrhjoOld8V3a7KvYlOx.BZFiE91kqnQkCXLWwNwJvngiv0wUBty',NULL,'ROLE_COMPANY'),(129,'anhminh07102015@gmail.com','$2a$10$.f5oNBhAYSgpSt8mLdsE4ev6ScSGFrKkKyjOJczrJc0tp2Ab.C1Ni',NULL,'ROLE_USER'),(131,'anhminh071210211015@gmail.com','$2a$10$Ge2X5Y8PLE9uxZXeWAg0feTEGLeQCJZIZI4fgkQszoEQFKNlUzhqW',NULL,'ROLE_USER'),(133,'anhminh1071102015@gmail.com','$2a$10$mUHbmASgFIRPbGrclyIA7Oahwpt3W8xsa8n9ttG/MOPlt9AMJDVFG',NULL,'ROLE_USER'),(134,'anhminh0711102015@gmail.com','$2a$10$Pu6s8yH78GsGnk9yUFFJwOocLMF0Ozx5qVb//6bJdqogX5XHO3kkm',NULL,'ROLE_USER'),(135,'anh111minh07102015@gmail.com','$2a$10$8A8WltUNaExe71I0HHw1Wuhq/CQIMvzL/MqBlGBkxKXp7LJH4dB/2',NULL,'ROLE_USER'),(136,'anhminh121207102015@gmail.com','$2a$10$rMmA8uvLo4IK/gIW6T9sMOY9E/CkDa7WB36tUyOvA4zv.8iYk6qNW',NULL,'ROLE_USER'),(137,'anhm111inh107102015@gmail.com','$2a$10$3NbloymaoI1DpYEjkoglz.zC2mRExPBH222ETnCnZjy7xw.bXpPX.',NULL,'ROLE_USER'),(138,'quanghieulk122@gmail.com','$2a$10$p9T2/aKPODlFrcSzcQWnf.H3FkqOjCvYviHJBQySXhgkIPymIzDqC',NULL,'ROLE_COMPANY'),(139,'anh11min1h07102015@gmail.com','$2a$10$Ez3Me9GoIOhUzAXDRNMBm.FVt.GwU1e7Um/43OqLC9727CGuPqiEW',NULL,'ROLE_USER'),(140,'anhminh0710211015111@gmail.com','$2a$10$wETCCXY.HIDp4C0SZbkNI.ib5DqlR7sXBaBfi2zUqDEHG3X9CVSTK',NULL,'ROLE_USER'),(141,'a1nh111minh07102015@gmail.com','$2a$10$YV0lhLz9YFf6z4krHX85d.iCugsFNsaUs33PdOuLkR0ZRE6LfAQOC',NULL,'ROLE_USER'),(142,'anh2mi12312nh07102015@gmail.com','$2a$10$APJ5x8eSfIOYyGJ1lADGPuFqKxp2e4UfIIE6qjuJLZou9jfNayVvu',NULL,'ROLE_USER'),(144,'anhminh0710@gmail.com','$2a$10$QYibO59Y0jJNHCqb.UrMLuCgewzfO7NdoSMKrFbQxZvqGPssoE/xm',NULL,'ROLE_COMPANY'),(145,'anhminh123@gmail.com','$2a$10$LouEPIezKP/ITjdOtCkxMOtnkasqWdEQAEvqQUEhuq87cUQLnF5Se',NULL,'ROLE_COMPANY'),(146,'anhminh075@gmail.com','$2a$10$qtUnbyUU2j8zBR4jy4uGEOb5//MtL0IazfO8uakaoIJa27.YNECEq',NULL,'ROLE_COMPANY'),(148,'anhminh0712220@gmail.com','$2a$10$HSxnhPz6L8BXoYO8mVII2u3w9v9IdSZqdU7e.BbbGYLgruD23wH06',NULL,'ROLE_COMPANY'),(149,'a1nhminh107102015@gmail.com','$2a$10$akWC5F1LF9342wg//oG5oOH44N9u3BOKaUi0mtzLUtjbtzsE8iTmS',NULL,'ROLE_COMPANY'),(150,'anh1m1inh02271102015@gmail.com','$2a$10$ULnghcIW5ZFNTNfOMoYbvOE8NQJrD6wBAfaRqyOni1N6zn8On0wsO',NULL,'ROLE_COMPANY'),(151,'anh1mi1nh07102015@gmail.com','$2a$10$/ICS/G7dnCo6dd1L8qxOzOmX5PAzbeN5KvJ.Ry.WqnxwIyT42C9A6',NULL,'ROLE_COMPANY'),(152,'1anh1min1h07102015@gmail.com','$2a$10$0BuLR5Ii0WBI2TfT8nRhyu71mVu5iRlJqhvwnqSVtJRDbsk85CN8m',NULL,'ROLE_COMPANY'),(153,'anhm1111inh123@gmail.com','$2a$10$cLCkDQtldqb/qWxpgAhOq.ul.SLHBJF8uTIqk.PiKhE9Nm7MNR9sW',NULL,'ROLE_COMPANY'),(154,'a111nhmi21nh07102015@gmail.com','$2a$10$ubffZZTkfqxoBY14aQGL.eHrkRiiY7/zlzsAeBJlZOBFob.l6uJlu',NULL,'ROLE_USER'),(155,'anhmi1nh071020111115@gmail.com','$2a$10$y2wKgouDqpI0oTZqOQCvou/q4vxefy473HHJtHiM5ltinyNt7tNp6',NULL,'ROLE_USER'),(156,'anhmin111h07102015@gmail.com','$2a$10$h8NvdJHb/LIUTYjn7XYwGOlQTlc.mq4PI5eH0zsHFId2641gSQIXa',NULL,'ROLE_USER'),(157,'hoangou01@gmail.com','$2a$10$FSGZszkM6HcT08MECAalK.CZAOrUYHGcvLViwVwHx6xJ8T/3atUWW',NULL,'ROLE_USER'),(158,'anh11min11h1107102015@gmail.com','$2a$10$XiauzDcqzWhiG.4dhfKHB.CAnp9oHRrKUYDmdq5AoVxTJAozJBJ.S',NULL,'ROLE_USER'),(159,'hoangou011@gmail.com','$2a$10$Tys1QnVyXs.CvkH6/MrDA.180Fuw51XUTSKaRNKXRQSHo1nUi9QPW',NULL,'ROLE_USER');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-04 21:40:40
