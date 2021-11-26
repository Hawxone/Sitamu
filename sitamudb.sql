-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2019 at 01:19 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sitamudb`
--
CREATE DATABASE IF NOT EXISTS `sitamudb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sitamudb`;

-- --------------------------------------------------------

--
-- Table structure for table `bagian`
--

DROP TABLE IF EXISTS `bagian`;
CREATE TABLE `bagian` (
  `bagian_id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bagian`
--

INSERT INTO `bagian` (`bagian_id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'PDSI', '2019-02-16 10:52:50', '2019-02-16 10:52:50'),
(2, 'APTIKA', '2019-02-16 10:54:25', '2019-02-16 10:54:25'),
(3, 'PPI', '2019-02-17 02:00:11', '2019-02-17 02:00:11'),
(4, 'PPSI', '2019-02-17 02:00:20', '2019-02-17 02:03:55');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

DROP TABLE IF EXISTS `jabatan`;
CREATE TABLE `jabatan` (
  `jabatan_id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`jabatan_id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Kepala Bagian', '2019-02-16 11:03:01', '2019-02-16 11:03:01'),
(2, 'Analis', '2019-02-16 23:49:58', '2019-02-17 02:09:53'),
(4, 'Programmer', '2019-02-17 02:10:02', '2019-02-17 02:10:02');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `log_id` int(10) UNSIGNED NOT NULL,
  `tamu_id` int(11) NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tujuan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instansi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pegawai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_masuk` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`log_id`, `tamu_id`, `nama`, `no_hp`, `alamat`, `tujuan`, `instansi`, `pegawai`, `tgl_masuk`, `created_at`, `updated_at`) VALUES
(1, 19, 'eeee', '081262802593', 'Albarokah 2 No.65', 'Magang', '', 'Bagus', '2019-02-19', '2019-02-19 06:50:39', '2019-02-19 06:50:39'),
(2, 18, 'Deemas', '081262802593', 'Albarokah 2 No.63', 'Magang', '', 'Dzaky', '2019-02-18', '2019-02-19 06:52:50', '2019-02-19 06:52:50'),
(3, 25, 'Tes 1', '081262802593', 'jagdpanda@gmail.com', 'adsadad', 'PLN', 'Dimas', '2019-02-26', '2019-02-26 04:23:24', '2019-02-26 04:23:24');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_02_16_061643_create_bagian_table', 1),
(4, '2019_02_16_061729_create_jabatan_table', 1),
(5, '2019_02_16_061830_create_pegawai_table', 1),
(6, '2019_02_16_061908_create_tamu_table', 1),
(10, '2019_02_17_031803_create_notifications_table', 2),
(13, '2019_02_19_130246_create_logs_table', 3),
(20, '2019_02_25_110246_create_instansi_table', 4),
(23, '2019_02_25_110910_update_tamu_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('2498ee10-41f2-4412-9600-73ecd0e5d5b9', 'App\\Notifications\\InsertData', 'App\\User', 1, '{\"data\":\"Tamu Baru\"}', '2019-02-17 03:17:28', '2019-02-17 03:16:26', '2019-02-17 03:17:28'),
('297550b0-1091-4efe-ad9c-7d05ecfc738e', 'App\\Notifications\\InsertData', 'App\\User', 1, '{\"data\":\"Tamu Baru\"}', '2019-02-18 09:07:00', '2019-02-18 09:06:39', '2019-02-18 09:07:00'),
('2df92ede-6c5a-4b53-aabe-bcd1240dba2a', 'App\\Notifications\\InsertData', 'App\\User', 1, '{\"data\":\"Tamu Baru\"}', '2019-02-25 09:36:23', '2019-02-25 09:36:17', '2019-02-25 09:36:23'),
('31fcbc3a-c107-4cd3-9b59-531711124bc3', 'App\\Notifications\\InsertData', 'App\\User', 1, '{\"data\":\"Tamu Baru\"}', '2019-02-25 08:12:06', '2019-02-25 08:08:06', '2019-02-25 08:12:06'),
('6de9951a-0b6e-448b-824b-f0f6c781190d', 'App\\Notifications\\InsertData', 'App\\User', 1, '{\"data\":\"Tamu Baru\"}', '2019-02-19 05:57:09', '2019-02-19 05:56:43', '2019-02-19 05:57:09'),
('72a8e2c1-88c3-4260-9ba2-6edc1314c38f', 'App\\Notifications\\InsertData', 'App\\User', 1, '{\"data\":\"Tamu Baru\"}', '2019-02-16 21:22:17', '2019-02-16 20:32:42', '2019-02-16 21:22:17'),
('72b0d839-e82a-4231-a8a7-65c829c42794', 'App\\Notifications\\InsertData', 'App\\User', 1, '{\"data\":\"Tamu Baru\"}', '2019-02-19 05:54:36', '2019-02-19 05:52:30', '2019-02-19 05:54:36'),
('81c1fd93-ca73-41f6-989d-e2c94e7e3cd7', 'App\\Notifications\\InsertData', 'App\\User', 1, '{\"data\":\"Tamu Baru\"}', '2019-02-17 03:24:19', '2019-02-17 03:17:47', '2019-02-17 03:24:19'),
('8bac31d3-56d1-439b-89b9-4d227badc667', 'App\\Notifications\\InsertData', 'App\\User', 1, '{\"data\":\"Tamu Baru\"}', '2019-02-16 21:28:55', '2019-02-16 21:28:24', '2019-02-16 21:28:55'),
('9412c70e-1406-493a-9963-4d317fbe9c04', 'App\\Notifications\\InsertData', 'App\\User', 1, '{\"data\":\"Tamu Baru\"}', '2019-02-16 22:27:49', '2019-02-16 22:27:02', '2019-02-16 22:27:49'),
('a3979b20-3c34-47be-9e09-3a3a9f12598c', 'App\\Notifications\\InsertData', 'App\\User', 1, '{\"data\":\"Tamu Baru\"}', '2019-02-17 03:00:23', '2019-02-17 02:59:47', '2019-02-17 03:00:23'),
('a561eb84-7a5f-42df-940f-2f68d5db242b', 'App\\Notifications\\InsertData', 'App\\User', 1, '{\"data\":\"Tamu Baru\"}', '2019-02-19 05:54:36', '2019-02-19 05:54:14', '2019-02-19 05:54:36'),
('a8ca8892-aeb9-4106-b317-c4a47d29996f', 'App\\Notifications\\InsertData', 'App\\User', 1, '{\"data\":\"Tamu Baru\"}', '2019-02-16 21:31:36', '2019-02-16 21:30:11', '2019-02-16 21:31:36'),
('be90f954-1b15-43a3-bec2-37a3acc1029c', 'App\\Notifications\\InsertData', 'App\\User', 1, '{\"data\":\"Tamu Baru\"}', '2019-02-25 08:12:06', '2019-02-25 08:10:35', '2019-02-25 08:12:06'),
('c0a626f7-11e9-43bd-972b-d4cc559c8bde', 'App\\Notifications\\InsertData', 'App\\User', 1, '{\"data\":\"Tamu Baru\"}', '2019-02-17 03:07:37', '2019-02-17 03:07:14', '2019-02-17 03:07:37'),
('d19d16d7-163c-4834-93dc-71438e1f4bdb', 'App\\Notifications\\InsertData', 'App\\User', 1, '{\"data\":\"Tamu Baru\"}', '2019-02-26 04:19:44', '2019-02-26 04:19:29', '2019-02-26 04:19:44'),
('e83cbeb9-4383-4524-84fe-bd8bbf7472f7', 'App\\Notifications\\InsertData', 'App\\User', 1, '{\"data\":\"Tamu Baru\"}', '2019-02-17 03:04:06', '2019-02-17 03:02:40', '2019-02-17 03:04:06');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

DROP TABLE IF EXISTS `pegawai`;
CREATE TABLE `pegawai` (
  `pegawai_id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan_id` int(10) UNSIGNED NOT NULL,
  `bagian_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`pegawai_id`, `nama`, `jabatan_id`, `bagian_id`, `created_at`, `updated_at`) VALUES
