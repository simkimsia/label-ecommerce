# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.34-0ubuntu0.12.10.1)
# Database: lea_childlabel
# Generation Time: 2013-12-06 04:41:05 +0000
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
	('5241e106-c8ac-40d7-b1f1-0770d87f8d82','6','My cart',NULL,1,1,'2013-09-25 02:59:18','2013-09-25 02:59:18'),
	('524341da-e994-4946-8196-0743d87f8d82','9','My cart',NULL,1,1,'2013-09-26 04:04:42','2013-09-26 04:04:42'),
	('524343cb-01cc-487c-8975-0775d87f8d82','8','My cart',NULL,1,1,'2013-09-26 04:12:59','2013-09-26 04:12:59'),
	('52448a07-1168-4bed-a819-0732d87f8d82','12','My cart',NULL,1,1,'2013-09-27 03:24:55','2013-09-27 03:24:55'),
	('52456b5e-f6ac-49d6-996c-06b6d87f8d82','3','My cart',0,1,0,'2013-09-27 19:26:22','2013-09-27 19:26:22'),
	('5248087f-0894-4e9a-b266-04340a00020f','2','My cart',0,1,0,'2013-09-29 19:01:19','2013-09-29 19:01:19');

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
	('5232bd51-455c-4ebb-967d-075bd87f8d82','5232bd51-fd8c-4283-8312-075bd87f8d82','Circle (Sticker)','6','ProductVariant','',1,'Circle Sticker Labels',20,0,NULL,'2013-09-13 15:22:57','2013-09-13 15:22:57',2147483647),
	('5232cc08-8fa0-4e9a-ab22-075cd87f8d82','5232bec8-2e88-4bf8-8239-0770d87f8d82','Rectangle (Sticker)','5','ProductVariant','',4,'Rectangle Sticker Labels',19.95,0,NULL,'2013-09-13 16:25:44','2013-09-13 16:25:44',2147483647),
	('5234adc1-b944-4453-84f5-074cd87f8d82','5232bec8-2e88-4bf8-8239-0770d87f8d82','Circle (Sticker)','6','ProductVariant','',1,'Circle Sticker Labels',20,0,NULL,'2013-09-15 02:41:05','2013-09-15 02:41:05',2147483647),
	('52352db1-c10c-4bf8-9362-0747d87f8d82','52352db1-c8d0-4445-bbf0-0747d87f8d82','Circle (Sticker)','6','ProductVariant','',1,'Circle Sticker Labels',20,0,NULL,'2013-09-15 11:46:57','2013-09-15 11:46:57',2147483647),
	('52353d9f-0508-4d87-b359-0740d87f8d82','52353d98-1288-4724-8dc0-0758d87f8d82','Rectangle (Sticker)','5','ProductVariant','',1,'Rectangle Sticker Labels',19.95,0,NULL,'2013-09-15 12:54:55','2013-09-15 12:54:55',2147483647),
	('523beddf-3bc8-4e2b-ad0a-076bd87f8d82','523bedbe-963c-42e9-85a1-0775d87f8d82','Rectangle (Sticker)','5','ProductVariant','',1,'Rectangle Sticker Labels',19.95,0,NULL,'2013-09-20 14:40:31','2013-09-20 14:40:31',2147483647),
	('523bfa00-7c74-4d69-82fe-076bd87f8d82','523bf9fa-faec-4601-80e0-0766d87f8d82','Rectangle (Sticker)','5','ProductVariant','',1,'Rectangle Sticker Labels',19.95,0,NULL,'2013-09-20 15:32:16','2013-09-20 15:32:16',2147483647),
	('523bfcb7-cfc0-4ce1-bb46-0776d87f8d82','523bfcb2-08a8-47cc-9478-076ed87f8d82','Rectangle (Sticker)','5','ProductVariant','',1,'Rectangle Sticker Labels',19.95,0,NULL,'2013-09-20 15:43:51','2013-09-20 15:43:51',2147483647),
	('523bfd0f-80c4-47b1-8015-0775d87f8d82','523bfd05-2c38-4810-9532-0771d87f8d82','Circle (Sticker)','6','ProductVariant','',1,'Circle Sticker Labels',20,0,NULL,'2013-09-20 15:45:19','2013-09-20 15:45:19',2147483647),
	('523c083b-2c70-48f6-8295-0776d87f8d82','523bfd3a-d5dc-449f-a1ea-0761d87f8d82','Circle (Sticker)','6','ProductVariant','',1,'Circle Sticker Labels',20,0,NULL,'2013-09-20 16:32:59','2013-09-20 16:32:59',2147483647),
	('523d7c15-75c4-48f5-b36b-0741d87f8d82','523d564e-4040-4311-a0a4-0753d87f8d82','Circle (Sticker)','6','ProductVariant','',1,'Circle Sticker Labels',20,0,NULL,'2013-09-21 18:59:33','2013-09-21 18:59:33',2147483647),
	('523d7dc7-e130-48e1-b224-0752d87f8d82','523d7c65-7714-48d8-8445-0752d87f8d82','Rectangle (Sticker)','5','ProductVariant','',1,'Rectangle Sticker Labels',19.95,0,NULL,'2013-09-21 19:06:47','2013-09-21 19:06:47',2147483647),
	('523d7ffc-8358-4c9c-bb60-0751d87f8d82','523d7ffc-4858-414e-aeff-0751d87f8d82','Rectangle (Sticker)','5','ProductVariant','',1,'Rectangle Sticker Labels',19.95,0,NULL,'2013-09-21 19:16:12','2013-09-21 19:16:12',2147483647),
	('523d8043-6df8-4579-8aaf-0753d87f8d82','523d8043-2e90-49a9-9072-0753d87f8d82','Rectangle (Sticker)','5','ProductVariant','',1,'Rectangle Sticker Labels',19.95,0,NULL,'2013-09-21 19:17:23','2013-09-21 19:17:23',2147483647),
	('523d8263-9510-40e0-804a-0749d87f8d82','523d825b-092c-47cd-8500-0745d87f8d82','Circle (Sticker)','6','ProductVariant','',1,'Circle Sticker Labels',20,0,NULL,'2013-09-21 19:26:27','2013-09-21 19:26:27',2147483647),
	('523d83c0-3614-4106-a9dc-074bd87f8d82','523d83c0-57c0-410a-b6fa-074bd87f8d82','Rectangle (Sticker)','5','ProductVariant','',1,'Rectangle Sticker Labels',19.95,0,NULL,'2013-09-21 19:32:16','2013-09-21 19:32:16',2147483647),
	('523dc293-d534-4bd6-acd3-0717d87f8d82','523dc293-12c4-456a-80fa-0717d87f8d82','Circle (Sticker)','6','ProductVariant','',1,'Circle Sticker Labels',20,0,NULL,'2013-09-22 00:00:19','2013-09-22 00:00:19',2147483647),
	('523dc378-e5ac-4eaa-863f-0709d87f8d82','523dc36d-c03c-453d-8546-0715d87f8d82','Rectangle (Sticker)','5','ProductVariant','',1,'Rectangle Sticker Labels',19.95,0,NULL,'2013-09-22 00:04:08','2013-09-22 00:04:08',2147483647),
	('523e0437-1c48-4ff1-a6a4-06ffd87f8d82','523e0437-6bb4-4bf5-8fd5-06ffd87f8d82','Circle (Sticker)','6','ProductVariant','',1,'Circle Sticker Labels',20,0,NULL,'2013-09-22 04:40:23','2013-09-22 04:40:23',2147483647),
	('523ea260-2bd4-4630-842b-0748d87f8d82','523e0437-6bb4-4bf5-8fd5-06ffd87f8d82','Rectangle (Sticker)','5','ProductVariant','',1,'Rectangle Sticker Labels',19.95,0,NULL,'2013-09-22 15:55:12','2013-09-22 15:55:12',2147483647),
	('524040ff-3fd8-49cb-9e2b-0818d87f8d82','524040ff-f29c-49e7-a933-0818d87f8d82','Rectangle (Sticker)','5','ProductVariant','first line: Nathan\nsecond line: Summers\nfont: American Typewriter',1,'Rectangle Sticker Labels',15,0,NULL,'2013-09-23 21:24:15','2013-09-23 21:24:15',2147483647),
	('524040ff-c448-443a-b673-0818d87f8d82','524040ff-f29c-49e7-a933-0818d87f8d82','Split Dual Name Pack (Sticker) - S Rect','12','ProductVariant','first line: Scott\nsecond line: Summers\nfont: American Typewriter',1,'Split Dual Name Pack (Sticker Labels) - Small Rectangle Labels',20,0,NULL,'2013-09-23 21:24:15','2013-09-23 21:24:15',2147483647),
	('524041f4-2dd8-4b05-abf4-0824d87f8d82','524041e6-5dc0-4e78-9798-082dd87f8d82','Rectangle (Sticker)','5','ProductVariant','first line: Nathan\nsecond line: Summers\nfont: American Typewriter',1,'Rectangle Sticker Labels',15,0,NULL,'2013-09-23 21:28:20','2013-09-23 21:28:20',2147483647),
	('5240450a-d338-45ed-80ee-0813d87f8d82','524041e6-5dc0-4e78-9798-082dd87f8d82','Rectangle (Sticker)','5','ProductVariant','first line: jean\nsecond line: grey\nfont: American Typewriter',1,'Rectangle Sticker Labels',15,0,NULL,'2013-09-23 21:41:30','2013-09-23 21:41:30',2147483647),
	('52404724-6e1c-470e-b39a-0812d87f8d82','524041e6-5dc0-4e78-9798-082dd87f8d82','Rectangle (Sticker)','5','ProductVariant','first line: prof\nsecond line: x\nfont: American Typewriter',1,'Rectangle Sticker Labels',15,0,NULL,'2013-09-23 21:50:28','2013-09-23 21:50:28',2147483647),
	('524095f7-2988-47cd-82eb-0770d87f8d82','524048b0-1990-4c7e-a1be-081ad87f8d82','Rectangle (Sticker)','5','ProductVariant','first line: Nathan Christopher\nsecond line: Summers\nfont: American Typewriter',1,'Rectangle Sticker Labels',15,0,NULL,'2013-09-24 03:26:47','2013-09-24 03:26:47',2147483647),
	('5241d11c-a008-4179-89b1-0769d87f8d82','524048b0-1990-4c7e-a1be-081ad87f8d82','Circle (Sticker)','6','ProductVariant','first line: Rachel\nsecond line: Summers\nfont: AmericanTypewriter',1,'Circle Sticker Labels',15,0,NULL,'2013-09-25 01:51:24','2013-09-25 01:51:24',2147483647),
	('5241d4cc-05c4-47ee-93eb-076ed87f8d82','5241d4cc-9134-4a17-bb2e-076ed87f8d82','Rectangle (Sticker)','5','ProductVariant','first line: Rachel\nsecond line: Green\nfont: AmericanTypewriter',1,'Rectangle Sticker Labels',15,0,NULL,'2013-09-25 02:07:08','2013-09-25 02:07:08',2147483647),
	('5241d546-37a0-4024-ba01-0770d87f8d82','5241d546-7250-417e-afcb-0770d87f8d82','Rectangle (Sticker)','5','ProductVariant','first line: Chandler\nsecond line: Bing\nfont: Bebas',1,'Rectangle Sticker Labels',15,0,NULL,'2013-09-25 02:09:10','2013-09-25 02:09:10',2147483647),
	('5241e106-cc34-4d7d-b102-0770d87f8d82','5241e106-c8ac-40d7-b1f1-0770d87f8d82','Rectangle (Sticker)','5','ProductVariant','first line: Ross\nsecond line: Geller\nfont: Bebas',1,'Rectangle Sticker Labels',15,0,NULL,'2013-09-25 02:59:18','2013-09-25 02:59:18',2147483647),
	('5241e1f1-cce8-4125-b5af-0778d87f8d82','5241e1f1-6cb0-4be8-9b39-0778d87f8d82','Rectangle (Sticker)','5','ProductVariant','first line: Nathan Christopher\nsecond line: Summers\nfont: AmericanTypewriter',1,'Rectangle Sticker Labels',15,0,NULL,'2013-09-25 03:03:13','2013-09-25 03:03:13',2147483647),
	('5241e361-1b44-4458-9293-077bd87f8d82','5241e361-b544-425a-b05c-077bd87f8d82','Rectangle (Sticker)','5','ProductVariant','first line: Nathan\nsecond line: summers\nfont: AmericanTypewriter',1,'Rectangle Sticker Labels',15,0,NULL,'2013-09-25 03:09:21','2013-09-25 03:09:21',2147483647),
	('524341da-a1d4-428f-bf76-0743d87f8d82','524341da-e994-4946-8196-0743d87f8d82','Circle (Sticker)','6','ProductVariant','first line: p\nsecond line: x\nfont: AmericanTypewriter',1,'Circle Sticker Labels',15,0,NULL,'2013-09-26 04:04:42','2013-09-26 04:04:42',2147483647),
	('524343cb-ed2c-4a08-9d7a-0775d87f8d82','524343cb-01cc-487c-8975-0775d87f8d82','Circle (Sticker)','6','ProductVariant','first line: Prof\nsecond line: X\nfont: AmericanTypewriter',1,'Circle Sticker Labels',15,0,NULL,'2013-09-26 04:12:59','2013-09-26 04:12:59',2147483647),
	('524401a0-18ec-4340-8447-0705d87f8d82','524401a0-75dc-4fb0-88b9-0705d87f8d82','Rectangle (Sticker)','5','ProductVariant','first line: Scott\nsecond line: Summers\nfont: AmericanTypewriter',1,'Rectangle Sticker Labels',15,0,NULL,'2013-09-26 17:42:56','2013-09-26 17:42:56',2147483647),
	('524402c1-326c-434f-86d9-06f9d87f8d82','524402c1-a9b0-4cc6-85e3-06f9d87f8d82','Rectangle (Sticker)','5','ProductVariant','first line: Prof\nsecond line: x\nfont: AmericanTypewriter',1,'Rectangle Sticker Labels',15,0,NULL,'2013-09-26 17:47:45','2013-09-26 17:47:45',2147483647),
	('524403a6-7818-455f-b043-0712d87f8d82','524403a6-1294-4a4c-bd27-0712d87f8d82','Rectangle (Sticker)','5','ProductVariant','first line: Prof\nsecond line: X\nfont: AmericanTypewriter',1,'Rectangle Sticker Labels',15,0,NULL,'2013-09-26 17:51:34','2013-09-26 17:51:34',2147483647),
	('52448916-b5a4-4d60-955c-073dd87f8d82','52448916-7bac-4da1-874c-073dd87f8d82','Circle (Sticker)','6','ProductVariant','first line: Prof\nsecond line: X\nfont: AmericanTypewriter',1,'Circle Sticker Labels',15,0,NULL,'2013-09-27 03:20:54','2013-09-27 03:20:54',2147483647),
	('52448a07-464c-4ec9-b537-0732d87f8d82','52448a07-1168-4bed-a819-0732d87f8d82','Rectangle (Sticker)','5','ProductVariant','first line: Prof\nsecond line: X\nfont: AmericanTypewriter',1,'Rectangle Sticker Labels',15,0,NULL,'2013-09-27 03:24:55','2013-09-27 03:24:55',2147483647);

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

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;

