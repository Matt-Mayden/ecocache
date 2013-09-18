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
        $post['environment_id'] = \mako\Input::get("environment_id", null);
        $post['category_id'] = \mako\Input::get("category_id", null);
        $post['object_id'] = \mako\Input::get("object_id", null);
        $post['size_id'] = \mako\Input::get("size_id", null);
        $post['colour_id'] = \mako\Input::get("colour_id", null);
        $post['location_id'] = \mako\Input::get("location_id", null);

        $this->model->putDiscovery($post);
    }
}

?>