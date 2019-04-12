-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2018 at 12:04 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rmdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `idCourse` int(11) NOT NULL,
  `courseCode` varchar(30) NOT NULL,
  `courseTitle` varchar(255) NOT NULL,
  `credit` int(11) NOT NULL,
  `type` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`idCourse`, `courseCode`, `courseTitle`, `credit`, `type`) VALUES
(1, 'SWE332', 'Software Engineering Project II', 3, 'Project'),
(2, 'SWE423', 'Advanced Database with Lab', 3, 'Theory'),
(3, 'SWE423LAB', 'Advanced Database with Lab', 1, 'Lab'),
(4, 'SWE425', 'Telecommunication Engineering with Lab', 3, 'Theory'),
(5, 'SWE425LAB', 'Telecommunication Engineering with Lab', 1, 'Lab'),
(6, 'SWE426', 'Distributive Computing and Network Secur', 3, 'Theory'),
(7, 'SWE426LAB', 'Distributive Computing and Network Secur', 1, 'Lab'),
(8, 'SWE323', 'System Analysis and Design', 3, 'Theory'),
(9, 'SWE211', 'Introduction to Database with Lab', 3, 'Theory'),
(10, 'SWE211LAB', 'Introduction to Database with Lab', 1, 'Lab'),
(11, 'SWE222', 'Software Engineering Quality Assurance a', 3, 'Theory'),
(12, 'SWE223', 'Digital Electronics with Lab', 3, 'Theory'),
(13, 'SWE223LAB', 'Digital Electronics with Lab', 1, 'Lab'),
(14, 'SWE224', 'Discrete Mathematics', 3, 'Theory'),
(15, 'SWE233', 'Object Oriented Concept & Design with La', 3, 'Theory'),
(16, 'SWE233LAB', 'Object Oriented Concept & Design with La', 1, 'Lab');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('123-45-678', '12345'),
('151-35-1033', 'jadab'),
('151-35-873', '1234'),
('151-35-882', '4321'),
('IAE', '54321');

-- --------------------------------------------------------

--
-- Table structure for table `routine`
--

