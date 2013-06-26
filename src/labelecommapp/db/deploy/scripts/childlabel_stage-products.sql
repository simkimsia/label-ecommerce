# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: lte.oppoin.com (MySQL 5.5.31-0ubuntu0.12.10.1)
# Database: childlabel_stage
# Generation Time: 2013-06-26 11:36:18 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` (`id`, `name`, `description`, `price`)
VALUES
	(1,'Rectangle Sticker Labels','With our classic vinyl rectangle sticker labels, you\'ll be able to label in style. Personalize all your kid\'s belongings and never lose another item again. \r\n\r\nDetails:\r\n51.5mm x 24mm\r\nPack contains 48 labels',19.95),
	(2,'Circle Sticker Labels','These supercute round vinyl labels are perfect for everything, ranging from bottles and bowls to sippy cups and snack boxes. Like all our sticker labels, they\'re waterproof, sterilizer-safe, microwavable and dishwasher-friendly. \r\n\r\nDetails: \r\n37.5 mm \r\nPack contains 42 labels ',20.00),
	(3,'Chinese Name Sticker Labels','Love Chinese? We do too! Identify belongings and teach your kids to write their Chinese names with these Chinese Name Sticker Labels. \r\n\r\nDetails: \r\n51.5mm x 24mm \r\nPack contains 48 labels ',21.00),
	(4,'Birthday Sticker Labels','Birthday Labels are a great way to say Happy Birthday! Instead of scribbling your name on wrappers with a marker, just stick on a personalized Birthday Label and you\'re good to go.  \r\n\r\nDetails: \r\n63mm x 29mm \r\nPack contains 27 labels ',22.00),
	(5,'Book Sticker Labels','Book labels are great for storybooks, textbooks, workbooks, notebooks, jotter books, coloring books and even sticker books. \r\n\r\nDetails: \r\n63mm x 29mm \r\nPack contains 27 labels  ',23.00),
	(6,'Split Dual Name Pack (Sticker Labels)','Instead of buying 2 separate packs for 2 kids, share a pack and combine both names in a Split Dual Name Pack. Sharing for the win!\r\n\r\nDetails:\r\nApplicable to all products.\r\nOnly 1 design per pack.\r\n\r\n\r\n',24.00),
	(7,'Split English/Chinese Pack (Sticker Labels)','Canâ€™t decide between having the labels in English or Chinese? Have the best of both worlds with our Split English/Chinese Pack.\r\n\r\nDetails:\r\nApplicable to all except circle labels\r\nLimited to 1 design per pack',25.00),
	(8,'Rectangle Iron On Labels','We\'ve taken all the awesomeness of our classic vinyl rectangle sticker labels and made it into iron on labels because tiny clothes need label love too. Safe for washing machines and dryers. \r\n\r\nDetails: \r\n45mm x 18mm \r\nPack contains 40 labels ',26.00),
	(9,'Circle Iron On Labels','Our round iron on labels look unbelievably on tiny clothes. Plus you won\'t have to worry about getting their clothes mixed up in preschool ever again. We\'d say it\'s a win-win!\r\n\r\nDetails: \r\n30 mm \r\nPack contains 36 labels ',27.00),
	(10,'Split Dual Name Pack (Iron On Labels)','Instead of buying 2 separate packs for 2 kids, share a pack and combine both names in a Split Dual Name Pack. Sharing for the win! \r\n\r\nDetails: \r\nApplicable to both rectangles and circles. \r\nOnly 1 design per pack.  ',28.00),
	(11,'Split English/Chinese Pack (Iron On Labels)','Canâ€™t decide between having the labels in English or Chinese? Have the best of both worlds with our Split English/Chinese Pack. \r\n\r\nDetails: \r\nApplicable to rectangle labels only \r\nLimited to 1 design per pack ',29.00),
	(12,'Get Me Started Value Pack','A Combo Pack to get you started!\r\n\r\n32 x Small Rectangle Sticker Labels\r\n14 x Circle Sticker Labels\r\n40 x Rectangle Iron Ons',30.00),
	(14,'Give Me Everything Pack','A super duper value pack!\r\n\r\n32 x Small Rectangle Sticker Labels\r\n32 x Chinese Name Sticker Labels\r\n28 x Circle Sticker Labels\r\n20 x Rectangle Iron Ons\r\n18 x Circle Iron Ons',50.00),
	(15,'Chinese Name Iron On Labels','Love Chinese? We do too! Identify belongings and teach your kids to write their Chinese names with these Chinese Name Sticker Labels. \r\n\r\nDetails: \r\n45mm x 18mm \r\nPack contains 40 labels  ',15.00);

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
