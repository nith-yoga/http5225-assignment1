-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 26, 2024 at 01:08 AM
-- Server version: 5.7.24
-- PHP Version: 8.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `http5225_spotifydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `spotify_data`
--

CREATE TABLE `spotify_data` (
  `Song` varchar(255) DEFAULT NULL,
  `Artist` varchar(255) DEFAULT NULL,
  `Total_Streams` bigint(20) DEFAULT NULL,
  `Daily_Streams` bigint(20) DEFAULT NULL,
  `Release_Year` int(11) DEFAULT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spotify_data`
--

INSERT INTO `spotify_data` (`Song`, `Artist`, `Total_Streams`, `Daily_Streams`, `Release_Year`, `ID`) VALUES
('Blinding Lights', 'The Weeknd', 4463658617, 1619447, 2020, 1),
(' Shape of You', 'Ed Sheeran', 4018102402, 1001507, 2017, 2),
(' Someone You Loved', 'Lewis Capaldi', 3588673578, 1506961, 2019, 3),
('As It Was', 'Harry Styles', 3544187311, 1611374, 2022, 4),
('Sunflower', 'Post Malone', 3518744128, 1337404, 2018, 5),
('Starboy', 'The Weeknd', 3481137472, 1897939, 2016, 6),
('One Dance', 'Drake', 3343221259, 1329534, 2016, 7),
('STAY', 'The Kid LAROI', 3266446596, 1336615, 2021, 8),
('Sweater Weather', 'The Neighbourhood', 3187169593, 2976255, 2013, 9),
('Believer', 'Imagine Dragons', 3140449933, 1261166, 2017, 10),
('Dance Monkey', 'Tones And I', 3139823510, 602667, 2019, 11),
('Heat Waves', 'Glass Animals', 3133817525, 1252964, 2020, 12),
('Perfect', 'Ed Sheeran', 3090494929, 1172298, 2017, 13),
('rockstar', 'Post Malone', 3029805367, 586641, 2018, 14),
('Say You Won\'t Let Go', 'James Arthur', 2986429659, 1281824, 2016, 15),
('lovely', 'Billie Eilish', 2979291308, 1408158, 2018, 16),
('Closer', 'The Chainsmokers', 2975681475, 773228, 2016, 17),
('Watermelon Sugar', 'Harry Styles', 2834112398, 802750, 2019, 18),
('Señorita', 'Shawn Mendes', 2821156041, 800936, 2019, 19),
('Something Just Like This', 'The Chainsmokers', 2775000235, 1864789, 2017, 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `spotify_data`
--
ALTER TABLE `spotify_data`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `spotify_data`
--
ALTER TABLE `spotify_data`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
