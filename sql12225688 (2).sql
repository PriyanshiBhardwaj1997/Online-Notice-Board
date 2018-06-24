-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2018 at 08:09 PM
-- Server version: 5.5.34
-- PHP Version: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sql12225688`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Event'),
(2, 'Important'),
(3, 'Sports'),
(4, 'Placement'),
(5, 'Examination'),
(6, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `category_notice_mapping`
--

CREATE TABLE IF NOT EXISTS `category_notice_mapping` (
  `category_notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`category_notice_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `category_notice_mapping`
--

INSERT INTO `category_notice_mapping` (`category_notice_id`, `notice_id`, `category_id`) VALUES
(11, 4, 5),
(12, 5, 2),
(37, 11, 1),
(38, 11, 5),
(47, 12, 1),
(48, 12, 5),
(54, 14, 6),
(55, 14, 4),
(56, 18, 1),
(57, 19, 1),
(58, 19, 5),
(59, 20, 1),
(60, 20, 5);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `image_type` varchar(255) NOT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`image_id`, `url`, `type`, `image_type`) VALUES
(1, 'uzma image url', 'jpeg', 'user_img');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Id`, `Email`, `Password`) VALUES
(1, 'uzmaahmed.12@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE IF NOT EXISTS `notice` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `full_desc` varchar(21844) NOT NULL,
  `creation_date` datetime NOT NULL,
  `updation_date` datetime NOT NULL,
  `approve` tinyint(1) NOT NULL,
  `comment` varchar(500) NOT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`notice_id`, `user_id`, `title`, `full_desc`, `creation_date`, `updation_date`, `approve`, `comment`) VALUES
(4, 3, 'again titlec dnc dcnx ', 'dsfbds nvcmnvc  nvnmv nfn vmncv nfvn  vc nmmnc mf cn  vcnnncv  nv vvcn  cvnvnv cvn vn m ', '2018-03-15 00:00:00', '2018-04-12 18:15:12', 0, '0'),
(5, 4, 'title is dis', 'Looking for some already great color combinations? Our color chart features flat design colors, Google''s Material design scheme and the classic web safe color palette, all with Hex color codes. ', '2018-03-20 00:00:00', '2018-04-12 18:15:12', 1, 'Notice successfully approved by Admin'),
(11, 1, 'nb,', 'nb,m.n,', '2018-04-05 00:00:00', '2018-04-05 00:00:00', 1, 'Notice successfully approved by Admin'),
(12, 1, 'and title goes here', '\n                        ncmcxvmxc', '2018-04-12 00:00:00', '2018-04-12 00:00:00', 1, 'Notice successfully approved by Admin'),
(14, 1, 'plz work', '                                xcnb c chcek date', '2018-06-12 18:58:34', '2018-04-15 12:32:23', 1, 'Notice successfully approved by Admin'),
(18, 1, 'editng notice', ' you can edit your notice', '2018-04-15 12:39:25', '2018-04-15 14:53:55', 0, ''),
(19, 1, 'bbm', '        nbbmmfgfhf hghfhgf \r\n hgfhgfh gfgfhgfhgf hgfghfhg m fgfhfhgfhg fhgfhgfghfhf \r\n hgfhgfhgf hgfhgfhgf \r\n gfhgfhf hgfghfh fhfhfhfhfg', '2018-04-15 12:44:52', '2018-04-15 14:58:07', 0, ''),
(20, 1, 'new Notice', ' Ughcchcy ycycyvyvuvu vuvuvuvu vyvhvyvyvyvyv jfgfgfhf hfhgfhgfhf hgfhgfhgfg ffhfgf hgfhfhgfh gfhfhgfhgf hfhf', '2018-04-15 14:48:08', '2018-04-15 14:57:11', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `notify_id` int(11) NOT NULL AUTO_INCREMENT,
  `spam_message` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `notice_id` int(11) NOT NULL,
  PRIMARY KEY (`notify_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notify_id`, `spam_message`, `user_id`, `notice_id`) VALUES
(1, 'not allowed', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `unique_no` int(20) NOT NULL,
  `college` varchar(255) NOT NULL,
  `img_id` int(10) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`user_id`, `user_name`, `password`, `category`, `unique_no`, `college`, `img_id`, `email`) VALUES
(1, 'uzma', '1234', 'Student', 520907216, 'Gb pant', 2, 'uzmaahmed.12@gmail.com'),
(2, 'xyz', '123456', 'Student', 530907216, 'amity', 2, 'bbbjm@gmail.com'),
(3, 'uz', 'cmxcdm', 'Student', 89789800, '', 0, 'uma@gmail.com'),
(4, 'uzmaaaa', '123445y5', 'Student', 980789889, '', 0, 'ummamaa@gmail.com'),
(5, 'uzzu', '122222', 'Student', 897889878, '', 0, 'ummamaazz@gmail.com'),
(6, 'priya', '12345', 'Student', 520907216, 'gbpant', 0, 'priya@gmail.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
