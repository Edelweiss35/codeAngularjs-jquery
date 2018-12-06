-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2014 at 01:27 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bs`
--
CREATE DATABASE IF NOT EXISTS `bs` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `bs`;

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE IF NOT EXISTS `answers` (
  `id` int(55) NOT NULL AUTO_INCREMENT,
  `user_id` int(55) NOT NULL,
  `answers` text NOT NULL COMMENT 'json string - [questions_id:answer_value]',
  `result` int(11) NOT NULL COMMENT 'json string - [orgs_id]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE IF NOT EXISTS `contents` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`ID`, `role`, `body`, `admin_id`, `date`) VALUES
(1, 'app_title', 'Aplicación BS', 1, '2014-02-02 00:00:00'),
(2, 'app_subject', 'Aplicación BS', 1, '2014-02-02 00:00:00'),
(3, 'app_version', 'Prototipos v0.1', 1, '2014-02-02 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `orgs`
--

CREATE TABLE IF NOT EXISTS `orgs` (
  `id` int(55) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `values` varchar(100) NOT NULL,
  `link` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `orgs`
--

INSERT INTO `orgs` (`id`, `name`, `values`, `link`) VALUES
(1, 'Greenpeace', '[2,4,5]', ''),
(2, 'Medicos Mundi', '[1,3,4]', ''),
(3, 'Solidaridad', '[1,2,3]', '');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(55) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `question` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `title`, `question`) VALUES
(2, 'questions1', 'questions1'),
(3, 'questions2', 'questions2'),
(4, 'questions3', 'questions3'),
(5, 'questions4', 'questions4'),
(6, 'questions5', 'questions5'),
(7, 'questions6', 'questions6'),
(8, 'questions7', 'questions7');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(55) NOT NULL AUTO_INCREMENT,
  `gender` int(1) NOT NULL,
  `email` varchar(100) NOT NULL,
  `hours` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
