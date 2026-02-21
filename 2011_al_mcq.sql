-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 21, 2026 at 10:23 AM
-- Server version: 8.4.7
-- PHP Version: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2011_al_mcq`
--

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

DROP TABLE IF EXISTS `mark`;
CREATE TABLE IF NOT EXISTS `mark` (
  `addno` int NOT NULL,
  `subcode` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marksobtained` int NOT NULL,
  PRIMARY KEY (`addno`,`subcode`),
  KEY `subcode` (`subcode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mark`
--

INSERT INTO `mark` (`addno`, `subcode`, `marksobtained`) VALUES
(1, 'artg11', 75),
(10, 'accg12', 79),
(11, 'scg10', 55);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `addno` int NOT NULL,
  `stname` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nic` int NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateofbirth` date NOT NULL,
  PRIMARY KEY (`addno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`addno`, `stname`, `nic`, `address`, `dateofbirth`) VALUES
(1, 'Mewan', 2147483647, 'Matara', '2000-05-18'),
(10, 'Dunk', 2147483647, 'Galle', '2000-01-10'),
(11, 'Dude', 2147483647, 'Matara', '2001-04-28');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `subcode` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subname` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`subcode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subcode`, `subname`) VALUES
('scg10', 'Science'),
('artg11', 'art'),
('accg12', 'accounting');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `teacherno` int NOT NULL,
  `teachername` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` char(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcode` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`teacherno`),
  KEY `subcode` (`subcode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacherno`, `teachername`, `class`, `subcode`) VALUES
(75, 'Saman', 'G11', 'artg11'),
(105, 'Rathnayaka', 'G10', 'scg10'),
(55, 'Kumara', 'G12', 'accg12');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
