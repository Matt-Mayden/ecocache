# --------------------------------------------------------
# Host:                         192.168.20.30
# Server version:               5.5.32-0ubuntu0.13.04.1
# Server OS:                    debian-linux-gnu
# HeidiSQL version:             6.0.0.3603
# Date/time:                    2013-09-18 13:23:13
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

# Dumping database structure for geo_cache
DROP DATABASE IF EXISTS `geo_cache`;
CREATE DATABASE IF NOT EXISTS `geo_cache` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `geo_cache`;


# Dumping structure for table geo_cache.category
DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(10) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Unnamed category',
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Name for a collection of objects';

# Dumping data for table geo_cache.category: 8 rows
DELETE FROM `category`;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`category_id`, `category_name`, `image`) VALUES
	(1, 'Flower', 'flowers.jpg'),
	(2, 'Animal', 'animals.jpg'),
	(3, 'Fruit', 'fruits.jpg'),
	(4, 'Tree', 'trees.jpg');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


# Dumping structure for table geo_cache.category_environment
DROP TABLE IF EXISTS `category_environment`;
CREATE TABLE IF NOT EXISTS `category_environment` (
  `category_id` int(10) NOT NULL DEFAULT '0',
  `environment_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`category_id`,`environment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Links categories to environments';

# Dumping data for table geo_cache.category_environment: 16 rows
DELETE FROM `category_environment`;
/*!40000 ALTER TABLE `category_environment` DISABLE KEYS */;
INSERT INTO `category_environment` (`category_id`, `environment_id`) VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 4),
	(2, 1),
	(2, 2),
	(2, 3),
	(2, 4),
	(3, 1),
	(3, 2),
	(3, 3),
	(3, 4),
	(4, 1),
	(4, 2),
	(4, 3),
	(4, 4);
/*!40000 ALTER TABLE `category_environment` ENABLE KEYS */;


