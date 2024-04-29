-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2024 at 03:48 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sd2-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `activity_id` int(11) NOT NULL,
  `itinerary_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `time` time DEFAULT NULL,
  `duration` decimal(4,1) DEFAULT NULL,
  `lat` decimal(9,6) DEFAULT NULL,
  `lng` decimal(9,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`activity_id`, `itinerary_id`, `name`, `description`, `time`, `duration`, `lat`, `lng`) VALUES
(25, 1, 'Breakfast at Dishoom', 'Fuel up for the day with a delicious breakfast at Dishoom', '08:00:00', 0.5, 51.508500, -0.128000),
(26, 1, 'Explore the National Gallery', 'Witness masterpieces by Van Gogh, Da Vinci, Michelangelo, and more', '09:00:00', 3.0, 51.508900, -0.128000),
(27, 1, 'Lunch in Leicester Square', 'Grab a light meal from various restaurants or cafes', '12:00:00', 1.0, 51.508700, -0.127800),
(28, 1, 'Explore Covent Garden', 'Stroll through the charming piazza, browse shops, and enjoy street performances', '13:00:00', 1.0, 51.511100, -0.128200),
(29, 1, 'See a play at Shakespeare\'s Globe (optional)', 'Catch a matinee performance if time permits', '14:00:00', 2.0, 51.509000, -0.109000),
(30, 1, 'Afternoon Tea at Savoy Hotel', 'Indulge in a quintessential English experience', '17:00:00', 1.5, 51.504900, -0.123800),
(31, 1, 'Pre-theater dinner at The Palomar', 'Savor Levantine cuisine before the West End show', '19:30:00', 1.0, 51.511300, -0.118100),
(32, 1, 'West End Show', 'Enjoy a captivating performance in London\'s theater district', '20:30:00', NULL, NULL, NULL),
(33, 5, 'Buckingham Palace Tour', 'Witness the grandeur of the Royal residence', '09:00:00', 2.0, 51.501400, -0.138000),
(34, 5, 'Explore Tower of London', 'Uncover the history of this iconic medieval fortress', '11:00:00', 2.0, 51.508000, -0.076000),
(35, 5, 'Lunch near Tower Bridge', 'Grab a bite with a view of the iconic bridge', '13:00:00', 1.0, 51.505200, -0.079000),
(36, 5, 'St. Paul\'s Cathedral Visit', 'Marvel at the architectural masterpiece designed by Christopher Wren', '14:30:00', 1.5, 51.513200, -0.109000),
(37, 5, 'Sky Garden Observation Deck (optional)', 'Enjoy panoramic views of London from the lush green oasis', '16:00:00', 1.0, 51.515400, -0.089600),
(38, 5, 'The Shard Visit (optional)', 'Ascend The Shard for breathtaking 360-degree views of the city', '17:30:00', 1.0, 51.503400, -0.089600),
(39, 6, 'Explore Borough Market', 'Sample fresh produce, artisan foods, and international flavors', '09:00:00', 2.0, 51.500400, -0.089700),
(40, 6, 'Traditional Afternoon Tea (Optional)', 'Indulge in a quintessential English teatime experience', '11:30:00', 1.5, 51.508900, -0.128000),
(41, 6, 'Pub Lunch in Covent Garden', 'Savor classic British pub fare in a lively atmosphere', '13:30:00', 1.0, 51.511100, -0.128200),
(42, 6, 'International Dinner in Soho', 'Explore the vibrant culinary scene of Soho with diverse cuisines', '18:00:00', 2.0, 51.512200, -0.136900),
(50, 8, 'Pre-Match Pep Talk with a Traditional Pub Lunch', 'Fuel up and soak in the pre-match buzz at a classic London pub', '12:00:00', 1.5, 51.500400, -0.089700),
(52, 8, 'Wembley Stadium Tour (Optional)', 'Go behind-the-scenes of the iconic Wembley Stadium before the big game', '14:00:00', 2.0, 51.556000, -0.316000),
(53, 8, 'Witness the FA Cup Final at Wembley Stadium', 'Cheer on your favorite team in the prestigious FA Cup Final', '18:00:00', 3.0, 51.556000, -0.316000),
(54, 8, 'Post-Match Celebrations at a Sports Bar (Optional)', 'Celebrate the winner or drown your sorrows (hopefully not!) with fellow fans', '21:00:00', 2.0, 51.511300, -0.106900),
(55, 9, 'Pre-Match Build-Up with a Hearty English Breakfast', 'Fuel up for a thrilling match with a classic English breakfast', '08:00:00', 1.0, 51.500400, -0.089700),
(56, 9, 'Explore Wembley Stadium and Surroundings (Optional)', 'Immerse yourself in the Champions League atmosphere around Wembley', '10:00:00', 2.0, 51.556000, -0.316000),
(57, 9, 'Witness the UEFA Champions League Final at Wembley Stadium', 'Be part of the electric atmosphere as the Champions League trophy is lifted', '18:00:00', 3.0, 51.556000, -0.316000),
(58, 9, 'Post-Match Celebrations at a Sports Bar (Optional)', 'Celebrate the winner or analyze the match with fellow football fans', '21:00:00', 2.0, 51.511300, -0.106900),
(59, 10, 'Explore Wimbledon Grounds and Museum (Optional)', 'Get a behind-the-scenes look at Wimbledon history and soak in the atmosphere', '10:00:00', 2.0, 51.420800, -0.202800),
(60, 10, 'Witness Top Tennis Action at Centre Court', 'Be mesmerized by the skill and power of professional tennis players', '14:00:00', 4.0, 51.420800, -0.202800),
(61, 10, 'Enjoy Afternoon Tea at a Traditional Hotel (Optional)', 'Indulge in a quintessential English tradition after an exciting day at Wimbledon', '18:00:00', 2.0, 51.500400, -0.127800),
(62, 11, 'Explore Wimbledon Grounds and Museum (Optional)', 'Get a behind-the-scenes look at Wimbledon history and soak in the atmosphere', '10:00:00', 2.0, 51.420800, -0.202800),
(63, 11, 'Witness Top Tennis Action at Centre Court', 'Be mesmerized by the skill and power of professional tennis players', '14:00:00', 4.0, 51.420800, -0.202800),
(64, 11, 'Enjoy Afternoon Tea at a Traditional Hotel (Optional)', 'Indulge in a quintessential English tradition after an exciting day at Wimbledon', '18:00:00', 2.0, 51.500400, -0.127800),
(65, 12, 'Explore Wimbledon Grounds and Museum (Optional)', 'Get a behind-the-scenes look at Wimbledon history and soak in the atmosphere', '10:00:00', 2.0, 51.420800, -0.202800),
(66, 12, 'Witness Top Tennis Action at Centre Court', 'Be mesmerized by the skill and power of professional tennis players', '14:00:00', 4.0, 51.420800, -0.202800),
(67, 12, 'Enjoy Afternoon Tea at a Traditional Hotel (Optional)', 'Indulge in a quintessential English tradition after an exciting day at Wimbledon', '18:00:00', 2.0, 51.500400, -0.127800),
(68, 13, 'Explore Wimbledon Grounds and Museum (Optional)', 'Get a behind-the-scenes look at Wimbledon history and soak in the atmosphere', '10:00:00', 2.0, 51.420800, -0.202800),
(69, 13, 'Witness Top Tennis Action at Centre Court', 'Be mesmerized by the skill and power of professional tennis players', '14:00:00', 4.0, 51.420800, -0.202800),
(70, 13, 'Enjoy Afternoon Tea at a Traditional Hotel (Optional)', 'Indulge in a quintessential English tradition after an exciting day at Wimbledon', '18:00:00', 2.0, 51.500400, -0.127800);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `description`) VALUES
(1, 'Arts and Culture', 'Explore museums, galleries, and cultural landmarks in London'),
(2, 'Architecture', 'Discover architectural marvels and historical buildings in London'),
(3, 'Food', 'Indulge in local cuisine and culinary experiences in London'),
(4, 'Sports And Events', 'Engage in outdoor activities and sports events in London');

-- --------------------------------------------------------

--
-- Table structure for table `itinerary`
--

CREATE TABLE `itinerary` (
  `itinerary_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `itinerary`
