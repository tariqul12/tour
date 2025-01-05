-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2025 at 05:23 AM
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
-- Database: `tour`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `destinations` int(11) DEFAULT 0,
  `happy_customer` int(11) DEFAULT 0,
  `members` int(11) DEFAULT 0,
  `awards` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `description`, `image1`, `image2`, `destinations`, `happy_customer`, `members`, `awards`, `created_at`, `updated_at`) VALUES
(1, 'Your Trusted Partner for Seamless Connectivity', '<span style=\"color: rgb(68, 68, 68); font-family: Archivo, Arial, Helvetica, sans-serif; font-size: 18px; letter-spacing: 0.36px;\">We are the most experienced &amp; Leading tour operator and travel agency in Bangladesh.&nbsp;&nbsp; Our specialty is the best tourist attractions, best locations, best itineraries, value for money, professional experienced guide, support team, most reliable and trustworthy company. Even we offer something extra, an authentic cultural experience, and a responsible approach to travel that is sensitive to the impact on the environment and local communities. we are combining a sustainable travel approach to itineraries designed specifically for people new to Bangladesh travel.</span>', 'uploads/about-image/5857647.jpg', 'uploads/about-image/39249318.jpg', 23, 300, 30, 10, '2024-08-18 11:20:32', '2025-01-03 21:44:02');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `banner_type` int(11) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `banner_type`, `image`, `created_at`, `updated_at`) VALUES
(1, 'banner', 1, 'uploads/banner-image/34241696.jpg', '2024-12-05 00:16:52', '2025-01-01 21:56:10'),
(3, 'banner', 1, 'uploads/banner-image/41971541.jpg', '2024-12-05 00:20:14', '2025-01-04 21:24:53'),
(4, 'Home Banner', 2, 'uploads/banner-image/11276173.jpg', '2025-01-01 21:57:22', '2025-01-04 06:15:02'),
(5, 'Order Banner', 4, 'uploads/banner-image/5373302.jpg', '2025-01-01 22:06:44', '2025-01-04 21:24:26'),
(6, 'Footer Banner', 5, 'uploads/banner-image/35968629.jpg', '2025-01-01 22:10:23', '2025-01-04 21:25:15'),
(7, 'Contact', 3, 'uploads/banner-image/5754396.jpg', '2025-01-01 22:15:21', '2025-01-04 06:17:32');

-- --------------------------------------------------------

--
-- Table structure for table `benefits`
--

CREATE TABLE `benefits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `icon` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `order_status` tinyint(4) DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `benefits`
--

INSERT INTO `benefits` (`id`, `title`, `description`, `icon`, `image`, `order_status`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Digital Experience', '<ul class=\"pq-fancy-list-box\" style=\"color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\"><li style=\"list-style: none; padding: 0px; text-align: left; margin: 0px; transition: 0.5s ease-in-out;\"><span class=\"ion ion-android-done-all\" style=\"color: var(--primary-color); margin-right: 5px;\"></span>&nbsp;Fusce venenatis orci quis varius lobortis.</li><li style=\"list-style: none; padding: 0px; text-align: left; margin: 10px 0px 0px; transition: 0.5s ease-in-out;\"><span class=\"ion ion-android-done-all\" style=\"color: var(--primary-color); margin-right: 5px;\"></span>&nbsp;Duis gravida neque vel placerat molestie.</li><li style=\"list-style: none; padding: 0px; text-align: left; margin: 10px 0px 0px; transition: 0.5s ease-in-out;\"><span class=\"ion ion-android-done-all\" style=\"color: var(--primary-color); margin-right: 5px;\"></span>&nbsp;Sed scelerisque massa quis orci ull</li><li style=\"list-style: none; padding: 0px; text-align: left; margin: 10px 0px 0px; transition: 0.5s ease-in-out;\"><span class=\"ion ion-android-done-all\" style=\"color: var(--primary-color); margin-right: 5px;\"></span>&nbsp;Pellentesque et ante vel tortor dignissim</li></ul>', 'uploads/benefit-icon/18674099.png', 'uploads/benefit-image/17150973.jpg', NULL, 1, '2024-08-19 10:18:47', '2024-08-19 10:18:47'),
(3, 'Business Planning', '<ul class=\"pq-fancy-list-box\" style=\"color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\"><li style=\"list-style: none; padding: 0px; text-align: left; margin: 0px; transition: 0.5s ease-in-out;\"><span class=\"ion ion-android-done-all\" style=\"color: var(--primary-color); margin-right: 5px;\"></span>&nbsp;Duis gravida neque vel placerat molestie.</li><li style=\"list-style: none; padding: 0px; text-align: left; margin: 10px 0px 0px; transition: 0.5s ease-in-out;\"><span class=\"ion ion-android-done-all\" style=\"color: var(--primary-color); margin-right: 5px;\"></span>&nbsp;Sed scelerisque massa quis orci ull</li><li style=\"list-style: none; padding: 0px; text-align: left; margin: 10px 0px 0px; transition: 0.5s ease-in-out;\"><span class=\"ion ion-android-done-all\" style=\"color: var(--primary-color); margin-right: 5px;\"></span>&nbsp;Fusce venenatis orci quis varius lobortis.</li><li style=\"list-style: none; padding: 0px; text-align: left; margin: 10px 0px 0px; transition: 0.5s ease-in-out;\"><span class=\"ion ion-android-done-all\" style=\"color: var(--primary-color); margin-right: 5px;\"></span>&nbsp;Pellentesque et ante vel tortor dignissim</li></ul>', 'uploads/benefit-icon/7110321.png', 'uploads/benefit-image/4559192.jpg', NULL, 1, '2024-08-19 10:20:06', '2024-08-19 10:20:06'),
(4, 'App Development', '<ul class=\"pq-fancy-list-box\" style=\"color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\"><li style=\"list-style: none; padding: 0px; text-align: left; margin: 0px; transition: 0.5s ease-in-out;\"><span class=\"ion ion-android-done-all\" style=\"color: var(--primary-color); margin-right: 5px;\"></span>&nbsp;Etiam dignissim purus in varius porttitor.</li><li style=\"list-style: none; padding: 0px; text-align: left; margin: 10px 0px 0px; transition: 0.5s ease-in-out;\"><span class=\"ion ion-android-done-all\" style=\"color: var(--primary-color); margin-right: 5px;\"></span>&nbsp;Proin vitae tellus mollis tellus maximus.</li><li style=\"list-style: none; padding: 0px; text-align: left; margin: 10px 0px 0px; transition: 0.5s ease-in-out;\"><span class=\"ion ion-android-done-all\" style=\"color: var(--primary-color); margin-right: 5px;\"></span>&nbsp;Integer tempus massa nec pellentesque.</li><li style=\"list-style: none; padding: 0px; text-align: left; margin: 10px 0px 0px; transition: 0.5s ease-in-out;\"><span class=\"ion ion-android-done-all\" style=\"color: var(--primary-color); margin-right: 5px;\"></span>&nbsp;Pellentesque et ante vel tortor dignissim</li></ul>', 'uploads/benefit-icon/40442862.png', 'uploads/benefit-image/47471109.jpg', NULL, 1, '2024-08-19 10:21:24', '2024-08-19 10:21:24');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `long_description` longtext NOT NULL,
  `image` text NOT NULL,
  `post_date` text NOT NULL,
  `post_timestamp` text NOT NULL,
  `hit_count` int(11) NOT NULL DEFAULT 0,
  `comment_count` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `title`, `short_description`, `long_description`, `image`, `post_date`, `post_timestamp`, `hit_count`, `comment_count`, `status`, `created_at`, `updated_at`) VALUES
(1, '4', 'App Promotes Sales & Profits In It Solutions', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '<h2 class=\"pq-blog-single-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-weight: 600; line-height: 44px; font-size: 36px; font-family: var(--title-fonts); color: var(--dark-color); text-transform: capitalize; overflow-wrap: break-word; background-color: rgb(255, 255, 255);\">Success Your Technology</h2><p style=\"margin-bottom: 30px; color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magnaaliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit.</p><p style=\"margin-bottom: 30px; color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English.</p><div class=\"pq-blog-single-info\" style=\"color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\"><h2 class=\"pq-blog-single-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-weight: 600; line-height: 44px; font-size: 36px; font-family: var(--title-fonts); color: var(--dark-color); text-transform: capitalize; overflow-wrap: break-word;\">Provide Exclusive Solutions</h2><p style=\"margin-bottom: 0px;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English.</p></div>', 'uploads/blog-image/38315432.jpg', '2024-08-07', '1722988800', 0, 0, 1, '2024-08-07 13:47:16', '2024-08-07 13:47:16'),
(2, '4', 'In Depth Industry & Ecosystem Analysis', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magnaaliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit', '<p style=\"margin-bottom: 30px; color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English.</p><div class=\"pq-blog-single-info\" style=\"color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\"><h2 class=\"pq-blog-single-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-weight: 600; line-height: 44px; font-size: 36px; font-family: var(--title-fonts); color: var(--dark-color); text-transform: capitalize; overflow-wrap: break-word;\">Provide Exclusive Solutions</h2><p style=\"margin-bottom: 0px;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English.</p></div>', 'uploads/blog-image/33944838.jpg', '2024-08-09', '1723161600', 0, 0, 0, '2024-08-07 13:49:17', '2024-08-08 23:14:51');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'BSD', 'Bsd', 'uploads/brand-image/19875379.png', 1, '2025-01-01 22:35:08', '2025-01-01 22:35:53'),
(2, 'Network', 'Network', 'uploads/brand-image/32694080.png', 1, '2025-01-01 22:37:47', '2025-01-01 22:37:47'),
(3, 'Borcelle', 'kjgdd', 'uploads/brand-image/5292061.png', 1, '2025-01-01 22:38:10', '2025-01-01 22:38:10'),
(4, 'Stream Studio', 'Stream Studio', 'uploads/brand-image/45925412.png', 1, '2025-01-01 22:38:33', '2025-01-01 22:38:33'),
(5, 'Cybornet', 'Cybornet', 'uploads/brand-image/13541869.png', 1, '2025-01-01 22:38:58', '2025-01-01 22:38:58'),
(6, 'Smart Home', 'Smart Home', 'uploads/brand-image/18358959.png', 1, '2025-01-01 22:39:14', '2025-01-01 22:39:14'),
(7, 'Borcell', NULL, 'uploads/brand-image/13200970.png', 1, '2025-01-01 22:39:29', '2025-01-01 22:39:29'),
(8, 'Mobile Shop', NULL, 'uploads/brand-image/9062964.png', 1, '2025-01-01 22:39:50', '2025-01-01 22:39:50'),
(9, 'Wireless', NULL, 'uploads/brand-image/26403966.png', 1, '2025-01-01 22:40:03', '2025-01-01 22:40:03');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('c525a5357e97fef8d3db25841c86da1a', 'i:1;', 1736047465),
('c525a5357e97fef8d3db25841c86da1a:timer', 'i:1736047465;', 1736047465);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `icon` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `home_status` tinyint(4) NOT NULL DEFAULT 1,
  `order_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `icon`, `status`, `home_status`, `order_status`, `created_at`, `updated_at`) VALUES
