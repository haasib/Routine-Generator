<?php

include 'Database.php';

/**
* 
*/
class User {
	private $db;

	public function __construct() {
		$this -> db = new Database();
	}

	public function getLoginUser($username, $password)
	{
		$sql = "SELECT * FROM login WHERE username = :username AND password = :password LIMIT 1;";
		$query = $this->db->pdo->prepare($sql);
		$query->bindValue(':username', $username);
		$query->bindValue(':password', $password);
		$query->execute();
		$result = $query->fetch(PDO::FETCH_OBJ);
		return $result;
	}

	public function userLogin($username, $password)
	{
		if($username=="" OR $password=="") {
			return 'Fields must not be empty!';
		}

		$result = $this->getLoginUser($username, $password);

		if($result) {
			Session::init();
			Session::set('login', true);
			Session::set('username', $result->username);
			header('Location:home.php');
		}
		else {
			return 'Credentials not matched!!!';
		}

		return $result;
	}

}