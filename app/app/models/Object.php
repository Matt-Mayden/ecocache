<?php

/**
 *
 *
 */
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
        $environments = $this->ecoDb->all('SELECT `object_id`, `object_name` from `' . self::TABLE_NAME . '`');
        return $environments;
    }

}

?>