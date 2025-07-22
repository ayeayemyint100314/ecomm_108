-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2025 at 09:03 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rose_mall`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(60) NOT NULL,
  `remark` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `remark`) VALUES
(1, 'admin', '$2y$10$leMedI7baXakOX3E6s9WS.pVxpXf0K2zBaDcEY3HZZ376lWWihZGW', 'primary admin by CEO');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cid` int(11) NOT NULL,
  `cname` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cid`, `cname`) VALUES
(2, 'clothing'),
(4, 'cosmetics'),
(3, 'electronics'),
(1, 'food and drink'),
(6, 'Furniture'),
(5, 'medicines');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `iname` varchar(120) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `description` varchar(120) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `img_path` varchar(120) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `iname`, `price`, `description`, `quantity`, `img_path`, `category`) VALUES
(1, 'wine gold', 34000, 'It is the product of Shan State and 10 years old.', 500, './images/wine1.jpg', 1),
(2, 'Maybelline lipstick matte updated', 50000, 'Maybelline New York Color Sensational Inti-Matte Nude Lipstick, Toasted Brown', 6000, 'images/maybellineLStick2.jpeg', 4),
(3, 'T-WOLF Colorful Gaming Mouse V1 (3M)', 89, 'T-WOLF Colorful Gaming Mouse V1 (3M)', 1000, 'images/gmouse2.jpeg', 3),
(4, 'Dell Latitude Core i7 6th Gen ', 500, 'Dell Latitude Core I7 6th Gen - (8 Gb/512 Gb Ssd/windows 10) E7470 Laptop  (14 Inch, Black)', 200, 'images/dell22.jpeg', 3),
(5, 'Lipstick2', 122, 'This is lipstick 2.', 123, 'images/lipstick2.jpg', 4),
(7, 'Jasper Armchair', 30, 'Studio Zondag - Jesper Lounge chair, walnut / leather black', 600, 'images/armchair2.jpg', 6),
(8, '79 yogurt', 1, 'လှည်းကလေး ဒိန်ချဉ်', 200, 'images/yogurt79.jpg', 1),
(10, 'arm chair', 50, 'dfdfdfdfdfdfdf', 5000, 'images/woodarmchair3.jpg', 6),
(11, 'Para Denk 500 mg', 1, 'Para-Denk Tablet. Short description: Indicated for the symptomatic treatment of mild to moderate pain and/or fever.', 5000, 'images/paraDenk.jpeg', 5),
(12, 'Benda 500', 2, 'Trichinosis အတွက် လူကြီးသောက် ပုံမှန်ပမာဏ 200 – 400 mg တစ်ရက်လျှင် ၃ ကြိမ် ၃ ရက်။ ထို့နောက် 400 – 500 mg တစ်ရက် ၃ ကြိမ် ', 5000, 'images/benda500.jpeg', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `orderId` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`orderId`, `item_id`, `quantity`) VALUES
(5, 1, 4),
(5, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderId` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `oDate` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderId`, `userId`, `oDate`) VALUES
(1, 8, NULL),
(2, 8, '2025-07-22 09:44:31'),
(3, 8, '2025-07-22 10:24:35'),
(4, 8, '2025-07-22 13:17:51'),
(5, 8, '2025-07-22 13:30:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `profile_path` varchar(100) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `email`, `gender`, `city`, `phone`, `profile_path`, `password`) VALUES
(1, 'alex', 'ayeayemyint1073@gmail.com', 'on', 'Yangon', '09967096742', 'profile/siri.jpg', '111111'),
(2, 'mia', 'mia@gmail.com', 'female', 'Myitkyina', '09967096742', 'profile/logoimage.png', 'Abc123!@#'),
(3, 'thiri', 'thiri@gmail.com', 'female', 'Malamyine', '09967096721', 'profile/logoimage.png', 'Abc123!@#'),
(5, 'thawtar', 'thawtar23@gmail.com', 'female', 'Malamyine', '09967096723', 'profile/fitme1.jpeg', 'Abc123!@#'),
(6, 'zaw', 'zaw@gmail.com', 'male', 'Yangon', '09967096733', 'profile/logoimage.png', 'Abc123!@#'),
(7, 'heinthaw', 'heinthaw@gmail.com', 'male', 'Yangon', '09967096722', 'profile/fitme1.jpeg', '$2y$10$q9Fkhgy/qA6Uv1IRlxTIfej4gmVOVH8qljYXF7uTDyMx7auvOqSQK'),
(8, 'autumn12', 'autum21@gmail.com', 'female', 'Myitkyina', '09967096222', 'profile/profilegirl1.jfif', '$2y$10$GHuwGkb8.HAL7e1Ua0Zx7e8T2UneaeWOAVut8AIWwVy.L03kXcNpm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `cname` (`cname`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`orderId`,`item_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`category`) REFERENCES `category` (`cid`);

--
-- Constraints for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `orders` (`orderId`),
  ADD CONSTRAINT `orderdetail_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
