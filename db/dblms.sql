-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 13, 2023 lúc 04:41 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dblms`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent` int(11) DEFAULT 0,
  `slug` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `font_awesome_class` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `code`, `name`, `parent`, `slug`, `date_added`, `last_modified`, `font_awesome_class`, `thumbnail`) VALUES
(1, 'dce6164d8d', 'HTML', 0, 'html', 1691877600, 1691877600, 'fab fa-tumblr', '3e8beca644b0748cbf0d24c36dbee56b.jpg'),
(2, 'f6cced5cd8', 'HTML Tutorials', 1, 'html-tutorials', 1691877600, 1691877600, 'fab fa-accusoft', '51c169c93b066042d05bb4b7698f3dc2.jpg'),
(3, '3e4d90bf06', 'HTML Advanced', 1, 'html-advanced', 1691877600, 1691877600, NULL, NULL),
(4, 'bdbcbcd1a7', 'HTML Basic Examples', 1, 'html-basic-examples', 1691877600, NULL, NULL, NULL),
(5, '8b2025d840', 'Python', 0, 'python', 1691877600, 1691877600, 'fas fa-address-book', 'a4e656ddda954bc817583f239bbb527c.jpg'),
(6, 'ffb38b7c65', 'Python Tutorial', 5, 'python-tutorial', 1691877600, 1691877600, NULL, NULL),
(7, '19ba283301', 'Python Advanced', 5, 'python-advanced', 1691877600, 1691877600, NULL, NULL),
(8, '0260938f13', 'Python Example', 5, 'python-example', 1691877600, 1691877600, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('u7jn4j62nnbfstbc61ei1vcs7arisqdn', '::1', 1561169011, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313136383934313b636172745f6974656d737c613a303a7b7d757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31313a2261646d696e2061646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('dpb2fi40qktdgagl2fgvv3nhce4dfun4', '::1', 1561300719, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313330303731393b636172745f6974656d737c613a303a7b7d),
('2k91kfslkj6l19jl9rnc2ivrnb8pna7r', '::1', 1561351070, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313335313032363b636172745f6974656d737c613a303a7b7d757365725f69647c733a313a2231223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31313a2261646d696e2061646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('6n2l10ki0c09feghejr6am63ov3ejalm', '::1', 1691924299, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639313932343239393b636172745f6974656d737c613a303a7b7d666c6173685f6d6573736167657c733a32333a2244617461204164646564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d757365725f69647c733a313a2232223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31333a224875e1bbb36e68204e67c3a26e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('e5n5su658p1ltqghd1j3u490qqeplsft', '::1', 1691924603, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639313932343630333b636172745f6974656d737c613a303a7b7d666c6173685f6d6573736167657c733a32313a22436f75727365205374617475732055706461746564223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d757365725f69647c733a313a2232223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31333a224875e1bbb36e68204e67c3a26e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('6dp4rfq2mb5kh8vf0iv99h3bnu4r09ss', '::1', 1691924973, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639313932343937333b636172745f6974656d737c613a303a7b7d666c6173685f6d6573736167657c733a34343a22596f757220526567697374726174696f6e20486173204265656e205375636365737366756c6c7920446f6e65223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('8dmre71jg1ls5lo4o29u4jmims0827g3', '::1', 1691925308, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639313932353330383b636172745f6974656d737c613a303a7b7d666c6173685f6d6573736167657c733a31383a2257656c636f6d204875e1bbb36e68204e616e223b5f5f63695f766172737c613a323a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b733a31333a226572726f725f6d657373616765223b733a333a226f6c64223b7d6c61796f75747c733a343a226c697374223b6572726f725f6d6573736167657c733a32353a22496e76616c6964204c6f67696e2043726564656e7469616c73223b),
('1rkdnmfle99n4i14dsmucbvqur0lumr7', '::1', 1691925616, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639313932353631363b636172745f6974656d737c613a303a7b7d666c6173685f6d6573736167657c733a31333a224d6573736167652053656e7421223b5f5f63695f766172737c613a323a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b733a31333a226572726f725f6d657373616765223b733a333a226f6c64223b7d6c61796f75747c733a343a226c697374223b6572726f725f6d6573736167657c733a32353a22496e76616c6964204c6f67696e2043726564656e7469616c73223b757365725f69647c733a313a2234223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a31333a224875e1bbb36e68204e67c3a26e223b61646d696e5f6c6f67696e7c733a313a2231223b),
('at241pppveoumojkk36q2jbbolbj1ghc', '::1', 1691926296, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639313932363239363b636172745f6974656d737c613a303a7b7d666c6173685f6d6573736167657c733a31333a224d6573736167652053656e7421223b5f5f63695f766172737c613a323a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b733a31333a226572726f725f6d657373616765223b733a333a226f6c64223b7d6c61796f75747c733a343a226c697374223b6572726f725f6d6573736167657c733a32353a22496e76616c6964204c6f67696e2043726564656e7469616c73223b757365725f69647c733a313a2233223b726f6c655f69647c733a313a2232223b726f6c657c733a343a2255736572223b6e616d657c733a31313a224875e1bbb36e68204e616e223b757365725f6c6f67696e7c733a313a2231223b),
('bnrt8gld7s5584q3kv8igvul6pla1g3e', '::1', 1691926318, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639313932363239363b636172745f6974656d737c613a303a7b7d666c6173685f6d6573736167657c733a31333a224d6573736167652053656e7421223b5f5f63695f766172737c613a323a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b733a31333a226572726f725f6d657373616765223b733a333a226f6c64223b7d6c61796f75747c733a343a226c697374223b6572726f725f6d6573736167657c733a32353a22496e76616c6964204c6f67696e2043726564656e7469616c73223b757365725f69647c733a313a2233223b726f6c655f69647c733a313a2232223b726f6c657c733a343a2255736572223b6e616d657c733a31313a224875e1bbb36e68204e616e223b757365725f6c6f67696e7c733a313a2231223b),
('pjqqkb0ks9ga80nftqrcqk5efj3lfru0', '::1', 1691935499, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639313933353439393b636172745f6974656d737c613a303a7b7d),
('6g0m5a4gcj55blf4jkuq2il7iksv6a55', '::1', 1691935818, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639313933353831383b636172745f6974656d737c613a303a7b7d6572726f725f6d6573736167657c733a32353a22496e76616c6964204c6f67696e2043726564656e7469616c73223b5f5f63695f766172737c613a323a7b733a31333a226572726f725f6d657373616765223b733a333a226f6c64223b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d666c6173685f6d6573736167657c733a32353a22446174612055706461746564205375636365737366756c6c79223b757365725f69647c733a313a2235223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a373a2261646d696e2031223b61646d696e5f6c6f67696e7c733a313a2231223b),
('fb9uih3a3qrihns9nhql3cq65so592ku', '::1', 1691936267, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639313933363236373b636172745f6974656d737c613a303a7b7d6572726f725f6d6573736167657c733a32353a22496e76616c6964204c6f67696e2043726564656e7469616c73223b5f5f63695f766172737c613a323a7b733a31333a226572726f725f6d657373616765223b733a333a226f6c64223b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d666c6173685f6d6573736167657c733a32333a2244617461204164646564205375636365737366756c6c79223b757365725f69647c733a313a2235223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a373a2261646d696e2031223b61646d696e5f6c6f67696e7c733a313a2231223b),
('48d667h85t8cin13ksk3ettnsk5pgfjm', '::1', 1691936570, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639313933363537303b636172745f6974656d737c613a303a7b7d6572726f725f6d6573736167657c733a32353a22496e76616c6964204c6f67696e2043726564656e7469616c73223b5f5f63695f766172737c613a323a7b733a31333a226572726f725f6d657373616765223b733a333a226f6c64223b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d666c6173685f6d6573736167657c733a32353a22446174612055706461746564205375636365737366756c6c79223b757365725f69647c733a313a2235223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a373a2261646d696e2031223b61646d696e5f6c6f67696e7c733a313a2231223b),
('ikg5vpfn1jlr8unujeafrm0u35vdvjmn', '::1', 1691936872, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639313933363837323b636172745f6974656d737c613a303a7b7d6572726f725f6d6573736167657c733a32353a22496e76616c6964204c6f67696e2043726564656e7469616c73223b5f5f63695f766172737c613a323a7b733a31333a226572726f725f6d657373616765223b733a333a226f6c64223b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d666c6173685f6d6573736167657c733a33353a2253656374696f6e20486173204265656e204164646564205375636365737366756c6c79223b757365725f69647c733a313a2235223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a373a2261646d696e2031223b61646d696e5f6c6f67696e7c733a313a2231223b),
('uf2ab01spgc73dd68p8d6r19mqs2crr8', '::1', 1691937174, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639313933373137343b636172745f6974656d737c613a323a7b693a303b733a313a2233223b693a313b733a313a2232223b7d6572726f725f6d6573736167657c733a32353a22496e76616c6964204c6f67696e2043726564656e7469616c73223b5f5f63695f766172737c613a323a7b733a31333a226572726f725f6d657373616765223b733a333a226f6c64223b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d666c6173685f6d6573736167657c733a31343a2257656c636f6d2061646d696e2031223b6c61796f75747c733a343a226c697374223b757365725f69647c733a313a2235223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a373a2261646d696e2031223b61646d696e5f6c6f67696e7c733a313a2231223b),
('qbblu2qmd7m0u4c1kpl0pfajhr23gmjs', '::1', 1691937475, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639313933373437353b636172745f6974656d737c613a323a7b693a303b733a313a2233223b693a313b733a313a2232223b7d6572726f725f6d6573736167657c733a32353a22496e76616c6964204c6f67696e2043726564656e7469616c73223b5f5f63695f766172737c613a323a7b733a31333a226572726f725f6d657373616765223b733a333a226f6c64223b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d666c6173685f6d6573736167657c733a31333a224d6573736167652053656e7421223b6c61796f75747c733a343a226c697374223b757365725f69647c733a313a2235223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a373a2261646d696e2031223b61646d696e5f6c6f67696e7c733a313a2231223b),
('hjqlplur7akbqflgo5kr56olilh04v8c', '::1', 1691937493, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639313933373437353b636172745f6974656d737c613a323a7b693a303b733a313a2233223b693a313b733a313a2232223b7d6572726f725f6d6573736167657c733a32353a22496e76616c6964204c6f67696e2043726564656e7469616c73223b5f5f63695f766172737c613a323a7b733a31333a226572726f725f6d657373616765223b733a333a226f6c64223b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d666c6173685f6d6573736167657c733a31333a224d6573736167652053656e7421223b6c61796f75747c733a343a226c697374223b757365725f69647c733a313a2235223b726f6c655f69647c733a313a2231223b726f6c657c733a353a2241646d696e223b6e616d657c733a373a2261646d696e2031223b61646d696e5f6c6f67696e7c733a313a2231223b);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) UNSIGNED NOT NULL,
  `body` longtext DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `commentable_id` int(11) DEFAULT NULL,
  `commentable_type` varchar(50) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `course`
--

CREATE TABLE `course` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `short_description` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `outcomes` longtext DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `section` longtext DEFAULT NULL,
  `requirements` longtext DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount_flag` int(11) DEFAULT 0,
  `discounted_price` int(11) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `visibility` int(11) DEFAULT NULL,
  `is_top_course` int(11) DEFAULT 0,
  `is_admin` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `course_overview_provider` varchar(255) DEFAULT NULL,
  `meta_keywords` longtext DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `is_free_course` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `course`
--

INSERT INTO `course` (`id`, `title`, `short_description`, `description`, `outcomes`, `language`, `category_id`, `sub_category_id`, `section`, `requirements`, `price`, `discount_flag`, `discounted_price`, `level`, `user_id`, `thumbnail`, `video_url`, `date_added`, `last_modified`, `visibility`, `is_top_course`, `is_admin`, `status`, `course_overview_provider`, `meta_keywords`, `meta_description`, `is_free_course`) VALUES
(1, 'HTML Tutorial', '', '<p xss=removed>HTML is the standard markup language for Web pages.</p><p xss=removed>With HTML you can create your own Website.</p><p xss=removed>HTML is easy to learn - You will enjoy it!</p><div><br></div>', '[\"Bi\\u1ebft HTML c\\u01a1 b\\u1ea3n\"]', 'english', NULL, 2, '[1]', '[\"Kh\\u00f4ng c\\u00f3\"]', 0, NULL, 0, 'beginner', 2, NULL, 'https://www.youtube.com/watch?v=R6plN3FvzFY&list=PL_-VfJajZj0U9nEXa4qyfB4U5ZIYCMPlz', 1691877600, 1691877600, NULL, 1, 0, 'active', 'youtube', '', '', 1),
(2, 'Python Tutorial', '', '<h2 xss=removed>What is Python?</h2><p xss=removed>Python is a popular programming language. It was created by Guido van Rossum, and released in 1991.</p><p xss=removed>It is used for:</p><ul xss=removed><li xss=removed>web development (server-side),</li><li xss=removed>software development,</li><li xss=removed>mathematics,</li><li xss=removed>system scripting.</li></ul><h3 xss=removed>What can Python do?</h3><ul xss=removed><li xss=removed>Python can be used on a server to create web applications.</li><li xss=removed>Python can be used alongside software to create workflows.</li><li xss=removed>Python can connect to database systems. It can also read and modify files.</li><li xss=removed>Python can be used to handle big data and perform complex mathematics.</li><li xss=removed>Python can be used for rapid prototyping, or for production-ready software development.</li></ul><h3 xss=removed>Why Python?</h3><ul xss=removed><li xss=removed>Python works on different platforms (Windows, Mac, Linux, Raspberry Pi, etc).</li><li xss=removed>Python has a simple syntax similar to the English language.</li><li xss=removed>Python has syntax that allows developers to write programs with fewer lines than some other programming languages.</li><li xss=removed>Python runs on an interpreter system, meaning that code can be executed as soon as it is written. This means that prototyping can be very quick.</li><li xss=removed>Python can be treated in a procedural way, an object-oriented way or a functional way.</li></ul><h3 xss=removed>Good to know</h3><ul xss=removed><li xss=removed>The most recent major version of Python is Python 3, which we shall be using in this tutorial. However, Python 2, although not being updated with anything other than security updates, is still quite popular.</li><li xss=removed>In this tutorial Python will be written in a text editor. It is possible to write Python in an Integrated Development Environment, such as Thonny, Pycharm, Netbeans or Eclipse which are particularly useful when managing larger collections of Python files.</li></ul><h3 xss=removed>Python Syntax compared to other programming languages</h3><ul xss=removed><li xss=removed>Python was designed for readability, and has some similarities to the English language with influence from mathematics.</li><li xss=removed>Python uses new lines to complete a command, as opposed to other programming languages which often use semicolons or parentheses.</li><li xss=removed>Python relies on indentation, using whitespace, to define scope; such as the scope of loops, functions and classes. Other programming languages often use curly-brackets for this purpose.</li></ul>', '[\"Bi\\u1ebft Python c\\u01a1 b\\u1ea3n\"]', 'english', NULL, 6, '[]', '[\"Kh\\u00f4ng c\\u00f3\"]', 1000, NULL, 800, 'beginner', 5, NULL, '', 1691877600, 1691877600, NULL, 1, 0, 'active', '', '', '', 1),
(3, 'Python Modules', '', '', '[\"\\u00c1p d\\u1ee5ng \\u0111\\u01b0\\u1ee3c c\\u00e1c module Python\"]', 'english', NULL, 7, '[2,3,4,5]', '[\"\\u0110\\u00e3 qua Python Tutorial\"]', 1000, 1, 900, 'advanced', 5, NULL, '', 1691877600, 1691877600, NULL, 1, 0, 'active', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `paypal_supported` int(11) DEFAULT NULL,
  `stripe_supported` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `currency`
--

INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`) VALUES
(1, 'Leke', 'ALL', 'Lek', 0, 1),
(2, 'Dollars', 'USD', '$', 1, 1),
(3, 'Afghanis', 'AFN', '؋', 0, 1),
(4, 'Pesos', 'ARS', '$', 0, 1),
(5, 'Guilders', 'AWG', 'ƒ', 0, 1),
(6, 'Dollars', 'AUD', '$', 1, 1),
(7, 'New Manats', 'AZN', 'ман', 0, 1),
(8, 'Dollars', 'BSD', '$', 0, 1),
(9, 'Dollars', 'BBD', '$', 0, 1),
(10, 'Rubles', 'BYR', 'p.', 0, 0),
(11, 'Euro', 'EUR', '€', 1, 1),
(12, 'Dollars', 'BZD', 'BZ$', 0, 1),
(13, 'Dollars', 'BMD', '$', 0, 1),
(14, 'Bolivianos', 'BOB', '$b', 0, 1),
(15, 'Convertible Marka', 'BAM', 'KM', 0, 1),
(16, 'Pula', 'BWP', 'P', 0, 1),
(17, 'Leva', 'BGN', 'лв', 0, 1),
(18, 'Reais', 'BRL', 'R$', 1, 1),
(19, 'Pounds', 'GBP', '£', 1, 1),
(20, 'Dollars', 'BND', '$', 0, 1),
(21, 'Riels', 'KHR', '៛', 0, 1),
(22, 'Dollars', 'CAD', '$', 1, 1),
(23, 'Dollars', 'KYD', '$', 0, 1),
(24, 'Pesos', 'CLP', '$', 0, 1),
(25, 'Yuan Renminbi', 'CNY', '¥', 0, 1),
(26, 'Pesos', 'COP', '$', 0, 1),
(27, 'Colón', 'CRC', '₡', 0, 1),
(28, 'Kuna', 'HRK', 'kn', 0, 1),
(29, 'Pesos', 'CUP', '₱', 0, 0),
(30, 'Koruny', 'CZK', 'Kč', 1, 1),
(31, 'Kroner', 'DKK', 'kr', 1, 1),
(32, 'Pesos', 'DOP ', 'RD$', 0, 1),
(33, 'Dollars', 'XCD', '$', 0, 1),
(34, 'Pounds', 'EGP', '£', 0, 1),
(35, 'Colones', 'SVC', '$', 0, 0),
(36, 'Pounds', 'FKP', '£', 0, 1),
(37, 'Dollars', 'FJD', '$', 0, 1),
(38, 'Cedis', 'GHC', '¢', 0, 0),
(39, 'Pounds', 'GIP', '£', 0, 1),
(40, 'Quetzales', 'GTQ', 'Q', 0, 1),
(41, 'Pounds', 'GGP', '£', 0, 0),
(42, 'Dollars', 'GYD', '$', 0, 1),
(43, 'Lempiras', 'HNL', 'L', 0, 1),
(44, 'Dollars', 'HKD', '$', 1, 1),
(45, 'Forint', 'HUF', 'Ft', 1, 1),
(46, 'Kronur', 'ISK', 'kr', 0, 1),
(47, 'Rupees', 'INR', 'Rp', 0, 1),
(48, 'Rupiahs', 'IDR', 'Rp', 0, 1),
(49, 'Rials', 'IRR', '﷼', 0, 0),
(50, 'Pounds', 'IMP', '£', 0, 0),
(51, 'New Shekels', 'ILS', '₪', 1, 1),
(52, 'Dollars', 'JMD', 'J$', 0, 1),
(53, 'Yen', 'JPY', '¥', 1, 1),
(54, 'Pounds', 'JEP', '£', 0, 0),
(55, 'Tenge', 'KZT', 'лв', 0, 1),
(56, 'Won', 'KPW', '₩', 0, 0),
(57, 'Won', 'KRW', '₩', 0, 1),
(58, 'Soms', 'KGS', 'лв', 0, 1),
(59, 'Kips', 'LAK', '₭', 0, 1),
(60, 'Lati', 'LVL', 'Ls', 0, 0),
(61, 'Pounds', 'LBP', '£', 0, 1),
(62, 'Dollars', 'LRD', '$', 0, 1),
(63, 'Switzerland Francs', 'CHF', 'CHF', 1, 1),
(64, 'Litai', 'LTL', 'Lt', 0, 0),
(65, 'Denars', 'MKD', 'ден', 0, 1),
(66, 'Ringgits', 'MYR', 'RM', 1, 1),
(67, 'Rupees', 'MUR', '₨', 0, 1),
(68, 'Pesos', 'MXN', '$', 1, 1),
(69, 'Tugriks', 'MNT', '₮', 0, 1),
(70, 'Meticais', 'MZN', 'MT', 0, 1),
(71, 'Dollars', 'NAD', '$', 0, 1),
(72, 'Rupees', 'NPR', '₨', 0, 1),
(73, 'Guilders', 'ANG', 'ƒ', 0, 1),
(74, 'Dollars', 'NZD', '$', 1, 1),
(75, 'Cordobas', 'NIO', 'C$', 0, 1),
(76, 'Nairas', 'NGN', '₦', 0, 1),
(77, 'Krone', 'NOK', 'kr', 1, 1),
(78, 'Rials', 'OMR', '﷼', 0, 0),
(79, 'Rupees', 'PKR', '₨', 0, 1),
(80, 'Balboa', 'PAB', 'B/.', 0, 1),
(81, 'Guarani', 'PYG', 'Gs', 0, 1),
(82, 'Nuevos Soles', 'PEN', 'S/.', 0, 1),
(83, 'Pesos', 'PHP', 'Php', 1, 1),
(84, 'Zlotych', 'PLN', 'zł', 1, 1),
(85, 'Rials', 'QAR', '﷼', 0, 1),
(86, 'New Lei', 'RON', 'lei', 0, 1),
(87, 'Rubles', 'RUB', 'руб', 0, 1),
(88, 'Pounds', 'SHP', '£', 0, 1),
(89, 'Riyals', 'SAR', '﷼', 0, 1),
(90, 'Dinars', 'RSD', 'Дин.', 0, 1),
(91, 'Rupees', 'SCR', '₨', 0, 1),
(92, 'Dollars', 'SGD', '$', 1, 1),
(93, 'Dollars', 'SBD', '$', 0, 1),
(94, 'Shillings', 'SOS', 'S', 0, 1),
(95, 'Rand', 'ZAR', 'R', 0, 1),
(96, 'Rupees', 'LKR', '₨', 0, 1),
(97, 'Kronor', 'SEK', 'kr', 1, 1),
(98, 'Dollars', 'SRD', '$', 0, 1),
(99, 'Pounds', 'SYP', '£', 0, 0),
(100, 'New Dollars', 'TWD', 'NT$', 1, 1),
(101, 'Baht', 'THB', '฿', 1, 1),
(102, 'Dollars', 'TTD', 'TT$', 0, 1),
(103, 'Lira', 'TRY', 'TL', 0, 1),
(104, 'Liras', 'TRL', '£', 0, 0),
(105, 'Dollars', 'TVD', '$', 0, 0),
(106, 'Hryvnia', 'UAH', '₴', 0, 1),
(107, 'Pesos', 'UYU', '$U', 0, 1),
(108, 'Sums', 'UZS', 'лв', 0, 1),
(109, 'Bolivares Fuertes', 'VEF', 'Bs', 0, 0),
(110, 'Dong', 'VND', '₫', 0, 1),
(111, 'Rials', 'YER', '﷼', 0, 1),
(112, 'Zimbabwe Dollars', 'ZWD', 'Z$', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `enrol`
--

CREATE TABLE `enrol` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `enrol`
--

INSERT INTO `enrol` (`id`, `user_id`, `course_id`, `date_added`, `last_modified`) VALUES
(1, 3, 1, 1691877600, NULL),
(2, 3, 2, 1691877600, NULL),
(3, 6, 2, 1691877600, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `frontend_settings`
--

CREATE TABLE `frontend_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `frontend_settings`
--

INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES
(1, 'banner_title', 'Learn on your schedule'),
(2, 'banner_sub_title', 'Study any topic, anytime. Explore thousands of courses for the lowest price ever!'),
(4, 'about_us', '<p></p><h2>This is about us</h2><p><span xss=\"removed\" xss=removed>Welcome to Academy. It will help you to learn in a new ways</span></p>'),
(10, 'terms_and_condition', '<h2>Terms and Condition</h2>This is the Terms and condition page for your companys'),
(11, 'privacy_policy', '<h2>Privacy Policy</h2>This is the Privacy Policy page for your companys'),
(13, 'theme', 'default');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `language`
--

CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL,
  `phrase` longtext DEFAULT NULL,
  `english` longtext DEFAULT NULL,
  `Bengali` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `Bengali`) VALUES
(1, 'manage_profile', NULL, NULL),
(140, 'category_code', NULL, NULL),
(3, 'dashboard', NULL, NULL),
(4, 'categories', NULL, NULL),
(5, 'courses', NULL, NULL),
(6, 'students', NULL, NULL),
(7, 'enroll_history', NULL, NULL),
(8, 'message', NULL, NULL),
(9, 'settings', NULL, NULL),
(10, 'system_settings', NULL, NULL),
(11, 'frontend_settings', NULL, NULL),
(12, 'payment_settings', NULL, NULL),
(13, 'manage_language', NULL, NULL),
(14, 'edit_profile', NULL, NULL),
(15, 'log_out', NULL, NULL),
(16, 'first_name', NULL, NULL),
(17, 'last_name', NULL, NULL),
(18, 'email', NULL, NULL),
(19, 'facebook_link', NULL, NULL),
(20, 'twitter_link', NULL, NULL),
(21, 'linkedin_link', NULL, NULL),
(22, 'a_short_title_about_yourself', NULL, NULL),
(23, 'biography', NULL, NULL),
(24, 'photo', NULL, NULL),
(25, 'select_image', NULL, NULL),
(26, 'change', NULL, NULL),
(27, 'remove', NULL, NULL),
(28, 'update_profile', NULL, NULL),
(29, 'change_password', NULL, NULL),
(30, 'current_password', NULL, NULL),
(31, 'new_password', NULL, NULL),
(32, 'confirm_new_password', NULL, NULL),
(33, 'delete', NULL, NULL),
(34, 'cancel', NULL, NULL),
(35, 'are_you_sure_to_update_this_information', NULL, NULL),
(36, 'yes', NULL, NULL),
(37, 'no', NULL, NULL),
(38, 'system settings', NULL, NULL),
(39, 'system_name', NULL, NULL),
(40, 'system_title', NULL, NULL),
(41, 'slogan', NULL, NULL),
(42, 'system_email', NULL, NULL),
(43, 'address', NULL, NULL),
(44, 'phone', NULL, NULL),
(45, 'youtube_api_key', NULL, NULL),
(46, 'get_youtube_api_key', NULL, NULL),
(47, 'vimeo_api_key', NULL, NULL),
(48, 'purchase_code', NULL, NULL),
(49, 'language', NULL, NULL),
(50, 'text-align', NULL, NULL),
(51, 'update_system_settings', NULL, NULL),
(52, 'update_product', NULL, NULL),
(53, 'file', NULL, NULL),
(54, 'install_update', NULL, NULL),
(55, 'system_logo', NULL, NULL),
(56, 'update_logo', NULL, NULL),
(57, 'get_vimeo_api_key', NULL, NULL),
(58, 'add_category', NULL, NULL),
(59, 'category_title', NULL, NULL),
(60, 'sub_categories', NULL, NULL),
(61, 'actions', NULL, NULL),
(62, 'action', NULL, NULL),
(63, 'manage_sub_categories', NULL, NULL),
(64, 'edit', NULL, NULL),
(65, 'add_course', NULL, NULL),
(66, 'select_category', NULL, NULL),
(67, 'title', NULL, NULL),
(68, 'category', NULL, NULL),
(69, '#_section', NULL, NULL),
(70, '#_lesson', NULL, NULL),
(71, '#_enrolled_user', NULL, NULL),
(72, 'view_course_details', NULL, NULL),
(73, 'manage_section', NULL, NULL),
(74, 'manage_lesson', NULL, NULL),
(75, 'student', NULL, NULL),
(76, 'add_student', NULL, NULL),
(77, 'name', NULL, NULL),
(78, 'date_added', NULL, NULL),
(79, 'enrolled_courses', NULL, NULL),
(80, 'view_profile', NULL, NULL),
(81, 'admin_dashboard', NULL, NULL),
(82, 'total_courses', NULL, NULL),
(83, 'number_of_courses', NULL, NULL),
(84, 'total_lessons', NULL, NULL),
(85, 'number_of_lessons', NULL, NULL),
(86, 'total_enrollment', NULL, NULL),
(87, 'number_of_enrollment', NULL, NULL),
(88, 'total_student', NULL, NULL),
(89, 'number_of_student', NULL, NULL),
(90, 'manage_sections', NULL, NULL),
(91, 'manage sections', NULL, NULL),
(92, 'course', NULL, NULL),
(93, 'add_section', NULL, NULL),
(94, 'lessons', NULL, NULL),
(95, 'serialize_sections', NULL, NULL),
(96, 'add_lesson', NULL, NULL),
(97, 'edit_section', NULL, NULL),
(98, 'delete_section', NULL, NULL),
(99, 'course_details', NULL, NULL),
(100, 'course details', NULL, NULL),
(101, 'details', NULL, NULL),
(102, 'instructor', NULL, NULL),
(103, 'sub_category', NULL, NULL),
(104, 'enrolled_user', NULL, NULL),
(105, 'last_modified', NULL, NULL),
(106, 'manage language', NULL, NULL),
(107, 'language_list', NULL, NULL),
(108, 'add_phrase', NULL, NULL),
(109, 'add_language', NULL, NULL),
(110, 'option', NULL, NULL),
(111, 'edit_phrase', NULL, NULL),
(112, 'delete_language', NULL, NULL),
(113, 'phrase', NULL, NULL),
(114, 'value_required', NULL, NULL),
(115, 'frontend settings', NULL, NULL),
(116, 'banner_title', NULL, NULL),
(117, 'banner_sub_title', NULL, NULL),
(118, 'about_us', NULL, NULL),
(119, 'blog', NULL, NULL),
(120, 'update_frontend_settings', NULL, NULL),
(121, 'update_banner', NULL, NULL),
(122, 'banner_image', NULL, NULL),
(123, 'update_banner_image', NULL, NULL),
(124, 'payment settings', NULL, NULL),
(125, 'paypal_settings', NULL, NULL),
(126, 'client_id', NULL, NULL),
(127, 'sandbox', NULL, NULL),
(128, 'production', NULL, NULL),
(129, 'active', NULL, NULL),
(130, 'mode', NULL, NULL),
(131, 'stripe_settings', NULL, NULL),
(132, 'testmode', NULL, NULL),
(133, 'on', NULL, NULL),
(134, 'off', NULL, NULL),
(135, 'test_secret_key', NULL, NULL),
(136, 'test_public_key', NULL, NULL),
(137, 'live_secret_key', NULL, NULL),
(138, 'live_public_key', NULL, NULL),
(139, 'save_changes', NULL, NULL),
(141, 'update_phrase', NULL, NULL),
(142, 'check', NULL, NULL),
(143, 'settings_updated', NULL, NULL),
(144, 'checking', NULL, NULL),
(145, 'phrase_added', NULL, NULL),
(146, 'language_added', NULL, NULL),
(147, 'language_deleted', NULL, NULL),
(148, 'add course', NULL, NULL),
(149, 'add_courses', NULL, NULL),
(150, 'add_course_form', NULL, NULL),
(151, 'basic_info', NULL, NULL),
(152, 'short_description', NULL, NULL),
(153, 'description', NULL, NULL),
(154, 'level', NULL, NULL),
(155, 'beginner', NULL, NULL),
(156, 'advanced', NULL, NULL),
(157, 'intermediate', NULL, NULL),
(158, 'language_made_in', NULL, NULL),
(159, 'is_top_course', NULL, NULL),
(160, 'outcomes', NULL, NULL),
(161, 'category_and_sub_category', NULL, NULL),
(162, 'select_a_category', NULL, NULL),
(163, 'select_a_category_first', NULL, NULL),
(164, 'requirements', NULL, NULL),
(165, 'price_and_discount', NULL, NULL),
(166, 'price', NULL, NULL),
(167, 'has_discount', NULL, NULL),
(168, 'discounted_price', NULL, NULL),
(169, 'course_thumbnail', NULL, NULL),
(170, 'note', NULL, NULL),
(171, 'thumbnail_size_should_be_600_x_600', NULL, NULL),
(172, 'course_overview_url', NULL, NULL),
(173, '0%', NULL, NULL),
(174, 'manage profile', NULL, NULL),
(175, 'edit_course', NULL, NULL),
(176, 'edit course', NULL, NULL),
(177, 'edit_courses', NULL, NULL),
(178, 'edit_course_form', NULL, NULL),
(179, 'update_course', NULL, NULL),
(180, 'course_updated', NULL, NULL),
(181, 'number_of_sections', NULL, NULL),
(182, 'number_of_enrolled_users', NULL, NULL),
(183, 'add section', NULL, NULL),
(184, 'section', NULL, NULL),
(185, 'add_section_form', NULL, NULL),
(186, 'update', NULL, NULL),
(187, 'serialize_section', NULL, NULL),
(188, 'serialize section', NULL, NULL),
(189, 'submit', NULL, NULL),
(190, 'sections_have_been_serialized', NULL, NULL),
(191, 'select_course', NULL, NULL),
(192, 'search', NULL, NULL),
(193, 'thumbnail', NULL, NULL),
(194, 'duration', NULL, NULL),
(195, 'provider', NULL, NULL),
(196, 'add lesson', NULL, NULL),
(197, 'add_lesson_form', NULL, NULL),
(198, 'video_type', NULL, NULL),
(199, 'select_a_course', NULL, NULL),
(200, 'select_a_course_first', NULL, NULL),
(201, 'video_url', NULL, NULL),
(202, 'invalid_url', NULL, NULL),
(203, 'your_video_source_has_to_be_either_youtube_or_vimeo', NULL, NULL),
(204, 'for', NULL, NULL),
(205, 'of', NULL, NULL),
(206, 'edit_lesson', NULL, NULL),
(207, 'edit lesson', NULL, NULL),
(208, 'edit_lesson_form', NULL, NULL),
(209, 'login', NULL, NULL),
(210, 'password', NULL, NULL),
(211, 'forgot_password', NULL, NULL),
(212, 'back_to_website', NULL, NULL),
(213, 'send_mail', NULL, NULL),
(214, 'back_to_login', NULL, NULL),
(215, 'student_add', NULL, NULL),
(216, 'student add', NULL, NULL),
(217, 'add_students', NULL, NULL),
(218, 'student_add_form', NULL, NULL),
(219, 'login_credentials', NULL, NULL),
(220, 'social_information', NULL, NULL),
(221, 'facebook', NULL, NULL),
(222, 'twitter', NULL, NULL),
(223, 'linkedin', NULL, NULL),
(224, 'user_image', NULL, NULL),
(225, 'add_user', NULL, NULL),
(226, 'user_update_successfully', NULL, NULL),
(227, 'user_added_successfully', NULL, NULL),
(228, 'student_edit', NULL, NULL),
(229, 'student edit', NULL, NULL),
(230, 'edit_students', NULL, NULL),
(231, 'student_edit_form', NULL, NULL),
(232, 'update_user', NULL, NULL),
(233, 'enroll history', NULL, NULL),
(234, 'filter', NULL, NULL),
(235, 'user_name', NULL, NULL),
(236, 'enrolled_course', NULL, NULL),
(237, 'enrollment_date', NULL, NULL),
(238, 'biography2', NULL, NULL),
(239, 'home', NULL, NULL),
(240, 'search_for_courses', NULL, NULL),
(241, 'total', NULL, NULL),
(242, 'go_to_cart', NULL, NULL),
(243, 'your_cart_is_empty', NULL, NULL),
(244, 'log_in', NULL, NULL),
(245, 'sign_up', NULL, NULL),
(246, 'what_do_you_want_to_learn', NULL, NULL),
(247, 'online_courses', NULL, NULL),
(248, 'explore_a_variety_of_fresh_topics', NULL, NULL),
(249, 'expert_instruction', NULL, NULL),
(250, 'find_the_right_course_for_you', NULL, NULL),
(251, 'lifetime_access', NULL, NULL),
(252, 'learn_on_your_schedule', NULL, NULL),
(253, 'top_courses', NULL, NULL),
(254, 'last_updater', NULL, NULL),
(255, 'hours', NULL, NULL),
(256, 'add_to_cart', NULL, NULL),
(257, 'top', NULL, NULL),
(258, 'latest_courses', NULL, NULL),
(259, 'added_to_cart', NULL, NULL),
(260, 'admin', NULL, NULL),
(261, 'log_in_to_your_udemy_account', NULL, NULL),
(262, 'by_signing_up_you_agree_to_our', NULL, NULL),
(263, 'terms_of_use', NULL, NULL),
(264, 'and', NULL, NULL),
(265, 'privacy_policy', NULL, NULL),
(266, 'do_not_have_an_account', NULL, NULL),
(267, 'sign_up_and_start_learning', NULL, NULL),
(268, 'check_here_for_exciting_deals_and_personalized_course_recommendations', NULL, NULL),
(269, 'already_have_an_account', NULL, NULL),
(270, 'checkout', NULL, NULL),
(271, 'paypal', NULL, NULL),
(272, 'stripe', NULL, NULL),
(273, 'step', NULL, NULL),
(274, 'how_would_you_rate_this_course_overall', NULL, NULL),
(275, 'write_a_public_review', NULL, NULL),
(276, 'describe_your_experience_what_you_got_out_of_the_course_and_other_helpful_highlights', NULL, NULL),
(277, 'what_did_the_instructor_do_well_and_what_could_use_some_improvement', NULL, NULL),
(278, 'next', NULL, NULL),
(279, 'previous', NULL, NULL),
(280, 'publish', NULL, NULL),
(281, 'search_results', NULL, NULL),
(282, 'ratings', NULL, NULL),
(283, 'search_results_for', NULL, NULL),
(284, 'category_page', NULL, NULL),
(285, 'all', NULL, NULL),
(286, 'category_list', NULL, NULL),
(287, 'by', NULL, NULL),
(288, 'go_to_wishlist', NULL, NULL),
(289, 'hi', NULL, NULL),
(290, 'my_courses', NULL, NULL),
(291, 'my_wishlist', NULL, NULL),
(292, 'my_messages', NULL, NULL),
(293, 'purchase_history', NULL, NULL),
(294, 'user_profile', NULL, NULL),
(295, 'already_purchased', NULL, NULL),
(296, 'all_courses', NULL, NULL),
(297, 'wishlists', NULL, NULL),
(298, 'search_my_courses', NULL, NULL),
(299, 'students_enrolled', NULL, NULL),
(300, 'created_by', NULL, NULL),
(301, 'last_updated', NULL, NULL),
(302, 'what_will_i_learn', NULL, NULL),
(303, 'view_more', NULL, NULL),
(304, 'other_related_courses', NULL, NULL),
(305, 'updated', NULL, NULL),
(306, 'curriculum_for_this_course', NULL, NULL),
(307, 'about_the_instructor', NULL, NULL),
(308, 'reviews', NULL, NULL),
(309, 'student_feedback', NULL, NULL),
(310, 'average_rating', NULL, NULL),
(311, 'preview_this_course', NULL, NULL),
(312, 'includes', NULL, NULL),
(313, 'on_demand_videos', NULL, NULL),
(314, 'full_lifetime_access', NULL, NULL),
(315, 'access_on_mobile_and_tv', NULL, NULL),
(316, 'course_preview', NULL, NULL),
(317, 'instructor_page', NULL, NULL),
(318, 'buy_now', NULL, NULL),
(319, 'shopping_cart', NULL, NULL),
(320, 'courses_in_cart', NULL, NULL),
(321, 'student_name', NULL, NULL),
(322, 'amount_to_pay', NULL, NULL),
(323, 'payment_successfully_done', NULL, NULL),
(324, 'filter_by', NULL, NULL),
(325, 'instructors', NULL, NULL),
(326, 'reset', NULL, NULL),
(327, 'your', NULL, NULL),
(328, 'rating', NULL, NULL),
(329, 'course_detail', NULL, NULL),
(330, 'start_lesson', NULL, NULL),
(331, 'show_full_biography', NULL, NULL),
(332, 'terms_and_condition', NULL, NULL),
(333, 'about', NULL, NULL),
(334, 'terms_&_condition', NULL, NULL),
(335, 'sub categories', NULL, NULL),
(336, 'add_sub_category', NULL, NULL),
(337, 'sub_category_title', NULL, NULL),
(338, 'add sub category', NULL, NULL),
(339, 'add_sub_category_form', NULL, NULL),
(340, 'sub_category_code', NULL, NULL),
(341, 'data_deleted', NULL, NULL),
(342, 'edit_category', NULL, NULL),
(343, 'edit category', NULL, NULL),
(344, 'edit_category_form', NULL, NULL),
(345, 'font', NULL, NULL),
(346, 'awesome class', NULL, NULL),
(347, 'update_category', NULL, NULL),
(348, 'data_updated_successfully', NULL, NULL),
(349, 'edit_sub_category', NULL, NULL),
(350, 'edit sub category', NULL, NULL),
(351, 'sub_category_edit', NULL, NULL),
(352, 'update_sub_category', NULL, NULL),
(353, 'course_added', NULL, NULL),
(354, 'user_deleted_successfully', NULL, NULL),
(355, 'private_messaging', NULL, NULL),
(356, 'private messaging', NULL, NULL),
(357, 'messages', NULL, NULL),
(358, 'select_message_to_read', NULL, NULL),
(359, 'new_message', NULL, NULL),
(360, 'email_duplication', NULL, NULL),
(361, 'your_registration_has_been_successfully_done', NULL, NULL),
(362, 'profile', NULL, NULL),
(363, 'account', NULL, NULL),
(364, 'add_information_about_yourself_to_share_on_your_profile', NULL, NULL),
(365, 'basics', NULL, NULL),
(366, 'add_your_twitter_link', NULL, NULL),
(367, 'add_your_facebook_link', NULL, NULL),
(368, 'add_your_linkedin_link', NULL, NULL),
(369, 'credentials', NULL, NULL),
(370, 'edit_your_account_settings', NULL, NULL),
(371, 'enter_current_password', NULL, NULL),
(372, 'enter_new_password', NULL, NULL),
(373, 're-type_your_password', NULL, NULL),
(374, 'save', NULL, NULL),
(375, 'update_user_photo', NULL, NULL),
(376, 'update_your_photo', NULL, NULL),
(377, 'upload_image', NULL, NULL),
(378, 'updated_successfully', NULL, NULL),
(379, 'invalid_login_credentials', NULL, NULL),
(380, 'blank_page', NULL, NULL),
(381, 'no_section_found', NULL, NULL),
(382, 'select_a_message_thread_to_read_it_here', NULL, NULL),
(383, 'send', NULL, NULL),
(384, 'type_your_message', NULL, NULL),
(385, 'date', NULL, NULL),
(386, 'total_price', NULL, NULL),
(387, 'payment_type', NULL, NULL),
(388, 'edit section', NULL, NULL),
(389, 'edit_section_form', NULL, NULL),
(390, 'reply_message', NULL, NULL),
(391, 'reply', NULL, NULL),
(392, 'log_in_to_your_account', NULL, NULL),
(393, 'no_result_found', NULL, NULL),
(394, 'enrollment', NULL, NULL),
(395, 'enroll_a_student', NULL, NULL),
(396, 'report', NULL, NULL),
(397, 'admin_revenue', NULL, NULL),
(398, 'instructor_revenue', NULL, NULL),
(399, 'instructor_settings', NULL, NULL),
(400, 'view_frontend', NULL, NULL),
(401, 'number_of_active_courses', NULL, NULL),
(402, 'number_of_pending_courses', NULL, NULL),
(403, 'all_instructor', NULL, NULL),
(404, 'active_courses', NULL, NULL),
(405, 'pending_courses', NULL, NULL),
(406, 'no_data_found', NULL, NULL),
(407, 'view_course_on_frontend', NULL, NULL),
(408, 'mark_as_pending', NULL, NULL),
(409, 'add category', NULL, NULL),
(410, 'add_categories', NULL, NULL),
(411, 'category_add_form', NULL, NULL),
(412, 'icon_picker', NULL, NULL),
(413, 'enroll a student', NULL, NULL),
(414, 'enrollment_form', NULL, NULL),
(415, 'admin revenue', NULL, NULL),
(416, 'total_amount', NULL, NULL),
(417, 'instructor revenue', NULL, NULL),
(418, 'status', NULL, NULL),
(419, 'instructor settings', NULL, NULL),
(420, 'allow_public_instructor', NULL, NULL),
(421, 'instructor_revenue_percentage', NULL, NULL),
(422, 'admin_revenue_percentage', NULL, NULL),
(423, 'update_instructor_settings', NULL, NULL),
(424, 'payment_info', NULL, NULL),
(425, 'required_for_instructors', NULL, NULL),
(426, 'paypal_client_id', NULL, NULL),
(427, 'stripe_public_key', NULL, NULL),
(428, 'stripe_secret_key', NULL, NULL),
(429, 'mark_as_active', NULL, NULL),
(430, 'mail_subject', NULL, NULL),
(431, 'mail_body', NULL, NULL),
(432, 'paid', NULL, NULL),
(433, 'pending', NULL, NULL),
(434, 'this_instructor_has_not_provided_valid_paypal_client_id', NULL, NULL),
(435, 'pay_with_paypal', NULL, NULL),
(436, 'this_instructor_has_not_provided_valid_public_key_or_secret_key', NULL, NULL),
(437, 'pay_with_stripe', NULL, NULL),
(438, 'create_course', NULL, NULL),
(439, 'payment_report', NULL, NULL),
(440, 'instructor_dashboard', NULL, NULL),
(441, 'draft', NULL, NULL),
(442, 'view_lessons', NULL, NULL),
(443, 'course_title', NULL, NULL),
(444, 'update_your_payment_settings', NULL, NULL),
(445, 'edit_course_detail', NULL, NULL),
(446, 'edit_basic_informations', NULL, NULL),
(447, 'publish_this_course', NULL, NULL),
(448, 'save_to_draft', NULL, NULL),
(449, 'update_section', NULL, NULL),
(450, 'analyzing_given_url', NULL, NULL),
(451, 'select_a_section', NULL, NULL),
(452, 'update_lesson', NULL, NULL),
(453, 'website_name', NULL, NULL),
(454, 'website_title', NULL, NULL),
(455, 'website_keywords', NULL, NULL),
(456, 'website_description', NULL, NULL),
(457, 'author', NULL, NULL),
(458, 'footer_text', NULL, NULL),
(459, 'footer_link', NULL, NULL),
(460, 'update_backend_logo', NULL, NULL),
(461, 'update_favicon', NULL, NULL),
(462, 'favicon', NULL, NULL),
(463, 'active courses', NULL, NULL),
(464, 'product_updated_successfully', NULL, NULL),
(465, 'course_overview_provider', NULL, NULL),
(466, 'youtube', NULL, NULL),
(467, 'vimeo', NULL, NULL),
(468, 'html5', NULL, NULL),
(469, 'meta_keywords', NULL, NULL),
(470, 'meta_description', NULL, NULL),
(471, 'lesson_type', NULL, NULL),
(472, 'video', NULL, NULL),
(473, 'select_type_of_lesson', NULL, NULL),
(474, 'text_file', NULL, NULL),
(475, 'pdf_file', NULL, NULL),
(476, 'document_file', NULL, NULL),
(477, 'image_file', NULL, NULL),
(478, 'lesson_provider', NULL, NULL),
(479, 'select_lesson_provider', NULL, NULL),
(480, 'analyzing_the_url', NULL, NULL),
(481, 'attachment', NULL, NULL),
(482, 'summary', NULL, NULL),
(483, 'download', NULL, NULL),
(484, 'system_settings_updated', NULL, NULL),
(485, 'course_updated_successfully', NULL, NULL),
(486, 'please_wait_untill_admin_approves_it', NULL, NULL),
(487, 'pending courses', NULL, NULL),
(488, 'course_status_updated', NULL, NULL),
(489, 'smtp_settings', NULL, NULL),
(490, 'free_course', NULL, NULL),
(491, 'free', NULL, NULL),
(492, 'get_enrolled', NULL, NULL),
(493, 'course_added_successfully', NULL, NULL),
(494, 'update_frontend_logo', NULL, NULL),
(495, 'system_currency_settings', NULL, NULL),
(496, 'select_system_currency', NULL, NULL),
(497, 'currency_position', NULL, NULL),
(498, 'left', NULL, NULL),
(499, 'right', NULL, NULL),
(500, 'left_with_a_space', NULL, NULL),
(501, 'right_with_a_space', NULL, NULL),
(502, 'paypal_currency', NULL, NULL),
(503, 'select_paypal_currency', NULL, NULL),
(504, 'stripe_currency', NULL, NULL),
(505, 'select_stripe_currency', NULL, NULL),
(506, 'heads_up', NULL, NULL),
(507, 'please_make_sure_that', NULL, NULL),
(508, 'system_currency', NULL, NULL),
(509, 'are_same', NULL, NULL),
(510, 'smtp settings', NULL, NULL),
(511, 'protocol', NULL, NULL),
(512, 'smtp_host', NULL, NULL),
(513, 'smtp_port', NULL, NULL),
(514, 'smtp_user', NULL, NULL),
(515, 'smtp_pass', NULL, NULL),
(516, 'update_smtp_settings', NULL, NULL),
(517, 'phrase_updated', NULL, NULL),
(518, 'registered_user', NULL, NULL),
(519, 'provide_your_valid_login_credentials', NULL, NULL),
(520, 'registration_form', NULL, NULL),
(521, 'provide_your_email_address_to_get_password', NULL, NULL),
(522, 'reset_password', NULL, NULL),
(523, 'want_to_go_back', NULL, NULL),
(524, 'message_sent!', NULL, NULL),
(525, 'selected_icon', NULL, NULL),
(526, 'pick_another_icon_picker', NULL, NULL),
(527, 'show_more', NULL, NULL),
(528, 'show_less', NULL, NULL),
(529, 'all_category', NULL, NULL),
(530, 'price_range', NULL, NULL),
(531, 'price_range_withing', NULL, NULL),
(532, 'all_categories', NULL, NULL),
(533, 'all_sub_category', NULL, NULL),
(534, 'number_of_results', NULL, NULL),
(535, 'showing_on_this_page', NULL, NULL),
(536, 'welcome', NULL, NULL),
(537, 'my_account', NULL, NULL),
(538, 'logout', NULL, NULL),
(539, 'visit_website', NULL, NULL),
(540, 'navigation', NULL, NULL),
(541, 'add_new_category', NULL, NULL),
(542, 'enrolment', NULL, NULL),
(543, 'enrol_history', NULL, NULL),
(544, 'enrol_a_student', NULL, NULL),
(545, 'language_settings', NULL, NULL),
(546, 'congratulations', NULL, NULL),
(547, 'oh_snap', NULL, NULL),
(548, 'close', NULL, NULL),
(549, 'parent', NULL, NULL),
(550, 'none', NULL, NULL),
(551, 'category_thumbnail', NULL, NULL),
(552, 'the_image_size_should_be', NULL, NULL),
(553, 'choose_thumbnail', NULL, NULL),
(554, 'data_added_successfully', NULL, NULL),
(555, '', NULL, NULL),
(556, 'update_category_form', NULL, NULL),
(557, 'student_list', NULL, NULL),
(558, 'choose_user_image', NULL, NULL),
(559, 'finish', NULL, NULL),
(560, 'thank_you', NULL, NULL),
(561, 'you_are_almost_there', NULL, NULL),
(562, 'you_are_just_one_click_away', NULL, NULL),
(563, 'country', NULL, NULL),
(564, 'website_settings', NULL, NULL),
(565, 'write_down_facebook_url', NULL, NULL),
(566, 'write_down_twitter_url', NULL, NULL),
(567, 'write_down_linkedin_url', NULL, NULL),
(568, 'google_link', NULL, NULL),
(569, 'write_down_google_url', NULL, NULL),
(570, 'instagram_link', NULL, NULL),
(571, 'write_down_instagram_url', NULL, NULL),
(572, 'pinterest_link', NULL, NULL),
(573, 'write_down_pinterest_url', NULL, NULL),
(574, 'update_settings', NULL, NULL),
(575, 'upload_banner_image', NULL, NULL),
(576, 'update_light_logo', NULL, NULL),
(577, 'upload_light_logo', NULL, NULL),
(578, 'update_dark_logo', NULL, NULL),
(579, 'upload_dark_logo', NULL, NULL),
(580, 'update_small_logo', NULL, NULL),
(581, 'upload_small_logo', NULL, NULL),
(582, 'upload_favicon', NULL, NULL),
(583, 'logo_updated', NULL, NULL),
(584, 'favicon_updated', NULL, NULL),
(585, 'banner_image_update', NULL, NULL),
(586, 'frontend_settings_updated', NULL, NULL),
(587, 'setup_payment_informations', NULL, NULL),
(588, 'update_system_currency', NULL, NULL),
(589, 'setup_paypal_settings', NULL, NULL),
(590, 'update_paypal_keys', NULL, NULL),
(591, 'setup_stripe_settings', NULL, NULL),
(592, 'test_mode', NULL, NULL),
(593, 'update_stripe_keys', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lesson`
--

CREATE TABLE `lesson` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `video_type` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `lesson_type` varchar(255) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `attachment_type` varchar(255) DEFAULT NULL,
  `summary` longtext DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lesson`
--

INSERT INTO `lesson` (`id`, `title`, `duration`, `course_id`, `section_id`, `video_type`, `video_url`, `date_added`, `last_modified`, `lesson_type`, `attachment`, `attachment_type`, `summary`, `order`) VALUES
(1, '1+1=?', '00:00:00', 1, 1, NULL, NULL, 1691877600, NULL, 'quiz', NULL, NULL, '', 0),
(2, 'Introduction', NULL, 1, 1, NULL, NULL, 1691877600, NULL, 'other', '9ba2c00468663a46cd89b73f566126dd.xlsx', 'doc', '', 0),
(3, 'Ảnh minh họa', NULL, 3, 2, NULL, NULL, 1691877600, NULL, 'other', '65922d2e6493b3ec5392f71a47d6b59d.png', 'img', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `message_thread_code` longtext DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `sender` longtext DEFAULT NULL,
  `timestamp` longtext DEFAULT NULL,
  `read_status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `message`
--

INSERT INTO `message` (`message_id`, `message_thread_code`, `message`, `sender`, `timestamp`, `read_status`) VALUES
(1, 'bc9834f24417bf3', '4984984984', '4', '1691925573', NULL),
(2, 'bc9834f24417bf3', '5+9+58+99+', '4', '1691925582', NULL),
(3, 'bc9834f24417bf3', '59849849', '3', '1691925665', NULL),
(4, '9ad0602dfe0d180', '1234', '5', '1691935767', NULL),
(5, '9ad0602dfe0d180', '5678', '5', '1691935771', NULL),
(6, 'c0bb204c6aa0301', 'hello', '6', '1691937329', 1),
(7, 'c0bb204c6aa0301', '5+9+58+99+', '5', '1691937472', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `message_thread`
--

CREATE TABLE `message_thread` (
  `message_thread_id` int(11) NOT NULL,
  `message_thread_code` longtext DEFAULT NULL,
  `sender` varchar(255) DEFAULT '',
  `receiver` varchar(255) DEFAULT '',
  `last_message_timestamp` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `message_thread`
--

INSERT INTO `message_thread` (`message_thread_id`, `message_thread_code`, `sender`, `receiver`, `last_message_timestamp`) VALUES
(1, 'bc9834f24417bf3', '4', '3', NULL),
(2, '9ad0602dfe0d180', '5', '3', NULL),
(3, 'c0bb204c6aa0301', '6', '5', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment`
--

CREATE TABLE `payment` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `admin_revenue` varchar(255) DEFAULT NULL,
  `instructor_revenue` varchar(255) DEFAULT NULL,
  `instructor_payment_status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `question`
--

CREATE TABLE `question` (
  `id` int(11) UNSIGNED NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `number_of_options` int(11) DEFAULT NULL,
  `options` longtext DEFAULT NULL,
  `correct_answers` longtext DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating`
--

CREATE TABLE `rating` (
  `id` int(11) UNSIGNED NOT NULL,
  `rating` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ratable_id` int(11) DEFAULT NULL,
  `ratable_type` varchar(50) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `review` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rating`
--

INSERT INTO `rating` (`id`, `rating`, `user_id`, `ratable_id`, `ratable_type`, `date_added`, `last_modified`, `review`) VALUES
(1, 5, 3, 1, 'course', 1691877600, NULL, ''),
(2, 5, 6, 0, 'course', 1691877600, NULL, 'fine');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`, `date_added`, `last_modified`) VALUES
(1, 'Admin', 1234567890, 1234567890),
(2, 'User', 1234567890, 1234567890);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `section`
--

INSERT INTO `section` (`id`, `title`, `course_id`, `order`) VALUES
(1, 'Introduction', 1, 0),
(2, 'NumPy', 3, 0),
(3, 'Pandas', 3, 0),
(4, 'Django', 3, 0),
(5, 'SciPy', 3, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'language', 'english'),
(2, 'system_name', 'Learning Management System Online'),
(3, 'system_title', 'Learning Management System Online'),
(4, 'system_email', 'admin@example.com'),
(5, 'address', 'Learning Management System Online'),
(6, 'phone', '+143-52-9933631'),
(7, 'purchase_code', 'your-purchase-code'),
(8, 'paypal', '[{\"active\":\"1\",\"mode\":\"sandbox\",\"sandbox_client_id\":\"AZDxjDScFpQtjWTOUtWKbyN_bDt4OgqaF4eYXlewfBP4-8aqX3PiV8e1GWU6liB2CUXlkA59kJXE7M6R\",\"production_client_id\":\"1234\"}]'),
(9, 'stripe_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"public_key\":\"pk_test_c6VvBEbwHFdulFZ62q1IQrar\",\"secret_key\":\"sk_test_9IMkiM6Ykxr1LCe2dJ3PgaxS\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}]'),
(10, 'youtube_api_key', 'AIzaSyBBJrcS7AhGd1Cgd6GKH3G5aUUj9L9NrFQ'),
(11, 'vimeo_api_key', '39258384b69994dba483c10286825b5c'),
(12, 'slogan', 'A course based video CMS'),
(13, 'text_align', NULL),
(14, 'allow_instructor', '1'),
(15, 'instructor_revenue', '64'),
(16, 'system_currency', 'USD'),
(17, 'paypal_currency', 'USD'),
(18, 'stripe_currency', 'USD'),
(19, 'author', 'Learning Management System Online'),
(20, 'currency_position', 'left'),
(21, 'website_description', 'Nice application'),
(22, 'website_keywords', 'LMS,Learning Management System,Creativeitem,demo,hello,How are you'),
(23, 'footer_text', NULL),
(24, 'footer_link', 'http://lms.com/'),
(25, 'protocol', 'smtp'),
(26, 'smtp_host', 'ssl://smtp.googlemail.com'),
(27, 'smtp_port', '465'),
(28, 'smtp_user', ''),
(29, 'smtp_pass', ''),
(30, 'version', '2.0.1'),
(31, 'student_email_verification', 'disable');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tag`
--

CREATE TABLE `tag` (
  `id` int(11) UNSIGNED NOT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `tagable_id` int(11) DEFAULT NULL,
  `tagable_type` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `social_links` longtext DEFAULT NULL,
  `biography` longtext DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `watch_history` longtext DEFAULT NULL,
  `wishlist` longtext DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `paypal_keys` longtext DEFAULT NULL,
  `stripe_keys` longtext DEFAULT NULL,
  `verification_code` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `social_links`, `biography`, `role_id`, `date_added`, `last_modified`, `watch_history`, `wishlist`, `title`, `paypal_keys`, `stripe_keys`, `verification_code`, `status`) VALUES
(1, 'admin', 'admin', 'admin@example.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(3, 'Huỳnh', 'Nan', 'huynhdieuno@gmail.com', '51eac6b471a284d3341d8c0c63d0f1a286262a18', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', '', 2, 1691924862, 1691925616, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', 'a3c34e71491d25936cfc77c863db715f', 1),
(5, 'admin', '1', '1234@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '{\"facebook\":\"https:\\/\\/www.w3schools.com\\/python\\/python_intro.asp\",\"twitter\":\"https:\\/\\/www.w3schools.com\\/python\\/python_intro.asp\",\"linkedin\":\"https:\\/\\/www.w3schools.com\\/python\\/python_intro.asp\"}', 'https://www.w3schools.com/python/python_intro.asp', 1, 1691935692, 1691936465, '[]', '[]', 'https://www.w3schools.com/python/python_intro.asp', '[{\"production_client_id\":null}]', '[{\"public_live_key\":null,\"secret_live_key\":null}]', '0b54a3e51244a27bf18da548540fc4f0', 1),
(6, 'abc', '1', 'abc@gmail.com', 'a9993e364706816aba3e25717850c26c9cd0d89d', '{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}', NULL, 2, 1691937071, NULL, '[]', '[]', NULL, '[{\"production_client_id\":\"\"}]', '[{\"public_live_key\":\"\",\"secret_live_key\":\"\"}]', 'c37a1a3b0ed66e65bf1ecf377d0df512', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `enrol`
--
ALTER TABLE `enrol`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `frontend_settings`
--
ALTER TABLE `frontend_settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`phrase_id`);

--
-- Chỉ mục cho bảng `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Chỉ mục cho bảng `message_thread`
--
ALTER TABLE `message_thread`
  ADD PRIMARY KEY (`message_thread_id`);

--
-- Chỉ mục cho bảng `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT cho bảng `enrol`
--
ALTER TABLE `enrol`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `frontend_settings`
--
ALTER TABLE `frontend_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `language`
--
ALTER TABLE `language`
  MODIFY `phrase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=594;

--
-- AUTO_INCREMENT cho bảng `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `message_thread`
--
ALTER TABLE `message_thread`
  MODIFY `message_thread_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
