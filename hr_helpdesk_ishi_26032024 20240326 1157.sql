-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.11-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema hr_helpdesk
--

CREATE DATABASE IF NOT EXISTS hr_helpdesk;
USE hr_helpdesk;

--
-- Definition of table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `emp_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(45) NOT NULL,
  `emp_mail` varchar(45) NOT NULL,
  `emp_username` varchar(45) NOT NULL,
  `emp_password` varchar(45) NOT NULL,
  `emp_role` varchar(45) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` (`emp_id`,`emp_name`,`emp_mail`,`emp_username`,`emp_password`,`emp_role`) VALUES 
 (1,'Bill ','bill@gmail.com','chris','chrisbill','hr'),
 (2,'Hamal Krishna','hamal@gmail.com','hamal','hamal@33','employee'),
 (3,'Ishika Trony','ishika@gmailcom','ishika','ishika03','hr'),
 (4,'Fathima Siraj','fathima@gmail.com','fathima','fathima04','employee'),
 (5,'Sreeyukta KS','sree@gmail.com','sree','sree051','admin'),
 (6,'Ribin Raju','ribin@gmail.com','ribin','ribin06','employee');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;


--
-- Definition of table `ticketdetails`
--

DROP TABLE IF EXISTS `ticketdetails`;
CREATE TABLE `ticketdetails` (
  `ticket_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `emp_id` int(10) unsigned NOT NULL,
  `ticket_date` varchar(45) NOT NULL,
  `ticket_catogery` varchar(45) NOT NULL,
  `ticket_description` text NOT NULL,
  `ticket_solution` text,
  PRIMARY KEY (`ticket_id`),
  KEY `emp_id` (`emp_id`),
  CONSTRAINT `emp_id` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ticketdetails`
--

/*!40000 ALTER TABLE `ticketdetails` DISABLE KEYS */;
INSERT INTO `ticketdetails` (`ticket_id`,`emp_id`,`ticket_date`,`ticket_catogery`,`ticket_description`,`ticket_solution`) VALUES 
 (1,2,'2024-03-02','Finance','Regarding pf','solution  yet to be given'),
 (2,2,'2024-03-08','Finance','pf required.','Double check your documents and eligibility if claim is rejected'),
 (3,2,'2024-03-08','hr','hr and technical training starting date?','It will start on 05/04/2024.'),
 (4,2,'2024-03-07','hr','i have already taken 5 days rh, is it possible to get 2 more days bcz of emergency.','Will have to discuss that with your mentor. Let me look upon the matter.'),
 (5,6,'2024-03-25','legal','want to know about EEO in my domain','detailed brochure is available in company policies'),
 (6,4,'2024-03-21','information technology','Doubts regarding angular libraries and functions in the project working on','give detailed description about the library working on');
/*!40000 ALTER TABLE `ticketdetails` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
