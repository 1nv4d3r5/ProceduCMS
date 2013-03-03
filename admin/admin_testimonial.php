<?php
session_start();
require_once('../includes/config.php');
require_once('../includes/functions.php');
require_once('admin_header.php');
if($_SESSION['user']['status'] == 'logged_in')
{
?>
	<div id="main">
		<div>
			<h3>Welcome, <?php echo $_SESSION['user']['username']; ?>. You can <a href="../logout.php">log out</a> or go back to the <a href="index.php">main admin panel</a></h3><br/>
	<?php
	
	// if we have a delete request
	if(!empty($_GET['delete']) && is_numeric($_GET['delete']))
	{
		// connect to the db
		$db = connectDB();   	
	    if(!empty($db))  
		{
			// delete and redirect to page
			$sql = "DELETE FROM `testimonials` WHERE `id` = '{$_GET['delete']}'";
			$result = mysqli_query($db, $sql);
			header('Location: admin_testimonial.php');
		}    
	}
	// we have a publish request
	else if(!empty($_GET['publish']) && is_numeric($_GET['publish']))
	{
		$db = connectDB();
		if(!empty($db))
		{
			$sql = "UPDATE `testimonials` SET `published` = '1' WHERE `id` = '{$_GET['publish']}'";
			$result = mysqli_query($db, $sql);
			header('Location: admin_testimonial.php');
		}
	}
	// we have a unpublish request
	else if(!empty($_GET['unpublish']) && is_numeric($_GET['unpublish']))
	{
		$db = connectDB();
		if(!empty($db))
		{
			$sql = "UPDATE `testimonials` SET `published` = '0' WHERE `id` = '{$_GET['unpublish']}'";
			$result = mysqli_query($db, $sql);
			header('Location: admin_testimonial.php');
		}
	}
	// if we have a normal page display
	else
	{
		// connect to db
		$db = connectDB();
		if(!empty($db))
		{
			// we want to display 5 entries at a time
			$offset = 5;
			
			// if we have a page number requested			
			if(!empty($_GET['page']))
			{
				$currPage = $_GET['page'];
				$firstEntry = ($currPage - 1) * ($offset);
			}
			else
			{
				$currPage = 1;
				$firstEntry = 0;
			}
			
			// select only the entries requested by the current page number
			$sql = "SELECT * FROM `testimonials` LIMIT {$firstEntry}, {$offset}";
			$result = mysqli_query($db, $sql);
			// table head
			?>
			<table>
				<tr><th>id</th><th>name</th><th>testimonial</th><th>published</th><th>actions</th></tr>
			
			<?php
			while($r = mysqli_fetch_assoc($result))
			{
				// while we have results, display them in a table
				$tr = '<tr>';
				$tr .= "<td>{$r['id']}</td>";
				$tr .= "<td>{$r['name']}</td>";
				$tr .= "<td>{$r['testimonial']}</td>";
				$tr .= "<td>{$r['published']}</td>";
				$tr .= '<td><a class="delete" href="admin_testimonial.php?delete='.$r['id'].'"'.'>delete</a>';
				$tr .= ' | ';
				if($r['published'] == 0)
				{
					$tr .= '<a href="admin_testimonial.php?publish='.$r['id'].'"'.'>publish</a>';
				}
				else if($r['published'] == 1)
				{
					$tr .= '<a href="admin_testimonial.php?unpublish='.$r['id'].'"'.'>unpublish</a>';
				}
				$tr .= '</tr>';
				
				echo $tr;
				
			}
			// free result set
			mysqli_free_result($result);
			?>
			</table>
			<?php
			// call the pagination function and print the output
			echo getPagination('testimonials', $currPage, $offset);
		}
	}
	
}
?>
</div>
</div>
</div>
	</div>
	</body>
</html>
