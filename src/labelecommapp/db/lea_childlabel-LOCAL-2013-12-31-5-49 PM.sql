# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.34-0ubuntu0.12.10.1)
# Database: lea_childlabel
# Generation Time: 2013-12-31 09:49:04 +0000
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


# Dump of table addresses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `addresses`;

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_address_id` varchar(36) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;

INSERT INTO `addresses` (`id`, `order_address_id`, `user_id`)
VALUES
	(1,'5209',3),
	(2,'5209d6bd-fd78-48a7-a815-075dd87f8d82',3),
	(3,'520a4e0c-8978-4ee4-a4ca-0778d87f8d82',3),
	(4,'520d7721-9ddc-4ae8-95d0-06d3d87f8d82',3),
	(5,'520d7721-61e0-4697-88a2-06d3d87f8d82',3),
	(6,'520d8856-bbb0-4a62-86f4-06e6d87f8d82',3),
	(7,'520d8856-dd80-4777-a5fa-06e6d87f8d82',3),
	(8,'520d8d28-2838-4bae-80ca-06e6d87f8d82',2),
	(9,'520d8d28-962c-43a8-a4ca-06e6d87f8d82',2),
	(10,'520d9188-d8a8-4d63-ab98-06d7d87f8d82',2),
	(11,'520d9188-7164-4509-8ff3-06d7d87f8d82',2),
	(12,'520d91b4-bab0-4884-9830-06d6d87f8d82',2),
	(13,'520d91b4-b300-49e3-9753-06d6d87f8d82',2),
	(14,'520db337-25a0-4a23-b0d8-06dfd87f8d82',3),
	(15,'520db337-2148-4dda-b020-06dfd87f8d82',3),
	(16,'520db467-0c18-412c-b8df-06e5d87f8d82',3),
	(17,'520db467-d560-451c-a97d-06e5d87f8d82',3),
	(18,'520db49e-9cc8-449a-98cb-06d1d87f8d82',3),
	(19,'520db49f-1564-4f38-b7ba-06d1d87f8d82',3),
	(20,'520db51d-0328-4fc1-9710-06d6d87f8d82',3),
	(21,'520db51d-4ed4-4890-95ab-06d6d87f8d82',3),
	(22,'520db70c-f288-44fe-8eef-06e5d87f8d82',3),
	(23,'523bf893-52c0-43db-ab67-0761d87f8d82',5),
	(24,'523bf893-56bc-40ff-8b1a-0761d87f8d82',5),
	(25,'5241e4c8-2d60-4244-9f29-0770d87f8d82',8),
	(26,'5241e4c8-5c08-41e0-af5c-0770d87f8d82',8);

/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
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


# Dump of table attachments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `attachments`;

CREATE TABLE `attachments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `model` varchar(20) NOT NULL,
  `foreign_key` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `dir` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `size` int(11) DEFAULT '0',
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table cart_rule_conditions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cart_rule_conditions`;

CREATE TABLE `cart_rule_conditions` (
  `id` varchar(36) NOT NULL,
  `cart_rule_id` varchar(36) DEFAULT NULL,
  `position` int(2) NOT NULL,
  `applies_to` varchar(255) DEFAULT NULL COMMENT 'cart, items',
  `conditions` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table cart_rules
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cart_rules`;

CREATE TABLE `cart_rules` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT 'tax, discount',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table carts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `carts`;

