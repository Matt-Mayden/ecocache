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

    }

    public function getEnvironments()
    {
        $this->ecoDb->all('SELECT * from `' . self::TABLE_NAME . '`');
    }

}

?>