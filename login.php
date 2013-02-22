<?php

require_once('includes/config.php');
require_once('includes/functions.php');

session_start();

$userInfo = getUserDetails($_POST['username']);
if(md5(SALT.$_POST['password']) == $userInfo['password'] && $_POST['username'] == $userInfo['username'])
{	
	$_SESSION['user']['username'] = $userInfo['username'];
	$_SESSION['user']['status'] = 'logged_in';
	unset($_SESSION['errors']);
	header('Location: admin/index.php');
}
else
{
	$_SESSION['errors'][] = 'Invalid User/Pass combination';
	header('Location: index.php');
}

?>