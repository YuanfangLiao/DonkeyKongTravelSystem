/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.20-log : Database - donkey
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`donkey` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `donkey`;

/*Table structure for table `attraction` */

DROP TABLE IF EXISTS `attraction`;

CREATE TABLE `attraction` (
  `att_id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `location_id` int(5) NOT NULL,
  `num_like` int(5) NOT NULL,
  PRIMARY KEY (`att_id`),
  KEY `location_id` (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `attraction` */

insert  into `attraction`(`att_id`,`name`,`location_id`,`num_like`) values (1,'Tianmen',1,1234),(2,'The Great Wall',1,1345),(3,'Qingdao Landing Stage',2,1445),(4,'Zhong Shan Park',2,1487),(5,'May Fourth Square of Qingdao',2,2587),(6,'Qingdao Laoshan',2,3645),(7,'The Oriental Pearl Radio & TV To',3,3467),(8,'Shanghai Bund',3,5678),(9,'Hangzhou Xihu',4,7643),(10,'Qiandao Lake',4,3423),(11,'Hongkong Disneyland',5,6546),(12,'12313aaassad',12313,12313),(13,'asdadads123123',3,3);

/*Table structure for table `feed_back` */

DROP TABLE IF EXISTS `feed_back`;

CREATE TABLE `feed_back` (
  `feed_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `feed_info` varchar(300) NOT NULL,
  PRIMARY KEY (`feed_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `feed_back` */

/*Table structure for table `food` */

DROP TABLE IF EXISTS `food`;

CREATE TABLE `food` (
  `food_id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `type` varchar(32) NOT NULL,
  `num_praise` int(5) NOT NULL,
  `num_like` int(5) NOT NULL,
  PRIMARY KEY (`food_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `food` */

insert  into `food`(`food_id`,`name`,`type`,`num_praise`,`num_like`) values (1,'Beijing Duck','Beijing cuisine',200,200),(2,'Hot Pot, Mongolian Style','Beijing cuisine',200,300),(3,'Spicy fried clams','Qingdao cuisine',400,500),(4,'Boiled fresh albalone','Qingdao cuisine',350,506),(5,'Shanghai drunken crab','Shanghai cuisine',230,340),(6,'Nanshan Crab Soup Bun','Shanghai cuisine',123,432),(7,'Hibiscus crystal prawns','Hangzhou cuisine',435,534),(8,'Dongpo\'s braised pork','Hangzhou cuisine',645,765),(9,'AYi Abalone','HongKong cuisine',354,438),(10,'Grilled suckling pig','HongKong cuisine',133,243);

/*Table structure for table `food_comments` */

DROP TABLE IF EXISTS `food_comments`;

CREATE TABLE `food_comments` (
  `food_comments_id` int(5) NOT NULL,
  `food_id` int(5) NOT NULL,
  `type` varchar(32) NOT NULL,
  `detail` varchar(32) NOT NULL,
  PRIMARY KEY (`food_comments_id`),
  KEY `food_id` (`food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `food_comments` */

insert  into `food_comments`(`food_comments_id`,`food_id`,`type`,`detail`) values (0,5,'',''),(1,1,'Beijing cuisine',''),(2,2,'Beijing cuisine',''),(3,3,'Qingdao cuisine',''),(4,4,'Qingdao cuisine',''),(6,6,'Shanghai cuisine',''),(7,7,'Hangzhou cuisine',''),(8,8,'Hangzhou cuisine',''),(9,9,'HongKong cuisine',''),(10,10,'HongKong cuisine','');

/*Table structure for table `group_travel` */

DROP TABLE IF EXISTS `group_travel`;

CREATE TABLE `group_travel` (
  `group_travel_id` int(5) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `user_id` varchar(32) NOT NULL,
  `att_id` int(5) NOT NULL,
  `hotel_id` int(5) NOT NULL,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `fee` int(5) NOT NULL,
  `num_people` int(5) NOT NULL,
  `trip_mode` varchar(32) NOT NULL,
  `isValid` varchar(32) NOT NULL,
  PRIMARY KEY (`group_travel_id`),
  KEY `att_id` (`att_id`),
  KEY `hotel_id` (`hotel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `group_travel` */

insert  into `group_travel`(`group_travel_id`,`title`,`user_id`,`att_id`,`hotel_id`,`begin_date`,`end_date`,`fee`,`num_people`,`trip_mode`,`isValid`) values (1,'Tiananmen Travel','Kevin',1,1,'2018-06-22','2018-06-22',555,3,'walk','是'),(3,'2','Oreo',2,2,'2018-06-14','2018-06-14',2,2,'2','否'),(4,'32','Oreo',23,23,'2018-06-14','2018-06-14',23,23,'23','否'),(6,'2','ok120',2,2,NULL,NULL,2,2,'2','是'),(7,'Go Hangzhou','ok120',3,12,NULL,NULL,123,12,'By car','否');

/*Table structure for table `group_user` */

DROP TABLE IF EXISTS `group_user`;

CREATE TABLE `group_user` (
  `group_user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`group_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `group_user` */

/*Table structure for table `hotel` */

DROP TABLE IF EXISTS `hotel`;

CREATE TABLE `hotel` (
  `hotel_id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `location_id` int(5) NOT NULL,
  `price` int(5) NOT NULL,
  `num_comments` int(5) NOT NULL,
  `num_like` int(5) NOT NULL,
  PRIMARY KEY (`hotel_id`),
  KEY `location_id` (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `hotel` */

insert  into `hotel`(`hotel_id`,`name`,`location_id`,`price`,`num_comments`,`num_like`) values (3,'Shangri-La',1,550,1100,12308),(4,'BlueWaterAndCloudSky',1,345,450,6602),(5,'Sheraton',2,990,330,4501),(6,'Shangri-La',2,430,230,3200),(7,'RedTower',3,410,330,5500),(8,'JinMaoDaSha',3,660,1120,33401),(9,'Intercontinental',4,530,1330,3641),(10,'JWMarriott',4,1100,220,34560),(11,'CrownePlazaHongKongCausewayBay',5,880,1234,5637),(12,'InterContinental',5,660,1125,3528);

/*Table structure for table `hotel_comments` */

DROP TABLE IF EXISTS `hotel_comments`;

CREATE TABLE `hotel_comments` (
  `hotel_comments_id` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `detail` varchar(32) NOT NULL,
  `hotel_id` int(5) NOT NULL,
  PRIMARY KEY (`hotel_comments_id`),
  KEY `hotel_id` (`hotel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `hotel_comments` */

/*Table structure for table `hotel_order` */

DROP TABLE IF EXISTS `hotel_order`;

CREATE TABLE `hotel_order` (
  `hotel_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(32) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  PRIMARY KEY (`hotel_order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `hotel_order` */

insert  into `hotel_order`(`hotel_order_id`,`user_id`,`hotel_id`,`order_date`) values (1,'jason',3,'2018-06-14'),(2,'jason',22,'2018-06-23'),(3,'jason',1,'2018-06-23'),(4,'jason',7,'2018-06-14'),(5,'Kevin',5,'2018-07-12'),(6,'Kevin',15,'2018-06-14'),(7,'Kevin',5,'2018-07-13'),(8,'Kevin',9,'2018-06-14');

/*Table structure for table `id` */

DROP TABLE IF EXISTS `id`;

CREATE TABLE `id` (
  `id` varchar(32) NOT NULL,
  `temp` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `id` */

insert  into `id`(`id`,`temp`) values ('Oreo12322',1);

/*Table structure for table `location` */

DROP TABLE IF EXISTS `location`;

CREATE TABLE `location` (
  `location_id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `location` */

insert  into `location`(`location_id`,`name`) values (1,'Beijing'),(2,'Qingdao'),(3,'Shanghai'),(4,'Hangzhou'),(5,'HongKong');

/*Table structure for table `travels` */

DROP TABLE IF EXISTS `travels`;

CREATE TABLE `travels` (
  `travels_id` int(5) NOT NULL AUTO_INCREMENT,
  `user_id` int(5) NOT NULL,
  `att_id` int(5) NOT NULL,
  `detail` varchar(32) NOT NULL,
  `num_like` int(5) NOT NULL,
  `create_date` date NOT NULL,
  `isValid` varchar(32) NOT NULL,
  `isReport` varchar(32) NOT NULL,
  PRIMARY KEY (`travels_id`),
  KEY `user_id` (`user_id`),
  KEY `att_id` (`att_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

/*Data for the table `travels` */

insert  into `travels`(`travels_id`,`user_id`,`att_id`,`detail`,`num_like`,`create_date`,`isValid`,`isReport`) values (22,0,1,'',0,'0000-00-00','',''),(23,0,2,'',0,'0000-00-00','',''),(24,0,3,'',0,'0000-00-00','',''),(25,0,4,'',0,'0000-00-00','',''),(26,0,5,'',0,'0000-00-00','',''),(27,0,6,'',0,'0000-00-00','',''),(28,0,7,'',0,'0000-00-00','',''),(29,0,8,'',0,'0000-00-00','',''),(30,0,9,'',0,'0000-00-00','',''),(31,0,10,'',0,'0000-00-00','',''),(32,0,11,'',0,'0000-00-00','',''),(33,0,12,'',0,'0000-00-00','','');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL,
  `isValid` varchar(32) NOT NULL,
  `create_date` date NOT NULL,
  `level` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`password`,`name`,`title`,`isValid`,`create_date`,`level`) values ('jason','123','jason','User','是','2018-06-14',1),('Kevin','hww778899','Kevin','User','是','2018-06-13',1),('OK110','12345','sd','User','是','2018-06-14',1),('ok120','1234','haha','Administrator','是','2018-06-14',1),('ok130','a123456','ORRRe','User','是','2018-06-14',1),('Oreo','123123','Oreo','Administrator','是','2018-06-12',4),('Oreo123123','hww778899','Oreo','Administrator','是','2018-06-21',1),('Oreo12322','hww778899','123','Administrator','是','2018-06-14',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
