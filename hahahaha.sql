/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.4.8-MariaDB : Database - bookingsmart
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `displayname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_role` int(11) DEFAULT NULL,
  `money` float DEFAULT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_role` (`id_role`),
  CONSTRAINT `account_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `account` */

insert  into `account`(`id`,`username`,`password`,`displayname`,`birthday`,`gender`,`email`,`phone`,`address`,`image`,`id_role`,`money`,`note`,`created_by`,`create_date`) values (10,'admin','1','Võ Công Hà','1998-01-25','Nam','hamaxgay@gmail.com','0329128675','Mỹ Lợi - Phù Mỹ - Bình Định',NULL,1,0,NULL,'Hà Võ','2019-11-06 00:00:00'),(11,'sadsd11','7f2388be-67d1-4ef0-8f68-f14d521e538c','sadsd','2019-12-10','Nam','hamaxgay@gmail.com','aaa',NULL,NULL,1,0,NULL,'admin','2019-12-12 10:44:50'),(12,'sinhhth80','NGNwjb','Hồ Thị Hoàng Sinh',NULL,NULL,'levanhoailinh11@gmail.com','0355828080',NULL,NULL,3,6379,NULL,NULL,NULL),(13,'ha80','egyUjC','Hà',NULL,NULL,'vocongha98@gmail.com','0355828080',NULL,NULL,NULL,0,NULL,NULL,NULL);

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `address` */

insert  into `address`(`id`,`title`,`note`) values (1,'Bình Định',NULL),(2,'Gia Lai',NULL),(3,'Phú Yên',NULL),(4,'Khánh Hòa',NULL),(5,'Hà Nội',NULL),(6,'Huế',NULL),(7,'Đà Nẵng',NULL);

/*Table structure for table `company` */

DROP TABLE IF EXISTS `company`;

CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `boss` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_status` int(11) DEFAULT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_status` (`id_status`),
  CONSTRAINT `company_ibfk_1` FOREIGN KEY (`id_status`) REFERENCES `status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `company` */

insert  into `company`(`id`,`username`,`password`,`boss`,`displayname`,`email`,`phone`,`address`,`id_status`,`note`,`create_date`) values (1,'a1','a1','dsadsa','ádsadsad','dsad','322',NULL,NULL,NULL,NULL),(2,'dsadsad0008','iBLWrB','dsadsa','dsadsad','dsad','21212',NULL,NULL,NULL,NULL),(3,'hav4192','123','Võ Công Hà','HAhahahahahahaha','vocongha98@gmail.com','0329128675',NULL,NULL,NULL,'2019-12-07 12:31:51'),(5,'khungs2933','LqDZWJ','Hồ Thị Hoàng Sinh','Sinh Khùng','vocongha2501@gmail.com','0355828080',NULL,NULL,NULL,'2019-12-15 14:08:28');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `customer` */

/*Table structure for table `employee_company` */

DROP TABLE IF EXISTS `employee_company`;

CREATE TABLE `employee_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_status` int(11) DEFAULT NULL,
  `id_company` int(11) DEFAULT NULL,
  `id_role` int(11) DEFAULT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_status` (`id_status`),
  KEY `id_company` (`id_company`),
  KEY `id_role` (`id_role`),
  CONSTRAINT `employee_company_ibfk_1` FOREIGN KEY (`id_status`) REFERENCES `status_employee` (`id`),
  CONSTRAINT `employee_company_ibfk_2` FOREIGN KEY (`id_company`) REFERENCES `company` (`id`),
  CONSTRAINT `employee_company_ibfk_3` FOREIGN KEY (`id_role`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `employee_company` */

insert  into `employee_company`(`id`,`username`,`password`,`displayname`,`birthday`,`gender`,`email`,`phone`,`address`,`id_status`,`id_company`,`id_role`,`note`,`created_by`,`create_date`) values (2,'admin','123','Võ Công Hà',NULL,'Nam','vocongha98@gmail.com','0329128675','Mỹ Lợi - Phù Mỹ - Bình Định',1,1,5,NULL,NULL,'2019-12-01 00:00:00'),(3,'admin','123','Hồ Thị Hoàng Sinh',NULL,'Nữ','sinhmayar98@gmail.com','0355828080','Gia Lai',1,1,6,NULL,NULL,'2019-12-01 00:00:00'),(4,'linhlvh','90290','Lê Văn Hoài Linh',NULL,'on',NULL,'123456789','Quy Nhơn',1,3,NULL,NULL,'HAhahahahahahaha','2019-12-15 08:29:26'),(5,'hoangnn','48063','Nguyễn Ngọc Hoàng',NULL,'Nữ',NULL,'147258369','Gia Lai',1,3,NULL,NULL,'HAhahahahahahaha','2019-12-15 08:30:52'),(6,'nguyentt','084644444444444','Trần Trung Nguyên','1998-01-23','Nam','hamaxgay@gmail.com','321654987','321654987',3,3,6,NULL,'',NULL),(7,'linhlvh','38843','Lê Văn Hoài Linh','1998-01-24','Nam','hamaxgay@gmail.com','123','123',3,3,5,'aaaaaaaa','',NULL),(8,'linhlvh','15992','Lê Văn Hoài Linh',NULL,'Nam',NULL,'11111','Quy Nhơn',1,3,6,NULL,'HAhahahahahahaha','2019-12-16 01:53:56'),(9,'linhlvh','88436','Lê Văn Hoài Linh',NULL,'Nữ',NULL,'11111111','Kom Tum',1,3,5,NULL,'HAhahahahahahaha','2019-12-16 01:59:47'),(10,'sfdf','63227','sfdf',NULL,'Nữ',NULL,'231','fdsd',1,3,5,NULL,'HAhahahahahahaha','2019-12-16 02:02:05'),(12,'linhlvh','05532','Lê Văn Hoài Linh',NULL,'Nữ',NULL,'0329128675','Quy Nhơn',1,3,5,NULL,'HAhahahahahahaha','2019-12-16 02:13:53'),(13,'as','47566','đas',NULL,'Nam',NULL,'sda','đas',1,3,5,NULL,'HAhahahahahahaha','2019-12-16 02:30:01'),(14,'dasdasds','76278','dasdasds',NULL,'Nam',NULL,'đâsds','đasadasdsdasds',1,3,5,NULL,'HAhahahahahahaha','2019-12-16 02:30:48');

/*Table structure for table `history_trip` */

DROP TABLE IF EXISTS `history_trip`;

CREATE TABLE `history_trip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `id_trip` int(11) DEFAULT NULL,
  `id_status` int(11) DEFAULT NULL,
  `seat_null` varchar(200) DEFAULT NULL,
  `seat_not_pay` varchar(200) DEFAULT NULL,
  `seat_selected` varchar(200) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_trip` (`id_trip`),
  KEY `id_status` (`id_status`),
  CONSTRAINT `history_trip_ibfk_1` FOREIGN KEY (`id_trip`) REFERENCES `trip` (`id`),
  CONSTRAINT `history_trip_ibfk_2` FOREIGN KEY (`id_status`) REFERENCES `status_trip` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

/*Data for the table `history_trip` */

insert  into `history_trip`(`id`,`date`,`time`,`id_trip`,`id_status`,`seat_null`,`seat_not_pay`,`seat_selected`,`created_by`,`create_date`) values (1,'2019-12-30','6:00 PM',8,2,'A2-A3-A4-A5-A6-B1-B2-B3-B4-B5-B7-C7-D1-D2-D3-D4-D5-D7','A1-E1-E2-E3-E4-E5-E6','F1-F2-F3-F4-F5-F7-G7-H1-H2-H3-H4-H5-H6-H7-H8','Võ Hà','2019-12-13 04:25:33'),(2,'2019-12-13','12:00 PM',9,2,'A2-A3-A4-A5-B1-B2-B3-B4-B5-B7','C7-D1-D2-D3-D4-D5-D7-E1-E2-E3-E4-E5-E6-F1-F2-F3-F4-F5-F7-G7-H1-H2-H3','H4-H5-H7-A1-A6','Võ Hà','2019-12-13 04:29:04'),(3,'2019-12-06','12:00 PM',5,2,'C7-D1-D2-D3-D4-D5-D7-E1-E2-E3-E4-E5-E6-F1-F2-F3-F4-F5-F7-G7-H1-H2-H3-H4-H5-H7','A1',NULL,'Võ Hà','2019-12-13 09:30:36'),(4,'2019-12-29','6:00 PM',10,2,'A1-A2-A3-A4-A5-A6-B1-B2-B3-B4-B5-B7-C7-D1-D2-D3-D4-D5-D7-E1-E2-E3-E4-E5-E6-F1-F2-F3-F4-F5-F7-G7-H1-H2-H3-H4-H5-H7',NULL,NULL,'Võ Hà','2019-12-13 09:54:40'),(5,'2019-12-13','8:00 AM',11,2,'A2-A5','B1-B2-B3-B4-B5-B7','C7-D1-D2-D3-D4-D5-D7-E1-E2-E3-E4-E5-E6-F1-F2-F3-F4-F5-F7-G7-H1-H2-H3-H4-H5-H7-A1-A6-A4-A3','Võ Hà','2019-12-14 02:47:29'),(6,'2019-12-13','10:00 AM',12,2,'A1-A2-A3-A5-A6-B2-B3-B4-B5-B7-C7-D1-D2-D3-D4-D5-D7','E1-E2-E3-E4-E5-E6-F1-F2-F3-F4-F5-F7-G7','H1-H2-H3-H4-H5-H7-B1-B2-A4-A5','Võ Hà','2019-12-14 02:55:11'),(7,'2019-12-14','7:00 AM',14,2,'A1-A2-A3-A4-A5-A6-B1-B2-B3-B4-B5-B7-C7-D1-D2-D3-D4-D5-D7-E1-E2-E3-E4-E5-E6-F1-F2-F3-F4-F5-F7-G7-H1-H2-H3-H4-H5-H7',NULL,NULL,'HAhahahahahahaha','2019-12-15 04:17:05'),(8,'2019-12-20','9:00 AM',15,2,'A2-A3-A4-A5-A6-B1-B2-B3-B4-B5-B7-C7-D1-D2-D3-D4-D5-D7-E2-E3-E4-E5-E6-F1-F2-F3-F4-F5-F7-G7-H1-H2-H3-H4-H5-H7','','A1-A3-A5-E1-E2','HAhahahahahahaha','2019-12-15 04:38:33'),(9,'2019-12-16','8:00 AM',16,2,'A4-A5-A6-B1-B2-B3-B4-B5-B7-C7-D4-D5-D7-E1-E2-E3-E4-E5-E6-F1-F2-F3-F4-F5-F7-G7-H1-H2-H3-H4-H5-H7','','A1-A2-A3-D1-D2-D3','ádsadsad','2019-12-15 09:57:16'),(10,'2019-12-29','1:00 AM',18,2,'A4-A5-A6-B1-B2-B3-B4-B5-B7-C7-D2-D3-D4-D5-D7-E2-E3-E4-E5-E6-F1-F2-F3-F4-F5-G7','','E1-D1-F7-H1-H2-H3-H4-H5-H7-A1-A2-A3','ádsadsad','2019-12-15 12:44:55');

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `role` */

insert  into `role`(`id`,`title`,`note`) values (1,'admin','system'),(2,'company','company'),(3,'client','client'),(4,'employee system','system'),(5,'driver','employee_company'),(6,'employee','employee_company');

/*Table structure for table `schedule` */

DROP TABLE IF EXISTS `schedule`;

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_` int(11) DEFAULT NULL,
  `to_` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `address_begin` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_end` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `schedule_detail` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_company` int(11) DEFAULT NULL,
  `id_status` int(11) DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `from` (`from_`),
  KEY `to` (`to_`),
  KEY `id_company` (`id_company`),
  KEY `id_status` (`id_status`),
  CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`from_`) REFERENCES `address` (`id`),
  CONSTRAINT `schedule_ibfk_2` FOREIGN KEY (`to_`) REFERENCES `address` (`id`),
  CONSTRAINT `schedule_ibfk_3` FOREIGN KEY (`id_company`) REFERENCES `company` (`id`),
  CONSTRAINT `schedule_ibfk_4` FOREIGN KEY (`id_status`) REFERENCES `status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `schedule` */

insert  into `schedule`(`id`,`from_`,`to_`,`price`,`address_begin`,`address_end`,`schedule_detail`,`note`,`id_company`,`id_status`,`created_by`,`create_date`) values (1,1,2,200,'Nhà Sinh','Nhà Hà','Quy Nhơn - An Khê - Pleiku','Haha',3,2,'Võ Hà','2019-12-10 00:00:00'),(3,1,2,200,'Nhà Sinh','Nhà Hà','Sinh Hà','Haha',1,1,'Hà',NULL),(4,1,2,200,'Nhà Sinh','Nhà Hà','Quy Nhơn - An Khê - Pleiku - Nhà Sinh','Haha',3,2,'Võ Hà','2019-12-11 10:30:16'),(5,2,1,100,'Nhà Sinh','Nhà Hà','aaaa','',3,1,'Võ Hà','2019-12-13 04:27:42'),(6,2,1,300,'Nhà Sinh','Nhà Hà','đasdss','',3,1,'Võ Hà','2019-12-14 02:47:00'),(7,4,3,500,'','','Haha','',3,1,'HAhahahahahahaha','2019-12-15 03:57:07'),(8,3,2,800,'','','dsadsds','',3,1,'HAhahahahahahaha','2019-12-15 04:15:41'),(9,4,3,500,'','','aaaa','',1,1,'ádsadsad','2019-12-15 09:56:34'),(10,3,4,150,'','','aaaaaaaaaaaaaaa','',1,1,'ádsadsad','2019-12-15 11:49:09'),(11,7,6,10,'','','Haha','',1,1,'ádsadsad','2019-12-15 12:40:13'),(12,5,6,200,'aa','aa','aaaaaaaa','aa',3,1,'HAhahahahahahaha','2019-12-16 02:34:02');

/*Table structure for table `status` */

DROP TABLE IF EXISTS `status`;

CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `status` */

insert  into `status`(`id`,`title`,`note`) values (1,'active','còn hoạt động'),(2,'pause','tạm dừng');

/*Table structure for table `status_employee` */

DROP TABLE IF EXISTS `status_employee`;

CREATE TABLE `status_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `status_employee` */

insert  into `status_employee`(`id`,`title`,`note`) values (1,'active','Còn làm vi?c'),(2,'pause','T?m ngh?'),(3,'nonactive','Ngh?');

/*Table structure for table `status_ticket` */

DROP TABLE IF EXISTS `status_ticket`;

CREATE TABLE `status_ticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `status_ticket` */

insert  into `status_ticket`(`id`,`title`,`note`) values (1,'paid','?ã thanh toán'),(2,'unpaid','ch?a thanh toán'),(3,'cancel','b? h?y');

/*Table structure for table `status_trip` */

DROP TABLE IF EXISTS `status_trip`;

CREATE TABLE `status_trip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `status_trip` */

insert  into `status_trip`(`id`,`title`,`note`) values (1,'ready','đang sẵn sàng'),(2,'waiting','đang chờ'),(3,'running','đang chạy'),(4,'finish','hoành thành');

/*Table structure for table `ticket` */

DROP TABLE IF EXISTS `ticket`;

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_trip` int(11) DEFAULT NULL,
  `address_begin` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_end` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_status` int(11) DEFAULT NULL,
  `index_seat` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_customer` (`id_customer`),
  KEY `id_user` (`id_user`),
  KEY `id_trip` (`id_trip`),
  KEY `id_status` (`id_status`),
  CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id`),
  CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `account` (`id`),
  CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`id_trip`) REFERENCES `history_trip` (`id`),
  CONSTRAINT `ticket_ibfk_4` FOREIGN KEY (`id_status`) REFERENCES `status_ticket` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `ticket` */

