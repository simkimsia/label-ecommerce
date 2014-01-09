# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.34-0ubuntu0.12.10.1)
# Database: lea_childlabel
# Generation Time: 2014-01-09 09:13:28 +0000
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
	(1,NULL,NULL,NULL,'controllers',1,338),
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
	(94,1,NULL,NULL,'Carts',196,227),
	(95,94,NULL,NULL,'index',197,198),
	(96,94,NULL,NULL,'view',199,200),
	(97,94,NULL,NULL,'add',201,202),
	(98,94,NULL,NULL,'edit',203,204),
	(99,94,NULL,NULL,'delete',205,206),
	(100,94,NULL,NULL,'add_item',207,208),
	(101,94,NULL,NULL,'remove_item',209,210),
	(102,1,NULL,NULL,'Cart',228,309),
	(103,102,NULL,NULL,'CartRules',229,236),
	(104,103,NULL,NULL,'admin_index',230,231),
	(105,103,NULL,NULL,'admin_add',232,233),
	(106,103,NULL,NULL,'admin_edit',234,235),
	(107,102,NULL,NULL,'Carts',237,268),
	(108,107,NULL,NULL,'index',238,239),
	(109,107,NULL,NULL,'view',240,241),
	(110,107,NULL,NULL,'add',242,243),
	(111,107,NULL,NULL,'edit',244,245),
	(112,107,NULL,NULL,'delete',246,247),
	(113,107,NULL,NULL,'add_item',248,249),
	(114,107,NULL,NULL,'remove_item',250,251),
	(115,102,NULL,NULL,'OrderAddresses',269,270),
	(116,102,NULL,NULL,'Orders',271,284),
	(117,116,NULL,NULL,'index',272,273),
	(118,116,NULL,NULL,'view',274,275),
	(119,116,NULL,NULL,'cancel',276,277),
	(120,116,NULL,NULL,'admin_index',278,279),
	(121,116,NULL,NULL,'admin_view',280,281),
	(122,116,NULL,NULL,'admin_refund',282,283),
	(123,102,NULL,NULL,'PaymentMethods',285,292),
	(124,123,NULL,NULL,'index',286,287),
	(125,123,NULL,NULL,'admin_index',288,289),
	(126,123,NULL,NULL,'admin_edit',290,291),
	(127,102,NULL,NULL,'ShippingMethods',293,308),
	(128,127,NULL,NULL,'index',294,295),
	(129,127,NULL,NULL,'view',296,297),
	(130,127,NULL,NULL,'admin_index',298,299),
	(131,127,NULL,NULL,'admin_view',300,301),
	(132,127,NULL,NULL,'admin_add',302,303),
	(133,127,NULL,NULL,'admin_edit',304,305),
	(134,127,NULL,NULL,'admin_delete',306,307),
	(135,1,NULL,NULL,'Search',310,311),
	(136,21,NULL,NULL,'admin_rename',57,58),
	(137,1,NULL,NULL,'ShippingOptions',312,323),
	(138,137,NULL,NULL,'admin_index',313,314),
	(139,137,NULL,NULL,'admin_view',315,316),
	(140,137,NULL,NULL,'admin_add',317,318),
	(141,137,NULL,NULL,'admin_edit',319,320),
	(142,137,NULL,NULL,'admin_delete',321,322),
	(143,94,NULL,NULL,'cart_unfilled',211,212),
	(144,94,NULL,NULL,'save_address',213,214),
	(145,94,NULL,NULL,'pay',215,216),
	(146,94,NULL,NULL,'complete_purchase',217,218),
	(147,94,NULL,NULL,'successful',219,220),
	(148,94,NULL,NULL,'successful_ib',221,222),
	(149,94,NULL,NULL,'update',223,224),
	(150,107,NULL,NULL,'cart_unfilled',252,253),
	(151,107,NULL,NULL,'save_address',254,255),
	(152,107,NULL,NULL,'pay',256,257),
	(153,107,NULL,NULL,'complete_purchase',258,259),
	(154,107,NULL,NULL,'successful',260,261),
	(155,107,NULL,NULL,'successful_ib',262,263),
	(156,107,NULL,NULL,'update',264,265),
	(157,47,NULL,NULL,'view_my_own_profile',141,142),
	(158,47,NULL,NULL,'register',143,144),
	(159,1,NULL,NULL,'Queryable',324,325),
	(160,47,NULL,NULL,'change_my_own_password',145,146),
	(161,28,NULL,NULL,'summary',75,76),
	(162,1,NULL,NULL,'ProductRepresentativeImages',326,337),
	(163,162,NULL,NULL,'admin_index',327,328),
	(164,162,NULL,NULL,'admin_view',329,330),
	(165,162,NULL,NULL,'admin_add',331,332),
	(166,162,NULL,NULL,'admin_edit',333,334),
	(167,162,NULL,NULL,'admin_delete',335,336),
	(168,94,NULL,NULL,'empty_my_cart',225,226),
	(169,107,NULL,NULL,'empty_my_cart',266,267);

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
	(26,'5241e4c8-5c08-41e0-af5c-0770d87f8d82',8),
	(27,'52ce0c5d-cb44-47a5-9f24-7421c0b9308e',17),
	(28,'52ce0c5d-1f70-474b-aee5-7421c0b9308e',17),
	(29,'52ce1bbc-12d8-4b90-a3c9-3aa9c0b9308e',4),
	(30,'52ce1bbc-a130-415b-b68f-3aa9c0b9308e',4),
	(31,'52ce233e-a628-4741-b614-5d23c0b9308e',2),
	(32,'52ce233e-c844-4d26-af61-5d23c0b9308e',2);

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
	(11,3,137,'1','1','1','1'),
	(12,3,116,'1','1','1','1');

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
	('5262720f-bea0-4d73-8d52-0756d87f8d82','3','My cart',NULL,1,2,'2013-10-19 19:50:39','2013-10-19 19:50:39'),
	('529597d9-3950-4608-921f-6867c0fe9496','1','My cart',0,1,0,'2013-11-27 00:57:29','2013-11-27 00:57:29'),
	('52ce0cbe-1cf0-46d7-b8e2-13ffc0b9308e','17','My cart',15,1,1,'2014-01-08 20:43:10','2014-01-08 20:43:10'),
	('52ce1c40-1da8-4640-af94-6489c0b9308e','4','My cart',15,1,1,'2014-01-08 21:49:20','2014-01-08 21:49:20');

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
	('5262720f-ce40-426e-bd42-0756d87f8d82','5262720f-bea0-4d73-8d52-0756d87f8d82','Rectangle (Sticker)','5','ProductVariant','first line: Dinosaur\nsecond line: La\nfont: AmericanTypewriter\nimage: Dinos rectangles',1,'Rectangle Sticker Labels',15,0,NULL,'2013-10-19 19:50:39','2013-10-19 19:50:39',2147483647),
	('52959c31-550c-4dfa-b62e-6af1c0fe9496','52959bbd-dc2c-4119-be76-6a76c0fe9496','Rectangle (Sticker)','5','ProductVariant','first line: Daphne\nsecond line: Ling\nfont: Chowderhead\nimage: Girl Patterns Rectangles',1,'Rectangle Sticker Labels',15,0,NULL,'2013-11-27 01:16:01','2013-11-27 01:16:01',2147483647),
	('5295d2de-284c-4056-902f-1ba0c0fe9496','52959bbd-dc2c-4119-be76-6a76c0fe9496','Rectangle (Sticker)','5','ProductVariant','first line: Seet\nsecond line: Siew Ling\nfont: Bebas\nimage: Under the Sea rectangles',1,'Rectangle Sticker Labels',15,0,NULL,'2013-11-27 05:09:18','2013-11-27 05:09:18',2147483647),
	('52c4381b-4748-4413-a4be-3027c0b9308e','52959bbd-dc2c-4119-be76-6a76c0fe9496','Rectangle (Iron)','21','ProductVariant','first line: Sarag\nsecond line: Ling\nfont: BurstMyBubble\nimage: Tiny Dancer_Iron On Rectangles',1,'Rectangle Iron On Labels',15,0,NULL,'2014-01-01 09:45:31','2014-01-01 09:45:31',2147483647),
	('52ce0c21-793c-4638-bfb0-6198c0b9308e','52ce0c21-ddf8-4260-8091-6198c0b9308e','Circle (Sticker)','6','ProductVariant','first line: truett\nsecond line: kao\nfont: Chowderhead\nimage: Space_Sticker Circle',1,'Circle Sticker Labels',15,0,NULL,'2014-01-08 20:40:33','2014-01-08 20:40:33',2147483647),
	('52ce0c21-946c-4f62-8ca3-6198c0b9308e','52ce0c21-ddf8-4260-8091-6198c0b9308e','Give Me Everything Pack','27','ProductVariant','first line: kirsten\nsecond line: kao\nfont: Bebas\nimage: Mushroom Kingdom_Give-Me-Everything_Horizontal',1,'Give Me Everything Pack',50,0,NULL,'2014-01-08 20:40:33','2014-01-08 20:40:33',2147483647),
	('52ce0fae-b788-41eb-bf62-0923c0b9308e','52ce0b58-9148-4a90-abcf-1501c0b9308e','Book (Sticker)','11','ProductVariant','first line: Dillon\nsecond line: Asper\nfont: AmericanTypewriter\nimage: Rocket Science_Sticker Book Labels',1,'Book Sticker Labels',15,0,NULL,'2014-01-08 20:55:42','2014-01-08 20:55:42',2147483647),
	('52ce177e-688c-41ee-9b11-4d44c0b9308e','52ce0cbe-1cf0-46d7-b8e2-13ffc0b9308e','Book (Sticker)','11','ProductVariant','first line: daphne\nsecond line: ling\nfont: AmericanTypewriter\nimage: Tiny Dancer_Sticker Book Labels',1,'Book Sticker Labels',15,0,NULL,'2014-01-08 21:29:02','2014-01-08 21:29:02',2147483647),
	('52ce17fe-aaec-46c5-94ca-0478c0b9308e','52ce1438-fbc4-421b-a383-2b50c0b9308e','Book (Sticker)','11','ProductVariant','first line: daphne\nsecond line: ling\nfont: AmericanTypewriter\nimage: Vrooom_Sticker Book Labels',1,'Book Sticker Labels',15,0,NULL,'2014-01-08 21:31:10','2014-01-08 21:31:10',2147483647),
	('52ce3b66-a4cc-4151-ae96-0340c0b9308e','52ce1c40-1da8-4640-af94-6489c0b9308e','Circle (Iron)','22','ProductVariant','first line: Daphne\nsecond line: \nfont: AmericanTypewriter\nimage: Vrooom',1,'Circle Iron On Labels',15,0,NULL,'2014-01-09 00:02:14','2014-01-09 00:02:14',2147483647),
	('52ce6077-70ec-45ca-ac99-124ac0b9308e','52ce6077-f614-433b-a74c-124ac0b9308e','Rectangle (Sticker)','5','ProductVariant','first line: test\nsecond line: test123\nfont: AmericanTypewriter\nimage: Vrooom',1,'Rectangle Sticker Labels',15,0,NULL,'2014-01-09 02:40:23','2014-01-09 02:40:23',2147483647),
	('52ce60f2-b288-4195-a3a8-42cac0b9308e','52ce60ea-ab34-4099-abba-3fe4c0b9308e','Rectangle (Sticker)','5','ProductVariant','first line: test\nsecond line: 123\nfont: AmericanTypewriter\nimage: Vrooom',1,'Rectangle Sticker Labels',15,0,NULL,'2014-01-09 02:42:26','2014-01-09 02:42:26',2147483647);

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
	('5241e4c8-5c08-41e0-af5c-0770d87f8d82',NULL,'8','Charles','Xavier',NULL,'1407 Graymalkin Lane, ','Salem Center','Westchester Country, New York','10451','US','bi','2013-09-25 03:15:20','2013-09-25 03:15:20'),
	('52ce0c5d-1f70-474b-aee5-7421c0b9308e',NULL,'17','Daphne','Ling',NULL,'489C Tampines St 45 #12-179','','Singapore','522489','SG','bi','2014-01-08 20:41:33','2014-01-08 20:41:33'),
	('52ce0c5d-cb44-47a5-9f24-7421c0b9308e',NULL,'17','Daphne','Ling',NULL,'489C Tampines St 45 #12-179','','Singapore','522489','SG','sh','2014-01-08 20:41:33','2014-01-08 20:41:33'),
	('52ce1bbc-12d8-4b90-a3c9-3aa9c0b9308e',NULL,'4','','',NULL,'','','','','SG','sh','2014-01-08 21:47:08','2014-01-08 21:47:08'),
	('52ce1bbc-a130-415b-b68f-3aa9c0b9308e',NULL,'4','','',NULL,'','','','','SG','bi','2014-01-08 21:47:08','2014-01-08 21:47:08'),
	('52ce233e-a628-4741-b614-5d23c0b9308e',NULL,'2','ks','',NULL,'123','456','kimcity','kimzip','SG','sh','2014-01-08 22:19:10','2014-01-08 22:19:10'),
	('52ce233e-c844-4d26-af61-5d23c0b9308e',NULL,'2','ks','',NULL,'123','456','kimcity','kimzip','SG','bi','2014-01-08 22:19:10','2014-01-08 22:19:10');

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

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;