INSERT INTO `order_items` (`id`, `order_id`, `foreign_key`, `metadata`, `model`, `quantity`, `name`, `price`, `virtual`, `status`, `shipped`, `shipping_date`, `created`, `modified`, `total`)
VALUES
	('5210a8f3-6fe8-41ec-afab-07edd87f8d82','5222f34a-6248-4fb6-a0f0-082ed87f8d82','6','','ProductVariant',1,'Circle Sticker Labels',20,0,NULL,0,NULL,'2013-08-18 03:58:59','2013-08-18 03:58:59',20),
	('5222e25f-62b4-4b36-a778-082cd87f8d82','5222e25f-bec4-4008-b1f2-082cd87f8d82','5','','ProductVariant',1,'Rectangle Sticker Labels',19.95,0,NULL,0,NULL,'2013-09-01 14:44:47','2013-09-01 14:44:47',19.95),
	('5222e94f-3254-4133-b593-0822d87f8d82','5222e94f-5138-4ac4-99b2-0822d87f8d82','5','','ProductVariant',1,'Rectangle Sticker Labels',19.95,0,NULL,0,NULL,'2013-09-01 15:14:23','2013-09-01 15:14:23',19.95),
	('5222ee6b-0288-4926-b9e5-082cd87f8d82','5222ee6b-7b94-4e14-bcfd-082cd87f8d82','5','','ProductVariant',1,'Rectangle Sticker Labels',19.95,0,NULL,0,NULL,'2013-09-01 15:36:11','2013-09-01 15:36:11',19.95),
	('5222efa9-6d18-41e0-b676-0829d87f8d82','5222efa9-5e98-43e9-9a4a-0829d87f8d82','5','','ProductVariant',1,'Rectangle Sticker Labels',19.95,0,NULL,0,NULL,'2013-09-01 15:41:29','2013-09-01 15:41:29',19.95),
	('5222f07b-63ac-4262-9da8-082fd87f8d82','5222f07b-4864-4057-930f-082fd87f8d82','5','','ProductVariant',1,'Rectangle Sticker Labels',19.95,0,NULL,0,NULL,'2013-09-01 15:44:59','2013-09-01 15:44:59',19.95),
	('5222f13a-f81c-456e-a720-0828d87f8d82','5222f13a-9290-44f5-b644-0828d87f8d82','5','','ProductVariant',1,'Rectangle Sticker Labels',19.95,0,NULL,0,NULL,'2013-09-01 15:48:10','2013-09-01 15:48:10',19.95),
	('5222f34a-0d48-4164-8692-082ed87f8d82','5222f34a-6248-4fb6-a0f0-082ed87f8d82','5','','ProductVariant',1,'Rectangle Sticker Labels',19.95,0,NULL,0,NULL,'2013-09-01 15:56:58','2013-09-01 15:56:58',19.95),
	('5222ff4c-ed10-46a9-9857-081dd87f8d82','5222ff72-6b80-4d35-a359-0831d87f8d82','5','','ProductVariant',1,'Rectangle Sticker Labels',19.95,0,NULL,0,NULL,'2013-09-01 16:48:12','2013-09-01 16:48:12',19.95),
	('52292fbf-0350-4410-bef3-0760d87f8d82','52292fbf-0780-44ab-9f55-0760d87f8d82','5','','ProductVariant',1,'Rectangle Sticker Labels',19.95,0,NULL,0,NULL,'2013-09-06 09:28:31','2013-09-06 09:28:31',19.95),
	('52293095-f190-4f53-8f3b-0762d87f8d82','5229312f-9394-4ca5-b70c-0760d87f8d82','5','','ProductVariant',1,'Rectangle Sticker Labels',19.95,0,NULL,0,NULL,'2013-09-06 09:32:05','2013-09-06 09:32:05',19.95),
	('52293258-7714-458f-a208-076ad87f8d82','52293264-1dd8-4c75-bd3e-0767d87f8d82','6','','ProductVariant',1,'Circle Sticker Labels',20,0,NULL,0,NULL,'2013-09-06 09:39:36','2013-09-06 09:39:36',20),
	('5232bd5e-656c-461b-a0a9-075ed87f8d82','5232bd5e-c420-4b13-9689-075ed87f8d82','6','','ProductVariant',1,'Circle Sticker Labels',20,0,NULL,0,NULL,'2013-09-13 15:23:10','2013-09-13 15:23:10',20),
	('523beddf-3bc8-4e2b-ad0a-076bd87f8d82','523bf899-2c6c-4d8f-a3d1-0765d87f8d82','5','','ProductVariant',1,'Rectangle Sticker Labels',19.95,0,NULL,0,NULL,'2013-09-20 14:40:31','2013-09-20 14:40:31',19.95),
	('523bfa00-7c74-4d69-82fe-076bd87f8d82','523bfa0e-67d8-4d44-a9f7-076ad87f8d82','5','','ProductVariant',1,'Rectangle Sticker Labels',19.95,0,NULL,0,NULL,'2013-09-20 15:32:16','2013-09-20 15:32:16',19.95),
	('523bfcb7-cfc0-4ce1-bb46-0776d87f8d82','523bfcc5-53b4-4cc4-bafd-0768d87f8d82','5','','ProductVariant',1,'Rectangle Sticker Labels',19.95,0,NULL,0,NULL,'2013-09-20 15:43:51','2013-09-20 15:43:51',19.95),
	('523bfd0f-80c4-47b1-8015-0775d87f8d82','523bfd1b-34ec-40b6-bf01-0764d87f8d82','6','','ProductVariant',1,'Circle Sticker Labels',20,0,NULL,0,NULL,'2013-09-20 15:45:19','2013-09-20 15:45:19',20),
	('523d7c15-75c4-48f5-b36b-0741d87f8d82','523d7c23-d9c4-40ca-970d-073dd87f8d82','6','','ProductVariant',1,'Circle Sticker Labels',20,0,NULL,0,NULL,'2013-09-21 18:59:33','2013-09-21 18:59:33',20),
	('523d7dc7-e130-48e1-b224-0752d87f8d82','523d7e4f-57a8-4739-8877-073ed87f8d82','5','','ProductVariant',1,'Rectangle Sticker Labels',19.95,0,NULL,0,NULL,'2013-09-21 19:06:47','2013-09-21 19:06:47',19.95),
	('523d804c-2de4-40f9-82ab-0749d87f8d82','523d804c-bd34-40ed-a6d5-0749d87f8d82','5','','ProductVariant',1,'Rectangle Sticker Labels',19.95,0,NULL,0,NULL,'2013-09-21 19:17:32','2013-09-21 19:17:32',19.95),
	('523e0437-1c48-4ff1-a6a4-06ffd87f8d82','523ea280-aff4-483d-981d-0757d87f8d82','6','','ProductVariant',1,'Circle Sticker Labels',20,0,NULL,0,NULL,'2013-09-22 04:40:23','2013-09-22 04:40:23',20),
	('523ea280-5404-411a-9e53-0757d87f8d82','523ea280-aff4-483d-981d-0757d87f8d82','5','','ProductVariant',1,'Rectangle Sticker Labels',19.95,0,NULL,0,NULL,'2013-09-22 15:55:44','2013-09-22 15:55:44',19.95),
	('52404124-c4d4-41de-a9b0-082bd87f8d82','52404124-d084-49e5-9aa8-082bd87f8d82','12','first line: Scott\nsecond line: Summers\nfont: American Typewriter','ProductVariant',1,'Split Dual Name Pack (Sticker Labels) - Small Rectangle Labels',20,0,NULL,0,NULL,'2013-09-23 21:24:52','2013-09-23 21:24:52',20),
	('52404124-e920-43a1-9c63-082bd87f8d82','52404124-d084-49e5-9aa8-082bd87f8d82','5','first line: Nathan\nsecond line: Summers\nfont: American Typewriter','ProductVariant',1,'Rectangle Sticker Labels',15,0,NULL,0,NULL,'2013-09-23 21:24:52','2013-09-23 21:24:52',15),
	('5240450a-d338-45ed-80ee-0813d87f8d82','524047f7-9430-4a4b-afa3-0827d87f8d82','5','first line: jean\nsecond line: grey\nfont: American Typewriter','ProductVariant',1,'Rectangle Sticker Labels',15,0,NULL,0,NULL,'2013-09-23 21:41:30','2013-09-23 21:41:30',15),
	('52404724-6e1c-470e-b39a-0812d87f8d82','524047f7-9430-4a4b-afa3-0827d87f8d82','5','first line: prof\nsecond line: x\nfont: American Typewriter','ProductVariant',1,'Rectangle Sticker Labels',15,0,NULL,0,NULL,'2013-09-23 21:50:28','2013-09-23 21:50:28',15),
	('5241e4d1-3820-4ecf-b64a-0772d87f8d82','5241e4d1-95ac-4d94-8434-0772d87f8d82','5','first line: Nathan\nsecond line: summers\nfont: AmericanTypewriter','ProductVariant',1,'Rectangle Sticker Labels',15,0,NULL,0,NULL,'2013-09-25 03:15:29','2013-09-25 03:15:29',15);

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
	('5232bd5e-c420-4b13-9689-075ed87f8d82','3','5232bd51-fd8c-4283-8312-075bd87f8d82','a:5:{s:4:\"Cart\";a:9:{s:6:\"active\";i:1;s:10:\"item_count\";i:1;s:7:\"user_id\";s:1:\"3\";s:4:\"name\";s:7:\"My cart\";s:8:\"modified\";s:19:\"2013-09-13 15:22:57\";s:7:\"created\";s:19:\"2013-09-13 15:22:57\";s:2:\"id\";s:36:\"5232bd51-fd8c-4283-8312-075bd87f8d82\";s:5:\"total\";d:20;s:11:\"total_price\";d:20;}s:9:\"CartsItem\";a:1:{i:0;a:13:{s:8:\"quantity\";s:1:\"1\";s:11:\"foreign_key\";s:1:\"6\";s:5:\"model\";s:14:\"ProductVariant\";s:7:\"user_id\";N;s:7:\"cart_id\";N;s:14:\"quantity_limit\";i:9223372036854775807;s:10:\"is_virtual\";b:0;s:4:\"name\";s:21:\"Circle Sticker Labels\";s:5:\"price\";s:5:\"20.00\";s:10:\"short_name\";s:16:\"Circle (Sticker)\";s:15:\"additional_data\";s:6:\"a:0:{}\";s:5:\"total\";d:20;s:5:\"image\";s:39:\"/theme/V1/img/cart_step_1/u9_normal.png\";}}s:15:\"ShippingAddress\";a:14:{s:2:\"id\";s:36:\"520a4e0c-8978-4ee4-a4ca-0778d87f8d82\";s:8:\"order_id\";s:36:\"5222f13a-9290-44f5-b644-0828d87f8d82\";s:7:\"user_id\";s:1:\"3\";s:10:\"first_name\";s:3:\"aik\";s:9:\"last_name\";N;s:7:\"company\";N;s:6:\"street\";s:12:\"ubi avenue 1\";s:7:\"street2\";s:4:\"3118\";s:4:\"city\";s:9:\"Singapore\";s:3:\"zip\";s:6:\"400400\";s:7:\"country\";s:2:\"SG\";s:4:\"type\";s:2:\"sh\";s:7:\"created\";s:19:\"2013-08-13 08:17:32\";s:8:\"modified\";s:19:\"2013-08-13 08:17:32\";}s:14:\"BillingAddress\";a:14:{s:2:\"id\";s:36:\"520d7721-61e0-4697-88a2-06d3d87f8d82\";s:8:\"order_id\";s:36:\"5222f13a-9290-44f5-b644-0828d87f8d82\";s:7:\"user_id\";s:1:\"3\";s:10:\"first_name\";s:12:\"Sim Aik Chun\";s:9:\"last_name\";N;s:7:\"company\";N;s:6:\"street\";s:9:\"Block 100\";s:7:\"street2\";s:10:\"street 222\";s:4:\"city\";s:9:\"singapore\";s:3:\"zip\";s:3:\"222\";s:7:\"country\";s:2:\"SG\";s:4:\"type\";s:2:\"bi\";s:7:\"created\";s:19:\"2013-08-15 17:49:37\";s:8:\"modified\";s:19:\"2013-08-15 17:49:37\";}s:14:\"ShippingOption\";a:1:{s:2:\"id\";s:1:\"1\";}}',NULL,'PAYPAL_EXPRESS',NULL,NULL,'completed',NULL,'20130913-1','','BillingAddress:\nfirst_name : Sim Aik Chun\nlast_name : \ncompany : \nstreet : Block 100\nstreet2 : street 222\ncity : singapore\nzip : 222\ncountry : SG\n','ShippingAddress:\nfirst_name : aik\nlast_name : \ncompany : \nstreet : ubi avenue 1\nstreet2 : 3118\ncity : Singapore\nzip : 400400\ncountry : SG\n',20,NULL,'2013-09-13 15:23:10','2013-09-13 15:23:10',1,'1'),
	('523bfd1b-34ec-40b6-bf01-0764d87f8d82','5','523bfd05-2c38-4810-9532-0771d87f8d82','a:5:{s:4:\"Cart\";a:9:{s:6:\"active\";i:1;s:10:\"item_count\";i:1;s:7:\"user_id\";s:1:\"5\";s:4:\"name\";s:7:\"My cart\";s:8:\"modified\";s:19:\"2013-09-20 15:45:09\";s:7:\"created\";s:19:\"2013-09-20 15:45:09\";s:2:\"id\";s:36:\"523bfd05-2c38-4810-9532-0771d87f8d82\";s:5:\"total\";d:20;s:11:\"total_price\";d:20;}s:9:\"CartsItem\";a:1:{i:0;a:17:{s:7:\"virtual\";s:1:\"0\";s:14:\"quantity_limit\";i:9223372036854775807;s:8:\"quantity\";s:1:\"1\";s:11:\"foreign_key\";s:1:\"6\";s:5:\"model\";s:14:\"ProductVariant\";s:7:\"user_id\";s:1:\"5\";s:7:\"cart_id\";s:36:\"523bfd05-2c38-4810-9532-0771d87f8d82\";s:10:\"is_virtual\";b:0;s:4:\"name\";s:21:\"Circle Sticker Labels\";s:5:\"price\";s:5:\"20.00\";s:10:\"short_name\";s:16:\"Circle (Sticker)\";s:15:\"additional_data\";s:6:\"a:0:{}\";s:8:\"modified\";s:19:\"2013-09-20 15:45:19\";s:7:\"created\";s:19:\"2013-09-20 15:45:19\";s:2:\"id\";s:36:\"523bfd0f-80c4-47b1-8015-0775d87f8d82\";s:5:\"total\";d:20;s:5:\"image\";s:39:\"/theme/V1/img/cart_step_1/u9_normal.png\";}}s:15:\"ShippingAddress\";a:14:{s:2:\"id\";s:36:\"523bf893-52c0-43db-ab67-0761d87f8d82\";s:8:\"order_id\";N;s:7:\"user_id\";s:1:\"5\";s:10:\"first_name\";s:8:\"aik_chun\";s:9:\"last_name\";s:8:\"customer\";s:7:\"company\";N;s:6:\"street\";s:16:\"318 gaudy salami\";s:7:\"street2\";s:6:\"300318\";s:4:\"city\";s:9:\"Singapore\";s:3:\"zip\";s:6:\"400318\";s:7:\"country\";s:2:\"SG\";s:4:\"type\";s:2:\"sh\";s:7:\"created\";s:19:\"2013-09-20 15:26:11\";s:8:\"modified\";s:19:\"2013-09-20 15:26:11\";}s:14:\"BillingAddress\";a:14:{s:2:\"id\";s:36:\"523bf893-56bc-40ff-8b1a-0761d87f8d82\";s:8:\"order_id\";N;s:7:\"user_id\";s:1:\"5\";s:10:\"first_name\";s:8:\"aik_chun\";s:9:\"last_name\";s:8:\"customer\";s:7:\"company\";N;s:6:\"street\";s:16:\"318 gaudy salami\";s:7:\"street2\";s:6:\"300318\";s:4:\"city\";s:9:\"Singapore\";s:3:\"zip\";s:6:\"400318\";s:7:\"country\";s:2:\"SG\";s:4:\"type\";s:2:\"bi\";s:7:\"created\";s:19:\"2013-09-20 15:26:11\";s:8:\"modified\";s:19:\"2013-09-20 15:26:11\";}s:14:\"ShippingOption\";a:1:{s:2:\"id\";s:1:\"1\";}}',NULL,'PAYPAL_EXPRESS',NULL,NULL,'completed',NULL,'20130920-6','','BillingAddress:\nfirst_name : aik_chun\nlast_name : customer\ncompany : \nstreet : 318 gaudy salami\nstreet2 : 300318\ncity : Singapore\nzip : 400318\ncountry : SG\n','ShippingAddress:\nfirst_name : aik_chun\nlast_name : customer\ncompany : \nstreet : 318 gaudy salami\nstreet2 : 300318\ncity : Singapore\nzip : 400318\ncountry : SG\n',20,NULL,'2013-09-20 15:45:31','2013-09-20 15:45:31',1,'5'),
	('523d7c23-d9c4-40ca-970d-073dd87f8d82','3','523d564e-4040-4311-a0a4-0753d87f8d82','a:5:{s:4:\"Cart\";a:9:{s:6:\"active\";i:1;s:10:\"item_count\";i:1;s:7:\"user_id\";s:1:\"3\";s:4:\"name\";s:7:\"My cart\";s:8:\"modified\";s:19:\"2013-09-21 16:18:22\";s:7:\"created\";s:19:\"2013-09-21 16:18:22\";s:2:\"id\";s:36:\"523d564e-4040-4311-a0a4-0753d87f8d82\";s:5:\"total\";d:20;s:11:\"total_price\";d:20;}s:9:\"CartsItem\";a:1:{i:0;a:17:{s:7:\"virtual\";s:1:\"0\";s:14:\"quantity_limit\";i:9223372036854775807;s:8:\"quantity\";s:1:\"1\";s:11:\"foreign_key\";s:1:\"6\";s:5:\"model\";s:14:\"ProductVariant\";s:7:\"user_id\";s:1:\"3\";s:7:\"cart_id\";s:36:\"523d564e-4040-4311-a0a4-0753d87f8d82\";s:10:\"is_virtual\";b:0;s:4:\"name\";s:21:\"Circle Sticker Labels\";s:5:\"price\";s:5:\"20.00\";s:10:\"short_name\";s:16:\"Circle (Sticker)\";s:15:\"additional_data\";s:6:\"a:0:{}\";s:8:\"modified\";s:19:\"2013-09-21 18:59:33\";s:7:\"created\";s:19:\"2013-09-21 18:59:33\";s:2:\"id\";s:36:\"523d7c15-75c4-48f5-b36b-0741d87f8d82\";s:5:\"total\";d:20;s:5:\"image\";s:39:\"/theme/V1/img/cart_step_1/u9_normal.png\";}}s:15:\"ShippingAddress\";a:14:{s:2:\"id\";s:36:\"520a4e0c-8978-4ee4-a4ca-0778d87f8d82\";s:8:\"order_id\";s:36:\"5222f13a-9290-44f5-b644-0828d87f8d82\";s:7:\"user_id\";s:1:\"3\";s:10:\"first_name\";s:3:\"aik\";s:9:\"last_name\";s:3:\"sim\";s:7:\"company\";N;s:6:\"street\";s:12:\"ubi avenue 1\";s:7:\"street2\";s:4:\"3118\";s:4:\"city\";s:9:\"Singapore\";s:3:\"zip\";s:6:\"400400\";s:7:\"country\";s:2:\"SG\";s:4:\"type\";s:2:\"sh\";s:7:\"created\";s:19:\"2013-08-13 08:17:32\";s:8:\"modified\";s:19:\"2013-08-13 08:17:32\";}s:14:\"BillingAddress\";a:14:{s:2:\"id\";s:36:\"520d7721-61e0-4697-88a2-06d3d87f8d82\";s:8:\"order_id\";s:36:\"5222f13a-9290-44f5-b644-0828d87f8d82\";s:7:\"user_id\";s:1:\"3\";s:10:\"first_name\";s:8:\"Aik Chun\";s:9:\"last_name\";s:3:\"sim\";s:7:\"company\";N;s:6:\"street\";s:9:\"Block 100\";s:7:\"street2\";s:10:\"street 222\";s:4:\"city\";s:9:\"singapore\";s:3:\"zip\";s:3:\"222\";s:7:\"country\";s:2:\"SG\";s:4:\"type\";s:2:\"bi\";s:7:\"created\";s:19:\"2013-08-15 17:49:37\";s:8:\"modified\";s:19:\"2013-08-15 17:49:37\";}s:14:\"ShippingOption\";a:1:{s:2:\"id\";s:1:\"1\";}}',NULL,'PAYPAL_EXPRESS',NULL,NULL,'completed',NULL,'20130921-4','','BillingAddress:\nfirst_name : Aik Chun\nlast_name : sim\ncompany : \nstreet : Block 100\nstreet2 : street 222\ncity : singapore\nzip : 222\ncountry : SG\n','ShippingAddress:\nfirst_name : aik\nlast_name : sim\ncompany : \nstreet : ubi avenue 1\nstreet2 : 3118\ncity : Singapore\nzip : 400400\ncountry : SG\n',20,NULL,'2013-09-21 18:59:47','2013-09-21 18:59:47',1,'3'),
	('523ea280-aff4-483d-981d-0757d87f8d82','3','523e0437-6bb4-4bf5-8fd5-06ffd87f8d82','a:5:{s:4:\"Cart\";a:9:{s:2:\"id\";s:36:\"523e0437-6bb4-4bf5-8fd5-06ffd87f8d82\";s:7:\"user_id\";s:1:\"3\";s:4:\"name\";s:7:\"My cart\";s:5:\"total\";d:39.950000000000003;s:6:\"active\";b:1;s:10:\"item_count\";i:2;s:7:\"created\";s:19:\"2013-09-22 04:40:23\";s:8:\"modified\";s:19:\"2013-09-22 04:40:23\";s:11:\"total_price\";d:39.950000000000003;}s:9:\"CartsItem\";a:2:{i:0;a:15:{s:2:\"id\";s:36:\"523e0437-1c48-4ff1-a6a4-06ffd87f8d82\";s:7:\"cart_id\";s:36:\"523e0437-6bb4-4bf5-8fd5-06ffd87f8d82\";s:10:\"short_name\";s:16:\"Circle (Sticker)\";s:11:\"foreign_key\";s:1:\"6\";s:5:\"model\";s:14:\"ProductVariant\";s:8:\"quantity\";s:1:\"1\";s:4:\"name\";s:21:\"Circle Sticker Labels\";s:5:\"price\";s:2:\"20\";s:7:\"virtual\";b:0;s:6:\"status\";N;s:7:\"created\";s:19:\"2013-09-22 04:40:23\";s:8:\"modified\";s:19:\"2013-09-22 04:40:23\";s:14:\"quantity_limit\";s:10:\"2147483647\";s:5:\"total\";d:20;s:5:\"image\";s:40:\"/theme/V1/img/cart_step_3/u46_normal.png\";}i:1;a:13:{s:8:\"quantity\";s:1:\"1\";s:11:\"foreign_key\";s:1:\"5\";s:5:\"model\";s:14:\"ProductVariant\";s:7:\"user_id\";N;s:7:\"cart_id\";N;s:14:\"quantity_limit\";i:9223372036854775807;s:10:\"is_virtual\";b:0;s:4:\"name\";s:24:\"Rectangle Sticker Labels\";s:5:\"price\";s:5:\"19.95\";s:10:\"short_name\";s:19:\"Rectangle (Sticker)\";s:15:\"additional_data\";s:6:\"a:0:{}\";s:5:\"total\";d:19.949999999999999;s:5:\"image\";s:39:\"/theme/V1/img/cart_step_1/u9_normal.png\";}}s:15:\"ShippingAddress\";a:14:{s:2:\"id\";s:36:\"520a4e0c-8978-4ee4-a4ca-0778d87f8d82\";s:8:\"order_id\";s:36:\"5222f13a-9290-44f5-b644-0828d87f8d82\";s:7:\"user_id\";s:1:\"3\";s:10:\"first_name\";s:3:\"aik\";s:9:\"last_name\";s:3:\"sim\";s:7:\"company\";N;s:6:\"street\";s:12:\"ubi avenue 1\";s:7:\"street2\";s:4:\"3118\";s:4:\"city\";s:9:\"Singapore\";s:3:\"zip\";s:6:\"400400\";s:7:\"country\";s:2:\"SG\";s:4:\"type\";s:2:\"sh\";s:7:\"created\";s:19:\"2013-08-13 08:17:32\";s:8:\"modified\";s:19:\"2013-08-13 08:17:32\";}s:14:\"BillingAddress\";a:14:{s:2:\"id\";s:36:\"520d7721-61e0-4697-88a2-06d3d87f8d82\";s:8:\"order_id\";s:36:\"5222f13a-9290-44f5-b644-0828d87f8d82\";s:7:\"user_id\";s:1:\"3\";s:10:\"first_name\";s:8:\"Aik Chun\";s:9:\"last_name\";s:3:\"sim\";s:7:\"company\";N;s:6:\"street\";s:9:\"Block 100\";s:7:\"street2\";s:10:\"street 222\";s:4:\"city\";s:9:\"singapore\";s:3:\"zip\";s:3:\"222\";s:7:\"country\";s:2:\"SG\";s:4:\"type\";s:2:\"bi\";s:7:\"created\";s:19:\"2013-08-15 17:49:37\";s:8:\"modified\";s:19:\"2013-08-15 17:49:37\";}s:14:\"ShippingOption\";a:1:{s:2:\"id\";s:1:\"1\";}}',NULL,'BANK_TRANSFER',NULL,NULL,'pending',NULL,'20130922-5','','BillingAddress:\nfirst_name : Aik Chun\nlast_name : sim\ncompany : \nstreet : Block 100\nstreet2 : street 222\ncity : singapore\nzip : 222\ncountry : SG\n','ShippingAddress:\nfirst_name : aik\nlast_name : sim\ncompany : \nstreet : ubi avenue 1\nstreet2 : 3118\ncity : Singapore\nzip : 400400\ncountry : SG\n',39.95,NULL,'2013-09-22 15:55:44','2013-09-22 15:55:44',2,'4'),
	('52404124-d084-49e5-9aa8-082bd87f8d82','5','524040ff-f29c-49e7-a933-0818d87f8d82','a:5:{s:4:\"Cart\";a:9:{s:6:\"active\";i:1;s:10:\"item_count\";i:2;s:7:\"user_id\";s:1:\"5\";s:4:\"name\";s:7:\"My cart\";s:8:\"modified\";s:19:\"2013-09-23 21:24:15\";s:7:\"created\";s:19:\"2013-09-23 21:24:15\";s:2:\"id\";s:36:\"524040ff-f29c-49e7-a933-0818d87f8d82\";s:5:\"total\";d:35;s:11:\"total_price\";d:35;}s:9:\"CartsItem\";a:2:{i:0;a:17:{s:8:\"quantity\";s:1:\"1\";s:11:\"foreign_key\";s:2:\"12\";s:5:\"model\";s:14:\"ProductVariant\";s:10:\"first_line\";s:5:\"Scott\";s:4:\"font\";s:19:\"American Typewriter\";s:11:\"second_line\";s:7:\"Summers\";s:8:\"metadata\";s:64:\"first line: Scott\nsecond line: Summers\nfont: American Typewriter\";s:7:\"user_id\";N;s:7:\"cart_id\";N;s:14:\"quantity_limit\";i:9223372036854775807;s:10:\"is_virtual\";b:0;s:4:\"name\";s:62:\"Split Dual Name Pack (Sticker Labels) - Small Rectangle Labels\";s:5:\"price\";s:5:\"20.00\";s:10:\"short_name\";s:39:\"Split Dual Name Pack (Sticker) - S Rect\";s:15:\"additional_data\";s:6:\"a:0:{}\";s:5:\"total\";d:20;s:5:\"image\";s:39:\"/theme/V1/img/cart_step_1/u9_normal.png\";}i:1;a:17:{s:8:\"quantity\";s:1:\"1\";s:11:\"foreign_key\";s:1:\"5\";s:5:\"model\";s:14:\"ProductVariant\";s:10:\"first_line\";s:6:\"Nathan\";s:4:\"font\";s:19:\"American Typewriter\";s:11:\"second_line\";s:7:\"Summers\";s:8:\"metadata\";s:65:\"first line: Nathan\nsecond line: Summers\nfont: American Typewriter\";s:7:\"user_id\";N;s:7:\"cart_id\";N;s:14:\"quantity_limit\";i:9223372036854775807;s:10:\"is_virtual\";b:0;s:4:\"name\";s:24:\"Rectangle Sticker Labels\";s:5:\"price\";s:5:\"15.00\";s:10:\"short_name\";s:19:\"Rectangle (Sticker)\";s:15:\"additional_data\";s:6:\"a:0:{}\";s:5:\"total\";d:15;s:5:\"image\";s:39:\"/theme/V1/img/cart_step_1/u9_normal.png\";}}s:15:\"ShippingAddress\";a:14:{s:2:\"id\";s:36:\"523bf893-52c0-43db-ab67-0761d87f8d82\";s:8:\"order_id\";N;s:7:\"user_id\";s:1:\"5\";s:10:\"first_name\";s:8:\"aik_chun\";s:9:\"last_name\";s:8:\"customer\";s:7:\"company\";N;s:6:\"street\";s:16:\"318 gaudy salami\";s:7:\"street2\";s:6:\"300318\";s:4:\"city\";s:9:\"Singapore\";s:3:\"zip\";s:6:\"400318\";s:7:\"country\";s:2:\"SG\";s:4:\"type\";s:2:\"sh\";s:7:\"created\";s:19:\"2013-09-20 15:26:11\";s:8:\"modified\";s:19:\"2013-09-20 15:26:11\";}s:14:\"BillingAddress\";a:14:{s:2:\"id\";s:36:\"523bf893-56bc-40ff-8b1a-0761d87f8d82\";s:8:\"order_id\";N;s:7:\"user_id\";s:1:\"5\";s:10:\"first_name\";s:8:\"aik_chun\";s:9:\"last_name\";s:8:\"customer\";s:7:\"company\";N;s:6:\"street\";s:16:\"318 gaudy salami\";s:7:\"street2\";s:6:\"300318\";s:4:\"city\";s:9:\"Singapore\";s:3:\"zip\";s:6:\"400318\";s:7:\"country\";s:2:\"SG\";s:4:\"type\";s:2:\"bi\";s:7:\"created\";s:19:\"2013-09-20 15:26:11\";s:8:\"modified\";s:19:\"2013-09-20 15:26:11\";}s:14:\"ShippingOption\";a:1:{s:2:\"id\";s:1:\"1\";}}',NULL,'PAYPAL_EXPRESS',NULL,NULL,'completed',NULL,'20130923-6','','BillingAddress:\nfirst_name : aik_chun\nlast_name : customer\ncompany : \nstreet : 318 gaudy salami\nstreet2 : 300318\ncity : Singapore\nzip : 400318\ncountry : SG\n','ShippingAddress:\nfirst_name : aik_chun\nlast_name : customer\ncompany : \nstreet : 318 gaudy salami\nstreet2 : 300318\ncity : Singapore\nzip : 400318\ncountry : SG\n',35,NULL,'2013-09-23 21:24:52','2013-09-23 21:24:52',2,'5'),
	('524047f7-9430-4a4b-afa3-0827d87f8d82','5','524041e6-5dc0-4e78-9798-082dd87f8d82','a:5:{s:4:\"Cart\";a:9:{s:6:\"active\";i:1;s:10:\"item_count\";i:2;s:7:\"user_id\";s:1:\"5\";s:4:\"name\";s:7:\"My cart\";s:8:\"modified\";s:19:\"2013-09-23 21:28:06\";s:7:\"created\";s:19:\"2013-09-23 21:28:06\";s:2:\"id\";s:36:\"524041e6-5dc0-4e78-9798-082dd87f8d82\";s:5:\"total\";d:30;s:11:\"total_price\";d:30;}s:9:\"CartsItem\";a:2:{i:0;a:21:{s:7:\"virtual\";s:1:\"0\";s:14:\"quantity_limit\";i:9223372036854775807;s:8:\"quantity\";s:1:\"1\";s:11:\"foreign_key\";s:1:\"5\";s:5:\"model\";s:14:\"ProductVariant\";s:10:\"first_line\";s:4:\"jean\";s:4:\"font\";s:19:\"American Typewriter\";s:11:\"second_line\";s:4:\"grey\";s:8:\"metadata\";s:60:\"first line: jean\nsecond line: grey\nfont: American Typewriter\";s:7:\"user_id\";s:1:\"5\";s:7:\"cart_id\";s:36:\"524041e6-5dc0-4e78-9798-082dd87f8d82\";s:10:\"is_virtual\";b:0;s:4:\"name\";s:24:\"Rectangle Sticker Labels\";s:5:\"price\";s:5:\"15.00\";s:10:\"short_name\";s:19:\"Rectangle (Sticker)\";s:15:\"additional_data\";s:6:\"a:0:{}\";s:8:\"modified\";s:19:\"2013-09-23 21:41:30\";s:7:\"created\";s:19:\"2013-09-23 21:41:30\";s:2:\"id\";s:36:\"5240450a-d338-45ed-80ee-0813d87f8d82\";s:5:\"total\";d:15;s:5:\"image\";s:39:\"/theme/V1/img/cart_step_1/u9_normal.png\";}i:1;a:21:{s:7:\"virtual\";s:1:\"0\";s:14:\"quantity_limit\";i:9223372036854775807;s:8:\"quantity\";s:1:\"1\";s:11:\"foreign_key\";s:1:\"5\";s:5:\"model\";s:14:\"ProductVariant\";s:10:\"first_line\";s:4:\"prof\";s:4:\"font\";s:19:\"American Typewriter\";s:11:\"second_line\";s:1:\"x\";s:8:\"metadata\";s:57:\"first line: prof\nsecond line: x\nfont: American Typewriter\";s:7:\"user_id\";s:1:\"5\";s:7:\"cart_id\";s:36:\"524041e6-5dc0-4e78-9798-082dd87f8d82\";s:10:\"is_virtual\";b:0;s:4:\"name\";s:24:\"Rectangle Sticker Labels\";s:5:\"price\";s:5:\"15.00\";s:10:\"short_name\";s:19:\"Rectangle (Sticker)\";s:15:\"additional_data\";s:6:\"a:0:{}\";s:8:\"modified\";s:19:\"2013-09-23 21:50:28\";s:7:\"created\";s:19:\"2013-09-23 21:50:28\";s:2:\"id\";s:36:\"52404724-6e1c-470e-b39a-0812d87f8d82\";s:5:\"total\";d:15;s:5:\"image\";s:39:\"/theme/V1/img/cart_step_1/u9_normal.png\";}}s:15:\"ShippingAddress\";a:14:{s:2:\"id\";s:36:\"523bf893-52c0-43db-ab67-0761d87f8d82\";s:8:\"order_id\";N;s:7:\"user_id\";s:1:\"5\";s:10:\"first_name\";s:8:\"aik_chun\";s:9:\"last_name\";s:8:\"customer\";s:7:\"company\";N;s:6:\"street\";s:16:\"318 gaudy salami\";s:7:\"street2\";s:6:\"300318\";s:4:\"city\";s:9:\"Singapore\";s:3:\"zip\";s:6:\"400318\";s:7:\"country\";s:2:\"SG\";s:4:\"type\";s:2:\"sh\";s:7:\"created\";s:19:\"2013-09-20 15:26:11\";s:8:\"modified\";s:19:\"2013-09-20 15:26:11\";}s:14:\"BillingAddress\";a:14:{s:2:\"id\";s:36:\"523bf893-56bc-40ff-8b1a-0761d87f8d82\";s:8:\"order_id\";N;s:7:\"user_id\";s:1:\"5\";s:10:\"first_name\";s:8:\"aik_chun\";s:9:\"last_name\";s:8:\"customer\";s:7:\"company\";N;s:6:\"street\";s:16:\"318 gaudy salami\";s:7:\"street2\";s:6:\"300318\";s:4:\"city\";s:9:\"Singapore\";s:3:\"zip\";s:6:\"400318\";s:7:\"country\";s:2:\"SG\";s:4:\"type\";s:2:\"bi\";s:7:\"created\";s:19:\"2013-09-20 15:26:11\";s:8:\"modified\";s:19:\"2013-09-20 15:26:11\";}s:14:\"ShippingOption\";a:1:{s:2:\"id\";s:1:\"1\";}}',NULL,'PAYPAL_EXPRESS',NULL,NULL,'pending',NULL,'20130923-7','','BillingAddress:\nfirst_name : aik_chun\nlast_name : customer\ncompany : \nstreet : 318 gaudy salami\nstreet2 : 300318\ncity : Singapore\nzip : 400318\ncountry : SG\n','ShippingAddress:\nfirst_name : aik_chun\nlast_name : customer\ncompany : \nstreet : 318 gaudy salami\nstreet2 : 300318\ncity : Singapore\nzip : 400318\ncountry : SG\n',30,NULL,'2013-09-23 21:53:59','2013-09-23 21:53:59',2,'6'),
	('5241e4d1-95ac-4d94-8434-0772d87f8d82','8','5241e361-b544-425a-b05c-077bd87f8d82','a:5:{s:4:\"Cart\";a:9:{s:6:\"active\";i:1;s:10:\"item_count\";i:1;s:7:\"user_id\";s:1:\"8\";s:4:\"name\";s:7:\"My cart\";s:8:\"modified\";s:19:\"2013-09-25 03:09:21\";s:7:\"created\";s:19:\"2013-09-25 03:09:21\";s:2:\"id\";s:36:\"5241e361-b544-425a-b05c-077bd87f8d82\";s:5:\"total\";d:15;s:11:\"total_price\";d:15;}s:9:\"CartsItem\";a:1:{i:0;a:17:{s:8:\"quantity\";s:1:\"1\";s:11:\"foreign_key\";s:1:\"5\";s:5:\"model\";s:14:\"ProductVariant\";s:10:\"first_line\";s:6:\"Nathan\";s:4:\"font\";s:18:\"AmericanTypewriter\";s:11:\"second_line\";s:7:\"summers\";s:8:\"metadata\";s:64:\"first line: Nathan\nsecond line: summers\nfont: AmericanTypewriter\";s:7:\"user_id\";N;s:7:\"cart_id\";N;s:14:\"quantity_limit\";i:9223372036854775807;s:10:\"is_virtual\";b:0;s:4:\"name\";s:24:\"Rectangle Sticker Labels\";s:5:\"price\";s:5:\"15.00\";s:10:\"short_name\";s:19:\"Rectangle (Sticker)\";s:15:\"additional_data\";s:6:\"a:0:{}\";s:5:\"total\";d:15;s:5:\"image\";s:39:\"/theme/V1/img/cart_step_1/u9_normal.png\";}}s:15:\"ShippingAddress\";a:13:{s:10:\"first_name\";s:7:\"Charles\";s:9:\"last_name\";s:6:\"Xavier\";s:6:\"street\";s:22:\"1407 Graymalkin Lane, \";s:7:\"street2\";s:12:\"Salem Center\";s:3:\"zip\";s:5:\"10451\";s:7:\"country\";s:2:\"US\";s:4:\"save\";s:7:\"checked\";s:4:\"city\";s:29:\"Westchester Country, New York\";s:7:\"user_id\";s:1:\"8\";s:4:\"type\";s:2:\"sh\";s:8:\"modified\";s:19:\"2013-09-25 03:15:20\";s:7:\"created\";s:19:\"2013-09-25 03:15:20\";s:2:\"id\";s:36:\"5241e4c8-2d60-4244-9f29-0770d87f8d82\";}s:14:\"BillingAddress\";a:13:{s:10:\"first_name\";s:7:\"Charles\";s:9:\"last_name\";s:6:\"Xavier\";s:6:\"street\";s:22:\"1407 Graymalkin Lane, \";s:7:\"street2\";s:12:\"Salem Center\";s:3:\"zip\";s:5:\"10451\";s:7:\"country\";s:2:\"US\";s:4:\"save\";s:7:\"checked\";s:4:\"city\";s:29:\"Westchester Country, New York\";s:7:\"user_id\";s:1:\"8\";s:4:\"type\";s:2:\"bi\";s:8:\"modified\";s:19:\"2013-09-25 03:15:20\";s:7:\"created\";s:19:\"2013-09-25 03:15:20\";s:2:\"id\";s:36:\"5241e4c8-5c08-41e0-af5c-0770d87f8d82\";}s:14:\"ShippingOption\";a:1:{s:2:\"id\";s:1:\"1\";}}',NULL,'PAYPAL_EXPRESS',NULL,NULL,'completed',NULL,'20130925-8','','BillingAddress:\nfirst_name : Charles\nlast_name : Xavier\nstreet : 1407 Graymalkin Lane, \nstreet2 : Salem Center\nzip : 10451\ncountry : US\nsave : checked\ncity : Westchester Country, New York\n','ShippingAddress:\nfirst_name : Charles\nlast_name : Xavier\nstreet : 1407 Graymalkin Lane, \nstreet2 : Salem Center\nzip : 10451\ncountry : US\nsave : checked\ncity : Westchester Country, New York\n',15,NULL,'2013-09-25 03:15:29','2013-09-25 03:15:29',1,'7');

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
	(3,0,0,7,0,1,5,'Tiny Dancer Rectangles.jpg','3','',0,'2013-07-10 22:46:33','2013-09-29 19:03:43'),
	(7,1,3,8,0,1,5,'Boys Patterns rectangles.jpg','7','',0,'2013-07-10 22:48:21','2013-09-29 19:03:43'),
	(8,2,7,9,0,1,5,'Space Rectangles.jpg','8','',0,'2013-07-10 22:48:21','2013-09-29 19:03:43'),
	(9,3,8,10,0,1,5,'Under the Sea rectangles.jpg','9','',0,'2013-07-10 22:48:22','2013-09-29 19:03:43'),
	(10,4,9,11,0,1,5,'Vrooom Rectangles.jpg','10','',0,'2013-07-10 22:48:22','2013-09-29 19:03:44'),
	(11,5,10,12,0,1,5,'Cupcake Rectangles.jpg','11','',0,'2013-07-10 22:48:48','2013-09-29 19:03:44'),
	(12,6,11,13,0,1,5,'Cutie crawlies rectangles.jpg','12','',0,'2013-07-10 22:48:48','2013-09-29 19:03:44'),
	(13,7,12,14,0,1,5,'Dinos rectangles.jpg','13','',0,'2013-07-10 22:48:48','2013-09-29 19:03:44'),
	(14,8,13,15,0,1,5,'Mushroom Rectangles.jpg','14','',0,'2013-07-18 23:36:25','2013-09-29 19:03:44'),
	(15,9,14,0,0,1,5,'Girl Patterns Rectangles.jpg','15','',0,'2013-07-18 23:38:55','2013-09-29 19:03:44'),
	(17,0,0,35,0,6,12,'Girl Patterns Rectangles.jpg','17','',0,'2013-09-06 16:22:33','2013-09-29 19:55:12'),
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
	(34,0,0,0,0,12,26,'get me started.png','34','',0,'2013-09-22 16:55:37','2013-09-22 16:55:37'),
	(35,1,17,36,0,6,12,'Boys Patterns rectangles.jpg','35','',0,'2013-09-29 19:54:57','2013-09-29 19:55:12'),
	(36,2,35,37,0,6,12,'Mushroom Rectangles.jpg','36','',0,'2013-09-29 19:54:57','2013-09-29 19:55:12'),
	(37,3,36,0,0,6,12,'Space Rectangles.jpg','37','',0,'2013-09-29 19:55:12','2013-09-29 19:55:12');

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
	(11,14,'variety pack.png','11','',0,'2013-09-28 02:02:37','2013-09-28 02:02:37');

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
	(1,'Rectangle Sticker Labels','With our classic vinyl rectangle sticker labels, you\'ll be able to label in style. Personalize all your kid\'s belongings and never lose another item again. \r\n\r\nDetails:\r\n51.5mm x 24mm\r\nPack contains 48 labels','SGD',19.95,'0000-00-00 00:00:00',1),
	(2,'Circle Sticker Labels','These supercute round vinyl labels are perfect for everything, ranging from bottles and bowls to sippy cups and snack boxes. Like all our sticker labels, they\'re waterproof, sterilizer-safe, microwavable and dishwasher-friendly. \r\n\r\nDetails: \r\n37.5 mm \r\nPack contains 42 labels ','SGD',20.00,'0000-00-00 00:00:00',1),
	(3,'Chinese Name Sticker Labels','Love Chinese? We do too! Identify belongings and teach your kids to write their Chinese names with these Chinese Name Sticker Labels. \r\n\r\nDetails: \r\n51.5mm x 24mm \r\nPack contains 48 labels ','SGD',21.00,'0000-00-00 00:00:00',2),
	(4,'Birthday Sticker Labels','Birthday Labels are a great way to say Happy Birthday! Instead of scribbling your name on wrappers with a marker, just stick on a personalized Birthday Label and you\'re good to go.  \r\n\r\nDetails: \r\n63mm x 29mm \r\nPack contains 27 labels ','SGD',22.00,'0000-00-00 00:00:00',1),
	(5,'Book Sticker Labels','Book labels are great for storybooks, textbooks, workbooks, notebooks, jotter books, coloring books and even sticker books. \r\n\r\nDetails: \r\n63mm x 29mm \r\nPack contains 27 labels  ','SGD',23.00,'0000-00-00 00:00:00',1),
	(6,'Split Dual Name Pack (Sticker Labels)','Instead of buying 2 separate packs for 2 kids, share a pack and combine both names in a Split Dual Name Pack. Sharing for the win!\r\n\r\nDetails:\r\nApplicable to all products.\r\nOnly 1 design per pack.\r\n\r\n\r\n','SGD',24.00,'0000-00-00 00:00:00',4),
	(7,'Split English/Chinese Pack (Sticker Labels)','Canâ€™t decide between having the labels in English or Chinese? Have the best of both worlds with our Split English/Chinese Pack. \r\n\r\nDetails:\r\nApplicable to all except circle labels\r\nLimited to 1 design per pack','SGD',25.00,'0000-00-00 00:00:00',3),
	(8,'Rectangle Iron On Labels','We\'ve taken all the awesomeness of our classic vinyl rectangle sticker labels and made it into iron on labels because tiny clothes need label love too. Safe for washing machines and dryers. \r\n\r\nDetails: \r\n45mm x 18mm \r\nPack contains 40 labels ','SGD',26.00,'0000-00-00 00:00:00',1),
	(9,'Circle Iron On Labels','Our round iron on labels look unbelievably on tiny clothes. Plus you won\'t have to worry about getting their clothes mixed up in preschool ever again. We\'d say it\'s a win-win!\r\n\r\nDetails: \r\n30 mm \r\nPack contains 36 labels ','SGD',27.00,'0000-00-00 00:00:00',1),
	(10,'Split Dual Name Pack (Iron On Labels)','Instead of buying 2 separate packs for 2 kids, share a pack and combine both names in a Split Dual Name Pack. Sharing for the win! \r\n\r\nDetails: \r\nApplicable to both rectangles and circles. \r\nOnly 1 design per pack.  ','SGD',28.00,'0000-00-00 00:00:00',2),
	(11,'Split English/Chinese Pack (Iron On Labels)','Canâ€™t decide between having the labels in English or Chinese? Have the best of both worlds with our Split English/Chinese Pack. \r\n\r\nDetails: \r\nApplicable to rectangle labels only \r\nLimited to 1 design per pack ','SGD',29.00,'0000-00-00 00:00:00',1),
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
	(2,'registered mail via SingPost','2 weeks',2.24);

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
	(1,'ks','kimcity@gmail.com','9c1a57615fd9c4fd9361b8264c0c4ad06aaf9ad9',NULL,NULL,0,'2013-06-22 18:51:26','2013-11-27 14:31:29'),
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
