/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 5.5.1-m2-community : Database - test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `test`;

/*Table structure for table `airline` */

DROP TABLE IF EXISTS `airline`;

CREATE TABLE `airline` (
  `name` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `seats` int(5) DEFAULT NULL,
  `model_no` varchar(20) NOT NULL,
  PRIMARY KEY (`model_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `airline` */

insert  into `airline`(`name`,`type`,`seats`,`model_no`) values 
('Etihad','AirBus 380',30,'ABE101'),
('Qatar','Boeing 777',45,'BQ101'),
('United Airlines','AirBus 380',45,'UAA101');

/*Table structure for table `allowance` */

DROP TABLE IF EXISTS `allowance`;

CREATE TABLE `allowance` (
  `employee_id` int(6) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `b_salary` float DEFAULT NULL,
  `grade_pay` float DEFAULT NULL,
  `sa` float DEFAULT NULL,
  `pa` float DEFAULT NULL,
  `ra` float DEFAULT NULL,
  `ea` float DEFAULT NULL,
  `hra` float DEFAULT NULL,
  `total_days` int(7) DEFAULT NULL,
  `present_days` int(7) DEFAULT NULL,
  `total_allowances` float DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `allowance` */

insert  into `allowance`(`employee_id`,`first_name`,`b_salary`,`grade_pay`,`sa`,`pa`,`ra`,`ea`,`hra`,`total_days`,`present_days`,`total_allowances`) values 
(101,'aaradhy',40000,0,0,0,0,0,0,30,29,38666.7),
(102,'Dev',90000,500,0,0,0,0,0,30,25,75416.7),
(103,'Lalita',50000,600,0,0,0,0,0,30,30,50600),
(104,'Ninja',20000,456,0,0,0,0,0,30,30,20456);

/*Table structure for table `audit` */

DROP TABLE IF EXISTS `audit`;

CREATE TABLE `audit` (
  `username` varchar(20) DEFAULT NULL,
  `time` varchar(50) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `audit` */

insert  into `audit`(`username`,`time`,`status`,`id`) values 
('aaradhy_sharma','Jul 17, 2020/00:38:59','logged in','1'),
('dev','Jul 17, 2020/00:51:52','logged in','2'),
('lalita','Jul 17, 2020/00:54:13','logged in','3'),
('dev','Jul 17, 2020/01:13:39','logged in','2'),
('dev','Jul 17, 2020/01:13:42','logged out','2'),
('aaradhy_sharma','Oct 1, 2020/12:12:48','logged in','1'),
('aaradhy_sharma','Sep 26, 2020/10:55:51','logged in','1'),
('aaradhy_sharma','Sep 26, 2020/12:34:19','logged in','1'),
('aaradhy_sharma','Sep 26, 2020/12:50:28','logged out','1');

/*Table structure for table `bank_details` */

DROP TABLE IF EXISTS `bank_details`;

CREATE TABLE `bank_details` (
  `employ_id` varchar(20) NOT NULL,
  `bank_name` varchar(50) DEFAULT NULL,
  `account_no` varchar(20) DEFAULT NULL,
  `ifsc` varchar(20) DEFAULT NULL,
  `branch` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`employ_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bank_details` */

insert  into `bank_details`(`employ_id`,`bank_name`,`account_no`,`ifsc`,`branch`) values 
('101','SBi','552244117788','SBI1012034','Rau'),
('102','HDFC','100200356545','HDFC134646','Mhow'),
('103','IDFC','564978412364','IDFC789456','Sudama Nagar'),
('104','SBI','456794561365','SBI10235465','China');

/*Table structure for table `cars` */

DROP TABLE IF EXISTS `cars`;

CREATE TABLE `cars` (
  `serial_no` varchar(12) NOT NULL,
  `car_type` varchar(40) DEFAULT NULL,
  `manuf` varchar(20) DEFAULT NULL,
  `model` varchar(40) DEFAULT NULL,
  `yom` int(10) DEFAULT NULL,
  `aval` varchar(10) DEFAULT NULL,
  `min_seat` int(10) DEFAULT NULL,
  `max_seat` int(10) DEFAULT NULL,
  `state` varchar(40) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `maintain` varchar(20) DEFAULT NULL,
  `doc` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`serial_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cars` */

insert  into `cars`(`serial_no`,`car_type`,`manuf`,`model`,`yom`,`aval`,`min_seat`,`max_seat`,`state`,`city`,`maintain`,`doc`) values 
('M-09-PX-2015','SUV','Ford','Ecosport',2019,'Yes',1,8,'California','San Jose','Not Expired','08/10/2020');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `f_name` varchar(30) DEFAULT NULL,
  `l_name` varchar(30) DEFAULT NULL,
  `mobile` varchar(12) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

insert  into `customer`(`f_name`,`l_name`,`mobile`,`email`,`password`,`dob`) values 
('Dev','sharma','7788994466','dev26sharma@gmail.com','dev101','05/05/1995'),
('Rakesh','Sharma','8844779955','rak@gmail.com','rakesh101',NULL),
('aaradhy','sharma','9988774455','aaradhy05sharma@gmail.com','aaradhy102','14/10/2020');

/*Table structure for table `deduction` */

DROP TABLE IF EXISTS `deduction`;

CREATE TABLE `deduction` (
  `e_id` int(11) NOT NULL,
  `name_f` varchar(20) DEFAULT NULL,
  `pf` float DEFAULT NULL,
  `esic` float DEFAULT NULL,
  `pt` float DEFAULT NULL,
  `income_tax` float DEFAULT NULL,
  `adv` float DEFAULT NULL,
  `other` float DEFAULT NULL,
  `other_reason` varchar(200) DEFAULT NULL,
  `total_deduction` float DEFAULT NULL,
  `salary_final` float DEFAULT NULL,
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `deduction` */

insert  into `deduction`(`e_id`,`name_f`,`pf`,`esic`,`pt`,`income_tax`,`adv`,`other`,`other_reason`,`total_deduction`,`salary_final`) values 
(101,'aaradhy',3600,0,208,0,0,0,'',3808,34858.7),
(102,'Dev',1000,0,208,0,0,0,'No reason for this',1208,74208.7),
(103,'Lalita',900,0,208,0,0,0,'sdfasfdwsfsdafs',1108,49492),
(104,'Ninja',0,0,125,0,0,0,'',125,20331);

/*Table structure for table `emp_table` */

DROP TABLE IF EXISTS `emp_table`;

CREATE TABLE `emp_table` (
  `emp_id` int(6) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(20) DEFAULT NULL,
  `l_name` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dob` varchar(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `contact` varchar(12) DEFAULT NULL,
  `p_address` varchar(100) DEFAULT NULL,
  `c_address` varchar(100) DEFAULT NULL,
  `pincode` varchar(6) DEFAULT NULL,
  `institute` varchar(20) DEFAULT NULL,
  `dept` varchar(20) DEFAULT NULL,
  `designation` varchar(30) DEFAULT NULL,
  `doj` varchar(12) DEFAULT NULL,
  `basic_salary` float DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `image` mediumblob,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;

/*Data for the table `emp_table` */

insert  into `emp_table`(`emp_id`,`f_name`,`l_name`,`gender`,`dob`,`email`,`contact`,`p_address`,`c_address`,`pincode`,`institute`,`dept`,`designation`,`doj`,`basic_salary`,`status`,`image`) values 
(101,'aaradhy','sharma','','05/05/1995','aaradhy@gmail.com','8602386226','somewhere in world','somewhere in world','452009','IIST','CSE','Assosiate Professor','29/07/2019',40000,'Permanent',NULL),
(102,'Dev','sharma','','05/05/1995','dev@gmail.com','9893198938','Indore','Indore','452001','IIST','IT','Principal','29/07/2019',90000,'Permanent',NULL),
(103,'Lalita','Rawal','','10/07/1966','lalita@gmail.com','987654321','somewhere on earth','somewhere on earth','452009','IIP','B2','Professor','10/10/2010',50000,'Permanent',NULL),
(104,'Ninja','Warrior','','26/09/2020','ninjahasnoid@gmail.com','9977101888','Shaolin Temple','Shaolin Temple','452020','Transport','Ambulance','None','27/09/2020',20000,'Contract',NULL);

/*Table structure for table `flight` */

DROP TABLE IF EXISTS `flight`;

CREATE TABLE `flight` (
  `fli_name` varchar(30) DEFAULT NULL,
  `fli_type` varchar(30) DEFAULT NULL,
  `flight_no` varchar(30) NOT NULL,
  `source` varchar(20) DEFAULT NULL,
  `destination` varchar(20) DEFAULT NULL,
  `de_date` varchar(12) DEFAULT NULL,
  `ar_date` varchar(12) DEFAULT NULL,
  `de_time` varchar(12) DEFAULT NULL,
  `ar_time` varchar(12) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `a_seat` int(10) DEFAULT NULL,
  PRIMARY KEY (`flight_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `flight` */

insert  into `flight`(`fli_name`,`fli_type`,`flight_no`,`source`,`destination`,`de_date`,`ar_date`,`de_time`,`ar_time`,`price`,`a_seat`) values 
('Air India','AirBus 380','1230','Mumbai','New York','03/11/2020','04/11/2020','16:00','19:00',200,30),
('United Airlines','AirBus 380','4510','New York','London','02/11/2020','03/11/2020','21:00','05:35',630,28),
('Air China','Boeing 777','4560','Tokyo','Mumbai','31/10/2020','02/11/2020','22:30','00:20',1505,45),
('Emirates','AirBus 380','7890','Boston','New York','03/11/2020','03/11/2020','04:00','05:20',850,30);

/*Table structure for table `salary` */

DROP TABLE IF EXISTS `salary`;

CREATE TABLE `salary` (
  `employ_id` int(11) NOT NULL,
  `name_first` varchar(20) DEFAULT NULL,
  `name_last` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`employ_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `salary` */

/*Table structure for table `userlog` */

DROP TABLE IF EXISTS `userlog`;

CREATE TABLE `userlog` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(20) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `empid` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `userlog` */

insert  into `userlog`(`Id`,`Username`,`Password`,`empid`) values 
(1,'aaradhy_sharma','cool',101),
(2,'dev','not_cool',102),
(3,'lalita','12345',103),
(4,'admin','admin',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
