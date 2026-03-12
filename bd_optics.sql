CREATE DATABASE  IF NOT EXISTS `bd_optics` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_optics`;
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bd_optics
-- ------------------------------------------------------
-- Server version	8.0.43

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
  `id_categories` int NOT NULL AUTO_INCREMENT,
  `title_categories` varchar(45) NOT NULL,
  PRIMARY KEY (`id_categories`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Очки для зрения'),(2,'Солнцезащитные очки'),(3,'Линзы'),(4,'Аксессуары');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturers`
--

DROP TABLE IF EXISTS `manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufacturers` (
  `id_manufacturer` int NOT NULL AUTO_INCREMENT,
  `title_manufacturer` varchar(45) NOT NULL,
  `country_manufacturer` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_manufacturer`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturers`
--

LOCK TABLES `manufacturers` WRITE;
/*!40000 ALTER TABLE `manufacturers` DISABLE KEYS */;
INSERT INTO `manufacturers` VALUES (1,'Ray-Ban','Италия'),(2,'Polaroid','США'),(3,'Essilor','Франция'),(4,'Hoya','Япония'),(5,'Luxottica','Италия'),(6,'Bausch & Lomb','США'),(7,'Очкарик','Россия');
/*!40000 ALTER TABLE `manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id_order` int NOT NULL AUTO_INCREMENT,
  `date_order` date DEFAULT NULL,
  `date_delivery_order` date DEFAULT NULL,
  `id_saloon_order` int DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  `code_order` varchar(45) DEFAULT NULL,
  `status_order` varchar(45) DEFAULT NULL,
  `total_amount_order` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_order`),
  KEY `id_user_fk1_idx` (`id_user`),
  KEY `id_saloon_fk2_idx` (`id_saloon_order`),
  CONSTRAINT `id_saloon_fk2` FOREIGN KEY (`id_saloon_order`) REFERENCES `saloons` (`id_saloon`),
  CONSTRAINT `id_user_fk1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2025-02-15','2025-02-20',1,10,'OPT-001','Завершен',15490.00),(2,'2025-02-16','2025-02-21',2,2,'OPT-002','Новый',7990.00),(3,'2025-02-17','2025-02-22',3,6,'OPT-003','Завершен',12300.00),(4,'2025-02-18','2025-02-23',1,5,'OPT-004','Новый',5600.00),(5,'2025-02-19','2025-02-24',2,10,'OPT-005','Завершен',8900.00),(6,'2025-02-20','2025-02-25',3,2,'OPT-006','Завершен',12500.00),(7,'2025-02-21','2025-02-26',1,6,'OPT-007','Новый',4300.00),(9,'2025-02-23','2025-02-28',3,10,'OPT-009','Новый',9800.00),(10,'2025-02-24','2025-03-01',1,10,'OPT-010','Завершен',11200.00),(13,'2026-03-10','2026-03-15',3,2,'OPT-20260310-9478','Завершен',5700000.00),(14,'2026-03-10','2026-03-15',4,2,'OPT-20260310-4849','Завершен',13300000.00),(15,'2026-03-10','2026-03-15',3,2,'OPT-20260310-4215','Завершен',6700.00),(16,'2026-03-10','2026-03-15',3,2,'OPT-20260310-1926','Завершен',6000.00),(17,'2026-03-10','2026-03-15',2,2,'OPT-20260310-4032','Новый',21455.00),(18,'2026-03-10','2026-03-15',2,2,'OPT-20260310-8757','Новый',5000.00),(19,'2026-03-10','2026-03-15',3,2,'OPT-20260310-4993','Новый',5000.00),(20,'2026-03-10','2026-03-15',5,2,'OPT-20260310-5885','Новый',5000.00),(21,'2026-03-10','2026-03-15',3,2,'OPT-20260310-4824','Новый',5000.00),(22,'2026-03-10','2026-03-15',4,2,'OPT-20260310-4701','Новый',5000.00),(23,'2026-03-10','2026-03-15',1,2,'OPT-20260310-6558','Новый',1918315.00),(24,'2026-03-10','2026-03-15',2,2,'OPT-20260310-8280','Новый',11000.00),(25,'2026-03-10','2026-03-15',3,2,'OPT-20260310-4410','Новый',3000.00),(26,'2026-03-10','2026-03-15',5,2,'OPT-20260310-6497','Новый',2000.00),(27,'2026-03-10','2026-03-15',1,2,'OPT-20260310-2480','Новый',9741920.00),(47,'2026-03-10','2026-03-15',4,2,'OPT-20260310-6972','Новый',52275.00),(48,'2026-03-10','2026-03-15',4,2,'OPT-20260310-4354','Новый',1900000.00);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_structure`
--

DROP TABLE IF EXISTS `orders_structure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_structure` (
  `id_order_structure` int NOT NULL AUTO_INCREMENT,
  `id_order` int DEFAULT NULL,
  `article_product` varchar(45) DEFAULT NULL,
  `count_order_structure` int DEFAULT NULL,
  `price_per_item` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_order_structure`),
  KEY `id_order_fk1_idx` (`id_order`),
  KEY `article_product_fk2_idx` (`article_product`),
  CONSTRAINT `article_product_fk2` FOREIGN KEY (`article_product`) REFERENCES `products` (`article_product`),
  CONSTRAINT `id_order_fk1` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id_order`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_structure`
--

LOCK TABLES `orders_structure` WRITE;
/*!40000 ALTER TABLE `orders_structure` DISABLE KEYS */;
INSERT INTO `orders_structure` VALUES (1,1,'RB-3025',1,7990.00),(2,1,'CLEAR-01',2,3750.00),(3,2,'POL-5001',1,3990.00),(4,2,'SOL-30D',1,4000.00),(5,3,'ESS-456',1,12300.00),(6,4,'HOYA-789',1,5600.00),(7,5,'LUX-123',1,8900.00),(8,6,'BL-001',1,12500.00),(9,7,'OPT-777',1,4300.00),(11,9,'POL-6002',1,9800.00),(12,10,'ESS-789',1,11200.00),(13,1,'CASE-01',1,200.00),(14,2,'NAP-01',2,150.00),(15,3,'SPRAY-01',1,450.00),(16,4,'CASE-02',1,350.00),(17,5,'NAP-02',3,200.00),(18,6,'SPRAY-02',1,500.00),(19,9,'CASE-03',1,400.00),(20,10,'NAP-03',2,250.00),(24,13,'CASE-01',3,1900000.00),(25,14,'CASE-01',7,1900000.00),(26,15,'BL-001',5,1000.00),(27,15,'CASE-03',5,340.00),(28,16,'BL-001',6,1000.00),(29,17,'BL-001',11,1000.00),(30,17,'ESS-456',1,10455.00),(31,18,'BL-001',5,1000.00),(32,19,'BL-001',5,1000.00),(33,20,'BL-001',5,1000.00),(34,21,'BL-001',5,1000.00),(35,22,'BL-001',5,1000.00),(36,23,'BL-001',18,1000.00),(37,23,'CASE-01',1,1900000.00),(38,23,'CASE-02',1,315.00),(39,24,'BL-001',11,1000.00),(40,25,'BL-001',3,1000.00),(41,26,'BL-001',2,1000.00),(42,27,'CASE-01',5,1900000.00),(43,27,'ESS-789',24,10080.00),(63,47,'ESS-456',5,10455.00),(64,48,'CASE-01',1,1900000.00);
/*!40000 ALTER TABLE `orders_structure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescriptions`
--

DROP TABLE IF EXISTS `prescriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescriptions` (
  `id_prescription` int NOT NULL AUTO_INCREMENT,
  `id_user` int DEFAULT NULL,
  `od_sphere` decimal(4,2) DEFAULT NULL,
  `os_sphere` decimal(4,2) DEFAULT NULL,
  `od_cylinder` decimal(4,2) DEFAULT NULL,
  `os_cylinder` decimal(4,2) DEFAULT NULL,
  `od_axis` int DEFAULT NULL,
  `os_axis` int DEFAULT NULL,
  `pd` decimal(4,2) DEFAULT NULL,
  `date_prescription` date DEFAULT NULL,
  `valid_until_date` date DEFAULT NULL,
  `doctor_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_prescription`),
  KEY `id_user_fk_idx` (`id_user`),
  CONSTRAINT `id_user_fk` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescriptions`
--

LOCK TABLES `prescriptions` WRITE;
/*!40000 ALTER TABLE `prescriptions` DISABLE KEYS */;
INSERT INTO `prescriptions` VALUES (1,1,-2.50,-2.25,-0.75,-0.50,180,175,64.00,'2025-01-15','2026-01-15','Иванов А.С.'),(2,2,-1.75,-1.50,NULL,NULL,NULL,NULL,62.00,'2025-01-20','2026-01-20','Петрова Е.В.'),(3,3,3.25,3.00,-1.25,-1.00,10,15,66.00,'2025-02-01','2026-02-01','Сидоров М.П.'),(4,4,-0.75,-0.50,-0.25,NULL,90,NULL,60.00,'2025-02-10','2026-02-10','Кузнецова О.И.'),(5,10,-3.00,-2.75,-1.00,-0.75,20,25,65.00,'2025-02-15','2026-02-15','Васильев Д.К.');
/*!40000 ALTER TABLE `prescriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `article_product` varchar(45) NOT NULL,
  `title_product` varchar(100) DEFAULT NULL,
  `price_product` decimal(10,2) DEFAULT NULL,
  `id_supplier` int DEFAULT NULL,
  `id_manufacturer` int DEFAULT NULL,
  `id_categories` int DEFAULT NULL,
  `discount_product` int DEFAULT NULL,
  `count_product` int DEFAULT NULL,
  `description_product` varchar(200) DEFAULT NULL,
  `image_product` longtext,
  `frame_material` varchar(45) DEFAULT NULL,
  `frame_color` varchar(45) DEFAULT NULL,
  `lens_type` varchar(45) DEFAULT NULL,
  `gender` enum('Мужские','Женские','Унисекс') DEFAULT 'Унисекс',
  PRIMARY KEY (`article_product`),
  KEY `id_categories_fk1_idx` (`id_categories`),
  KEY `id_supplier_fk2_idx` (`id_supplier`),
  KEY `id_manufacturer_fk3_idx` (`id_manufacturer`),
  CONSTRAINT `id_categories_fk1` FOREIGN KEY (`id_categories`) REFERENCES `categories` (`id_categories`),
  CONSTRAINT `id_manufacturer_fk3` FOREIGN KEY (`id_manufacturer`) REFERENCES `manufacturers` (`id_manufacturer`),
  CONSTRAINT `id_supplier_fk2` FOREIGN KEY (`id_supplier`) REFERENCES `suppliers` (`id_supplier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('BL-001','Тестовый товар',1000.00,1,1,1,0,-6,'Описание','','Металл','Черный','Стандартные','Унисекс'),('CASE-01','Футляр для очков',2000000.00,2,7,4,5,83,'Кожаный футляр для очков','/uploads/c8e4318a-fc90-450f-80ca-b895169dc4d5.jpg','Кожа','Черный',NULL,'Унисекс'),('CASE-02','Футляр жесткий',350.00,1,7,4,10,79,'Жесткий футляр с магнитной застежкой','/uploads/a87f3ce3-78a8-4b4e-b995-508a15f36f07.jpg','Пластик','Синий',NULL,'Унисекс'),('CASE-03','Футляр премиум',400.00,1,5,4,15,45,'Кожаный футляр с отделкой',NULL,'Кожа','Коричневый',NULL,'Унисекс'),('CLEAR-01','Линзы Clear',3750.00,1,3,3,5,200,'Ежедневные контактные линзы','/uploads/ae0086fb-eb4c-4b51-ad8e-886761600151.webp',NULL,'Прозрачный','Мягкие','Унисекс'),('ESS-456','Прогрессивные линзы',12300.00,1,3,1,15,24,'Прогрессивные линзы Essilor','/uploads/51d9c828-22a7-4a4a-b2d4-fd6d52cdcb4b.jpg','Пластик','Прозрачный','Прогрессивные','Унисекс'),('ESS-789','Очки Essilor',11200.00,1,3,1,10,-4,'Очки с фотохромными линзами','/uploads/051e5fc5-6366-49ab-9027-e1a45d6e543b.webp','Металл','Серый','Фотохромные','Унисекс'),('HOYA-789','Очки Hoya',5600.00,1,4,1,20,40,'Очки с антибликовым покрытием',NULL,'Пластик','Черный','Антибликовые','Унисекс'),('LUX-123','Очки Luxottica',8900.00,1,5,1,25,35,'Дизайнерские очки в металлической оправе','/uploads/3a1d75e3-cf76-4e15-ab4e-47beb917bb42.jpg','Металл','Золотистый','Стандартные','Женские'),('NAP-01','Салфетки для линз',150.00,2,7,4,0,300,'Влажные салфетки для чистки линз','',NULL,NULL,NULL,'Унисекс'),('NAP-02','Салфетки микрофибра',200.00,1,7,4,10,250,'Салфетки из микрофибры','/uploads/4c306f84-9069-49f1-a3bf-dbd8094cac3b.webp',NULL,NULL,NULL,'Унисекс'),('NAP-03','Салфетки антистатик',250.00,1,5,4,15,200,'Антистатические салфетки',NULL,NULL,NULL,NULL,'Унисекс'),('OPT-777','Очки Очкарик',4300.00,2,7,1,30,60,'Бюджетные очки для зрения',NULL,'Пластик','Коричневый','Стандартные','Унисекс'),('POL-5001','Солнцезащитные Polaroid',3990.00,1,2,2,20,45,'Поляризационные солнцезащитные очки','','Пластик','Черный','Поляризационные','Унисекс'),('POL-6002','Солнцезащитные авиаторы',9800.00,1,2,2,15,25,'Авиаторы с зеркальным покрытием','/uploads/12933cf0-b605-42b3-b17c-3c56e45fd1af.webp','Металл','Серебристый','Зеркальные','Мужские'),('RB-2140','Солнцезащитные Wayfarer',6700.00,1,1,2,10,51,'Классические Wayfarer','','Пластик','Черный','Стандартные','Унисекс'),('RB-3025','Солнцезащитные Aviator',7990.00,1,1,2,5,55,'Классические авиаторы','/uploads/536d4819-d042-4256-9166-1cc80b1a641e.jpg','Металл','Золотистый','Стандартные','Унисекс'),('SOL-30D','Линзы на 30 дней',4000.00,2,3,3,0,150,'Линзы плановой замены на 30 дней','',NULL,'Прозрачный','Мягкие','Унисекс'),('SPRAY-01','Спрей для чистки',450.00,2,7,4,5,120,'Спрей для чистки очков',NULL,NULL,NULL,NULL,'Унисекс'),('SPRAY-02','Спрей антифог',500.00,1,7,4,10,100,'Спрей против запотевания','',NULL,NULL,NULL,'Унисекс');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saloons`
--

DROP TABLE IF EXISTS `saloons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saloons` (
  `id_saloon` int NOT NULL AUTO_INCREMENT,
  `code_saloon` varchar(45) DEFAULT NULL,
  `city_saloon` varchar(45) DEFAULT NULL,
  `street_saloon` varchar(45) DEFAULT NULL,
  `house_number_saloon` varchar(45) DEFAULT NULL,
  `phone_saloon` varchar(45) DEFAULT NULL,
  `work_hours` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_saloon`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saloons`
--

LOCK TABLES `saloons` WRITE;
/*!40000 ALTER TABLE `saloons` DISABLE KEYS */;
INSERT INTO `saloons` VALUES (1,'OPT-001','г. Москва','ул. Тверская','25','+7 (495) 123-45-67','10:00-22:00'),(2,'OPT-002','г. Москва','ул. Арбат','15','+7 (495) 234-56-78','10:00-21:00'),(3,'OPT-003','г. Санкт-Петербург','Невский проспект','48','+7 (812) 345-67-89','10:00-22:00'),(4,'OPT-004','г. Санкт-Петербург','ул. Большая Морская','32','+7 (812) 456-78-90','10:00-21:00'),(5,'OPT-005','г. Екатеринбург','ул. Ленина','78','+7 (343) 567-89-01','10:00-20:00'),(6,'OPT-006','г. Новосибирск','Красный проспект','102','+7 (383) 678-90-12','10:00-20:00');
/*!40000 ALTER TABLE `saloons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `id_supplier` int NOT NULL AUTO_INCREMENT,
  `title_supplier` varchar(45) NOT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `phone_supplier` varchar(45) DEFAULT NULL,
  `email_supplier` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_supplier`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'Оптика-Профи','Смирнов Игорь Петрович','+7 (495) 111-22-33','supply@optika-profi.ru'),(2,'Линза-Сервис','Ковалева Анна Сергеевна','+7 (495) 222-33-44','info@linza-service.ru');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `role_user` varchar(45) NOT NULL,
  `surname_user` varchar(45) DEFAULT NULL,
  `name_user` varchar(45) DEFAULT NULL,
  `patronymic_user` varchar(45) DEFAULT NULL,
  `login_user` varchar(100) NOT NULL,
  `password_user` varchar(45) NOT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `phone_user` varchar(45) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Клиент','Иванова','Мария','Сергеевна','maria.ivanova@mail.com','Pass123','maria.ivanova@mail.com','+7 (916) 123-45-67','1985-03-15'),(2,'Клиент','Петров','Алексей','Владимирович','alex.petrov@gmail.com','Petrov456','alex.petrov@gmail.com','+7 (926) 234-56-78','1990-07-22'),(3,'Клиент','Сидорова','Ольга','Игоревна','olga.sidorova@yahoo.com','Sidor789','olga.sidorova@yahoo.com','+7 (916) 345-67-89','1978-11-30'),(4,'Клиент','Кузнецов','Дмитрий','Анатольевич','d.kuznetsov@mail.com','Kuzn1011','d.kuznetsov@mail.com','+7 (926) 456-78-90','1995-05-18'),(5,'Администратор','Васильев','Сергей','Михайлович','s.vasiliev@optica.ru','Admin123','s.vasiliev@optica.ru','+7 (495) 111-22-33','1980-09-10'),(6,'Администратор','Николаева','Елена','Витальевна','e.nikolaeva@optica.ru','Admin456','e.nikolaeva@optica.ru','+7 (495) 222-33-44','1975-12-05'),(7,'Администратор','Морозов','Андрей','Павлович','a.morozov@optica.ru','Admin789','a.morozov@optica.ru','+7 (495) 333-44-55','1988-04-25'),(8,'Оптометрист','Соколова','Татьяна','Борисовна','t.sokolova@optica.ru','Optom123','t.sokolova@optica.ru','+7 (495) 444-55-66','1992-08-14'),(9,'Оптометрист','Лебедев','Максим','Олегович','m.lebedev@optica.ru','Optom456','m.lebedev@optica.ru','+7 (495) 555-66-77','1987-06-20'),(10,'Клиент','Фролов','Игорь','Александрович','i.frolov@mail.com','Frolov321','i.frolov@mail.com','+7 (916) 567-89-01','1993-02-28');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bd_optics'
--

--
-- Dumping routines for database 'bd_optics'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-13  0:07:16