CREATE TABLE `carts` (
  `id` varchar(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `total` float DEFAULT NULL,
  `active` tinyint(1) DEFAULT '0',
  `item_count` int(6) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;

INSERT INTO `carts` (`id`, `user_id`, `name`, `total`, `active`, `item_count`, `created`, `modified`)
VALUES
	('5262720f-bea0-4d73-8d52-0756d87f8d82','3','My cart',NULL,1,2,'2013-10-19 19:50:39','2013-10-19 19:50:39');

/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table carts_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `carts_items`;

CREATE TABLE `carts_items` (
  `id` varchar(36) NOT NULL,
  `cart_id` varchar(36) DEFAULT NULL,
  `short_name` varchar(255) NOT NULL,
  `foreign_key` varchar(36) DEFAULT NULL,
  `model` varchar(64) DEFAULT NULL,
  `metadata` text NOT NULL,
  `quantity` int(4) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `virtual` tinyint(1) DEFAULT '0' COMMENT 'Virtual as a download or a service',
  `status` varchar(16) DEFAULT NULL COMMENT 'internal status, up to the app',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `quantity_limit` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `carts_items` WRITE;
/*!40000 ALTER TABLE `carts_items` DISABLE KEYS */;

INSERT INTO `carts_items` (`id`, `cart_id`, `short_name`, `foreign_key`, `model`, `metadata`, `quantity`, `name`, `price`, `virtual`, `status`, `created`, `modified`, `quantity_limit`)
VALUES
	('5253fb5f-46d8-40a3-9a72-06e6d87f8d82','5253d91e-e3e4-4feb-b178-0769d87f8d82','Rectangle (Sticker)','5','ProductVariant','first line: Prof\nsecond line: X\nfont: AmericanTypewriter\nimage: Tiny%20Dancer%20Rectangles.jpg?1373521593',1,'Rectangle Sticker Labels',15,0,NULL,'2013-10-08 20:32:31','2013-10-08 20:32:31',2147483647),
	('5253fcc3-22a0-4cb9-aae9-06f2d87f8d82','5253fcbc-0334-42c8-a106-06ecd87f8d82','Rectangle (Sticker)','5','ProductVariant','first line: Prof\nsecond line: X\nfont: AmericanTypewriter\nimage: Boys Patterns rectangles.jpg?1373521701',1,'Rectangle Sticker Labels',15,0,NULL,'2013-10-08 20:38:27','2013-10-08 20:38:27',2147483647),
	('5253fe69-36d4-44e3-96ef-06ead87f8d82','5253fe5f-c958-450a-bfaa-0703d87f8d82','Rectangle (Sticker)','5','ProductVariant','first line: Prof\nsecond line: X\nfont: AmericanTypewriter\nimage: Boys Patterns rectangles',1,'Rectangle Sticker Labels',15,0,NULL,'2013-10-08 20:45:29','2013-10-08 20:45:29',2147483647),
	('52579a09-da00-4f25-afbf-0839d87f8d82','5253fe5f-c958-450a-bfaa-0703d87f8d82','Rectangle (Sticker)','5','ProductVariant','first line: Prof\nsecond line: X\nfont: AmericanTypewriter\nimage: Tiny Dancer Rectangles',1,'Rectangle Sticker Labels',15,0,NULL,'2013-10-11 14:26:17','2013-10-11 14:26:17',2147483647),
	('52579ce7-f6f8-4fcd-ad09-0834d87f8d82','5253fe5f-c958-450a-bfaa-0703d87f8d82','Rectangle (Sticker)','5','ProductVariant','first line: Haley\nsecond line: Wilde\nfont: AmericanTypewriter\nimage: Tiny Dancer Rectangles',1,'Rectangle Sticker Labels',15,0,NULL,'2013-10-11 14:38:31','2013-10-11 14:38:31',2147483647),
	('5257c0ac-ebfc-4ece-8fbe-06cbd87f8d82','5257c0a4-1c4c-4441-88f7-06c7d87f8d82','Rectangle (Sticker)','5','ProductVariant','first line: Prof\nsecond line: X\nfont: AmericanTypewriter\nimage: Tiny Dancer Rectangles',1,'Rectangle Sticker Labels',15,0,NULL,'2013-10-11 17:11:08','2013-10-11 17:11:08',2147483647),
	('5257c71e-9270-4771-9f6a-06cad87f8d82','5257c717-a0cc-4464-a24e-06c3d87f8d82','Rectangle (Sticker)','5','ProductVariant','first line: Prof\nsecond line: X\nfont: AmericanTypewriter\nimage: Tiny Dancer Rectangles',1,'Rectangle Sticker Labels',15,0,NULL,'2013-10-11 17:38:38','2013-10-11 17:38:38',2147483647),
	('525803ff-8f24-44e1-9a4b-06c3d87f8d82','5257c717-a0cc-4464-a24e-06c3d87f8d82','Rectangle (Sticker)','5','ProductVariant','first line: check\nsecond line: id\nfont: AmericanTypewriter\nimage: Tiny Dancer Rectangles',1,'Rectangle Sticker Labels',15,0,NULL,'2013-10-11 21:58:23','2013-10-11 21:58:23',2147483647),
	('52627127-36ac-49af-af13-0774d87f8d82','5257c717-a0cc-4464-a24e-06c3d87f8d82','Rectangle (Sticker)','5','ProductVariant','first line: Prof\nsecond line: X\nfont: AmericanTypewriter\nimage: Space Rectangles',1,'Rectangle Sticker Labels',15,0,NULL,'2013-10-19 19:46:47','2013-10-19 19:46:47',2147483647),
	('52627127-9690-44bc-b389-0774d87f8d82','5257c717-a0cc-4464-a24e-06c3d87f8d82','Rectangle (Sticker)','5','ProductVariant','first line: Prof\nsecond line: X\nfont: AmericanTypewriter\nimage: Boys Patterns rectangles',1,'Rectangle Sticker Labels',15,0,NULL,'2013-10-19 19:46:47','2013-10-19 19:46:47',2147483647),
	('526271d5-6a88-421b-8900-074cd87f8d82','526271d5-cd5c-4122-9ba2-074cd87f8d82','Rectangle (Sticker)','5','ProductVariant','first line: Dinosaur\nsecond line: Label\nfont: AmericanTypewriter\nimage: Dinos rectangles',1,'Rectangle Sticker Labels',15,0,NULL,'2013-10-19 19:49:41','2013-10-19 19:49:41',2147483647),
	('526271d5-ed8c-4613-b714-074cd87f8d82','526271d5-cd5c-4122-9ba2-074cd87f8d82','Rectangle (Sticker)','5','ProductVariant','first line: Rachel\nsecond line: Summers\nfont: AmericanTypewriter\nimage: Under the Sea rectangles',1,'Rectangle Sticker Labels',15,0,NULL,'2013-10-19 19:49:41','2013-10-19 19:49:41',2147483647),
	('5262720f-4d40-46cf-924b-0756d87f8d82','5262720f-bea0-4d73-8d52-0756d87f8d82','Rectangle (Sticker)','5','ProductVariant','first line: Rachel\nsecond line: Summers\nfont: AmericanTypewriter\nimage: Under the Sea rectangles',1,'Rectangle Sticker Labels',15,0,NULL,'2013-10-19 19:50:39','2013-10-19 19:50:39',2147483647),
	('5262720f-ce40-426e-bd42-0756d87f8d82','5262720f-bea0-4d73-8d52-0756d87f8d82','Rectangle (Sticker)','5','ProductVariant','first line: Dinosaur\nsecond line: La\nfont: AmericanTypewriter\nimage: Dinos rectangles',1,'Rectangle Sticker Labels',15,0,NULL,'2013-10-19 19:50:39','2013-10-19 19:50:39',2147483647);

/*!40000 ALTER TABLE `carts_items` ENABLE KEYS */;
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
	(3,'Shop Administrators','Shop Admin','2013-06-28 03:02:48','2013-06-28 03:02:48',2);

/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table order_addresses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `order_addresses`;

CREATE TABLE `order_addresses` (
  `id` varchar(36) NOT NULL,
  `order_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `first_name` varchar(128) DEFAULT NULL,
  `last_name` varchar(128) DEFAULT NULL,
  `company` varchar(128) DEFAULT NULL,
  `street` varchar(128) DEFAULT NULL,
  `street2` varchar(128) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `zip` varchar(128) DEFAULT NULL,
  `country` varchar(2) DEFAULT NULL,
  `type` varchar(2) DEFAULT NULL COMMENT 'billing or shipping',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `USER_INDEX` (`user_id`),
  KEY `ORDER_INDEX` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `order_addresses` WRITE;
/*!40000 ALTER TABLE `order_addresses` DISABLE KEYS */;

INSERT INTO `order_addresses` (`id`, `order_id`, `user_id`, `first_name`, `last_name`, `company`, `street`, `street2`, `city`, `zip`, `country`, `type`, `created`, `modified`)
VALUES
	('5209cea6-62fc-4f6c-b584-074cd87f8d82',NULL,'3','sim',NULL,NULL,'asd',NULL,'asd','123','SG','sh','2013-08-12 23:13:58','2013-08-12 23:13:58'),
	('5209d6bd-c3c8-45b8-9418-075dd87f8d82',NULL,'3','qwe',NULL,NULL,'asxd',NULL,'zxc','800','SG','bi','2013-08-12 23:48:29','2013-08-12 23:48:29'),
	('520a4e0c-66e0-484a-a4d3-0778d87f8d82',NULL,'3','aik','sim',NULL,'ubi avenue 1','3118','Singapore','400400','SG','bi','2013-08-13 08:17:32','2013-08-13 08:17:32'),
	('520a4e0c-8978-4ee4-a4ca-0778d87f8d82','5222f13a-9290-44f5-b644-0828d87f8d82','3','aik','sim',NULL,'ubi avenue 1','3118','Singapore','400400','SG','sh','2013-08-13 08:17:32','2013-08-13 08:17:32'),
	('520d7721-61e0-4697-88a2-06d3d87f8d82','5222f13a-9290-44f5-b644-0828d87f8d82','3','Aik Chun','sim',NULL,'Block 100','street 222','singapore','222','SG','bi','2013-08-15 17:49:37','2013-08-15 17:49:37'),
	('520d7721-9ddc-4ae8-95d0-06d3d87f8d82',NULL,'3','Sim Aik Chun',NULL,NULL,'Block 100','street 222','singapore','222','SG','sh','2013-08-15 17:49:37','2013-08-15 17:49:37'),
	('520d8856-bbb0-4a62-86f4-06e6d87f8d82',NULL,'3','rty',NULL,NULL,'fgh','vbn','uio','900','SG','sh','2013-08-15 19:03:02','2013-08-15 19:03:02'),
	('520d8856-dd80-4777-a5fa-06e6d87f8d82',NULL,'3','kim sia',NULL,NULL,'eunos','link','sing','300','SG','bi','2013-08-15 19:03:02','2013-08-15 19:03:02'),
	('520d8d28-2838-4bae-80ca-06e6d87f8d82',NULL,'2','ks',NULL,NULL,'123','456','kimcity','kimzip','SG','sh','2013-08-15 19:23:36','2013-08-15 19:23:36'),
	('520d8d28-962c-43a8-a4ca-06e6d87f8d82',NULL,'2','ks',NULL,NULL,'123','456','kimcity','kimzip','SG','bi','2013-08-15 19:23:36','2013-08-15 19:23:36'),
	('520d9188-7164-4509-8ff3-06d7d87f8d82',NULL,'2','ks1',NULL,NULL,'123','456','kimcity','kimzip','SG','bi','2013-08-15 19:42:16','2013-08-15 19:42:16'),
	('520d9188-d8a8-4d63-ab98-06d7d87f8d82',NULL,'2','ks1',NULL,NULL,'123','456','kimcity','kimzip','SG','sh','2013-08-15 19:42:16','2013-08-15 19:42:16'),
	('520d91b4-b300-49e3-9753-06d6d87f8d82',NULL,'2','france',NULL,NULL,'123','456','kimcity','kimzip','FR','bi','2013-08-15 19:43:00','2013-08-15 19:43:00'),
	('520d91b4-bab0-4884-9830-06d6d87f8d82',NULL,'2','UK',NULL,NULL,'123','456','kimcity','kimzip','GB','sh','2013-08-15 19:42:59','2013-08-15 19:42:59'),
	('520db337-2148-4dda-b020-06dfd87f8d82',NULL,'3','Sim Aik Chun',NULL,NULL,'Block 100','street 222','singapore','222','FR','bi','2013-08-15 22:05:59','2013-08-15 22:05:59'),
	('520db337-25a0-4a23-b0d8-06dfd87f8d82',NULL,'3','Sim Aik Chun',NULL,NULL,'Block 100','street 222','singapore','222','SG','sh','2013-08-15 22:05:59','2013-08-15 22:05:59'),
	('520db467-d560-451c-a97d-06e5d87f8d82',NULL,'3','Sim Aik Chun',NULL,NULL,'Block 100','street 222','singapore','222','DE','bi','2013-08-15 22:11:03','2013-08-15 22:11:03'),
	('520db49f-1564-4f38-b7ba-06d1d87f8d82',NULL,'3','Sim Aik Chun',NULL,NULL,'Block 100','street 222','singapore','222','GB','bi','2013-08-15 22:11:59','2013-08-15 22:11:59'),
	('520db51d-4ed4-4890-95ab-06d6d87f8d82',NULL,'3','rty',NULL,NULL,'fgh','vbn','uio','900','SG','bi','2013-08-15 22:14:05','2013-08-15 22:14:05'),
	('523bf893-52c0-43db-ab67-0761d87f8d82',NULL,'5','aik_chun','customer',NULL,'318 gaudy salami','300318','Singapore','400318','SG','sh','2013-09-20 15:26:11','2013-09-20 15:26:11'),
	('523bf893-56bc-40ff-8b1a-0761d87f8d82',NULL,'5','aik_chun','customer',NULL,'318 gaudy salami','300318','Singapore','400318','SG','bi','2013-09-20 15:26:11','2013-09-20 15:26:11'),
	('5241e4c8-2d60-4244-9f29-0770d87f8d82',NULL,'8','Charles','Xavier',NULL,'1407 Graymalkin Lane, ','Salem Center','Westchester Country, New York','10451','US','sh','2013-09-25 03:15:20','2013-09-25 03:15:20'),
	('5241e4c8-5c08-41e0-af5c-0770d87f8d82',NULL,'8','Charles','Xavier',NULL,'1407 Graymalkin Lane, ','Salem Center','Westchester Country, New York','10451','US','bi','2013-09-25 03:15:20','2013-09-25 03:15:20');

/*!40000 ALTER TABLE `order_addresses` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table order_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `order_items`;

CREATE TABLE `order_items` (
  `id` varchar(36) NOT NULL,
  `order_id` varchar(36) DEFAULT NULL,
  `foreign_key` varchar(36) DEFAULT NULL,
  `metadata` text NOT NULL,
  `model` varchar(64) DEFAULT NULL,
  `quantity` int(4) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `virtual` tinyint(1) DEFAULT '0' COMMENT 'Virtual as a download or a service',
  `status` varchar(16) DEFAULT NULL COMMENT 'internal status, up to the app',
  `shipped` tinyint(1) DEFAULT '0' COMMENT 'Virtual as a download or a service',
  `shipping_date` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `total` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FOREIGN_KEY_INDEX` (`foreign_key`),
  KEY `ORDER_INDEX` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` varchar(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `cart_id` varchar(36) DEFAULT NULL,
  `cart_snapshop` text,
  `token` varchar(32) DEFAULT NULL,
  `processor` varchar(64) DEFAULT NULL,
  `status` varchar(16) DEFAULT NULL COMMENT 'internal status, up to the app',
  `payment_reference` varchar(16) DEFAULT NULL,
  `payment_status` varchar(16) DEFAULT NULL,
  `transaction_fee` float DEFAULT NULL,
  `invoice_number` varchar(64) DEFAULT NULL,
  `metadata` text NOT NULL,
  `billing_address` text,
  `shipping_address` text,
  `total` float DEFAULT NULL,
  `currency` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `order_item_count` int(8) NOT NULL DEFAULT '0',
  `order_number` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `USER_INDEX` (`user_id`),
  KEY `CART_INDEX` (`cart_id`),
  KEY `TOKEN_INDEX` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table payment_api_transactions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `payment_api_transactions`;

CREATE TABLE `payment_api_transactions` (
  `id` varchar(36) NOT NULL,
  `order_id` varchar(36) NOT NULL,
  `token` varchar(255) NOT NULL,
  `processor` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `file` text,
  `line` int(6) DEFAULT NULL,
  `trace` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ORDER_INDEX` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table payment_methods
# ------------------------------------------------------------

DROP TABLE IF EXISTS `payment_methods`;

CREATE TABLE `payment_methods` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `fee` float DEFAULT NULL COMMENT 'Can be used to charge a fee for that processor',
  `active` tinyint(1) DEFAULT '0' COMMENT 'Virtual as a download or a service',
  `description` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table product_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product_groups`;

CREATE TABLE `product_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `product_groups` WRITE;
/*!40000 ALTER TABLE `product_groups` DISABLE KEYS */;

INSERT INTO `product_groups` (`id`, `name`, `type`, `created`, `modified`)
VALUES
	(1,'Rectangle','Sticker','2013-06-27 20:20:10','2013-06-27 20:20:20');

/*!40000 ALTER TABLE `product_groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table product_images
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product_images`;

CREATE TABLE `product_images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order` int(11) unsigned NOT NULL DEFAULT '0',
  `left` int(11) unsigned NOT NULL DEFAULT '0',
  `right` int(11) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `product_id` int(11) unsigned NOT NULL,
  `product_variant_id` int(11) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `dir` varchar(255) NOT NULL,
  `mimetype` varchar(255) NOT NULL,
  `filesize` int(11) unsigned NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;

INSERT INTO `product_images` (`id`, `order`, `left`, `right`, `type`, `product_id`, `product_variant_id`, `filename`, `dir`, `mimetype`, `filesize`, `created`, `modified`)
VALUES
	(3,0,0,7,0,1,5,'Tiny Dancer Rectangles.jpg','3','',0,'2013-07-10 22:46:33','2013-07-19 03:48:19'),
	(7,1,3,8,0,1,5,'Boys Patterns rectangles.jpg','7','',0,'2013-07-10 22:48:21','2013-07-19 03:48:19'),
	(8,2,7,9,0,1,5,'Space Rectangles.jpg','8','',0,'2013-07-10 22:48:21','2013-07-19 03:48:19'),
	(9,3,8,10,0,1,5,'Under the Sea rectangles.jpg','9','',0,'2013-07-10 22:48:22','2013-07-19 03:48:19'),
	(10,4,9,11,0,1,5,'Vrooom Rectangles.jpg','10','',0,'2013-07-10 22:48:22','2013-07-19 03:48:19'),
	(11,5,10,12,0,1,5,'Cupcake Rectangles.jpg','11','',0,'2013-07-10 22:48:48','2013-07-19 03:48:19'),
	(12,6,11,13,0,1,5,'Cutie crawlies rectangles.jpg','12','',0,'2013-07-10 22:48:48','2013-07-19 03:48:19'),
	(13,7,12,14,0,1,5,'Dinos rectangles.jpg','13','',0,'2013-07-10 22:48:48','2013-07-19 03:48:19'),
	(14,8,13,15,0,1,5,'Mushroom Rectangles.jpg','14','',0,'2013-07-18 23:36:25','2013-07-19 03:48:19'),
	(15,9,14,16,0,1,5,'Girl Patterns Rectangles.jpg','15','',0,'2013-07-18 23:38:55','2013-07-19 03:48:19'),
	(16,10,15,0,0,1,5,'Aliens rectangles.jpg','16','',0,'2013-07-18 23:39:45','2013-07-19 03:48:19'),
	(17,0,0,0,0,6,12,'dual name pack.png','17','',0,'2013-09-06 16:22:33','2013-09-22 16:52:44'),
	(20,0,0,22,0,6,13,'Cupcake Rectangles.jpg','20','',0,'2013-09-06 16:26:41','2013-09-06 16:26:42'),
	(22,1,20,0,0,6,13,'Cutie crawlies rectangles.jpg','22','',0,'2013-09-06 16:26:41','2013-09-06 16:26:42'),
	(23,0,0,24,0,6,15,'Dinos rectangles.jpg','23','',0,'2013-09-06 16:36:55','2013-09-06 16:36:55'),
	(24,1,23,0,0,6,15,'Girl Patterns Rectangles.jpg','24','',0,'2013-09-06 16:36:55','2013-09-06 16:36:55'),
	(25,0,0,0,0,2,6,'round labels.png','25','',0,'2013-09-22 16:09:18','2013-09-22 16:09:18'),
	(26,0,0,0,0,3,8,'Chinese labels.png','26','',0,'2013-09-22 16:10:10','2013-09-22 16:10:10'),
	(27,0,0,0,0,4,9,'Birthday labels.png','27','',0,'2013-09-22 16:46:06','2013-09-22 16:46:06'),
	(28,0,0,0,0,5,11,'Book labels.png','28','',0,'2013-09-22 16:46:30','2013-09-22 16:46:30'),
	(29,0,0,0,0,7,17,'Dual Chi-Eng labels.png','29','',0,'2013-09-22 16:53:46','2013-09-22 16:53:46'),
	(30,0,0,0,0,8,21,'Iron-ons (rectangle).png','30','',0,'2013-09-22 16:54:01','2013-09-22 16:54:01'),
	(31,0,0,0,0,9,22,'Iron-ons (circles).png','31','',0,'2013-09-22 16:54:26','2013-09-22 16:54:26'),
	(32,0,0,0,0,10,23,'Iron-ons (dual name).png','32','',0,'2013-09-22 16:54:55','2013-09-22 16:54:55'),
	(33,0,0,0,0,11,25,'Iron-ons (dual Eng-Chi).png','33','',0,'2013-09-22 16:55:15','2013-09-22 16:55:15'),
	(34,0,0,0,0,12,26,'get me started.png','34','',0,'2013-09-22 16:55:37','2013-09-22 16:55:37');

/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table product_representative_images
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product_representative_images`;

CREATE TABLE `product_representative_images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `dir` varchar(255) NOT NULL,
  `mimetype` varchar(255) NOT NULL,
  `filesize` int(11) unsigned NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `product_representative_images` WRITE;
/*!40000 ALTER TABLE `product_representative_images` DISABLE KEYS */;

INSERT INTO `product_representative_images` (`id`, `product_id`, `filename`, `dir`, `mimetype`, `filesize`, `created`, `modified`)
VALUES
	(1,1,'rectangle set.png','1','',0,'2013-09-28 00:32:45','2013-09-28 11:28:28'),
	(2,2,'round labels.png','2','',0,'2013-09-28 00:33:15','2013-09-28 00:33:15'),
	(3,3,'Chinese labels.png','3','',0,'2013-09-28 00:33:31','2013-09-28 00:33:31'),
	(4,4,'Birthday labels.png','4','',0,'2013-09-28 00:33:42','2013-09-28 00:33:42'),
	(5,5,'Book labels.png','5','',0,'2013-09-28 00:35:34','2013-09-28 00:35:34'),
	(6,6,'dual name pack.png','6','',0,'2013-09-28 00:38:25','2013-09-28 00:38:25'),
	(7,7,'Dual Chi-Eng labels.png','7','',0,'2013-09-28 00:39:46','2013-09-28 00:39:46'),
	(8,8,'Iron-ons (rectangle).png','8','',0,'2013-09-28 00:41:14','2013-09-28 00:41:14'),
	(9,9,'Iron-ons (circles).png','9','',0,'2013-09-28 00:53:12','2013-09-28 00:53:12'),
	(10,12,'get me started.png','10','',0,'2013-09-28 00:54:17','2013-09-28 00:54:17'),
	(11,14,'variety pack.png','11','',0,'2013-09-28 02:02:37','2013-09-28 02:02:37'),
	(12,10,'Iron-ons (dual name).png','12','',0,'2013-09-29 06:09:33','2013-09-29 06:09:33'),
	(13,11,'Iron-ons (dual Eng-Chi).png','13','',0,'2013-09-29 06:09:45','2013-09-29 06:09:45');

/*!40000 ALTER TABLE `product_representative_images` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table product_variants
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product_variants`;

CREATE TABLE `product_variants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `display_name` varchar(255) NOT NULL,
  `short_name` varchar(255) NOT NULL,
  `quantity` int(8) NOT NULL DEFAULT '0',
  `max_quantity` int(8) NOT NULL DEFAULT '0',
  `min_quantity` int(8) NOT NULL DEFAULT '0',
  `for_sale` tinyint(1) NOT NULL DEFAULT '0',
  `currency` varchar(3) NOT NULL DEFAULT 'SGD',
  `price` decimal(6,2) NOT NULL DEFAULT '0.00',
  `product_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `left` int(11) unsigned NOT NULL DEFAULT '0',
  `right` int(11) unsigned NOT NULL DEFAULT '0',
  `order` int(11) unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `product_variants` WRITE;
/*!40000 ALTER TABLE `product_variants` DISABLE KEYS */;

INSERT INTO `product_variants` (`id`, `display_name`, `short_name`, `quantity`, `max_quantity`, `min_quantity`, `for_sale`, `currency`, `price`, `product_id`, `created`, `left`, `right`, `order`, `modified`, `name`)
VALUES
	(5,'Rectangle Sticker Labels','Rectangle (Sticker)',1000,0,0,1,'SGD',15.00,1,'2013-06-30 03:31:44',0,0,0,'2013-07-25 05:01:44','DEFAULT'),
	(6,'Circle Sticker Labels','Circle (Sticker)',1000,0,0,1,'SGD',15.00,2,'2013-06-30 03:32:10',0,0,0,'2013-07-25 05:01:44','DEFAULT'),
	(7,'Chinese Name Sticker Labels - Horizontal','Chinese Name (Sticker) - Horizontal',1000,0,0,1,'SGD',15.00,3,'2013-06-30 03:32:29',0,8,0,'2013-07-25 05:01:44','Horizontal'),
	(8,'Chinese Name Sticker Labels - Vertical','Chinese Name (Sticker) - Vertical',1000,0,0,1,'SGD',15.00,3,'2013-06-30 03:32:37',7,0,1,'2013-07-25 05:01:44','Vertical'),
	(9,'Birthday Sticker Labels','Birthday (Sticker)',1000,0,0,1,'SGD',15.00,4,'2013-06-30 03:33:25',0,0,0,'2013-07-25 05:01:44','DEFAULT'),
	(11,'Book Sticker Labels','Book (Sticker)',1000,0,0,1,'SGD',15.00,5,'2013-06-30 03:34:21',0,0,0,'2013-07-25 05:01:45','DEFAULT'),
	(12,'Split Dual Name Pack (Sticker Labels) - Small Rectangle Labels','Split Dual Name Pack (Sticker) - S Rect',1000,0,0,1,'SGD',20.00,6,'2013-06-30 03:34:48',0,13,0,'2013-07-25 05:01:45','Small Rectangle Labels'),
	(13,'Split Dual Name Pack (Sticker Labels) - Circle Labels','Split Dual Name Pack (Sticker) - Circle',1000,0,0,1,'SGD',20.00,6,'2013-06-30 03:34:59',12,15,1,'2013-09-06 17:18:25','Circle Labels'),
	(15,'Split Dual Name Pack (Sticker Labels) - Book Labels','Split Dual Name Pack (Sticker) - Book',1000,0,0,1,'SGD',20.00,6,'2013-06-30 03:37:34',13,36,2,'2013-09-06 17:18:25','Book Labels'),
	(17,'Split English/Chinese Pack (Sticker Labels) - Small Rectangle Labels','Split English/Chinese Pack (Sticker) - S Rect',1000,0,0,1,'SGD',20.00,7,'2013-06-30 03:37:58',0,18,0,'2013-07-25 05:01:45','Small Rectangle Labels'),
	(18,'Split English/Chinese Pack (Sticker Labels) - Birthday Labels','Split English/Chinese Pack (Sticker) - Birthday',1000,0,0,1,'SGD',20.00,7,'2013-06-30 03:38:08',17,20,1,'2013-07-25 05:01:45','Birthday Labels'),
	(20,'Split English/Chinese Pack (Sticker Labels) - Book Labels','Split English/Chinese Pack (Sticker) - Birthday',1000,0,0,1,'SGD',20.00,7,'2013-06-30 03:38:39',18,0,2,'2013-07-25 05:01:45','Book Labels'),
	(21,'Rectangle Iron On Labels','Rectangle (Iron)',1000,0,0,1,'SGD',15.00,8,'2013-06-30 03:38:58',0,0,0,'2013-07-25 05:01:45','DEFAULT'),
	(22,'Circle Iron On Labels','Circle (Iron)',1000,0,0,1,'SGD',15.00,9,'2013-06-30 03:39:19',0,0,0,'2013-07-25 05:01:45','DEFAULT'),
	(23,'Split Dual Name Pack (Iron On Labels) - Rectangle Labels','Split Dual Name Pack (Iron) - Rectangle',1000,0,0,1,'SGD',20.00,10,'2013-06-30 03:39:38',0,24,0,'2013-07-25 05:01:45','Rectangle Labels'),
	(24,'Split Dual Name Pack (Iron On Labels) - Circle Labels','Split Dual Name Pack (Iron) - Circle',1000,0,0,1,'SGD',20.00,10,'2013-06-30 03:39:49',23,0,1,'2013-07-25 05:01:45','Circle Labels'),
	(25,'Split English/Chinese Pack (Iron On Labels)','Split English/Chinese Pack (Iron)',1000,0,0,1,'SGD',20.00,11,'2013-06-30 03:44:09',0,0,0,'2013-07-25 05:01:45','DEFAULT'),
	(26,'Get Me Started Value Pack','Get Me Started Value Pack',1000,0,0,1,'SGD',30.00,12,'2013-06-30 03:44:35',0,0,0,'2013-07-25 05:01:45','DEFAULT'),
	(27,'Give Me Everything Pack','Give Me Everything Pack',1000,0,0,1,'SGD',50.00,14,'2013-06-30 03:45:06',0,0,0,'2013-07-25 05:01:45','DEFAULT'),
	(28,'Chinese Name Iron On Labels - Horizontal','Chinese Name (Iron) - Horizontal',1000,0,0,1,'SGD',15.00,15,'2013-06-30 03:45:31',0,29,0,'2013-07-25 05:01:45','Horizontal'),
	(29,'Chinese Name Iron On Labels - Vertical','Chinese Name (Iron) - Vertical',1000,0,0,1,'SGD',15.00,15,'2013-06-30 03:45:40',28,0,1,'2013-07-25 05:01:45','Vertical'),
	(36,'Split Dual Name Pack (Sticker Labels) - Birthday Labels','Split Dual Name Pack (Sticker) - Birthday',1000,0,0,1,'SGD',20.00,6,'2013-07-19 03:21:06',15,0,3,'2013-09-06 17:18:25','Birthday Labels');

/*!40000 ALTER TABLE `product_variants` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `currency` varchar(3) NOT NULL DEFAULT 'SGD',
  `price` decimal(6,2) NOT NULL DEFAULT '0.00',
  `created` datetime NOT NULL,
  `product_variant_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` (`id`, `name`, `description`, `currency`, `price`, `created`, `product_variant_count`)
VALUES
	(1,'Rectangle Sticker Labels','With our classic vinyl rectangle sticker labels, you\'ll be able to label in style. Personalize all your kid\'s belongings and never lose another item again. \r\n\r\nDetails:\r\n51.5mm x 24mm\r\nPack contains 48 labels','SGD',15.00,'0000-00-00 00:00:00',1),
	(2,'Circle Sticker Labels','These supercute round vinyl labels are perfect for everything, ranging from bottles and bowls to sippy cups and snack boxes. Like all our sticker labels, they\'re waterproof, sterilizer-safe, microwavable and dishwasher-friendly. \r\n\r\nDetails: \r\n37.5 mm \r\nPack contains 42 labels ','SGD',15.00,'0000-00-00 00:00:00',1),
	(3,'Chinese Name Sticker Labels','Love Chinese? We do too! Identify belongings and teach your kids to write their Chinese names with these Chinese Name Sticker Labels. \r\n\r\nDetails: \r\n51.5mm x 24mm \r\nPack contains 48 labels ','SGD',15.00,'0000-00-00 00:00:00',2),
	(4,'Birthday Sticker Labels','Birthday Labels are a great way to say Happy Birthday! Instead of scribbling your name on wrappers with a marker, just stick on a personalized Birthday Label and you\'re good to go.  \r\n\r\nDetails: \r\n63mm x 29mm \r\nPack contains 27 labels ','SGD',15.00,'0000-00-00 00:00:00',1),
	(5,'Book Sticker Labels','Book labels are great for storybooks, textbooks, workbooks, notebooks, jotter books, coloring books and even sticker books. \r\n\r\nDetails: \r\n63mm x 29mm \r\nPack contains 27 labels  ','SGD',15.00,'0000-00-00 00:00:00',1),
	(6,'Split Dual Name Pack (Sticker Labels)','Instead of buying 2 separate packs for 2 kids, share a pack and combine both names in a Split Dual Name Pack. Sharing for the win!\r\n\r\nDetails:\r\nApplicable to all products.\r\nOnly 1 design per pack.\r\n\r\n\r\n','SGD',20.00,'0000-00-00 00:00:00',4),
	(7,'Split English/Chinese Pack (Sticker Labels)','Canâ€™t decide between having the labels in English or Chinese? Have the best of both worlds with our Split English/Chinese Pack. \r\n\r\nDetails:\r\nApplicable to all except circle labels\r\nLimited to 1 design per pack','SGD',20.00,'0000-00-00 00:00:00',3),
	(8,'Rectangle Iron On Labels','We\'ve taken all the awesomeness of our classic vinyl rectangle sticker labels and made it into iron on labels because tiny clothes need label love too. Safe for washing machines and dryers. \r\n\r\nDetails: \r\n45mm x 18mm \r\nPack contains 40 labels ','SGD',15.00,'0000-00-00 00:00:00',1),
	(9,'Circle Iron On Labels','Our round iron on labels look unbelievably on tiny clothes. Plus you won\'t have to worry about getting their clothes mixed up in preschool ever again. We\'d say it\'s a win-win!\r\n\r\nDetails: \r\n30 mm \r\nPack contains 36 labels ','SGD',15.00,'0000-00-00 00:00:00',1),
	(10,'Split Dual Name Pack (Iron On Labels)','Instead of buying 2 separate packs for 2 kids, share a pack and combine both names in a Split Dual Name Pack. Sharing for the win! \r\n\r\nDetails: \r\nApplicable to both rectangles and circles. \r\nOnly 1 design per pack.  ','SGD',20.00,'0000-00-00 00:00:00',2),
	(11,'Split English/Chinese Pack (Iron On Labels)','Canâ€™t decide between having the labels in English or Chinese? Have the best of both worlds with our Split English/Chinese Pack. \r\n\r\nDetails: \r\nApplicable to rectangle labels only \r\nLimited to 1 design per pack ','SGD',20.00,'0000-00-00 00:00:00',1),
	(12,'Get Me Started Value Pack','A Combo Pack to get you started!\r\n\r\n32 x Small Rectangle Sticker Labels\r\n14 x Circle Sticker Labels\r\n40 x Rectangle Iron Ons','SGD',30.00,'0000-00-00 00:00:00',1),
	(14,'Give Me Everything Pack','A super duper value pack!\r\n\r\n32 x Small Rectangle Sticker Labels\r\n32 x Chinese Name Sticker Labels\r\n28 x Circle Sticker Labels\r\n20 x Rectangle Iron Ons\r\n18 x Circle Iron Ons','SGD',50.00,'0000-00-00 00:00:00',1),
	(15,'Chinese Name Iron On Labels','Love Chinese? We do too! Identify belongings and teach your kids to write their Chinese names with these Chinese Name Sticker Labels. \r\n\r\nDetails: \r\n45mm x 18mm \r\nPack contains 40 labels  ','SGD',15.00,'0000-00-00 00:00:00',2);

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table products_in_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products_in_groups`;

CREATE TABLE `products_in_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `product_group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table schema_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;

INSERT INTO `schema_migrations` (`id`, `class`, `type`, `created`)
VALUES
	(1,'InitMigrations','Migrations','2013-07-22 19:01:10'),
	(2,'ConvertVersionToClassNames','Migrations','2013-07-22 19:01:10'),
	(3,'IncreaseClassNameLength','Migrations','2013-07-22 19:01:10'),
	(4,'D287dbf03fef11e1b86c0800200c9a66','Cart','2013-07-22 19:01:50'),
	(5,'ChangesAndNewFields','Cart','2013-07-22 19:01:50');

/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table shipping_methods
# ------------------------------------------------------------

DROP TABLE IF EXISTS `shipping_methods`;

CREATE TABLE `shipping_methods` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `currency` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table shipping_options
# ------------------------------------------------------------

DROP TABLE IF EXISTS `shipping_options`;

CREATE TABLE `shipping_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `period` varchar(255) NOT NULL,
  `fees` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `shipping_options` WRITE;
/*!40000 ALTER TABLE `shipping_options` DISABLE KEYS */;

INSERT INTO `shipping_options` (`id`, `name`, `period`, `fees`)
VALUES
	(1,'free shipping via SingPost','2 weeks',0.00),
	(2,'registered mail via SingPost','2 weeks',2.20);

/*!40000 ALTER TABLE `shipping_options` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `short_name` varchar(20) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE_EMAIL` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `short_name`, `token`, `group_id`, `created`, `modified`)
VALUES
	(1,'ks','kimcity@gmail.com',NULL,NULL,NULL,0,'2013-06-22 18:51:26','2013-06-22 18:51:26'),
	(2,'KimSia','kimsia@oppoin.com','9c1a57615fd9c4fd9361b8264c0c4ad06aaf9ad9','KimSia','',1,'2013-06-28 13:51:12','2013-06-28 13:51:12'),
	(3,'Sim Aik Chun','aikchun616@gmail.com','4f346956b16be16322f6c642072f615f68ba255d','AikChun1',NULL,1,'2013-06-28 13:51:57','2013-09-22 20:47:21'),
	(4,'Daphne Ling','daphne@motherinc.org','275108ab67a27356dab9dcff38275c044766397f','Daphne','NULL',3,'2013-07-02 09:30:20','2013-07-02 09:30:20'),
	(12,'aikchun','sac_89_1@hotmail.com','275108ab67a27356dab9dcff38275c044766397f','Simac',NULL,2,'2013-09-27 03:24:47','2013-09-27 03:24:47');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
