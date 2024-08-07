-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 07, 2024 at 01:04 PM
-- Server version: 8.3.0
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
CREATE TABLE IF NOT EXISTS `devices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `member_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `name`, `member_id`) VALUES
(2, 'example1', '221'),
(3, 'Sudipta', '1'),
(5, 'Alice Browna', '3'),
(8, 'Alicess', '8'),
(9, 'vv', '1'),
(10, 'jj', '5'),
(13, 'a', '22'),
(14, 'b', '2'),
(15, 'gh', '6'),
(16, '8', '8k'),
(17, 'ff', '5'),
(18, 'oo', '10');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
CREATE TABLE IF NOT EXISTS `members` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `email`, `address`) VALUES
(1, 'abc', 'abc@gmail.com', 'abc'),
(2, 'xyz', 'xyz@gmail.com', 'xyz');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(10, 'App\\Models\\User', 1, 'my-app-token', 'f3982d530b6d28b7544ba9d45e32d1d21bec4e9c612a88eb9c76e8c8862ae404', '[\"*\"]', '2024-08-03 10:18:59', '2024-08-03 10:14:51', '2024-08-03 10:18:59'),
(11, 'App\\Models\\User', 1, 'my-app-token', 'f1d4cd5f91dcc2fc453968d6bb6982e0b402ad1f1ee4cbaf60ce4a9d204edda0', '[\"*\"]', NULL, '2024-08-03 10:15:36', '2024-08-03 10:15:36'),
(12, 'App\\Models\\User', 1, 'my-app-token', 'b162d9bbbfed2b1c57d9002455eb2bb2bf6b7d424d9be8f953ec35451feca843', '[\"*\"]', NULL, '2024-08-03 10:17:43', '2024-08-03 10:17:43'),
(13, 'App\\Models\\User', 1, 'my-app-token', 'e8c0a90095455d0b7f4ece86a027360dfb92795c042d3c1a2df10a5d9ae927ea', '[\"*\"]', '2024-08-07 07:33:37', '2024-08-03 10:18:59', '2024-08-07 07:33:37'),
(14, 'App\\Models\\User', 1, 'my-app-token', '3cc43896cdb8d66a3d36b1529d00a838068117329ef0dbd38fe4f97b22a06e4a', '[\"*\"]', NULL, '2024-08-03 10:19:15', '2024-08-03 10:19:15'),
(15, 'App\\Models\\User', 1, 'my-app-token', '3c7b26a33a9b24680d5094bb04d08aa8d7e9e2e168ed00ad03d070c84a44a751', '[\"*\"]', NULL, '2024-08-03 10:19:47', '2024-08-03 10:19:47'),
(16, 'App\\Models\\User', 1, 'my-app-token', 'd4ab0d8f618246cd89be56b24b6af7a4db8f8e92ba0d244eab79f77334531a88', '[\"*\"]', NULL, '2024-08-03 10:21:37', '2024-08-03 10:21:37'),
(17, 'App\\Models\\User', 1, 'my-app-token', 'e1e60dd6d2006a8e8e2dc06ebe760ec7bd068f17a9a3342355f5435c28372953', '[\"*\"]', NULL, '2024-08-03 10:23:04', '2024-08-03 10:23:04'),
(18, 'App\\Models\\User', 1, 'my-app-token', '0210b2447c20dd007a1418418de87eb019c9e27ca4fdd603a6e7796715f0190d', '[\"*\"]', NULL, '2024-08-03 11:03:57', '2024-08-03 11:03:57'),
(19, 'App\\Models\\User', 1, 'my-app-token', 'd67702d4d52cb46fca1645def079e3e48167058f6c37429f4cb26bed49002f42', '[\"*\"]', NULL, '2024-08-03 11:16:29', '2024-08-03 11:16:29'),
(20, 'App\\Models\\User', 1, 'my-app-token', '1e9d6d09a3a7f4139034db6dd0cc418e89e6d2522bbca6b99991c9c8a2f06fc2', '[\"*\"]', NULL, '2024-08-06 09:25:52', '2024-08-06 09:25:52'),
(21, 'App\\Models\\User', 1, 'my-app-token', '81caa5ebe4cba7bac9f3826675f89edcf060646f4461e9ce10a0fece94b5323d', '[\"*\"]', NULL, '2024-08-06 09:34:22', '2024-08-06 09:34:22'),
(22, 'App\\Models\\User', 1, 'my-app-token', '7dd3ace2905a75700eb1677f9dd306937cbbd93f8393b247378d55168d85114d', '[\"*\"]', NULL, '2024-08-06 09:34:33', '2024-08-06 09:34:33'),
(23, 'App\\Models\\User', 1, 'my-app-token', '130035d7e16502c48be8d2559501e98ee29ff1a32bd1f065a74548932a879f07', '[\"*\"]', NULL, '2024-08-06 09:55:52', '2024-08-06 09:55:52'),
(24, 'App\\Models\\User', 1, 'my-app-token', 'ba7d820130ce627e41500f21f5a86a8ff31f3f7e67afa7ea270b74c99335a1e0', '[\"*\"]', NULL, '2024-08-06 10:12:08', '2024-08-06 10:12:08'),
(25, 'App\\Models\\User', 1, 'my-app-token', '3adbbed1700b08a55df9d8edd012dc2708d598b3b64dd456b9a4a6ad81280a92', '[\"*\"]', NULL, '2024-08-06 10:28:17', '2024-08-06 10:28:17'),
(26, 'App\\Models\\User', 1, 'my-app-token', '3444d2203b1e0f437dd9880dc5f9678e19e11ba3e63551d827b932028d28cb9b', '[\"*\"]', NULL, '2024-08-06 10:39:24', '2024-08-06 10:39:24'),
(27, 'App\\Models\\User', 1, 'my-app-token', 'b2a63e6a50fca45471aedfe718deeb15f584c846aa55de77a7dac5ed4d649d03', '[\"*\"]', NULL, '2024-08-06 10:41:26', '2024-08-06 10:41:26'),
(28, 'App\\Models\\User', 1, 'my-app-token', '2b64b15ffb00fa245862234a9a83ab259821eb25e1ba53ea166631d95f286c77', '[\"*\"]', NULL, '2024-08-06 10:48:06', '2024-08-06 10:48:06'),
(29, 'App\\Models\\User', 1, 'my-app-token', 'ef4a9523702acf43bc26e80784b274df5d1e663ab2f8d18ecb5d4638c251d487', '[\"*\"]', NULL, '2024-08-06 11:38:25', '2024-08-06 11:38:25'),
(30, 'App\\Models\\User', 1, 'my-app-token', '3bf2c7a27957228adb4a584c168d9d008fdd9c8f55fa82ef1e6f69d8b6d3bd46', '[\"*\"]', NULL, '2024-08-06 21:36:40', '2024-08-06 21:36:40'),
(31, 'App\\Models\\User', 1, 'my-app-token', 'c5f4f239e24ed7a2f32b856c8b444bf4befe5cb10846179aaa1265b7a136c1fd', '[\"*\"]', NULL, '2024-08-06 21:45:05', '2024-08-06 21:45:05'),
(32, 'App\\Models\\User', 1, 'my-app-token', 'c5edf94536c40e9dd33c61eacb9f650c64d7829f0e11091b7a6cff6fd1ef15af', '[\"*\"]', NULL, '2024-08-06 21:45:40', '2024-08-06 21:45:40'),
(33, 'App\\Models\\User', 1, 'my-app-token', '52733866e8f0168dcc0b320544aa86eb429e4912bda0803cb0090e565b70db4e', '[\"*\"]', NULL, '2024-08-06 22:16:30', '2024-08-06 22:16:30'),
(34, 'App\\Models\\User', 1, 'my-app-token', '1d0fab3d5b080de5bd1e6cb8e4cfea3a77a6d3e9aabc180f45cd44392d35d627', '[\"*\"]', NULL, '2024-08-06 22:58:27', '2024-08-06 22:58:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sudipta Guru', 'sudipta@mail.com', NULL, '$2y$10$kH9rVqxif09OhDKsa.l1/ucp7hNc26ycLWU/sk2JVEEl8khOOmBbC', NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
