DELETE FROM `environment`;
DELETE FROM `category`;
DELETE FROM `object`;
DELETE FROM `category_environment`;
DELETE FROM `object_category`;

#Environments
INSERT INTO `environment` (`environment_name`) VALUES ('In The Car');
INSERT INTO `environment` (`environment_name`) VALUES ('In The Garden');
INSERT INTO `environment` (`environment_name`) VALUES ('Out & About');
INSERT INTO `environment` (`environment_name`) VALUES ('At the Beach');
#Categories
INSERT INTO `category` (`category_name`) VALUES ('Flower');
INSERT INTO `category` (`category_name`) VALUES ('Animal');
INSERT INTO `category` (`category_name`) VALUES ('Fruit');
INSERT INTO `category` (`category_name`) VALUES ('Tree');

INSERT INTO `category_environment` (`category_id`,`environment_id`)(SELECT `category_id`, (SELECT `environment_id` FROM `environment` WHERE `environment_name` = 'In The Car') FROM `category` WHERE `category_name` = "Flower");
INSERT INTO `category_environment` (`category_id`,`environment_id`)(SELECT `category_id`, (SELECT `environment_id` FROM `environment` WHERE `environment_name` = 'In The Car') FROM `category` WHERE `category_name` = "Animal");
INSERT INTO `category_environment` (`category_id`,`environment_id`)(SELECT `category_id`, (SELECT `environment_id` FROM `environment` WHERE `environment_name` = 'In The Car') FROM `category` WHERE `category_name` = "Fruit");
INSERT INTO `category_environment` (`category_id`,`environment_id`)(SELECT `category_id`, (SELECT `environment_id` FROM `environment` WHERE `environment_name` = 'In The Car') FROM `category` WHERE `category_name` = "Tree");

INSERT INTO `category_environment` (`category_id`,`environment_id`)(SELECT `category_id`, (SELECT `environment_id` FROM `environment` WHERE `environment_name` = 'In The Garden') FROM `category` WHERE `category_name` = "Flower");
INSERT INTO `category_environment` (`category_id`,`environment_id`)(SELECT `category_id`, (SELECT `environment_id` FROM `environment` WHERE `environment_name` = 'In The Garden') FROM `category` WHERE `category_name` = "Animal");
INSERT INTO `category_environment` (`category_id`,`environment_id`)(SELECT `category_id`, (SELECT `environment_id` FROM `environment` WHERE `environment_name` = 'In The Garden') FROM `category` WHERE `category_name` = "Fruit");
INSERT INTO `category_environment` (`category_id`,`environment_id`)(SELECT `category_id`, (SELECT `environment_id` FROM `environment` WHERE `environment_name` = 'In The Garden') FROM `category` WHERE `category_name` = "Tree");

INSERT INTO `category_environment` (`category_id`,`environment_id`)(SELECT `category_id`, (SELECT `environment_id` FROM `environment` WHERE `environment_name` = 'Out & About') FROM `category` WHERE `category_name` = "Flower");
INSERT INTO `category_environment` (`category_id`,`environment_id`)(SELECT `category_id`, (SELECT `environment_id` FROM `environment` WHERE `environment_name` = 'Out & About') FROM `category` WHERE `category_name` = "Animal");
INSERT INTO `category_environment` (`category_id`,`environment_id`)(SELECT `category_id`, (SELECT `environment_id` FROM `environment` WHERE `environment_name` = 'Out & About') FROM `category` WHERE `category_name` = "Fruit");
INSERT INTO `category_environment` (`category_id`,`environment_id`)(SELECT `category_id`, (SELECT `environment_id` FROM `environment` WHERE `environment_name` = 'Out & About') FROM `category` WHERE `category_name` = "Tree");

INSERT INTO `category_environment` (`category_id`,`environment_id`)(SELECT `category_id`, (SELECT `environment_id` FROM `environment` WHERE `environment_name` = 'At the Beach') FROM `category` WHERE `category_name` = "Flower");
INSERT INTO `category_environment` (`category_id`,`environment_id`)(SELECT `category_id`, (SELECT `environment_id` FROM `environment` WHERE `environment_name` = 'At the Beach') FROM `category` WHERE `category_name` = "Animal");
INSERT INTO `category_environment` (`category_id`,`environment_id`)(SELECT `category_id`, (SELECT `environment_id` FROM `environment` WHERE `environment_name` = 'At the Beach') FROM `category` WHERE `category_name` = "Fruit");
INSERT INTO `category_environment` (`category_id`,`environment_id`)(SELECT `category_id`, (SELECT `environment_id` FROM `environment` WHERE `environment_name` = 'At the Beach') FROM `category` WHERE `category_name` = "Tree");

