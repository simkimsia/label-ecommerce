-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2013 at 09:04 PM
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
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`) VALUES
(1, 'Round Labels', '28 Round Vinyl Name Labels (37.5mm diameter)\r\n4 Large Round Vinyl Name Labels (60mm diameter)', 19.95),
(2, 'Small Rectangle', 'a small rectangle, available in stickers and iron-ons', 20.00),
(3, 'Chinese Name Labels', 'Chinese Name Labels, available in stickers and iron-ons', 21.00),
(4, 'Birthday Labels', 'A birthday label, available in stickers and iron-ons', 22.00),
(5, 'Book Labels', 'A book label, available only in sticker', 23.00),
(6, 'Split English/Chinese Name Pack', 'A book label, available in stickers and iron-ons', 24.00),
(7, 'Book Labels', 'A book label, available only in sticker', 25.00),
(8, 'Split Dual Name Pack', 'Split Dual Name Pack, available in stickers and iron-ons', 26.00),
(9, 'BSplit English/Chinese Name Pack', 'BSplit English/Chinese Name Pack, available in stickers and iron-ons', 27.00),
(10, 'Get Me Started', 'Get Me Started pack for beginners', 28.00),
(11, 'Variety Pack', 'An assortment of labels', 29.00),
(12, 'Book Labels', 'A book label, available only in sticker', 30.00),
(14, 'Give Me Everything Pack', 'All in one pack!', 50.00);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
