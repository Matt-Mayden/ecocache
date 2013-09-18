Table Structure
===============

The table structure to store and manage data acquisition are described below:
    .. code-block:: sql
       :linenos:

        #Create DB
        CREATE DATABASE `geo_cache` /*!40100 COLLATE 'utf8_unicode_ci' */;

        #environment table - description of area user is spotting from
        CREATE TABLE `environment` (
            `environment_id` INT(10) NOT NULL AUTO_INCREMENT,
            `environment_name` VARCHAR(150) NOT NULL DEFAULT 'Unnamed Location',
            PRIMARY KEY (`environment_id`)
            )


        #category table - collective name for objects
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
        #object table - definition for individual objects
        CREATE TABLE `object` (
            `object_id` INT(10) NOT NULL AUTO_INCREMENT,
            `object_name` VARCHAR(150) NOT NULL DEFAULT 'Unnamed Object',
            PRIMARY KEY (`object_id`)
            )


        COMMENT='Living or inanimate object to record discovery of'
        COLLATE='utf8_unicode_ci'
        ENGINE=MyISAM;
        #Discovery table - individual submissions from users, links everything together
        CREATE TABLE `discovery` (
            `discovery_id` INT(10) NOT NULL AUTO_INCREMENT,
            `environment_id` INT(10) NOT NULL DEFAULT '0',
            `category_id` INT(10) NOT NULL DEFAULT '0',
            `object_id` INT(10) NOT NULL DEFAULT '0',
            `object_size_id` INT(10) NOT NULL DEFAULT '0',
            `location_id` INT(10) NOT NULL DEFAULT '0',
            PRIMARY KEY (`discovery_id`)
            )
            

            COMMENT='Table for recording individual discoveries of objects'
            COLLATE='utf8_unicode_ci'
            ENGINE=MyISAM;
            #Describes object sizes
            CREATE TABLE `object_size` (
                `object_size_id` INT(10) NOT NULL AUTO_INCREMENT,
                `object_size_description` VARCHAR(150) NOT NULL DEFAULT '',
                PRIMARY KEY (`object_size_id`))
                
            COMMENT='Record possible sizes for object'
            COLLATE='utf8_unicode_ci'
            ENGINE=MyISAM;
            #Object category linking table
            CREATE TABLE `object_category` (
                `object_id` INT(10) NOT NULL DEFAULT '0',
                `category_id` INT(10) NOT NULL DEFAULT '0',
                PRIMARY KEY (`object_id`, `category_id`)
                )


            COMMENT='Links objects to categories'
            COLLATE='utf8_unicode_ci'
            ENGINE=MyISAM;
            #Category environment linking table
            CREATE TABLE `category_environment` (
                `category_id` INT(10) NOT NULL DEFAULT '0',
                `environment_id` INT(10) NOT NULL DEFAULT '0',
                PRIMARY KEY (`category_id`, `environment_id`)
                )
                
            COMMENT='Links categories to environments'
            COLLATE='utf8_unicode_ci'
            ENGINE=MyISAM;
            
            
            #Location date storage
                CREATE TABLE `location` (
                    `location_id` INT(10) NOT NULL AUTO_INCREMENT,
                    `geolocation` POINT NOT NULL,
                    PRIMARY KEY (`location_id`)
                    )
            COLLATE='utf8_unicode_ci'
            ENGINE=MyISAM;



