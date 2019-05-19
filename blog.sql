-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2019 at 10:22 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'science', '2019-05-17 07:28:23', '2019-05-17 07:28:23'),
(2, 'bollywood', '2019-05-17 07:29:41', '2019-05-17 07:29:41'),
(3, 'entertainment', '2019-05-17 07:29:51', '2019-05-17 07:29:51'),
(4, 'Politics', '2019-05-17 07:55:22', '2019-05-17 07:55:22'),
(5, 'Travel', '2019-05-17 07:55:52', '2019-05-17 07:55:52'),
(6, 'Oceans', '2019-05-17 07:55:55', '2019-05-17 07:55:55'),
(7, 'Technology', '2019-05-17 07:56:19', '2019-05-17 07:56:19'),
(8, 'science', '2019-05-17 22:41:06', '2019-05-17 22:41:06');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dislikes`
--

CREATE TABLE `dislikes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_05_17_095226_create_posts_table', 2),
(4, '2019_05_17_104901_create_categories_table', 2),
(5, '2019_05_17_104922_create_profiles_table', 2),
(6, '2019_05_17_104944_create_comments_table', 2),
(7, '2019_05_17_105005_create_likes_table', 2),
(8, '2019_05_17_105031_create_dislikes_table', 2);

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
  `user_id` int(11) NOT NULL,
  `post_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post_title`, `post_body`, `category_id`, `post_image`, `created_at`, `updated_at`) VALUES
(1, 1, 'wordpress', 'ccccc', 7, 'http://127.0.0.1/blog/public/posts/new doc 2019-01-13 14.43.07-1.jpg', '2019-05-18 07:33:42', '2019-05-19 00:17:40'),
(3, 6, 'wordpress', 'xyzaaaa post', 4, 'http://127.0.0.1/blog/public/posts/new doc 2019-01-13 15.00.51-2.jpg', '2019-05-19 01:22:34', '2019-05-19 01:22:34');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_pic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `name`, `designation`, `profile_pic`, `created_at`, `updated_at`) VALUES
(1, 1, 'jatinlalwani', 'developer', 'http://127.0.0.1/blog/public/uploads/new doc 2019-01-13 15.00.51-2.jpg', '2019-05-18 03:23:34', '2019-05-18 03:23:34'),
(2, 3, 'nobody', 'php developer', 'http://127.0.0.1/blog/public/uploads/new doc 2019-01-13 14.43.07-1.jpg', '2019-05-18 03:25:38', '2019-05-18 03:25:38'),
(3, 3, 'nobody', 'android developer', 'http://127.0.0.1/blog/public/uploads/new doc 2019-01-13 14.43.07-1.jpg', '2019-05-18 03:29:11', '2019-05-18 03:29:11'),
(4, 4, 'daavid', 'fuck boi', 'http://127.0.0.1/blog/public/uploads/new doc 2019-01-13 14.43.07-1.jpg', '2019-05-18 05:30:22', '2019-05-18 05:30:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'JATIN', 'jatinlalwani1997@gmail.com', '$2y$10$zDJRgR6maPT8t/TK7MyPzutTpuyLKHBrePrIMy9RoIajAKM9AauQm', '7Pja2xb9k6XLt0lGDCn5DxonNGok9GwYuIdNxcW3BL8f7hb4A0UgqZWy7UW0', '2019-05-15 08:41:01', '2019-05-15 08:41:01'),
(2, 'gaurav', 'gauravdhingra@gmail.com', '$2y$10$qD8qx1xIj2rT50PpRhbT1eeeHNjG4tMK.n/q3568SgDE7LeoepIye', 'IKnULrklEmCLgyardmRo1MmRJLSIulT4c2h4CGmtxNvM2bNcrfjQMAIGMIgP', '2019-05-15 08:42:43', '2019-05-15 08:42:43'),
(3, 'nobody', 'nobody1997@gmail.com', '$2y$10$kE.rxi2ITzcn9TqlFC6a7eJjjaai20PrMooObZeqY1OQAn/X.JZRu', 'msWyzVuRpaIacUPjYEqj3MHAGyJzkQuQLz6Q4jxNgT0BQZnV8iYRirQOrsKe', '2019-05-18 03:25:03', '2019-05-18 03:25:03'),
(4, 'daavid', 'daavid@gmail.com', '$2y$10$OXLYogcc0ANQuivkn6Hs2e8vrlxtibhnGFzatZSRtO/Mys5hvtKDi', 'ctkm6bsZ5dpp5M0Zcx9SmAhBl8CpN5RhAyZZgN8IaFKQy0EbPQ4Efbl3J8YM', '2019-05-18 05:22:06', '2019-05-18 05:22:06'),
(5, 'ayush', 'ayush@example.com', '$2y$10$YMAdg9y8A1QtXjMHUVQtLe.DeNvZfUY/VQOFnJnljNkUlaycIblli', 'ndQ4w7cWs5aXqhOUGinNcqpUCJgE3KO5AW8U4HkHKtFmI4D47quZSep21Bft', '2019-05-19 01:11:08', '2019-05-19 01:11:08'),
(6, 'xyzaaa', 'xyzaaa@mm.com', '$2y$10$UN.E/6K8xKAVvlAnHfvNXu/iuZDO3SH/W4u.dl617uNbMndT2JNq.', 'DZ1IaxwJTf2i5GcZ4sxhmDsoGxlCIxFbK9yFTK6YKxxPYzJKcMcARPdkODWg', '2019-05-19 01:18:28', '2019-05-19 01:18:28'),
(7, 'aayush', 'aayush@example.com', '$2y$10$O3K1V0/cR9Ca2rt/3QMUZuic.5hii9iYoBmNpCqS6OzMqruDh0lfG', NULL, '2019-05-19 01:25:03', '2019-05-19 01:25:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dislikes`
--
ALTER TABLE `dislikes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dislikes`
--
ALTER TABLE `dislikes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
