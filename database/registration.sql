-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2021 at 03:32 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'test', 'test123');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `HEART` int(11) NOT NULL,
  `LUNG` int(11) NOT NULL,
  `BP` int(11) NOT NULL,
  `SUGAR` int(11) NOT NULL,
  `OXYGENLEVEL` int(11) NOT NULL,
  `TEMPERATURE` int(11) NOT NULL,
  `id` int(255) NOT NULL,
  `connect` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`HEART`, `LUNG`, `BP`, `SUGAR`, `OXYGENLEVEL`, `TEMPERATURE`, `id`, `connect`) VALUES
(120, 27, 159, 175, 108, 100, 7, 21),
(87, 30, 120, 121, 83, 104, 8, 21),
(52, 14, 156, 151, 104, 102, 9, 21),
(45, 30, 157, 140, 85, 98, 10, 21),
(53, 28, 122, 160, 92, 100, 11, 21),
(63, 21, 157, 203, 84, 104, 12, 21),
(90, 12, 148, 145, 79, 92, 44, 21),
(61, 9, 151, 145, 106, 93, 45, 21),
(124, 20, 132, 154, 81, 102, 46, 21),
(76, 21, 121, 213, 81, 98, 47, 21),
(45, 27, 123, 143, 86, 96, 48, 21),
(130, 9, 149, 166, 104, 94, 49, 21),
(88, 28, 146, 167, 70, 92, 50, 21),
(109, 11, 145, 195, 85, 96, 51, 21),
(77, 23, 126, 195, 102, 97, 52, 21),
(71, 9, 124, 209, 81, 105, 53, 21),
(90, 12, 139, 132, 91, 96, 54, 21),
(76, 11, 121, 199, 105, 105, 55, 21),
(69, 23, 158, 201, 110, 95, 56, 21),
(112, 11, 159, 187, 73, 93, 57, 21),
(56, 16, 146, 170, 108, 98, 58, 21),
(69, 15, 145, 140, 79, 94, 59, 21),
(60, 12, 121, 127, 92, 100, 60, 21),
(88, 11, 120, 120, 99, 94, 61, 21),
(90, 12, 135, 166, 108, 92, 62, 21),
(52, 10, 124, 138, 96, 105, 63, 21),
(78, 22, 147, 209, 79, 92, 64, 21),
(124, 15, 132, 141, 74, 92, 65, 21),
(89, 13, 149, 179, 91, 102, 66, 21),
(85, 19, 135, 175, 88, 102, 67, 21),
(118, 26, 147, 216, 109, 93, 68, 21);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `email`) VALUES
(21, 'aman', 'aman123', 'amanahrmaa@9991');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `connect` (`connect`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data`
--
ALTER TABLE `data`
  ADD CONSTRAINT `data_ibfk_1` FOREIGN KEY (`connect`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
