/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.36 : Database - myschool
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`myschool` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `myschool`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(200) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(200) DEFAULT NULL COMMENT '用户id外键',
  `addressDesc` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  KEY `PK_address_user_id` (`user_id`),
  CONSTRAINT `PK_address_user_id` FOREIGN KEY (`user_id`) REFERENCES `stu_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `address` */

insert  into `address`(`id`,`user_id`,`addressDesc`) values (1,1,'湖南'),(2,2,'浙江'),(3,3,'北京'),(4,4,'杭州');

/*Table structure for table `class_info` */

DROP TABLE IF EXISTS `class_info`;

CREATE TABLE `class_info` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `class_info` */

insert  into `class_info`(`id`,`name`) values (1,'红星1'),(2,'银河1'),(3,'世界1');

/*Table structure for table `grade` */

DROP TABLE IF EXISTS `grade`;

CREATE TABLE `grade` (
  `gradeID` int(4) NOT NULL AUTO_INCREMENT,
  `gradeName` varchar(50) DEFAULT NULL,
  KEY `gradeID` (`gradeID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `grade` */

insert  into `grade`(`gradeID`,`gradeName`) values (1,'MYSQL'),(2,'C#'),(3,'JAVA'),(4,'MYSQL'),(5,'C#'),(6,'JAVA'),(7,'MYSQL1'),(8,'C#2'),(9,'JAVA3');

/*Table structure for table `result` */

DROP TABLE IF EXISTS `result`;

