-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 29, 2025 at 06:55 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `TOP_GAMES`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `stock` int(11) DEFAULT 0,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category`, `stock`, `image_url`) VALUES
(1, 'Keyboard RGB', 'Mechanical keyboard with RGB lights', 1500.00, 'Electronics', 10, 'img/keyboard.jpg'),
(2, 'Gaming Mouse', 'Ergonomic gaming mouse', 700.00, 'Electronics', 20, 'img/mouse.jpg'),
(3, 'Monitor 24\"', 'Full HD monitor', 3500.00, 'Electronics', 5, 'img/monitor.jpg'),
(4, 'Laptop Bag', 'Waterproof laptop backpack', 1200.00, 'Accessories', 15, 'img/bag.jpg'),
(5, 'Wireless Headset', 'Bluetooth gaming headset', 1200.00, 'Electronics', 8, 'img/headset.jpg'),
(6, 'Gaming Chair', 'Ergonomic gaming chair', 5500.00, 'Furniture', 5, 'img/chair.jpg'),
(7, 'Mouse Pad XL', 'Large mouse pad', 300.00, 'Accessories', 20, 'img/mousepad.jpg'),
(8, 'Webcam HD', '1080p webcam', 900.00, 'Electronics', 10, 'img/webcam.jpg'),
(9, 'External HDD 1TB', 'Portable hard drive', 1500.00, 'Electronics', 12, 'img/hdd.jpg'),
(10, 'USB-C Hub', 'Multiport adapter', 700.00, 'Accessories', 15, 'img/hub.jpg'),
(11, 'Gaming Keyboard', 'Mechanical keyboard', 1300.00, 'Electronics', 7, 'img/keyboard2.jpg'),
(12, 'Smartwatch', 'Fitness smartwatch', 2500.00, 'Wearable', 10, 'img/watch.jpg'),
(13, 'Graphic Tablet', 'Drawing tablet', 3500.00, 'Electronics', 6, 'img/tablet.jpg'),
(14, 'VR Headset', 'Virtual reality headset', 12000.00, 'Electronics', 3, 'img/vr.jpg'),
(15, 'Desk Lamp', 'LED desk lamp', 400.00, 'Furniture', 10, 'img/lam.jpg'),
(16, 'Portable Speaker', 'Bluetooth speaker', 900.00, 'Electronics', 8, 'img/speaker.jpg'),
(17, 'Microphone', 'USB condenser microphone', 1200.00, 'Electronics', 5, 'img/mic.jpg'),
(18, 'Gaming Monitor 27\"', 'QHD monitor', 7500.00, 'Electronics', 4, 'img/monitor27.jpg'),
(19, 'Laptop Stand', 'Aluminum laptop stand', 800.00, 'Accessories', 15, 'img/stand.jpg'),
(20, 'Gaming Router', 'High speed router', 2000.00, 'Electronics', 6, 'img/router.jpg'),
(21, 'Webcam Cover', 'Privacy cover', 100.00, 'Accessories', 50, 'img/cover.jpg'),
(22, 'HDMI Cable', '2m HDMI cable', 200.00, 'Accessories', 40, 'img/hdmi.jpg'),
(23, 'Power Bank', '10000mAh power bank', 900.00, 'Electronics', 20, 'img/powerbank.jpg'),
(24, 'Laptop Cooling Pad', 'Cooling pad for laptops', 500.00, 'Accessories', 10, 'img/coolingpad.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