#Objects
INSERT INTO `object` (`object_name`) VALUES ('Daffodil');
INSERT INTO `object` (`object_name`) VALUES ('Azalea');
INSERT INTO `object` (`object_name`) VALUES ('Snow Drop');
INSERT INTO `object` (`object_name`) VALUES ('Rose');

set @flower_id = (SELECT `category_id` FROM `category` WHERE `category_name` = "Flower");
INSERT INTO `object_category` (`object_id`, `category_id`) (SELECT `object_id`, @flower_id FROM `object` WHERE `object_name` = 'Daffodil');
INSERT INTO `object_category` (`object_id`, `category_id`) (SELECT `object_id`, @flower_id FROM `object` WHERE `object_name` = 'Azalea');
INSERT INTO `object_category` (`object_id`, `category_id`) (SELECT `object_id`, @flower_id FROM `object` WHERE `object_name` = 'Snow Drop');
INSERT INTO `object_category` (`object_id`, `category_id`) (SELECT `object_id`, @flower_id FROM `object` WHERE `object_name` = 'Rose');

INSERT INTO `object` (`object_name`) VALUES ('Frog');
INSERT INTO `object` (`object_name`) VALUES ('Robin');
INSERT INTO `object` (`object_name`) VALUES ('Polar Bear');
INSERT INTO `object` (`object_name`) VALUES ('Swan');

set @animal_id = (SELECT `category_id` FROM `category` WHERE `category_name` = "Animal");
INSERT INTO `object_category` (`object_id`, `category_id`) (SELECT `object_id`, @animal_id FROM `object` WHERE `object_name` = 'Frog');
INSERT INTO `object_category` (`object_id`, `category_id`) (SELECT `object_id`, @animal_id FROM `object` WHERE `object_name` = 'Robin');
INSERT INTO `object_category` (`object_id`, `category_id`) (SELECT `object_id`, @animal_id FROM `object` WHERE `object_name` = 'Polar Bear');
INSERT INTO `object_category` (`object_id`, `category_id`) (SELECT `object_id`, @animal_id FROM `object` WHERE `object_name` = 'Swan');

INSERT INTO `object` (`object_name`) VALUES ('Blackberry');
INSERT INTO `object` (`object_name`) VALUES ('Strawberry');
INSERT INTO `object` (`object_name`) VALUES ('Apple');
INSERT INTO `object` (`object_name`) VALUES ('Pineapple');

set @fruit_id = (SELECT `category_id` FROM `category` WHERE `category_name` = "Fruit");
INSERT INTO `object_category` (`object_id`, `category_id`) (SELECT `object_id`, @fruit_id FROM `object` WHERE `object_name` = 'Blackberry');
INSERT INTO `object_category` (`object_id`, `category_id`) (SELECT `object_id`, @fruit_id FROM `object` WHERE `object_name` = 'Strawberry');
INSERT INTO `object_category` (`object_id`, `category_id`) (SELECT `object_id`, @fruit_id FROM `object` WHERE `object_name` = 'Apple');
INSERT INTO `object_category` (`object_id`, `category_id`) (SELECT `object_id`, @fruit_id FROM `object` WHERE `object_name` = 'Pineapple');

INSERT INTO `object` (`object_name`) VALUES ('Oak');
INSERT INTO `object` (`object_name`) VALUES ('Beach');
INSERT INTO `object` (`object_name`) VALUES ('Palm');
INSERT INTO `object` (`object_name`) VALUES ('Maple');

set @tree_id = (SELECT `category_id` FROM `category` WHERE `category_name` = "Tree");
INSERT INTO `object_category` (`object_id`, `category_id`) (SELECT `object_id`, @tree_id FROM `object` WHERE `object_name` = 'Oak');
INSERT INTO `object_category` (`object_id`, `category_id`) (SELECT `object_id`, @tree_id FROM `object` WHERE `object_name` = 'Beach');
INSERT INTO `object_category` (`object_id`, `category_id`) (SELECT `object_id`, @tree_id FROM `object` WHERE `object_name` = 'Palm');
INSERT INTO `object_category` (`object_id`, `category_id`) (SELECT `object_id`, @tree_id FROM `object` WHERE `object_name` = 'Maple');