# Dumping structure for table geo_cache.discovery
DROP TABLE IF EXISTS `discovery`;
CREATE TABLE IF NOT EXISTS `discovery` (
  `discovery_id` int(10) NOT NULL AUTO_INCREMENT,
  `environment_id` int(10) NOT NULL DEFAULT '0',
  `category_id` int(10) NOT NULL DEFAULT '0',
  `object_id` int(10) NOT NULL DEFAULT '0',
  `object_size_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `object_colour` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `object_position` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `location_id` int(11) NOT NULL DEFAULT '0',
  `source` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`discovery_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Table for recording individual discoveries of objects';

# Dumping data for table geo_cache.discovery: 6 rows
DELETE FROM `discovery`;
/*!40000 ALTER TABLE `discovery` DISABLE KEYS */;
INSERT INTO `discovery` (`discovery_id`, `environment_id`, `category_id`, `object_id`, `object_size_id`, `object_colour`, `object_position`, `location_id`, `source`) VALUES
	(1, 1, 1, 1, 'Mouse', '2', 'On the Ground', 0, '0'),
	(2, 1, 1, 1, 'Mouse', '2', 'On the Ground', 0, '0'),
	(3, 1, 1, 1, '0', '', '0', 0, '0'),
	(4, 1, 1, 1, 'Dog', '', '0', 0, '0'),
	(5, 1, 2, 7, '0', '2', '0', 0, '0'),
	(6, 1, 1, 1, '0', '', '0', 0, 'existing-photo'),
	(7, 3, 2, 8, 'Dog', '2', 'On the Ground', 0, 'existing-photo'),
	(8, 2, 2, 6, 'Dog', '2', 'On the Ground', 0, 'existing-photo'),
	(9, 2, 2, 5, 'Mouse', '2', 'On a Plant', 0, '0');
/*!40000 ALTER TABLE `discovery` ENABLE KEYS */;


# Dumping structure for table geo_cache.environment
DROP TABLE IF EXISTS `environment`;
CREATE TABLE IF NOT EXISTS `environment` (
  `environment_id` int(10) NOT NULL AUTO_INCREMENT,
  `environment_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Unnamed Location',
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`environment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Area category; description of area user is spotting from';

# Dumping data for table geo_cache.environment: 8 rows
DELETE FROM `environment`;
/*!40000 ALTER TABLE `environment` DISABLE KEYS */;
INSERT INTO `environment` (`environment_id`, `environment_name`, `image`) VALUES
	(1, 'In The Car', 'car.jpg'),
	(2, 'In The Garden', 'garden.jpg'),
	(3, 'Out & About', 'outabout.jpg'),
	(4, 'At the Beach', 'beach.jpg');
/*!40000 ALTER TABLE `environment` ENABLE KEYS */;


# Dumping structure for table geo_cache.location
DROP TABLE IF EXISTS `location`;
CREATE TABLE IF NOT EXISTS `location` (
  `location_id` int(10) NOT NULL AUTO_INCREMENT,
  `geolocation` point NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

# Dumping data for table geo_cache.location: 10 rows
DELETE FROM `location`;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` (`location_id`, `geolocation`) VALUES
	(12, _binary 0x0000000001010000001946232CF72413C0AEA2D2C7298B4B40),
	(10, _binary 0x0000000001010000006166E258FC8B0FC04CA3E009196A4C40),
	(8, _binary 0x000000000101000000DA5C09D97FDC0DC0165FC0236C614940),
	(7, _binary 0x000000000101000000747C9AE489E3F3BFC60A2DE7FAD84940),
	(6, _binary 0x00000000010100000026448B861606F6BF76E05F7806DD4940),
	(5, _binary 0x000000000101000000CD982564FFF1F8BFC60A2DE7FAD84940),
	(4, _binary 0x0000000001010000007FA31A685A5FFCBF571DD8457CD44940),
	(3, _binary 0x0000000001010000009DBE8963F1AFFFBF9B445F6AC4E34940),
	(2, _binary 0x0000000001010000003B4FF48508C4AC3F6ADD192E5AF04940),
	(1, _binary 0x0000000001010000002786C1640D3402C034FF220039054B40);
/*!40000 ALTER TABLE `location` ENABLE KEYS */;


# Dumping structure for table geo_cache.object
DROP TABLE IF EXISTS `object`;
CREATE TABLE IF NOT EXISTS `object` (
  `object_id` int(10) NOT NULL AUTO_INCREMENT,
  `object_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Unnamed Object',
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`object_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Living or inanimate object to record discovery of';

# Dumping data for table geo_cache.object: 32 rows
DELETE FROM `object`;
/*!40000 ALTER TABLE `object` DISABLE KEYS */;
INSERT INTO `object` (`object_id`, `object_name`, `image`) VALUES
	(1, 'Daffodil', 'daffodil.jpg'),
	(2, 'Daisy', 'daisy.jpg'),
	(3, 'Snow Drops', 'snowdrops.jpg'),
	(4, 'Buttercup', 'buttercup.jpg'),
	(5, 'Badger', 'badger.jpg'),
	(6, 'Robin', 'robin.jpg'),
	(7, 'Hedgehog', 'hedgehog.jpg'),
	(8, 'Ant', 'ant.jpg'),
	(9, 'Blackberry', 'blackberry.jpg'),
	(10, 'Strawberry', 'strawberry.jpg'),
	(11, 'Apple', 'apple.jpg'),
	(12, 'Pineapple', 'pineapple.jpg'),
	(13, 'Oak', 'oak.jpg'),
	(14, 'Birch', 'birch.jpg'),
	(15, 'Palm', 'palm.jpg'),
	(16, 'Maple', 'maple.jpg');
/*!40000 ALTER TABLE `object` ENABLE KEYS */;


# Dumping structure for table geo_cache.object_category
DROP TABLE IF EXISTS `object_category`;
CREATE TABLE IF NOT EXISTS `object_category` (
  `object_id` int(10) NOT NULL DEFAULT '0',
  `category_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Links objects to categories';

# Dumping data for table geo_cache.object_category: 16 rows
DELETE FROM `object_category`;
/*!40000 ALTER TABLE `object_category` DISABLE KEYS */;
INSERT INTO `object_category` (`object_id`, `category_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 2),
	(6, 2),
	(7, 2),
	(8, 2),
	(9, 3),
	(10, 3),
	(11, 3),
	(12, 3),
	(13, 4),
	(14, 4),
	(15, 4),
	(16, 4);
/*!40000 ALTER TABLE `object_category` ENABLE KEYS */;


# Dumping structure for table geo_cache.object_size
DROP TABLE IF EXISTS `object_size`;
CREATE TABLE IF NOT EXISTS `object_size` (
  `object_size_id` int(10) NOT NULL AUTO_INCREMENT,
  `object_size_description` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`object_size_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Record possible sizes for object';

# Dumping data for table geo_cache.object_size: 3 rows
DELETE FROM `object_size`;
/*!40000 ALTER TABLE `object_size` DISABLE KEYS */;
INSERT INTO `object_size` (`object_size_id`, `object_size_description`) VALUES
	(1, 'small'),
	(2, 'medium'),
	(3, 'big');
/*!40000 ALTER TABLE `object_size` ENABLE KEYS */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