INSERT INTO `order_items` (`id`, `order_id`, `foreign_key`, `metadata`, `model`, `quantity`, `name`, `price`, `virtual`, `status`, `shipped`, `shipping_date`, `created`, `modified`, `total`)
VALUES
	('52ce0c82-04e8-4722-a622-0237c0b9308e','52ce0c82-7334-48d8-9a43-0237c0b9308e','27','first line: kirsten\nsecond line: kao\nfont: Bebas\nimage: Mushroom Kingdom_Give-Me-Everything_Horizontal','ProductVariant',1,'Give Me Everything Pack',50,0,NULL,0,NULL,'2014-01-08 20:42:10','2014-01-08 20:42:10',50),
	('52ce0c82-595c-421a-9a90-0237c0b9308e','52ce0c82-7334-48d8-9a43-0237c0b9308e','6','first line: truett\nsecond line: kao\nfont: Chowderhead\nimage: Space_Sticker Circle','ProductVariant',1,'Circle Sticker Labels',15,0,NULL,0,NULL,'2014-01-08 20:42:10','2014-01-08 20:42:10',15),
	('52ce0fae-b788-41eb-bf62-0923c0b9308e','52ce57ff-8448-4a34-ad62-4415c0b9308e','11','first line: Dillon\nsecond line: Asper\nfont: AmericanTypewriter\nimage: Rocket Science_Sticker Book Labels','ProductVariant',1,'Book Sticker Labels',15,0,NULL,0,NULL,'2014-01-08 20:55:42','2014-01-08 20:55:42',15),
	('52ce0fe3-67b0-4911-8bb3-1ad9c0b9308e','52ce13ac-7454-411c-b798-7792c0b9308e','9','first line: daphne\nsecond line: ling\nfont: AmericanTypewriter\nimage: Rocket Science_Sticker Birthday Labels','ProductVariant',1,'Birthday Sticker Labels',15,0,NULL,0,NULL,'2014-01-08 20:56:35','2014-01-08 20:56:35',15),
	('52ce17fe-aaec-46c5-94ca-0478c0b9308e','52ce1bc4-6094-4a26-9fab-3d1bc0b9308e','11','first line: daphne\nsecond line: ling\nfont: AmericanTypewriter\nimage: Vrooom_Sticker Book Labels','ProductVariant',1,'Book Sticker Labels',15,0,NULL,0,NULL,'2014-01-08 21:31:10','2014-01-08 21:31:10',15),
	('52ce1dce-140c-4e5f-b905-5908c0b9308e','52ce1de7-a474-45c9-8ccc-61e9c0b9308e','7','first line: dafa\nsecond line: dafads\nfont: AmericanTypewriter\nimage: Vrooom_Chinese-Name-Labels_Horizontal','ProductVariant',1,'Chinese Name Sticker Labels - Horizontal',15,0,NULL,0,NULL,'2014-01-08 21:55:58','2014-01-08 21:55:58',15),
	('52ce608b-8d3c-49ef-a01a-19e7c0b9308e','52ce608b-3b1c-4a63-8fd2-19e7c0b9308e','5','first line: test\nsecond line: test123\nfont: AmericanTypewriter\nimage: Vrooom','ProductVariant',1,'Rectangle Sticker Labels',15,0,NULL,0,NULL,'2014-01-09 02:40:43','2014-01-09 02:40:43',15),
	('52ce60f2-b288-4195-a3a8-42cac0b9308e','52ce6113-1a74-4edd-9cb8-4e5bc0b9308e','5','first line: test\nsecond line: 123\nfont: AmericanTypewriter\nimage: Vrooom','ProductVariant',1,'Rectangle Sticker Labels',15,0,NULL,0,NULL,'2014-01-09 02:42:26','2014-01-09 02:42:26',15);

/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;


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

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;

