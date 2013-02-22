<!DOCTYPE HTML>
<html>
	<head>
		<title>ProceduCMS | Educational Project</title>
		<link rel="stylesheet" href="css/style.css"/>
		<script src="http://code.jquery.com/jquery-migrate-1.1.0.min.js"></script>
	</head>
	<body>
		<div id="main">
			
			<div id="header">
				<a href="#" id="logo"><img src="images/logo.png" alt=""/></a>
				
				<ul>					
					<?php generateMenu($page['title']); ?>
					<li>
						<form action="searchForm.php" method="GET">
							<input type="text" value="search term"/>
							<input type="submit" value="search!"/>
						</form>
					</li>			
				</ul>
			</div>