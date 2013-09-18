-- --------------------------------------------------------
-- Host:                         192.168.20.30
-- Server version:               5.1.66 - Source distribution
-- Server OS:                    redhat-linux-gnu
-- HeidiSQL Version:             8.0.0.4396
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for geo_cache
CREATE DATABASE IF NOT EXISTS `geo_cache` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `geo_cache`;


-- Dumping structure for table geo_cache.category
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(10) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Unnamed category',
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Name for a collection of objects';

-- Dumping data for table geo_cache.category: 4 rows
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`category_id`, `category_name`, `image`) VALUES
	(1, 'Flower', NULL),
	(2, 'Animal', NULL),
	(3, 'Fruit', NULL),
	(4, 'Tree', NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


-- Dumping structure for table geo_cache.category_environment
CREATE TABLE IF NOT EXISTS `category_environment` (
  `category_id` int(10) NOT NULL DEFAULT '0',
  `environment_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`category_id`,`environment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Links categories to environments';

-- Dumping data for table geo_cache.category_environment: 16 rows
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


-- Dumping structure for table geo_cache.discovery
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Table for recording individual discoveries of objects';

-- Dumping data for table geo_cache.discovery: 1 rows
/*!40000 ALTER TABLE `discovery` DISABLE KEYS */;
INSERT INTO `discovery` (`discovery_id`, `environment_id`, `category_id`, `object_id`, `object_size_id`, `object_colour`, `object_position`, `location_id`, `source`) VALUES
	(1, 1, 1, 1, 'Mouse', '2', 'On the Ground', 0, '0'),
	(2, 1, 1, 1, 'Mouse', '2', 'On the Ground', 0, '0'),
	(3, 1, 1, 1, '0', '', '0', 0, '0'),
	(4, 1, 1, 1, 'Dog', '', '0', 0, '0'),
	(5, 1, 2, 7, '0', '2', '0', 0, '0');
/*!40000 ALTER TABLE `discovery` ENABLE KEYS */;


-- Dumping structure for table geo_cache.environment
CREATE TABLE IF NOT EXISTS `environment` (
  `environment_id` int(10) NOT NULL AUTO_INCREMENT,
  `environment_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Unnamed Location',
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`environment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Area category; description of area user is spotting from';

-- Dumping data for table geo_cache.environment: 4 rows
/*!40000 ALTER TABLE `environment` DISABLE KEYS */;
INSERT INTO `environment` (`environment_id`, `environment_name`, `image`) VALUES
	(1, 'In The Car', NULL),
	(2, 'In The Garden', NULL),
	(3, 'Out & About', NULL),
	(4, 'At the Beach', NULL);
/*!40000 ALTER TABLE `environment` ENABLE KEYS */;


-- Dumping structure for table geo_cache.location
CREATE TABLE IF NOT EXISTS `location` (
  `location_id` int(10) NOT NULL AUTO_INCREMENT,
  `geolocation` point NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table geo_cache.location: 10 rows
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


-- Dumping structure for table geo_cache.object
CREATE TABLE IF NOT EXISTS `object` (
  `object_id` int(10) NOT NULL AUTO_INCREMENT,
  `object_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Unnamed Object',
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`object_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Living or inanimate object to record discovery of';

-- Dumping data for table geo_cache.object: 16 rows
/*!40000 ALTER TABLE `object` DISABLE KEYS */;
INSERT INTO `object` (`object_id`, `object_name`, `image`) VALUES
	(1, 'Daffodil', NULL),
	(2, 'Azalea', NULL),
	(3, 'Snow Drop', NULL),
	(4, 'Rose', NULL),
	(5, 'Frog', NULL),
	(6, 'Robin', NULL),
	(7, 'Polar Bear', NULL),
	(8, 'Swan', NULL),
	(9, 'Blackberry', NULL),
	(10, 'Strawberry', NULL),
	(11, 'Apple', NULL),
	(12, 'Pineapple', NULL),
	(13, 'Oak', NULL),
	(14, 'Beach', NULL),
	(15, 'Palm', NULL),
	(16, 'Maple', NULL);
/*!40000 ALTER TABLE `object` ENABLE KEYS */;


-- Dumping structure for table geo_cache.object_category
CREATE TABLE IF NOT EXISTS `object_category` (
  `object_id` int(10) NOT NULL DEFAULT '0',
  `category_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Links objects to categories';

-- Dumping data for table geo_cache.object_category: 16 rows
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


-- Dumping structure for table geo_cache.object_size
CREATE TABLE IF NOT EXISTS `object_size` (
  `object_size_id` int(10) NOT NULL AUTO_INCREMENT,
  `object_size_description` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`object_size_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Record possible sizes for object';

-- Dumping data for table geo_cache.object_size: 3 rows
/*!40000 ALTER TABLE `object_size` DISABLE KEYS */;
INSERT INTO `object_size` (`object_size_id`, `object_size_description`) VALUES
	(1, 'small'),
	(2, 'medium'),
	(3, 'big');
/*!40000 ALTER TABLE `object_size` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
