<div class="topnav">

	<a 
	<?php 
		$pageName = basename($_SERVER['PHP_SELF'], '.php');

		if($pageName == 'home' OR $pageName == 'adminhome')
		{ ?>
			class = "active" <?php
		}
	?>
	href="home.php" >Home
	</a>
	
	<a
	<?php 
		if($pageName == 'teacherroutine')
		{ ?>
			class = "active" <?php
		}
	?>
  	href="teacherroutine.php">My Routine
  	</a>

  	<a href="#"><?php echo Session::get('username'); ?></a>
  	<a href="?action=logout">Log Out</a>
</div>