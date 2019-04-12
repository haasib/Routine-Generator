<?php

include 'Database.php';
include 'Session.php';

Session::init();

class Routine
{
	private $db;

	public function __construct() 
	{
		$this->db = new Database();
	}

	public function getRoutine()
	{
		$username = Session::get('username');

		if(preg_match('/[a-zA-Z]+$/', $username)) 
		{
			// login as teacher
			$sql = "SELECT course.courseCode, routine.day, routine.time, semesterwisecourse.section, routine.room FROM semesterwisecourse JOIN course ON semesterwisecourse.idCourse = course.idCourse JOIN routine ON semesterwisecourse.idSemesterWiseCourse = routine.idsemesterwisecourse WHERE semesterwisecourse.idTeacher = ( SELECT teacher.idTeacher FROM teacher JOIN login ON teacher.teacherInitial = login.username AND login.username = :username) ORDER BY routine.day ASC, routine.time ASC";
		}
		elseif(preg_match('/[0-9]+$/', $username)) 
		{
			// login as student
			$sql = "SELECT course.courseCode, routine.day, routine.time, semesterwisecourse.section, routine.room FROM studentcourse JOIN routine ON studentcourse.idsemesterwisecourse = routine.idsemesterwisecourse JOIN semesterwisecourse ON studentcourse.idsemesterwisecourse = semesterwisecourse.idsemesterwisecourse JOIN course ON semesterwisecourse.idCourse = course.idCourse WHERE studentcourse.idstudent = ( SELECT student.idStudent FROM student JOIN login ON student.studentId = login.username AND login.username = :username) ORDER BY routine.day ASC, routine.time ASC;";
		}
		$query = $this->db->pdo->prepare($sql);
		$query->bindValue(':username', $username);
		$query->execute();
		$result = $query->fetchAll();
		return $result;
	}

	// public function teacherRoutine()
	// {
	// 	$day = array('', 'Saturday', 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday');
	// 	//return $day;


	// 	// query start
	// 	$username = Session::get('username');

	// 	// SELECT routine.day, routine.time, routine.room FROM routine WHERE idsemesterwisecourse IN (SELECT studentcourse.idsemesterwisecourse FROM studentcourse WHERE studentcourse.idStudent = ( SELECT student.idStudent FROM student JOIN login ON student.studentId = login.username AND login.username = '151-35-882')) ORDER BY day, time ASC

	// 	$sql = "SELECT routine.day, routine.time, routine.room FROM routine WHERE idsemesterwisecourse IN (SELECT studentcourse.idsemesterwisecourse FROM studentcourse WHERE studentcourse.idStudent = ( SELECT student.idStudent FROM student JOIN login ON student.studentId = login.username AND login.username = :username)) ORDER BY day, time ASC;";
	// 	$query = $this->db->pdo->prepare($sql);
	// 	$query->bindValue(':username', $username);
	// 	$query->execute();
	// 	$result = $query->fetchAll();
	// 	// query end


	// 	$data = array('day' => $day, 'query' => $result);

	// 	return $data;
	// }

	public function getStudentCourse()
	{
		$username = Session::get('username');

		if(preg_match('/[a-zA-Z]+$/', $username)) 
		{
			// login as Teacher
			$sql = "SELECT DISTINCT(course.courseCode), course.courseTitle, course.credit FROM course JOIN semesterwisecourse ON course.idCourse = semesterwisecourse.idCourse WHERE semesterwisecourse.idTeacher = (SELECT teacher.idTeacher from teacher join login on teacher.teacherInitial = login.username WHERE login.username = :username);";
		}
		elseif(preg_match('/[0-9]+$/', $username)) 
		{
			// login as student
			$sql = "SELECT course.courseCode, course.courseTitle, course.credit FROM course JOIN semesterwisecourse ON course.idCourse = semesterwisecourse.idCourse WHERE idsemesterwisecourse IN (SELECT studentcourse.idsemesterwisecourse FROM studentcourse WHERE studentcourse.idStudent = ( SELECT student.idStudent FROM student JOIN login ON student.studentId = login.username AND login.username = :username));";
		}

		$query = $this->db->pdo->prepare($sql);
		$query->bindValue(':username', $username);
		$query->execute();
		$result = $query->fetchAll();
		return $result;
	}



}