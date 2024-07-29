-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2024 at 06:53 PM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `chrs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(24) NOT NULL,
  `password` varchar(24) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `username`, `password`) VALUES
(1, 'Administrator', 'Admin', 'admin'),
(2, 'anita', 'anita', 'anita'),
(3, 'ujala', 'ujala', 'ujala'),
(4, 'amna', 'amna', 'amna12345');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE IF NOT EXISTS `guest` (
  `guest_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contactno` varchar(13) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`guest_id`, `firstname`, `lastname`, `address`, `contactno`) VALUES
(1, 'anita', 'khan', 'takhtbhai ', '0311984232'),
(2, 'waqas', 'shafiullah', 'islamabad', '03449890324'),
(3, 'zeeshan', 'kamran', 'mardan', '031131231231'),
(5, 'salman', 'hidayat', 'house # G-144, Street 4, Sector G ,Sheikh Malton T', '03169733458'),
(6, 'salman', 'hidayat', 'house # G-144, Street 4, Sector G ,Sheikh Malton T', '031131231231'),
(7, 'Zeeshan', 'khan', 'mill road mardan', '031131231231'),
(8, 'Zeeshan', 'khan', 'mill road mardan', '031131231231'),
(9, 'Zeeshan', 'khan', 'mill road mardan', '031131231231'),
(10, 'Zeeshan', 'khan', 'mill road mardan', '031131231231'),
(11, 'kamran', 'rehman', 'Muqam chock Mardan', '0213213213'),
(12, 'zeeshan', 'kamran', 'mill road mardan', '031131231231'),
(13, 'zeeshan', 'kamran', 'mill road mardan', '031131231231'),
(14, 'zubair', 'Khan', 'mill road mardan', '03123213'),
(15, 'zubair', 'Khan', 'mill road mardan', '03123213'),
(16, 'kamran', 'rehman', 'mill road mardan', '031131231231'),
(17, 'kamran', 'rehman', 'mill road mardan', '031131231231'),
(18, 'kamran', 'rehman', 'mill road mardan', '031131231231'),
(19, 'adasd', 'kamran', 'mill road mardan', '031131231231'),
(20, 'adasd', 'kamran', 'mill road mardan', '031131231231'),
(21, 'Zeeshan', 'khan', 'mill road mardan', '031131231231'),
(22, 'Amna', 'rehman', 'mill road mardan', '031131231231'),
(23, 'Zeeshan', 'khan', 'mill road mardan', '0311984232'),
(24, 'Zeeshan', 'khan', 'mill road mardan', '0311984232'),
(25, 'Zeeshan', 'khan', 'mill road mardan', '0311984232'),
(26, 'zubair', 'Khan', 'mill road mardan', '031131231231'),
(27, 'Zeeshan', 'khan', 'mill road mardan', '031131231231'),
(28, 'Zeeshan', 'khan', 'mill road mardan', '031131231231'),
(29, 'Zeeshan', 'khan', 'mill road mardan', '031131231231'),
(30, 'Zeeshan', 'khan', 'mill road mardan', '0213213213'),
(31, 'Zeeshan', 'khan', 'mill road mardan', '0213213213'),
(32, 'kamran', 'sdsad', 'mill road mardan', '0311984232'),
(33, 'kamran', 'sdsad', 'mill road mardan', '0311984232'),
(34, 'ujala', 'zahid', 'Attock ', '031131231231'),
(35, 'ujala', 'zahid', 'Attock ', '031131231231'),
(36, 'Zeeshan', 'khan', 'bhugdada mardan', '031131231231'),
(37, 'Zeeshan', 'khan', 'bhugdada mardan', '031131231231'),
(38, 'zeeshan', 'khan', 'mill road mardan', '031131231231'),
(39, 'zeeshan', 'khan', 'mill road mardan', '031131231231'),
(40, 'zeeshan', 'khan', 'mill road mardan', '031131231231'),
(41, 'ujala', 'zahid', 'mill road mardan', '03123213'),
(42, 'ujala', 'zahid', 'mill road mardan', '03123213'),
(43, 'ujala', 'zahid', 'mill road mardan', '03123213'),
(44, 'ujala', 'zahid', 'mill road mardan', '03123213'),
(45, 'ujala', 'zahid', 'mill road mardan', '03123213'),
(46, 'ujala', 'zahid', 'mill road mardan', '03123213'),
(47, 'ujala', 'zahid', 'mill road mardan', '03123213'),
(48, 'salman', 'hidayat', 'town', '03123244'),
(49, 'salman', 'hidayat', 'town', '03123244'),
(50, 'salman', 'hidayat', 'town', '03123244'),
(51, 'Zeeshan', 'khan', 'charsadda', '0213213213'),
(52, 'Zeeshan', 'khan', 'charsadda', '0213213213'),
(53, 'Zeeshan', 'khan', 'charsadda', '0213213213'),
(54, 'Zeeshan', 'khan', 'charsadda', '0213213213'),
(55, 'Zeeshan', 'khan', 'charsadda', '0311984232'),
(56, 'Zeeshan', 'khan', 'charsadda', '0311984232'),
(57, 'Zeeshan', 'khan', 'mill road mardan', '031131231231'),
(58, 'Zeeshan', 'khan', 'mill road mardan', '031131231231'),
(59, 'Zeeshan', 'khan', 'mill road mardan', '031131231231'),
(60, 'Zeeshan', 'khan', 'mill road mardan', '031131231231'),
(61, 'Zeeshan', 'khan', 'mill road mardan', '031131231231'),
(62, 'kamran', 'kamran', 'mill road mardan', '031131231231'),
(63, 'kamran', 'kamran', 'mill road mardan', '031131231231'),
(64, 'Zeeshan', 'khan', 'mill road mardan', '0311984232'),
(65, 'Amna', 'khan', 'mill road mardan', '031131231231'),
(66, 'adasd', 'khan', 'mill road mardan', '031131231231'),
(67, 'ujala', 'zahid', 'Attock ', '03328733900'),
(68, 'zeeshan', 'hidayat', 'Attock ', '031131231231'),
(69, 'aiman', 'saleh', 'barkande bhugdada', '031232323'),
(70, 'huma', 'khan', 'mardan', '031123213'),
(71, 'kamran', 'rehman', 'peshawar', '03123213'),
(72, 'zubair', 'rehman', 'bhugdada mardan', '0213213213'),
(73, 'Zeeshan', 'khan', 'mill road mardan', '031131231231'),
(74, 'tahir', 'zaman', 'Mohalla Bhari cham Shamsi Raod Mardan', '031131231231'),
(75, 'tahir', 'zaman', 'mill road mardan', '031131231231'),
(76, 'jalal', 'khan', 'shamsi road mardan', '031131231231'),
(77, 'Zeeshan', 'khan', 'mill road mardan', '031131231231'),
(78, 'anita', 'alam', 'miraj colony mardan', '0317232323'),
(79, 'isra', 'jalil', 'sheikh malton Town Mardan', '031131231231'),
(80, 'ujala', 'hidayat', 'charsadda', '0311984232'),
(81, 'hamza', 'khalil', 'town', '03119834332'),
(82, 'abbas', 'khalil', 'mardan', '0312321213213'),
(83, 'abbas', 'khalil', 'mardan', '023213213'),
(84, 'jalil', 'shah', 'mardan', '03119849854'),
(85, 'Zeeshan', 'rehman', 'bhugdada mardan', '0213213213'),
(86, 'jalal', 'khan', 'mardan', '03123213232'),
(87, 'jalal', 'khan', 'mardan', '03123213232'),
(88, 'Zeeshan', 'khan', 'mill road mardan', '0213213213'),
(89, 'Zeeshan', 'khan', 'mill road mardan', '0213213213'),
(90, 'Zeeshan', 'khan', 'mill road mardan', '0213213213'),
(91, 'zeeshan', 'khan', 'mill road mardan', '03113123123'),
(92, 'riaz', 'khan', 'toheed colony mardan', '03148789444'),
(93, 'SALMAN ', 'HIDAYAT', 'pohan colony mardan', '03148789444'),
(94, 'hamid ', 'khan', 'toheed colony mardan', '03148789444'),
(95, 'umar kitab', 'naeem', 'swabi road mardan', '03148950000'),
(96, 'dr zubair janan', 'gohar janan', 'Lakki marwat ', '03328459000'),
(97, 'dr zubair janan', 'gohar janan', 'Lakki marwat ', '03328459000'),
(98, 'dr zubair janan', 'gohar janan', 'Lakki marwat ', '03328459000'),
(99, 'dr zubair janan', 'gohar janan', 'Lakki marwat ', '03328459000'),
(100, 'johar', 'khan', 'mardan', '0312945000'),
(101, 'johar', 'khan', 'mardan', '0312945000'),
(102, 'johar', 'khan', 'mardan', '03148950000'),
(103, 'johar', 'khan', 'mardan', '03148950000'),
(104, 'riaz', 'khan', 'pohan colony mardan', '03148950000'),
(105, 'riaz', 'khan', 'pohan colony mardan', '03148950000'),
(106, 'riaz', 'khan', 'pohan colony mardan', '03148950000'),
(107, 'faisal', 'khan', 'peshawar', '03148950000'),
(108, 'imtiaz', 'khan', 'mardan', '03148789444'),
(109, 'imtiaz', 'khan', 'mardan', '03148789444'),
(110, 'zeeshan hidayat', 'hidayat ullah', 'town mardan', '03328459000'),
(111, 'zeeshan hidayat', 'hidayat ullah', 'town mardan', '03328459000'),
(112, 'dr zubair janan', 'rehman', 'Lakki marwat ', '03148789444'),
(113, 'dr zubair janan', 'rehman', 'Lakki marwat ', '03148789444'),
(114, 'tahir', 'khan', 'mohallah sham gunj bank raod mardan', '0312945000'),
(115, 'tahir', 'khan', 'mohallah sham gunj bank raod mardan', '0312945000'),
(116, 'yasir', 'khan', 'mohallah sham gunj bank raod mardan', '03148950000'),
(117, 'yasir', 'khan', 'mohallah sham gunj bank raod mardan', '03148950000'),
(118, 'umar kitab', 'naeem', 'swabi road mardan', '03148789444');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `room_id` int(11) NOT NULL,
  `room_type` varchar(50) NOT NULL,
  `price` varchar(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_type`, `price`, `photo`) VALUES
