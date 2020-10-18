-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 18, 2020 at 02:59 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ogla`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `firstName` varchar(125) NOT NULL,
  `lastName` varchar(125) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `confirmCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstName`, `lastName`, `email`, `mobile`, `address`, `password`, `type`, `confirmCode`) VALUES
(6, 'Webster', 'Avosa', 'websterb17@gmail.com', '0717678794', 'Mombasa', '$5$rounds=535000$xzS8BmN0..HRuB3b$BuZadi6u.YWHUrKu3GOw75Z0LE8RNgvo8WC47HfPsP0', 'manager', '0'),
(8, 'Ogla', 'Biwott', 'oglabiwott21@gmail.com', '0790358339', 'Nairobi', '$5$rounds=535000$xzS8BmN0..HRuB3b$BuZadi6u.YWHUrKu3GOw75Z0LE8RNgvo8WC47HfPsP0', 'manager', '0');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `ofname` text NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` varchar(11) NOT NULL,
  `oplace` text NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `dstatus` varchar(10) NOT NULL DEFAULT 'no',
  `odate` timestamp NOT NULL DEFAULT current_timestamp(),
  `ddate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `uid`, `ofname`, `pid`, `quantity`, `oplace`, `mobile`, `dstatus`, `odate`, `ddate`) VALUES
(20, NULL, 'Ogla Biwott', 22, 'Inquiry', 'Nairobi', '+254717678794', 'no', '2020-10-11 05:37:42', '2020-10-18'),
(21, NULL, 'Ogla Biwott', 23, 'Inquiry', 'Nairobi', '+254717678794', 'no', '2020-10-11 05:44:33', '2020-10-18'),
(22, 17, 'Ogla Biwott', 23, 'Other', 'Mombasa ', '+254717678794', 'no', '2020-10-11 07:38:57', '2020-10-18'),
(23, NULL, 'Webster Avosa', 23, 'Other', 'Mombasa ', '+254717678794', 'no', '2020-10-11 09:02:26', '2020-10-18'),
(24, 20, 'Ogla Biwott', 36, 'Other', 'Nairobi', '0790123800', 'no', '2020-10-11 10:52:15', '2020-10-18'),
(25, 20, 'Ogla Biwott', 26, '3', 'Nairobi', '+2547901239008', 'no', '2020-10-11 10:54:01', '2020-10-18'),
(27, 20, 'Ogla Biwott', 36, '2', 'Mombasa ', '+254717678794', 'no', '2020-10-11 13:16:48', '2020-10-18'),
(28, 20, 'Ogla Biwott', 43, '3', 'Mombasa ', '+254717678794', 'no', '2020-10-11 13:18:23', '2020-10-18');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `pName` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `description` text NOT NULL,
  `available` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `pCode` varchar(20) NOT NULL,
  `picture` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pName`, `price`, `description`, `available`, `category`, `item`, `pCode`, `picture`, `date`) VALUES
(22, 'Bungalow', 11000000, 'Available in Mombasa, Nairobi and Nakuru', 1000, 'house', 'houses', '1-00w', 'h6.png', '2020-10-11 04:14:54'),
(23, 'Mwahu Bungalows, Nairobi', 5000000, 'Available in Mombasa, Nairobi and Nakuru', 10000, 'house', 'houses', '1-00Q', 'h4.png', '2020-10-11 04:17:38'),
(24, 'Nairobi House Painting services', 2000, 'Available in Nairobi County', 300, 'painting', 'painting', '1-000', 'p2.png', '2020-10-11 05:28:04'),
(25, 'Cement Additives', 500, 'Boosts performance of cement', 10000, 'equipment', 'cement', 'i-pppp', 'e6.png', '2020-10-11 09:15:11'),
(26, 'Simba Cement', 850, 'Best Cement ever in East Africa and Central Africa', 10000, 'equipment', 'cement', '0-ppp1', 'e1.png', '2020-10-11 09:16:31'),
(28, 'Track for carrying goods bought', 350000, 'The only track youll get for such price', 1000, 'equipment', 'Track', '0-6789', 'l8.png', '2020-10-11 09:35:57'),
(29, 'Cement mixer', 250000, 'Just wow', 10000, 'equipment', 'mixer', '0-ijyk', 'e5.png', '2020-10-11 09:37:42'),
(30, 'Nairobi ample space for all your building', 100000, 'We offer better services and prices ', 1000, 'logistics', 'logistics', '0-6789', 'l1.png', '2020-10-11 09:40:11'),
(31, 'Land', 670000, 'We offer better services and prices ', 10000, 'logistics', 'land', '0-567', 'l4.png', '2020-10-11 09:41:39'),
(32, 'Urban ', 350000, 'We offer better services and prices ', 1000, 'logistics', 'log', '0-6789', 'l7.png', '2020-10-11 09:42:47'),
(33, 'Land', 350000, 'We offer better services and prices ', 10000, 'logistics', 'painting', '74900', 'l1.png', '2020-10-11 09:43:36'),
(34, 'City painting', 8000, 'We offer better services and prices ', 1000, 'painting', 'painting', '1-00w', 'p4.png', '2020-10-11 09:45:03'),
(35, 'painting', 67890, 'We offer better services and prices ', 1000, 'painting', 'painting', '439361', 'p6.png', '2020-10-11 09:45:53'),
(36, 'painting', 8000, 'We offer better services and prices ', 10000, 'painting', 'painting', '0-ijyk', 'p5.png', '2020-10-11 09:46:46'),
(37, 'painting', 8000, 'We offer good service', 10000, 'painting', 'painting', '548089', 'p7.png', '2020-10-11 09:51:05'),
(44, 'Flat', 20000000, 'Flat in Nakuru ', 10000, 'house', 'houses', '0-1234', 'h7.png', '2020-10-17 23:54:33'),
(45, 'Palace Square and Co Builds', 3500000, 'Want a palace, we will construct one for you!', 10000, 'house', 'houses', '1-000', 'h2.png', '2020-10-17 23:56:09');

