-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2020 年 12 月 24 日 15:53
-- サーバのバージョン： 10.4.17-MariaDB
-- PHP のバージョン: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacf_d07_11`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `login_table2`
--

CREATE TABLE `login_table2` (
  `id` int(12) NOT NULL,
  `username` varchar(128) DEFAULT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `login_table2`
--

INSERT INTO `login_table2` (`id`, `username`, `password`) VALUES
(1, NULL, '489789gew'),
(2, NULL, '48vkud7gew'),
(3, NULL, '48fdisuyw'),
(4, NULL, 'fdsauybf89gew'),
(5, NULL, '438w7346gsgew'),
(6, NULL, '49gew'),
(7, NULL, '44wfdsgew'),
(8, NULL, '3qgsfs89gew'),
(9, NULL, '76rythjgew'),
(10, NULL, 'kjnhiuy'),
(11, NULL, 'fodgsidfuosrsghhsf'),
(12, 'maiko', 'maiko');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `login_table2`
--
ALTER TABLE `login_table2`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `login_table2`
--
ALTER TABLE `login_table2`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
