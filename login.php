<?php

require_once('includes/config.php');
require_once('includes/functions.php');

$dbPassword = '167dc44a97c5c37d34a5c527a8052187';

$userInfo = getUserDetails($_POST['username']);

if(md5(SALT.$_POST['password']) == $userInfo['password'] && $_POST['username'] == $userInfo['username'])
{
	echo 'correct';
}
else
{
	echo 'incorrect';
}

?>