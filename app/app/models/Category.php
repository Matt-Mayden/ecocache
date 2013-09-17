<?php

/**
 * Model for category
 *
 */
namespace app\models;
class Category extends Model
{
	const TABLE_NAME = '`category`';

	/**
	 * Constructor
	 *
	 */

	function __construct()
	{
        parent::__construct();
	}

	public function getCategories()
	{
	    $categories = $this->ecoDb->table(self::TABLE_NAME)->all();
	    return $categories;
	}

    public function getCategoriesForEnvironment($environment_id)
    {
        $environment_id = (int)$environment_id;

        if(!is_numeric($environment_id) || $environment_id < 1)
        {
            return array();
        }

        $query = "SELECT " . self::TABLE_NAME . ".`category_id`, " . self::TABLE_NAME . ".`category_name` FROM " . self::TABLE_NAME . "
                    LEFT JOIN `category_environment` ON " . self::TABLE_NAME . ".`category_id` = `category_environment`.`category_id`
                    WHERE `category_environment`.`environment_id` = " . $environment_id;
        $categories = $this->ecoDb->all($query);

        return $categories;
    }
}

?>