-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2024 at 09:41 PM
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
-- Database: `cekj9458_kehadiran_dosen`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrators`
--

CREATE TABLE `administrators` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` char(255) NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `administrators`
--

INSERT INTO `administrators` (`id`, `nama`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'administrator 1', 'sambilansada@gmail.com', NULL, '$2y$12$PAkQAPqdsJIRknqrpR/QuuDa1vw1Wu/N3s7.wwP.NRtJktVXIikRq', NULL, '2024-04-25 06:46:54', '2024-04-25 20:46:54'),
(2, 'Rahman Amarullah', 'ra72garbp@gmail.com', NULL, '$2y$12$ZY0WUGzLoPffJGek.zkh7uFmoOXCvTH4IOX6hvScB7lCx6Nw1/44G', NULL, '2024-05-08 10:55:20', '2024-05-09 00:55:20');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` char(255) NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id_admin`, `nama`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Rahman Amarullah', 'ra72garbp@gmail.com', NULL, '$2y$12$ZY0WUGzLoPffJGek.zkh7uFmoOXCvTH4IOX6hvScB7lCx6Nw1/44G', NULL, '2024-05-08 17:55:20', '2024-05-09 00:55:20'),
(1, 'Admin 1', 'sambilansada@gmail.com', NULL, '$2y$12$PAkQAPqdsJIRknqrpR/QuuDa1vw1Wu/N3s7.wwP.NRtJktVXIikRq', NULL, '2024-04-25 13:46:54', '2024-04-25 20:46:54');

-- --------------------------------------------------------

--
-- Table structure for table `antrianbimbingan`
--

