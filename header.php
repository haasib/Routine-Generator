<?php
	include 'lib/Session.php';
	Session::init();

	ini_set('display_errors', 0);

	if (isset($_GET['action']) && $_GET['action'] == "logout") {
		Session::destroy();	
	}
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset = "utf-8"/>
		<title>RM System</title>
		<link rel="stylesheet" type="text/css" href="inc/css/style.css"/>		
	</head>
	<body>
		
		<?php include 'top-nav.php'; ?>