(3, 'Sound System', 'Networking Service\r\nCC Camera\r\nCOMPUTER ACCESSORIES\r\nPabx System\r\nSound System\r\nAttendance Device\r\nOnline Software Solution\r\nHardware Maintenance', 'uploads/category-image/49058360.jpg', 'uploads/category-icon/3591474.png', 1, 1, 1, '2024-08-10 09:27:13', '2024-12-07 00:59:49'),
(4, 'Pabx System', 'Networking Service\r\nCC Camera\r\nCOMPUTER ACCESSORIES\r\nPabx System\r\nSound System\r\nAttendance Device\r\nOnline Software Solution\r\nHardware Maintenance', 'uploads/category-image/32156718.jpg', 'uploads/category-icon/27978232.png', 1, 1, 1, '2024-08-10 09:29:11', '2024-12-07 00:59:40'),
(5, '24/7 Customer Support', 'Our Support team is Available Anable Anytime to Help You With Any with Any Service Related Issues.', 'uploads/category-image/29562404.jpg', 'uploads/category-icon/7937998.png', 1, 1, 1, '2024-08-10 09:30:44', '2024-12-31 23:01:31'),
(6, 'Affordable Packages', 'Choose from a range of budget-friendly packages designed to fit every need and budget.', 'uploads/category-image/33028174.jpg', 'uploads/category-icon/24383686.png', 1, 1, 1, '2024-08-10 09:36:20', '2024-12-31 22:59:17'),
(7, 'High-Speed Internet', 'Experience lightning-fast internet speeds, perfect for streaming, gaming, and working from home.', 'uploads/category-image/1791618.png', 'uploads/category-icon/21483241.png', 1, 1, 1, '2024-08-10 09:38:48', '2024-12-31 22:58:07');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `message` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `message`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cora Gordon', 'r randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictiona', 'uploads/client-image/30913435.png', 1, '2025-01-01 23:13:15', '2025-01-01 23:26:55'),
(2, 'Lillith Logan', 'um is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lo', 'uploads/client-image/17910140.jpg', 1, '2025-01-01 23:13:48', '2025-01-01 23:26:42'),
(3, 'Tariqul Islam', 'orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also th', 'uploads/client-image/30823901.jpg', 1, '2025-01-01 23:24:48', '2025-01-01 23:24:48'),
(4, 'Shakir', 'orum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 'uploads/client-image/22660040.jpg', 1, '2025-01-01 23:27:26', '2025-01-01 23:27:26');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` text NOT NULL,
  `slogan` text NOT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `support_phone` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `support_email` varchar(255) DEFAULT NULL,
  `office_hour` varchar(255) DEFAULT NULL,
  `facebook_link` text DEFAULT NULL,
  `twitter_link` text DEFAULT NULL,
  `linkedin_link` text DEFAULT NULL,
  `youtube_link` text DEFAULT NULL,
  `instagram_link` text DEFAULT NULL,
  `google_map_api_link` text DEFAULT NULL,
  `android_app_image` text DEFAULT NULL,
  `android_app_url` text DEFAULT NULL,
  `ios_app_image` text DEFAULT NULL,
  `ios_app_url` text DEFAULT NULL,
  `company_address` text DEFAULT NULL,
  `company_footer_text` text DEFAULT NULL,
  `company_footer_text_bottom` text DEFAULT NULL,
  `logo_jpg` text DEFAULT NULL,
  `logo_png` text DEFAULT NULL,
  `favicon` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `payment_method_image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `company_name`, `slogan`, `contact_phone`, `support_phone`, `contact_email`, `support_email`, `office_hour`, `facebook_link`, `twitter_link`, `linkedin_link`, `youtube_link`, `instagram_link`, `google_map_api_link`, `android_app_image`, `android_app_url`, `ios_app_image`, `ios_app_url`, `company_address`, `company_footer_text`, `company_footer_text_bottom`, `logo_jpg`, `logo_png`, `favicon`, `title`, `payment_method_image`, `created_at`, `updated_at`) VALUES
(1, 'Hilsha Tourism', 'Hilsha Tourism', '0130000000', '0130000000', 'brandhilsha@gmail.com', 'brandhilsha@gmail.com', '10 am to 5pm', 'https://www.facebook.com/', 'https://www.twitter.com/', 'https://www.linkedin.com/', 'https://www.youtube.com/', 'https://www.instagram.com/', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3649.5582491070145!2d90.41438375412949!3d23.834302681386827!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c65e93a4d239%3A0xba1cd57bfe6a48c8!2sBangladesh%20Software%20Development!5e0!3m2!1sen!2sbd!4v1735705362072!5m2!1sen!2sbd', 'uploads/company-image/33033045.jpg', NULL, 'uploads/company-image/26510247.jpg', NULL, 'road 17, Nikonjo 2, Dhaka 1230', NULL, NULL, 'uploads/company-image/2617254.png', 'uploads/company-image/16009337.png', 'uploads/company-image/28031134.jpg', 'Hilsha Tourism', 'uploads/company-image/26094085.jpg', '2024-08-07 01:12:17', '2025-01-03 22:16:52');

-- --------------------------------------------------------

--
-- Table structure for table `consultations`
--

CREATE TABLE `consultations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `consultations`
--

INSERT INTO `consultations` (`id`, `package_id`, `name`, `email`, `mobile`, `address`, `message`, `created_at`, `updated_at`) VALUES
(2, 1, 'Tariqul Islam', 'shimul@gmail.com', '01303863704', NULL, 'This is message', '2024-08-29 06:32:13', '2024-08-29 06:32:13'),
(3, 3, 'Mia Rosario', 'byri@mailinator.com', '73', 'Molestiae deleniti n', NULL, '2024-12-07 03:37:02', '2024-12-07 03:37:02'),
(4, 3, 'Jerome Boone', 'zyqezezuw@mailinator.com', '75', 'Aut quam commodo ess', NULL, '2024-12-07 04:06:05', '2024-12-07 04:06:05'),
(5, 3, 'tariqul', 'tariqul@gmail.com', '01303863702', 'Dhaka', NULL, '2024-12-07 04:28:47', '2024-12-07 04:28:47'),
(6, 3, 'tariqul', 'tariqul@gmail.com', '01303863702', 'Dhaka', NULL, '2024-12-07 04:44:13', '2024-12-07 04:44:13'),
(7, 3, 'Bruce Ryan', 'dugyd@mailinator.com', '51', 'Omnis sit alias qui', NULL, '2024-12-07 04:46:43', '2024-12-07 04:46:43'),
(8, 3, 'Aurelia Mckay', 'ragexipinu@mailinator.com', '79', 'Error quibusdam vita', NULL, '2024-12-07 04:51:05', '2024-12-07 04:51:05'),
(9, 3, 'tariqul', 'tariqul@gmail.com', '01303863702', 'basa number:47 road number:17,nikonjo 2', NULL, '2024-12-07 21:46:38', '2024-12-07 21:46:38'),
(10, 4, 'Melanie Marshall', 'becoxerof@mailinator.com', '63', 'Qui accusamus hic si', NULL, '2024-12-15 01:53:34', '2024-12-15 01:53:34'),
(11, 3, 'Salvador Harding', 'gopymavit@mailinator.com', '30', 'Repellendus Ab exer', NULL, '2024-12-15 02:25:03', '2024-12-15 02:25:03'),
(12, 3, 'Damian Estes', 'qitiqa@mailinator.com', '65', 'Fugiat quis officia', NULL, '2024-12-17 00:40:29', '2024-12-17 00:40:29'),
(13, 3, 'Mallory Gomez', 'fiqevyxivu@mailinator.com', '97', 'Doloribus dolore sim', NULL, '2024-12-17 00:42:16', '2024-12-17 00:42:16'),
(14, 1, 'Shakir', 'sakir@gmail.com', '0193249434', 'dhaka', NULL, '2024-12-17 00:46:19', '2024-12-17 00:46:19'),
(15, 3, 'rrrrrrrrrrrrr', 'r@gmail.com', '01222222222222', 'Dhaka', NULL, '2024-12-17 00:49:28', '2024-12-17 00:49:28'),
(16, 5, 'Christine Ayers', 'tiki@mailinator.com', NULL, 'Reprehenderit harum', NULL, '2025-01-01 03:46:26', '2025-01-01 03:46:26'),
(17, 4, 'tariqul', 'tariqul@gmail.com', NULL, 'Dhaka nikonjo', NULL, '2025-01-01 03:49:28', '2025-01-01 03:49:28'),
(18, 5, 'Lyle Mccall', 'warejoge@mailinator.com', '013434235434', 'Deleniti quas aut te', NULL, '2025-01-01 03:51:17', '2025-01-01 03:51:17'),
(19, 2, 'Kylie Santos', 'zigemipixo@mailinator.com', '01303863702', 'Dicta ullamco id id', NULL, '2025-01-01 23:50:36', '2025-01-01 23:50:36'),
(20, 4, 'Tariqul', 'tariqul.bsd@gmail.com', NULL, 'Nikonjo', NULL, '2025-01-04 04:13:26', '2025-01-04 04:13:26'),
(21, 9, 'Tariqul Islam', 'tariqul.bsd@gmail.com', '01303863702', NULL, NULL, '2025-01-04 22:00:14', '2025-01-04 22:00:14');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'shimul', 'tariqul@gmail.com', '57474', 'dhdghdghdf', 'fdhfhbdfgbs', '2024-08-12 05:26:44', '2024-08-12 05:26:44'),
(2, 'Tariqul Islam', 'tariqul@gmail.com', '01303863702', 'Web design', 'This is my Message', '2024-08-12 05:28:19', '2024-08-12 05:28:19'),
(3, 'Eric', 'nefybegi@mailinator.com', '47', 'Broadband Connection', 'Aperiam libero occae', '2024-12-07 21:55:31', '2024-12-07 21:55:31'),
(4, 'Zelda Guerra', 'biryxe@mailinator.com', '+1 (518) 658-2708', 'Duis voluptatibus cu', NULL, '2025-01-01 03:24:04', '2025-01-01 03:24:04'),
(5, 'Zelenia Warner', 'conamajiw@mailinator.com', '+1 (986) 434-9808', 'Incididunt culpa dui', 'Et ab atque enim nul', '2025-01-01 03:24:50', '2025-01-01 03:24:50'),
(6, 'tariqul', 'tariqul.bsd@gmail.com', '01303863702', NULL, 'dfgsdgf', '2025-01-04 06:10:19', '2025-01-04 06:10:19');

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `title`, `destination`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Ut asperiores quia t', 'Desiree Barnes', '<p>dfsgdfgfgdfgbvdfbv</p>', 'uploads/destination-image/35871735.jpg', 1, '2025-01-03 22:37:04', '2025-01-04 00:44:31'),
(3, 'This is title', 'Thailend', '<p>This is Description</p>', 'uploads/destination-image/16350179.jpg', 1, '2025-01-04 00:33:19', '2025-01-04 00:44:21'),
(4, 'Rajshahi', 'Rajshahi', '<p>gdfhgdfh</p>', 'uploads/destination-image/11650917.jpg', 1, '2025-01-04 00:46:13', '2025-01-04 00:46:13'),
(5, NULL, 'Sylhet', '<p>This is description</p>', 'uploads/destination-image/25567776.png', 1, '2025-01-04 00:48:16', '2025-01-04 00:48:16'),
(6, 'Chattogram', 'Chattogram', '<font color=\"#000000\" face=\"sans-serif\"><span style=\"font-size: 36.8px; letter-spacing: -0.2px; background-color: rgb(255, 255, 255);\"><b>Chattogram</b></span></font>', 'uploads/destination-image/16460349.png', 1, '2025-01-04 00:49:30', '2025-01-04 00:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `frequents`
--

CREATE TABLE `frequents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text DEFAULT NULL,
  `answare` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frequents`
--

INSERT INTO `frequents` (`id`, `question`, `answare`, `created_at`, `updated_at`) VALUES
(1, 'Molestiae', 'Totam iure repellend', '2024-12-04 00:11:05', '2024-12-04 00:12:37'),
(2, 'Accusantium est poss', 'Consequatur culpa', '2024-12-04 00:11:14', '2024-12-04 00:11:14');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `title`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Tiland', 'uploads/gallery-image/35803427.jpg', 1, '2025-01-04 02:50:18', '2025-01-04 02:50:18'),
(2, 'Cox,s Bazar', 'uploads/gallery-image/13203078.jpg', 1, '2025-01-04 02:52:53', '2025-01-04 02:53:52'),
(3, 'Cox, s Bazar', 'uploads/gallery-image/8771238.jpg', 1, '2025-01-04 02:53:04', '2025-01-04 02:53:25'),
(4, 'cox,s bazar', 'uploads/gallery-image/12759247.jpg', 1, '2025-01-04 02:58:47', '2025-01-04 02:58:47');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2022_10_26_133431_create_roles_table', 1),
(5, '2022_10_26_133512_create_role_routes_table', 1),
(6, '2022_10_30_144110_create_user_role_table', 1),
(7, '2024_06_14_183912_add_two_factor_columns_to_users_table', 1),
(8, '2024_06_14_184013_create_personal_access_tokens_table', 1),
(9, '2024_06_16_111052_create_categories_table', 2),
(10, '2024_06_16_111825_create_blogs_table', 3),
(12, '2024_08_02_044116_create_services_table', 4),
(13, '2024_08_02_174403_create_other_images_table', 5),
(14, '2024_08_06_063445_create_companies_table', 6),
(15, '2024_08_07_183404_create_contacts_table', 7),
(16, '2024_08_09_053936_create_comments_table', 8),
(17, '2024_08_11_081443_create_sliders_table', 9),
(18, '2024_08_11_081938_create_whychooses_table', 9),
(19, '2024_08_11_082000_create_projects_table', 9),
(22, '2024_08_18_154922_create_abouts_table', 10),
(23, '2024_08_18_155032_create_benefits_table', 10),
(24, '2024_08_29_121158_create_consultations_table', 11),
(27, '2024_11_23_070013_create_frequents_table', 13),
(28, '2024_12_05_035539_create_policies_table', 14),
(29, '2024_12_05_040902_create_t_conditions_table', 15),
(30, '2024_12_05_044017_create_banners_table', 16),
(31, '2025_01_02_042719_create_brands_table', 17),
(32, '2025_01_02_050405_create_clients_table', 18),
(33, '2025_01_02_050414_create_teams_table', 18),
(36, '2024_12_04_033937_create_packages_table', 19),
(37, '2025_01_04_040629_create_destinations_table', 19),
(38, '2025_01_04_084556_create_galleries_table', 20);

-- --------------------------------------------------------

--
-- Table structure for table `other_images`
--

CREATE TABLE `other_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` int(11) NOT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `other_images`
--

INSERT INTO `other_images` (`id`, `package_id`, `image`, `created_at`, `updated_at`) VALUES
(43, 4, 'uploads/other-image/12863256.jpg', '2025-01-04 00:05:56', '2025-01-04 00:05:56'),
(44, 4, 'uploads/other-image/36911657.jpg', '2025-01-04 00:05:56', '2025-01-04 00:05:56'),
(45, 5, 'uploads/other-image/39242851.jpg', '2025-01-04 02:07:10', '2025-01-04 02:07:10'),
(46, 5, 'uploads/other-image/4322708.jpg', '2025-01-04 02:07:10', '2025-01-04 02:07:10'),
(47, 5, 'uploads/other-image/39306170.jpg', '2025-01-04 02:07:10', '2025-01-04 02:07:10'),
(48, 6, 'uploads/other-image/14628683.jpg', '2025-01-04 04:57:54', '2025-01-04 04:57:54'),
(49, 6, 'uploads/other-image/18476365.jpg', '2025-01-04 04:57:54', '2025-01-04 04:57:54'),
(50, 6, 'uploads/other-image/47959638.jpg', '2025-01-04 04:57:54', '2025-01-04 04:57:54'),
(51, 7, 'uploads/other-image/45217140.jpg', '2025-01-04 05:12:33', '2025-01-04 05:12:33'),
(52, 7, 'uploads/other-image/1441214.jpg', '2025-01-04 05:12:33', '2025-01-04 05:12:33'),
(53, 7, 'uploads/other-image/28865499.jpg', '2025-01-04 05:12:33', '2025-01-04 05:12:33'),
(54, 8, 'uploads/other-image/18125372.jpg', '2025-01-04 05:18:12', '2025-01-04 05:18:12'),
(55, 8, 'uploads/other-image/24026271.jpg', '2025-01-04 05:18:12', '2025-01-04 05:18:12'),
(56, 8, 'uploads/other-image/4247630.jpg', '2025-01-04 05:18:13', '2025-01-04 05:18:13'),
(57, 9, 'uploads/other-image/4631059.jpg', '2025-01-04 05:34:16', '2025-01-04 05:34:16'),
(58, 9, 'uploads/other-image/49316652.jpg', '2025-01-04 05:34:16', '2025-01-04 05:34:16'),
(59, 9, 'uploads/other-image/47979885.png', '2025-01-04 05:34:16', '2025-01-04 05:34:16'),
(60, 9, 'uploads/other-image/41501490.jpg', '2025-01-04 05:34:16', '2025-01-04 05:34:16');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `single_price` varchar(255) DEFAULT NULL,
  `couple_price` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `long_description` longtext DEFAULT NULL,
  `tour_start_date` varchar(255) DEFAULT NULL,
  `tour_end_date` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `title`, `sub_title`, `duration`, `single_price`, `couple_price`, `place`, `image`, `short_description`, `long_description`, `tour_start_date`, `tour_end_date`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Totam culpa reprehe', 'Corporis voluptas id', '1', '499', '751', 'Eum quo aliquid prov', 'uploads/package-image/21677601.jpg', 'sdfgds', '<p>vsdfgbvdfsgvsdfvdfvg</p>', NULL, NULL, 1, '2025-01-04 00:01:18', '2025-01-04 02:15:57'),
(5, 'Quo ex deleniti dele', 'Adipisicing corrupti', '1', '925', '957', 'Ea cum deserunt nost', 'uploads/package-image/4945354.jpg', 'Consequat Doloremqu', '<p>dsdfsdfdsvrfgvregfvr</p>', NULL, NULL, 1, '2025-01-04 02:07:10', '2025-01-04 03:49:03');
INSERT INTO `packages` (`id`, `title`, `sub_title`, `duration`, `single_price`, `couple_price`, `place`, `image`, `short_description`, `long_description`, `tour_start_date`, `tour_end_date`, `status`, `created_at`, `updated_at`) VALUES
(6, 'নতুন বছরে নতুন সাজে ঘরে আসুন সাজেক ভ্যালি মাত্র - ৭,৫০০/- টাকায়,,', 'This is sub title', '2', '7500', '1800', 'সাজেক ভ্যালি', 'uploads/package-image/15950089.jpg', 'দুই রাত হিল ভিউ রিসোর্টে থাকা, বিজনেস ক্লাস বাসে যাওয়া আসা ও সাদা জীপ গাড়িতে সম্পূর্ণ হিডেন চার্জ মুক্ত প্রিমিয়াম ট্রিপে 🥰', '<div class=\"xdj266r x11i5rnm xat24cr x1mh8g0r x1vvkbs x126k92a\" style=\"margin: 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">নতুন বছরে নতুন সাজে ঘরে আসুন সাজেক ভ্যালি মাত্র - ৭,৫০০/- টাকায়,,</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">দুই রাত হিল ভিউ রিসোর্টে থাকা, বিজনেস ক্লাস বাসে যাওয়া আসা ও সাদা জীপ গাড়িতে সম্পূর্ণ হিডেন চার্জ মুক্ত প্রিমিয়াম ট্রিপে <span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🥰\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tea/1/16/1f970.png\" style=\"border: 0px; object-fit: fill;\"></span> </div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">ভ্রমন তারিখঃ </div><div dir=\"auto\" style=\"font-family: inherit;\">০৫ <span class=\"html-span xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"margin: 0px; text-align: inherit; overflow-wrap: break-word; padding: 0px; font-family: inherit;\"><a tabindex=\"-1\" class=\"html-a xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"color: rgb(56, 88, 152); cursor: pointer; margin: 0px; text-align: inherit; overflow-wrap: break-word; padding: 0px; font-family: inherit;\"></a></span>জানুয়ারি রবিবার রাতে রওনা </div><div dir=\"auto\" style=\"font-family: inherit;\">০৮ জানুয়ারি বুধবার রাতে রওনা </div><div dir=\"auto\" style=\"font-family: inherit;\">০৯ জানুয়ারি বৃহস্পতিবার রাতে রওনা </div><div dir=\"auto\" style=\"font-family: inherit;\">১০ জানুয়ারি শুক্রবার রাতে রওনা</div><div dir=\"auto\" style=\"font-family: inherit;\">১৫ জানুয়ারি বুধবার রাতে রওনা </div><div dir=\"auto\" style=\"font-family: inherit;\">১৬ জানুয়ারি বৃহস্পতিবার রাতে রওনা </div><div dir=\"auto\" style=\"font-family: inherit;\">১৭ জানুয়ারি শুক্রবার রাতে রওনা </div><div dir=\"auto\" style=\"font-family: inherit;\">২২ জানুয়ারি বুধবার রাতে রওনা </div><div dir=\"auto\" style=\"font-family: inherit;\">২৩ জানুয়ারি বৃহস্পতিবার রাতে রওনা </div><div dir=\"auto\" style=\"font-family: inherit;\">২৪ জানুয়ারি শুক্রবার রাতে রওনা </div><div dir=\"auto\" style=\"font-family: inherit;\">২৯ জানুয়ারি বুধবার রাতে রওনা </div><div dir=\"auto\" style=\"font-family: inherit;\">৩০ জানুয়ারি বৃহস্পতিবার রাতে রওনা </div><div dir=\"auto\" style=\"font-family: inherit;\">৩১ জানুয়ারি শুক্রবার রাতে রওনা </div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">গাড়ি ছাড়ার স্থানঃ</div><div dir=\"auto\" style=\"font-family: inherit;\">গাজীপুর/গাবতলী/ফকিরাপুল/কলাবাগান/সায়েদাবাদ, কুমিল্লা ও ফেনী থেকে প্রতিদিন আমাদের গাড়ি ছেড়ে আসে।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🚏\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tfc/1/16/1f68f.png\" style=\"border: 0px; object-fit: fill;\"></span> ঘুরার স্থানঃ সাজেক ভ্যালি, লুসাই গ্ৰাম, হ্যালি প্যাড, কংলাক পাহাড়, কমলক ঝর্না, স্টোন গার্ডেন, আলুটিনা গুহা, ঝুলন্ত ব্রিজ, হিল ভিউ পয়েন্ট।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\"> ভ্রমণ খরচঃ</div><div dir=\"auto\" style=\"font-family: inherit;\">ব্যাচেলরঃ ৭,৫০০/- থেকে শুরু জনপ্রতি খরচ।</div><div dir=\"auto\" style=\"font-family: inherit;\">                (এক রুমে চারজন শেয়ারে থাকা)</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">কাপলঃ ১৮,৫০০/- থেকে শুরু দুইজনের খরচ।</div><div dir=\"auto\" style=\"font-family: inherit;\">                (এক রুমে দুইজন শেয়ারে থাকা)</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">ফ্যামিলিঃ ২৫,৫০০/- থেকে শুরু তিনজনের খরচ।</div><div dir=\"auto\" style=\"font-family: inherit;\">                (এক রুমে তিনজন শেয়ারে থাকা)</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">সিঙ্গেলঃ ১৩,৫০০/- থেকে শুরু জনপ্রতি খরচ।</div><div dir=\"auto\" style=\"font-family: inherit;\">                (এক রুমে একজন থাকা)</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">(সম্পূর্ণ হিডেন চার্জ মুক্ত সকল খরচ সহ ফুল প্যাকেজে) </div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">পরিবহনঃ</div><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🚌\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t79/1/16/1f68c.png\" style=\"border: 0px; object-fit: fill;\"></span> শান্তি/সৌদিয়া/শ্যামলী পরিবহন।</div><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🚙\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tee/1/16/1f699.png\" style=\"border: 0px; object-fit: fill;\"></span> সাদা/নীল জীপ গাড়িতে ভ্রমন।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">রিসোর্ট:</div><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🏡\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t77/1/16/1f3e1.png\" style=\"border: 0px; object-fit: fill;\"></span> মাচাং বিলাস রিসোর্ট।</div><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🏡\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t77/1/16/1f3e1.png\" style=\"border: 0px; object-fit: fill;\"></span> মাচাং ঘর ইকো রিসোর্ট।</div><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🏡\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t77/1/16/1f3e1.png\" style=\"border: 0px; object-fit: fill;\"></span> ফদাং টং ইকো রিসোর্ট।</div><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🏡\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t77/1/16/1f3e1.png\" style=\"border: 0px; object-fit: fill;\"></span> ক্লাসিক প্রিমিয়াম রিসোর্ট।</div><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🏡\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t77/1/16/1f3e1.png\" style=\"border: 0px; object-fit: fill;\"></span> সাজেক ক্লাসিক রিসোর্ট।</div><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🏡\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t77/1/16/1f3e1.png\" style=\"border: 0px; object-fit: fill;\"></span> কিন্নর বা ডিঙ্গি কটেজ।</div><div dir=\"auto\" style=\"font-family: inherit;\">মিজুরাম ভিউ পার্সোনাল বারান্দা সহ রুম।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🍛\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t58/1/16/1f35b.png\" style=\"border: 0px; object-fit: fill;\"></span> ট্যুর চলাকালীন সময়ে আঁট বেলা খাবার মেন্যু -</div><div dir=\"auto\" style=\"font-family: inherit;\">✓ ২টা সকালে ডিম খিচুড়ি, চাটনি।</div><div dir=\"auto\" style=\"font-family: inherit;\">✓ ১টা সকালে পরোটা, ভাজি, ডিম, চা।</div><div dir=\"auto\" style=\"font-family: inherit;\">✓ দুপুরে ভাত, ভর্তা, সবজি ও বেম্বো চিকেন।</div><div dir=\"auto\" style=\"font-family: inherit;\">✓ দুপুরে ভাত, ভর্তা, সবজি ও হাঁসের মাংস।</div><div dir=\"auto\" style=\"font-family: inherit;\">✓ দুপুরে ভাত, ভর্তা, সবজি ও গরুর মাংস।</div><div dir=\"auto\" style=\"font-family: inherit;\">✓ রাতে পরোটা ও চিকেন বারবিকিউ, কোক।</div><div dir=\"auto\" style=\"font-family: inherit;\">✓ রাতে বেম্বো বিরিয়ানি, কোক।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🧳\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t9e/1/16/1f9f3.png\" style=\"border: 0px; object-fit: fill;\"></span>ভ্রমনে যা যা দেখতে পারবেনঃ</div><div dir=\"auto\" style=\"font-family: inherit;\">=====================</div><div dir=\"auto\" style=\"font-family: inherit;\">     ০১) নকশি পল্লি </div><div dir=\"auto\" style=\"font-family: inherit;\">     ০২) আঁকাবাঁকা পাহাড়ি পথ।</div><div dir=\"auto\" style=\"font-family: inherit;\">     ০৩) রুইলুই পাড়া।</div><div dir=\"auto\" style=\"font-family: inherit;\">     ০৪) আই লাভ সাজেক পয়েন্ট।</div><div dir=\"auto\" style=\"font-family: inherit;\">     ০৫) লুসাই গ্ৰাম।</div><div dir=\"auto\" style=\"font-family: inherit;\">     ০৬) সাজেক মসজিদ।</div><div dir=\"auto\" style=\"font-family: inherit;\">     ০৭) সাজেক ভ্যালি জিরো পয়েন্ট।</div><div dir=\"auto\" style=\"font-family: inherit;\">     ০৮) হ্যালিপ্যাড হিল ভিউ।</div><div dir=\"auto\" style=\"font-family: inherit;\">     ০৯) কংলাক পাহাড়।</div><div dir=\"auto\" style=\"font-family: inherit;\">     ১০) স্টোন গার্ডেন।</div><div dir=\"auto\" style=\"font-family: inherit;\">     ১১) সাজেক কমলক ঝর্না।</div><div dir=\"auto\" style=\"font-family: inherit;\">     ১২) আলুটিলা গুহা।</div><div dir=\"auto\" style=\"font-family: inherit;\">     ১৩) ঝুলন্ত ব্রীজ।</div><div dir=\"auto\" style=\"font-family: inherit;\">     ১৪) নন্দন কানন পার্ক।</div><div dir=\"auto\" style=\"font-family: inherit;\">     ১৫) আলুটিলা হিল ভিউ পয়েন্ট।</div><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🚸\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te4/1/16/1f6b8.png\" style=\"border: 0px; object-fit: fill;\"></span> সকল স্পটের প্রবেশ টিকেট সহ ফুল প্যাকেজ।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">বুকিং কনফার্ম করতে চাইলে যোগাযোগ করুন -</div><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"margin: 0px; text-align: inherit; overflow-wrap: break-word; padding: 0px; font-family: inherit;\"><a attributionsrc=\"/privacy_sandbox/comet/register/source/?xt=AZVN8PAuJRlVStKuePBUDFPbgU2f9SnyZ1N4b2bwpbECihBLEq2xgIz1UXodRn0DnxOuh0Dj6nV0IZuUJNie8zBGse-z8xZlfIiTT8I1NQBJRQxoGgAJRg3aJNSJG3zLijiHpFoAijkfsV1ZcMjRSU69VZekBBOmgFYuzO1SqGfauSKwIikDZDvhdJOX66DjrnDjYz9Yl_2EgBqLiUe3CGrOM2fISQbUlSiFoQo7jhq_OZhp3zbkqukum1I3YEI3vIQLwiQwPlxgsorE1LAJcPVjdt4ha-pVhTv6aqef3GDOm_1W1_pv2Mqt4VmfdKVuuqzd_sGOZ2ndF_90w-0qR1WHPiki_ibYepRK64cJIJaHVlj0KZyMnck9MinkwxV6eZL044B-8y6NFn11PZON_f9CTCUvmS07rdngaAz3mAc7LMeXRH0JEP9NTrgptnGt-Qfi3qtts2iTqBomzzUsAoP-8TTyS9yqDWBdIzpEze5tb5KMuEnZWZ-IqOBR6IHx6LgzwGPZSMau699JvawD46BlxM2ZyYsWLu6OY6uFEhelzrj8lVJGoI789SGahgoE_h06nrXsD2rXee13vipT0CtqFOZCMMKcoxRLaNlD9MEZ3jDzOxRlymfVrSuEToocwwCoHpzdCrPhrGQrFqWtgq5e5N-sMFeHOISu3xfbvf1bnQx9KPIKZN5NjgjxZwYnUqhK1R2lJmZQOZ1hR9ZSt_iaWvyrzWT2O6tfvaQC6vKm-SO7LCNMvekTYSEGh4XTFv3hzTGqLrid1dRnQgPv5J6Vm9YwTvJqBmSiuLzAnVXZ5Ols4IiDr-D-sYXQam9Z_d6VxqL_2_Kf0qnMJW4_TY6VxW0d8vVMbXmQmt2QsQkxdNHkWZfJtOnp37v9iails7ZfPhCy-qj1EneEknb6unQt5rQKu_cxRB-aQkcW6knJ7PySX2jh2eh-Ht4kZCHmvVhUIFpVMNhndIuy-nhs0Vr7Q-HrGi79tqNJVc-jFQUD4h8yKRQKnzSka-ZiFPrg9uUKs7E37dynqgVBvswzZeQU4g4ppmFNK-x0A9ZjL79ceMJOGjB8NQB1PlyklEoTjYebjT8P74_rzmAG81XW7NhWC-3Wp1SAyIrXrzAd2CauHg\" class=\"x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz x1sur9pj xkrqix3 x1fey0fg x1s688f\" href=\"https://www.facebook.com/Hilshatourism?__cft__[0]=AZUvY0uEn1moXOibcLrseuXgpHouXuWGoJsBTkqJXTHYRwXEry2W61hKzmICE9xXtKqPsWNT4goGjHx_rVZSkCZ89H1cK2TQdlbY99iWtYxZOxmu09VqgKEXERvPDduWn2PE9pFDYCJ5o3Kjc9-_aIkYy5-_DcX8UZ9wC5MWUovWT8hxa3qRCKTmAua9PmVptCU&amp;__tn__=-]K-R\" role=\"link\" tabindex=\"0\" style=\"cursor: pointer; list-style: none; margin: 0px; text-align: inherit; border-style: none; padding: 0px; border-width: 0px; outline: none; -webkit-tap-highlight-color: transparent; font-weight: 600; touch-action: manipulation; display: inline; font-family: inherit;\">হিলশা ট্যুরিজম Hilsha Tourism</a></span> </div><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"📱\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t57/1/16/1f4f1.png\" style=\"border: 0px; object-fit: fill;\"></span>হোয়াটসঅ্যাপঃ <span class=\"html-span xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"margin: 0px; text-align: inherit; overflow-wrap: break-word; padding: 0px; font-family: inherit;\"><span dir=\"ltr\" style=\"font-family: inherit;\"><i data-visualcompletion=\"css-img\" class=\"x1b0d499 x1vv9jnp xahult9\" style=\"vertical-align: -0.25em; margin-bottom: 3px; filter: var(--filter-blue-link-icon); background-image: url(&quot;https://static.xx.fbcdn.net/rsrc.php/v4/y0/r/NxPd5oFMlV3.png&quot;); background-position: 0px -447px; background-size: auto; width: 12px; height: 12px; background-repeat: no-repeat; display: inline-block;\"></i><a attributionsrc=\"/privacy_sandbox/comet/register/source/?xt=AZVN8PAuJRlVStKuePBUDFPbgU2f9SnyZ1N4b2bwpbECihBLEq2xgIz1UXodRn0DnxOuh0Dj6nV0IZuUJNie8zBGse-z8xZlfIiTT8I1NQBJRQxoGgAJRg3aJNSJG3zLijiHpFoAijkfsV1ZcMjRSU69VZekBBOmgFYuzO1SqGfauSKwIikDZDvhdJOX66DjrnDjYz9Yl_2EgBqLiUe3CGrOM2fISQbUlSiFoQo7jhq_OZhp3zbkqukum1I3YEI3vIQLwiQwPlxgsorE1LAJcPVjdt4ha-pVhTv6aqef3GDOm_1W1_pv2Mqt4VmfdKVuuqzd_sGOZ2ndF_90w-0qR1WHPiki_ibYepRK64cJIJaHVlj0KZyMnck9MinkwxV6eZL044B-8y6NFn11PZON_f9CTCUvmS07rdngaAz3mAc7LMeXRH0JEP9NTrgptnGt-Qfi3qtts2iTqBomzzUsAoP-8TTyS9yqDWBdIzpEze5tb5KMuEnZWZ-IqOBR6IHx6LgzwGPZSMau699JvawD46BlxM2ZyYsWLu6OY6uFEhelzrj8lVJGoI789SGahgoE_h06nrXsD2rXee13vipT0CtqFOZCMMKcoxRLaNlD9MEZ3jDzOxRlymfVrSuEToocwwCoHpzdCrPhrGQrFqWtgq5e5N-sMFeHOISu3xfbvf1bnQx9KPIKZN5NjgjxZwYnUqhK1R2lJmZQOZ1hR9ZSt_iaWvyrzWT2O6tfvaQC6vKm-SO7LCNMvekTYSEGh4XTFv3hzTGqLrid1dRnQgPv5J6Vm9YwTvJqBmSiuLzAnVXZ5Ols4IiDr-D-sYXQam9Z_d6VxqL_2_Kf0qnMJW4_TY6VxW0d8vVMbXmQmt2QsQkxdNHkWZfJtOnp37v9iails7ZfPhCy-qj1EneEknb6unQt5rQKu_cxRB-aQkcW6knJ7PySX2jh2eh-Ht4kZCHmvVhUIFpVMNhndIuy-nhs0Vr7Q-HrGi79tqNJVc-jFQUD4h8yKRQKnzSka-ZiFPrg9uUKs7E37dynqgVBvswzZeQU4g4ppmFNK-x0A9ZjL79ceMJOGjB8NQB1PlyklEoTjYebjT8P74_rzmAG81XW7NhWC-3Wp1SAyIrXrzAd2CauHg\" class=\"x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz x1sur9pj xkrqix3 x1fey0fg x1s688f\" href=\"https://api.whatsapp.com/send?phone=8801644648188&amp;text=Link%3A%0Ahttps%3A%2F%2Ffb.me%2F5XmEs20BN%0A%0AI%20saw%20this%20on%20Facebook...&amp;context=ARCCI8e-4-bs1miUdTSbTGN02O_nyQj8KXpeoZr0YZBWigNSCVa2jbpcHzTO0nvHb9Ces15GhgQTyo0kw82RDRLiRFedB8rUJz_SerV7olwuw--CuHBP5n5A9Jh69a8_4kIDBzKnqgonbpU7evk-Cwsp9g&amp;source&amp;app=facebook&amp;fbclid=IwZXh0bgNhZW0CMTAAAR0pY2inoxj1a2c_lkyOVEATSOd1qW3c-NJBlG_G5Y4WBsDfdT4nYI2Q9kc_aem_eesVEYRUPOHolHQgNbGWWw\" rel=\"nofollow noreferrer\" role=\"link\" tabindex=\"0\" target=\"_blank\" style=\"cursor: pointer; list-style: none; margin: 0px; text-align: inherit; border-style: none; padding: 0px; border-width: 0px; outline: none; -webkit-tap-highlight-color: transparent; font-weight: 600; touch-action: manipulation; display: inline; font-family: inherit;\">01644-648188</a></span></span> </div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"💰\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t5a/1/16/1f4b0.png\" style=\"border: 0px; object-fit: fill;\"></span>বুকিং নম্বরঃ 01829531515</div><div dir=\"auto\" style=\"font-family: inherit;\">বিকাশ বা নগদে ১,৫৩০/- জনপ্রতি বুকিং মানি দিয়ে সিট কনফার্ম করুন।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"margin: 0px; text-align: inherit; overflow-wrap: break-word; padding: 0px; font-family: inherit;\"><a attributionsrc=\"/privacy_sandbox/comet/register/source/?xt=AZVN8PAuJRlVStKuePBUDFPbgU2f9SnyZ1N4b2bwpbECihBLEq2xgIz1UXodRn0DnxOuh0Dj6nV0IZuUJNie8zBGse-z8xZlfIiTT8I1NQBJRQxoGgAJRg3aJNSJG3zLijiHpFoAijkfsV1ZcMjRSU69VZekBBOmgFYuzO1SqGfauSKwIikDZDvhdJOX66DjrnDjYz9Yl_2EgBqLiUe3CGrOM2fISQbUlSiFoQo7jhq_OZhp3zbkqukum1I3YEI3vIQLwiQwPlxgsorE1LAJcPVjdt4ha-pVhTv6aqef3GDOm_1W1_pv2Mqt4VmfdKVuuqzd_sGOZ2ndF_90w-0qR1WHPiki_ibYepRK64cJIJaHVlj0KZyMnck9MinkwxV6eZL044B-8y6NFn11PZON_f9CTCUvmS07rdngaAz3mAc7LMeXRH0JEP9NTrgptnGt-Qfi3qtts2iTqBomzzUsAoP-8TTyS9yqDWBdIzpEze5tb5KMuEnZWZ-IqOBR6IHx6LgzwGPZSMau699JvawD46BlxM2ZyYsWLu6OY6uFEhelzrj8lVJGoI789SGahgoE_h06nrXsD2rXee13vipT0CtqFOZCMMKcoxRLaNlD9MEZ3jDzOxRlymfVrSuEToocwwCoHpzdCrPhrGQrFqWtgq5e5N-sMFeHOISu3xfbvf1bnQx9KPIKZN5NjgjxZwYnUqhK1R2lJmZQOZ1hR9ZSt_iaWvyrzWT2O6tfvaQC6vKm-SO7LCNMvekTYSEGh4XTFv3hzTGqLrid1dRnQgPv5J6Vm9YwTvJqBmSiuLzAnVXZ5Ols4IiDr-D-sYXQam9Z_d6VxqL_2_Kf0qnMJW4_TY6VxW0d8vVMbXmQmt2QsQkxdNHkWZfJtOnp37v9iails7ZfPhCy-qj1EneEknb6unQt5rQKu_cxRB-aQkcW6knJ7PySX2jh2eh-Ht4kZCHmvVhUIFpVMNhndIuy-nhs0Vr7Q-HrGi79tqNJVc-jFQUD4h8yKRQKnzSka-ZiFPrg9uUKs7E37dynqgVBvswzZeQU4g4ppmFNK-x0A9ZjL79ceMJOGjB8NQB1PlyklEoTjYebjT8P74_rzmAG81XW7NhWC-3Wp1SAyIrXrzAd2CauHg\" class=\"x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz x1sur9pj xkrqix3 x1fey0fg x1s688f\" href=\"https://www.facebook.com/hashtag/sajekvalley?__eep__=6&amp;__cft__[0]=AZUvY0uEn1moXOibcLrseuXgpHouXuWGoJsBTkqJXTHYRwXEry2W61hKzmICE9xXtKqPsWNT4goGjHx_rVZSkCZ89H1cK2TQdlbY99iWtYxZOxmu09VqgKEXERvPDduWn2PE9pFDYCJ5o3Kjc9-_aIkYy5-_DcX8UZ9wC5MWUovWT8hxa3qRCKTmAua9PmVptCU&amp;__tn__=*NK-R\" role=\"link\" tabindex=\"0\" style=\"cursor: pointer; list-style: none; margin: 0px; text-align: inherit; border-style: none; padding: 0px; border-width: 0px; outline: none; -webkit-tap-highlight-color: transparent; font-weight: 600; touch-action: manipulation; display: inline; font-family: inherit;\">#sajekvalley</a></span> <span class=\"html-span xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"margin: 0px; text-align: inherit; overflow-wrap: break-word; padding: 0px; font-family: inherit;\"><a attributionsrc=\"/privacy_sandbox/comet/register/source/?xt=AZVN8PAuJRlVStKuePBUDFPbgU2f9SnyZ1N4b2bwpbECihBLEq2xgIz1UXodRn0DnxOuh0Dj6nV0IZuUJNie8zBGse-z8xZlfIiTT8I1NQBJRQxoGgAJRg3aJNSJG3zLijiHpFoAijkfsV1ZcMjRSU69VZekBBOmgFYuzO1SqGfauSKwIikDZDvhdJOX66DjrnDjYz9Yl_2EgBqLiUe3CGrOM2fISQbUlSiFoQo7jhq_OZhp3zbkqukum1I3YEI3vIQLwiQwPlxgsorE1LAJcPVjdt4ha-pVhTv6aqef3GDOm_1W1_pv2Mqt4VmfdKVuuqzd_sGOZ2ndF_90w-0qR1WHPiki_ibYepRK64cJIJaHVlj0KZyMnck9MinkwxV6eZL044B-8y6NFn11PZON_f9CTCUvmS07rdngaAz3mAc7LMeXRH0JEP9NTrgptnGt-Qfi3qtts2iTqBomzzUsAoP-8TTyS9yqDWBdIzpEze5tb5KMuEnZWZ-IqOBR6IHx6LgzwGPZSMau699JvawD46BlxM2ZyYsWLu6OY6uFEhelzrj8lVJGoI789SGahgoE_h06nrXsD2rXee13vipT0CtqFOZCMMKcoxRLaNlD9MEZ3jDzOxRlymfVrSuEToocwwCoHpzdCrPhrGQrFqWtgq5e5N-sMFeHOISu3xfbvf1bnQx9KPIKZN5NjgjxZwYnUqhK1R2lJmZQOZ1hR9ZSt_iaWvyrzWT2O6tfvaQC6vKm-SO7LCNMvekTYSEGh4XTFv3hzTGqLrid1dRnQgPv5J6Vm9YwTvJqBmSiuLzAnVXZ5Ols4IiDr-D-sYXQam9Z_d6VxqL_2_Kf0qnMJW4_TY6VxW0d8vVMbXmQmt2QsQkxdNHkWZfJtOnp37v9iails7ZfPhCy-qj1EneEknb6unQt5rQKu_cxRB-aQkcW6knJ7PySX2jh2eh-Ht4kZCHmvVhUIFpVMNhndIuy-nhs0Vr7Q-HrGi79tqNJVc-jFQUD4h8yKRQKnzSka-ZiFPrg9uUKs7E37dynqgVBvswzZeQU4g4ppmFNK-x0A9ZjL79ceMJOGjB8NQB1PlyklEoTjYebjT8P74_rzmAG81XW7NhWC-3Wp1SAyIrXrzAd2CauHg\" class=\"x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz x1sur9pj xkrqix3 x1fey0fg x1s688f\" href=\"https://www.facebook.com/hashtag/sajek?__eep__=6&amp;__cft__[0]=AZUvY0uEn1moXOibcLrseuXgpHouXuWGoJsBTkqJXTHYRwXEry2W61hKzmICE9xXtKqPsWNT4goGjHx_rVZSkCZ89H1cK2TQdlbY99iWtYxZOxmu09VqgKEXERvPDduWn2PE9pFDYCJ5o3Kjc9-_aIkYy5-_DcX8UZ9wC5MWUovWT8hxa3qRCKTmAua9PmVptCU&amp;__tn__=*NK-R\" role=\"link\" tabindex=\"0\" style=\"cursor: pointer; list-style: none; margin: 0px; text-align: inherit; border-style: none; padding: 0px; border-width: 0px; outline: none; -webkit-tap-highlight-color: transparent; font-weight: 600; touch-action: manipulation; display: inline; font-family: inherit;\">#Sajek</a></span> <span class=\"html-span xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"margin: 0px; text-align: inherit; overflow-wrap: break-word; padding: 0px; font-family: inherit;\"><a attributionsrc=\"/privacy_sandbox/comet/register/source/?xt=AZVN8PAuJRlVStKuePBUDFPbgU2f9SnyZ1N4b2bwpbECihBLEq2xgIz1UXodRn0DnxOuh0Dj6nV0IZuUJNie8zBGse-z8xZlfIiTT8I1NQBJRQxoGgAJRg3aJNSJG3zLijiHpFoAijkfsV1ZcMjRSU69VZekBBOmgFYuzO1SqGfauSKwIikDZDvhdJOX66DjrnDjYz9Yl_2EgBqLiUe3CGrOM2fISQbUlSiFoQo7jhq_OZhp3zbkqukum1I3YEI3vIQLwiQwPlxgsorE1LAJcPVjdt4ha-pVhTv6aqef3GDOm_1W1_pv2Mqt4VmfdKVuuqzd_sGOZ2ndF_90w-0qR1WHPiki_ibYepRK64cJIJaHVlj0KZyMnck9MinkwxV6eZL044B-8y6NFn11PZON_f9CTCUvmS07rdngaAz3mAc7LMeXRH0JEP9NTrgptnGt-Qfi3qtts2iTqBomzzUsAoP-8TTyS9yqDWBdIzpEze5tb5KMuEnZWZ-IqOBR6IHx6LgzwGPZSMau699JvawD46BlxM2ZyYsWLu6OY6uFEhelzrj8lVJGoI789SGahgoE_h06nrXsD2rXee13vipT0CtqFOZCMMKcoxRLaNlD9MEZ3jDzOxRlymfVrSuEToocwwCoHpzdCrPhrGQrFqWtgq5e5N-sMFeHOISu3xfbvf1bnQx9KPIKZN5NjgjxZwYnUqhK1R2lJmZQOZ1hR9ZSt_iaWvyrzWT2O6tfvaQC6vKm-SO7LCNMvekTYSEGh4XTFv3hzTGqLrid1dRnQgPv5J6Vm9YwTvJqBmSiuLzAnVXZ5Ols4IiDr-D-sYXQam9Z_d6VxqL_2_Kf0qnMJW4_TY6VxW0d8vVMbXmQmt2QsQkxdNHkWZfJtOnp37v9iails7ZfPhCy-qj1EneEknb6unQt5rQKu_cxRB-aQkcW6knJ7PySX2jh2eh-Ht4kZCHmvVhUIFpVMNhndIuy-nhs0Vr7Q-HrGi79tqNJVc-jFQUD4h8yKRQKnzSka-ZiFPrg9uUKs7E37dynqgVBvswzZeQU4g4ppmFNK-x0A9ZjL79ceMJOGjB8NQB1PlyklEoTjYebjT8P74_rzmAG81XW7NhWC-3Wp1SAyIrXrzAd2CauHg\" class=\"x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz x1sur9pj xkrqix3 x1fey0fg x1s688f\" href=\"https://www.facebook.com/hashtag/sajektour?__eep__=6&amp;__cft__[0]=AZUvY0uEn1moXOibcLrseuXgpHouXuWGoJsBTkqJXTHYRwXEry2W61hKzmICE9xXtKqPsWNT4goGjHx_rVZSkCZ89H1cK2TQdlbY99iWtYxZOxmu09VqgKEXERvPDduWn2PE9pFDYCJ5o3Kjc9-_aIkYy5-_DcX8UZ9wC5MWUovWT8hxa3qRCKTmAua9PmVptCU&amp;__tn__=*NK-R\" role=\"link\" tabindex=\"0\" style=\"cursor: pointer; list-style: none; margin: 0px; text-align: inherit; border-style: none; padding: 0px; border-width: 0px; outline: none; -webkit-tap-highlight-color: transparent; font-weight: 600; touch-action: manipulation; display: inline; font-family: inherit;\">#SajekTour</a></span> <span class=\"html-span xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"margin: 0px; text-align: inherit; overflow-wrap: break-word; padding: 0px; font-family: inherit;\"><a attributionsrc=\"/privacy_sandbox/comet/register/source/?xt=AZVN8PAuJRlVStKuePBUDFPbgU2f9SnyZ1N4b2bwpbECihBLEq2xgIz1UXodRn0DnxOuh0Dj6nV0IZuUJNie8zBGse-z8xZlfIiTT8I1NQBJRQxoGgAJRg3aJNSJG3zLijiHpFoAijkfsV1ZcMjRSU69VZekBBOmgFYuzO1SqGfauSKwIikDZDvhdJOX66DjrnDjYz9Yl_2EgBqLiUe3CGrOM2fISQbUlSiFoQo7jhq_OZhp3zbkqukum1I3YEI3vIQLwiQwPlxgsorE1LAJcPVjdt4ha-pVhTv6aqef3GDOm_1W1_pv2Mqt4VmfdKVuuqzd_sGOZ2ndF_90w-0qR1WHPiki_ibYepRK64cJIJaHVlj0KZyMnck9MinkwxV6eZL044B-8y6NFn11PZON_f9CTCUvmS07rdngaAz3mAc7LMeXRH0JEP9NTrgptnGt-Qfi3qtts2iTqBomzzUsAoP-8TTyS9yqDWBdIzpEze5tb5KMuEnZWZ-IqOBR6IHx6LgzwGPZSMau699JvawD46BlxM2ZyYsWLu6OY6uFEhelzrj8lVJGoI789SGahgoE_h06nrXsD2rXee13vipT0CtqFOZCMMKcoxRLaNlD9MEZ3jDzOxRlymfVrSuEToocwwCoHpzdCrPhrGQrFqWtgq5e5N-sMFeHOISu3xfbvf1bnQx9KPIKZN5NjgjxZwYnUqhK1R2lJmZQOZ1hR9ZSt_iaWvyrzWT2O6tfvaQC6vKm-SO7LCNMvekTYSEGh4XTFv3hzTGqLrid1dRnQgPv5J6Vm9YwTvJqBmSiuLzAnVXZ5Ols4IiDr-D-sYXQam9Z_d6VxqL_2_Kf0qnMJW4_TY6VxW0d8vVMbXmQmt2QsQkxdNHkWZfJtOnp37v9iails7ZfPhCy-qj1EneEknb6unQt5rQKu_cxRB-aQkcW6knJ7PySX2jh2eh-Ht4kZCHmvVhUIFpVMNhndIuy-nhs0Vr7Q-HrGi79tqNJVc-jFQUD4h8yKRQKnzSka-ZiFPrg9uUKs7E37dynqgVBvswzZeQU4g4ppmFNK-x0A9ZjL79ceMJOGjB8NQB1PlyklEoTjYebjT8P74_rzmAG81XW7NhWC-3Wp1SAyIrXrzAd2CauHg\" class=\"x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz x1sur9pj xkrqix3 x1fey0fg x1s688f\" href=\"https://www.facebook.com/hashtag/bangladesh?__eep__=6&amp;__cft__[0]=AZUvY0uEn1moXOibcLrseuXgpHouXuWGoJsBTkqJXTHYRwXEry2W61hKzmICE9xXtKqPsWNT4goGjHx_rVZSkCZ89H1cK2TQdlbY99iWtYxZOxmu09VqgKEXERvPDduWn2PE9pFDYCJ5o3Kjc9-_aIkYy5-_DcX8UZ9wC5MWUovWT8hxa3qRCKTmAua9PmVptCU&amp;__tn__=*NK-R\" role=\"link\" tabindex=\"0\" style=\"cursor: pointer; list-style: none; margin: 0px; text-align: inherit; border-style: none; padding: 0px; border-width: 0px; outline: none; -webkit-tap-highlight-color: transparent; font-weight: 600; touch-action: manipulation; display: inline; font-family: inherit;\">#Bangladesh</a></span> <span class=\"html-span xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"margin: 0px; text-align: inherit; overflow-wrap: break-word; padding: 0px; font-family: inherit;\"><a attributionsrc=\"/privacy_sandbox/comet/register/source/?xt=AZVN8PAuJRlVStKuePBUDFPbgU2f9SnyZ1N4b2bwpbECihBLEq2xgIz1UXodRn0DnxOuh0Dj6nV0IZuUJNie8zBGse-z8xZlfIiTT8I1NQBJRQxoGgAJRg3aJNSJG3zLijiHpFoAijkfsV1ZcMjRSU69VZekBBOmgFYuzO1SqGfauSKwIikDZDvhdJOX66DjrnDjYz9Yl_2EgBqLiUe3CGrOM2fISQbUlSiFoQo7jhq_OZhp3zbkqukum1I3YEI3vIQLwiQwPlxgsorE1LAJcPVjdt4ha-pVhTv6aqef3GDOm_1W1_pv2Mqt4VmfdKVuuqzd_sGOZ2ndF_90w-0qR1WHPiki_ibYepRK64cJIJaHVlj0KZyMnck9MinkwxV6eZL044B-8y6NFn11PZON_f9CTCUvmS07rdngaAz3mAc7LMeXRH0JEP9NTrgptnGt-Qfi3qtts2iTqBomzzUsAoP-8TTyS9yqDWBdIzpEze5tb5KMuEnZWZ-IqOBR6IHx6LgzwGPZSMau699JvawD46BlxM2ZyYsWLu6OY6uFEhelzrj8lVJGoI789SGahgoE_h06nrXsD2rXee13vipT0CtqFOZCMMKcoxRLaNlD9MEZ3jDzOxRlymfVrSuEToocwwCoHpzdCrPhrGQrFqWtgq5e5N-sMFeHOISu3xfbvf1bnQx9KPIKZN5NjgjxZwYnUqhK1R2lJmZQOZ1hR9ZSt_iaWvyrzWT2O6tfvaQC6vKm-SO7LCNMvekTYSEGh4XTFv3hzTGqLrid1dRnQgPv5J6Vm9YwTvJqBmSiuLzAnVXZ5Ols4IiDr-D-sYXQam9Z_d6VxqL_2_Kf0qnMJW4_TY6VxW0d8vVMbXmQmt2QsQkxdNHkWZfJtOnp37v9iails7ZfPhCy-qj1EneEknb6unQt5rQKu_cxRB-aQkcW6knJ7PySX2jh2eh-Ht4kZCHmvVhUIFpVMNhndIuy-nhs0Vr7Q-HrGi79tqNJVc-jFQUD4h8yKRQKnzSka-ZiFPrg9uUKs7E37dynqgVBvswzZeQU4g4ppmFNK-x0A9ZjL79ceMJOGjB8NQB1PlyklEoTjYebjT8P74_rzmAG81XW7NhWC-3Wp1SAyIrXrzAd2CauHg\" class=\"x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz x1sur9pj xkrqix3 x1fey0fg x1s688f\" href=\"https://www.facebook.com/hashtag/travel?__eep__=6&amp;__cft__[0]=AZUvY0uEn1moXOibcLrseuXgpHouXuWGoJsBTkqJXTHYRwXEry2W61hKzmICE9xXtKqPsWNT4goGjHx_rVZSkCZ89H1cK2TQdlbY99iWtYxZOxmu09VqgKEXERvPDduWn2PE9pFDYCJ5o3Kjc9-_aIkYy5-_DcX8UZ9wC5MWUovWT8hxa3qRCKTmAua9PmVptCU&amp;__tn__=*NK-R\" role=\"link\" tabindex=\"0\" style=\"cursor: pointer; list-style: none; margin: 0px; text-align: inherit; border-style: none; padding: 0px; border-width: 0px; outline: none; -webkit-tap-highlight-color: transparent; font-weight: 600; touch-action: manipulation; display: inline; font-family: inherit;\">#travel</a></span> <span class=\"html-span xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"margin: 0px; text-align: inherit; overflow-wrap: break-word; padding: 0px; font-family: inherit;\"><a attributionsrc=\"/privacy_sandbox/comet/register/source/?xt=AZVN8PAuJRlVStKuePBUDFPbgU2f9SnyZ1N4b2bwpbECihBLEq2xgIz1UXodRn0DnxOuh0Dj6nV0IZuUJNie8zBGse-z8xZlfIiTT8I1NQBJRQxoGgAJRg3aJNSJG3zLijiHpFoAijkfsV1ZcMjRSU69VZekBBOmgFYuzO1SqGfauSKwIikDZDvhdJOX66DjrnDjYz9Yl_2EgBqLiUe3CGrOM2fISQbUlSiFoQo7jhq_OZhp3zbkqukum1I3YEI3vIQLwiQwPlxgsorE1LAJcPVjdt4ha-pVhTv6aqef3GDOm_1W1_pv2Mqt4VmfdKVuuqzd_sGOZ2ndF_90w-0qR1WHPiki_ibYepRK64cJIJaHVlj0KZyMnck9MinkwxV6eZL044B-8y6NFn11PZON_f9CTCUvmS07rdngaAz3mAc7LMeXRH0JEP9NTrgptnGt-Qfi3qtts2iTqBomzzUsAoP-8TTyS9yqDWBdIzpEze5tb5KMuEnZWZ-IqOBR6IHx6LgzwGPZSMau699JvawD46BlxM2ZyYsWLu6OY6uFEhelzrj8lVJGoI789SGahgoE_h06nrXsD2rXee13vipT0CtqFOZCMMKcoxRLaNlD9MEZ3jDzOxRlymfVrSuEToocwwCoHpzdCrPhrGQrFqWtgq5e5N-sMFeHOISu3xfbvf1bnQx9KPIKZN5NjgjxZwYnUqhK1R2lJmZQOZ1hR9ZSt_iaWvyrzWT2O6tfvaQC6vKm-SO7LCNMvekTYSEGh4XTFv3hzTGqLrid1dRnQgPv5J6Vm9YwTvJqBmSiuLzAnVXZ5Ols4IiDr-D-sYXQam9Z_d6VxqL_2_Kf0qnMJW4_TY6VxW0d8vVMbXmQmt2QsQkxdNHkWZfJtOnp37v9iails7ZfPhCy-qj1EneEknb6unQt5rQKu_cxRB-aQkcW6knJ7PySX2jh2eh-Ht4kZCHmvVhUIFpVMNhndIuy-nhs0Vr7Q-HrGi79tqNJVc-jFQUD4h8yKRQKnzSka-ZiFPrg9uUKs7E37dynqgVBvswzZeQU4g4ppmFNK-x0A9ZjL79ceMJOGjB8NQB1PlyklEoTjYebjT8P74_rzmAG81XW7NhWC-3Wp1SAyIrXrzAd2CauHg\" class=\"x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz x1sur9pj xkrqix3 x1fey0fg x1s688f\" href=\"https://www.facebook.com/hashtag/travelagency?__eep__=6&amp;__cft__[0]=AZUvY0uEn1moXOibcLrseuXgpHouXuWGoJsBTkqJXTHYRwXEry2W61hKzmICE9xXtKqPsWNT4goGjHx_rVZSkCZ89H1cK2TQdlbY99iWtYxZOxmu09VqgKEXERvPDduWn2PE9pFDYCJ5o3Kjc9-_aIkYy5-_DcX8UZ9wC5MWUovWT8hxa3qRCKTmAua9PmVptCU&amp;__tn__=*NK-R\" role=\"link\" tabindex=\"0\" style=\"cursor: pointer; list-style: none; margin: 0px; text-align: inherit; border-style: none; padding: 0px; border-width: 0px; outline: none; -webkit-tap-highlight-color: transparent; font-weight: 600; touch-action: manipulation; display: inline; font-family: inherit;\">#travelagency</a></span> <span class=\"html-span xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"margin: 0px; text-align: inherit; overflow-wrap: break-word; padding: 0px; font-family: inherit;\"><a attributionsrc=\"/privacy_sandbox/comet/register/source/?xt=AZVN8PAuJRlVStKuePBUDFPbgU2f9SnyZ1N4b2bwpbECihBLEq2xgIz1UXodRn0DnxOuh0Dj6nV0IZuUJNie8zBGse-z8xZlfIiTT8I1NQBJRQxoGgAJRg3aJNSJG3zLijiHpFoAijkfsV1ZcMjRSU69VZekBBOmgFYuzO1SqGfauSKwIikDZDvhdJOX66DjrnDjYz9Yl_2EgBqLiUe3CGrOM2fISQbUlSiFoQo7jhq_OZhp3zbkqukum1I3YEI3vIQLwiQwPlxgsorE1LAJcPVjdt4ha-pVhTv6aqef3GDOm_1W1_pv2Mqt4VmfdKVuuqzd_sGOZ2ndF_90w-0qR1WHPiki_ibYepRK64cJIJaHVlj0KZyMnck9MinkwxV6eZL044B-8y6NFn11PZON_f9CTCUvmS07rdngaAz3mAc7LMeXRH0JEP9NTrgptnGt-Qfi3qtts2iTqBomzzUsAoP-8TTyS9yqDWBdIzpEze5tb5KMuEnZWZ-IqOBR6IHx6LgzwGPZSMau699JvawD46BlxM2ZyYsWLu6OY6uFEhelzrj8lVJGoI789SGahgoE_h06nrXsD2rXee13vipT0CtqFOZCMMKcoxRLaNlD9MEZ3jDzOxRlymfVrSuEToocwwCoHpzdCrPhrGQrFqWtgq5e5N-sMFeHOISu3xfbvf1bnQx9KPIKZN5NjgjxZwYnUqhK1R2lJmZQOZ1hR9ZSt_iaWvyrzWT2O6tfvaQC6vKm-SO7LCNMvekTYSEGh4XTFv3hzTGqLrid1dRnQgPv5J6Vm9YwTvJqBmSiuLzAnVXZ5Ols4IiDr-D-sYXQam9Z_d6VxqL_2_Kf0qnMJW4_TY6VxW0d8vVMbXmQmt2QsQkxdNHkWZfJtOnp37v9iails7ZfPhCy-qj1EneEknb6unQt5rQKu_cxRB-aQkcW6knJ7PySX2jh2eh-Ht4kZCHmvVhUIFpVMNhndIuy-nhs0Vr7Q-HrGi79tqNJVc-jFQUD4h8yKRQKnzSka-ZiFPrg9uUKs7E37dynqgVBvswzZeQU4g4ppmFNK-x0A9ZjL79ceMJOGjB8NQB1PlyklEoTjYebjT8P74_rzmAG81XW7NhWC-3Wp1SAyIrXrzAd2CauHg\" class=\"x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz x1sur9pj xkrqix3 x1fey0fg x1s688f\" href=\"https://www.facebook.com/hashtag/travelblogger?__eep__=6&amp;__cft__[0]=AZUvY0uEn1moXOibcLrseuXgpHouXuWGoJsBTkqJXTHYRwXEry2W61hKzmICE9xXtKqPsWNT4goGjHx_rVZSkCZ89H1cK2TQdlbY99iWtYxZOxmu09VqgKEXERvPDduWn2PE9pFDYCJ5o3Kjc9-_aIkYy5-_DcX8UZ9wC5MWUovWT8hxa3qRCKTmAua9PmVptCU&amp;__tn__=*NK-R\" role=\"link\" tabindex=\"0\" style=\"cursor: pointer; list-style: none; margin: 0px; text-align: inherit; border-style: none; padding: 0px; border-width: 0px; outline: none; -webkit-tap-highlight-color: transparent; font-weight: 600; touch-action: manipulation; display: inline; font-family: inherit;\">#travelblogger</a></span> <span class=\"html-span xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"margin: 0px; text-align: inherit; overflow-wrap: break-word; padding: 0px; font-family: inherit;\"><a attributionsrc=\"/privacy_sandbox/comet/register/source/?xt=AZVN8PAuJRlVStKuePBUDFPbgU2f9SnyZ1N4b2bwpbECihBLEq2xgIz1UXodRn0DnxOuh0Dj6nV0IZuUJNie8zBGse-z8xZlfIiTT8I1NQBJRQxoGgAJRg3aJNSJG3zLijiHpFoAijkfsV1ZcMjRSU69VZekBBOmgFYuzO1SqGfauSKwIikDZDvhdJOX66DjrnDjYz9Yl_2EgBqLiUe3CGrOM2fISQbUlSiFoQo7jhq_OZhp3zbkqukum1I3YEI3vIQLwiQwPlxgsorE1LAJcPVjdt4ha-pVhTv6aqef3GDOm_1W1_pv2Mqt4VmfdKVuuqzd_sGOZ2ndF_90w-0qR1WHPiki_ibYepRK64cJIJaHVlj0KZyMnck9MinkwxV6eZL044B-8y6NFn11PZON_f9CTCUvmS07rdngaAz3mAc7LMeXRH0JEP9NTrgptnGt-Qfi3qtts2iTqBomzzUsAoP-8TTyS9yqDWBdIzpEze5tb5KMuEnZWZ-IqOBR6IHx6LgzwGPZSMau699JvawD46BlxM2ZyYsWLu6OY6uFEhelzrj8lVJGoI789SGahgoE_h06nrXsD2rXee13vipT0CtqFOZCMMKcoxRLaNlD9MEZ3jDzOxRlymfVrSuEToocwwCoHpzdCrPhrGQrFqWtgq5e5N-sMFeHOISu3xfbvf1bnQx9KPIKZN5NjgjxZwYnUqhK1R2lJmZQOZ1hR9ZSt_iaWvyrzWT2O6tfvaQC6vKm-SO7LCNMvekTYSEGh4XTFv3hzTGqLrid1dRnQgPv5J6Vm9YwTvJqBmSiuLzAnVXZ5Ols4IiDr-D-sYXQam9Z_d6VxqL_2_Kf0qnMJW4_TY6VxW0d8vVMbXmQmt2QsQkxdNHkWZfJtOnp37v9iails7ZfPhCy-qj1EneEknb6unQt5rQKu_cxRB-aQkcW6knJ7PySX2jh2eh-Ht4kZCHmvVhUIFpVMNhndIuy-nhs0Vr7Q-HrGi79tqNJVc-jFQUD4h8yKRQKnzSka-ZiFPrg9uUKs7E37dynqgVBvswzZeQU4g4ppmFNK-x0A9ZjL79ceMJOGjB8NQB1PlyklEoTjYebjT8P74_rzmAG81XW7NhWC-3Wp1SAyIrXrzAd2CauHg\" class=\"x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz x1sur9pj xkrqix3 x1fey0fg x1s688f\" href=\"https://www.facebook.com/hashtag/resort?__eep__=6&amp;__cft__[0]=AZUvY0uEn1moXOibcLrseuXgpHouXuWGoJsBTkqJXTHYRwXEry2W61hKzmICE9xXtKqPsWNT4goGjHx_rVZSkCZ89H1cK2TQdlbY99iWtYxZOxmu09VqgKEXERvPDduWn2PE9pFDYCJ5o3Kjc9-_aIkYy5-_DcX8UZ9wC5MWUovWT8hxa3qRCKTmAua9PmVptCU&amp;__tn__=*NK-R\" role=\"link\" tabindex=\"0\" style=\"cursor: pointer; list-style: none; margin: 0px; text-align: inherit; border-style: none; padding: 0px; border-width: 0px; outline: none; -webkit-tap-highlight-color: transparent; font-weight: 600; touch-action: manipulation; display: inline; font-family: inherit;\">#resort</a></span> <span class=\"html-span xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"margin: 0px; text-align: inherit; overflow-wrap: break-word; padding: 0px; font-family: inherit;\"><a attributionsrc=\"/privacy_sandbox/comet/register/source/?xt=AZVN8PAuJRlVStKuePBUDFPbgU2f9SnyZ1N4b2bwpbECihBLEq2xgIz1UXodRn0DnxOuh0Dj6nV0IZuUJNie8zBGse-z8xZlfIiTT8I1NQBJRQxoGgAJRg3aJNSJG3zLijiHpFoAijkfsV1ZcMjRSU69VZekBBOmgFYuzO1SqGfauSKwIikDZDvhdJOX66DjrnDjYz9Yl_2EgBqLiUe3CGrOM2fISQbUlSiFoQo7jhq_OZhp3zbkqukum1I3YEI3vIQLwiQwPlxgsorE1LAJcPVjdt4ha-pVhTv6aqef3GDOm_1W1_pv2Mqt4VmfdKVuuqzd_sGOZ2ndF_90w-0qR1WHPiki_ibYepRK64cJIJaHVlj0KZyMnck9MinkwxV6eZL044B-8y6NFn11PZON_f9CTCUvmS07rdngaAz3mAc7LMeXRH0JEP9NTrgptnGt-Qfi3qtts2iTqBomzzUsAoP-8TTyS9yqDWBdIzpEze5tb5KMuEnZWZ-IqOBR6IHx6LgzwGPZSMau699JvawD46BlxM2ZyYsWLu6OY6uFEhelzrj8lVJGoI789SGahgoE_h06nrXsD2rXee13vipT0CtqFOZCMMKcoxRLaNlD9MEZ3jDzOxRlymfVrSuEToocwwCoHpzdCrPhrGQrFqWtgq5e5N-sMFeHOISu3xfbvf1bnQx9KPIKZN5NjgjxZwYnUqhK1R2lJmZQOZ1hR9ZSt_iaWvyrzWT2O6tfvaQC6vKm-SO7LCNMvekTYSEGh4XTFv3hzTGqLrid1dRnQgPv5J6Vm9YwTvJqBmSiuLzAnVXZ5Ols4IiDr-D-sYXQam9Z_d6VxqL_2_Kf0qnMJW4_TY6VxW0d8vVMbXmQmt2QsQkxdNHkWZfJtOnp37v9iails7ZfPhCy-qj1EneEknb6unQt5rQKu_cxRB-aQkcW6knJ7PySX2jh2eh-Ht4kZCHmvVhUIFpVMNhndIuy-nhs0Vr7Q-HrGi79tqNJVc-jFQUD4h8yKRQKnzSka-ZiFPrg9uUKs7E37dynqgVBvswzZeQU4g4ppmFNK-x0A9ZjL79ceMJOGjB8NQB1PlyklEoTjYebjT8P74_rzmAG81XW7NhWC-3Wp1SAyIrXrzAd2CauHg\" class=\"x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz x1sur9pj xkrqix3 x1fey0fg x1s688f\" href=\"https://www.facebook.com/hashtag/bmw?__eep__=6&amp;__cft__[0]=AZUvY0uEn1moXOibcLrseuXgpHouXuWGoJsBTkqJXTHYRwXEry2W61hKzmICE9xXtKqPsWNT4goGjHx_rVZSkCZ89H1cK2TQdlbY99iWtYxZOxmu09VqgKEXERvPDduWn2PE9pFDYCJ5o3Kjc9-_aIkYy5-_DcX8UZ9wC5MWUovWT8hxa3qRCKTmAua9PmVptCU&amp;__tn__=*NK-R\" role=\"link\" tabindex=\"0\" style=\"cursor: pointer; list-style: none; margin: 0px; text-align: inherit; border-style: none; padding: 0px; border-width: 0px; outline: none; -webkit-tap-highlight-color: transparent; font-weight: 600; touch-action: manipulation; display: inline; font-family: inherit;\">#BMW</a></span> <span class=\"html-span xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"margin: 0px; text-align: inherit; overflow-wrap: break-word; padding: 0px; font-family: inherit;\"><a attributionsrc=\"/privacy_sandbox/comet/register/source/?xt=AZVN8PAuJRlVStKuePBUDFPbgU2f9SnyZ1N4b2bwpbECihBLEq2xgIz1UXodRn0DnxOuh0Dj6nV0IZuUJNie8zBGse-z8xZlfIiTT8I1NQBJRQxoGgAJRg3aJNSJG3zLijiHpFoAijkfsV1ZcMjRSU69VZekBBOmgFYuzO1SqGfauSKwIikDZDvhdJOX66DjrnDjYz9Yl_2EgBqLiUe3CGrOM2fISQbUlSiFoQo7jhq_OZhp3zbkqukum1I3YEI3vIQLwiQwPlxgsorE1LAJcPVjdt4ha-pVhTv6aqef3GDOm_1W1_pv2Mqt4VmfdKVuuqzd_sGOZ2ndF_90w-0qR1WHPiki_ibYepRK64cJIJaHVlj0KZyMnck9MinkwxV6eZL044B-8y6NFn11PZON_f9CTCUvmS07rdngaAz3mAc7LMeXRH0JEP9NTrgptnGt-Qfi3qtts2iTqBomzzUsAoP-8TTyS9yqDWBdIzpEze5tb5KMuEnZWZ-IqOBR6IHx6LgzwGPZSMau699JvawD46BlxM2ZyYsWLu6OY6uFEhelzrj8lVJGoI789SGahgoE_h06nrXsD2rXee13vipT0CtqFOZCMMKcoxRLaNlD9MEZ3jDzOxRlymfVrSuEToocwwCoHpzdCrPhrGQrFqWtgq5e5N-sMFeHOISu3xfbvf1bnQx9KPIKZN5NjgjxZwYnUqhK1R2lJmZQOZ1hR9ZSt_iaWvyrzWT2O6tfvaQC6vKm-SO7LCNMvekTYSEGh4XTFv3hzTGqLrid1dRnQgPv5J6Vm9YwTvJqBmSiuLzAnVXZ5Ols4IiDr-D-sYXQam9Z_d6VxqL_2_Kf0qnMJW4_TY6VxW0d8vVMbXmQmt2QsQkxdNHkWZfJtOnp37v9iails7ZfPhCy-qj1EneEknb6unQt5rQKu_cxRB-aQkcW6knJ7PySX2jh2eh-Ht4kZCHmvVhUIFpVMNhndIuy-nhs0Vr7Q-HrGi79tqNJVc-jFQUD4h8yKRQKnzSka-ZiFPrg9uUKs7E37dynqgVBvswzZeQU4g4ppmFNK-x0A9ZjL79ceMJOGjB8NQB1PlyklEoTjYebjT8P74_rzmAG81XW7NhWC-3Wp1SAyIrXrzAd2CauHg\" class=\"x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz x1sur9pj xkrqix3 x1fey0fg x1s688f\" href=\"https://www.facebook.com/hashtag/%E0%A6%B8%E0%A6%BE%E0%A6%9C%E0%A7%87%E0%A6%95?__eep__=6&amp;__cft__[0]=AZUvY0uEn1moXOibcLrseuXgpHouXuWGoJsBTkqJXTHYRwXEry2W61hKzmICE9xXtKqPsWNT4goGjHx_rVZSkCZ89H1cK2TQdlbY99iWtYxZOxmu09VqgKEXERvPDduWn2PE9pFDYCJ5o3Kjc9-_aIkYy5-_DcX8UZ9wC5MWUovWT8hxa3qRCKTmAua9PmVptCU&amp;__tn__=*NK-R\" role=\"link\" tabindex=\"0\" style=\"cursor: pointer; list-style: none; margin: 0px; text-align: inherit; border-style: none; padding: 0px; border-width: 0px; outline: none; -webkit-tap-highlight-color: transparent; font-weight: 600; touch-action: manipulation; display: inline; font-family: inherit;\">#সাজেক</a></span></div></div>', '2025-01-06', '2025-01-08', 1, '2025-01-04 04:57:54', '2025-01-04 05:32:25');
INSERT INTO `packages` (`id`, `title`, `sub_title`, `duration`, `single_price`, `couple_price`, `place`, `image`, `short_description`, `long_description`, `tour_start_date`, `tour_end_date`, `status`, `created_at`, `updated_at`) VALUES
(7, '5ম বর্ষপূর্তি উপলক্ষে ঘুরে আসুন শ্রীমঙ্গল ও জাফলং রিলেক্স ট্যুরে প্রকৃতি কন্যা সিলেট সম্পূর্ণ হিডেন মুক্ত ইভেন্টে,,', NULL, '2', '3500', '3500', 'জাফলং', 'uploads/package-image/7419008.jpg', 'সপ্তাহের যে কোন দিন ১০ জনের টিম হলেই যে কোন জায়গায় ট্যুরের ব্যবস্থা করা যাবে এছাড়াও কর্পোরেট, স্কুল, কলেজ সকল ধরণের ট্যুরের আয়োজন করে থাকি।\r\nযেহুতু এটি একটি বাজেট ট্যুর তাই অতি মাত্রায় প্রিমিয়াম সার্ভিস খুঁজেন এমন কেউ বিবেচনা করে বুকিং করবেন।', '<div class=\"xdj266r x11i5rnm xat24cr x1mh8g0r x1vvkbs x126k92a\" style=\"margin: 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">5ম বর্ষপূর্তি উপলক্ষে ঘুরে আসুন শ্রীমঙ্গল ও জাফলং রিলেক্স ট্যুরে প্রকৃতি কন্যা সিলেট সম্পূর্ণ হিডেন মুক্ত ইভেন্টে,,</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">দয়াকরে সম্পূর্ণ লেখাটি ভালো করে পরুন,,</div><div dir=\"auto\" style=\"font-family: inherit;\">ভালো লাগলে তবেই বুকিং কনফার্ম করুন, ধন্যবাদ।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"margin: 0px; text-align: inherit; overflow-wrap: break-word; padding: 0px; font-family: inherit;\"><a tabindex=\"-1\" class=\"html-a xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"color: rgb(56, 88, 152); cursor: pointer; margin: 0px; text-align: inherit; overflow-wrap: break-word; padding: 0px; font-family: inherit;\"></a></span>ভ্রমন তারিখ-</div><div dir=\"auto\" style=\"font-family: inherit;\">০৯ জানুয়ারি বৃহস্পতিবার রাতে রওনা।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">গাড়ি ছাড়ার সময়ঃ </div><div dir=\"auto\" style=\"font-family: inherit;\">(অনাকাঙ্ক্ষিত কারনে কিছুটা সময় কম/বেশি হতে পারে)</div><div dir=\"auto\" style=\"font-family: inherit;\">১) ঢাকা সায়দাবাদ থেকে রাত ১০ টায়।</div><div dir=\"auto\" style=\"font-family: inherit;\">২) চাঁদপুর বাস স্ট্যান্ড থেকে রাত ৮ টায়।</div><div dir=\"auto\" style=\"font-family: inherit;\">৩) কুমিল্লা বিশ্বরোড থেকে রাত ১০:৩০ মিনিটে।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">সময়কাল - ৩ রাত ২ দিনের রিলেক্স ট্যুর।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">সকল খরচ সহ ০৩ রাত ০২ দিনের ভ্রমন খরচ -</div><div dir=\"auto\" style=\"font-family: inherit;\">-------------------------------------------------------------------</div><div dir=\"auto\" style=\"font-family: inherit;\">ব্যাচেলর - 3,500/- থেকে শুরু জনপ্রতি খরচ </div><div dir=\"auto\" style=\"font-family: inherit;\">             (এক রুমে ০৪ জনে শেয়ারে থাকা)</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">ফ্যামিলি - 4,000/- থেকে শুরু জনপ্রতি খরচ </div><div dir=\"auto\" style=\"font-family: inherit;\">             (এক রুমে ০৩ জনে শেয়ারে থাকা)</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">কাপল - 4,500/- থেকে শুরু জনপ্রতি খরচ </div><div dir=\"auto\" style=\"font-family: inherit;\">             (এক রুমে ০২ জনে শেয়ারে থাকা)</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">সিঙ্গেল - 6,500/- থেকে শুরু জনপ্রতি খরচ </div><div dir=\"auto\" style=\"font-family: inherit;\">             (এক রুমে ০৪ জনে শেয়ারে থাকা)</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">সিলেট ভ্রমনে যা যা দেখবেন -</div><div dir=\"auto\" style=\"font-family: inherit;\">------------------------------</div><div dir=\"auto\" style=\"font-family: inherit;\">০১) লাওয়াছড়া জাতীয় উদ্যান।</div><div dir=\"auto\" style=\"font-family: inherit;\">০২) মাধবপুর লেক।</div><div dir=\"auto\" style=\"font-family: inherit;\">০৩) চা কন্যা ভাস্কর্য।</div><div dir=\"auto\" style=\"font-family: inherit;\">০৪) দার্জিলিং টিলা।</div><div dir=\"auto\" style=\"font-family: inherit;\">০৫) নুরজাহান চা বাগান।</div><div dir=\"auto\" style=\"font-family: inherit;\">০৬) লাল পাহাড়।</div><div dir=\"auto\" style=\"font-family: inherit;\">০৭) নীলকন্ঠ চা কেবিন।</div><div dir=\"auto\" style=\"font-family: inherit;\">০৮) জাফলং জিরো পয়েন্ট।</div><div dir=\"auto\" style=\"font-family: inherit;\">০৯) আগুন পাহাড় (সময় সাপেক্ষ)</div><div dir=\"auto\" style=\"font-family: inherit;\">১০) লালাখাল নীল নদ।</div><div dir=\"auto\" style=\"font-family: inherit;\">১১) শ্রীপুর ভিউ পয়েন্ট।</div><div dir=\"auto\" style=\"font-family: inherit;\">১২) তামাবিল ভারত বাংলাদেশ বর্ডার।</div><div dir=\"auto\" style=\"font-family: inherit;\">১৩) হযরত শাহ পরান (রাঃ) মাজার শরীফ।</div><div dir=\"auto\" style=\"font-family: inherit;\">১৪) হযরত শাহজালাল (রাঃ) মাজার শরিফ।</div><div dir=\"auto\" style=\"font-family: inherit;\">১৫) সিলেট শহর (নিজের মত করে)</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">প্যকেজে যা যা থাকবে.... </div><div dir=\"auto\" style=\"font-family: inherit;\">---------------------------------------</div><div dir=\"auto\" style=\"font-family: inherit;\">১) নন এসি চেয়ার কোচ বাস।</div><div dir=\"auto\" style=\"font-family: inherit;\">২) পাঁচ বেলা খাবার। </div><div dir=\"auto\" style=\"font-family: inherit;\">৩) এক রাত্র হোটেলে থাকার ব্যবস্থা। </div><div dir=\"auto\" style=\"font-family: inherit;\">৪) লেগুনায় সিলেটের বিভিন্ন স্পট ভ্রমন।</div><div dir=\"auto\" style=\"font-family: inherit;\">৫) লালাখাল নৌকা ভ্রমন।</div><div dir=\"auto\" style=\"font-family: inherit;\">৬) সার্বক্ষণিক অভিজ্ঞ গাইড।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">যা থাকবেনা...</div><div dir=\"auto\" style=\"font-family: inherit;\">-----------------------</div><div dir=\"auto\" style=\"font-family: inherit;\">১) প্যকেজে উল্লেখ নেই এমন কোন খরচ।</div><div dir=\"auto\" style=\"font-family: inherit;\">২) যাত্রা বিরতি অথবা আসার দিন রাতের খাবার।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">খাবারের ম্যেনুতে যা থাকছে,,,</div><div dir=\"auto\" style=\"font-family: inherit;\">---------------------------------------------</div><div dir=\"auto\" style=\"font-family: inherit;\">সকাল ও রাতে যেকোন ১/২ টি খাবার চেস্টা করা হবে সিলেটের বিখ্যাত হোটেল পাঁচ ভাই বা পানশী রেস্টুরেন্টে খাওয়ানোর জন্য।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">১ম সকালে - চিকেন ভুনা খিচুড়ি।</div><div dir=\"auto\" style=\"font-family: inherit;\">১ম দুপুরে - সাদা ভাত, মুরগির মাংস, ভর্তা, ডাল, সালাত।</div><div dir=\"auto\" style=\"font-family: inherit;\">১ম রাতে - সাদা ভাত, মাছ, ভর্তা, ডাল, সালাত।</div><div dir=\"auto\" style=\"font-family: inherit;\">২য় সকালে - চিকেন ভুনা খিচুড়ি/পরোটা ভাজি।</div><div dir=\"auto\" style=\"font-family: inherit;\">২য় দুপুরে - সাদা ভাত, হাঁসের মাংস, ভর্তা, ডাল, সালাত।</div><div dir=\"auto\" style=\"font-family: inherit;\">(গেস্টের চাহিদা অনুযায়ী পরিবর্তন করা হয়)</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">ট্যুর প্লান -</div><div dir=\"auto\" style=\"font-family: inherit;\">বৃহস্পতিবার রাতে আমরা রওনা দিব সিলেটের দিকে ইনশাআল্লাহ। </div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">১ম দিন সকালে নেমেই চলে যাবো হোটেলে, ব্যাগ রেখে ফ্রেশ হয়ে নাস্তা করে লেগুনায় চরে চলে যাবো শ্রীমঙ্গল, সেখানে শ্রীমঙ্গলের বিভিন্ন স্পট ঘুরে সন্ধ্যায় সিলেট শহরে ফিরে আসবো তারপর হোটেলে গিয়ে ফ্রেশ হয়ে রাতের খাবার খেয়ে ঘুম।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">২য় দিন খুব ভোরে ঘুম থেকে উঠে ফ্রেশ হয়ে নাস্তা করে জাফলং এর উদ্দেশ্যে রওনা করবো, জাফলংয়ের পানিতে গা ভিজিয়ে চলে যাবো খাবারের জন্য, খাবার শেষ করে লালাখালের উদ্দেশ্য রওনা করবো, লালাখাল ঘুরে সিলেট যাওয়ার পথে হযরত শাহ পরান মাজার ও শাহজালাল মাজার জিয়ারত শেষ করে হোটেল থেকে ব্যাগ নিয়ে সোজা বাস কাউন্টারে। নির্দিষ্ট সময়ে বাসে চরে রওনা দিয়ে সকালের মধ্যে যার যার গন্তব্যে থাকবো ইনশাআল্লাহ।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">বুকিং প্রক্রিয়া-</div><div dir=\"auto\" style=\"font-family: inherit;\">✓ সিলেট ভ্রমনে আগ্ৰহী হলে অবশ্যই ন্যূনতম ৪/৫ দিন পূর্বে বুকিং কনফার্ম করুন।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">✓বুকিং মানিঃ জনপ্রতি ১,০২০/- টাকা (অফেরতযোগ্য) বুকিং মানি জমা দিয়ে আপনার পছন্দের আসনটি বুঝে নিন।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">✓ বুকি নম্বরঃ 01829531515 (বিকাশ/নগদ পার্সোনাল)।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">বিঃদ্রঃ বয়স্ক মানুষ, শিশু বা মহিলাদের সামনের সিটের অগ্ৰাধিকার ।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">আমাদের অফিসিয়াল ফেসবুক পেইজ ভিজিট করুন </div><div dir=\"auto\" style=\"font-family: inherit;\">হিলশা ট্যুরিজম Hilsha Tourism </div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">আমাদের অফিসিয়াল ফেসবুক গ্রুপ ভিজিট করুন </div><div dir=\"auto\" style=\"font-family: inherit;\">Hilsha Tourism &amp; Entertainment </div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">বিস্তারিত জানতে ও বুকিং করতে যোগাযোগ করুন-</div><div dir=\"auto\" style=\"font-family: inherit;\">================================</div><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"margin: 0px; text-align: inherit; overflow-wrap: break-word; padding: 0px; font-family: inherit;\"><a attributionsrc=\"/privacy_sandbox/comet/register/source/?xt=AZW04dbtQcwvRH3QlqJ6GT9earzOANjsIyfb9pen__u002J-cTkjg6bKtMTVWwNHORrzzDFps_D9RbHpCS99mXz2opRX505oEGKVhEhEJmPUU33sG-dK3VG8IYIXVXiFlUq96aYoeZTMQ5svjHazmYkQz9foosxh5qnjB9hox1PbyhR9zXxGzONA2wqIDr-7MoiIkX5QIPG694iPbJrWrVOKqpYauy-a5CDxAytrK11o0WJI7SI1nvuaoX0dCEYkryA-VkluGgtEyRlszVparftiZ_88Np7MzaozQ_hvz5nckfumzyc-GLiLEs1Fl54cZ6xHxclKGdCN1yp33exOIOlWrnGG_ZJslKb28eTowhLYhRbqDU3GZ_q1Sta4MeRV67YVNHvKzFIjeOF8-j9YA1V8Yd46OicRjqkPklsido5sY1nuGsjbzHf_njrKMMM2-inTo-1-BNRPidIgL1dvZLfG7_nOT6BO_GhGsXh91fc8ZQYfd77u3tWrz1w9IrA1eRmui_wh3ywWNY2SdSf8KUABdTmnu4Bz743pOwEpFxXn8Lb0z2qlZ8sqlClpG2JV5l1BE-91cxIV2rIn8ZWiahcqeLkGpz41JeD04N3pHsaPTqZD1Jcxv5CXeUokaumkfhHOk5vgbfaHtamM7LV2a8UuPH_-2-_KXRcmpikmbZXCpfYh3Dk25xxJzdqPN2Xq5glW6UljMKH_TfjiHwHy33OvsM7GeHPDopukAhuThxGRRe0cVnbOHkFiVmMGFAda0J8qTpYandXIhdhZaOYSQ9nwfkSYqSsmqfncLjnvD0OdHTqeEo8ye42SFCtHSw-lADC0odUvcyKoL595EHUxKRyrNM3n9ic9EiYW30nA-FWJgcYYooXn7-87IraIkTTC5RwO-PsMIRmaocdMa8gaMvFdv0pq36Z1qkBuQcqU-8LIguvoeAtxa8nWrUUkvuZcpvVpCDkqqSQ7C4ieGQWtClUpYuU493mzbnJjlG0jBrdbnNgABy_nVyY8FSBln4FRnpbsXRIrhvl-ZYNsUFT6A2J6wadzzuHLN1RjG8mvw5MUh9HpHTXBKu_7m5Y2tEjySICEN-fge4_T0gQzcY_yqad8waOrX41NuCRLgRW4akG5cA\" class=\"x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz x1sur9pj xkrqix3 x1fey0fg x1s688f\" href=\"https://www.facebook.com/Hilshatourism?__cft__[0]=AZUM5KALvSFSn44Hgyq_4VVnZRmtFIC176KjzT11Zi9-kAoZr99-pOM5ZPhI4R1MHM--jdM361rIkGGDdaJqAmwpBrMiuA6QMVSsDstJ62CRNQpVKkVo7aoQiwxTDO1Mk6YK0sVq4dNPWJBoRQj8UevlczPUQOJV9XrVzKLwnYaXF42bC-XscyH7Wti_gBl_7g4&amp;__tn__=-]K-R\" role=\"link\" tabindex=\"0\" style=\"cursor: pointer; list-style: none; margin: 0px; text-align: inherit; border-style: none; padding: 0px; border-width: 0px; outline: none; -webkit-tap-highlight-color: transparent; font-weight: 600; touch-action: manipulation; display: inline; font-family: inherit;\">হিলশা ট্যুরিজম Hilsha Tourism</a></span> </div><div dir=\"auto\" style=\"font-family: inherit;\">মোবাইলঃ 01829-531515</div><div dir=\"auto\" style=\"font-family: inherit;\">হোয়াটসঅ্যাপঃ <span class=\"html-span xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"margin: 0px; text-align: inherit; overflow-wrap: break-word; padding: 0px; font-family: inherit;\"><span dir=\"ltr\" style=\"font-family: inherit;\"><i data-visualcompletion=\"css-img\" class=\"x1b0d499 x1vv9jnp xahult9\" style=\"vertical-align: -0.25em; margin-bottom: 3px; filter: var(--filter-blue-link-icon); background-image: url(&quot;https://static.xx.fbcdn.net/rsrc.php/v4/y0/r/NxPd5oFMlV3.png&quot;); background-position: 0px -447px; background-size: auto; width: 12px; height: 12px; background-repeat: no-repeat; display: inline-block;\"></i><a attributionsrc=\"/privacy_sandbox/comet/register/source/?xt=AZW04dbtQcwvRH3QlqJ6GT9earzOANjsIyfb9pen__u002J-cTkjg6bKtMTVWwNHORrzzDFps_D9RbHpCS99mXz2opRX505oEGKVhEhEJmPUU33sG-dK3VG8IYIXVXiFlUq96aYoeZTMQ5svjHazmYkQz9foosxh5qnjB9hox1PbyhR9zXxGzONA2wqIDr-7MoiIkX5QIPG694iPbJrWrVOKqpYauy-a5CDxAytrK11o0WJI7SI1nvuaoX0dCEYkryA-VkluGgtEyRlszVparftiZ_88Np7MzaozQ_hvz5nckfumzyc-GLiLEs1Fl54cZ6xHxclKGdCN1yp33exOIOlWrnGG_ZJslKb28eTowhLYhRbqDU3GZ_q1Sta4MeRV67YVNHvKzFIjeOF8-j9YA1V8Yd46OicRjqkPklsido5sY1nuGsjbzHf_njrKMMM2-inTo-1-BNRPidIgL1dvZLfG7_nOT6BO_GhGsXh91fc8ZQYfd77u3tWrz1w9IrA1eRmui_wh3ywWNY2SdSf8KUABdTmnu4Bz743pOwEpFxXn8Lb0z2qlZ8sqlClpG2JV5l1BE-91cxIV2rIn8ZWiahcqeLkGpz41JeD04N3pHsaPTqZD1Jcxv5CXeUokaumkfhHOk5vgbfaHtamM7LV2a8UuPH_-2-_KXRcmpikmbZXCpfYh3Dk25xxJzdqPN2Xq5glW6UljMKH_TfjiHwHy33OvsM7GeHPDopukAhuThxGRRe0cVnbOHkFiVmMGFAda0J8qTpYandXIhdhZaOYSQ9nwfkSYqSsmqfncLjnvD0OdHTqeEo8ye42SFCtHSw-lADC0odUvcyKoL595EHUxKRyrNM3n9ic9EiYW30nA-FWJgcYYooXn7-87IraIkTTC5RwO-PsMIRmaocdMa8gaMvFdv0pq36Z1qkBuQcqU-8LIguvoeAtxa8nWrUUkvuZcpvVpCDkqqSQ7C4ieGQWtClUpYuU493mzbnJjlG0jBrdbnNgABy_nVyY8FSBln4FRnpbsXRIrhvl-ZYNsUFT6A2J6wadzzuHLN1RjG8mvw5MUh9HpHTXBKu_7m5Y2tEjySICEN-fge4_T0gQzcY_yqad8waOrX41NuCRLgRW4akG5cA\" class=\"x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz x1sur9pj xkrqix3 x1fey0fg x1s688f\" href=\"https://l.facebook.com/l.php?u=https%3A%2F%2Fapi.whatsapp.com%2Fsend%3Fphone%3D8801644648188%26text%3DLink%253A%250Ahttps%253A%252F%252Ffb.me%252F8eREV6Sad%250A%250AI%2520saw%2520this%2520on%2520Facebook...%26context%3DARCa04oRPb5vjCjPAPDqbieO77PY3oK9-WToXAUYhcQBnfoQg1GAoOYxA1j47OAFFzCOZQH1MqH07VSDa0-CKdN249JJGVpxmrWObeueqWJxBfth1wBD3_PbM_DduWrVEuA4c_0qByJz8I5Im8cZvTo-HA%26source%26app%3Dfacebook%26fbclid%3DIwZXh0bgNhZW0CMTAAAR1HnNSN4-hHa_fVEDo-7hHAMStk5S4oLDsQP6NiTfA_18xwS-une7x7P6k_aem_s760Bvj6qYLbQvezt1prVA&amp;h=AT0QaprK4m1pEiqa0x5z-8ZW0kHp--gfJRhYk0a2M56nRuhWe2EUNyubAp22fEIbh0wpCy85ZQRkOgtNyZZxHI__HSeMGuG4RpFFYX-qKopj2pMGtRhUNpDNG5Cd804zcCz3fQ&amp;__tn__=-UK-R&amp;c[0]=AT0vZOm69LaP6tDulcTsDdm8uJdLLdiCLTMYU8JVVoxmcDrbUeqF96R4SXXtQmfb2-08v0ws8oiNbR9cxMT6Xh0ftIIZnPdxkuw93qQztK0lEMYWWEx1YRiUtwHvL-mxVHTbECLrbJeFph7TZ-rC-GUzYhmJ5FiABbkL6q1ry8FSD8R5wldOn4iSVcoNdSWbNGKVPUcYDub3x0YqUtTw2HTWuhs\" rel=\"nofollow noreferrer\" role=\"link\" tabindex=\"0\" target=\"_blank\" style=\"cursor: pointer; list-style: none; margin: 0px; text-align: inherit; border-style: none; padding: 0px; border-width: 0px; outline: none; -webkit-tap-highlight-color: transparent; font-weight: 600; touch-action: manipulation; display: inline; font-family: inherit;\">01644-648188</a></span></span> </div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">সপ্তাহের যে কোন দিন ১০ জনের টিম হলেই যে কোন জায়গায় ট্যুরের ব্যবস্থা করা যাবে এছাড়াও কর্পোরেট, স্কুল, কলেজ সকল ধরণের ট্যুরের আয়োজন করে থাকি।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">যেহুতু এটি একটি বাজেট ট্যুর তাই অতি মাত্রায় প্রিমিয়াম সার্ভিস খুঁজেন এমন কেউ বিবেচনা করে বুকিং করবেন। </div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">প্রকৃতিক দূর্যোগ বা যে কোন সমস্যায় এডমিন প্যনেল যে কোন সিধান্ত নিতে পারে। আপনারা এডমিন প্যনেলের সকল সিদ্ধান্ত মেনে নেওয়ার মনোভাব থাকতে হবে। সবকিছু ঠিক রেখে প্লান আগপিস হতে\'ই পারে। </div><div dir=\"auto\" style=\"font-family: inherit;\">মাদক বা এজাতীয় কিছু বহন করা যাবেনা। এমনকিছু বা অবৈধ যে কোন কাজে এডমিনরা প্রশাসনকে অবগত করবে। এসকল কাজে আমাদের কোন দায়ী থাকবে না। </div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">সবচেয়ে কম খরচে বাংলাদেশ দেখুন হিলশা ট্যুরিজমের সাথে।</div></div>', '2025-01-04', '2025-01-06', 1, '2025-01-04 05:12:33', '2025-01-04 05:32:08'),
(8, '৫ম বর্ষপূর্তি উপলক্ষে 3,500/- টাকায় সাজেক ভ্রমন,,', NULL, '2', '3500', '5500', 'সাজেক ভ্যালি', 'uploads/package-image/7981223.jpg', 'হিলশা ট্যুরিজম এর ৫ম বর্ষপূর্তি উপলক্ষে সাজেক ভ্যালিতে জমকালো আয়োজনে আপনিও আমন্ত্রিত,,\r\nভ্রমন তারিখঃ', '<div class=\"xdj266r x11i5rnm xat24cr x1mh8g0r x1vvkbs x126k92a\" style=\"margin: 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">৫ম বর্ষপূর্তি উপলক্ষে 3,500/- টাকায় সাজেক ভ্রমন,,</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">হিলশা ট্যুরিজম এর ৫ম বর্ষপূর্তি উপলক্ষে সাজেক ভ্যালিতে জমকালো আয়োজনে আপনিও আমন্ত্রিত,,</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">ভ্রমন তারিখঃ </div><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"margin: 0px; text-align: inherit; overflow-wrap: break-word; padding: 0px; font-family: inherit;\"><a tabindex=\"-1\" class=\"html-a xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"color: rgb(56, 88, 152); cursor: pointer; margin: 0px; text-align: inherit; overflow-wrap: break-word; padding: 0px; font-family: inherit;\"></a></span>আগামী ১৬ জানুয়ারি বৃহস্পতিবার রাতে ঢাকা সায়দাবাদ, কুমিল্লা বিশ্বরোড ও ফেনী মহিপাল থেকে আমাদের গাড়ি ছেড়ে আসবে।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🚏\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tfc/1/16/1f68f.png\" style=\"border: 0px; object-fit: fill;\"></span> ঘুরার স্থানঃ </div><div dir=\"auto\" style=\"font-family: inherit;\">আঁকা বাঁকা পাহাড়ি পথ, নকশী পল্লী, বাঘাইহাট পাহাড়ি ফলের বাজার, সাজেক ভ্যালি, হ্যালি প্যাড, আই লাভ সাজেক, কংলাক পাহাড়, আলুটিলা গুহা, ঝুলন্ত ব্রিজ, নন্দন কানন হিল ভিউ পয়েন্ট।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">সকল খরচ সহ ০৩ রাত ০২ দিনের ভ্রমণ খরচঃ</div><div dir=\"auto\" style=\"font-family: inherit;\">--------------------------------------------------------------------</div><div dir=\"auto\" style=\"font-family: inherit;\">ব্যাচেলরঃ ৩,৫০০/- থেকে শুরু জনপ্রতি খরচ।</div><div dir=\"auto\" style=\"font-family: inherit;\">                (এক রুমে ছয়জন শেয়ারে থাকা)</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">ব্যাচেলরঃ ৪,০০০/- থেকে শুরু জনপ্রতি খরচ।</div><div dir=\"auto\" style=\"font-family: inherit;\">                (এক রুমে চারজন শেয়ারে থাকা)</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">ফ্যামিলিঃ ৪,৫০০/- থেকে শুরু জনপ্রতি খরচ।</div><div dir=\"auto\" style=\"font-family: inherit;\">                (এক রুমে তিনজন শেয়ারে থাকা)</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">কাপলঃ ৫,৫০০/- থেকে শুরু জনপ্রতি খরচ।</div><div dir=\"auto\" style=\"font-family: inherit;\">                (এক রুমে দুইজন শেয়ারে থাকা)</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">সিঙ্গেলঃ ৭,৫০০/- থেকে শুরু জনপ্রতি খরচ।</div><div dir=\"auto\" style=\"font-family: inherit;\">                (এক রুমে একজন থাকা)</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">(সম্পূর্ণ হিডেন চার্জ মুক্ত সকল খরচ সহ ফুল প্যাকেজে) </div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">পরিবহনঃ</div><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🚌\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t79/1/16/1f68c.png\" style=\"border: 0px; object-fit: fill;\"></span> শান্তি পরিবহন।</div><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🚙\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tee/1/16/1f699.png\" style=\"border: 0px; object-fit: fill;\"></span> সবুজ চাঁদের গাড়িতে ভ্রমন।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">রিসোর্টঃ</div><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🏡\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t77/1/16/1f3e1.png\" style=\"border: 0px; object-fit: fill;\"></span> মাচাং বিলাস রিসোর্ট।</div><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🏡\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t77/1/16/1f3e1.png\" style=\"border: 0px; object-fit: fill;\"></span> ক্লাসিক প্রিমিয়াম রিসোর্ট।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">খাবারঃ</div><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🍛\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t58/1/16/1f35b.png\" style=\"border: 0px; object-fit: fill;\"></span> নকশী পল্লী রেস্টুরেন্ট।</div><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🍛\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t58/1/16/1f35b.png\" style=\"border: 0px; object-fit: fill;\"></span> প্যাদা টিং টিং রেস্টুরেন্ট।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">ট্যুর চলাকালীন সময়ে পাঁচ বেলা খাবার মেন্যু -</div><div dir=\"auto\" style=\"font-family: inherit;\">✓ ১ টা সকালে ডিম খিচুড়ি, চাটনি।</div><div dir=\"auto\" style=\"font-family: inherit;\">✓ ১টা সকালে পরোটা, ভাজি, ডিম, চা।</div><div dir=\"auto\" style=\"font-family: inherit;\">✓ দুপুরে ভাত, ভর্তা, সবজি ও বেম্বো চিকেন।</div><div dir=\"auto\" style=\"font-family: inherit;\">✓ দুপুরে ভাত, ভর্তা, সবজি ও গরুর মাংস।</div><div dir=\"auto\" style=\"font-family: inherit;\">✓ রাতে চিকেন বিরিয়ানি ও কোক।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🎼\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tcc/1/16/1f3bc.png\" style=\"border: 0px; object-fit: fill;\"></span> ৫ম বর্ষপূর্তি উপলক্ষে সঙ্গীত সন্ধ্যা।</div><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🎁\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t84/1/16/1f381.png\" style=\"border: 0px; object-fit: fill;\"></span> রেফেল ড্র এবং পুরষ্কার বিতরণী।</div><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🚸\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te4/1/16/1f6b8.png\" style=\"border: 0px; object-fit: fill;\"></span> সকল স্পটের প্রবেশ টিকেট সহ ফুল প্যাকেজ।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">বুকিং কনফার্ম করতে চাইলে যোগাযোগ করুন -</div><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"margin: 0px; text-align: inherit; overflow-wrap: break-word; padding: 0px; font-family: inherit;\"><a attributionsrc=\"/privacy_sandbox/comet/register/source/?xt=AZUWQeBo2vjc1qQou-C7OCgBBgElm0j40jQ3p-mMGExyi2vwj2wvdn2iEhlZ_vj91QA-ihO4rVPTaDog6TY0GDq1x_K4nh1-amGPCgLNa_cT2wWCqgsyV0cyGbAo8ObY6rd2lxE1Kl6gvza-rhwm3FAlvb_5dOmnsfs6mfUVHHVJvHJQ9SI_ejQggFZggou3U-tSCvQ8VJTFSMA0ozBysD9yOciRkd-TuZdkZVt7B42tQpZ77FmUEVFlowTnM7W8ynVd4wLqLKvlRMEa1-u6fJRHwuroV9uu8LhQ1sETwdpSWXcWRfMLdQ_-XFbznzXJB1LWI4mBeT-cuOuH1s4vDVL8ukdusZht1_0ngM8A6uA_WfOHr3BoqMlDgZNmyNBuh51ny1tPBSQhb43NRNadZt498Oa74L1_AIMOooPsnf7QkemR9O4vvL3oViuUFBiB1eYYksF_MJJNMSl2FZojeEXFrfFIPFPDTj0HayMV_xD6LdI9hN7fZCN2R-JCCu4E7YOGDcwqQqPlHVdpeCZN4WpJxjliGf2-pi8Rp1hROxCewvF_sRw9oUkfxCaExiIpC-hwiQ31dCcLj5WPRpywOdJfgrw8Dpt_tmXL6KE9K0YaSvl9aopWlmBv8jhz07ADrUOM2a2HEoaHpZHGQ3LxFMbJ-yXj3kZNTUS43p0DeF9DDGo1f8MugS-GkxlWk_fUagatd3OYXvu_FFa_lAJM2j63_J0_sESoes02CioVrZezxFZBd6gZ_MCDhYMD20ll_RwVa-8MtPvgTuyJp9iPcHn8fE44Rmxi9WI9WyrRum0IYr00h66kDSbjWUw9cslPbjY1xxfY8BkgdxLfEx4NXi3ghnvSHx_lAeCOJJ04FGkIyB6erw3ubvF87yBuG8hCG_lTaDw3b00Ua5UNdABSwH78LOjZ0hkTLbKGfsKnSpWwk4Qgk0nXGy8tPMxYdRp6rD-pBqaeErBIlVikTVBnOpsoCXr9_vxn0igDxBiuQDZUDTnh68GINBHewAIOBNcwAFhRQ7BFNlbeNNEwsdLeQ2M1lc6jS4eQ0HPPwZqcavXEtfIL989z36p4qcZi3-W-DBwfaqWCh9zSbRfDZuBF6ibZ48ST2w3B0o2dHDZ_Y3DRuw\" class=\"x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz x1sur9pj xkrqix3 x1fey0fg x1s688f\" href=\"https://www.facebook.com/Hilshatourism?__cft__[0]=AZWIbjpwU_AWnOx-dmxPQcOYeOuqS_jx_fzLeI4XJgRXAPy3mEperC3jbn-zhquprshH3WgKDx1BjxAm0VBWOFMDiIkP8SuFMJw2Uq6QwkJq_yxRfBKfw6-2uIqk6YwMz85g17FtmMusVn48eA4QrsaLDVAV8RryFDnMyOQyfxHWHEFigR00Giptm_0KX2Ebnqo&amp;__tn__=-]K-R\" role=\"link\" tabindex=\"0\" style=\"cursor: pointer; list-style: none; margin: 0px; text-align: inherit; border-style: none; padding: 0px; border-width: 0px; outline: none; -webkit-tap-highlight-color: transparent; font-weight: 600; touch-action: manipulation; display: inline; font-family: inherit;\">হিলশা ট্যুরিজম Hilsha Tourism</a></span> </div><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"📱\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t57/1/16/1f4f1.png\" style=\"border: 0px; object-fit: fill;\"></span>হোয়াটসঅ্যাপঃ <span class=\"html-span xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"margin: 0px; text-align: inherit; overflow-wrap: break-word; padding: 0px; font-family: inherit;\"><span dir=\"ltr\" style=\"font-family: inherit;\"><i data-visualcompletion=\"css-img\" class=\"x1b0d499 x1vv9jnp xahult9\" style=\"vertical-align: -0.25em; margin-bottom: 3px; filter: var(--filter-blue-link-icon); background-image: url(&quot;https://static.xx.fbcdn.net/rsrc.php/v4/y0/r/NxPd5oFMlV3.png&quot;); background-position: 0px -447px; background-size: auto; width: 12px; height: 12px; background-repeat: no-repeat; display: inline-block;\"></i><a attributionsrc=\"/privacy_sandbox/comet/register/source/?xt=AZUWQeBo2vjc1qQou-C7OCgBBgElm0j40jQ3p-mMGExyi2vwj2wvdn2iEhlZ_vj91QA-ihO4rVPTaDog6TY0GDq1x_K4nh1-amGPCgLNa_cT2wWCqgsyV0cyGbAo8ObY6rd2lxE1Kl6gvza-rhwm3FAlvb_5dOmnsfs6mfUVHHVJvHJQ9SI_ejQggFZggou3U-tSCvQ8VJTFSMA0ozBysD9yOciRkd-TuZdkZVt7B42tQpZ77FmUEVFlowTnM7W8ynVd4wLqLKvlRMEa1-u6fJRHwuroV9uu8LhQ1sETwdpSWXcWRfMLdQ_-XFbznzXJB1LWI4mBeT-cuOuH1s4vDVL8ukdusZht1_0ngM8A6uA_WfOHr3BoqMlDgZNmyNBuh51ny1tPBSQhb43NRNadZt498Oa74L1_AIMOooPsnf7QkemR9O4vvL3oViuUFBiB1eYYksF_MJJNMSl2FZojeEXFrfFIPFPDTj0HayMV_xD6LdI9hN7fZCN2R-JCCu4E7YOGDcwqQqPlHVdpeCZN4WpJxjliGf2-pi8Rp1hROxCewvF_sRw9oUkfxCaExiIpC-hwiQ31dCcLj5WPRpywOdJfgrw8Dpt_tmXL6KE9K0YaSvl9aopWlmBv8jhz07ADrUOM2a2HEoaHpZHGQ3LxFMbJ-yXj3kZNTUS43p0DeF9DDGo1f8MugS-GkxlWk_fUagatd3OYXvu_FFa_lAJM2j63_J0_sESoes02CioVrZezxFZBd6gZ_MCDhYMD20ll_RwVa-8MtPvgTuyJp9iPcHn8fE44Rmxi9WI9WyrRum0IYr00h66kDSbjWUw9cslPbjY1xxfY8BkgdxLfEx4NXi3ghnvSHx_lAeCOJJ04FGkIyB6erw3ubvF87yBuG8hCG_lTaDw3b00Ua5UNdABSwH78LOjZ0hkTLbKGfsKnSpWwk4Qgk0nXGy8tPMxYdRp6rD-pBqaeErBIlVikTVBnOpsoCXr9_vxn0igDxBiuQDZUDTnh68GINBHewAIOBNcwAFhRQ7BFNlbeNNEwsdLeQ2M1lc6jS4eQ0HPPwZqcavXEtfIL989z36p4qcZi3-W-DBwfaqWCh9zSbRfDZuBF6ibZ48ST2w3B0o2dHDZ_Y3DRuw\" class=\"x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz x1sur9pj xkrqix3 x1fey0fg x1s688f\" href=\"https://l.facebook.com/l.php?u=https%3A%2F%2Fapi.whatsapp.com%2Fsend%3Fphone%3D8801644648188%26text%3DLink%253A%250Ahttps%253A%252F%252Ffb.me%252F2MtWS9zls%250A%250AI%2520saw%2520this%2520on%2520Facebook...%26context%3DARD7-ThOC_k5ZPifMKepi5-6HMw6OCov8C8426RCwo_oxf-mOah9STUbEibXwew2vCpBG0njbfwsyPNWFfzW8jQ_aRLKumiTDOKhrGvUi5c-wlEBRr8apS6n17NVR2VYEYDhxhKBniQUTHYCzzTZv-oGjQ%26source%26app%3Dfacebook%26fbclid%3DIwZXh0bgNhZW0CMTAAAR2hN-0ROMyZiegM7uZN9ngpTQcpSaQEeGfA5WSoKhht-iitlGqE12O7r2w_aem_sjCO-XNYlhZTfsC9u1kgwg&amp;h=AT0QaprK4m1pEiqa0x5z-8ZW0kHp--gfJRhYk0a2M56nRuhWe2EUNyubAp22fEIbh0wpCy85ZQRkOgtNyZZxHI__HSeMGuG4RpFFYX-qKopj2pMGtRhUNpDNG5Cd804zcCz3fQ&amp;__tn__=-UK-R&amp;c[0]=AT1VWVnpY5DN8Mc_uz9J424HU4go2Tny03334pKs3_b5gHzOUDJMCW2f6IecgFYJwYkmCagUzDdeQhsZaKJYfwZ7PmDS7Rnc1x78d0dAzBrPVEyEQI8IpN0A3MRXEwyeDDnJ-TeysjyCFG4x24ZYK9kDrzThD6b_rkZV1fXK7uGx3cPTZWb3OAATyAvgLHHHrT22qf_MOiQzo_LUySklfYx-aEM\" rel=\"nofollow noreferrer\" role=\"link\" tabindex=\"0\" target=\"_blank\" style=\"cursor: pointer; list-style: none; margin: 0px; text-align: inherit; border-style: none; padding: 0px; border-width: 0px; outline: none; -webkit-tap-highlight-color: transparent; font-weight: 600; touch-action: manipulation; display: inline; font-family: inherit;\">01644-648188</a></span></span> </div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"💰\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t5a/1/16/1f4b0.png\" style=\"border: 0px; object-fit: fill;\"></span>বুকিং নম্বরঃ 01829531515</div><div dir=\"auto\" style=\"font-family: inherit;\">বিকাশ বা নগদে ১,০২০/- জনপ্রতি বুকিং মানি দিয়ে সিট কনফার্ম করুন।</div></div>', '2025-01-04', '2025-01-06', 1, '2025-01-04 05:18:12', '2025-01-04 05:30:57');
INSERT INTO `packages` (`id`, `title`, `sub_title`, `duration`, `single_price`, `couple_price`, `place`, `image`, `short_description`, `long_description`, `tour_start_date`, `tour_end_date`, `status`, `created_at`, `updated_at`) VALUES
(9, 'সাজেক ভ্যালিতে দুই রাত হিল ভিউ রিসোর্টে থাকা, বিজনেস ক্লাস বাসে যাওয়া আসা ও সাদা জীপ গাড়িতে ঘুরে আসুন সম্পূর্ণ প্রিমিয়াম ট্রিপে 🥰', NULL, '1', '7500', '18500', 'সাজেক ভ্যালি', 'uploads/package-image/24600988.jpg', 'সাজেক ভ্যালিতে দুই রাত হিল ভিউ রিসোর্টে থাকা, বিজনেস ক্লাস বাসে যাওয়া আসা ও সাদা জীপ গাড়িতে ঘুরে আসুন সম্পূর্ণ প্রিমিয়াম ট্রিপে 🥰', '<div class=\"xdj266r x11i5rnm xat24cr x1mh8g0r x1vvkbs x126k92a\" style=\"margin: 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">সাজেক ভ্যালিতে দুই রাত হিল ভিউ রিসোর্টে থাকা, বিজনেস ক্লাস বাসে যাওয়া আসা ও সাদা জীপ গাড়িতে ঘুরে আসুন সম্পূর্ণ প্রিমিয়াম ট্রিপে <span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🥰\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tea/1/16/1f970.png\" style=\"border: 0px; object-fit: fill;\"></span> </div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">ভ্রমন তারিখঃ </div><div dir=\"auto\" style=\"font-family: inherit;\">২৯ ডিসেম্বর রবিবার রাতে রওনা </div><div dir=\"auto\" style=\"font-family: inherit;\">৩০ ডিসেম্বর সোমবার রাতে রওনা </div><div dir=\"auto\" style=\"font-family: inherit;\">০১ <span class=\"html-span xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"margin: 0px; text-align: inherit; overflow-wrap: break-word; padding: 0px; font-family: inherit;\"><a tabindex=\"-1\" class=\"html-a xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"color: rgb(56, 88, 152); cursor: pointer; margin: 0px; text-align: inherit; overflow-wrap: break-word; padding: 0px; font-family: inherit;\"></a></span>জানুয়ারি বুধবার রাতে রওনা </div><div dir=\"auto\" style=\"font-family: inherit;\">০২ জানুয়ারি বৃহস্পতিবার রাতে রওনা </div><div dir=\"auto\" style=\"font-family: inherit;\">০৩ জানুয়ারি শুক্রবার রাতে রওনা </div><div dir=\"auto\" style=\"font-family: inherit;\">০৫ জানুয়ারি রবিবার রাতে রওনা </div><div dir=\"auto\" style=\"font-family: inherit;\">০৮ জানুয়ারি বুধবার রাতে রওনা </div><div dir=\"auto\" style=\"font-family: inherit;\">০৯ জানুয়ারি বৃহস্পতিবার রাতে রওনা </div><div dir=\"auto\" style=\"font-family: inherit;\">১০ জানুয়ারি শুক্রবার রাতে রওনা</div><div dir=\"auto\" style=\"font-family: inherit;\">১৫ জানুয়ারি বুধবার রাতে রওনা </div><div dir=\"auto\" style=\"font-family: inherit;\">১৬ জানুয়ারি বৃহস্পতিবার রাতে রওনা </div><div dir=\"auto\" style=\"font-family: inherit;\">১৭ জানুয়ারি শুক্রবার রাতে রওনা </div><div dir=\"auto\" style=\"font-family: inherit;\">২২ জানুয়ারি বুধবার রাতে রওনা </div><div dir=\"auto\" style=\"font-family: inherit;\">২৩ জানুয়ারি বৃহস্পতিবার রাতে রওনা </div><div dir=\"auto\" style=\"font-family: inherit;\">২৪ জানুয়ারি শুক্রবার রাতে রওনা </div><div dir=\"auto\" style=\"font-family: inherit;\">২৯ জানুয়ারি বুধবার রাতে রওনা </div><div dir=\"auto\" style=\"font-family: inherit;\">৩০ জানুয়ারি বৃহস্পতিবার রাতে রওনা </div><div dir=\"auto\" style=\"font-family: inherit;\">৩১ জানুয়ারি শুক্রবার রাতে রওনা </div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">গাড়ি ছাড়ার স্থানঃ</div><div dir=\"auto\" style=\"font-family: inherit;\">গাজীপুর/গাবতলী/ফকিরাপুল/কলাবাগান/সায়েদাবাদ, কুমিল্লা ও ফেনী থেকে প্রতিদিন আমাদের গাড়ি ছেড়ে আসে।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🚏\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tfc/1/16/1f68f.png\" style=\"border: 0px; object-fit: fill;\"></span> ঘুরার স্থানঃ সাজেক ভ্যালি, লুসাই গ্ৰাম, হ্যালি প্যাড, কংলাক পাহাড়, কমলক ঝর্না, স্টোন গার্ডেন, আলুটিনা গুহা, ঝুলন্ত ব্রিজ, হিল ভিউ পয়েন্ট।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\"> ভ্রমণ খরচঃ</div><div dir=\"auto\" style=\"font-family: inherit;\">ব্যাচেলরঃ ৭,৫০০/- থেকে শুরু জনপ্রতি খরচ।</div><div dir=\"auto\" style=\"font-family: inherit;\">                (এক রুমে চারজন শেয়ারে থাকা)</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">কাপলঃ ১৮,৫০০/- থেকে শুরু দুইজনের খরচ।</div><div dir=\"auto\" style=\"font-family: inherit;\">                (এক রুমে দুইজন শেয়ারে থাকা)</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">ফ্যামিলিঃ ২৫,৫০০/- থেকে শুরু তিনজনের খরচ।</div><div dir=\"auto\" style=\"font-family: inherit;\">                (এক রুমে তিনজন শেয়ারে থাকা)</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">সিঙ্গেলঃ ১৩,৫০০/- থেকে শুরু জনপ্রতি খরচ।</div><div dir=\"auto\" style=\"font-family: inherit;\">                (এক রুমে একজন থাকা)</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">(সম্পূর্ণ হিডেন চার্জ মুক্ত সকল খরচ সহ ফুল প্যাকেজে) </div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">পরিবহনঃ</div><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🚌\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t79/1/16/1f68c.png\" style=\"border: 0px; object-fit: fill;\"></span> শান্তি/সৌদিয়া/শ্যামলী পরিবহন।</div><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🚙\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tee/1/16/1f699.png\" style=\"border: 0px; object-fit: fill;\"></span> সাদা/নীল জীপ গাড়িতে ভ্রমন।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">রিসোর্ট:</div><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🏡\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t77/1/16/1f3e1.png\" style=\"border: 0px; object-fit: fill;\"></span> মাচাং বিলাস রিসোর্ট।</div><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🏡\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t77/1/16/1f3e1.png\" style=\"border: 0px; object-fit: fill;\"></span> মাচাং ঘর ইকো রিসোর্ট।</div><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🏡\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t77/1/16/1f3e1.png\" style=\"border: 0px; object-fit: fill;\"></span> ফদাং টং ইকো রিসোর্ট।</div><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🏡\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t77/1/16/1f3e1.png\" style=\"border: 0px; object-fit: fill;\"></span> ক্লাসিক প্রিমিয়াম রিসোর্ট।</div><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🏡\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t77/1/16/1f3e1.png\" style=\"border: 0px; object-fit: fill;\"></span> সাজেক ক্লাসিক রিসোর্ট।</div><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🏡\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t77/1/16/1f3e1.png\" style=\"border: 0px; object-fit: fill;\"></span> কিন্নর বা ডিঙ্গি কটেজ।</div><div dir=\"auto\" style=\"font-family: inherit;\">মিজুরাম ভিউ পার্সোনাল বারান্দা সহ রুম।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🍛\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t58/1/16/1f35b.png\" style=\"border: 0px; object-fit: fill;\"></span> ট্যুর চলাকালীন সময়ে আঁট বেলা খাবার মেন্যু -</div><div dir=\"auto\" style=\"font-family: inherit;\">✓ ২টা সকালে ডিম খিচুড়ি, চাটনি।</div><div dir=\"auto\" style=\"font-family: inherit;\">✓ ১টা সকালে পরোটা, ভাজি, ডিম, চা।</div><div dir=\"auto\" style=\"font-family: inherit;\">✓ দুপুরে ভাত, ভর্তা, সবজি ও বেম্বো চিকেন।</div><div dir=\"auto\" style=\"font-family: inherit;\">✓ দুপুরে ভাত, ভর্তা, সবজি ও হাঁসের মাংস।</div><div dir=\"auto\" style=\"font-family: inherit;\">✓ দুপুরে ভাত, ভর্তা, সবজি ও গরুর মাংস।</div><div dir=\"auto\" style=\"font-family: inherit;\">✓ রাতে পরোটা ও চিকেন বারবিকিউ, কোক।</div><div dir=\"auto\" style=\"font-family: inherit;\">✓ রাতে বেম্বো বিরিয়ানি, কোক।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"🚸\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te4/1/16/1f6b8.png\" style=\"border: 0px; object-fit: fill;\"></span> সকল স্পটের প্রবেশ টিকেট সহ ফুল প্যাকেজ।</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">বুকিং কনফার্ম করতে চাইলে যোগাযোগ করুন -</div><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"margin: 0px; text-align: inherit; overflow-wrap: break-word; padding: 0px; font-family: inherit;\"><a attributionsrc=\"/privacy_sandbox/comet/register/source/?xt=AZUudnGBCHOAaaOCdfUHowoY7Hd0C4T_qkGw6MRADAydTD_QdzrHf8-vWepqgUReMhEQg3HSmHAG1OQRasebEuqOIyOWSMVsMz04435MlERhJKLEcSGVK7xeZU9vlUkNZWfNS1tyJAcCGVzBq78A_ZniHYIYI_2B-pwsrfi5Bb4Zz9ifjrDN9zbjaS35m92N5vynAJ8iVI6Kp11v-H6xlxejKzTYRLOHBNCv4HJaxMI3DZuwlo7XburXdnbuTCcHxr68Yl4AHC-DYYV4AeWIhKb_P5_sWH2WYBJV8cApj0mrNQPyGgPYVYmzFznr8tPxbSeiYaThTAkozVFsJu_l3Em9fWySWrjrY6qLm-_UmC88rSC-uW8Xg-awnPkD6YmGhU9BH20EuBo_no8j2CID3hT0tqd2ZtFDIgjPGmFgAKw6IbE3OFiiS7keXrllaxjGPeeAzzvDLcsvIPJ4_DsnxIjKWgqNlLiZIruwwcQ6CLlyA7s7cCF0_O7k_0UTouTJbiJ71McS_2Y4m8e9_Rh2aQp7cHzU8DXlazW0hL_gXG-fxFTgV-qpOn84mUNDnTttizHeZ3EQ3bz2y2FKYrs5pk3_lwqOAscFQUCX1BIAqcGpVQGchIr36zs4ofbnH7rAXO_09odokeV4Xb458jwnVshtU9CdgoIqV8iAgX8WsLRAvGuqsfX-C5iRfbhO7UpyiCsuDFGGHORdgGkDAMtdoOOkxUGsgbyZAa7HvDMc3WHtOIaC-k_M0SdSUMg3B4RLiX9ojlEPX2o5qKHD-llc-oH2UnChPgx7-ySjs4nfcBV9E1LGB48-O3gaRveMpOhUWw8lK7B4HuHlk0F3dHn0DEfWLkZ5q-CK5ia8bKQefKC2Cg8YlXFA0IhCPY-lDJ_f0d8JEwI9pWVA-taKYSvwLMkadDMWbJ55NPV7ewl5_0-oTuKzjCezD2qAeIbNXG-2_RrrLDWrDHJVKAarvjScmJiYJ3_qTCgQZMRIWVK3KULNhjqzu3mO36eNZirNRMZIpZqNzhmpGWpM3CWoVtfriDk9iGRjb7XJUwxmKjnYB9ywKsIiVWakjuConJc_oqrHUYPIJ4MEViYlIKdn1NhWSZUty9iXAdW8gcFmigkw0tw_ShN4JPE26tb2QBUgYh3AXVNer0h3mFDpu3Dgax_EokJVwMpeZKNbo4OSP1WcZnbo7oVlxTGPsXNdB2B6bfUAyGgGqjUxQXHbPUVBXDyJZiUEF8ekqZ4xvUvklBIUX6gnahnhNbhVJ9AdXfowAKo15enPlRL2uElr2HaU4kz3vJKgyf-_oetdfG7qrHKlWnlGfYQ3EGJ2wYZZGukL4xiZLVTT8RKA8vviI4zqBdht8ok7zNJervB4prY6ONIIeDvvYChoDcZVsC8D7xnyesBcfQ4\" class=\"x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz x1sur9pj xkrqix3 x1fey0fg x1s688f\" href=\"https://www.facebook.com/Hilshatourism?__cft__[0]=AZXt2hlPmjK7BeiByQvCAXzESZeCzvbd21dpbLFiu414WcfmU9H6yI_kVRCWbtoTN-uVhsCzekhc_knx02zyrU4uZB70uKPEQF41EmBmJbFTUW3LPp_42HOHIT1X1bGOIDz7Q9ouY0J4znl_i6zSwnF8MFGV1Yb_1uZIrImOSgaZQaO9SfIDoH9RSIH6eO3piHQ&amp;__tn__=-]K-R\" role=\"link\" tabindex=\"0\" style=\"cursor: pointer; list-style: none; margin: 0px; text-align: inherit; border-style: none; padding: 0px; border-width: 0px; outline: none; -webkit-tap-highlight-color: transparent; font-weight: 600; touch-action: manipulation; display: inline; font-family: inherit;\">হিলশা ট্যুরিজম Hilsha Tourism</a></span> </div><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"📱\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t57/1/16/1f4f1.png\" style=\"border: 0px; object-fit: fill;\"></span>হোয়াটসঅ্যাপঃ <span class=\"html-span xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"margin: 0px; text-align: inherit; overflow-wrap: break-word; padding: 0px; font-family: inherit;\"><span dir=\"ltr\" style=\"font-family: inherit;\"><i data-visualcompletion=\"css-img\" class=\"x1b0d499 x1vv9jnp xahult9\" style=\"vertical-align: -0.25em; margin-bottom: 3px; filter: var(--filter-blue-link-icon); background-image: url(&quot;https://static.xx.fbcdn.net/rsrc.php/v4/y0/r/NxPd5oFMlV3.png&quot;); background-position: 0px -447px; background-size: auto; width: 12px; height: 12px; background-repeat: no-repeat; display: inline-block;\"></i><a attributionsrc=\"/privacy_sandbox/comet/register/source/?xt=AZUudnGBCHOAaaOCdfUHowoY7Hd0C4T_qkGw6MRADAydTD_QdzrHf8-vWepqgUReMhEQg3HSmHAG1OQRasebEuqOIyOWSMVsMz04435MlERhJKLEcSGVK7xeZU9vlUkNZWfNS1tyJAcCGVzBq78A_ZniHYIYI_2B-pwsrfi5Bb4Zz9ifjrDN9zbjaS35m92N5vynAJ8iVI6Kp11v-H6xlxejKzTYRLOHBNCv4HJaxMI3DZuwlo7XburXdnbuTCcHxr68Yl4AHC-DYYV4AeWIhKb_P5_sWH2WYBJV8cApj0mrNQPyGgPYVYmzFznr8tPxbSeiYaThTAkozVFsJu_l3Em9fWySWrjrY6qLm-_UmC88rSC-uW8Xg-awnPkD6YmGhU9BH20EuBo_no8j2CID3hT0tqd2ZtFDIgjPGmFgAKw6IbE3OFiiS7keXrllaxjGPeeAzzvDLcsvIPJ4_DsnxIjKWgqNlLiZIruwwcQ6CLlyA7s7cCF0_O7k_0UTouTJbiJ71McS_2Y4m8e9_Rh2aQp7cHzU8DXlazW0hL_gXG-fxFTgV-qpOn84mUNDnTttizHeZ3EQ3bz2y2FKYrs5pk3_lwqOAscFQUCX1BIAqcGpVQGchIr36zs4ofbnH7rAXO_09odokeV4Xb458jwnVshtU9CdgoIqV8iAgX8WsLRAvGuqsfX-C5iRfbhO7UpyiCsuDFGGHORdgGkDAMtdoOOkxUGsgbyZAa7HvDMc3WHtOIaC-k_M0SdSUMg3B4RLiX9ojlEPX2o5qKHD-llc-oH2UnChPgx7-ySjs4nfcBV9E1LGB48-O3gaRveMpOhUWw8lK7B4HuHlk0F3dHn0DEfWLkZ5q-CK5ia8bKQefKC2Cg8YlXFA0IhCPY-lDJ_f0d8JEwI9pWVA-taKYSvwLMkadDMWbJ55NPV7ewl5_0-oTuKzjCezD2qAeIbNXG-2_RrrLDWrDHJVKAarvjScmJiYJ3_qTCgQZMRIWVK3KULNhjqzu3mO36eNZirNRMZIpZqNzhmpGWpM3CWoVtfriDk9iGRjb7XJUwxmKjnYB9ywKsIiVWakjuConJc_oqrHUYPIJ4MEViYlIKdn1NhWSZUty9iXAdW8gcFmigkw0tw_ShN4JPE26tb2QBUgYh3AXVNer0h3mFDpu3Dgax_EokJVwMpeZKNbo4OSP1WcZnbo7oVlxTGPsXNdB2B6bfUAyGgGqjUxQXHbPUVBXDyJZiUEF8ekqZ4xvUvklBIUX6gnahnhNbhVJ9AdXfowAKo15enPlRL2uElr2HaU4kz3vJKgyf-_oetdfG7qrHKlWnlGfYQ3EGJ2wYZZGukL4xiZLVTT8RKA8vviI4zqBdht8ok7zNJervB4prY6ONIIeDvvYChoDcZVsC8D7xnyesBcfQ4\" class=\"x1i10hfl xjbqb8w x1ejq31n xd10rxx x1sy0etr x17r0tee x972fbf xcfux6l x1qhh985 xm0m39n x9f619 x1ypdohk xt0psk2 xe8uvvx xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x16tdsg8 x1hl2dhg xggy1nq x1a2a7pz x1sur9pj xkrqix3 x1fey0fg x1s688f\" href=\"https://l.facebook.com/l.php?u=https%3A%2F%2Fapi.whatsapp.com%2Fsend%3Fphone%3D8801644648188%26text%3DLink%253A%250Ahttps%253A%252F%252Ffb.me%252F71IfuxfOi%250A%250AI%2520saw%2520this%2520on%2520Facebook...%26context%3DARBzU4D2Ai4HkwBX17VbZPrImEBJSoiuBosjOnGV0sIhN9QMz2XzxtOZqgWhs3A3eU10yWQL8RjMQo_crBYm3iOvIlJCwcogp0EbhRUuZVxIjorGFLAIHzKDQSSH-8SFUmYc6uwhP5Hu1KsEyaD4byCh0Q%26source%26app%3Dfacebook%26fbclid%3DIwZXh0bgNhZW0CMTAAAR1HnNSN4-hHa_fVEDo-7hHAMStk5S4oLDsQP6NiTfA_18xwS-une7x7P6k_aem_s760Bvj6qYLbQvezt1prVA&amp;h=AT0QaprK4m1pEiqa0x5z-8ZW0kHp--gfJRhYk0a2M56nRuhWe2EUNyubAp22fEIbh0wpCy85ZQRkOgtNyZZxHI__HSeMGuG4RpFFYX-qKopj2pMGtRhUNpDNG5Cd804zcCz3fQ&amp;__tn__=-UK-R&amp;c[0]=AT0K1pj6grH4uL-l6jeyZqL1MPST1JgJzdU23VI_3PuMMkd5vcTNCFNGFxABo0MoQcQmN8AauXpcg5MrrxsjxwMhtQtQtdC4HiUY7eImPG01VZhneF_VLBnxKcUCBMeHHXO9vDSLNblOcMlNeJplb1JdkzM9QPEEJKKWIe33tl_w39Vk0W5trd24wjhTBQ5W6nRnq8mlYY1pqaHMFzLBm43lktM\" rel=\"nofollow noreferrer\" role=\"link\" tabindex=\"0\" target=\"_blank\" style=\"cursor: pointer; list-style: none; margin: 0px; text-align: inherit; border-style: none; padding: 0px; border-width: 0px; outline: none; -webkit-tap-highlight-color: transparent; font-weight: 600; touch-action: manipulation; display: inline; font-family: inherit;\">01644-648188</a></span></span> </div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\"><span class=\"html-span xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs x3nfvp2 x1j61x8r x1fcty0u xdj266r xat24cr xgzva0m xhhsvwb xxymvpz xlup9mm x1kky2od\" style=\"text-align: inherit; overflow-wrap: break-word; padding: 0px; margin: 0px 1px; display: inline-flex; vertical-align: middle; width: 16px; height: 16px; font-family: inherit;\"><img height=\"16\" width=\"16\" alt=\"💰\" class=\"xz74otr\" referrerpolicy=\"origin-when-cross-origin\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t5a/1/16/1f4b0.png\" style=\"border: 0px; object-fit: fill;\"></span>বুকিং নম্বরঃ 01829531515</div><div dir=\"auto\" style=\"font-family: inherit;\">বিকাশ বা নগদে ১,৫৩০/- জনপ্রতি বুকিং মানি দিয়ে সিট কনফার্ম করুন।</div></div>', '2025-01-05', '2025-01-13', 1, '2025-01-04 05:34:16', '2025-01-04 05:35:34');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `policies`
--

INSERT INTO `policies` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'This is policy', '2024-12-04 22:07:27', '2024-12-04 22:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `description`, `image`, `url`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cement b2b', '<p>THis is description</p>', 'uploads/project-image/35280241.jpg', 'cementb2b.com', 1, '2024-08-11 05:33:05', '2024-08-20 01:58:14'),
(2, 'Professional Services', '<div class=\"col-lg-12\" style=\"flex-basis: auto; width: 1300px; padding-right: calc(var(--bs-gutter-x) * .5); padding-left: calc(var(--bs-gutter-x) * .5); margin-top: var(--bs-gutter-y); color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\"><h2 class=\"pq-portfolio-single-title\" style=\"margin: 30px 0px 0px; font-weight: 600; line-height: 44px; font-size: 36px; font-family: var(--title-fonts); color: var(--dark-color); text-transform: capitalize; overflow-wrap: break-word;\">The Challenge &amp; Solution</h2><p style=\"margin-bottom: 30px;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose.</p></div><div class=\"col-lg-6\" style=\"flex-basis: auto; width: 650px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * .5); padding-left: calc(var(--bs-gutter-x) * .5); margin-top: var(--bs-gutter-y); color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\"><ul class=\"pq-list-check\" style=\"margin-bottom: 1em; list-style-position: initial; list-style-image: initial;\"><li class=\"pq-list-item\" style=\"list-style: inherit;\"><span class=\"ion ion-android-done-all\" style=\"color: var(--primary-color); width: 1.25em; height: 1em;\"></span>&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li><li class=\"pq-list-item\" style=\"list-style: inherit; margin-top: calc(7.5px); padding-bottom: calc(7.5px);\"><span class=\"ion ion-android-done-all\" style=\"color: var(--primary-color); width: 1.25em; height: 1em;\"></span>&nbsp;Proin convallis quam sed purus tincidunt, non sagittis arcu volutpat.</li><li class=\"pq-list-item\" style=\"list-style: inherit; margin-top: calc(7.5px); padding-bottom: calc(7.5px);\"><span class=\"ion ion-android-done-all\" style=\"color: var(--primary-color); width: 1.25em; height: 1em;\"></span>&nbsp;Vestibulum non tellus sit amet magna eleifend lobortis nec in tortor.</li><li class=\"pq-list-item\" style=\"list-style: inherit; margin-top: calc(7.5px); padding-bottom: calc(7.5px);\"><span class=\"ion ion-android-done-all\" style=\"color: var(--primary-color); width: 1.25em; height: 1em;\"></span>&nbsp;Pellentesque convallis urna vitae velit facilisis fermentum.</li><li class=\"pq-list-item\" style=\"list-style: inherit; margin-top: calc(7.5px); padding-bottom: calc(7.5px);\"><span class=\"ion ion-android-done-all\" style=\"color: var(--primary-color); width: 1.25em; height: 1em;\"></span>&nbsp;In a tortor ornare, gravida magna ac, pharetra augue.</li></ul></div>', 'uploads/project-image/5675771.jpg', 'https://youtu.be/iHhbPS_fsz4?si=0GEimTt6Sba0e5d4', 1, '2024-08-20 02:07:27', '2024-08-20 02:07:27'),
(3, 'Data Protection', '<h2 class=\"pq-portfolio-single-title\" style=\"margin: 30px 0px 0px; font-weight: 600; line-height: 44px; font-size: 36px; font-family: var(--title-fonts); color: var(--dark-color); text-transform: capitalize; overflow-wrap: break-word; background-color: rgb(255, 255, 255);\">Overview &amp; Challenge</h2><p style=\"margin-bottom: 30px; color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors nowuncover many web sites still in their infancy.</p>', 'uploads/project-image/10729782.jpg', 'cementb2b.com', 1, '2024-08-20 02:09:53', '2024-08-20 02:09:53'),
(4, 'Business Production', '<h4 class=\"title\" style=\"scrollbar-width: thin; outline: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 0px; font-weight: 700; color: var(--primary-title); font-size: 40px; font-family: &quot;DM Sans&quot;, sans-serif; text-transform: capitalize; background-color: rgb(255, 255, 255);\">Get The Best Travel Experience With Travello</h4><p class=\"pera\" style=\"scrollbar-width: thin; outline: none; -webkit-font-smoothing: antialiased; margin-top: 18px; margin-bottom: 0px; color: rgb(75, 80, 81); font-family: &quot;DM Sans&quot;, sans-serif; hyphens: auto; line-height: 1.6; font-size: 16px; background-color: rgb(255, 255, 255);\">Travel is a transformative and enriching experience that allows individuals to explore new destinations, cultures, and landscapes. It is a fundamental human activity that has been practiced for centuries and continues to be a source of joy, learning, and personal growth.</p><p class=\"pera\" style=\"scrollbar-width: thin; outline: none; -webkit-font-smoothing: antialiased; margin-top: 18px; margin-bottom: 0px; color: rgb(75, 80, 81); font-family: &quot;DM Sans&quot;, sans-serif; hyphens: auto; line-height: 1.6; font-size: 16px; background-color: rgb(255, 255, 255);\">Travel is a transformative and enriching experience that allows individuals to explore new destinations, cultures.</p>', 'uploads/project-image/43183438.jpg', 'cementb2b.com', 1, '2024-08-20 02:11:14', '2024-08-20 02:11:14'),
(5, 'Best IT Practices', '<p style=\"margin-bottom: 30px; color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p><blockquote style=\"margin-bottom: 30px; background: var(--white-color); padding: 15px 30px; border-radius: 0px; border-left: 5px solid var(--primary-color); color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; font-style: normal;\"><p style=\"margin-bottom: 0px;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.<br><span style=\"font-weight: 600; font-family: var(--title-fonts); color: var(--primary-color); font-style: italic; text-transform: uppercase;\">– Michal Smart&nbsp;</span></p></blockquote>', 'uploads/project-image/8371074.jpg', 'cementb2b.com', 1, '2024-08-20 02:12:23', '2024-08-20 02:12:23'),
(6, 'Virtual Reality', '<h2 class=\"pq-blog-single-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-weight: 600; line-height: 44px; font-size: 36px; font-family: var(--title-fonts); color: var(--dark-color); text-transform: capitalize; overflow-wrap: break-word; background-color: rgb(255, 255, 255);\">Success Your Technology</h2><p style=\"margin-bottom: 30px; color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magnaaliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit.</p><p style=\"margin-bottom: 30px; color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English.</p>', 'uploads/project-image/44095568.jpg', 'cementb2b.com', 1, '2024-08-20 02:14:43', '2024-08-20 02:14:43'),
(7, 'Security Analysis', '<h2 class=\"pq-blog-single-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-weight: 600; line-height: 44px; font-size: 36px; font-family: var(--title-fonts); color: var(--dark-color); text-transform: capitalize; overflow-wrap: break-word; background-color: rgb(255, 255, 255);\">Success Your Technology</h2><p style=\"margin-bottom: 30px; color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magnaaliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit.</p><p style=\"margin-bottom: 30px; color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English.</p>', 'uploads/project-image/38019561.jpg', 'cementb2b.com', 1, '2024-08-20 02:15:22', '2024-08-20 02:15:22'),
(8, 'Problem Solutions', '<h2 class=\"pq-blog-single-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-weight: 600; line-height: 44px; font-size: 36px; font-family: var(--title-fonts); color: var(--dark-color); text-transform: capitalize; overflow-wrap: break-word; background-color: rgb(255, 255, 255);\">Success Your Technology</h2><p style=\"margin-bottom: 30px; color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magnaaliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit.</p><p style=\"margin-bottom: 30px; color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English.</p>', 'uploads/project-image/24979060.jpg', 'cementb2b.com', 1, '2024-08-20 02:15:57', '2024-08-20 02:15:57');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'well', '2024-06-15 11:09:51', '2024-06-15 11:09:51'),
(2, 'Manager', 'well', '2024-06-15 11:10:30', '2024-06-15 11:10:30'),
(3, 'Super Admin', 'Main Admin', '2024-06-17 13:56:00', '2024-06-17 13:56:00');