-- --------------------------------------------------------

--
-- Table structure for table `product_level`
--

CREATE TABLE `product_level` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `v_shape` varchar(10) NOT NULL DEFAULT 'no',
  `polo` varchar(10) NOT NULL DEFAULT 'no',
  `clean_text` varchar(10) NOT NULL DEFAULT 'no',
  `design` varchar(10) NOT NULL DEFAULT 'no',
  `chain` varchar(10) NOT NULL DEFAULT 'no',
  `leather` varchar(10) NOT NULL DEFAULT 'no',
  `hook` varchar(10) NOT NULL DEFAULT 'no',
  `color` varchar(10) NOT NULL DEFAULT 'no',
  `formal` varchar(10) NOT NULL DEFAULT 'no',
  `converse` varchar(10) NOT NULL DEFAULT 'no',
  `loafer` varchar(10) NOT NULL DEFAULT 'no'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_level`
--

INSERT INTO `product_level` (`id`, `product_id`, `v_shape`, `polo`, `clean_text`, `design`, `chain`, `leather`, `hook`, `color`, `formal`, `converse`, `loafer`) VALUES
(41, 41, 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(40, 40, 'no', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(39, 39, 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(38, 38, 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(37, 37, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no'),
(36, 36, 'no', 'no', 'no', 'yes', 'no', 'yes', 'no', 'no', 'no', 'no', 'no'),
(35, 35, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no'),
(34, 34, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(33, 33, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'no'),
(32, 32, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'no'),
(31, 31, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes'),
(30, 30, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'no'),
(29, 29, 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'no'),
(28, 28, 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'no'),
(27, 27, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(26, 26, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(25, 25, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(24, 24, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(23, 23, 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(22, 22, 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(42, 42, 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(43, 43, 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(44, 44, 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(45, 45, 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `product_view`
--

CREATE TABLE `product_view` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_view`
--

INSERT INTO `product_view` (`id`, `user_id`, `product_id`, `date`) VALUES
(32, 20, 41, '2020-10-11 13:18:51'),
(31, 19, 40, '2020-10-11 13:10:40'),
(30, 20, 22, '2020-10-11 13:03:04'),
(29, 20, 43, '2020-10-11 13:17:39'),
(28, 20, 38, '2020-10-11 10:51:15'),
(27, 20, 39, '2020-10-11 10:51:10'),
(26, 19, 38, '2020-10-11 10:48:30'),
(25, 19, 39, '2020-10-11 13:11:32'),
(24, 19, 43, '2020-10-11 10:48:31'),
(23, 17, 38, '2020-10-11 17:44:24'),
(22, 17, 39, '2020-10-11 17:44:21'),
(21, 17, 43, '2020-10-11 10:03:59'),
(20, 17, 22, '2020-10-17 23:56:22'),
(19, 17, 23, '2020-10-17 23:56:26'),
(33, 17, 45, '2020-10-17 23:56:33'),
(34, 17, 44, '2020-10-18 00:58:14');

-- --------------------------------------------------------

--
-- Table structure for table `UserRating`
--

CREATE TABLE `UserRating` (
  `id` int(11) NOT NULL,
  `firstName` varchar(125) NOT NULL,
  `ratingMessage` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `UserRating`
--



-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `reg_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `online` varchar(1) NOT NULL DEFAULT '0',
  `activation` varchar(3) NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `mobile`, `reg_time`, `online`, `activation`) VALUES
(20, 'Ogla Biwott', 'oglabiwott21@gmail.com', 'ogla', '$5$rounds=535000$z7w9uYgwfbok1kGx$aabqsubMn8DGJENHWXDIaKjGqqgiQ53xbXx8kNbecoD', '+254790123879', '2020-10-11 10:50:27', '0', 'yes'),
(17, 'Webster Avosa', 'websterb17@gmail.com', 'webster', '$5$rounds=535000$Zmy71Ror1yIJpsn2$uqMqPgBVp302eAZU4KuBOg/2SHiAj8fFVvZ/UUq1YV8', '+254717678794', '2020-10-11 01:17:39', '1', 'yes'),
(16, 'Webster Avosa', 'websterb17@gmail.com', 'webster', '$5$rounds=535000$xzS8BmN0..HRuB3b$BuZadi6u.YWHUrKu3GOw75Z0LE8RNgvo8WC47HfPsP0', '+254717678794', '2020-10-11 00:20:51', '1', 'yes'),
(21, 'Ogla Biwott', 'oglabiwott21@gmail.com', 'oglabiwott21@gmail.com', '$5$rounds=535000$PFdWXpc1MEW9trvq$J4xqsWIKh4IubkgoWUoiWC6kuXMtriINfpJ.clW7JND', '+254717678794', '2020-10-11 13:15:14', '0', 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `UserRating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_level`
--
ALTER TABLE `product_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_view`
--
ALTER TABLE `product_view`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;




ALTER TABLE `UserRating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `product_level`
--
ALTER TABLE `product_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `product_view`
--
ALTER TABLE `product_view`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
