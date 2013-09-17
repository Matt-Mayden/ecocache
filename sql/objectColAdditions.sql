ALTER TABLE `object`
	ADD COLUMN `object_size` INT NOT NULL DEFAULT '0' AFTER `object_name`,
	ADD COLUMN `object_colour` VARCHAR(150) NOT NULL DEFAULT '' AFTER `object_size`;

INSERT INTO `object_size` (`object_size_id`, `object_size_description`) VALUES (1, 'small');
INSERT INTO `object_size` (`object_size_id`, `object_size_description`) VALUES (2, 'medium');
INSERT INTO `object_size` (`object_size_id`, `object_size_description`) VALUES (3, 'big');
