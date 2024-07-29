-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2024 at 08:23 PM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `library_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(60) NOT NULL,
  `password` varchar(150) NOT NULL,
  `username` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminId`, `adminName`, `password`, `username`, `email`, `photo`) VALUES
(9, 'admin', 'admin', 'admin', 'admin@gmail.com', ''),
(17, 'jawad amin', 'jawad123', 'jawad', 'jawad123@gmail.com', ''),
(18, 'zubair', '12345', 'zubair', 'zubair990@yahoo.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `bookId` int(11) NOT NULL,
  `bookTitle` varchar(150) NOT NULL,
  `author` varchar(60) NOT NULL,
  `ISBN` varchar(30) NOT NULL,
  `bookCopies` varchar(10) NOT NULL,
  `publisherName` varchar(60) NOT NULL,
  `available` varchar(10) NOT NULL,
  `categories` varchar(30) NOT NULL,
  `callNumber` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookId`, `bookTitle`, `author`, `ISBN`, `bookCopies`, `publisherName`, `available`, `categories`, `callNumber`) VALUES
(6, 'Software Engineering', 'Robert Thompson', '123-423-4-13', '12', 'Robert Thompson.Inc', 'YES', 'Information Technology', '0216230.'),
(8, 'Operating system', 'Kamran', '21312', '1', '1', 'YES', 'computer science', '312321312'),
(9, 'the prinicpal pf programming C++', 'Bjrane Stroustrup', '978-0321992789', '10', 'Cengage Learning', 'YES', 'computer science', '03119849589');

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE IF NOT EXISTS `borrow` (
  `borrowId` int(11) NOT NULL,
  `memberName` varchar(255) NOT NULL,
  `reg_no` varchar(10) NOT NULL,
  `bookName` varchar(255) NOT NULL,
  `borrowDate` varchar(20) NOT NULL,
  `returnDate` varchar(20) NOT NULL,
  `bookId` int(2) NOT NULL,
  `borrowStatus` int(2) NOT NULL,
  `fine` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`borrowId`, `memberName`, `reg_no`, `bookName`, `borrowDate`, `returnDate`, `bookId`, `borrowStatus`, `fine`) VALUES
(1, 'Student One', 'ADSE-9835', 'Operating system', '2020-09-27', '30/09/2020', 0, 0, 'Paid'),
(2, 'zeeshan Hidayat', '0313', 'Software Engineering', '2020-09-21', '24/09/2020', 0, 0, 'Paid'),
(3, 'zeeshan Hidayat', '0313', 'Software Engineering', '2020-10-04', '7/10/2020', 0, 0, 'Paid'),
(4, 'zeeshan Hidayat', '0313', 'the prinicpal pf programming C++', '2020-10-19', '22/10/2020', 0, 0, 'Paid'),
(5, 'israr', '12-gpgc-00', 'the prinicpal pf programming C++', '2020-12-24', '27/12/2020', 0, 0, 'Paid'),
(6, 'zeeshan Hidayat', '0313', 'the prinicpal pf programming C++', '2024-05-04', '7/05/2024', 0, 0, 'Paid'),
(7, 'jawad', '2015844', 'the prinicpal pf programming C++', '2024-05-06', '9/05/2024', 0, 0, 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `newsId` int(11) NOT NULL,
  `announcement` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`newsId`, `announcement`) VALUES
(1, 'Welcome to Our Online Library Management System. You can have access to all our e-books at a really good affordable price!'),
(10, 'New books now available on our library. Please bring your student id along to borrow books'),
(11, 'This month fines list has been published. Be sure to check out if you are also in the list.');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `studentId` int(11) NOT NULL,
  `reg_no` varchar(30) NOT NULL,
  `password` varchar(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(60) NOT NULL,
  `dept` varchar(60) NOT NULL,
  `numOfBooks` int(11) NOT NULL,
  `moneyOwed` varchar(20) NOT NULL,
  `photo` text NOT NULL,
  `phoneNumber` varchar(256) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`studentId`, `reg_no`, `password`, `username`, `email`, `dept`, `numOfBooks`, `moneyOwed`, `photo`, `phoneNumber`, `name`) VALUES
(5, '0313', 'salman123', 'salman', 'zkmardan123@gmail.com', 'Software Engineering', 0, 'null', '2584_1601155720.jpeg', 'zkmardan123', 'zeeshan Hidayat'),
(6, '12-gpgc-005', '12345', 'israr', 'israr_12@gmail.com', 'computer Science', 0, 'null', '1537_1608743367.jpeg', 'israr_12@gm', 'israr'),
(7, '2015844', '12345', 'jawad', 'jawad123@gmail.com', 'Computer Science', 0, 'null', '6661_1714986960.png', 'jawad123@gm', 'jawad'),
(8, '19-awkum-2022', 'waqas123', 'waqas', 'waqas232@gmail.com', 'Managment Science', 0, 'null', '1785_1715461366.jpeg', 'waqas232@gm', 'waqas'),
(9, '03-awkum-2024', 'anas123', 'anas22', 'anas666@gmail.com', 'English', 0, 'null', '', 'anas666@gmail.com', 'anas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookId`);

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`borrowId`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`newsId`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`studentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bookId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `borrow`
--
ALTER TABLE `borrow`
  MODIFY `borrowId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `newsId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `studentId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
