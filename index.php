<?php

require_once('includes/config.php');
require_once('includes/functions.php');

?>
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
			<div id="content_wrapper">
			<img src="images/header.jpg" alt="static image"/>
				<div id="content">
					<h1>Lorem Ipsum Dolor Sit Ameth.</h1>
					<p><img class="left" src="images/thumb.jpg" alt=""/>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas enim quam, aliquet quis tempus et, luctus feugiat leo. Fusce laoreet ornare velit non luctus. Pellentesque euismod malesuada mi, id consectetur quam volutpat a. In leo mi, porta at volutpat sagittis, volutpat et est. Nam tincidunt tincidunt tristique. Nunc sit amet luctus elit. Fusce aliquet dapibus ante eget dictum. Morbi eu luctus dui. Etiam metus nibh, laoreet ac facilisis vel, sagittis et ligula. Maecenas pulvinar justo id orci congue condimentum. Proin sagittis hendrerit ornare. Praesent vulputate elementum purus, nec vehicula mauris blandit ac. Pellentesque sodales volutpat mattis. Etiam suscipit imperdiet enim, nec tempus nisl lacinia in. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
					<p>Sed lorem magna, dictum quis varius nec, auctor non nunc. Ut nibh odio, mollis sed sodales vitae, pulvinar ut magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas scelerisque ipsum vel dolor eleifend tincidunt. Duis viverra urna ut mauris auctor non interdum felis vulputate. Quisque vel diam dolor, in vehicula sapien. Donec aliquet ornare rhoncus.</p>
				</div>
				<div id="sidebar">
					<h2>Sidebar title</h2>
				</div>
			</div>
			<div id="footer">
				<p>&copy; copyright 2013 <a href="http://www.carve.ro">Adrian Mihai</a>. This platform has been created for educational purposes and is <a href="http://www.gnu.org/licenses/gpl-3.0-standalone.html">free software</a>.</p>
			</div>			
		</div>
	</body>
</html>