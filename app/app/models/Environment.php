<?php

/**
 *
 *
 */
namespace app\models;

class Environment extends Model
{
    const TABLE_NAME = "environment";
    /**
     * Constructor
     */
    function __construct()
    {
        parent::__construct();
    }

    public function getEnvironments()
    {
        $environments = $this->ecoDb->table(self::TABLE_NAME)->all();
        return $environments;
    }

}

?>