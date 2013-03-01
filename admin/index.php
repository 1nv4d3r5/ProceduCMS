<?php             
session_start();  
require_once("admin_header.php");

			
			if($_SESSION['user']['status'] == 'logged_in')
			{
				
			?>
				
				<div id="main">
					<div>
						<h3>Welcome, <?php echo $_SESSION['user']['username']; ?>. You can <a href="../logout.php">log out</a> or go to the following admin panels:</h3>
						<ul>
							<li><a href="admin_contact.php">Comments</a></li>
							<li><a href="admin_testimonials.php">Testimonials</a></li>
							<li><a href="admin_projects.php">Projects</a></li>
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