(1, 'Standard', '2000', '1.jpg'),
(2, 'Superior', '2400', '3.jpg'),
(3, 'Super Deluxe', '2800', '4.jpg'),
(4, 'Jr. Suite', '3800', '5.jpg'),
(5, 'Executive Suite', '4000', '6.jpg'),
(6, 'twin', '12000', 'standard-twin.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `table`
--

CREATE TABLE IF NOT EXISTS `table` (
  `table_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `tb_number` varchar(50) NOT NULL,
  `menu` varchar(300) NOT NULL,
  `address` varchar(300) NOT NULL,
  `contact` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table`
--

INSERT INTO `table` (`table_id`, `firstname`, `lastname`, `tb_number`, `menu`, `address`, `contact`) VALUES
(7, 'kamran', 'ali', 'familytable', 'chicken BiryaniÂ +Â Chicken RoastÂ +Â fish VegetableÂ +Â Beef Chowmein Â +Â chicken HandiÂ +Â Russian SaladÂ +Â 1.5 Cold Drinks', 'mill road mardan', '0213213213'),
(8, 'riaz', 'khan', 'table3', 'Margarita Pizza', 'toheed colony mardan', '03148950000');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
  `transaction_id` int(11) NOT NULL,
  `guest_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `room_no` int(5) NOT NULL,
  `extra_bed` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `days` int(2) NOT NULL,
  `checkin` date NOT NULL,
  `checkin_time` time NOT NULL,
  `checkout` date NOT NULL,
  `checkout_time` time NOT NULL,
  `bill` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `guest_id`, `room_id`, `room_no`, `extra_bed`, `status`, `days`, `checkin`, `checkin_time`, `checkout`, `checkout_time`, `bill`) VALUES
(4, 4, 5, 1, 1, 'Check Out', 1, '2019-09-27', '21:29:50', '2019-09-28', '21:30:11', '4800'),
(14, 95, 5, 0, 0, 'Pending', 0, '2024-05-12', '00:00:00', '0000-00-00', '00:00:00', ''),
(15, 96, 2, 1, 0, 'Check Out', 1, '2024-05-12', '15:13:24', '2024-05-12', '16:15:39', '2400'),
(16, 100, 4, 0, 0, 'Pending', 0, '2024-05-12', '00:00:00', '0000-00-00', '00:00:00', ''),
(17, 104, 4, 0, 0, 'Pending', 0, '2024-05-15', '00:00:00', '0000-00-00', '00:00:00', ''),
(18, 110, 6, 0, 0, 'Pending', 0, '2024-05-12', '00:00:00', '0000-00-00', '00:00:00', ''),
(19, 114, 4, 0, 0, 'Pending', 0, '2024-05-13', '00:00:00', '0000-00-00', '00:00:00', ''),
(20, 118, 6, 0, 0, 'Pending', 0, '2024-05-13', '00:00:00', '0000-00-00', '00:00:00', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`guest_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `table`
--
ALTER TABLE `table`
  ADD PRIMARY KEY (`table_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `guest_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `table`
--
ALTER TABLE `table`
  MODIFY `table_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
