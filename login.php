<!DOCTYPE html>

<html>
	<head>
		<title>RM System</title>
		<meta charset="utf-8"/>
		<link rel="stylesheet" type="text/css" href="inc/css/style.css"/>
	</head>
	
	<body>

		<?php
			include 'lib/User.php';
			include 'lib/Session.php';

			Session::init();
			Session::checkLogin();

			$user = new User;

			if(isset($_POST['login'])) {
				$username = $_POST['username'];
				$password = $_POST['password'];
				$userLogin = $user->userLogin($username, $password);
			}

			if(isset($userLogin)) {
				echo "<script type='text/javascript'>window.alert('$userLogin');</script>";
			}

		?>

		<div class="show">RM System</div>
		<div class="login-page">
			<div class="form">
				<form class="login-form" action="" method="post">
					<input type="text" placeholder="ID" name="username" />
					<input type="password" placeholder="Password" name="password" />
					<input type="submit" name="login" value="login"/>
				</form>
			</div>
		</div>
	</body>

</html>