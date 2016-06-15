-- phpMyAdmin SQL Dump
-- version 4.4.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-06-15 03:50:33
-- 服务器版本： 5.5.44-0ubuntu0.14.04.1
-- PHP Version: 5.6.22-1+donate.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `restful`
--

-- --------------------------------------------------------

--
-- 表的结构 `topic`
--

CREATE TABLE IF NOT EXISTS `topic` (
  `id` int(11) NOT NULL,
  `node_id` int(11) unsigned NOT NULL COMMENT '版块ID',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '作者ID',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `excerpt` varchar(255) DEFAULT NULL COMMENT '摘要',
  `image` varchar(255) DEFAULT NULL COMMENT '封面图片',
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1:发布 0：草稿',
  `created_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updated_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `topic`
--

INSERT INTO `topic` (`id`, `node_id`, `user_id`, `title`, `excerpt`, `image`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '测试添加数据', '我是话题摘要', NULL, '我是话题内容', 1, 1457686900, 1457686900),
(2, 1, 1, '测试添加数据', '我是话题摘要', NULL, '我是话题内容', 1, 1457686900, 1457686900);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `node_id` (`node_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
