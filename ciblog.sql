-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2017 at 08:10 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `name`, `created_at`) VALUES
(1, 1, 'Business', '2017-12-02 06:34:59'),
(6, 3, 'Fruits', '2017-12-04 07:07:24'),
(7, 3, 'Food', '2017-12-04 07:08:09');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
(1, 40, 'bhatti', 'xpro@test.com', 'Great Post!!!', '2017-12-02 09:25:32'),
(2, 40, 'shadow', 'shadow@test.com', 'akheer bava g', '2017-12-02 11:02:00');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`, `created_at`) VALUES
(34, 1, 3, 'Test Post', 'Test-Post', '<p>this is test post</p>\r\n', 'glutesbodybuilder-207x300.jpg', '2017-12-02 07:17:37'),
(35, 1, 3, 'No image post', 'No-image-post', '<p>this is a post with no image</p>\r\n', 'noimage.jpg', '2017-12-02 07:24:40'),
(39, 1, 3, 'First Post', 'First-Post', '<p>MAT FRASER FITTEST MAN ON EARTH</p>\r\n', '13782031_1167251806650009_6108140607109863285_n.jpg', '2017-12-02 08:45:30'),
(40, 1, 3, 'Blog Post 2 ', 'Blog-Post-2', '<p>These are the fittest people on earth</p>\r\n', '14601074_1245032082205314_3463798114368427938_n.jpg', '2017-12-02 08:49:14'),
(41, 1, 3, 'Blog Post 3', 'Blog-Post-3', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis adipisci rerum, magnam neque reiciendis repellendus. Voluptate ab deleniti, qui minus laudantium natus voluptatibus ipsum quasi beatae amet porro incidunt officiis odit aliquam, neque quam facilis, sunt necessitatibus asperiores error eos? Repellendus, deserunt laudantium veniam soluta at, cum maxime natus odit!</p>\r\n', 'noimage.jpg', '2017-12-04 06:37:00'),
(42, 1, 3, 'Blog Post 4', 'Blog-Post-4', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis adipisci rerum, magnam neque reiciendis repellendus. Voluptate ab deleniti, qui minus laudantium natus voluptatibus ipsum quasi beatae amet porro incidunt officiis odit aliquam, neque quam facilis, sunt necessitatibus asperiores error eos? Repellendus, deserunt laudantium veniam soluta at, cum maxime natus odit!</p>\r\n', 'noimage.jpg', '2017-12-04 06:37:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `zipcode`, `email`, `username`, `password`, `register_date`) VALUES
(3, 'bhatti', '5400', 'xprogramm3rx@gmail.com', 'xprogramm3rx', '827ccb0eea8a706c4c34a16891f84e7b', '2017-12-03 09:41:33'),
(4, 'shadow', '5400', 'shadow@test.com', 'shadow', 'e10adc3949ba59abbe56e057f20f883e', '2017-12-03 10:47:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