insert  into `ticket`(`id`,`code`,`id_customer`,`id_user`,`id_trip`,`address_begin`,`address_end`,`id_status`,`index_seat`,`price`,`note`,`created_by`,`create_date`) values (3,NULL,NULL,10,2,'','',1,'A1',300,NULL,'admin','2019-12-14 13:38:14'),(4,NULL,NULL,10,2,'Nhà Sinh','Nhà Hà',1,'A6',100,NULL,'admin','2019-12-14 13:56:19'),(5,NULL,NULL,10,6,'Nhà Sinh','Nhà Hà',1,'B1, B2',200,NULL,'admin','2019-12-14 14:02:26'),(6,NULL,NULL,10,6,'Nhà Hà','Nhà Sinh Khùng',1,'A4, A5',200,NULL,'admin','2019-12-14 14:07:18'),(7,NULL,NULL,10,5,'Hi HI','HiHI',1,'A6',300,NULL,'admin','2019-12-14 14:10:51'),(8,'VE-30644',NULL,10,5,'Nhà Hà','Nhà Sinh',1,'A4',300,NULL,'admin','2019-12-15 00:44:30'),(9,'VE-52117',NULL,10,5,'aaaaaaaaaa','aaaaaaaaaaaaaaaa',1,'A3',300,NULL,'admin','2019-12-15 02:05:43'),(10,'VE-82983',NULL,10,8,'a','s',1,'A1, A3, A5',900,NULL,'admin','2019-12-15 04:42:16'),(11,'VE-81953',NULL,12,8,'Sinh','Hà',1,'E1, E2',600,NULL,'company','2019-12-15 06:19:42'),(12,'VE-42004',NULL,12,9,'aaaaaa','aaaaaaaa',1,'A1, A2, A3',1500,NULL,'company','2019-12-15 10:00:56'),(13,'VE-20579',NULL,12,9,'aaa','aaaaa',1,'D1, D2, D3',1500,NULL,'company','2019-12-15 12:34:48'),(14,'VE-29734',NULL,12,10,'Sinh','Hà',1,'E1, D1',20,NULL,'company','2019-12-15 12:47:43'),(15,'VE-83592',NULL,10,10,'a','a',1,'F7',10,NULL,'admin','2019-12-15 13:09:58'),(16,'VE-20413',NULL,10,10,'aa','aa',1,'H1, H2, H3, H4, H5, H7, A1, A2, A3',90,NULL,'admin','2019-12-15 13:14:30');

