<?php
session_start();
require_once('includes/config.php');
require_once('includes/functions.php');

/* 
 * Write to DB functionality  
 */
 
// check name
if(!empty($_POST))
{
	if(!empty($_POST['name']))
	{
		$return['name'] = filter_var($_POST['name'], FILTER_SANITIZE_STRING);
	}
	else
	{
		$errors['name'] = 'Name is required';
	}
	
	
	// check email
	if(!empty($_POST['email']))
	{
		if(filter_var($_POST['email'], FILTER_VALIDATE_EMAIL))
		{
			$return['email'] = $_POST['email'];
		}
		else
		{
			$errors['email'] = 'Email contains invalid characters';	
		}
	}
	else
	{
		$errors['email'] = 'Email is required';
	}
	
	// check the actual message
	if(!empty($_POST['message']))
	{
		$return['message'] = filter_var($_POST['message'], FILTER_SANITIZE_STRING);
	}
	else
	{
		$errors['message'] = 'Message is required';	
	}
	
	// handle errors and DB stuff
	if(!empty($errors))
	{
		$errors = array('errors' => $errors);
		$errorRequest = http_build_query($errors);
		
		header('Location: index.php?page=contact&'.$errorRequest);
	}
	else if(!empty($return['name']) && !empty($return['email']) && !empty($return['message'])){
		$db = connectDB();
		if(!empty($db))
		{
			$sql = "INSERT INTO `messages` (`name`, `email`, `message`) VALUES ('{$return['name']}', '{$return['email']}', '{$return['message']}')";		
			var_dump($sql);
			$result = mysqli_query($db, $sql);
			var_dump($result);
			if(!empty($result))
			{
				$message = urlencode("Thank you for your comment.");
				header('Location: index.php?page=contact&message='.$message);
			}
		}
	}
	
}

/* 
 * if empty request
 */ 
else 
{
	header("Location: index.php");
}
?>