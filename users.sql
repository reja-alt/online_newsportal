-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2020 at 07:49 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsportalapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bangla_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `english_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_id` int(10) UNSIGNED DEFAULT NULL,
  `status` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `bangla_name`, `english_name`, `email`, `email_verified_at`, `password`, `image`, `cat_id`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$CdtMQrPIAZQ9jUB68bilZOI13l68nMo067xXAdNenDtCLw0AlJUBu', 'fggerg', 3, 2, NULL, NULL, NULL),
(4, 'সানাউল্লাহ সাকিব', 'Sanaullah Shakib', 'SanaullahShakib@gmail.com', NULL, '$2y$10$QtP/rWsnaejvhClpE4tMKe2ZK8AhxRTp0a1QMexBe0HplR.XNSaeW', 'সানাউল্লাহ সাকিব-2020-11-15-5fb0c25dbde62.jpg', 3, 1, NULL, '2020-11-14 23:53:34', '2020-11-14 23:53:34'),
(5, 'ক্লাউডিয়া স্পোরানজেত্তি', 'Claudia Sporanzetti', 'Claudia_Sporanzetti@gmail.com', NULL, '$2y$10$yRTYl1/JFnxzSxbMEyoCTuD6aYDyJdLv24ZHy25/.LqCWc5ItNeum', 'ক্লাউডিয়া স্পোরানজেত্তি-2020-11-15-5fb0c27c0c95b.jpg', 5, 1, NULL, '2020-11-14 23:54:04', '2020-11-14 23:54:04'),
(6, 'মারুফ মল্লিক', 'Maruf Mallick', 'MarufMallick@gmail.com', NULL, '$2y$10$lmENng72/sKHJcLkYc35nOuROj4g9EauZ2Fz1OsZ7pAPed16osXJi', 'মারুফ মল্লিক-2020-11-15-5fb0c294b79d8.jpg', 6, 1, NULL, '2020-11-14 23:54:28', '2020-11-14 23:54:28'),
(7, 'ইব্রাহীম চৌধুরী', 'Ibrahim Chowdhury', 'IbrahimChowdhury@gmail.com', NULL, '$2y$10$fWsqxMG7ugP4NV3cnhrmleqNnoI06qCy2qFNfbrzjkb.0JU6W5sXe', 'ইব্রাহীম চৌধুরী-2020-11-15-5fb0c725891c0.jpg', 4, 1, NULL, '2020-11-15 00:13:57', '2020-11-15 00:13:57'),
(10, 'রাফিয়া আলম', 'Rafia Alam', 'RafiaAlam@gmail.com', NULL, '$2y$10$mJJdUERcx0JI2MDXeyS/m..HC6mPecrZMivAH7ax2wpCZCS2ymk16', 'রাফিয়া আলম-2020-11-15-5fb0ce465e83b.jpg', 8, 1, NULL, '2020-11-15 00:44:22', '2020-11-15 00:44:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_cat_id_foreign` (`cat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
