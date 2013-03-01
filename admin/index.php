<?php             
session_start();  
?>
<!DOCTYPE html>
<html>
	<head>
		<title>ProceduCMS | Educational Project</title>
		<link rel="stylesheet" href="../css/style.css"/>
		<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){				
				$(".admin_option").click(function(){
					$(this).parents("li").toggleClass("collapsed");
					var spanContent = $(this).children("span");
					if(spanContent.html() == '[ - ]')
					{
						spanContent.html("[ + ]");
					}
					else
					{
						spanContent.html("[ - ]");
					}
					return false;
				});
			});
		</script>
	</head>
	<body>
	<div id="main">
		<div id="admin">
			<?php
			
			if($_SESSION['user']['status'] == 'logged_in')
			{
				?>
				
				<div id="main">
					<div>
						<h3>Welcome, <?php echo $_SESSION['user']['username']; ?>. Here are your admin options:</h3>
						<ul>
							<li>
								<a href="#" class="admin_option"><span>[ - ]</span> Comments</a>
								<div class="admin_panel">
									// Comments here
								</div>
							</li>
							<li class="collapsed">
								<a href="#" class="admin_option"><span>[ + ]</span> Testimonials</a>
								<div class="admin_panel">
									// Testimonials here
								</div>
							</li>
							<li class="collapsed">
								<a href="#" class="admin_option"><span>[ + ]</span> Projects</a>
								<div class="admin_panel">
									// Projects here
								</div>
							</li>
						</ul>
					</div>
				</div>
				
				<?php
			}
			else
			{
				header('Location: ../index.php');
			}
			
			?>
		</div>
	</div>
	</body>
</html>