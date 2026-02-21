-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 21, 2026 at 11:12 AM
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
-- Database: `2011_al_essay`
--

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
CREATE TABLE IF NOT EXISTS `game` (
  `gameid` char(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`gameid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`gameid`, `gname`) VALUES
('cr01', 'Cricket'),
('fb10', 'Football');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `indexno` char(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stname` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`indexno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`indexno`, `stname`, `address`, `class`) VALUES
('101', 'Damn', 'Galle', 'Grade11'),
('110', 'Dude', 'Hambanthota', 'Grade10'),
('111', 'Dash', 'Galle', 'Grade11');

-- --------------------------------------------------------

--
-- Table structure for table `student_game`
--

DROP TABLE IF EXISTS `student_game`;
CREATE TABLE IF NOT EXISTS `student_game` (
  `indexno` char(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gameid` char(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hour` time NOT NULL,
  PRIMARY KEY (`indexno`,`gameid`),
  KEY `gameid` (`gameid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_game`
--

INSERT INTO `student_game` (`indexno`, `gameid`, `hour`) VALUES
('101', 'cr01', '02:30:00'),
('110', 'fb10', '03:30:00'),
('111', 'cr01', '02:30:00'),
('111', 'fb10', '03:30:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
