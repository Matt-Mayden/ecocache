<?php

/**
 * Model for object
 *
 */
namespace app\controllers;
use app\models as models
class Object
{
	private $objectModel = null;

	/**
	 * Constructor
	 *
	 */
	__construct()
	{
		$this->model = new models\Object();
	}

	/**
	 *
	 *
	 */
	public function getObjects()
	{
		$objArr = $this->model->getObjects();
		$objJson = json_encode($objArr);

		return $objJson;
	}
}

?>