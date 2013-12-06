# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.34-0ubuntu0.12.10.1)
# Database: lea_childlabel
# Generation Time: 2013-12-06 04:34:52 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table acos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `acos`;

CREATE TABLE `acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `acos` WRITE;
/*!40000 ALTER TABLE `acos` DISABLE KEYS */;

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`)
VALUES
	(1,NULL,NULL,NULL,'controllers',1,334),
	(2,1,NULL,NULL,'Groups',2,13),
	(3,2,NULL,NULL,'index',3,4),
	(4,2,NULL,NULL,'view',5,6),
	(5,2,NULL,NULL,'add',7,8),
	(6,2,NULL,NULL,'edit',9,10),
	(7,2,NULL,NULL,'delete',11,12),
	(8,1,NULL,NULL,'Pages',14,19),
	(9,8,NULL,NULL,'display',15,16),
	(10,1,NULL,NULL,'ProductGroups',20,41),
	(11,10,NULL,NULL,'index',21,22),
	(12,10,NULL,NULL,'view',23,24),
	(13,10,NULL,NULL,'add',25,26),
	(14,10,NULL,NULL,'edit',27,28),
	(15,10,NULL,NULL,'delete',29,30),
	(16,10,NULL,NULL,'admin_index',31,32),
	(17,10,NULL,NULL,'admin_view',33,34),
	(18,10,NULL,NULL,'admin_add',35,36),
	(19,10,NULL,NULL,'admin_edit',37,38),
	(20,10,NULL,NULL,'admin_delete',39,40),
	(21,1,NULL,NULL,'ProductVariants',42,59),
	(22,21,NULL,NULL,'index',43,44),
	(23,21,NULL,NULL,'admin_index_by_product',45,46),
	(24,21,NULL,NULL,'view',47,48),
	(25,21,NULL,NULL,'admin_add_by_product',49,50),
	(26,21,NULL,NULL,'admin_edit_by_product',51,52),
	(27,21,NULL,NULL,'admin_delete_by_product',53,54),
	(28,1,NULL,NULL,'Products',60,77),
	(29,28,NULL,NULL,'index',61,62),
	(30,28,NULL,NULL,'view',63,64),
	(31,28,NULL,NULL,'admin_index',65,66),
	(32,28,NULL,NULL,'admin_view',67,68),
	(33,28,NULL,NULL,'admin_add',69,70),
	(34,28,NULL,NULL,'admin_edit',71,72),
	(35,28,NULL,NULL,'admin_delete',73,74),
	(36,1,NULL,NULL,'ProductsInGroups',78,99),
	(37,36,NULL,NULL,'index',79,80),
	(38,36,NULL,NULL,'view',81,82),
	(39,36,NULL,NULL,'add',83,84),
	(40,36,NULL,NULL,'edit',85,86),
	(41,36,NULL,NULL,'delete',87,88),
	(42,36,NULL,NULL,'admin_index',89,90),
	(43,36,NULL,NULL,'admin_view',91,92),
	(44,36,NULL,NULL,'admin_add',93,94),
	(45,36,NULL,NULL,'admin_edit',95,96),
	(46,36,NULL,NULL,'admin_delete',97,98),
	(47,1,NULL,NULL,'Users',100,147),
	(48,47,NULL,NULL,'index',101,102),
	(49,47,NULL,NULL,'view',103,104),
	(50,47,NULL,NULL,'add',105,106),
	(51,47,NULL,NULL,'edit',107,108),
	(52,47,NULL,NULL,'delete',109,110),
	(53,47,NULL,NULL,'send_enquiry_email',111,112),
	(54,47,NULL,NULL,'login',113,114),
	(55,47,NULL,NULL,'admin_login',115,116),
	(56,47,NULL,NULL,'admin_logout',117,118),
	(57,47,NULL,NULL,'logout',119,120),
	(58,47,NULL,NULL,'admin_forget_password',121,122),
	(59,47,NULL,NULL,'admin_view_my_own_profile',123,124),
	(60,47,NULL,NULL,'admin_edit_my_own_profile',125,126),
	(61,47,NULL,NULL,'admin_change_my_own_password',127,128),
	(62,47,NULL,NULL,'forget_password',129,130),
	(63,47,NULL,NULL,'reset_password',131,132),
	(64,1,NULL,NULL,'AclExtras',148,149),
	(65,1,NULL,NULL,'AssetCompress',150,151),
	(66,1,NULL,NULL,'ClearCache',152,161),
	(67,66,NULL,NULL,'ClearCache',153,160),
	(68,67,NULL,NULL,'files',154,155),
	(69,67,NULL,NULL,'engines',156,157),
	(70,67,NULL,NULL,'groups',158,159),
	(71,1,NULL,NULL,'Migrations',162,163),
	(72,1,NULL,NULL,'PermissionsExtras',164,165),
	(73,1,NULL,NULL,'UtilityLib',166,167),
	(74,47,NULL,NULL,'admin_reset_password',133,134),
	(75,47,NULL,NULL,'admin_index',135,136),
	(76,47,NULL,NULL,'admin_add',137,138),
	(77,47,NULL,NULL,'admin_edit',139,140),
	(78,8,NULL,NULL,'admin_display',17,18),
	(79,1,NULL,NULL,'ProductImages',168,191),
	(80,79,NULL,NULL,'index',169,170),
	(81,79,NULL,NULL,'view',171,172),
	(82,79,NULL,NULL,'add',173,174),
	(83,79,NULL,NULL,'edit',175,176),
	(84,79,NULL,NULL,'delete',177,178),
	(85,79,NULL,NULL,'admin_add_by_product',179,180),
	(86,1,NULL,NULL,'Upload',192,193),
	(87,1,NULL,NULL,'UtilityBehaviors',194,195),
	(88,79,NULL,NULL,'admin_index_by_product',181,182),
	(89,79,NULL,NULL,'admin_delete_by_product',183,184),
	(90,79,NULL,NULL,'admin_edit_by_product',185,186),
	(91,79,NULL,NULL,'admin_view_by_product',187,188),
	(92,79,NULL,NULL,'admin_swap_order',189,190),
	(93,21,NULL,NULL,'admin_swap_order',55,56),
	(94,1,NULL,NULL,'Carts',196,225),
	(95,94,NULL,NULL,'index',197,198),
	(96,94,NULL,NULL,'view',199,200),
	(97,94,NULL,NULL,'add',201,202),
	(98,94,NULL,NULL,'edit',203,204),
	(99,94,NULL,NULL,'delete',205,206),
	(100,94,NULL,NULL,'add_item',207,208),
	(101,94,NULL,NULL,'remove_item',209,210),
	(102,1,NULL,NULL,'Cart',226,305),
	(103,102,NULL,NULL,'CartRules',227,234),
	(104,103,NULL,NULL,'admin_index',228,229),
	(105,103,NULL,NULL,'admin_add',230,231),
	(106,103,NULL,NULL,'admin_edit',232,233),
	(107,102,NULL,NULL,'Carts',235,264),
	(108,107,NULL,NULL,'index',236,237),
	(109,107,NULL,NULL,'view',238,239),
	(110,107,NULL,NULL,'add',240,241),
	(111,107,NULL,NULL,'edit',242,243),
	(112,107,NULL,NULL,'delete',244,245),
	(113,107,NULL,NULL,'add_item',246,247),
	(114,107,NULL,NULL,'remove_item',248,249),
	(115,102,NULL,NULL,'OrderAddresses',265,266),
	(116,102,NULL,NULL,'Orders',267,280),
	(117,116,NULL,NULL,'index',268,269),
	(118,116,NULL,NULL,'view',270,271),
	(119,116,NULL,NULL,'cancel',272,273),
	(120,116,NULL,NULL,'admin_index',274,275),
	(121,116,NULL,NULL,'admin_view',276,277),
	(122,116,NULL,NULL,'admin_refund',278,279),
	(123,102,NULL,NULL,'PaymentMethods',281,288),
	(124,123,NULL,NULL,'index',282,283),
	(125,123,NULL,NULL,'admin_index',284,285),
	(126,123,NULL,NULL,'admin_edit',286,287),
	(127,102,NULL,NULL,'ShippingMethods',289,304),
	(128,127,NULL,NULL,'index',290,291),
	(129,127,NULL,NULL,'view',292,293),
	(130,127,NULL,NULL,'admin_index',294,295),
	(131,127,NULL,NULL,'admin_view',296,297),
	(132,127,NULL,NULL,'admin_add',298,299),
	(133,127,NULL,NULL,'admin_edit',300,301),
	(134,127,NULL,NULL,'admin_delete',302,303),
	(135,1,NULL,NULL,'Search',306,307),
	(136,21,NULL,NULL,'admin_rename',57,58),
	(137,1,NULL,NULL,'ShippingOptions',308,319),
	(138,137,NULL,NULL,'admin_index',309,310),
	(139,137,NULL,NULL,'admin_view',311,312),
	(140,137,NULL,NULL,'admin_add',313,314),
	(141,137,NULL,NULL,'admin_edit',315,316),
	(142,137,NULL,NULL,'admin_delete',317,318),
	(143,94,NULL,NULL,'cart_unfilled',211,212),
	(144,94,NULL,NULL,'save_address',213,214),
	(145,94,NULL,NULL,'pay',215,216),
	(146,94,NULL,NULL,'complete_purchase',217,218),
	(147,94,NULL,NULL,'successful',219,220),
	(148,94,NULL,NULL,'successful_ib',221,222),
	(149,94,NULL,NULL,'update',223,224),
	(150,107,NULL,NULL,'cart_unfilled',250,251),
	(151,107,NULL,NULL,'save_address',252,253),
	(152,107,NULL,NULL,'pay',254,255),
	(153,107,NULL,NULL,'complete_purchase',256,257),
	(154,107,NULL,NULL,'successful',258,259),
	(155,107,NULL,NULL,'successful_ib',260,261),
	(156,107,NULL,NULL,'update',262,263),
	(157,47,NULL,NULL,'view_my_own_profile',141,142),
	(158,47,NULL,NULL,'register',143,144),
	(159,1,NULL,NULL,'Queryable',320,321),
	(160,47,NULL,NULL,'change_my_own_password',145,146),
	(161,28,NULL,NULL,'summary',75,76),
	(162,1,NULL,NULL,'ProductRepresentativeImages',322,333),
	(163,162,NULL,NULL,'admin_index',323,324),
	(164,162,NULL,NULL,'admin_view',325,326),
	(165,162,NULL,NULL,'admin_add',327,328),
	(166,162,NULL,NULL,'admin_edit',329,330),
	(167,162,NULL,NULL,'admin_delete',331,332);

