-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2018 at 06:34 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_concerts`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bookings`
--

CREATE TABLE `tbl_bookings` (
  `book_id` varchar(20) NOT NULL,
  `ticket_id` varchar(30) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'stadium id',
  `user_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `no_seats` int(3) NOT NULL COMMENT 'number of seats',
  `amount` int(5) NOT NULL,
  `ticket_date` date NOT NULL,
  `date` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bookings`
--

INSERT INTO `tbl_bookings` (`book_id`, `ticket_id`, `t_id`, `user_id`, `show_id`, `screen_id`, `no_seats`, `amount`, `ticket_date`, `date`, `status`) VALUES
('BKID5706817', 'TICKID3168151', 14, 24, 12, 7, 1, 75, '2018-07-06', '2018-06-23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_concert`
--

CREATE TABLE `tbl_concert` (
  `concert_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'Stadium id',
  `concert_name` varchar(100) NOT NULL,
  `cast` varchar(500) NOT NULL,
  `desc` varchar(1000) NOT NULL,
  `release_date` date NOT NULL,
  `image` varchar(200) NOT NULL,
  `video_url` varchar(200) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0 means active '
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_concert`
--

INSERT INTO `tbl_concert` (`concert_id`, `t_id`, `concert_name`, `cast`, `desc`, `release_date`, `image`, `video_url`, `status`) VALUES
(1, 3, 'YO YO HONEY SINGH', 'Yo Yo Honey Singh (Hirdesh Singh), Dj Shadow Dubai', '\r\nHirdesh Singh, better known by his stage name Yo Yo Honey Singh, is an Indian rapper, singer, music producer, and film actor. The rapper, known for his upbeat, funky, and party style songs, has sung songs of different genres including desi hip hop, Punjabi rap, Bhangra and R&B.', '2022-12-08', 'images/yoyo.jpeg', 'https://youtu.be/PqFMFVcCZgI', 0),
(2, 4, 'SHREYA GHOSHAL\r\n', 'Shreya Ghoshal, Dj Chetas', 'Shreya Ghoshal is a popular Indian playback singer who is known for her chartbuster songs. She has lent her voice in various languages and has worked with almost every top music directors in India.', '2023-01-21', 'images/shreya.jpg', 'https://youtu.be/r6tU3GvJ5so', 0),
(3, 14, 'MC STAN', 'Mc Stan (Altaf Tadavi) , Mc Musical Crew', 'MC Stan is a well-known Indian rapper, singer,and writer who is most recognised for his incredible rap music., He is also a rapper and YouTuber from India.\r\n', '2022-02-18', 'images/mc.jpeg', 'https://youtu.be/gU74mN \z64VU', 0),
(8, 3, 'ARIJIT SINGH', 'Arijit Singh , Dj Snake ', 'Arijit Singh is an Indian singer, musician, and music composer who not only lend his voice to the stars of Bollywood but also gave rich melodies to the Indian Cinema. He is one of the artists whose name and voice are found in almost all movies, with his every song topping the charts. \r\n', '2022-02-19', 'images/arijit.jpg', 'https://youtu.be/hoNb6HuNmU0', 0),
(14, 4, 'JASS MANAK', 'Jass manak (Jaspreet Singh Manak ,Dj Sumit Rajwanshi', 'Jaspreet Singh Manak is a Punjabi singer, lyricist, music composer, and a model. He is best known for singing the popular Punjabi track  "Prada, lehenga and meny more...', '2022-12-12', 'images/jass.jpeg', 'https://youtu.be/PjTU0DmBWiU', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL COMMENT 'email',
  `password` varchar(50) NOT NULL,
  `user_type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `user_id`, `username`, `password`, `user_type`) VALUES
(42, 28, 'ts@hotmail.com', 'ts', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `news_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cast` varchar(100) NOT NULL,
  `news_date` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `attachment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`news_id`, `name`, `cast`, `news_date`, `description`, `attachment`) VALUES
(3, 'DARSHAN RAVAL\r\n', 'Dip Zip Band', '2023-10-15', 'Darshan Raval is an Indian singer, composer, actor, and songwriter. He is known for his work in different languages including Hindi. \r\n\r\n\r\n\r\n', 'new/darshan.jpeg'),
(5, 'KING', 'DJ Gurbox', '2023-11-21', 'Arpan Kumar Chandel, professionally known as King or King Rocco, is an Indian singer, rapper, and hip-hop artist. ProfessionRapper, Producer. ', 'new/king.jpeg'),
(6, 'ARAMAN MALIK', 'Band Capricio', '2023-10-18', 'Arman malik is an Indian singer, songwriter, record producer, voice-over, performer, dancer and actor. He is known for his singing in multiple languages, including Hindi', 'new/arman.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration`
--

CREATE TABLE `tbl_registration` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `totalAmount` decimal(8,2) NOT NULL,
  `lastUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_registration`
--

INSERT INTO `tbl_registration` (`user_id`, `name`, `email`, `phone`, `age`, `gender`, `totalAmount`, `lastUpdate`) VALUES
(28, 'ts', 'ts@hotmail.com', '6940000000', 12, 'Male', '1600.00', '2018-06-25 16:34:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_screens`
--

CREATE TABLE `tbl_screens` (
  `screen_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theatre id',
  `screen_name` varchar(110) NOT NULL,
  `seats` int(11) NOT NULL COMMENT 'number of seats',
  `charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_screens`
--

INSERT INTO `tbl_screens` (`screen_id`, `t_id`, `screen_name`, `seats`, `charge`) VALUES
(5, 3, ' 1', 50, 1700),
(6, 3, '2', 15, 1600),
(7, 4, '3', 20, 1750),
(8, 14, '4', 34, 2000),
(9, 3, '5', 30, 1900),
(10, 15, 'a', 123, 35);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shows`
--

CREATE TABLE `tbl_shows` (
  `s_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL COMMENT 'show time id',
  `stadium_id` int(11) NOT NULL,
  `concert_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 means show available',
  `r_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_shows`
--

INSERT INTO `tbl_shows` (`s_id`, `st_id`, `stadium_id`, `concert_id`, `start_date`, `status`, `r_status`) VALUES
(10, 1, 3, 1, '2023-05-01', 1, 1),
(11, 2, 4, 2, '2023-06-01', 1, 1),
(12, 3, 14, 3, '2023-07-01', 1, 1),
(13, 4, 3, 8, '2023-08-01', 1, 1),
(14, 5, 4, 14, '2023-09-01', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_show_time`
--

CREATE TABLE `tbl_show_time` (
  `st_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL COMMENT 'rokck band etc',
  `start_time` time NOT NULL,
  `date_show` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_show_time`
--

INSERT INTO `tbl_show_time` (`st_id`, `screen_id`, `name`, `start_time`, `date_show`) VALUES
(1, 5, 'Rock', '12:00:00', '2023-07-01'),
(2, 6, 'Rock', '16:00:00', '2023-07-05'),
(3, 7, 'Rock', '18:00:00', '2023-07-06'),
(4, 8, 'Rock', '21:00:00', '2023-07-09'),
(5, 9, 'Rock', '20:00:00', '2023-07-11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stadium`
--

CREATE TABLE `tbl_stadium` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `state` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_stadium`
--

INSERT INTO `tbl_stadium` (`id`, `name`, `address`, `place`, `state`) VALUES
(3, 'The mills', 'Sangamvadi', 'Pune', 'Maharashtra'),
(4, 'Inorbit mall', 'Malad', 'Mumbai', 'Maharashtra'),
(14, 'JLN stadium', 'Gate no.2', 'Delhi', 'India');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_screens`
--
ALTER TABLE `tbl_screens`
  ADD PRIMARY KEY (`screen_id`);

--
-- Indexes for table `tbl_stadium`
--
ALTER TABLE `tbl_stadium`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_screens`
--
ALTER TABLE `tbl_screens`
  MODIFY `screen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_stadium`
--
ALTER TABLE `tbl_stadium`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;