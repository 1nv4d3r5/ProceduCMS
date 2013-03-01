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
			<h3>Welcome, <?php echo $_SESSION['user']['username']; ?>. You can <a href="logout.php">log out</a> or go back to the <a href="index.php">main admin panel</a></h3><br/>
	<?php
	
	// if we have a delete request
	if(!empty($_GET['delete']) && is_numeric($_GET['delete']))
	{
		// connect to the db
		$db = connectDB();   	
	    if(!empty($db))  
		{
			// delete and redirect to page
			$sql = "DELETE FROM `messages` WHERE `id` = '{$_GET['delete']}'";
			$result = mysqli_query($db, $sql);
			header('Location: admin_contact.php');
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
			$sql = "SELECT * FROM `messages` LIMIT {$firstEntry}, {$offset}";
			$result = mysqli_query($db, $sql);
			// table head
			?>
			<table>
				<tr><th>id</th><th>name</th><th>email</th><th>message</th><th>actions</th></tr>
			
			<?php
			while($r = mysqli_fetch_assoc($result))
			{
				// while we have results, display them in a table
				$tr = '<tr>';
				$tr .= "<td>{$r['id']}</td>";
				$tr .= "<td>{$r['name']}</td>";
				$tr .= "<td>{$r['email']}</td>";
				$tr .= "<td>{$r['message']}</td>";
				$tr .= '<td><a class="delete" href="admin_contact.php?delete='.$r['id'].'"'.'>delete</a></td>';
				$tr .= '</tr>';
				
				echo $tr;
				
			}
			// free result set
			mysqli_free_result($result);
			?>
			</table>
			<?php
			// call the pagination function and print the output
			echo getPagination('messages', $currPage, $offset);
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
