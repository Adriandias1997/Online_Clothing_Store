-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 26, 2020 at 02:21 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bimak`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(500) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `aphoto` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `name`, `password`, `aphoto`) VALUES
(1, 'admin', 'admin@example.com', 'Administrator', 'admin', 'admin/admin.png'),
(3, 'cu', 'cu@gmail.com', 'cu', 'cu', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryname`) VALUES
(51, 'Ladies T-Shirts'),
(50, 'T-Shirt Gents'),
(49, 'Couple T-Shirt Collection'),
(52, 'Limited Feather Collection');

-- --------------------------------------------------------

--
-- Table structure for table `customer_account`
--

DROP TABLE IF EXISTS `customer_account`;
CREATE TABLE IF NOT EXISTS `customer_account` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `cphoto` blob NOT NULL,
  PRIMARY KEY (`cid`,`email`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_account`
--

INSERT INTO `customer_account` (`cid`, `firstname`, `lastname`, `address`, `telephone`, `email`, `password`, `cphoto`) VALUES
(1, 'Damsiri', 'Dilanjan', 'Kuliyapitiya', '0770885712', 'damsiri@gmail.com  ', '1234  ', 0x637573746f6d65722f64696c616e6a616e2e6a7067),
(2, 'Pasindu', 'Nawodya', 'Nikawaratiya', '0715443619', 'pasindu@gmail.com', '1234', 0x637573746f6d65722f706173696e64752e6a7067),
(3, 'Tharindu', 'Thiwanka', 'Polgahawela', '0767363425', 'thiwanka@gmail.com', '1234', 0x637573746f6d65722f74686977616e6b612e6a7067),
(4, 'Chamod', 'Dilshan', 'Alawwa', '0715577568', 'chamod@gmail.com', '1234', 0x637573746f6d65722f6368616d6f642e6a7067),
(5, 'Madhawa', 'Weerasinghe', 'Dankotuwe', '0776934622', 'madhawa@gmail.com ', '1234 ', 0x637573746f6d65722f6d61646177612e6a7067),
(6, 'Isuru', 'Sathsara', 'Kurunagala', '0776783453', 'isuru@gmail.com', '1234', 0x637573746f6d65722f69737572752e6a7067),
(7, 'Ashen', 'Kavinda', 'Kurunagala', '0775241637', 'Ashen@gmail.com', '1234', 0x637573746f6d65722f617368656e2e6a7067),
(8, 'Kamal', 'Hasitha', 'Madampe', '0774561238', 'kamal@gmail.com', '1234', 0x637573746f6d65722f6b616d616c2e6a7067),
(9, 'Dasun', 'Ekanayaka', 'Maharagama', '0771234567', 'dasun@gmail.com', '1234', 0x637573746f6d65722f646173756e2e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_details`
--

DROP TABLE IF EXISTS `delivery_details`;
CREATE TABLE IF NOT EXISTS `delivery_details` (
  `oId` int(11) NOT NULL,
  `cName` varchar(50) NOT NULL,
  `No` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `empId` int(11) DEFAULT NULL,
  `empName` varchar(50) DEFAULT NULL,
  `vId` int(11) DEFAULT NULL,
  `vehicleType` varchar(50) DEFAULT NULL,
  `RegNo` varchar(50) DEFAULT NULL,
  `courier` varchar(50) DEFAULT NULL,
  `assigned_date` date DEFAULT NULL,
  `delivered_date` date DEFAULT NULL,
  `del_status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`oId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_details`
--

INSERT INTO `delivery_details` (`oId`, `cName`, `No`, `city`, `province`, `empId`, `empName`, `vId`, `vehicleType`, `RegNo`, `courier`, `assigned_date`, `delivered_date`, `del_status`) VALUES
(1200, 'Abeysekara', '125/5', 'Gampaha', 'WP', 110, 'Abeykoon', 140, 'Motor Bike', '155V', NULL, '2019-09-24', NULL, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Nic` varchar(50) DEFAULT NULL,
  `pass` varchar(122) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Id`, `Name`, `Type`, `Nic`, `pass`) VALUES
(1, 'Abeysekara', 'deliveryman', '8085302145V', '1234'),
(2, 'Gunasekara', 'Manager', '9685302145V', ''),
(3, 'Hathurusinghe', 'deliveryman', '7085302145V', ''),
(4, 'Samarasekara', 'deliveryman', '8185302145V', ''),
(5, 'Jayakody', 'deliveryman', '985302145V', '');

-- --------------------------------------------------------

--
-- Table structure for table `employee_vehicle`
--

DROP TABLE IF EXISTS `employee_vehicle`;
CREATE TABLE IF NOT EXISTS `employee_vehicle` (
  `empId` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Nic` varchar(50) NOT NULL,
  `vId` int(11) NOT NULL,
  `vType` varchar(50) NOT NULL,
  `RegNo` varchar(100) NOT NULL,
  PRIMARY KEY (`empId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_vehicle`
--

INSERT INTO `employee_vehicle` (`empId`, `Name`, `Nic`, `vId`, `vType`, `RegNo`) VALUES
(1, 'Abeysekara', '8085302145V', 100, 'Van', '123abc'),
(5, 'Henadeera', '889530640V', 120, 'Motor Bike', '500V');

-- --------------------------------------------------------

--
-- Table structure for table `expences`
--

DROP TABLE IF EXISTS `expences`;
CREATE TABLE IF NOT EXISTS `expences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(45) NOT NULL,
  `category` varchar(45) NOT NULL,
  `amount` varchar(45) NOT NULL,
  `note` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expences`
--

INSERT INTO `expences` (`id`, `date`, `category`, `amount`, `note`) VALUES
(2, '2019-08-26', 'Electricity bill', '12000.00', 'Monthly bill'),
(3, '2019-08-26', 'Fuel cost', '2000.00', 'Diesel for vehicles'),
(4, '2019-08-26', 'Repairs', '45000.00', 'A/C machine repair'),
(5, '2019-08-26', 'Water bill', '720.00', 'Monthly Water bill'),
(6, '2019-08-26', 'Machine maintenance', '4200.00', 'for spare parts'),
(8, '2019-08-27', 'Electricity bill', '1000', 'april');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iname` varchar(1000) NOT NULL,
  `iprice` double NOT NULL,
  `iqty` int(11) NOT NULL,
  `isize` varchar(10) NOT NULL,
  `itype` varchar(100) NOT NULL,
  `igender` varchar(10) DEFAULT NULL,
  `iphoto` varchar(1000) NOT NULL,
  `idesc` varchar(5000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `iname`, `iprice`, `iqty`, `isize`, `itype`, `igender`, `iphoto`, `idesc`) VALUES
(1, 'Item 1', 1000, 10, 's', '', 'm', 'product/DSC_1169.jpg', 'Black Men T-shirt'),
(3, 'item 3', 1000, 12, 'm', '1', 'f', 'product/DSC_1364.jpg', '5656');

-- --------------------------------------------------------

--
-- Table structure for table `leave_details`
--

DROP TABLE IF EXISTS `leave_details`;
CREATE TABLE IF NOT EXISTS `leave_details` (
  `leave_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) DEFAULT NULL,
  `leave_type` varchar(45) DEFAULT NULL,
  `reason` varchar(45) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Pending..!',
  PRIMARY KEY (`leave_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_details`
--

INSERT INTO `leave_details` (`leave_id`, `emp_id`, `leave_type`, `reason`, `start_date`, `end_date`, `status`) VALUES
(1, 1, 'Sick', 'I am sick', '2019-08-26', '2019-08-27', 'Pending..!');

-- --------------------------------------------------------

--
-- Table structure for table `loan_details`
--

DROP TABLE IF EXISTS `loan_details`;
CREATE TABLE IF NOT EXISTS `loan_details` (
  `loan_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) DEFAULT NULL,
  `amount` varchar(45) DEFAULT NULL,
  `loanDate` date DEFAULT NULL,
  `reason` varchar(45) DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Pending..!',
  PRIMARY KEY (`loan_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan_details`
--

INSERT INTO `loan_details` (`loan_id`, `emp_id`, `amount`, `loanDate`, `reason`, `status`) VALUES
(1, 1, '10000', '2019-08-26', 'Pay', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

DROP TABLE IF EXISTS `orderitems`;
CREATE TABLE IF NOT EXISTS `orderitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productprice` varchar(255) NOT NULL,
  `pquantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=229 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`id`, `pid`, `orderid`, `productprice`, `pquantity`) VALUES
(214, 57, 163, '860', 10),
(213, 69, 162, '123', 8),
(228, 2, 172, '850', 1),
(227, 1, 172, '850', 7),
(226, 3, 171, '780', 1),
(225, 4, 171, '790', 1),
(224, 5, 169, '750', 3),
(223, 6, 169, '750', 1),
(222, 2, 169, '850', 1),
(216, 60, 165, '890', 1),
(217, 74, 165, '321', 1),
(218, 60, 166, '890', 6),
(219, 3, 167, '780', 5),
(220, 1, 168, '850', 3),
(221, 4, 169, '790', 1),
(215, 76, 164, '213', 1),
(212, 57, 162, '860', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `oId` int(11) NOT NULL,
  `cName` varchar(50) NOT NULL,
  `No` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  PRIMARY KEY (`oId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`oId`, `cName`, `No`, `city`, `province`) VALUES
(10, 'Karunarathna', '50/3', 'Gampaha', 'WP'),
(11, 'Herath', '25/5', 'Malabe', 'WP'),
(12, 'Ramanayake', '185/2', 'Kurunegala', 'NWP'),
(13, 'Karunarathna', '123/5', 'Ampara', 'EP'),
(14, 'Mendis', '185/2', 'Kegalle', 'SP'),
(15, 'Nandasiri', '456', 'Koswatta', 'WP');

-- --------------------------------------------------------

--
-- Table structure for table `ordertracking`
--

DROP TABLE IF EXISTS `ordertracking`;
CREATE TABLE IF NOT EXISTS `ordertracking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `message` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertracking`
--

INSERT INTO `ordertracking` (`id`, `orderid`, `status`, `timestamp`, `message`) VALUES
(1, 69, 'Cancelled', '2019-08-30 03:05:58', ' d'),
(2, 66, 'Cancelled', '2019-08-30 14:20:40', ' mistake\r\n'),
(3, 73, 'Cancelled', '2019-08-31 23:48:59', ' empty order'),
(4, 73, 'In Progress', '2019-09-01 00:01:30', ' '),
(5, 73, '', '2019-09-01 00:02:09', ' '),
(6, 74, 'Dispatched', '2019-09-01 00:05:14', ' '),
(7, 73, 'Dispatched', '2019-09-01 00:05:22', ' '),
(8, 72, 'Delivered', '2019-09-01 00:08:33', ' '),
(9, 73, 'Cancelled', '2019-09-01 00:24:12', ' i dont wont now'),
(10, 61, 'Delivered', '2019-09-01 00:36:43', ' '),
(11, 71, 'Delivered', '2019-09-01 00:37:07', ' '),
(12, 75, 'In Progress', '2019-09-01 22:32:06', ' '),
(13, 68, 'In Progress', '2019-09-01 22:35:37', ' '),
(14, 70, 'Dispatched', '2019-09-01 23:28:45', ' '),
(15, 67, 'In Progress', '2019-09-02 14:52:47', ' '),
(16, 65, 'Delivered', '2019-09-02 14:53:07', ' '),
(17, 62, 'In Progress', '2019-09-02 15:14:06', ' '),
(18, 62, 'Delivered', '2019-09-02 15:14:30', ' '),
(19, 64, 'In Progress', '2019-09-02 18:55:27', '019-08-27 12:03:35	Order Placed	code	INR 9890'),
(20, 76, 'Dispatched', '2019-09-03 02:43:39', 'dsa'),
(21, 76, 'Dispatched', '2019-09-03 02:45:00', 'dasdas'),
(22, 76, 'In Progress', '2019-09-03 02:45:16', 'dasdasd'),
(23, 76, 'Delivered', '2019-09-03 02:46:10', 'your dasfa'),
(24, 76, 'Dispatched', '2019-09-03 02:49:28', 'dddddd'),
(25, 76, 'In Dispatched', '2019-09-03 03:33:08', 'dsadsa'),
(26, 76, 'Delivered', '2019-09-03 03:36:17', 'dsadas'),
(27, 76, 'In Progress', '2019-09-03 03:37:53', 'yunytn'),
(28, 76, 'Delivered', '2019-09-03 03:39:58', 'ss'),
(29, 76, 'Delivered', '2019-09-03 03:40:21', 'dsad'),
(30, 76, 'Delivered', '2019-09-03 03:45:59', 'rdydr'),
(31, 84, 'Delivered', '2019-09-03 03:46:53', '6765'),
(32, 88, 'Delivered', '2019-09-04 01:16:48', 'thoge magula de'),
(33, 88, 'In Progress', '2019-09-04 01:18:14', 'huuuuuuu'),
(34, 89, 'Dispatched', '2019-09-04 01:32:06', 'ddddddddddd'),
(35, 87, 'In Progress', '2019-09-04 19:01:13', 'sad'),
(36, 100, 'Delivered', '2019-09-05 23:08:08', ''),
(37, 102, 'Delivered', '2019-09-07 08:15:25', ''),
(38, 71, 'Cancelled', '2019-09-07 21:10:00', ' '),
(39, 104, 'In Progress', '2019-09-13 15:07:29', ''),
(40, 106, 'Dispatched', '2019-09-13 15:07:47', ''),
(41, 106, 'Delivered', '2019-09-13 15:08:12', ''),
(42, 106, 'In Progress', '2019-09-13 15:11:07', 'ffffffffffffffffff'),
(43, 105, 'Dispatched', '2019-09-13 15:11:28', ''),
(44, 105, 'Delivered', '2019-09-13 15:11:44', ''),
(45, 104, 'Dispatched', '2019-09-13 15:19:22', ''),
(46, 104, 'Delivered', '2019-09-13 15:19:57', ''),
(47, 110, 'In Progress', '2019-09-13 17:57:13', 'your  order is in progres'),
(48, 110, 'Delivered', '2019-09-13 17:57:54', ''),
(49, 114, 'In Progress', '2019-09-14 00:14:06', 'toge order eka hambuna'),
(50, 114, 'In Progress', '2019-09-14 00:14:11', 'toge order eka hambuna'),
(51, 114, 'In Progress', '2019-09-14 00:14:16', 'toge order eka hambuna'),
(52, 115, 'Dispatched', '2019-09-19 12:55:34', 'daads'),
(53, 116, 'In Progress', '2019-09-22 16:38:23', ''),
(54, 115, '', '2019-09-22 18:19:10', 'aa'),
(55, 112, 'Dispatched', '2019-09-22 18:20:17', 'sdsd'),
(56, 113, 'Dispatched', '2019-09-22 18:20:28', ''),
(57, 113, 'Dispatched', '2019-09-22 18:29:49', ''),
(58, 110, 'In Progress', '2019-09-22 18:32:31', ''),
(59, 113, 'Dispatched', '2019-09-22 18:41:04', ''),
(60, 113, '', '2019-09-22 18:41:57', ''),
(61, 113, '', '2019-09-22 18:42:57', ''),
(62, 111, 'Dispatched', '2019-09-22 19:01:02', 'qwqweq'),
(63, 110, 'Cancelled', '2019-09-22 20:52:05', ' '),
(64, 163, 'Cancelled', '2019-09-24 02:33:39', ' dont want this'),
(65, 164, 'Cancelled', '2019-09-24 02:35:33', ' sw');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `thumbneil` varchar(255) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `qty` int(11) NOT NULL,
  `sellqty` int(11) NOT NULL DEFAULT '0',
  `size` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `categoryid`, `price`, `thumbneil`, `description`, `qty`, `sellqty`, `size`) VALUES
(1, 'BKG-001', 50, '850', 'upload/2.png', 'Bimak Limited Elephant Collection', 0, 10, 'Small'),
(2, 'BKG-002', 50, '850', 'upload/6.png', 'Traditional Dancers', 17, 2, 'Medium'),
(3, 'BKG-003', 50, '780', 'upload/2.png', 'Black Elephant collection', 27, 1, 'Large'),
(4, 'BKL-101', 51, '790', 'upload/5.png', 'Modern Art Collection', 13, 2, 'Small'),
(5, 'BKL-102', 51, '750', 'upload/4.png', 'Elephant Raw Collection', 34, 3, 'Medium'),
(6, 'BKL-022', 51, '750', 'upload/3.png', 'Bimak colorful flower', 32, 1, 'Large'),
(7, 'BKL-023', 51, '750', 'upload/1.png', 'Unique Bird Art ASH', 10, 0, 'Small'),
(8, 'BK-LG-Feather', 49, '1700', 'upload/couple feather.jpg', 'Special Limited Couple colllection', 20, 0, 'Medium');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `review` text NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cphoto` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `pid`, `uid`, `review`, `timestamp`, `cphoto`) VALUES
(55, 1, 52, 'good product', '2019-09-24 07:39:56', 'images/customer/chamod.jpg'),
(54, 57, 38, 'WOW GOOD', '2019-09-24 04:57:46', 'images/customer/DSC_1187.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `salamount`
--

DROP TABLE IF EXISTS `salamount`;
CREATE TABLE IF NOT EXISTS `salamount` (
  `aID` int(11) NOT NULL AUTO_INCREMENT,
  `empType` varchar(100) NOT NULL,
  `basic` double NOT NULL,
  PRIMARY KEY (`aID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salamount`
--

INSERT INTO `salamount` (`aID`, `empType`, `basic`) VALUES
(1, 'Driver', 28000),
(2, 'Order Handler', 25000),
(3, 'Cashier', 20000),
(4, 'Workers', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
CREATE TABLE IF NOT EXISTS `salary` (
  `sal_id` int(11) NOT NULL AUTO_INCREMENT,
  `empID` int(11) NOT NULL,
  `basic` double NOT NULL,
  `bonus` double NOT NULL,
  `bonusType` varchar(100) NOT NULL,
  `deduction` double NOT NULL,
  `deductionType` varchar(100) NOT NULL,
  `total` double NOT NULL,
  `sdate` varchar(100) NOT NULL,
  PRIMARY KEY (`sal_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`sal_id`, `empID`, `basic`, `bonus`, `bonusType`, `deduction`, `deductionType`, `total`, `sdate`) VALUES
(1, 3, 28000, 600, 'newYear', 100, 'loan', 28500, '2019-09-09');

-- --------------------------------------------------------

--
-- Table structure for table `sell_item`
--

DROP TABLE IF EXISTS `sell_item`;
CREATE TABLE IF NOT EXISTS `sell_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemname` varchar(255) NOT NULL,
  `itemqty` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `timestemp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `cphoto` varchar(255) NOT NULL DEFAULT 'images/customer/default.png',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `timestemp`, `lastname`, `firstname`, `telephone`, `cphoto`) VALUES
(43, 'damsiri.dilanjan@gmail.com', '$2y$10$56BQRoN/o7d91DY0Vu./Fu5q9/DiCCKz.Gn6IQW/kj7855xMNAmbu', '2019-09-24 06:35:36', 'Dilanjan', 'Damsiri', '0770885712', 'images/customer/default.png'),
(44, 'pasindu@gmail.com', '$2y$10$SJZ3IzDRiilggUBMCi9YtO7jD2i2bQxIdtjyatzVlNgGVhIH4NOsG', '2019-09-24 06:37:32', 'Nawodya', 'Pasindu', '0774561238', 'images/customer/default.png'),
(45, 'thiwanka@gmail.com', '$2y$10$TWGzAf1vGxQamV16sTYv8OqDQRaPfE/alFfPWZ95M405vjkclACBS', '2019-09-24 06:38:16', 'Thiwanka', 'Tharindu', '0771472583', 'images/customer/default.png'),
(46, 'chamod@gmail.com', '$2y$10$XmLT5q4V/AyRGoOtoTpnReSDWsTf.V7CAeVg16NYYfbhgSaBsCnBS', '2019-09-24 06:39:03', 'Dilshan', 'Chamod', '0774567892', 'images/customer/default.png'),
(47, 'madhawa@gmail.com', '$2y$10$W2bBngiEFcbsRE7CE3aGbuZfbBPddzS8Y3BWfwnPvprt3GEQ1syVu', '2019-09-24 06:39:46', 'Oshan', 'Madhawa', '0711237895', 'images/customer/default.png'),
(48, 'isuru@gmail.com', '$2y$10$Zeth1WAfq5jf8MSfYxZnVeWgS6F35VtxkFS1duiGDINBe9O.qNEvK', '2019-09-24 06:40:32', 'Sathsara', 'Isuru', '0778529634', 'images/customer/default.png'),
(49, 'ashen@gmail.com', '$2y$10$hOfZebX91zTMAIprcq1te.ECyWS/s.0ShSGPn6NatAnLgJ2q/EjzO', '2019-09-24 06:41:21', 'Kavinda', 'Ashen', '0784561239', 'images/customer/default.png'),
(50, 'kamal@gmail.com', '$2y$10$rwmn/pQtGzYfUf8dd08vH.1kVfis1EEZmeuJ8jdhQNnia8S9DwBDS', '2019-09-24 06:42:00', 'Hasitha', 'Kamal', '0775412368', 'images/customer/default.png'),
(51, 'dasun@gmail.com', '$2y$10$FJ1ZFtnanW8lq9QTY8kfGe9jao4Tt9Nm3eZtWuEIHtCXrzzQnSE5K', '2019-09-24 06:42:40', 'Ekanayaka', 'Dasun', '0775214368', 'images/customer/default.png'),
(52, 'chamodcdilshan@gmail.com', '$2y$10$M1cmhxZyJwdLw9QEvDG4Xu3pbJNveGtTcz7MRBWR9YbzajsASpjmC', '2019-09-24 07:36:31', 'dilshan', 'chamod', '0715577568', 'images/customer/chamod.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `usersmeta`
--

DROP TABLE IF EXISTS `usersmeta`;
CREATE TABLE IF NOT EXISTS `usersmeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `usertotal` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usersmeta`
--

INSERT INTO `usersmeta` (`id`, `uid`, `firstname`, `lastname`, `company`, `address1`, `address2`, `city`, `state`, `country`, `zip`, `mobile`, `usertotal`) VALUES
(14, 36, 'dilsnjan', 'damsiri', 'sliit', '231', '3213', '3123', '3123', '', '12321', '12312', 12),
(12, 34, 'cj', 'aa', 'aaa', 'aaa', 'aaa', 'aa', 'aa', '', '232', '324', 32696),
(13, 35, 'tao', 'mihiranga', 'sliit', '31/3 narammala road', 'bla baal', 'narammala', 'nw', '', '3424', '3121212490184', 54345),
(11, 33, 'chamod ', 'dilshan', 'sliit', '52/2 Narammala road,', 'Alawwa', 'alawwa', 'ad', '', '3123', '65213', 12162),
(15, 38, 'DSD', 'SDASDSAD', 'DASD', 'DSAD', 'DASDA', 'DASD', 'SDAD', '', '', '3123123', 0),
(16, 52, 'chamod', 'dilshan', 'sliit', '53/kurunegala', 'dad', 'alawwa', '231', '', '312312', '0715577567', 27120);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
CREATE TABLE IF NOT EXISTS `vehicle` (
  `vehicle_id` int(11) NOT NULL AUTO_INCREMENT,
  `vreg_no` varchar(120) NOT NULL,
  `v_type` varchar(120) NOT NULL,
  `vdesc` varchar(120) NOT NULL,
  `iphoto` varchar(1000) NOT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicle_id`, `vreg_no`, `v_type`, `vdesc`, `iphoto`) VALUES
(2, 'FE4567', 'van', '', 'vehicle/v2.jpg'),
(3, '3356d', 'van', ' Available', 'vehicle/v1.jpg'),
(4, 'QW32', 'van', '', 'vehicle/v2.jpg'),
(5, 'DG25', 'van', 'available', 'vehicle/v2.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
