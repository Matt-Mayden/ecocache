<?php

/**
 *
 *
 */
class Category extends Model
{
	const TABLE_NAME = '`category`';

	/**
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