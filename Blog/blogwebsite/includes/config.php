<?php

$config = array(
	'title' => 'BlogWebsite',
	'db' => array(
		'server' => 'b3z49koswbry5eyoriot-mysql.services.clever-cloud.com',
		'username' => 'uffvitmlb5uvudds',
		'password' => 'hpl6YPHGjue516XdIJDr',
		'name' => 'b3z49koswbry5eyoriot'
	)
);

require "connect_db.php";

// include - if file is not connected, you see the error and script will not work
// require - if file is not connected - script will not work
// _once - if file connected, it will not reconnect
// require_once "connect_db.php"