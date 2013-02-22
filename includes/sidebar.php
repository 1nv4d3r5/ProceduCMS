<div id="sidebar">
					<div class="sidebar_content">
						<h2>Admin</h2>						
							<?php if(empty($_SESSION['user'])){  ?>
							<form action="login.php" method="POST">
								<label for="username">User:</label>
								<input type="text" name="username" id="username"/><br/>
								<label for="password">Password:</label>
								<input type="password" name="password" id="password"/><br/>
								<input type="submit" value="login"/>
								<?php if(!empty($_SESSION['errors']))
								{
									foreach($_SESSION['errors'] as $e)
									{
										echo '<br/><span style="color:red">'.$e,'</span>';
									}
								}	
								?>
							</form>
							<?php } else if($_SESSION['user']['status'] == 'logged_in'){ ?>
								Welcome, <a href="#"><?php echo $_SESSION['user']['username']; ?></a>. <a href="logout.php">Log out?</a>
							<?php } ?>
						
					</div>
					<div class="sidebar_content">
						<h2>Tech Links</h2>
						<ul>
							<li><a href="http://www.php.net">PHP</a></li>
							<li><a href="http://www.mysql.com">MySQL</a></li>
							<li><a href="http://www.apachefriends.org/en/xampp.html">XAMPP</a></li>
							<li><a href="http://www.w3.org/html/">HTML</a></li>
							<li><a href="http://www.w3.org/Style/CSS/">CSS</a></li>
							<li><a href="http://www.jquery.com">jQuery</a></li>
						</ul>
					</div>
					
				</div>