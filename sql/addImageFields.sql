ALTER TABLE `category`
	ADD COLUMN `image` VARCHAR(50) NULL AFTER `category_name`;

ALTER TABLE `environment`
	ADD COLUMN `image` VARCHAR(50) NULL AFTER `environment_name`;

ALTER TABLE `object`
	ADD COLUMN `image` VARCHAR(50) NULL AFTER `object_name`;