CREATE TABLE `result` (
  `studentNo` int(4) NOT NULL COMMENT '学号',
  `subjectNo` int(4) NOT NULL COMMENT '课程编号',
  `examDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '考试日期',
  `studentResult` int(4) NOT NULL COMMENT '考试成绩'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `result` */

/*Table structure for table `stu_info` */

DROP TABLE IF EXISTS `stu_info`;

CREATE TABLE `stu_info` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `stu_no` int(5) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `class_id` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `PK_class_id` (`class_id`),
  CONSTRAINT `PK_class_id` FOREIGN KEY (`class_id`) REFERENCES `class_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `stu_info` */

insert  into `stu_info`(`id`,`stu_no`,`name`,`class_id`) values (1,201701,'陶奕希',1),(2,201702,'周芷莹 ',2),(3,201703,'刘戴恩',3),(4,201704,'钟奕儿',2);

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `studentNo` int(4) NOT NULL AUTO_INCREMENT COMMENT '学号',
  `loginPwd` varchar(20) NOT NULL COMMENT '密码',
  `studentName` varchar(50) NOT NULL COMMENT '姓名',
  `sex` char(2) NOT NULL COMMENT '性别',
  `gradeID` int(4) NOT NULL COMMENT '年级编号',
  `phone` varchar(50) DEFAULT NULL COMMENT '电话',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `bornDate` datetime DEFAULT NULL COMMENT '出生日期',
  `email` varchar(50) DEFAULT NULL COMMENT '邮件账号',
  `identityCard` varchar(18) DEFAULT NULL COMMENT '身份证号',
  `money` int(20) DEFAULT NULL,
  PRIMARY KEY (`studentNo`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`studentNo`,`loginPwd`,`studentName`,`sex`,`gradeID`,`phone`,`address`,`bornDate`,`email`,`identityCard`,`money`) values (1,'1','农立祥','男',1,'13202619256','广州','2017-10-30 14:49:44','22@qq.com','450821198505201234',10000),(2,'2','22','22',2,'2','2','2017-11-15 14:52:27','2','2',20000),(3,'3','农立祥','男',1,'13202619256','广州','2017-10-30 14:49:44','22@qq.com','450821198505201234',NULL),(4,'4','22','22',2,'2','2','2017-11-15 14:52:27','2','2',NULL),(5,'5','农立祥','男',1,'13202619256','广州','2017-10-30 14:49:44','22@qq.com','450821198505201234',NULL),(6,'6','22','22',2,'2','2','2017-11-15 14:52:27','2','2',NULL),(7,'7','农立祥','男',1,'13202619256','广州','2017-10-30 14:49:44','22@qq.com','450821198505201234',NULL),(8,'8','农立祥','男',1,'13202619256','广州','2017-10-30 14:49:44','22@qq.com','450821198505201234',NULL),(9,'9','农立祥','男',1,'13202619256','广州','2017-10-30 14:49:44','22@qq.com','450821198505201234',NULL),(10,'10','农立祥','男',1,'13202619256','广州','2017-10-30 14:49:44','22@qq.com','450821198505201234',NULL),(11,'11','农立祥','男',1,'13202619256','广州','2017-10-30 14:49:44','22@qq.com','450821198505201234',NULL),(12,'12','农立祥','男',1,'13202619256','广州','2017-10-30 14:49:44','22@qq.com','450821198505201234',NULL),(13,'13','农立祥','男',1,'13202619256','广州','2017-10-30 14:49:44','22@qq.com','450821198505201234',NULL),(14,'14','农立祥','男',1,'13202619256','广州','2017-10-30 14:49:44','22@qq.com','450821198505201234',NULL),(15,'15','农立祥','男',1,'13202619256','广州','2017-10-30 14:49:44','22@qq.com','450821198505201234',NULL),(16,'16','农立祥','男',1,'13202619256','广州','2017-10-30 14:49:44','22@qq.com','450821198505201234',NULL),(17,'17','农立祥','男',1,'13202619256','广州','2017-10-30 14:49:44','22@qq.com','450821198505201234',NULL),(18,'18','农立祥','男',1,'13202619256','广州','2017-10-30 14:49:44','22@qq.com','450821198505201234',NULL),(19,'19','农立祥','男',1,'13202619256','广州','2017-10-30 14:49:44','22@qq.com','450821198505201234',NULL),(20,'20','农立祥','男',1,'13202619256','广州','2017-10-30 14:49:44','22@qq.com','450821198505201234',NULL),(21,'123','农立祥','男',1,'13202619256','广州','2017-10-30 14:49:44','22@qq.com','450821198505201234',NULL),(22,'123','农立祥','男',1,'13202619256','广州','2017-10-30 14:49:44','22@qq.com','450821198505201234',NULL),(23,'123','农立祥','男',1,'13202619256','广州','2017-10-30 14:49:44','22@qq.com','450821198505201234',NULL),(24,'123','农立祥','男',1,'13202619256','广州','2017-10-30 14:49:44','22@qq.com','450821198505201234',NULL),(25,'123','农立祥','男',1,'13202619256','广州','2017-10-30 14:49:44','22@qq.com','450821198505201234',NULL),(26,'123','农立祥','男',1,'13202619256','广州','2017-10-30 14:49:44','22@qq.com','450821198505201234',NULL);

/*Table structure for table `subject` */

DROP TABLE IF EXISTS `subject`;

CREATE TABLE `subject` (
  `subjectNo` int(4) NOT NULL AUTO_INCREMENT COMMENT '课程编号',
  `subjectName` varchar(50) DEFAULT NULL COMMENT '课程名称',
  `classHour` int(4) DEFAULT NULL COMMENT '学时',
  `gradeID` int(4) DEFAULT NULL COMMENT '年级编号',
  PRIMARY KEY (`subjectNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `subject` */

/*Table structure for table `test` */

DROP TABLE IF EXISTS `test`;

CREATE TABLE `test` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `age` int(20) DEFAULT NULL,
  `CREATEDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `test` */

insert  into `test`(`id`,`name`,`age`,`CREATEDATE`) values (1,'1',1,'2017-11-24 09:39:11'),(2,'在',20,'2017-11-07 09:39:25'),(3,'三',25,'2017-11-15 09:39:42'),(4,'四',5,'2017-11-08 09:39:45');

/* Procedure structure for procedure `proc1` */

/*!50003 DROP PROCEDURE IF EXISTS  `proc1` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `proc1`()
SELECT * FROM student */$$
DELIMITER ;

/* Procedure structure for procedure `TL_GetDate` */

/*!50003 DROP PROCEDURE IF EXISTS  `TL_GetDate` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `TL_GetDate`(OUT dates DATE, num INT)
BEGIN
	
	SET dates =  IF(num=1,CURDATE(),DATE_SUB(CURDATE(),INTERVAL 1 DAY));
	SET dates =  IF(num=-1,DATE_SUB(CURDATE(),INTERVAL 1 DAY),CURDATE());	
	SET dates =  IF(num <> 1 AND num <> -1,"00-00-00",dates);	
	
END */$$
DELIMITER ;

/*Table structure for table `view_student` */

DROP TABLE IF EXISTS `view_student`;

/*!50001 DROP VIEW IF EXISTS `view_student` */;
/*!50001 DROP TABLE IF EXISTS `view_student` */;

/*!50001 CREATE TABLE  `view_student`(
 `studentNo` int(4) ,
 `loginPwd` varchar(20) ,
 `studentName` varchar(50) ,
 `sex` char(2) ,
 `gradeID` int(4) ,
 `phone` varchar(50) ,
 `address` varchar(255) ,
 `bornDate` datetime ,
 `email` varchar(50) ,
 `identityCard` varchar(18) 
)*/;

/*View structure for view view_student */

/*!50001 DROP TABLE IF EXISTS `view_student` */;
/*!50001 DROP VIEW IF EXISTS `view_student` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_student` AS select `student`.`studentNo` AS `studentNo`,`student`.`loginPwd` AS `loginPwd`,`student`.`studentName` AS `studentName`,`student`.`sex` AS `sex`,`student`.`gradeID` AS `gradeID`,`student`.`phone` AS `phone`,`student`.`address` AS `address`,`student`.`bornDate` AS `bornDate`,`student`.`email` AS `email`,`student`.`identityCard` AS `identityCard` from `student` */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
