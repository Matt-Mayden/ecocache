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
        $rawPost = $GLOBALS['HTTP_RAW_POST_DATA'];

        $post = json_decode($rawPost, true);

        if(isset($post["size"]))
        {
            $post['object_size_id'] = $post["size"];
            unset($post['size']);
        }

        if(isset($post["colour"]))
        {
            $post['object_colour'] = $post["colour"];
            unset($post['colour']);
        }

        if(isset($post["position"]))
        {
            $post['object_position'] = $post["position"];
            unset($post['position']);
        }

        $this->model->putDiscovery($post);

    }
}

?>