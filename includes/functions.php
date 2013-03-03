<?php

require_once('config.php');

// connect to our DB
function connectDB()
{
	// connect to db
	$db = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);
	// if we have a db return it
	if(!empty($db))
	{
		return $db;
		
	}
	// if not, return false
	else
	{
		return false;	
	}
}

// return a list of pages, while marking 
function getPagination($table = false, $currPage = false, $offset = false)
{
	// connect to the db
	$db = connectDB();
	// if we have a db connection, and $offset and $table have values
	if($db != false && !empty($offset) && !empty($table))
	{
		// do a select on the id column
		$sql = "SELECT id FROM {$table}";
		$result = mysqli_query($db, $sql);
		// count the results
		$entries = mysqli_num_rows($result);
		
		// prepare the $return variable
		$return = '<ul class="pagination">';
		
		// round the number of pages up to a full number		
		$pages = ceil($entries/$offset);
		
		// generate the actual links
		$i = 1;
		while($i <= $pages)
		{
			
			$return .= '<li>';
			// if we're not on the current page, generate a link
			if($i != $currPage)
			{
				$return .= '<a href="'.$_SERVER['PHP_SELF'].'?page='.$i.'">'.$i.'</a>';
			}
			// if not, just output the number
			else
			{
				$return .= $i;
			}
			
			$return .= '</li>';
			
			$i++;
		}
		// finish our output and return it
		$return .= '</ul>';
		return $return;
	}
}
// return a list of available pages from within the db
function generateMenu($request = false)
{
	$db = connectDB();
	if($db != false)
	{
		$sql = "SELECT * FROM pages ORDER BY id ASC";		
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
		$sql = "SELECT * FROM pages WHERE url_slug = '{$request}'";		
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
			$sql = "SELECT * FROM users WHERE username = '{$username}'";		
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