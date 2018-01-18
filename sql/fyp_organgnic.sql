-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生時間： 2018 年 01 月 18 日 08:04
-- 伺服器版本: 10.1.19-MariaDB
-- PHP 版本： 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `fyp_organgnic`
--

-- --------------------------------------------------------

--
-- 資料表結構 `buyers`
--

CREATE TABLE `buyers` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fb_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `display_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone_number` int(20) DEFAULT NULL,
  `address` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `liabilities` tinyint(1) NOT NULL DEFAULT '0',
  `profile_pic_url` varchar(500) DEFAULT NULL,
  `iat` varchar(100) CHARACTER SET utf8 NOT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `buyers`
--

INSERT INTO `buyers` (`id`, `username`, `password`, `fb_id`, `display_name`, `phone_number`, `address`, `liabilities`, `profile_pic_url`, `iat`, `active`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `chat_logs`
--

CREATE TABLE `chat_logs` (
  `id` int(11) UNSIGNED NOT NULL,
  `sender_id` int(11) UNSIGNED DEFAULT NULL,
  `receiver_id` int(11) UNSIGNED DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 資料表結構 `favorite`
--

CREATE TABLE `favorite` (
  `id` int(11) UNSIGNED NOT NULL,
  `seller_id` int(11) UNSIGNED DEFAULT NULL,
  `buyer_id` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 資料表結構 `news`
--

CREATE TABLE `news` (
  `id` int(11) UNSIGNED NOT NULL,
  `seller_id` int(11) UNSIGNED DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `image_url` varchar(500) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 資料表結構 `order_forms`
--

CREATE TABLE `order_forms` (
  `id` int(11) UNSIGNED NOT NULL,
  `buyer_id` int(11) UNSIGNED DEFAULT NULL,
  `seller_id` int(11) UNSIGNED DEFAULT NULL,
  `date` date DEFAULT NULL,
  `sataus` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 資料表結構 `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `seller_id` int(11) UNSIGNED DEFAULT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `qty` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `rating_number` int(11) DEFAULT NULL,
  `image_url` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 資料表結構 `sellers`
--

CREATE TABLE `sellers` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `profile_picture_url` varchar(500) DEFAULT NULL,
  `address` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `phone_number` int(20) DEFAULT NULL,
  `display_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `iat` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 資料表結構 `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED DEFAULT NULL,
  `buyer_id` int(11) UNSIGNED DEFAULT NULL,
  `qty` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 資料表結構 `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) UNSIGNED NOT NULL,
  `order_id` int(11) UNSIGNED DEFAULT NULL,
  `product_id` int(11) UNSIGNED DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `buyers`
--
ALTER TABLE `buyers`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `chat_logs`
--
ALTER TABLE `chat_logs`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `order_forms`
--
ALTER TABLE `order_forms`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `buyers`
--
ALTER TABLE `buyers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用資料表 AUTO_INCREMENT `chat_logs`
--
ALTER TABLE `chat_logs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `favorite`
--
ALTER TABLE `favorite`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `order_forms`
--
ALTER TABLE `order_forms`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `shopping_cart`
--
ALTER TABLE `shopping_cart`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
