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
(14, 'Ganesh', 'Panth', 'gannubaba@gmail.com', 'm', 30, '8562485502', 'Bangalore', '2017-06-29 09:38:32', 'fa1d87bc7f85769ea9dee2e4957321ae', 1, 0),
(15, 'Saumya', 'R', 'saumya123@gmail.com', 'f', 35, '8625936522', 'Bangalore', '2017-07-03 04:38:03', '5b2aaf7ba5628ded9ada39a5c9a2c46e', 1, 0),
(16, 'Shobhana', 'Rao', 'shobhana716@gmail.com', 'f', 30, '7458263910', 'Bangalore', '2017-07-03 04:38:03', '0226d5b6d5f7fc7b38cbe5b52a62c815', 1, 0),
(17, 'Ashwini', 'Jp', 'ashwini800@gmail.com', 'f', 32, '7584422036', 'Bangalopre', '2017-07-03 04:40:43', 'ff0eef605a66301097c87d2724025384', 1, 0),
(18, 'Sanketh', 'Salvi', 'sankethnmit@gmail.com', 'm', 31, '9563320115', 'Bangalore', '2017-07-03 04:40:43', 'ab34b9e99074ad38ebb49d130c3d8198', 1, 0),
(19, 'Sujatha', 'Joshi', 'sujatha011@gmail.com', 'f', 40, '7541120036', 'Bangalore', '2017-07-03 04:44:39', 'a456d9b63119588568e98cb27a5e2a52', 1, 0),
(20, 'Nagaraj', 'Rao', 'nagarajnmit@gmail.com', 'm', 36, '9886482255', 'Bangalore', '2017-07-03 04:44:39', '306208cbd8906746df9ecb0316b71ad2', 1, 0),
(21, 'Mansa', 'Gowda', 'mansagowda2gmail.com', 'f', 30, '9682033025', 'Bangalore', '2017-07-03 04:48:48', '8aab326bd2c6be65b978b4131dee6848', 1, 0),
(22, 'Vidya', 'Kumari', 'vidya022@gmail.com', 'f', 40, '9482073990', 'Bangalore', '2017-07-03 04:48:48', '4dc13c8aa6371cbcb715d66f351ca293', 1, 0),
(23, 'Nigam', 'Paudel', 'nigampaudel@gmail.com', 'm', 21, '9620529985', 'Bangalore', '2017-07-03 04:54:30', '6d7e8664505010dc18f6d3c3f31b585a', 0, 1),
(24, 'Nitish', 'Kafle', 'nitish123@gmail.com', 'm', 21, '9886485533', 'Bangalore', '2017-07-03 04:54:30', 'fde62956f023ab40685ecceee22c402e', 0, 1),
(25, 'Akshatha', 'Nayak', 'nayakakshatha@gmail.com', 'f', 21, '9480737110', 'Bangalore', '2017-07-03 04:59:03', 'a56eaad23c8319b792617c10861c0015', 0, 1),
(26, 'Nathasha', 'Ramesh', 'nathasharamesh@gmail.com', 'f', 20, '7845120369', 'Bangalore', '2017-07-03 04:59:03', 'ddce7a0ea584f242f473cde80e0fbe84', 0, 1),
(27, 'Megha', 'Poojari', 'meghabvr@gmail.com', 'f', 21, '8552663300', 'Bangalore', '2017-07-03 05:01:58', '13e96516ed6773efbe6c51dadb8e2856', 0, 1),
(28, 'Pratiksha', 'Rai', 'pratiksha123@gmail.com', 'f', 22, '9663356440', 'Bangalore', '2017-07-03 05:01:58', 'acf48cde9806f74929606d54f1730005', 0, 1),
(29, 'Prasuna', 'Reddy', 'prasunanmit@gmail.com', 'f', 21, '7445622003', 'Bangalore', '2017-07-03 05:06:13', '26370e25a698a435463b7d9dcbd0b8b1', 0, 1),
(30, 'Anisha', 'Shrestha', 'shresthaanisha@gmail.com', 'f', 20, '8556622330', 'Bangalore', '2017-07-03 05:06:13', '759adfcf909ea2f9bd083e8b60cbb6d4', 0, 1),
(31, 'Shashi', 'Shrestha', 'shashi123@gmail.com', 'f', 20, '9480839938', 'Bangalore', '2017-07-03 05:39:35', '11eba10d3544ac6d881143c0ecb59852', 0, 1),
(32, 'Trishan', 'Shrestha', 'trishan033@gmail.com', 'm', 15, '7123002560', 'Bangalore', '2017-07-03 05:39:35', '38086dcb8cc56c14a8b2285439e208c4', 0, 1),
(33, 'Sushma', 'Achar', 'sushmaachar@gmail.com', 'f', 22, '9782053992', 'Bangalore', '2017-07-03 05:39:35', 'e41e25979bc909c51157039ec1b2b2a3', 0, 1),
(34, 'Shrisha', 'Vaidya', 'shrish123@gmail.com', 'm', 20, '8552663300', 'Bangalore', '2017-07-03 05:39:35', 'd90e13bd7052ada74d0ac1ddbe177360', 0, 1),
(35, 'Mona', 'Oraon', 'mona123@gmail.com', 'f', 21, '8663320123', 'Bangalore', '2017-07-03 05:39:35', '4af5cab77c62eaec5f87b570f2d2b127', 0, 1),
(36, 'Meghna', 'Nayak', 'meghnanayak@gmail.com', 'f', 22, '9886482233', 'Bangalore', '2017-07-03 05:39:35', 'ef5d369314eb5b845bd6f520a2eaee68', 0, 1),
(37, 'Sindhu', 'R', 'sindhunmit@gmail.com', 'f', 21, '9663620012', 'Bangalore', '2017-07-03 05:39:35', 'cb626e8cb0e7d26c8bcbe8a7d31f980e', 0, 1),
(38, 'Arpitha', 'Yadav', 'arpithayadav@gmail.com', 'f', 23, '9031146469', 'Bangalore', '2017-07-03 05:39:35', '94d96d6e3fe6914bd1c7451236173dde', 0, 1),
(39, 'Namitha', 'Mn', 'namithamn@gmail.com', 'f', 21, '9663322030', 'Bangalore', '2017-07-03 05:39:35', '4d6c57324bebe9e244be3e1faf150a97', 0, 1),
(40, 'Suwan', 'Shrestha', 'suwanshrestha@gmail.com', 'f', 22, '9523012503', 'Bangalore', '2017-07-03 05:39:35', 'c8be6f443c63cdbd592755e11c71991a', 0, 1);


