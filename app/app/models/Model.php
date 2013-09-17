<?php

/**
 *
 *
 **/

namespace app\models;

class Model
{
	protected $ecoDb = null;

	function __construct()
	{
		$this->ecoDb = \mako\Database::connection('ecoDb');
	}
}

?>