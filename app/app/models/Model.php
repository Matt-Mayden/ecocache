<?php

/**
 *
 *
 **/
class Model
{
	protected $ecoDb = null;

	__construct()
	{
		$ecoDb = mako\Database::connection('ecoDb');
	}
}

?>