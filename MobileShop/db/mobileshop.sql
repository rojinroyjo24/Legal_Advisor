-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 13, 2021 at 10:49 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mobileshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendence`
--

CREATE TABLE IF NOT EXISTS `attendence` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  `date` varchar(67) NOT NULL,
  `status` varchar(78) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `attendence`
--

INSERT INTO `attendence` (`aid`, `sid`, `oid`, `date`, `status`) VALUES
(1, 0, 1, '21-09-12', 'present'),
(2, 0, 1, '21-09-12', 'present'),
(3, 1, 1, '21-09-12', 'present'),
(4, 0, 0, '21-09-15', 'present'),
(5, 0, 1, '21-09-16', 'present'),
(6, 0, 1, '21-09-16', 'present'),
(7, 0, 1, '21-09-16', 'present'),
(8, 3, 1, '21-09-16', 'present'),
(9, 3, 1, '21-09-17', 'present'),
(10, 4, 2, '21-12-10', 'present'),
(11, 4, 2, '21-12-10', 'present'),
(12, 4, 2, '21-12-10', 'present'),
(13, 4, 2, '21-12-10', 'present'),
(14, 4, 2, '21-12-10', 'present'),
(15, 4, 2, '21-12-10', 'present'),
(16, 4, 2, '21-12-10', 'present'),
(17, 4, 2, '21-12-10', 'present'),
(18, 4, 2, '21-12-10', 'present'),
(19, 4, 2, '21-12-10', 'present'),
(20, 4, 2, '21-12-10', 'present'),
(21, 4, 2, '21-12-10', 'present'),
(22, 4, 2, '21-12-10', 'present');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE IF NOT EXISTS `bill` (
  `billid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `bookingid` int(11) NOT NULL,
  PRIMARY KEY (`billid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`billid`, `sid`, `pid`, `price`, `quantity`, `bookingid`) VALUES
(1, 3, 3, 1234, 2, 7),
(2, 3, 0, 0, 0, 7),
(3, 3, 5, 100, 0, 7),
(4, 3, 3, 1234, 2, 7),
(5, 3, 0, 0, 0, 7),
(6, 3, 3, 1234, 2, 7),
(7, 3, 0, 0, 0, 7),
(8, 3, 3, 1234, 2, 7),
(9, 3, 0, 0, 0, 7),
(10, 3, 3, 1234, 2, 7),
(11, 3, 0, 0, 0, 7),
(12, 3, 3, 1234, 2, 7),
(13, 3, 0, 0, 0, 7),
(14, 3, 3, 1234, 1, 7),
(15, 3, 0, 0, 0, 7),
(16, 3, 3, 1234, 1, 7),
(17, 3, 0, 0, 0, 7),
(18, 3, 3, 1234, 1, 7),
(19, 3, 0, 0, 0, 7),
(20, 3, 3, 1234, 1, 7),
(21, 3, 4, 290, 0, 7),
(22, 3, 3, 1234, 1, 7),
(23, 3, 4, 290, 0, 7),
(24, 3, 3, 1234, 2, 7),
(25, 3, 4, 290, 0, 7),
(26, 3, 3, 1234, 1, 7),
(27, 3, 4, 290, 0, 7),
(28, 3, 3, 1234, 1, 7),
(29, 3, 3, 1234, 3, 7),
(30, 3, 5, 100, 1, 7),
(31, 3, 3, 1234, 1, 7),
(32, 3, 5, 100, 1, 7),
(33, 3, 3, 1234, 9, 0),
(34, 3, 4, 290, 0, 0),
(35, 3, 5, 100, 0, 0),
(36, 3, 3, 1234, 0, 0),
(37, 3, 5, 100, 0, 0),
(38, 3, 3, 1234, 9, 0),
(39, 3, 5, 100, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phno` varchar(50) NOT NULL,
  `complaint` varchar(50) NOT NULL,
  `modeldetails` varchar(50) NOT NULL,
  `rdate` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bid`, `sid`, `oid`, `uname`, `address`, `phno`, `complaint`, `modeldetails`, `rdate`, `status`) VALUES
(2, 2, 1, 'elton', 'chunghath         ', '9988787878', 'display problem', 'oopo v1 ', '2021-09-16', 'completed'),
(3, 3, 2, 'ajin', '             anuradha   ', '9923456778', 'no', 'no', '0021-09-16', 'completed'),
(4, 3, 2, 'anu', '            no    ', '8899009878', 'no', 'mppo', '2021-09-16', 'completed'),
(5, 3, 1, 'hello', '      joiiii          ', '88790987665', 'nop', 'no', '2021-09-18', 'notcompleted'),
(6, 0, 0, 'aneeja', 'aneejas villa', '9989899890', 'battery', 'vivo1721', '2021-11-05', 'Not Completed'),
(7, 3, 2, 'aneeja', 'aneeja villas', '9988787889', 'Battery issue', 'apple i3', '2021-11-05', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `oid` int(11) NOT NULL,
  `feedback` varchar(50) NOT NULL,
  `sid` int(11) NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fid`, `oid`, `feedback`, `sid`) VALUES
(1, 1, 'nothing', 0),
(2, 0, 'hello', 0),
(3, 0, 'binu', 0),
(4, 1, 'bunasdfgh', 0),
(5, 1, 'good', 0),
(6, 1, 'good', 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `usertype` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `usertype`, `status`) VALUES
('admin@gmail.com', 'admin', 'admin', 'approved'),
('babu@gmail.com', 'babu123', 'owner', 'approved'),
('binu@gmail.com', 'binu123', 'staff', 'approved'),
('arjun@gmail.com', 'arjun', 'owner', 'approved'),
('appu@gmail.com', 'appu', 'staff', 'approved'),
('p@gmail.com', 'p', 'staff', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE IF NOT EXISTS `owner` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `oname` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phno` varchar(50) NOT NULL,
  `licenceno` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`oid`, `oname`, `address`, `district`, `email`, `phno`, `licenceno`, `status`) VALUES
(1, 'babu', 'babu villa', 'idukki', 'babu@gmail.com', '9988990990', '1234567890876', 'approved'),
(2, 'arjun', 'amal', 'idukki', 'arjun@gmail.com', '9988776655', '1234567899', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `servicecharge`
--

CREATE TABLE IF NOT EXISTS `servicecharge` (
  `scid` int(11) NOT NULL AUTO_INCREMENT,
  `staffid` varchar(90) NOT NULL,
  `bookingid` varchar(90) NOT NULL,
  `charge` varchar(90) NOT NULL,
  PRIMARY KEY (`scid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `servicecharge`
--

INSERT INTO `servicecharge` (`scid`, `staffid`, `bookingid`, `charge`) VALUES
(1, '3', '7', '120');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `email` varchar(70) NOT NULL,
  `phno` varchar(70) NOT NULL,
  `oid` int(11) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`sid`, `sname`, `address`, `email`, `phno`, `oid`) VALUES
(3, 'appu', 'appoos home', 'appu@gmail.com', '9988776656', 1),
(4, 'peethambaran', 'peethambarante veedu', 'p@gmail.com', '919900909009', 2);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `stockid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(60) NOT NULL,
  `price` varchar(80) NOT NULL,
  `stock` varchar(89) NOT NULL,
  `sid` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  PRIMARY KEY (`stockid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stockid`, `pname`, `price`, `stock`, `sid`, `oid`) VALUES
(3, 'hello', '1234', '11', 3, 1),
(4, 'no', '290', '2', 3, 1),
(5, 'test', '100', '0', 3, 1);
