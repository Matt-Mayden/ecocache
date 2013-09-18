<?php

/**
 *
 *
 */
namespace app\models;

class Object extends Model
{
    const TABLE_NAME = "object";
    /**
     * Constructor
     */
    function __construct()
    {
        parent::__construct();
    }

    public function getObjects()
    {
        $objects = $this->ecoDb->table(self::TABLE_NAME)->all();
        return $objects;
    }

    public function getObjectsForCategory($category_id)
    {
        $category_id = (int)$category_id;

        if(!is_numeric($category_id) || $category_id < 1)
        {
            return array();
        }

        $query = "SELECT " . self::TABLE_NAME . ".`object_id`, " . self::TABLE_NAME . ".`object_name` FROM " . self::TABLE_NAME . "
                    LEFT JOIN `object_category` ON " . self::TABLE_NAME . ".`object_id` = `object_category`.`object_id`
                    WHERE `object_category`.`category_id` = " . $category_id;
        $objects = $this->ecoDb->all($query);

        return $objects;
    }

}

?>