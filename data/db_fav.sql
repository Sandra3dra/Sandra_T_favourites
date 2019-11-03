-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 03, 2019 at 06:35 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_fav`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_info`
--

CREATE TABLE `tbl_info` (
  `ID` smallint(6) NOT NULL,
  `thingID` smallint(6) NOT NULL,
  `placement` varchar(20) NOT NULL,
  `recommendation` varchar(50) NOT NULL,
  `why` text NOT NULL,
  `combo` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_info`
--

INSERT INTO `tbl_info` (`ID`, `thingID`, `placement`, `recommendation`, `why`, `combo`) VALUES
(1, 1, 'Number 1', 'Starbucks or Tim Hortons', 'Croissant has always been something I love. From the look of it to the taste, there is nothing bad I could ever say about it. The best way to enjoy a nice croissant is to warm it up in the microwave for 10-15s, or putting it in the oven on 150°C(300°F) for 30s before consuming.', 'by Itself,with Breakfast Earl Grey,with Hot Chocolate'),
(2, 2, 'Number 2', 'Popeyes or Homemade', 'Biscuit the bread. If you have only had the cookie form of biscuit before, I\'m telling you this: Man! You are missing out! Biscuit the bread is so good especially the buttermilk biscuit. A little bit of salt on the top of it always adds another level to the biscuit experience. I also recommend to make it yourself at home. Fun and tasty!', 'by Itself,with Fried Chicken,with Blueberry Jam'),
(3, 3, 'Number 3', 'Tim Hortons or Any food market for tea leaves', 'This tea from the asian places has a variety of health benefits proven by scientists. Although I am from the asian origin, I never had the chance to tried it until one day I decided to order something different from the most popular coffee place in Canada, Tim Hortons. I would be very kindly to share my secret recipe with you, and here is my favourite combo: two milk, one sugar, one honey. Also, leave the tea bag in for a deeper flavour.', 'by Itself,with All kinds of pastry');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_things`
--

CREATE TABLE `tbl_things` (
  `ID` int(11) NOT NULL,
  `Title` varchar(30) NOT NULL,
  `Img` varchar(40) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Category` varchar(40) NOT NULL,
  `Origin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_things`
--

INSERT INTO `tbl_things` (`ID`, `Title`, `Img`, `Description`, `Category`, `Origin`) VALUES
(1, 'Croissant', 'croissant.jpg', 'What could possibly be greater than a warm and crusty croissant in the morning?', 'Food', 'France and Austria'),
(2, 'Biscuit', 'biscuit.jpg', 'Biscuit or biscuit? I can tell you one thing that is: the thicker one is always the better one.', 'Food', 'The US and Canada'),
(3, 'Chai Tea', 'chai.jpg', 'The oriental essence that flows through your body and brings out the best of you.', 'Drinks', 'India');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_info`
--
ALTER TABLE `tbl_info`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_things`
--
ALTER TABLE `tbl_things`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_info`
--
ALTER TABLE `tbl_info`
  MODIFY `ID` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_things`
--
ALTER TABLE `tbl_things`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