-- --------------------------------------------------------

--
-- Table structure for table `role_routes`
--

CREATE TABLE `role_routes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `route_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_routes`
--

INSERT INTO `role_routes` (`id`, `role_id`, `role_name`, `route_name`, `created_at`, `updated_at`) VALUES
(3, 2, 'Manager', 'category.store', '2024-06-15 11:10:30', '2024-06-15 11:10:30'),
(34, 3, 'Super Admin', 'login', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(35, 3, 'Super Admin', 'two-factor.login', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(36, 3, 'Super Admin', 'livewire.update', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(37, 3, 'Super Admin', 'home', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(38, 3, 'Super Admin', 'about', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(39, 3, 'Super Admin', 'contact', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(40, 3, 'Super Admin', 'role.add', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(41, 3, 'Super Admin', 'role.new', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(42, 3, 'Super Admin', 'role.manage', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(43, 3, 'Super Admin', 'role.edit', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(44, 3, 'Super Admin', 'role.update', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(45, 3, 'Super Admin', 'role.delete', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(46, 3, 'Super Admin', 'user.add', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(47, 3, 'Super Admin', 'user.new', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(48, 3, 'Super Admin', 'user.manage', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(49, 3, 'Super Admin', 'user.edit', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(50, 3, 'Super Admin', 'user.update', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(51, 3, 'Super Admin', 'user.delete', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(52, 3, 'Super Admin', 'category.index', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(53, 3, 'Super Admin', 'category.create', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(54, 3, 'Super Admin', 'category.store', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(55, 3, 'Super Admin', 'category.show', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(56, 3, 'Super Admin', 'category.edit', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(57, 3, 'Super Admin', 'category.update', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(58, 3, 'Super Admin', 'category.destroy', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(59, 3, 'Super Admin', 'blog.index', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(60, 3, 'Super Admin', 'blog.create', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(61, 3, 'Super Admin', 'blog.store', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(62, 3, 'Super Admin', 'blog.show', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(63, 3, 'Super Admin', 'blog.edit', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(64, 3, 'Super Admin', 'blog.update', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(65, 3, 'Super Admin', 'blog.destroy', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(66, 1, 'Admin', 'category.index', '2024-06-18 00:01:12', '2024-06-18 00:01:12'),
(67, 1, 'Admin', 'category.create', '2024-06-18 00:01:12', '2024-06-18 00:01:12');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `short_description` text DEFAULT NULL,
  `long_description` longtext DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `search_keyword` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `feather_status` tinyint(4) NOT NULL DEFAULT 1,
  `home_status` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `order_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `category_id`, `short_description`, `long_description`, `meta_title`, `meta_description`, `search_keyword`, `image`, `feather_status`, `home_status`, `status`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 'Broadband Internet Provider', 4, 'Broadband Internet Provider', '<span style=\"color: rgb(153, 153, 153); font-family: &quot;Fira Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Amber IT is not simply another link in the chain of voice and data supply in the Bangladesh. Our pioneering spirit is evidenced by the creation of a national, fully resilient, MPLS network and the continuous testing and adoption of emerging communications platforms. As a result, we have earned the reputation of a communications provider whose focus is on solidly addressing businesses\' communications requirements.</span>', 'meta1', 'description1', 'isp,', 'uploads/service-image/15332976.png', 1, 1, 1, 1, '2024-08-10 10:14:10', '2024-12-06 22:35:10'),
