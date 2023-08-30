-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Agu 2023 pada 19.52
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_radjacoffe`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `makanans`
--

CREATE TABLE `makanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `makanans`
--

INSERT INTO `makanans` (`id`, `name`, `description`, `price`, `image_url`, `created_at`, `updated_at`) VALUES
(3, 'Mie Aceh Basah', 'enak', '12000', 'https://tse3.mm.bing.net/th?id=OIP.HBlpZNMq2F_ylgFv-72m3AHaE8&pid=Api&P=0&h=180', '2023-08-30 10:48:00', '2023-08-30 10:48:00'),
(4, 'Mie Tumis', 'Enak Rasanya', '12000', 'https://tse3.mm.bing.net/th?id=OIP.eNa_4lo9JiJ8jaVW61Ot5gHaD3&pid=Api&P=0&h=180', '2023-08-30 10:48:45', '2023-08-30 10:48:45'),
(5, 'Mie Aceh Goreng', 'enak', '15000', 'https://tse4.mm.bing.net/th?id=OIP.xbIms0ZOFJnVWi7cOR3H3AHaFP&pid=Api&P=0&h=180', '2023-08-30 10:49:38', '2023-08-30 10:50:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_21_122957_create_products_table', 1),
(6, '2023_08_21_123018_create_products1_table', 1),
(7, '2023_08_21_123031_create_products2_table', 1),
(8, '2023_08_21_123044_create_products3_table', 1),
(9, '2023_08_21_123100_create_makanan_table', 1),
(10, '2023_08_30_104719_create_makanans_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'Personal Access Token', '12acb9d1a2b853ad2566c18d1b627aec299b2925c3e785bd22433d9a2e75a6c8', '[\"*\"]', NULL, NULL, '2023-08-26 02:48:38', '2023-08-26 02:48:38'),
(2, 'App\\Models\\User', 1, 'Personal Access Token', 'f67b6a55cf8f7b7ed56f9baec20cda356d5584131d45ea6581b5bfa622ba51d0', '[\"*\"]', NULL, NULL, '2023-08-26 03:24:56', '2023-08-26 03:24:56'),
(3, 'App\\Models\\User', 2, 'Personal Access Token', 'fcd954927bae2543d1b5c58d33c25e6b65ffd462c7c8674cf15b716d77f761d4', '[\"*\"]', NULL, NULL, '2023-08-26 03:28:56', '2023-08-26 03:28:56'),
(4, 'App\\Models\\User', 2, 'Personal Access Token', '2895513a906f422301ac4375a9d85c29359ed09c5006aaf876858ce413f1e09f', '[\"*\"]', NULL, NULL, '2023-08-26 03:29:03', '2023-08-26 03:29:03'),
(5, 'App\\Models\\User', 1, 'Personal Access Token', '8ad960cdba110d82bd1cc43877543aca5fd123422d4697a7da1ce20a7dad989d', '[\"*\"]', NULL, NULL, '2023-08-29 10:19:24', '2023-08-29 10:19:24'),
(6, 'App\\Models\\User', 3, 'Personal Access Token', '6795c0f183ac14abede4284284974e5914974cd2f6066e171f474b4fc1756ba7', '[\"*\"]', NULL, NULL, '2023-08-29 10:20:09', '2023-08-29 10:20:09'),
(7, 'App\\Models\\User', 3, 'Personal Access Token', '4a60d213eb2951747489e75dd5b2e882461ba7dec5943a5ce4396dedc16561a5', '[\"*\"]', NULL, NULL, '2023-08-29 10:20:30', '2023-08-29 10:20:30'),
(8, 'App\\Models\\User', 1, 'Personal Access Token', 'dce723132ac4e673ba3453f8a06c09f945a7aea84d1f6294695cc800bae62c42', '[\"*\"]', NULL, NULL, '2023-08-29 11:41:59', '2023-08-29 11:41:59'),
(9, 'App\\Models\\User', 1, 'Personal Access Token', 'e13802eadc9f251957c76b001c99951ffac8d17eedde1cc932d7275e999cb4d2', '[\"*\"]', NULL, NULL, '2023-08-30 09:18:04', '2023-08-30 09:18:04'),
(10, 'App\\Models\\User', 1, 'Personal Access Token', '1c2b812cb9d73d029f2efe9f70fcf2dc8d744869bf944958711ae8186b59decc', '[\"*\"]', NULL, NULL, '2023-08-30 09:18:55', '2023-08-30 09:18:55'),
(11, 'App\\Models\\User', 1, 'Personal Access Token', 'e31d4008464f69507c4e9b5afbdcc6a0b1002dedd40b53a0a4b9e898d3885f16', '[\"*\"]', NULL, NULL, '2023-08-30 09:20:26', '2023-08-30 09:20:26'),
(12, 'App\\Models\\User', 4, 'Personal Access Token', '5a72e2abef6876d88994c5d91ddfb65258ae84a2b1c1fcfda4c78e30293ca387', '[\"*\"]', NULL, NULL, '2023-08-30 09:20:52', '2023-08-30 09:20:52'),
(13, 'App\\Models\\User', 1, 'Personal Access Token', 'a9bf9e5a6474dcb2c95bb4fe142d69848fbcc82b240ad199cb24e70cb9e7e54d', '[\"*\"]', NULL, NULL, '2023-08-30 09:22:01', '2023-08-30 09:22:01'),
(14, 'App\\Models\\User', 5, 'Personal Access Token', 'e3cc69524f1f50a74f09954b56a7049ce782ffba194c3865dd2dfdff43a1abe5', '[\"*\"]', NULL, NULL, '2023-08-30 09:22:52', '2023-08-30 09:22:52'),
(15, 'App\\Models\\User', 5, 'Personal Access Token', 'a5987e3bd7484f95f355bd9bbc8aab7136cb336da9a894a1552c5caf810df5df', '[\"*\"]', NULL, NULL, '2023-08-30 09:23:32', '2023-08-30 09:23:32'),
(16, 'App\\Models\\User', 6, 'Personal Access Token', 'f9124c9e773cc28e6b7fe4681353e1cd8f090c847b20427a46da64f6fc85e573', '[\"*\"]', NULL, NULL, '2023-08-30 09:24:05', '2023-08-30 09:24:05'),
(17, 'App\\Models\\User', 1, 'Personal Access Token', '87c06b4c0d79966c6668f04792b6c04ed37fd67b7e15d70fe8d5f404676079a3', '[\"*\"]', NULL, NULL, '2023-08-30 09:24:52', '2023-08-30 09:24:52'),
(18, 'App\\Models\\User', 5, 'Personal Access Token', '328b63e0449d2cffb23e1f7246f4352699140190ae34adec595d787cf6e55c95', '[\"*\"]', NULL, NULL, '2023-08-30 09:25:09', '2023-08-30 09:25:09'),
(19, 'App\\Models\\User', 1, 'Personal Access Token', 'f38efb0d3bcf0c7f43f69f5db1a480a64785bad10f757a65fb06a9715aa430e2', '[\"*\"]', NULL, NULL, '2023-08-30 09:26:42', '2023-08-30 09:26:42'),
(20, 'App\\Models\\User', 1, 'Personal Access Token', 'd06e7c36847f779099f0a56c27325c97462af5fad1ed7bb17ce2fdf34e30beb1', '[\"*\"]', NULL, NULL, '2023-08-30 09:29:53', '2023-08-30 09:29:53'),
(21, 'App\\Models\\User', 1, 'Personal Access Token', '7f400b194f0bc2f5b5e487f12ba0ef59fb1513d1443a2c5c8ca3704a987f829f', '[\"*\"]', NULL, NULL, '2023-08-30 09:32:41', '2023-08-30 09:32:41'),
(22, 'App\\Models\\User', 1, 'Personal Access Token', 'b5e3b0b35344523a41a973969d137307a1544f0759b62e913514d50957d86fe8', '[\"*\"]', NULL, NULL, '2023-08-30 09:34:10', '2023-08-30 09:34:10'),
(23, 'App\\Models\\User', 1, 'Personal Access Token', '1856ae77dd5a6fed7bd4b25148d192bc1f400cf0c17bee508433cfb3f8b2a4fb', '[\"*\"]', NULL, NULL, '2023-08-30 10:00:46', '2023-08-30 10:00:46'),
(24, 'App\\Models\\User', 1, 'Personal Access Token', '20f3c633f42021da6f45ce6cb2177074b9add50eb1098bfe18a35849ca31fcd1', '[\"*\"]', NULL, NULL, '2023-08-30 10:17:27', '2023-08-30 10:17:27'),
(25, 'App\\Models\\User', 5, 'Personal Access Token', 'bf3661e96a640fcb7def71a67c3cfaf28c07b70000df0b1f95910715530ae016', '[\"*\"]', NULL, NULL, '2023-08-30 10:45:37', '2023-08-30 10:45:37'),
(26, 'App\\Models\\User', 1, 'Personal Access Token', '6fc88524ddaebd4a4716783913a7353f1ba6519ebabde396a6b7bd4fbbd9d1fc', '[\"*\"]', NULL, NULL, '2023-08-30 10:47:37', '2023-08-30 10:47:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 'Kopi Sanger Aceh', 'Sanger adalah campuran kopi hitam, susu kental manis dan gula. Secara fisik, sanger memang mirip kopi susu atau latte.', '7000', 'http://2.bp.blogspot.com/-fgKhR9Cw2fU/VjmEeOxwlWI/AAAAAAAAAs0/-ea2S9Bvz90/s1600/kopi%2Bsanger.jpg', '2023-08-29 10:04:39', '2023-08-30 09:32:52'),
(2, 'Espresso Bland', 'Espresso merupakan proses penyeduhan kopi dengan mengunakan tekanan tinggi.', '7000', 'https://tse2.mm.bing.net/th?id=OIP.PjskGARzNAYHAJHLIJD2qQHaE7&pid=Api&P=0&h=180', '2023-08-29 10:08:07', '2023-08-30 10:27:52'),
(3, 'Sanger Dingin', 'Sanger dingin cocoknya dikonsumsi pada saat makan siang atau kondisi Anda membutuhkan minuman dingin. Tapi bagi Anda dengan selera tertentu panas atau dingin, kapanpun dapat memesannya.', '10000', 'https://lh3.googleusercontent.com/-fnYlBDiUZmI/XQ2oZfxAvmI/AAAAAAAAaaU/zsN1rfTnFN0M-ugro6pynXL1BXg8jhEJgCLcBGAs/s1600/IMG_1839.JPG', '2023-08-29 10:32:39', '2023-08-30 10:31:02'),
(4, 'Sanger (Reguler)', 'Dingin Rasanya', '10000', 'https://tse2.mm.bing.net/th?id=OIP._lNwjPw20Pd17QnqnNTRLgHaFj&pid=Api&P=0&h=180', '2023-08-30 02:14:46', '2023-08-30 10:36:10'),
(5, 'Long Black', 'Kopi Hitam', '7000', 'https://tse2.mm.bing.net/th?id=OIP.LUVobbWGshOvnHgW8DspCwHaD9&pid=Api&P=0&h=180', '2023-08-30 02:20:40', '2023-08-30 10:37:38'),
(6, 'Long Black Dingin', 'Kopi Hitam', '7000', 'https://tse4.mm.bing.net/th?id=OIP.WLKHznsC2xWNqHEHAA4rBgHaE7&pid=Api&P=0&h=180', '2023-08-30 02:21:06', '2023-08-30 10:34:51'),
(9, 'Cappucino Panas', 'Enak', '6000', 'https://tse4.mm.bing.net/th?id=OIP.3thd4i6u3PRBaSZjOuE-uQHaFJ&pid=Api&P=0&h=180', '2023-08-30 02:22:40', '2023-08-30 10:38:17'),
(10, 'Cappucino Dingin', 'Enak', '10000', 'https://tse2.mm.bing.net/th?id=OIP.55FTwrXm-8L8BXa_W2rtHwAAAA&pid=Api&P=0&h=180', '2023-08-30 02:22:57', '2023-08-30 10:42:50'),
(11, 'Cappucino Cincau', 'Dingin Rasanya', '12000', 'https://tse3.mm.bing.net/th?id=OIP.aweGkZOh1dfBtSDQFtgDzgHaFL&pid=Api&P=0&h=180', '2023-08-30 02:23:24', '2023-08-30 10:43:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products1`
--

CREATE TABLE `products1` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products2`
--

CREATE TABLE `products2` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products3`
--

CREATE TABLE `products3` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Muhammad Azis', 'riskiazis8@gmail.com', '$2y$10$fhdVtjFREHyYJcZpwOucEODVeR8/vhVJYpbFR9EMoscl2HnMnh0rC', '2023-08-26 02:48:33', '2023-08-26 02:48:33'),
(2, 'Testing', 'testing@gmail.com', '$2y$10$TtrKdSQkhbp9RBZwZeZMn.0rBb4eHnUUWybnCK5bjijTvOIRVqnw.', '2023-08-26 03:28:56', '2023-08-26 03:28:56'),
(3, 'Testing 2', 'testing2@gmail.com', '$2y$10$tB7K5cWiw7n90xYr4K79Yep.hryQk.2dMoXsyygaxTdxloY/hQpYm', '2023-08-29 10:20:09', '2023-08-29 10:20:09'),
(4, 'Azis', 'azis@gmail.com', '$2y$10$T4mtWoyVPnham8Ji0legFOH1EK7N6VKcWscXj8Eq.Btiic.8oUluO', '2023-08-30 09:20:52', '2023-08-30 09:20:52'),
(5, 'Azis1', 'azis1@gmail.com', '$2y$10$3216SztI6cIUub0GfiF1HObbiZDaiHpuc5B9eqmwYWQmotAXA8ACy', '2023-08-30 09:22:52', '2023-08-30 09:22:52'),
(6, 'TESS', 'tes@gmail.com', '$2y$10$evuHQwoeU8JsQ1lVgvIqw.x1o/qSRJBEVwL1TB6qLLKGSPOC7zcwa', '2023-08-30 09:24:05', '2023-08-30 09:24:05');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `makanans`
--
ALTER TABLE `makanans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products1`
--
ALTER TABLE `products1`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products2`
--
ALTER TABLE `products2`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products3`
--
ALTER TABLE `products3`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `makanans`
--
ALTER TABLE `makanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `products1`
--
ALTER TABLE `products1`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products2`
--
ALTER TABLE `products2`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products3`
--
ALTER TABLE `products3`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
