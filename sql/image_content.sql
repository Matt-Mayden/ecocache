# ************************************************************
# Sequel Pro SQL dump
# Version 4004
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.1.44)
# Database: geo_cache
# Generation Time: 2013-09-18 12:07:25 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table category
# ------------------------------------------------------------

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;

REPLACE INTO `category` (`category_id`, `category_name`, `image`)
VALUES
	(5,'Flower','flowers.jpg'),
	(6,'Animal','animals.jpg'),
	(7,'Fruit','fruits.jpg'),
	(8,'Tree','trees.jpg');

/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table environment
# ------------------------------------------------------------

LOCK TABLES `environment` WRITE;
/*!40000 ALTER TABLE `environment` DISABLE KEYS */;

REPLACE INTO `environment` (`environment_id`, `environment_name`, `image`)
VALUES
	(5,'In The Car','car.jpg'),
	(6,'In The Garden','garden.jpg'),
	(7,'Out & About','outabout.jpg'),
	(8,'At the Beach','beach.jpg');

/*!40000 ALTER TABLE `environment` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table object
# ------------------------------------------------------------

LOCK TABLES `object` WRITE;
/*!40000 ALTER TABLE `object` DISABLE KEYS */;

REPLACE INTO `object` (`object_id`, `object_name`, `image`)
VALUES
	(17,'Daffodil','daffodil.jpg'),
	(18,'Daisy','daisy.jpg'),
	(19,'Snow Drops','snowdrops.jpg'),
	(20,'Buttercup','buttercup.jpg'),
	(21,'Badger','badger.jpg'),
	(22,'Robin','robin.jpg'),
	(23,'Hedgehog','hedgehog.jpg'),
	(24,'Ant','ant.jpg'),
	(25,'Blackberry','blackberry.jpg'),
	(26,'Strawberry','strawberry.jpg'),
	(27,'Apple','apple.jpg'),
	(28,'Pineapple','pineapple.jpg'),
	(29,'Oak','oak.jpg'),
	(30,'Birch','birch.jpg'),
	(31,'Palm','palm.jpg'),
	(32,'Maple','maple.jpg');

/*!40000 ALTER TABLE `object` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
