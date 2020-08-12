-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2020 at 04:57 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zentao`
--

-- --------------------------------------------------------

--
-- Table structure for table `phara`
--

CREATE TABLE `phara` (
  `phara_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `day` tinyint(1) NOT NULL,
  `ville_id` int(11) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `addrsse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phara`
--

INSERT INTO `phara` (`phara_id`, `name`, `day`, `ville_id`, `tel`, `mail`, `addrsse`) VALUES
(1, 'hello world', 5, 7, 'IR63RI7', 'KFJHDSKJ@JHFDKJ', 'GREZHJEZ'),
(2, 'smail phara', 20, 7, '09887333', 'hello_world', 'kaddisqsadz'),
(3, 'helopspdk', 0, 7, 'fzerge', 'dgferyer', 'qsfzet\"'),
(4, 'kaddi ismail', 22, 7, '0615819924', 'hello-kaddi@hotmail.com', 'tinghi-agadir'),
(5, 'dada', 20, 8, '73643275', 'adrar-tinghir', 'hghhgjhg'),
(6, 'kjkfdg', 0, 8, 'lhfhbjklg', 'nxvjkdf', 'jjkvdkg'),
(7, 'kqdkqf', 0, 5, 'wkjfhsdqkjl', 'lkhjfek', 'xfdqsjljzeg'),
(8, 'fdklsgj', 0, 9, ';jdhkjehdkq', 'khfsdqkjks', 'khdekjf');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `cpassword` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `email`, `firstname`, `lastname`, `cpassword`, `image`) VALUES
(14, '1234', '81dc9bdb52d04dc20036dbd8313ed055', '1234@HHH', '1234', '1234', '81dc9bdb52d04dc20036dbd8313ed055', ' HGFHGJ'),
(18, 'smayl', '71bb6b8dac844e9dcee65d9878d8493a', 'kaddi@kaddi', 'ismail', 'kaddi', '71bb6b8dac844e9dcee65d9878d8493a', ' https://user-images.githubusercontent.com/47373251/82900946-2630f280-9f55-11ea-98fd-28e2c6b27a82.png'),
(23, 'smayl', '81dc9bdb52d04dc20036dbd8313ed055', 'smail@smail', 'smail', 'kaddi', '81dc9bdb52d04dc20036dbd8313ed055', ' https://images.pexels.com/photos/264636/pexels-photo-264636.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
(24, 'smayl00', '81dc9bdb52d04dc20036dbd8313ed055', 'kaddi@kaddi', 'kadii', 'smail', '81dc9bdb52d04dc20036dbd8313ed055', ' https://images.pexels.com/photos/3962285/pexels-photo-3962285.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
(25, 'smayl00', '71bb6b8dac844e9dcee65d9878d8493a', 'smayl00@smayl', 'KADDI', 'ismail', '71bb6b8dac844e9dcee65d9878d8493a', ' hb,hgj'),
(26, 'smayl00', '81dc9bdb52d04dc20036dbd8313ed055', 'smayl00@smayl', 'sma', 'kaddi', '81dc9bdb52d04dc20036dbd8313ed055', ' JJJ'),
(27, '0000', '827ccb0eea8a706c4c34a16891f84e7b', '0000@0000', 'med', 'oubo', '827ccb0eea8a706c4c34a16891f84e7b', ' KLJK/JK'),
(28, 'med00', '81dc9bdb52d04dc20036dbd8313ed055', 'kaddi@kaddi', 'med', 'med', '81dc9bdb52d04dc20036dbd8313ed055', ' JHGH');

-- --------------------------------------------------------

--
-- Table structure for table `ville`
--

CREATE TABLE `ville` (
  `ville_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ville`
--

INSERT INTO `ville` (`ville_id`, `name`, `color`, `user_id`) VALUES
(1, 'kljgf', '', 1),
(5, 'hello', '#0000ff', 27),
(9, 'AGADIR', '#00ff00', 27);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phara`
--
ALTER TABLE `phara`
  ADD PRIMARY KEY (`phara_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`ville_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phara`
--
ALTER TABLE `phara`
  MODIFY `phara_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `ville`
--
ALTER TABLE `ville`
  MODIFY `ville_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
