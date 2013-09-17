<?php

/**
 *
 *
 **/

namespace app\models;

class Model
{
	protected $ecoDb = null;

	function _construct()
	{
		$this->ecoDb = \mako\Database::connection('ecoDb');
	}
}

?>