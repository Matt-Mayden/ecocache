#Create DB
CREATE DATABASE `geo_cache` /*!40100 COLLATE 'utf8_unicode_ci' */;

#category table - description of area user is spotting from
CREATE TABLE `environment` (
	`environment_id` INT(10) NOT NULL AUTO_INCREMENT,
	`evnironment_name` VARCHAR(150) NOT NULL DEFAULT 'Unnamed Location',
	PRIMARY KEY (`category_id`)
)
COMMENT='Area category; description of area user is spotting from'
COLLATE='utf8_unicode_ci'
ENGINE=MyISAM;

CREATE TABLE `category` (
	`category_id` INT(10) NOT NULL AUTO_INCREMENT,
	`category_name` VARCHAR(150) NOT NULL DEFAULT 'Unnamed category',
	PRIMARY KEY (`category_id`)
)
COMMENT='Name for a collection of objects'
COLLATE='utf8_unicode_ci'
ENGINE=MyISAM;