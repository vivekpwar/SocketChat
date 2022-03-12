-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2022 at 01:01 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `chating`
--

CREATE TABLE `chating` (
  `ChatID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `RecID` int(11) NOT NULL,
  `Message` varchar(2000) NOT NULL,
  `Date` datetime NOT NULL,
  `IsRead` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chating`
--

INSERT INTO `chating` (`ChatID`, `UserID`, `RecID`, `Message`, `Date`, `IsRead`) VALUES
(1, 2, 1, 'hello\n', '2022-03-11 12:43:38', 1),
(2, 1, 5, 'hello\n', '2022-03-11 13:08:47', 1),
(3, 1, 5, 'welcome\n', '2022-03-11 13:08:56', 1),
(4, 5, 3, 'hello bro\n', '2022-03-11 13:12:50', 1),
(5, 5, 1, 'su kare che ???\n', '2022-03-11 13:13:15', 1),
(6, 5, 1, 'QQQ\n', '2022-03-11 13:14:30', 1),
(7, 5, 1, 'Hellloo\n', '2022-03-11 13:19:00', 1),
(8, 1, 5, 'Hellllo\n', '2022-03-11 13:19:30', 1),
(9, 5, 1, 'sayyyy\n', '2022-03-11 13:20:55', 1),
(10, 5, 1, 'vibek\n', '2022-03-11 13:21:49', 1),
(11, 1, 5, 'qqqqqqqqqqq\n', '2022-03-11 13:22:16', 1),
(12, 5, 1, 'aaaaaaaaaaaaaaaaaa\n', '2022-03-11 13:23:39', 1),
(13, 5, 1, 'q\n', '2022-03-11 13:29:18', 1),
(14, 1, 5, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\n', '2022-03-11 13:49:48', 1),
(15, 1, 5, 'aaaa\n', '2022-03-11 13:49:51', 1),
(16, 1, 5, 'aqqq\n', '2022-03-11 13:50:09', 1),
(17, 1, 0, 'Hello\n', '2022-03-11 13:51:03', 0),
(18, 5, 1, 'Hello\n', '2022-03-11 13:57:41', 1),
(19, 1, 5, 'Hello virat\n', '2022-03-11 13:58:28', 1),
(20, 5, 1, 'Hello vivek\n', '2022-03-11 13:58:53', 1),
(21, 5, 1, 'helllllll\n', '2022-03-11 14:01:37', 1),
(22, 1, 5, 'Hellllo\n', '2022-03-11 14:01:49', 1),
(23, 1, 5, 'helllo\n', '2022-03-11 14:02:29', 1),
(24, 1, 5, 'Hellllll\n', '2022-03-11 14:03:18', 1),
(25, 5, 1, 'aaaaaaaaaaaaaaaaaaaa\n', '2022-03-11 14:03:27', 1),
(26, 1, 0, 'aaaaaaa\n', '2022-03-11 14:03:44', 0),
(27, 5, 0, 'dgfdgdfgfhfg\n', '2022-03-11 14:03:49', 0),
(28, 5, 1, 'fghfghfghfg\n', '2022-03-11 14:03:52', 1),
(29, 1, 5, 'aaaaaaaaaaaaaaaav\n', '2022-03-11 14:04:47', 1),
(30, 1, 5, 'aaaaaaaaaaaaaaaaaa\n', '2022-03-11 14:05:05', 1),
(31, 1, 5, 'a\n', '2022-03-11 14:05:32', 1),
(32, 5, 0, 'helllo\n', '2022-03-11 16:50:29', 0),
(33, 1, 3, 'helllo\n', '2022-03-11 16:50:52', 1),
(34, 1, 3, 'fggjhgjjghjhgghjgjgjghjghggj\n', '2022-03-11 16:51:04', 1),
(35, 1, 3, 'ghjghjghjghjghj\n', '2022-03-11 16:51:10', 1),
(36, 3, 1, 'fdfg\n', '2022-03-11 16:52:33', 1),
(37, 3, 7, 'vbnvbnvbn\n', '2022-03-11 16:58:07', 1),
(38, 9, 1, 'erwerrew\n', '2022-03-11 17:18:22', 1),
(39, 1, 9, 'hello\n', '2022-03-11 17:18:48', 1),
(40, 9, 1, 'erer\n', '2022-03-11 17:18:54', 1),
(41, 9, 1, 'r\n', '2022-03-11 17:18:55', 1),
(42, 9, 1, 'r\n', '2022-03-11 17:18:55', 1),
(43, 9, 1, 'r\nr', '2022-03-11 17:18:55', 1),
(44, 9, 1, 'r\n', '2022-03-11 17:18:56', 1),
(45, 9, 1, 'r\n', '2022-03-11 17:18:56', 1),
(46, 9, 1, 'r\n', '2022-03-11 17:18:56', 1),
(47, 9, 1, 'r\n', '2022-03-11 17:18:56', 1),
(48, 9, 1, 'r\n', '2022-03-11 17:18:56', 1),
(49, 9, 1, 'r\nr', '2022-03-11 17:18:57', 1),
(50, 9, 1, 'r\n', '2022-03-11 17:18:57', 1),
(51, 1, 9, 'aave che \n', '2022-03-11 17:19:05', 1),
(52, 9, 1, 'ok\n', '2022-03-11 17:19:08', 1),
(53, 1, 9, 'typing aave che ne ???\n', '2022-03-11 17:19:13', 1),
(54, 9, 1, 'yes\n', '2022-03-11 17:19:17', 1),
(55, 1, 9, 'Okay\n', '2022-03-11 17:19:23', 1),
(56, 1, 9, 'bye kam aayega to bolna muze...\n', '2022-03-11 17:19:33', 1),
(57, 1, 9, 'Helllo\n', '2022-03-11 17:27:16', 0),
(58, 10, 0, 'dc\n', '2022-03-11 17:28:57', 0),
(59, 1, 7, 'Hello\n', '2022-03-11 18:06:22', 1),
(60, 11, 1, 'hello\n', '2022-03-11 18:18:03', 1),
(61, 1, 11, 'hiii\n', '2022-03-11 18:18:12', 1),
(62, 1, 11, 'wwwwwwwww\n', '2022-03-11 18:28:16', 1),
(63, 1, 11, 'fdhfgf\n', '2022-03-11 18:28:32', 1),
(64, 11, 5, 'Hello\n', '2022-03-11 18:28:54', 0),
(65, 11, 7, 'hii\n', '2022-03-11 18:30:15', 1),
(66, 1, 12, 'hii\n', '2022-03-11 18:32:37', 1),
(67, 12, 1, 'hi\n', '2022-03-11 18:33:39', 1),
(68, 11, 0, 'a\n', '2022-03-11 18:56:05', 0),
(69, 13, 1, 'hiii\n', '2022-03-11 19:06:18', 1),
(70, 1, 13, 'hello\n', '2022-03-11 19:06:40', 1),
(71, 1, 13, 'hello\n', '2022-03-11 19:06:56', 0),
(72, 1, 10, 'hello\n', '2022-03-12 11:32:07', 0),
(73, 3, 1, 'Hii\n', '2022-03-12 11:35:47', 1),
(74, 3, 11, 'Hii sachin\n', '2022-03-12 11:36:14', 0),
(75, 14, 3, 'hii\n', '2022-03-12 11:44:12', 1),
(76, 3, 0, 'hii\n', '2022-03-12 11:44:27', 0),
(77, 3, 14, 'hii\n', '2022-03-12 11:44:31', 1),
(78, 3, 14, 'hii\n', '2022-03-12 11:44:32', 1),
(79, 3, 14, 'hii\n', '2022-03-12 11:44:33', 1),
(80, 3, 14, 'hii\n', '2022-03-12 11:44:42', 1),
(81, 3, 14, 'hi\n', '2022-03-12 11:44:43', 1),
(82, 3, 14, 'hi\n', '2022-03-12 11:44:44', 1),
(83, 3, 14, 'hi\n', '2022-03-12 11:44:45', 1),
(84, 14, 0, 'hello\n', '2022-03-12 11:44:45', 0),
(85, 3, 14, 'hi\n', '2022-03-12 11:44:45', 1),
(86, 14, 3, 'sfsfs asaf\n', '2022-03-12 11:46:05', 1),
(87, 14, 3, '\n', '2022-03-12 11:46:12', 1),
(88, 1, 14, 'hello\n', '2022-03-12 11:46:38', 1),
(89, 14, 3, 'dfff\n', '2022-03-12 11:46:44', 1),
(90, 14, 3, '\'\".nainesh\n.\"\'', '2022-03-12 11:46:53', 1),
(91, 14, 3, '\"\'.$nainesh\n.\'\"', '2022-03-12 11:47:03', 1),
(92, 14, 3, '\'.$nainesh\n.\'', '2022-03-12 11:47:16', 1),
(93, 14, 3, '\'.sff\n.\'', '2022-03-12 11:47:21', 1),
(94, 14, 3, '\n\n\n\n\n\n\n\n\n\n\nS\n', '2022-03-12 11:56:51', 1),
(95, 14, 3, '\n', '2022-03-12 11:57:02', 1),
(96, 14, 0, '<>\n', '2022-03-12 11:57:12', 0),
(97, 14, 0, '\n', '2022-03-12 11:57:16', 0),
(98, 14, 0, 'NAINESH\n', '2022-03-12 11:58:36', 0),
(99, 1, 0, '\n', '2022-03-12 12:02:24', 0),
(100, 1, 10, 'Gm\n', '2022-03-12 12:02:54', 0),
(101, 1, 13, 'hello\n', '2022-03-12 12:05:38', 0),
(102, 1, 13, 'Ehl\n', '2022-03-12 12:05:47', 0),
(103, 1, 13, 'aa\n', '2022-03-12 12:05:49', 0),
(104, 1, 13, 'ff\n', '2022-03-12 12:06:02', 0),
(105, 1, 0, 'aaaaa\n', '2022-03-12 12:07:03', 0),
(106, 1, 0, 'Hello\n', '2022-03-12 12:08:06', 0),
(107, 1, 14, 'helllo\n', '2022-03-12 12:36:33', 1),
(108, 7, 1, 'helllo\n', '2022-03-12 12:43:29', 1),
(109, 7, 1, 'hellll\n', '2022-03-12 12:43:40', 1),
(110, 7, 11, 'aa\n', '2022-03-12 12:44:37', 0),
(111, 7, 11, 'aaa\n', '2022-03-12 12:44:50', 0),
(112, 7, 1, 'aaaaaaaaaaaaa\n', '2022-03-12 12:44:56', 1),
(113, 14, 3, '=\'\".$nainesh\n.\"\'', '2022-03-12 12:44:56', 1),
(114, 1, 7, 'a\n', '2022-03-12 12:45:05', 1),
(115, 1, 0, 'hello\n', '2022-03-12 13:01:18', 0),
(116, 1, 3, 'hello\n', '2022-03-12 13:01:28', 1),
(117, 1, 0, 'hfgfgj', '2022-03-12 13:02:30', 0),
(118, 1, 7, 'hello\n', '2022-03-12 13:03:49', 1),
(119, 7, 0, 'sss\n', '2022-03-12 13:07:45', 0),
(120, 7, 0, 'ss\n', '2022-03-12 13:07:47', 0),
(121, 7, 0, 'hkjh\n', '2022-03-12 13:08:10', 0),
(122, 7, 0, 'jkjhk\n', '2022-03-12 13:08:11', 0),
(123, 7, 0, 'jhkjhk\n', '2022-03-12 13:08:14', 0),
(124, 7, 0, 'helllo\n', '2022-03-12 13:08:19', 0),
(125, 7, 0, 'hello\n', '2022-03-12 13:08:55', 0),
(126, 7, 1, 'jhkjh\n', '2022-03-12 13:09:18', 1),
(127, 7, 1, 'khkhj\n', '2022-03-12 13:09:20', 1),
(128, 7, 1, 'jhkhj\n', '2022-03-12 13:09:21', 1),
(129, 7, 1, 'gjghj\n', '2022-03-12 13:10:07', 1),
(130, 1, 3, 'hiii\n', '2022-03-12 13:10:42', 1),
(131, 15, 0, 'hello\n', '2022-03-12 14:14:08', 0),
(132, 1, 0, 'contact ma maru name search karo\n', '2022-03-12 14:14:23', 0),
(133, 15, 0, 'bija user ne msg krva hoi to kya thi aave?\n', '2022-03-12 14:14:24', 0),
(134, 1, 0, 'search ma vivek \n', '2022-03-12 14:14:37', 0),
(135, 15, 1, 'hiii\n', '2022-03-12 14:14:47', 1),
(136, 1, 15, 'hello\n', '2022-03-12 14:14:56', 1),
(137, 15, 1, 'contact ma badha j user aavse?\n', '2022-03-12 14:15:15', 1),
(138, 1, 15, 'search kar tyare\n', '2022-03-12 14:15:50', 1),
(139, 1, 15, 'badha avse\n', '2022-03-12 14:15:55', 1),
(140, 15, 1, 'ok\n', '2022-03-12 14:16:03', 1),
(141, 1, 15, 'skype jeu kairu che.\n', '2022-03-12 14:16:07', 1),
(142, 15, 1, 'Ha e joyu me\n', '2022-03-12 14:16:17', 1),
(143, 15, 14, 'hiii\n', '2022-03-12 14:16:34', 1),
(144, 1, 15, 'online offline valu kairu che\n', '2022-03-12 14:16:39', 1),
(145, 15, 1, 'ok\n', '2022-03-12 14:16:58', 1),
(146, 1, 15, 'hmmm.\n', '2022-03-12 14:17:29', 1),
(147, 15, 1, 'taro msg personal ma aave 6 pn mari dnk group vali chat open hoi to pn peli bouncing vali effect aave 6 dnk group vala ma\n', '2022-03-12 14:18:12', 1),
(148, 1, 15, 'yes\n', '2022-03-12 14:18:29', 1),
(149, 1, 15, 'check karu\n', '2022-03-12 14:18:39', 1),
(150, 15, 1, 'ok\n', '2022-03-12 14:18:45', 1),
(151, 1, 15, 'ye reply apvanu kahe che bounce karine\n', '2022-03-12 14:19:18', 1),
(152, 3, 1, 'hii\n', '2022-03-12 14:28:05', 1),
(153, 1, 3, 'Sorry, it´s not possible to do that using standards (if it is not important in your project you can use the Kiryl Ply suggestion). Font-Awesome comes with just one font-weight variant. There is a new project to solve that problem (not ready yet):\n', '2022-03-12 14:44:24', 1),
(154, 3, 1, 'Sorry, it´s not possible to do that using standards (if it is not important in your project you can use the Kiryl Ply suggestion). Font-Awesome comes with just one font-weight variant. There is a new project to solve that problem (not ready yet):\n', '2022-03-12 14:50:38', 1),
(155, 1, 15, 'offline thai gaya\n', '2022-03-12 14:53:08', 1),
(156, 1, 3, 'Sorry, it´s not possible to do that using standards (if it is not important in your project you can use the Kiryl Ply suggestion). Font-Awesome comes with just one font-weight variant. There is a new project to solve that problem (not ready yet):\n', '2022-03-12 14:54:07', 1),
(157, 1, 3, 'Sorry, it´s not possible to do that using standards (if it is not important in your project you can use the Kiryl Ply suggestion). Font-Awesome comes with just one font-weight variant. There is a new project to solve that problem (not ready yet):\n', '2022-03-12 14:54:09', 1),
(158, 3, 1, 'Sorry, it´s not possible to do that using standards (if it is not important in your project you can use the Kiryl Ply suggestion). Font-Awesome comes with just one font-weight variant. There is a new project to solve that problem (not ready yet):\n', '2022-03-12 14:54:13', 1),
(159, 3, 1, 'Sorry, it´s not possible to do that using standards (if it is not important in your project you can use the Kiryl Ply suggestion). Font-Awesome comes with just one font-weight variant. There is a new project to solve that problem (not ready yet):Sorry, it´s not possible to do that using standards (if it is not important in your project you can use the Kiryl Ply suggestion). Font-Awesome comes with just one font-weight variant. There is a new project to solve that problem (not ready yet):\n', '2022-03-12 14:54:15', 1),
(160, 3, 1, 'Hii\n', '2022-03-12 15:00:42', 1),
(161, 3, 1, 'hii\n', '2022-03-12 15:00:53', 1),
(162, 1, 3, 'hello\n', '2022-03-12 15:01:08', 1),
(163, 3, 1, 'hii\n', '2022-03-12 15:05:18', 1),
(164, 1, 3, 'hello\n', '2022-03-12 15:05:51', 1),
(165, 1, 3, 'hello\n', '2022-03-12 15:07:42', 1),
(166, 1, 3, 'hellll\n', '2022-03-12 15:09:51', 1),
(167, 1, 3, 'aaaaaaaaaaaaaaaaaaaaaaa\n', '2022-03-12 15:10:08', 1),
(168, 1, 3, 'hello\n', '2022-03-12 15:12:37', 1),
(169, 1, 3, 'EEEEEEEEEEEEEE\n', '2022-03-12 15:13:26', 1),
(170, 1, 3, 'HHHHHH\n', '2022-03-12 15:15:42', 1),
(171, 1, 3, 'hello\n', '2022-03-12 15:16:52', 1),
(172, 1, 3, 'aaa\n', '2022-03-12 15:17:20', 1),
(173, 1, 3, 'a\n', '2022-03-12 15:20:52', 1),
(174, 1, 3, 'fhfghf\n', '2022-03-12 15:21:19', 1),
(175, 1, 3, 'fghfg\n', '2022-03-12 15:21:23', 1),
(176, 1, 3, 'hello\n', '2022-03-12 15:29:10', 1),
(177, 1, 3, 'fhgfjg\n', '2022-03-12 15:29:29', 1),
(178, 1, 3, 'hello\n', '2022-03-12 15:29:57', 1),
(179, 1, 3, 'gfdfghfg\n', '2022-03-12 15:30:02', 1),
(180, 1, 3, 'fghfgh\n', '2022-03-12 15:30:08', 1),
(181, 1, 3, 'jghjgh\n', '2022-03-12 15:31:03', 1),
(182, 1, 3, 'jghjghj\n', '2022-03-12 15:31:14', 1),
(183, 1, 3, 'fhfgh\n', '2022-03-12 15:34:20', 1),
(184, 1, 3, 'ghh\n', '2022-03-12 15:34:34', 1),
(185, 3, 1, 'cjfhfdh\n', '2022-03-12 15:34:53', 1),
(186, 1, 0, 'hkhkhj\n', '2022-03-12 15:35:49', 0),
(187, 1, 0, 'jhgjgh\n', '2022-03-12 15:35:58', 0),
(188, 1, 3, 'jghjgh\n', '2022-03-12 15:36:15', 1),
(189, 1, 0, 'gfhg\n', '2022-03-12 15:36:52', 0),
(190, 1, 15, 'fghfghfg\n', '2022-03-12 15:36:54', 1),
(191, 1, 3, 'hello\n', '2022-03-12 15:36:59', 1),
(192, 1, 3, 'fghfhfgh\n', '2022-03-12 15:37:06', 1),
(193, 1, 3, 'fhfgh\n', '2022-03-12 15:37:12', 1),
(194, 1, 3, 'fghfghfgh\n', '2022-03-12 15:38:18', 1),
(195, 1, 3, 'aaaaaaaaaa\n', '2022-03-12 15:39:56', 1),
(196, 1, 3, 'hfhfg\n', '2022-03-12 15:40:13', 1),
(197, 1, 3, 'ghgjhgj\n', '2022-03-12 15:41:17', 1),
(198, 1, 3, 'hfghfg\n', '2022-03-12 15:42:02', 1),
(199, 1, 3, 'hgjghjgh\n', '2022-03-12 15:46:14', 1),
(200, 1, 3, 'aa\n', '2022-03-12 15:47:22', 1),
(201, 1, 3, 'hfghf\n', '2022-03-12 15:50:18', 1),
(202, 1, 3, 'dgfd\n', '2022-03-12 15:50:26', 1),
(203, 1, 3, 'fghfgh\n', '2022-03-12 15:50:31', 1),
(204, 1, 3, 'fghfg\n', '2022-03-12 15:50:32', 1),
(205, 1, 3, 'fghfg\n', '2022-03-12 15:50:32', 1),
(206, 1, 3, 'fghfg\n', '2022-03-12 15:50:34', 1),
(207, 3, 1, 'jhkhjk\n', '2022-03-12 15:50:36', 1),
(208, 3, 1, 'hjk\n', '2022-03-12 15:50:37', 1),
(209, 3, 1, 'hjk\n', '2022-03-12 15:50:38', 1),
(210, 3, 1, 'hjk\n', '2022-03-12 15:50:38', 1),
(211, 3, 1, 'hjk\n', '2022-03-12 15:50:44', 1),
(212, 3, 1, 'hjk\n', '2022-03-12 15:50:46', 1),
(213, 3, 1, 'hjk\n', '2022-03-12 15:50:46', 1),
(214, 3, 1, 'hjk\n', '2022-03-12 15:50:47', 1),
(215, 3, 1, 'hjk\n', '2022-03-12 15:50:48', 1),
(216, 3, 1, 'hjk\n', '2022-03-12 15:50:48', 1),
(217, 1, 15, 'hello\n', '2022-03-12 15:51:21', 1),
(218, 1, 9, 'hiii\n', '2022-03-12 15:51:42', 0),
(219, 15, 1, 'bolo\n', '2022-03-12 15:52:17', 1),
(220, 14, 15, 'helllo\n', '2022-03-12 15:53:14', 1),
(221, 14, 3, 'hii\n', '2022-03-12 15:53:23', 1),
(222, 15, 14, 'welcome\n', '2022-03-12 15:53:28', 1),
(223, 1, 15, 'offline thai gaya\n', '2022-03-12 15:53:29', 1),
(224, 15, 1, 'ha tab close kri didheli\n', '2022-03-12 15:53:43', 1),
(225, 14, 15, ':)\n', '2022-03-12 15:54:10', 1),
(226, 14, 3, 'hii\n', '2022-03-12 15:54:29', 1),
(227, 14, 3, 'g\n', '2022-03-12 15:54:33', 1),
(228, 14, 3, 'fhc\n', '2022-03-12 15:54:35', 1),
(229, 15, 1, 'mare chat history clear karvi hoi to?\n', '2022-03-12 15:54:41', 1),
(230, 14, 3, 'hh\n', '2022-03-12 15:54:42', 1),
(231, 14, 3, 'hvhv\n', '2022-03-12 15:54:44', 1),
(232, 14, 3, 'g\n', '2022-03-12 15:54:47', 1),
(233, 1, 15, 'kau chat delete karvu che..\n', '2022-03-12 15:55:40', 1),
(234, 15, 1, 'generally koi pn\n', '2022-03-12 16:07:17', 1),
(235, 3, 0, 'sdfdf\n', '2022-03-12 16:10:26', 0),
(236, 3, 1, 'sdsd\n', '2022-03-12 16:10:31', 1),
(237, 16, 3, 'hii\n', '2022-03-12 16:18:18', 1),
(238, 16, 3, 'hello\n', '2022-03-12 16:18:26', 1),
(239, 17, 0, 'hii\n', '2022-03-12 16:23:08', 0),
(240, 17, 0, '', '2022-03-12 16:23:16', 0),
(241, 17, 0, '', '2022-03-12 16:23:18', 0),
(242, 18, 0, '', '2022-03-12 16:24:11', 0),
(243, 1, 17, 'su kare che ??\n', '2022-03-12 16:24:33', 1),
(244, 1, 18, 'hii\n', '2022-03-12 16:24:44', 1),
(245, 18, 1, 'hi\n', '2022-03-12 16:26:19', 1),
(246, 3, 1, '<pre> &lt;h1&gt;ksdjflsdfl\n</h1> </pre>', '2022-03-12 16:31:41', 1),
(247, 3, 1, '<pre> &lt;h1&gt;Hii</h1>\n\n </pre>', '2022-03-12 16:32:00', 1),
(248, 3, 1, '<pre> <h1>Hii</h1>\n </pre>', '2022-03-12 16:33:46', 1),
(249, 3, 1, '<pre> <h1>Hii</h1>\n </pre>', '2022-03-12 16:34:45', 1),
(250, 3, 0, '<pre> <h1>Hii</h1>\n </pre>', '2022-03-12 16:35:07', 0),
(251, 3, 0, '<pre> <h1>Hii</h1>\n </pre>', '2022-03-12 16:35:12', 0),
(252, 3, 0, '<pre> <h1>Hii</h1>\n </pre>', '2022-03-12 16:35:27', 0),
(253, 3, 1, '<h1>Hii</h1>\n', '2022-03-12 16:35:32', 1),
(254, 3, 1, '&lt;h1&gt;Hii&lt;/h1&gt;\n', '2022-03-12 16:36:07', 1),
(255, 3, 14, '&lt;h1&gt;Hii&lt;/h1&gt;\n', '2022-03-12 16:36:22', 1),
(256, 3, 14, '&lt;h1&gt;Hii&lt;/h1&gt;\n', '2022-03-12 16:36:23', 1),
(257, 3, 14, '&lt;h1&gt;Hii&lt;/h1&gt;\n', '2022-03-12 16:36:23', 1),
(258, 3, 14, '&lt;h1&gt;Hii&lt;/h1&gt;\n', '2022-03-12 16:36:25', 1),
(259, 1, 0, '&lt;i class=\"fa fa-envelope\" aria-hidden=\"true\"&gt;&lt;/i&gt;\n', '2022-03-12 16:36:40', 0),
(260, 1, 0, '&lt;i class=\"fa fa-envelope\" aria-hidden=\"true\"&gt;&lt;/i&gt;\n', '2022-03-12 16:36:42', 0),
(261, 14, 3, '\n', '2022-03-12 16:36:56', 1),
(262, 3, 1, '&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n&lt;title&gt;Page Title&lt;/title&gt;\n&lt;/head&gt;\n&lt;body&gt;\n\n&lt;h1&gt;This is a Heading&lt;/h1&gt;\n&lt;p&gt;This is a paragraph.&lt;/p&gt;\n\n&lt;/body&gt;\n&lt;/html&gt;\n', '2022-03-12 16:37:51', 1),
(263, 1, 3, '&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n&lt;meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"&gt;\n&lt;style&gt;\n/*the container must be positioned relative:*/\n.custom-select {\n  position: relative;\n  font-family: Arial;\n}\n\n.custom-select select {\n  display: none; /*hide original SELECT element:*/\n}\n\n.select-selected {\n  background-color: DodgerBlue;\n}\n\n/*style the arrow inside the select element:*/\n.select-selected:after {\n  position: absolute;\n  content: \"\";\n  top: 14', '2022-03-12 16:38:02', 1),
(264, 3, 1, '<pre> &lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n&lt;title&gt;Page Title&lt;/title&gt;\n&lt;/head&gt;\n&lt;body&gt;\n\n&lt;h1&gt;This is a Heading&lt;/h1&gt;\n&lt;p&gt;This is a paragraph.&lt;/p&gt;\n\n&lt;/body&gt;\n&lt;/html&gt;\n </pre>', '2022-03-12 16:38:13', 1),
(265, 1, 3, '<pre> &lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n&lt;meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"&gt;\n&lt;style&gt;\n/*the container must be positioned relative:*/\n.custom-select {\n  position: relative;\n  font-family: Arial;\n}\n\n.custom-select select {\n  display: none; /*hide original SELECT element:*/\n}\n\n.select-selected {\n  background-color: DodgerBlue;\n}\n\n/*style the arrow inside the select element:*/\n.select-selected:after {\n  position: absolute;\n  content: \"\";\n  t', '2022-03-12 16:38:15', 1),
(266, 3, 1, '<pre>    fgklhdfkjgh\n </pre>', '2022-03-12 16:39:11', 1),
(267, 3, 1, '<pre>                                          djsfhshdfkjhsd\n </pre>', '2022-03-12 16:39:28', 1),
(268, 1, 0, '<pre> fdgf </pre>', '2022-03-12 16:39:30', 0),
(269, 1, 0, '<pre> ff   ff  f\n </pre>', '2022-03-12 16:39:35', 0),
(270, 1, 0, '<pre> fdgfh\n </pre>', '2022-03-12 16:39:40', 0),
(271, 18, 1, '', '2022-03-12 16:39:51', 1),
(272, 1, 0, 'helki\n', '2022-03-12 16:39:53', 0),
(273, 1, 3, 'jkjh\n', '2022-03-12 16:39:59', 1),
(274, 1, 18, 'jhkhj\n', '2022-03-12 16:40:01', 1),
(275, 18, 1, '????\n', '2022-03-12 16:43:23', 1),
(276, 18, 1, 'emoji add karone\n', '2022-03-12 16:43:50', 1),
(277, 3, 1, '<pre>      dfgjdfg\n </pre>', '2022-03-12 16:45:02', 1),
(278, 3, 1, '<pre>       \nhjhj\n </pre>', '2022-03-12 16:45:11', 1),
(279, 1, 18, '<pre> Okay\n </pre>', '2022-03-12 16:45:17', 1),
(280, 3, 1, '&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n&lt;title&gt;Page Title&lt;/title&gt;\n&lt;/head&gt;\n&lt;body&gt;\n\n&lt;h1&gt;This is a Heading&lt;/h1&gt;\n&lt;p&gt;This is a paragraph.&lt;/p&gt;\n\n&lt;/body&gt;\n&lt;/html&gt;\n', '2022-03-12 16:45:43', 1),
(281, 3, 1, '<pre> dfsdf sdfsdf\n </pre>', '2022-03-12 16:45:53', 1),
(282, 3, 1, '<pre>  ghfg n\n </pre>', '2022-03-12 16:46:05', 1),
(283, 15, 0, 'sadadadasd\n', '2022-03-12 16:46:58', 0),
(284, 3, 1, '<pre> hghfghfgh\n </pre>', '2022-03-12 16:47:11', 1),
(285, 3, 1, 'fghfghfghfghfgh\n', '2022-03-12 16:47:33', 1),
(286, 3, 1, '<pre> &lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n&lt;title&gt;Page Title&lt;/title&gt;\n&lt;/head&gt;\n&lt;body&gt;\n\n&lt;h1&gt;This is a Heading&lt;/h1&gt;\n&lt;p&gt;This is a paragraph.&lt;/p&gt;\n\n&lt;/body&gt;\n&lt;/html&gt;\n </pre>', '2022-03-12 16:47:38', 1),
(287, 3, 1, '<pre> &lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n&lt;title&gt;Page Title&lt;/title&gt;\n&lt;/head&gt;\n&lt;body&gt;\n\n&lt;h1&gt;This is a Heading&lt;/h1&gt;\n&lt;p&gt;This is a paragraph.&lt;/p&gt;\n\n&lt;/body&gt;\n&lt;/html&gt;\n </pre>', '2022-03-12 16:49:38', 1),
(288, 3, 1, '<pre> &lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n&lt;title&gt;Page Title&lt;/title&gt;\n&lt;/head&gt;\n&lt;body&gt;\n\n&lt;h1&gt;This is a Heading&lt;/h1&gt;\n&lt;p&gt;This is a paragraph.&lt;/p&gt;\n\n&lt;/body&gt;\n&lt;/html&gt;\n </pre>', '2022-03-12 16:49:50', 1),
(289, 1, 18, 'aatif valu band che ??\n', '2022-03-12 16:50:39', 1),
(290, 17, 0, 'hamna login kayru\n', '2022-03-12 16:51:38', 0),
(291, 17, 1, 'hamna login kayru\n', '2022-03-12 16:51:50', 0),
(292, 1, 3, 'var x, i, j, l, ll, selElmnt, a, b, c;\n/* Look for any elements with the class \"custom-select\": */\nx = document.getElementsByClassName(\"custom-select\");\nl = x.length;\nfor (i = 0; i &lt; l; i++) {\n  selElmnt = x[i].getElementsByTagName(\"select\")[0];\n  ll = selElmnt.length;\n  /* For each element, create a new DIV that will act as the selected item: */\n  a = document.createElement(\"DIV\");\n  a.setAttribute(\"class\", \"select-selected\");\n  a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTM', '2022-03-12 16:54:46', 1),
(293, 3, 1, '<pre> \n&lt;!DOCTYPE html&gt;\n&lt;html lang=\"en\"&gt;\n  &lt;head&gt;\n    &lt;meta charset=\"utf-8\"&gt;\n    &lt;meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\"&gt;\n    &lt;meta name=\"viewport\" content=\"width=device-width, initial-scale=1\"&gt;\n    &lt;meta name=\"description\" content=\"\"&gt;\n    &lt;meta name=\"author\" content=\"\"&gt;\n    &lt;link rel=\"icon\" href=\"../images/favicon.ico\"&gt;\n\n    &lt;title&gt;Chat-Bot Admin - Dashboard&lt;/title&gt;\n    \n	&lt;!-- Vendors Style--&gt;\n	&lt;link rel=\"sty', '2022-03-12 16:57:32', 1),
(294, 3, 1, '<pre> \n&lt;!DOCTYPE html&gt;\n&lt;html lang=\"en\"&gt;\n  &lt;head&gt;\n    &lt;meta charset=\"utf-8\"&gt;\n    &lt;meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\"&gt;\n    &lt;meta name=\"viewport\" content=\"width=device-width, initial-scale=1\"&gt;\n    &lt;meta name=\"description\" content=\"\"&gt;\n    &lt;meta name=\"author\" content=\"\"&gt;\n    &lt;link rel=\"icon\" href=\"../images/favicon.ico\"&gt;\n\n    &lt;title&gt;Chat-Bot Admin - Dashboard&lt;/title&gt;\n    \n	&lt;!-- Vendors Style--&gt;\n	&lt;link rel=\"sty', '2022-03-12 17:00:27', 1),
(295, 3, 1, '<pre> \n&lt;!DOCTYPE html&gt;\n&lt;html lang=\"en\"&gt;\n  &lt;head&gt;\n    &lt;meta charset=\"utf-8\"&gt;\n    &lt;meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\"&gt;\n    &lt;meta name=\"viewport\" content=\"width=device-width, initial-scale=1\"&gt;\n    &lt;meta name=\"description\" content=\"\"&gt;\n    &lt;meta name=\"author\" content=\"\"&gt;\n    &lt;link rel=\"icon\" href=\"../images/favicon.ico\"&gt;\n\n    &lt;title&gt;Chat-Bot Admin - Dashboard&lt;/title&gt;\n    \n	&lt;!-- Vendors Style--&gt;\n	&lt;link rel=\"stylesheet\" href=\"css/vendors_css.css\"&gt;\n	  \n	&lt;!-- Style--&gt;  \n	&lt;link rel=\"stylesheet\" href=\"css/style.css\"&gt;\n	&lt;link rel=\"stylesheet\" href=\"css/skin_color.css\"&gt;\n     \n  &lt;/head&gt;\n\n&lt;body class=\"hold-transition light-skin theme-primary fixed\"&gt;\n	\n&lt;div class=\"wrapper\"&gt;\n	&lt;div id=\"loader\"&gt;&lt;/div&gt;\n	\n  &lt;header class=\"main-header\"&gt;\n	&lt;div class=\"d-flex align-items-center logo-box justify-content-start\"&gt;	\n		&lt;!-- Logo --&gt;\n		&lt;a href=\"index.html\" class=\"logo\"&gt;\n		  &lt;!-- logo--&gt;\n		  &lt;div class=\"logo-mini w-50\"&gt;\n			  &lt;span class=\"light-logo\"&gt;&lt;img src=\"../images/logo-letter.png\" alt=\"logo\"&gt;&lt;/span&gt;\n			  &lt;span class=\"dark-logo\"&gt;&lt;img src=\"../images/logo-letter.png\" alt=\"logo\"&gt;&lt;/span&gt;\n		  &lt;/div&gt;\n		  &lt;div class=\"logo-lg\"&gt;\n			  &lt;span class=\"light-logo\"&gt;&lt;img src=\"../images/logo-dark-text.png\" alt=\"logo\"&gt;&lt;/span&gt;\n			  &lt;span class=\"dark-logo\"&gt;&lt;img src=\"../images/logo-light-text.png\" alt=\"logo\"&gt;&lt;/span&gt;\n		  &lt;/div&gt;\n		&lt;/a&gt;	\n	&lt;/div&gt;  \n    &lt;!-- Header Navbar --&gt;\n    &lt;nav class=\"navbar navbar-static-top\"&gt;\n      &lt;!-- Sidebar toggle button--&gt;\n	  &lt;div class=\"app-menu\"&gt;\n		&lt;ul class=\"header-megamenu nav\"&gt;\n			&lt;li class=\"btn-group nav-item\"&gt;\n				&lt;a href=\"#\" class=\"waves-effect waves-light nav-link push-btn\" data-toggle=\"push-menu\" role=\"button\"&gt;\n					&lt;img src=\"../images/svg-icon/collapse.svg\" cla', '2022-03-12 17:00:43', 1),
(296, 3, 1, 'dfghdfghdf\n', '2022-03-12 17:17:16', 1),
(297, 3, 1, 'dfghdkjhgkdg\n', '2022-03-12 17:17:17', 1),
(298, 3, 1, 'fdgdfgdkfgjlkdfjg\n', '2022-03-12 17:17:19', 1),
(299, 3, 1, 'dfgdflkgjlkdfjg\n', '2022-03-12 17:17:20', 1),
(300, 3, 1, 'fdgdfgjldkjfgdfg\n', '2022-03-12 17:17:21', 1),
(301, 3, 1, 'dfgjdfgkljdflkg\n', '2022-03-12 17:17:22', 1),
(302, 3, 1, 'dfgkdjflkgjdflkg\n', '2022-03-12 17:17:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `userlist`
--

CREATE TABLE `userlist` (
  `UserId` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Password` varchar(16) NOT NULL,
  `EntryDate` datetime NOT NULL,
  `Status` int(11) NOT NULL DEFAULT 1,
  `SocketID` varchar(200) NOT NULL,
  `Profile` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlist`
--

INSERT INTO `userlist` (`UserId`, `Name`, `Password`, `EntryDate`, `Status`, `SocketID`, `Profile`) VALUES
(1, 'vivek', '123456', '2022-03-11 12:42:34', 1, 'crUDy-m0FbGv3wStAAAG', ''),
(3, 'dhaval', '123465', '2022-03-11 12:53:05', 1, 'MalZtgxE6oUEduKdAAAG', ''),
(4, 'disha', '123456', '2022-03-11 13:07:31', 0, '0', ''),
(5, 'virat', '123456', '2022-03-11 13:08:37', 0, '0', ''),
(7, 'test', '123456', '2022-03-11 16:55:56', 0, 'g30dLy4fqkGOExu-AABk', ''),
(8, 'vivekpawar', '12121', '2022-03-11 16:59:23', 0, '0', ''),
(9, 'jackson', '123', '2022-03-11 17:17:58', 0, '0', ''),
(10, 'dc', '123456', '2022-03-11 17:28:53', 0, '0', ''),
(11, 'sachin', '123456', '2022-03-11 18:17:46', 0, '0', ''),
(12, 'dishaaa', '123', '2022-03-11 18:32:18', 0, '0', ''),
(13, 'new', '123456', '2022-03-11 19:06:09', 0, '0', ''),
(14, 'naineshtank', '1234', '2022-03-12 11:43:57', 1, 'gqj7KwOxxeL4I9m8AAAG', ''),
(15, 'heli', '123456789', '2022-03-12 14:13:40', 1, '9HOzcn-Aaz-z62KAAAAE', ''),
(16, 'ashvin', '1234', '2022-03-12 16:18:03', 1, 'j9zMF9pwsvQfJS2DAABw', ''),
(18, 'username', '1234', '2022-03-12 16:23:48', 1, 'G3BLzK8TRYUEgfQLAAAF', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chating`
--
ALTER TABLE `chating`
  ADD PRIMARY KEY (`ChatID`);

--
-- Indexes for table `userlist`
--
ALTER TABLE `userlist`
  ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chating`
--
ALTER TABLE `chating`
  MODIFY `ChatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- AUTO_INCREMENT for table `userlist`
--
ALTER TABLE `userlist`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
