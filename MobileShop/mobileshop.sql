-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2022 at 04:02 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobileshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendence`
--

CREATE TABLE `attendence` (
  `aid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  `date` varchar(67) NOT NULL,
  `status` varchar(78) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `bill` (
  `billid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `bookingid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `booking` (
  `bid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phno` varchar(50) NOT NULL,
  `complaint` varchar(50) NOT NULL,
  `modeldetails` varchar(50) NOT NULL,
  `rdate` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bid`, `sid`, `oid`, `uname`, `address`, `phno`, `complaint`, `modeldetails`, `rdate`, `status`) VALUES
(2, 2, 1, 'elton', 'chunghath         ', '9988787878', 'display problem', 'oopo v1 ', '2021-09-16', 'completed'),
(6, 0, 0, 'aneeja', 'aneejas villa', '9989899890', 'battery', 'vivo1721', '2021-11-05', 'Not Completed'),
(7, 3, 2, 'aneeja', 'aneeja villas', '9988787889', 'Battery issue', 'apple i3', '2021-11-05', 'completed'),
(8, 0, 0, 'alcnvsdio', 'sdf,msd fsd', '8792164879', 'display', 'realme 5 pro', '2022-02-02', 'Not Completed'),
(15, 0, 0, 'billu', 'dfnmbdk,jf', '2489671236', 'display problem', 'redmi note 9', '2001-12-12', 'Not Completed');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `fid` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  `feedback` varchar(50) NOT NULL,
  `sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fid`, `oid`, `feedback`, `sid`) VALUES
(13, 0, 'xfmvfxbkjgfdnfklds', 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
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
('p@gmail.com', 'p', 'staff', 'approved'),
('adharsh@gmail.com', 'adharsh', 'owner', 'approved'),
('albin@gmail.com', 'albin', 'staff', 'approved'),
('yt@gmail.com', '123', 'owner', 'approved'),
('rr@gmail.com', '123', 'staff', 'approved'),
('albin@gmail.com', 'albin', 'owner', 'approved'),
('s@gmail.com', 'ss', 'owner', 'approved'),
('aa@gmail.com', 'aa', 'owner', 'approved'),
('l@gmail.com', 'll', 'owner', 'approved'),
('a@gmail.com', 'kundan', 'owner', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `oid` int(11) NOT NULL,
  `oname` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phno` varchar(50) NOT NULL,
  `licenceno` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`oid`, `oname`, `address`, `district`, `email`, `phno`, `licenceno`, `status`) VALUES
(1, 'babu', 'babu villa', 'idukki', 'babu@gmail.com', '9988990990', '1234567890876', 'approved'),
(2, 'arjun', 'amal', 'idukki', 'arjun@gmail.com', '9988776655', '1234567899', 'approved'),
(3, 'adharsh', 'anaikkara', 'Ernakulam', 'adharsh@gmail.com', '6893769721', '16688464', 'approved'),
(4, 'yt', 'hh', 'Pathanamthitta', 'yt@gmail.com', '0949616183', '1234455', 'approved'),
(5, 'ALBIN V JOHNSON', 'sfdfgdfg', 'idukki', 'albin@gmail.com', '9762389781', '', 'approved'),
(6, 'ss', 'fssf', 'Kannur', 's@gmail.com', '7896423879', '', 'approved'),
(7, 'xvfsfs', 'sfsdfs', 'palakkadu', 'aa@gmail.com', '7896172398', '', 'approved'),
(8, 'dfvdf', 'dfsf', 'Thiruvanandhapuram', 'l@gmail.com', '8976312478', '', 'approved'),
(9, 'arun', 'vettickal', 'palakkadu', 'a@gmail.com', '2222222222', '', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sku` varchar(14) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `sku`, `price`, `image`) VALUES
(1, 'Iphone', 'IPHO001', '400.00', 'images/iphone.jpg'),
(2, 'Camera', 'CAME001', '700.00', 'images/camera.jpg'),
(3, 'Watch', 'WATC001', '100.00', 'images/watch.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `servicecharge`
--

CREATE TABLE `servicecharge` (
  `scid` int(11) NOT NULL,
  `staffid` varchar(90) NOT NULL,
  `bookingid` varchar(90) NOT NULL,
  `charge` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servicecharge`
--

INSERT INTO `servicecharge` (`scid`, `staffid`, `bookingid`, `charge`) VALUES
(1, '3', '7', '120'),
(2, '', '123', 'mh'),
(3, '', '123', '14'),
(4, '', '9', '240');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `sid` int(11) NOT NULL,
  `sname` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `email` varchar(70) NOT NULL,
  `phno` varchar(70) NOT NULL,
  `oid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`sid`, `sname`, `address`, `email`, `phno`, `oid`) VALUES
(3, 'appu', 'appus@gmail.com', 'appoos hddaass', '9988777889', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stockid` int(11) NOT NULL,
  `pname` varchar(60) NOT NULL,
  `price` varchar(80) NOT NULL,
  `stock` varchar(89) NOT NULL,
  `sid` int(11) NOT NULL,
  `oid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stockid`, `pname`, `price`, `stock`, `sid`, `oid`) VALUES
(6, 'Realme 5 pro', '20000', '20', 0, 0),
(8, 'redmi note 9 pro', '20000', '9', 0, 0),
(9, 'realme x2', '21000', '10', 0, 0),
(10, 'iphone x', '60000', '15', 0, 0),
(11, 'samsung a21 s', '17000', '8', 0, 0),
(12, 'samsung galaxy s22 ultra', '1,18,999', '8', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendence`
--
ALTER TABLE `attendence`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`billid`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `sku` (`sku`);

--
-- Indexes for table `servicecharge`
--
ALTER TABLE `servicecharge`
  ADD PRIMARY KEY (`scid`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stockid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendence`
--
ALTER TABLE `attendence`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `billid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `servicecharge`
--
ALTER TABLE `servicecharge`
  MODIFY `scid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stockid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
