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
        foreach($post as $key=>$value)
        {
            if($value == null)
            {
                return false;
            }
            else
            {
                $post[$key] = (int)$value;
            }
        }

        /*
        $fieldString = "`environment_id`, `category_id`, `object_id`, `size_id`, `colour_id`, `location_id`";

        $query = "INSERT INTO `" . self::TABLE_NAME . "` (" . $fieldString . ")
        VALUES (" . $post['environment_id'] . ", " . $post['category_id'] . ", " . $post['object_id'] . ", " . $post['size_id'] . ", " . $post['colour_id'] . ", " . $post['location_id'] . ", )";
        $insert = $this->ecoDb->all($query);
        */
        $this->ecoDb->table(self::TABLE_NAME)
        ->insert($post);
    }
}

?>