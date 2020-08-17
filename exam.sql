-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 31, 2020 at 06:13 PM
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
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'suryaprasadtripathy8@gmail.com', 'pinkylove');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5b1422651fdde', '5b1422654ab51'),
('5b14226574ed5', '5b1422657d064'),
('5b142265b5d08', '5b142265c09f5'),
('5b1422661d93f', '5b14226635e0d'),
('5b14226663cf4', '5b1422666bf2b'),
('5b1422669481b', '5b1422669c8ea'),
('5b142266c525c', '5b142266cd369'),
('5b14226711d91', '5b14226719fb1'),
('5b1422674286d', '5b1422674a9ee'),
('5b1422677371f', '5b1422677b3fc');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('suryaprasadtripathy8@gmail.com', '5b141b8009cf0', 22, 10, 8, 2, '2018-06-03 16:56:00'),
('pinky@gmail.com', '5b141b8009cf0', 30, 10, 10, 0, '2018-06-03 16:57:45'),
('priyanka@gmail.com', '5b141b8009cf0', 22, 10, 8, 2, '2018-06-03 16:59:06'),
('suryaprasadtripathy8@gmail.com', '5b141f1e8399e', 26, 10, 9, 1, '2018-06-03 17:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5b1422651fdde', 'Making memes', '5b1422654ab3a'),
('5b1422651fdde', 'Watching Stand-ups', '5b1422654ab48'),
('5b1422651fdde', 'Writing jokes', '5b1422654ab4d'),
('5b1422651fdde', 'Making video', '5b1422654ab51'), 

('5b14226574ed5', '12th june', '5b1422657d052'),
('5b14226574ed5', '21st april', '5b1422657d05f'),
('5b14226574ed5', '12th april', '5b1422657d064'),
('5b14226574ed5', '14th may', '5b1422657d069'),

('5b142265b5d08', 'Cricket', '5b142265c09e3'),
('5b142265b5d08', 'Football', '5b142265c09f5'),
('5b142265b5d08', 'Feeling of girls', '5b142265c09fa'),
('5b142265b5d08', 'Basketball', '5b142265c09ff'),

('5b1422661d93f', 'One in 2018 ', '5b14226635df5'),
('5b1422661d93f', 'One in school', '5b14226635e04'),
('5b1422661d93f', 'Bhai tu single he marega', '5b14226635e09'),
('5b1422661d93f', 'All off the above', '5b14226635e0d'),

('5b14226663cf4', 'Going on your standup', '5b1422666bf2b'),
('5b14226663cf4', 'Going on a road trip', '5b1422666bf39'),
('5b14226663cf4', 'going to eat like 7 janam sai khaya nhe', '5b1422666bf3e'),
('5b14226663cf4', 'Sit somewhere and talk all day', '5b1422666bf42'),

('5b1422669481b', 'If you are socially awkward', '5b1422669c8dc'),
('5b1422669481b', 'start clicking pictures of pasta', '5b1422669c8ea'),
('5b1422669481b', 'Start intrrupting in bw of conversation', '5b1422669c8ef'),
('5b1422669481b', 'Having a bad sense of humour', '5b1422669c8f3'),

('5b142266c525c', '12-1 am', '5b142266cd353'),
('5b142266c525c', '1-2 am', '5b142266cd361'),
('5b142266c525c', '10-11am', '5b142266cd365'),
('5b142266c525c', '11-12 am', '5b142266cd369'),

('5b14226711d91', 'IIIM,JANAKPURI', '5b14226719fa0'),
('5b14226711d91', 'IITM,JANAKPURI', '5b14226719fb1'),
('5b14226711d91', 'IIT,JANAKPURI', '5b14226719fb7'),
('5b14226711d91', 'IIMT,JANAKPURI', '5b14226719fbb'),

('5b1422674286d', '6-9', '5b1422674a9ee'),
('5b1422674286d', '5-8', '5b1422674aa01'),
('5b1422674286d', '1-6', '5b1422674aa06'),
('5b1422674286d', '7-10', '5b1422674aa0b'),

('5b1422677371f', 'pop/edm', '5b1422677b3e9'),
('5b1422677371f', 'sad hindi songs', '5b1422677b3f7'),
('5b1422677371f', 'underrated songs ', '5b1422677b3fc'),
('5b1422677371f', 'acoustic english and hindi', '5b1422677b400');

-- --------------------------------------------------------
--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5b141f1e8399e', '5b1422651fdde', 'What is my fav past time in leisure time', 4, 1),
('5b141f1e8399e', '5b14226574ed5', 'When is my birthday???', 4, 2),
('5b141f1e8399e', '5b142265b5d08', 'What sports I used to play When I was in school', 4, 3),
('5b141f1e8399e', '5b1422661d93f', 'Have I had any girlfriend Recently or in past?', 4, 4),
('5b141f1e8399e', '5b14226663cf4', 'Choose one I would love to invite you with me', 4, 5),
('5b141f1e8399e', '5b1422669481b', 'Whats my biggest pet peeve if Im on date', 4, 6),
('5b141f1e8399e', '5b142266c525c', 'What time I sleepppp?? PS-patani kya question puchu', 4, 7),
('5b141f1e8399e', '5b14226711d91', 'What is my college name?', 4, 8),
('5b141f1e8399e', '5b1422674286d', 'Rate my jokes from 1-10 {agar 8 sai niche hua ghar akar marunga}', 4, 9),
('5b141f1e8399e', '5b1422677371f', 'My favorite music genre when Im sad or alone', 4, 10);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `date`) VALUES
('5b141f1e8399e', 'How much you know bout me ;)', 3, 1, 10, '2018-06-03 17:02:22');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('ayush@gmail.com', 30, '2018-06-03 16:57:45'),
('ayushpart2@gmail.com', 22, '2018-06-03 16:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `college`, `email`, `password`) VALUES
('AYUSH NEGI', 'aaa', 'AYUSHNEGI221@GMAIL.COM', 'ayush@1234'),
('Binod Tharu', 'National Institute of Science and Technology, Berhampur', 'binod@gmail.com', 'pinky'),
('sharukh negi', 'National Institute of Science and Technology, Berhampur', 'aaa@gmail.com', 'pinka');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--    
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
