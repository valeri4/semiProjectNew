-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2015 at 11:30 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fs_net`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `p_post` text NOT NULL,
  `p_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `p_uniqid` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`p_id`),
  UNIQUE KEY `p_uniqid` (`p_uniqid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=87 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`p_id`, `u_id`, `p_post`, `p_time`, `p_uniqid`) VALUES
(5, 23, '<p>xcvxcvxcvxc</p>', '2015-08-16 13:56:37', NULL),
(6, 23, '<p>Hello,', '2015-08-16 13:57:29', NULL),
(7, 23, '<p>Hello,</p>\n<p>This is First Post</p>', '2015-08-16 13:58:06', NULL),
(8, 23, '<p>dgdfgdfg</p>\n<p>gdfgdfgdfg</p>\n<p>aarewr</p>', '2015-08-16 13:58:44', NULL),
(15, 23, '<p>sdfsdf</p>', '2015-08-16 14:35:55', NULL),
(16, 24, '<p>dfsdfsdfsdf</p>', '2015-08-16 14:42:25', NULL),
(17, 24, '<p>Hello,</p>\n<p>', '2015-08-16 14:42:41', NULL),
(18, 24, '<p>dfdsfsfsdfsdfsdfsdfsdfsdfsdf</p>', '2015-08-16 14:43:01', NULL),
(21, 23, '<p>dfdgsdgfdgfdgdfggggggggggggg</p>', '2015-08-16 15:26:31', NULL),
(38, 23, '<p>SPARTAAAAAAAA</p>', '2015-08-16 18:07:01', NULL),
(39, 23, '<p>ydthgfhfghgfhgfh</p>', '2015-08-16 18:18:30', NULL),
(40, 23, '<p>Heeeeeellllooo</p>\n<p>', '2015-08-16 18:21:42', NULL),
(41, 23, '<p>my Second post</p>', '2015-08-16 20:08:38', NULL),
(42, 23, '<p>fgdfgdfggghh</p>', '2015-08-18 06:27:26', NULL),
(43, 23, 'fdgdfg', '2015-08-22 14:13:27', NULL),
(44, 23, 'yyyyy', '2015-08-22 14:16:58', NULL),
(45, 23, 'sdffdfsfsdfsdfsdf', '2015-08-22 14:19:08', NULL),
(46, 23, 'yyaaaahhhhh', '2015-08-22 14:19:22', NULL),
(47, 23, 'yyaaaahhhhh', '2015-08-22 14:19:25', NULL),
(48, 23, 'fgdfgdfgdfg', '2015-08-22 14:19:29', NULL),
(49, 23, 'seconf\n', '2015-08-22 14:20:03', NULL),
(50, 23, 'fgfdhgfjbvnbnnnnb\n', '2015-08-22 14:20:11', NULL),
(51, 23, 'bnnm,,nm', '2015-08-22 14:20:24', NULL),
(52, 23, 'xcccxxz', '2015-08-22 14:20:39', NULL),
(53, 23, 'kkkkkkkjjhjhk', '2015-08-22 14:20:49', NULL),
(54, 23, 'dfdfsf', '2015-08-22 14:22:25', NULL),
(55, 23, 'dfdfsfhhhjj', '2015-08-22 14:22:29', NULL),
(56, 23, 'dfdfsfhhhjjxcvxcvxcvxcvxcv', '2015-08-22 14:22:32', NULL),
(57, 23, 'fdgdfg', '2015-08-22 14:22:42', NULL),
(58, 23, 'fdgdfgsaa12312433214234', '2015-08-22 14:22:47', NULL),
(59, 23, 'vbnmjnbmbnmbnm', '2015-08-22 14:22:52', NULL),
(60, 23, '123456', '2015-08-22 14:25:31', NULL),
(61, 23, 'fffff', '2015-08-22 14:26:06', NULL),
(62, 23, 'ttyuuu', '2015-08-22 14:28:02', NULL),
(63, 23, 'ttyuuu', '2015-08-22 14:28:06', NULL),
(64, 23, 'hjjkkll', '2015-08-22 14:28:52', NULL),
(65, 23, 'bnbmbm', '2015-08-22 14:29:20', NULL),
(66, 23, 'bnbmbmrfdertyert', '2015-08-22 14:29:25', NULL),
(67, 23, 'fgdfgdfgfd', '2015-08-22 14:29:39', NULL),
(68, 23, 'xzxxxxx', '2015-08-22 14:29:44', NULL),
(69, 23, 'xzxxxxx::::', '2015-08-22 14:29:50', NULL),
(70, 23, 'fdgfdgdfg;', '2015-08-22 14:29:55', NULL),
(71, 23, 'efsdfsdfsdfdsfsdfsdfsdf', '2015-08-23 13:23:49', NULL),
(72, 23, 'etwiurutreoitheriohtjoierhter\n', '2015-08-23 13:23:56', NULL),
(73, 23, '23534543', '2015-08-23 13:24:01', NULL),
(74, 23, 'rdydthyry546457547', '2015-08-23 17:06:06', NULL),
(75, 23, 'ytityitiyuiyiyuo', '2015-08-23 17:06:12', NULL),
(76, 23, 'j;jk;kl;kl;kl;kl;kdhfhfgh', '2015-08-23 17:06:17', NULL),
(81, 30, 'cbxbcvb', '2015-08-23 20:18:25', NULL),
(82, 30, '1234566', '2015-08-23 20:18:30', NULL),
(83, 30, 'bnbvnvcmbn,mb,nm,nb.', '2015-08-23 20:18:39', NULL),
(84, 30, 'xcvxcvxcvcxb', '2015-08-23 21:26:37', '3055da3a8dd14be'),
(85, 30, 'xcvxcvxcvcxbxzczcxvcxzv', '2015-08-23 21:26:41', '3055da3a914573a'),
(86, 30, 'cvxcvcxvcxvcxbnfd', '2015-08-23 21:27:09', '3055da3aad7b8e8');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_email` varchar(255) NOT NULL,
  `u_pwd` varchar(60) NOT NULL,
  `u_f_name` varchar(50) NOT NULL,
  `u_l_name` varchar(50) NOT NULL,
  `u_b_day` date NOT NULL,
  `u_gender` tinyint(4) NOT NULL,
  `u_about` text NOT NULL,
  `u_nickName` varchar(50) NOT NULL,
  `u_reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`u_id`),
  UNIQUE KEY `u_email` (`u_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `u_email`, `u_pwd`, `u_f_name`, `u_l_name`, `u_b_day`, `u_gender`, `u_about`, `u_nickName`, `u_reg_date`) VALUES
