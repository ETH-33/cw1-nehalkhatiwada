-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2023 at 06:45 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(2, 1, 'nehal', '9860090088', 'nehalkhatiwada2542@gmail.com', 'cash on delivery', '30, 105, Anmanagar, Kathmandu, Kathmandu, Bagmati, Nepal - 44600', 'MO:MO (1500 x 1) - Tubrog (800 x 1) - ', 2300, '2023-07-13', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `image`) VALUES
(1, 'MO:MO', 'fast food', 1500, 'Momo.jpg'),
(2, 'Tikka', 'main dish', 1500, 'tikka.jpg'),
(3, 'Marriott Burger', 'fast food', 1500, 'burger.jpg'),
(4, 'Katti Roll (Non-Veg)', 'fast food', 1150, 'kattinon.jpg'),
(5, 'Katti Roll (Veg)', 'fast food', 1000, 'kattiveg.jpg'),
(6, 'Vegetable Ravioli', 'main dish', 2250, 'Vegetable Ravioli.jpg'),
(7, 'Linguine Prawn', 'main dish', 4000, 'prawn.jpeg'),
(8, 'Double Boiled Chicken Soup', 'main dish', 1150, 'chicken soup.jpg'),
(9, 'Croissant (Per pc)', 'desserts', 400, 'Croissant.jpg'),
(10, 'Pain Au Chocolate (Per pc)', 'desserts', 400, 'PainAuChocolat.jpg'),
(11, 'Chocolate Muffin (Per pc)', 'desserts', 350, 'muffin.jpg'),
(12, 'Oats Muffin (Per pc)', 'desserts', 350, 'Oatmeal-Muffin.jpg'),
(13, 'White Bread Loaf (450 gm)', 'desserts', 450, 'white-bread-sliced.jpg'),
(14, 'Multigrain Bread Loaf (450 gm)', 'desserts', 500, 'multigrain bread.jpg'),
(15, 'Mutton Rogan Josh', 'main dish', 3000, 'Mutton-Roganjosh-scaled.jpg'),
(16, 'Butter Chicken', 'main dish', 1650, 'Butter-Chicken.jpg'),
(17, 'Club Sandwich (Non-Veg)', 'fast food', 1500, 'sandwitch.jpg'),
(18, 'Veggie Delight', 'fast food', 1500, 'veggie.jpg'),
(19, 'Tubrog', 'drinks', 800, 'tubrog.jpg'),
(20, 'Barahsinghe Beer ', 'drinks', 600, 'Barahsinghe_Pilsner_650ML.jpg'),
(21, 'Gorkha Strong', 'drinks', 500, 'gorkha.jpg'),
(22, 'Bubble Tea', 'drinks', 450, 'buble tea.jpg'),
(23, 'Coke', 'drinks', 350, 'coke.jpg'),
(24, 'lemonade', 'drinks', 750, 'lemonade.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `number`, `password`, `address`) VALUES
(1, 'nehal', 'nehalkhatiwada2542@gmail.com', '9860090088', 'c217bfaa82c142d7d452de80d6f46a836da74da5', '30, 105, Anmanagar, Kathmandu, Kathmandu, Bagmati, Nepal - 44600');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
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
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
