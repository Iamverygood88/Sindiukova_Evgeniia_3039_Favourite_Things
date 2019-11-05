-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 04, 2019 at 06:55 PM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_favourite_things`
--

-- --------------------------------------------------------

--
-- Table structure for table `image_change`
--

CREATE TABLE `image_change` (
  `id` int(11) NOT NULL,
  `imageChange` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `image_change`
--

INSERT INTO `image_change` (`id`, `imageChange`) VALUES
(1, 'avocado.jpg'),
(2, 'corgi.jpg'),
(3, 'aloe_vera.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `three_favourite_things`
--

CREATE TABLE `three_favourite_things` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `image` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `additional_info` text NOT NULL,
  `video_link` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `three_favourite_things`
--

INSERT INTO `three_favourite_things` (`id`, `title`, `image`, `description`, `additional_info`, `video_link`) VALUES
(1, 'Avocado Lover', 'avocado_lightbox.jpg', 'Avocado is my favourite fruit because it is nutritious and does not contain harmful fats. Avocados don\'t have cholesterol, it contains substances that break down cholesterol in the blood.', 'All parts of the plant, except the pulp of the fruit, are poisonous, including the bone and peel. Biologically it is a fruit, but often it is mistakenly attributed to vegetables for unusual nutrition and taste. ', 'How To Prepare An Avocado:\r\nhttps://www.youtube.com/watch?v=h0fUd-B5-m0'),
(2, 'Corgi', 'corgi_lightbox.jpg', 'My favourite dog is a Corgi. This dog has her/his own personality and looks very cute. \r\n', 'Welsh Corgi is one of the oldest English breeds of dogs, which is divided into two types: Cardigan and Pembroke. They differ in colour and some characteristics of the character: Cardigans are more calm and cautious, and Pembroke are more energetic.', 'Watch some fun video about the dog:\r\nhttps://www.youtube.com/watch?v=oVXZTmi2ruI\r\n'),
(3, 'Home Plants', 'plant_lightbox.jpg', 'I love home plants because they are helping to reduce indoor air pollution. ', '7 million people die from pollution every year. Plants decrease stress levels at home, \r\nworkplace. Also, they help sleep better, fight colds, improve wellbeing.', 'How to choose the \"Top 7 Indoor Plants for your Home\":\r\nhttps://www.youtube.com/watch?v=ISau7zBDlm0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `image_change`
--
ALTER TABLE `image_change`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `three_favourite_things`
--
ALTER TABLE `three_favourite_things`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `image_change`
--
ALTER TABLE `image_change`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `three_favourite_things`
--
ALTER TABLE `three_favourite_things`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
