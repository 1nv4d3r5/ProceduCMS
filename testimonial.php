<?php
session_start();
require_once('includes/config.php');
require_once('includes/functions.php');

/* 
 * Write to DB functionality  
 */
 
 var_dump($_POST);
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
	
	// check the actual message
	if(!empty($_POST['testimonial']))
	{
		$return['testimonial'] = filter_var($_POST['testimonial'], FILTER_SANITIZE_STRING);
	}
	else
	{
		$errors['testimonial'] = 'Testimonial is required';	
	}
	
	// handle errors and DB stuff
	if(!empty($errors))
	{
		$errors = array('errors' => $errors);
		$errorRequest = http_build_query($errors);
		
		header('Location: index.php?page=testimonials&'.$errorRequest);
	}
	else if(!empty($return['name']) && !empty($return['testimonial'])){
		$db = connectDB();
		if(!empty($db))
		{
			
			$sql = "INSERT INTO `testimonials` (`name`, `published`, `testimonial`) VALUES ('{$return['name']}', '0', '{$return['testimonial']}')";		
			var_dump($sql);
			$result = mysqli_query($db, $sql);
			var_dump($result);
			if(!empty($result))
			{
				$message = urlencode("Thank you for your testimonial.");
				header('Location: index.php?page=testimonials&message='.$message);
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