--

INSERT INTO `itinerary` (`itinerary_id`, `category_id`, `title`, `description`, `date`) VALUES
(1, 1, 'Arts & Culture Extravaganza in London', 'A day exploring London\'s vibrant artistic and cultural scene', '2024-04-27'),
(5, 2, 'Architectural Gems of London', 'Explore London\'s most impressive architectural marvels', '2024-04-27'),
(6, 3, 'A Culinary Adventure Through London', 'Explore London\'s diverse and delicious food scene', '2024-04-27'),
(8, 4, 'FA Cup Final Frenzy in London', 'Experience the pinnacle of English Football (Soccer)', '2024-05-25'),
(9, 4, 'Champions League Final Glory in London', 'Witness the crowning moment of European football', '2024-06-01'),
(10, 4, 'Wimbledon Wonderland', 'Experience the thrill of witnessing world-class tennis', '2024-07-07'),
(11, 4, 'Wimbledon Wonderland', 'Experience the thrill of witnessing world-class tennis', '2024-07-08'),
(12, 4, 'Wimbledon Wonderland', 'Experience the thrill of witnessing world-class tennis', '2024-07-09'),
(13, 4, 'Wimbledon Wonderland', 'Experience the thrill of witnessing world-class tennis', '2024-07-10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`activity_id`),
  ADD KEY `itinerary_id` (`itinerary_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `itinerary`
--
ALTER TABLE `itinerary`
  ADD PRIMARY KEY (`itinerary_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `itinerary`
--
ALTER TABLE `itinerary`
  MODIFY `itinerary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activities_ibfk_1` FOREIGN KEY (`itinerary_id`) REFERENCES `itinerary` (`itinerary_id`);

--
-- Constraints for table `itinerary`
--
ALTER TABLE `itinerary`
  ADD CONSTRAINT `itinerary_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
