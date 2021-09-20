-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 20, 2021 at 09:44 AM
-- Server version: 5.7.24
-- PHP Version: 8.0.6

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
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `details_bn` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `details_bn`, `details_en`, `created_at`, `updated_at`) VALUES
(1, '<h1 style=\"text-align: center; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SolaimanLipi; color: rgb(51, 51, 51); font-size: 18px;\"><b>About Us</b></h1><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SolaimanLipi; color: rgb(51, 51, 51); font-size: 18px;\">Jagonews24.com is one of the most popular Bangla news portals in Bangladesh. The online news portal has started its operations with the commitment of fearless, investigative, informative and neutral journalism.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SolaimanLipi; color: rgb(51, 51, 51); font-size: 18px;\">Jagonews24.com has provided real time news update, using utmost modern technology since 2014. It also provides archive of previous news, and printing facility of the specific news items.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SolaimanLipi; color: rgb(51, 51, 51); font-size: 18px;\">One can easily find latest news and top breaking headlines from Bangladesh and around the world within a short span of time from the online news portal.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SolaimanLipi; color: rgb(51, 51, 51); font-size: 18px;\">Jagonews24.com, the Bangladesh’s leading online news portal, is updating 24/7 with entertainment, lifestyle, special reports, politics, economics, culture, education, information technology, health, sports, columns and features.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SolaimanLipi; color: rgb(51, 51, 51); font-size: 18px;\">The news based site enriched with all the elements of country’s traditional newspapers. A group of youngster journalists are working for the online news portal.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SolaimanLipi; color: rgb(51, 51, 51); font-size: 18px;\">Jagonews24.com is trying to build a bridge with Bengali language people around the world and want to create a new dimension to the country’s online news portal.</p>', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SolaimanLipi; color: rgb(51, 51, 51); font-size: 18px;\">Jagonews24.com is one of the most popular Bangla news portals in Bangladesh. The online news portal has started its operations with the commitment of fearless, investigative, informative and neutral journalism.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SolaimanLipi; color: rgb(51, 51, 51); font-size: 18px;\">Jagonews24.com has provided real time news update, using utmost modern technology since 2014. It also provides archive of previous news, and printing facility of the specific news items.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SolaimanLipi; color: rgb(51, 51, 51); font-size: 18px;\">One can easily find latest news and top breaking headlines from Bangladesh and around the world within a short span of time from the online news portal.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SolaimanLipi; color: rgb(51, 51, 51); font-size: 18px;\">Jagonews24.com, the Bangladesh’s leading online news portal, is updating 24/7 with entertainment, lifestyle, special reports, politics, economics, culture, education, information technology, health, sports, columns and features.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SolaimanLipi; color: rgb(51, 51, 51); font-size: 18px;\">The news based site enriched with all the elements of country’s traditional newspapers. A group of youngster journalists are working for the online news portal.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SolaimanLipi; color: rgb(51, 51, 51); font-size: 18px;\">Jagonews24.com is trying to build a bridge with Bengali language people around the world and want to create a new dimension to the country’s online news portal.</p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `abroads`
--

CREATE TABLE `abroads` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_bangla` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_english` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_bn` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `writer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_date` date NOT NULL,
  `view` int(3) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abroads`
--

INSERT INTO `abroads` (`id`, `title_bn`, `title_en`, `slug_bangla`, `slug_english`, `details_bn`, `details_en`, `writer_id`, `image`, `published_date`, `view`, `status`, `created_at`, `updated_at`) VALUES
(1, 'খালেদা বিদেশের বিরুদ্ধে সরকারের বিরুদ্ধে ষড়যন্ত্র করছেন: কাদের', 'Khaleda plotting abroad against government: Quader', 'khaleda-bideser-biruddhe-srkarer-biruddhe-shdzntr-krchen-kader', 'khaleda-plotting-abroad-against-government-quader', 'আওয়ামী লীগের সাধারণ সম্পাদক এবং সড়ক পরিবহন ও সেতুমন্ত্রী ওবায়দুল কাদের বলেছেন, বিএনপি চেয়ারপারসন বেগম খালেদা জিয়া সরকারের বিরুদ্ধে বিদেশে ষড়যন্ত্র করছেন।\r\n\r\n“লন্ডন, দুবাই এবং ব্যাংককে কোথায়, কারা এবং কী নিয়ে আলোচনা হচ্ছে তা আমরা সবই জানি। নগরীর ইঞ্জিনিয়ার্স ইনস্টিটিউশন মিলনায়তনে তিনি এক আলোচনা সভায় প্রধানমন্ত্রী শেখ হাসিনার সরকারকে ক্ষমতাচ্যুত করার জন্য কারা ষড়যন্ত্র করছে এবং কারা ঘটনাস্থল চক্রান্তকারীদের পিছনে রয়েছে তা আমরা জানি।\r\n\r\nবাংলাদেশ আওয়ামী যুবলীগ জাতির জনক বঙ্গবন্ধু শেখ মুজিবুর রহমানের ৪২ তম শাহাদাতবার্ষিকী এবং জাতীয় শোক দিবস উপলক্ষে আলোচনা সভার আয়োজন করে।\r\n\r\nমন্ত্রী বলেন, বিএনপি অতীতের মতো ষড়যন্ত্রের মাধ্যমে রাজ্য ক্ষমতায় যেতে চায়। “আগামী সাধারণ নির্বাচন অংশগ্রহণমূলক, অবাধ ও নিরপেক্ষ হবে। বিএনপি জানে যে জনগণ বিএনপির পক্ষে ভোট দেবে না, যাতে তারা আবারও ষড়যন্ত্র শুরু করেছিল, ”তিনি যোগ করেছেন।', 'Awami League General Secretary and Road Transport and Bridges Minister Obaidul Quader today said BNP Chairperson Begum Khaleda Zia is hatching conspiracies abroad against the government.\r\n\r\n“We know everything where, who and what is being discussed in London, Dubai and Bangkok. We know in what way who are hatching conspiracies to oust the government of Prime Minister Sheikh Hasina and who are the behind the scene plotters,” he told a discussion at Engineers Institution auditorium in the city.\r\n\r\nBangladesh Awami Jubo League organized the discussion marking the 42nd martyrdom anniversary of Father of the Nation Bangabandhu Sheikh Mujibur Rahman and National Mourning Day.\r\n\r\nThe minister said BNP wants to go to state power through conspiracy as like the past. “The next general election will be participatory, free and fair. BNP knows people will not cast their votes in favour of BNP so that they again started hatching conspiracy,” he added.', 3, 'khaleda-bideser-biruddhe-srkarer-biruddhe-shdzntr-krchen-kader-2021-01-02-5ff012fb02fbb.jpg', '2021-01-02', 0, 1, '2020-12-28 00:32:43', '2021-01-02 00:30:19'),
(2, 'বিনা অনুমতিতে বিদেশে থাকার কারণে দুই Uাবির শিক্ষক চাকরি হারান', 'Two DU teachers lose job for staying abroad without permission', 'bina-onumtite-bidese-thakar-karne-dui-uabir-sikshk-cakri-haran', 'two-du-teachers-lose-job-for-staying-abroad-without-permission', 'বিনা অনুমতিতে বিদেশে থাকার কারণে Dhakaাকা বিশ্ববিদ্যালয়ের দুই শিক্ষককে দায়িত্ব থেকে মুক্তি দেওয়া হয়েছে।\r\n\r\nরবিবার বিকেলে বিশ্ববিদ্যালয়ের সিন্ডিকেট সভায় এই সিদ্ধান্ত নেওয়া হয়, সভায় বেশ কয়েকজন সদস্য জাগো নিউজকে নিশ্চিত করেছেন।\r\n\r\nঅব্যাহতিপ্রাপ্ত শিক্ষকরা হলেন নুসরত ফারাহ, এবং হিসাব ও তথ্য সিস্টেম বিভাগের প্রভাষক মোহাম্মদ শরিফুল ইসলাম।\r\n\r\nসিন্ডিকেটের এক সদস্য জাগো নিউজকে জানান, এই দুই শিক্ষক দীর্ঘদিন ধরে বিনা অনুমতিতে বিদেশে অবস্থান করছেন।\r\n\r\nতাদের একাধিকবার বিশ্ববিদ্যালয় কর্তৃপক্ষ তাদের চাকরিতে ফিরে আসতে বলে চিঠি দিয়েছে কিন্তু তারা তাতে মনোযোগ দেয়নি। এজন্যই কর্তৃপক্ষ তাদের এ থেকে মুক্তি দেওয়ার সিদ্ধান্ত নিয়েছে, তিনি যোগ করেছেন', 'Two Dhaka University teachers have been relieved of their duties for staying abroad without permission.\r\n\r\nThe decision was taken at syndicate meeting of the university on Sunday afternoon, several members attended the meeting confirmed to Jago News. \r\n\r\nThe relieved teachers are Nusrat Farah, and Mohammad Shariful Islam, lecturers of the Department of Accounting and Information System.\r\n\r\nA syndicate member told Jago News that the two teachers have long been staying abroad with no permission. \r\n\r\nThey were given letters on several occasions by the university authorities asking them to return to the job but they did not pay heed to. That is why the authorites decided to relieve them, he added', 7, 'bina-onumtite-bidese-thakar-karne-dui-uabir-sikshk-cakri-haran-2020-12-28-5fe97c5c12785.jpg', '2020-12-28', 1, 1, '2020-12-28 00:34:04', '2020-12-28 00:34:04'),
(3, 'মানুষ সমুদ্র দিয়ে বিদেশে না যাওয়ার আহ্বান জানিয়েছিল', 'People urged not to go abroad through sea', 'manush-smudr-dize-bidese-na-zaoozar-ahwan-janizechil', 'people-urged-not-to-go-abroad-through-sea', 'শনিবার প্রবাসী কল্যাণ ও বৈদেশিক কর্মসংস্থান মন্ত্রী নুরুল ইসলাম বিএসসি বলেছেন, সমুদ্রের মধ্য দিয়ে বিদেশ যাওয়ার জন্য জীবনকে ঝুঁকির মধ্যে ফেলে দেওয়ার দরকার নেই।\r\n\r\n\"অনেক ভাগ্য-প্রার্থী নৌকায় করে বিদেশে যাওয়ার চেষ্টা করছেন এবং সমুদ্রে ডুবে মারা যাচ্ছেন, কিন্তু বর্তমান সরকার লোকদের সহজ উপায়ে বিদেশে প্রেরণ করছে বলে এখন এটি অনর্থক\"।\r\n\r\nনিহত প্রবাসী শ্রমিকদের পরিবারের সদস্যদের মধ্যে অনুদান ও ক্ষতিপূরণ দেওয়ার জন্য চেক বিতরণের সময় প্রবাসী কল্যাণ মন্ত্রী এই মন্তব্যটি নিয়ে এসেছিলেন।\r\n\r\nবর্তমান সরকারকে দরিদ্রপন্থী হিসাবে অভিহিত করে মন্ত্রী বলেন, তিনি তার মন্ত্রকের কাছে নিহতদের পরিবারের দুর্ভোগ লাঘব করতে দু\'মাসের মধ্যে চেক দেওয়ার জন্য বলেছিলেন, যাঁদের চেক পাওয়ার জন্য আগে বছরের জন্য অপেক্ষা করতে হয়েছিল।\r\n\r\nতিনি বলেন, বর্তমান সরকার এখন প্রতিটি পরিবারকে দুই লাখের পরিবর্তে তিন লাখ টাকা দিচ্ছে।\r\n\r\nমন্ত্রী বিমানবন্দর থেকে মৃতদেহগুলি বাড়িতে নিয়ে যাওয়ার জন্য তাঁর মন্ত্রক থেকে একটি অ্যাম্বুলেন্স দেওয়ারও ঘোষণা করেছিলেন।', 'Minister for Expatriate Welfare and Overseas Employment Nurul Islam B.Sc on Saturday said that there was no need to put life at stake for going abroad through the sea.\r\n\r\n\"Many fortune-seekers are trying to go abroad on boats and dying in the sea but now it is needless as the present government is sending people abroad in easy ways\", he said.\r\n\r\nThe Expatriate Welfare Minister came up with the comment while distributing cheques for grants and compensations among the family members of the deceased expatriate workers.\r\n\r\nTerming the present government as a pro-poor, the minister said he had asked his ministry to issue the cheques within two months to ease the sufferings of the deceased`s families which earlier had to wait for years to get their cheques.\r\n\r\nThe present government, he said, is now paying Taka three lakhs instead of two lakhs to each family.\r\n\r\nThe minister also announced to provide an ambulance from his ministry to carry home the dead bodies free from the airports.', 7, 'manush-smudr-dize-bidese-na-zaoozar-ahwan-janizechil-2020-12-28-5fe97cff35beb.jpg', '2020-12-28', 0, 1, '2020-12-28 00:36:47', '2020-12-28 00:36:47'),
(4, 'বিদেশে আমরা আর ভয় পাই না: সাকিব', 'We no more afraid in abroad: Shakib', 'bidese-amra-ar-vz-pai-na-sakib', 'we-no-more-afraid-in-abroad-shakib', '910 / 5000\r\nTranslation results\r\nবাংলাদেশ সম্প্রতি কিছু নান্দনিক ম্যাচ খেলেছে এবং দেশ-বিদেশের বেশিরভাগ জায়ান্টদের পরাজিত করেছে।\r\n\r\nটাইগাররা তাদের শক্তি কেবল সীমিত ওভারের ক্রিকেটেই নয় টেস্টেও দেখিয়েছিল। এ কারণেই তারা ভয় পায় না তবে বিদেশে জয়ের বিষয়ে আত্মবিশ্বাসী বলে মন্তব্য করেছেন এসি অলরাউন্ডার সাকিব আল হাসান।\r\n\r\nসংস্থার ব্র্যান্ড অ্যাম্বাসেডর হিসাবে লিংক পেন অ্যান্ড প্লাস্টিকস লিমিটেডের সাথে যোগাযোগ করার পরে সাংবাদিকদের সাকিব সাংবাদিকদের বলেন, ‘এর আগে আমরা বিদেশে ভয় পেয়েছিলাম এবং কীভাবে করব তা ভেবে আমাদের উপর অতিরিক্ত চাপ ছিল।\r\n\r\nতিনি বলেছিলেন, ‘বিশ্বকাপ খেলে আমাদের আত্মবিশ্বাস আরও বেড়েছে। পেসার এবং স্পিনাররা দুর্দান্ত করছে। আশা করি, আরও ভাল ফলাফল আসবে। ’\r\n\r\nটেস্ট জায়ান্টের বিপক্ষে প্রথম জয় নিশ্চিত করতেই ইংল্যান্ডের বিপক্ষে সর্বশেষ টেস্টে দলে দলে বাংলাদেশ। প্রথম টেস্টে, তারা একটি শক্ত লড়াইয়ের পরে মাত্র 22 রানে হেরেছিল।\r\n\r\nইংল্যান্ডের বিপক্ষে জয়ের ফলে বাংলাদেশের আত্মবিশ্বাস বেড়ে যায়, যোগ করেন সাকিব।', 'Bangladesh has recently played some aesthetic matches and defeated most of the giants in both home and abroad.\r\n\r\nThe Tigers showed their power not only in limited-over cricket but also in Test. That’s why they are not afraid but confident of victory in abroad, said ace all rounder Shakib Al Hasan.\r\n\r\n‘Earlier we were afraid of in abroad and had extra pressure on us thinking how we would do,’ Shakib said to reporters after signing a contact with Linc Pen &amp; Plastics Limited as the Brand Ambassador of the company.\r\n\r\nHe said, ‘With playing World Cup, our confidence has been increased. The pacers and spinners are doing well. Hopefully, better result will come.’\r\n\r\nBangladesh rocked in the last Test against England as they secured their first win over the Test giant. In the first test, they lost by only 22 runs after a strong fighting.\r\n\r\nWining over England enhanced the confidence of Bangladesh, Shakib added.', 7, 'bidese-amra-ar-vz-pai-na-sakib-2020-12-28-5fe97d4ef1e10.jpg', '2020-12-28', 5, 1, '2020-12-28 00:38:07', '2020-12-28 00:38:07'),
(5, 'দক্ষ কর্মীরা বিদেশে ভাল অর্থ উপার্জনের সুযোগ রয়েছে', 'Skilled workers have chance to earn decent money abroad', 'dksh-krmeera-bidese-val-orth-uparjner-suzog-rzeche', 'skilled-workers-have-chance-to-earn-decent-money-abroad', 'প্রবাসী কল্যাণ ও বৈদেশিক কর্মসংস্থান মন্ত্রী ইমরান আহমদ বলেছেন, দেশগুলিতে বাংলাদেশের শ্রমবাজার কিছুটা সঙ্কুচিত হলেও দক্ষ শ্রমিকের সংখ্যা বেড়েছে এবং তাদের বিদেশে অর্থের সজ্জিত সুযোগ রয়েছে।\r\n\r\nজাগো নিউজের সাথে একান্ত সাক্ষাত্কারে মন্ত্রী বলেছিলেন, বিশ্ব শ্রম বাজারের গতিশীলতা অনুসারে এর পক্ষে নিখুঁতভাবে দক্ষ শ্রমিক দরকার এবং বাংলাদেশ তাদের দক্ষতা বাড়াতে সচেষ্ট রয়েছে।\r\n\r\n\"বিদেশে বাংলাদেশের শ্রমবাজারগুলি হ্রাস পেয়েছে তবে দক্ষের সংখ্যা বৃদ্ধি পাচ্ছে,\" মন্ত্রী বলেন, দেশকে মধ্যম আয়ের দিকে পরিণত করার এবং একটিকে উন্নত করার জন্য শ্রমবাজারকে এগিয়ে নেওয়া জরুরি।\r\n\r\nবর্তমান বিশ্বের বাস্তবতা সম্পর্কে ইমরান আহমেদ হস্তক্ষেপের পরিবর্তে যান্ত্রিকভাবে দক্ষ এমন শ্রমিকদের পাঠানোর জন্য।\r\n\r\nতিনি বলেছিলেন, \"মনুল কাজ (হাত ব্যবহার করে) এখন যান্ত্রিক রূপান্তরিত হয়েছে। একসময় লোকেরা জমি চাষে কোদাল ব্যবহার করত, এখন ট্র্যাক্টরও একই কাজ করতে ব্যবহৃত হত। সুতরাং, দেশের পক্ষে যান্ত্রিকভাবে দক্ষ শ্রমিক বিদেশে প্রেরণ করা ভাল।\"\r\n\r\nউল্লেখ করে বাংলাদেশ মি', 'Expatriates\' Welfare and Overseas Employment Minister Imran Ahmad has said though Bangladesh labour markets in countries has shrinked somewhat but the number of skilled workers rose and they have chance to earn a decent of amount money abroad.\r\n\r\nIn an exclusive interview with Jago News, the minister said it verily needs skilled workers according to dynamism of world labour markets, and Bangladesh is on efforts to raise skill of the ones.\r\n\r\n\"Bangladesh labour markets abroad have decreased but the number of skilled ones is increasing,\" the minister said, adding that it\'s essential to advance the labour market for turning the country into middle-income and developed one. \r\n\r\nAbout reality of the present world, Imran Ahmed is for sending those workers who are mechanically skilled, instead of manual ones.\r\n\r\nHe said, \"Manul works (done by using hands) is now turning into mechanical. Once people used spade to cultivate land, now tractor is used to do the same works. So, it\'s better for country to send mechanically skilled labourers abroad.\" \r\n\r\nMentioning that Bangladesh is m', 7, 'dksh-krmeera-bidese-val-orth-uparjner-suzog-rzeche-2020-12-28-5fe97dab2ae19.jpg', '2020-12-28', 0, 1, '2020-12-28 00:39:39', '2020-12-28 00:39:39');

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(10) UNSIGNED NOT NULL,
  `ads_type` int(11) NOT NULL,
  `ads_code` text COLLATE utf8mb4_unicode_ci,
  `ads_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `ads_type`, `ads_code`, `ads_image`, `ads_link`, `ads_status`, `created_at`, `updated_at`) VALUES
(25, 3, NULL, '5ff0559429d3d.png', 'https://www.pinterest.com/pin/605030531167015908/', 1, '2020-11-24 02:30:19', '2021-01-02 05:14:28'),
(27, 2, NULL, '5ff058567dffe.png', 'https://www.pinterest.com/pin/513551163763300831/', 1, '2020-11-24 02:33:01', '2021-01-02 05:26:14'),
(28, 3, NULL, '5ff0587398002.png', 'https://www.pinterest.com/pin/651966483550029223/', 1, '2020-11-24 03:41:53', '2021-01-02 05:26:43'),
(29, 2, NULL, '5ff05889205b6.jpg', 'https://www.pinterest.com/pin/634444666247127104/', 1, '2020-11-24 03:46:43', '2021-01-02 05:27:07'),
(30, 2, NULL, '5ff058a3c3bdd.png', 'https://www.pinterest.com/pin/463448617910647230/', 1, '2020-11-24 03:58:17', '2021-01-02 05:27:31'),
(31, 3, NULL, '5ff058b0d35aa.png', 'https://www.pinterest.com/pin/463448617910647230/', 1, '2020-11-24 03:58:54', '2021-01-02 05:27:44'),
(32, 3, NULL, '5ff058d5850ec.png', 'https://www.pinterest.com/pin/538532067941800864/', 1, '2020-11-24 04:05:54', '2021-01-02 05:28:21'),
(33, 3, NULL, '5ff058e2457f8.png', 'https://www.pinterest.com/pin/463448617910647230/', 1, '2020-11-24 04:06:11', '2021-01-02 05:28:34'),
(34, 2, NULL, '5ff058ef0f76e.png', 'https://www.pinterest.com/pin/521291725623908512/', 1, '2020-11-24 04:06:30', '2021-01-02 05:28:47'),
(35, 2, NULL, '5ff058f81e671.png', 'https://www.pinterest.com/pin/756604806135155366/', 1, '2020-11-24 04:29:01', '2021-01-02 05:28:56'),
(36, 2, NULL, '2020-12-02-5fc7658746a41.PNG', 'https://www.pinterest.com/pin/634444666247582006/', 1, '2020-11-24 04:29:27', '2020-12-02 03:59:35'),
(37, 3, NULL, '5ff059a418879.png', 'https://www.pinterest.com/pin/302585668719471977/', 1, '2020-12-02 03:28:11', '2021-01-02 05:31:48'),
(38, 2, NULL, '2020-12-03-5fc8a14d447d1.png', 'https://www.pinterest.com/pin/463448617910647230/', 1, '2020-12-03 02:26:53', '2020-12-03 02:26:53'),
(39, 3, NULL, '5ff059afec581.png', 'https://speeddigit.com', 1, '2021-01-02 05:21:02', '2021-01-02 05:32:00');

-- --------------------------------------------------------

--
-- Table structure for table `bd_covid19s`
--

CREATE TABLE `bd_covid19s` (
  `id` int(10) UNSIGNED NOT NULL,
  `cases_bn` int(11) NOT NULL,
  `cases_en` int(11) NOT NULL,
  `death_bn` int(11) NOT NULL,
  `death_en` int(11) NOT NULL,
  `cure_bn` int(11) NOT NULL,
  `cure_en` int(11) NOT NULL,
  `status` int(3) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bd_covid19s`
--

INSERT INTO `bd_covid19s` (`id`, `cases_bn`, `cases_en`, `death_bn`, `death_en`, `cure_bn`, `cure_en`, `status`, `created_at`, `updated_at`) VALUES
(1, 97867, 987978, 997, 978, 9879, 135346, 1, '2020-12-28 02:36:16', '2020-12-28 02:36:16');

-- --------------------------------------------------------

--
-- Table structure for table `bulatins`
--

CREATE TABLE `bulatins` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `writer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bulatins`
--

INSERT INTO `bulatins` (`id`, `title`, `title_slug`, `image`, `description`, `writer_id`, `created_at`, `updated_at`) VALUES
(2, 'hjghjghjgf', 'hjghjghjgf', 'hjghjghjgf-2020-11-18-5fb4a50c46e71.PNG', 'jghjghjfghj', 6, '2020-11-17 22:37:33', '2020-11-17 22:37:33');

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
  `category_on_header` int(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name_bn`, `name_en`, `slug_bn`, `slug_en`, `category_on_header`, `created_at`, `updated_at`) VALUES
(3, 'জীবনযাপন', 'Living', 'jeebnzapn', 'living', 1, '2020-11-14 05:08:22', '2020-12-28 01:54:03'),
(4, 'বিশ্ব', 'The world', 'bisw', 'the-world', 1, '2020-11-14 05:22:23', '2020-12-28 01:54:21'),
(5, 'মতামত', 'Feedback', 'mtamt', 'feedback', 1, '2020-11-14 06:09:40', '2020-12-28 01:54:39'),
(6, 'বিনোদন', 'Entertainment', 'binodn', 'entertainment', 1, '2020-11-14 06:10:12', '2020-12-28 01:54:58'),
(7, 'শিক্ষা', 'Education', 'siksha', 'education', 1, '2020-11-14 22:09:24', '2020-12-28 01:55:16'),
(8, 'ফিচার', 'Feature', 'ficar', 'feature', 1, '2020-11-14 23:26:31', '2020-12-28 01:55:43'),
(9, 'খেলা', 'game', 'khela', 'game', 1, '2020-11-14 23:29:43', '2020-12-28 01:53:20'),
(10, 'বাণিজ্য', 'Trade', 'banijz', 'trade', 1, '2020-11-14 23:32:32', '2020-12-28 01:56:03'),
(11, 'বাংলাদেশ', 'Bangladesh', 'banglades', 'bangladesh', 1, '2020-11-14 23:33:15', '2020-12-28 01:56:21'),
(12, 'ধর্ম', 'Religion', 'dhrm', 'religion', 1, '2020-11-14 23:33:46', '2020-12-28 01:56:40'),
(14, 'গণমাধ্যম', 'The media', 'gnmadhzm', 'the-media', 1, '2020-11-22 04:47:13', '2020-12-28 01:57:08'),
(16, 'দেশজুড়ে', 'Across the country', 'desjude', 'across-the-country', 1, '2020-11-22 04:59:06', '2020-12-28 01:57:31'),
(17, 'পৃষ্ঠা', 'Pages', 'prrishtha', 'pages', NULL, '2020-11-26 03:02:04', '2020-11-26 03:02:04'),
(18, 'ফটো গ্যালারি', 'Photo Gallery', 'fto-gzalari', 'photo-gallery', NULL, '2020-12-01 00:07:09', '2020-12-01 00:07:09'),
(19, 'কোভিড-১৯', 'Covid-19', 'kovid-19', 'covid-19', NULL, '2020-12-03 02:58:45', '2020-12-03 02:58:45'),
(20, 'বাতায়ন', 'Window', 'batayn', 'window', NULL, '2020-12-03 03:08:32', '2020-12-03 03:08:32'),
(21, 'দৃষ্টিপাত', 'Look', 'drrishtipat', 'look', NULL, '2020-12-03 03:09:06', '2020-12-03 03:09:06'),
(22, 'আইটি বিশ্ব', 'IT world', 'aiti-bisw', 'it-world', NULL, '2020-12-03 03:37:36', '2020-12-03 03:37:36'),
(23, 'ইসলাম ও জীবন', 'Islam and life', 'islam-oo-jeebn', 'islam-and-life', NULL, '2020-12-03 03:38:26', '2020-12-03 03:38:26'),
(24, 'দেশে দেশে', 'Country is country', 'dese-dese', 'country-is-country', NULL, '2020-12-03 03:42:25', '2020-12-03 03:42:25'),
(25, 'ভাইরাল', 'Viral', 'vairal', 'viral', NULL, '2020-12-03 03:43:50', '2020-12-03 03:43:50'),
(26, 'রংবেরং', 'Colorful', 'rngberng', 'colorful', NULL, '2020-12-03 03:44:20', '2020-12-03 03:44:20'),
(27, 'বিবিধ', 'Miscellaneous', 'bibidh', 'miscellaneous', NULL, '2020-12-03 03:44:52', '2020-12-03 03:44:52'),
(28, 'test bn', 'test en', 'test-bn', 'test-en', NULL, '2021-07-07 05:05:56', '2021-07-07 05:05:56');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `details_bn` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_msg`
--

CREATE TABLE `contact_msg` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_msg`
--

INSERT INTO `contact_msg` (`id`, `name`, `email`, `phone`, `subject`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Khorshed Alam', 'speeddigitinfo@gmail.com', '01556149456', 'My WHCMS panel is down', 'Test Message', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `covid19s`
--

CREATE TABLE `covid19s` (
  `id` int(10) UNSIGNED NOT NULL,
  `location_name_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cases_bn` int(11) NOT NULL,
  `cases_en` int(11) NOT NULL,
  `death_bn` int(11) NOT NULL,
  `death_en` int(11) NOT NULL,
  `cure_bn` int(11) NOT NULL,
  `cure_en` int(11) NOT NULL,
  `status` int(3) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `covid19s`
--

INSERT INTO `covid19s` (`id`, `location_name_bn`, `location_name_en`, `cases_bn`, `cases_en`, `death_bn`, `death_en`, `cure_bn`, `cure_en`, `status`, `created_at`, `updated_at`) VALUES
(1, 'hgghj', 'ghjj', 455554, 566246, 65645665, 54656465, 6546465, 654654, 1, '2020-12-03 05:58:17', '2020-12-03 06:12:27');

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
-- Table structure for table `elections`
--

CREATE TABLE `elections` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_bn` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_bangla` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_english` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `writer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `view` int(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `elections`
--

INSERT INTO `elections` (`id`, `image`, `title_en`, `title_bn`, `description_bn`, `description_en`, `slug_bangla`, `slug_english`, `writer_id`, `view`, `created_at`, `updated_at`) VALUES
(2, 'kristofar-krebs-saibar-sikiuriti-2021-01-02-5ff042952c9dd.jpg', 'Trump fired me for saying this, but I’ll say it again: The election wasn’t rigged', 'ক্রিস্টোফার ক্রেবস সাইবার সিকিউরিটি', 'ক্রিস্টোফার ক্রেবস সাইবার সিকিউরিটি অ্যান্ড ইনফ্রাস্ট্রাকচার সিকিউরিটি এজেন্সির প্রাক্তন পরিচালক। বুধবার সকাল ১১ টায় ওয়াশিংটন পোস্ট লাইভে পোস্ট কলামিস্ট ডেভিড ইগনেতিয়াস ক্রিস্টোফার ক্রেবসের সাক্ষাত্কার নেবেন ২০২০ সালের নির্বাচনে তার ভূমিকা এবং দেশটিতে যে সাইবার হুমকি রয়েছে সে সম্পর্কে।', 'Christopher Krebs is the former director of the Cybersecurity and Infrastructure Security Agency. On Wednesday at 11 a.m. on Washington Post Live, Post columnist David Ignatius will interview Christopher Krebs about his role in the 2020 election and the cyber threats facing the country.', 'kristofar-krebs-saibar-sikiuriti', 'trump-fired-me-for-saying-this-but-ill-say-it-again-the-election-wasnt-rigged', 3, 4, '2020-12-02 04:36:48', '2021-01-02 03:53:25'),
(9, 'ovinndnmuulk-barta-bangladeser-prdhanmntree-2021-01-02-5ff042b5e3d58.jpg', 'Global Support Lets Bangladesh Prime Minister', 'অভিনন্দনমূলক বার্তা বাংলাদেশের প্রধানমন্ত্রী', 'অভিনন্দনমূলক বার্তা বাংলাদেশের প্রধানমন্ত্রী-নির্বাচিত শেখ হাসিনার কাছে প্রবাহিত হচ্ছে, এটি নিশ্চিত করে যে তার জোটের আধিপত্য বিরাজমান গত রবিবারের নির্বাচনে ব্যাপক মারাত্মক অনিয়মের অভিযোগ তদন্ত করার আহ্বান জানাতে তিনি প্রতিরোধ করবেন।', 'Congratulatory messages are flowing to Bangladesh Prime Minister-elect Sheikh Hasina, ensuring she will withstand calls to investigate allegations of widespread serious irregularities in last Sunday’s election that was dominated by her coalition.', 'ovinndnmuulk-barta-bangladeser-prdhanmntree', 'global-support-lets-bangladesh-prime-minister', 5, 2, '2020-12-02 05:14:49', '2021-01-02 03:53:58'),
(10, 'kristofar-krebs-saibar-sikiuriti-2021-01-02-5ff042c025f6b.jpg', 'Bangladesh  New Law Will Silence Critics', 'ক্রিস্টোফার ক্রেবস সাইবার সিকিউরিটি', '<ul><li>বেশ কয়েকটি বিধান অবাধ প্রকাশের উপর আন্তর্জাতিক মান লঙ্ঘন করে।\r\n\r\nধারা ২১ \"বাংলাদেশের মুক্তিযুদ্ধের বিরুদ্ধে প্রচার ও প্রচার বা মুক্তিযুদ্ধের চেতনা বা জাতির পিতার বিরুদ্ধে\" প্রচারের জন্য ১৪ বছরের কারাদণ্ডের অনুমোদন দিয়েছে।</li></ul>', 'Several provisions violate international standards on free expression.\r\n\r\nSection 21 authorizes sentences of up to 14 years in prison for spreading “propaganda and campaign against liberation war of Bangladesh or spirit of the liberation war or Father of the Nation.”', 'kristofar-krebs-saibar-sikiuriti', 'bangladesh-new-law-will-silence-critics', 5, 0, '2020-12-02 23:14:03', '2021-01-02 03:54:08'),
(11, 'kristofar-krebs-saibar-sikiuriti-2021-01-02-5ff042cc16657.jpg', 'Macron and Merkel’s Brexit legacy isn’t safe yet', 'ক্রিস্টোফার ক্রেবস সাইবার সিকিউরিটি', '<p>mhm</p>', '<p>nhmhm</p>', 'kristofar-krebs-saibar-sikiuriti', 'macron-and-merkels-brexit-legacy-isnt-safe-yet', 5, 1, '2020-12-02 23:21:50', '2021-01-02 03:54:20');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `give_ads`
--

CREATE TABLE `give_ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `details_bn` text COLLATE utf8mb4_unicode_ci,
  `details_en` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `give_ads`
--

INSERT INTO `give_ads` (`id`, `details_bn`, `details_en`, `created_at`, `updated_at`) VALUES
(1, '<p><span style=\"color: rgb(51, 51, 51); font-family: SolaimanLipi; font-size: 18px;\">Jagonews24.com has provided real time news update, using utmost modern technology since 2014. It also provides archive of previous news, and printing facility of the specific news items.</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: SolaimanLipi; font-size: 18px;\"><br></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: SolaimanLipi; font-size: 18px;\">Jagonews24.com has provided real time news update, using utmost modern technology since 2014. It also provides archive of previous news, and printing facility of the specific news items.</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: SolaimanLipi; font-size: 18px;\"><br></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: SolaimanLipi; font-size: 18px;\">Jagonews24.com has provided real time news update, using utmost modern technology since 2014. It also provides archive of previous news, and printing facility of the specific news items.</span><span style=\"color: rgb(51, 51, 51); font-family: SolaimanLipi; font-size: 18px;\"><br></span><span style=\"color: rgb(51, 51, 51); font-family: SolaimanLipi; font-size: 18px;\"><br></span><br></p>', '<p style=\"font-family: Poppins, Helvetica, sans-serif;\"><span style=\"color: rgb(51, 51, 51); font-family: SolaimanLipi; font-size: 18px;\">Jagonews24.com has provided real time news update, using utmost modern technology since 2014. It also provides archive of previous news, and printing facility of the specific news items.</span></p><p style=\"font-family: Poppins, Helvetica, sans-serif;\"><span style=\"color: rgb(51, 51, 51); font-family: SolaimanLipi; font-size: 18px;\"><br></span></p><p style=\"font-family: Poppins, Helvetica, sans-serif;\"><span style=\"color: rgb(51, 51, 51); font-family: SolaimanLipi; font-size: 18px;\">Jagonews24.com has provided real time news update, using utmost modern technology since 2014. It also provides archive of previous news, and printing facility of the specific news items.</span></p><p style=\"font-family: Poppins, Helvetica, sans-serif;\"><span style=\"color: rgb(51, 51, 51); font-family: SolaimanLipi; font-size: 18px;\"><br></span></p><p style=\"font-family: Poppins, Helvetica, sans-serif;\"><span style=\"color: rgb(51, 51, 51); font-family: SolaimanLipi; font-size: 18px;\">Jagonews24.com has provided real time news update, using utmost modern technology since 2014. It also provides archive of previous news, and printing facility of the specific news items.</span><span style=\"color: rgb(51, 51, 51); font-family: SolaimanLipi; font-size: 18px;\"><br></span><span style=\"color: rgb(51, 51, 51); font-family: SolaimanLipi; font-size: 18px;\"><br></span></p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `image_galleries`
--

CREATE TABLE `image_galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_galleries`
--

INSERT INTO `image_galleries` (`id`, `title`, `image`, `description`, `created_at`, `updated_at`) VALUES
(5, 'ভিটামিন সি, ভিটামিন এ ও আয়রনে ভরপুর আপেল, যা যে কোনো বয়সেই খেতে বলেন চিকিৎসকরা।', 'ভিটামিন সি, ভিটামিন এ ও আয়রনে ভরপুর আপেল, যা যে কোনো বয়সেই খেতে বলেন চিকিৎসকরা।-2021-01-02-5ff04a52669e1.jpg', 'ভিটামিন সি, ভিটামিন এ ও আয়রনে ভরপুর আপেল, যা যে কোনো বয়সেই খেতে বলেন চিকিৎসকরা। আপেলের পুষ্টিগুণ এত যে, কথায় আছে এটি খেলে চিকিৎসকের প্রয়োজন হবে না।', '2020-11-17 00:42:52', '2021-01-02 04:26:26'),
(6, 'বঙ্গবন্ধুর ইতিহাস জানা যাবে সংসদের দক্ষিণ প্লাজায়', 'বঙ্গবন্ধুর ইতিহাস জানা যাবে সংসদের দক্ষিণ প্লাজায়-2021-01-02-5ff04a5c4d3e4.jpg', 'জাতীয় সংসদ ভবনের মাঠের দক্ষিণ-পশ্চিম পাশে মানিকমিয়া এভিনিউ ঘেঁষে ‘প্রদর্শনীতে বঙ্গবন্ধু’ নামে একটি প্যাভিলিয়নে গেলেই পাওয়া যাবে বঙ্গবন্ধুর সঙ্গে ‘বসবাসের’ সুযোগ!', '2020-11-17 00:44:32', '2021-01-02 04:26:36'),
(7, 'যে কারণে ভেঙে গেল শবনম ফারিয়ার সংসার', 'যে কারণে ভেঙে গেল শবনম ফারিয়ার সংসার-2021-01-02-5ff04a664306b.jpg', 'ছোটপর্দার তারকা অভিনেত্রী শবনম ফারিয়ার সংসার ভেঙে গেছে। সামাজিক যোগাযোগমাধ্যম ফেসবুকে নিজেই বিচ্ছেদের খবরটি জানিয়েছেন তিনি।', '2020-11-17 00:48:44', '2021-01-02 04:26:46'),
(9, 'এখন বিশ্বের অনেক দেশের স্বাস্থ্য সচেতন মানুষ ড্রাই ফ্রুট খাচ্ছেন। ড্রাই ফ্রুটসে রয়েছে অনেক উপকারিতা। এবার জেনে নিন ড্রাই ফ্রুটস যে কারণে খাবেন।', 'এখন বিশ্বের অনেক দেশের স্বাস্থ্য সচেতন মানুষ ড্রাই ফ্রুট খাচ্ছেন। ড্রাই ফ্রুটসে রয়েছে অনেক উপকারিতা। এবার জেনে নিন ড্রাই ফ্রুটস যে কারণে খাবেন।-2021-01-02-5ff04a6fd4811.jpg', 'সম্প্রতি এ প্রকাশিত একটি সমীক্ষা বলছে, প্রতিদিন ড্রাই ফ্রুটস খেলে কার্ডিওমেটাবলিক হেলথ ভালো থাকে, পাশাপাশি পেটও ভালো থাকে। তা ছাড়াও, ড্রাই ফ্রুটসে আখরোট, বাদাম, কিসমিস বা খেজুরের মতো উপাদান থাকে যা শরীরে অন্যান্য উপকারও করে।', '2020-11-17 01:18:53', '2021-01-02 04:26:56'),
(12, 'শীতকালে ত্বক মসৃণ ও উজ্জ্বল রাখার সহজ উপায়', 'শীতকালে ত্বক মসৃণ ও উজ্জ্বল রাখার সহজ উপায়-2021-01-02-5ff04a7911d21.jpg', 'ছোটপর্দার তারকা অভিনেত্রী শবনম ফারিয়ার সংসার ভেঙে গেছে। সামাজিক যোগাযোগমাধ্যম ফেসবুকে নিজেই বিচ্ছেদের খবরটি জানিয়েছেন তিনি।', '2020-11-17 01:21:34', '2021-01-02 04:27:05'),
(17, 'One of the major point of the Storage class in Laravel', 'One of the major point of the Storage class in Laravel-2021-01-02-5ff04ad9780f3.jpg', 'One of the major point of the Storage class in Laravel is to be able to switch easily between local storage, amazon s3, sftp or whatever.', '2020-11-17 04:30:12', '2021-01-02 04:28:41');

-- --------------------------------------------------------

--
-- Table structure for table `job_news`
--

CREATE TABLE `job_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_bangla` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_english` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_bn` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `writer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_date` date NOT NULL,
  `view` int(3) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_news`
--

INSERT INTO `job_news` (`id`, `title_bn`, `title_en`, `slug_bangla`, `slug_english`, `details_bn`, `details_en`, `writer_id`, `image`, `published_date`, `view`, `status`, `created_at`, `updated_at`) VALUES
(6, 'আড়ংয়ে আউটলেট ম্যানেজার পদে চাকরি', 'আড়ংয়ে আউটলেট ম্যানেজার পদে চাকরি', 'arngye-autlet-mzanejar-pde-cakri', 'arngye-autlet-mzanejar-pde-cakri', 'পোলি শক্তি ফাউন্ডেশন লিমিটেড (পিএসএফএল) একটি চাকরির পোর্টাল চাকরি.কম-এ এই সংস্থার জন্য অফিসার নিয়োগ (মানব সম্পদ ও প্রশাসন) সম্পর্কিত একটি বিজ্ঞাপন প্রকাশ করেছে। তবে তারা কিছু অদ্ভুত শর্ত দিয়েছে যেমন প্রার্থীদের অবশ্যই চাকরিতে যোগদানের আগে আবেদনকারীদের স্বাক্ষরিত একটি ফাঁকা চেকের সাথে সমস্ত একাডেমিক শংসাপত্রের মূল কপি জমা দিতে হবে।\r\n\r\nইনফ্রাস্ট্রাকচার ডেভলপমেন্ট কোম্পানি লিমিটেড (আইডিসিএল) এর আর্থিক সহায়তায় এই সংস্থাটিকে দেশের গ্রামীণ অঞ্চলে সৌরবিদ্যুত স্থাপনের দায়িত্ব দেওয়া হয়েছে। তারা দুটি পদের জন্য বিজ্ঞাপন দিয়েছে তবে প্রাথমিক বেতন স্কেল এবং পদগুলির জন্য শিক্ষাগত যোগ্যতার উল্লেখ করেনি। তবে নিয়োগপ্রাপ্ত কর্মকর্তাদের ছয় মাসের পরে নিশ্চিতকরণের সময় বেতন হিসাবে 13,000 টাকা দেওয়া হবে।', 'Polli Shakti Foundation Limited (PSFL) has published an advertisement on officer recruitment (Human Resource and Administration) for the company in a Bangladeshi job portal Chakri.com. But they have given some weird condition like candidates must submit their original copies of all academic certificates along with a blank cheque signed by the applicants before joining the job.\r\n\r\nThe company has been assigned to set up solar power in the country’s rural area in financial support with Infrastructure Development Company Limited (IDCOL). They advertised for two posts but didn’t mention initial salary scale and educational qualification for the posts. However, the recruited officers will be paid Tk 13,000 as salary while getting confirmation after six months.', 3, 'arngye-autlet-mzanejar-pde-cakri-2021-01-02-5ff04d8727d58.jpg', '2020-12-28', 0, 1, '2020-11-24 02:10:30', '2021-01-02 04:40:07'),
(7, 'আরও বাংলাদেশী কর্মী নিয়োগের জন্য সৌদি আরবে কাজের মেলা', 'আরও বাংলাদেশী কর্মী নিয়োগের জন্য সৌদি আরবে কাজের মেলা', 'aroo-bangladesee-krmee-nizoger-jnz-soudi-arbe-kajer-mela', 'aroo-bangladesee-krmee-nizoger-jnz-soudi-arbe-kajer-mela', 'সৌদি নিয়োগকারী সংস্থাগুলিকে আকৃষ্ট করতে রিয়াদে বাংলাদেশ দূতাবাস যথাক্রমে ৩০ জানুয়ারি এবং ১ ফেব্রুয়ারি রিয়াদ ও জেদ্দায় চাকরী মেলা করার ব্যাপক ব্যবস্থা করছে।\r\n\r\n\r\n\r\nআরব নিউজকে বাংলাদেশের রাষ্ট্রদূত গোলাম মোশি আরব নিউজকে বলেছেন, রিয়াদ ও জেদ্দায় কর্মসূচিতে বাংলাদেশি কর্মকর্তা এবং স্থানীয় চাকরি এজেন্টদের মধ্যে সেমিনার, কর্মশালা এবং বি-টু-বি বৈঠক অন্তর্ভুক্ত থাকবে।\r\n\r\n\r\n\r\nতিনি বলেন, উভয় পক্ষের মধ্যকার মিথস্ক্রিয়া দু\'দেশে শ্রম বিধি ও নিয়োগ প্রকল্প সম্পর্কে সচেতনতা বাড়িয়ে তুলবে।\r\n\r\n\r\n\r\nরাষ্ট্রদূত বলেন, রিয়াদ কাজের মেলায় প্রায় শতাধিক স্থানীয় সংস্থা অংশ নেবে, এতে দুই দেশের শ্রম-সংশ্লিষ্ট সংস্থার উর্ধ্বতন সরকারী কর্মকর্তারা অংশ নেবেন।\r\n\r\n\r\n\r\nরাষ্ট্রদূত বলেন, \"হাসপাতাল, হোটেল, রক্ষণাবেক্ষণ এবং নির্মাণ খাতে আমাদের কর্মীদের জন্য প্রায় ৫০,০০০ কর্মসংস্থান ভিসা রয়েছে।\"\r\n\r\n\r\n\r\nতিনি বলেন, \"আমরা একমাসে প্রায় ৪,০০০ দাসীকে সৌদি আরবে প্রেরণ করি,\" তিনি উল্লেখ করে যে কিংডমে কর্মরত মোটামুটি বাংলাদেশী দাসীর সংখ্যা বেড়ে দাঁড়িয়েছে ১০৩৩,০০০।', 'The Bangladesh Embassy in Riyadh is making extensive arrangements to hold job fairs on Jan. 30 and Feb. 1 in Riyadh and Jeddah respectively to attract Saudi recruiting companies. The programs in Riyadh and Jeddah will include seminars, workshops and B-to-B meetings between Bangladeshi officials and local job agents, Bangladesh Ambassador Golam Moshi told Arab News. The interaction between the two parties will raise awareness about labor regulations and recruitment schemes in the two countries, he said. More than 100 local companies will take part in the Riyadh job fair, which will be attended by senior government officials from labor-related organizations from the two countries, said the ambassador. “We have some 50,000 employment visas for our workers in the hospital, hotel, maintenance and construction sectors,” said the envoy. “We send around 4,000 maids a month to Saudi Arabia,” he said, pointing out that the total number of Bangladeshi maids working in the Kingdom has risen to 103,000.', 3, 'aroo-bangladesee-krmee-nizoger-jnz-soudi-arbe-kajer-mela-2021-01-02-5ff04d9c710f0.jpg', '2020-12-28', 0, 1, '2020-11-24 02:11:47', '2021-01-02 04:40:28'),
(8, '২০ হাজার টাকা বেতনের সরকারি চাকরি', 'Government job with a salary of 20 thousand rupees', '20-hajar-taka-betner-srkari-cakri', 'government-job-with-a-salary-of-20-thousand-rupees', 'পিরোজপুর জেলা প্রশাসকের কার্যালয়ে ০৪টি পদে জনবল নিয়োগ দেওয়া হবে। আগ্রহীরা আগামী ২৪ ডিসেম্বর পর্যন্ত আবেদন করতে পারবেন।', 'Pirojpur Deputy Commissioner\'s Office will be recruited for 04 posts. Those interested can apply till December 24.', 3, '20-hajar-taka-betner-srkari-cakri-2021-01-02-5ff04da65c4a1.jpg', '2020-12-28', 0, 1, '2020-11-25 03:44:18', '2021-01-02 04:40:38'),
(9, 'বিমান বাহিনীতে অফিসার ক্যাডেট পদে চাকরি', 'বিমান বাহিনীতে অফিসার ক্যাডেট পদে চাকরি', 'biman-bahineete-ofisar-kzadet-pde-cakri', 'biman-bahineete-ofisar-kzadet-pde-cakri', 'বাংলাদেশ বিমান বাহিনীর ৮৪ বিএএফএ কোর্সে ‘অফিসার ক্যাডেট’ পদে জনবল নিয়োগ দেওয়া হবে। আগ্রহীরা আগামী ০৮ মার্চ পর্যন্ত নির্ধারিত পরীক্ষা কেন্দ্রে যোগ দিতে পারবেন।\r\n\r\nপ্রতিষ্ঠানের নাম: বাংলাদেশ বিমান বাহিনী\r\nকোর্সের নাম: ৮৪ বিএএফএ কোর্স', 'Manpower will be recruited for the post of \'Officer Cadet\' in 64 BAFA courses of Bangladesh Air Force. Those interested can join the scheduled examination center till March 08.', 3, 'biman-bahineete-ofisar-kzadet-pde-cakri-2021-01-02-5ff04db3aedfb.jpg', '2020-12-28', 4, 1, '2020-11-25 03:53:46', '2021-01-02 05:38:00'),
(10, 'জুনিয়র এক্সিকিউটিভ নিচ্ছে আকিজ ফুড', 'জুনিয়র এক্সিকিউটিভ নিচ্ছে আকিজ ফুড', 'juniyr-eksikiutiv-nicche-akij-fud', 'juniyr-eksikiutiv-nicche-akij-fud', 'বহুজাতিক শিল্প প্রতিষ্ঠান আকিজ ফুড অ্যান্ড বেভারেজ লিমিটেডে ‘জুনিয়র এক্সিকিউটিভ’ পদে জনবল নিয়োগ দেওয়া হবে। আগ্রহীরা আগামী ৩০ নভেম্বর পর্যন্ত আবেদন করতে পারবেন।\r\n\r\nপ্রতিষ্ঠানের নাম: আকিজ ফুড অ্যান্ড বেভারেজ লিমিটেড\r\nবিভাগের নাম: ফিন্যান্স অ্যান্ড অ্যাকাউন্টস', 'Manpower will be recruited for the post of \'Junior Executive\' in the multinational industrial company Akij Food and Beverages Limited. Those interested can apply till November 30.\r\n\r\nCompany Name: Akij Food and Beverage Limited\r\nDepartment Name: Finance and Accounts', 3, 'juniyr-eksikiutiv-nicche-akij-fud-2021-01-02-5ff04dcf55598.jpg', '2020-12-28', 0, 1, '2020-11-25 03:55:23', '2021-01-02 04:41:19');

-- --------------------------------------------------------

--
-- Table structure for table `lifestyles`
--

CREATE TABLE `lifestyles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_bangla` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_english` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_bn` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `writer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` int(3) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lifestyles`
--

INSERT INTO `lifestyles` (`id`, `title_bn`, `title_en`, `slug_bangla`, `slug_english`, `details_bn`, `details_en`, `writer_id`, `image`, `view`, `status`, `created_at`, `updated_at`) VALUES
(1, 'মানসিক চাপ কমাতে যা খাবেন', 'Eat whatever to reduce stress', 'mansik-cap-kmate-za-khaben', 'eat-whatever-to-reduce-stress', 'মানসিক চাপ থেকে মুক্ত নন কেউ। কম হোক কিংবা বেশি, মানসিক চাপ আসবেই। অনেকে পাত্তা না দিয়ে এড়িয়ে যান, অনেকে আবার উদ্বিগ্ন হন নিজের এই সমস্যা নিয়ে। হাজারটা কাজের মাঝেও কিছু দুশ্চিন্তা আপনাকে পেয়ে বসতে পারে। সেখান থেকে আপনি আরও বেশি বিষণ্নতা, হতাশা কিংবা অস্থিরতায় ভুগতে পারেন। এটি এমন এক সমস্যা, যা এড়িয়ে গেলে আরও মারাত্মক আকারে দেখা দিতে পারে। প্রতিদিনের খাবার কিছু পরিবর্তন এনে এই মানসিক চাপ অনেকটাই নিয়ন্ত্রণে রাখা সম্ভব। তবে তা কোনো দুর্লভ খাবার নয়, বরং সবার ঘরেই থাকে এমনকিছু খাবার যোগ করতে হবে খাবারের তালিকায়। আর তাতেই মিলবে মানসিক চাপ থেকে মুক্তি। এমনটাই জানাচ্ছে ইন্ডিয়ান এক্সপ্রেস।', 'No one is free from stress. More or less, stress will come. Many people ignore it, many people worry about their own problems. In the midst of thousands of jobs, some worries can get you down. From there you can suffer from more depression, frustration or instability. This is a problem that, if avoided, can lead to more serious forms. It is possible to control this stress by making some changes in the daily diet. However, it is not a rare food, but everyone has at home, you have to add some food to the food list. And that will match the stress. That is what the Indian Express reports.', 15, 'mansik-cap-kmate-za-khaben-2020-12-28-5fe9b78a44d16.png', NULL, 1, '2020-12-28 04:46:34', '2020-12-28 04:46:34'),
(2, 'নিজেকে ভালো রাখতে যা করবেন', 'Do whatever it takes to keep yourself well', 'nijeke-valo-rakhte-za-krben', 'do-whatever-it-takes-to-keep-yourself-well', 'একটু লক্ষ করুন তো, সবার খেয়াল কম-বেশি রাখলেও নিজের প্রতি আপনি কতটা যত্নবান? তাই কে কী বললো তা না ভেবে বরং নিজের প্রিয় কাজটিই করুন।\r\nবিস্তারিত : https://www.jagonews24.com/lifestyle/news/590550', 'Notice how much you care for yourself, even if everyone cares more or less. So don\'t think about who said what, but do your favorite thing.\r\nDetails: https://www.jagonews24.com/lifestyle/news/590550', 15, 'nijeke-valo-rakhte-za-krben-2020-12-28-5fe9b7f665b3c.png', NULL, 1, '2020-12-28 04:48:22', '2020-12-28 04:58:10'),
(3, 'যে ৭টি অবস্থায় হ্যান্ড স্যানিটাইজার ব্যবহার করবেন না', 'যে অবস্থায় ফাইলটি হ্যান্ড স্যানিটাইজার ব্যবহার করবেন না', 'ze-7ti-obsthaz-hzand-szanitaijar-bzbhar-krben-na', 'ze-obsthaz-failti-hzand-szanitaijar-bzbhar-krben-na', 'সংক্রমণের ভয়ে আমরা প্রায় সবাই বারেবারে হাত ধোয়া এবং হ্যান্ড স্যানিটাইজার ব্যবহারে অভ্যস্ত হয়ে উঠেছি। যদিও হাতের জীবাণু দূর করতে হ্যান্ড স্যানিটাইজার বেশ কার্যকরী, তবে এর অত্যধিক ব্যবহার ক্ষতির কারণ হতে পারে। অতিরিক্ত হ্যান্ড স্যানিটাইজার ব্যবহার করলে তা ভালো ব্যাকটেরিয়াগুলোকে মেরে ফেলতে পারে যা আমাদের ত্বক এবং শরীর সুস্থ রাখতে সাহায্য করে। আজকে আলোচনার বিষয়ঃ যে ৭টি অবস্থায় হ্যান্ড স্যানিটাইজার ব্যবহার করবেন না |', 'Almost all of us have become accustomed to frequent hand washing and the use of hand sanitizers for fear of infection. Although hand sanitizers are quite effective in removing hand germs, excessive use of them can cause harm. Using extra hand sanitizer can kill the good bacteria that help keep our skin and body healthy. Today\'s topic to discuss: Don\'t use hand sanitizer in 7 situations', 15, 'ze-7ti-obsthaz-hzand-szanitaijar-bzbhar-krben-na-2020-12-28-5fe9ba2e989b4.png', NULL, 1, '2020-12-28 04:57:50', '2020-12-29 05:59:52'),
(4, 'ঝাড়বাতি দিয়ে সহজেই ঘর সাজাবেন যেভাবে', 'How to easily decorate the house with chandeliers', 'jhadbati-diye-shjei-ghr-sajaben-zevabe', 'how-to-easily-decorate-the-house-with-chandeliers', 'অতীতের আভিজাত্য হচ্ছে ঝাড়বাতি। বাঙালি তার ঘর সাজাতে ঝাড়বাতি বেছে নিতে ভুল করে না। তাই ঐতিহ্যের এ আভিজাত্য দিয়ে সাজাতে পারেন আপনার অন্দরমহলও। ঝাড়বাতির আলো আপনার ঘরকে পাল্টে দেবে। ঘরকে আরও মোহনীয় করে তুলবে। তাই সহজেই ঝাড়বাতি দিয়ে সাজিয়ে নিন ঘরের রূপ।\r\n\r\n১. ক্রিস্টাল বা স্ফটিকের মতো ঝাড়বাতির মধ্যে রাজবাড়ির আভিজাত্য আছে। এ ধরনের ঝাড়বাতি বড় হলঘরে লাগালে সৌন্দর্য বেড়ে যায়। বিভিন্ন আকার ও আয়তন অনুযায়ী পাওয়া যাবে। তাই ঘরের আকার ও নিজের পছন্দ অনুযায়ী কিনতে হবে।', 'The aristocracy of the past is the chandelier. Bengalis do not make the mistake of choosing chandeliers to decorate their house. So you can decorate your inner palace with this aristocracy of tradition. Chandelier light will transform your house. Make the house more alluring. So easily decorate the look of the house with chandeliers.\r\n\r\n1. There is nobility of the palace in chandeliers like crystals or crystals. When such chandeliers are placed in a large hall, the beauty is enhanced. Available in different sizes and volumes. So you have to buy according to the size of the house and your own choice.', 15, 'jhadbati-diye-shjei-ghr-sajaben-zevabe-2020-12-28-5fe9babdca430.png', NULL, 1, '2020-12-28 05:00:14', '2020-12-28 05:00:14'),
(5, 'মনের ওপর কোন রঙের কেমন প্রভাব?', 'What effect does any color have on the mind?', 'mner-oopr-kon-rnger-kemn-prvab', 'what-effect-does-any-color-have-on-the-mind', 'শরীর ও মন মিলেই আমাদের সমগ্র সত্তা। সুস্থ শরীর ছাড়া সুন্দর মন, সুস্থ মন ছাড়া সুস্থ শরীর কোনোটাই সম্ভব নয়। বিভিন্ন ধরনের শারীরিক অবস্থা যেমন মানসিক স্বাস্থ্যের ওপর প্রভাব বিস্তার করে; তেমনই নানাবিধ মানসিক অস্থিরতাও শারীরিক সুস্থতার ওপর আঘাত হানে। আধুনিক যান্ত্রিক জীবনে মানসিক অবসাদ, বিষণ্নতা, হতাশা প্রভৃতি যেন নিত্যসঙ্গী। আমরা শারীরিক সুস্থতা নিয়ে যতটা উদ্বিগ্ন থাকি; মনের সুস্থতার ব্যাপারে ঠিক ততটাই উদাসীন। মানসিক স্বাস্থ্য কিন্তু কোনো অংশেই শারীরিক স্বাস্থ্যের চেয়ে কম গুরুত্বপূর্ণ নয়। পরিপূর্ণ স্বাস্থ্যসম্মত জীবনযাপনের জন্য শারীরিক ও মানসিক স্বাস্থ্যের সংযোগ আবশ্যক। একটিকে অবহেলা করে কখনোই সামগ্রিক সুস্থতা অর্জন করা সম্ভব নয়।\r\n\r\nদীর্ঘদিন ধরেই মানসিক অবস্থার ওপর রঙের প্রভাব সম্পর্কে বহুমুখী গবেষণা ও পরীক্ষা-নিরীক্ষা চলছে। প্রাচীনকাল থেকেই মানুষ বিভিন্ন রংকে যোগাযোগ ও বিভিন্ন ধরনের সংকেত হিসেবে ব্যবহার করে আসছে। কিছু কিছু গবেষণায় উঠে এসেছে, রং মানসিক অবস্থার নাটকীয় পরিবর্তন ঘটাতে সক্ষম। পাশাপাশি রং মানুষের আবেগ, অনুভূতি, সিদ্ধান্ত এবং বোধশক্তিতেও বিরাট পরিবর্তন নিয়ে আসে। এমনকি কিছু রং রয়েছে, যা রক্তচাপ ও শরীরবৃত্তীয় বিপাক বৃদ্ধিতেও ভূমিকা পালন করে। বিশিষ্ট চিত্রকর পাবলো পিকাসোর মতে, আবেগের পরিবর্তনকে অনুসরণ করাই রঙের বৈশিষ্ট্য। রং সম্পর্কে অনুভূতিগুলো প্রায়ই ব্যক্তিগত এবং তা নিজ নিজ অভিজ্ঞতা বা সংস্কৃতির সাথে জড়িত। যেমন- পৃথিবীতে সবচেয়ে বেশি সাদা রঙের ব্যবহার দেখা যায় পশ্চিমা দেশগুলোয়। পশ্চিমাদের বিশ্বাস, এটি তাদের বিশুদ্ধতা ও সরলতার প্রতিনিধিত্ব করে। কিন্তু প্রাচ্যের দেশগুলোয় সাদা একসময় শোকের প্রতীক হিসেবে বিবেচনা করা হতো।', 'Body and mind are our whole being. A beautiful mind without a healthy body, a healthy body without a healthy mind is not possible. Different types of physical conditions affect such as mental health; Similarly, various mental instability also affects the physical well-being. In modern mechanical life, mental exhaustion, depression, frustration, etc. seem to be a constant companion. As much as we care about physical well-being; Just as indifferent to mental well-being. Mental health is no less important than physical health. A combination of physical and mental health is essential for a healthy life. Overall well-being can never be achieved by neglecting one.\r\n\r\nMultiple studies and experiments on the effects of color on mood have been going on for a long time. Since ancient times people have been using different colors as communication and different types of signals. As some studies have shown, color is capable of causing dramatic changes in mood. As well as color, it also brings great changes in people\'s emotions, feelings, decisions and perceptions. There are even some dyes, which also play a role in increasing blood pressure and physiological metabolism. According to the famous painter Pablo Picasso, the characteristic of color is to follow the change of emotion. Feelings about color are often personal and involve their own experience or culture. For example, the most white color in the world is seen in western countries. Westerners believe, it represents their purity and simplicity. But in the East, white was once considered a symbol of mourning.', 15, 'mner-oopr-kon-rnger-kemn-prvab-2020-12-28-5fe9bbc02b98c.png', NULL, 1, '2020-12-28 05:04:32', '2020-12-28 05:04:32'),
(6, 'যেসব আলু শরীরের জন্য ক্ষতিকর', 'Potatoes that are harmful to the body', 'zesb-alu-sreerer-jnz-kshtikr', 'potatoes-that-are-harmful-to-the-body', 'আমাদের প্রতিদিনের খাদ্যতালিকায় যেন আলু না থাকলেই নয়। আলু যেমন সবজি হিসাবে মাছ-মাংস বা অন্যান্য তরকারির সাথে গ্রহণ করা হয়; তেমনই ফ্রেঞ্চ ফ্রাই, ওয়েজেস, পটেটো চিপস্ ইত্যাদি বিভিন্ন মুখরোচক প্রক্রিয়াজাত খাবার তৈরিতেও আলু মুখ্য উপাদান হিসাবে ব্যবহৃত হয়।\r\n\r\nআলু বিশ্বে চাষযোগ্য এক ভোজ্য উদ্ভিদ কন্দ, যার বৈজ্ঞানিক পরিচিতি ‘সোলানাম টিউবারোসাম’ নামে। দক্ষিণ আমেরিকা মহাদেশের আন্দিজ পর্বতমালার পাদদেশ থেকে প্রথম উদ্ভুত এ সবজি এখন বিশ্বব্যাপী প্রায় ১৬০টি দেশে চাষ করা হয়।', 'Not without potatoes in our daily diet. Potatoes are taken with fish-meat or other vegetables such as vegetables; Potatoes are also used as a main ingredient in French fries, wedges, potato chips and other delicacies.\r\n\r\nPotato is one of the most cultivable edible plants in the world. Originally from the foothills of the Andes Mountains in South America, the vegetable is now grown in about 160 countries around the world', 15, 'zesb-alu-sreerer-jnz-kshtikr-2020-12-28-5fe9bc3650c81.png', NULL, 1, '2020-12-28 05:06:30', '2020-12-30 04:46:09'),
(7, 'লাল-সবুজের সাজে বিজয়ের আনন্দ', 'The joy of victory in red and green', 'lal-sbujer-saje-bijyer-annd', 'the-joy-of-victory-in-red-and-green', 'বিজয় মানেই আনন্দ। ডিসেম্বর বিজয়ের মাস। ১৬ ডিসেম্বর আমরা একটি স্বাধীন দেশ পেয়েছি। এ বিজয়ের আনন্দ অপরিসীম। বিজয়ের এ আনন্দকে ধারণ করি মনে-প্রাণে। আনন্দের ধারা বয়ে চলে আমাদের পোশাকে। বিজয়ের উৎসবে ভিন্নভাবে সাজে গোটা দেশ। আমাদের ফ্যাশনেও আসে পরিবর্তন।\r\n\r\nডিসেম্বর এলেই শুরু হয় লাল-সবুজের সাজ। জীবনযাপনে জড়িয়ে যায় আমাদের প্রিয় রঙ। জাতীয় পতাকার রঙে রঙিন হয়ে ওঠে মানবদেহ। রাজপথে, ভবনে, পার্কে, অনুষ্ঠানে প্রায় মানুষই লাল-সবুজের পোশাক পরেন। সে ধারণাকে পুঁজি করেই প্রস্তুতি নেয় দেশীয় ফ্যাশন হাউসগুলো।', 'Victory means joy. December is the month of victory. On December 16 we got an independent country. The joy of this victory is immense. I hold this joy of victory in my heart and soul. The flow of joy flows in our clothes. The whole country is decorated differently in the celebration of victory. Changes also come in our fashion.\r\n\r\nAs soon as December came, the red-green outfit started. Our favorite color is involved in living. The human body became colored with the colors of the national flag. In the streets, buildings, parks, ceremonies, almost all people wear red-green clothes. Indigenous fashion houses prepare by capitalizing on that idea.', 15, 'lal-sbujer-saje-bijyer-annd-2020-12-28-5fe9bc997440f.png', NULL, 1, '2020-12-28 05:08:09', '2020-12-28 05:08:09');

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
(26, '2020_11_04_063502_create_social_pages_table', 1),
(27, '2020_11_15_102024_create_advertisements_table', 2),
(28, '2020_11_16_104748_create_elections_table', 3),
(29, '2020_11_16_110559_create_elections_table', 4),
(30, '2020_11_16_111303_create_bulatins_table', 5),
(31, '2020_11_16_124053_create_abouts_table', 6),
(32, '2020_11_16_125054_create_contacts_table', 7),
(33, '2020_11_16_125137_create_our_says_table', 7),
(34, '2020_11_16_125241_create_privacies_table', 7),
(35, '2020_11_16_125315_create_notices_table', 7),
(36, '2020_11_17_060127_create_image_galleries_table', 8),
(37, '2020_11_17_073905_create_job_news_table', 9),
(38, '2020_11_17_084435_create_job_news_table', 10),
(39, '2020_11_18_050348_create_terms_table', 11),
(40, '2020_11_18_051719_create_socials_table', 12),
(41, '2020_11_18_054544_create_social_pages_table', 13),
(42, '2020_11_18_060630_create_non_profits_table', 14),
(43, '2020_11_18_074311_create_elections_table', 15),
(44, '2020_11_25_100843_create_opinions_table', 16),
(45, '2020_11_26_064915_create_pages_table', 17),
(46, '2020_11_26_075314_create_subscribes_table', 18),
(47, '2020_11_29_115356_create_prayers_table', 18),
(48, '2020_12_02_063539_create_subscribes_table', 19),
(49, '2020_12_02_072736_create_subscribes_table', 20),
(50, '2020_12_03_110328_create_covid19s_table', 21),
(51, '2020_12_05_060220_create_bd_covid19s_table', 22),
(52, '2020_12_05_111419_create_lifestyles_table', 22),
(53, '2020_12_05_115529_create_abroads_table', 22),
(54, '2020_12_06_062858_create_websites_table', 22),
(55, '2020_12_29_080641_create_offon_table', 23),
(56, '2020_12_30_110346_create_give_ads_table', 24),
(57, '2020_12_31_045029_create_contact_msg_table', 25),
(58, '2020_12_31_045356_create_writer_application_table', 26);

-- --------------------------------------------------------

--
-- Table structure for table `non_profits`
--

CREATE TABLE `non_profits` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_bn` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(9,3) NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `non_profits`
--

INSERT INTO `non_profits` (`id`, `title_bn`, `title_en`, `description_bn`, `description_en`, `image`, `amount`, `end_date`, `created_at`, `updated_at`) VALUES
(2, 'জোটে না ভাত-কাপড়, অভাবে স্ত্রীর ওড়না পরে লজ্জা নিবারণ', 'জোটে না ভাত-কাপড়, অভাবে স্ত্রীর ওড়না পরে লজ্জা নিবারণ', '<p><span style=\"color: rgb(51, 51, 51); font-family: roboto, sans-serif; font-size: 14px; white-space: pre-wrap;\">যতদিন শরীরে শক্তি ছিল, কাজ করেই সংসার চালাতেন মো. সুলতান। তখন ভালোই চলছিল সুলতান-সকিনা দম্পতির সংসার। এখন বয়সের ভারে কাজ করতে পারেন না তাই অভাব হয়েছে নিত্যসঙ্গী। দুই ছেলেও খোঁজ-খবর নেন না। থাকেন অন্যের জমিতে তোলা ভাঙা ঘরে। জোটে না দুবেলা খাবার। ভিক্ষা করে লোকের বাড়ি থেকে চেয়ে আনা পান্তা ভাত শুকিয়ে চাল হলে সেগুলো ফের রান্না করে খান। এভাবেই লোকের দ্বারে দ্বারে ভিক্ষা করে খাবার যোগাড় করেন সুলতানের স্ত্রী সকিনা বেগম। আক্ষেপের সুরে এই বৃদ্ধ বলছিলেন, ‘দুই বেলা ভাত জোটে না, তার মধ্যে লুঙ্গি? টাকার অভাবে বৌয়ের ওড়না পরে থাকি।’ ৯৫ বছরের বৃদ্ধ সুলতান এলাকায় সুলতান ডাক্তার নামে পরিচিত। পটুয়াখালী পৌরসভার ১ নম্বর ওয়ার্ডের ১ম লেন বোহালগাছিয়া এলাকায় সত্তরোর্ধ্ব স্ত্রী সকিনা বেগমকে নিয়ে থাকেন তিনি। এই দম্পতির দুই ছেলে মোস্তফা ও মোশাররফ। তারা যে যার মতো থাকেন। বাবা-মায়ের খোঁজ নেন না। সুলতান ডাক্তার বলেন, ‘করোনার কারণে তিন মাস ঘর থেকে নামতে পারি নাই। তখন আল্লাহ চালাইছে। মানুষ কিছু কিছু সহায়তা দিয়েছে। এখন মানুষের কাছে ভিক্ষার জন্য গেলে দুই টাকা দিলে এক টাকা ফেরত চায়। কাজ করতে পারি না। কিন্তু প্রতিদিন ৪০ টাকার ঔষধ খাওয়া লাগে। ঔষধ না খেলে বিছানা থেকে ওঠা দায়। বৌকে খেটে খাওয়ানোর কথা ছিলো আমার, কিন্তু এখন বৌ আমাকে ভিক্ষা করে খাওয়ায়।’</span><br></p>', '<p><span style=\"color: rgb(51, 51, 51); font-family: roboto, sans-serif; font-size: 14px; white-space: pre-wrap;\">যতদিন শরীরে শক্তি ছিল, কাজ করেই সংসার চালাতেন মো. সুলতান। তখন ভালোই চলছিল সুলতান-সকিনা দম্পতির সংসার। এখন বয়সের ভারে কাজ করতে পারেন না তাই অভাব হয়েছে নিত্যসঙ্গী। দুই ছেলেও খোঁজ-খবর নেন না। থাকেন অন্যের জমিতে তোলা ভাঙা ঘরে। জোটে না দুবেলা খাবার। ভিক্ষা করে লোকের বাড়ি থেকে চেয়ে আনা পান্তা ভাত শুকিয়ে চাল হলে সেগুলো ফের রান্না করে খান। এভাবেই লোকের দ্বারে দ্বারে ভিক্ষা করে খাবার যোগাড় করেন সুলতানের স্ত্রী সকিনা বেগম। আক্ষেপের সুরে এই বৃদ্ধ বলছিলেন, ‘দুই বেলা ভাত জোটে না, তার মধ্যে লুঙ্গি? টাকার অভাবে বৌয়ের ওড়না পরে থাকি।’ ৯৫ বছরের বৃদ্ধ সুলতান এলাকায় সুলতান ডাক্তার নামে পরিচিত। পটুয়াখালী পৌরসভার ১ নম্বর ওয়ার্ডের ১ম লেন বোহালগাছিয়া এলাকায় সত্তরোর্ধ্ব স্ত্রী সকিনা বেগমকে নিয়ে থাকেন তিনি। এই দম্পতির দুই ছেলে মোস্তফা ও মোশাররফ। তারা যে যার মতো থাকেন। বাবা-মায়ের খোঁজ নেন না। সুলতান ডাক্তার বলেন, ‘করোনার কারণে তিন মাস ঘর থেকে নামতে পারি নাই। তখন আল্লাহ চালাইছে। মানুষ কিছু কিছু সহায়তা দিয়েছে। এখন মানুষের কাছে ভিক্ষার জন্য গেলে দুই টাকা দিলে এক টাকা ফেরত চায়। কাজ করতে পারি না। কিন্তু প্রতিদিন ৪০ টাকার ঔষধ খাওয়া লাগে। ঔষধ না খেলে বিছানা থেকে ওঠা দায়। বৌকে খেটে খাওয়ানোর কথা ছিলো আমার, কিন্তু এখন বৌ আমাকে ভিক্ষা করে খাওয়ায়।’</span><br></p>', 'জোটে না ভাত-কাপড়, অভাবে স্ত্রীর ওড়না পরে লজ্জা নিবারণ-2020-12-30-5fec4830c23b8.jpg', '20000.000', '2020-11-18', '2020-11-18 01:05:40', '2020-12-30 03:29:37'),
(3, 'যতদিন শরীরে শক্তি ছিল, কাজ করেই সংসার চালাতেন মো. সুলতান', 'যতদিন শরীরে শক্তি ছিল, কাজ করেই সংসার চালাতেন মো. সুলতান', '<p><span style=\"color: rgb(51, 51, 51); font-family: roboto, sans-serif; font-size: 14px; white-space: pre-wrap;\">যতদিন শরীরে শক্তি ছিল, কাজ করেই সংসার চালাতেন মো. সুলতান। তখন ভালোই চলছিল সুলতান-সকিনা দম্পতির সংসার। এখন বয়সের ভারে কাজ করতে পারেন না তাই অভাব হয়েছে নিত্যসঙ্গী। দুই ছেলেও খোঁজ-খবর নেন না। থাকেন অন্যের জমিতে তোলা ভাঙা ঘরে। জোটে না দুবেলা খাবার। ভিক্ষা করে লোকের বাড়ি থেকে চেয়ে আনা পান্তা ভাত শুকিয়ে চাল হলে সেগুলো ফের রান্না করে খান। এভাবেই লোকের দ্বারে দ্বারে ভিক্ষা করে খাবার যোগাড় করেন সুলতানের স্ত্রী সকিনা বেগম। আক্ষেপের সুরে এই বৃদ্ধ বলছিলেন, ‘দুই বেলা ভাত জোটে না, তার মধ্যে লুঙ্গি? টাকার অভাবে বৌয়ের ওড়না পরে থাকি।’ ৯৫ বছরের বৃদ্ধ সুলতান এলাকায় সুলতান ডাক্তার নামে পরিচিত। পটুয়াখালী পৌরসভার ১ নম্বর ওয়ার্ডের ১ম লেন বোহালগাছিয়া এলাকায় সত্তরোর্ধ্ব স্ত্রী সকিনা বেগমকে নিয়ে থাকেন তিনি। এই দম্পতির দুই ছেলে মোস্তফা ও মোশাররফ। তারা যে যার মতো থাকেন। বাবা-মায়ের খোঁজ নেন না। সুলতান ডাক্তার বলেন, ‘করোনার কারণে তিন মাস ঘর থেকে নামতে পারি নাই। তখন আল্লাহ চালাইছে। মানুষ কিছু কিছু সহায়তা দিয়েছে। এখন মানুষের কাছে ভিক্ষার জন্য গেলে দুই টাকা দিলে এক টাকা ফেরত চায়। কাজ করতে পারি না। কিন্তু প্রতিদিন ৪০ টাকার ঔষধ খাওয়া লাগে। ঔষধ না খেলে বিছানা থেকে ওঠা দায়। বৌকে খেটে খাওয়ানোর কথা ছিলো আমার, কিন্তু এখন বৌ আমাকে ভিক্ষা করে খাওয়ায়।’</span><br></p>', '<p><span style=\"color: rgb(51, 51, 51); font-family: roboto, sans-serif; font-size: 14px; white-space: pre-wrap;\">যতদিন শরীরে শক্তি ছিল, কাজ করেই সংসার চালাতেন মো. সুলতান। তখন ভালোই চলছিল সুলতান-সকিনা দম্পতির সংসার। এখন বয়সের ভারে কাজ করতে পারেন না তাই অভাব হয়েছে নিত্যসঙ্গী। দুই ছেলেও খোঁজ-খবর নেন না। থাকেন অন্যের জমিতে তোলা ভাঙা ঘরে। জোটে না দুবেলা খাবার। ভিক্ষা করে লোকের বাড়ি থেকে চেয়ে আনা পান্তা ভাত শুকিয়ে চাল হলে সেগুলো ফের রান্না করে খান। এভাবেই লোকের দ্বারে দ্বারে ভিক্ষা করে খাবার যোগাড় করেন সুলতানের স্ত্রী সকিনা বেগম। আক্ষেপের সুরে এই বৃদ্ধ বলছিলেন, ‘দুই বেলা ভাত জোটে না, তার মধ্যে লুঙ্গি? টাকার অভাবে বৌয়ের ওড়না পরে থাকি।’ ৯৫ বছরের বৃদ্ধ সুলতান এলাকায় সুলতান ডাক্তার নামে পরিচিত। পটুয়াখালী পৌরসভার ১ নম্বর ওয়ার্ডের ১ম লেন বোহালগাছিয়া এলাকায় সত্তরোর্ধ্ব স্ত্রী সকিনা বেগমকে নিয়ে থাকেন তিনি। এই দম্পতির দুই ছেলে মোস্তফা ও মোশাররফ। তারা যে যার মতো থাকেন। বাবা-মায়ের খোঁজ নেন না। সুলতান ডাক্তার বলেন, ‘করোনার কারণে তিন মাস ঘর থেকে নামতে পারি নাই। তখন আল্লাহ চালাইছে। মানুষ কিছু কিছু সহায়তা দিয়েছে। এখন মানুষের কাছে ভিক্ষার জন্য গেলে দুই টাকা দিলে এক টাকা ফেরত চায়। কাজ করতে পারি না। কিন্তু প্রতিদিন ৪০ টাকার ঔষধ খাওয়া লাগে। ঔষধ না খেলে বিছানা থেকে ওঠা দায়। বৌকে খেটে খাওয়ানোর কথা ছিলো আমার, কিন্তু এখন বৌ আমাকে ভিক্ষা করে খাওয়ায়।’</span><br></p>', 'hgfhgfh-2020-11-18-5fb4c7d8ef77a.PNG', '30000.000', '2020-11-18', '2020-11-18 01:06:01', '2020-12-30 03:30:36');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_bangla` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_english` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_bn` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(10) NOT NULL,
  `view` int(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `title_bn`, `title_en`, `slug_bangla`, `slug_english`, `details_bn`, `details_en`, `status`, `view`, `created_at`, `updated_at`) VALUES
(1, 'DUCSU পোলস: নোটিশ Dাবির উপাচার্য, প্রক্টর, কোষাধ্যক্ষকে দেওয়া হয়েছে', 'DUCSU polls: Notice served to DU VC, proctor, treasurer', 'ducsu-pols-notis-dabir-upacarz-prktr-koshadhzkshke-deooza-hzeche', 'ducsu-polls-notice-served-to-du-vc-proctor-treasurer', '1000 / 5000\r\nTranslation results\r\nSixাকা বিশ্ববিদ্যালয়ের উচ্চতর উপাচার্য, প্রক্টর এবং কোষাধ্যক্ষকে Union মাসের মধ্যে হাইকোর্টের নির্দেশ দেওয়ার পরেও Courtাকা বিশ্ববিদ্যালয় কেন্দ্রীয় ছাত্র ইউনিয়নের (ডিইউসিএসইউ) নির্বাচন অনুষ্ঠানের বিষয়ে কোনও পদক্ষেপ না নেওয়ায় আদালত অবমাননার নোটিশ দেওয়া হয়েছে।\r\n\r\nমঙ্গলবার আবেদনকারীদের আইনজীবী অ্যাডভোকেট মনজিল মুর্শিদ এ নোটিশ জারি করেছেন।\r\n\r\nনোটিশে বলা হয়েছে, উপাচার্য অধ্যাপক ডাঃ মোঃ আক্তারুজ্জামান, প্রক্টর ডাঃ একেএম গোলাম রাব্বানী এবং কোষাধ্যক্ষ ড। কামাল উদ্দিনকে আগামী সাত দিনের মধ্যে এইচ, হাইকোর্টের নির্দেশনার পরে নির্বাচন অনুষ্ঠানের ব্যবস্থা না নিলে আদালত অবমাননার মামলা করা হবে।\r\n\r\nএর আগে ১ 17 জানুয়ারী, হাইকোর্ট sixাবি কর্তৃপক্ষকে আগামী months মাসের মধ্যে Uাবিএসইউ নির্বাচন করার জন্য প্রয়োজনীয় পদক্ষেপ নিতে বলেছিল।\r\n\r\nডিইউসিএসইউ নির্বাচনের ব্যবস্থা করতে সংশ্লিষ্ট কর্তৃপক্ষকে বাধ্য করতে আদালতের আদেশ চেয়ে ২০১২ সালের মার্চ মাসে Uাবির ২৫ জন শিক্ষার্থীর দ্বারা একটি রিট আবেদন করা হয়েছিল।\r\n\r\nসর্বশেষবার ১৯৯০ সালে Dাবিএসইউ নির্বাচন অনুষ্ঠিত হয়েছিল যা ১৯৯ in সালে সামরিক স্বৈরশাসক এইচ এম এরশাদের পতনের দিকে পরিচালিত করে।', '1000 / 5000\r\nTranslation results\r\nSixাকা বিশ্ববিদ্যালয়ের উচ্চতর উপাচার্য, প্রক্টর এবং কোষাধ্যক্ষকে Union মাসের মধ্যে হাইকোর্টের নির্দেশ দেওয়ার পরেও Courtাকা বিশ্ববিদ্যালয় কেন্দ্রীয় ছাত্র ইউনিয়নের (ডিইউসিএসইউ) নির্বাচন অনুষ্ঠানের বিষয়ে কোনও পদক্ষেপ না নেওয়ায় আদালত অবমাননার নোটিশ দেওয়া হয়েছে।\r\n\r\nমঙ্গলবার আবেদনকারীদের আইনজীবী অ্যাডভোকেট মনজিল মুর্শিদ এ নোটিশ জারি করেছেন।\r\n\r\nনোটিশে বলা হয়েছে, উপাচার্য অধ্যাপক ডাঃ মোঃ আক্তারুজ্জামান, প্রক্টর ডাঃ একেএম গোলাম রাব্বানী এবং কোষাধ্যক্ষ ড। কামাল উদ্দিনকে আগামী সাত দিনের মধ্যে এইচ, হাইকোর্টের নির্দেশনার পরে নির্বাচন অনুষ্ঠানের ব্যবস্থা না নিলে আদালত অবমাননার মামলা করা হবে।\r\n\r\nএর আগে ১ 17 জানুয়ারী, হাইকোর্ট sixাবি কর্তৃপক্ষকে আগামী months মাসের মধ্যে Uাবিএসইউ নির্বাচন করার জন্য প্রয়োজনীয় পদক্ষেপ নিতে বলেছিল।\r\n\r\nডিইউসিএসইউ নির্বাচনের ব্যবস্থা করতে সংশ্লিষ্ট কর্তৃপক্ষকে বাধ্য করতে আদালতের আদেশ চেয়ে ২০১২ সালের মার্চ মাসে Uাবির ২৫ জন শিক্ষার্থীর দ্বারা একটি রিট আবেদন করা হয়েছিল।\r\n\r\nসর্বশেষবার ১৯৯০ সালে Dাবিএসইউ নির্বাচন অনুষ্ঠিত হয়েছিল যা ১৯৯ in সালে সামরিক স্বৈরশাসক এইচ এম এরশাদের পতনের দিকে পরিচালিত করে।', 1, NULL, '2020-12-28 05:19:43', '2020-12-29 05:59:36'),
(2, 'জাকির নায়েকের ফাউন্ডেশনে ভারত পরিদর্শন বিজ্ঞপ্তি জারি করে', 'India issues inspection notice to Zakir Naik’s foundation', 'jakir-nazeker-faundesne-vart-pridrsn-bijngpti-jari-kre', 'india-issues-inspection-notice-to-zakir-naiks-foundation', 'সোমবার স্বরাষ্ট্র মন্ত্রক (এমএইচএ) বিদেশি অবদান রেগুলেশন আইন (এফসিআরএ) লঙ্ঘনের জন্য ইসলামিক প্রচারক জাকির নায়েকের ইসলামিক গবেষণা ফাউন্ডেশনকে (আইআরএফ) একটি পরিদর্শন নোটিশ জারি করেছে, মন্ত্রণালয়ের seniorর্ধ্বতন কর্মকর্তা দ্য হিন্দুকে জানিয়েছেন।\r\n\r\nনোটিশটি কোনও এনজিও বা সংস্থার এফসিআরএ নিবন্ধন স্থগিত বা প্রত্যাহারের দিকে প্রথম পদক্ষেপ।\r\n\r\nMr.াকা ক্যাফে আক্রমণকারীদের কেউ কেউ অনুপ্রাণিত করার অভিযোগ এনে জনাব নায়েকের বিরুদ্ধে সরকার পরিচালিত প্রথম আইনী পদক্ষেপের মধ্যে এটি তিনি।\r\n\r\nJulyাকার হলি আর্টেসান বেকারি ১ জুলাই সশস্ত্র সন্ত্রাসীদের আক্রমণে এসেছিল যেখানে ২২ জন লোক, বেশিরভাগ বিদেশি নিহত হয়েছিল। সুরক্ষা সংস্থাগুলি জানিয়েছে যে তিনি ভারতেও বেশ কয়েকটি সন্ত্রাসীদের অনুপ্রাণিত করেছিলেন।', 'সোমবার স্বরাষ্ট্র মন্ত্রক (এমএইচএ) বিদেশি অবদান রেগুলেশন আইন (এফসিআরএ) লঙ্ঘনের জন্য ইসলামিক প্রচারক জাকির নায়েকের ইসলামিক গবেষণা ফাউন্ডেশনকে (আইআরএফ) একটি পরিদর্শন নোটিশ জারি করেছে, মন্ত্রণালয়ের seniorর্ধ্বতন কর্মকর্তা দ্য হিন্দুকে জানিয়েছেন।\r\n\r\nনোটিশটি কোনও এনজিও বা সংস্থার এফসিআরএ নিবন্ধন স্থগিত বা প্রত্যাহারের দিকে প্রথম পদক্ষেপ।\r\n\r\nMr.াকা ক্যাফে আক্রমণকারীদের কেউ কেউ অনুপ্রাণিত করার অভিযোগ এনে জনাব নায়েকের বিরুদ্ধে সরকার পরিচালিত প্রথম আইনী পদক্ষেপের মধ্যে এটি তিনি।\r\n\r\nJulyাকার হলি আর্টেসান বেকারি ১ জুলাই সশস্ত্র সন্ত্রাসীদের আক্রমণে এসেছিল যেখানে ২২ জন লোক, বেশিরভাগ বিদেশি নিহত হয়েছিল। সুরক্ষা সংস্থাগুলি জানিয়েছে যে তিনি ভারতেও বেশ কয়েকটি সন্ত্রাসীদের অনুপ্রাণিত করেছিলেন।', 1, NULL, '2020-12-28 05:20:54', '2020-12-28 05:20:54'),
(3, 'আফ্রিদি ভারতে ‘প্রেম’ মন্তব্যে আইনী নোটিশ দিয়েছেন', 'Afridi served legal notice over ‘love’ remarks in India', 'afridi-varte-prem-mntbze-ainee-notis-dizechen', 'afridi-served-legal-notice-over-love-remarks-in-india', '694 / 5000\r\nTranslation results\r\nপাকিস্তানের টি-টোয়েন্টি অধিনায়ক শহীদ খান আফ্রিদি ভারতে বেশি ভালবাসা পাওয়ার বিষয়ে তাঁর মন্তব্যে আইনী নোটিশ পেয়েছেন।\r\n\r\nআইনী নোটিশটি লাহোরের স্থানীয় অ্যাডভোকেট পরিবেশন করেছেন।\r\n\r\nরবিবার আফ্রিদি বলেছিলেন, ‘আমরা সবসময় ভারতে খেলা উপভোগ করেছি। তিনি বলেন, এখানকার মানুষ সবসময় আমাদের প্রচুর ভালবাসা দেয়। ‘খুব কম দেশেই আমি ক্রিকেটকে যতটা উপভোগ করেছি ততটা ভারতে ক্রিকেট উপভোগ করেছি।’\r\n\r\n‘আমরা এখানে অনেক ভালবাসা পেয়েছি, পাকিস্তানেও আমরা এতটা ভালোবাসা পাইনি, আমি আপনাকে বলতে পারি। আমরা সবসময় এখানে খেলা উপভোগ করেছি। ’\r\n\r\nবিজ্ঞপ্তি অনুসারে, আফ্রিদি যে মন্তব্য করেছেন তা পাকিস্তানের স্বার্থবিরোধী ছিল; সুতরাং, তার উচিত জাতির কাছে ক্ষমা চাওয়া এবং তার বক্তব্য প্রত্যাহার করা উচিত।', '694 / 5000\r\nTranslation results\r\nপাকিস্তানের টি-টোয়েন্টি অধিনায়ক শহীদ খান আফ্রিদি ভারতে বেশি ভালবাসা পাওয়ার বিষয়ে তাঁর মন্তব্যে আইনী নোটিশ পেয়েছেন।\r\n\r\nআইনী নোটিশটি লাহোরের স্থানীয় অ্যাডভোকেট পরিবেশন করেছেন।\r\n\r\nরবিবার আফ্রিদি বলেছিলেন, ‘আমরা সবসময় ভারতে খেলা উপভোগ করেছি। তিনি বলেন, এখানকার মানুষ সবসময় আমাদের প্রচুর ভালবাসা দেয়। ‘খুব কম দেশেই আমি ক্রিকেটকে যতটা উপভোগ করেছি ততটা ভারতে ক্রিকেট উপভোগ করেছি।’\r\n\r\n‘আমরা এখানে অনেক ভালবাসা পেয়েছি, পাকিস্তানেও আমরা এতটা ভালোবাসা পাইনি, আমি আপনাকে বলতে পারি। আমরা সবসময় এখানে খেলা উপভোগ করেছি। ’\r\n\r\nবিজ্ঞপ্তি অনুসারে, আফ্রিদি যে মন্তব্য করেছেন তা পাকিস্তানের স্বার্থবিরোধী ছিল; সুতরাং, তার উচিত জাতির কাছে ক্ষমা চাওয়া এবং তার বক্তব্য প্রত্যাহার করা উচিত।', 1, NULL, '2020-12-28 05:23:13', '2020-12-28 05:23:13'),
(4, 'দুদকের কর্মকর্তা জার্নোগুলিকে চিঠির কারণে কারণ দর্শনের নোটিশ দিয়েছেন', 'ACC official served show cause notice over letter to journos', 'dudker-krmkrta-jarnogulike-cithir-karne-karn-drsner-notis-dizechen', 'acc-official-served-show-cause-notice-over-letter-to-journos', 'বুধবার দুপুরে দুর্নীতি দমন কমিশনের (দুদক) এক কর্মকর্তাকে দুই সাংবাদিককে তাদের রিপোর্টের জন্য তলব করার চিঠি দেওয়ার বিষয়ে কারণ দর্শনের নোটিশ দেওয়া হয়েছিল।\r\n\r\nদুদকের জনসংযোগ আধিকারিক প্রণব কুমার বাট্টিয়াচার্য্য জানিয়েছেন, শেখ মোঃ ফানাফিলিয়াকে নোটিশটি প্রদান করা হয়েছে।\r\n\r\nচিঠিটি অশ্লীল বলে অভিহিত করে দুদকের সদর দফতরের সামনে সাংবাদিকরা বিক্ষোভ ও প্রতিবাদ করার পরে দুদক তার এক কর্মকর্তাকে এই নোটিশটি দিয়েছিল।\r\n\r\nদুদকের পরিচালক শেখ মোঃ ফানাফিল্লাহ স্বাক্ষরিত একটি চিঠিতে, বাংলাথ্রিবিউনের বিশেষ সংবাদদাতা দীপু সরোয়ারকে তার পরিচালক খন্দকার এনামুল বাসিরকে পুলিশের স্থগিত ডিআইজি মিজানুর রহমানের ঘুষের অভিযোগে প্রশংসাপত্রের জন্য উপস্থিত হওয়ার জন্য বলা হয়েছিল।\r\n\r\nএই চিঠিটি না মেনে সাংবাদিকদের বিরুদ্ধে আইনী পরিণতির হুমকিও দিয়েছে।\r\n\r\nরবিবার অনলাইন নিউজ পোর্টাল ঘুষের অভিযোগের বিষয়ে একটি প্রতিবেদন প্রকাশ করে। এর আগে বেসরকারী টেলিভিশন চ্যানেল এটিএন নিউজ একটি প্রতিবেদন প্রচার করেছিল, যেখানে ডিআইজি বসিরকে ৪০ লাখ টাকা দেওয়ার অভিযোগ করেছিলেন, যে তাকে \"প্রতিশ্রুতি\" দিয়েছিলেন যে তিনি তাকে সমস্ত অভিযোগে ক্ষমা করবেন', 'বুধবার দুপুরে দুর্নীতি দমন কমিশনের (দুদক) এক কর্মকর্তাকে দুই সাংবাদিককে তাদের রিপোর্টের জন্য তলব করার চিঠি দেওয়ার বিষয়ে কারণ দর্শনের নোটিশ দেওয়া হয়েছিল।\r\n\r\nদুদকের জনসংযোগ আধিকারিক প্রণব কুমার বাট্টিয়াচার্য্য জানিয়েছেন, শেখ মোঃ ফানাফিলিয়াকে নোটিশটি প্রদান করা হয়েছে।\r\n\r\nচিঠিটি অশ্লীল বলে অভিহিত করে দুদকের সদর দফতরের সামনে সাংবাদিকরা বিক্ষোভ ও প্রতিবাদ করার পরে দুদক তার এক কর্মকর্তাকে এই নোটিশটি দিয়েছিল।\r\n\r\nদুদকের পরিচালক শেখ মোঃ ফানাফিল্লাহ স্বাক্ষরিত একটি চিঠিতে, বাংলাথ্রিবিউনের বিশেষ সংবাদদাতা দীপু সরোয়ারকে তার পরিচালক খন্দকার এনামুল বাসিরকে পুলিশের স্থগিত ডিআইজি মিজানুর রহমানের ঘুষের অভিযোগে প্রশংসাপত্রের জন্য উপস্থিত হওয়ার জন্য বলা হয়েছিল।\r\n\r\nএই চিঠিটি না মেনে সাংবাদিকদের বিরুদ্ধে আইনী পরিণতির হুমকিও দিয়েছে।\r\n\r\nরবিবার অনলাইন নিউজ পোর্টাল ঘুষের অভিযোগের বিষয়ে একটি প্রতিবেদন প্রকাশ করে। এর আগে বেসরকারী টেলিভিশন চ্যানেল এটিএন নিউজ একটি প্রতিবেদন প্রচার করেছিল, যেখানে ডিআইজি বসিরকে ৪০ লাখ টাকা দেওয়ার অভিযোগ করেছিলেন, যে তাকে \"প্রতিশ্রুতি\" দিয়েছিলেন যে তিনি তাকে সমস্ত অভিযোগে ক্ষমা করবেন', 1, NULL, '2020-12-28 05:24:37', '2020-12-30 04:04:11');

-- --------------------------------------------------------

--
-- Table structure for table `offon`
--

CREATE TABLE `offon` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `election` int(11) DEFAULT NULL,
  `language` int(11) DEFAULT NULL,
  `headline` int(11) DEFAULT NULL,
  `header_ads` int(11) DEFAULT NULL,
  `facebook_page` int(11) DEFAULT NULL,
  `covid19` int(11) DEFAULT NULL,
  `namaz` int(11) DEFAULT NULL,
  `notice` int(11) DEFAULT NULL,
  `photogallery` int(11) DEFAULT NULL,
  `biggopti` int(11) DEFAULT NULL,
  `job` int(2) DEFAULT NULL,
  `non_profit` int(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offon`
--

INSERT INTO `offon` (`id`, `election`, `language`, `headline`, `header_ads`, `facebook_page`, `covid19`, `namaz`, `notice`, `photogallery`, `biggopti`, `job`, `non_profit`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `opinions`
--

CREATE TABLE `opinions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_bangla` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_english` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_bn` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `writer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_date` date NOT NULL,
  `view` int(3) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `opinions`
--

INSERT INTO `opinions` (`id`, `title_bn`, `title_en`, `slug_bangla`, `slug_english`, `details_bn`, `details_en`, `writer_id`, `image`, `published_date`, `view`, `status`, `created_at`, `updated_at`) VALUES
(1, 'যেভাবে বিবিসির ১০০ নারীর তালিকায় রিমু', 'যেভাবে বিবিসির ১০০ নারীর তালিকায় রিমু', 'zevabe-bibisir-100-nareer-talikay-rimu', 'zevabe-bibisir-100-nareer-talikay-rimu', 'রিমা সুলতানা রিমু (১৯)। কক্সবাজারের রামুর রাজারকুল পশ্চিম সিকদার পাড়ার কৃষক আবদুর রহিম ও গৃহিণী খালেদা বেগমের দ্বিতীয় সন্তান। চলতি বছর এইচএসসি পরীক্ষায় উত্তীর্ণ হয়েছেন মাত্র।\r\n\r\nজাগো নারী উন্নয়ন সংস্থার স্বেচ্ছাসেবী হয়ে সমমনা তরুণীদের নিয়ে দলবেঁধে পাড়া-মহল্লা, রোহিঙ্গা শিবিরে গিয়ে বয়স্ক নারীদের সাক্ষরতা থেকে শুরু করে সমাজের ভালো কাজগুলো করতেন। বাল্যবিয়ে রোধ কেন প্রয়োজন তা উদাহরণ দিয়ে বুঝিয়ে দিতেন। নারীর প্রতি সহিংসতা নিয়েও আলোচনা করতেন। এ বিষয়ে নারীদের সচেতন করতেন।', 'Rima Sultana Remu (19). The second child of farmer Abdur Rahim and housewife Khaleda Begum of Rajarkul West Sikder Para in Ramu, Cox\'s Bazar. He has just passed the HSC examination this year.As a volunteer of Jago Nari Unnayan Sangstha, she used to go to the Rohingya camps in the neighborhoods with like-minded young women and do good', 3, 'zevabe-bibisir-100-nareer-talikay-rimu-2020-12-28-5fe97467268d5.jpg', '2020-12-28', 2, 1, '2020-11-25 04:32:40', '2020-12-28 04:19:01'),
(2, 'গণমানুষের মুক্তির নেতা মহান নেতা মাও সে তুং', 'The great leader of the liberation of the masses is Mao Zedong', 'gnmanusher-muktir-neta-mhan-neta-maoo-se-tung', 'the-great-leader-of-the-liberation-of-the-masses-is-mao-zedong', 'গণচীনের মহান বিপ্লবী নেতা মাও সে তুংকে আধুনিক চীনের রূপকার ও প্রতিষ্ঠাতা হিসেবেই আখ্যায়িত করা হয়। তিনি স্মরণীয় হয়ে আছেন চীনা সমাজ ও সংস্কৃতিতে তার প্রভাবের কারণেই। ১৯৪৯ সাল থেকে ১৯৫৯ সাল পর্যন্ত গণপ্রজাতন্ত্রী চীন সরকারের চেয়ারম্যান এবং আমৃত্যু কমিউনিস্ট পার্টির নেতৃত্ব দিয়েছিলেন তিনি। তিনি আজকের বিশ্বে বিবেচিত হন একজন কমিউনিস্ট তাত্ত্বিক হিসেবেও। এছাড়া অনেকগুলো বইয়ের লেখক ও কবি হিসেবেও তার খ্যাতি রয়েছে। তার দর্শনই মাওবাদ হিসেবে প্রতিষ্ঠা লাভ করে। জীবদ্দশায় পৃথিবীর নিপীড়িত মানুষের যেমন আদর্শে পরিণত হয়েছিলেন, তেমনই নানা মহলের তীব্র সমালোচনারও শিকার হয়েছিলেন তিনি।\r\nমৃত্যুর এত বছর পরও মাও সে তুং\'র সাম্যবাদী সমাজতন্ত্র এখনো দিব্যমান। ছাত্রজীবনেই তিনি রাজনীতিতে জড়িয়ে পড়েছিলেন। ২৪ বছর বয়সে রাজধানী পিকিংয়ে মার্কস তত্ত্বের মাধ্যমে কমিউনিস্ট আন্দোলন গড়ে তোলার মধ্য দিয়ে তিনি সবার দৃষ্টি আকর্ষণ করেন। সাধারণ কৃষক পরিবারে জন্ম নেওয়া মাও নিজ প্রচেষ্টায় চীনা কমিউনিস্ট পার্টির চেয়ারম্যানের শীর্ষ পদে দায়িত্বে পৌঁছান। পরে সফলভাবে গণপ্রজাতন্ত্রী চীনের রাষ্ট্রনায়কও হন তিনি।', 'Mao Zedong, the great revolutionary leader of the People\'s Republic of China, is credited as the architect and founder of modern China. He is remembered for his influence on Chinese society and culture. He was chairman of the government of the People\'s Republic of China from 1949 to 1959 and led the Communist Party until his death. He is also considered a communist theorist in today\'s world. He also has a reputation as a writer and poet of many books. His philosophy was established as Maoism. In his lifetime, as he became the ideal of the oppressed people of the world, he was also the victim of intense criticism from various quarters.', 3, 'gnmanusher-muktir-neta-mhan-neta-maoo-se-tung-2020-12-28-5fe9751db5772.png', '2020-12-28', 0, 1, '2020-11-25 04:37:54', '2020-12-28 00:03:09'),
(4, 'অটিজম সমস্যা এবং একজন সায়মা ওয়াজেদ পুতুল', 'Autism problem and a Saima Wazed doll.', 'otijm-smsza-ebng-ekjn-sayma-wajed-putul', 'autism-problem-and-a-saima-wazed-doll', 'অটিজম। শব্দটির সঙ্গে আমাদের প্রায় সবারই পরিচয় রয়েছে। এ সমাজে আমরা অনেক অটিজম শিশু দেখতে পাই। এটি মূলত কোন রোগ নয়। অটিজম বা অটিস্টিক একটি মানসিক বিকাশজনিত সমস্যা। যারা এ সমস্যায় ভোগে তাদের মূলত প্রতিবন্ধকতা তৈরি হয় সামাজিক কার্যকলাপ বা কথা বার্তায়। জন্মের দুই থেকে তিন বছরের মধ্যেই এ সমস্যা বুঝতে পারা যায়। বাংলাদেশের প্রতি ১০ হাজার শিশুর মাঝে ১৭ জন শিশু অটিজমে আক্রান্ত হচ্ছে। এ সংখ্যা দিন দিন আরও বৃদ্ধি পাচ্ছে। যা আমাদের জন্য হুমকি স্বরূপ।\r\n\r\nঅটিজমকে অনেকেই রোগ বলে অভিহিত করেন। অনেকেই এখনও অটিস্টিক শিশু দেখলে তাদের ব্যঙ্গ-বিদ্রুপ করে থাকেন, তাদের বাবা-মাকে নিয়ে নানাভাবে কুসংস্কারের কবলে পড়তে হয়। বিশেষ করে গ্রামাঞ্চলে প্রকোপ বেশি! কিন্তু একবিংশ শতাব্দীতে এসে এটা কোনোভাবেই কাম্য নয়। বর্তমানে অটিজম নিয়ে বাংলাদেশ তথা বিশ্বজুড়েই নতুন দ্বার উন্মোচিত হয়েছে। সবার মধ্যে ওবড়েছে সচেতনতা। বাংলাদেশেও কোনো কোনো ক্ষেত্রে দেখা যায়, অটিজম আক্রান্তরা নানাভাবে ভূমিকা রেখে চলেছেন।', 'Autism. Almost all of us are familiar with the word. In this society we see many children with autism. It is basically not a disease. Autism is a disorder that is affecting more and more people. Those who suffer from this problem are mainly hindered by social activities or messages. This problem can be understood within two to three years of birth. Out of every 10,000 children in Bangladesh, 18 children are suffering from autism. This number is increasing day by day. Which is a threat to us.\r\n\r\nMany people call autism a disease. Many still mock autistic children when they see them, and fall prey to various prejudices against their parents. Especially in rural areas! But in the twenty-first century, it is by no means desirable. At present, new doors have been opened for autism in Bangladesh and all over the world. Awareness has spread among everyone. In some cases in Bangladesh, autism sufferers continue to play a role.', 3, 'otijm-smsza-ebng-ekjn-sayma-wajed-putul-2020-12-28-5fe975f808305.png', '2020-12-28', 1, 1, '2020-11-25 04:44:25', '2020-12-30 03:21:11'),
(5, 'জাতীয় পতাকার বিকৃতি এবং আমাদের দেশপ্রেম', 'Distortion of the national flag and our patriotism', 'jateey-ptakar-bikrriti-ebng-amader-desprem', 'distortion-of-the-national-flag-and-our-patriotism', 'গ্রামের স্কুলেই অনেকে পড়েছি আমরা। যখন স্কুলে পড়েছি তখন যোগাযোগ ব্যবস্থা এতটা আধুনিকও ছিল না। ছিল না ইন্ট্যারনেট ব্যবহারের কোন সুযোগ। তখন জাতীয় পতাকা তৈরি করতো গ্রামের দর্জিরাই। তারপরও এতবড় ভুল বা বিকৃতি ঘটেছে বলে খুব একটা শোনা যেত না। আর এখন এই আধুনিক যুগে কি করে এতবড় অপরাধ সংগঠিত হলো। আর এই অপরাধের সাথে কোন প্রাথমিক বিদ্যালয়, মাদ্রাসা, কলেজের শিক্ষরা জড়িত নন। জড়িত দেশের সর্বোচ্চ বিদ্যাপিঠ বিশ্ববিদ্যালয়ের শিক্ষকরা।', 'Many of us have studied in village schools. When I was in school, the communication system was not so modern. There was no opportunity to use the Internet. At that time the national flag was made by the tailors of the village. Even then, one could not hear that such a big mistake or distortion had taken place. And now in this modern age how such a big crime was organized. And no primary school, madrasa, college teachers are involved in this crime. University teachers of the highest schools in the country involved.\r\n\r\nCan we still call them teachers of the highest schools in the country after distorting the national flag? And if we say teacher, then we have to understand how dark the future of our children is. Teachers who do not know about the national flag, in this modern age who distorted the picture with the national flag in their hands, there may be questions about their qualifications - patriotism - knowledge.', 3, 'jateey-ptakar-bikrriti-ebng-amader-desprem-2020-12-28-5fe97681b636d.png', '2020-12-28', 1, 1, '2020-11-25 04:48:48', '2020-12-28 00:21:03'),
(6, 'সাতক্ষীরার বাজারে মাছ কম, দামও নেই ক্রেতাও নেই', 'সাতক্ষীরার বাজারে মাছ কম, দামও নেই ক্রেতাও নেই', 'satksheerar-bajare-mach-km-damoo-nei-kretaoo-nei', 'satksheerar-bajare-mach-km-damoo-nei-kretaoo-nei', 'সাতক্ষীরায় অস্বাভাবিক হারে কমে গেছে মাছের দাম। এতে বিপাকে পড়েছেন ব্যবসায়ীরা। মূলত করোনা মহামারির কারণে ক্রয়ক্ষমতা কমে যাওয়ায় দাম কমলেও মাছ কিনতে পারছে না মানুষ। ব্যবসায়ীরাও ঘের থেকে মাছ ধরা বন্ধ রেখেছেন। এতে সরবরাহও কমেছে মাছের।', 'In Satkhira, the price of fish has come down at an unusual rate. The traders are in trouble. People are not able to buy fish even though the price has come down due to the decline in purchasing power due to the Corona epidemic. Traders have also stopped fishing from the fence. The supply of fish has also decreased.', 3, 'satksheerar-bajare-mach-km-damoo-nei-kretaoo-nei-2020-12-28-5fe976bd55a2c.jpg', '2020-12-28', 9, 1, '2020-11-29 01:09:08', '2021-01-01 23:16:03'),
(7, 'দেশপ্রেমে উদ্বুদ্ধ ব্যক্তিই দেশের জন্য সত্যিকারভাবে কাজ করতে পারে।', 'Across the country', 'despreme-udwuddh-bzktii-deser-jnz-stzikarvabe-kaj-krte-pare', 'across-the-country', 'এটি আজ দিবালোকের মত স্পষ্ট যে, বিশ্ববিদ্যালয়গুলো মর্যাদা হারিয়েছে। হয়তো শিক্ষকরা মানতে চাইবেন না বিষয়টি। তবে, এটি সত্য পাবলিক বিশ্ববিদ্যালয়ে খোদ পড়াশোনাটাই আজ উপেক্ষিত। শিক্ষার পরিবেশের ভয়ানক দুর্দশা চলছে। আছে কেবল সরকারি দলের ছাত্র-সংগঠনের নানা কর্মকাণ্ড আর সরকারপন্থী শিক্ষকদের নানা গ্রুপিং। রাজনীতিই বড় সমস্যা। রাজনীতির কারণে শিক্ষক নিয়োগে মান বজায় রাখা যাচ্ছে না। আমাদের কোনো পাবলিক বিশ্ববিদ্যালয় বিশ্বের কোনো র‌্যাংকিংয়ে আসে না। সরকারের তথা জনগণের টাকায় বিশ্ববিদ্যালয়গুলো চলে, শিক্ষক-অশিক্ষক সব কর্মী বেতন পান। অথচ স্বায়ত্তশাসন নামের এক বিধানের কারণে বিশ্ববিদ্যালয় মঞ্জুরি কমিশন বড় বড় অন্যায় আর অপরাধ দেখেও ব্যবস্থা নিতে পারে না', 'bhfgfd', 3, 'despreme-udwuddh-bzktii-deser-jnz-stzikarvabe-kaj-krte-pare-2020-12-28-5fe9b0f23b457.jpeg', '2020-12-28', NULL, 1, '2020-12-28 04:18:26', '2020-12-30 02:42:26');

-- --------------------------------------------------------

--
-- Table structure for table `our_says`
--

CREATE TABLE `our_says` (
  `id` int(10) UNSIGNED NOT NULL,
  `details_bn` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `our_says`
--

INSERT INTO `our_says` (`id`, `details_bn`, `details_en`, `created_at`, `updated_at`) VALUES
(1, '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SolaimanLipi; color: rgb(51, 51, 51); font-size: 18px;\">Jagonews24.com is one of the most popular Bangla news portals in Bangladesh. The online news portal has started its operations with the commitment of fearless, investigative, informative and neutral journalism.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SolaimanLipi; color: rgb(51, 51, 51); font-size: 18px;\">Jagonews24.com has provided real time news update, using utmost modern technology since 2014. It also provides archive of previous news, and printing facility of the specific news items.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SolaimanLipi; color: rgb(51, 51, 51); font-size: 18px;\">One can easily find latest news and top breaking headlines from Bangladesh and around the world within a short span of time from the online news portal.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SolaimanLipi; color: rgb(51, 51, 51); font-size: 18px;\">Jagonews24.com, the Bangladesh’s leading online news portal, is updating 24/7 with entertainment, lifestyle, special reports, politics, economics, culture, education, information technology, health, sports, columns and features.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SolaimanLipi; color: rgb(51, 51, 51); font-size: 18px;\">The news based site enriched with all the elements of country’s traditional newspapers. A group of youngster journalists are working for the online news portal.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SolaimanLipi; color: rgb(51, 51, 51); font-size: 18px;\">Jagonews24.com is trying to build a bridge with Bengali language people around the world and want to create a new dimension to the country’s online news portal.</p>', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SolaimanLipi; color: rgb(51, 51, 51); font-size: 18px;\">Jagonews24.com is one of the most popular Bangla news portals in Bangladesh. The online news portal has started its operations with the commitment of fearless, investigative, informative and neutral journalism.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SolaimanLipi; color: rgb(51, 51, 51); font-size: 18px;\">Jagonews24.com has provided real time news update, using utmost modern technology since 2014. It also provides archive of previous news, and printing facility of the specific news items.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SolaimanLipi; color: rgb(51, 51, 51); font-size: 18px;\">One can easily find latest news and top breaking headlines from Bangladesh and around the world within a short span of time from the online news portal.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SolaimanLipi; color: rgb(51, 51, 51); font-size: 18px;\">Jagonews24.com, the Bangladesh’s leading online news portal, is updating 24/7 with entertainment, lifestyle, special reports, politics, economics, culture, education, information technology, health, sports, columns and features.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SolaimanLipi; color: rgb(51, 51, 51); font-size: 18px;\">The news based site enriched with all the elements of country’s traditional newspapers. A group of youngster journalists are working for the online news portal.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SolaimanLipi; color: rgb(51, 51, 51); font-size: 18px;\">Jagonews24.com is trying to build a bridge with Bengali language people around the world and want to create a new dimension to the country’s online news portal.</p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name_bn`, `name_en`, `created_at`, `updated_at`) VALUES
(4, 'আমাদের সম্পর্কে', 'About Us', '2020-11-26 01:25:37', '2020-11-26 01:25:37'),
(5, 'যোগাযোগ করুন', 'Contact Us', '2020-11-26 01:26:10', '2020-11-26 01:26:10'),
(6, 'শর্তাবলী', 'Terms & Conditions', '2020-11-26 01:26:45', '2020-11-26 01:26:45'),
(7, 'আমাদের বলুন', 'Our Say', '2020-11-26 01:27:04', '2020-11-26 01:27:04'),
(8, 'গোপনীয়তা', 'Privacy', '2020-11-26 01:27:25', '2020-11-26 01:27:25'),
(9, 'নোটিশ', 'Notices', '2020-11-26 01:27:50', '2020-11-26 01:27:50'),
(11, 'Extra', 'Extra', '2020-12-30 03:42:30', '2020-12-30 03:42:30');

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
  `sub_cat_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `division_id` int(10) UNSIGNED DEFAULT NULL,
  `district_id` int(10) UNSIGNED DEFAULT NULL,
  `subdistrict_id` int(10) UNSIGNED DEFAULT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_bn` text COLLATE utf8mb4_unicode_ci,
  `published_date` date DEFAULT NULL,
  `month` varchar(121) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(121) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags_bn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `headline_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `headline_bn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `thumbnail_select` int(11) DEFAULT '0',
  `first_section` int(3) DEFAULT '0',
  `category_first_section` int(3) DEFAULT '0',
  `subcategory_first_section` int(20) DEFAULT '0',
  `division_first_section` int(3) DEFAULT NULL,
  `district_first_section` int(11) DEFAULT NULL,
  `headline` int(11) DEFAULT '0',
  `approve` int(2) DEFAULT '0',
  `view` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `cat_id`, `sub_cat_id`, `user_id`, `division_id`, `district_id`, `subdistrict_id`, `title_en`, `title_bn`, `image`, `details_en`, `details_bn`, `published_date`, `month`, `year`, `tags_en`, `tags_bn`, `slug_bn`, `slug_en`, `headline_en`, `headline_bn`, `status`, `thumbnail_select`, `first_section`, `category_first_section`, `subcategory_first_section`, `division_first_section`, `district_first_section`, `headline`, `approve`, `view`, `created_at`, `updated_at`) VALUES
(1, 7, 9, 3, 2, 35, 21, 'History aunt in the bank is easier', 'ব্যাংকে হিসাব খোলা এখন আরও সহজ', 'bzangke-hisab-khola-ekhn-aroo-shj-5fe96f392f8f8.jpg', 'Mutual funds, which have been booming in the country\'s stock market, have suddenly recovered. The prices of all the listed mutual funds have gone up in the last one month. As a result, some mutual funds, which have been below the face value for a long time, have already risen above the face value. Even then, 27 out of 36 mutual funds are still below the face value. Analysts believe that mutual funds are in such a miserable state due to the incompetence of asset managers and weak decisions of regulators.', 'দেশের শেয়ারবাজারে মিলে মিউচুয়াল ফান্ডগুলি হঠাৎ সেরে উঠেছে। সমস্ত তালিকাভুক্ত মিউচুয়াল ফান্ডের দাম গত এক মাসে বেড়েছে। ফলস্বরূপ, কিছু মিউচুয়াল ফান্ডগুলি, যা দীর্ঘ সময়ের জন্য ফেসবুকের নীচে ছিল, ইতিমধ্যে ফেস ভ্যালু থেকে উপরে উঠেছে। তবুও, 36 টি মিউচুয়াল ফান্ডের মধ্যে 27 টি এখনও মুখের মূল্যের নিচে। বিশ্লেষকরা বিশ্বাস করেন যে সম্পদ পরিচালকদের অপারগতা এবং নিয়ামকদের দুর্বল সিদ্ধান্তের কারণে মিউচুয়াল ফান্ডগুলি এইরকম শোচনীয় অবস্থায় রয়েছে।', '2020-12-28', 'January', '2020', 'Banking Banking system', 'ব্যাংকব্যাংক ব্যবস্থা', 'bzangke-itihas-khala-aroo-shj', 'bzangke-hisab-khola-ekhn-aroo-shj', 'ব্যাংকের শাখায় না গিয়ে গ্রাহক সেবা দিতে ইসলামী ব্যাংক চালু করেছে \'সেলফিন\' নামে ডিজিটাল হিসাব খোলার সুবিধা।', 'Islami Bank has introduced the facility of opening a digital account called \'Selfin\' to provide customer service without going to the bank\'s branch.', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 3, '2020-11-15 00:02:41', '2020-12-27 23:38:01'),
(4, 7, 8, 3, 6, 56, 44, 'Children are learning to lie', 'শিশু কি মিথ্যা বলা শিখছে', 'sisu-ki-mithza-bla-sikhche-5fe96f95a79c4.jpg', 'Direct road connection will be established between Kabirhat of Noakhali and Sonaimuri Upazila and between Sonaimuri and Begumganj Gasfield of Senbagh Upazila. It will cost 413 crore 81 lakh rupees. However, the Planning', 'নোয়াখালীর কবিরহাটের সঙ্গে সোনাইমুড়ী উপজেলার এবং সোনাইমুড়ীর সঙ্গে বেগমগঞ্জ গ্যাসফিল্ড হয়ে সেনবাগ উপজেলার সরাসরি সড়ক যোগাযোগ স্থাপন করা হবে। এতে খরচ হবে ৪১৩ কোটি ৮১ লাখ টাকা। যদিও প্রকল্পটির বিভিন্ন খাতে খরচ নিয়ে প্রশ্ন তুলেছে পরিকল্পনা কমিশন।', '2020-12-28', 'January', '2020', 'Child rearing', 'শিশু সন্তান পালন', 'children-are-learning-to-lie', 'sisu-ki-mithza-bla-sikhche', 'শিশু কি মিথ্যা বলা শিখছে', 'Children are learning to lie', 1, 0, NULL, 1, NULL, NULL, NULL, 1, 1, 1, '2020-11-15 00:48:45', '2020-12-27 23:39:33'),
(5, 3, 21, 3, 2, 5, 15, 'This is my second peace prize', 'এটি আমার দ্বিতীয় বছরের পুরস্কার', 'eta-amar-dwiteez-santi-purskar-5fe981bb46b34.png', 'Iran\'s parliament has passed a law allowing for the uninterrupted production and storage of uranium at 20 percent for peaceful purposes.\r\n\r\nAs a result, Iran\'s National Atomic Energy Agency will be required to enrich uranium to meet the demand.', 'শান্তিপূর্ণ কাজে ব্যবহারের জন্য ২০ শতাংশ মাত্রায় নিরবচ্ছিন্নভাবে ইউরেনিয়ামের উৎপাদন ও মজুত রাখতে পারার বিষয়ে আইন পাস করেছে ইরানের পার্লামেন্ট।\r\n\r\nএর ফলে ইরানের জাতীয় আণবিক শক্তি সংস্থা চাহিদা অনুযায়ী প্রয়োজনীয় মাত্রার ইউরেনিয়াম সমৃদ্ধ করে তা সংশ্লিষ্ট প্রতিষ্ঠানগুলোকে সরবরাহ করতে বাধ্য থাকবে।\r\nবাংলাদেশ বিদ্যুৎ উন্নয়ন বোর্ডের (পিডিবি) চেয়ারম্যান প্রকৌশলী বেলায়েত হোসেন বলেছেন, মুজিববর্ষে দেশকে শতভাগ বিদ্যুতের আওতায় আনতে আমরা প্রতিশ্রুতিবদ্ধ। এ লক্ষ্যে রামপাল পাওয়ার প্ল্যান্টের কাজ দ্রুতগতিতে এগিয়ে নেয়া হচ্ছে।\r\nঅপরাধ সংগঠিত হলো। আর এই অপরাধের সাথে কোন প্রাথমিক বিদ্যালয়, মাদ্রাসা, কলেজের শিক্ষরা জড়িত নন। জড়িত দেশের সর্বোচ্চ বিদ্যাপিঠ বিশ্ববিদ্যালয়ের শিক্ষকরা।\r\n\r\nজাতীয় পতাকা বিকৃতি করার পরও কি আমরা তাদের দেশের সর্বোচ্চ বিদ্যাপিঠের শিক্ষক বলতে পারি? আর যদি শিক্ষক বলি তাহলে বুঝতে হবে আমাদের সন্তানদের ভবিষ্যত কতটা অন্ধকারের দিকে ঠেলে দিচ্ছি আমরা। যে শিক্ষক জাতীয় পতাকা সম্পর্কে জানেন না, এই আধুনিক যুগে বিকৃতভাবে জাতীয় পতাকা হাতে ছবি তোলেন তাদের যোগ্যতা- দেশপ্রেম-জ্ঞান নিয়ে তো প্রশ্ন থাকতেই পারে।', '2020-12-28', 'December', '2020', 'ইন্টারেস্টাবর্স পরীক্ষা শুরু', 'সাক্ষাৎকার সুখবর স্বপ্ন নিয়ে', 'eti-amar-dwiteez-bchrer-purskar', 'eta-amar-dwiteez-santi-purskar', 'এটা আমার দ্বিতীয় শান্তি পুরস্কার', 'এটি আমার দ্বিতীয় বছরের পুরস্কার', 1, 0, 1, NULL, NULL, NULL, NULL, 1, 1, 1, '2020-11-15 02:08:21', '2020-12-28 00:56:59'),
(6, 9, 26, 3, 1, 3, 9, '\r\nThere are two main challenges to growth', 'প্রবৃদ্ধি নিয়ে দুটি চ্যালেঞ্জ মুখ্য', 'prbrriddhi-niye-duti-czalenj-mukhz-5fe9822d1467a.jpg', 'Rasedul Haque, bulk in-charge of Meghna Petroleum, admitted to Jago News that the excess water was mixed in the main tanker of Meghna Petroleum. \"We received the OT Ocean Star shi', 'মাত্রাতিরিক্ত পানিমিশ্রিত ফার্নেস অয়েল মেঘনা পেট্রোলিয়ামের মূল ট্যাংকারে মেশানোর বিষয়টি জাগো নিউজের কাছে স্বীকার করেন প্রতিষ্ঠানের বাল্ক ইনচার্জ রাসেদুল হক। তিনি বলেন, “আমরা গত রাতে সিরাজগঞ্জফেরত ‘ওটি ওশান স্টার’ জাহাজটি রিসিভ করেছি।”', '2020-12-28', 'December', '2020', 'Interview with Mizanur Rahman Khan', 'মিজানুর রহমান খান অর্থনীতি প্রবৃদ্ধি সাক্ষাৎকার', 'there-are-two-main-challenges-to-growth', 'prbrriddhi-niye-duti-czalenj-mukhz', 'মাথাপিছু জিডিপিতে বাংলাদেশ কেন ভারতকে ছাড়িয়ে যাচ্ছে', 'Why is Bangladesh surpassing India in per capita GDP', 1, 0, NULL, 1, NULL, NULL, NULL, 1, 1, 1, '2020-11-15 03:53:49', '2020-12-28 00:58:53'),
(7, 12, 30, 3, 6, 56, 44, 'Not all banks want to lend', '\r\nসব ব্যাংক ঋণ দিতে চায় না', 'sb-bzangk-rrin-dite-cay-na-5fe9826c22461.png', '<pre class=\"tw-data-text tw-text-large XcVN5d tw-ta\" data-placeholder=\"Translation\" id=\"tw-target-text\" dir=\"ltr\" style=\"unicode-bidi: isolate; font-size: 28px; line-height: 36px; background-color: rgb(248, 249, 250); border: none; padding: 2px 0.14em 2px 0px; position: relative; margin-top: -2px; margin-bottom: -2px; resize: none; overflow: hidden; width: 277px; white-space: pre-wrap; overflow-wrap: break-word; color: rgb(32, 33, 36); font-family: &quot;Google Sans&quot;, arial, sans-serif !important;\"><span lang=\"en\">On Tuesday (November 24), Meghna Petroleum\'s Jetty 4 saw the furnace oil-carrying OT Ocean Star anchored. At the time, jetty workers told this reporter that furnace oil was unloaded from the ship last night in the main tanker of Meghna Petroleum.</span></pre>', 'সরেজমিনে মঙ্গলবার (২৪ নভেম্বর) মেঘনা পেট্রোলিয়ামের ৪নং জেটিতে গিয়ে দেখা যায়, ফার্নেস অয়েলবাহী ‘ওটি ওশান স্টার’ জাহাজটি নোঙর করা। এ সময় জেটিতে কর্মরতরা এই প্রতিবেদককে জানান, গতকাল রাতে এই জাহাজ থেকে ফার্নেস অয়েল খালাস করা হয়েছে মেঘনা পেট্রোলিয়ামের মূল ট্যাংকারে।', '2020-12-28', 'December', NULL, 'Loan Bangladesh Bank bank system', 'ঋণ বাংলাদেশ  ব্যাংক ব্যাংক ব্যবস্থা', 'not-all-banks-want-to-lend', 'sb-bzangk-rrin-dite-cay-na', 'সব ব্যাংক ঋণ দিতে চায় না', 'Not all banks want to lend', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, '2020-11-18 01:55:05', '2020-12-28 00:59:56'),
(13, 11, 39, 3, 8, 16, 1, 'The East can, but the West cannot', '\r\nপ্রাচ্য পারলেও পাশ্চাত্য পারছে না', 'pracz-parleoo-pascatz-parche-na-5fe98293695c2.png', '<p><br></p><p><span style=\"color: rgb(32, 33, 36); font-family: &quot;Google Sans&quot;, arial, sans-serif; font-size: 28px; white-space: pre-wrap; background-color: rgb(248, 249, 250);\">As a rule, if excess water is found in the furnace oil, it has to be purified from the Eastern Refinery in Chittagong. But Meghna Petroleum\'s General Manager (Operations) Sheikh Abdul Matleb, in</span><br></p>', 'নিয়ম অনুযায়ী, ফার্নেস অয়েলে অতিরিক্ত পানির অস্তিত্ব পাওয়া গেলে তা চট্টগ্রামের ইস্টার্ন রিফাইনারি থেকে পরিশোধন করে নিতে হয়। কিন্তু মেঘনা পেট্রোলিয়ামের জেনারেল ম্যানেজার (অপারেশন) সেখ আবদুল মতলেব ‘ওটি ওশান স্টার’ জাহাজের মালিক, জাহাজের মাস্টার ও সুপারভাইজারের যোগসাজশে পানিমিশ্রিত ফার্নেস অয়েল গত সোমবার (২৩ নভেম্বর) মেঘনা পেট্রোলিয়ামের মূল ট্যাংকারে ভর্তি করেন।', '2020-12-28', 'January', NULL, 'UK Corona Economy Japan China Growth', 'যুক্তরাজ্য করোনা অর্থনীতি জাপান চীন প্রবৃদ্ধি', 'the-east-can-but-the-west-cannot', 'pracz-parleoo-pascatz-parche-na', 'প্রাচ্য পারলেও পাশ্চাত্য পারছে না', 'The East can, but the West cannot', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, '2020-11-18 02:41:54', '2020-12-28 01:00:35'),
(14, 7, 7, 3, 3, 44, 33, 'Committee to look into the manipulation of mutual funds', '\r\nমিউচুয়াল ফান্ডের কারসাজি খতিয়ে দেখতে কমিটি', 'miucuyal-fander-karsaji-khtiye-dekhte-kmiti-5fe982f0801ce.jpeg', 'heikh Abdul Matleb has come up with a new strategy to cover up the excess water in the furnace oil of Baghabari 50 MW picking power plant.', 'বাঘাবাড়ী ৫০ মেগাওয়াট পিকিং পাওয়ার প্ল্যান্টের ফার্নেস অয়েলে মাত্রাতিরিক্ত পানি পাওয়ার ঘটনা ধামাচাপা দিতে নতুন কারসাজি সাজিয়েছেন সেখ আবদুল মতলেব।', '2020-12-28', NULL, NULL, 'Stock market DSEB SEC', 'শেয়ারবাজার ডিএসইবি এসইসি', 'committee-to-look-into-the-manipulation-of-mutual-funds', 'miucuyal-fander-karsaji-khtiye-dekhte-kmiti', 'মিউচুয়াল ফান্ডের কারসাজি খতিয়ে দেখতে কমিটি', 'Committee to look into the manipulation of mutual funds', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-11-18 03:54:06', '2020-12-28 01:02:08'),
(15, 7, 8, 3, 1, 1, 11, 'West Bengal fishermen are not getting hilsa', 'ইলিশ পাচ্ছে না পশ্চিমবঙ্গের জেলেরা', 'ilis-pacche-na-pscimbngoer-jelera-5fe983967cbf7.jpeg', '<p><br></p><p><span style=\"color: rgb(32, 33, 36); font-family: &quot;Google Sans&quot;, arial, sans-serif; font-size: 28px; white-space: pre-wrap; background-color: rgb(248, 249, 250);\">Jahangir, a storekeeper at the Baghabari 50-megawatt picking power plant, said, \"Despite repeated bans, we have got water in their furnace oil before, a lot of water.</span><br></p>', 'বারবার নিষেধ সত্ত্বেও জাহাজ ‘ওটি ওশান স্টার’কে ট্রিপ দেয়ার বিষয়ে বাঘাবাড়ী ৫০ মেগাওয়াট পিকিং পাওয়ার প্ল্যান্টের স্টোরকিপার জাহাঙ্গীর বলেন, ‘সত্যি বলতে কী, এর আগেও তাদের ফার্নেস অয়েলে আমরা পানি পেয়েছি, প্রচুর পানি।', '2020-12-28', NULL, NULL, 'Hilsa fish India', 'ইলিশ মাছ ভারত', 'west-bengal-fishermen-are-not-getting-hilsa', 'ilis-pacche-na-pscimbngoer-jelera', 'ইলিশ পাচ্ছে না পশ্চিমবঙ্গের জেলেরা', 'West Bengal fishermen are not getting hilsa', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-11-18 04:12:29', '2020-12-28 01:04:54'),
(16, 8, 23, 3, 3, 41, 30, 'New 10 taka note in the market from today', 'আজ থেকে বাজারে এল ১০ টাকার নতুন নোট', 'aj-theke-bajare-el-10-takar-ntun-not-5fe98428f2af7.jpg', 'Citing the example of different countries of the world, Rezaul Karim said, \"If it wants to do something really good, it has to add a lot. Even if it doesn\'t take 20 years, it will take at least five years. The Dubai Exhibition Center was established in 1986, but is still in operation. They have built a 60-storey hotel there. At first the hotel was not mentioned', '\r\n\r\n\r\nবিশ্বের বিভিন্ন দেশের উদাহরণ টেনে রেজাউল করিম বলেন, ‘এটা-কে সত্যিকারার্থে ভালো কিছু করতে চাইলে অনেক কিছু যোগ করতে হবে। ২০ বছর না লাগলেও কমপক্ষে পাঁচ বছর তো লাগবেই। দুবাই এক্সিবিশন সেন্টার ১৯৭৮ সালে তৈরি হয়েছে, সেটার কাজ কিন্তু এখনও চলে। তারা সেখানে ৬০ তলা হোটেল বানিয়েছে। প্রথমে হোটেল উল্লেখ ছিল না।', '2020-12-28', NULL, NULL, 'Bank Bangladesh Bank Banking system', 'ব্যাংক বাংলাদেশ  ব্যাংক ব্যাংক ব্যবস্থা', 'new-10-taka-note-in-the-market-from-today', 'aj-theke-bajare-el-10-takar-ntun-not', 'আজ থেকে বাজারে এল ১০ টাকার নতুন নোট', 'New 10 taka note in the market from today', 1, 0, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, '2020-11-18 04:16:57', '2020-12-28 01:07:21'),
(17, 6, 2, 3, 3, 41, 30, 'Stock investors are becoming greedy, the market is growing by leaps and bounds', 'লোভী হয়ে উঠছেন শেয়ার বিনিয়োগকারীরা', 'stock-investors-are-becoming-greedy-the-market-is-growing-by-leaps-and-bounds-5fe985a48ffff.PNG', 'Meanwhile, Obaidul Quader said that the situation of coronavirus is getting worse and if necessary tough decision is taken, corona virus is increasing day by day. If necessary, difficult decisions will come. Before human life. If there is no life, what will happen with livelihood.', 'এদিকে করোনাভাইরাসের পরিস্থিতি খারাপের দিকে যাচ্ছে জানিয়ে প্রয়োজনে কঠোর সিদ্ধান্ত নেয়ার কথা জানিয়ে ওবায়দুল কাদের বলেন, করোনা দিন দিন বাড়ছে। প্রয়োজনে কঠিন সিদ্ধান্ত আসবে। মানুষের জীবন আগে। জীবন না থাকলে জীবিকা দিয়ে কী হবে।', '2020-12-28', NULL, NULL, 'Don\'t resist the stock market\'s foreign news', 'শেয়ারবাজার বিদেশের খবর করোনা প্রতিরোধ', 'lovee-hye-uthchen-seyar-biniyogkareera', 'stock-investors-are-becoming-greedy-the-market-is-growing-by-leaps-and-bounds', 'লোভী হয়ে উঠছেন শেয়ার বিনিয়োগকারীরা, হু হু করে বাড়ছে বাজার', 'Stock investors are becoming greedy, the market is growing by leaps and bounds', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-11-18 04:23:07', '2020-12-28 01:13:40'),
(18, 5, 15, 3, 8, 16, 1, 'Call for simplification of VAT process', 'ভ্যাটের প্রক্রিয়া সহজ করার আহ্বান', 'call-for-simplification-of-vat-process-5fe986d220de3.jpg', 'Citing the example of different countries of the world, Rezaul Karim said, \"If it wants to do something really good, it has to add a lot. Even if it doesn\'t take 20 years, it will take at least five years. The Dubai Exhibition Center was established in 1986, but is still in operation.', 'বিশ্বের বিভিন্ন দেশের উদাহরণ টেনে রেজাউল করিম বলেন, ‘এটা-কে সত্যিকারার্থে ভালো কিছু করতে চাইলে অনেক কিছু যোগ করতে হবে। ২০ বছর না লাগলেও কমপক্ষে পাঁচ বছর তো লাগবেই। দুবাই এক্সিবিশন সেন্টার ১৯৭৮ সালে তৈরি হয়েছে, সেটার কাজ কিন্তু এখনও চলে।', '2020-12-28', NULL, NULL, 'Corona Economy VAT', 'করোনা অর্থনীতি ভ্যাট', 'vzater-prkriya-shj-krar-ahwan', 'call-for-simplification-of-vat-process', 'ভ্যাটের প্রক্রিয়া সহজ করার আহ্বান', 'Call for simplification of VAT process', 1, 0, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, '2020-11-18 04:26:09', '2020-12-28 01:18:42'),
(19, 3, 18, 3, 2, 37, 23, 'Bappi again with Apu', 'অপুর সঙ্গে আবার বাপ্পী', 'bappi-again-with-apu-5fe9895d20ffb.png', 'Speaking as the chief guest at the inaugural function of an education-friendly software of BUP located at Mirpur Cantonment, Dhaka on November 24, 2020, Education Minister Dr. Dipu Moni said, ‘Universities in higher education now need to focus more on research.', '২৪ নভেম্বর (২০২০) ঢাকার মিরপুর সেনানিবাসে অবস্থিত বিইউপির একটি শিক্ষাবান্ধব সফটওয়্যারের উদ্বোধনী অনুষ্ঠানে প্রধান অতিথির বক্তব্যে শিক্ষামন্ত্রী ডা. দীপু মনি বলেছেন, ‘উচ্চশিক্ষায় বিশ্ববিদ্যালয়গুলোকে এখন বেশি জোর দিতে হবে গবেষণার ক্ষেত্রে।', '2020-12-28', NULL, NULL, 'Shooting movie Apu Biswas', 'সিনেমা অপু বিশ্বাস শুটিং', 'opur-sngoe-abar-bappee', 'bappi-again-with-apu', 'অপুর সঙ্গে আবার বাপ্পী', 'Bappi again with Apu', 1, 0, NULL, 1, NULL, NULL, NULL, NULL, 1, 11, '2020-11-18 04:30:12', '2020-12-28 01:29:33'),
(20, 6, 6, 3, 7, 23, 50, 'Ranbir first \'married\' Deepika', 'প্রথম দেখায় দীপিকাকে ‘বিয়ে করেছিলেন’ রণবীর', 'ranbir-first-married-deepika-5fe989cadf536.jpg', 'Shah Rukh Khan\'s movie \'Om Shanti Om\' has a famous dialogue. In Bengali, the meaning is, \'If you want someone from the heart, the whole world rushes to bring him to you.\'', 'শাহরুখ খানের ‘ওম শান্তি ওম’ সিনেমার একটা বিখ্যাত ডায়ালগ আছে। বাংলা করলে অর্থটা দাঁড়ায় এ রকম, ‘তুমি যদি কাউকে মন থেকে চাও, তো সমস্ত পৃথিবী তাকে তোমার কাছে এনে দেবার জন্য উঠেপড়ে লেগে যায়।’ রণবীর সিং বোধ হয় কথাটা মনে নিয়েছিলেন।', '2020-12-28', NULL, NULL, 'Ranbir Sing dipika Padukon taraka', 'রণবীর সিং দীপিকা পাড়ুকোন তারকা', 'prthm-dekhay-deepikake-biye-krechilen-rnbeer', 'ranbir-first-married-deepika', 'প্রথম দেখায় দীপিকাকে ‘বিয়ে করেছিলেন’ রণবীর', 'Ranbir first \'married\' Deepika', 1, 0, NULL, 1, NULL, NULL, NULL, NULL, 1, 3, '2020-11-18 04:34:22', '2020-12-28 01:31:23'),
(21, 6, 1, 3, 7, 19, 46, 'Bad news, good news about \'Family Crisis\'', '\'ফ্যামিলি ক্রাইসিস\' নিয়ে দুঃসংবাদ, সুসংবাদ', 'bad-news-good-news-about-family-crisis-5fe98d87d4932.gif', 'When a play becomes popular in Bangladesh, it is dragged out. Mostafa Kamal Raj, the director of the \'Family Crisis\' series, does not want to walk that path. Viewers have been waiting to see the drama on television and online since the broadcast. Yet why are you finishing the play so fast?', 'বাংলাদেশে কোনো নাটক দর্শকপ্রিয় হয়ে উঠলে সেটি টেনে বাড়ানো হয়। ‘ফ্যামিলি ক্রাইসিস’ ধারাবাহিকের পরিচালক মোস্তফা কামাল রাজ সেই পথে হাঁটতে চান না। প্রচারের পর থেকেই টেলিভিশন ও অনলাইনে এ নাটক দেখতে দর্শক অপেক্ষা করে থাকেন। তবু কেন এত দ্রুত নাটকটি শেষ করছেন?', '2020-12-28', NULL, NULL, 'Family Crisis', 'ফ্যামিলি ক্রাইসিস', 'fzamili-kraisis-niye-dusngbad-susngbad', 'bad-news-good-news-about-family-crisis', '\'ফ্যামিলি ক্রাইসিস\' নিয়ে দুঃসংবাদ, সুসংবাদ', 'Bad news, good news about \'Family Crisis\'', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 5, '2020-11-18 04:38:16', '2020-12-28 01:47:20'),
(22, 5, 17, 3, 7, 21, 48, 'Scarlet on the street after the wedding ring', 'বিয়ের আংটি পরে রাস্তায় স্কারলেট', 'scarlet-on-the-street-after-the-wedding-ring-5fe98de76d484.PNG', 'Hollywood actress Scarlett Johansson secretly got married for the third time in the last week of October. Comedian Colin Just is the life partner of this 35-year-old big screen black widow. No pictures of the wedding came through social media. But for the first time since the marriage, Scarlett was seen on the streets of New York.', 'অক্টোবরের শেষ সপ্তাহে গোপনে তৃতীয় বিয়ে সেরেছেন হলিউড অভিনেত্রী স্কারলেট জোহানসন। ৩৫ বছর বয়সী বড় পর্দার এই ব্ল্যাক উইডোর জীবনসঙ্গী কমেডিয়ান কলিন জস্ট। বিয়ের কোনো ছবি আসেনি সামাজিক যোগাযোগমাধ্যমে। তবে বিয়ের পরে প্রথমবারের মতো নিউইয়র্কের রাস্তায় দেখা গেছে স্কারলেটকে।', '2020-12-28', NULL, NULL, 'Cinema Festival Festival', 'সিনেমা চলচ্চিত্র উৎসব চলচ্চিত্র', 'biyer-angti-pre-rastay-skarlet', 'scarlet-on-the-street-after-the-wedding-ring', 'বিয়ের আংটি পরে রাস্তায় স্কারলেট', 'Scarlet on the street after the wedding ring', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 7, '2020-11-18 04:43:35', '2020-12-28 01:48:55'),
(23, 6, 1, 3, 8, 17, 3, 'Shakib is not upset with the change of schedule for another reason', 'শাকিব শিডিউল পরিবর্তনে চটেছেন না অন্য কারণ', 'shakib-is-not-upset-with-the-change-of-schedule-for-another-reason-5fe98dba77dd1.png', 'Allegations of falsifying the schedule are often heard against the actors of Dhaliwood. This time, actor Shakib Khan accused the director of falsifying the schedule. Shakib Khan had scheduled the shooting of two songs for Nawab LLB three times in a row. The director of the film has failed to shoot as scheduled three times. Shakib Khan is angry about this.', 'শিডিউল ফাঁসানোর অভিযোগ প্রায়ই শোনা যায় ঢালিউডের অভিনয়শিল্পীদের বিরুদ্ধে। এবার পরিচালকের বিরুদ্ধে শিডিউল ফাঁসানোর অভিযোগ করলেন অভিনেতা শাকিব খান। নবাব এলএলবি ছবির দুটি গানের শুটিংয়ের জন্য পরপর তিনবার শিডিউল দিয়েছিলেন শাকিব খান। তিনবারই শিডিউল অনুযায়ী শুটিং করতে ব্যর্থ হয়েছেন ছবিটির পরিচালক। এতে চটেছেন শাকিব খান।', '2020-12-28', NULL, NULL, 'Movie shooting spot Shakib Khan', 'সিনেমা শুটিং স্পট শাকিব খান', 'sakib-sidiul-pribrtne-ctechen-na-onz-karn', 'shakib-is-not-upset-with-the-change-of-schedule-for-another-reason', 'শাকিব শিডিউল পরিবর্তনে চটেছেন না অন্য কারণ', 'Shakib is not upset with the change of schedule for another reason', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-11-18 04:47:29', '2020-12-28 01:48:10'),
(24, 4, 12, 3, 7, 22, 49, 'Applut Asaduzzaman Nur watching that drama', 'যে নাটক দেখে আপ্লুত আসাদুজ্জামান নূর', 'applut-asaduzzaman-nur-watching-that-drama-5fe98e13ae700.PNG', 'The Awami League leader is building a road to go to his sister\'s house by breaking the wheel guide and railing of the bridge built with LGED funding. Ward Awami League leader Rezaul Karim Babu Khan has been accused.', 'বোনের বাড়িতে যেতে এলজিইডির অর্থায়নে নির্মিত ব্রিজের হুইল গাইড ও রেলিং ভেঙে রাস্তা বানাচ্ছেন আওয়ামী লীগ নেতা। ওয়ার্ড আওয়ামী লীগ নেতা রেজাউল করিম বাবু খানের বিরুদ্ধে এমন অভিযোগ উঠেছে।', '2020-12-28', NULL, NULL, 'Mancha Natak Binodhan Asaduzzaman Nur', 'মঞ্চ নাটক বিনোদন আসাদুজ্জামান নূর', 'ze-natk-dekhe-aplut-asadujjaman-nuur', 'applut-asaduzzaman-nur-watching-that-drama', 'যে নাটক দেখে আপ্লুত আসাদুজ্জামান নূর', 'Applut Asaduzzaman Nur watching that drama', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3, '2020-11-18 04:51:21', '2020-12-28 01:49:40'),
(25, 4, 11, 3, 1, 27, 13, 'Where he gets so much courage', 'এত সাহস পায় কোথায়', 'where-he-gets-so-much-courage-5fe99132b7e88.jpg', 'The maximum punishment for rape is the death penalty. But the incidence of rape in the country is not decreasing, but increasing. Child rape, gang rape and murder after rape are gradually consuming our society. Acquaintances are involved in many incidents.', 'ধর্ষণের সর্বোচ্চ শাস্তি মৃত্যুদণ্ডের বিধান রেখে সংশোধিত ‘নারী ও শিশু নির্যাতন দমন আইন, ২০০০’ অধ্যাদেশ আকারে জারি করা হয়েছে। কিন্তু তাতেও দেশে ধর্ষণের ঘটনা কমছে না, বরং বাড়ছে। শিশু ধর্ষণ, গণধর্ষণ ও ধর্ষণ শেষে হত্যার ঘটনা ক্রমে গ্রাস করছে আমাদের সমাজকে। অনেক ঘটনার সঙ্গেই পরিচিতজনেরা জড়িত।', '2020-12-28', NULL, NULL, 'Nari Narimancha', 'নারী নারীমঞ্চ', 'et-sahs-paz-kothaz', 'where-he-gets-so-much-courage', 'এত সাহস পায় কোথায়', 'Where he gets so much courage', 1, 0, NULL, 1, NULL, NULL, NULL, NULL, 1, 1, '2020-11-18 05:07:00', '2020-12-28 02:02:58'),
(26, 7, 8, 3, 7, 20, 47, 'Handy Kebab', 'হান্ডি কাবাব', 'handy-kebab-5fe99160d5e1e.png', 'For the kebab: 1 cup beef paste of beef or mutton, 2 pieces of bread, 1 teaspoon of ginger, 1 teaspoon of garlic, 2 tablespoons of finely chopped onion, 1 teaspoon of raw chilli paste, 1 teaspoon of kebab spice, mint leaves 1 teaspoon, salt to taste and oil as needed.', 'গরু বা খাসির কিমা পেস্ট ১ কাপ, পাউরুটি ২ টুকরা, আদাবাটা ১ চা-চামচ, রসুনবাটা ১ চা-চামচ, পেঁয়াজ মিহি কুচি ২ টেবিল চামচ, কাঁচা মরিচবাটা ১ চা-চামচ, কাবাব মসলা ১ চা-চামচ, পুদিনা পাতাকুচি ১ চা-চামচ, লবণ স্বাদমতো ও তেল প্রয়োজনমতো।', '2020-12-28', NULL, NULL, 'Recipe design', 'রেসিপিনকশা', 'handi-kabab', 'handy-kebab', 'হান্ডি কাবাব', 'Handy Kebab', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-11-18 05:11:01', '2020-12-28 02:03:45'),
(27, 7, 8, 3, 8, 16, 2, 'Songs from poetry', 'কবিতা থেকে গান', 'songs-from-poetry-5fe99a6f5d073.jpg', 'It is a rare instance that those who write songs have a reputation in literature. The opposite song can also be sung following the example of a world poet or a national poet. However, both of them were first established as poets.', 'যাঁরা গান লেখেন, সাহিত্যে তাঁদের নামডাক আছে—এমন দৃষ্টান্ত বিরল। বিশ্বকবি বা জাতীয় কবির উদাহরণ টেনে এর উল্টো গীতও গাওয়া যায়। তবে তাঁরা দুজনেই প্রথমে কবি হিসেবে প্রতিষ্ঠিত হয়েছেন।', '2020-12-28', NULL, NULL, 'Poetry Bangla Song', 'কবিতা বাংলা গান', 'kbita-theke-gan', 'songs-from-poetry', 'কবিতা থেকে গান', 'Songs from poetry', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-11-18 05:15:04', '2020-12-28 02:42:23'),
(28, 6, 2, 3, 1, 28, 37, 'Marriage without the consent of parents', 'মা-বাবার অমতে বিয়ে', 'marriage-without-the-consent-of-parents-5fe99a99e37b6.jpeg', 'Mr. Jamil was playing with Ratul on the verandah. Once he lifted his one-year-old grandson upwards, he brought Sai down to his chest again. When he lifted it up, fear and surprise appeared in his eyes, and when he lowered it again, the child laughed with joy', 'বারান্দায় রাতুলকে নিয়ে খেলছিলেন জামিল সাহেব। এক বছর বয়সী নাতিকে একবার ওপর দিকে তুলে ধরেন, আবার সাঁই নামিয়ে আনেন বুকের কাছে। ওপর দিকে তুলে ধরলে চোখে-মুখে ফুটে ওঠে ভয় ও বিস্ময়, আবার নামিয়ে আনলে আনন্দে খলখল করে হেসে ওঠে শিশুটি।', '2020-12-28', NULL, NULL, 'Young people love family', 'তরুণেরা পরিবার ভালোবাসা', 'ma-babar-omte-biye', 'marriage-without-the-consent-of-parents', 'মা-বাবার অমতে বিয়ে', 'Marriage without the consent of parents', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-11-18 05:18:39', '2020-12-28 02:43:06'),
(29, 3, 20, 3, 2, 35, 21, 'Gas explosion in manhole', 'ম্যানহোলে গ্যাস বিস্ফোরণ', 'gas-explosion-in-manhole-5fe99abee35f4.png', '14 domestic and foreign banks are conducting loan disbursement activities in violation of the rules. This is because the banks are disbursing loans at high interest rates by accepting low interest deposits without following the policy of the central bank. Although most of the banks were able to do so, but a few banks could not manage the difference in interest rates on deposits and loans, raising questions in various quarters.', 'নিয়ম ভঙ্গ করেই ঋণ বিতরণ কার্যক্রম পরিচালনা করছে দেশি-বিদেশি ১৪টি ব্যাংক। কারণ, কেন্দ্রীয় ব্যাংকের নীতিমালা না মেনেই অল্প সুদে আমানত গ্রহণ করে বেশি সুদে ঋণ বিতরণ করছে ব্যাংকগুলো। বেশিরভাগ ব্যাংক পারলেও হাতেগোনা কয়েকটি ব্যাংক আমানত ও ঋণের সুদহারের পার্থক্য (স্প্রেড) পরিপালন করতে না পারায় প্রশ্ন উঠেছে বিভিন্ন মহলে।', '2020-12-28', NULL, NULL, 'Editorial', 'সম্পাদকীয়', 'mzanhole-gzas-bisforn', 'gas-explosion-in-manhole', 'ম্যানহোলে গ্যাস বিস্ফোরণ', 'Gas explosion in manhole', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-11-18 05:23:13', '2020-12-28 02:43:43'),
(30, 5, 16, 3, 1, 3, 9, 'New trade alliances and weaknesses in China', 'চীনমুখী নতুন বাণিজ্য জোট ও কমজোরি আমেরিকা', 'new-trade-alliances-and-weaknesses-in-china-5fe99ae29f406.png', 'Just a few days ago, Diego Maradona underwent brain surgery due to bleeding. After a few days in the hospital, the doctors sent him to a rehabilitation center. But suddenly the Argentine legend had a heart attack today. From where he never returned. Fell into the lap of death', 'মাত্র কয়েকদিন আগেই রক্তক্ষরণজনিত কারণে ডিয়েগো ম্যারাডোনার মস্তিষ্কে অস্ত্রোপচার করা হয়েছিল। কয়েকদিন হাসপাতালে থাকার পর ডাক্তাররা তাকে পুনর্বাসন কেন্দ্রে পাঠিয়েছিলেন। কিন্তু হঠাৎ করেই আজ হার্ট অ্যাটাক করলেন আর্জেন্টাইন এই কিংবদন্তি। যেখান থেকে আর ফিরলেন না তিনি। মৃত্যুর কোলে ঢলে পড়লেন।', '2020-12-28', NULL, NULL, 'China Trade War Import Export Bangladesh Vietnam', 'চীন বাণিজ্য  যুদ্ধ আমদানি রপ্তানি বাংলাদেশ ভিয়েতনাম', 'ceenmukhee-ntun-banijz-jot-oo-kmjori-amerika', 'new-trade-alliances-and-weaknesses-in-china', 'চীনমুখী নতুন বাণিজ্য জোট ও কমজোরি আমেরিকা', 'New trade alliances and weaknesses in China', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, '2020-11-18 05:28:25', '2020-12-28 02:44:19'),
(31, 3, 21, 3, 3, 43, 32, 'Registration is impossible within eight days of registration', 'নিবন্ধনের আট দিনের মধ্যে নামজারি অসম্ভব', 'registration-is-impossible-within-eight-days-of-registration-5fe99d7b505eb.PNG', 'Hundreds of families in Brahmanbaria\'s Akhaura upazila have called for an eviction drive after paying compensation to landowners acquired for a railway double line project.', 'ব্রাহ্মণবাড়িয়ার আখাউড়া উপজেলায় রেলওয়ের ডাবল লাইন প্রকল্পের জন্য অধিগ্রহণ করা জমির মালিকদের ক্ষতিপূরণ দেয়ার পর উচ্ছেদ অভিযান পরিচালার আহ্বান জানিয়েছে শতাধিক পরিবারক্ষতিপূরণ ছাড়াই উচ্ছেদ আতঙ্কে ভুগছে পরিবারগুলো। এ নিয়ে রোববার (২৯ নভেম্বে) আখাউড়া উপজেলার দেবগ্রাম পাইলট উচ্চ বিদ্যালয় মাঠে সংবাদ সম্মেলন করেছেন ক্ষতিগ্রস্তরা।', '2020-12-28', NULL, NULL, 'Law & Court Law & Justice Mizanur Rahman Khan Interview', 'আইন ও আদালত আইন ও বিচার মিজানুর রহমান খান সাক্ষাৎকার', 'nibndhner-at-diner-mdhze-namjari-osmvb', 'registration-is-impossible-within-eight-days-of-registration', 'নিবন্ধনের আট দিনের মধ্যে নামজারি অসম্ভব', 'Registration is impossible within eight days of registration', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, '2020-11-18 05:33:04', '2020-12-28 02:55:23'),
(32, 5, 15, 3, 3, 42, 31, 'The raw market is the hospital', 'কাঁচাবাজার হচ্ছে হাসপাতাল', 'the-raw-market-is-the-hospital-5fe99dea5e769.PNG', 'Dhaka North City Corporation Mayor Atiqul Islam has announced to transform the Mohakhali Market built by the City Corporation in Mohakhali into a modern hospital with 500 beds. It has already been used as an isolation center for the treatment and testing of Kovid patients.', 'ঢাকা উত্তর সিটি করপোরেশনের মেয়র আতিকুল ইসলাম মহাখালীতে সিটি করপোরেশন নির্মিত মহাখালী মার্কেটকে ৫০০ শয্যার আধুনিক হাসপাতালে রূপান্তর করার ঘোষণা দিয়েছেন। কোভিড রোগীদের চিকিৎসা ও পরীক্ষার জন্য এটি আগে থেকেই আইসোলেশন সেন্টার হিসেবে ব্যবহৃত হয়ে আসছিল।', '2020-12-28', NULL, NULL, 'Editorial', 'সম্পাদকীয়', 'kanncabajar-hcche-haspatal', 'the-raw-market-is-the-hospital', 'কাঁচাবাজার হচ্ছে হাসপাতাল', 'The raw market is the hospital', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, '2020-11-18 05:36:18', '2020-12-28 02:57:14'),
(33, 5, 17, 3, 1, 2, 10, 'The second wave of corona can make the situation fragile', 'করোনার দ্বিতীয় ঢেউ পরিস্থিতি নাজুক করে দিতে পারে', 'the-second-wave-of-corona-can-make-the-situation-fragile-5fe99e12dde08.PNG', 'Senjuti Saha is a microbiologist at the Child Health Research Foundation, a non-governmental organization in Bangladesh. Under his leadership, the first genome sequence of coronavirus was unveiled in Bangladesh.', 'সেঁজুতি সাহা বাংলাদেশের বেসরকারি প্রতিষ্ঠান চাইল্ড হেলথ রিসার্চ ফাউন্ডেশনের অণুজীববিজ্ঞানী। তাঁর নেতৃত্বে বাংলাদেশে প্রথম করোনাভাইরাসের জিন নকশা (জিনোম সিকোয়েন্স) উন্মোচিত হয়।', '2020-12-28', NULL, NULL, 'Don\'t do Bangladesh, don\'t do medical treatment and the future', 'করোনা বাংলাদেশ করোনা চিকিৎসা করোনা ও ভবিষ্যত', 'kronar-dwiteey-dheu-pristhiti-najuk-kre-dite-pare', 'the-second-wave-of-corona-can-make-the-situation-fragile', 'করোনার দ্বিতীয় ঢেউ পরিস্থিতি নাজুক করে দিতে পারে', 'The second wave of corona can make the situation fragile', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, '2020-11-18 05:40:01', '2020-12-28 02:57:55'),
(34, 4, 12, 3, 3, 46, 35, 'At least 10 Indians and five Pakistanis were killed in cross-border shelling', 'সীমান্তে গোলাগুলিতে ভারতের ১০, পাকিস্তানের ৫ জন নিহত', 'at-least-10-indians-and-five-pakistanis-were-killed-in-cross-border-shelling-5fe99e3a25a70.PNG', 'At least 15 people have been killed in clashes between Indian and Pakistani forces on the Kashmir border. 10 of them are civilians. The incident took place in the Keran sector of the border on Friday.', 'কাশ্মীর সীমান্তে ভারত ও পাকিস্তানের সেনাদের লড়াইয়ে দুই পক্ষের অন্তত ১৫ জন নিহত হয়েছেন। এর মধ্যে ১০ জনই বেসামরিক নাগরিক। আজ শুক্রবার সীমান্তের কেরান সেক্টরে দুই পক্ষের গোলা বিনিময়ে এই হতাহতের ঘটনা ঘটে।', '2020-12-28', NULL, NULL, 'Pakistan India International', 'পাকিস্তানভারতআন্তর্জাতিক', 'seemante-golagulite-varter-10-pakistaner-5-jn-niht', 'at-least-10-indians-and-five-pakistanis-were-killed-in-cross-border-shelling', 'সীমান্তে গোলাগুলিতে ভারতের ১০, পাকিস্তানের ৫ জন নিহত', 'At least 10 Indians and five Pakistanis were killed in cross-border shelling', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 2, '2020-11-18 05:44:32', '2020-12-28 02:58:34'),
(35, 3, 20, 3, 1, 3, 9, 'The price of one pigeon is more than 16 crore rupees', 'এক কবুতরের দাম ১৬ কোটি টাকার বেশি', 'the-price-of-one-pigeon-is-more-than-16-crore-rupees-5fe99da35a66c.PNG', 'How much more can the price of a pigeon. A few lakh rupees. But if you hear the price of a pigeon bought at auction, you may not believe it. Because, a two-year-old pigeon has been sold for 1.9 million dollars. And a rich man from China bought the pigeon, leaving everyone behind at the auction in Belgium.', 'কবুতরের দাম আর কতই বা হতে পারে। কয়েক লাখ টাকা। কিন্তু নিলামে কেনা এক কবুতরের দাম শুনলে বিশ্বাস না-ও হতে পারে। কারণ, দুই বছর বয়সী এক কবুতর বিক্রি হয়েছে ১৯ লাখ ডলারে। আর বেলজিয়ামের নিলামে সবাইকে পেছনে ফেলে ওই কবুতর কিনেছেন চীনের একজন ধনবান ব্যক্তি।', '2020-12-28', NULL, NULL, 'Asia-China', 'এশিয়াচীন', 'ek-kbutrer-dam-16-koti-takar-besi', 'the-price-of-one-pigeon-is-more-than-16-crore-rupees', 'এক কবুতরের দাম ১৬ কোটি টাকার বেশি', 'The price of one pigeon is more than 16 crore rupees', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-11-18 05:47:12', '2020-12-28 02:56:03'),
(36, 4, 13, 3, 3, 42, 31, 'MPs besiege parliament in Thailand, MPs leave the area by boat', 'থাইল্যান্ডে পার্লামেন্ট ঘেরাও, নৌকায় এলাকা ছাড়লেন এমপিরা', 'mps-besiege-parliament-in-thailand-mps-leave-the-area-by-boat-5fe99b6825c68.png', 'Police in Thailand have used water cannons to protest anti-government protests outside parliament. Clashes erupted between anti-government and pro-monarchy people near the country\'s parliament building on Tuesday. Police used water cannons to disperse them. At that time, the MPs left the place by boat from the Parliament building located near the river.', 'থাইল্যান্ডে পার্লামেন্টের বাইরে সরকারবিরোধী বিক্ষোভে জলকামান ব্যবহার করেছে দেশটির পুলিশ। গতকাল মঙ্গলবার দেশটির পার্লামেন্ট ভবনের পাশে সরকারবিরোধী ও রাজতন্ত্রের অনুসারী দুই পক্ষে লোকজনের মধ্যে সংঘর্ষ ছড়িয়ে পড়ে। পুলিশ তাঁদের ছত্রভঙ্গ করতে জলকামান ব্যবহার করে। এ সময় নদীর পাশে অবস্থিত পার্লামেন্ট ভবন থেকে এমপিরা নৌকায় স্থান ত্যাগ করেন।', '2020-12-28', NULL, NULL, 'Asia Thailand', 'এশিয়া থাইল্যান্ড', 'thailzande-parlament-gheraoo-noukay-elaka-charlen-empira', 'mps-besiege-parliament-in-thailand-mps-leave-the-area-by-boat', 'থাইল্যান্ডে পার্লামেন্ট ঘেরাও, নৌকায় এলাকা ছাড়লেন এমপিরা', 'MPs besiege parliament in Thailand, MPs leave the area by boat', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-11-18 05:50:09', '2020-12-28 02:46:32'),
(37, 4, 14, 3, 1, 1, 11, 'Dramatic about the approval of the Michigan vote results', 'মিশিগানে ভোটের ফল অনুমোদন নিয়ে নাটকীয়তা', 'dramatic-about-the-approval-of-the-michigan-vote-results-5fe99b12a6c98.png', 'In the United States, there has been a lot of drama about the outcome of the presidential election. Michigan State\'s Wayne County Electoral Office has begun a dramatic turn of events over whether to officially approve the results. Under state electoral law, county boards of canvassers are required to officially approve election results before a certain date.', 'যুক্তরাষ্ট্রে প্রেসিডেন্ট নির্বাচনের ফল নিয়ে নানা নাটকীয়তা শুরু হয়েছে। মিশিগান রাজ্যের ওয়েইন কাউন্টি নির্বাচন অফিস ভোটের ফল সরকারিভাবে অনুমোদন করা-না করা নিয়ে নাটকীয় ঘটনার সূচনা ঘটে। রাজ্যের নির্বাচনী আইন অনুযায়ী, কাউন্টি বোর্ড অব ক্যানভেসারস নির্দিষ্ট তারিখের আগে নির্বাচনের ফল সরকারিভাবে অনুমোদন করার কথা।', '2020-12-28', NULL, NULL, 'Joe Biden United States Election Donald Trump', 'জো বাইডেন যুক্তরাষ্ট্র যুক্তরাষ্ট্র নির্বাচন ডোনাল্ড ট্রাম্প', 'misigane-voter-fl-onumodn-niye-natkeeyta', 'dramatic-about-the-approval-of-the-michigan-vote-results', 'মিশিগানে ভোটের ফল অনুমোদন নিয়ে নাটকীয়তা', 'Dramatic about the approval of the Michigan vote results', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, '2020-11-18 05:53:11', '2020-12-28 02:45:07'),
(38, 4, 11, 3, 2, 4, 14, 'The mastermind of the attack on Kabul University has been arrested', 'কাবুল বিশ্ববিদ্যালয়ে হামলার মূলহোতা গ্রেপ্তার', 'the-mastermind-of-the-attack-on-kabul-university-has-been-arrested-5fe99e68e489a.png', 'Over the last few years, the media has been reporting that the road leading to Birshreshtha\'s house has been partially destroyed. After that, MPs, officials of Water Development Board and senior officials including officials of district administration came to inspect the road at different times.', 'গত কয়েক বছর ধরে গণমাধ্যমে বীরশ্রেষ্ঠের বাড়ি যাওয়ার সড়কটি আংশিক ভেঙে যাওয়ার খবর প্রচার হয়। এরপর সড়কটি পরিদর্শনে বিভিন্ন সময়ে আসেন সাংসদ, পানি উন্নয়ন বোর্ডের কর্মকর্তারা ও জেলা প্রশাসনের কর্মকর্তাসহ ঊর্ধ্বতন কর্মকর্তারা।', '2020-12-28', NULL, NULL, 'Attack Pakistan Afghanistan Afghanistan Asia', 'হামলা পাকিস্তান আফগানিস্তান এশিয়া', 'kabul-biswbidzalye-hamlar-muulhota-greptar', 'the-mastermind-of-the-attack-on-kabul-university-has-been-arrested', 'কাবুল বিশ্ববিদ্যালয়ে হামলার মূলহোতা গ্রেপ্তার', 'The mastermind of the attack on Kabul University has been arrested', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-11-18 05:56:01', '2020-12-28 02:59:21'),
(39, 4, 13, 3, 2, 5, 15, 'Trump could withdraw more troops from Afghanistan-Iraq', 'আফগানিস্তান-ইরাক থেকে আরও সেনা ফেরাতে পারেন ট্রাম্প', 'trump-could-withdraw-more-troops-from-afghanistan-iraq-5fe9a438875c1.PNG', 'go Maradona underwent brain surgery due to bleeding. After a few days in the hospital, the doctors sent him to a rehabilitation center. But suddenly the Argentine legend had a heart attack today. From where he never returned. Fell into the lap of death.', 'মাত্র কয়েকদিন আগেই রক্তক্ষরণজনিত কারণে ডিয়েগো ম্যারাডোনার মস্তিষ্কে অস্ত্রোপচার করা হয়েছিল। কয়েকদিন হাসপাতালে থাকার পর ডাক্তাররা তাকে পুনর্বাসন কেন্দ্রে পাঠিয়েছিলেন। কিন্তু হঠাৎ করেই আজ হার্ট অ্যাটাক করলেন আর্জেন্টাইন এই কিংবদন্তি। যেখান থেকে আর ফিরলেন না তিনি। মৃত্যুর কোলে ঢলে পড়লেন।', '2020-12-28', NULL, NULL, 'Afghanistan Iraq United States Donald Trump', 'আফগানিস্তান ইরাক যুক্তরাষ্ট্র ডোনাল্ড ট্রাম্প', 'afganistan-irak-theke-aroo-sena-ferate-paren-tramp', 'trump-could-withdraw-more-troops-from-afghanistan-iraq', 'আফগানিস্তান-ইরাক থেকে আরও সেনা ফেরাতে পারেন ট্রাম্প', 'Trump could withdraw more troops from Afghanistan-Iraq', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-11-18 05:58:40', '2020-12-28 03:24:08'),
(40, 16, 47, 3, 1, 27, 12, 'Elon Musk replaced Zuckerberg at the top of the rich list', 'জাকারবার্গকে সরিয়ে ধনীর তালিকায় ওপরে উঠলেন ইলন মাস্ক', 'elon-musk-replaced-zuckerberg-at-the-top-of-the-rich-list-5fe9a46fee908.jpg', 'Home Minister Asaduzzaman Khan Kamal said, \"On Victory Day on December 16, a domestic ceremony can be held in accordance with the rules of health.', 'আগামী ১৬ ডিসেম্বর বিজয় দিবসে স্বাস্থ্যবিধি মেনে ঘরোয়া অনুষ্ঠান করা যাবে জানিয়ে স্বরাষ্ট্রমন্ত্রী আসাদুজ্জামান খান কামাল বলেন, ‘কিন্তু সেই বিষয়ে আইনশৃঙ্খলা বাহিনীকে (পুলিশ) আগে জানাতে হবে।', '2020-12-28', NULL, NULL, 'Plane crash travel to the United States', 'বিমান  দুর্ঘটনা ভ্রমণ যুক্তরাষ্ট্র', 'jakarbargke-sriye-dhneer-talikay-oopre-uthlen-iln-mask', 'elon-musk-replaced-zuckerberg-at-the-top-of-the-rich-list', 'জাকারবার্গকে সরিয়ে ধনীর তালিকায় ওপরে উঠলেন ইলন মাস্ক', 'Elon Musk replaced Zuckerberg at the top of the rich list', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, '2020-11-19 04:37:29', '2020-12-28 03:25:04'),
(44, 16, 47, 3, 7, 19, 46, 'The driver fled leaving the body of the farmer scattered on the tractor', 'ট্রাক্টরের ফলায় ছিন্নভিন্ন কৃষকের মরদেহ রেখে পালালেন চালক', 'the-driver-fled-leaving-the-body-of-the-farmer-scattered-on-the-tractor-5fe972917c414.PNG', 'A farmer named Abdur Rahim (44) was tragically killed by a tractor. The accident took place at Teparhat village in Garagram union of Kishoreganj upazila of Nilphamari on Thursday (November 26) morning.', 'ট্রাক্টরের ফলায় ছিন্নভিন্ন হয়ে নিজ ফসলি জমিতে মর্মান্তিকভাবে মারা গেলেন আব্দুর রহিম (৪৪) নামের এক কৃষক। বৃহস্পতিবার (২৬ নভেম্বর) সকালে নীলফামারীর কিশোরগঞ্জ উপজেলার গাড়াগ্রাম ইউনিয়নের টেপারহাট গ্রামে এই দুর্ঘটনা ঘটে।\r\n\r\nনিহত কৃষক ওই গ্রামের মৃত সমসের আলীর ছেলে।\r\nতথ্য পেয়েছে ভ্যাট গোয়েন্দা। প্রতিষ্ঠানটিতে ভ্যাট গোয়েন্দা অধিদফতরের একটি দল অভিযান চালিয়ে গোপন হিসাবপত্র জব্দ করে।\r\n\r\nগোপন সংবাদের ভিত্তিতে বুধবার (২ ডিসেম্বর) এই অভিযান পরিচালনা করা হয় বলে জানিয়েছেন নিরীক্ষা, গোয়েন্দা ও তদন্ত অধিদফতরের (মূল্য সংযোজন কর) মহাপরিচালক ড. মইনুল খান। অভিযানে নেতৃত্ব দেন অধিদফতরের উপপরিচালক তানভীর আহমেদ।', '2020-12-28', NULL, NULL, 'Across the country', 'দেশজুড়ে', 'traktrer-flay-chinnvinn-krrishker-mrdeh-rekhe-palalen-calk', 'the-driver-fled-leaving-the-body-of-the-farmer-scattered-on-the-tractor', 'ট্রাক্টরের ফলায় ছিন্নভিন্ন কৃষকের মরদেহ রেখে পালালেন চালক', 'The driver fled leaving the body of the farmer scattered on the tractor', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-12-03 00:05:32', '2020-12-27 23:52:17'),
(45, 16, 47, 3, 1, 3, 9, 'Life imprisonment for raping a disabled girl', 'প্রতিবন্ধী কিশোরীকে ধর্ষণের দায়ে যুবকের যাবজ্জীবন', 'life-imprisonment-for-raping-a-disabled-girl-5fe972454fa54.png', 'Nilphamari speechless girl accused of rape. A court has sentenced a 35-year-old man named Motaleb to life imprisonment. At the same time he was fined 20 thousand rupees.', 'নীলফামারীতে বাকপ্রতিবন্ধী কিশোরীকে ধর্ষণের দায়ে মো. মোতালেব (৩৫) নামে এক যুবকের যাবজ্জীবন সশ্রম কারাদণ্ড দিয়েছেন আদালত। একই সঙ্গে তাকে ২০ হাজার টাকা জরিমানা হয়েছে।\r\n\r\nবুধবার (২১ অক্টোবর) বিকেলে আসামির অনুপস্থিতিতে এ রায় দেন নীলফামারীর নারী ও শিশু নির্যাতন দমন ট্রাইব্যুনালের বিচারক আহসান তারেক।', '2020-12-28', NULL, NULL, 'Across the country', 'দেশজুড়ে', 'prtibndhee-kisoreeke-dhrshner-daye-zubker-zabjjeebn', 'life-imprisonment-for-raping-a-disabled-girl', 'প্রতিবন্ধী কিশোরীকে ধর্ষণের দায়ে যুবকের যাবজ্জীবন', 'Life imprisonment for raping a disabled girl', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-12-03 00:18:53', '2020-12-27 23:51:01'),
(46, 16, 47, 3, 7, 24, 51, 'Munna dreams of conquering the world', 'পৃথিবী জয়ের স্বপ্ন দেখেন মুন্না', 'munna-dreams-of-conquering-the-world-5fe97209d4242.jpg', 'Paralyzed from chest to toe. Hedayatul Aziz Munna has been using a wheelchair for 12 long years. Yet his life does not stop. Fighting in a wheelchair, inspiring all the disabled.', 'বুক থেকে পা পর্যন্ত প্যারালাইজড। দীর্ঘ ১২ বছর ধরে হুইল চেয়ারের সাহায্যে চলাফেরা করছেন হেদায়তুল আজিজ মুন্না। তবুও থেমে নেই তার জীবন। হুইল চেয়ারে বসেই লড়ছেন, অনুপ্রেরণা দিচ্ছেন সকল প্রতিবন্ধীদের।', '2020-12-28', NULL, NULL, 'Across the country', 'দেশজুড়ে', 'prrithibee-jyer-swpn-dekhen-munna', 'munna-dreams-of-conquering-the-world', 'পৃথিবী জয়ের স্বপ্ন দেখেন মুন্না', 'Munna dreams of conquering the world', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, '2020-12-03 00:35:59', '2020-12-27 23:50:02'),
(47, 16, 47, 16, 3, 41, 30, 'There is no initiative to preserve mass graves in Thakurgaon', 'ঠাকুরগাঁওয়ে গণকবর সংরক্ষণের উদ্যোগ নেই', 'there-is-no-initiative-to-preserve-mass-graves-in-thakurgaon-5fe971a60611e.jpg', 'December 3. Thakurgaon was liberated on this day in 1971. November is the death struggle of the heroic freedom fighters in this region and the fierce resistance of the freedom-loving people', '৩ ডিসেম্বর। একাত্তরের এই দিনে পাক হানাদার মুক্ত হয় ঠাকুরগাঁও। এই অঞ্চলে বীর মুক্তিযোদ্ধাদের মরণপণ লড়াই আর মুক্তিকামী জনগণের দুর্বার প্রতিরোধে নভেম্বরের শেষের দিক থেকেই পিছু হটতে শুরু করে পাকিস্তানি সৈন্যরা। তাদের চূড়ান্ত পরাজয় ঘটে আজকের এই দিনে।', '2020-12-28', NULL, NULL, 'Across the country', 'দেশজুড়ে', 'thakurgannwe-gnkbr-sngrkshner-udzog-nei', 'there-is-no-initiative-to-preserve-mass-graves-in-thakurgaon', 'ঠাকুরগাঁওয়ে গণকবর সংরক্ষণের উদ্যোগ নেই', 'There is no initiative to preserve mass graves in Thakurgaon', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-12-03 00:55:17', '2020-12-27 23:48:22'),
(48, 16, 47, 16, 7, 25, 52, 'On the way back home after submitting the assignment, the schoolgirl disappeare', 'অ্যাসাইনমেন্ট জমা দিয়ে বাড়ি ফেরার পথে স্কুলছাত্রী নিয়ে দফতরি উধাও', 'on-the-way-back-home-after-submitting-the-assignment-the-schoolgirl-disappeare-5fe9717aa4f93.png', 'Daftari picked up a schoolgirl on her way home after submitting the assignment examination book. The incident took place in Gafargaon upazila of Mymensingh', 'অ্যাসাইনমেন্ট পরীক্ষার খাতা জমা দিয়ে বাড়ি ফেরার পথে এক স্কুলছাত্রীকে তুলে নিয়ে গেছেন দফতরি। ময়মনসিংহের গফরগাঁও উপজেলায় এ ঘটনা ঘ', '2020-12-28', NULL, NULL, 'Across the country', 'দেশজুড়ে', 'ozasainment-jma-diye-bari-ferar-pthe-skulchatree-niye-dftri-udhaoo', 'on-the-way-back-home-after-submitting-the-assignment-the-schoolgirl-disappeare', 'অ্যাসাইনমেন্ট জমা দিয়ে বাড়ি ফেরার পথে স্কুলছাত্রী নিয়ে দফতরি উধাও', 'On the way back home after submitting the assignment, the schoolgirl disappeared', 1, 0, NULL, 1, NULL, NULL, NULL, NULL, 0, 0, '2020-12-03 01:06:39', '2020-12-27 23:47:39'),
(49, 16, 47, 16, 1, 2, 10, 'Two brothers died in the same place at the end of 6 months', '৮ মাসের মাথায় একই স্থানে একইভাবে মৃত্যু হলো দুই ভাইয়ের', 'two-brothers-died-in-the-same-place-at-the-end-of-6-months-5fe9714bad557.png', 'An autorickshaw passenger named Al Amin (25) was killed when he was hit by a tractor in Habiganj\'s Madhabpur upazila.\r\n\r\nThe incident took place in the Farhadpur area of ​​the Noahati-Mantala road around 8:30 pm on Wednesday (December 2).', 'হবিগঞ্জের মাধবপুর উপজেলায় ট্রাক্টরের চাপায় আল আমীন (২৫) নামে এক অটোরিকশার যাত্রী নিহত হয়েছেন।\r\n\r\nবুধবার (২ ডিসেম্বর) রাত সাড়ে ৮টার দিকে নোয়াহাটি-মনতলা সড়কের ফরহাদপুর এলাকায় এ ঘটনা ঘটে।', '2020-12-28', NULL, NULL, 'Across the country', 'দেশজুড়ে', '8-maser-mathay-eki-sthane-ekivabe-mrritzu-hlo-dui-vayer', 'two-brothers-died-in-the-same-place-at-the-end-of-6-months', '৮ মাসের মাথায় একই স্থানে একইভাবে মৃত্যু হলো দুই ভাইয়ের', 'Two brothers died in the same place at the end of 6 months', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-12-03 01:18:54', '2020-12-27 23:46:52'),
(50, 16, 47, 16, 6, 56, 44, 'Bicycle dealer VAT evasion, account confiscation', 'সাইকেল ব্যবসায়ীর ভ্যাট ফাঁকি, হিসাব জব্দ', 'bicycle-dealer-vat-evasion-account-confiscation-5fe971190b9d4.jpg', 'VAT detectives have received information about VAT evasion against an organization called \'Siraj Cycle Industries Limited\' in the capital\'s Bangshal. A team from the VAT Intelligence Department raided the company and seized secret accounts.', 'রাজধানীর বংশালে ‘সিরাজ সাইকেল ইন্ডাস্ট্রিজ লিমিটেড’ নামের একটি প্রতিষ্ঠানের বিরুদ্ধে ভ্যাট ফাঁকির তথ্য পেয়েছে ভ্যাট গোয়েন্দা। প্রতিষ্ঠানটিতে ভ্যাট গোয়েন্দা অধিদফতরের একটি দল অভিযান চালিয়ে গোপন হিসাবপত্র জব্দ করে।', '2020-12-28', NULL, NULL, 'Across the country', 'দেশজুড়ে', 'saikel-bzbsayeer-vzat-fannki-hisab-jbd', 'bicycle-dealer-vat-evasion-account-confiscation', 'সাইকেল ব্যবসায়ীর ভ্যাট ফাঁকি, হিসাব জব্দ', 'Bicycle dealer VAT evasion, account confiscation', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, '2020-12-03 01:28:50', '2020-12-27 23:46:01'),
(51, 16, 47, 16, 3, 43, 32, 'Blockade of administrative building demanding examination in JU', 'জাবিতে পরীক্ষা নেয়ার দাবিতে প্রশাসনিক ভবন অবরোধ', 'blockade-of-administrative-building-demanding-examination-in-ju-5fe970ed5d163.jpg', 'Students of the 45th batch of Jahangirnagar University (JU) have staged a sit-in program demanding to take the final year examination of graduation (honors). The program was held on Tuesday (December 1) at noon in front of the new administrative building of the university.', 'স্নাতক (সম্মান) শেষ বর্ষের পরীক্ষা নেয়ার দাবিতে অবস্থান কর্মসূচি পালন করেছেন জাহাঙ্গীরনগর বিশ্ববিদ্যালয়ের (জাবি) ৪৫ তম ব্যাচের শিক্ষার্থীরা। মঙ্গলবার (১ ডিসেম্বর) দুপুরে বিশ্ববিদ্যালয়ের নতুন প্রশাসনিক ভবনের সামনে এ কর্মসূচি পালন করা হয়।', '2020-12-28', NULL, NULL, 'Across the country', 'দেশজুড়ে', 'jabite-preeksha-neyar-dabite-prsasnik-vbn-obrodh', 'blockade-of-administrative-building-demanding-examination-in-ju', 'জাবিতে পরীক্ষা নেয়ার দাবিতে প্রশাসনিক ভবন অবরোধ', 'Blockade of administrative building demanding examination in JU', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-12-03 01:47:57', '2020-12-27 23:45:17'),
(52, 16, 47, 3, 8, 17, 11, 'Party criminals were not tried during BNP rule', 'বিএনপির আমলে দলীয় অপরাধীদের বিচার হয়নি', 'party-criminals-were-not-tried-during-bnp-rule-5fe970445bb5e.jpg', 'Awami League General Secretary and Minister for Road Transport and Bridges Obaidul Quader said, \"If we take shelter of irregularities and corruption, we will not give concessions to our party leaders and workers or even the people\'s', 'আওয়ামী লীগের সাধারণ সম্পাদক এবং সড়ক পরিবহন ও সেতুমন্ত্রী ওবায়দুল কাদের বলেছেন, অনিয়ম ও দুর্নীতির আশ্রয় নিলে আমরা নিজেদের দলীয় নেতাকর্মী এমনকি জনপ্রতিনিধিদেরও ছাড় দিচ্ছি না, অন্যায় করলে পক্ষ নিচ্ছি না, প্রশ্রয়ও দিচ্ছি না। অথচ বিএনপি অনুসরণ করছে সন্ত্রাস ও তোষণের নীতি। তারা সরকারের উন্নয়নমূলক কাজের অন্ধ সমালোচনা করে যাচ্ছেন।', '2020-12-28', NULL, NULL, 'Across the country', 'দেশজুড়ে', 'bienpir-amle-dleey-opradheeder-bicar-hyni', 'party-criminals-were-not-tried-during-bnp-rule', 'বিএনপির আমলে দলীয় অপরাধীদের বিচার হয়নি', 'The party criminals were not tried during the BNP rule', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-12-03 02:22:50', '2020-12-27 23:42:28'),
(53, 3, 18, 3, NULL, NULL, NULL, 'টিকা নিলেন কমলা হ্যারিস', 'টিকা নিলেন কমলা হ্যারিস', 'tika-nilen-kmla-hzaris-5fec1901834a6.png', '<p style=\"margin-right: 0px; margin-bottom: var(--space2); margin-left: 0px; padding: 0px; line-height: 1.67;\"><span style=\"color: rgb(51, 51, 51); font-family: roboto, sans-serif; font-size: 14px; white-space: pre-wrap;\">যুক্তরাষ্ট্রের নবনির্বাচিত ভাইস প্রেসিডেন্ট কমলা হ্যারিস করোনাভাইরাসের টিকা নিয়েছেন। বার্তা সংস্থা এএফপির প্রতিবেদনে এ তথ্য জানানো হয়। স্থানীয় সময় গতকাল মঙ্গলবার ওয়াশিংটন ডিসির ইউনাইটেড মেডিকেল সেন্টারে করোনার টিকার প্রথম ডোজ নেন কমলা হ্যারিস। তিনি যুক্তরাষ্ট্রের ওষুধ প্রস্তুতকারক প্রতিষ্ঠান মর্ডানার টিকা গ্রহণ করেন। তাঁর টিকা নেওয়ার দৃশ্য টেলিভিশনে সরাসরি সম্প্রচারিত হয়। টিকা নেওয়ার সময় কমলা হ্যারিস মাস্ক পরেছিলেন। তিনি ওয়াশিংটন ডিসির যে মেডিকেল সেন্টারে টিকা নেন, সে এলাকাটি আফ্রিকান-আমেরিকান অধ্যুষিত। যুক্তরাষ্ট্রে আফ্রিকান-আমেরিকান কমিউনিটির সদস্যদের মধ্যে করোনায় সংক্রমিত ও মৃত্যুর হার বেশি লক্ষ করা গেছে। করোনার টিকা নিতে সবচেয়ে অনাগ্রহী ব্যক্তিদের মধ্যে এই কমিউনিটির সদস্যরা রয়েছেন বলে জরিপে উঠে এসেছে। করোনার টিকার ওপর আস্থা রাখতে মার্কিন জনগণের প্রতি আহ্বান জানিয়েছেন কমলা হ্যারিস। টিকা সম্পর্কে তিনি বলেন, ‘আমি লোকজনকে মনে করিয়ে দিতে চাই, তাদের সহায়তার বিশ্বস্ত উৎস (টিকা) রয়েছে।</span><br></p>', '<p style=\"margin-bottom: var(--space2); margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 1.67;\"><span style=\"color: rgb(8, 8, 8); font-family: SolaimanLipi; font-size: 16px;\">ব্রাহ্মণবাড়িয়ার আখাউড়া উপজেলায় রেলওয়ের ডাবল লাইন প্রকল্পের জন্য অধিগ্রহণ করা জমির মালিকদের ক্ষতিপূরণ দেয়ার পর উচ্ছেদ অভিযান পরিচালার আহ্বান জানিয়েছে শতাধিক পরিবারক্ষতিপূরণ ছাড়াই উচ্ছেদ আতঙ্কে ভুগছে পরিবারগুলো। এ নিয়ে রোববার (২৯ নভেম্বে) আখাউড়া উপজেলার দেবগ্রাম পাইলট উচ্চ বিদ্যালয় মাঠে সংবাদ সম্মেলন করেছেন ক্ষতিগ্রস্তরা।</span><br></p>', '2020-12-30', 'December', '2020', 'asdad', 'টিকা,কমলা হ্যারিস', 'tika-nilen-kmla-hzaris', 'tika-nilen-kmla-hzaris', 'যুক্তরাষ্ট্রের নবনির্বাচিত ভাইস প্রেসিডেন্ট কমলা হ্যারিস করোনাভাইরাসের টিকা নিয়েছেন', 'যুক্তরাষ্ট্রের নবনির্বাচিত ভাইস প্রেসিডেন্ট কমলা হ্যারিস করোনাভাইরাসের টিকা নিয়েছেন', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, '2020-12-30 00:06:57', '2020-12-30 03:06:23');
INSERT INTO `posts` (`id`, `cat_id`, `sub_cat_id`, `user_id`, `division_id`, `district_id`, `subdistrict_id`, `title_en`, `title_bn`, `image`, `details_en`, `details_bn`, `published_date`, `month`, `year`, `tags_en`, `tags_bn`, `slug_bn`, `slug_en`, `headline_en`, `headline_bn`, `status`, `thumbnail_select`, `first_section`, `category_first_section`, `subcategory_first_section`, `division_first_section`, `district_first_section`, `headline`, `approve`, `view`, `created_at`, `updated_at`) VALUES
(55, 9, 27, 3, NULL, NULL, NULL, 'রিয়ালকে দুঃস্বপ্ন উপহার দেওয়া কোচ এখন আমেরিকার', 'রিয়ালকে দুঃস্বপ্ন উপহার দেওয়া কোচ এখন আমেরিকার', 'riyalke-duswpn-uphar-deooya-koc-ekhn-amerikar-5fec257ddb25b.jpg', '<p xss=\"removed\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: roboto, sans-serif; font-size: 14px; white-space: pre-wrap;\">২০১৮-১৯ মৌসুমের কথা ভাবলে এখনো হয়তো গায়ে কাঁটা দেয় রিয়াল মাদ্রিদ সমর্থকদের।</p><p xss=\"removed\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: roboto, sans-serif; font-size: 14px; white-space: pre-wrap;\">আগের মৌসুমে টানা তৃতীয় চ্যাম্পিয়নস লিগ জয়ের চোখধাঁধানো কীর্তি গড়ে জিনেদিন জিদান কোচের পদ থেকে সরে গিয়েছিলেন, রাশিয়া বিশ্বকাপের ঠিক আগে স্পেন জাতীয় দলের সঙ্গে একরকম টানাহেঁচড়ার পর হুলেন লোপেতেগিকে সেই মৌসুমে নিয়ে আসে রিয়াল। কিন্তু লোপেতেগি টেকেননি, মার্চে আবার জিদানের ফেরা মিলিয়ে মৌসুমে মোট তিনবার কোচ বদল করেছিল রিয়াল। এত করেও লাভ কিছুই হয়নি, মার্চের মধ্যে মৌসুমের তিন টুর্নামেন্টের তিনটিতেই শিরোপার আশা শেষ হয়ে যায় রিয়ালের!</p><p xss=\"removed\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: roboto, sans-serif; font-size: 14px; white-space: pre-wrap;\"><span xss=\"removed\">যাঁর অধীনে তিন শিরোপার আশা মার্চের মধ্যেই শেষ হতে দেখার দুঃস্বপ্ন সইতে হয়েছিল রিয়ালকে, সেই আর্জেন্টাইন কোচ সান্তিয়াগো সোলারি এত দিন পর আবার শিরোনামে এসেছেন। গতকাল মেক্সিকোর প্রথম বিভাগে খেলা বিখ্যাত ক্লাব আমেরিকা নিশ্চিত করেছে, খেলোয়াড় ও কোচ হিসেবে রিয়ালে অনেক বড় একটা অধ্যায় কাটানো সোলারিকে কোচ হিসেবে নিয়োগ দিয়েছে তারা।</span></p>', '<p xss=\"removed\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: roboto, sans-serif; font-size: 14px; white-space: pre-wrap;\">২০১৮-১৯ মৌসুমের কথা ভাবলে এখনো হয়তো গায়ে কাঁটা দেয় রিয়াল মাদ্রিদ সমর্থকদের।</p><p xss=\"removed\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: roboto, sans-serif; font-size: 14px; white-space: pre-wrap;\">আগের মৌসুমে টানা তৃতীয় চ্যাম্পিয়নস লিগ জয়ের চোখধাঁধানো কীর্তি গড়ে জিনেদিন জিদান কোচের পদ থেকে সরে গিয়েছিলেন, রাশিয়া বিশ্বকাপের ঠিক আগে স্পেন জাতীয় দলের সঙ্গে একরকম টানাহেঁচড়ার পর হুলেন লোপেতেগিকে সেই মৌসুমে নিয়ে আসে রিয়াল। কিন্তু লোপেতেগি টেকেননি, মার্চে আবার জিদানের ফেরা মিলিয়ে মৌসুমে মোট তিনবার কোচ বদল করেছিল রিয়াল। এত করেও লাভ কিছুই হয়নি, মার্চের মধ্যে মৌসুমের তিন টুর্নামেন্টের তিনটিতেই শিরোপার আশা শেষ হয়ে যায় রিয়ালের!</p><p xss=\"removed\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: roboto, sans-serif; font-size: 14px; white-space: pre-wrap;\"><span xss=\"removed\">যাঁর অধীনে তিন শিরোপার আশা মার্চের মধ্যেই শেষ হতে দেখার দুঃস্বপ্ন সইতে হয়েছিল রিয়ালকে, সেই আর্জেন্টাইন কোচ সান্তিয়াগো সোলারি এত দিন পর আবার শিরোনামে এসেছেন। গতকাল মেক্সিকোর প্রথম বিভাগে খেলা বিখ্যাত ক্লাব আমেরিকা নিশ্চিত করেছে, খেলোয়াড় ও কোচ হিসেবে রিয়ালে অনেক বড় একটা অধ্যায় কাটানো সোলারিকে কোচ হিসেবে নিয়োগ দিয়েছে তারা।</span></p>', '2020-12-30', 'December', '2020', 'asdad', 'টিকা,কমলা হ্যারিস', 'riyalke-duswpn-uphar-deooya-koc-ekhn-amerikar', 'riyalke-duswpn-uphar-deooya-koc-ekhn-amerikar', 'রিয়ালকে দুঃস্বপ্ন উপহার দেওয়া কোচ এখন আমেরিকার', 'রিয়ালকে দুঃস্বপ্ন উপহার দেওয়া কোচ এখন আমেরিকার', 1, 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 7, '2020-12-30 01:00:14', '2020-12-30 01:44:03'),
(56, 5, 16, 3, NULL, NULL, NULL, 'Cinema actores english title', 'ক্রিস্টোফার ক্রেবস সাইবার সিকিউরিটি', 'cinema-actores-english-title-5ff012340135f.png', '<p><span style=\"color: rgb(8, 8, 8); font-family: SolaimanLipi; font-size: 16px;\">বিশ্বের বিভিন্ন দেশের উদাহরণ টেনে রেজাউল করিম বলেন, ‘এটা-কে সত্যিকারার্থে ভালো কিছু করতে চাইলে অনেক কিছু যোগ করতে হবে। ২০ বছর না লাগলেও কমপক্ষে পাঁচ বছর তো লাগবেই। দুবাই এক্সিবিশন সেন্টার ১৯৭৮ সালে তৈরি হয়েছে, সেটার কাজ কিন্তু এখনও চলে।</span><br></p>', '<p><span style=\"color: rgb(8, 8, 8); font-family: SolaimanLipi; font-size: 16px;\">বিশ্বের বিভিন্ন দেশের উদাহরণ টেনে রেজাউল করিম বলেন, ‘এটা-কে সত্যিকারার্থে ভালো কিছু করতে চাইলে অনেক কিছু যোগ করতে হবে। ২০ বছর না লাগলেও কমপক্ষে পাঁচ বছর তো লাগবেই। দুবাই এক্সিবিশন সেন্টার ১৯৭৮ সালে তৈরি হয়েছে, সেটার কাজ কিন্তু এখনও চলে।</span><br></p>', '2021-01-02', 'January', '2021', 'asdad', 'টিকা,কমলা হ্যারিস', 'kristofar-krebs-saibar-sikiuriti', 'cinema-actores-english-title', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-01-02 00:15:53', '2021-01-02 00:27:00');

-- --------------------------------------------------------

--
-- Table structure for table `prayers`
--

CREATE TABLE `prayers` (
  `id` int(10) UNSIGNED NOT NULL,
  `prayer_name_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prayer_name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adhan` time NOT NULL,
  `iqamah` time NOT NULL,
  `status` int(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prayers`
--

INSERT INTO `prayers` (`id`, `prayer_name_bn`, `prayer_name_en`, `adhan`, `iqamah`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ফজর', 'Fajr', '05:30:00', '06:00:00', 1, '2020-12-01 01:20:21', '2020-12-01 02:26:29'),
(2, 'সূর্যোদয়', 'Sunrise', '06:10:00', '00:00:00', 1, '2020-12-01 01:37:04', '2020-12-01 02:27:53'),
(3, 'ধুহর', 'Dhuhr', '13:00:00', '13:30:00', 1, '2020-12-01 02:29:02', '2020-12-01 02:29:02'),
(4, 'আসর', 'Asr', '16:00:00', '16:14:00', 1, '2020-12-01 02:29:46', '2020-12-01 02:29:46'),
(5, 'মাগরিব', 'Magrib', '18:35:00', '18:40:00', 1, '2020-12-01 02:30:40', '2020-12-01 02:30:40'),
(6, 'ইশা', 'Isha', '19:30:00', '20:00:00', 1, '2020-12-01 02:31:20', '2020-12-01 02:31:20');

-- --------------------------------------------------------

--
-- Table structure for table `privacies`
--

CREATE TABLE `privacies` (
  `id` int(10) UNSIGNED NOT NULL,
  `details_bn` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacies`
--

INSERT INTO `privacies` (`id`, `details_bn`, `details_en`, `created_at`, `updated_at`) VALUES
(1, '<h3 style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;;\">Your privacy is critically important to us.</h3><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\">Jagonews24.com is located at:</span><br style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\"></p><address style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\">Jagonews24.com<br>Azhar Comfort Complex (Level-4), Ga-130/A Pragati Sarani Middle Badda, Dhaka<br>1212 , Bangladesh<br>88029842689</address><p style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\">It is Jagonews24.com\'s policy to respect your privacy regarding any information we may collect while operating our website. This Privacy Policy applies to&nbsp;<a href=\"https://www.jagonews24.com/\">https://www.jagonews24.com</a>&nbsp;(hereinafter, \"us\", \"we\", or \"https://www.jagonews24.com\"). We respect your privacy and are committed to protecting personally identifiable information you may provide us through the Website. We have adopted this privacy policy (\"Privacy Policy\") to explain what information may be collected on our Website, how we use this information, and under what circumstances we may disclose the information to third parties. This Privacy Policy applies only to information we collect through the Website and does not apply to our collection of information from other sources.</p><p style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\">This Privacy Policy, together with the Terms and conditions posted on our Website, set forth the general rules and policies governing your use of our Website. Depending on your activities when visiting our Website, you may be required to agree to additional terms and conditions.</p><p><br style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\"></p><h2 style=\"margin-bottom: -10px; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;;\">Website Visitors</h2><p style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\">Like most website operators, Jagonews24.com collects non-personally-identifying information of the sort that web browsers and servers typically make available, such as the browser type, language preference, referring site, and the date and time of each visitor request. Jagonews24.com\'s purpose in collecting non-personally identifying information is to better understand how Jagonews24.com\'s visitors use its website. From time to time, Jagonews24.com may release non-personally-identifying information in the aggregate, e.g., by publishing a report on trends in the usage of its website.</p><p style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\">Jagonews24.com also collects potentially personally-identifying information like Internet Protocol (IP) addresses for logged in users and for users leaving comments on https://www.jagonews24.com blog posts. Jagonews24.com only discloses logged in user and commenter IP addresses under the same circumstances that it uses and discloses personally-identifying information as described below.</p><p><br style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\"></p><h2 style=\"margin-bottom: -10px; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;;\">Gathering of Personally-Identifying Information</h2><p style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\">Certain visitors to Jagonews24.com\'s websites choose to interact with Jagonews24.com in ways that require Jagonews24.com to gather personally-identifying information. The amount and type of information that Jagonews24.com gathers depends on the nature of the interaction. For example, we ask visitors who sign up for a blog at https://www.jagonews24.com to provide a username and email address.</p><p><br style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\"></p><h2 style=\"margin-bottom: -10px; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;;\">Security</h2><p style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\">The security of your Personal Information is important to us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While we strive to use commercially acceptable means to protect your Personal Information, we cannot guarantee its absolute security.</p>', '<h3 style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;;\">Your privacy is critically important to us.</h3><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\">Jagonews24.com is located at:</span><br style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\"></p><address style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\">Jagonews24.com<br>Azhar Comfort Complex (Level-4), Ga-130/A Pragati Sarani Middle Badda, Dhaka<br>1212 , Bangladesh<br>88029842689</address><p style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\">It is Jagonews24.com\'s policy to respect your privacy regarding any information we may collect while operating our website. This Privacy Policy applies to&nbsp;<a href=\"https://www.jagonews24.com/\">https://www.jagonews24.com</a>&nbsp;(hereinafter, \"us\", \"we\", or \"https://www.jagonews24.com\"). We respect your privacy and are committed to protecting personally identifiable information you may provide us through the Website. We have adopted this privacy policy (\"Privacy Policy\") to explain what information may be collected on our Website, how we use this information, and under what circumstances we may disclose the information to third parties. This Privacy Policy applies only to information we collect through the Website and does not apply to our collection of information from other sources.</p><p style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\">This Privacy Policy, together with the Terms and conditions posted on our Website, set forth the general rules and policies governing your use of our Website. Depending on your activities when visiting our Website, you may be required to agree to additional terms and conditions.</p><p><br style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\"></p><h2 style=\"margin-bottom: -10px; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;;\">Website Visitors</h2><p style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\">Like most website operators, Jagonews24.com collects non-personally-identifying information of the sort that web browsers and servers typically make available, such as the browser type, language preference, referring site, and the date and time of each visitor request. Jagonews24.com\'s purpose in collecting non-personally identifying information is to better understand how Jagonews24.com\'s visitors use its website. From time to time, Jagonews24.com may release non-personally-identifying information in the aggregate, e.g., by publishing a report on trends in the usage of its website.</p><p style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\">Jagonews24.com also collects potentially personally-identifying information like Internet Protocol (IP) addresses for logged in users and for users leaving comments on https://www.jagonews24.com blog posts. Jagonews24.com only discloses logged in user and commenter IP addresses under the same circumstances that it uses and discloses personally-identifying information as described below.</p><p><br style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\"></p><h2 style=\"margin-bottom: -10px; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;;\">Gathering of Personally-Identifying Information</h2><p style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\">Certain visitors to Jagonews24.com\'s websites choose to interact with Jagonews24.com in ways that require Jagonews24.com to gather personally-identifying information. The amount and type of information that Jagonews24.com gathers depends on the nature of the interaction. For example, we ask visitors who sign up for a blog at https://www.jagonews24.com to provide a username and email address.</p><p><br style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\"></p><h2 style=\"margin-bottom: -10px; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;;\">Security</h2><p style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\">The security of your Personal Information is important to us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While we strive to use commercially acceptable means to protect your Personal Information, we cannot guarantee its absolute security.</p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_verification` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bing_verification` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alexa_analytics` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `meta_title`, `meta_tag`, `meta_description`, `meta_author`, `google_analytics`, `google_verification`, `bing_verification`, `alexa_analytics`, `created_at`, `updated_at`) VALUES
(1, 'SD Online Newspaper', 'blog,dpeeddigit blog,megazine,newsportal,personal blog,writter blog', 'Online Newsportal Website', 'Speeddigit', NULL, 'dsadsad61assdas', NULL, NULL, '2020-12-29 05:35:07', '2020-12-29 05:35:07');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `autherity_name_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `autherity_name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_page` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube_channel` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` int(11) NOT NULL,
  `email_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title_bn`, `title_en`, `autherity_name_bn`, `autherity_name_en`, `facebook_page`, `youtube_channel`, `address`, `phone_number`, `email_address`, `logo`, `admin_logo`, `created_at`, `updated_at`) VALUES
(1, 'এসডি নিউজ একটি অনলাইন নিউজপোর্টাল ওয়েবসাইট।', 'SD News is an online newsportal website.', 'খোরশেদ আলম', 'khorshed Alam', 'https://www.facebook.com/speeddigit/', 'https://www.youtube.com/watch?v=5g9QzjoVOP8&list=RD5g9QzjoVOP8&start_radio=1', '10/1 arambag dhaka', 1720444544, 'khorshed5981@gmail.com', '2020-12-28-png', '2020-12-29.png', '2020-12-28 05:39:29', '2020-12-28 05:39:29');

-- --------------------------------------------------------

--
-- Table structure for table `sociallinks`
--

CREATE TABLE `sociallinks` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sociallinks`
--

INSERT INTO `sociallinks` (`id`, `facebook`, `youtube`, `twitter`, `linkedin`, `pinterest`, `instagram`, `created_at`, `updated_at`) VALUES
(3, 'https://www.facebook.com/search/top?q=speeddigit', 'https://www.youtube.com/watch?v=K7mjXpSyX94', 'https://twitter.com/login?lang=en', 'https://www.linkedin.com/login', 'https://www.pinterest.com/pin/686587905687894305/', 'https://www.instagram.com/bangladeshi_travels_group/', '2020-11-25 22:55:40', '2020-11-25 22:55:40');

-- --------------------------------------------------------

--
-- Table structure for table `social_pages`
--

CREATE TABLE `social_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook_bn` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_page` text COLLATE utf8mb4_unicode_ci,
  `facebook_status` int(11) NOT NULL,
  `youtube_page` text COLLATE utf8mb4_unicode_ci,
  `youtube_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_pages`
--

INSERT INTO `social_pages` (`id`, `facebook_bn`, `facebook_en`, `facebook_page`, `facebook_status`, `youtube_page`, `youtube_status`, `created_at`, `updated_at`) VALUES
(6, 'ফেইসবুক', 'Facebook', 'https://www.facebook.com/speeddigit/', 1, 'FGFGH', 1, '2020-11-25 01:43:42', '2020-11-25 01:43:42');

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
(27, 9, 'ফুটবল', 'Football', 'futbl', 'football', 1, '2020-11-14 23:30:51', '2020-12-30 01:09:01'),
(28, 9, 'টেনিস', 'Tennis', 'tenis', 'tennis', 1, '2020-11-14 23:31:15', '2020-11-14 23:31:15'),
(29, 9, 'অন্য খেলা', 'Another game', 'onz-khela', 'another-game', 1, '2020-11-14 23:31:40', '2020-11-14 23:31:40'),
(30, 12, 'ইসলাম', 'Islam', 'islam', 'islam', 1, '2020-11-14 23:34:36', '2020-11-14 23:34:36'),
(31, 12, 'হিন্দু', 'Hindu', 'hindu', 'hindu', 1, '2020-11-14 23:34:58', '2020-11-14 23:34:58'),
(32, 12, 'বৌদ্ধ', 'Buddhist', 'bouddh', 'buddhist', 1, '2020-11-14 23:35:25', '2020-11-14 23:35:25'),
(33, 12, 'খ্রিস্টান', 'Christian', 'khristan', 'christian', 1, '2020-11-14 23:35:52', '2020-11-14 23:35:52'),
(39, 11, 'রাজধানী', 'Capital', 'rajdhanee', 'capital', 1, '2020-11-14 23:41:04', '2020-11-14 23:41:04'),
(40, 11, 'জেলা', 'District', 'jela', 'district', 1, '2020-11-14 23:41:30', '2020-11-14 23:41:30'),
(41, 11, 'করোনাভাইরাস', 'Coronavirus', 'kronavairas', 'coronavirus', 1, '2020-11-14 23:41:58', '2020-11-14 23:41:58'),
(42, 11, 'অপরাধ', 'Crime', 'opradh', 'crime', 1, '2020-11-14 23:44:07', '2020-11-14 23:44:07'),
(43, 10, 'বাজার', 'Market', 'bajar', 'market', 1, '2020-11-14 23:45:10', '2020-11-14 23:45:10'),
(44, 10, 'ব্যাংক', 'Bank', 'bzangk', 'bank', 1, '2020-11-14 23:45:38', '2020-11-14 23:45:38'),
(45, 10, 'শিল্প', 'Art', 'silp', 'art', 1, '2020-11-14 23:46:04', '2020-11-14 23:46:04'),
(46, 10, 'বিশ্ববাণিজ্য', 'World Trade', 'biswbanijz', 'world-trade', 1, '2020-11-14 23:46:35', '2020-11-14 23:46:35'),
(47, 16, 'জেলার খবর', 'District news', 'jelar-khbr', 'district-news', 1, '2020-11-22 04:59:56', '2020-11-22 04:59:56'),
(48, 14, 'মিডিয়া', 'media', 'midiza', 'media', 1, '2020-11-24 23:00:09', '2020-11-24 23:00:09');

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
(36, 3, 47, 'জঞ্জিরা উপজেলা', 'Zanjira Upazila', '2020-11-14 23:22:11', '2020-11-14 23:22:11'),
(37, 1, 28, 'আমতলী', 'Amtali', '2020-11-15 00:57:46', '2020-11-15 00:57:46'),
(38, 2, 6, 'থানচি', 'Thanchi', '2020-11-15 01:00:08', '2020-11-15 01:00:08'),
(39, 5, 13, 'ভালুকা', 'Bhaluka', '2020-11-15 01:03:00', '2020-11-15 01:03:00'),
(40, 5, 14, 'কেন্দুয়া উপজেলা', 'Kendua Upazila', '2020-11-15 01:03:40', '2020-11-15 01:03:40'),
(41, 5, 15, 'নালিতাবাড়ী উপজেলা', 'Nalitabari Upazila', '2020-11-15 01:04:26', '2020-11-15 01:04:26'),
(42, 5, 53, 'বাকসীগঞ্জ উপজেলা', 'Baksiganj Upazila', '2020-11-15 01:05:22', '2020-11-15 01:05:22'),
(43, 6, 55, 'ধুনট', 'Dhunat', '2020-11-15 01:06:21', '2020-11-15 01:06:21'),
(44, 6, 56, 'ভোলাহাট উপজেলা', 'Bholahat Upazila', '2020-11-15 01:07:09', '2020-11-15 01:07:09'),
(45, 6, 57, 'ধামইরহাট উপজেলা', 'Dhamoirhat Upazila', '2020-11-15 01:07:43', '2020-11-15 01:07:43'),
(46, 7, 19, 'মিঠাপুকুর উপজেলা', 'Mithapukur Upazila', '2020-11-15 01:08:35', '2020-11-15 01:08:35'),
(47, 7, 20, 'কাহারোল উপজেলা', 'Kaharole Upazila', '2020-11-15 01:09:30', '2020-11-15 01:09:30'),
(48, 7, 21, 'ভুরুঙ্গামারী উপজেলা', 'Bhurungamari Upazila', '2020-11-15 01:09:59', '2020-11-15 01:09:59'),
(49, 7, 22, 'ডিমলা', 'Dimla', '2020-11-15 01:10:54', '2020-11-15 01:10:54'),
(50, 7, 23, 'পলাশবাড়ী উপজেলা', 'Palashbari Upazila', '2020-11-15 01:11:34', '2020-11-15 01:11:34'),
(51, 7, 24, 'হরিপুর উপজেলা', 'Haripur Upazila', '2020-11-15 01:12:04', '2020-11-15 01:12:04'),
(52, 7, 25, 'তেতুলিয়া', 'Tetulia', '2020-11-15 01:12:46', '2020-11-15 01:12:46');

-- --------------------------------------------------------

--
-- Table structure for table `subscribes`
--

CREATE TABLE `subscribes` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribes`
--

INSERT INTO `subscribes` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '2020-12-02 01:28:36', '2020-12-02 01:28:36');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `details_bn` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `details_bn`, `details_en`, `created_at`, `updated_at`) VALUES
(1, '<h3 style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;;\">Your privacy is critically important to us.</h3><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\">Jagonews24.com is located at:</span><br style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\"></p><address style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\">Jagonews24.com<br>Azhar Comfort Complex (Level-4), Ga-130/A Pragati Sarani Middle Badda, Dhaka<br>1212 , Bangladesh<br>88029842689</address><p style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\">It is Jagonews24.com\'s policy to respect your privacy regarding any information we may collect while operating our website. This Privacy Policy applies to&nbsp;<a href=\"https://www.jagonews24.com/\">https://www.jagonews24.com</a>&nbsp;(hereinafter, \"us\", \"we\", or \"https://www.jagonews24.com\"). We respect your privacy and are committed to protecting personally identifiable information you may provide us through the Website. We have adopted this privacy policy (\"Privacy Policy\") to explain what information may be collected on our Website, how we use this information, and under what circumstances we may disclose the information to third parties. This Privacy Policy applies only to information we collect through the Website and does not apply to our collection of information from other sources.</p><p style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\">This Privacy Policy, together with the Terms and conditions posted on our Website, set forth the general rules and policies governing your use of our Website. Depending on your activities when visiting our Website, you may be required to agree to additional terms and conditions.</p><p><br style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\"></p><h2 style=\"margin-bottom: -10px; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;;\">Website Visitors</h2><p style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\">Like most website operators, Jagonews24.com collects non-personally-identifying information of the sort that web browsers and servers typically make available, such as the browser type, language preference, referring site, and the date and time of each visitor request. Jagonews24.com\'s purpose in collecting non-personally identifying information is to better understand how Jagonews24.com\'s visitors use its website. From time to time, Jagonews24.com may release non-personally-identifying information in the aggregate, e.g., by publishing a report on trends in the usage of its website.</p><p style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\">Jagonews24.com also collects potentially personally-identifying information like Internet Protocol (IP) addresses for logged in users and for users leaving comments on https://www.jagonews24.com blog posts. Jagonews24.com only discloses logged in user and commenter IP addresses under the same circumstances that it uses and discloses personally-identifying information as described below.</p><p><br style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\"></p><h2 style=\"margin-bottom: -10px; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;;\">Gathering of Personally-Identifying Information</h2><p style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\">Certain visitors to Jagonews24.com\'s websites choose to interact with Jagonews24.com in ways that require Jagonews24.com to gather personally-identifying information. The amount and type of information that Jagonews24.com gathers depends on the nature of the interaction. For example, we ask visitors who sign up for a blog at https://www.jagonews24.com to provide a username and email address.</p><p><br style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\"></p><h2 style=\"margin-bottom: -10px; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;;\">Security</h2><p style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\">The security of your Personal Information is important to us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While we strive to use commercially acceptable means to protect your Personal Information, we cannot guarantee its absolute security.</p>', '<h3 style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;;\">Your privacy is critically important to us.</h3><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\">Jagonews24.com is located at:</span><br style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\"></p><address style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\">Jagonews24.com<br>Azhar Comfort Complex (Level-4), Ga-130/A Pragati Sarani Middle Badda, Dhaka<br>1212 , Bangladesh<br>88029842689</address><p style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\">It is Jagonews24.com\'s policy to respect your privacy regarding any information we may collect while operating our website. This Privacy Policy applies to&nbsp;<a href=\"https://www.jagonews24.com/\">https://www.jagonews24.com</a>&nbsp;(hereinafter, \"us\", \"we\", or \"https://www.jagonews24.com\"). We respect your privacy and are committed to protecting personally identifiable information you may provide us through the Website. We have adopted this privacy policy (\"Privacy Policy\") to explain what information may be collected on our Website, how we use this information, and under what circumstances we may disclose the information to third parties. This Privacy Policy applies only to information we collect through the Website and does not apply to our collection of information from other sources.</p><p style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\">This Privacy Policy, together with the Terms and conditions posted on our Website, set forth the general rules and policies governing your use of our Website. Depending on your activities when visiting our Website, you may be required to agree to additional terms and conditions.</p><p><br style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\"></p><h2 style=\"margin-bottom: -10px; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;;\">Website Visitors</h2><p style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\">Like most website operators, Jagonews24.com collects non-personally-identifying information of the sort that web browsers and servers typically make available, such as the browser type, language preference, referring site, and the date and time of each visitor request. Jagonews24.com\'s purpose in collecting non-personally identifying information is to better understand how Jagonews24.com\'s visitors use its website. From time to time, Jagonews24.com may release non-personally-identifying information in the aggregate, e.g., by publishing a report on trends in the usage of its website.</p><p style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\">Jagonews24.com also collects potentially personally-identifying information like Internet Protocol (IP) addresses for logged in users and for users leaving comments on https://www.jagonews24.com blog posts. Jagonews24.com only discloses logged in user and commenter IP addresses under the same circumstances that it uses and discloses personally-identifying information as described below.</p><p><br style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\"></p><h2 style=\"margin-bottom: -10px; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;;\">Gathering of Personally-Identifying Information</h2><p style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\">Certain visitors to Jagonews24.com\'s websites choose to interact with Jagonews24.com in ways that require Jagonews24.com to gather personally-identifying information. The amount and type of information that Jagonews24.com gathers depends on the nature of the interaction. For example, we ask visitors who sign up for a blog at https://www.jagonews24.com to provide a username and email address.</p><p><br style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\"></p><h2 style=\"margin-bottom: -10px; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;;\">Security</h2><p style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;\">The security of your Personal Information is important to us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While we strive to use commercially acceptable means to protect your Personal Information, we cannot guarantee its absolute security.</p>', NULL, NULL);

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
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_id` int(10) UNSIGNED DEFAULT NULL,
  `status` int(11) NOT NULL,
  `admin` int(3) DEFAULT NULL,
  `role_category` int(5) DEFAULT NULL,
  `role_division` int(2) DEFAULT NULL,
  `role_jobpost` int(2) DEFAULT NULL,
  `role_post` int(2) DEFAULT NULL,
  `role_writer` int(2) DEFAULT NULL,
  `role_setting` int(2) DEFAULT NULL,
  `role_ads` int(2) DEFAULT NULL,
  `role_gallery` int(2) DEFAULT NULL,
  `role_widget` int(2) DEFAULT NULL,
  `role_page` int(2) DEFAULT NULL,
  `role_report` int(2) DEFAULT NULL,
  `role_message` int(2) DEFAULT NULL,
  `role_userrole` int(2) DEFAULT NULL,
  `role_filemanager` int(2) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `bangla_name`, `english_name`, `email`, `email_verified_at`, `password`, `image`, `cat_id`, `status`, `admin`, `role_category`, `role_division`, `role_jobpost`, `role_post`, `role_writer`, `role_setting`, `role_ads`, `role_gallery`, `role_widget`, `role_page`, `role_report`, `role_message`, `role_userrole`, `role_filemanager`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$CdtMQrPIAZQ9jUB68bilZOI13l68nMo067xXAdNenDtCLw0AlJUBu', 'fggerg', 3, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL),
(5, 'ক্লাউডিয়া স্পোরানজেত্তি', 'Claudia Sporanzetti', 'Claudia_Sporanzetti@gmail.com', NULL, '$2y$10$tN/uMgryh3ui0Jq.JCzCG.aNwLY/WY.ZHN33HT5H6XCl7O5jI3o2C', 'ক্লাউডিয়া স্পোরানজেত্তি-2021-01-02-5ff050554f1bc.png', 5, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-14 23:54:04', '2021-01-02 04:52:05'),
(6, 'মারুফ মল্লিক', 'Maruf Mallick', 'MarufMallick@gmail.com', NULL, '$2y$10$WP3EkQlBSctE2/IH8ZEiRe77NH6l.mvbFV.1NZNpRxJqkef3I5k4.', 'মারুফ মল্লিক-2021-01-02-5ff0506d387a8.png', 6, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-14 23:54:28', '2021-01-02 04:52:30'),
(7, 'ইব্রাহীম চৌধুরী', 'Ibrahim Chowdhury', 'IbrahimChowdhury@gmail.com', NULL, '$2y$10$KNO96.0Hub0ion8YaX.Gue09al402TKqvoMhz.gg/4ddfjMYqnoM.', 'ইব্রাহীম চৌধুরী-2021-01-02-5ff0507fd41cd.png', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-15 00:13:57', '2021-01-02 04:52:48'),
(10, 'রাফিয়া আলম', 'Rafia Alam', 'RafiaAlam@gmail.com', NULL, '$2y$10$2zFVBl3TUYH/0k4vQFBtHuYpb6KE2E2pFvh6Og2Tpe2IvZlHh7eya', 'রাফিয়া আলম-2021-01-02-5ff0509d598ec.png', 8, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-15 00:44:22', '2021-01-02 04:53:17'),
(11, 'মিজানুর রহমান খান', 'Mizanur Rahman Khan', 'mizanurrahman@gmail.com', NULL, '$2y$10$cNmgjtrobOmnLHEaLBTowuFNdxNOg96YPSlW263uv5fCEYpZx1MOm', 'মিজানুর রহমান খান-2021-01-02-5ff050aa9d964.png', 5, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-15 03:48:39', '2021-01-02 04:53:30'),
(15, 'সানাউল্লাহ সাকিব', 'Sanaullah Shakib', 'SanaullahShakib@gmail.com', NULL, '$2y$10$tnlLaOgf.GqQHX9StBNKtu9zY3/OMJWt5T4fAk62f27BpdB6tdy/y', 'সানাউল্লাহ সাকিব-2021-01-02-5ff050b756546.png', 10, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-18 01:49:55', '2021-01-02 04:53:43'),
(16, 'আজিজুল সঞ্চয়', 'Azizul Savings', 'AzizulSavings@gmail.com', NULL, '$2y$10$EUKzzLDr8vnZnc4OO/UNTeu.NE5y4.dvCfHq9Hky5u7D6fyCUnMbO', 'আজিজুল সঞ্চয়-2021-01-02-5ff050c3e031e.png', 16, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-03 00:39:30', '2021-01-02 04:53:56'),
(17, 'Sohidul Islam', 'sohidul islam', 'sohidulislam@gmail.com', NULL, '$2y$10$tLsd14ncbLA7IM9Ph5ieTed6NNQBr2n0Js/tD5xNHunHsNdQESZmC', NULL, NULL, 2, 0, 1, 1, 1, NULL, NULL, NULL, 1, 1, NULL, 1, NULL, NULL, 1, 1, NULL, '2020-12-31 08:14:05', '2020-12-31 08:14:05');

-- --------------------------------------------------------

--
-- Table structure for table `websites`
--

CREATE TABLE `websites` (
  `id` int(10) UNSIGNED NOT NULL,
  `website_name_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website_name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `writer_application`
--

CREATE TABLE `writer_application` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passing_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `abroads`
--
ALTER TABLE `abroads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `abroads_writer_id_foreign` (`writer_id`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bd_covid19s`
--
ALTER TABLE `bd_covid19s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bulatins`
--
ALTER TABLE `bulatins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bulatins_title_slug_unique` (`title_slug`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_bn_unique` (`name_bn`),
  ADD UNIQUE KEY `categories_name_en_unique` (`name_en`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_msg`
--
ALTER TABLE `contact_msg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `covid19s`
--
ALTER TABLE `covid19s`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `elections`
--
ALTER TABLE `elections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `elections_writer_id_foreign` (`writer_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `give_ads`
--
ALTER TABLE `give_ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_galleries`
--
ALTER TABLE `image_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_news`
--
ALTER TABLE `job_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_news_writer_id_foreign` (`writer_id`);

--
-- Indexes for table `lifestyles`
--
ALTER TABLE `lifestyles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lifestyles_writer_id_foreign` (`writer_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `non_profits`
--
ALTER TABLE `non_profits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offon`
--
ALTER TABLE `offon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opinions`
--
ALTER TABLE `opinions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `opinions_writer_id_foreign` (`writer_id`);

--
-- Indexes for table `our_says`
--
ALTER TABLE `our_says`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
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
  ADD UNIQUE KEY `posts_slug_title_unique` (`slug_bn`),
  ADD KEY `posts_cat_id_foreign` (`cat_id`),
  ADD KEY `posts_sub_cat_id_foreign` (`sub_cat_id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_division_id_foreign` (`division_id`),
  ADD KEY `posts_district_id_foreign` (`district_id`),
  ADD KEY `posts_subdistrict_id_foreign` (`subdistrict_id`);

--
-- Indexes for table `prayers`
--
ALTER TABLE `prayers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privacies`
--
ALTER TABLE `privacies`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribes_email_unique` (`email`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_cat_id_foreign` (`cat_id`);

--
-- Indexes for table `websites`
--
ALTER TABLE `websites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `writer_application`
--
ALTER TABLE `writer_application`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `abroads`
--
ALTER TABLE `abroads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `bd_covid19s`
--
ALTER TABLE `bd_covid19s`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bulatins`
--
ALTER TABLE `bulatins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_msg`
--
ALTER TABLE `contact_msg`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `covid19s`
--
ALTER TABLE `covid19s`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `elections`
--
ALTER TABLE `elections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `give_ads`
--
ALTER TABLE `give_ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `image_galleries`
--
ALTER TABLE `image_galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `job_news`
--
ALTER TABLE `job_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lifestyles`
--
ALTER TABLE `lifestyles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `non_profits`
--
ALTER TABLE `non_profits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `offon`
--
ALTER TABLE `offon`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `opinions`
--
ALTER TABLE `opinions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `our_says`
--
ALTER TABLE `our_says`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `prayers`
--
ALTER TABLE `prayers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `privacies`
--
ALTER TABLE `privacies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sociallinks`
--
ALTER TABLE `sociallinks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `social_pages`
--
ALTER TABLE `social_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `subdistricts`
--
ALTER TABLE `subdistricts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `websites`
--
ALTER TABLE `websites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `writer_application`
--
ALTER TABLE `writer_application`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `abroads`
--
ALTER TABLE `abroads`
  ADD CONSTRAINT `abroads_writer_id_foreign` FOREIGN KEY (`writer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_div_id_foreign` FOREIGN KEY (`div_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `elections`
--
ALTER TABLE `elections`
  ADD CONSTRAINT `elections_writer_id_foreign` FOREIGN KEY (`writer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_news`
--
ALTER TABLE `job_news`
  ADD CONSTRAINT `job_news_writer_id_foreign` FOREIGN KEY (`writer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lifestyles`
--
ALTER TABLE `lifestyles`
  ADD CONSTRAINT `lifestyles_writer_id_foreign` FOREIGN KEY (`writer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `opinions`
--
ALTER TABLE `opinions`
  ADD CONSTRAINT `opinions_writer_id_foreign` FOREIGN KEY (`writer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

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
