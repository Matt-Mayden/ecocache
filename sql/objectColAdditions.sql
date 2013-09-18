ALTER TABLE `discovery`
	ADD COLUMN `object_size_id` INT NOT NULL DEFAULT '0' AFTER `location_id`,
	ADD COLUMN `object_colour` VARCHAR(150) NOT NULL DEFAULT '' AFTER `object_size_id`;

INSERT INTO `object_size` (`object_size_id`, `object_size_description`) VALUES (1, 'small');
INSERT INTO `object_size` (`object_size_id`, `object_size_description`) VALUES (2, 'medium');
INSERT INTO `object_size` (`object_size_id`, `object_size_description`) VALUES (3, 'big');