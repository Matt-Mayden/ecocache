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
        parent::_construct();
    }

    public function getObjects()
    {
        $objects = $this->ecoDb->all('SELECT `object_id`, `object_name` from `' . self::TABLE_NAME . '`');
        return $objects;
    }

    public function getObjectsForCategory($category_id)
    {
        $objects = $this->ecoDb->all('SELECT `object_id`, `object_name` from `' . self::TABLE_NAME . '`');
        return $objects;
    }

}

?>