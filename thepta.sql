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
(1, 'Raushan', 'Kumar', 'raushan.kumar@sakhatech.com', 'm', 28, '7815048200', 'Bangalore', '2017-06-12 04:24:32', 'welcome', '0', '1');

INSERT INTO `user` (`userId`, `fName`, `lName`, `mailId`, `gender`, `age`, `phoneNo`, `address`, `createdTs`, `password`, `isTeacher`, `isStudent`) VALUES
(2, 'Tejash', 'Shrestha', 'shrestha.tejash@gmail.com', 'm', 21, '9620539938', 'Bangalore', '2017-06-20 12:24:32', 'shrestha', '0', '1');

INSERT INTO `user` (`userId`, `fName`, `lName`, `mailId`, `gender`, `age`, `phoneNo`, `address`, `createdTs`, `password`, `isTeacher`, `isStudent`) VALUES 
(3, 'Supreetha', 'Achar', 'supreethaachar09@gmail.com', 'f', 20, '9740712402', 'Bangalore', '2017-06-12 04:24:32', 'supreetha', '0', '1');

INSERT INTO `user` (`userId`, `fName`, `lName`, `mailId`, `gender`, `age`, `phoneNo`, `address`, `createdTs`, `password`, `isTeacher`, `isStudent`) VALUES 
(4, 'Suruchi', 'kumari', 'suruchirai.022@gmail.com', 'f', 21, '8951218781', 'Bangalore', '2017-06-12 04:24:32', 'suruchi', '0', '1');

INSERT INTO `user` (`userId`, `fName`, `lName`, `mailId`, `gender`, `age`, `phoneNo`, `address`, `createdTs`, `password`, `isTeacher`, `isStudent`) VALUES 
(5, 'Prerana', 'Rani', 'prerana.rani1996@gmail.com', 'f', 32, '7353175506', 'Bangalore', '2017-06-12 04:24:32', 'prerana', '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE IF NOT EXISTS `attendance` (
  `attendanceId` int(11) NOT NULL AUTO_INCREMENT,
  `studentId` int(11) NOT NULL,
  `subjectId` int(11) NOT NULL,
  `classId` int(11) NOT NULL,
  `attendancePercentage` int(4) NOT NULL,
  PRIMARY KEY (`attendanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE IF NOT EXISTS `classes` (
  `classesId` int(11) NOT NULL AUTO_INCREMENT,
  `classesName` varchar(128) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`classesId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
