-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2013 at 05:22 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lea_childlabel`
--

-- --------------------------------------------------------

--
-- Table structure for table `acos`
--

CREATE TABLE IF NOT EXISTS `acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=78 ;

--
-- Dumping data for table `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, NULL, NULL, 'controllers', 1, 154),
(2, 1, NULL, NULL, 'Groups', 2, 13),
(3, 2, NULL, NULL, 'index', 3, 4),
(4, 2, NULL, NULL, 'view', 5, 6),
(5, 2, NULL, NULL, 'add', 7, 8),
(6, 2, NULL, NULL, 'edit', 9, 10),
(7, 2, NULL, NULL, 'delete', 11, 12),
(8, 1, NULL, NULL, 'Pages', 14, 17),
(9, 8, NULL, NULL, 'display', 15, 16),
(10, 1, NULL, NULL, 'ProductGroups', 18, 39),
(11, 10, NULL, NULL, 'index', 19, 20),
(12, 10, NULL, NULL, 'view', 21, 22),
(13, 10, NULL, NULL, 'add', 23, 24),
(14, 10, NULL, NULL, 'edit', 25, 26),
(15, 10, NULL, NULL, 'delete', 27, 28),
(16, 10, NULL, NULL, 'admin_index', 29, 30),
(17, 10, NULL, NULL, 'admin_view', 31, 32),
(18, 10, NULL, NULL, 'admin_add', 33, 34),
(19, 10, NULL, NULL, 'admin_edit', 35, 36),
(20, 10, NULL, NULL, 'admin_delete', 37, 38),
(21, 1, NULL, NULL, 'ProductVariants', 40, 53),
(22, 21, NULL, NULL, 'index', 41, 42),
(23, 21, NULL, NULL, 'admin_index_by_product', 43, 44),
(24, 21, NULL, NULL, 'view', 45, 46),
(25, 21, NULL, NULL, 'admin_add_by_product', 47, 48),
(26, 21, NULL, NULL, 'admin_edit_by_product', 49, 50),
(27, 21, NULL, NULL, 'admin_delete_by_product', 51, 52),
(28, 1, NULL, NULL, 'Products', 54, 69),
(29, 28, NULL, NULL, 'index', 55, 56),
(30, 28, NULL, NULL, 'view', 57, 58),
(31, 28, NULL, NULL, 'admin_index', 59, 60),
(32, 28, NULL, NULL, 'admin_view', 61, 62),
(33, 28, NULL, NULL, 'admin_add', 63, 64),
(34, 28, NULL, NULL, 'admin_edit', 65, 66),
(35, 28, NULL, NULL, 'admin_delete', 67, 68),
(36, 1, NULL, NULL, 'ProductsInGroups', 70, 91),
(37, 36, NULL, NULL, 'index', 71, 72),
(38, 36, NULL, NULL, 'view', 73, 74),
(39, 36, NULL, NULL, 'add', 75, 76),
(40, 36, NULL, NULL, 'edit', 77, 78),
(41, 36, NULL, NULL, 'delete', 79, 80),
(42, 36, NULL, NULL, 'admin_index', 81, 82),
(43, 36, NULL, NULL, 'admin_view', 83, 84),
(44, 36, NULL, NULL, 'admin_add', 85, 86),
(45, 36, NULL, NULL, 'admin_edit', 87, 88),
(46, 36, NULL, NULL, 'admin_delete', 89, 90),
(47, 1, NULL, NULL, 'Users', 92, 133),
(48, 47, NULL, NULL, 'index', 93, 94),
(49, 47, NULL, NULL, 'view', 95, 96),
(50, 47, NULL, NULL, 'add', 97, 98),
(51, 47, NULL, NULL, 'edit', 99, 100),
(52, 47, NULL, NULL, 'delete', 101, 102),
(53, 47, NULL, NULL, 'send_enquiry_email', 103, 104),
(54, 47, NULL, NULL, 'login', 105, 106),
(55, 47, NULL, NULL, 'admin_login', 107, 108),
(56, 47, NULL, NULL, 'admin_logout', 109, 110),
(57, 47, NULL, NULL, 'logout', 111, 112),
(58, 47, NULL, NULL, 'admin_forget_password', 113, 114),
(59, 47, NULL, NULL, 'admin_view_my_own_profile', 115, 116),
(60, 47, NULL, NULL, 'admin_edit_my_own_profile', 117, 118),
(61, 47, NULL, NULL, 'admin_change_my_own_password', 119, 120),
(62, 47, NULL, NULL, 'forget_password', 121, 122),
(63, 47, NULL, NULL, 'reset_password', 123, 124),
(64, 1, NULL, NULL, 'AclExtras', 134, 135),
(65, 1, NULL, NULL, 'AssetCompress', 136, 137),
(66, 1, NULL, NULL, 'ClearCache', 138, 147),
(67, 66, NULL, NULL, 'ClearCache', 139, 146),
(68, 67, NULL, NULL, 'files', 140, 141),
(69, 67, NULL, NULL, 'engines', 142, 143),
(70, 67, NULL, NULL, 'groups', 144, 145),
(71, 1, NULL, NULL, 'Migrations', 148, 149),
(72, 1, NULL, NULL, 'PermissionsExtras', 150, 151),
(73, 1, NULL, NULL, 'UtilityLib', 152, 153),
(74, 47, NULL, NULL, 'admin_reset_password', 125, 126),
(75, 47, NULL, NULL, 'admin_index', 127, 128),
(76, 47, NULL, NULL, 'admin_add', 129, 130),
(77, 47, NULL, NULL, 'admin_edit', 131, 132);

-- --------------------------------------------------------

--
-- Table structure for table `aros`
--

CREATE TABLE IF NOT EXISTS `aros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, 'Group', 1, NULL, 1, 6),
(2, NULL, 'Group', 2, NULL, 2, 5),
(3, 2, 'Group', 3, NULL, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `aros_acos`
--

CREATE TABLE IF NOT EXISTS `aros_acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) NOT NULL DEFAULT '0',
  `_read` varchar(2) NOT NULL DEFAULT '0',
  `_update` varchar(2) NOT NULL DEFAULT '0',
  `_delete` varchar(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ARO_ACO_KEY` (`aro_id`,`aco_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `aros_acos`
--

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(1, 1, 1, '1', '1', '1', '1'),
(2, 2, 1, '-1', '-1', '-1', '-1'),
(3, 2, 57, '1', '1', '1', '1'),
(4, 2, 8, '1', '1', '1', '1'),
(5, 3, 28, '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `display_name` varchar(30) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE_NAME` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `display_name`, `created`, `modified`, `parent_id`) VALUES
(1, 'Super Administrators', 'Super Admin', '2013-06-28 03:01:06', '2013-06-28 03:01:06', NULL),
(2, 'Users', 'Users', '2013-06-28 03:01:57', '2013-06-28 03:01:57', NULL),
(3, 'Shop Administrators', 'Shop Admin', '2013-06-28 03:02:48', '2013-06-28 03:02:48', 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(6,2) NOT NULL DEFAULT '0.00',
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `created`) VALUES
(1, 'Rectangle Sticker Labels', 'With our classic vinyl rectangle sticker labels, you''ll be able to label in style. Personalize all your kid''s belongings and never lose another item again. \r\n\r\nDetails:\r\n51.5mm x 24mm\r\nPack contains 48 labels', 19.95, '0000-00-00 00:00:00'),
(2, 'Circle Sticker Labels', 'These supercute round vinyl labels are perfect for everything, ranging from bottles and bowls to sippy cups and snack boxes. Like all our sticker labels, they''re waterproof, sterilizer-safe, microwavable and dishwasher-friendly. \r\n\r\nDetails: \r\n37.5 mm \r\nPack contains 42 labels ', 20.00, '0000-00-00 00:00:00'),
(3, 'Chinese Name Sticker Labels', 'Love Chinese? We do too! Identify belongings and teach your kids to write their Chinese names with these Chinese Name Sticker Labels. \r\n\r\nDetails: \r\n51.5mm x 24mm \r\nPack contains 48 labels ', 21.00, '0000-00-00 00:00:00'),
(4, 'Birthday Sticker Labels', 'Birthday Labels are a great way to say Happy Birthday! Instead of scribbling your name on wrappers with a marker, just stick on a personalized Birthday Label and you''re good to go.  \r\n\r\nDetails: \r\n63mm x 29mm \r\nPack contains 27 labels ', 22.00, '0000-00-00 00:00:00'),
(5, 'Book Sticker Labels', 'Book labels are great for storybooks, textbooks, workbooks, notebooks, jotter books, coloring books and even sticker books. \r\n\r\nDetails: \r\n63mm x 29mm \r\nPack contains 27 labels  ', 23.00, '0000-00-00 00:00:00'),
(6, 'Split Dual Name Pack (Sticker Labels)', 'Instead of buying 2 separate packs for 2 kids, share a pack and combine both names in a Split Dual Name Pack. Sharing for the win!\r\n\r\nDetails:\r\nApplicable to all products.\r\nOnly 1 design per pack.\r\n\r\n\r\n', 24.00, '0000-00-00 00:00:00'),
(7, 'Split English/Chinese Pack (Sticker Labels)', 'Canâ€™t decide between having the labels in English or Chinese? Have the best of both worlds with our Split English/Chinese Pack. \r\n\r\nDetails:\r\nApplicable to all except circle labels\r\nLimited to 1 design per pack', 25.00, '0000-00-00 00:00:00'),
(8, 'Rectangle Iron On Labels', 'We''ve taken all the awesomeness of our classic vinyl rectangle sticker labels and made it into iron on labels because tiny clothes need label love too. Safe for washing machines and dryers. \r\n\r\nDetails: \r\n45mm x 18mm \r\nPack contains 40 labels ', 26.00, '0000-00-00 00:00:00'),
(9, 'Circle Iron On Labels', 'Our round iron on labels look unbelievably on tiny clothes. Plus you won''t have to worry about getting their clothes mixed up in preschool ever again. We''d say it''s a win-win!\r\n\r\nDetails: \r\n30 mm \r\nPack contains 36 labels ', 27.00, '0000-00-00 00:00:00'),
(10, 'Split Dual Name Pack (Iron On Labels)', 'Instead of buying 2 separate packs for 2 kids, share a pack and combine both names in a Split Dual Name Pack. Sharing for the win! \r\n\r\nDetails: \r\nApplicable to both rectangles and circles. \r\nOnly 1 design per pack.  ', 28.00, '0000-00-00 00:00:00'),
(11, 'Split English/Chinese Pack (Iron On Labels)', 'Canâ€™t decide between having the labels in English or Chinese? Have the best of both worlds with our Split English/Chinese Pack. \r\n\r\nDetails: \r\nApplicable to rectangle labels only \r\nLimited to 1 design per pack ', 29.00, '0000-00-00 00:00:00'),
(12, 'Get Me Started Value Pack', 'A Combo Pack to get you started!\r\n\r\n32 x Small Rectangle Sticker Labels\r\n14 x Circle Sticker Labels\r\n40 x Rectangle Iron Ons', 30.00, '0000-00-00 00:00:00'),
(14, 'Give Me Everything Pack', 'A super duper value pack!\r\n\r\n32 x Small Rectangle Sticker Labels\r\n32 x Chinese Name Sticker Labels\r\n28 x Circle Sticker Labels\r\n20 x Rectangle Iron Ons\r\n18 x Circle Iron Ons', 50.00, '0000-00-00 00:00:00'),
(15, 'Chinese Name Iron On Labels', 'Love Chinese? We do too! Identify belongings and teach your kids to write their Chinese names with these Chinese Name Sticker Labels. \r\n\r\nDetails: \r\n45mm x 18mm \r\nPack contains 40 labels  ', 15.00, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `products_in_groups`
--

CREATE TABLE IF NOT EXISTS `products_in_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `product_group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `product_groups`
--

CREATE TABLE IF NOT EXISTS `product_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `product_groups`
--

INSERT INTO `product_groups` (`id`, `name`, `type`, `created`, `modified`) VALUES
(1, 'Rectangle', 'Sticker', '2013-06-27 20:20:10', '2013-06-27 20:20:20');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE IF NOT EXISTS `product_images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `product_id` int(11) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `dir` varchar(255) NOT NULL,
  `mimetype` varchar(255) NOT NULL,
  `filesize` int(11) unsigned NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE IF NOT EXISTS `product_variants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `created`, `modified`, `name`) VALUES
(5, 1, '2013-06-30 03:31:44', '2013-06-30 03:31:44', 'DEFAULT'),
(6, 2, '2013-06-30 03:32:10', '2013-06-30 03:32:10', 'DEFAULT'),
(7, 3, '2013-06-30 03:32:29', '2013-06-30 03:32:29', 'Horizontal'),
(8, 3, '2013-06-30 03:32:37', '2013-06-30 03:32:37', 'Vertical'),
(9, 4, '2013-06-30 03:33:25', '2013-06-30 03:33:25', 'DEFAULT'),
(11, 5, '2013-06-30 03:34:21', '2013-06-30 03:34:21', 'DEFAULT'),
(12, 6, '2013-06-30 03:34:48', '2013-06-30 03:34:48', 'Small Rectangle Labels'),
(13, 6, '2013-06-30 03:34:59', '2013-06-30 03:34:59', 'Circle Labels'),
(14, 6, '2013-06-30 03:37:23', '2013-06-30 03:37:23', 'Birthday Labels'),
(15, 6, '2013-06-30 03:37:34', '2013-06-30 03:37:34', 'Book Labels'),
(17, 7, '2013-06-30 03:37:58', '2013-06-30 03:37:58', 'Small Rectangle Labels'),
(18, 7, '2013-06-30 03:38:08', '2013-06-30 03:38:08', 'Birthday Labels'),
(20, 7, '2013-06-30 03:38:39', '2013-06-30 03:38:39', 'Book Labels'),
(21, 8, '2013-06-30 03:38:58', '2013-06-30 03:38:58', 'DEFAULT'),
(22, 9, '2013-06-30 03:39:19', '2013-06-30 03:39:19', 'DEFAULT'),
(23, 10, '2013-06-30 03:39:38', '2013-06-30 03:39:38', 'Rectangle Labels'),
(24, 10, '2013-06-30 03:39:49', '2013-06-30 03:39:49', 'Circle Labels'),
(25, 11, '2013-06-30 03:44:09', '2013-06-30 03:44:09', 'DEFAULT'),
(26, 12, '2013-06-30 03:44:35', '2013-06-30 03:44:35', 'DEFAULT'),
(27, 14, '2013-06-30 03:45:06', '2013-06-30 03:45:06', 'DEFAULT'),
(28, 15, '2013-06-30 03:45:31', '2013-06-30 03:45:31', 'Horizontal'),
(29, 15, '2013-06-30 03:45:40', '2013-06-30 03:45:40', 'Vertical');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `short_name`, `token`, `group_id`, `created`, `modified`) VALUES
(1, 'ks', 'kimcity@gmail.com', NULL, NULL, NULL, 0, '2013-06-22 18:51:26', '2013-06-22 18:51:26'),
(2, 'KimSia', 'kimsia@oppoin.com', '9c1a57615fd9c4fd9361b8264c0c4ad06aaf9ad9', 'KimSia', '', 1, '2013-06-28 13:51:12', '2013-06-28 13:51:12'),
(3, 'AikChun1', 'aikchun616@gmail.com', '275108ab67a27356dab9dcff38275c044766397f', 'AikChun1', NULL, 1, '2013-06-28 13:51:57', '2013-06-30 09:04:43');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
