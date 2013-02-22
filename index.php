<?php
session_start();
require_once('includes/config.php');
require_once('includes/functions.php');

if(!empty($_GET['page']))
{
	$page = getPageFromRequest($_GET['page']);
}


require_once('includes/header.php');
?>


			<div id="content_wrapper">
			<img src="images/header.jpg" alt="static image"/>
				<div id="content">
					<?php echo $page['content']; ?>
				</div>
				<?php require_once('includes/sidebar.php'); ?>
			</div>
			<?php require_once('includes/footer.php'); ?>	
		</div>
	</body>
</html>