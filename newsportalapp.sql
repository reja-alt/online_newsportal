-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2020 at 07:51 AM
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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_on_header` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name_bn`, `name_en`, `slug_bn`, `slug_en`, `show_on_header`, `created_at`, `updated_at`) VALUES
(3, 'জীবনযাপন', 'Living', 'jeebnzapn', 'living', 1, '2020-11-14 05:08:22', '2020-11-14 06:08:19'),
(4, 'বিশ্ব', 'The world', 'bisw', 'the-world', 1, '2020-11-14 05:22:23', '2020-11-14 06:08:59'),
(5, 'মতামত', 'Opinions', 'mtamt', 'opinions', 1, '2020-11-14 06:09:40', '2020-11-14 06:09:40'),
(6, 'বিনোদন', 'Entertainment', 'binodn', 'entertainment', 1, '2020-11-14 06:10:12', '2020-11-14 06:10:12'),
(7, 'শিক্ষা', 'Education', 'siksha', 'education', 1, '2020-11-14 22:09:24', '2020-11-14 22:09:24'),
(8, 'ফিচার', 'Feature', 'ficar', 'feature', 1, '2020-11-14 23:26:31', '2020-11-14 23:26:31'),
(9, 'খেলা', 'Game', 'khela', 'game', 1, '2020-11-14 23:29:43', '2020-11-14 23:29:43'),
(10, 'বাণিজ্য', 'Trade', 'banijz', 'trade', 1, '2020-11-14 23:32:32', '2020-11-14 23:32:32'),
(11, 'বাংলাদেশ', 'Bangladesh', 'banglades', 'bangladesh', 1, '2020-11-14 23:33:15', '2020-11-14 23:33:15'),
(12, 'ধর্ম', 'Religion', 'dhrm', 'religion', 1, '2020-11-14 23:33:46', '2020-11-14 23:33:46'),
(13, 'ছবি', 'Pictures', 'chbi', 'pictures', 1, '2020-11-14 23:36:58', '2020-11-14 23:36:58');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `div_id` int(10) UNSIGNED NOT NULL,
  `name_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `div_id`, `name_bn`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 1, 'ভোলা জেলা', 'Bhola District', '2020-11-14 06:17:46', '2020-11-14 06:17:46'),
(2, 1, 'ঝালকাঠি জেলা', 'Jhalokati District', '2020-11-14 06:18:33', '2020-11-14 06:18:33'),
(3, 1, 'পটুয়াখালী জেলা', 'Patuakhali District', '2020-11-14 06:18:59', '2020-11-14 06:18:59'),
(4, 2, 'ব্রাহ্মণবাড়িয়া জেলা', 'Brahmanbaria District', '2020-11-14 06:20:08', '2020-11-14 06:20:08'),
(5, 2, 'কুমিল্লা জেলা', 'Comilla District', '2020-11-14 06:20:57', '2020-11-14 06:20:57'),
(6, 2, 'বান্দরবান জেলা', 'Bandarban District', '2020-11-14 06:21:32', '2020-11-14 06:21:32'),
(7, 3, 'গাজীপুর জেলা', 'Gazipur District', '2020-11-14 06:22:05', '2020-11-14 06:22:05'),
(8, 3, 'কিশোরগঞ্জ জেলা', 'Kishoreganj District', '2020-11-14 06:22:32', '2020-11-14 06:22:32'),
(9, 3, 'মানিকগঞ্জ জেলা', 'Manikganj District', '2020-11-14 06:22:56', '2020-11-14 06:22:56'),
(10, 4, 'বাগেরহাট জেলা', 'Bagerhat District', '2020-11-14 06:23:26', '2020-11-14 06:23:26'),
(11, 4, 'চুয়াডাঙ্গা জেলা', 'Chuadanga District', '2020-11-14 06:23:48', '2020-11-14 06:23:48'),
(12, 4, 'যশোর জেলা', 'Jessore District', '2020-11-14 06:24:12', '2020-11-14 06:24:12'),
(13, 5, 'ময়মনসিংহ জেলা', 'Mymensingh District', '2020-11-14 06:24:47', '2020-11-14 06:24:47'),
(14, 5, 'নেত্রকোনা জেলা', 'Netrokona District', '2020-11-14 06:25:12', '2020-11-14 06:25:12'),
(15, 5, 'শেরপুর জেলা', 'Sherpur District', '2020-11-14 06:25:38', '2020-11-14 06:25:38'),
(16, 8, 'হবিগঞ্জ জেলা', 'Habiganj District', '2020-11-14 22:28:42', '2020-11-14 22:28:42'),
(17, 8, 'মৌলভীবাজার জেলা', 'Moulvibazar District', '2020-11-14 22:29:12', '2020-11-14 22:29:12'),
(18, 8, 'সুনামগঞ্জ জেলা', 'Sunamganj District', '2020-11-14 22:29:41', '2020-11-14 22:29:41'),
(19, 7, 'রংপুর জেলা', 'Rangpur District', '2020-11-14 22:38:37', '2020-11-14 22:38:37'),
(20, 7, 'দিনাজপুর জেলা', 'Dinajpur District', '2020-11-14 22:39:07', '2020-11-14 22:39:07'),
(21, 7, 'কুড়িগ্রাম জেলা', 'Kurigram District', '2020-11-14 22:39:37', '2020-11-14 22:39:37'),
(22, 7, 'নীলফামারী জেলা', 'Nilphamari District', '2020-11-14 22:40:00', '2020-11-14 22:40:00'),
(23, 7, 'গাইবান্ধা জেলা', 'Gaibandha District', '2020-11-14 22:40:24', '2020-11-14 22:40:24'),
(24, 7, 'ঠাকুরগাঁও জেলা', 'Thakurgaon District', '2020-11-14 22:40:51', '2020-11-14 22:40:51'),
(25, 7, 'পঞ্চগড় জেলা', 'Panchagarh District', '2020-11-14 22:41:13', '2020-11-14 22:41:13'),
(26, 7, 'লালমনিরহাট জেলা', 'Lalmonirhat District', '2020-11-14 22:41:39', '2020-11-14 22:41:39'),
(27, 1, 'বরিশাল জেলা', 'Barisal District', '2020-11-14 22:47:07', '2020-11-14 22:47:07'),
(28, 1, 'বরগুনা জেলা', 'Barguna District', '2020-11-14 22:47:46', '2020-11-14 22:47:46'),
(29, 1, 'পিরোজপুর জেলা', 'Pirojpur District', '2020-11-14 22:48:12', '2020-11-14 22:48:12'),
(30, 2, 'চাঁদপুর জেলা', 'Chandpur District', '2020-11-14 22:55:04', '2020-11-14 22:55:04'),
(31, 2, 'লক্ষ্মীপুর জেলা', 'Lakshmipur District', '2020-11-14 22:55:41', '2020-11-14 22:55:41'),
(32, 2, 'নোয়াখালী জেলা', 'Noakhali District', '2020-11-14 22:56:13', '2020-11-14 22:56:13'),
(33, 2, 'ফেনী জেলা', 'Feni District', '2020-11-14 22:56:38', '2020-11-14 22:56:38'),
(34, 2, 'খাগড়াছড়ি জেলা', 'Khagrachhari District', '2020-11-14 22:57:11', '2020-11-14 22:57:11'),
(35, 2, 'রাঙ্গামাটি পার্বত্য জেলা', 'Rangamati Hill District', '2020-11-14 22:57:40', '2020-11-14 22:57:40'),
(36, 2, 'চট্টগ্রাম জেলা', 'Chittagong District', '2020-11-14 22:58:48', '2020-11-14 22:58:48'),
(37, 2, 'কক্সবাজার জেলা', 'Cox\'s Bazar District', '2020-11-14 22:59:12', '2020-11-14 22:59:12'),
(38, 3, 'ঢাকা জেলা', 'Dhaka District', '2020-11-14 23:00:22', '2020-11-14 23:00:22'),
(39, 3, 'মুন্সীগঞ্জ জেলা', 'Munshiganj District', '2020-11-14 23:10:13', '2020-11-14 23:10:13'),
(40, 3, 'নারায়ণগঞ্জ জেলা', 'Narayanganj District', '2020-11-14 23:10:39', '2020-11-14 23:10:39'),
(41, 3, 'নরসিংদী জেলা', 'Narsingdi District', '2020-11-14 23:11:01', '2020-11-14 23:11:01'),
(42, 3, 'টাঙ্গাইল জেলা', 'Tangail District', '2020-11-14 23:11:23', '2020-11-14 23:11:23'),
(43, 3, 'ফরিদপুর জেলা', 'Faridpur District', '2020-11-14 23:11:44', '2020-11-14 23:11:44'),
(44, 3, 'গোপালগঞ্জ জেলা', 'Gopalganj District', '2020-11-14 23:12:05', '2020-11-14 23:12:05'),
(45, 3, 'মাদারীপুর জেলা', 'Madaripur District', '2020-11-14 23:12:31', '2020-11-14 23:12:31'),
(46, 3, 'রাজবাড়ী জেলা', 'Rajbari District', '2020-11-14 23:12:53', '2020-11-14 23:12:53'),
(47, 3, 'শরীয়তপুর জেলা', 'Shariatpur District', '2020-11-14 23:13:32', '2020-11-14 23:13:32'),
(48, 4, 'ঝিনাইদহ জেলা', 'Jhenaidah District', '2020-11-14 23:23:42', '2020-11-14 23:23:42'),
(49, 4, 'খুলনা জেলা', 'Khulna District', '2020-11-14 23:24:04', '2020-11-14 23:24:04'),
(50, 4, 'কুষ্টিয়া জেলা', 'Kushtia District', '2020-11-14 23:24:29', '2020-11-14 23:24:29'),
(51, 5, 'ময়মনসিংহ জেলা', 'Mymensingh District', '2020-11-14 23:47:41', '2020-11-14 23:47:41'),
(52, 5, 'নেত্রকোনা জেলা', 'Netrokona District', '2020-11-14 23:48:09', '2020-11-14 23:48:09'),
(53, 5, 'জামালপুর জেলা', 'Jamalpur District', '2020-11-14 23:48:34', '2020-11-14 23:48:34'),
(54, 5, 'শেরপুর জেলা', 'Sherpur District', '2020-11-14 23:48:55', '2020-11-14 23:48:55'),
(55, 6, 'বোগুরা', 'Bogura', '2020-11-14 23:50:04', '2020-11-14 23:50:04'),
(56, 6, 'চাঁপাইনবাবগঞ্জ', 'Chapainawabganj', '2020-11-14 23:50:31', '2020-11-14 23:50:31'),
(57, 6, 'নওগাঁ', 'Naogaon', '2020-11-14 23:50:55', '2020-11-14 23:50:55');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name_bn`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'বরিশাল বিভাগ', 'Barisal Division', '2020-11-14 06:14:36', '2020-11-14 06:14:36'),
(2, 'চট্টগ্রাম বিভাগ', 'Chittagong Division', '2020-11-14 06:15:00', '2020-11-14 06:15:00'),
(3, '.াকা বিভাগ', 'Dhaka Division', '2020-11-14 06:15:26', '2020-11-14 06:15:26'),
(4, 'খুলনা বিভাগ', 'Khulna Division', '2020-11-14 06:15:52', '2020-11-14 06:15:52'),
(5, 'ময়মনসিংহ বিভাগ', 'Mymensingh Division', '2020-11-14 06:16:16', '2020-11-14 06:16:16'),
(6, 'রাজশাহী বিভাগ', 'Rajshahi Division', '2020-11-14 06:16:37', '2020-11-14 06:16:37'),
(7, 'রংপুর বিভাগ', 'Rangpur Division', '2020-11-14 06:17:03', '2020-11-14 06:17:03'),
(8, 'সিলেট বিভাগ', 'Sylhet Division', '2020-11-14 22:28:03', '2020-11-14 22:28:03');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2019_08_19_000000_create_failed_jobs_table', 1),
(16, '2020_10_21_050949_create_categories_table', 1),
(17, '2020_10_24_091709_create_subcategories_table', 1),
(18, '2020_10_26_061643_create_users_table', 1),
(19, '2020_10_26_070234_create_divisions_table', 1),
(20, '2020_10_26_093534_create_districts_table', 1),
(21, '2020_10_26_110555_create_subdistricts_table', 1),
(22, '2020_10_28_061319_create_posts_table', 1),
(23, '2020_11_01_045140_create_settings_table', 1),
(24, '2020_11_01_064535_create_sociallinks_table', 1),
(25, '2020_11_01_092240_create_seos_table', 1),
(26, '2020_11_04_063502_create_social_pages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_id` int(10) UNSIGNED NOT NULL,
  `sub_cat_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `division_id` int(10) UNSIGNED NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `subdistrict_id` int(10) UNSIGNED NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_bn` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_date` date NOT NULL,
  `tags_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `headline_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `headline_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `big_thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `thumbnail_select` int(11) NOT NULL,
  `headline` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `cat_id`, `sub_cat_id`, `user_id`, `division_id`, `district_id`, `subdistrict_id`, `title_en`, `title_bn`, `image`, `details_en`, `details_bn`, `published_date`, `tags_en`, `tags_bn`, `slug_title`, `headline_en`, `headline_bn`, `big_thumbnail`, `status`, `thumbnail_select`, `headline`, `created_at`, `updated_at`) VALUES
(1, 10, 44, 3, 3, 7, 25, 'ব্যাংকে হিসাব খোলা এখন আরও সহজ', 'ব্যাংকে ইতিহাস খালা আরও সহজ', 'ব্যাংকে হিসাব খোলা এখন আরও সহজ-2020-11-15-5fb0c481b9ee9.PNG', '<ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: var(--space2_5); padding: 0px; font-family: Shurjo, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; list-style: initial; color: rgb(112, 112, 112); font-size: 10px;\"><li style=\"font-size: var(--base); line-height: 1.6;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: var(--space1_5); padding-left: 0px; font-family: var(--font-2); font-size: var(--base-large); line-height: 1.4;\">ব্যাংক হিসাব খুলতে নতুন গ্রাহককে পরিচয় করিয়ে দেওয়ার (ইন্ট্রোডিউসার) বাধ্যবাধকতা তুলে দেওয়া হয়েছে।</p></li><li style=\"font-size: var(--base); line-height: 1.6;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: var(--space1_5); padding-left: 0px; font-family: var(--font-2); font-size: var(--base-large); line-height: 1.4;\">করোনাভাইরাসের সংক্রমণের মধ্যে নতুন গ্রাহককে পরিচয় করে দেওয়ার এই নীতি থেকে সরে এসেছে ব্যাংকগুলো। এ কারণে পরিচয়দানকারী ছাড়াই ঘরে বসে নতুন হিসাব খোলা যাচ্ছে।</p></li><li style=\"font-size: var(--base); line-height: 1.6;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: var(--space1_5); padding-left: 0px; font-family: var(--font-2); font-size: var(--base-large); line-height: 1.4;\">নতুন ব্যাংক হিসাব খোলার ক্ষেত্রে গ্রাহকদের যে ভোগান্তিতে পড়তে হতো, তা কেটে গেছে। ফলে ব্যাংক হিসাব খোলা অনেক বেড়ে গেছে।</p></li></ul>', '<pre class=\"tw-data-text tw-text-large XcVN5d tw-ta\" data-placeholder=\"Translation\" id=\"tw-target-text\" dir=\"ltr\" style=\"unicode-bidi: isolate; font-size: 28px; line-height: 36px; background-color: rgb(248, 249, 250); border: none; padding: 2px 0.14em 2px 0px; position: relative; margin-top: -2px; margin-bottom: -2px; resize: none; overflow: hidden; width: 277px; white-space: pre-wrap; overflow-wrap: break-word; color: rgb(32, 33, 36); font-family: &quot;Google Sans&quot;, arial, sans-serif !important;\"><span lang=\"en\">The obligation to introduce a new customer to open a bank account has been removed.\r\n\r\nBanks have moved away from the policy of introducing new customers to coronavirus infections. For this reason, new accounts are being opened at home without an identifier.\r\n\r\nThe suffering that customers have to go through to open a new bank account is gone. As a result, opening bank accounts has increased a lot.</span></pre>', '2020-11-15', 'Banking Banking system', 'ব্যাংকব্যাংক ব্যবস্থা', 'ব্যাংকে হিসাব খোলা এখন আরও সহজ', 'ব্যাংকের শাখায় না গিয়ে গ্রাহক সেবা দিতে ইসলামী ব্যাংক চালু করেছে \'সেলফিন\' নামে ডিজিটাল হিসাব খোলার সুবিধা।', 'Islami Bank has introduced the facility of opening a digital account called \'Selfin\' to provide customer service without going to the bank\'s branch.', 'ব্যাংকে হিসাব খোলা এখন আরও সহজ-2020-11-15-5fb0c481b9ee9.PNG', 1, 1, 1, '2020-11-15 00:02:41', '2020-11-15 00:02:41'),
(2, 5, 17, 4, 3, 38, 24, 'রাজনৈতিক সরকার দেশ চালাচ্ছে না', 'Political government is not running the country', 'রাজনৈতিক সরকার দেশ চালাচ্ছে না-2020-11-15-5fb0c5a62ab05.PNG', '<p><span style=\"color: rgb(112, 112, 112); font-family: Shurjo, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 20px;\">বিএনপির মহাসচিব। তিনি কথা বলেছেন বিএনপির অভ্যন্তরীণ রাজনীতি, বিরোধী দলের বৃহত্তর জোট ও সরকার নিয়ে। আলোচনায় এসেছে বিএনপির ভবিষ্যৎ কর্মসূচি ও মধ্যবর্তী নির্বাচনের দাবির কথাও। সাক্ষাৎকার নিয়েছেন&nbsp;</span><span style=\"font-weight: bolder; color: rgb(112, 112, 112); font-family: Shurjo, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 20px;\">সোহরাব হাসান</span><span style=\"color: rgb(112, 112, 112); font-family: Shurjo, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 20px;\">।</span><br></p>', '<p><br></p><p><span style=\"color: rgb(32, 33, 36); font-family: &quot;Google Sans&quot;, arial, sans-serif; font-size: 28px; white-space: pre-wrap; background-color: rgb(248, 249, 250);\">Secretary General of the BNP. He spoke about the BNP\'s internal politics, the larger coalition of the opposition and the government. The future program of the BNP and the demand for mid-term elections were also discussed. Interviewed by Sohrab Hasan.</span><br></p>', '2020-11-15', 'Interview Special News Mirza Fakhrul Islam Alamgir BNP Politics', 'সাক্ষাৎকারবিশেষ সংবাদমির্জা ফখরুল ইসলাম আলমগীরবিএনপিরাজনীতি', 'রাজনৈতিক সরকার দেশ চালাচ্ছে না', 'বিশেষ সাক্ষাৎকার : মির্জা ফখরুল ইসলাম আলমগীর', 'Special interview: Mirza Fakhrul Islam Alamgir', 'রাজনৈতিক সরকার দেশ চালাচ্ছে না-2020-11-15-5fb0c5a62ab05.PNG', 1, 1, 1, '2020-11-15 00:07:34', '2020-11-15 00:07:34'),
(3, 4, 14, 4, 3, 9, 27, 'ডাকা কর্মসূচি বন্ধে ট্রাম্প প্রশাসনের আদেশ অবৈধ', 'The Trump administration\'s order to stop the call is illegal', 'ডাকা কর্মসূচি বন্ধে ট্রাম্প প্রশাসনের আদেশ অবৈধ-2020-11-15-5fb0c7cd70639.PNG', '<p style=\"margin-right: 0px; margin-bottom: var(--space2); margin-left: 0px; padding: 0px; font-family: Shurjo, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 1.8rem; line-height: 1.67; white-space: break-spaces; color: rgb(18, 18, 18);\">যুক্তরাষ্ট্রে অভিবাসন নিয়ে ডোনাল্ড ট্রাম্প প্রশাসনের আদেশের বিপক্ষে রায় দিয়েছেন আদালত। এ রায়ের ফলে যুক্তরাষ্ট্রে অপ্রাপ্ত বয়সে প্রবেশ করা ১০ লাখের বেশি অভিবাসী এখন আশার আলো দেখতে পারবেন। </p><p style=\"margin-right: 0px; margin-bottom: var(--space2); margin-left: 0px; padding: 0px; font-family: Shurjo, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 1.8rem; line-height: 1.67; white-space: break-spaces; color: rgb(18, 18, 18);\">১৪ নভেম্বর নিউইয়র্কের ফেডারেল আদালত বলেছে, ট্রাম্প প্রশাসনের ডেফার্ড অ্যাকশন ফর চাইল্ডহুড অ্যারাইভ্যাল (ডাকা) কর্মসূচি বন্ধের আদেশ অবৈধ। ফেডারেল বিচারক নিকোলাস গুরাফেইস এ রায় দিয়েছেন।</p>', '<p><br></p><p><span style=\"color: rgb(32, 33, 36); font-family: &quot;Google Sans&quot;, arial, sans-serif; font-size: 28px; white-space: pre-wrap; background-color: rgb(248, 249, 250);\">A court has ruled against the Donald Trump administration\'s order to immigrate to the United States. As a result of the ruling, more than one million underage immigrants to the United States can now see the light of hope.\r\n\r\nOn November 14, a federal court in New York ruled that the Trump administration\'s order to stop the Deferred Action for Childhood Arrival (DACA) program was invalid. Federal Judge Nicolas Gurafeis handed down the verdict.</span><br></p>', '2020-11-15', 'Immigrant United States Donald Trump', 'অভিবাসী যুক্তরাষ্ট্র ডোনাল্ড ট্রাম্প', 'ডাকা কর্মসূচি বন্ধে ট্রাম্প প্রশাসনের আদেশ অবৈধ', 'ডাকা কর্মসূচি বন্ধে ট্রাম্প প্রশাসনের আদেশ অবৈধ', 'The Trump administration\'s order to stop the call is illegal', 'ডাকা কর্মসূচি বন্ধে ট্রাম্প প্রশাসনের আদেশ অবৈধ-2020-11-15-5fb0c7cd70639.PNG', 1, 0, 1, '2020-11-15 00:16:45', '2020-11-15 00:16:45'),
(4, 8, 25, 10, 2, 37, 23, 'শিশু কি মিথ্যা বলা শিখছে', 'Children are learning to lie', 'শিশু কি মিথ্যা বলা শিখছে-2020-11-15-5fb0cf4db38f1.PNG', '<p style=\"margin-right: 0px; margin-bottom: var(--space2); margin-left: 0px; padding: 0px; font-family: Shurjo, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 1.8rem; line-height: 1.67; white-space: break-spaces; color: rgb(18, 18, 18);\">‘শোয় নাকি সে মুণ্ডটাকে শিয়র পানে দিয়ে?</p><p style=\"margin-right: 0px; margin-bottom: var(--space2); margin-left: 0px; padding: 0px; font-family: Shurjo, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 1.8rem; line-height: 1.67; white-space: break-spaces; color: rgb(18, 18, 18);\">হয় না কি হয় সত্যি মিথ্যা চল্ না দেখি গিয়ে!’</p><p style=\"margin-right: 0px; margin-bottom: var(--space2); margin-left: 0px; padding: 0px; font-family: Shurjo, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 1.8rem; line-height: 1.67; white-space: break-spaces; color: rgb(18, 18, 18);\">সত্য–মিথ্যা যাচাইয়ের এই আকুতি সুকুমার রায়ের ‘অবাক কাণ্ড’ ছড়ায়। তাঁর অনবদ্য কল্পকাব্যে শৈশব থেকে অনেকেই পড়েন কুমড়োপটাশ, হাঁসজারু—এমনি কত মজার চরিত্রের কথা। এসবের বাস্তব অস্তিত্ব নেই, তা-ই বলে কি এগুলোকে ‘মিথ্যা’ বলে চিহ্নিত করা যায়? সত্য, মিথ্যা, বাস্তব, কল্পনা—সব মিলিয়েই তো জীবন।</p>', '<p><br></p><p><span style=\"color: rgb(32, 33, 36); font-family: &quot;Google Sans&quot;, arial, sans-serif; font-size: 28px; white-space: pre-wrap; background-color: rgb(248, 249, 250);\">‘Shoy or did he shave his head?\r\n\r\nLet\'s not lie! \'\r\n\r\nThis longing for true-false verification spreads Sukumar Roy\'s \'surprise\'. In his impeccable fiction, many people read from childhood about pumpkins, ducks — what a funny character. Does this mean that they do not really exist, that they are \'false\'? True, false, real, imaginary জীবন all in all, life.</span><br></p>', '2020-11-15', 'Child rearing', 'শিশু সন্তান পালন', 'শিশু কি মিথ্যা বলা শিখছে', 'শিশু কি মিথ্যা বলা শিখছে', 'Children are learning to lie', 'শিশু কি মিথ্যা বলা শিখছে-2020-11-15-5fb0cf4db38f1.PNG', 1, 0, 1, '2020-11-15 00:48:45', '2020-11-15 00:48:45');

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_analytics` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_verification` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bing_verification` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alexa_analytics` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook_page` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube_channel` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` int(11) NOT NULL,
  `email_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sociallinks`
--

CREATE TABLE `sociallinks` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinterest` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_pages`
--

CREATE TABLE `social_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook_page` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_status` int(11) NOT NULL,
  `youtube_page` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_on_header` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name_bn`, `name_en`, `slug_bn`, `slug_en`, `show_on_header`, `created_at`, `updated_at`) VALUES
(1, 6, 'ঢালিউড', 'Dhaliwood', 'dhaliud', 'dhaliwood', 1, '2020-11-14 06:10:56', '2020-11-14 06:10:56'),
(2, 6, 'নাটক', 'Drama', 'natk', 'drama', 1, '2020-11-14 06:11:23', '2020-11-14 06:11:23'),
(3, 6, 'হলিউড', 'Hollywood', 'hliud', 'hollywood', 1, '2020-11-14 06:11:57', '2020-11-14 06:11:57'),
(6, 6, 'বলিউড', 'Bollywood', 'bliud', 'bollywood', 1, '2020-11-14 06:13:06', '2020-11-14 06:13:06'),
(7, 7, 'ভর্তি', 'Admission', 'vrti', 'admission', 1, '2020-11-14 22:10:32', '2020-11-14 22:10:32'),
(8, 7, 'পরীক্ষা', 'Test', 'preeksha', 'test', 1, '2020-11-14 22:11:10', '2020-11-14 22:11:10'),
(9, 7, 'বৃত্তি', 'Scholarship', 'brritti', 'scholarship', 1, '2020-11-14 22:11:36', '2020-11-14 22:11:36'),
(10, 7, 'বিজ্ঞানপ্রযুক্তি', 'Science and technology', 'bijnganprzukti', 'science-and-technology', 1, '2020-11-14 22:12:20', '2020-11-14 22:12:20'),
(11, 4, 'পাকিস্তান', 'Pakistan', 'pakistan', 'pakistan', 1, '2020-11-14 22:13:14', '2020-11-14 22:23:50'),
(12, 4, 'চীন', 'China', 'ceen', 'china', 1, '2020-11-14 22:13:51', '2020-11-14 22:13:51'),
(13, 4, 'এশিয়া', 'Asia', 'esiya', 'asia', 1, '2020-11-14 22:15:20', '2020-11-14 22:15:20'),
(14, 4, 'যুক্তরাষ্ট্র', 'United States', 'zuktrashtr', 'united-states', 1, '2020-11-14 22:15:45', '2020-11-14 22:15:45'),
(15, 5, 'সম্পাদকীয়', 'Editorial', 'smpadkeey', 'editorial', 1, '2020-11-14 22:16:34', '2020-11-14 22:16:34'),
(16, 5, 'কলাম', 'Columns', 'klam', 'columns', 1, '2020-11-14 22:16:57', '2020-11-14 22:16:57'),
(17, 5, 'সাক্ষাৎকার', 'Interview', 'sakshattkar', 'interview', 1, '2020-11-14 22:17:20', '2020-11-14 22:17:20'),
(18, 3, 'স্বাস্থ্য', 'Health', 'swasthz', 'health', 1, '2020-11-14 22:18:07', '2020-11-14 22:18:07'),
(20, 3, 'পুষ্টি', 'Nutrition', 'pushti', 'nutrition', 1, '2020-11-14 22:24:59', '2020-11-14 22:24:59'),
(21, 3, 'ভ্রমণ', 'Travel', 'vrmn', 'travel', 1, '2020-11-14 22:25:25', '2020-11-14 22:25:25'),
(22, 8, 'নারীমঞ্চ', 'Women\'s stage', 'nareemnc', 'womens-stage', 1, '2020-11-14 23:27:09', '2020-11-14 23:27:09'),
(23, 8, 'নকশা', 'Design', 'nksha', 'design', 1, '2020-11-14 23:28:05', '2020-11-14 23:28:05'),
(24, 8, 'প্র আনন্দ', 'Q. Joy', 'pr-annd', 'q-joy', 1, '2020-11-14 23:28:38', '2020-11-14 23:28:38'),
(25, 8, 'প্র অধুনা', 'Nowadays', 'pr-odhuna', 'nowadays', 1, '2020-11-14 23:29:08', '2020-11-14 23:29:08'),
(26, 9, 'ক্রিকেট', 'Cricket', 'kriket', 'cricket', 1, '2020-11-14 23:30:26', '2020-11-14 23:30:26'),
(27, 9, 'Football', 'ফুটবল', 'football', 'futbl', 1, '2020-11-14 23:30:51', '2020-11-14 23:30:51'),
(28, 9, 'টেনিস', 'Tennis', 'tenis', 'tennis', 1, '2020-11-14 23:31:15', '2020-11-14 23:31:15'),
(29, 9, 'অন্য খেলা', 'Another game', 'onz-khela', 'another-game', 1, '2020-11-14 23:31:40', '2020-11-14 23:31:40'),
(30, 12, 'ইসলাম', 'Islam', 'islam', 'islam', 1, '2020-11-14 23:34:36', '2020-11-14 23:34:36'),
(31, 12, 'হিন্দু', 'Hindu', 'hindu', 'hindu', 1, '2020-11-14 23:34:58', '2020-11-14 23:34:58'),
(32, 12, 'বৌদ্ধ', 'Buddhist', 'bouddh', 'buddhist', 1, '2020-11-14 23:35:25', '2020-11-14 23:35:25'),
(33, 12, 'খ্রিস্টান', 'Christian', 'khristan', 'christian', 1, '2020-11-14 23:35:52', '2020-11-14 23:35:52'),
(34, 13, 'এক ঝলক', 'A glimpse', 'ek-jhlk', 'a-glimpse', 1, '2020-11-14 23:37:28', '2020-11-14 23:37:28'),
(35, 13, 'বাংলাদেশ', 'Bangladesh', 'banglades', 'bangladesh', 1, '2020-11-14 23:37:53', '2020-11-14 23:37:53'),
(36, 13, 'ফ্যাশন', 'Fashion', 'fzasn', 'fashion', 1, '2020-11-14 23:38:16', '2020-11-14 23:38:16'),
(37, 13, 'আন্তর্জাতিক', 'International', 'antrjatik', 'international', 1, '2020-11-14 23:38:50', '2020-11-14 23:38:50'),
(38, 13, 'বিনোদন', 'Entertainment', 'binodn', 'entertainment', 1, '2020-11-14 23:39:15', '2020-11-14 23:39:15'),
(39, 11, 'রাজধানী', 'Capital', 'rajdhanee', 'capital', 1, '2020-11-14 23:41:04', '2020-11-14 23:41:04'),
(40, 11, 'জেলা', 'District', 'jela', 'district', 1, '2020-11-14 23:41:30', '2020-11-14 23:41:30'),
(41, 11, 'করোনাভাইরাস', 'Coronavirus', 'kronavairas', 'coronavirus', 1, '2020-11-14 23:41:58', '2020-11-14 23:41:58'),
(42, 11, 'অপরাধ', 'Crime', 'opradh', 'crime', 1, '2020-11-14 23:44:07', '2020-11-14 23:44:07'),
(43, 10, 'বাজার', 'Market', 'bajar', 'market', 1, '2020-11-14 23:45:10', '2020-11-14 23:45:10'),
(44, 10, 'ব্যাংক', 'Bank', 'bzangk', 'bank', 1, '2020-11-14 23:45:38', '2020-11-14 23:45:38'),
(45, 10, 'শিল্প', 'Art', 'silp', 'art', 1, '2020-11-14 23:46:04', '2020-11-14 23:46:04'),
(46, 10, 'বিশ্ববাণিজ্য', 'World Trade', 'biswbanijz', 'world-trade', 1, '2020-11-14 23:46:35', '2020-11-14 23:46:35');

-- --------------------------------------------------------

--
-- Table structure for table `subdistricts`
--

CREATE TABLE `subdistricts` (
  `id` int(10) UNSIGNED NOT NULL,
  `div_id` int(10) UNSIGNED NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `subdis_name_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subdis_name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subdistricts`
--

INSERT INTO `subdistricts` (`id`, `div_id`, `district_id`, `subdis_name_bn`, `subdis_name_en`, `created_at`, `updated_at`) VALUES
(1, 8, 16, 'আজমিরীগঞ্জ', 'Ajmiriganj', '2020-11-14 22:34:27', '2020-11-14 22:34:27'),
(2, 8, 16, 'বানিয়াচং', 'Baniachang', '2020-11-14 22:34:54', '2020-11-14 22:34:54'),
(3, 8, 17, 'মৌলভীবাজার সদর', 'Moulvibazar Sadar', '2020-11-14 22:36:00', '2020-11-14 22:36:00'),
(4, 8, 17, 'কমলগঞ্জ', 'Kamalganj', '2020-11-14 22:36:36', '2020-11-14 22:36:36'),
(5, 8, 17, 'বিশ্বম্বরপুর', 'Bishwamvarpur', '2020-11-14 22:37:11', '2020-11-14 22:37:11'),
(6, 7, 19, 'বদরগঞ্জ', 'Badarganj', '2020-11-14 22:42:33', '2020-11-14 22:42:33'),
(7, 7, 20, 'বিরল উপজেলা', 'Biral Upazila', '2020-11-14 22:43:20', '2020-11-14 22:43:20'),
(8, 1, 29, 'ভান্ডারিয়া', 'Bhandaria', '2020-11-14 22:48:57', '2020-11-14 22:48:57'),
(9, 1, 3, 'বাউফল উপজেলা', 'Bauphal Upazila', '2020-11-14 22:49:37', '2020-11-14 22:49:37'),
(10, 1, 2, 'কাঠালিয়া উপজেলা', 'Kathalia Upazila', '2020-11-14 22:50:24', '2020-11-14 22:50:24'),
(11, 1, 1, 'লালমোহন উপজেলা', 'Lalmohan Upazila', '2020-11-14 22:51:06', '2020-11-14 22:51:06'),
(12, 1, 27, 'বামনা', 'Bamna', '2020-11-14 22:53:19', '2020-11-14 22:53:19'),
(13, 1, 27, 'বাকেরগঞ্জ উপজেলা', 'Bakerganj Upazila', '2020-11-14 22:53:54', '2020-11-14 22:53:54'),
(14, 2, 4, 'কসবা উপজেলা', 'Kasba Upazila', '2020-11-14 23:01:04', '2020-11-14 23:01:04'),
(15, 2, 5, 'বুড়িচং উপজেলা', 'Burichong Upazila', '2020-11-14 23:01:37', '2020-11-14 23:01:37'),
(16, 2, 30, 'ফরিদগঞ্জ উপজেলা', 'Faridganj Upazila', '2020-11-14 23:02:20', '2020-11-14 23:02:20'),
(17, 2, 31, 'রামগঞ্জ উপজেলা', 'Ramganj Upazila', '2020-11-14 23:03:06', '2020-11-14 23:03:06'),
(18, 2, 32, 'সেনবাগ উপজেলা', 'Senbagh Upazila', '2020-11-14 23:04:36', '2020-11-14 23:04:36'),
(19, 2, 33, 'ফেনী সদর উপজেলা মো', 'Feni Sadar Upazila', '2020-11-14 23:05:16', '2020-11-14 23:05:16'),
(20, 2, 34, 'খাগড়াছড়ি সদর উপজেলা', 'Khagrachhari Sadar Upazila', '2020-11-14 23:05:52', '2020-11-14 23:05:52'),
(21, 2, 35, 'বরকল উপজেলা', 'Barkal Upazila', '2020-11-14 23:06:28', '2020-11-14 23:06:28'),
(22, 2, 36, 'সন্দ্বীপ উপজেলা', 'Sandwip Upazila', '2020-11-14 23:07:56', '2020-11-14 23:07:56'),
(23, 2, 37, 'চকরিয়া উপজেলা', 'Chakaria Upazila', '2020-11-14 23:08:37', '2020-11-14 23:08:37'),
(24, 3, 38, 'ডেমরা উপজেলা', 'Demra Upazila', '2020-11-14 23:14:17', '2020-11-14 23:14:17'),
(25, 3, 7, 'কালিয়াকৈর উপজেলা', 'Kaliakair Upazila', '2020-11-14 23:14:44', '2020-11-14 23:14:44'),
(26, 3, 8, 'তারাইল উপজেলা', 'Tarail Upazila', '2020-11-14 23:15:59', '2020-11-14 23:15:59'),
(27, 3, 9, 'সিংগাইর উপজেলা', 'Singair Upazila', '2020-11-14 23:16:31', '2020-11-14 23:16:31'),
(28, 3, 39, 'শ্রীনগর উপজেলা', 'Sreenagar Upazila', '2020-11-14 23:17:16', '2020-11-14 23:17:16'),
(29, 3, 40, 'সোনারগাঁও উপজেলা', 'Sonargaon Upazila', '2020-11-14 23:17:58', '2020-11-14 23:17:58'),
(30, 3, 41, 'বেলাবো উপজেলা', 'Belabo Upazila', '2020-11-14 23:18:39', '2020-11-14 23:18:39'),
(31, 3, 42, 'বাসাইল উপজেলা', 'Basail Upazila', '2020-11-14 23:19:10', '2020-11-14 23:19:10'),
(32, 3, 43, 'ভাঙ্গা উপজেলা', 'Bhanga Upazila', '2020-11-14 23:19:42', '2020-11-14 23:19:42'),
(33, 3, 44, 'মুকসুদপুর উপজেলা', 'Muksudpur Upazila', '2020-11-14 23:20:26', '2020-11-14 23:20:26'),
(34, 3, 45, 'মাদারীপুর সদর', 'Madaripur Sadar', '2020-11-14 23:20:58', '2020-11-14 23:20:58'),
(35, 3, 46, 'পাংশা উপজেলা', 'Pangsha Upazila', '2020-11-14 23:21:27', '2020-11-14 23:21:27'),
(36, 3, 47, 'জঞ্জিরা উপজেলা', 'Zanjira Upazila', '2020-11-14 23:22:11', '2020-11-14 23:22:11');

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_bn_unique` (`name_bn`),
  ADD UNIQUE KEY `categories_name_en_unique` (`name_en`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_div_id_foreign` (`div_id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_title_unique` (`slug_title`),
  ADD KEY `posts_cat_id_foreign` (`cat_id`),
  ADD KEY `posts_sub_cat_id_foreign` (`sub_cat_id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_division_id_foreign` (`division_id`),
  ADD KEY `posts_district_id_foreign` (`district_id`),
  ADD KEY `posts_subdistrict_id_foreign` (`subdistrict_id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sociallinks`
--
ALTER TABLE `sociallinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_pages`
--
ALTER TABLE `social_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subcategories_slug_bn_unique` (`slug_bn`),
  ADD UNIQUE KEY `subcategories_slug_en_unique` (`slug_en`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `subdistricts`
--
ALTER TABLE `subdistricts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subdistricts_div_id_foreign` (`div_id`),
  ADD KEY `subdistricts_district_id_foreign` (`district_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sociallinks`
--
ALTER TABLE `sociallinks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_pages`
--
ALTER TABLE `social_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `subdistricts`
--
ALTER TABLE `subdistricts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_div_id_foreign` FOREIGN KEY (`div_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_sub_cat_id_foreign` FOREIGN KEY (`sub_cat_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_subdistrict_id_foreign` FOREIGN KEY (`subdistrict_id`) REFERENCES `subdistricts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subdistricts`
--
ALTER TABLE `subdistricts`
  ADD CONSTRAINT `subdistricts_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subdistricts_div_id_foreign` FOREIGN KEY (`div_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
