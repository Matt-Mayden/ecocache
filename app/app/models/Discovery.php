<?php

/**
 * Model for Discovery
 *
 */
namespace app\models;
class Discovery extends Model
{
	const TABLE_NAME = '`Discovery`';

	/**
	 * Constructor
	 *
	 */
	__construct()
	{

	}

	public function getDiscoveries()
	{
		$query = "SELECT `discovery_id`, 
					(SELECT `environment_name` FROM `environment` WHERE " . self::TABLE_NAME . ".`environment_id` = `environment`.`environment_id`) AS environment_name, 
					(SELECT `environment_name` FROM `environment` WHERE " . self::TABLE_NAME . ".`environment_id` = `environment`.`environment_id`) AS category_name,
					(SELECT `environment_name` FROM `environment` WHERE " . self::TABLE_NAME . ".`environment_id` = `environment`.`environment_id`) AS object_name,
					(object_size_id) AS size,
					(SELECT `geolocation` FROM `location` WHERE " . self::TABLE_NAME . ".`location_id` = `location`.`location_id`) AS location
					FROM " . self::TABLE_NAME;
		$discoveries = $this->ecoDb()->all($query);

		return $discoveries;
	}
}

?>