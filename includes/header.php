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
					<li class="active"><a href="#">Home</a></li>
					<li><a href="#">About</a></li>
					<li><a href="#">Projects</a></li>
					<li><a href="#">Testimonials</a></li>
					<li><a href="#">Contact</a></li>		
					<li>
						<form action="searchForm.php" method="GET">
							<input type="text" value="search term"/>
							<input type="submit" value="search!"/>
						</form>
					</li>			
				</ul>
			</div>