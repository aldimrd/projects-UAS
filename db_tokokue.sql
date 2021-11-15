-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2021 at 03:39 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tokokue`
--

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `nm_lengkap` int(11) NOT NULL,
  `alamat` text CHARACTER SET latin1 NOT NULL,
  `email` varchar(25) CHARACTER SET latin1 NOT NULL,
  `no_hp` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`nm_lengkap`, `alamat`, `email`, `no_hp`) VALUES
(1, 'Gunung Subang', 'amardian532@gmail.com', '088802165368'),
(2, 'Saguling Panjang Kawalu', 'ahma@gmail.com', '08889098754');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `Rasa` int(11) NOT NULL,
  `jenis_kue` varchar(45) CHARACTER SET latin1 NOT NULL,
  `nama_lengkap` varchar(25) CHARACTER SET latin1 NOT NULL,
  `harga` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`Rasa`, `jenis_kue`, `nama_lengkap`, `harga`) VALUES
(1, 'Bolu Tar', '2', '30000'),
(2, 'Black Forest', '1', '40000');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `jenis_kue` varchar(11) NOT NULL,
  `ukuran_kue` varchar(45) CHARACTER SET latin1 NOT NULL,
  `harga` varchar(25) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`jenis_kue`, `ukuran_kue`, `harga`) VALUES
('Black Fores', 'Sedang', '40000'),
('Bolu Tar', 'Sedang', '30000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`nm_lengkap`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`Rasa`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`jenis_kue`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
