<?php

/**
 * Model for category
 *
 */
namespace app\models;
class Category extends Model
{
	const TABLE_NAME = '`category`';

	/**
	 * Constructor
	 *
	 */
	__construct()
	{

	}

	public function getCategories()
	{
		$query = "SELECT `category_id`, `category_name` FROM " . self::TABLE_NAME;
		$this->ecoDb()->all($query);
	}
}

?>