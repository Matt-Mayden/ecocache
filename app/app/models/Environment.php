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
        $environments = $this->ecoDb->all('SELECT environment_id as `id`, environment_name as `name`, `image` from `' . self::TABLE_NAME . '`');
        return $environments;
    }

}

?>