CREATE TABLE `routine` (
  `idRoutine` int(11) NOT NULL,
  `idsemesterwisecourse` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `room` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `routine`
--

INSERT INTO `routine` (`idRoutine`, `idsemesterwisecourse`, `day`, `time`, `room`) VALUES
(1, 5, 2, 4, '504AB'),
(2, 5, 6, 3, '605AB'),
(3, 52, 2, 6, '607AB'),
(4, 52, 6, 4, '605AB'),
(5, 10, 1, 4, '607AB'),
(6, 10, 2, 2, '405AB'),
(7, 15, 2, 6, '405AB'),
(8, 53, 1, 3, '405AB'),
(9, 20, 2, 5, '607AB'),
(10, 20, 4, 6, '601AB'),
(11, 25, 6, 4, '507MB'),
(12, 54, 6, 5, '507MB'),
(13, 30, 1, 5, '601AB'),
(14, 30, 4, 5, '601AB'),
(15, 35, 1, 6, '304AB'),
(16, 55, 2, 3, '405AB'),
(17, 3, 2, 3, '504AB'),
(18, 3, 3, 5, '605AB'),
(19, 60, 3, 6, '605AB'),
(20, 60, 6, 6, '605AB'),
(21, 38, 4, 3, '405PC'),
(22, 38, 4, 4, '405PC'),
(23, 39, 2, 2, '607AB'),
(24, 39, 5, 6, '502AB');

-- --------------------------------------------------------

--
-- Table structure for table `semesterwisecourse`
--

CREATE TABLE `semesterwisecourse` (
  `idSemesterWiseCourse` int(11) NOT NULL,
  `idCourse` int(11) NOT NULL,
  `section` varchar(10) NOT NULL,
  `semesterName` varchar(20) NOT NULL,
  `idTeacher` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semesterwisecourse`
--

INSERT INTO `semesterwisecourse` (`idSemesterWiseCourse`, `idCourse`, `section`, `semesterName`, `idTeacher`) VALUES
(1, 1, 'A', 'Spring2018', 11),
(2, 1, 'B', 'Spring2018', 12),
(3, 1, 'C1', 'Spring2018', 1),
(4, 1, 'D', 'Spring2018', 12),
(5, 1, 'E1', 'Spring2018', 1),
(6, 2, 'A', 'Spring2018', 13),
(7, 2, 'B', 'Spring2018', 3),
(8, 2, 'C', 'Spring2018', 15),
(9, 2, 'D', 'Spring2018', 3),
(10, 2, 'E', 'Spring2018', 3),
(11, 3, 'A', 'Spring2018', 3),
(12, 3, 'B', 'Spring2018', 3),
(13, 3, 'C', 'Spring2018', 3),
(14, 3, 'D', 'Spring2018', 3),
(15, 3, 'E1', 'Spring2018', 3),
(16, 4, 'A', 'Spring2018', 10),
(17, 4, 'B', 'Spring2018', 10),
(18, 4, 'C', 'Spring2018', 10),
(19, 4, 'D', 'Spring2018', 2),
(20, 4, 'E', 'Spring2018', 2),
(21, 5, 'A', 'Spring2018', 10),
(22, 5, 'B', 'Spring2018', 10),
(23, 5, 'C', 'Spring2018', 2),
(24, 5, 'D', 'Spring2018', 2),
(25, 5, 'E1', 'Spring2018', 2),
(26, 6, 'A', 'Spring2018', 16),
(27, 6, 'B', 'Spring2018', 16),
(28, 6, 'C', 'Spring2018', 16),
(29, 6, 'D', 'Spring2018', 4),
(30, 6, 'E', 'Spring2018', 4),
(31, 7, 'A', 'Spring2018', 16),
(32, 7, 'B', 'Spring2018', 16),
(33, 7, 'C', 'Spring2018', 16),
(34, 7, 'D', 'Spring2018', 17),
(35, 7, 'E1', 'Spring2018', 17),
(36, 8, 'A', 'Spring2018', 18),
(37, 8, 'B', 'Spring2018', 1),
(38, 8, 'C', 'Spring2018', 12),
(39, 9, 'D', 'Spring2018', 2),
(40, 11, 'A', 'Spring2018', 6),
(41, 11, 'B', 'Spring2018', 6),
(42, 12, 'A', 'Spring2018', 10),
(43, 12, 'B', 'Spring2018', 9),
(44, 13, 'A1', 'Spring2018', 9),
(45, 13, 'B1', 'Spring2018', 9),
(46, 14, 'A', 'Spring2018', 8),
(47, 14, 'B', 'Spring2018', 8),
(48, 15, 'A', 'Spring2018', 7),
(49, 15, 'B', 'Spring2018', 6),
(50, 16, 'A1', 'Spring2018', 5),
(51, 16, 'B1', 'Spring2018', 6),
(52, 1, 'E2', 'Spring2018', 1),
(53, 3, 'E2', 'Spring2018', 3),
(54, 5, 'E2', 'Spring2018', 2),
(55, 7, 'E2', 'Spring2018', 4),
(56, 13, 'A2', 'Spring2018', 9),
(57, 13, 'B2', 'Spring2018', 9),
(58, 16, 'A2', 'Spring2018', 5),
(59, 17, 'B2', 'Spring2018', 6),
(60, 1, 'C2', 'Spring2018', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `idStudent` int(11) NOT NULL,
  `studentId` varchar(30) NOT NULL,
  `studentName` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`idStudent`, `studentId`, `studentName`) VALUES
(1, '151-35-873', 'Hasib'),
(2, '151-35-882', 'Nirob'),
(3, '151-35-1033', 'Jadab'),
(4, '123-45-678', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `studentcourse`
--

CREATE TABLE `studentcourse` (
  `idStudentCourse` int(11) NOT NULL,
  `idstudent` int(11) NOT NULL,
  `idsemesterwisecourse` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentcourse`
--

INSERT INTO `studentcourse` (`idStudentCourse`, `idstudent`, `idsemesterwisecourse`) VALUES
(1, 1, 52),
(2, 1, 10),
(3, 1, 53),
(4, 1, 20),
(5, 1, 54),
(6, 1, 30),
(7, 1, 55),
(8, 2, 52),
(9, 2, 10),
(10, 2, 53),
(11, 2, 20),
(12, 2, 54),
(13, 2, 30),
(14, 2, 55),
(15, 3, 5),
(16, 3, 20),
(17, 3, 25),
(18, 3, 30),
(19, 3, 35),
(20, 4, 40),
(21, 4, 42),
(22, 4, 44),
(23, 4, 46),
(24, 4, 48),
(25, 4, 50);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `idTeacher` int(11) NOT NULL,
  `teacherInitial` varchar(20) NOT NULL,
  `teacherName` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`idTeacher`, `teacherInitial`, `teacherName`) VALUES
(1, 'IAE', 'Iftekhar Alam Efat'),
(2, 'HR', 'Habibur Rahman'),
(3, 'SSH', 'Syeda Sumbul Hossain'),
(4, 'MH', 'Maruf Hasan'),
(5, 'MMR', 'Sheikh Mohammad Matiur Rahman'),
(6, 'RI', 'Rayhanul Islam Rumel'),
(7, 'MR', 'Mushfiqur Rahman'),
(8, 'NN', 'Nazia Nishat'),
(9, 'DBZ', 'Dara Bin Zaid'),
(10, 'SP', 'Shayla Parvin'),
(11, 'AKS', 'Asif Khan Shakir'),
(12, 'AK', 'Alamgir Kabir Sagar'),
(13, 'DTB', 'Dr Touhid Bhuiyan'),
(15, 'TRT', 'Tapushe Rabaya Toma'),
(16, 'SN', 'Samia Nasrin'),
(17, 'MS', 'Mubashir Sadat'),
(18, 'MKS', 'M Khaled Sohel');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`idCourse`),
  ADD UNIQUE KEY `courseCode` (`courseCode`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `routine`
--
ALTER TABLE `routine`
  ADD PRIMARY KEY (`idRoutine`),
  ADD KEY `idsemesterwisecourse` (`idsemesterwisecourse`);

--
-- Indexes for table `semesterwisecourse`
--
ALTER TABLE `semesterwisecourse`
  ADD PRIMARY KEY (`idSemesterWiseCourse`),
  ADD KEY `idCourse` (`idCourse`),
  ADD KEY `idTeacher` (`idTeacher`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`idStudent`),
  ADD UNIQUE KEY `studentId` (`studentId`);

--
-- Indexes for table `studentcourse`
--
ALTER TABLE `studentcourse`
  ADD PRIMARY KEY (`idStudentCourse`),
  ADD KEY `idsemesterwisecourse` (`idsemesterwisecourse`),
  ADD KEY `idstudent` (`idstudent`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`idTeacher`),
  ADD UNIQUE KEY `teacherInitial` (`teacherInitial`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `idCourse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `routine`
--
ALTER TABLE `routine`
  MODIFY `idRoutine` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `semesterwisecourse`
--
ALTER TABLE `semesterwisecourse`
  MODIFY `idSemesterWiseCourse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `idStudent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `studentcourse`
--
ALTER TABLE `studentcourse`
  MODIFY `idStudentCourse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `idTeacher` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `routine`
--
ALTER TABLE `routine`
  ADD CONSTRAINT `routine_ibfk_1` FOREIGN KEY (`idsemesterwisecourse`) REFERENCES `semesterwisecourse` (`idSemesterWiseCourse`);

--
-- Constraints for table `studentcourse`
--
ALTER TABLE `studentcourse`
  ADD CONSTRAINT `studentcourse_ibfk_1` FOREIGN KEY (`idsemesterwisecourse`) REFERENCES `semesterwisecourse` (`idSemesterWiseCourse`),
  ADD CONSTRAINT `studentcourse_ibfk_2` FOREIGN KEY (`idstudent`) REFERENCES `student` (`idStudent`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