/*Table structure for table `transport` */

DROP TABLE IF EXISTS `transport`;

CREATE TABLE `transport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_company` int(11) DEFAULT NULL,
  `id_status` int(11) DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_company` (`id_company`),
  KEY `id_status` (`id_status`),
  CONSTRAINT `transport_ibfk_1` FOREIGN KEY (`id_company`) REFERENCES `company` (`id`),
  CONSTRAINT `transport_ibfk_2` FOREIGN KEY (`id_status`) REFERENCES `status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `transport` */

insert  into `transport`(`id`,`category`,`model`,`phone`,`image`,`id_company`,`id_status`,`created_by`,`create_date`) values (1,'Xe Vip','Xe-01','0329128675','',3,2,'Võ Công Hà','2019-12-10 11:05:30'),(2,'Xe Thường','Xe-02','0329128675','',3,1,'Võ Công Hà','2019-12-12 03:16:03'),(3,'Xe Trung Chuyểnn','Xe-03','0329128675','',3,1,'Võ Công Hà','2019-12-13 02:26:08'),(4,'Xe Vippppppppppppppppp','Xe-01','0329128675','',1,1,'ádsadsad','2019-12-15 07:41:14'),(5,'Xe AAAAAAAAAAA','Xe-022','0329128675','',1,1,'ádsadsad','2019-12-15 07:51:23');

