<?php

/**
 *
 *
 * @version $Id$
 * @copyright 2013
 */

namespace app\controllers;
use app\models as models;

class Environment extends \mako\Controller
{
    const RESTFUL = true;
    private $model = null;

    /**
     * Function description
     * @param datatype paramname description
     * @param datatype1 | datatype2 paramname description
     * @return datatype description
     */
    function __construct()
    {
        $this->model = new models\Environment();
    }

    public function get_index()
    {
        $environments = $this->model->getEnvironments();
        $environmentsJson = json_encode($environments);
        echo $environmentsJson;
    }
}
?>