/*!40000 ALTER TABLE `acos` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table aros
# ------------------------------------------------------------

DROP TABLE IF EXISTS `aros`;

CREATE TABLE `aros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `aros` WRITE;
/*!40000 ALTER TABLE `aros` DISABLE KEYS */;

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`)
VALUES
	(1,NULL,'Group',1,NULL,1,6),
	(2,NULL,'Group',2,NULL,2,5),
	(3,2,'Group',3,NULL,3,4);

/*!40000 ALTER TABLE `aros` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table aros_acos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `aros_acos`;

CREATE TABLE `aros_acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) NOT NULL DEFAULT '0',
  `_read` varchar(2) NOT NULL DEFAULT '0',
  `_update` varchar(2) NOT NULL DEFAULT '0',
  `_delete` varchar(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ARO_ACO_KEY` (`aro_id`,`aco_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `aros_acos` WRITE;
/*!40000 ALTER TABLE `aros_acos` DISABLE KEYS */;

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`)
VALUES
	(1,1,1,'1','1','1','1'),
	(2,2,1,'-1','-1','-1','-1'),
	(3,2,57,'1','1','1','1'),
	(4,2,8,'1','1','1','1'),
	(5,3,28,'1','1','1','1'),
	(6,3,47,'1','1','1','1'),
	(7,3,79,'1','1','1','1'),
	(8,3,162,'1','1','1','1'),
	(9,3,36,'1','1','1','1'),
	(10,3,21,'1','1','1','1'),
	(11,3,137,'1','1','1','1');

/*!40000 ALTER TABLE `aros_acos` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
