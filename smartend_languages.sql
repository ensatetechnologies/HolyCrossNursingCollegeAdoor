-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2025 at 01:42 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kalbbmuw_smartendcms`
--

-- --------------------------------------------------------

--
-- Table structure for table `smartend_languages`
--

CREATE TABLE `smartend_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `code` varchar(191) DEFAULT NULL,
  `direction` varchar(191) DEFAULT NULL,
  `left` varchar(191) DEFAULT NULL,
  `right` varchar(191) DEFAULT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `box_status` tinyint(4) DEFAULT 1,
  `status` tinyint(4) DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smartend_languages`
--

INSERT INTO `smartend_languages` (`id`, `title`, `code`, `direction`, `left`, `right`, `icon`, `box_status`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 'ltr', 'left', 'right', 'us', 1, 1, 1, 1, '2025-06-04 02:28:44', '2025-06-04 03:37:43'),
(2, 'العربية', 'ar', 'rtl', 'right', 'left', 'sa', 1, 0, 1, 1, '2025-06-04 02:28:44', '2025-06-04 03:37:55'),
(3, '中文語言', 'ch', 'ltr', 'left', 'right', 'cn', 1, 0, 1, 1, '2025-06-04 02:28:44', '2025-06-04 03:38:23'),
(4, 'हिंदी भाषा', 'hi', 'ltr', 'left', 'right', 'in', 1, 0, 1, 1, '2025-06-04 02:28:44', '2025-06-04 03:38:29'),
(5, 'हespañol', 'es', 'ltr', 'left', 'right', 'es', 1, 0, 1, 1, '2025-06-04 02:28:44', '2025-06-04 03:38:34'),
(6, 'русский', 'ru', 'ltr', 'left', 'right', 'ru', 1, 0, 1, 1, '2025-06-04 02:28:44', '2025-06-04 03:38:41'),
(7, 'Português', 'pt', 'ltr', 'left', 'right', 'pt', 1, 0, 1, 1, '2025-06-04 02:28:44', '2025-06-04 03:38:47'),
(8, 'Le français', 'fr', 'ltr', 'left', 'right', 'fr', 1, 0, 1, 1, '2025-06-04 02:28:44', '2025-06-04 03:38:53'),
(9, 'Deutsch', 'de', 'ltr', 'left', 'right', 'de', 1, 0, 1, 1, '2025-06-04 02:28:44', '2025-06-04 03:39:00'),
(10, 'ภาษาไทย', 'th', 'ltr', 'left', 'right', 'th', 1, 0, 1, 1, '2025-06-04 02:28:44', '2025-06-04 03:39:05'),
(11, 'Português', 'br', 'ltr', 'left', 'right', 'br', 1, 0, 1, 1, '2025-06-04 02:28:44', '2025-06-04 03:39:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `smartend_languages`
--
ALTER TABLE `smartend_languages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `smartend_languages`
--
ALTER TABLE `smartend_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