(23, 'valeri4@gmail.com', '$2y$10$KGnesLyCmvPwgfYqsWQ4k.lfH1It86CUZFXWppxcKytv/sqcWkw8e', 'Valery', 'Dubina', '1989-04-29', 1, 'Hello,dgfgdfg', 'Loki', '2015-08-09 18:20:26'),
(24, 'mdan1989@gmail.com', '$2y$10$B09pVVrsn1xmxe2Avw.VM.C9p1CisW8RCZV2JHCGI8SyU4K6Zxm/e', 'Mariya', 'Danilov', '2010-06-22', 0, '<p>fgdfgdfgdfgdfhgfjhg</p>\r\n<ol>\r\n<li><strong>asdasdasdasasdas</strong></li>\r\n<li><strong>asdasd</strong></li>\r\n<li><strong>asdasdasd</strong></li>\r\n</ol>', 'MArusya', '2015-08-15 12:22:45'),
(25, 'Folke@Folke.com', '$2y$10$.kb6hgryagYR36yZEEr28u0F6QojnyprF9/Q8RjNGtQfKB.VwPHQu', 'Folke', 'Hermann', '2002-02-26', 1, '<p><span style="font-family: Arial, Helvetica, sans; line-height: 14px; text-align: justify;">Vivamus non tortor vitae nisi sodales lobortis ac at metus. Morbi commodo nisi justo. Morbi lobortis at nisl a luctus. Fusce vel mi sed erat bibendum facilisis eu et ex. Nulla pretium, purus non imperdiet hendrerit, eros quam laoreet purus, at pretium est elit eu nunc. Fusce diam arcu, viverra eu lectus quis, lobortis aliquet tellus. Sed elementum consequat ligula ut eleifend. Donec quis est in nisl dictum pharetra. Donec placerat vitae nunc quis interdum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer egestas sagittis mi, convallis pellentesque orci iaculis in. Sed gravida pretium accumsan.</span></p>', 'Derryl', '2015-08-18 17:48:06'),
(26, 'Bambang@Bambang.com', '$2y$10$UrTeeqAzcMSCkAdq93fx.ecywV/ywax63eyv4RLxwRpYM/nwS9GV2', 'Rudolf', 'Rapp', '1975-08-07', 1, '<p><span style="font-family: Arial, Helvetica, sans; line-height: 14px; text-align: justify;">In porttitor fermentum nisi et sodales. Sed aliquam aliquam neque, nec pharetra odio malesuada sed. Sed sed pretium tortor. Cras et elementum nulla. Etiam tincidunt urna eu ex accumsan, vel vehicula ex vestibulum. Aenean accumsan fringilla eros ut pharetra. Nunc blandit purus orci, in vestibulum mi vehicula a. In sed elit ac quam lacinia scelerisque. Quisque ut vehicula sapien. Curabitur lacinia nisl tellus, sit amet euismod quam rutrum quis.</span></p>', 'Bambang', '2015-08-18 17:55:45'),
(27, 'HÃ¡kon@xn--hkon-5na.com', '$2y$10$jUXkXBBbsjb4VFGQSlSotebh0pO5wL8AnwIWTTgY07spYKgCcGLUC', 'Silvanus', 'Aggi', '1984-10-29', 1, '<p><span style="font-family: Arial, Helvetica, sans; line-height: 14px; text-align: justify;">Vestibulum id accumsan purus. Duis semper ullamcorper ligula. Donec aliquam dolor laoreet, lobortis tellus quis, pellentesque mi. Pellentesque in sodales dolor. Suspendisse potenti. Phasellus posuere ultrices metus sit amet vestibulum. Cras a nisi porttitor, porttitor nunc in, vulputate leo. Nam lorem nulla, venenatis in iaculis non, porttitor eget diam.</span></p>', 'HÃ¡kon', '2015-08-18 18:01:18'),
(28, 'Hai@Hai.com', '$2y$10$fvNvFPp638NqUmhm38eQseqxKRUY5xreBt1QQYf9n5A7k9qlYBdO6', 'Arya', 'SouÄek', '2009-06-01', 0, '<p><span style="font-family: Arial, Helvetica, sans; line-height: 14px; text-align: justify;">Etiam eget porttitor est. Proin massa ante, tincidunt sit amet purus non, vestibulum placerat lorem. Pellentesque sit amet erat quis orci efficitur molestie quis sit amet magna. Nunc et suscipit metus. Quisque dolor sapien, elementum eu risus in, elementum maximus dolor. Nulla vel lacus felis. Pellentesque ultrices ante sed ex tincidunt, in sagittis arcu accumsan.</span></p>', 'Hai', '2015-08-18 18:04:23'),
(29, 'gig@gmail.com', '$2y$10$ne2JUL2YHr8RHXm2ARp9PuEtLsjNdszvHeQPO7aZvQPvl8eebVnZ.', 'valera', 'vdfdf', '2012-01-13', 1, '', 'gig', '2015-08-22 09:55:45'),
(30, 'demo@demo.com', '$2y$10$5qqdY6RzbmKecwHGJzqfReQS2OdwYkUBOhFesvVOozBZWH4JUZONi', 'Demo', 'Demo', '2015-05-05', 1, 'fdgjdfkgjfdkgjfgd', 'Devil', '2015-08-23 19:56:20');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
