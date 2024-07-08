-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2024 at 12:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `madical`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(111) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(111) NOT NULL,
  `role` int(11) NOT NULL,
  `mobail` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `manage` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `role`, `mobail`, `status`, `manage`) VALUES
(1, 'admin', 'admin', 'admin', 0, '', 1, 'ADMIN'),
(3, 'pritam', 'gyhfvghfcvyttfyghfvgh@gmail.com', 'pritam', 1, '7501115937', 1, 'product meneger'),
(4, 'amit', 'gyhfvghfcvyttfyghfvgh@gmail.com', 'amit', 1, '7501115937', 0, 'user & contact'),
(5, 'mishra', 'mishrapritam831@gmail.com', '4561', 1, 'Dassboard', 0, '7501115937');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(111) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`, `pid`) VALUES
(25, 'chair', 1, 0),
(26, 'pritam', 1, 0),
(27, 'jnvhv', 1, 0),
(28, 'cat1', 0, 0),
(29, 'cat2', 0, 0),
(30, 'cat3', 0, 0),
(31, 'cat4', 0, 0),
(32, 'shirt', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobail` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(111) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `sub_categories_id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(300) NOT NULL,
  `short_desc` text NOT NULL,
  `description` text NOT NULL,
  `meta_desc` varchar(2000) NOT NULL,
  `status` int(11) NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL,
  `tex` int(11) NOT NULL,
  `meta_title` varchar(2000) NOT NULL,
  `best_seller` int(11) NOT NULL,
  `added_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `sub_categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `meta_desc`, `status`, `meta_keyword`, `tex`, `meta_title`, `best_seller`, `added_by`) VALUES
(1, 25, 0, 'test', 568, 56, 10, '6892576093_1.jpg', 'Armchair: A chair with supports for the arms, providing additional comfort.\r\nDining Chair: Often simpler in design, these are used around a dining table and may or may not have armrests.', 'A chair is a piece of furniture designed to provide a comfortable seating arrangement for one person. Its primary components typically include a seat, backrest, armrests, and legs. Chairs can vary significantly in design, materials, and functionality, serving different purposes in various settings such as homes, offices, and public spaces.', 'My Chear', 1, 'Chear69', 10, 'Chear', 1, 0),
(2, 25, 4, 'Chair', 895, 90, 11, '2453624696_1.png', 'Office Chair: Designed for use at a desk, these chairs often have wheels, adjustable height, and ergonomic features to support long periods of sitting.\r\nRecliner: A chair that can tilt back, often with a footrest that extends, offering a more relaxed seating position.\r\nRocking Chair: Mounted on curved bands (rockers) that allow it to rock back and forth.', 'Chairs can be made from a variety of materials, including wood, metal, plastic, and upholstery. The choice of material affects the chair\'s durability, weight, and aesthetic appeal. Wooden chairs are classic and sturdy, metal chairs are often sleek and modern, while plastic chairs are lightweight and versatile. Upholstered chairs offer added comfort with cushioning and fabric or leather covers.', '', 1, '', 20, '', 0, 0),
(3, 26, 0, 'admin', 632, 60, 10, '1927891373_2.jpg', 'Rocking Chair: Mounted on curved bands (rockers) that allow it to rock back and forth.', 'Modern chair design often emphasizes ergonomics to promote good posture and reduce strain on the body. Features such as lumbar support, adjustable height, and contoured seats help in maintaining comfort, especially during prolonged use. Ergonomically designed chairs are particularly important in office environments to enhance productivity and well-being.', '', 1, '', 10, '', 0, 0),
(4, 25, 0, 'MAHARAJA Omega for Home, Office', 4499, 2879, 12, '2246527865_2.png', 'MAHARAJA Omega for Home, Office | Comfortable | Arm Rest | Bearing Capacity up to 200Kg Plastic Outdoor Chair  (Brown, Set of 4, Pre-assembled)', 'These plastic chairs are a wonderful addition to any home. Featuring a stylish design with an ergonomic seat back, these chairs are perfect for any hosting event. With the added benefit of being stackable, these chairs are ideal to bring out for any event where you need extra seating.', '', 1, '', 25, '', 0, 0),
(5, 25, 0, 'Wakefit Safari Fabric Office Executive Chair', 13299, 7313, 10, '2567909880_3.jpg', 'Wakefit Safari Fabric Office Executive Chair  (Black, Grey, Optional Installation Available)', 'Our Safari high back office chairs online come with a synchro tilt mechanism that provides coordinated movement of the seat and back to support change of posture for comfortable working throughout the day. The ergonomic backrest of these office chairs online reduces stress on your spine and lower back while the adjustable lumbar support and arms helps you check your posture. The Wakefit Safari high back office chairs online have a mesh headrest which can protect you from annoying neck and shoulder area aches that have become a common occupational hazard. They also have a wide spider base for stability and durability.', 'This is a Chear', 1, 'chear45', 5465, 'Chear', 1, 0),
(6, 26, 5, 'CELLBELL Desire C104 Mid Back', 9999, 3599, 10, '8179220578_4.jpg', 'CELLBELL Desire C104 Mid Back Comfortable Fabric Office Executive Chair  (Red, Optional Installation Available)', '1) Ergonomic Sitting Position : C104 Chair provides you best in class sitting postures for extra comfort. 2) Seat and Base : 2 inch Thick Foam Cushion Padded Seat for your long hours comfort | Pneumatic Hydraulic with 4 inch seat height adjustment | Breathable contoured Mesh Back Fabric | Chair comes with Sturdy Metal Base for extra strength. 3) Lumbar Adjustments : Lumbar adjustments can be pushed upward, down for better supports to the back. It also features locking back support lever adjustment, if you wish to relax or stretch legs! 4) Arm-rest : Padded Arm-rest. 5) Height Suitability : 5 ft to 6 ft. 6) Weight Capacity : 105 Kgs. 7) BIFMA Certified. 8) Warranty : 12 Months Warranty against Manufacturing Defects.', '', 1, '', 565, '', 0, 0),
(7, 27, 0, 'GREEN SOUL Seoul-X Mid Back Ergonomic', 5980, 3, 10, '4124329009_5.jpg', 'GREEN SOUL Seoul-X Mid Back Ergonomic|Home,WFH|Moulded Foam|Extra Comfort Fabric Office Adjustable Arm Chair  (Black, Optional Installation Available)', 'Introducing the Green Soul Seoul-X Mid Back Ergonomic Office Chair. With its premium fabric upholstery on the chair back and seat, this chair offers a touch of luxury to your workspace. The wide molded foam chair seat provides exceptional comfort and support throughout the day. The chair frame is made of solid wood, ensuring long-lasting durability. Equipped with fixed PP armrests, this chair offers added support to your arms and shoulders. The push back mechanism allows the chair back to rock between 90-120 degrees, giving you the flexibility to find your preferred angle for relaxation or focused work. The Class 3 gas lift ensures smooth height adjustment, while the heavy-duty metal wheelbase and 50mm nylon dual castor wheels provide stability and effortless mobility on various floor surfaces. The Seoul-X chair has a weight holding capacity of 90 kgs, . It comes with a 15 Months warranty, giving you peace of mind. The chair is designed for easy assembly with the included DIY kit.', '', 1, '', 89, '', 0, 0),
(16, 25, 4, 'u65ytehdgfdc', 565654, 6565, 2, '3679708304_651584201_Floral-Embroidered-Polo-T-shirt.jpg', '', '', '', 1, '', 0, '', 1, 0),
(17, 27, 1, 'awrsedtfghyj', 565654, 6565, 2, '7803170230_309027777_Floral-Print-Polo-T-shirt.jpg', '', '', '', 1, '', 0, '', 1, 0),
(18, 32, 7, 'tshirt', 5654640, 545, 10, '7585133237_931830512__8-(1)-E5x-104831-NJD.jpg', '', '', '', 1, '', 0, '', 1, 0),
(20, 32, 7, 'test desc', 6456, 456, 10, '4299934273_matthew-hamilton-3RlGBpFeoQg-unsplash.jpg', 'test desc', 'test desc', '', 1, '', 0, '', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `sub_categories` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `categories_id`, `sub_categories`, `status`) VALUES
(1, 27, 'mobail', 1),
(2, 25, 'uyfhgcv', 1),
(3, 26, 'uyfghcv', 1),
(4, 25, 'ytfhgvbn', 1),
(5, 26, 'uryfujgfigh', 1),
(6, 27, '6rutfhtghdgfdc', 1),
(7, 32, 'Tshirt', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