CREATE TABLE `antrianbimbingan` (
  `id_antrian` int(11) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `nama_mahasiswa` varchar(50) NOT NULL,
  `topik_ta` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL COMMENT 'Email Dosen bersangkutan',
  `waktu_pengajuan` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('Menunggu','Proses','Selesai') NOT NULL DEFAULT 'Menunggu'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `antrianbimbingan`
--

INSERT INTO `antrianbimbingan` (`id_antrian`, `nim`, `nama_mahasiswa`, `topik_ta`, `email`, `waktu_pengajuan`, `status`) VALUES
(31, '14117015', 'Andika Haris Pratama', 'Rancang Bangun Sistem Informasi Donasi Online Bahagia Bersama Anak Yatim', 'andika.setiawan@if.itera.ac.id', '2024-04-29 05:01:20', 'Selesai'),
(34, '14117015', 'Andika Haris Pratama', 'Rancang Bangun Sistem Informasi Donasi Online Bahagia Bersama Anak Yatim', 'andika.setiawan@if.itera.ac.id', '2024-04-29 07:30:30', 'Selesai'),
(43, '14117047', 'Adila Gita Risnanda', 'Penerapan Augmented Reality Pada Pengenalan Katalog Produk Ekspor Dengan Metode Marker Based Tracking (Studi Kasus: PT. Rollindo Rabbani Makmur)', 'eko.nugroho@if.itera.ac.id', '2024-05-17 08:04:06', 'Menunggu'),
(45, '120140041', 'Annike Stella Cova', 'Pengembangan Aplikasi Pengumuman Terpusat Berbasis Website Dengan Metode Feature Driven Development (FDD) (Studi Kasus : Program Studi Teknik Informatika Itera)', 'cahyo.untoro@if.itera.ac.id', '2024-05-18 17:41:06', 'Menunggu');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `dosens`
--

CREATE TABLE `dosens` (
  `id` bigint(24) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `nama` varchar(50) NOT NULL,
  `password` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inisial_dosen` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status_kehadiran` enum('Hadir','Tidak Hadir','Mengajar') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Tidak Hadir',
  `kesediaan_bimbingan` enum('Bersedia','Tidak') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Tidak',
  `slot_bimbingan` int(5) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dosens`
--

INSERT INTO `dosens` (`id`, `email`, `email_verified_at`, `nama`, `password`, `remember_token`, `inisial_dosen`, `status_kehadiran`, `kesediaan_bimbingan`, `slot_bimbingan`, `created_at`, `updated_at`) VALUES
(199104162019031015, 'aidil.afriansyah@if.itera.ac.id', NULL, 'Aidil Afriansyah, S.Kom., M.Kom.', '$2y$12$neiDl43PjvCQXlLdqAli5u9ha1uVWfgbicqIRRgqichdELoQzzRxW', NULL, 'AAF', 'Hadir', 'Bersedia', 0, '2024-04-23 06:50:53', '2024-05-17 04:52:20'),
(199111272022031007, 'andika.setiawan@if.itera.ac.id', NULL, 'Andika Setiawan S.Kom., M.Cs.', '$2y$12$neiDl43PjvCQXlLdqAli5u9ha1uVWfgbicqIRRgqichdELoQzzRxW', NULL, 'ANS', 'Hadir', 'Bersedia', 0, '2024-04-23 06:51:51', '2024-05-15 21:38:06'),
(198602142019031008, 'andre.febrianto@if.itera.ac.id', NULL, 'Andre Febrianto S.Kom., M.Eng', '$2y$12$neiDl43PjvCQXlLdqAli5u9ha1uVWfgbicqIRRgqichdELoQzzRxW', NULL, 'AFO', 'Mengajar', 'Tidak', 0, '2024-04-23 06:52:57', '2024-05-16 03:24:22'),
(198905182019031011, 'cahyo.untoro@if.itera.ac.id', NULL, 'Meida Cahyo Untoro, S.Kom., M.Kom.', '$2y$12$neiDl43PjvCQXlLdqAli5u9ha1uVWfgbicqIRRgqichdELoQzzRxW', NULL, 'MCU', 'Mengajar', 'Tidak', 0, '2024-04-23 06:55:34', '2024-05-16 00:24:42'),
(1991020920201279, 'eko.nugroho@if.itera.ac.id', NULL, 'Eko Dwi Nugroho, S.Kom., M.Cs.', '$2y$12$neiDl43PjvCQXlLdqAli5u9ha1uVWfgbicqIRRgqichdELoQzzRxW', NULL, 'EDN', 'Hadir', 'Bersedia', 0, '2024-04-23 06:56:06', '2024-05-15 21:44:25'),
(199303142019031018, 'firman.ashari@if.itera.ac.id', NULL, 'Ilham Firman Ashari, S.Kom., M.T.', '$2y$12$neiDl43PjvCQXlLdqAli5u9ha1uVWfgbicqIRRgqichdELoQzzRxW', NULL, 'IFA', 'Hadir', 'Tidak', 0, '2024-04-23 06:56:37', '2024-05-15 11:16:41'),
(123456, 'leslie.anggraini@if.itera.ac.id', NULL, 'Leslie Anggraini', '$2y$12$yHUUl7N5.6Fl2f/U2QEjWOwoan/BJIf7Lq76LkWVJ/E9oIfnAJSkm', NULL, 'LEA', 'Tidak Hadir', 'Tidak', 0, '2024-05-18 17:31:01', '2024-05-19 00:31:01'),
(7, 'miranti.verdiana@if.itera.ac.id', NULL, 'Miranti Verdiana, M.Si.', '$2y$12$neiDl43PjvCQXlLdqAli5u9ha1uVWfgbicqIRRgqichdELoQzzRxW', NULL, 'MIV', 'Tidak Hadir', 'Tidak', 0, '2024-04-23 06:57:31', '2024-04-28 12:34:00'),
(198509212019031012, 'mugi.praseptiawan@if.itera.ac.id', NULL, 'Ir. Mugi Praseptiawan, S.T., M.Kom.', '$2y$12$neiDl43PjvCQXlLdqAli5u9ha1uVWfgbicqIRRgqichdELoQzzRxW', NULL, 'MPS', 'Tidak Hadir', 'Tidak', 0, '2024-04-23 06:58:03', '2024-05-15 11:26:07'),
(199105252022031002, 'muhammad.algifari@if.itera.ac.id', NULL, 'Muhammad Habib Algifari, S.Kom., M.T.I.', '$2y$12$neiDl43PjvCQXlLdqAli5u9ha1uVWfgbicqIRRgqichdELoQzzRxW', NULL, 'MHA', 'Tidak Hadir', 'Tidak', 0, '2024-04-23 06:59:04', '2024-05-15 11:26:16'),
(199411272020121018, 'radhinka.bagaskara@if.itera.ac.id', NULL, 'Radhinka Bagaskara, S.Si.Kom., M.Si., M.Sc.', '$2y$12$neiDl43PjvCQXlLdqAli5u9ha1uVWfgbicqIRRgqichdELoQzzRxW', NULL, 'RDB', 'Tidak Hadir', 'Tidak', 0, '2024-04-23 07:29:37', '2024-05-15 11:26:22'),
(11, 'sarwono.sutikno@if.itera.ac.id', NULL, 'Sarwono Sutikno, Dr.Eng.,CSX-F,IIAP,CC', '$2y$12$neiDl43PjvCQXlLdqAli5u9ha1uVWfgbicqIRRgqichdELoQzzRxW', NULL, 'SAS', 'Tidak Hadir', 'Tidak', 0, '2024-04-23 07:53:20', '2024-04-28 12:34:15'),
(199307272022032022, 'winda.yulita@if.itera.ac.id', NULL, 'Winda Yulita, M.Cs.', '$2y$12$neiDl43PjvCQXlLdqAli5u9ha1uVWfgbicqIRRgqichdELoQzzRxW', NULL, 'WIY', 'Hadir', 'Bersedia', 0, '2024-04-23 07:53:55', '2024-05-15 22:57:49');

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
-- Table structure for table `jam_bimbingan`
--

CREATE TABLE `jam_bimbingan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `mahasiswas`
--

CREATE TABLE `mahasiswas` (
  `nim` int(11) NOT NULL,
  `nama` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` char(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topik_ta` varchar(255) NOT NULL,
  `dosbing1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dosbing2` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Table Data Mahasiswa';

--
-- Dumping data for table `mahasiswas`
--

INSERT INTO `mahasiswas` (`nim`, `nama`, `email`, `email_verified_at`, `password`, `remember_token`, `topik_ta`, `dosbing1`, `dosbing2`, `created_at`, `updated_at`) VALUES
(14117001, 'Tasya Karinda Wardani', 'tasya.14117001@student.itera.ac.id', NULL, '$2y$12$JL68L5yPeFt3WAAh3J7w2OoWiy3cEEPm73yeNKULhK0OnCJcOv/u.', NULL, 'Sistem Pendukung Keputusan untuk Seleksi Calon Konsumen KPR Menggunakan Metode Analytic Hierrarchy Process (Studi Kasus: PT. XYZ)', 'andika.setiawan@if.itera.ac.id', 'cahyo.untoro@if.itera.ac.id', '2024-04-24 09:20:02', '2024-05-19 01:09:18'),
(14117015, 'Andika Haris', 'andika.14117015@student.itera.ac.id', NULL, '$2y$12$ZY0WUGzLoPffJGek.zkh7uFmoOXCvTH4IOX6hvScB7lCx6Nw1/44G', NULL, 'Sistem Informasi Donasi Online Bahagia Bersama Anak Yatim (BBAY) Dengan Metode Rapid Application Development (RAD)', 'aidil.afriansyah@if.itera.ac.id', 'andika.setiawan@if.itera.ac.id', '2024-04-15 05:01:00', '2024-05-15 03:51:51'),
(14117018, 'Jeans Prima Simaremare', 'jeans.14117018@student.itera.ac.id', NULL, '$2y$12$ZY0WUGzLoPffJGek.zkh7uFmoOXCvTH4IOX6hvScB7lCx6Nw1/44G', NULL, 'Ekstraksi DAN KLASIFIKASI KATA DASAR DARI DOKUMEN BERBAHASA BATAK TOBA DENGAN ALGORITMA PORTER STEMMER DAN LIKELIHOOD', 'aidil.afriansyah@if.itera.ac.id', 'radhinka.bagaskara@if.itera.ac.id', '2024-04-28 23:23:37', '2024-05-19 01:11:25'),
(14117033, 'Dewa Ayu Putu Widiasari', 'dewa.14117033@student.itera.ac.id', NULL, '$2y$12$ZY0WUGzLoPffJGek.zkh7uFmoOXCvTH4IOX6hvScB7lCx6Nw1/44G', NULL, 'PERBANDINGAN METODE MAXIMUM MARGINAL RELEVANCE (MMR) DENGAN METODE TEXTRANK PADA PERINGKASAN TEKS BERITA OTOMATIS', 'winda.yulita@if.itera.ac.id', 'cahyo.untoro@if.itera.ac.id', '2024-04-28 23:41:46', '2024-04-29 06:41:46'),
(14117039, 'Liga Septian', 'liga.14117039@student.itera.ac.id', NULL, '$2y$12$ZY0WUGzLoPffJGek.zkh7uFmoOXCvTH4IOX6hvScB7lCx6Nw1/44G', NULL, 'PERBANDINGAN METODE UNDERSAMPING DAN OVERSAMPLING DALAM MENENTUKAN ALGORITMA REBALANCE', 'cahyo.untoro@if.itera.ac.id', NULL, '2024-04-21 22:41:47', '2024-05-19 01:26:25'),
(14117047, 'Adila Gita Risnanda', 'adila.14117047@student.itera.ac.id', NULL, '$2y$12$ZY0WUGzLoPffJGek.zkh7uFmoOXCvTH4IOX6hvScB7lCx6Nw1/44G', NULL, 'Penerapan Augmented Reality Pada Pengenalan Katalog Produk Ekspor Dengan Metode Marker Based Tracking (Studi Kasus: PT. Rollindo Rabbani Makmur)', 'eko.nugroho@if.itera.ac.id', 'aidil.afriansyah@if.itera.ac.id', '2024-04-28 23:47:39', '2024-05-17 13:30:10'),
(14117053, 'Hendri Tri Putra', 'hendri.14117053@student.itera.ac.id', NULL, '$2y$12$ZY0WUGzLoPffJGek.zkh7uFmoOXCvTH4IOX6hvScB7lCx6Nw1/44G', NULL, 'SISTEM INFORMASI SURAT MENYURAT BERBASIS WEB MENGGUNAKAN API WHATSAPP DAN VALIDASI QR CODE DENGAN METODE WATERFALL (STUDI KASUS: BANK LAMPUNG)', 'mugi.praseptiawan@if.itera.ac.id', 'miranti.verdiana@if.itera.ac.id', '2024-04-28 23:16:48', '2024-04-29 06:16:48'),
(14117055, 'Aldi Indrawan', 'aldi.14117055@student.itera.ac.id', NULL, '$2y$12$ZY0WUGzLoPffJGek.zkh7uFmoOXCvTH4IOX6hvScB7lCx6Nw1/44G', NULL, 'RANCANG BANGUN SISTEM INFORMASI TUGAS AKHIR DENGAN METODE AGILE SOFTWARE DEVELOPMENT STUDI KASUS: TEKNIK INFORMATIKA INSTITUT TEKNOLOGI SUMATERA', 'firman.ashari@if.itera.ac.id', 'andika.setiawan@if.itera.ac.id', '2024-04-28 23:41:46', '2024-04-29 06:41:46'),
(14117089, 'Anggara Maulana Mafdivia', 'anggara.14117089@student.itera.ac.id', NULL, '$2y$12$ZY0WUGzLoPffJGek.zkh7uFmoOXCvTH4IOX6hvScB7lCx6Nw1/44G', NULL, 'IMPLEMENTASI PEMODELAN CNN PADA SPEECH EMOTION RECOGNITION UNTUK DETEKSI EMOSI PADA REKAMAN SUARA MENGGUNAKAN  BAHASA INDONESIA', 'andika.setiawan@if.itera.ac.id', 'winda.yulita@if.itera.ac.id', '2024-04-28 23:31:33', '2024-04-29 06:31:33'),
(14117092, 'Yose Alloisius Saragih', 'yose.14117092@student.itera.ac.id', NULL, '$2y$12$dQFHM6xYSX1oAWU2HhHb6OmnrTHU34.bB8f2B/YmgNv4Z8Ih0AdOa', NULL, 'ANALISIS SENTIMEN PUBLIK TERHADAP CALON PRESIDEN REPUBLIK INDONESIA PADA PEMILU 2024 MENGGUNAKAN METODE IndoBERT', 'andika.setiawan@if.itera.ac.id', 'muhammad.algifari@if.itera.ac.id', '2024-05-14 19:41:28', '2024-05-15 02:41:28'),
(14117098, 'Riwandy', 'riwandy.14117098@student.itera.ac.id', NULL, '$2y$12$ZY0WUGzLoPffJGek.zkh7uFmoOXCvTH4IOX6hvScB7lCx6Nw1/44G', NULL, 'Rancang Bangun Sistem Informasi Pengelolaan Asisten Praktikum Lab. Teknik Informatika ITERA', 'aidil.afriansyah@if.itera.ac.id', 'andika.setiawan@if.itera.ac.id', '2024-04-28 23:51:03', '2024-04-29 15:23:01'),
(14117100, 'Hamba Allah', 'hamba.allah@gmail.com', NULL, '$2y$12$ZY0WUGzLoPffJGek.zkh7uFmoOXCvTH4IOX6hvScB7lCx6Nw1/44G', NULL, 'Analisis Metode ABCDEFG Terhadap Objek XYZ', 'andika.setiawan@if.itera.ac.id', 'amirul.iqbal@if.itera.ac.id', '2024-04-13 06:47:49', '2024-04-15 11:27:53'),
(14117101, 'Robby Legitra Kurniawan', 'robby.14117101@student.itera.ac.id', NULL, '$2y$12$ZY0WUGzLoPffJGek.zkh7uFmoOXCvTH4IOX6hvScB7lCx6Nw1/44G', NULL, 'PENERAPAN TEKNOLOGI AUGMENTED REALITY PADA KOTAK OBAT LANSIA DENGAN MENGGUNAKAN METODE MARKER BASED', 'aidil.afriansyah@if.itera.ac.id', 'mugi.praseptiawan@if.itera.ac.id', '2024-04-28 23:16:48', '2024-04-29 06:16:48'),
(14117109, 'Steven Hermadoni', 'steven.14117109@student.itera.ac.id', NULL, '$2y$12$ZY0WUGzLoPffJGek.zkh7uFmoOXCvTH4IOX6hvScB7lCx6Nw1/44G', NULL, 'Rancang bangun sistem informasi dashboard berbasis website menggunakan metode RAD ( Rapid Application Development).\r\nStudi kasus : Prosus Inten.', 'muhammad.algifari@if.itera.ac.id', 'andika.setiawan@if.itera.ac.id', '2024-04-28 23:31:33', '2024-04-29 06:31:33'),
(14117112, 'M. Yafi Fahmi', 'muhammad.14117112@student.itera.ac.id', NULL, '$2y$12$ZY0WUGzLoPffJGek.zkh7uFmoOXCvTH4IOX6hvScB7lCx6Nw1/44G', NULL, 'RANCANG BANGUN SISTEM INFORMASI LABORATORIUM PROGRAM STUDI TEKNIK INFORMATIKA INSTITUT TEKNOLOGI SUMATERA DENGAN METODE PERSONAL EXTREME PROGRAMMING', 'aidil.afriansyah@if.itera.ac.id', 'firman.ashari@if.itera.ac.id', '2024-04-28 23:23:37', '2024-04-29 06:23:37'),
(14117117, 'M Rizki Ramadhan', 'm.14117117@student.itera.ac.id', NULL, '$2y$12$ZY0WUGzLoPffJGek.zkh7uFmoOXCvTH4IOX6hvScB7lCx6Nw1/44G', NULL, 'SISTEM MONITORING DAN PENYIRAMAN OTOMATIS TANAMAN TOMAT BERBASIS INTERNET OF THINGS MENGGUNAKAN METODE FUZZY SUGENO', 'cahyo.untoro@if.itera.ac.id', 'aidil.afriansyah@if.itera.ac.id', '2024-04-13 06:58:36', '2024-04-13 13:58:36'),
(14117126, 'Said Rizky Abizard ', 'said.14117126@student.itera.ac.id', NULL, '$2y$12$ZY0WUGzLoPffJGek.zkh7uFmoOXCvTH4IOX6hvScB7lCx6Nw1/44G', NULL, 'Deteksi Berita Hoax Menggunakan Metode Support Vector Machine Pada Berita Online di Provinsi Lampung', 'cahyo.untoro@if.itera.ac.id', NULL, '2024-04-15 04:31:40', '2024-04-15 11:31:40'),
(14117135, 'Rahman Amarullah Siregar', 'rahman.14117135@student.itera.ac.id', NULL, '$2y$12$dvMwT4nV6Eq/AEg4SxVHt.OPHnv99J6GIcZvllLwTPdwC5VQonuvC', NULL, 'APLIKASI INFORMASI KEHADIRAN DOSEN DAN PENJADWALAN BIMBINGAN TUGAS AKHIR TEKNIK INFORMATIKA ITERA DENGAN MODIFIED WATERFALL', 'aidil.afriansyah@if.itera.ac.id', 'firman.ashari@if.itera.ac.id', '2024-04-28 13:32:23', '2024-05-19 01:07:55'),
(14117142, 'Deniesh Nathanael Virginiel', 'deniesh.14117142@student.itera.ac.id', NULL, '$2y$12$ZY0WUGzLoPffJGek.zkh7uFmoOXCvTH4IOX6hvScB7lCx6Nw1/44G', NULL, 'MODEL SISTEM REKOMENDASI INDEKOS ITERA MENGGUNAKAN CONTENT-BASED FILTERING DAN COLLABORATIVE FILTERING', 'cahyo.untoro@if.itera.ac.id', NULL, '2024-04-28 05:31:17', '2024-04-28 12:31:17'),
(14117145, 'Muhammad Telaga Nur Handi Nindita', 'muhammad.14117145@student.itera.ac.id', NULL, '$2y$12$VBwiTevfplbGY7bgenynW.9aSfHuyXroBk7r16if1xPqEOAngknUu', NULL, 'SISTEM INFORMASI ELECTRONIC DOCUMENT INTEGRATION (EDI) BERBASIS WEBSITE DAN MOBILE MENGGUNAKAN METODE RAD ( STUDI KASUS : CV. TGEXPRESS)', 'andre.febrianto@if.itera.ac.id', 'muhammad.algifari@if.itera.ac.id', '2024-05-14 03:00:13', '2024-05-14 10:41:45'),
(14117148, 'Ratu Mega Aprillia', 'ratu.14117148@student.itera.ac.id', NULL, '$2y$12$ZY0WUGzLoPffJGek.zkh7uFmoOXCvTH4IOX6hvScB7lCx6Nw1/44G', NULL, 'Klasifikasi Ulasan Palsu pada produk kosmetik menggunakan XGBoost', 'andika.setiawan@if.itera.ac.id', 'miranti.verdiana@if.itera.ac.id', '2024-04-28 23:47:39', '2024-04-29 06:47:39'),
(14117153, 'Christio Danny Gratia Ambarita', 'christio.14117153@student.itera.ac.id', NULL, '$2y$12$ZY0WUGzLoPffJGek.zkh7uFmoOXCvTH4IOX6hvScB7lCx6Nw1/44G', NULL, 'PERBANDINGAN JARAK EUCLIDEAN DENGAN MANHATTAN PADA DATASET STEAM DENGAN MULTI-CLASS CONFUSION MATRIX', 'cahyo.untoro@if.itera.ac.id', 'firman.ashari@if.itera.ac.id', '2024-04-28 23:31:33', '2024-04-29 06:31:33'),
(14117166, 'Rozi Alqomar', 'rozi.14117166@student.itera.ac.id', NULL, '$2y$12$ZY0WUGzLoPffJGek.zkh7uFmoOXCvTH4IOX6hvScB7lCx6Nw1/44G', NULL, 'Perancangan sistem pemesanan makanan dan minuman berbasis web mobile ( Studi Kasus : Caffe Putti Roofspace)', 'andre.febrianto@if.itera.ac.id', 'andika.setiawan@if.itera.ac.id', '2024-04-22 17:34:35', '2024-04-23 00:34:35'),
(14117170, 'Gusti Nugroho', 'gusti.14117170@student.itera.ac.id', NULL, '$2y$12$ZY0WUGzLoPffJGek.zkh7uFmoOXCvTH4IOX6hvScB7lCx6Nw1/44G', NULL, 'PURWARUPA SISTEM PERINGATAN DINI PADA BANJIR BERBASIS INTERNET OF THINGS UNTUK MENANGANI BANJIR', 'mugi.praseptiawan@if.itera.ac.id', 'eko.nugroho@if.itera.ac.id', '2024-04-28 23:47:39', '2024-04-29 06:47:39'),
(14117179, 'CIKAL ARVI YULIAWAN', 'cikal.14117179@student.itera.ac.id', NULL, '$2y$12$ZY0WUGzLoPffJGek.zkh7uFmoOXCvTH4IOX6hvScB7lCx6Nw1/44G', NULL, 'ANALISIS PERBANDINGAN DISTANCE MEASURE PADA ALGORITMA K-MEANS CLUSTERING DALAM TINGKAT KRIMINALITAS MENGGUNAKAN METODE EVALUASI SILHOUETTE COEFFICIENT (STUDI KASUS : WILAYAH BANDAR LAMPUNG)', 'andika.setiawan@if.itera.ac.id', '', '2024-04-28 23:41:46', '2024-05-19 01:26:56'),
(118140025, 'Mahdia Nisrina Maharani M', 'mahdia.118140025@student.itera.ac.id', NULL, '$2y$12$pQjTnnQ.l8Zf6Q/rFlnZLO6P.wKKeP6.QljVOi8WaxqXEv6bAj99C', NULL, 'RANCANG BANGUN SISTEM INFORMASI PENYEWAAN ALAT BERAT BERBASIS WEB MENGGUNAKAN METODE AGILE (STUDI KASUS : PT. TRAS RENTAL UTAMA EKAMULYA)', 'aidil.afriansyah@if.itera.ac.id', 'radhinka.bagaskara@if.itera.ac.id', '2024-05-14 20:18:37', '2024-05-15 03:18:37'),
(118140148, 'Ramadhanu Britan Linardi', 'ramadhanu.118140148@student.itera.ac.id', NULL, '$2y$12$ZY0WUGzLoPffJGek.zkh7uFmoOXCvTH4IOX6hvScB7lCx6Nw1/44G', NULL, 'SISTEM PAKAR REKOMENDASI PEMILIHAN ALAT CAMPING MENGGUNAKAN METODE FORWARD CHAINING', 'andika..setiawan@if.itera.ac.id', 'miranti.verdiana@if.itera.ac.id', '2024-04-29 08:02:09', '2024-04-29 15:02:09'),
(119140023, 'Dodi Devrian Andrianto', 'dodi.119140023@student.itera.ac.id', NULL, '$2y$12$ZY0WUGzLoPffJGek.zkh7uFmoOXCvTH4IOX6hvScB7lCx6Nw1/44G', NULL, 'Rancang Bangun Sistem Informasi Kursus Online Praktikum Berbasis Website Menggunakan Metode Extreme Programming (Studi Kasus : Laboratorium Teknik Informatika ITERA)', 'andika.setiawan@if.itera.ac.id', 'aidil.afriansyah@if.itera.ac.id', '2024-04-29 00:00:52', '2024-04-29 07:00:52'),
(119140079, 'Ahmad Adriansyah Hasibuan', 'ahmad.119140079@student.itera.ac.id', NULL, '$2y$12$ZY0WUGzLoPffJGek.zkh7uFmoOXCvTH4IOX6hvScB7lCx6Nw1/44G', NULL, 'Perbandingan Metode Support Vector Machine Dan K-Nearest Neighbor Dalam Klasifikasi Gangguan Tidur', 'winda.yulita@if.itera.ac.id', 'miranti.verdiana@if.itera.ac.id', '2024-04-29 00:00:52', '2024-04-29 07:00:52'),
(119140162, 'Rendy Noor Darmawan', 'rendy.119140162@student.itera.ac.id', NULL, '$2y$12$ZY0WUGzLoPffJGek.zkh7uFmoOXCvTH4IOX6hvScB7lCx6Nw1/44G', NULL, 'RANCANG BANGUN SISTEM INVENTORY BARANG BERBASIS WEBSITE MENGGUNAKAN METODE RAPID APPLICATION DEVELOPMENT (Studi Kasus : CV. Panca Manunggal Abadi )', 'aidil.afriansyah@if.itera.ac.id', 'mugi.praseptiawan@if.itera.ac.id', '2024-04-29 00:00:52', '2024-04-29 07:49:44'),
(119140163, 'Lucky Febrian', 'lucky.119140163@student.itera.ac.id', NULL, '$2y$12$lZDG98a3k54SKcalcpu.FOJ9tKXiz.6tyYSDxokfGKiBFyl2X/Gva', NULL, 'Pengembangan ABC dengan Metode TUV', 'andre.febrianto@if.itera.ac.id', 'mugi.praseptiawan@if.itera.ac.id', '2024-05-18 15:27:02', '2024-05-18 22:27:02'),
(119140202, 'Khoirunnisa Samrotul Zannah', 'khoirun.119140202@student.itera.ac.id', NULL, '$2y$12$1JEFxMh5GM15ilOTrhWUGOl1ugV2CoUjR4FHbttMK30Xw6JPhI3ie', NULL, 'Rancang Bangun Sistem Informasi Manajemen Pengendalian Menara Telekomunikasi (Studi Kasus : Diskominfo Lampung Utara)', 'aidil.afriansyah@if.itera.ac.id', 'mugi.praseptiawan@if.itera.ac.id', '2024-05-18 18:48:44', '2024-05-19 01:49:28'),
(120140015, 'Debora Sidabutar', 'debora.120140015@student.itera.ac.id', NULL, '$2y$12$Vf.mrJd8CU0LBDkLkP9VHeSwEf5dyhfZhFyNj.dR7VCJ9ZWWuo5iq', NULL, 'Implementasi Aplikasi Monitoring Hasil Produksi Pucuk Daun Teh Berbasis Web Dengan Metode Modified Waterfall (Studi Kasus : PTPN IV Unit Usaha Afdeling Tob II)', 'mugi.praseptiawan@if.itera.ac.id', 'andre.febrianto@if.itera.ac.id', '2024-05-18 17:46:38', '2024-05-19 00:46:38'),
(120140041, 'Annike Stella Cova', 'annike.120140041@student.itera.ac.id', NULL, '$2y$12$yga680snHoUoKrBJdIq7xOZKYJB2eSv6qt/32M1JoY4EHpHy31lw6', NULL, 'Pengembangan Aplikasi Pengumuman Terpusat Berbasis Website Dengan Metode Feature Driven Development (FDD) (Studi Kasus : Program Studi Teknik Informatika Itera)', 'muhammad.algifari@if.itera.ac.id', 'cahyo.untoro@if.itera.ac.id', '2024-05-18 17:39:46', '2024-05-19 00:42:26');

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
(1, '2024_04_08_053240_coba_migrasi', 1),
(2, '2024_04_08_053240_tambah_keahlian_dosen', 2),
(3, '0001_01_01_000001_create_cache_table', 3),
(4, '0001_01_01_000002_create_jobs_table', 3),
(5, '2024_04_25_231029_create_jam_bimbingan_table', 4);

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` char(40) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('2X8NxbMaISmsEBlc9bDoU3wgQxVFortVqPkKaIuu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRVdFZTg3RXRNMkUzWnViTkJ5anpLQ2tqZndWcWZOWThPYk9oQ2tzbyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyODoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL2xvZ291dCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjYwOiJsb2dpbl9hZG1pbmlzdHJhdG9yXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1716051679),
('6pSPph3ZOfitqtTGHUFIfmSU6w3HpjCk2LUNAu0P', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMzRMUnhRMU9oV2NvakZ4MmRBeWljUEdYSm43UTlKV1RpamlTNHluWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbmlzdHJhdG9yLWRhc2hib2FyZC8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo2MDoibG9naW5fYWRtaW5pc3RyYXRvcl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1716059676),
('MO72RdWuvEwK9NHAO86eY13qoV7TvC3DmMAeXniW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTWc5WlVNeGFwenIxb1ZUOXhMNmw3WmxEaEYyelZxekpMVWRjY2pRaiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjA6ImxvZ2luX2FkbWluaXN0cmF0b3JfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1716051497),
('oiQfhVQByYDFG5JintshDGDUooW2KsLbUP1C9uqj', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTUVzUHpQS1NVSTduNzNKeWRSMzE1NUJRSlBmWXB0Um0xVEpzc2RrSiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjA6ImxvZ2luX2FkbWluaXN0cmF0b3JfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1716051643),
('q1xYtyPmG1E5PsyuzDw51tcDBeIMaRHD6CAmYQWU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoibThkU1g4aEMxV1d1ZDJxT29abDllQWpSWXBZd1FreDByRUVQMXNoTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6NTE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9tYWhhc2lzd2EtZGFzaGJvYXJkLzEyMDE0MDA0MSI7fXM6NjA6ImxvZ2luX2FkbWluaXN0cmF0b3JfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1716061240),
('W3aUAhznHfLCMcKMkOpqhLu2X9LJSol42wfKa02L', 14117135, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoibVREZWZPeXN5enpFUXVRczdjdHYxbVFMR1ZqZ2t6NzlhNldSdG93bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9tYWhhc2lzd2EtZGFzaGJvYXJkLzE0MTE3MTM1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyODoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL2xvZ291dCI7fXM6NTY6ImxvZ2luX21haGFzaXN3YV81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE0MTE3MTM1O30=', 1716059913);

-- --------------------------------------------------------

--
-- Table structure for table `statushadirdosen`
--

CREATE TABLE `statushadirdosen` (
  `id_status` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `status_kehadiran` enum('Hadir','Tidak Hadir','Mengajar') NOT NULL,
  `kesediaan_bimbingan` enum('Bersedia','Tidak') DEFAULT NULL,
  `slot_bimbingan` int(5) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `statushadirdosen`
--

INSERT INTO `statushadirdosen` (`id_status`, `email`, `tanggal`, `status_kehadiran`, `kesediaan_bimbingan`, `slot_bimbingan`, `keterangan`, `updated_at`) VALUES
(1, 'aidil.afriansyah@if.itera.ac.id', '2024-04-18', 'Hadir', 'Bersedia', 5, 'di kantor prodi', '2024-04-28 02:51:02'),
(2, 'andika.setiawan@if.itera.ac.id', '2024-04-18', 'Hadir', 'Bersedia', 5, 'kelas drpl', '2024-04-28 02:09:08'),
(3, 'eko.nugroho@if.itera.ac.id', '2024-04-18', 'Mengajar', 'Bersedia', NULL, 'Di ruang prodi', '2024-04-26 08:15:05'),
(4, 'muhammad.algifari@if.itera.ac.id', '2024-04-18', 'Mengajar', 'Bersedia', NULL, NULL, '2024-04-26 08:15:05'),
(5, 'cahyo.untoro@if.itera.ac.id', '2024-04-18', 'Hadir', 'Bersedia', 5, 'Di Kantor Prodi\r\n', '2024-05-14 22:38:42'),
(6, 'firman.ashari@if.itera.ac.id', '2024-04-18', 'Mengajar', 'Tidak', 5, 'Di Kantor Prodi\r\n', '2024-04-28 21:52:33'),
(7, 'radhinka.bagaskara@if.itera.ac.id', '2024-04-18', 'Hadir', 'Bersedia', NULL, 'Di Kantor Prodi\r\n', '2024-04-26 08:15:05'),
(8, 'mugi.praseptiawan@if.itera.ac.id', '2024-04-18', 'Hadir', 'Bersedia', NULL, NULL, '2024-04-26 08:15:05'),
(9, 'andre.febrianto@if.itera.ac.id', '2024-04-18', 'Hadir', 'Bersedia', NULL, NULL, '2024-04-26 08:15:05'),
(10, 'winda.yulita@if.itera.ac.id', '2024-04-18', 'Hadir', 'Bersedia', 5, NULL, '2024-04-28 15:56:02'),
(13, 'sarwono.sutikno@if.itera.ac.id', '2024-04-24', 'Hadir', 'Tidak', NULL, NULL, '2024-04-26 08:15:05'),
(14, 'miranti.verdiana@if.itera.ac.id', '2024-04-24', 'Hadir', 'Bersedia', NULL, NULL, '2024-04-26 08:15:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `nama` varchar(255) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`nama`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
('Rahman Amarullah Siregar', 'rahman.amarullah@gmail.com', '2024-05-08 13:30:44', '$2y$12$ZY0WUGzLoPffJGek.zkh7uFmoOXCvTH4IOX6hvScB7lCx6Nw1/44G', NULL, '2024-04-27 13:30:54', '2024-04-27 13:32:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrators`
--
ALTER TABLE `administrators`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `id_admin` (`id_admin`);

--
-- Indexes for table `antrianbimbingan`
--
ALTER TABLE `antrianbimbingan`
  ADD PRIMARY KEY (`id_antrian`);

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
-- Indexes for table `dosens`
--
ALTER TABLE `dosens`
  ADD PRIMARY KEY (`email`),
  ADD KEY `email` (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jam_bimbingan`
--
ALTER TABLE `jam_bimbingan`
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
-- Indexes for table `mahasiswas`
--
ALTER TABLE `mahasiswas`
  ADD PRIMARY KEY (`nim`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `last_activity` (`last_activity`);

--
-- Indexes for table `statushadirdosen`
--
ALTER TABLE `statushadirdosen`
  ADD PRIMARY KEY (`id_status`),
  ADD UNIQUE KEY `email` (`email`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `antrianbimbingan`
--
ALTER TABLE `antrianbimbingan`
  MODIFY `id_antrian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jam_bimbingan`
--
ALTER TABLE `jam_bimbingan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `statushadirdosen`
--
ALTER TABLE `statushadirdosen`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `statushadirdosen`
--
ALTER TABLE `statushadirdosen`
  ADD CONSTRAINT `belong to` FOREIGN KEY (`email`) REFERENCES `dosens` (`email`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
