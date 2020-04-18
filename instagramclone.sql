-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2020 at 06:14 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `instagramclone`
--

-- --------------------------------------------------------

--
-- Table structure for table `follow`
--

CREATE TABLE `follow` (
  `id_user` bigint(255) NOT NULL,
  `id_user_follow` bigint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `follow`
--

INSERT INTO `follow` (`id_user`, `id_user_follow`) VALUES
(1, 4),
(1, 3),
(2, 1),
(2, 1),
(3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id_post` bigint(255) NOT NULL,
  `id_user` bigint(255) NOT NULL,
  `location` varchar(30) NOT NULL,
  `pict` varchar(200) NOT NULL,
  `status` varchar(120) DEFAULT NULL,
  `likes` bigint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id_post`, `id_user`, `location`, `pict`, `status`, `likes`) VALUES
(1, 3, 'Mana aja bolechh', 'neraka.jpg', 'panas', 19),
(2, 1, 'Di Atas Loteng', 'bali.jpg', 'skuyyy main', 54),
(3, 2, 'Sukapura', 'soejo.png', 'ayo makan disini', 89);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` bigint(255) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `website` varchar(50) DEFAULT NULL,
  `bio` varchar(120) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` varchar(13) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `avatar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `name`, `website`, `bio`, `email`, `phone`, `gender`, `avatar`) VALUES
(1, 'fadhilmbrq', 'fadhil', 'fadhil mubaraq', 'https://www.facebook.com/fadhilmbrq', 'saya cinta mata kuliah pemograman web', 'fadhil@gmail.com', '0866666666', 'Male', 'avaa.jpg'),
(2, 'fadhilah', 'fadhilah', 'Fadhillah Mubaroqah', 'http://google.com', 'aku kalo malam', 'fadhillah@gmail.com', '086969696969', 'Female', 'fadhillah.jpg'),
(3, 'ancahnhaga', 'ancah', 'Ancah Nhaga', 'anchahnaga.com', 'Meikuuummm guyss', 'naga@gmail.com', '081200000989', 'Male', 'naga.jpg'),
(4, 'yusufsikuyus', 'yusufsikuyus', 'Yusuf SiKuyus', 'yusuf.com', 'THM_YUSUF', 'yusuf@gmail.com', '08000222334', 'Male', 'ucup.jpg\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `follow`
--
ALTER TABLE `follow`
  ADD KEY `fk_following` (`id_user_follow`),
  ADD KEY `fk_post` (`id_user`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id_post`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id_post` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `follow`
--
ALTER TABLE `follow`
  ADD CONSTRAINT `fk_follow` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `fk_following` FOREIGN KEY (`id_user_follow`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `fk_post` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
