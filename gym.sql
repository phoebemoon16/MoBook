-- MySQL dump 10.10
--
-- Host: localhost    Database: gym
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `gym_card`
--

DROP TABLE IF EXISTS `gym_card`;
CREATE TABLE `gym_card` (
  `id` int(11) NOT NULL auto_increment,
  `beginTime` datetime default NULL,
  `cardNo` varchar(255) default NULL,
  `endTime` datetime default NULL,
  `dict_level` int(11) default NULL,
  `amount` double default NULL,
  `bookName` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK8BD47F14E3AFEEF0` (`dict_level`),
  CONSTRAINT `FK8BD47F14E3AFEEF0` FOREIGN KEY (`dict_level`) REFERENCES `sys_dict` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gym_card`
--


/*!40000 ALTER TABLE `gym_card` DISABLE KEYS */;
LOCK TABLES `gym_card` WRITE;
INSERT INTO `gym_card` VALUES (21,'2016-09-08 00:00:00','20142501056','2018-12-13 00:00:00',3,199,'设计模式'),(22,'2016-07-04 00:00:00','20142501015','2017-07-21 00:00:00',3,21,'系统架构'),(23,'2016-07-03 00:00:00','20142501065','2018-07-05 00:00:00',NULL,213,'天线宝宝（全集）'),(24,'2016-07-25 00:00:00','20142501091','2018-05-16 00:00:00',NULL,12,'大数据'),(28,'2016-06-30 00:00:00','20142501093','2019-07-18 00:00:00',NULL,200,'软件工程');
UNLOCK TABLES;
/*!40000 ALTER TABLE `gym_card` ENABLE KEYS */;

--
-- Table structure for table `gym_emp`
--

DROP TABLE IF EXISTS `gym_emp`;
CREATE TABLE `gym_emp` (
  `id` int(11) NOT NULL auto_increment,
  `age` int(11) default NULL,
  `imgUrl` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `dict_job` int(11) default NULL,
  `dict_sex` int(11) default NULL,
  `address` varchar(255) default NULL,
  `phone` varchar(255) default NULL,
  `dept_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK1D48F444D02C10E9` (`dict_job`),
  KEY `FK1D48F444D02C3192` (`dict_sex`),
  KEY `FK1D48F4444EDAE946` (`dept_id`),
  CONSTRAINT `FK1D48F4444EDAE946` FOREIGN KEY (`dept_id`) REFERENCES `sys_dept` (`id`),
  CONSTRAINT `FK1D48F444D02C10E9` FOREIGN KEY (`dict_job`) REFERENCES `sys_dict` (`id`),
  CONSTRAINT `FK1D48F444D02C3192` FOREIGN KEY (`dict_sex`) REFERENCES `sys_dict` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gym_emp`
--


/*!40000 ALTER TABLE `gym_emp` DISABLE KEYS */;
LOCK TABLES `gym_emp` WRITE;
INSERT INTO `gym_emp` VALUES (2,20,'/attachFiles/test/pic/201607/7013b87b8d8a42769ce4a8380cc6e137.jpg','王会会',8,2,'新疆大学北校区','18240961126',5),(3,21,'/attachFiles/test/pic/201607/89c76e97d9c64ed4a37a8f59e4fe9a7a.jpg','刘鑫',7,2,'新疆大学校本部','15026023942',6),(4,22,'/attachFiles/test/pic/201607/7013b87b8d8a42769ce4a8380cc6e137.jpg','刘鹏娟',11,2,'新疆大学校本部','15226028567',8),(5,21,'/attachFiles/test/pic/201607/25c81298f3f74e1cb5d82004bbbaa63c.jpg','王天飞',10,1,'新疆大学南校区','18240961148',11),(6,21,'/attachFiles/test/pic/201607/dc09362f179843d493225fb0299997e5.jpg','陈建秋',7,1,'新疆大学校本部','13560245387',12);
UNLOCK TABLES;
/*!40000 ALTER TABLE `gym_emp` ENABLE KEYS */;

--
-- Table structure for table `gym_goods`
--

DROP TABLE IF EXISTS `gym_goods`;
CREATE TABLE `gym_goods` (
  `id` int(11) NOT NULL auto_increment,
  `detail` varchar(255) default NULL,
  `imgUrl` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `price` varchar(255) default NULL,
  `stock` int(11) NOT NULL,
  `dict_category` int(11) default NULL,
  `bookType` varchar(255) default NULL,
  `dept_id` int(11) default NULL,
  `member_id` int(11) default NULL,
  `business_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKEEFA13D27B74B49C` (`dict_category`),
  KEY `FKEEFA13D24EDAE946` (`dept_id`),
  KEY `FKEEFA13D2594850DF` (`member_id`),
  KEY `FKEEFA13D28CDDD8CD` (`business_id`),
  CONSTRAINT `FKEEFA13D24EDAE946` FOREIGN KEY (`dept_id`) REFERENCES `sys_dept` (`id`),
  CONSTRAINT `FKEEFA13D2594850DF` FOREIGN KEY (`member_id`) REFERENCES `gym_member` (`id`),
  CONSTRAINT `FKEEFA13D27B74B49C` FOREIGN KEY (`dict_category`) REFERENCES `sys_dict` (`id`),
  CONSTRAINT `FKEEFA13D28CDDD8CD` FOREIGN KEY (`business_id`) REFERENCES `gym_emp` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gym_goods`
--


/*!40000 ALTER TABLE `gym_goods` DISABLE KEYS */;
LOCK TABLES `gym_goods` WRITE;
INSERT INTO `gym_goods` VALUES (1,'软件学院指定图书','/attachFiles/test/pic/201607/0e86296f15314ff6b333138ee438b2e3.jpg','设计模式','18',0,3,'工程类',5,11,2),(2,'软件学院指定图书','/attachFiles/test/pic/201707/d19b840cc8934861a561f7840e486772.jpg','架构','15',4,16,'软件类',5,11,NULL),(3,'有情的人终究会在一起。','/attachFiles/test/pic/201707/59f38913509042bfbfe59ef2ff5e838f.jpg','傲慢与偏见','22',3,16,'文学类',8,11,NULL),(4,'温暖的图图，让你重识孩童的天真。','/attachFiles/test/pic/201707/d96fc5ba81fd4c56ad4b618946df795d.jpg','大耳朵图图','8',2,16,'儿童类',6,11,NULL),(5,'爱情让人不顾一切。','/attachFiles/test/pic/201707/a2a5ea09e83e499aa6e36815661b0352.jpg','罗密欧与朱丽叶','25',10,16,'文学',8,11,NULL),(6,'人性究竟是怎样呢！','/attachFiles/test/pic/201707/ea80ec747d514ae2bb097a4f6dfa9108.jpg','麦尔白','30',12,17,'文学',8,11,NULL),(7,'过自己喜欢的人生。','/attachFiles/test/pic/201707/3975ba6782d6455ca2d823f1ef78f6d7.jpg','以自己喜欢的方式过一生','18',2,17,'文学类',6,NULL,NULL),(9,'管理，是企业的命脉。','/attachFiles/test/pic/201707/ab21a784b38b4377b8b0507e615c5ac2.jpg','经济管理','33',1,18,'管理类',10,NULL,NULL),(11,'软件工程指定图书','','软件工程','18',2,NULL,'软件类',5,NULL,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `gym_goods` ENABLE KEYS */;

--
-- Table structure for table `gym_lockers`
--

DROP TABLE IF EXISTS `gym_lockers`;
CREATE TABLE `gym_lockers` (
  `id` int(11) NOT NULL auto_increment,
  `bookType` varchar(255) default NULL,
  `detail` varchar(255) default NULL,
  `imgUrl` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `stock` varchar(255) default NULL,
  `dept_id` int(11) default NULL,
  `amount` double default NULL,
  `beginTime` datetime default NULL,
  `endTime` datetime default NULL,
  `no` varchar(255) default NULL,
  `member_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK209D7DD74EDAE946` (`dept_id`),
  KEY `FK209D7DD7594850DF` (`member_id`),
  CONSTRAINT `FK209D7DD74EDAE946` FOREIGN KEY (`dept_id`) REFERENCES `sys_dept` (`id`),
  CONSTRAINT `FK209D7DD7594850DF` FOREIGN KEY (`member_id`) REFERENCES `gym_member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gym_lockers`
--


/*!40000 ALTER TABLE `gym_lockers` DISABLE KEYS */;
LOCK TABLES `gym_lockers` WRITE;
INSERT INTO `gym_lockers` VALUES (1,'儿童类','童心未泯。','/GymManager/attachFiles/test/pic/201607/0e86296f15314ff6b333138ee438b2e3.jpg','大耳朵图图','3',5,NULL,NULL,NULL,NULL,NULL),(2,'文学类','我们最好的青春。','','谁的青春不迷茫','3',6,NULL,NULL,NULL,NULL,NULL),(3,'软件类','最新计算机语言设计。','/GymManager/attachFiles/test/pic/201607/080449dcf67d4a6ea6bfa38a36d0212f.jpg','linux','5',5,NULL,NULL,NULL,NULL,NULL),(4,'青春类','我们曾经的青春。','','左耳','1',6,NULL,NULL,NULL,NULL,NULL),(5,'烹饪类','做菜的标准。','','西餐基础','2',10,NULL,NULL,NULL,NULL,NULL),(6,'英语类','让你体会文学的魅力。','','飞鸟集','2',8,NULL,NULL,NULL,NULL,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `gym_lockers` ENABLE KEYS */;

--
-- Table structure for table `gym_member`
--

DROP TABLE IF EXISTS `gym_member`;
CREATE TABLE `gym_member` (
  `id` int(11) NOT NULL auto_increment,
  `age` int(11) default NULL,
  `height` double default NULL,
  `imgUrl` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `phone` varchar(255) default NULL,
  `weight` double default NULL,
  `card_id` int(11) default NULL,
  `coach_id` int(11) default NULL,
  `dict_sex` int(11) default NULL,
  `bookName` varchar(255) default NULL,
  `price` double default NULL,
  `inst_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKF9F79D9ED02C3192` (`dict_sex`),
  KEY `FKF9F79D9EEFBA0A5F` (`card_id`),
  KEY `FKF9F79D9EAE82DB3` (`coach_id`),
  KEY `FKF9F79D9E2235B34A` (`inst_id`),
  CONSTRAINT `FKF9F79D9E2235B34A` FOREIGN KEY (`inst_id`) REFERENCES `sys_inst` (`id`),
  CONSTRAINT `FKF9F79D9EAE82DB3` FOREIGN KEY (`coach_id`) REFERENCES `gym_emp` (`id`),
  CONSTRAINT `FKF9F79D9ED02C3192` FOREIGN KEY (`dict_sex`) REFERENCES `sys_dict` (`id`),
  CONSTRAINT `FKF9F79D9EEFBA0A5F` FOREIGN KEY (`card_id`) REFERENCES `gym_card` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gym_member`
--


/*!40000 ALTER TABLE `gym_member` DISABLE KEYS */;
LOCK TABLES `gym_member` WRITE;
INSERT INTO `gym_member` VALUES (11,21,12,'/attachFiles/test/pic/201607/7013b87b8d8a42769ce4a8380cc6e137.jpg','王会会','18240961126,',70,28,NULL,2,'20142501093',12,1),(18,22,172,'/attachFiles/test/pic/201607/dda9a3eb2e8f4257b6f06d2f9a806cde.jpg','刘鹏娟','15026023942',70,21,5,2,'设计模式',20,3),(21,21,12,'/attachFiles/test/pic/201607/dda9a3eb2e8f4257b6f06d2f9a806cde.jpg','刘鑫','15278562145',12,22,6,2,'傲慢与偏见',22,6),(22,2,21,'/attachFiles/test/pic/201607/37391b2d00eb40f0805ec2fee12822cc.jpg','陈建秋','15009602314',21,23,NULL,1,'大耳朵图图（全集）',8,8),(23,22,21,'/attachFiles/test/pic/201607/f2bf981b364b42adbf9e3b7ecd504244.jpg','王天飞','20142501064',12,24,NULL,1,'莎士比亚诗集',20,4);
UNLOCK TABLES;
/*!40000 ALTER TABLE `gym_member` ENABLE KEYS */;

--
-- Table structure for table `mobook_card`
--

DROP TABLE IF EXISTS `mobook_card`;
CREATE TABLE `mobook_card` (
  `id` int(11) NOT NULL auto_increment,
  `amount` double default NULL,
  `beginTime` datetime default NULL,
  `cardNo` varchar(255) default NULL,
  `endTime` datetime default NULL,
  `dict_level` int(11) default NULL,
  `bookName` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKA4BC5304E3AFEEF0` (`dict_level`),
  CONSTRAINT `FKA4BC5304E3AFEEF0` FOREIGN KEY (`dict_level`) REFERENCES `sys_dict` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mobook_card`
--


/*!40000 ALTER TABLE `mobook_card` DISABLE KEYS */;
LOCK TABLES `mobook_card` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `mobook_card` ENABLE KEYS */;

--
-- Table structure for table `share_read`
--

DROP TABLE IF EXISTS `share_read`;
CREATE TABLE `share_read` (
  `id` int(11) NOT NULL auto_increment,
  `beginTime` datetime default NULL,
  `bookName` varchar(255) default NULL,
  `bookType` varchar(255) default NULL,
  `deTail` varchar(255) default NULL,
  `endTime` datetime default NULL,
  `imgUrl` varchar(255) default NULL,
  `perName` varchar(255) default NULL,
  `stock` int(11) NOT NULL,
  `telNum` bigint(20) NOT NULL,
  `dept_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK956CD5F64EDAE946` (`dept_id`),
  CONSTRAINT `FK956CD5F64EDAE946` FOREIGN KEY (`dept_id`) REFERENCES `sys_dept` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `share_read`
--


/*!40000 ALTER TABLE `share_read` DISABLE KEYS */;
LOCK TABLES `share_read` WRITE;
INSERT INTO `share_read` VALUES (3,'2017-07-05 00:00:00','高数辅导书','辅导类','高数不用愁','2017-07-29 00:00:00','/MoBook/attachFiles/test/pic/201607/7013b87b8d8a42769ce4a8380cc6e137.jpg','王会会',5,18240961126,9),(4,'2017-06-14 00:00:00','大数据','科技类','掌握最新科技','2017-08-17 00:00:00','/GymManager/attachFiles/test/pic/201607/7013b87b8d8a42769ce4a8380cc6e137.jpg','刘鹏娟',1,150260239442,5),(5,'2017-05-23 00:00:00','红楼梦','古典','中国古典精华','2017-08-31 00:00:00','','刘星',3,15236984523,6),(6,'2017-05-24 00:00:00','平凡的世界','文学类','我们都生活在平凡的世界里','2017-09-14 00:00:00','','王天飞',5,18026547823,6),(7,'2017-07-19 00:00:00','小王子','儿童类','不要失去童心','2017-09-20 00:00:00','','陈建秋',10,15299265621,8),(8,'2017-05-10 00:00:00','计算机基础','计算机类','计算机基础原理','2017-09-12 00:00:00','','刘鑫',2,15026021456,5);
UNLOCK TABLES;
/*!40000 ALTER TABLE `share_read` ENABLE KEYS */;

--
-- Table structure for table `sys_appuser`
--

DROP TABLE IF EXISTS `sys_appuser`;
CREATE TABLE `sys_appuser` (
  `id` int(11) NOT NULL auto_increment,
  `ctime` datetime default NULL,
  `passwd` varchar(255) default NULL,
  `realName` varchar(255) default NULL,
  `status` int(11) NOT NULL,
  `uname` varchar(255) default NULL,
  `dept_id` int(11) default NULL,
  `dict_sex` int(11) default NULL,
  `roleIds` varchar(255) default NULL,
  `roleNames` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK517CB5FA4EDAE946` (`dept_id`),
  KEY `FK517CB5FAD02C3192` (`dict_sex`),
  CONSTRAINT `FK517CB5FA4EDAE946` FOREIGN KEY (`dept_id`) REFERENCES `sys_dept` (`id`),
  CONSTRAINT `FK517CB5FAD02C3192` FOREIGN KEY (`dict_sex`) REFERENCES `sys_dict` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_appuser`
--


/*!40000 ALTER TABLE `sys_appuser` DISABLE KEYS */;
LOCK TABLES `sys_appuser` WRITE;
INSERT INTO `sys_appuser` VALUES (1,'2017-07-10 11:37:39','202CB962AC59075B964B07152D234B70','超级管理员',0,'admin',7,1,'1','超级管理员'),(2,'2017-07-10 10:37:20','C4CA4238A0B923820DCC509A6F75849B','王会',0,'20142501093',5,2,'2','商家'),(3,'2017-07-10 10:37:58','74D839D98630E280DF752E8939454A6B','刘鹏娟',0,'20142501056',8,2,'4','VIP会员'),(4,'2017-07-10 10:38:32','3D890B5B2331B1729E918FDAC28CC269','刘鑫',0,'20142501063',12,2,'3','普通会员'),(6,'2017-07-10 10:39:04','C4CA4238A0B923820DCC509A6F75849B','陈建秋',0,'20142501128',6,1,'2','商家'),(7,'2017-07-10 10:39:32','C4CA4238A0B923820DCC509A6F75849B','王天飞',0,'20142501087',7,1,'4','VIP会员'),(8,'2017-07-14 12:24:09','4297F44B13955235245B2497399D7A93','凡凡',0,'20132501078',NULL,NULL,NULL,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `sys_appuser` ENABLE KEYS */;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `id` int(11) NOT NULL auto_increment,
  `dname` varchar(255) default NULL,
  `leaf` tinyint(1) default NULL,
  `sn` int(11) NOT NULL,
  `parent_id` int(11) default NULL,
  `level` int(11) default NULL,
  `note` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK74A030776D9888C1` (`parent_id`),
  CONSTRAINT `FK74A030776D9888C1` FOREIGN KEY (`parent_id`) REFERENCES `sys_dept` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_dept`
--


/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
LOCK TABLES `sys_dept` WRITE;
INSERT INTO `sys_dept` VALUES (5,'软件类',1,1,NULL,0,''),(6,'文学类',1,2,NULL,0,''),(7,'科技类',1,3,NULL,0,''),(8,'英语文学类',1,4,NULL,0,''),(9,'数学类',1,5,NULL,0,''),(10,'经济类',1,6,NULL,0,''),(11,'机械类',1,7,NULL,0,''),(12,'服装类',1,8,NULL,0,'');
UNLOCK TABLES;
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;

--
-- Table structure for table `sys_dict`
--

DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` int(11) NOT NULL auto_increment,
  `itemName` varchar(255) default NULL,
  `itemValue` varchar(255) default NULL,
  `note` varchar(255) default NULL,
  `sn` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_dict`
--


/*!40000 ALTER TABLE `sys_dict` DISABLE KEYS */;
LOCK TABLES `sys_dict` WRITE;
INSERT INTO `sys_dict` VALUES (1,'性别','男',NULL,0),(2,'性别','女',NULL,0),(3,'会员卡','普通会员','',0),(4,'会员卡','VIP会员','',0),(5,'图书类型','软件类','',0),(6,'图书类型','文学类','',0),(7,'图书类型','经济类','',0),(8,'图书类型','机械类','',0),(9,'图书类型','英语文学类','',0),(10,'图书类型','工程类','',0),(11,'图书类型','数学类','',0),(12,'所属学院','软件学院','',0),(13,'所属学院','数学学院','',0),(14,'所属学院','纺服学院','',0),(15,'所属学院','外国语学院','',0),(16,'所属学院','机械学院','',0),(17,'所属学院','电气自动化学院','',0),(18,'所属学院','经管学院','',0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `sys_dict` ENABLE KEYS */;

--
-- Table structure for table `sys_file_attach`
--

DROP TABLE IF EXISTS `sys_file_attach`;
CREATE TABLE `sys_file_attach` (
  `fileId` int(11) NOT NULL auto_increment,
  `createtime` datetime default NULL,
  `creator` varchar(255) default NULL,
  `creatorId` int(11) default NULL,
  `delFlag` int(11) default NULL,
  `ext` varchar(255) default NULL,
  `fileName` varchar(255) default NULL,
  `filePath` varchar(255) default NULL,
  `fileType` varchar(255) default NULL,
  `note` varchar(255) default NULL,
  `totalBytes` bigint(20) default NULL,
  PRIMARY KEY  (`fileId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_file_attach`
--


/*!40000 ALTER TABLE `sys_file_attach` DISABLE KEYS */;
LOCK TABLES `sys_file_attach` WRITE;
INSERT INTO `sys_file_attach` VALUES (19,'2016-07-03 10:22:30',NULL,1,0,'jpg','120404160621-4.jpg','/test/pic/201607/0e86296f15314ff6b333138ee438b2e3.jpg',NULL,'482.5 KB',482526),(20,'2016-07-03 10:22:31',NULL,1,0,'jpg','120404160621-8.jpg','/test/pic/201607/db8787d2312248fdbe663d41a5578103.jpg',NULL,'245.4 KB',245387),(21,'2016-07-03 10:22:31',NULL,1,0,'jpg','120404160621-6.jpg','/test/pic/201607/dda9a3eb2e8f4257b6f06d2f9a806cde.jpg',NULL,'968.8 KB',968777),(22,'2016-07-03 10:22:31',NULL,1,0,'jpg','139459071549.jpg','/test/pic/201607/7013b87b8d8a42769ce4a8380cc6e137.jpg',NULL,'432.4 KB',432444),(23,'2016-07-03 10:22:31',NULL,1,0,'jpg','120404160621-3.jpg','/test/pic/201607/080449dcf67d4a6ea6bfa38a36d0212f.jpg',NULL,'1.15 MB',1150055),(24,'2016-07-03 10:22:31',NULL,1,0,'jpg','1356484329180.jpg','/test/pic/201607/89c76e97d9c64ed4a37a8f59e4fe9a7a.jpg',NULL,'107.6 KB',107636),(25,'2016-07-03 10:22:31',NULL,1,0,'jpg','120404160621-0.jpg','/test/pic/201607/80dba32c801641f099baee90843913c5.jpg',NULL,'810.4 KB',810412),(26,'2016-07-03 10:22:31',NULL,1,0,'jpg','1459218674619.jpg','/test/pic/201607/25c81298f3f74e1cb5d82004bbbaa63c.jpg',NULL,'247.3 KB',247298),(27,'2016-07-03 10:22:31',NULL,1,0,'jpg','1459218731747.jpg','/test/pic/201607/37391b2d00eb40f0805ec2fee12822cc.jpg',NULL,'91.3 KB',91322),(28,'2016-07-03 10:22:31',NULL,1,0,'jpg','1459218698546.jpg','/test/pic/201607/bd2247264b0f4f54a3554403babc43b2.jpg',NULL,'347.5 KB',347502),(29,'2016-07-03 10:22:31',NULL,1,0,'jpg','1459218742882.jpg','/test/pic/201607/3e6b2e6bafb34cb793f47713d9ed7867.jpg',NULL,'62.5 KB',62494),(30,'2016-07-03 10:22:32',NULL,1,0,'jpg','1459218751410.jpg','/test/pic/201607/05c8202fea7d4b43b098669fa113b0c5.jpg',NULL,'164.4 KB',164394),(31,'2016-07-03 10:22:32',NULL,1,0,'jpg','1459218758819.jpg','/test/pic/201607/ba1a150ac255434b90bd9353765d87fc.jpg',NULL,'211.3 KB',211275),(32,'2016-07-03 10:22:32',NULL,1,0,'jpg','1459218780944.jpg','/test/pic/201607/a4148f8980da459fab8492386f2e3c80.jpg',NULL,'141.0 KB',140976),(33,'2016-07-03 10:22:32',NULL,1,0,'jpg','1459218770717.jpg','/test/pic/201607/4c55f17408cc4172942462828b636562.jpg',NULL,'218.5 KB',218473),(34,'2016-07-03 10:22:32',NULL,1,0,'jpg','1424832733998.jpg','/test/pic/201607/9dd2abf82bc7455ea9516fdce91981b2.jpg',NULL,'907.1 KB',907102),(35,'2016-07-03 10:22:32',NULL,1,0,'jpg','1420598946304.jpg','/test/pic/201607/dc09362f179843d493225fb0299997e5.jpg',NULL,'747.7 KB',747730),(36,'2016-07-03 10:22:32',NULL,1,0,'jpg','1459218793696.jpg','/test/pic/201607/427ef65087ad404388691df75199a79e.jpg',NULL,'235.9 KB',235944),(37,'2016-07-03 10:22:32',NULL,1,0,'jpg','1459218807800.jpg','/test/pic/201607/d87a6591fa974b198bea6baa67bb154f.jpg',NULL,'237.9 KB',237862),(38,'2016-07-03 10:30:33',NULL,1,0,'jpg','ChMkJ1begQSICogEAAlihJFQRbgAAM7vQOyjrkACWKc429.jpg','/test/pic/201607/9b3cff58c8b14740b25f8cee5f2933ce.jpg',NULL,'165.1 KB',165078),(39,'2017-07-07 16:32:33',NULL,1,0,'png','图片1.png','/test/pic/201707/a1ea7ffd48e448f78b9f83d66707e950.png',NULL,'22.0 KB',21972),(40,'2017-07-07 19:07:51',NULL,1,0,'jpg','u=1031811781,1770077464&fm=26&gp=0.jpg','/test/pic/201707/f4a12514abc9474994851a1f9e34bb35.jpg',NULL,'8.5 KB',8489),(41,'2017-07-07 19:09:53',NULL,1,0,'jpg','u=1982093680,1643336650&fm=26&gp=0.jpg','/test/pic/201707/d19b840cc8934861a561f7840e486772.jpg',NULL,'8.6 KB',8609),(42,'2017-07-07 19:10:00',NULL,1,0,'jpg','u=1468889868,2871066373&fm=26&gp=0.jpg','/test/pic/201707/ab21a784b38b4377b8b0507e615c5ac2.jpg',NULL,'5.0 KB',4984),(43,'2017-07-07 19:10:08',NULL,1,0,'jpg','100046_1341025489037.jpg','/test/pic/201707/d484385c660345099a25a651b29e817e.jpg',NULL,'19.7 KB',19677),(44,'2017-07-07 19:10:14',NULL,1,0,'jpg','20141113075845_k8ML8.thumb.700_0.jpg','/test/pic/201707/3975ba6782d6455ca2d823f1ef78f6d7.jpg',NULL,'86.6 KB',86562),(45,'2017-07-07 19:10:22',NULL,1,0,'jpg','u=3371599172,564662749&fm=214&gp=0.jpg','/test/pic/201707/8d9dbd958d464299bd0ebe98f555440c.jpg',NULL,'27.9 KB',27942),(46,'2017-07-07 19:12:10',NULL,1,0,'jpg','53e2070590051ede04f1d.jpg','/test/pic/201707/a2a5ea09e83e499aa6e36815661b0352.jpg',NULL,'98.1 KB',98057),(47,'2017-07-07 19:13:19',NULL,1,0,'jpg','57db03b112bb32739b3d02b739d29fc3.jpg','/test/pic/201707/ea80ec747d514ae2bb097a4f6dfa9108.jpg',NULL,'22.0 KB',22010),(48,'2017-07-08 14:51:32',NULL,1,0,'jpg','12.jpg','/test/pic/201707/1cac4e5d86d54942b09d1f26561777fe.jpg',NULL,'68.8 KB',68833),(49,'2017-07-08 15:27:17',NULL,1,0,'jpg','13.jpg','/test/pic/201707/4227b55b1ab54aa69014157eff974c91.jpg',NULL,'52.9 KB',52931),(50,'2017-07-08 15:33:14',NULL,1,0,'jpg','11.jpg','/test/pic/201707/52439a413ca44a3796b05affc759d9db.jpg',NULL,'72.1 KB',72128),(51,'2017-07-09 20:48:15',NULL,1,0,'jpg','u=1031811781,1770077464&fm=26&gp=0.jpg','/test/pic/201707/86d8263c046a4a3dbfe79b484ea19cd8.jpg',NULL,'8.5 KB',8489),(52,'2017-07-09 20:48:44',NULL,1,0,'jpg','u=3371599172,564662749&fm=214&gp=0.jpg','/test/pic/201707/37b5add84acc4b79bfe5186b589fcf9f.jpg',NULL,'27.9 KB',27942),(53,'2017-07-09 20:50:56',NULL,1,0,'jpg','100046_1341025489037.jpg','/test/pic/201707/d96fc5ba81fd4c56ad4b618946df795d.jpg',NULL,'19.7 KB',19677),(54,'2017-07-14 12:30:24',NULL,1,0,'jpg','u=3371599172,564662749&fm=214&gp=0.jpg','/test/pic/201707/59f38913509042bfbfe59ef2ff5e838f.jpg',NULL,'27.9 KB',27942);
UNLOCK TABLES;
/*!40000 ALTER TABLE `sys_file_attach` ENABLE KEYS */;

--
-- Table structure for table `sys_global_type`
--

DROP TABLE IF EXISTS `sys_global_type`;
CREATE TABLE `sys_global_type` (
  `proTypeId` int(11) NOT NULL auto_increment,
  `catKey` varchar(255) default NULL,
  `depth` int(11) default NULL,
  `nodeKey` varchar(255) default NULL,
  `parentId` int(11) default NULL,
  `path` varchar(255) default NULL,
  `sn` int(11) default NULL,
  `typeName` varchar(255) default NULL,
  `userId` int(11) default NULL,
  PRIMARY KEY  (`proTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_global_type`
--


/*!40000 ALTER TABLE `sys_global_type` DISABLE KEYS */;
LOCK TABLES `sys_global_type` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `sys_global_type` ENABLE KEYS */;

--
-- Table structure for table `sys_inst`
--

DROP TABLE IF EXISTS `sys_inst`;
CREATE TABLE `sys_inst` (
  `id` int(11) NOT NULL auto_increment,
  `depict` varchar(255) default NULL,
  `iname` varchar(255) default NULL,
  `leaf` tinyint(1) default NULL,
  `level` int(11) default NULL,
  `sn` int(11) default NULL,
  `parent_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK74A2987828EE4666` (`parent_id`),
  CONSTRAINT `FK74A2987828EE4666` FOREIGN KEY (`parent_id`) REFERENCES `sys_inst` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_inst`
--


/*!40000 ALTER TABLE `sys_inst` DISABLE KEYS */;
LOCK TABLES `sys_inst` WRITE;
INSERT INTO `sys_inst` VALUES (1,'新疆大学软件学院','软件学院',1,0,1,NULL),(2,'','机械学院',1,0,2,NULL),(3,'','外国语学院',1,0,3,NULL),(4,'','电气自动化学院',1,0,4,NULL),(5,'','纺服学院',1,0,5,NULL),(6,'','汉语言文学',1,0,6,NULL),(7,'','数学学院',1,0,7,NULL),(8,'','经济管理学院',1,0,8,NULL),(9,'','计算机学院',1,0,9,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `sys_inst` ENABLE KEYS */;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL auto_increment,
  `iconCls` varchar(255) default NULL,
  `leaf` tinyint(1) default NULL,
  `level` int(11) default NULL,
  `name` varchar(255) default NULL,
  `sn` int(11) default NULL,
  `url` varchar(255) default NULL,
  `parent_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK74A44791D034FE0E` (`parent_id`),
  CONSTRAINT `FK74A44791D034FE0E` FOREIGN KEY (`parent_id`) REFERENCES `sys_menu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_menu`
--


/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
LOCK TABLES `sys_menu` WRITE;
INSERT INTO `sys_menu` VALUES (1,'glyphicon glyphicon-user',0,0,'人员信息管理',0,'reading1/view',NULL),(2,'glyphicon glyphicon-align-justify',0,0,'系统管理',5,'#',NULL),(3,'glyphicon glyphicon-align-justify',1,1,'菜单管理',0,'menu/view',2),(4,'glyphicon glyphicon-pause',1,1,'图书管理',1,'dept/view',2),(5,'glyphicon glyphicon-user',1,1,'角色管理',2,'role/view',2),(6,'glyphicon glyphicon-tower',1,1,'用户管理',3,'user/view',2),(8,'glyphicon glyphicon-folder-close',1,1,'基本信息管理',0,'member/view',1),(10,'glyphicon glyphicon-asterisk',1,1,'数据字典管理',4,'dict/view',2),(16,'glyphicon glyphicon-book',1,1,'会员卡管理',1,'card/view',1),(18,'glyphicon glyphicon-briefcase',1,1,'附件上传管理',5,'fileAttach/view',2),(19,'glyphicon glyphicon-book',1,0,'二手书图书库存管理',1,'goods/view',NULL),(20,'glyphicon glyphicon-heart',1,1,'商家管理',2,'emp/view',1),(21,'glyphicon glyphicon-book',1,0,'赠与图书库存管理',3,'lockers/view',NULL),(22,'glyphicon glyphicon-book',1,0,'共享阅读管理',4,'shareReading/view',NULL),(23,'glyphicon glyphicon-shopping-cart',1,0,'订单项',6,'emp/coach_view',NULL),(24,'glyphicon glyphicon-th-list',1,1,'学院管理',7,'inst/view',2),(25,'glyphicon glyphicon-star',1,0,'致亲爱的你的一封信',7,'reading/view',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL auto_increment,
  `menuIds` varchar(255) default NULL,
  `menuNames` varchar(1000) default NULL,
  `name` varchar(255) default NULL,
  `note` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_role`
--


/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
LOCK TABLES `sys_role` WRITE;
INSERT INTO `sys_role` VALUES (1,'_ALL','系统管理,菜单管理,部门管理,会员信息管理,员工信息管理','超级管理员','拥有所有权限'),(2,'','','商家','出售图书'),(3,'19,21,22','二手书图书库存管理, 赠与图书库存管理, 共享阅读管理','普通会员','管理会员信息,员工信息,以及部门和用户的管理'),(4,'1,16,19,21,22','人员信息管理, 会员卡管理, 二手书图书库存管理, 赠与图书库存管理, 共享阅读管理','VIP会员','管理会员信息');
UNLOCK TABLES;
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

