-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2023 at 09:06 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skill_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `issue_requisitions`
--

CREATE TABLE `issue_requisitions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `requisition_id` bigint(20) UNSIGNED NOT NULL,
  `tota_issue_price` double(11,2) NOT NULL,
  `tota_issue_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `issue_requisitions`
--

INSERT INTO `issue_requisitions` (`id`, `requisition_id`, `tota_issue_price`, `tota_issue_quantity`, `created_at`, `updated_at`) VALUES
(3, 1, 130.00, 12, '2023-05-07 12:16:26', '2023-05-07 12:16:26'),
(4, 1, 15.00, 1, '2023-05-07 12:18:08', '2023-05-07 12:18:08'),
(5, 1, 15.00, 1, '2023-05-07 12:18:37', '2023-05-07 12:18:37'),
(6, 1, 15.00, 1, '2023-05-07 12:20:17', '2023-05-07 12:20:17'),
(7, 1, 15.00, 1, '2023-05-07 12:20:40', '2023-05-07 12:20:40'),
(8, 1, 30.00, 2, '2023-05-07 12:21:11', '2023-05-07 12:21:11'),
(9, 1, 30.00, 2, '2023-05-07 12:22:25', '2023-05-07 12:22:25'),
(10, 1, 15.00, 1, '2023-05-07 12:23:22', '2023-05-07 12:23:22'),
(11, 2, 40.00, 5, '2023-05-07 13:06:12', '2023-05-07 13:06:12'),
(12, 2, 40.00, 5, '2023-05-07 13:06:29', '2023-05-07 13:06:29'),
(13, 2, 40.00, 5, '2023-05-07 13:06:36', '2023-05-07 13:06:36'),
(14, 2, 60.00, 5, '2023-05-07 13:06:54', '2023-05-07 13:06:54'),
(15, 2, 40.00, 5, '2023-05-07 13:09:24', '2023-05-07 13:09:24'),
(16, 1, 120.00, 12, '2023-05-07 13:09:43', '2023-05-07 13:09:43'),
(17, 1, 120.00, 12, '2023-05-07 13:10:31', '2023-05-07 13:10:31'),
(18, 1, 70.00, 7, '2023-05-07 13:11:21', '2023-05-07 13:11:21'),
(19, 1, 10.00, 1, '2023-05-07 13:11:32', '2023-05-07 13:11:32'),
(20, 1, 90.00, 9, '2023-05-07 13:16:32', '2023-05-07 13:16:32'),
(21, 1, 30.00, 3, '2023-05-08 08:55:28', '2023-05-08 08:55:28'),
(22, 7, 17000.00, 10, '2023-05-08 11:48:20', '2023-05-08 11:48:20'),
(23, 11, 12000.00, 10, '2023-05-08 12:30:57', '2023-05-08 12:30:57'),
(24, 11, 12100.00, 10, '2023-05-08 12:32:40', '2023-05-08 12:32:40'),
(25, 7, 3400.00, 2, '2023-05-08 13:04:27', '2023-05-08 13:04:27');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_name`, `created_at`, `updated_at`) VALUES
(1, 'T-shirt', '2023-05-02 18:00:00', '2023-05-07 18:00:00'),
(2, ' Beach wear', '2023-05-02 18:00:00', '2023-05-07 18:00:00'),
(3, ' Kurti', '2023-05-03 18:00:00', '2023-05-07 18:00:00'),
(4, ' Polo shirt', '2023-05-07 18:00:00', '2023-05-07 18:00:00'),
(5, 'Salwar Suit', '2023-05-07 18:00:00', '2023-05-07 18:00:00'),
(6, ' Swim wear', '2023-05-07 18:00:00', '2023-05-07 18:00:00'),
(7, 'Waist coat', '2023-05-07 18:00:00', '2023-05-07 18:00:00'),
(8, ' Shorts', '2023-05-07 18:00:00', '2023-05-07 18:00:00'),
(9, ' Sweater', '2023-05-07 18:00:00', '2023-05-07 18:00:00'),
(10, ' Lingerie', '2023-05-07 18:00:00', '2023-05-07 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_01_165910_create_admins_table', 1),
(6, '2023_05_03_074023_create_items_table', 2),
(7, '2023_05_03_074605_create_recieves_table', 2),
(8, '2023_05_03_075225_create_stocks_table', 2),
(9, '2023_05_03_080118_create_requisitions_table', 2),
(10, '2023_05_07_155735_create_issue_requisitions_table', 3),
(11, '2023_05_07_191732_create_requisition_details_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recieves`
--

CREATE TABLE `recieves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(11,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recieves`
--