(1, 'Dimas', 4, 2, '2019-02-16 11:37:31', '2019-02-17 02:36:15'),
(3, 'Bagus', 2, 1, '2019-02-17 02:10:40', '2019-02-17 02:10:40'),
(4, 'Dzaky', 4, 1, '2019-02-17 02:10:56', '2019-02-17 02:10:56');

-- --------------------------------------------------------

--
-- Table structure for table `tamu`
--

DROP TABLE IF EXISTS `tamu`;
CREATE TABLE `tamu` (
  `tamu_id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tujuan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instansi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pegawai_id` int(10) UNSIGNED NOT NULL,
  `img_src` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tamu`
--

INSERT INTO `tamu` (`tamu_id`, `nama`, `no_hp`, `alamat`, `tujuan`, `instansi`, `pegawai_id`, `img_src`, `created_at`, `updated_at`) VALUES
(10, 'Dimas Ari', '081262802593', 'Albarokah 2 No.65', 'Magang', '', 1, 'storage/photo/48379482_524495284731469_2264152040844296192_n.jpg', '2019-02-16 18:33:33', '2019-02-16 18:33:33'),
(11, 'Niduma', '081262802594', 'Albarokah 2 No.63', 'Meeting', '', 1, 'storage/photo/47048413_525665724614758_7476958757147115520_n.jpg', '2019-02-16 18:35:50', '2019-02-16 18:35:50'),
(13, 'Deni', '081262802595', 'Albarokah 2 No.62', 'Iseng', '', 1, 'storage/photo/g17.png', '2019-02-16 20:32:42', '2019-02-16 20:32:42'),
(15, 'Radip', '081262802552', 'Albarokah 2 No.655', 'Ga ada', '', 1, 'storage/photo/__kuraishi_tanpopo_witch_craft_works_drawn_by_tsukudani_coke_buta__ad7fd8cdefc77d178a54e11db98d1a68.jpg', '2019-02-16 21:30:10', '2019-02-16 21:30:10'),
(17, 'Kenny', '062225467', 'Handayani 5', 'Ngews', '', 3, 'storage/photo/11216594_587846664700965_1068244101283376984_n.jpg', '2019-02-17 03:07:14', '2019-02-17 03:17:47'),
(21, 'Kepala Bagian', 'asdad', 'asdads', 'adsadad', '', 1, 'storage/photo/002.jpg', '2019-02-19 05:56:43', '2019-02-19 05:56:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dimas', 'Dimas@admin.com', NULL, '$2y$10$xQOmhQyf0Qp7sUyxsY4o4.Za/HHwEsU51OKttjSd6cLpU/NwM62ry', 'XPmYoGYeA8uhUDHUNvzKHkPt5tCvn56tEmHzjfURxVuFUakwzCrtagtUFf3g', '2019-02-16 07:16:42', '2019-02-16 07:16:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bagian`
--
ALTER TABLE `bagian`
  ADD PRIMARY KEY (`bagian_id`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`jabatan_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`pegawai_id`),
  ADD KEY `pegawai_jabatan_id_foreign` (`jabatan_id`),
  ADD KEY `pegawai_bagian_id_foreign` (`bagian_id`);

--
-- Indexes for table `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`tamu_id`),
  ADD KEY `tamu_pegawai_id_foreign` (`pegawai_id`);

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
-- AUTO_INCREMENT for table `bagian`
--
ALTER TABLE `bagian`
  MODIFY `bagian_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `jabatan_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `pegawai_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tamu`
--
ALTER TABLE `tamu`
  MODIFY `tamu_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_bagian_id_foreign` FOREIGN KEY (`bagian_id`) REFERENCES `bagian` (`bagian_id`),
  ADD CONSTRAINT `pegawai_jabatan_id_foreign` FOREIGN KEY (`jabatan_id`) REFERENCES `jabatan` (`jabatan_id`);

--
-- Constraints for table `tamu`
--
ALTER TABLE `tamu`
  ADD CONSTRAINT `tamu_pegawai_id_foreign` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawai` (`pegawai_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
