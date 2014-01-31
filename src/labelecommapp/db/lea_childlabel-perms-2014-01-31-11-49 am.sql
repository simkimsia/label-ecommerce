# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.34-0ubuntu0.12.10.1)
# Database: lea_childlabel
# Generation Time: 2014-01-31 03:49:25 +0000
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
	(1,NULL,NULL,NULL,'controllers',1,344),
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
	(47,1,NULL,NULL,'Users',100,151),
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
	(64,1,NULL,NULL,'AclExtras',152,153),
	(65,1,NULL,NULL,'AssetCompress',154,155),
	(66,1,NULL,NULL,'ClearCache',156,165),
	(67,66,NULL,NULL,'ClearCache',157,164),
	(68,67,NULL,NULL,'files',158,159),
	(69,67,NULL,NULL,'engines',160,161),
	(70,67,NULL,NULL,'groups',162,163),
	(71,1,NULL,NULL,'Migrations',166,167),
	(72,1,NULL,NULL,'PermissionsExtras',168,169),
	(73,1,NULL,NULL,'UtilityLib',170,171),
	(74,47,NULL,NULL,'admin_reset_password',133,134),
	(75,47,NULL,NULL,'admin_index',135,136),
	(76,47,NULL,NULL,'admin_add',137,138),
	(77,47,NULL,NULL,'admin_edit',139,140),
	(78,8,NULL,NULL,'admin_display',17,18),
	(79,1,NULL,NULL,'ProductImages',172,195),
	(80,79,NULL,NULL,'index',173,174),
	(81,79,NULL,NULL,'view',175,176),
	(82,79,NULL,NULL,'add',177,178),
	(83,79,NULL,NULL,'edit',179,180),
	(84,79,NULL,NULL,'delete',181,182),
	(85,79,NULL,NULL,'admin_add_by_product',183,184),
	(86,1,NULL,NULL,'Upload',196,197),
	(87,1,NULL,NULL,'UtilityBehaviors',198,199),
	(88,79,NULL,NULL,'admin_index_by_product',185,186),
	(89,79,NULL,NULL,'admin_delete_by_product',187,188),
	(90,79,NULL,NULL,'admin_edit_by_product',189,190),
	(91,79,NULL,NULL,'admin_view_by_product',191,192),
	(92,79,NULL,NULL,'admin_swap_order',193,194),
	(93,21,NULL,NULL,'admin_swap_order',55,56),
	(94,1,NULL,NULL,'Carts',200,231),
	(95,94,NULL,NULL,'index',201,202),
	(96,94,NULL,NULL,'view',203,204),
	(97,94,NULL,NULL,'add',205,206),
	(98,94,NULL,NULL,'edit',207,208),
	(99,94,NULL,NULL,'delete',209,210),
	(100,94,NULL,NULL,'add_item',211,212),
	(101,94,NULL,NULL,'remove_item',213,214),
	(102,1,NULL,NULL,'Cart',232,315),
	(103,102,NULL,NULL,'CartRules',233,240),
	(104,103,NULL,NULL,'admin_index',234,235),
	(105,103,NULL,NULL,'admin_add',236,237),
	(106,103,NULL,NULL,'admin_edit',238,239),
	(107,102,NULL,NULL,'Carts',241,272),
	(108,107,NULL,NULL,'index',242,243),
	(109,107,NULL,NULL,'view',244,245),
	(110,107,NULL,NULL,'add',246,247),
	(111,107,NULL,NULL,'edit',248,249),
	(112,107,NULL,NULL,'delete',250,251),
	(113,107,NULL,NULL,'add_item',252,253),
	(114,107,NULL,NULL,'remove_item',254,255),
	(115,102,NULL,NULL,'OrderAddresses',273,274),
	(116,102,NULL,NULL,'Orders',275,290),
	(117,116,NULL,NULL,'index',276,277),
	(118,116,NULL,NULL,'view',278,279),
	(119,116,NULL,NULL,'cancel',280,281),
	(120,116,NULL,NULL,'admin_index',282,283),
	(121,116,NULL,NULL,'admin_view',284,285),
	(122,116,NULL,NULL,'admin_refund',286,287),
	(123,102,NULL,NULL,'PaymentMethods',291,298),
	(124,123,NULL,NULL,'index',292,293),
	(125,123,NULL,NULL,'admin_index',294,295),
	(126,123,NULL,NULL,'admin_edit',296,297),
	(127,102,NULL,NULL,'ShippingMethods',299,314),
	(128,127,NULL,NULL,'index',300,301),
	(129,127,NULL,NULL,'view',302,303),
	(130,127,NULL,NULL,'admin_index',304,305),
	(131,127,NULL,NULL,'admin_view',306,307),
	(132,127,NULL,NULL,'admin_add',308,309),
	(133,127,NULL,NULL,'admin_edit',310,311),
	(134,127,NULL,NULL,'admin_delete',312,313),
	(135,1,NULL,NULL,'Search',316,317),
	(136,21,NULL,NULL,'admin_rename',57,58),
	(137,1,NULL,NULL,'ShippingOptions',318,329),
	(138,137,NULL,NULL,'admin_index',319,320),
	(139,137,NULL,NULL,'admin_view',321,322),
	(140,137,NULL,NULL,'admin_add',323,324),
	(141,137,NULL,NULL,'admin_edit',325,326),
	(142,137,NULL,NULL,'admin_delete',327,328),
	(143,94,NULL,NULL,'cart_unfilled',215,216),
	(144,94,NULL,NULL,'save_address',217,218),
	(145,94,NULL,NULL,'pay',219,220),
	(146,94,NULL,NULL,'complete_purchase',221,222),
	(147,94,NULL,NULL,'successful',223,224),
	(148,94,NULL,NULL,'successful_ib',225,226),
	(149,94,NULL,NULL,'update',227,228),
	(150,107,NULL,NULL,'cart_unfilled',256,257),
	(151,107,NULL,NULL,'save_address',258,259),
	(152,107,NULL,NULL,'pay',260,261),
	(153,107,NULL,NULL,'complete_purchase',262,263),
	(154,107,NULL,NULL,'successful',264,265),
	(155,107,NULL,NULL,'successful_ib',266,267),
	(156,107,NULL,NULL,'update',268,269),
	(157,47,NULL,NULL,'view_my_own_profile',141,142),
	(158,47,NULL,NULL,'register',143,144),
	(159,1,NULL,NULL,'Queryable',330,331),
	(160,47,NULL,NULL,'change_my_own_password',145,146),
	(161,28,NULL,NULL,'summary',75,76),
	(162,1,NULL,NULL,'ProductRepresentativeImages',332,343),
	(163,162,NULL,NULL,'admin_index',333,334),
	(164,162,NULL,NULL,'admin_view',335,336),
	(165,162,NULL,NULL,'admin_add',337,338),
	(166,162,NULL,NULL,'admin_edit',339,340),
	(167,162,NULL,NULL,'admin_delete',341,342),
	(168,94,NULL,NULL,'empty_my_cart',229,230),
	(169,107,NULL,NULL,'empty_my_cart',270,271),
	(170,47,NULL,NULL,'admin_export_customers',147,148),
	(171,47,NULL,NULL,'edit_my_own_profile',149,150),
	(172,116,NULL,NULL,'admin_find',288,289);

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
	(1,NULL,'Group',1,NULL,1,8),
	(2,NULL,'Group',2,NULL,2,7),
	(3,2,'Group',3,NULL,3,4),
	(4,2,'Group',4,NULL,5,6);

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
	(11,3,137,'1','1','1','1'),
	(12,3,116,'1','1','1','1');

/*!40000 ALTER TABLE `aros_acos` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `display_name` varchar(30) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE_NAME` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;

INSERT INTO `groups` (`id`, `name`, `display_name`, `created`, `modified`, `parent_id`)
VALUES
	(1,'Super Administrators','Super Admin','2013-06-28 03:01:06','2013-06-28 03:01:06',NULL),
	(2,'Users','Users','2013-06-28 03:01:57','2013-06-28 03:01:57',NULL),
	(3,'Shop Administrators','Shop Admin','2013-06-28 03:02:48','2013-06-28 03:02:48',2),
	(4,'Customers','Customers',NULL,NULL,2);

/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
