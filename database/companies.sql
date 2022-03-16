/*
SQLyog Professional v12.5.1 (64 bit)
MySQL - 10.4.14-MariaDB : Database - tcldemo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tcldemo` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `tcldemo`;

/*Table structure for table `companies` */

DROP TABLE IF EXISTS `companies`;

CREATE TABLE `companies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `insurer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `policy_num` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `broker` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_expiry` date NOT NULL DEFAULT '2022-03-02',
  `policy_notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `companies` */

insert  into `companies`(`id`,`company`,`address`,`postcode`,`created_at`,`updated_at`,`insurer`,`policy_num`,`broker`,`policy_expiry`,`policy_notes`,`policy_type`) values 
(1,'OOHHOOMMOOSS','Finch Farm, Finch Lane, Halewood, Liverpool, UK','L26 3UE','2021-10-29 09:46:12','2022-03-02 18:26:20','Time Insurance','PM1224AM','Part Time Brokers','2024-03-02','There are no notes, nothing to see here, move along.','esfd'),
(2,'Starbots Creative','Starbots Creative LTD','ST5 1BS','2021-11-18 10:01:49','2022-03-02 22:12:24','Startbots Insurance Inc','PO98989877','Starbots Insurance Brokers','2023-03-31','Starbots policy notes.','dsfs'),
(3,'Snappy Inc.','Albion Street, Wolverhampton, UK','WV00 010','2022-02-23 18:19:51','2022-03-02 18:24:05','Snappy Insurance Company','PO0000022211','Snappy Insurance Brokers','2024-03-02','Baby shark, do do do do do do do do do do.\r\nThat\'s stuck in your head now!','sdf'),
(4,'Adss','Dfsk Manado, Bumi Nyiur, Manado City, North Sulawesi, Indonesia','63559','2022-02-24 07:02:09','2022-02-24 07:02:27','','',NULL,'2022-03-02',NULL,''),
(5,'Test McTesterson Limited','1 Grosvenor Gardens, London, UK','SW1W 0BD','2022-02-28 13:41:29','2022-02-28 13:41:29','','',NULL,'2022-03-02',NULL,''),
(6,'Harry Inc','1 Cadogan Place, London, UK','SW1X 9PZ','2022-02-28 14:10:46','2022-02-28 14:10:46','','',NULL,'2022-03-02',NULL,'');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
