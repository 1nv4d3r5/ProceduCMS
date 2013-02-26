<?php
session_start();
require_once('includes/config.php');
require_once('includes/functions.php');

if(!empty($_GET['page']))
{
	$page = getPageFromRequest($_GET['page']);
}
else
{
	$page = getPageFromRequest('home');	
}


require_once('includes/header.php');
?>


			<div id="content_wrapper">
			<img src="images/header.jpg" alt="static image"/>
				<div id="content">
					<?php
					if(!empty($page['content']))
					{
						echo $page['content']; 
					}
					?>
					<?php
						if(!empty($_GET['errors']))
						{
							$html = '<div class="error">';
							foreach($_GET['errors'] as $e)
							{
								$html .= $e;
								$html .= '<br/>';
							}
							$html .= '</div>';					
							echo $html;
						}
					?>
					<?php
						if(!empty($_GET['notice']))
						{
							echo $_GET['notice'];
						}
					?>
				</div>
				<?php require_once('includes/sidebar.php'); ?>
			</div>
			<?php require_once('includes/footer.php'); ?>	
		</div>
	</body>
</html>