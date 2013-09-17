<?php

/**
 * Model for Discovery
 *
 */
namespace app\controllers;
use app\models as models;

class Discovery extends \mako\Controller
{
	const RESTFUL = true;
	private $model = null;

	/**
	 * Constructor
	 *
	 */
	function __construct()
	{
		$this->model = new models\Discovery();
	}

	/**
	 *
	 *
	 */
	public function get_index()
	{
		$objArr = $this->model->getDiscoveries();
		$objJson = json_encode($objArr);

		return $objJson;
	}

    public function post_index()
    {
        $post['environment_id'] = \mako\Input::post("environment_id", null);
        $post['category_id'] = \mako\Input::post("category_id", null);
        $post['object_id'] = \mako\Input::post("object_id", null);
        $post['object_size_id'] = \mako\Input::post("size_id", null);
        $post['object_colour'] = \mako\Input::post("colour_id", null);
        $post['location_id'] = \mako\Input::post("location_id", null);

        $this->model->putDiscovery($post);
    }
}

?>