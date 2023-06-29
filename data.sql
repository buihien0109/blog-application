-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: db
-- Thời gian đã tạo: Th6 29, 2023 lúc 08:20 AM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `database-blog-16`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `id` int NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `description` text NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `status` bit(1) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `blog`
--

INSERT INTO `blog` (`id`, `content`, `created_at`, `description`, `published_at`, `slug`, `status`, `thumbnail`, `title`, `updated_at`, `user_id`) VALUES
(1, 'content 1', '2023-06-28 15:54:14', 'description 1', '2023-06-28 15:54:14', 'blog-1', b'1', NULL, 'Blog 1', '2023-06-28 15:54:14', 3),
(2, 'content 2', '2023-06-28 15:54:14', 'description 2', '2023-06-28 15:54:14', 'blog-2', b'1', NULL, 'Blog 2', '2023-06-28 15:54:14', 1),
(3, 'content 3', '2023-06-28 15:54:14', 'description 3', '2023-06-28 15:54:14', 'blog-3', b'1', NULL, 'Blog 3', '2023-06-28 15:54:14', 3),
(4, 'content 4', '2023-06-28 15:54:14', 'description 4', '2023-06-28 15:54:14', 'blog-4', b'1', NULL, 'Blog 4', '2023-06-28 15:54:14', 1),
(5, 'content 5', '2023-06-28 15:54:14', 'description 5', '2023-06-28 15:54:14', 'blog-5', b'1', NULL, 'Blog 5', '2023-06-28 15:54:14', 1),
(6, 'content 6', '2023-06-28 15:54:14', 'description 6', '2023-06-28 15:54:14', 'blog-6', b'1', NULL, 'Blog 6', '2023-06-28 15:54:14', 3),
(7, 'content 7', '2023-06-28 15:54:14', 'description 7', '2023-06-28 15:54:14', 'blog-7', b'1', NULL, 'Blog 7', '2023-06-28 15:54:14', 1),
(8, 'content 8', '2023-06-28 15:54:14', 'description 8', NULL, 'blog-8', b'0', NULL, 'Blog 8', '2023-06-28 15:54:14', 1),
(9, 'content 9', '2023-06-28 15:54:14', 'description 9', '2023-06-28 15:54:14', 'blog-9', b'1', NULL, 'Blog 9', '2023-06-28 15:54:14', 1),
(10, 'content 10', '2023-06-28 15:54:14', 'description 10', NULL, 'blog-10', b'0', NULL, 'Blog 10', '2023-06-28 15:54:14', 3),
(11, 'content 11', '2023-06-28 15:54:14', 'description 11', '2023-06-28 15:54:14', 'blog-11', b'1', NULL, 'Blog 11', '2023-06-28 15:54:14', 1),
(12, 'content 12', '2023-06-28 15:54:15', 'description 12', '2023-06-28 15:54:15', 'blog-12', b'1', NULL, 'Blog 12', '2023-06-28 15:54:15', 1),
(13, 'content 13', '2023-06-28 15:54:15', 'description 13', '2023-06-28 15:54:15', 'blog-13', b'1', NULL, 'Blog 13', '2023-06-28 15:54:15', 1),
(14, 'content 14', '2023-06-28 15:54:15', 'description 14', NULL, 'blog-14', b'0', NULL, 'Blog 14', '2023-06-28 15:54:15', 1),
(15, 'content 15', '2023-06-28 15:54:15', 'description 15', NULL, 'blog-15', b'0', NULL, 'Blog 15', '2023-06-28 15:54:15', 3),
(16, 'content 16', '2023-06-28 15:54:15', 'description 16', '2023-06-28 15:54:15', 'blog-16', b'1', NULL, 'Blog 16', '2023-06-28 15:54:15', 3),
(17, 'content 17', '2023-06-28 15:54:15', 'description 17', '2023-06-28 15:54:15', 'blog-17', b'1', NULL, 'Blog 17', '2023-06-28 15:54:15', 3),
(18, 'content 18', '2023-06-28 15:54:15', 'description 18', NULL, 'blog-18', b'0', NULL, 'Blog 18', '2023-06-28 15:54:15', 3),
(19, 'content 19', '2023-06-28 15:54:15', 'description 19', NULL, 'blog-19', b'0', NULL, 'Blog 19', '2023-06-28 15:54:15', 1),
(20, 'content 20', '2023-06-28 15:54:15', 'description 20', '2023-06-28 15:54:15', 'blog-20', b'1', NULL, 'Blog 20', '2023-06-28 15:54:15', 1),
(21, 'content 21', '2023-06-28 15:54:15', 'description 21', '2023-06-28 15:54:15', 'blog-21', b'1', NULL, 'Blog 21', '2023-06-28 15:54:15', 3),
(22, 'content 22', '2023-06-28 15:54:15', 'description 22', '2023-06-28 15:54:15', 'blog-22', b'1', NULL, 'Blog 22', '2023-06-28 15:54:15', 1),
(23, 'content 23', '2023-06-28 15:54:15', 'description 23', '2023-06-28 15:54:15', 'blog-23', b'1', NULL, 'Blog 23', '2023-06-28 15:54:15', 3),
(24, 'content 24', '2023-06-28 15:54:15', 'description 24', '2023-06-28 15:54:15', 'blog-24', b'1', NULL, 'Blog 24', '2023-06-28 15:54:15', 1),
(25, 'content 25', '2023-06-28 15:54:15', 'description 25', NULL, 'blog-25', b'0', NULL, 'Blog 25', '2023-06-28 15:54:15', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_category`
--

CREATE TABLE `blog_category` (
  `blog_id` int NOT NULL,
  `category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `blog_category`
--

INSERT INTO `blog_category` (`blog_id`, `category_id`) VALUES
(1, 4),
(1, 6),
(2, 3),
(2, 8),
(3, 3),
(3, 6),
(4, 7),
(4, 2),
(4, 6),
(5, 1),
(5, 2),
(5, 3),
(6, 8),
(6, 6),
(6, 4),
(7, 7),
(7, 5),
(7, 3),
(8, 5),
(8, 1),
(8, 7),
(9, 5),
(9, 6),
(9, 2),
(10, 8),
(10, 4),
(10, 6),
(11, 1),
(11, 6),
(11, 8),
(12, 2),
(12, 4),
(12, 5),
(13, 5),
(13, 1),
(13, 6),
(14, 4),
(14, 5),
(15, 5),
(15, 6),
(15, 1),
(16, 3),
(16, 4),
(17, 5),
(17, 3),
(18, 7),
(18, 8),
(18, 3),
(19, 4),
(19, 8),
(19, 6),
(20, 5),
(20, 7),
(20, 4),
(21, 1),
(21, 5),
(22, 5),
(23, 5),
(23, 1),
(23, 6),
(24, 1),
(24, 2),
(24, 8),
(25, 3),
(25, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Backend'),
(2, 'Frontend'),
(3, 'Devops'),
(4, 'Database'),
(5, 'Mobile'),
(6, 'Javascript'),
(7, 'Java'),
(8, 'Game');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `blog_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `content`, `created_at`, `updated_at`, `blog_id`, `user_id`) VALUES
(1, 'comment 1', '2023-06-28 15:54:19', '2023-06-28 15:54:19', 8, 3),
(2, 'comment 2', '2023-06-28 15:54:19', '2023-06-28 15:54:19', 9, 2),
(3, 'comment 3', '2023-06-28 15:54:20', '2023-06-28 15:54:20', 17, 3),
(4, 'comment 4', '2023-06-28 15:54:20', '2023-06-28 15:54:20', 12, 2),
(5, 'comment 5', '2023-06-28 15:54:20', '2023-06-28 15:54:20', 22, 3),
(6, 'comment 6', '2023-06-28 15:54:20', '2023-06-28 15:54:20', 8, 3),
(7, 'comment 7', '2023-06-28 15:54:20', '2023-06-28 15:54:20', 23, 3),
(8, 'comment 8', '2023-06-28 15:54:20', '2023-06-28 15:54:20', 24, 1),
(9, 'comment 9', '2023-06-28 15:54:20', '2023-06-28 15:54:20', 13, 1),
(10, 'comment 10', '2023-06-28 15:54:20', '2023-06-28 15:54:20', 24, 3),
(11, 'comment 11', '2023-06-28 15:54:20', '2023-06-28 15:54:20', 18, 2),
(12, 'comment 12', '2023-06-28 15:54:20', '2023-06-28 15:54:20', 25, 2),
(13, 'comment 13', '2023-06-28 15:54:20', '2023-06-28 15:54:20', 16, 2),
(14, 'comment 14', '2023-06-28 15:54:20', '2023-06-28 15:54:20', 10, 3),
(15, 'comment 15', '2023-06-28 15:54:20', '2023-06-28 15:54:20', 21, 2),
(16, 'comment 16', '2023-06-28 15:54:20', '2023-06-28 15:54:20', 1, 2),
(17, 'comment 17', '2023-06-28 15:54:20', '2023-06-28 15:54:20', 23, 3),
(18, 'comment 18', '2023-06-28 15:54:20', '2023-06-28 15:54:20', 16, 3),
(19, 'comment 19', '2023-06-28 15:54:20', '2023-06-28 15:54:20', 11, 3),
(20, 'comment 20', '2023-06-28 15:54:20', '2023-06-28 15:54:20', 11, 1),
(21, 'comment 21', '2023-06-28 15:54:21', '2023-06-28 15:54:21', 11, 2),
(22, 'comment 22', '2023-06-28 15:54:21', '2023-06-28 15:54:21', 6, 3),
(23, 'comment 23', '2023-06-28 15:54:21', '2023-06-28 15:54:21', 21, 2),
(24, 'comment 24', '2023-06-28 15:54:21', '2023-06-28 15:54:21', 22, 2),
(25, 'comment 25', '2023-06-28 15:54:21', '2023-06-28 15:54:21', 18, 1),
(26, 'comment 26', '2023-06-28 15:54:21', '2023-06-28 15:54:21', 7, 3),
(27, 'comment 27', '2023-06-28 15:54:21', '2023-06-28 15:54:21', 13, 2),
(28, 'comment 28', '2023-06-28 15:54:21', '2023-06-28 15:54:21', 12, 2),
(29, 'comment 29', '2023-06-28 15:54:21', '2023-06-28 15:54:21', 5, 1),
(30, 'comment 30', '2023-06-28 15:54:21', '2023-06-28 15:54:21', 19, 1),
(31, 'comment 31', '2023-06-28 15:54:21', '2023-06-28 15:54:21', 13, 2),
(32, 'comment 32', '2023-06-28 15:54:21', '2023-06-28 15:54:21', 6, 2),
(33, 'comment 33', '2023-06-28 15:54:21', '2023-06-28 15:54:21', 8, 1),
(34, 'comment 34', '2023-06-28 15:54:21', '2023-06-28 15:54:21', 11, 3),
(35, 'comment 35', '2023-06-28 15:54:21', '2023-06-28 15:54:21', 3, 3),
(36, 'comment 36', '2023-06-28 15:54:21', '2023-06-28 15:54:21', 5, 1),
(37, 'comment 37', '2023-06-28 15:54:21', '2023-06-28 15:54:21', 6, 3),
(38, 'comment 38', '2023-06-28 15:54:21', '2023-06-28 15:54:21', 10, 3),
(39, 'comment 39', '2023-06-28 15:54:21', '2023-06-28 15:54:21', 6, 2),
(40, 'comment 40', '2023-06-28 15:54:22', '2023-06-28 15:54:22', 18, 1),
(41, 'comment 41', '2023-06-28 15:54:22', '2023-06-28 15:54:22', 25, 1),
(42, 'comment 42', '2023-06-28 15:54:22', '2023-06-28 15:54:22', 6, 2),
(43, 'comment 43', '2023-06-28 15:54:22', '2023-06-28 15:54:22', 25, 2),
(44, 'comment 44', '2023-06-28 15:54:22', '2023-06-28 15:54:22', 22, 2),
(45, 'comment 45', '2023-06-28 15:54:22', '2023-06-28 15:54:22', 10, 1),
(46, 'comment 46', '2023-06-28 15:54:22', '2023-06-28 15:54:22', 24, 2),
(47, 'comment 47', '2023-06-28 15:54:22', '2023-06-28 15:54:22', 8, 3),
(48, 'comment 48', '2023-06-28 15:54:22', '2023-06-28 15:54:22', 6, 1),
(49, 'comment 49', '2023-06-28 15:54:22', '2023-06-28 15:54:22', 3, 1),
(50, 'comment 50', '2023-06-28 15:54:22', '2023-06-28 15:54:22', 19, 1),
(51, 'comment 51', '2023-06-28 15:54:22', '2023-06-28 15:54:22', 18, 2),
(52, 'comment 52', '2023-06-28 15:54:22', '2023-06-28 15:54:22', 1, 2),
(53, 'comment 53', '2023-06-28 15:54:22', '2023-06-28 15:54:22', 17, 3),
(54, 'comment 54', '2023-06-28 15:54:22', '2023-06-28 15:54:22', 21, 1),
(55, 'comment 55', '2023-06-28 15:54:22', '2023-06-28 15:54:22', 20, 1),
(56, 'comment 56', '2023-06-28 15:54:22', '2023-06-28 15:54:22', 4, 3),
(57, 'comment 57', '2023-06-28 15:54:22', '2023-06-28 15:54:22', 2, 1),
(58, 'comment 58', '2023-06-28 15:54:22', '2023-06-28 15:54:22', 13, 1),
(59, 'comment 59', '2023-06-28 15:54:23', '2023-06-28 15:54:23', 12, 1),
(60, 'comment 60', '2023-06-28 15:54:23', '2023-06-28 15:54:23', 7, 2),
(61, 'comment 61', '2023-06-28 15:54:23', '2023-06-28 15:54:23', 10, 2),
(62, 'comment 62', '2023-06-28 15:54:23', '2023-06-28 15:54:23', 17, 3),
(63, 'comment 63', '2023-06-28 15:54:23', '2023-06-28 15:54:23', 12, 2),
(64, 'comment 64', '2023-06-28 15:54:23', '2023-06-28 15:54:23', 5, 3),
(65, 'comment 65', '2023-06-28 15:54:23', '2023-06-28 15:54:23', 22, 1),
(66, 'comment 66', '2023-06-28 15:54:23', '2023-06-28 15:54:23', 18, 1),
(67, 'comment 67', '2023-06-28 15:54:23', '2023-06-28 15:54:23', 16, 1),
(68, 'comment 68', '2023-06-28 15:54:23', '2023-06-28 15:54:23', 16, 3),
(69, 'comment 69', '2023-06-28 15:54:23', '2023-06-28 15:54:23', 4, 1),
(70, 'comment 70', '2023-06-28 15:54:23', '2023-06-28 15:54:23', 21, 1),
(71, 'comment 71', '2023-06-28 15:54:23', '2023-06-28 15:54:23', 5, 2),
(72, 'comment 72', '2023-06-28 15:54:23', '2023-06-28 15:54:23', 2, 2),
(73, 'comment 73', '2023-06-28 15:54:23', '2023-06-28 15:54:23', 22, 1),
(74, 'comment 74', '2023-06-28 15:54:23', '2023-06-28 15:54:23', 4, 3),
(75, 'comment 75', '2023-06-28 15:54:23', '2023-06-28 15:54:23', 8, 2),
(76, 'comment 76', '2023-06-28 15:54:23', '2023-06-28 15:54:23', 7, 1),
(77, 'comment 77', '2023-06-28 15:54:23', '2023-06-28 15:54:23', 21, 3),
(78, 'comment 78', '2023-06-28 15:54:23', '2023-06-28 15:54:23', 12, 2),
(79, 'comment 79', '2023-06-28 15:54:24', '2023-06-28 15:54:24', 20, 2),
(80, 'comment 80', '2023-06-28 15:54:24', '2023-06-28 15:54:24', 11, 1),
(81, 'comment 81', '2023-06-28 15:54:24', '2023-06-28 15:54:24', 19, 2),
(82, 'comment 82', '2023-06-28 15:54:24', '2023-06-28 15:54:24', 11, 3),
(83, 'comment 83', '2023-06-28 15:54:24', '2023-06-28 15:54:24', 20, 3),
(84, 'comment 84', '2023-06-28 15:54:24', '2023-06-28 15:54:24', 19, 1),
(85, 'comment 85', '2023-06-28 15:54:24', '2023-06-28 15:54:24', 8, 3),
(86, 'comment 86', '2023-06-28 15:54:24', '2023-06-28 15:54:24', 17, 3),
(87, 'comment 87', '2023-06-28 15:54:24', '2023-06-28 15:54:24', 16, 2),
(88, 'comment 88', '2023-06-28 15:54:24', '2023-06-28 15:54:24', 8, 1),
(89, 'comment 89', '2023-06-28 15:54:24', '2023-06-28 15:54:24', 25, 1),
(90, 'comment 90', '2023-06-28 15:54:24', '2023-06-28 15:54:24', 5, 3),
(91, 'comment 91', '2023-06-28 15:54:24', '2023-06-28 15:54:24', 7, 3),
(92, 'comment 92', '2023-06-28 15:54:24', '2023-06-28 15:54:24', 9, 3),
(93, 'comment 93', '2023-06-28 15:54:24', '2023-06-28 15:54:24', 21, 1),
(94, 'comment 94', '2023-06-28 15:54:24', '2023-06-28 15:54:24', 25, 1),
(95, 'comment 95', '2023-06-28 15:54:24', '2023-06-28 15:54:24', 4, 1),
(96, 'comment 96', '2023-06-28 15:54:24', '2023-06-28 15:54:24', 23, 1),
(97, 'comment 97', '2023-06-28 15:54:25', '2023-06-28 15:54:25', 9, 3),
(98, 'comment 98', '2023-06-28 15:54:25', '2023-06-28 15:54:25', 12, 1),
(99, 'comment 99', '2023-06-28 15:54:25', '2023-06-28 15:54:25', 9, 3),
(100, 'comment 100', '2023-06-28 15:54:25', '2023-06-28 15:54:25', 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image`
--

CREATE TABLE `image` (
  `id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `data` longblob,
  `type` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'ADMIN'),
(2, 'USER'),
(3, 'AUTHOR');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `token_confirm`
--

CREATE TABLE `token_confirm` (
  `id` int NOT NULL,
  `confirmed_at` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `expired_at` datetime(6) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `token_confirm`
--

INSERT INTO `token_confirm` (`id`, `confirmed_at`, `created_at`, `expired_at`, `token`, `user_id`) VALUES
(1, NULL, '2023-06-29 14:49:39.879704', '2023-06-29 15:19:39.879720', '0e41b157-b438-4c91-8fbc-47cca53c9394', 3),
(2, '2023-06-29 14:59:47.480987', '2023-06-29 14:56:54.361610', '2023-06-29 15:26:54.361640', '3d98b4cc-0337-4b5b-9af5-0ac8d2140380', 3),
(3, '2023-06-29 15:02:51.306825', '2023-06-29 15:02:35.946398', '2023-06-29 15:32:35.946422', '8b2c4d95-7c0e-4702-bfa7-bbf2fec62714', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `avatar`, `email`, `name`, `password`) VALUES
(1, NULL, 'hien@gmail.com', 'Bùi Hiên', '$2a$10$zgbHXeP1Il2VMWrdtAllBeAztTmslv5u5XlFSeazMgyHirkuvJ3K2'),
(2, NULL, 'duy@gmail.com', 'Minh Duy', '$2a$10$lzX3uIFEpsgy4T9U4vod6eYdQAi4jsT6Qrtfi26.c4OYKUJlzF8DK'),
(3, NULL, 'hang@gmail.com', 'Thu Hằng', '$2a$10$a1LYWImk8830KdP8enSv5uPaPD8PFK4Igl2SeEJghT9NZHyCDnxmm'),
(4, NULL, 'root@gmail.com', 'Root Admin', '$2a$10$j4HkIXot2Uld6viKSy7hIe7pUzUv.ALwhNHdMaMX2vC1Hvhyx.70S');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_role`
--

CREATE TABLE `user_role` (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 3),
(3, 2),
(4, 1),
(4, 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKpxk2jtysqn41oop7lvxcp6dqq` (`user_id`);

--
-- Chỉ mục cho bảng `blog_category`
--
ALTER TABLE `blog_category`
  ADD KEY `FK8a7ce7r99t0y43e88h9p4bipr` (`category_id`),
  ADD KEY `FKd9e03c7wlyfdv7dd51bvnxc4x` (`blog_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKkap39f76wn135k7ru564fbjb7` (`blog_id`),
  ADD KEY `FK8kcum44fvpupyw6f5baccx25c` (`user_id`);

--
-- Chỉ mục cho bảng `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKlxnnh0ir05khn8iu9tgwh1yyk` (`user_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `token_confirm`
--
ALTER TABLE `token_confirm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKrcp3483g3l4a57l67mbs4jlvk` (`user_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`);

--
-- Chỉ mục cho bảng `user_role`
--
ALTER TABLE `user_role`
  ADD KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`),
  ADD KEY `FK859n2jvi8ivhui0rl0esws6o` (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT cho bảng `image`
--
ALTER TABLE `image`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `token_confirm`
--
ALTER TABLE `token_confirm`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `FKpxk2jtysqn41oop7lvxcp6dqq` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `blog_category`
--
ALTER TABLE `blog_category`
  ADD CONSTRAINT `FK8a7ce7r99t0y43e88h9p4bipr` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FKd9e03c7wlyfdv7dd51bvnxc4x` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`);

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK8kcum44fvpupyw6f5baccx25c` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKkap39f76wn135k7ru564fbjb7` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`);

--
-- Các ràng buộc cho bảng `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `FKlxnnh0ir05khn8iu9tgwh1yyk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `token_confirm`
--
ALTER TABLE `token_confirm`
  ADD CONSTRAINT `FKrcp3483g3l4a57l67mbs4jlvk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
