-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.18


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema `student vigilience system`
--

CREATE DATABASE IF NOT EXISTS `student vigilience system`;
USE `student vigilience system`;

--
-- Temporary table structure for view `login_view`
--
DROP TABLE IF EXISTS `login_view`;
DROP VIEW IF EXISTS `login_view`;
CREATE TABLE `login_view` (
  `username` varchar(10),
  `pass` varchar(45),
  `usertype` varchar(10)
);

--
-- Definition of table `4a_attendance`
--

DROP TABLE IF EXISTS `4a_attendance`;
CREATE TABLE `4a_attendance` (
  `date` varchar(10) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `s04109` varchar(10) DEFAULT '0',
  `s04102` varchar(10) DEFAULT '0',
  `s04103` varchar(10) DEFAULT '0',
  `s04104` varchar(10) DEFAULT '0',
  `suraj` varchar(10) DEFAULT '0',
  `s04105` varchar(10) DEFAULT '0',
  `s04110` varchar(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `4a_attendance`
--

/*!40000 ALTER TABLE `4a_attendance` DISABLE KEYS */;
INSERT INTO `4a_attendance` (`date`,`subject`,`s04109`,`s04102`,`s04103`,`s04104`,`suraj`,`s04105`,`s04110`) VALUES 
 ('2015/12/11','marathi','1','1','1','1','1','1','1'),
 ('2015/12/11','maths','1','1','1','1','1','1','1'),
 ('2015/12/11','science','1','1','1','1','1','1','1'),
 ('2015/12/11','english','1','1','1','1','1','1','1'),
 ('2015/12/11','history','1','1','1','1','1','1','1'),
 ('2015/12/11','geography','1','1','1','1','1','1','1'),
 ('2015/12/12','marathi','1','1','1','1','1','1','1'),
 ('2015/12/14','maths','1','1','1','1','1','1','1'),
 ('2015/03/20','geography','1','1','1','1','0','0','1'),
 ('2015-03-18','marathi','1','1','1','0','1','0','1'),
 ('2015-04-08','marathi','0','0','0','0','0','0','0');
/*!40000 ALTER TABLE `4a_attendance` ENABLE KEYS */;


--
-- Definition of table `5a_attendance`
--

DROP TABLE IF EXISTS `5a_attendance`;
CREATE TABLE `5a_attendance` (
  `date` varchar(10) NOT NULL,
  `subject` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `5a_attendance`
--

/*!40000 ALTER TABLE `5a_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `5a_attendance` ENABLE KEYS */;


--
-- Definition of table `5b_attendance`
--

DROP TABLE IF EXISTS `5b_attendance`;
CREATE TABLE `5b_attendance` (
  `date` varchar(10) NOT NULL,
  `subject` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `5b_attendance`
--

/*!40000 ALTER TABLE `5b_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `5b_attendance` ENABLE KEYS */;


--
-- Definition of table `5c_attendance`
--

DROP TABLE IF EXISTS `5c_attendance`;
CREATE TABLE `5c_attendance` (
  `date` varchar(10) NOT NULL,
  `subject` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `5c_attendance`
--

/*!40000 ALTER TABLE `5c_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `5c_attendance` ENABLE KEYS */;


--
-- Definition of table `6a_attendance`
--

DROP TABLE IF EXISTS `6a_attendance`;
CREATE TABLE `6a_attendance` (
  `date` varchar(10) NOT NULL,
  `subject` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `6a_attendance`
--

/*!40000 ALTER TABLE `6a_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `6a_attendance` ENABLE KEYS */;


--
-- Definition of table `6b_attendance`
--

DROP TABLE IF EXISTS `6b_attendance`;
CREATE TABLE `6b_attendance` (
  `date` varchar(10) NOT NULL,
  `subject` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `6b_attendance`
--

/*!40000 ALTER TABLE `6b_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `6b_attendance` ENABLE KEYS */;


--
-- Definition of table `6c_attendance`
--

DROP TABLE IF EXISTS `6c_attendance`;
CREATE TABLE `6c_attendance` (
  `date` varchar(10) NOT NULL,
  `subject` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `6c_attendance`
--

/*!40000 ALTER TABLE `6c_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `6c_attendance` ENABLE KEYS */;


--
-- Definition of table `7a_attendance`
--

DROP TABLE IF EXISTS `7a_attendance`;
CREATE TABLE `7a_attendance` (
  `date` varchar(10) NOT NULL,
  `subject` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `7a_attendance`
--

/*!40000 ALTER TABLE `7a_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `7a_attendance` ENABLE KEYS */;


--
-- Definition of table `7b_attendance`
--

DROP TABLE IF EXISTS `7b_attendance`;
CREATE TABLE `7b_attendance` (
  `date` varchar(10) NOT NULL,
  `subject` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `7b_attendance`
--

/*!40000 ALTER TABLE `7b_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `7b_attendance` ENABLE KEYS */;


--
-- Definition of table `7c_attendance`
--

DROP TABLE IF EXISTS `7c_attendance`;
CREATE TABLE `7c_attendance` (
  `date` varchar(10) NOT NULL,
  `subject` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `7c_attendance`
--

/*!40000 ALTER TABLE `7c_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `7c_attendance` ENABLE KEYS */;


--
-- Definition of table `8a_attendance`
--

DROP TABLE IF EXISTS `8a_attendance`;
CREATE TABLE `8a_attendance` (
  `date` varchar(10) NOT NULL,
  `subject` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `8a_attendance`
--

/*!40000 ALTER TABLE `8a_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `8a_attendance` ENABLE KEYS */;


--
-- Definition of table `8b_attendance`
--

DROP TABLE IF EXISTS `8b_attendance`;
CREATE TABLE `8b_attendance` (
  `date` varchar(10) NOT NULL,
  `subject` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `8b_attendance`
--

/*!40000 ALTER TABLE `8b_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `8b_attendance` ENABLE KEYS */;


--
-- Definition of table `8c_attendance`
--

DROP TABLE IF EXISTS `8c_attendance`;
CREATE TABLE `8c_attendance` (
  `date` varchar(10) NOT NULL,
  `subject` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `8c_attendance`
--

/*!40000 ALTER TABLE `8c_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `8c_attendance` ENABLE KEYS */;


--
-- Definition of table `add_subject`
--

DROP TABLE IF EXISTS `add_subject`;
CREATE TABLE `add_subject` (
  `std` varchar(2) NOT NULL,
  `division` varchar(2) NOT NULL,
  `sub_code` varchar(10) NOT NULL,
  `sub_name` varchar(20) NOT NULL,
  PRIMARY KEY (`sub_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_subject`
--

/*!40000 ALTER TABLE `add_subject` DISABLE KEYS */;
INSERT INTO `add_subject` (`std`,`division`,`sub_code`,`sub_name`) VALUES 
 ('4','A','sub001','marathi'),
 ('4','A','sub002','maths'),
 ('4','A','sub003','english'),
 ('4','A','sub004','science'),
 ('4','A','sub005','history'),
 ('4','A','sub006','geography');
/*!40000 ALTER TABLE `add_subject` ENABLE KEYS */;


--
-- Definition of table `architect`
--

DROP TABLE IF EXISTS `architect`;
CREATE TABLE `architect` (
  `standard` varchar(1) NOT NULL,
  `division` varchar(1) NOT NULL,
  `sub_no` int(1) unsigned NOT NULL,
  `total_strength` int(2) unsigned NOT NULL,
  `year` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `architect`
--

/*!40000 ALTER TABLE `architect` DISABLE KEYS */;
INSERT INTO `architect` (`standard`,`division`,`sub_no`,`total_strength`,`year`) VALUES 
 ('4','C',6,10,'2015'),
 ('4','A',6,10,'2015'),
 ('5','A',6,10,'2015');
/*!40000 ALTER TABLE `architect` ENABLE KEYS */;


--
-- Definition of table `end_sem1`
--

DROP TABLE IF EXISTS `end_sem1`;
CREATE TABLE `end_sem1` (
  `sid` varchar(10) NOT NULL,
  `std` int(10) unsigned DEFAULT NULL,
  `div` varchar(4) DEFAULT NULL,
  `english` int(10) unsigned DEFAULT NULL,
  `marathi` int(10) unsigned DEFAULT NULL,
  `history` int(10) unsigned DEFAULT NULL,
  `geography` int(10) unsigned DEFAULT NULL,
  `maths` int(10) unsigned DEFAULT NULL,
  `science` int(10) unsigned DEFAULT NULL,
  `total` int(100) unsigned NOT NULL DEFAULT '0',
  `percentage` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `end_sem1`
--

/*!40000 ALTER TABLE `end_sem1` DISABLE KEYS */;
INSERT INTO `end_sem1` (`sid`,`std`,`div`,`english`,`marathi`,`history`,`geography`,`maths`,`science`,`total`,`percentage`) VALUES 
 ('s04102',4,'A',0,0,0,0,0,0,0,0),
 ('s04103',4,'A',0,0,0,0,0,0,0,0),
 ('s04104',4,'A',0,0,0,0,0,0,0,0),
 ('s04105',4,'A',0,0,0,0,0,0,0,0),
 ('s04109',4,'A',0,0,0,0,0,0,0,0),
 ('s04110',4,'A',0,0,0,0,0,0,0,0),
 ('suraj',4,'A',0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `end_sem1` ENABLE KEYS */;


--
-- Definition of table `end_sem2`
--

DROP TABLE IF EXISTS `end_sem2`;
CREATE TABLE `end_sem2` (
  `sid` varchar(10) NOT NULL,
  `std` int(10) unsigned DEFAULT NULL,
  `div` varchar(4) DEFAULT NULL,
  `english` int(10) unsigned DEFAULT NULL,
  `marathi` int(10) unsigned DEFAULT NULL,
  `history` int(10) unsigned DEFAULT NULL,
  `geography` int(10) unsigned DEFAULT NULL,
  `maths` int(10) unsigned DEFAULT NULL,
  `science` int(10) unsigned DEFAULT NULL,
  `total` int(100) unsigned NOT NULL DEFAULT '0',
  `percentage` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `end_sem2`
--

/*!40000 ALTER TABLE `end_sem2` DISABLE KEYS */;
INSERT INTO `end_sem2` (`sid`,`std`,`div`,`english`,`marathi`,`history`,`geography`,`maths`,`science`,`total`,`percentage`) VALUES 
 ('s04102',4,'A',0,0,0,0,0,0,0,0),
 ('s04103',4,'A',0,0,0,0,0,0,0,0),
 ('s04104',4,'A',0,0,0,0,0,0,0,0),
 ('s04105',4,'A',0,0,0,0,0,0,0,0),
 ('s04109',4,'A',0,0,0,0,0,0,0,0),
 ('s04110',4,'A',0,0,0,0,0,0,0,0),
 ('suraj',4,'A',0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `end_sem2` ENABLE KEYS */;


--
-- Definition of table `id_table`
--

DROP TABLE IF EXISTS `id_table`;
CREATE TABLE `id_table` (
  `SID` varchar(10) NOT NULL,
  `STANDARD` varchar(1) NOT NULL,
  `DIVISION` varchar(1) NOT NULL,
  PRIMARY KEY (`SID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `id_table`
--

/*!40000 ALTER TABLE `id_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `id_table` ENABLE KEYS */;


--
-- Definition of table `stud_personal_db`
--

DROP TABLE IF EXISTS `stud_personal_db`;
CREATE TABLE `stud_personal_db` (
  `SID` varchar(10) NOT NULL,
  `FIRST_NAME` varchar(45) DEFAULT NULL,
  `MID_NAME` varchar(45) DEFAULT NULL,
  `MOTH_NAME` varchar(45) DEFAULT NULL,
  `LAST_NAME` varchar(45) DEFAULT NULL,
  `DOB` varchar(10) DEFAULT NULL,
  `STD` varchar(10) DEFAULT NULL,
  `STUD_EMAIL` varchar(25) DEFAULT NULL,
  `PARENT_EMAIL` varchar(45) DEFAULT NULL,
  `STUD_MOBILE` varchar(13) DEFAULT NULL,
  `PARENT_MOBILE` varchar(13) DEFAULT NULL,
  `ADDRESS` varchar(100) DEFAULT NULL,
  `DIVISION` varchar(10) DEFAULT NULL,
  `DATE_OF_ADM` date DEFAULT NULL,
  `PASSWORD` varchar(45) DEFAULT NULL,
  `usertype` varchar(10) DEFAULT NULL,
  `userstatus` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stud_personal_db`
--

/*!40000 ALTER TABLE `stud_personal_db` DISABLE KEYS */;
INSERT INTO `stud_personal_db` (`SID`,`FIRST_NAME`,`MID_NAME`,`MOTH_NAME`,`LAST_NAME`,`DOB`,`STD`,`STUD_EMAIL`,`PARENT_EMAIL`,`STUD_MOBILE`,`PARENT_MOBILE`,`ADDRESS`,`DIVISION`,`DATE_OF_ADM`,`PASSWORD`,`usertype`,`userstatus`) VALUES 
 ('s04109','suraj','vasant','shobha','dev','1993/11/21','4','s@gmail.com','parent@gmail.com','1234567890','8421283074','suraj','A','2015-03-20','gcoea','student','active'),
 ('s04102','pramod','arvind','savita','nkt','1993/09/20','4','yog@gmail.com','parent@gmail.com','1234567890','8421283074','amt','A','2015-03-20','','student','active'),
 ('s04103','nikhil','ravi','savita','mahalle','1993/12/12','4','nik@gmail.com','parent@gmail.com','1234567890','9503700020','amt','A','2015-03-20','gcoea','student','active'),
 ('s04104','tejas','ravi','savita','wasule','1993/12/12','4','nik@gmail.com','parent@gmail.com','1234567890','7276822923','amt','A','2015-03-20','gcoea','student','active'),
 ('suraj','tejas','ravi','savita','dev','1993/12/21','4','nik@gmail.com','parent@gmail.com','1234567890','8390245124','amt','A','2015-03-20','gcoea','student','active'),
 ('s04105','shivam','raja','savita','pandit','1993/12/21','4','nik@gmail.com','parent@gmail.com','1234567890','8149647893','amt','A','2015-03-20','gcoea','student','active'),
 ('s04110','vikas','ask','ashwini','kul','1993/12/21','4','nik@gmail.com','parent@gmail.com','1234567890','9175971588','amt','A','2015-03-20','gcoea','student','active');
/*!40000 ALTER TABLE `stud_personal_db` ENABLE KEYS */;


--
-- Definition of table `sub_allocation`
--

DROP TABLE IF EXISTS `sub_allocation`;
CREATE TABLE `sub_allocation` (
  `TID` varchar(10) NOT NULL,
  `sub_code` varchar(10) NOT NULL,
  `sub_name` varchar(20) NOT NULL,
  `class` varchar(10) NOT NULL,
  `division` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_allocation`
--

/*!40000 ALTER TABLE `sub_allocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `sub_allocation` ENABLE KEYS */;


--
-- Definition of table `teacher_personal_db`
--

DROP TABLE IF EXISTS `teacher_personal_db`;
CREATE TABLE `teacher_personal_db` (
  `TID` varchar(10) NOT NULL,
  `Password` varchar(20) NOT NULL DEFAULT 'xyz789',
  `userstatus` varchar(10) NOT NULL DEFAULT 'active',
  `usertype` varchar(10) NOT NULL DEFAULT 'teacher',
  `name` varchar(45) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact_no` varchar(10) NOT NULL,
  PRIMARY KEY (`TID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_personal_db`
--

/*!40000 ALTER TABLE `teacher_personal_db` DISABLE KEYS */;
INSERT INTO `teacher_personal_db` (`TID`,`Password`,`userstatus`,`usertype`,`name`,`email`,`contact_no`) VALUES 
 ('a001','admin','active','admin','gcoea','gcoea@gmail.com','1111111111'),
 ('t001','gcoea','active','teacher','R.S.Mawale','rsmawale@gmail.com','9766965234'),
 ('t002','gcoea','active','teacher','b.wakode','bvwakode@gmail.com','9960963600'),
 ('t003','gcoea','active','teacher','A.W.Bhade','bhademam@gmail.com','9763432166'),
 ('t004','gcoea','active','teacher','A.R.Khobragade','arkhobragadesir@gmail.com','7276626277'),
 ('t005','gcoea','active','teacher','S.R.Wankhade','srwankhade@gmail.com','1234567890'),
 ('t006','gcoea','active','teacher','A.D.Wankhade','adwankhade','9876543210'),
 ('t007','yoyo','active','teacher','yoyo','adwankhade@gmail.com','5235235235');
/*!40000 ALTER TABLE `teacher_personal_db` ENABLE KEYS */;


--
-- Definition of table `teacher_sub`
--

DROP TABLE IF EXISTS `teacher_sub`;
CREATE TABLE `teacher_sub` (
  `TID` varchar(10) NOT NULL,
  `sub_code` varchar(10) NOT NULL,
  `sub_name` varchar(45) NOT NULL,
  `class` varchar(10) NOT NULL,
  `division` varchar(2) NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_sub`
--

/*!40000 ALTER TABLE `teacher_sub` DISABLE KEYS */;
INSERT INTO `teacher_sub` (`TID`,`sub_code`,`sub_name`,`class`,`division`) VALUES 
 ('t001','sub001','marathi','4','A'),
 ('t002','sub002','maths','4','A'),
 ('t003','sub003','english','4','A'),
 ('t004','sub004','science','4','A'),
 ('t005','sub005','history','4','A'),
 ('t006','sub006','geography','4','A');
/*!40000 ALTER TABLE `teacher_sub` ENABLE KEYS */;


--
-- Definition of table `ut1`
--

DROP TABLE IF EXISTS `ut1`;
CREATE TABLE `ut1` (
  `sid` varchar(10) NOT NULL,
  `std` int(10) unsigned DEFAULT NULL,
  `div` varchar(10) DEFAULT NULL,
  `english` int(10) unsigned DEFAULT NULL,
  `marathi` int(10) unsigned DEFAULT NULL,
  `history` int(10) unsigned DEFAULT NULL,
  `geography` int(10) unsigned DEFAULT NULL,
  `maths` int(10) unsigned DEFAULT NULL,
  `science` int(10) unsigned DEFAULT NULL,
  `total` int(100) unsigned DEFAULT '0',
  `percentage` double DEFAULT '0',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ut1`
--

/*!40000 ALTER TABLE `ut1` DISABLE KEYS */;
INSERT INTO `ut1` (`sid`,`std`,`div`,`english`,`marathi`,`history`,`geography`,`maths`,`science`,`total`,`percentage`) VALUES 
 ('s04102',4,'A',11,11,0,0,8,0,30,0),
 ('s04103',4,'A',12,11,0,0,7,0,30,0),
 ('s04104',4,'A',13,11,0,0,9,0,33,0),
 ('s04105',4,'A',9,11,0,0,10,0,30,0),
 ('s04109',4,'A',11,11,0,0,9,0,31,0),
 ('s04110',4,'A',8,11,0,0,11,0,30,0),
 ('suraj',4,'A',10,1,0,0,6,0,17,0);
/*!40000 ALTER TABLE `ut1` ENABLE KEYS */;


--
-- Definition of table `ut2`
--

DROP TABLE IF EXISTS `ut2`;
CREATE TABLE `ut2` (
  `sid` varchar(10) NOT NULL,
  `std` int(10) unsigned DEFAULT NULL,
  `div` varchar(4) DEFAULT NULL,
  `english` int(10) unsigned DEFAULT NULL,
  `marathi` int(10) unsigned DEFAULT NULL,
  `history` int(10) unsigned DEFAULT NULL,
  `geography` int(10) unsigned DEFAULT NULL,
  `maths` int(10) unsigned DEFAULT NULL,
  `science` int(10) unsigned DEFAULT NULL,
  `total` int(100) unsigned NOT NULL DEFAULT '0',
  `percentage` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ut2`
--

/*!40000 ALTER TABLE `ut2` DISABLE KEYS */;
INSERT INTO `ut2` (`sid`,`std`,`div`,`english`,`marathi`,`history`,`geography`,`maths`,`science`,`total`,`percentage`) VALUES 
 ('s04102',4,'A',0,11,0,0,0,0,11,0),
 ('s04103',4,'A',0,10,0,0,0,0,10,0),
 ('s04104',4,'A',0,13,0,0,0,0,13,0),
 ('s04105',4,'A',0,11,0,0,0,0,11,0),
 ('s04109',4,'A',0,12,0,0,0,0,12,0),
 ('s04110',4,'A',0,8,0,0,0,0,8,0),
 ('suraj',4,'A',0,14,0,0,0,0,14,0);
/*!40000 ALTER TABLE `ut2` ENABLE KEYS */;


--
-- Definition of view `login_view`
--

DROP TABLE IF EXISTS `login_view`;
DROP VIEW IF EXISTS `login_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `login_view` AS (select `teacher_personal_db`.`TID` AS `username`,`teacher_personal_db`.`Password` AS `pass`,`teacher_personal_db`.`usertype` AS `usertype` from `teacher_personal_db` where (`teacher_personal_db`.`userstatus` = 'active')) union (select `stud_personal_db`.`SID` AS `username`,`stud_personal_db`.`PASSWORD` AS `pass`,`stud_personal_db`.`usertype` AS `usertype` from `stud_personal_db` where (`stud_personal_db`.`userstatus` = 'active'));



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
