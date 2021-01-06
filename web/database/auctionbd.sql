-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2021 at 10:24 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auctionbd`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryname`) VALUES
(1, 'COVID-19'),
(2, 'IT AND GRAPHICS'),
(3, 'GARMENTS'),
(4, 'WRITTING');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `productName` text NOT NULL,
  `productPrice` int(11) NOT NULL,
  `productStock` int(11) NOT NULL,
  `productSeller` text NOT NULL,
  `productStartTime` text NOT NULL,
  `productEndTime` text NOT NULL,
  `productCategoryID` int(11) NOT NULL,
  `productImage` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productName`, `productPrice`, `productStock`, `productSeller`, `productStartTime`, `productEndTime`, `productCategoryID`, `productImage`) VALUES
(41, 'MSAAEX Disposable Face Mask', 12, 10000, 'Farhana', '1609924577657', '1609924577657', 1, '1'),
(42, 'MSAAEX Disposable Face Mask', 12, 10000, 'Farhana', '1609924578098', '1609924578098', 1, '2'),
(43, 'MSAAEX Disposable Face Mask', 12, 10000, 'Farhana', '1609924578100', '1609924578100', 1, '3'),
(44, 'MSAAEX Disposable Face Mask', 12, 10000, 'Farhana', '1609924578102', '1609924578102', 1, '4'),
(45, 'MSAAEX Disposable Face Mask', 12, 10000, 'Farhana', '1609924578104', '1609924578104', 1, '5'),
(46, 'MSAAEX Disposable Face Mask', 12, 10000, 'Farhana', '1609924578106', '1609924578106', 1, '1'),
(47, 'MSAAEX Disposable Face Mask', 12, 10000, 'Farhana', '1609924578108', '1609924578108', 1, '2'),
(48, 'MSAAEX Disposable Face Mask', 12, 10000, 'Farhana', '1609924578110', '1609924578110', 1, '3'),
(49, 'MSAAEX Disposable Face Mask', 12, 10000, 'Farhana', '1609924578112', '1609924578112', 1, '4'),
(50, 'MSAAEX Disposable Face Mask', 12, 10000, 'Farhana', '1609924578115', '1609924578115', 1, '5'),
(51, 'MSAAEX Disposable Face Mask', 12, 10000, 'Farhana', '1609924578118', '1609924578118', 1, '1'),
(52, 'MSAAEX Disposable Face Mask', 12, 10000, 'Farhana', '1609924578124', '1609924578124', 1, '2'),
(53, 'MSAAEX Disposable Face Mask', 12, 10000, 'Farhana', '1609924578132', '1609924578132', 1, '3'),
(54, 'MSAAEX Disposable Face Mask', 12, 10000, 'Farhana', '1609924578135', '1609924578135', 1, '4'),
(55, 'MSAAEX Disposable Face Mask', 12, 10000, 'Farhana', '1609924578140', '1609924578140', 1, '5'),
(56, 'MSAAEX Disposable Face Mask', 12, 10000, 'Farhana', '1609924578143', '1609924578143', 1, '1'),
(57, 'MSAAEX Disposable Face Mask', 12, 10000, 'Farhana', '1609924578149', '1609924578149', 1, '2'),
(58, 'MSAAEX Disposable Face Mask', 12, 10000, 'Farhana', '1609924578152', '1609924578152', 1, '3'),
(59, 'MSAAEX Disposable Face Mask', 12, 10000, 'Farhana', '1609924578156', '1609924578156', 1, '4'),
(60, 'MSAAEX Disposable Face Mask', 12, 10000, 'Farhana', '1609924578158', '1609924578158', 1, '5');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `password`) VALUES
(10, 'smensulaiman0007@gmail.com', 'Mohammad Solaiman', 'l.kjljkl'),
(1, 'smensulaiman007@gmail.com', 'Mohammad Solaiman', 'tepsa'),
(5, 'smensulaiman05@gmail.com', 'Mohammad Solaiman', 'mnlkjnk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
