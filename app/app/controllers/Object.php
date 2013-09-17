<?php

/**
 * Model for object
 *
 */
namespace app\controllers;
use app\models as models;

class Object extends \mako\Controller
{
    const RESTFUL = true;
	private $model = null;

	/**
	 * Constructor
	 *
	 */
    function __construct()
	{
		$this->model = new models\Object();
	}

	/**
	 *
	 *
	 */
	public function get_index()
	{
        if(1)
        {
            $objects = $this->model->getObjectsForCategory($category_id);
            $objectsJson = json_encode($objects);

            var_dump($objectsJson);
        }
	    else
	    {
	        $objects = $this->model->getObjects();
	        $objectsJson = json_encode($objects);

	        var_dump($objectsJson);
	    }
	}
}

?>