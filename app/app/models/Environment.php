<?php

/**
 *
 *
 */
class Environment extends Model
{
    const TABLE_NAME = "environment";
    /**
     * Constructor
     */
    function __construct()
    {
        parent::_construct();
    }

    public function getEnvironments()
    {
        $environments = $this->ecoDb->all('SELECT * from `' . self::TABLE_NAME . '`');
        return $environments;
    }

}

?>