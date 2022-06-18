-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jun 2022 pada 17.16
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `motor`
--
CREATE DATABASE IF NOT EXISTS `motor` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `motor`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `brand_motor`
--

CREATE TABLE `brand_motor` (
  `id` int(11) NOT NULL,
  `nama_brand` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `brand_motor`
--

INSERT INTO `brand_motor` (`id`, `nama_brand`, `created_at`, `updated_at`) VALUES
(3, 'HONDA', '2022-06-18 05:27:03', '2022-06-18 05:27:03'),
(4, 'YAMAHA', '2022-06-18 05:27:22', '2022-06-18 05:27:22'),
(5, 'SUZUKI', NULL, NULL),
(6, 'BMW', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_cutomer`
--

CREATE TABLE `data_cutomer` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `tahun_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_testing`
--

CREATE TABLE `data_testing` (
  `id` int(5) NOT NULL,
  `id_dealer` int(11) NOT NULL,
  `dp` int(20) NOT NULL,
  `kontribusi` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_testing`
--

INSERT INTO `data_testing` (`id`, `id_dealer`, `dp`, `kontribusi`) VALUES
(1, 1, 600000, 8),
(2, 7, 500000, 2),
(3, 5, 2000000, 3),
(4, 8, 1000000, 4),
(5, 8, 1000000, 5),
(6, 9, 1000000, 5),
(7, 10, 900000, 5),
(8, 11, 800000, 10),
(9, 12, 1000000, 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_training`
--

CREATE TABLE `data_training` (
  `id` int(11) NOT NULL,
  `id_dealer` int(11) NOT NULL,
  `id_merk` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `dp` int(20) NOT NULL,
  `kontribusi` int(20) NOT NULL,
  `nama_grade` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_training`
--

INSERT INTO `data_training` (`id`, `id_dealer`, `id_merk`, `id_type`, `dp`, `kontribusi`, `nama_grade`) VALUES
(1, 1, 7, 1, 500000, 10, 'C'),
(2, 2, 7, 2, 500000, 5, 'A'),
(3, 3, 8, 3, 500000, 10, 'B'),
(4, 4, 8, 3, 500000, 5, 'A'),
(5, 5, 9, 4, 500000, 4, 'A'),
(6, 6, 7, 1, 500000, 8, 'B'),
(7, 8, 6, 5, 1000000, 5, 'C'),
(8, 9, 6, 5, 500000, 3, 'C'),
(9, 9, 6, 5, 1000000, 4, 'C');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dealer`
--

CREATE TABLE `dealer` (
  `id_dealer` int(11) NOT NULL,
  `nama_dealer` varchar(20) NOT NULL,
  `id_merk` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dealer`
--

INSERT INTO `dealer` (`id_dealer`, `nama_dealer`, `id_merk`, `id_type`, `alamat`, `no_telp`) VALUES
(1, 'AM', 7, 1, 'Jl. Kepanjen No. 32', '0341-334455'),
(2, 'RD', 7, 2, 'Jl. Ahmad Yani No. 30 Malang', '0341-333444'),
(3, 'PL', 8, 3, 'Jl. Capung No. 21, Malang', '0341-546789'),
(4, 'WJ', 8, 3, 'Jl. Keputih Malang', '0341-888999'),
(5, 'MT', 9, 4, 'Jl. Klayatan No. 50', '085773123456'),
(6, 'DY', 7, 1, 'Jl. supriadi No. 48', '085773123456'),
(7, 'IF', 7, 1, 'Jl. Sanggrah Malang', '0341-555555'),
(8, 'AH', 7, 1, 'Jl. Keputih Malang', '0341-334455'),
(9, 'KW', 6, 5, 'Jl. Kepanjen No. 32', '0341-334455'),
(10, 'SP', 8, 3, 'Jl. Klayatan No. 50', '0341-334455'),
(11, 'WHY', 8, 3, 'Jl. Capung No. 21, Malang', '0341-546789'),
(12, 'MK', 6, 5, 'Jl. Kepanjen No. 32', '0341-334455');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dealer_motor`
--

CREATE TABLE `dealer_motor` (
  `id` int(11) NOT NULL,
  `nama_dealer` varchar(45) DEFAULT NULL,
  `alamat` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dealer_motor`
--

INSERT INTO `dealer_motor` (`id`, `nama_dealer`, `alamat`) VALUES
(1, 'CEGER', 'Ciledug'),
(2, 'ABADI', 'Bintaro'),
(3, 'SELARAS', 'Surabaya');

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
-- Struktur dari tabel `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `klasifikasi_motor`
--

CREATE TABLE `klasifikasi_motor` (
  `id` int(11) NOT NULL,
  `grade` varchar(45) DEFAULT NULL,
  `created_at` varchar(45) DEFAULT NULL,
  `updated_at` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `klasifikasi_motor`
--

INSERT INTO `klasifikasi_motor` (`id`, `grade`, `created_at`, `updated_at`) VALUES
(1, 'A', NULL, NULL),
(2, 'B', NULL, NULL),
(3, 'C', NULL, NULL),
(4, 'D', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(150) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `uname`, `pass`, `foto`) VALUES
(4, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'foto.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_data_motor`
--

CREATE TABLE `master_data_motor` (
  `id` int(11) NOT NULL,
  `type_motor_id` int(11) DEFAULT NULL,
  `tahun_motor_id` int(11) DEFAULT NULL,
  `dealer_motor_id` int(11) DEFAULT NULL,
  `klasifikasi_motor_id` int(11) DEFAULT NULL,
  `harga` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `master_data_motor`
--

INSERT INTO `master_data_motor` (`id`, `type_motor_id`, `tahun_motor_id`, `dealer_motor_id`, `klasifikasi_motor_id`, `harga`) VALUES
(1, 1, 1, 1, 2, '12000000'),
(2, 1, 2, 1, 2, '14000000'),
(3, 1, 1, 2, 2, '11000000'),
(4, 1, 2, 3, 2, '20000000'),
(5, 2, 1, 3, 3, '30000000'),
(6, 1, 4, 1, 1, '15000000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `merk`
--

CREATE TABLE `merk` (
  `id_merk` int(11) NOT NULL,
  `nama_merk` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `merk`
--

INSERT INTO `merk` (`id_merk`, `nama_merk`) VALUES
(6, 'KAWASAKI'),
(7, 'HONDA'),
(8, 'YAMAHA'),
(9, 'SUZUKI');

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
(5, '2022_04_07_181841_create_kategoris_table', 1),
(6, '2022_05_02_155442_create_brands_table', 1),
(7, '2022_05_22_082141_create_produks_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_k`
--

CREATE TABLE `nilai_k` (
  `k` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai_k`
--

INSERT INTO `nilai_k` (`k`) VALUES
(1);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produks`
--

CREATE TABLE `produks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahun_motor`
--

CREATE TABLE `tahun_motor` (
  `id` int(11) NOT NULL,
  `tahun` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tahun_motor`
--

INSERT INTO `tahun_motor` (`id`, `tahun`) VALUES
(1, '2016'),
(2, '2017'),
(3, '2018'),
(4, '2019'),
(5, '2020');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_grade`
--

CREATE TABLE `tbl_grade` (
  `id_grade` int(11) NOT NULL,
  `nama_grade` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_grade`
--

INSERT INTO `tbl_grade` (`id_grade`, `nama_grade`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C');

-- --------------------------------------------------------

--
-- Struktur dari tabel `temp`
--

CREATE TABLE `temp` (
  `id` int(5) NOT NULL,
  `klasifikasi` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `temp`
--

INSERT INTO `temp` (`id`, `klasifikasi`) VALUES
(1, 'B'),
(2, 'B'),
(3, 'C'),
(4, 'C'),
(5, 'B'),
(6, 'C'),
(7, 'C'),
(8, 'C'),
(9, 'C');

-- --------------------------------------------------------

--
-- Struktur dari tabel `temp02`
--

CREATE TABLE `temp02` (
  `id` int(5) NOT NULL,
  `Vi` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `type`
--

CREATE TABLE `type` (
  `id_type` int(11) NOT NULL,
  `id_merk` int(11) NOT NULL,
  `nama_type` varchar(20) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `type`
--

INSERT INTO `type` (`id_type`, `id_merk`, `nama_type`, `keterangan`) VALUES
(1, 7, 'BEAT POP', 'Baru'),
(2, 7, 'REVO FIT', 'Baru'),
(3, 8, 'MIO M3', 'Baru'),
(4, 9, 'SATRIA', 'Baru'),
(5, 6, 'NINJA', 'Baru');

-- --------------------------------------------------------

--
-- Struktur dari tabel `type_motor`
--

CREATE TABLE `type_motor` (
  `id` int(11) NOT NULL,
  `brand_motor_id` int(11) DEFAULT NULL,
  `nama_motor` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `type_motor`
--

INSERT INTO `type_motor` (`id`, `brand_motor_id`, `nama_motor`) VALUES
(1, 3, 'Beat'),
(2, 3, 'Revo'),
(3, 4, 'Mio '),
(4, 4, 'Jupiter'),
(5, 5, 'Nex'),
(6, 5, 'Gsx'),
(7, 6, 'Bmw 01'),
(8, 6, 'Bmw 900');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$fbcMZV3oga5JnoufxSfqAOFJnxN7vgJj68LQITuHRPUps92tv8zR6', NULL, '2022-04-19 00:04:28', '2022-04-19 00:04:28');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `brand_motor`
--
ALTER TABLE `brand_motor`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_cutomer`
--
ALTER TABLE `data_cutomer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_testing`
--
ALTER TABLE `data_testing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_dealer` (`id_dealer`);

--
-- Indeks untuk tabel `data_training`
--
ALTER TABLE `data_training`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_dealer` (`id_dealer`),
  ADD KEY `id_merk` (`id_merk`),
  ADD KEY `id_type` (`id_type`),
  ADD KEY `id_dealer_2` (`id_dealer`);

--
-- Indeks untuk tabel `dealer`
--
ALTER TABLE `dealer`
  ADD PRIMARY KEY (`id_dealer`),
  ADD KEY `id_merk` (`id_merk`),
  ADD KEY `id_type` (`id_type`);

--
-- Indeks untuk tabel `dealer_motor`
--
ALTER TABLE `dealer_motor`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `klasifikasi_motor`
--
ALTER TABLE `klasifikasi_motor`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_data_motor`
--
ALTER TABLE `master_data_motor`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `merk`
--
ALTER TABLE `merk`
  ADD PRIMARY KEY (`id_merk`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `produks`
--
ALTER TABLE `produks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tahun_motor`
--
ALTER TABLE `tahun_motor`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_grade`
--
ALTER TABLE `tbl_grade`
  ADD PRIMARY KEY (`id_grade`);

--
-- Indeks untuk tabel `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id_type`),
  ADD KEY `id_merk` (`id_merk`);

--
-- Indeks untuk tabel `type_motor`
--
ALTER TABLE `type_motor`
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
-- AUTO_INCREMENT untuk tabel `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `brand_motor`
--
ALTER TABLE `brand_motor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `data_cutomer`
--
ALTER TABLE `data_cutomer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_testing`
--
ALTER TABLE `data_testing`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `data_training`
--
ALTER TABLE `data_training`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `dealer_motor`
--
ALTER TABLE `dealer_motor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `klasifikasi_motor`
--
ALTER TABLE `klasifikasi_motor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `produks`
--
ALTER TABLE `produks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_grade`
--
ALTER TABLE `tbl_grade`
  MODIFY `id_grade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `temp`
--
ALTER TABLE `temp`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data_testing`
--
ALTER TABLE `data_testing`
  ADD CONSTRAINT `data_testing_ibfk_1` FOREIGN KEY (`id_dealer`) REFERENCES `dealer` (`id_dealer`);

--
-- Ketidakleluasaan untuk tabel `data_training`
--
ALTER TABLE `data_training`
  ADD CONSTRAINT `data_training_ibfk_1` FOREIGN KEY (`id_dealer`) REFERENCES `dealer` (`id_dealer`),
  ADD CONSTRAINT `data_training_ibfk_2` FOREIGN KEY (`id_merk`) REFERENCES `merk` (`id_merk`),
  ADD CONSTRAINT `data_training_ibfk_3` FOREIGN KEY (`id_type`) REFERENCES `type` (`id_type`);

--
-- Ketidakleluasaan untuk tabel `dealer`
--
ALTER TABLE `dealer`
  ADD CONSTRAINT `dealer_ibfk_1` FOREIGN KEY (`id_merk`) REFERENCES `merk` (`id_merk`),
  ADD CONSTRAINT `dealer_ibfk_2` FOREIGN KEY (`id_type`) REFERENCES `type` (`id_type`);

--
-- Ketidakleluasaan untuk tabel `type`
--
ALTER TABLE `type`
  ADD CONSTRAINT `type_ibfk_1` FOREIGN KEY (`id_merk`) REFERENCES `merk` (`id_merk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
