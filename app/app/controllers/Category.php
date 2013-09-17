<?php

/**
 * Model for category
 *
 */
namespace app\controllers;
use app\models as models
class Category
{
	private $categoryModel = null;

	/**
	 * Constructor
	 *
	 */
	__construct()
	{
		$this->model = new models\Category();
	}

	/**
	 *
	 *
	 */
	public function getCategories()
	{
		$catArr = $this->model->getCategories();
		$catJson = json_encode($catArr);

		return $catJson;
	}
}

?>