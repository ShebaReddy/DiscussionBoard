-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2017 at 05:57 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project1`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `post_id`, `comment`) VALUES
(1, 4, 'bala'),
(2, 0, 'undefined'),
(3, 6, 'kiran'),
(4, 0, 'undefined'),
(5, 0, 'undefined'),
(6, 4, 'nice'),
(7, 4, 'nice'),
(8, 0, 'undefined'),
(9, 0, 'undefined'),
(10, 0, 'undefined'),
(11, 0, 'undefined'),
(12, 6, 'gm'),
(13, 0, 'undefined'),
(14, 0, 'undefined'),
(15, 0, 'undefined'),
(16, 0, 'undefined'),
(17, 0, 'undefined'),
(18, 8, 'dfdf'),
(19, 0, 'undefined'),
(20, 0, 'undefined'),
(21, 0, 'undefined'),
(22, 0, 'undefined'),
(23, 0, 'undefined'),
(24, 0, 'undefined'),
(25, 6, 'fghfgfgfg');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `post` longtext NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `post`, `date`, `time`) VALUES
(4, 'Is Samsung galaxy S8 edge good!!', '2017-02-26', '16:26:46'),
(6, 'who won the best actor oscar awards for this year..!!', '2017-02-26', '20:04:49'),
(7, 'rtgtrrt', '2017-03-01', '20:30:54'),
(8, 'rtrrtrtr', '2017-03-01', '20:31:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
