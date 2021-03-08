-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-03-03 08:48:36
-- 伺服器版本： 10.4.17-MariaDB
-- PHP 版本： 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `hew2020_01493`
--
CREATE DATABASE IF NOT EXISTS `hew2020_01493` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hew2020_01493`;

-- --------------------------------------------------------

--
-- 資料表結構 `anime`
--

DROP TABLE IF EXISTS `anime`;
CREATE TABLE IF NOT EXISTS `anime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(127) NOT NULL,
  `anime_name` varchar(127) NOT NULL,
  `author` varchar(127) NOT NULL,
  `kannsou` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `anime`
--

INSERT INTO `anime` (`id`, `user_name`, `anime_name`, `author`, `kannsou`) VALUES
(3, 'ロイ', 'one piece', '尾田榮一郎', NULL),
(8, 'ゲスト', '僕のヒーローアカデミア', '堀越耕平', NULL),
(12, 'ゲスト', '櫻子さんの足下には死体が埋まっている', '太田紫織', NULL),
(13, 'ゲスト', 'ハイキュー!!', '古舘春一', '123'),
(17, 'ロイ', 'ジョジョの奇妙な冒険', '荒木飛呂彥', ''),
(21, 'sayuri', 'ジョジョの奇妙な冒険', '荒木飛呂彥', '好きです！'),
(24, 'ゲスト', 'ジョジョの奇妙な冒険', '荒木飛呂彦', '');

-- --------------------------------------------------------

--
-- 資料表結構 `history`
--

DROP TABLE IF EXISTS `history`;
CREATE TABLE IF NOT EXISTS `history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(127) NOT NULL,
  `viewdate` date NOT NULL,
  `anime_name` varchar(127) NOT NULL,
  `episode` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `history`
--

INSERT INTO `history` (`id`, `user_name`, `viewdate`, `anime_name`, `episode`) VALUES
(2, 'ゲスト', '2021-02-18', 'naruto', 18),
(3, 'ゲスト', '2021-02-28', 'ジョジョの奇妙な冒険', 999),
(7, 'ロイ', '2021-02-08', 'one piece', 2),
(8, 'sayuri', '2021-02-26', 'one piece', 32),
(16, 'ゲスト', '2021-02-28', '櫻子さんの足下には死体が埋まっている', 12),
(20, 'zion', '2021-03-02', '123', 123),
(21, 'zion', '2021-03-01', '櫻子さんの足下には死体が埋まっている', 33);

-- --------------------------------------------------------

--
-- 資料表結構 `schedule`
--

DROP TABLE IF EXISTS `schedule`;
CREATE TABLE IF NOT EXISTS `schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(127) NOT NULL,
  `anime_name` varchar(127) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `schedule`
--

INSERT INTO `schedule` (`id`, `user_name`, `anime_name`) VALUES
(17, 'sayuri', 'ジョジョの奇妙な冒険'),
(25, 'ゲスト', 'one piece'),
(27, 'ゲスト', '櫻子さんの足下には死体が埋まっている');

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(127) NOT NULL,
  `email` varchar(127) NOT NULL,
  `password` varchar(127) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `user`
--

INSERT INTO `user` (`id`, `user_name`, `email`, `password`) VALUES
(1, 'ゲスト', 'test111@gmail.com', 'qwert'),
(4, 'yui', 'test222@gmail.com', 'zxcvb'),
(9, 'ロイ', '123@gmail.com', '123'),
(10, 'sayuri', 'sayuri0607@gmail.com', 'qwer'),
(11, 'YUI', '1', '2'),
(12, 'ERIC', 'YYYY', 'YYYY'),
(15, 'zion', '000', '000'),
(16, 'zion2', 'test111@gmail.com2', 'qwert');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