-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendanceId` int(11) NOT NULL AUTO_INCREMENT,
  `studentId` int(11) NOT NULL,
  `classId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `subjectId` int(11) NOT NULL,  
  `presentdays` int(5) DEFAULT '0',
  `absentdays` int(5) NOT NULL DEFAULT '0',
  `totaldays` int(6) NOT NULL DEFAULT '0',
  `attendancePercentage` float(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`attendanceId`)  
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendanceId`, `studentId`, `classId`, `sectionId`, `subjectId`, `presentdays`, `absentdays`, `totaldays`, `attendancePercentage`) VALUES
(1, 1, 3, 1, 3001, 0, 0, 0, 0),
(2, 1, 3, 1, 3002, 0, 0, 0, 0),
(3, 1, 3, 1, 3003, 0, 0, 0, 0),
(4, 1, 3, 1, 3004, 0, 0, 0, 0),
(5, 2, 3, 2, 3001, 0, 0, 0, 0),
(6, 2, 3, 2, 3002, 0, 0, 0, 0),
(7, 2, 3, 2, 3003, 0, 0, 0, 0),
(8, 2, 3, 2, 3004, 0, 0, 0, 0),
(9, 3, 2, 1, 2001, 0, 0, 0, 0),
(10, 3, 2, 1, 2001, 0, 0, 0, 0),
(11, 3, 2, 1, 2002, 0, 0, 0, 0),
(12, 3, 2, 1, 2003, 0, 0, 0, 0),
(13, 4, 2, 1, 2004, 0, 0, 0, 0),
(14, 4, 2, 1, 2001, 0, 0, 0, 0),
(15, 4, 2, 1, 2002, 0, 0, 0, 0),
(16, 4, 2, 1, 2003, 0, 0, 0, 0),
(17, 4, 2, 1, 2004, 0, 0, 0, 0),
(18, 5, 3, 1, 3001, 0, 0, 0, 0),
(19, 5, 3, 1, 3002, 0, 0, 0, 0),
(20, 5, 3, 1, 3003, 0, 0, 0, 0),
(21, 5, 3, 1, 3004, 0, 0, 0, 0),
(22, 6, 1, 3, 1001, 0, 0, 0, 0),
(23, 6, 1, 3, 1002, 0, 0, 0, 0),
(24, 6, 1, 3, 1003, 0, 0, 0, 0),
(25, 6, 1, 3, 1004, 0, 0, 0, 0),
(26, 7, 4, 2, 4001, 0, 0, 0, 0),
(27, 7, 4, 2, 4002, 0, 0, 0, 0),
(28, 7, 4, 2, 4003, 0, 0, 0, 0),
(29, 7, 4, 2, 4004, 0, 0, 0, 0),
(30, 23, 4, 5, 4001, 0, 0, 0, 0),
(31, 23, 4, 5, 4002, 0, 0, 0, 0),
(32, 23, 4, 5, 4003, 0, 0, 0, 0),
(33, 23, 4, 5, 4004, 0, 0, 0, 0),
(34, 24, 6, 1, 6001, 0, 0, 0, 0),
(35, 24, 6, 1, 6002, 0, 0, 0, 0),
(36, 24, 6, 1, 6003, 0, 0, 0, 0),
(37, 24, 6, 1, 6004, 0, 0, 0, 0),
(38, 24, 6, 1, 6005, 0, 0, 0, 0),
(39, 25, 7, 3, 7001, 0, 0, 0, 0),
(40, 25, 7, 3, 7002, 0, 0, 0, 0),
(41, 25, 7, 3, 7003, 0, 0, 0, 0),
(42, 25, 7, 3, 7004, 0, 0, 0, 0),
(43, 25, 7, 3, 7005, 0, 0, 0, 0),
(44, 26, 3, 1, 3001, 0, 0, 0, 0),
(45, 26, 3, 1, 3002, 0, 0, 0, 0),
(46, 26, 3, 1, 3003, 0, 0, 0, 0),
(47, 26, 3, 1, 3004, 0, 0, 0, 0),
(48, 27, 3, 1, 3001, 0, 0, 0, 0),
(49, 27, 3, 1, 3002, 0, 0, 0, 0),
(50, 27, 3, 1, 3003, 0, 0, 0, 0),
(51, 27, 3, 1, 3004, 0, 0, 0, 0),
(52, 28, 3, 1, 3001, 0, 0, 0, 0),
(53, 28, 3, 1, 3002, 0, 0, 0, 0),
(54, 28, 3, 1, 3003, 0, 0, 0, 0),
(55, 28, 3, 1, 3004, 0, 0, 0, 0),
(56, 29, 3, 1, 3001, 0, 0, 0, 0),
(57, 29, 3, 1, 3002, 0, 0, 0, 0),
(58, 29, 3, 1, 3003, 0, 0, 0, 0),
(59, 29, 3, 1, 3004, 0, 0, 0, 0),
(60, 30, 3, 1, 3001, 0, 0, 0, 0),
(61, 30, 3, 1, 3002, 0, 0, 0, 0),
(62, 30, 3, 1, 3003, 0, 0, 0, 0),
(63, 30, 3, 1, 3004, 0, 0, 0, 0),
(64, 31, 5, 2, 5001, 0, 0, 0, 0),
(65, 31, 5, 2, 5002, 0, 0, 0, 0),
(66, 31, 5, 2, 5003, 0, 0, 0, 0),
(67, 31, 5, 2, 5004, 0, 0, 0, 0),
(68, 31, 5, 2, 5005, 0, 0, 0, 0),
(69, 32, 5, 2, 5001, 0, 0, 0, 0),
(70, 32, 5, 2, 5002, 0, 0, 0, 0),
(71, 32, 5, 2, 5003, 0, 0, 0, 0),
(72, 32, 5, 2, 5004, 0, 0, 0, 0),
(73, 32, 5, 2, 5005, 0, 0, 0, 0),
(74, 33, 5, 2, 5001, 0, 0, 0, 0),
(75, 33, 5, 2, 5002, 0, 0, 0, 0),
(76, 33, 5, 2, 5003, 0, 0, 0, 0),
(77, 33, 5, 2, 5004, 0, 0, 0, 0),
(78, 33, 5, 2, 5005, 0, 0, 0, 0),
(79, 34, 5, 2, 5001, 0, 0, 0, 0),
(80, 34, 5, 2, 5002, 0, 0, 0, 0),
(81, 34, 5, 2, 5003, 0, 0, 0, 0),
(82, 34, 5, 2, 5004, 0, 0, 0, 0),
(83, 34, 5, 2, 5005, 0, 0, 0, 0),
(84, 35, 5, 2, 5001, 0, 0, 0, 0),
(85, 35, 5, 2, 5002, 0, 0, 0, 0),
(86, 35, 5, 2, 5003, 0, 0, 0, 0),
(87, 35, 5, 2, 5004, 0, 0, 0, 0),
(88, 35, 5, 2, 5005, 0, 0, 0, 0),
(89, 36, 5, 2, 5001, 0, 0, 0, 0),
(90, 36, 5, 2, 5002, 0, 0, 0, 0),
(91, 36, 5, 2, 5003, 0, 0, 0, 0),
(92, 36, 5, 2, 5004, 0, 0, 0, 0),
(93, 36, 5, 2, 5005, 0, 0, 0, 0),
(94, 37, 5, 2, 5001, 0, 0, 0, 0),
(95, 37, 5, 2, 5002, 0, 0, 0, 0),
(96, 37, 5, 2, 5003, 0, 0, 0, 0),
(97, 37, 5, 2, 5004, 0, 0, 0, 0),
(98, 37, 5, 2, 5005, 0, 0, 0, 0);
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
(8, '8th Standard'),
(9, '9th Standard');


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
  `homeworkFileContent` text CHARACTER SET utf8 NOT NULL,
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
(5, 3, 1),
(6, 1, 3),
(7, 4, 2),
(23, 4, 5),
(24, 6, 1),
(25, 7, 3),
(26, 3, 1),
(27, 3, 1),
(28, 3, 1),
(29, 3, 1),
(30, 3, 1),
(31, 5, 2),
(32, 5, 2),
(33, 5, 2),
(34, 5, 2),
(35, 5, 2),
(36, 5, 2),
(37, 5, 2),
(38, 4, 3),
(39, 4, 3),
(40, 4, 3);

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
(4004, 'Social Studies', 4),
(5001, 'Mathematics', 5),
(5002, 'English', 5),
(5003, 'Science', 5),
(5004, 'Social Studies', 5),
(5005, 'Computer Science', 5),
(6001, 'Mathematics', 6),
(6002, 'English', 6),
(6003, 'Science', 6),
(6004, 'Social Studies', 6),
(6005, 'Computer Science', 6),
(7001, 'Mathematics', 7),
(7002, 'English', 7),
(7003, 'Science', 7),
(7004, 'Social Studies', 7),
(7005, 'Computer Science', 7),
(7006, 'Environment and health', 7),
(8001, 'Mathematics', 8),
(8002, 'English', 8),
(8003, 'Science', 8),
(8004, 'Social Studies', 8),
(8005, 'Computer Science', 8),
(8006, 'Environment and health', 8),
(9001, 'Mathematics', 9),
(9002, 'English', 9),
(9003, 'Science', 9),
(9004, 'Social Studies', 9),
(9005, 'Computer Science', 9),
(9006, 'Environment and health', 9),
(9007, 'Optional Math', 9);


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
-- Table structure for table `teacher_subject`
--

CREATE TABLE IF NOT EXISTS `teacher_subject` (
  `teacher_subjectId` int(11) NOT NULL AUTO_INCREMENT,
  `teacherId` int(11) NOT NULL,
  `classId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `subjectId` int(11) NOT NULL,
  PRIMARY KEY (`teacher_subjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

--
-- Dumping data for table `teacher_subject`
--

INSERT INTO `teacher_subject` (`teacher_subjectId`, `teacherId`, `classId`, `sectionId`, `subjectId`) VALUES
(1, 8, 1, 1, 1001),
(2, 9, 1, 1, 1002),
(3, 10, 1, 1, 1003),
(4, 11, 1, 1, 1004),
(5, 8, 1, 2, 1001),
(6, 9, 1, 2, 1002),
(7, 10, 1, 2, 1003),
(8, 11, 1, 2, 1004),
(9, 8, 2, 1, 2001),
(10, 9, 2, 1, 2002),
(11, 10, 2, 1, 2003),
(12, 11, 2, 1, 2004),
(13, 8, 2, 2, 2001),
(14, 9, 2, 2, 2002),
(15, 10, 2, 2, 2003),
(16, 11, 2, 2, 2004),
(17, 8, 3, 1, 3001),
(18, 9, 3, 1, 3002),
(19, 10, 3, 1, 3003),
(20, 11, 3, 1, 3004),
(21, 8, 3, 2, 3001),
(22, 9, 3, 2, 3002),
(23, 10, 3, 2, 3003),
(24, 11, 3, 2, 3004),
(25, 12, 4, 1, 4001),
(26, 13, 4, 1, 4002),
(27, 14, 4, 1, 4003),
(28, 15, 4, 1, 4004),
(29, 12, 4, 2, 4001),
(30, 13, 4, 2, 4002),
(31, 14, 4, 2, 4003),
(32, 15, 4, 2, 4004),
(33, 12, 5, 1, 5001),
(34, 13, 5, 1, 5002),
(35, 14, 5, 1, 5003),
(36, 15, 5, 1, 5004),
(37, 16, 5, 1, 5005),
(38, 12, 5, 2, 5001),
(39, 13, 5, 2, 5002),
(40, 14, 5, 2, 5003),
(41, 15, 5, 2, 5004),
(42, 16, 5, 2, 5005),
(43, 12, 6, 1, 6001),
(44, 13, 6, 1, 6002),
(45, 14, 6, 1, 6003),
(51, 15, 6, 1, 6004),
(52, 16, 6, 1, 6005),
(53, 12, 6, 2, 6001),
(54, 13, 6, 2, 6002),
(55, 14, 6, 2, 6003),
(56, 15, 6, 2, 6004),
(57, 16, 6, 2, 6005),
(58, 12, 7, 1, 7001),
(59, 13, 7, 1, 7002),
(60, 14, 7, 1, 7003),
(61, 15, 7, 1, 7004),
(62, 16, 7, 1, 7005),
(63, 17, 7, 1, 7006),
(64, 12, 7, 2, 7001),
(65, 13, 7, 2, 7002),
(66, 14, 7, 2, 7003),
(67, 15, 7, 2, 7004),
(68, 16, 7, 2, 7005),
(69, 17, 7, 2, 7006),
(70, 12, 8, 1, 8001),
(71, 13, 8, 1, 8002),
(72, 14, 8, 1, 8003),
(73, 15, 8, 1, 8004),
(74, 16, 8, 1, 8005),
(75, 17, 8, 1, 8006),
(76, 12, 8, 2, 8001),
(77, 13, 8, 2, 8002),
(78, 14, 8, 2, 8003),
(79, 15, 8, 2, 8004),
(80, 16, 8, 2, 8005),
(81, 17, 8, 2, 8006),
(82, 17, 9, 1, 9001),
(83, 18, 9, 1, 9002),
(84, 19, 9, 1, 9003),
(85, 20, 9, 1, 9004),
(86, 21, 9, 1, 9005),
(87, 22, 9, 1, 9006),
(88, 22, 9, 1, 9007),
(89, 17, 9, 2, 9001),
(90, 18, 9, 2, 9002),
(91, 19, 9, 2, 9003),
(92, 20, 9, 2, 9004),
(93, 21, 9, 2, 9005),
(94, 22, 9, 2, 9006),
(95, 22, 9, 2, 9007),
(96, 17, 9, 3, 9001),
(97, 18, 9, 3, 9002),
(98, 19, 9, 3, 9003),
(99, 20, 9, 3, 9004),
(100, 21, 9, 3, 9005),
(101, 22, 9, 3, 9006),
(102, 22, 9, 3, 9007);

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