INSERT INTO `recieves` (`id`, `item_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 2, 988, 700.00, '2023-05-04 18:00:00', '2023-05-08 08:55:28'),
(2, 2, 1500, 1500.00, '2023-05-04 18:00:00', '2023-05-07 12:23:22'),
(3, 1, 500, 800.00, '2023-05-04 18:00:00', '2023-05-07 13:09:23'),
(4, 1, 500, 1200.00, '2023-05-04 18:00:00', '2023-05-07 13:06:54'),
(6, 3, 500, 2000.00, '2023-05-07 18:00:00', '2023-05-07 18:00:00'),
(7, 3, 200, 3000.00, '2023-05-07 18:00:00', '2023-05-07 18:00:00'),
(8, 4, 100, 1200.00, '2023-05-07 18:00:00', '2023-05-08 12:32:40'),
(9, 4, 120, 1300.00, '2023-05-07 18:00:00', '2023-05-08 12:32:40'),
(10, 5, 500, 1500.00, '2023-05-07 18:00:00', '2023-05-07 18:00:00'),
(11, 6, 700, 3000.00, '2023-05-07 18:00:00', '2023-05-07 18:00:00'),
(12, 7, 400, 1000.00, '2023-05-07 18:00:00', '2023-05-07 18:00:00'),
(13, 7, 100, 1200.00, '2023-05-07 18:00:00', '2023-05-07 18:00:00'),
(14, 8, 100, 3000.00, '2023-05-07 18:00:00', '2023-05-07 18:00:00'),
(15, 9, 500, 1200.00, '2023-05-07 18:00:00', '2023-05-01 18:00:00'),
(16, 9, 100, 1000.00, '2023-05-07 18:00:00', '2023-05-07 18:00:00'),
(17, 10, 488, 1700.00, '2023-05-07 18:00:00', '2023-05-08 13:04:27');

-- --------------------------------------------------------

--
-- Table structure for table `requisitions`
--

CREATE TABLE `requisitions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `requisitions`
--

INSERT INTO `requisitions` (`id`, `item_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 2, 12, '2023-05-04 18:00:00', '2023-05-04 18:00:00'),
(2, 1, 5, '2023-05-04 18:00:00', '2023-05-04 18:00:00'),
(6, 3, 10, '2023-05-07 18:00:00', '2023-05-07 18:00:00'),
(7, 10, 10, '2023-05-07 18:00:00', '2023-05-07 18:00:00'),
(8, 9, 10, '2023-05-07 18:00:00', '2023-05-07 18:00:00'),
(9, 7, 10, '2023-05-07 18:00:00', '2023-05-07 18:00:00'),
(10, 6, 10, '2023-05-07 18:00:00', '2023-05-07 18:00:00'),
(11, 4, 10, '2023-05-07 18:00:00', '2023-05-07 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `requisition_details`
--

CREATE TABLE `requisition_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `requisition_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `requested_qty` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `total_quantity` int(11) NOT NULL,
  `total_price` double(11,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `item_id`, `total_quantity`, `total_price`, `created_at`, `updated_at`) VALUES
(1, 2, 2456, 32060.00, '2023-05-07 18:00:00', '2023-05-08 08:55:28'),
(2, 1, 595, 6760.00, '2023-05-01 18:00:00', '2023-05-07 13:09:24'),
(4, 10, 488, 7479600.00, '2023-05-01 18:00:00', '2023-05-08 13:04:27'),
(5, 3, 700, 700000.00, '2023-05-07 18:00:00', '2023-05-07 18:00:00'),
(6, 9, 100, 100000.00, '2023-05-08 18:00:00', '2023-05-08 18:00:00'),
(7, 7, 500, 520000.00, '2023-05-08 18:00:00', '2023-05-08 18:00:00'),
(8, 6, 700, 2100000.00, '2023-05-08 18:00:00', '2023-05-08 18:00:00'),
(9, 4, 200, 2760000.00, '2023-05-08 18:00:00', '2023-05-08 12:32:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `issue_requisitions`
--
ALTER TABLE `issue_requisitions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `recieves`
--
ALTER TABLE `recieves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recieves_item_id_foreign` (`item_id`);

--
-- Indexes for table `requisitions`
--
ALTER TABLE `requisitions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `requisitions_item_id_foreign` (`item_id`);

--
-- Indexes for table `requisition_details`
--
ALTER TABLE `requisition_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `requisition_details_item_id_foreign` (`item_id`),
  ADD KEY `requisition_details_requisition_id_foreign` (`requisition_id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stocks_item_id_foreign` (`item_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issue_requisitions`
--
ALTER TABLE `issue_requisitions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recieves`
--
ALTER TABLE `recieves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `requisitions`
--
ALTER TABLE `requisitions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `requisition_details`
--
ALTER TABLE `requisition_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `recieves`
--
ALTER TABLE `recieves`
  ADD CONSTRAINT `recieves_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `requisitions`
--
ALTER TABLE `requisitions`
  ADD CONSTRAINT `requisitions_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `requisition_details`
--
ALTER TABLE `requisition_details`
  ADD CONSTRAINT `requisition_details_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `requisition_details_requisition_id_foreign` FOREIGN KEY (`requisition_id`) REFERENCES `requisitions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stocks`
--
ALTER TABLE `stocks`
  ADD CONSTRAINT `stocks_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
