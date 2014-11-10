-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2014 at 08:54 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gallery`
--
CREATE DATABASE IF NOT EXISTS `gallery` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `gallery`;

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

DROP TABLE IF EXISTS `pictures`;
CREATE TABLE IF NOT EXISTS `pictures` (
  `pic_id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_name` varchar(250) NOT NULL,
  `catalogue_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` int(11) NOT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  PRIMARY KEY (`pic_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `pictures`
--

INSERT INTO `pictures` (`pic_id`, `pic_name`, `catalogue_id`, `comment`, `date_added`, `is_public`, `likes`) VALUES
(1, '1408901785_flowers.jpg', 1, 'This is funny picture with flowers.', 1408901785, 1, 7),
(2, '1408906056_happyDog.JPG', 1, 'This is a picture of a happy dog.', 1408906056, 1, 6),
(3, '1408915702_smile.jpg', 1, 'Sunny picture with flowers', 1408915702, 0, NULL),
(4, '1408915869_smile.jpg', 1, 'Sunny picture with flowers', 1408915869, 0, NULL),
(5, '1408915967_smile.jpg', 1, 'Sunny picture with flowers', 1408915967, 0, 10),
(6, '1408916063_smile.jpg', 1, 'Sunny picture with flowers', 1408916063, 0, NULL),
(7, '1408916308_smile.jpg', 1, 'Sunny picture with flowers', 1408916308, 0, NULL),
(8, '1408916347_smile.jpg', 1, 'Sunny picture with flowers', 1408916347, 0, NULL),
(9, '1408916532_smile.jpg', 1, 'Sunny picture with flowers', 1408916532, 0, NULL),
(10, '1408916581_smile.jpg', 1, 'Sunny picture with flowers', 1408916581, 0, NULL),
(11, '1408916631_smile.jpg', 1, 'Sunny picture with flowers', 1408916631, 0, NULL),
(12, '1408916652_smile.jpg', 1, 'Sunny picture with flowers', 1408916652, 0, NULL),
(13, '1408916712_smile.jpg', 1, 'Sunny picture with flowers', 1408916712, 0, NULL),
(14, '1408916723_smile.jpg', 1, 'Sunny picture with flowers', 1408916723, 0, NULL),
(15, '1408916798_smile.jpg', 1, 'Sunny picture with flowers', 1408916798, 0, NULL),
(16, '1408916909_smile.jpg', 1, 'Sunny picture with flowers', 1408916909, 0, NULL),
(17, '1408916920_smile.jpg', 1, 'Sunny picture with flowers', 1408916920, 0, NULL),
(18, '1408916950_smile.jpg', 1, 'Sunny picture with flowers', 1408916950, 0, NULL),
(19, '1409068064_58659.jpg', 2, 'asdf', 1409068064, 1, NULL),
(20, '1409068074_502-290.jpg', 2, 'asdf', 1409068074, 1, NULL),
(21, '1409068171_a87c96b4ac29.jpg', 3, '', 1409068171, 0, NULL),
(22, '1409068185_calla-lily.jpg', 3, 'asdf', 1409068185, 1, NULL),
(23, '1409068198_Breakfast.jpg', 3, 'asdf', 1409068198, 1, NULL),
(24, '1409071201_computerback.jpg', 4, '', 1409071201, 1, 11);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `email` varchar(250) NOT NULL,
  `date_reg` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `login`, `pass`, `email`, `date_reg`) VALUES
(1, 'guest', 'e10adc3949ba59abbe56e057f20f883e', '', 2147483647),
(2, 'baba', '83b4ef5ae4bb360c96628aecda974200', 'mail@abv.bg', 1409065818),
(3, 'Salsa', '6cf82ee1020caef069e753c67a97a70d', 'mail@abv.bg', 1409066296),
(4, 'Test1', 'e10adc3949ba59abbe56e057f20f883e', 'mail@abv.bg', 1409068008),
(5, 'Test1', 'e10adc3949ba59abbe56e057f20f883e', 'mail@abv.bg', 1409068101),
(6, 'Test2', 'e10adc3949ba59abbe56e057f20f883e', 'mail@abv.bg', 1409068117),
(7, 'batka', '4297f44b13955235245b2497399d7a93', '', 1409071123);

-- --------------------------------------------------------

--
-- Table structure for table `user_catalogues`
--

DROP TABLE IF EXISTS `user_catalogues`;
CREATE TABLE IF NOT EXISTS `user_catalogues` (
  `catalogue_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  PRIMARY KEY (`catalogue_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user_catalogues`
--

INSERT INTO `user_catalogues` (`catalogue_id`, `user_id`, `name`) VALUES
(1, 1, 'catalogue1'),
(2, 4, 'Test1Folder1'),
(3, 6, 'Test2Folder1'),
(4, 7, 'Sweag');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
