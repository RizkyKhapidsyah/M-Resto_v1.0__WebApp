/*
SQLyog Enterprise - MySQL GUI v8.2 RC2
MySQL - 5.5.8 : Database - m-resto
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`m-resto` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `m-resto`;

/*Table structure for table `jqm_categories` */

DROP TABLE IF EXISTS `jqm_categories`;

CREATE TABLE `jqm_categories` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `contains` int(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `jqm_categories` */

insert  into `jqm_categories`(`id`,`name`,`contains`) values (1,'Makanan',3),(2,'Minuman',4),(3,'Snack',4);

/*Table structure for table `jqm_products` */

DROP TABLE IF EXISTS `jqm_products`;

CREATE TABLE `jqm_products` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `category` int(6) unsigned NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`category`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `jqm_products` */

insert  into `jqm_products`(`id`,`category`,`name`,`price`) values (1,1,'Nasi Goreng',15000),(2,1,'Sate',19000),(3,1,'Mie Goreng',10000),(4,2,'Jus Mangga',9000),(5,2,'Jus Terung Belanda',9000),(6,2,'Jus Alpukat',9000),(7,2,'Jus Timun',9000),(8,3,'Bola-bola ubi',15000),(9,3,'Sandwich',25000),(10,3,'Puding Roti Kukus',18000),(11,3,'Roti Jala Gulai Ayam',24000),(12,3,'Tepung Pisang Keju',20000);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