(2, 'Three tech companies eyeing nuclear power for AI energy', 4, 'Three tech companies eyeing nuclear power for AI energy', '<p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-size: 18px; line-height: 26px; color: rgb(102, 102, 102); border: 0px; padding: 0px; vertical-align: baseline; font-family: &quot;NeueHaasGroteskText W01&quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);\">Edge computing is a allowing IT to deliver insight-enabled business benefits that drive new revenue streams, enhance customer engagement, accelerate innovation and make life easier and more efficient for employees, partners and others across their supply chains and ecosystems.</p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-size: 18px; line-height: 26px; color: rgb(102, 102, 102); border: 0px; padding: 0px; vertical-align: baseline; font-family: &quot;NeueHaasGroteskText W01&quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);\">In this article, we look at how four digital game changers across different industries are leveraging insights, actions and intelligence from the edge to deliver unprecedented value at the bottom line.</p><div class=\"nativeAdContainer\" data-adtn=\"1\" style=\"border: 0px; font-size: 16px; margin: 0px; padding: 0px; vertical-align: baseline; position: absolute; z-index: 2; width: 300px; right: 40px; top: 180px; color: rgb(50, 50, 50); font-family: &quot;NeueHaasGroteskText W01&quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);\"><div id=\"div-gpt-ad-1452889091374-1\" data-google-query-id=\"CMyqxPDqlIoDFe6IrAIdJhUzpg\" style=\"border: 0px; margin: 0px; padding: 0px; vertical-align: baseline;\"><div id=\"google_ads_iframe_/3618/mcrst_1__container__\" style=\"border: 0pt none; margin: 0px; padding: 0px; vertical-align: baseline; width: 300px; height: 0px;\"></div></div></div><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-size: 18px; line-height: 26px; color: rgb(102, 102, 102); border: 0px; padding: 0px; vertical-align: baseline; font-family: &quot;NeueHaasGroteskText W01&quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; font-family: NHaasGroteskTXW01-75Bd, Helvetica, Arial, sans-serif;\"><a class=\"m-exitLink\" href=\"https://www.arubanetworks.com/customerstories/\" target=\"_blank\" rel=\"nofollow noopener\" style=\"color: rgb(0, 179, 172); transition: color 0.2s; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; cursor: pointer;\">Tractor Supply Company</a></span>&nbsp;(TSC) is the largest operator of rural lifestyle stores in the U.S. with more than 1,600 retail outlets serving 150 million shoppers each year. TSC turned to edge computing powered by wireless networking to deliver a better, faster and more data-driven experience for customers and employees. A major factor in supporting the edge has been a high-speed Wi-Fi network powered by HPE Aruba solutions, including Aruba Instant Access Points (IAPs), AirWave Network Management, and the Piloting Aruba Beacons and Asset Tracking solution. With advanced Wi-Fi connectivity, the company was able to modernize its store network infrastructure within 10 weeks—averaging 160 stores per week. High-speed connectivity to the edge has empowered each store with a wide range of new business capabilities, including:</p><ul style=\"margin-bottom: 30px; padding-left: 20px; border: 0px; font-size: 18px; vertical-align: baseline; list-style: disc; color: rgb(102, 102, 102); line-height: 26px; font-family: &quot;NeueHaasGroteskText W01&quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);\"><li style=\"border: 0px; margin: 0px; padding: 0px; vertical-align: baseline;\">Mobile point of sale, with “buy online, pick up in store” applications.</li><li style=\"border: 0px; margin: 0px; padding: 0px; vertical-align: baseline;\">Faster location of inventory, pickups and checkouts with enhanced customer engagement through real-time, data-driven experiences.</li><li style=\"border: 0px; margin: 0px; padding: 0px; vertical-align: baseline;\">Contactless check-in experiences integrating precautions such as a temperature-check kiosk.</li><li style=\"border: 0px; margin: 0px; padding: 0px; vertical-align: baseline;\">Improvements in process efficiencies with mobile and internet of things (IoT) technologies.</li></ul>', 'meta', 'description', 'dssd', 'uploads/service-image/9785646.jpg', 1, 1, 1, 1, '2024-08-10 10:23:18', '2024-12-06 22:37:04');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('pxCxqo8pOs4Ak2vpZUFZ9bC2BGVNCtLyyU43Pu1J', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiRGhUU01jeVVoVHFMSmFZMHpYYVpocEg4RVRxSlJYQWg2elBjN2ZjZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hYm91dC92aWV3Ijt9czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjQ7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTIkWHc2Y29wdzlRL2FoSWV4NUxvcnk2TzJ1M0NxZm5JWVVCWFMyTWp0ZnE0aTBuY2tCOWNEVlciO30=', 1736051012);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `service_id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 6, 'Title', 'Description', 'uploads/slider-image/43358436.png', 1, '2024-08-11 03:03:15', '2025-01-04 06:02:34'),
(2, 9, 'title Two', 'There are many variations of passages  Lorem Ipsum available', 'uploads/slider-image/16836496.png', 1, '2024-08-11 05:57:00', '2025-01-04 06:02:41'),
(3, 9, 'title three', 'but the majority have suffered alteration in some', 'uploads/slider-image/22042690.png', 1, '2024-08-11 05:58:24', '2025-01-04 06:02:46'),
(4, 6, 'title four', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'uploads/slider-image/25440228.png', 1, '2024-08-11 05:59:07', '2025-01-04 06:02:54');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` text DEFAULT NULL,
  `facebook_link` text DEFAULT NULL,
  `linkedin_link` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `designation`, `facebook_link`, `linkedin_link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Allegra Haley', 'Voluptatem animi q', 'Hic dolor aute ex el', 'Sunt voluptatum offi', 'uploads/team-image/36029802.jpg', 1, '2025-01-01 23:14:35', '2025-01-01 23:30:04'),
(2, 'Chadwick Barron', 'Ut ullamco quia dolo', 'Est totam dolorem m', 'Rerum unde hic id of', 'uploads/team-image/48852123.jpg', 1, '2025-01-01 23:17:47', '2025-01-01 23:29:55'),
(3, 'Alamin', 'software engineer', 'https://www.facebook.com', 'https://www.linkedin.com', 'uploads/team-image/30590953.jpg', 1, '2025-01-01 23:31:43', '2025-01-01 23:31:43'),
(4, 'Tariqul', 'software engineer', 'https://www.facebook.com/', 'https://www.linkedin.com/', 'uploads/team-image/35149912.jpg', 1, '2025-01-01 23:32:20', '2025-01-01 23:34:09'),
(5, 'Mahmud', 'senior software engineer', 'https://www.facebook.com', 'https://www.linkedin.com/', 'uploads/team-image/23970029.jpg', 1, '2025-01-01 23:33:48', '2025-01-01 23:33:48');

-- --------------------------------------------------------

--
-- Table structure for table `t_conditions`
--

CREATE TABLE `t_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_conditions`
--

INSERT INTO `t_conditions` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, '<p>Tram and Condition</p>', '2024-12-04 22:18:45', '2024-12-04 22:19:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@admin.com', NULL, '$2y$12$9h4Faup4QTar/odJ3gGJ0.r.g7U4E3TtwbVQrOMrdxZA.mj8L.Eg.', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-14 12:45:35', '2024-06-14 12:45:35'),
(2, 'User One', 'userone@gmail.com', NULL, '$2y$12$PxeDPj7DtqY2SLE42boNPOwzJjgDKAEK3lAMIr7KCkSWJsE7nhE4a', NULL, NULL, NULL, NULL, NULL, 'uploads/user-images/20873774.png', '2024-06-15 13:19:52', '2024-06-15 13:19:52'),
(3, 'User Two', 'usertwo@gmail.com', NULL, '$2y$12$VxkxABGIXz8VaHGwDHqXTOjeg9/3fAjAOZ8ZkWYyOnS/D6qy.kVUu', NULL, NULL, NULL, NULL, NULL, 'uploads/user-images/44035166.png', '2024-06-15 13:20:31', '2024-06-15 13:20:31'),
(4, 'admin', 'admin@gmail.com', NULL, '$2y$12$Xw6copw9Q/ahIex5Lory6O2u3CqfnIYUBXS2Mjtfq4i0nckB9cDVW', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-06 00:24:52', '2024-08-06 00:24:52');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, NULL),
(2, 3, 2, NULL, NULL),
(3, 1, 3, NULL, NULL),
(4, 4, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `whychooses`
--

CREATE TABLE `whychooses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `whychooses`
--

INSERT INTO `whychooses` (`id`, `icon`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'uploads/whychoose-icon/30732086.png', 'High Quality Hardware', 'There are many variaons of passages Lorem Ipsum available, but majority have suffered alteration in…', 1, '2024-08-11 04:50:03', '2024-08-11 04:50:03'),
(3, 'uploads/whychoose-icon/48737372.png', 'Dedicated 24\\7 Support', 'There are many variaons of passages Lorem Ipsum available, but majority have suffered alteration in…', 1, '2024-08-11 04:51:37', '2024-08-20 01:40:02'),
(4, 'uploads/whychoose-icon/10995380.png', 'Money-back Guarantee', 'There are many variaons of passages Lorem Ipsum available, but majority have suffered alteration', 1, '2024-08-20 01:41:23', '2024-08-20 01:41:23'),
(5, 'uploads/whychoose-icon/15827183.png', 'Agile and Fast Working', 'There are many variaons of passages Lorem Ipsum available, but majority have suffered alteration i', 1, '2024-08-20 01:42:34', '2024-08-20 01:42:34'),
(6, 'uploads/whychoose-icon/29823271.png', 'Some Apps are Free', 'There are many variaons of passages Lorem Ipsum available, but majority have suffered alteration in', 1, '2024-08-20 01:43:31', '2024-08-20 01:43:31'),
(7, 'uploads/whychoose-icon/5747201.png', 'High Level of Usability', 'There are many variaons of passages Lorem Ipsum available, but majority have suffered alteration', 1, '2024-08-20 01:44:45', '2024-08-20 01:44:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `benefits`
--
ALTER TABLE `benefits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_name_unique` (`name`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consultations`
--
ALTER TABLE `consultations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `frequents`
--
ALTER TABLE `frequents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_images`
--
ALTER TABLE `other_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_routes`
--
ALTER TABLE `role_routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teams_name_unique` (`name`);

--
-- Indexes for table `t_conditions`
--
ALTER TABLE `t_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `whychooses`
--
ALTER TABLE `whychooses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `benefits`
--
ALTER TABLE `benefits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `consultations`
--
ALTER TABLE `consultations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frequents`
--
ALTER TABLE `frequents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `other_images`
--
ALTER TABLE `other_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_routes`
--
ALTER TABLE `role_routes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `t_conditions`
--
ALTER TABLE `t_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `whychooses`
--
ALTER TABLE `whychooses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