/*Table structure for table `trip` */

DROP TABLE IF EXISTS `trip`;

CREATE TABLE `trip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_schedule` int(11) DEFAULT NULL,
  `id_transport` int(11) DEFAULT NULL,
  `id_employ_one` int(11) DEFAULT NULL,
  `id_employ_two` int(11) DEFAULT NULL,
  `id_status` int(11) DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_schedule` (`id_schedule`),
  KEY `id_transport` (`id_transport`),
  KEY `id_employ_one` (`id_employ_one`),
  KEY `id_employ_two` (`id_employ_two`),
  KEY `id_status` (`id_status`),
  CONSTRAINT `trip_ibfk_1` FOREIGN KEY (`id_schedule`) REFERENCES `schedule` (`id`),
  CONSTRAINT `trip_ibfk_2` FOREIGN KEY (`id_transport`) REFERENCES `transport` (`id`),
  CONSTRAINT `trip_ibfk_3` FOREIGN KEY (`id_employ_one`) REFERENCES `employee_company` (`id`),
  CONSTRAINT `trip_ibfk_4` FOREIGN KEY (`id_employ_two`) REFERENCES `employee_company` (`id`),
  CONSTRAINT `trip_ibfk_5` FOREIGN KEY (`id_status`) REFERENCES `status_trip` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `trip` */

insert  into `trip`(`id`,`date`,`time`,`id_schedule`,`id_transport`,`id_employ_one`,`id_employ_two`,`id_status`,`created_by`,`create_date`) values (3,'1915-11-10','3:00 AM',4,2,3,2,1,NULL,NULL),(4,'1917-11-23','5:00',4,1,3,2,2,'Võ Hà','2019-12-12 00:37:59'),(5,'2019-12-06','12:00 PM',3,1,3,2,2,'Võ Hà','2019-12-12 05:02:54'),(6,'2019-12-19','5:00 AM',4,2,3,2,1,'Võ Hà','2019-12-12 06:37:53'),(7,'2019-12-29','5:00 AM',3,3,2,3,2,'Võ Hà','2019-12-12 10:19:13'),(8,'2019-12-30','6:00 PM',4,1,3,2,2,'Võ Hà','2019-12-13 04:24:58'),(9,'2019-12-13','12:00 PM',5,1,2,3,2,'Võ Hà','2019-12-13 04:28:33'),(10,'2019-12-29','6:00 PM',1,1,2,2,2,'Võ Hà','2019-12-13 09:33:57'),(11,'2019-12-13','8:00 AM',6,1,2,3,2,'Võ Hà','2019-12-14 02:47:20'),(12,'2019-12-13','10:00 AM',5,1,2,3,2,'Võ Hà','2019-12-14 02:55:00'),(13,NULL,'2:00 PM',7,2,3,2,1,'HAhahahahahahaha','2019-12-15 03:57:37'),(14,'2019-12-14','7:00 AM',8,1,2,2,2,'HAhahahahahahaha','2019-12-15 04:16:19'),(15,'2019-12-20','9:00 AM',6,1,2,2,2,'HAhahahahahahaha','2019-12-15 04:38:14'),(16,'2019-12-16','8:00 AM',9,1,2,2,2,'ádsadsad','2019-12-15 09:57:07'),(17,NULL,'8:00 AM',8,1,6,6,1,'HAhahahahahahaha','2019-12-15 12:09:34'),(18,'2019-12-29','1:00 AM',11,5,2,3,2,'ádsadsad','2019-12-15 12:40:35');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
