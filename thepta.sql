-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 12, 2017 at 05:37 PM
-- Server version: 5.6.33-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `thepta`
--

DROP DATABASE if exists `thepta`;
CREATE DATABASE IF NOT EXISTS `thepta` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `thepta`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `fName` varchar(128) DEFAULT NULL,
  `lName` varchar(128) DEFAULT NULL,
  `mailId` varchar(128) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL COMMENT 'm-male,f-female',
  `age` int(4) DEFAULT NULL,
  `phoneNo` varchar(14) NOT NULL,
  `address` varchar(512) DEFAULT NULL,
  `createdTs` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `password` varchar(128) DEFAULT NULL,
  `isTeacher` tinyint(1) DEFAULT '0',
  `isStudent` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `user`
--


INSERT INTO `user` (`userId`, `fName`, `lName`, `mailId`, `gender`, `age`, `phoneNo`, `address`, `createdTs`, `password`, `isTeacher`, `isStudent`) VALUES
(1, 'Raushan', 'Kumar', 'raushan.kumar@sakhatech.com', 'm', 28, '7815048200', 'Bangalore', '2017-06-11 22:54:32', '40be4e59b9a2a2b5dffb918c0e86b3d7', 0, 1),
(2, 'Tejash', 'Shrestha', 'shrestha.tejash@gmail.com', 'm', 21, '9620539938', 'Bangalore', '2017-06-20 06:54:32', '4a315d707428056419bbb4aafd3ad620', 0, 1),
(3, 'Supreetha', 'Achar', 'supreethaachar09@gmail.com', 'f', 20, '9740712402', 'Bangalore', '2017-06-11 22:54:32', '696321967550f9bd9397e1f44bdaa8a2', 0, 1),
(4, 'Suruchi', 'kumari', 'suruchirai.022@gmail.com', 'f', 21, '8951218781', 'Bangalore', '2017-06-11 22:54:32', 'b1758d8657f2b3eed3dd6bd44cad2f64', 0, 1),
(5, 'Prerana', 'Rani', 'prerana.rani1996@gmail.com', 'f', 32, '7353175506', 'Bangalore', '2017-06-11 22:54:32', '48b0169ca96683601f39c554bf934311', 0, 1),
(6, 'Medha', 'Mishra', 'medha009@gmail.com', 'f', 21, '9025614203', 'Bangalore', '2017-06-29 09:23:50', 'a61a55363ec35ed74b617f342352b96c', 0, 1),
(7, 'Priti', 'Kumari', 'pritijee6@gmail.com', 'f', 21, '8951119168', 'Bangalore', '2017-06-29 09:17:39', '03087548757591325c25a6161986b7f8', 0, 1),
(8, 'Vijaya', 'Shetty', 'vijaya100@gmail.com', 'f', 40, '7852364102', 'Bangalore', '2017-06-29 09:28:25', 'db8834197077287186e8c7524ca43d6f', 1, 0),
(9, 'Archana', 'Nayak', 'archana123@gmail.com', 'f', 36, '9536842078', 'Bangalore', '2017-06-29 09:28:25', '46ff90e8e3c3c1cb6cae3a539082ffc9', 1, 0),
(10, 'Pratibha', 'Ballal', 'pratibha123@gmail.com', 'f', 40, '8562486520', 'Bangalore', '2017-06-29 09:32:07', 'e4c75152da2adb01d664c1d5a236431f', 1, 0),
(11, 'Afroz', 'Pasha', 'afroz345@gmail.com', 'm', 42, '7469523140', 'Bangalore', '2017-06-29 09:32:07', '268db804a1ac71cbc437fabaa7752622', 1, 0),
(12, 'Mohan', 'BA', 'mohanba@gmail.com', 'm', 50, '7865239550', 'Bangalore', '2017-06-29 09:34:53', 'e9206237def4b4ef46fd933ed0f5a08f', 1, 0),
(13, 'Kavita', 'Sooda', 'kavita001@gmail.com', 'f', 35, '9620539920', 'Bangalore', '2017-06-29 09:34:53', '38bd642af5cc5256b92aca4c6bc35cf5', 1, 0),
(14, 'Ganesh', 'Panth', 'gannubaba@gmail.com', 'm', 30, '8562485502', 'Bangalore', '2017-06-29 09:38:32', 'fa1d87bc7f85769ea9dee2e4957321ae', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendanceId` int(11) NOT NULL AUTO_INCREMENT,
  `studentId` int(11) NOT NULL,
  `subjectId` int(11) NOT NULL,
  `classId` int(11) NOT NULL,
  `presentdays` int(5) NOT NULL,
  `absentdays` int(5) NOT NULL,
  `totaldays` int(6) NOT NULL,
  `attendancePercentage` int(4) NOT NULL,
  PRIMARY KEY (`attendanceId`)  
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE IF NOT EXISTS `classes` (
  `classId` int(11) NOT NULL AUTO_INCREMENT,
  `classesName` varchar(128) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`classId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`classId`, `classesName`) VALUES
