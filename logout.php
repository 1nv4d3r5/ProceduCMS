<?php

session_start();

if($_SESSION['user'])
{
	unset($_SESSION);
	setcookie(session_name(), "", time()-84600, "/");
	session_destroy();
	header('Location: index.php');
}

?>