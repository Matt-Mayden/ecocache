<?php

/**
 * Model for Discovery
 *
 */
namespace app\models;
class Discovery extends Model
{
	const TABLE_NAME = 'discovery';

	/**
	 * Constructor
	 *
	 */
	function __construct()
	{
        parent::__construct();
	}

	public function getDiscoveries()
	{
		$query = "SELECT `discovery_id`,
					(SELECT `environment_name` FROM `environment` WHERE `" . self::TABLE_NAME . "`.`environment_id` = `environment`.`environment_id`) AS environment_name,
					(SELECT `category_name` FROM `category` WHERE `" . self::TABLE_NAME . "`.`category_id` = `category`.`category_id`) AS category_name,
					(SELECT `object_name` FROM `object` WHERE `" . self::TABLE_NAME . "`.`object_id` = `object`.`object_id`) AS object_name,
					(object_size_id) AS size,
					(SELECT `geolocation` FROM `location` WHERE `" . self::TABLE_NAME . "`.`location_id` = `location`.`location_id`) AS location
					FROM `" . self::TABLE_NAME . "`";
		$discoveries = $this->ecoDb->all($query);

		return $discoveries;
	}

    public function putDiscovery($post)
    {
        if($post['environment_id'] == null ||
           $post['category_id'] == null ||
           $post['object_id'] == null)
        {
            return false;
        }
        $this->ecoDb->table(self::TABLE_NAME)
        ->insert($post);
    }
}

?>