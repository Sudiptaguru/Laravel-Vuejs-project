-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 06, 2024 at 06:32 AM
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
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `name`, `member_id`, `image_path`) VALUES
(2, 'example', '221', NULL),
(3, 'Sudipta', '1', NULL),
(5, 'Alice Browna', '3', NULL),
(8, 'Alice', '3', NULL),
(9, 'vv', '1', NULL),
(10, 'jj', '5', NULL),
(13, 'a', '22', NULL),
(14, 'b', '2', NULL),
(15, 'gh', '6', NULL),
(16, '8', '8k', NULL),
(17, 'ff', '5', NULL),
(18, 'oo', '10', NULL),
(19, 'gg', '33', NULL);

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
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `title`, `image_path`, `created_at`, `updated_at`) VALUES
(4, 'gjhj12', '1725119527.png', '2024-08-31 10:22:07', '2024-09-01 11:35:15'),
(3, 'hhcc', '1725120362.png', '2024-08-31 10:21:41', '2024-08-31 10:36:02'),
(6, 'dfg', '1725125820.png', '2024-08-31 12:07:01', '2024-08-31 12:07:01'),
(7, 'hghh', '1725125843.png', '2024-08-31 12:07:23', '2024-08-31 12:07:23'),
(8, 'frhh', '1725125859.png', '2024-08-31 12:07:39', '2024-08-31 12:07:39'),
(9, 'fgfgfg', '1725125879.png', '2024-08-31 12:07:59', '2024-08-31 12:07:59'),
(10, 'fgtgh', '1725125893.png', '2024-08-31 12:08:13', '2024-08-31 12:08:13'),
(11, 'dvdfdf', '1725125919.png', '2024-08-31 12:08:39', '2024-08-31 12:08:39'),
(12, 'ghgh', '1725125941.png', '2024-08-31 12:09:01', '2024-08-31 12:09:01'),
(13, 'gjhj', '1725125956.png', '2024-08-31 12:09:16', '2024-08-31 12:09:16'),
(14, 'fgfg', '1725125970.png', '2024-08-31 12:09:30', '2024-08-31 12:09:30'),
(15, 'hth', '1725126085.png', '2024-08-31 12:11:25', '2024-08-31 12:11:25'),
(17, 'jjj', '1725210397.png', '2024-09-01 11:36:37', '2024-09-01 11:36:37');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_08_16_115220_create_posts_table', 2),
(6, '2024_08_31_145608_create_images_table', 3),
(7, '2019_05_03_000001_create_customer_columns', 4),
(8, '2019_05_03_000002_create_subscriptions_table', 5),
(9, '2019_05_03_000003_create_subscription_items_table', 5);

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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(10, 'App\\Models\\User', 1, 'my-app-token', 'f3982d530b6d28b7544ba9d45e32d1d21bec4e9c612a88eb9c76e8c8862ae404', '[\"*\"]', '2024-08-03 10:18:59', '2024-08-03 10:14:51', '2024-08-03 10:18:59'),
(11, 'App\\Models\\User', 1, 'my-app-token', 'f1d4cd5f91dcc2fc453968d6bb6982e0b402ad1f1ee4cbaf60ce4a9d204edda0', '[\"*\"]', NULL, '2024-08-03 10:15:36', '2024-08-03 10:15:36'),
(12, 'App\\Models\\User', 1, 'my-app-token', 'b162d9bbbfed2b1c57d9002455eb2bb2bf6b7d424d9be8f953ec35451feca843', '[\"*\"]', NULL, '2024-08-03 10:17:43', '2024-08-03 10:17:43'),
(13, 'App\\Models\\User', 1, 'my-app-token', 'e8c0a90095455d0b7f4ece86a027360dfb92795c042d3c1a2df10a5d9ae927ea', '[\"*\"]', '2024-09-06 01:01:03', '2024-08-03 10:18:59', '2024-09-06 01:01:03'),
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
(34, 'App\\Models\\User', 1, 'my-app-token', '1d0fab3d5b080de5bd1e6cb8e4cfea3a77a6d3e9aabc180f45cd44392d35d627', '[\"*\"]', NULL, '2024-08-06 22:58:27', '2024-08-06 22:58:27'),
(35, 'App\\Models\\User', 1, 'my-app-token', 'a0a7bc6df5baa36f85cda7f5eb419c191fe02e4bc1d4e70b4adb3a475381b1a7', '[\"*\"]', NULL, '2024-08-08 06:39:52', '2024-08-08 06:39:52'),
(36, 'App\\Models\\User', 1, 'my-app-token', '0515d3b079592a76b062458027cd9665551982e65b9acfb29e5472ffb1b1d299', '[\"*\"]', NULL, '2024-08-29 08:46:20', '2024-08-29 08:46:20'),
(37, 'App\\Models\\User', 1, 'my-app-token', '372c4cc6b3ab8c787f5ece6f9e27adb9a26a2dc3f39587c8e90168d1c32b9265', '[\"*\"]', NULL, '2024-08-31 00:57:34', '2024-08-31 00:57:34'),
(38, 'App\\Models\\User', 1, 'my-app-token', 'e835c8b99392b39dc1702c1cbd3d7b2285ded038050eeeb0f2a27afdfcbc6bbc', '[\"*\"]', NULL, '2024-08-31 01:01:37', '2024-08-31 01:01:37'),
(39, 'App\\Models\\User', 1, 'my-app-token', 'b713d2f26064228e107879a341f57ba895d4a909265ef1c5c115b9c8c31e6fce', '[\"*\"]', NULL, '2024-08-31 01:06:21', '2024-08-31 01:06:21'),
(40, 'App\\Models\\User', 1, 'my-app-token', '061f485cb97e3bc0f58110c3f2d6a7ac1f7079647a99249cf98be9f12754c03d', '[\"*\"]', NULL, '2024-08-31 01:07:20', '2024-08-31 01:07:20'),
(41, 'App\\Models\\User', 1, 'my-app-token', 'd2cd5ba8ed44719fcfd7516c29a9e7ecf2191b47ff6a9e16b596aed96623d7e0', '[\"*\"]', NULL, '2024-08-31 01:10:38', '2024-08-31 01:10:38'),
(42, 'App\\Models\\User', 1, 'my-app-token', '978693dec0644b8fdd49455a3b397a776729127cd5cace0e38e3d797750aff2e', '[\"*\"]', NULL, '2024-08-31 01:11:46', '2024-08-31 01:11:46'),
(43, 'App\\Models\\User', 1, 'my-app-token', '0aea19da091a4097b8d38ef968f8adbdf5084a796627da13558d8d05e20494b4', '[\"*\"]', NULL, '2024-08-31 01:48:17', '2024-08-31 01:48:17'),
(44, 'App\\Models\\User', 1, 'my-app-token', 'f96c28a6402e34fb139924779ec5507a78b5778113345db94478e91813ac2535', '[\"*\"]', NULL, '2024-08-31 01:51:43', '2024-08-31 01:51:43'),
(45, 'App\\Models\\User', 1, 'my-app-token', '916b7e55dafd25653f5606ef6e33a2c569d031bb6eb3153d189c2a8e2e32dc4c', '[\"*\"]', NULL, '2024-08-31 01:52:30', '2024-08-31 01:52:30'),
(46, 'App\\Models\\User', 1, 'my-app-token', '9f05f38398e7aba7aa5dd80d140e167cfed81a57977a5063635c45e0b789fcb7', '[\"*\"]', NULL, '2024-08-31 02:00:39', '2024-08-31 02:00:39'),
(47, 'App\\Models\\User', 1, 'my-app-token', '6704d43debcd09415935d722ad06485fd3e03b295de90638daf7315639998e25', '[\"*\"]', NULL, '2024-09-01 05:42:45', '2024-09-01 05:42:45'),
(48, 'App\\Models\\User', 1, 'my-app-token', '9f282d396d86b5927ed5f9fb29e4d16b241a104de20722bdea93bea683058802', '[\"*\"]', NULL, '2024-09-01 05:44:24', '2024-09-01 05:44:24'),
(49, 'App\\Models\\User', 1, 'my-app-token', '7728c12719ba4a61b2a657608f09eb3be07f495c1ef72c1137f53007c28b327a', '[\"*\"]', NULL, '2024-09-01 06:02:53', '2024-09-01 06:02:53'),
(50, 'App\\Models\\User', 1, 'my-app-token', '9b64644b883b865582d10124ee8d900e109e9500e6cf8bf0c79542dec273ac0b', '[\"*\"]', NULL, '2024-09-01 06:05:04', '2024-09-01 06:05:04'),
(51, 'App\\Models\\User', 1, 'my-app-token', '3c66291b3b5c307b5f2dd6f810023b72415fa78fca0dad82777068983a246b32', '[\"*\"]', NULL, '2024-09-01 11:16:33', '2024-09-01 11:16:33'),
(52, 'App\\Models\\User', 1, 'my-app-token', '97c3b16872bf52b2c531a5fdb4260db9f551dcc98beed8387dc1741195683e1b', '[\"*\"]', NULL, '2024-09-01 11:28:19', '2024-09-01 11:28:19'),
(53, 'App\\Models\\User', 1, 'my-app-token', 'e97758eff5963c5c0d34c2f4d11ad6511048044bfef26e2b1a7593f807ecb705', '[\"*\"]', NULL, '2024-09-01 11:29:10', '2024-09-01 11:29:10'),
(54, 'App\\Models\\User', 1, 'my-app-token', '44f9c4f22775216464d28dc4b08f1e72ac9b82ba4781d1c50d5293f4de2b9e2b', '[\"*\"]', NULL, '2024-09-01 11:35:04', '2024-09-01 11:35:04'),
(55, 'App\\Models\\User', 1, 'my-app-token', '31e2d7d105a10cec9352f6d12fe884ad7612b80c65d942e45ab28a0e88f88c5a', '[\"*\"]', NULL, '2024-09-02 00:41:49', '2024-09-02 00:41:49'),
(56, 'App\\Models\\User', 1, 'my-app-token', '6fa5d6f95fc2f0831d9db7308078707952dee4ebe15a965cde700c664b6852e5', '[\"*\"]', NULL, '2024-09-06 01:01:04', '2024-09-06 01:01:04');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
CREATE TABLE IF NOT EXISTS `subscriptions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subscriptions_stripe_id_unique` (`stripe_id`),
  KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

DROP TABLE IF EXISTS `subscription_items`;
CREATE TABLE IF NOT EXISTS `subscription_items` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `subscription_id` bigint UNSIGNED NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_product` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subscription_items_subscription_id_stripe_price_unique` (`subscription_id`,`stripe_price`),
  UNIQUE KEY `subscription_items_stripe_id_unique` (`stripe_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pm_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pm_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_stripe_id_index` (`stripe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `stripe_id`, `pm_type`, `pm_last_four`, `trial_ends_at`) VALUES
(1, 'Sudipta Guru', 'sudipta@mail.com', NULL, '$2y$10$kH9rVqxif09OhDKsa.l1/ucp7hNc26ycLWU/sk2JVEEl8khOOmBbC', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
