-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2023-06-29 14:48:17
-- サーバのバージョン： 10.4.28-MariaDB
-- PHP のバージョン: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_d13_14`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `todo_table`
--

CREATE TABLE `todo_table` (
  `id` int(11) NOT NULL,
  `todo` varchar(128) NOT NULL,
  `deadline` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `todo_table`
--

INSERT INTO `todo_table` (`id`, `todo`, `deadline`, `created_at`, `updated_at`) VALUES
(1, 'SQL練習', '2023-06-17', '2023-06-17 15:40:39', '2023-06-17 15:40:39'),
(2, 'PHP練習', '2023-06-18', '2023-06-17 15:42:01', '2023-06-17 15:42:01'),
(3, 'DB練習', '2023-06-19', '2023-06-17 15:42:46', '2023-06-17 15:42:46'),
(4, 'SGL練習', '2023-06-19', '2023-06-17 15:44:05', '2023-06-17 15:44:05'),
(5, 'PHP練習', '2023-06-17', '2023-06-17 15:46:57', '2023-06-17 15:46:57'),
(7, '確認', '2023-06-17', '2023-06-17 16:18:22', '2023-06-17 16:18:22'),
(11, '確認', '2023-06-18', '2023-06-17 16:50:24', '2023-06-17 16:50:24'),
(13, '確認', '2023-06-20', '2023-06-17 16:55:57', '2023-06-17 16:55:57'),
(14, '確認', '2023-06-21', '2023-06-21 22:18:20', '2023-06-21 22:18:20'),
(15, 'nattodayo', '2023-06-29', '2023-06-21 22:56:04', '2023-06-29 20:44:01'),
(16, 'natto', '2023-06-24', '2023-06-21 22:56:25', '2023-06-21 22:56:25'),
(17, 'natto', '2023-06-24', '2023-06-21 22:58:29', '2023-06-21 22:58:29'),
(18, 'cvtget', '2023-06-24', '2023-06-21 23:02:23', '2023-06-29 20:44:12'),
(19, '確認', '2023-06-29', '2023-06-29 06:04:36', '2023-06-29 06:04:36'),
(20, 'kruma cvt', '2023-07-01', '2023-06-29 21:16:47', '2023-06-29 21:16:47');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `todo_table`
--
ALTER TABLE `todo_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `todo_table`
--
ALTER TABLE `todo_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
