<?php

/**
 * Model for Discovery
 *
 */
namespace app\controllers;
use app\models as models
class Discovery
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
	public function getDiscoveries()
	{
		$objArr = $this->model->getDiscoveries();
		$objJson = json_encode($objArr);

		return $objJson;
	}
}

?>