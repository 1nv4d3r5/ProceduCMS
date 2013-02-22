<?php

session_start();
var_dump($_SESSION);
if($_SESSION['user']['status'] == 'logged_in')
{
	echo '<h1>Protected page</h1>';
}
else
{
	header('Location: ../index.php');
}

?>