INSERT INTO `orders` (`id`, `user_id`, `cart_id`, `cart_snapshop`, `token`, `processor`, `status`, `payment_reference`, `payment_status`, `transaction_fee`, `invoice_number`, `metadata`, `billing_address`, `shipping_address`, `total`, `currency`, `created`, `modified`, `order_item_count`, `order_number`)
VALUES
	('52ce0c82-7334-48d8-9a43-0237c0b9308e','16','52ce0c21-ddf8-4260-8091-6198c0b9308e','a:5:{s:4:\"Cart\";a:9:{s:6:\"active\";i:1;s:10:\"item_count\";i:2;s:7:\"user_id\";s:2:\"16\";s:4:\"name\";s:7:\"My cart\";s:8:\"modified\";s:19:\"2014-01-08 20:40:33\";s:7:\"created\";s:19:\"2014-01-08 20:40:33\";s:2:\"id\";s:36:\"52ce0c21-ddf8-4260-8091-6198c0b9308e\";s:5:\"total\";d:65;s:11:\"total_price\";d:65;}s:9:\"CartsItem\";a:2:{i:0;a:19:{s:8:\"quantity\";s:1:\"1\";s:11:\"foreign_key\";s:1:\"6\";s:5:\"model\";s:14:\"ProductVariant\";s:10:\"first_line\";s:6:\"truett\";s:4:\"font\";s:11:\"Chowderhead\";s:11:\"second_line\";s:3:\"kao\";s:10:\"label_type\";s:20:\"Space_Sticker Circle\";s:8:\"metadata\";s:81:\"first line: truett\nsecond line: kao\nfont: Chowderhead\nimage: Space_Sticker Circle\";s:6:\"hashed\";s:40:\"4ff116d21d748d2f4ce3d06cbe8ecc2873e98b99\";s:7:\"user_id\";N;s:7:\"cart_id\";N;s:14:\"quantity_limit\";i:9223372036854775807;s:10:\"is_virtual\";b:0;s:4:\"name\";s:21:\"Circle Sticker Labels\";s:5:\"price\";s:5:\"15.00\";s:10:\"short_name\";s:16:\"Circle (Sticker)\";s:15:\"additional_data\";s:6:\"a:0:{}\";s:5:\"total\";d:15;s:5:\"image\";s:63:\"/files/product_image/filename/36/thumb_Space_Sticker Circle.jpg\";}i:1;a:19:{s:8:\"quantity\";s:1:\"1\";s:11:\"foreign_key\";s:2:\"27\";s:5:\"model\";s:14:\"ProductVariant\";s:10:\"first_line\";s:7:\"kirsten\";s:4:\"font\";s:5:\"Bebas\";s:11:\"second_line\";s:3:\"kao\";s:10:\"label_type\";s:46:\"Mushroom Kingdom_Give-Me-Everything_Horizontal\";s:8:\"metadata\";s:102:\"first line: kirsten\nsecond line: kao\nfont: Bebas\nimage: Mushroom Kingdom_Give-Me-Everything_Horizontal\";s:6:\"hashed\";s:40:\"3f6ebab13d57b2005655579bb0ef2399b8b36b26\";s:7:\"user_id\";N;s:7:\"cart_id\";N;s:14:\"quantity_limit\";i:9223372036854775807;s:10:\"is_virtual\";b:0;s:4:\"name\";s:23:\"Give Me Everything Pack\";s:5:\"price\";s:5:\"50.00\";s:10:\"short_name\";s:23:\"Give Me Everything Pack\";s:15:\"additional_data\";s:6:\"a:0:{}\";s:5:\"total\";d:50;s:5:\"image\";s:90:\"/files/product_image/filename/195/thumb_Mushroom Kingdom_Give-Me-Everything_Horizontal.jpg\";}}s:15:\"ShippingAddress\";a:13:{s:10:\"first_name\";s:6:\"Daphne\";s:9:\"last_name\";s:4:\"Ling\";s:6:\"street\";s:27:\"489C Tampines St 45 #12-179\";s:7:\"street2\";s:0:\"\";s:3:\"zip\";s:6:\"522489\";s:7:\"country\";s:2:\"SG\";s:4:\"save\";s:7:\"checked\";s:4:\"city\";s:9:\"Singapore\";s:7:\"user_id\";s:2:\"17\";s:4:\"type\";s:2:\"sh\";s:8:\"modified\";s:19:\"2014-01-08 20:41:33\";s:7:\"created\";s:19:\"2014-01-08 20:41:33\";s:2:\"id\";s:36:\"52ce0c5d-cb44-47a5-9f24-7421c0b9308e\";}s:14:\"BillingAddress\";a:13:{s:10:\"first_name\";s:6:\"Daphne\";s:9:\"last_name\";s:4:\"Ling\";s:6:\"street\";s:27:\"489C Tampines St 45 #12-179\";s:7:\"street2\";s:0:\"\";s:3:\"zip\";s:6:\"522489\";s:7:\"country\";s:2:\"SG\";s:4:\"save\";s:7:\"checked\";s:4:\"city\";s:9:\"Singapore\";s:7:\"user_id\";s:2:\"17\";s:4:\"type\";s:2:\"bi\";s:8:\"modified\";s:19:\"2014-01-08 20:41:33\";s:7:\"created\";s:19:\"2014-01-08 20:41:33\";s:2:\"id\";s:36:\"52ce0c5d-1f70-474b-aee5-7421c0b9308e\";}s:14:\"ShippingOption\";a:4:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:26:\"free shipping via SingPost\";s:6:\"period\";s:7:\"2 weeks\";s:4:\"fees\";s:4:\"0.00\";}}',NULL,'BANK_TRANSFER',NULL,NULL,'pending',NULL,'20140108-1','','BillingAddress:\nfirst_name : Daphne\nlast_name : Ling\nstreet : 489C Tampines St 45 #12-179\nstreet2 : \nzip : 522489\ncountry : SG\nsave : checked\ncity : Singapore\n','ShippingAddress:\nfirst_name : Daphne\nlast_name : Ling\nstreet : 489C Tampines St 45 #12-179\nstreet2 : \nzip : 522489\ncountry : SG\nsave : checked\ncity : Singapore\n',65,NULL,'2014-01-08 20:42:10','2014-01-08 20:42:10',2,'1'),
	('52ce13ac-7454-411c-b798-7792c0b9308e','17','52ce0cbe-1cf0-46d7-b8e2-13ffc0b9308e','a:5:{s:4:\"Cart\";a:9:{s:6:\"active\";i:1;s:10:\"item_count\";i:1;s:7:\"user_id\";s:2:\"17\";s:4:\"name\";s:7:\"My cart\";s:8:\"modified\";s:19:\"2014-01-08 20:43:10\";s:7:\"created\";s:19:\"2014-01-08 20:43:10\";s:2:\"id\";s:36:\"52ce0cbe-1cf0-46d7-b8e2-13ffc0b9308e\";s:5:\"total\";d:15;s:11:\"total_price\";d:15;}s:9:\"CartsItem\";a:1:{i:1;a:24:{s:2:\"id\";s:36:\"52ce0fe3-67b0-4911-8bb3-1ad9c0b9308e\";s:7:\"cart_id\";s:36:\"52ce0cbe-1cf0-46d7-b8e2-13ffc0b9308e\";s:10:\"short_name\";s:18:\"Birthday (Sticker)\";s:11:\"foreign_key\";s:1:\"9\";s:5:\"model\";s:14:\"ProductVariant\";s:8:\"metadata\";s:107:\"first line: daphne\nsecond line: ling\nfont: AmericanTypewriter\nimage: Rocket Science_Sticker Birthday Labels\";s:8:\"quantity\";s:1:\"1\";s:4:\"name\";s:23:\"Birthday Sticker Labels\";s:5:\"price\";s:5:\"15.00\";s:7:\"virtual\";s:1:\"0\";s:6:\"status\";N;s:7:\"created\";s:19:\"2014-01-08 20:56:35\";s:8:\"modified\";s:19:\"2014-01-08 20:56:35\";s:14:\"quantity_limit\";i:9223372036854775807;s:10:\"first_line\";s:6:\"daphne\";s:4:\"font\";s:18:\"AmericanTypewriter\";s:11:\"second_line\";s:4:\"ling\";s:10:\"label_type\";s:38:\"Rocket Science_Sticker Birthday Labels\";s:6:\"hashed\";s:40:\"c6cc71eeb4d18beee6cc135c332727facfaa8344\";s:7:\"user_id\";s:2:\"17\";s:10:\"is_virtual\";b:0;s:15:\"additional_data\";s:6:\"a:0:{}\";s:5:\"total\";d:15;s:5:\"image\";s:81:\"/files/product_image/filename/62/thumb_Rocket Science_Sticker Birthday Labels.jpg\";}}s:15:\"ShippingAddress\";a:14:{s:2:\"id\";s:36:\"52ce0c5d-cb44-47a5-9f24-7421c0b9308e\";s:8:\"order_id\";N;s:7:\"user_id\";s:2:\"17\";s:10:\"first_name\";s:6:\"Daphne\";s:9:\"last_name\";s:4:\"Ling\";s:7:\"company\";N;s:6:\"street\";s:27:\"489C Tampines St 45 #12-179\";s:7:\"street2\";s:0:\"\";s:4:\"city\";s:9:\"Singapore\";s:3:\"zip\";s:6:\"522489\";s:7:\"country\";s:2:\"SG\";s:4:\"type\";s:2:\"sh\";s:7:\"created\";s:19:\"2014-01-08 20:41:33\";s:8:\"modified\";s:19:\"2014-01-08 20:41:33\";}s:14:\"BillingAddress\";a:14:{s:2:\"id\";s:36:\"52ce0c5d-1f70-474b-aee5-7421c0b9308e\";s:8:\"order_id\";N;s:7:\"user_id\";s:2:\"17\";s:10:\"first_name\";s:6:\"Daphne\";s:9:\"last_name\";s:4:\"Ling\";s:7:\"company\";N;s:6:\"street\";s:27:\"489C Tampines St 45 #12-179\";s:7:\"street2\";s:0:\"\";s:4:\"city\";s:9:\"Singapore\";s:3:\"zip\";s:6:\"522489\";s:7:\"country\";s:2:\"SG\";s:4:\"type\";s:2:\"bi\";s:7:\"created\";s:19:\"2014-01-08 20:41:33\";s:8:\"modified\";s:19:\"2014-01-08 20:41:33\";}s:14:\"ShippingOption\";a:4:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:26:\"free shipping via SingPost\";s:6:\"period\";s:7:\"2 weeks\";s:4:\"fees\";s:4:\"0.00\";}}',NULL,'PAYPAL_EXPRESS',NULL,NULL,'pending',NULL,'20140108-3','','BillingAddress:\nfirst_name : Daphne\nlast_name : Ling\ncompany : \nstreet : 489C Tampines St 45 #12-179\nstreet2 : \ncity : Singapore\nzip : 522489\ncountry : SG\n','ShippingAddress:\nfirst_name : Daphne\nlast_name : Ling\ncompany : \nstreet : 489C Tampines St 45 #12-179\nstreet2 : \ncity : Singapore\nzip : 522489\ncountry : SG\n',15,NULL,'2014-01-08 21:12:44','2014-01-08 21:12:44',1,'2'),
	('52ce1bc4-6094-4a26-9fab-3d1bc0b9308e','4','52ce1438-fbc4-421b-a383-2b50c0b9308e','a:5:{s:4:\"Cart\";a:9:{s:6:\"active\";i:1;s:10:\"item_count\";i:1;s:7:\"user_id\";s:1:\"4\";s:4:\"name\";s:7:\"My cart\";s:8:\"modified\";s:19:\"2014-01-08 21:15:04\";s:7:\"created\";s:19:\"2014-01-08 21:15:04\";s:2:\"id\";s:36:\"52ce1438-fbc4-421b-a383-2b50c0b9308e\";s:5:\"total\";d:15;s:11:\"total_price\";d:15;}s:9:\"CartsItem\";a:1:{i:0;a:23:{s:7:\"virtual\";s:1:\"0\";s:14:\"quantity_limit\";i:9223372036854775807;s:8:\"quantity\";s:1:\"1\";s:11:\"foreign_key\";s:2:\"11\";s:5:\"model\";s:14:\"ProductVariant\";s:10:\"first_line\";s:6:\"daphne\";s:4:\"font\";s:18:\"AmericanTypewriter\";s:11:\"second_line\";s:4:\"ling\";s:10:\"label_type\";s:26:\"Vrooom_Sticker Book Labels\";s:8:\"metadata\";s:95:\"first line: daphne\nsecond line: ling\nfont: AmericanTypewriter\nimage: Vrooom_Sticker Book Labels\";s:6:\"hashed\";s:40:\"6109715e682bfe2efa9f37fc28ecdef6c92c0fc8\";s:7:\"user_id\";s:1:\"4\";s:7:\"cart_id\";s:36:\"52ce1438-fbc4-421b-a383-2b50c0b9308e\";s:10:\"is_virtual\";b:0;s:4:\"name\";s:19:\"Book Sticker Labels\";s:5:\"price\";s:5:\"15.00\";s:10:\"short_name\";s:14:\"Book (Sticker)\";s:15:\"additional_data\";s:6:\"a:0:{}\";s:8:\"modified\";s:19:\"2014-01-08 21:31:10\";s:7:\"created\";s:19:\"2014-01-08 21:31:10\";s:2:\"id\";s:36:\"52ce17fe-aaec-46c5-94ca-0478c0b9308e\";s:5:\"total\";d:15;s:5:\"image\";s:69:\"/files/product_image/filename/28/thumb_Vrooom_Sticker Book Labels.jpg\";}}s:15:\"ShippingAddress\";a:13:{s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"street2\";s:0:\"\";s:3:\"zip\";s:0:\"\";s:7:\"country\";s:2:\"SG\";s:4:\"save\";s:7:\"checked\";s:4:\"city\";s:0:\"\";s:7:\"user_id\";s:1:\"4\";s:4:\"type\";s:2:\"sh\";s:8:\"modified\";s:19:\"2014-01-08 21:47:08\";s:7:\"created\";s:19:\"2014-01-08 21:47:08\";s:2:\"id\";s:36:\"52ce1bbc-12d8-4b90-a3c9-3aa9c0b9308e\";}s:14:\"BillingAddress\";a:13:{s:4:\"save\";s:7:\"checked\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"street2\";s:0:\"\";s:3:\"zip\";s:0:\"\";s:7:\"country\";s:2:\"SG\";s:4:\"city\";s:0:\"\";s:7:\"user_id\";s:1:\"4\";s:4:\"type\";s:2:\"bi\";s:8:\"modified\";s:19:\"2014-01-08 21:47:08\";s:7:\"created\";s:19:\"2014-01-08 21:47:08\";s:2:\"id\";s:36:\"52ce1bbc-a130-415b-b68f-3aa9c0b9308e\";}s:14:\"ShippingOption\";a:4:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:26:\"free shipping via SingPost\";s:6:\"period\";s:7:\"2 weeks\";s:4:\"fees\";s:4:\"0.00\";}}',NULL,'BANK_TRANSFER',NULL,NULL,'pending',NULL,'20140108-4','','BillingAddress:\nsave : checked\nfirst_name : \nlast_name : \nstreet : \nstreet2 : \nzip : \ncountry : SG\ncity : \n','ShippingAddress:\nfirst_name : \nlast_name : \nstreet : \nstreet2 : \nzip : \ncountry : SG\nsave : checked\ncity : \n',15,NULL,'2014-01-08 21:47:16','2014-01-08 21:47:17',1,'3'),
	('52ce1de7-a474-45c9-8ccc-61e9c0b9308e','4','52ce1c40-1da8-4640-af94-6489c0b9308e','a:5:{s:4:\"Cart\";a:9:{s:6:\"active\";i:1;s:10:\"item_count\";i:1;s:7:\"user_id\";s:1:\"4\";s:4:\"name\";s:7:\"My cart\";s:8:\"modified\";s:19:\"2014-01-08 21:49:20\";s:7:\"created\";s:19:\"2014-01-08 21:49:20\";s:2:\"id\";s:36:\"52ce1c40-1da8-4640-af94-6489c0b9308e\";s:5:\"total\";d:15;s:11:\"total_price\";d:15;}s:9:\"CartsItem\";a:1:{i:0;a:23:{s:7:\"virtual\";s:1:\"0\";s:14:\"quantity_limit\";i:9223372036854775807;s:8:\"quantity\";s:1:\"1\";s:11:\"foreign_key\";s:1:\"7\";s:5:\"model\";s:14:\"ProductVariant\";s:10:\"first_line\";s:4:\"dafa\";s:4:\"font\";s:18:\"AmericanTypewriter\";s:11:\"second_line\";s:6:\"dafads\";s:10:\"label_type\";s:37:\"Vrooom_Chinese-Name-Labels_Horizontal\";s:8:\"metadata\";s:106:\"first line: dafa\nsecond line: dafads\nfont: AmericanTypewriter\nimage: Vrooom_Chinese-Name-Labels_Horizontal\";s:6:\"hashed\";s:40:\"6e988337f67222d0d4771b85cc6ad10a6258ff09\";s:7:\"user_id\";s:1:\"4\";s:7:\"cart_id\";s:36:\"52ce1c40-1da8-4640-af94-6489c0b9308e\";s:10:\"is_virtual\";b:0;s:4:\"name\";s:40:\"Chinese Name Sticker Labels - Horizontal\";s:5:\"price\";s:5:\"15.00\";s:10:\"short_name\";s:35:\"Chinese Name (Sticker) - Horizontal\";s:15:\"additional_data\";s:6:\"a:0:{}\";s:8:\"modified\";s:19:\"2014-01-08 21:55:58\";s:7:\"created\";s:19:\"2014-01-08 21:55:58\";s:2:\"id\";s:36:\"52ce1dce-140c-4e5f-b905-5908c0b9308e\";s:5:\"total\";d:15;s:5:\"image\";s:81:\"/files/product_image/filename/131/thumb_Vrooom_Chinese-Name-Labels_Horizontal.jpg\";}}s:15:\"ShippingAddress\";a:14:{s:2:\"id\";s:36:\"52ce1bbc-12d8-4b90-a3c9-3aa9c0b9308e\";s:8:\"order_id\";N;s:7:\"user_id\";s:1:\"4\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";N;s:6:\"street\";s:0:\"\";s:7:\"street2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:3:\"zip\";s:0:\"\";s:7:\"country\";s:2:\"SG\";s:4:\"type\";s:2:\"sh\";s:7:\"created\";s:19:\"2014-01-08 21:47:08\";s:8:\"modified\";s:19:\"2014-01-08 21:47:08\";}s:14:\"BillingAddress\";a:14:{s:2:\"id\";s:36:\"52ce1bbc-a130-415b-b68f-3aa9c0b9308e\";s:8:\"order_id\";N;s:7:\"user_id\";s:1:\"4\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";N;s:6:\"street\";s:0:\"\";s:7:\"street2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:3:\"zip\";s:0:\"\";s:7:\"country\";s:2:\"SG\";s:4:\"type\";s:2:\"bi\";s:7:\"created\";s:19:\"2014-01-08 21:47:08\";s:8:\"modified\";s:19:\"2014-01-08 21:47:08\";}s:14:\"ShippingOption\";a:4:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:26:\"free shipping via SingPost\";s:6:\"period\";s:7:\"2 weeks\";s:4:\"fees\";s:4:\"0.00\";}}',NULL,'PAYPAL_EXPRESS',NULL,NULL,'pending',NULL,'20140108-5','','BillingAddress:\nfirst_name : \nlast_name : \ncompany : \nstreet : \nstreet2 : \ncity : \nzip : \ncountry : SG\n','ShippingAddress:\nfirst_name : \nlast_name : \ncompany : \nstreet : \nstreet2 : \ncity : \nzip : \ncountry : SG\n',15,NULL,'2014-01-08 21:56:23','2014-01-08 21:56:23',1,'4'),
	('52ce2345-8f3c-4723-b3eb-604cc0b9308e','2','52ce0b58-9148-4a90-abcf-1501c0b9308e','a:5:{s:4:\"Cart\";a:9:{s:6:\"active\";i:1;s:10:\"item_count\";i:1;s:7:\"user_id\";s:1:\"2\";s:4:\"name\";s:7:\"My cart\";s:8:\"modified\";s:19:\"2014-01-08 20:37:12\";s:7:\"created\";s:19:\"2014-01-08 20:37:12\";s:2:\"id\";s:36:\"52ce0b58-9148-4a90-abcf-1501c0b9308e\";s:5:\"total\";d:15;s:11:\"total_price\";d:15;}s:9:\"CartsItem\";a:1:{i:2;a:23:{s:7:\"virtual\";s:1:\"0\";s:14:\"quantity_limit\";i:9223372036854775807;s:8:\"quantity\";s:1:\"1\";s:11:\"foreign_key\";s:2:\"11\";s:5:\"model\";s:14:\"ProductVariant\";s:10:\"first_line\";s:6:\"Dillon\";s:4:\"font\";s:18:\"AmericanTypewriter\";s:11:\"second_line\";s:5:\"Asper\";s:10:\"label_type\";s:34:\"Rocket Science_Sticker Book Labels\";s:8:\"metadata\";s:104:\"first line: Dillon\nsecond line: Asper\nfont: AmericanTypewriter\nimage: Rocket Science_Sticker Book Labels\";s:6:\"hashed\";s:40:\"1a8b7fd5d866147ed0453d26e8183b2e381e6002\";s:7:\"user_id\";s:1:\"2\";s:7:\"cart_id\";s:36:\"52ce0b58-9148-4a90-abcf-1501c0b9308e\";s:10:\"is_virtual\";b:0;s:4:\"name\";s:19:\"Book Sticker Labels\";s:5:\"price\";s:5:\"15.00\";s:10:\"short_name\";s:14:\"Book (Sticker)\";s:15:\"additional_data\";s:6:\"a:0:{}\";s:8:\"modified\";s:19:\"2014-01-08 20:55:42\";s:7:\"created\";s:19:\"2014-01-08 20:55:42\";s:2:\"id\";s:36:\"52ce0fae-b788-41eb-bf62-0923c0b9308e\";s:5:\"total\";d:15;s:5:\"image\";s:77:\"/files/product_image/filename/72/thumb_Rocket Science_Sticker Book Labels.jpg\";}}s:15:\"ShippingAddress\";a:13:{s:10:\"first_name\";s:2:\"ks\";s:9:\"last_name\";s:0:\"\";s:6:\"street\";s:3:\"123\";s:7:\"street2\";s:3:\"456\";s:3:\"zip\";s:6:\"kimzip\";s:7:\"country\";s:2:\"SG\";s:4:\"save\";s:7:\"checked\";s:4:\"city\";s:7:\"kimcity\";s:7:\"user_id\";s:1:\"2\";s:4:\"type\";s:2:\"sh\";s:8:\"modified\";s:19:\"2014-01-08 22:19:10\";s:7:\"created\";s:19:\"2014-01-08 22:19:10\";s:2:\"id\";s:36:\"52ce233e-a628-4741-b614-5d23c0b9308e\";}s:14:\"BillingAddress\";a:13:{s:4:\"save\";s:7:\"checked\";s:10:\"first_name\";s:2:\"ks\";s:9:\"last_name\";s:0:\"\";s:6:\"street\";s:3:\"123\";s:7:\"street2\";s:3:\"456\";s:3:\"zip\";s:6:\"kimzip\";s:7:\"country\";s:2:\"SG\";s:4:\"city\";s:7:\"kimcity\";s:7:\"user_id\";s:1:\"2\";s:4:\"type\";s:2:\"bi\";s:8:\"modified\";s:19:\"2014-01-08 22:19:10\";s:7:\"created\";s:19:\"2014-01-08 22:19:10\";s:2:\"id\";s:36:\"52ce233e-c844-4d26-af61-5d23c0b9308e\";}s:14:\"ShippingOption\";a:4:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:26:\"free shipping via SingPost\";s:6:\"period\";s:7:\"2 weeks\";s:4:\"fees\";s:4:\"0.00\";}}',NULL,'PAYPAL_EXPRESS',NULL,NULL,'pending',NULL,'20140108-6','','BillingAddress:\nsave : checked\nfirst_name : ks\nlast_name : \nstreet : 123\nstreet2 : 456\nzip : kimzip\ncountry : SG\ncity : kimcity\n','ShippingAddress:\nfirst_name : ks\nlast_name : \nstreet : 123\nstreet2 : 456\nzip : kimzip\ncountry : SG\nsave : checked\ncity : kimcity\n',15,NULL,'2014-01-08 22:19:17','2014-01-08 22:19:17',0,'5'),
	('52ce57ff-8448-4a34-ad62-4415c0b9308e','2','52ce0b58-9148-4a90-abcf-1501c0b9308e','a:5:{s:4:\"Cart\";a:9:{s:2:\"id\";s:36:\"52ce0b58-9148-4a90-abcf-1501c0b9308e\";s:7:\"user_id\";s:1:\"2\";s:4:\"name\";s:7:\"My cart\";s:5:\"total\";d:18;s:6:\"active\";s:1:\"1\";s:10:\"item_count\";i:1;s:7:\"created\";s:19:\"2014-01-08 20:37:12\";s:8:\"modified\";s:19:\"2014-01-08 20:37:12\";s:11:\"total_price\";d:15;}s:9:\"CartsItem\";a:1:{i:0;a:20:{s:2:\"id\";s:36:\"52ce0fae-b788-41eb-bf62-0923c0b9308e\";s:7:\"cart_id\";s:36:\"52ce0b58-9148-4a90-abcf-1501c0b9308e\";s:10:\"short_name\";s:14:\"Book (Sticker)\";s:11:\"foreign_key\";s:2:\"11\";s:5:\"model\";s:14:\"ProductVariant\";s:8:\"metadata\";s:104:\"first line: Dillon\nsecond line: Asper\nfont: AmericanTypewriter\nimage: Rocket Science_Sticker Book Labels\";s:8:\"quantity\";s:1:\"1\";s:4:\"name\";s:19:\"Book Sticker Labels\";s:5:\"price\";s:2:\"15\";s:7:\"virtual\";s:1:\"0\";s:6:\"status\";N;s:7:\"created\";s:19:\"2014-01-08 20:55:42\";s:8:\"modified\";s:19:\"2014-01-08 20:55:42\";s:14:\"quantity_limit\";s:10:\"2147483647\";s:5:\"total\";d:15;s:5:\"image\";s:49:\"/files/product_image/filename/28/thumb_Vrooom.jpg\";s:10:\"first_line\";s:6:\"Dillon\";s:11:\"second_line\";s:5:\"Asper\";s:4:\"font\";s:18:\"AmericanTypewriter\";s:6:\"hashed\";s:40:\"1a8b7fd5d866147ed0453d26e8183b2e381e6002\";}}s:15:\"ShippingAddress\";a:14:{s:2:\"id\";s:36:\"52ce233e-a628-4741-b614-5d23c0b9308e\";s:8:\"order_id\";N;s:7:\"user_id\";s:1:\"2\";s:10:\"first_name\";s:2:\"ks\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";N;s:6:\"street\";s:3:\"123\";s:7:\"street2\";s:3:\"456\";s:4:\"city\";s:7:\"kimcity\";s:3:\"zip\";s:6:\"kimzip\";s:7:\"country\";s:2:\"SG\";s:4:\"type\";s:2:\"sh\";s:7:\"created\";s:19:\"2014-01-08 22:19:10\";s:8:\"modified\";s:19:\"2014-01-08 22:19:10\";}s:14:\"BillingAddress\";a:14:{s:2:\"id\";s:36:\"52ce233e-c844-4d26-af61-5d23c0b9308e\";s:8:\"order_id\";N;s:7:\"user_id\";s:1:\"2\";s:10:\"first_name\";s:2:\"ks\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";N;s:6:\"street\";s:3:\"123\";s:7:\"street2\";s:3:\"456\";s:4:\"city\";s:7:\"kimcity\";s:3:\"zip\";s:6:\"kimzip\";s:7:\"country\";s:2:\"SG\";s:4:\"type\";s:2:\"bi\";s:7:\"created\";s:19:\"2014-01-08 22:19:10\";s:8:\"modified\";s:19:\"2014-01-08 22:19:10\";}s:14:\"ShippingOption\";a:4:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:46:\"overseas shipping via Singpost (additional $3)\";s:6:\"period\";s:7:\"3 weeks\";s:4:\"fees\";s:4:\"3.00\";}}',NULL,'PAYPAL_EXPRESS',NULL,NULL,'completed',NULL,'20140109-7','','BillingAddress:\nfirst_name : ks\nlast_name : \ncompany : \nstreet : 123\nstreet2 : 456\ncity : kimcity\nzip : kimzip\ncountry : SG\n','ShippingAddress:\nfirst_name : ks\nlast_name : \ncompany : \nstreet : 123\nstreet2 : 456\ncity : kimcity\nzip : kimzip\ncountry : SG\n',18,NULL,'2014-01-09 02:04:15','2014-01-09 02:04:15',1,'6'),
	('52ce608b-3b1c-4a63-8fd2-19e7c0b9308e','2','52ce6077-f614-433b-a74c-124ac0b9308e','a:5:{s:4:\"Cart\";a:9:{s:6:\"active\";i:1;s:10:\"item_count\";i:1;s:7:\"user_id\";s:1:\"2\";s:4:\"name\";s:7:\"My cart\";s:8:\"modified\";s:19:\"2014-01-09 02:40:23\";s:7:\"created\";s:19:\"2014-01-09 02:40:23\";s:2:\"id\";s:36:\"52ce6077-f614-433b-a74c-124ac0b9308e\";s:5:\"total\";d:15;s:11:\"total_price\";d:15;}s:9:\"CartsItem\";a:1:{i:0;a:19:{s:8:\"quantity\";s:1:\"1\";s:11:\"foreign_key\";s:1:\"5\";s:5:\"model\";s:14:\"ProductVariant\";s:10:\"first_line\";s:4:\"test\";s:4:\"font\";s:18:\"AmericanTypewriter\";s:11:\"second_line\";s:7:\"test123\";s:10:\"label_type\";s:6:\"Vrooom\";s:8:\"metadata\";s:76:\"first line: test\nsecond line: test123\nfont: AmericanTypewriter\nimage: Vrooom\";s:6:\"hashed\";s:40:\"243eccd5a4828c9535ad094a38460d2e38e76237\";s:7:\"user_id\";N;s:7:\"cart_id\";N;s:14:\"quantity_limit\";i:9223372036854775807;s:10:\"is_virtual\";b:0;s:4:\"name\";s:24:\"Rectangle Sticker Labels\";s:5:\"price\";s:5:\"15.00\";s:10:\"short_name\";s:19:\"Rectangle (Sticker)\";s:15:\"additional_data\";s:6:\"a:0:{}\";s:5:\"total\";d:15;s:5:\"image\";s:49:\"/files/product_image/filename/10/thumb_Vrooom.jpg\";}}s:15:\"ShippingAddress\";a:14:{s:2:\"id\";s:36:\"52ce233e-a628-4741-b614-5d23c0b9308e\";s:8:\"order_id\";N;s:7:\"user_id\";s:1:\"2\";s:10:\"first_name\";s:2:\"ks\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";N;s:6:\"street\";s:3:\"123\";s:7:\"street2\";s:3:\"456\";s:4:\"city\";s:7:\"kimcity\";s:3:\"zip\";s:6:\"kimzip\";s:7:\"country\";s:2:\"SG\";s:4:\"type\";s:2:\"sh\";s:7:\"created\";s:19:\"2014-01-08 22:19:10\";s:8:\"modified\";s:19:\"2014-01-08 22:19:10\";}s:14:\"BillingAddress\";a:14:{s:2:\"id\";s:36:\"52ce233e-c844-4d26-af61-5d23c0b9308e\";s:8:\"order_id\";N;s:7:\"user_id\";s:1:\"2\";s:10:\"first_name\";s:2:\"ks\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";N;s:6:\"street\";s:3:\"123\";s:7:\"street2\";s:3:\"456\";s:4:\"city\";s:7:\"kimcity\";s:3:\"zip\";s:6:\"kimzip\";s:7:\"country\";s:2:\"SG\";s:4:\"type\";s:2:\"bi\";s:7:\"created\";s:19:\"2014-01-08 22:19:10\";s:8:\"modified\";s:19:\"2014-01-08 22:19:10\";}s:14:\"ShippingOption\";a:4:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:26:\"free shipping via SingPost\";s:6:\"period\";s:7:\"2 weeks\";s:4:\"fees\";s:4:\"0.00\";}}',NULL,'PAYPAL_EXPRESS',NULL,NULL,'completed',NULL,'20140109-8','','BillingAddress:\nfirst_name : ks\nlast_name : \ncompany : \nstreet : 123\nstreet2 : 456\ncity : kimcity\nzip : kimzip\ncountry : SG\n','ShippingAddress:\nfirst_name : ks\nlast_name : \ncompany : \nstreet : 123\nstreet2 : 456\ncity : kimcity\nzip : kimzip\ncountry : SG\n',15,NULL,'2014-01-09 02:40:43','2014-01-09 02:40:43',1,'7'),
	('52ce6113-1a74-4edd-9cb8-4e5bc0b9308e','2','52ce60ea-ab34-4099-abba-3fe4c0b9308e','a:5:{s:4:\"Cart\";a:9:{s:6:\"active\";i:1;s:10:\"item_count\";i:1;s:7:\"user_id\";s:1:\"2\";s:4:\"name\";s:7:\"My cart\";s:8:\"modified\";s:19:\"2014-01-09 02:42:18\";s:7:\"created\";s:19:\"2014-01-09 02:42:18\";s:2:\"id\";s:36:\"52ce60ea-ab34-4099-abba-3fe4c0b9308e\";s:5:\"total\";d:15;s:11:\"total_price\";d:15;}s:9:\"CartsItem\";a:1:{i:0;a:23:{s:7:\"virtual\";s:1:\"0\";s:14:\"quantity_limit\";i:9223372036854775807;s:8:\"quantity\";s:1:\"1\";s:11:\"foreign_key\";s:1:\"5\";s:5:\"model\";s:14:\"ProductVariant\";s:10:\"first_line\";s:4:\"test\";s:4:\"font\";s:18:\"AmericanTypewriter\";s:11:\"second_line\";s:3:\"123\";s:10:\"label_type\";s:6:\"Vrooom\";s:8:\"metadata\";s:72:\"first line: test\nsecond line: 123\nfont: AmericanTypewriter\nimage: Vrooom\";s:6:\"hashed\";s:40:\"7a487499f1653f92f4b69e786e2ae4bc3b194515\";s:7:\"user_id\";s:1:\"2\";s:7:\"cart_id\";s:36:\"52ce60ea-ab34-4099-abba-3fe4c0b9308e\";s:10:\"is_virtual\";b:0;s:4:\"name\";s:24:\"Rectangle Sticker Labels\";s:5:\"price\";s:5:\"15.00\";s:10:\"short_name\";s:19:\"Rectangle (Sticker)\";s:15:\"additional_data\";s:6:\"a:0:{}\";s:8:\"modified\";s:19:\"2014-01-09 02:42:26\";s:7:\"created\";s:19:\"2014-01-09 02:42:26\";s:2:\"id\";s:36:\"52ce60f2-b288-4195-a3a8-42cac0b9308e\";s:5:\"total\";d:15;s:5:\"image\";s:49:\"/files/product_image/filename/10/thumb_Vrooom.jpg\";}}s:15:\"ShippingAddress\";a:14:{s:2:\"id\";s:36:\"52ce233e-a628-4741-b614-5d23c0b9308e\";s:8:\"order_id\";N;s:7:\"user_id\";s:1:\"2\";s:10:\"first_name\";s:2:\"ks\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";N;s:6:\"street\";s:3:\"123\";s:7:\"street2\";s:3:\"456\";s:4:\"city\";s:7:\"kimcity\";s:3:\"zip\";s:6:\"kimzip\";s:7:\"country\";s:2:\"SG\";s:4:\"type\";s:2:\"sh\";s:7:\"created\";s:19:\"2014-01-08 22:19:10\";s:8:\"modified\";s:19:\"2014-01-08 22:19:10\";}s:14:\"BillingAddress\";a:14:{s:2:\"id\";s:36:\"52ce233e-c844-4d26-af61-5d23c0b9308e\";s:8:\"order_id\";N;s:7:\"user_id\";s:1:\"2\";s:10:\"first_name\";s:2:\"ks\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";N;s:6:\"street\";s:3:\"123\";s:7:\"street2\";s:3:\"456\";s:4:\"city\";s:7:\"kimcity\";s:3:\"zip\";s:6:\"kimzip\";s:7:\"country\";s:2:\"SG\";s:4:\"type\";s:2:\"bi\";s:7:\"created\";s:19:\"2014-01-08 22:19:10\";s:8:\"modified\";s:19:\"2014-01-08 22:19:10\";}s:14:\"ShippingOption\";a:4:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:26:\"free shipping via SingPost\";s:6:\"period\";s:7:\"2 weeks\";s:4:\"fees\";s:4:\"0.00\";}}',NULL,'PAYPAL_EXPRESS',NULL,NULL,'completed',NULL,'20140109-9','','BillingAddress:\nfirst_name : ks\nlast_name : \ncompany : \nstreet : 123\nstreet2 : 456\ncity : kimcity\nzip : kimzip\ncountry : SG\n','ShippingAddress:\nfirst_name : ks\nlast_name : \ncompany : \nstreet : 123\nstreet2 : 456\ncity : kimcity\nzip : kimzip\ncountry : SG\n',15,NULL,'2014-01-09 02:42:59','2014-01-09 02:42:59',1,'8');

