<?php

require_once('includes/config.php');

// connect to our DB
function connectDB()
{
	$db = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);
	if(!empty($db))
	{
		return $db;
		
	}
	else
	{
		return false;	
	}
}

// return a list of available pages from within the db
function generateMenu($request = false)
{
	$db = connectDB();
	if($db != false)
	{
		$sql = "SELECT * FROM `pages` ORDER BY `id` ASC";		
		$result = mysqli_query($db, $sql);
		$html = '';
		while($r = mysqli_fetch_assoc($result))
		{
			// if no active page is active
			if(empty($request))
			{
				$html .= '<li>';
				$html .= '<a href="index.php?page='.$r['url_slug'].'">'.$r['title'].'</a>';
				$html .= '</li>';
			}
			// if the current active page matches the current db result
			else if($request == $r['title'])
			{
				$html .= '<li class="active">';
				$html .= '<a href="index.php?page='.$r['url_slug'].'">'.$r['title'].'</a>';
				$html .= '</li>';
			}
			else
			{
				$html .= '<li>';
				$html .= '<a href="index.php?page='.$r['url_slug'].'">'.$r['title'].'</a>';
				$html .= '</li>';
			}
			
		}
		mysqli_free_result($result);
		if(!empty($html))
		{
			return $html;
		}
	}
	
}


// returns a page from the db if found
function getPageFromRequest($request)
{
	
	// let's santize our input	
	$request = filter_var($request, FILTER_SANITIZE_FULL_SPECIAL_CHARS);
	$db = connectDB();
	if($db != false)
	{
		$sql = "SELECT * FROM `pages` WHERE `url_slug` = '{$request}'";		
		$result = mysqli_fetch_assoc(mysqli_query($db, $sql));		 
		if(!empty($result))
		{
			return $result;
		}
		else 
		{
			return false;
		}
	}	
}

// Connects to DB and gets user details
function getUserDetails($username)
{
	// check username and filter it
	if(!empty($username) && filter_var($username, FILTER_VALIDATE_EMAIL))
	{
		$db = connectDB();
		if($db != false)
		{
			$sql = "SELECT * FROM `users` WHERE `username` = '{$username}'";		
			$result = mysqli_fetch_assoc(mysqli_query($db, $sql));		 
			if(!empty($result))
			{
				return $result;
			}
			else 
			{
				return false;
			}
		}
	}
}
?>