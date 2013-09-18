<?php

/**
 * Model for category
 *
 */
namespace app\controllers;
use app\models as models;
class Category extends \mako\Controller
{
    const RESTFUL = true;
	private $model = null;

	/**
	 * Constructor
	 *
	 */
	function __construct()
	{
		$this->model = new models\Category();
	}

	/**
	 *
	 *
	 */
	public function get_index()
	{
	    $environment_id = \mako\Input::get("environment_id", null);

	    if(isset($environment_id))
	    {
	        $categories = $this->model->getCategoriesForEnvironment($environment_id);
	        $categoriesJson = json_encode($categories);

	        echo $categoriesJson;
	    }
	    else
	    {
	        $categories = $this->model->getCategories();
		    $categoriesJson = json_encode($categories);

		    echo $categoriesJson;
	    }

	}
}

?>