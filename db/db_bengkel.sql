-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 03, 2022 at 02:06 PM
-- Server version: 10.6.5-MariaDB-log
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bengkel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `kode_pengguna` varchar(10) DEFAULT NULL,
  `nama_pengguna` varchar(100) DEFAULT NULL,
  `username_pengguna` varchar(20) DEFAULT NULL,
  `password_pengguna` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `kode_pengguna`, `nama_pengguna`, `username_pengguna`, `password_pengguna`) VALUES
(1, 'PGN17', 'Nugrohoo', 'nugrohoff', 'pwd_nugroho'),
(2, 'PENGGUNA -', 'anton', 'anton', 'anton'),
(3, 'PENGGUNA -', 'anto', 'KSR51', '123'),
(4, 'PENGGUNA -', 'dia', 'KSR51', '123'),
(5, 'ADM - 55', 'pandu', 'ADM55', 'pandu');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(10) DEFAULT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `harga_beli` varchar(100) DEFAULT NULL,
  `harga_jual` varchar(100) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `satuan` varchar(50) DEFAULT NULL,
  `kategori` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `kode_barang`, `nama_barang`, `harga_beli`, `harga_jual`, `stok`, `satuan`, `kategori`) VALUES
(5, '68927794', 'spion', '12000', '15000', 70, 'pcs', 'barang'),
(6, '82016633', 'ban', '100000', '120000', 101, 'pcs', 'barang'),
(7, '96502088', 'ban', '10000', '20000', 100, 'pcs', 'barang'),
(8, '14536886', 'Tune Up', '100000', '100000', 100, '', 'jasa'),
(9, '64788897', 'service ganti oli', NULL, '20000', 100, '', 'jasa');

-- --------------------------------------------------------

--
-- Table structure for table `data_toko`
--

CREATE TABLE `data_toko` (
  `id` int(11) NOT NULL,
  `nama_toko` varchar(80) DEFAULT NULL,
  `nama_pemilik` varchar(80) DEFAULT NULL,
  `no_telepon` varchar(15) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_toko`
--

INSERT INTO `data_toko` (`id`, `nama_toko`, `nama_pemilik`, `no_telepon`, `alamat`) VALUES
(1, 'Toko Maju Jaya', 'Nugroho', '081299764535', 'Sidareja');

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `no_penjualan` varchar(20) DEFAULT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `harga_barang` varchar(20) DEFAULT NULL,
  `jumlah_barang` int(11) DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL,
  `sub_total` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`no_penjualan`, `nama_barang`, `harga_barang`, `jumlah_barang`, `satuan`, `sub_total`) VALUES
('PJ1584356033', 'Telur', '12500', 1, 'kg', '12500'),
('PJ1584359090', 'Telur', '12500', 9, 'kg', '112500'),
('PJ1584359090', 'Gula Pasir', '8000', 5, 'kg', '40000'),
('PJ1584359090', 'Kopi Kapal Api', '1750', 5, 'sachet', '8750'),
('PJ1584359556', 'Kopi Kapal Api', '1750', 1, 'sachet', '1750'),
('PJ1584359556', 'Gula Pasir', '8000', 1, 'kg', '8000'),
('PJ1601051707', 'Telur', '12500', 1, 'kg', '12500'),
('PJ1601051707', 'Gula Pasir', '8000', 1, 'kg', '8000'),
('PJ1602731462', 'spion', '15000', 1, 'pcs', '15000'),
('PJ1602731462', 'ban', '120000', 10, 'pcs', '1200000'),
('PJ1602731521', 'spion', '15000', 3, 'pcs', '45000'),
('PJ1602731571', 'spion', '15000', 1, 'pcs', '15000'),
('PJ1602733956', 'spion', '15000', 1, 'pcs', '15000'),
('PJ1602741453', 'ban', '120000', 1, 'pcs', '120000'),
('PJ1602741453', 'spion', '15000', 1, 'pcs', '15000'),
('PJ1602742982', 'spion', '15000', 12, 'pcs', '180000'),
('PJ1602743001', 'ban', '120000', 1, 'pcs', '120000'),
('PJ1602905047', 'spion', '15000', 1, 'pcs', '15000'),
('PJ1602905047', 'ban', '120000', 1, 'pcs', '120000'),
('PJ1643317333', 'spion', '15000', 10, 'pcs', '150000'),
('PJ1643317333', 'ban', '120000', 3, 'pcs', '360000');

-- --------------------------------------------------------

--
-- Table structure for table `kasir`
--

CREATE TABLE `kasir` (
  `id` int(11) NOT NULL,
  `kode_kasir` varchar(10) DEFAULT NULL,
  `nama_kasir` varchar(100) DEFAULT NULL,
  `username_kasir` varchar(20) DEFAULT NULL,
  `password_kasir` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kasir`
--

INSERT INTO `kasir` (`id`, `kode_kasir`, `nama_kasir`, `username_kasir`, `password_kasir`) VALUES
(2, 'KASIR - 58', 'Fakhrul', 'KSR58', 'pwd_fakhrul'),
(3, 'KASIR - 31', 'dia', 'KSR31', 'dia'),
(4, 'KASIR - 74', 'jawek', 'KSR74', 'jawek');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id` int(11) NOT NULL,
  `no_penjualan` varchar(20) DEFAULT NULL,
  `nama_kasir` varchar(100) DEFAULT NULL,
  `tgl_penjualan` varchar(20) DEFAULT NULL,
  `jam_penjualan` varchar(20) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id`, `no_penjualan`, `nama_kasir`, `tgl_penjualan`, `jam_penjualan`, `total`) VALUES
(1, 'PJ1584356033', 'Nugrohoo', '16/03/2020', '17:53:53', 12500),
(2, 'PJ1584359090', 'Nugrohoo', '16/03/2020', '18:44:50', 161250),
(3, 'PJ1584359556', 'nugroho', '16/03/2020', '18:52:36', 9750),
(4, 'PJ1601051707', 'Fakhrul', '25/09/2020', '23:35:07', 20500),
(5, 'PJ1602731462', 'anton', '15/10/2020', '10:11:02', 1215000),
(6, 'PJ1602731521', 'anton', '15/10/2020', '10:12:01', 45000),
(7, 'PJ1602731571', 'anton', '15/10/2020', '10:12:51', 15000),
(8, 'PJ1602733956', 'anton', '15/10/2020', '10:52:36', 15000),
(9, 'PJ1602741453', 'dia', '15/10/2020', '12:57:33', 135000),
(10, 'PJ1602742982', 'dia', '15/10/2020', '13:23:02', 180000),
(11, 'PJ1602743001', 'dia', '15/10/2020', '13:23:21', 120000),
(12, 'PJ1602905047', 'anton', '17/10/2020', '10:24:07', 135000),
(13, 'PJ1643317333', 'anton', '28/01/2022', '04:02:13', 510000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_toko`
--
ALTER TABLE `data_toko`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kasir`
--
ALTER TABLE `kasir`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `data_toko`
--
ALTER TABLE `data_toko`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kasir`
--
ALTER TABLE `kasir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
