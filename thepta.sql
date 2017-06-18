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
  `createdTs` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `fName`, `lName`, `mailId`, `gender`, `age`, `phoneNo`, `createdTs`) VALUES
(1, 'Raushan', 'Kumar', 'raushan.kumar@sakhatech.com', 'm', 28, '7815048200', '2017-06-12 04:24:32');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
