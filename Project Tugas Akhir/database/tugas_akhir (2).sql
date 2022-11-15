-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Nov 2022 pada 06.46
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas_akhir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `desc`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(3, 'MTS Negeri 01 Kayong Utara', 'Membuka Pendaftaran Siswa Baru pada 01 Maret-30 Maret 2023 peryaratan yang perlu diisi dan dilengkapi seperti', '1661875615_Persyaratan Pendaftaran.jpg', '0', '2022-08-26 05:36:12', '2022-08-30 05:38:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `account_number` bigint(20) UNSIGNED NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `beritas`
--

CREATE TABLE `beritas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `beritas`
--

INSERT INTO `beritas` (`id`, `title`, `slug`, `content`, `kategori_id`, `thumbnail`, `is_active`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 'MTS Negeri 01 Tuan Rumah Porseni 2022', 'mts-negeri-01-tuan-rumah-porseni-2022', 'Sekolah terbaik kayong utara', 1, '1658469362_WhatsApp-Image-2020-03-09-at-08.27.27-1024x768.jpeg', '0', 1, '2022-07-21 19:26:02', '2022-07-21 19:26:02'),
(3, 'Pendaftran siswa didik baru pada MTs Negeri 01 Kayong Utara', 'pendaftran-siswa-didik-baru-pada-mts-negeri-01-kayong-utara', 'pendaftran di buka dari tanggal 5 september 2022 - 10 september 2022', 2, '1661582868_sekolah.jpeg', '0', 1, '2022-08-26 20:17:48', '2022-08-26 20:17:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berkas_murids`
--

CREATE TABLE `berkas_murids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `kartu_keluarga` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `akte_kelahiran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rapor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ijazah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `berkas_murids`
--

INSERT INTO `berkas_murids` (`id`, `user_id`, `kartu_keluarga`, `akte_kelahiran`, `rapor`, `foto`, `ijazah`, `created_at`, `updated_at`) VALUES
(1, 2, '1658802132_SRI LISANTI.pdf', '1658802134_SRI LISANTI.pdf', '1658802134_SRI LISANTI.pdf', '1658802134_sri.jpg', '1658802134_SRI LISANTI_3201916043.pdf', '2022-07-25 15:46:52', '2022-07-25 15:52:14'),
(2, 7, '1659783954_sekolah.jpeg', '1659783955_sekolah.jpeg', '1659783955_halaqah.jpg', '1659783955_sekolah4.jpeg', '1659783955_sekolah3.jpeg', '2022-08-06 00:32:17', '2022-08-06 00:35:55'),
(3, 6, NULL, NULL, NULL, NULL, NULL, '2022-08-13 18:24:00', '2022-08-13 18:24:00'),
(4, 9, NULL, NULL, NULL, NULL, NULL, '2022-08-13 19:38:34', '2022-08-13 19:38:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `publisher_id` bigint(20) UNSIGNED NOT NULL,
  `publication_year` year(4) NOT NULL,
  `isbn` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `borrowings`
--

CREATE TABLE `borrowings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `borrow_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `borrow_date` date NOT NULL,
  `return_date` date NOT NULL,
  `lateness` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_jurusans`
--

CREATE TABLE `data_jurusans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jurusan_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_jurusans`
--

INSERT INTO `data_jurusans` (`id`, `jurusan_id`, `image`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, '1658892583_aku.jpg', 'asdfgulkmjnyhbtgfdfgrhfthd', '2022-07-26 16:59:43', '2022-07-26 16:59:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_murids`
--

CREATE TABLE `data_murids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `nis` bigint(20) DEFAULT NULL,
  `nisn` bigint(20) DEFAULT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `agama` enum('Islam','Kristen Katolik','Kristen Protestan','Hindu','Budha','Konghucu') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asal_sekolah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proses` enum('Pendaftaran','Berkas','Murid','Ditolak') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pendaftaran',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_murids`
--

INSERT INTO `data_murids` (`id`, `user_id`, `nis`, `nisn`, `tempat_lahir`, `tgl_lahir`, `agama`, `telp`, `whatsapp`, `alamat`, `asal_sekolah`, `proses`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL, '17 mei 2001', '2001-05-17', 'Islam', '0895365117411', '0895365117411', 'DUSUN BAKTI KARY,  DS.NIPAH KUNING, KEC. SIMPANG HILIR, KAB.KAYONG UTARA', 'SDN 10 simpang hilir', 'Pendaftaran', '2022-07-25 15:40:17', '2022-07-25 15:44:24'),
(2, 6, NULL, NULL, '17 Mei 2001', '2001-05-17', 'Islam', '089657645498', '089657645498', 'Nipah kuning, Kayong Utara', 'SDN 10 Simpang Hilir', 'Pendaftaran', '2022-07-26 17:28:08', '2022-08-13 18:19:50'),
(3, 7, 12335, 123456, 'Tambangan 02 Maret 2001', '2001-03-02', 'Islam', '089522334455', '089522334455', 'Kab. Sambas, Desa.Tambangan', 'SDN 01 Tambangan', 'Murid', '2022-08-06 00:24:52', '2022-08-13 18:06:45'),
(4, 9, NULL, NULL, '17 Mei 2001', '2001-05-17', 'Islam', '089599887766', '089599887766', 'Nipah Kuning, Kayong Utara', 'SDN 10 Simpang Hilir', 'Pendaftaran', '2022-08-13 19:17:23', '2022-08-13 19:35:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_orang_tuas`
--

CREATE TABLE `data_orang_tuas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `nama_ayah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pendidikan_ayah` enum('SD','SMP','SMA/SMK','S1','S2','S3') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telp_ayah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pekerjaan_ayah` enum('Wiraswasta','Wirausaha','ASN','Buruh') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat_ayah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_ibu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pendidikan_ibu` enum('SD','SMP','SMA/SMK','S1','S2','S3') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telp_ibu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pekerjaan_ibu` enum('Ibu Rumah Tangga','Wiraswasta','Wirausaha','ASN','Buruh') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat_ibu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_orang_tuas`
--

INSERT INTO `data_orang_tuas` (`id`, `user_id`, `nama_ayah`, `pendidikan_ayah`, `telp_ayah`, `pekerjaan_ayah`, `alamat_ayah`, `nama_ibu`, `pendidikan_ibu`, `telp_ibu`, `pekerjaan_ibu`, `alamat_ibu`, `created_at`, `updated_at`) VALUES
(1, 2, 'Bakri', 'SD', '089536511741', 'Wiraswasta', 'Bakri', 'asiah', 'SD', '089536511748', 'Ibu Rumah Tangga', 'asiah', '2022-07-25 15:44:24', '2022-07-25 15:46:52'),
(2, 7, 'abcde', 'SD', '089655443322', 'Wiraswasta', 'abcde', 'yuli', 'SD', '089677665544', 'Ibu Rumah Tangga', 'yuli', '2022-08-06 00:30:10', '2022-08-06 00:32:17'),
(3, 6, 'Bakri', 'SD', '089655443322', 'Wiraswasta', 'Bakri', 'asiah', 'SD', '089677665544', 'Ibu Rumah Tangga', 'asiah', '2022-08-13 18:19:50', '2022-08-13 18:24:00'),
(4, 9, 'Bakri', 'SD', '089699887766', 'Wiraswasta', 'Bakri', 'Asiah', 'SD', '089877665544', 'Ibu Rumah Tangga', 'Asiah', '2022-08-13 19:35:43', '2022-08-13 19:38:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_payment_spps`
--

CREATE TABLE `detail_payment_spps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` bigint(20) NOT NULL,
  `status` enum('paid','unpaid') COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_file` date DEFAULT NULL,
  `approve_by` bigint(20) UNSIGNED DEFAULT NULL,
  `approve_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acara` datetime NOT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Struktur dari tabel `footers`
--

CREATE TABLE `footers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `image_sliders`
--

CREATE TABLE `image_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `urutan` int(11) NOT NULL,
  `is_active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `image_sliders`
--

INSERT INTO `image_sliders` (`id`, `image`, `title`, `desc`, `urutan`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '1661957283_sekolah.jpeg', 'MTs Negeri 01 Kayong Utara', 'Agama tanpa ilmu adalah buta. \r\nIlmu tanpa agama adalah lumpuh', 0, '0', '2022-07-20 18:31:55', '2022-08-31 04:18:04'),
(2, '1659001463_WhatsApp Image 2022-07-27 at 18.29.58.jpeg', 'MTs Negeri 01 Kayong Utara', 'Belajar  dan bekerja keraslah  untuk mencapai kesuksesan', 1, '0', '2022-07-21 18:01:35', '2022-07-27 23:23:31'),
(3, '1659001785_WhatsApp Image 2022-07-21 at 15.00.25.jpeg', 'MTs Negeri 01 Kayong Utara', 'Kegagalan adalah guru terbaikmu. Maka Belajarlah Darinya', 2, '0', '2022-07-27 23:19:45', '2022-07-27 23:24:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusans`
--

CREATE TABLE `jurusans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `singkatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jurusans`
--

INSERT INTO `jurusans` (`id`, `nama`, `singkatan`, `slug`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Kelas I', 'KLS 1', 'kelas-i', '0', '2022-07-26 16:59:43', '2022-07-26 16:59:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_beritas`
--

CREATE TABLE `kategori_beritas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori_beritas`
--

INSERT INTO `kategori_beritas` (`id`, `nama`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'Keagamaan', '0', '2022-08-26 05:37:18', '2022-08-30 03:39:12'),
(3, 'Pendidikan', '0', '2022-08-30 03:38:45', '2022-08-30 03:38:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatans`
--

CREATE TABLE `kegiatans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kegiatans`
--

INSERT INTO `kegiatans` (`id`, `nama`, `slug`, `image`, `imagas`, `content`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'PRAMUKA', 'pramuka', '1659779144_pramuka.png', NULL, 'Pramuka adalah singkatan dari Praja Muda Karana dan merupakan organisasi atau gerakan kepanduan. Pramuka adalah sebuah organisasi yang merupakan wadah proses pendidikan kepramukaan yang dilaksanakan di Indonesia. Dalam dunia internasional, Pramuka disebut dengan istilah “Kepanduan” (Boy Scout). Gerakan Pramuka memiliki kode Kode Kehormatan Pramuka, sebagaimana yang tertuang dalam Anggaran Dasar Pramuka, Gerakan Pramuka memiliki Kode Kehormatan yang terdiri atas janji yang disebut Satya dan Ketentuan Moral yang disebut Darma Kode Kehormatan Pramuka disesuaikan dengan golongan usia dan perkembangan rohani dan jasmaninya, yaitu: Kode Kehormatan Pramuka Siaga terdiri atas Dwisatya dan Dwidarma. Kode Kehormatan Pramuka Penggalang terdiri atas Trisatya Pramuka Penggalang dan Dasadarma. Kode Kehormatan Pramuka Penegak dan Pandega terdiri atas Trisatya Pramuka Penegak dan Pramuka Pandega dan Dasadarma. Kode Kehormatan Pramuka Dewasa terdiri atas Trisatya Anggota Dewasa dan Dasadarma.', '0', '2022-07-21 18:30:07', '2022-08-05 23:15:44'),
(3, 'BACA TUTIS Al-Qur’an DAN Tahfiz', 'baca-tutis-al-quran-dan-tahfiz', '1659780364_halaqah.jpg', NULL, 'Pendidikan agama ini harus dilalui anak baik  di rumah maupun sekolah dan masyarakat. Dimana sekolah merupakan pihak yang mendapat mandat orang tua untuk membantu  mendidik putra-putrinya demikian juga pendidikan masyarakat.\r\nPendidikan agama yang bisa dikembangkan pada usia dini dan usia sekolah dasar antara lain Baca Tulis Al-Qur’an dan Tahfizd. Pendidikan Baca Tulis Al-Qur’an dan Tahfizd sesuai dengan tingkat perkembangan  mereka yang selalu meniru orang lain. Dimana kegiatan pembelajaran akan hampir semua kegiatannya meniru dan mengulang terus-menerus.\r\n\r\nTUJUAN\r\n1. Peserta didik mampu membaca dan menulis Al Quran  dengan baik dan benar\r\n2. Membiasakan diri membaca dan mencintai Al Quran serta mengaplikasikan nilai-nilai Al Quran dalam kehidupan sehari-hari.\r\n3. Mampu menghafal surat-surat pendek dalam Al Quran dan memahami isi kandungan Al Quran sebagai bekal dalam kehidupan\r\n4. Agar siswa dapat berkompeten dalam Baca Tulis al-Qur’an dan Tahfidz.', '0', '2022-08-05 23:36:04', '2022-08-05 23:47:30'),
(5, 'OSIS', 'osis', '1661535005_sekolah4.jpeg', NULL, 'OSIS merupakan sebuah wadah yang memfasilitasi para siswa untuk bekerja sesuai tugasnya masing-masing demi kepentingan sekolah dan seluruh siswa. Selain itu, OSIS juga bisa berfungsi sebagai pencegah. Pencegah di sini maksudnya adalah mencegah munculnya pengaruh negatif pada siswa. Dengan adanya OSIS siswa juga bisa mengkembangkan kemampuan dan kreativitas siswa dengan bertujuan untuk memiliki kegiatan yang positif yang bisa memaksimalkan kemampuan dan kreativitas mereka.yang dimana organisasi dibentuk di dalam sekolah, beranggotakan siswa di sekolah, dibina oleh guru di sekolah, dan bekerja demi kebaikan sekolah.', '0', '2022-08-26 07:00:05', '2022-08-26 07:00:05'),
(6, 'PMR', 'pmr', '1661535716_pmr.jpg', NULL, 'Palang Merah Remaja (PMR) adalah suatu organisasi binaan dari Palang Merah Indonesia yang berpusat di sekolah-sekolah ataupun kelompok-kelompok masyarakat yang bertujuan membangun dan mengembangkan karakter Kepalangmerahan agar siap menjadi Relawan PMI pada masa depan.\r\nPMR di MTs Negeri 01 Kayong Utara termasuk dalam tingkat madya berusia antara 12 - 15 tahun. PMR Madya berfungsi sebagai peer support, yaitu memberikan dukungan, bantuan, semangat kepada teman sebaya agar meningkatkan ketrampilan hidup sehat.\r\nSetiap anggota PMR mendapatkan pelatihan sebelum terlibat dalam kegiatan Tri Bhakti PMR agar siap menjalankan peran dan fungsinya. Setiap sesi pelatihan akan menguatkan karakter anggota PMR untuk meningkatkan ketrampilan hidup sehat dan menjadi calon relawan, anggota PMR tidak hanya tahu dan trampil, tetapi juga perlu memahami dan menerapkan yang telah mereka pelajari, dalam proses pelatihan.', '0', '2022-08-26 07:11:56', '2022-08-26 07:11:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `member_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(5, '2021_08_08_100000_create_banks_tables', 1),
(6, '2022_03_20_132856_create_jurusans_table', 1),
(7, '2022_03_20_133244_create_data_jurusans_table', 1),
(8, '2022_03_22_182953_create_kegiatans_table', 1),
(9, '2022_03_23_040838_create_image_sliders_table', 1),
(10, '2022_03_23_052723_add_field_to_image_sliders_table', 1),
(11, '2022_03_23_065335_create_abouts_table', 1),
(12, '2022_03_23_074809_create_videos_table', 1),
(13, '2022_03_24_075737_create_kategori_beritas_table', 1),
(14, '2022_03_24_075900_create_beritas_table', 1),
(15, '2022_03_24_105758_create_events_table', 1),
(16, '2022_03_24_201826_add_field_to_events_table', 1),
(17, '2022_03_24_204322_create_footers_table', 1),
(18, '2022_03_25_102915_create_permission_tables', 1),
(19, '2022_03_27_074151_create_users_details_table', 1),
(20, '2022_03_27_094236_create_data_murids_table', 1),
(21, '2022_03_28_154339_create_profile_sekolahs_table', 1),
(22, '2022_03_28_161701_create_visimisis_table', 1),
(23, '2022_03_30_084531_create_data_orang_tuas_table', 1),
(24, '2022_03_30_172737_add_value_role_in_users_table', 1),
(25, '2022_03_30_194727_add_value_role_in_users_details_table', 1),
(26, '2022_04_01_190600_add_field_to_data_murids', 1),
(27, '2022_04_01_191038_create_berkas_murids_table', 1),
(28, '2022_05_20_062053_create_authors_table', 1),
(29, '2022_05_20_062103_create_publishers_table', 1),
(30, '2022_05_20_062130_create_categories_table', 1),
(31, '2022_05_20_062140_create_books_table', 1),
(32, '2022_05_20_062219_create_members_table', 1),
(33, '2022_05_20_062236_create_borrowings_table', 1),
(34, '2022_07_16_094123_create_bank_accounts_table', 1),
(35, '2022_07_16_094821_create_payment_spps_table', 1),
(36, '2022_07_16_100447_create_detail_payment_spps_table', 1),
(37, '2022_07_16_145332_add_value_role_bendahara_in_users_table', 1),
(38, '2022_07_16_145418_add_value_role_bendahara_in_users_details_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(4, 'App\\Models\\User', 7),
(7, 'App\\Models\\User', 2),
(7, 'App\\Models\\User', 6),
(7, 'App\\Models\\User', 9),
(9, 'App\\Models\\User', 3),
(9, 'App\\Models\\User', 4),
(9, 'App\\Models\\User', 5);

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
-- Struktur dari tabel `payment_spps`
--

CREATE TABLE `payment_spps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `year` bigint(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `January` enum('paid','unpaid','free') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `February` enum('paid','unpaid','free') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `March` enum('paid','unpaid','free') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `April` enum('paid','unpaid','free') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `May` enum('paid','unpaid','free') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `June` enum('paid','unpaid','free') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `July` enum('paid','unpaid','free') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `August` enum('paid','unpaid','free') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `September` enum('paid','unpaid','free') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `October` enum('paid','unpaid','free') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `November` enum('paid','unpaid','free') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `December` enum('paid','unpaid','free') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Struktur dari tabel `profile_sekolahs`
--

CREATE TABLE `profile_sekolahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `profile_sekolahs`
--

INSERT INTO `profile_sekolahs` (`id`, `title`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 'MTS NEGERI 01 KAYONG UTARA', 'Madrasah Tsanawiyah Negeri 1 Kayong Utara merupakan Madrasah Tsanawiyah yang pertama di Kabupaten Kayong Utara, yang terletak di Jalan Merdeka Teluk Melano Kecamatan Simpang Hilir. Pada awal berdirinya tahun 1983 dengan nama Madrasah Tsanawiyah Swadaya Teluk Melano. Pada tahun1992 baru memperoleh izin operasional dari Departemen Agama RI sekaligus pengakuan atas pendirian MTs Swadaya tersebut. Melihat perkembangannya, atas saran Departemen Agama Kabupaten Ketapang, tahun 1995 MTs Swadaya Teluk Melano berusaha mencari yayasan yang legalitasnya diakui pemerintah. Dengan upaya panitia pendiri MTs dan masyarakat, dibentuklah suatu yayasan yang kemudian disebut dengan Yayasan Perguruan Islam Sayyidul Kubra dengan akte notaris nomor  05 tahun 1995 tanggal 3 Januari 1995 dan madrasah ini berganti nama menjadi MTs Al Kubra Teluk Melano.  \r\nAdapun latar belakang berdirinya madrasah ini karena keinginan masyarakat Kecamatan Simpang Hilir akan adanya sebuah lembaga pendidikan setingkat SMP sebagai wadah anak-anak mereka menimba ilmu pengetahuan agama. Terhitung sejak tahun berdirinya sampai dengan kegiatan pengumpulan data dilakukan, madrasah ini sudah beroperasi atau melaksanakan kegiatan pendidikan selama 37 tahun.\r\nBerdasarkan Surat Keputusan Menteri Agama tanggal 6 Maret 2009 MTs Al Kubra mengalami perubahan status menjadi madrasah negeri dengan nama Madrasah Tsanawiyah Simpang Hilir. Peresmian Madrasah Tsanawiyah Simpang Hilir dilakukan pada tanggal 14 Juli 2009 oleh Kepala Kantor Kementerian Agama dan Bupati Kayong Utara. Dan pada tahun 2018, Kementerian Agama Kabupaten Kayong Utara melakukan proses penegerian bagi dua MTs swasta yang lain, sehingga MTs Negeri Simpang Hilir mengalami perubahan nama menjadi Madrasah Tsanawiyah 1 Kayong Utara.', '1659002229_WhatsApp Image 2022-07-27 at 18.32.58.jpeg', '2022-07-20 18:49:38', '2022-07-27 23:27:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `publishers`
--

CREATE TABLE `publishers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2022-07-18 15:57:57', '2022-07-18 15:57:57'),
(2, 'Guru', 'web', '2022-07-18 15:57:57', '2022-07-18 15:57:57'),
(3, 'Staf', 'web', '2022-07-18 15:57:57', '2022-07-18 15:57:57'),
(4, 'Murid', 'web', '2022-07-18 15:57:57', '2022-07-18 15:57:57'),
(5, 'Orang Tua', 'web', '2022-07-18 15:57:57', '2022-07-18 15:57:57'),
(6, 'Alumni', 'web', '2022-07-18 15:57:57', '2022-07-18 15:57:57'),
(7, 'Guest', 'web', '2022-07-18 15:57:57', '2022-07-18 15:57:57'),
(8, 'Perpustakaan', 'web', '2022-07-18 15:57:57', '2022-07-18 15:57:57'),
(9, 'PPDB', 'web', '2022-07-18 15:57:57', '2022-07-18 15:57:57'),
(10, 'Bendahara', 'web', '2022-07-18 15:57:58', '2022-07-18 15:57:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('Admin','Guru','Staf','Murid','Orang Tua','Alumni','Guest','Perpustakaan','PPDB','Bendahara') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Aktif','Tidak Aktif') COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `role`, `status`, `foto_profile`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Sekolah', 'admin', 'admin@gmail.com', 'Admin', 'Aktif', NULL, NULL, '$2y$10$Zvyab0GYu/8D9yBPR/hO6.xADdRD58.RaPVxmzSSudwGy6hBok63.', NULL, '2022-07-18 15:57:58', '2022-08-16 00:08:40'),
(5, 'Sri Lisanti', 'sri29', 'srilisanti200017@gmail.com', 'PPDB', 'Aktif', NULL, NULL, '$2y$10$rjrcBqAcqLego7B68YTWYe0w9Pp0gaEIhUp7MsUMrMPZb7QfDbWSe', NULL, '2022-07-26 14:58:29', '2022-07-26 14:58:29'),
(6, 'Sri Lisanti', 'Sri', 'srilisanti@gmail.com', 'Guest', 'Aktif', NULL, NULL, '$2y$10$MBrdl5HLZlD/XGSDV1tMH.N33H7jNH8..3yHFQj/bHBkOU1kh6Nbi', NULL, '2022-07-26 17:28:08', '2022-07-26 17:28:08'),
(7, 'andini', 'andini', 'andini@gmail.com', 'Murid', 'Aktif', NULL, NULL, '$2y$10$4yKUlwlulINvNNh4/py.hOnOZoj6UjwC557RY7N8GRfMfdOUuYroC', NULL, '2022-08-06 00:24:52', '2022-08-13 18:06:45'),
(9, 'lisanti', 'lisanti', 'lisanti@gmail.com', 'Guest', 'Aktif', NULL, NULL, '$2y$10$KmEPr.f7VQL1k1nuHQ/SjOoeghi6ZZBTqTz13tSU.I9cti7rcamru', NULL, '2022-08-13 19:17:23', '2022-08-13 19:17:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_details`
--

CREATE TABLE `users_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` enum('Admin','Guru','Staf','Murid','Orang Tua','Alumni','Guest','Perpustakaan','PPDB','Bendahara') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mengajar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nip` bigint(20) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkidln` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users_details`
--

INSERT INTO `users_details` (`id`, `user_id`, `role`, `mengajar`, `nip`, `email`, `linkidln`, `instagram`, `twitter`, `facebook`, `youtube`, `website`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 3, 'PPDB', NULL, 0, 'hafiziiqbal@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2022-07-25 20:03:42', '2022-07-25 20:03:42'),
(2, 4, 'PPDB', NULL, 0, 'ferigalang91@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2022-07-25 20:06:10', '2022-07-25 20:06:10'),
(3, 5, 'PPDB', NULL, -1, 'srilisanti200017@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2022-07-26 14:58:29', '2022-07-26 14:58:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `visimisis`
--

CREATE TABLE `visimisis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `misi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `visimisis`
--

INSERT INTO `visimisis` (`id`, `visi`, `misi`, `image`, `created_at`, `updated_at`) VALUES
(1, '“ Unggul dalam Prestasi, Iman dan Taqwa ”\r\nUnggul dalam IMTAK, dengan indikator : \r\n<p>1.	Baik dalam amal ibadahnya</p>\r\n<p>2.	Mampu membaca dan menulis huruf Al-Quran</p>\r\n<p>3.	Berahklak mulia</p>\r\n<p>4.	Memahami kandungan Al-Quran</p>\r\n<p>5.	Mampu menghafal Al-Quran</p>\r\n\r\nBerprestasi dan Unggul dalam IPTEK, dengan indikator : \r\n<p>1.	Berprestasi dalam bidang akademik</p>\r\n<p>2.	Meningkatkan perolehan NEM</p>\r\n<p>3.	Meningkatkan perolehan nilai raport</p>\r\n<p>4.	Meningkatkan jumlah siswa yang diterima disekolah negeri</p>\r\n<p>5.	Mampu menciptakan alat teknologi tepat guna yang sederhana</p>', 'Dalam bidang IMTAK : \r\n<p>1.	Meningkatkan kesadaran siswa untuk mengamalkan ajaran Islam dalam kehidupan sehari-hari.</p>\r\n<p>2.	Meningkatkan kemampuan membaca dan menulis Al-Quran.</p>\r\n<p>3.	Meningkatkan akhlakul karimah.\r\n4.	Meningkatkan kemampuan memahami kandungan Al-Quran.</p>\r\n<p>5.	Meningkatkan kemampuan menghapal Al-Quran.</p>\r\nDalam bidang IPTEK : \r\n<p>1.	Meningkatkan kualitas pembelajaran.</p>\r\n<p>2.	Meningkatkan sarana prasarana pendidikan.</p>\r\n<p>3.	Memberikan jam pelajaran tambahan.</p>\r\n<p>4.	Memberikan penghargaan kepada siswa berprestasi.</p>\r\n<p>5.	Mengefektifkan program BK.</P>\r\n<p>6.	Membimbing siswa dalam bidang teknologi tepat guna.</p>\r\n<p>TUJUAN :</>\r\n<p>1.	Bidang keagamaan :</p>\r\n<p>a.	Siswa dapat mengamalkan ibadah wajib dan sunah secara rutin.</p>\r\n<p>b.	Siswa memiliki akhlak mulia yang ditandai dengan perilaku baik, gemar beramal, dan menjauhkan diri dari perbuatan terlarang termasuk penyalahgunaan obat-obat terlarang.</p>\r\n<p>c.	Siswa dapat membaca dan memahami kandungan Al-Quran.</p>', '1659002250_WhatsApp Image 2022-07-21 at 15.00.25.jpeg', '2022-07-21 18:12:23', '2022-08-20 23:47:05');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authors_name_unique` (`name`);

--
-- Indeks untuk tabel `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_accounts_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `beritas`
--
ALTER TABLE `beritas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `beritas_title_unique` (`title`);

--
-- Indeks untuk tabel `berkas_murids`
--
ALTER TABLE `berkas_murids`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_book_code_unique` (`book_code`);

--
-- Indeks untuk tabel `borrowings`
--
ALTER TABLE `borrowings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `borrowings_borrow_code_unique` (`borrow_code`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indeks untuk tabel `data_jurusans`
--
ALTER TABLE `data_jurusans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_jurusans_jurusan_id_foreign` (`jurusan_id`);

--
-- Indeks untuk tabel `data_murids`
--
ALTER TABLE `data_murids`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_orang_tuas`
--
ALTER TABLE `data_orang_tuas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detail_payment_spps`
--
ALTER TABLE `detail_payment_spps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_payment_spps_user_id_foreign` (`user_id`),
  ADD KEY `detail_payment_spps_payment_id_foreign` (`payment_id`);

--
-- Indeks untuk tabel `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `events_title_unique` (`title`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `image_sliders`
--
ALTER TABLE `image_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jurusans`
--
ALTER TABLE `jurusans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jurusans_nama_unique` (`nama`),
  ADD UNIQUE KEY `jurusans_slug_unique` (`slug`),
  ADD UNIQUE KEY `jurusans_singkatan_unique` (`singkatan`);

--
-- Indeks untuk tabel `kategori_beritas`
--
ALTER TABLE `kategori_beritas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kategori_beritas_nama_unique` (`nama`);

--
-- Indeks untuk tabel `kegiatans`
--
ALTER TABLE `kegiatans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kegiatans_nama_unique` (`nama`);

--
-- Indeks untuk tabel `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `members_member_code_unique` (`member_code`),
  ADD UNIQUE KEY `members_user_id_unique` (`user_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `payment_spps`
--
ALTER TABLE `payment_spps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_spps_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `profile_sekolahs`
--
ALTER TABLE `profile_sekolahs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `publishers_name_unique` (`name`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `users_details`
--
ALTER TABLE `users_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `visimisis`
--
ALTER TABLE `visimisis`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `beritas`
--
ALTER TABLE `beritas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `berkas_murids`
--
ALTER TABLE `berkas_murids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `borrowings`
--
ALTER TABLE `borrowings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_jurusans`
--
ALTER TABLE `data_jurusans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `data_murids`
--
ALTER TABLE `data_murids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `data_orang_tuas`
--
ALTER TABLE `data_orang_tuas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `detail_payment_spps`
--
ALTER TABLE `detail_payment_spps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `footers`
--
ALTER TABLE `footers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `image_sliders`
--
ALTER TABLE `image_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `jurusans`
--
ALTER TABLE `jurusans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kategori_beritas`
--
ALTER TABLE `kategori_beritas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kegiatans`
--
ALTER TABLE `kegiatans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `payment_spps`
--
ALTER TABLE `payment_spps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `profile_sekolahs`
--
ALTER TABLE `profile_sekolahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `users_details`
--
ALTER TABLE `users_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `visimisis`
--
ALTER TABLE `visimisis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD CONSTRAINT `bank_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `data_jurusans`
--
ALTER TABLE `data_jurusans`
  ADD CONSTRAINT `data_jurusans_jurusan_id_foreign` FOREIGN KEY (`jurusan_id`) REFERENCES `jurusans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_payment_spps`
--
ALTER TABLE `detail_payment_spps`
  ADD CONSTRAINT `detail_payment_spps_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payment_spps` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_payment_spps_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `payment_spps`
--
ALTER TABLE `payment_spps`
  ADD CONSTRAINT `payment_spps_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
