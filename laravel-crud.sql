-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2020 at 09:47 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `telpon` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nama`, `telpon`, `alamat`, `create_at`, `update_at`) VALUES
(1, 'Sirojul Munir', '08213456722', 'Depok', '2020-02-24 13:47:04', NULL),
(2, 'Henry Saptono', '08385677234', 'Jakarta', '2020-02-24 13:47:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id` int(11) NOT NULL,
  `kode` varchar(191) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `semester` varchar(45) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id`, `kode`, `nama`, `semester`, `guru_id`, `create_at`, `update_at`) VALUES
(1, 'A-001', 'Matematika Dasar', 'ganjil', 1, '2020-02-21 23:54:14', '0000-00-00 00:00:00'),
(2, 'A-002', 'Bahasa Indonesia', 'ganjil', 2, '2020-02-21 23:54:14', '0000-00-00 00:00:00'),
(3, 'A-003', 'Agama Islam', 'ganjil', 1, '2020-02-24 07:42:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mapel_siswa`
--

CREATE TABLE `mapel_siswa` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel_siswa`
--

INSERT INTO `mapel_siswa` (`id`, `siswa_id`, `mapel_id`, `nilai`, `create_at`, `update_at`) VALUES
(1, 3, 1, 80, '2020-02-21 23:55:07', '0000-00-00 00:00:00'),
(2, 3, 2, 75, '2020-02-21 23:55:07', '0000-00-00 00:00:00'),
(4, 1, 1, 90, '2020-02-23 13:12:46', NULL),
(5, 1, 2, 85, '2020-02-23 13:27:24', NULL),
(6, 2, 1, 87, '2020-02-24 00:08:19', NULL),
(7, 2, 3, 80, '2020-02-24 07:43:20', NULL),
(8, 4, 1, 85, '2020-02-26 13:22:10', NULL),
(9, 4, 2, 97, '2020-02-26 13:22:18', NULL),
(10, 4, 3, 78, '2020-02-26 13:22:26', NULL),
(11, 5, 1, 79, '2020-02-26 13:22:51', NULL),
(12, 5, 2, 80, '2020-02-26 13:23:00', NULL),
(13, 8, 1, 85, '2020-02-26 13:23:31', NULL),
(14, 8, 2, 88, '2020-02-26 13:23:39', NULL),
(15, 8, 3, 96, '2020-02-26 13:23:51', NULL),
(16, 9, 1, 90, '2020-02-26 13:24:06', NULL),
(17, 9, 3, 100, '2020-02-26 13:24:13', NULL),
(18, 10, 1, 85, '2020-02-26 13:24:33', NULL),
(19, 10, 2, 88, '2020-02-26 13:24:41', NULL),
(20, 10, 3, 90, '2020-02-26 13:24:49', NULL);

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
(1, '2020_02_12_153631_create_siswa_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `nama_depan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_belakang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `user_id`, `nama_depan`, `nama_belakang`, `jenis_kelamin`, `agama`, `alamat`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 0, 'Budi', 'Hartono', 'L', 'Islam', 'Jln Setu Bandung', 'akmal.PNG', NULL, '2020-02-19 21:07:15'),
(2, 0, 'Syahrul', 'Samsudin', 'L', 'Kristen', 'Jln Bogor Raya', NULL, NULL, NULL),
(3, 0, 'Tusti ', 'Mekarsari', 'P', 'Kristen', 'Jln. Setu Babakan', NULL, NULL, NULL),
(4, 0, 'Hera', 'Karmila', 'P', 'Islam', 'Jln. Wonosobo', NULL, NULL, '2020-02-13 08:10:06'),
(5, 0, 'Ardion', 'Arif', 'L', 'Kristen', 'Jakarta', NULL, NULL, '2020-02-13 08:10:33'),
(8, 3, 'Shinta', 'Chairunnisa', 'P', 'Islam', 'Kalisari', NULL, '2020-02-19 21:45:52', '2020-02-19 21:45:52'),
(9, 4, 'azhar', 'rasyad', 'L', 'islam', 'depok', NULL, '2020-02-20 21:28:20', '2020-02-20 21:28:20'),
(10, 6, 'Auzan', 'Assidqi', 'L', 'Islam', 'Jakarta Barat', 'bang yudo 2.PNG', '2020-02-22 01:49:49', '2020-02-22 01:50:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'aeda', 'aeda19@gmail.com', '$2y$10$B44cd./OlT9/W5sO.LQVmeppHPYDRhzKz1IG/FjDeT6CT/dEI8vxm', 'B4xyTDTe0PbcVY6xFD7XpdhwAhesCy45sjaCsbaprG36igUCMQJZzeRwanDO', '2020-02-15 06:36:54', '2020-02-15 06:36:54'),
(3, 'siswa', 'Shinta', 'shinta@gmail.com', '$2y$10$pngIzcK0YGlfdxPyrUsofeoVfgmE9dqe0L0YUkQjs1oSYN3JzF/1a', 'pDoNhSjW70bmid0yE88YxAXNMJ1XFDUM3YDVCRBTBE6oErufxfGpbVKEyIj7', '2020-02-19 21:45:52', '2020-02-19 21:45:52'),
(4, 'siswa', 'azhar', 'gkjelas@gmail.com', '$2y$10$BxsxrT4bW64k9KN1s62RFepqNVqwNDmrfuHCqp..DWrjJcnIhsAHC', 'Pgsq5w91txV8dncGv3kPe4MmnpAAHlcGaQCK4hK2jpUoT6LyzW9orHqXO8eT', '2020-02-20 21:28:19', '2020-02-20 21:28:19'),
(5, 'siswa', 'Herlina', 'herlina@gmail.com', '$2y$10$8SuGtAb.Zm2xJY/B/dj3UOSX5vy3b/nR3HAafT4P2LuYcZGydnAMa', 'V8bfND0PaMmZ1qASVGpLxfMVYlGSyYImeOsxJB7O7SPvygWhWE0wJp8oxOeN', '2020-02-22 01:26:28', '2020-02-22 01:26:28'),
(6, 'siswa', 'Auzan', 'auzan@gmail.com', '$2y$10$REO0RIpmAylub1L.rn80lurrRr7DqXqe6GZlqbfNRsT8/dPAEWvAe', 'gOpI2OBdXi1BZqg53gfXi1VjdDtMft8xNK4yamakskP7pXJ2Ee7hVNiYaQ4B', '2020-02-22 01:49:49', '2020-02-22 01:49:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapel_siswa`
--
ALTER TABLE `mapel_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mapel_siswa`
--
ALTER TABLE `mapel_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
