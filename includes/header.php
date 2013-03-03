<!DOCTYPE HTML>
<html>
	<head>
		<title>ProceduCMS | Educational Project</title>
		<link rel="stylesheet" href="css/style.css"/>
		<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
		<script type="text/javascript" src="js/jquery.fancybox.js?v=2.1.4"></script>
		<link rel="stylesheet" type="text/css" href="css/jquery.fancybox.css?v=2.1.4" media="screen" />
		<script>
			$(document).ready(function(){
				$('.fancybox').fancybox();
			});
		</script>
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