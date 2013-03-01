<!DOCTYPE HTML>
<html>
	<head>
		<title>ProceduCMS | Educational Project</title>
		<link rel="stylesheet" href="css/style.css"/>
		<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	</head>
	<body>
		<div id="main">
			
			<div id="header">
				<a href="#" id="logo"><img src="images/logo.png" alt=""/></a>
				
				<ul>					
					<?php 
					if(!empty($page['title']))
					{
						echo generateMenu($page['title']); 
					}
					else
					{
						echo generateMenu();	
					}
						
					?>
					<li>
						<form action="searchForm.php" method="GET">
							<input type="text" value="search term"/>
							<input type="submit" value="search!"/>
						</form>
					</li>			
				</ul>
			</div>