(1, '1st Standard'),
(2, '2nd Standard'),
(3, '3rd Standard'),
(4, '4th Standard'),
(5, '5th Standard'),
(6, '6th Standard'),
(7, '7th Standard'),
(8, '8th Standard');


-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `feedbackId` int(11) NOT NULL AUTO_INCREMENT,
  `teacherId` int(11) NOT NULL,
  `subjectId` int(11) NOT NULL,
  `studentId` int(11) NOT NULL,
  `feedbackText` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`feedbackId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `homework`
--

CREATE TABLE IF NOT EXISTS `homework` (
  `homeworkId` int(11) NOT NULL AUTO_INCREMENT,
  `subjectId` int(11) NOT NULL,
  `teacherId` int(11) NOT NULL,
  `homeworkText` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`homeworkId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE IF NOT EXISTS `section` (
  `sectionIds` int(11) NOT NULL AUTO_INCREMENT,
  `sectionName` varchar(128) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`sectionIds`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`sectionIds`, `sectionName`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D'),
(5, 'E');


-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `studentId` int(11) NOT NULL AUTO_INCREMENT,
  `classId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  PRIMARY KEY (`studentId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentId`, `classId`, `sectionId`) VALUES
(1, 3, 1),
(2, 3, 2),
(3, 2, 1),
(4, 2, 1),
(5, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `subjectId` int(11) NOT NULL AUTO_INCREMENT,
  `subjectName` varchar(128) CHARACTER SET utf8 NOT NULL,
  `classId` int(11) NOT NULL,
  PRIMARY KEY (`subjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subjectId`, `subjectName`, `classId`) VALUES
(1001, 'Mathematics', 1),
(1002, 'English', 1),
(1003, 'Science', 1),
(1004, 'Social Studies', 1),
(2001, 'Mathematics', 2),
(2002, 'English', 2),
(2003, 'Science', 2),
(2004, 'Social Studies', 2),
(3001, 'Mathematics', 3),
(3002, 'Science', 3),
(3003, 'English', 3),
(3004, 'Social Studies', 3),
(4001, 'Mathematics', 4),
(4002, 'Science', 4),
(4003, 'English', 4),
(4004, 'Social Studies', 4);


-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `testId` int(11) NOT NULL AUTO_INCREMENT,
  `subjectId` int(11) NOT NULL,
  `teacherId` int(11) NOT NULL,
  `marks` int(4) NOT NULL,
  PRIMARY KEY (`testId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- ----------------------------------------------------------
--
-- Table structure for table `teacher-subject`
--

CREATE TABLE IF NOT EXISTS `teacher_subject` (
  `teacher_subjectId` int(11) NOT NULL AUTO_INCREMENT,
  `teacherId` int(11) NOT NULL,
  `classId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `subjectId` int(11) NOT NULL,
  PRIMARY KEY (`teacher_subjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- ---------------------------------------------------------


--
-- Table structure for table `test_marks`
--

CREATE TABLE IF NOT EXISTS `test_marks` (
  `test_marksId` int(11) NOT NULL AUTO_INCREMENT,
  `testId` int(11) NOT NULL,
  `studentId` int(11) NOT NULL,
  `subjectId` int(11) NOT NULL,
  `obtanedMarks` int(4) NOT NULL,
  `result` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`test_marksId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


 
 

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
