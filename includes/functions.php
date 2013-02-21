<?php

require_once('includes/config.php');

// Connects to DB and gets user details
function getUserDetails($username)
{
	// check username and filter it
	if(!empty($username) && filter_var($username, FILTER_VALIDATE_EMAIL))
	{
		$db = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);
		$sql = "SELECT * FROM `users` WHERE `username` = '{$username}'";		
		return mysqli_fetch_assoc(mysqli_query($db, $sql)) or false;		 
	}
}

?>