/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;


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
	(3,1,10,8,0,1,5,'Tiny Dancer.jpg','3','',0,'2013-07-10 22:46:33','2014-01-09 01:45:45'),
	(8,2,3,12,0,1,5,'Rocket Science.jpg','8','',0,'2013-07-10 22:48:21','2014-01-09 01:45:45'),
	(9,4,12,14,0,1,5,'Under The Sea.jpg','9','',0,'2013-07-10 22:48:22','2014-01-09 01:45:45'),
	(10,0,0,3,0,1,5,'Vrooom.jpg','10','',0,'2013-07-10 22:48:22','2014-01-09 01:45:45'),
	(11,7,16,13,0,1,5,'Sugar & Spice.jpg','11','',0,'2013-07-10 22:48:48','2014-01-09 01:45:45'),
	(12,3,8,9,0,1,5,'Cutie Crawlies.jpg','12','',0,'2013-07-10 22:48:48','2014-01-09 01:45:45'),
	(13,8,11,15,0,1,5,'Dinos Club.jpg','13','',0,'2013-07-10 22:48:48','2014-01-09 01:45:45'),
	(14,5,9,16,0,1,5,'Mushroom Kingdom.jpg','14','',0,'2013-07-18 23:36:25','2014-01-09 01:45:45'),
	(15,9,13,226,0,1,5,'Girl Patterns.jpg','15','',0,'2013-07-18 23:38:55','2014-01-09 01:45:45'),
	(16,6,14,11,0,1,5,'Alien Invasion.jpg','16','',0,'2013-07-18 23:39:45','2014-01-09 01:45:45'),
	(17,0,0,91,0,6,12,'Vrooom.jpg','17','',0,'2013-09-06 16:22:33','2014-01-09 00:11:46'),
	(20,0,0,22,0,6,13,'Cupcake Rectangles.jpg','20','',0,'2013-09-06 16:26:41','2013-09-06 16:26:42'),
	(22,1,20,0,0,6,13,'Cutie crawlies rectangles.jpg','22','',0,'2013-09-06 16:26:41','2013-09-06 16:26:42'),
	(23,0,0,24,0,6,15,'Vrooom.jpg','23','',0,'2013-09-06 16:36:55','2014-01-09 00:17:47'),
	(24,1,23,212,0,6,15,'Tiny Dancer.jpg','24','',0,'2013-09-06 16:36:55','2014-01-09 00:18:08'),
	(25,0,0,35,0,2,6,'Vrooom.jpg','25','',0,'2013-09-22 16:09:18','2014-01-08 23:55:16'),
	(26,0,0,45,0,3,8,'Vrooom.jpg','26','',0,'2013-09-22 16:10:10','2014-01-09 00:26:31'),
	(28,0,0,71,0,5,11,'Vrooom.jpg','28','',0,'2013-09-22 16:46:30','2014-01-09 00:03:08'),
	(29,0,0,159,0,7,17,'Vrooom.jpg','29','',0,'2013-09-22 16:53:46','2014-01-09 00:50:17'),
	(30,0,0,75,0,8,21,'Vrooom.jpg','30','',0,'2013-09-22 16:54:01','2014-01-08 23:48:30'),
	(31,0,0,109,0,9,22,'Vrooom.jpg','31','',0,'2013-09-22 16:54:26','2014-01-08 23:55:56'),
	(32,0,0,121,0,10,23,'Vrooom.jpg','32','',0,'2013-09-22 16:54:55','2014-01-09 00:40:11'),
	(33,0,0,180,0,11,25,'Vrooom.jpg','33','',0,'2013-09-22 16:55:15','2014-01-09 00:56:41'),
	(34,0,0,101,0,12,26,'Vrooom.jpg','34','',0,'2013-09-22 16:55:37','2014-01-09 01:01:28'),
	(35,1,25,36,0,2,6,'Tiny Dancer.jpg','35','',0,'2014-01-01 08:16:07','2014-01-08 23:53:17'),
	(36,2,35,37,0,2,6,'Rocket Science.jpg','36','',0,'2014-01-01 08:16:07','2014-01-08 23:53:25'),
	(37,3,36,38,0,2,6,'Cutie Crawlies.jpg','37','',0,'2014-01-01 08:16:08','2014-01-08 23:53:35'),
	(38,4,37,39,0,2,6,'Under The Sea.jpg','38','',0,'2014-01-01 08:16:56','2014-01-08 23:53:44'),
	(39,5,38,40,0,2,6,'Mushroom Kingdom.jpg','39','',0,'2014-01-01 08:16:56','2014-01-08 23:53:54'),
	(40,6,39,41,0,2,6,'Alien Invasion.jpg','40','',0,'2014-01-01 08:16:56','2014-01-08 23:54:03'),
	(41,7,40,42,0,2,6,'Sugar & Spice.jpg','41','',0,'2014-01-01 08:16:57','2014-01-08 23:54:13'),
	(42,8,41,43,0,2,6,'Dinos Club.jpg','42','',0,'2014-01-01 08:17:18','2014-01-08 23:54:23'),
	(43,9,42,44,0,2,6,'Girl Patterns.jpg','43','',0,'2014-01-01 08:17:18','2014-01-08 23:54:34'),
	(44,10,43,0,0,2,6,'Boy Patterns.jpg','44','',0,'2014-01-01 08:17:19','2014-01-08 23:54:44'),
	(45,1,26,46,0,3,8,'Tiny Dancer.jpg','45','',0,'2014-01-01 08:19:44','2014-01-09 00:26:37'),
	(46,2,45,47,0,3,8,'Rocket Science.jpg','46','',0,'2014-01-01 08:19:44','2014-01-09 00:26:45'),
	(47,3,46,48,0,3,8,'Cutie Crawlies.jpg','47','',0,'2014-01-01 08:19:44','2014-01-09 00:26:54'),
	(48,4,47,49,0,3,8,'Under The Sea.jpg','48','',0,'2014-01-01 08:20:16','2014-01-09 00:27:00'),
	(49,5,48,50,0,3,8,'Mushroom Kingdom.jpg','49','',0,'2014-01-01 08:20:16','2014-01-09 00:27:08'),
	(50,6,49,51,0,3,8,'Alien Invasion.jpg','50','',0,'2014-01-01 08:20:16','2014-01-09 00:27:16'),
	(51,7,50,52,0,3,8,'Sugar & Spice.jpg','51','',0,'2014-01-01 08:20:17','2014-01-09 00:27:25'),
	(52,8,51,53,0,3,8,'Dinos Club.jpg','52','',0,'2014-01-01 08:20:41','2014-01-09 00:27:33'),
	(53,9,52,54,0,3,8,'Girl Patterns.jpg','53','',0,'2014-01-01 08:20:42','2014-01-09 00:27:41'),
	(54,10,53,0,0,3,8,'Boy Patterns.jpg','54','',0,'2014-01-01 08:20:42','2014-01-09 00:27:50'),
	(59,0,0,0,0,0,0,'','','',0,'2014-01-01 08:53:06','2014-01-01 08:53:06'),
	(60,0,0,61,0,4,9,'Vrooom.jpg','60','',0,'2014-01-01 08:53:37','2014-01-09 00:07:22'),
	(61,1,60,62,0,4,9,'Tiny Dancer.jpg','61','',0,'2014-01-01 08:53:37','2014-01-09 00:07:30'),
	(62,2,61,63,0,4,9,'Rocket Science.jpg','62','',0,'2014-01-01 08:53:38','2014-01-09 00:07:39'),
	(63,3,62,64,0,4,9,'Cutie Crawlies.jpg','63','',0,'2014-01-01 08:53:38','2014-01-09 00:07:48'),
	(64,4,63,65,0,4,9,'Under The Sea.jpg','64','',0,'2014-01-01 08:54:19','2014-01-09 00:07:57'),
	(65,5,64,66,0,4,9,'Mushroom Kingdom.jpg','65','',0,'2014-01-01 08:54:19','2014-01-09 00:08:08'),
	(66,6,65,67,0,4,9,'Alien Invasion.jpg','66','',0,'2014-01-01 08:54:19','2014-01-09 00:08:17'),
	(67,7,66,68,0,4,9,'Sugar & Spice.jpg','67','',0,'2014-01-01 08:54:20','2014-01-09 00:08:26'),
	(68,8,67,69,0,4,9,'Dinos Club.jpg','68','',0,'2014-01-01 08:55:49','2014-01-09 00:08:48'),
	(69,9,68,70,0,4,9,'Girl Patterns.jpg','69','',0,'2014-01-01 08:55:49','2014-01-09 00:08:58'),
	(70,10,69,0,0,4,9,'Boy Patterns.jpg','70','',0,'2014-01-01 08:55:49','2014-01-09 00:09:09'),
	(71,1,28,72,0,5,11,'Tiny Dancer.jpg','71','',0,'2014-01-01 08:57:08','2014-01-09 00:03:17'),
	(72,2,71,73,0,5,11,'Rocket Science.jpg','72','',0,'2014-01-01 08:57:08','2014-01-09 00:03:32'),
	(73,3,72,74,0,5,11,'Cutie Crawlies.jpg','73','',0,'2014-01-01 08:57:09','2014-01-09 00:03:42'),
	(74,4,73,78,0,5,11,'Under The Sea.jpg','74','',0,'2014-01-01 08:57:09','2014-01-09 00:03:50'),
	(75,1,30,76,0,8,21,'Tiny Dancer.jpg','75','',0,'2014-01-01 08:57:31','2014-01-08 23:48:38'),
	(76,2,75,77,0,8,21,'Rocket Science.jpg','76','',0,'2014-01-01 08:57:31','2014-01-08 23:48:48'),
	(77,3,76,84,0,8,21,'Cutie Crawlies.jpg','77','',0,'2014-01-01 08:57:32','2014-01-08 23:48:56'),
	(78,5,74,79,0,5,11,'Mushroom Kingdom.jpg','78','',0,'2014-01-01 08:57:39','2014-01-09 00:03:58'),
	(79,6,78,80,0,5,11,'Alien Invasion.jpg','79','',0,'2014-01-01 08:57:39','2014-01-09 00:04:18'),
	(80,7,79,81,0,5,11,'Sugar & Spice.jpg','80','',0,'2014-01-01 08:57:39','2014-01-09 00:04:28'),
	(81,8,80,82,0,5,11,'Dinos Club.jpg','81','',0,'2014-01-01 08:57:39','2014-01-09 00:04:37'),
	(82,9,81,83,0,5,11,'Girl Patterns.jpg','82','',0,'2014-01-01 08:58:00','2014-01-09 00:04:45'),
	(83,10,82,0,0,5,11,'Boy Patterns.jpg','83','',0,'2014-01-01 08:58:00','2014-01-09 00:04:55'),
	(84,4,77,85,0,8,21,'Under The Sea.jpg','84','',0,'2014-01-01 08:58:12','2014-01-08 23:49:08'),
	(85,5,84,86,0,8,21,'Mushroom Kingdom.jpg','85','',0,'2014-01-01 08:58:13','2014-01-08 23:49:18'),
	(86,6,85,87,0,8,21,'Alien Invasion.jpg','86','',0,'2014-01-01 08:58:14','2014-01-08 23:49:30'),
	(87,7,86,88,0,8,21,'Sugar & Spice.jpg','87','',0,'2014-01-01 08:58:14','2014-01-08 23:49:39'),
	(88,8,87,89,0,8,21,'Dinos Club.jpg','88','',0,'2014-01-01 08:58:38','2014-01-08 23:49:50'),
	(89,9,88,90,0,8,21,'Girl Patterns.jpg','89','',0,'2014-01-01 08:58:38','2014-01-08 23:49:59'),
	(90,10,89,0,0,8,21,'Boy Patterns.jpg','90','',0,'2014-01-01 08:58:38','2014-01-08 23:50:09'),
	(91,1,17,92,0,6,12,'Tiny Dancer.jpg','91','',0,'2014-01-01 09:00:34','2014-01-09 00:11:53'),
	(92,2,91,93,0,6,12,'Rocket Science.jpg','92','',0,'2014-01-01 09:00:34','2014-01-09 00:12:01'),
	(93,3,92,94,0,6,12,'Cutie Crawlies.jpg','93','',0,'2014-01-01 09:00:35','2014-01-09 00:12:08'),
	(94,4,93,95,0,6,12,'Under The Sea.jpg','94','',0,'2014-01-01 09:00:35','2014-01-09 00:12:18'),
	(95,5,94,96,0,6,12,'Mushroom Kingdom.jpg','95','',0,'2014-01-01 09:01:10','2014-01-09 00:12:30'),
	(96,6,95,97,0,6,12,'Alien Invasion.jpg','96','',0,'2014-01-01 09:01:13','2014-01-09 00:12:39'),
	(97,7,96,98,0,6,12,'Sugar & Spice.jpg','97','',0,'2014-01-01 09:01:14','2014-01-09 00:12:49'),
	(98,8,97,99,0,6,12,'Dinos Club.jpg','98','',0,'2014-01-01 09:01:15','2014-01-09 00:12:57'),
	(99,9,98,100,0,6,12,'Girl Patterns.jpg','99','',0,'2014-01-01 09:01:33','2014-01-09 00:13:07'),
	(100,10,99,0,0,6,12,'Boy Patterns.jpg','100','',0,'2014-01-01 09:01:33','2014-01-09 00:13:17'),
	(101,1,34,102,0,12,26,'Tiny Dancer.jpg','101','',0,'2014-01-01 09:06:17','2014-01-09 01:01:39'),
	(102,2,101,103,0,12,26,'Rocket Science.jpg','102','',0,'2014-01-01 09:06:17','2014-01-09 01:01:47'),
	(103,3,102,104,0,12,26,'Cutie Crawlies.jpg','103','',0,'2014-01-01 09:06:17','2014-01-09 01:01:56'),
	(104,4,103,105,0,12,26,'Under The Sea.jpg','104','',0,'2014-01-01 09:06:18','2014-01-09 01:02:13'),
	(105,5,104,106,0,12,26,'Mushroom Kingdom.jpg','105','',0,'2014-01-01 09:06:55','2014-01-09 01:02:47'),
	(106,6,105,107,0,12,26,'Alien Invasion.jpg','106','',0,'2014-01-01 09:06:55','2014-01-09 01:02:57'),
	(107,7,106,108,0,12,26,'Sugar & Spice.jpg','107','',0,'2014-01-01 09:06:56','2014-01-09 01:03:08'),
	(108,8,107,112,0,12,26,'Dinos Club.jpg','108','',0,'2014-01-01 09:06:56','2014-01-09 01:03:19'),
	(109,1,31,110,0,9,22,'Tiny Dancer.jpg','109','',0,'2014-01-01 09:07:02','2014-01-08 23:56:04'),
	(110,2,109,111,0,9,22,'Rocket Science.jpg','110','',0,'2014-01-01 09:07:02','2014-01-08 23:56:48'),
	(111,3,110,114,0,9,22,'Cutie Crawlies.jpg','111','',0,'2014-01-01 09:07:03','2014-01-08 23:57:04'),
	(112,9,108,113,0,12,26,'Girl Patterns.jpg','112','',0,'2014-01-01 09:07:12','2014-01-09 01:03:33'),
	(113,10,112,0,0,12,26,'Boy Patterns.jpg','113','',0,'2014-01-01 09:07:13','2014-01-09 01:03:42'),
	(114,4,111,115,0,9,22,'Under The Sea.jpg','114','',0,'2014-01-01 09:07:30','2014-01-08 23:57:15'),
	(115,5,114,116,0,9,22,'Mushroom Kingdom.jpg','115','',0,'2014-01-01 09:07:30','2014-01-08 23:57:25'),
	(116,6,115,117,0,9,22,'Alien Invasion.jpg','116','',0,'2014-01-01 09:07:31','2014-01-08 23:57:35'),
	(117,7,116,118,0,9,22,'Sugar & Spice.jpg','117','',0,'2014-01-01 09:07:31','2014-01-08 23:57:43'),
	(118,8,117,119,0,9,22,'Dinos Club.jpg','118','',0,'2014-01-01 09:07:50','2014-01-08 23:57:51'),
	(119,9,118,120,0,9,22,'Girl Patterns.jpg','119','',0,'2014-01-01 09:07:51','2014-01-08 23:58:00'),
	(120,10,119,0,0,9,22,'Boy Patterns.jpg','120','',0,'2014-01-01 09:07:51','2014-01-08 23:58:11'),
	(121,1,32,122,0,10,23,'Tiny Dancer.jpg','121','',0,'2014-01-01 09:10:54','2014-01-09 00:40:35'),
	(122,2,121,123,0,10,23,'Rocket Science.jpg','122','',0,'2014-01-01 09:10:55','2014-01-09 00:40:42'),
	(123,3,122,124,0,10,23,'Cutie Crawlies.jpg','123','',0,'2014-01-01 09:10:55','2014-01-09 00:40:50'),
	(124,4,123,125,0,10,23,'Under The Sea.jpg','124','',0,'2014-01-01 09:11:47','2014-01-09 00:40:59'),
	(125,5,124,126,0,10,23,'Mushroom Kingdom.jpg','125','',0,'2014-01-01 09:11:48','2014-01-09 00:41:08'),
	(126,6,125,127,0,10,23,'Alien Invasion.jpg','126','',0,'2014-01-01 09:11:48','2014-01-09 00:41:17'),
	(127,7,126,128,0,10,23,'Sugar & Spice.jpg','127','',0,'2014-01-01 09:11:48','2014-01-09 00:41:25'),
	(128,8,127,129,0,10,23,'Dinos Club.jpg','128','',0,'2014-01-01 09:12:31','2014-01-09 00:41:35'),
	(129,9,128,130,0,10,23,'Girl Patterns.jpg','129','',0,'2014-01-01 09:12:31','2014-01-09 00:41:45'),
	(130,10,129,0,0,10,23,'Boy Patterns.jpg','130','',0,'2014-01-01 09:12:31','2014-01-09 00:41:54'),
	(131,0,0,132,0,3,7,'Vrooom.jpg','131','',0,'2014-01-02 22:54:13','2014-01-09 01:12:36'),
	(132,1,131,133,0,3,7,'Tiny Dancer.jpg','132','',0,'2014-01-02 22:54:14','2014-01-09 01:12:36'),
	(133,2,132,134,0,3,7,'Rocket Science.jpg','133','',0,'2014-01-02 22:54:14','2014-01-09 01:12:36'),
	(134,3,133,135,0,3,7,'Cutie Crawlies.jpg','134','',0,'2014-01-02 22:54:14','2014-01-09 01:12:36'),
	(135,4,134,136,0,3,7,'Under The Sea.jpg','135','',0,'2014-01-02 22:54:56','2014-01-09 01:12:36'),
	(136,5,135,137,0,3,7,'Mushroom Kingdom.jpg','136','',0,'2014-01-02 22:54:56','2014-01-09 01:12:36'),
	(137,6,136,222,0,3,7,'Alien Invasion.jpg','137','',0,'2014-01-02 22:54:56','2014-01-09 01:12:36'),
	(145,0,0,146,0,15,28,'Vrooom.jpg','145','',0,'2014-01-02 22:56:08','2014-01-09 00:39:00'),
	(146,1,145,147,0,15,28,'Tiny Dancer.jpg','146','',0,'2014-01-02 22:56:08','2014-01-09 00:39:00'),
	(147,2,146,148,0,15,28,'Rocket Science.jpg','147','',0,'2014-01-02 22:56:08','2014-01-09 00:39:00'),
	(148,3,147,149,0,15,28,'Cutie Crawlies.jpg','148','',0,'2014-01-02 22:56:08','2014-01-09 00:39:00'),
	(149,4,148,150,0,15,28,'Under The Sea.jpg','149','',0,'2014-01-02 22:56:30','2014-01-09 00:39:00'),
	(150,5,149,151,0,15,28,'Mushroom Kingdom.jpg','150','',0,'2014-01-02 22:56:31','2014-01-09 00:39:00'),
	(151,6,150,152,0,15,28,'Alien Invasion.jpg','151','',0,'2014-01-02 22:56:31','2014-01-09 00:39:00'),
	(152,7,151,153,0,15,28,'Sugar & Spice.jpg','152','',0,'2014-01-02 22:56:31','2014-01-09 00:39:00'),
	(153,8,152,154,0,15,28,'Dinos Club.jpg','153','',0,'2014-01-02 22:56:46','2014-01-09 00:39:00'),
	(154,9,153,221,0,15,28,'Girl Patterns.jpg','154','',0,'2014-01-02 22:56:46','2014-01-09 00:39:00'),
	(159,1,29,160,0,7,17,'Tiny Dancer.jpg','159','',0,'2014-01-04 21:23:22','2014-01-09 00:50:29'),
	(160,2,159,161,0,7,17,'Rocket Science.jpg','160','',0,'2014-01-04 21:23:23','2014-01-09 00:50:36'),
	(161,3,160,162,0,7,17,'Cutie Crawlies.jpg','161','',0,'2014-01-04 21:23:23','2014-01-09 00:51:27'),
	(162,4,161,163,0,7,17,'Under The Sea.jpg','162','',0,'2014-01-04 21:24:01','2014-01-09 00:51:34'),
	(163,5,162,164,0,7,17,'Mushroom Kingdom.jpg','163','',0,'2014-01-04 21:24:01','2014-01-09 00:51:43'),
	(164,6,163,165,0,7,17,'Alien Invasion.jpg','164','',0,'2014-01-04 21:24:01','2014-01-09 00:51:52'),
	(165,7,164,166,0,7,17,'Sugar & Spice.jpg','165','',0,'2014-01-04 21:24:01','2014-01-09 00:52:42'),
	(166,8,165,167,0,7,17,'Dinos Club.jpg','166','',0,'2014-01-04 21:24:19','2014-01-09 00:52:52'),
	(167,9,166,168,0,7,17,'Girl Patterns.jpg','167','',0,'2014-01-04 21:24:19','2014-01-09 00:53:02'),
	(168,10,167,0,0,7,17,'Boy Patterns.jpg','168','',0,'2014-01-04 21:24:19','2014-01-09 00:53:10'),
	(169,0,0,170,0,7,37,'Vrooom.jpg','169','',0,'2014-01-04 21:25:36','2014-01-09 00:53:52'),
	(170,1,169,171,0,7,37,'Tiny Dancer.jpg','170','',0,'2014-01-04 21:25:37','2014-01-09 00:54:01'),
	(171,2,170,172,0,7,37,'Rocket Science.jpg','171','',0,'2014-01-04 21:25:37','2014-01-09 00:54:10'),
	(172,3,171,173,0,7,37,'Cutie Crawlies.jpg','172','',0,'2014-01-04 21:25:37','2014-01-09 00:54:17'),
	(173,4,172,174,0,7,37,'Under The Sea.jpg','173','',0,'2014-01-04 21:26:32','2014-01-09 00:54:24'),
	(174,5,173,175,0,7,37,'Mushroom Kingdom.jpg','174','',0,'2014-01-04 21:26:32','2014-01-09 00:54:33'),
	(175,6,174,176,0,7,37,'Alien Invasion.jpg','175','',0,'2014-01-04 21:26:32','2014-01-09 00:54:43'),
	(176,7,175,177,0,7,37,'Sugar & Spice.jpg','176','',0,'2014-01-04 21:26:33','2014-01-09 00:54:51'),
	(177,8,176,178,0,7,37,'Dinos Club.jpg','177','',0,'2014-01-04 21:26:57','2014-01-09 00:54:59'),
	(178,9,177,179,0,7,37,'Girl Patterns.jpg','178','',0,'2014-01-04 21:26:57','2014-01-09 00:55:08'),
	(179,10,178,0,0,7,37,'Boy Patterns.jpg','179','',0,'2014-01-04 21:26:58','2014-01-09 00:55:16'),
	(180,1,33,181,0,11,25,'Tiny Dancer.jpg','180','',0,'2014-01-04 21:29:09','2014-01-09 00:56:47'),
	(181,2,180,182,0,11,25,'Rocket Science.jpg','181','',0,'2014-01-04 21:29:09','2014-01-09 00:56:54'),
	(182,3,181,183,0,11,25,'Cutie Crawlies.jpg','182','',0,'2014-01-04 21:29:09','2014-01-09 00:57:19'),
	(183,4,182,184,0,11,25,'Under The Sea.jpg','183','',0,'2014-01-04 21:29:44','2014-01-09 00:57:48'),
	(184,5,183,185,0,11,25,'Mushroom Kingdom.jpg','184','',0,'2014-01-04 21:29:44','2014-01-09 00:57:56'),
	(185,6,184,186,0,11,25,'Alien Invasion.jpg','185','',0,'2014-01-04 21:29:44','2014-01-09 00:58:04'),
	(186,7,185,187,0,11,25,'Sugar & Spice.jpg','186','',0,'2014-01-04 21:29:44','2014-01-09 00:58:12'),
	(187,8,186,188,0,11,25,'Dinos Club.jpg','187','',0,'2014-01-04 21:30:40','2014-01-09 00:58:24'),
	(188,9,187,189,0,11,25,'Girl Patterns.jpg','188','',0,'2014-01-04 21:30:40','2014-01-09 00:58:32'),
	(189,10,188,0,0,11,25,'Boy Patterns.jpg','189','',0,'2014-01-04 21:30:41','2014-01-09 00:58:40'),
	(190,0,0,191,0,14,27,'Vrooom.jpg','190','',0,'2014-01-04 21:32:40','2014-01-09 01:07:37'),
	(191,1,190,192,0,14,27,'Tiny Dancer.jpg','191','',0,'2014-01-04 21:32:40','2014-01-09 01:07:45'),
	(192,2,191,193,0,14,27,'Rocket Science.jpg','192','',0,'2014-01-04 21:32:40','2014-01-09 01:07:53'),
	(193,3,192,194,0,14,27,'Cutie Crawlies.jpg','193','',0,'2014-01-04 21:32:41','2014-01-09 01:08:00'),
	(194,4,193,195,0,14,27,'Under The Sea.jpg','194','',0,'2014-01-04 21:33:06','2014-01-09 01:08:10'),
	(195,5,194,196,0,14,27,'Mushroom Kingdom.jpg','195','',0,'2014-01-04 21:33:06','2014-01-09 01:08:20'),
	(196,6,195,197,0,14,27,'Alien Invasion.jpg','196','',0,'2014-01-04 21:33:06','2014-01-09 01:08:30'),
	(197,7,196,198,0,14,27,'Sugar & Spice.jpg','197','',0,'2014-01-04 21:33:07','2014-01-09 01:08:38'),
	(198,8,197,199,0,14,27,'Dinos Club.jpg','198','',0,'2014-01-04 21:33:26','2014-01-09 01:08:46'),
	(199,9,198,200,0,14,27,'Girl Patterns.jpg','199','',0,'2014-01-04 21:33:26','2014-01-09 01:08:54'),
	(200,10,199,0,0,14,27,'Boy Patterns.jpg','200','',0,'2014-01-04 21:33:26','2014-01-09 01:09:11'),
	(201,0,0,202,0,14,38,'Vrooom.jpg','201','',0,'2014-01-05 23:52:21','2014-01-09 01:10:02'),
	(202,1,201,203,0,14,38,'Tiny Dancer.jpg','202','',0,'2014-01-05 23:52:21','2014-01-09 01:10:09'),
	(203,2,202,204,0,14,38,'Rocket Science.jpg','203','',0,'2014-01-05 23:52:21','2014-01-09 01:10:18'),
	(204,3,203,205,0,14,38,'Cutie Crawlies.jpg','204','',0,'2014-01-05 23:52:21','2014-01-09 01:10:27'),
	(205,4,204,206,0,14,38,'Under The Sea.jpg','205','',0,'2014-01-05 23:52:56','2014-01-09 01:10:36'),
	(206,5,205,207,0,14,38,'Mushroom Kingdom.jpg','206','',0,'2014-01-05 23:52:56','2014-01-09 01:10:44'),
	(207,6,206,208,0,14,38,'Alien Invasion.jpg','207','',0,'2014-01-05 23:52:56','2014-01-09 01:10:52'),
	(208,7,207,209,0,14,38,'Sugar & Spice.jpg','208','',0,'2014-01-05 23:52:57','2014-01-09 01:11:01'),
	(209,8,208,210,0,14,38,'Dinos Club.jpg','209','',0,'2014-01-05 23:53:27','2014-01-09 01:11:09'),
	(210,9,209,211,0,14,38,'Girl Patterns.jpg','210','',0,'2014-01-05 23:53:27','2014-01-09 01:11:17'),
	(211,10,210,0,0,14,38,'Boy Patterns.jpg','211','',0,'2014-01-05 23:53:27','2014-01-09 01:11:25'),
	(212,2,24,213,0,6,15,'Rocket Science.jpg','212','',0,'2014-01-06 03:35:33','2014-01-09 00:18:34'),
	(213,3,212,214,0,6,15,'Cutie Crawlies.jpg','213','',0,'2014-01-06 03:35:34','2014-01-09 00:18:43'),
	(214,4,213,215,0,6,15,'Under The Sea.jpg','214','',0,'2014-01-08 22:18:49','2014-01-09 00:18:50'),
	(215,5,214,216,0,6,15,'Mushroom Kingdom.jpg','215','',0,'2014-01-08 22:18:49','2014-01-09 00:19:07'),
	(216,6,215,217,0,6,15,'Alien Invasion.jpg','216','',0,'2014-01-08 22:18:50','2014-01-09 00:19:14'),
	(217,7,216,218,0,6,15,'Sugar & Spice.jpg','217','',0,'2014-01-08 22:18:50','2014-01-09 00:19:26'),
	(218,8,217,219,0,6,15,'Dinos Club.jpg','218','',0,'2014-01-08 22:20:14','2014-01-09 00:19:34'),
	(219,9,218,220,0,6,15,'Girl Patterns.jpg','219','',0,'2014-01-08 22:20:14','2014-01-09 00:19:43'),
	(220,10,219,0,0,6,15,'Boy Patterns.jpg','220','',0,'2014-01-08 22:20:15','2014-01-09 00:19:53'),
	(221,10,154,0,0,15,28,'Boy Patterns.jpg','221','',0,'2014-01-09 00:39:00','2014-01-09 00:39:00'),
	(222,7,137,223,0,3,7,'Sugar & Spice.jpg','222','',0,'2014-01-09 01:12:35','2014-01-09 01:12:54'),
	(223,8,222,224,0,3,7,'Dinos Club.jpg','223','',0,'2014-01-09 01:12:35','2014-01-09 01:13:02'),
	(224,9,223,225,0,3,7,'Girl Patterns.jpg','224','',0,'2014-01-09 01:12:36','2014-01-09 01:13:11'),
	(225,10,224,0,0,3,7,'Boy Patterns.jpg','225','',0,'2014-01-09 01:12:36','2014-01-09 01:13:18'),
	(226,10,15,0,0,1,5,'Boy Patterns.jpg','226','',0,'2014-01-09 01:45:45','2014-01-09 01:45:45');

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
	(1,1,'Rectangle-Stickers.jpg','1','',0,'2013-09-28 00:32:45','2014-01-09 01:14:35'),
	(2,2,'Circle-Stickers.jpg','2','',0,'2013-09-28 00:33:15','2014-01-09 01:15:22'),
	(3,3,'Chinese labels.png','3','',0,'2013-09-28 00:33:31','2013-09-28 00:33:31'),
	(4,4,'Birthday-Labels.jpg','4','',0,'2013-09-28 00:33:42','2014-01-09 01:16:13'),
	(5,5,'Book-Labels.jpg','5','',0,'2013-09-28 00:35:34','2014-01-09 01:17:25'),
	(6,6,'Split-Dual-Name-Stickers.jpg','6','',0,'2013-09-28 00:38:25','2014-01-09 01:19:42'),
	(7,7,'Split-Eng-Chi-Stickers.jpg','7','',0,'2013-09-28 00:39:46','2014-01-09 01:18:43'),
	(8,8,'Rectangle-Iron-Ons.jpg','8','',0,'2013-09-28 00:41:14','2014-01-09 01:18:02'),
	(9,9,'Circle-Iron-Ons.jpg','9','',0,'2013-09-28 00:53:12','2014-01-09 01:34:28'),
	(10,12,'Get-Me-Started.jpg','10','',0,'2013-09-28 00:54:17','2014-01-09 01:46:07'),
	(11,14,'Give-Me-Everything.jpg','11','',0,'2013-09-28 02:02:37','2014-01-09 01:35:43'),
	(12,10,'Iron-ons (dual name).png','12','',0,'2013-09-29 06:09:33','2013-09-29 06:09:33'),
	(13,11,'Iron-ons (dual Eng-Chi).png','13','',0,'2013-09-29 06:09:45','2013-09-29 06:09:45'),
	(14,15,'Rectangle-Stickers.jpg','14','',0,'2014-01-09 00:43:04','2014-01-09 00:43:04');

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
	(6,'Circle Sticker Labels','Circle (Sticker)',1000,0,0,1,'SGD',15.00,2,'2013-06-30 03:32:10',0,0,0,'2014-01-01 08:14:46','DEFAULT'),
	(7,'Chinese Name Sticker Labels - Horizontal','Chinese Name (Sticker) - Horizontal',1000,0,0,1,'SGD',15.00,3,'2013-06-30 03:32:29',0,8,0,'2013-07-25 05:01:44','Horizontal'),
	(8,'Chinese Name Sticker Labels - Vertical','Chinese Name (Sticker) - Vertical',1000,0,0,1,'SGD',15.00,3,'2013-06-30 03:32:37',7,0,1,'2013-07-25 05:01:44','Vertical'),
	(9,'Birthday Sticker Labels','Birthday (Sticker)',1000,0,0,1,'SGD',15.00,4,'2013-06-30 03:33:25',0,0,0,'2013-07-25 05:01:44','DEFAULT'),
	(11,'Book Sticker Labels','Book (Sticker)',1000,0,0,1,'SGD',15.00,5,'2013-06-30 03:34:21',0,0,0,'2013-07-25 05:01:45','DEFAULT'),
	(12,'Split Dual Name Pack (Sticker Labels) - Small Rectangle Labels','Split Dual Name Pack (Sticker) - S Rect',1000,0,0,1,'SGD',20.00,6,'2013-06-30 03:34:48',0,13,0,'2013-07-25 05:01:45','Small Rectangle Labels'),
	(13,'Split Dual Name Pack (Sticker Labels) - Circle Labels','Split Dual Name Pack (Sticker) - Circle',1000,0,0,1,'SGD',20.00,6,'2013-06-30 03:34:59',12,15,1,'2013-09-06 17:18:25','Circle Labels'),
	(15,'Split Dual Name Pack (Sticker Labels) - Book Labels','Split Dual Name Pack (Sticker) - Book',1000,0,0,1,'SGD',20.00,6,'2013-06-30 03:37:34',13,36,2,'2013-09-06 17:18:25','Book Labels'),
	(17,'Split English/Chinese Pack (Sticker Labels) - Small Rectangle Labels','Split English/Chinese Pack (Sticker) - S Rect',1000,0,0,1,'SGD',20.00,7,'2013-06-30 03:37:58',0,37,0,'2014-01-01 08:31:48','Horizontal (Chinese)'),
	(21,'Rectangle Iron On Labels','Rectangle (Iron)',1000,0,0,1,'SGD',15.00,8,'2013-06-30 03:38:58',0,0,0,'2013-07-25 05:01:45','DEFAULT'),
	(22,'Circle Iron On Labels','Circle (Iron)',1000,0,0,1,'SGD',15.00,9,'2013-06-30 03:39:19',0,0,0,'2013-07-25 05:01:45','DEFAULT'),
	(23,'Split Dual Name Pack (Iron On Labels) - Rectangle Labels','Split Dual Name Pack (Iron) - Rectangle',1000,0,0,1,'SGD',20.00,10,'2013-06-30 03:39:38',0,24,0,'2013-07-25 05:01:45','Rectangle Labels'),
	(24,'Split Dual Name Pack (Iron On Labels) - Circle Labels','Split Dual Name Pack (Iron) - Circle',1000,0,0,1,'SGD',20.00,10,'2013-06-30 03:39:49',23,0,1,'2013-07-25 05:01:45','Circle Labels'),
	(25,'Split English/Chinese Pack (Iron On Labels)','Split English/Chinese Pack (Iron)',1000,0,0,1,'SGD',20.00,11,'2013-06-30 03:44:09',0,0,0,'2013-07-25 05:01:45','DEFAULT'),
	(26,'Get Me Started Value Pack','Get Me Started Value Pack',1000,0,0,1,'SGD',30.00,12,'2013-06-30 03:44:35',0,0,0,'2013-07-25 05:01:45','DEFAULT'),
	(27,'Give Me Everything Pack','Give Me Everything Pack',1000,0,0,1,'SGD',50.00,14,'2013-06-30 03:45:06',0,38,0,'2014-01-05 23:51:46','Horizontal (Chinese)'),
	(28,'Chinese Name Iron On Labels - Horizontal','Chinese Name (Iron) - Horizontal',1000,0,0,1,'SGD',15.00,15,'2013-06-30 03:45:31',0,0,0,'2014-01-01 09:09:18','Horizontal'),
	(36,'Split Dual Name Pack (Sticker Labels) - Birthday Labels','Split Dual Name Pack (Sticker) - Birthday',1000,0,0,1,'SGD',20.00,6,'2013-07-19 03:21:06',15,0,3,'2013-09-06 17:18:25','Birthday Labels'),
	(37,'','',0,0,0,0,'SGD',0.00,7,'2014-01-01 08:31:48',17,0,1,'2014-01-01 08:31:48','Vertical (Chinese)'),
	(38,'','',0,0,0,0,'SGD',0.00,14,'2014-01-05 23:51:46',27,0,1,'2014-01-05 23:51:46','Vertical (Chinese)');

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
	(2,'Circle Sticker Labels','These supercute round vinyl labels are perfect for everything, ranging from bottles and bowls to sippy cups and snack boxes. \r\n\r\nDetails: \r\n37.5 mm diameter\r\nPack contains 42 labels ','SGD',15.00,'0000-00-00 00:00:00',1),
	(3,'Chinese Name Sticker Labels','Love Chinese? We do too! Identify belongings and teach your kids to write their Chinese names with these Chinese Name Sticker Labels. \r\n\r\nDetails: \r\n51.5mm x 24mm \r\nPack contains 48 labels ','SGD',15.00,'0000-00-00 00:00:00',2),
	(4,'Birthday Sticker Labels','Birthday Labels are a great way to say Happy Birthday! Instead of scribbling your name on wrappers with a marker, just stick on a personalized Birthday Label and you\'re good to go.  \r\n\r\nDetails: \r\n63mm x 29mm \r\nPack contains 27 labels ','SGD',15.00,'0000-00-00 00:00:00',1),
	(5,'Book Sticker Labels','Book labels are great for storybooks, textbooks, workbooks, notebooks, jotter books, coloring books and even sticker books. \r\n\r\nDetails: \r\n63mm x 29mm \r\nPack contains 27 labels  ','SGD',15.00,'0000-00-00 00:00:00',1),
	(6,'Split Dual Name Stickers','Instead of buying 2 separate packs for 2 kids, share a pack and combine both names in a Split Dual Name Pack. Sharing for the win!\r\n\r\n\r\n\r\n','SGD',20.00,'0000-00-00 00:00:00',4),
	(7,'Split English/Chinese Stickers','Canâ€™t decide between having the labels in English or Chinese? Have the best of both worlds with our Split English/Chinese Pack. \r\n','SGD',20.00,'0000-00-00 00:00:00',2),
	(8,'Rectangle Iron On Labels','We\'ve taken all the awesomeness of our classic vinyl rectangle sticker labels and made it into iron on labels because tiny clothes need label love too. Safe for washing machines and dryers. \r\n\r\nDetails: \r\n45mm x 18mm \r\nPack contains 40 labels ','SGD',15.00,'0000-00-00 00:00:00',1),
	(9,'Circle Iron On Labels','Our round iron on labels look unbelievably on tiny clothes. Plus you won\'t have to worry about getting their clothes mixed up in preschool ever again. We\'d say it\'s a win-win!\r\n\r\nDetails: \r\n30 mm diameter\r\nPack contains 36 labels ','SGD',15.00,'0000-00-00 00:00:00',1),
	(10,'Split Dual Name Iron Ons','Instead of buying 2 separate packs for 2 kids, share a pack and combine both names in a Split Dual Name Pack. Sharing for the win! \r\n','SGD',20.00,'0000-00-00 00:00:00',2),
	(11,'Split English/Chinese Iron Ons','Canâ€™t decide between having the labels in English or Chinese? Have the best of both worlds with our Split English/Chinese Pack. \r\n','SGD',20.00,'0000-00-00 00:00:00',1),
	(12,'Get Me Started Value Pack','A Combo Pack to get you started!\r\n\r\n32 x Small Rectangle Sticker Labels\r\n14 x Circle Sticker Labels\r\n40 x Rectangle Iron Ons','SGD',30.00,'0000-00-00 00:00:00',1),
	(14,'Give Me Everything Value Pack','A super duper value pack!\r\n\r\n32 x Small Rectangle Sticker Labels\r\n32 x Chinese Name Sticker Labels\r\n28 x Circle Sticker Labels\r\n20 x Rectangle Iron Ons\r\n18 x Circle Iron Ons','SGD',50.00,'0000-00-00 00:00:00',2),
	(15,'Chinese Name Iron On Labels','Love Chinese? We do too! Identify belongings and teach your kids to write their Chinese names with these Chinese Name Sticker Labels. \r\n\r\nDetails: \r\n45mm x 18mm \r\nPack contains 40 labels  ','SGD',15.00,'0000-00-00 00:00:00',1);

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
	(2,'registered mail via SingPost (additional $2.20)','2 weeks',2.20),
	(3,'overseas shipping via Singpost (additional $3)','3 weeks',3.00);

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
	(1,'ks','kimcity@gmail.com','f3939594bdb9ccc6e40e5064412483142dd61e3e',NULL,NULL,0,'2013-06-22 18:51:26','2013-11-27 00:57:16'),
	(2,'KimSia','kimsia@oppoin.com','7d525298cd55cf6543004de41714cdc7f2c2bcfc','KimSia',NULL,1,'2013-06-28 13:51:12','2013-12-25 23:40:05'),
	(3,'Sim Aik Chun','aikchun616@gmail.com','4f346956b16be16322f6c642072f615f68ba255d','AikChun1',NULL,1,'2013-06-28 13:51:57','2013-09-22 20:47:21'),
	(4,'Daphne Ling','daphne@motherinc.org','09eb988f83c9e817044a271539ea936f7381bfe7','Daphne',NULL,3,'2013-07-02 09:30:20','2013-12-05 22:05:34'),
	(12,'aikchun','sac_89_1@hotmail.com','275108ab67a27356dab9dcff38275c044766397f','Simac',NULL,2,'2013-09-27 03:24:47','2013-09-27 03:24:47'),
	(13,'Sarah Ling','ling.si.en@gmail.com','8c6df7c54eaefd7e5232fca2d89c87ab18ac9d79','Sarah','NULL',3,'2014-01-01 08:23:26','2014-01-01 08:23:26'),
	(14,'Daphne','','9331e1b7f7008e4d10a8f4f3a691b3a168929c70','',NULL,0,'2014-01-08 20:39:24','2014-01-08 20:39:24'),
	(15,'Daphne','lingdaphne@gmail.com','9331e1b7f7008e4d10a8f4f3a691b3a168929c70','Ling',NULL,0,'2014-01-08 20:39:40','2014-01-08 20:39:40'),
	(16,'Daphne','berbiez@gmail.com','bb7c430ed97a0d992e255608268d4892e7747195','Ling',NULL,0,'2014-01-08 20:40:04','2014-01-08 20:40:04'),
	(17,'Daphne','daphne@protocol.com.sg','bb7c430ed97a0d992e255608268d4892e7747195','Ling',NULL,0,'2014-01-08 20:40:33','2014-01-08 20:40:33');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
