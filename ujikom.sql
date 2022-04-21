-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2022 at 08:54 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sisfohotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `idkamar` varchar(10) NOT NULL,
  `tipe` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `gambar` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`idkamar`, `tipe`, `jumlah`, `harga`, `gambar`) VALUES
('001', 'Superior', 7, 410000, 'Standard.jpg'),
('002', 'Deluxe', 45, 450000, 'Superior.jpg'),
('003', 'Junior Suite', 4, 700000, 'Deluxe.jpg'),
('004', 'Executive', 2, 1200000, 'Junior-Suite.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `idkontak` int(11) NOT NULL,
  `idtamu` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pesanuser` text NOT NULL,
  `pesanadmin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kontak`
--

INSERT INTO `kontak` (`idkontak`, `idtamu`, `username`, `pesanuser`, `pesanadmin`) VALUES
(48, 10, 'ali', 'Halooo....', ''),
(49, 10, 'ali', '', 'Yoooo'),
(50, 11, 'inka', 'Tesssss...', ''),
(51, 16, 'salsa2', 'haooo', ''),
(52, 0, '', '', 'yoooo');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `oprator`
--

CREATE TABLE `oprator` (
  `id` int(10) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Nip` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `oprator`
--

INSERT INTO `oprator` (`id`, `Nama`, `Nip`) VALUES
(1, 'fiqih', 123456),
(4, 'Salsa', 123456789),
(5, 'Asep', 12345678);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `idpesan` varchar(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `bank` varchar(10) NOT NULL,
  `norek` varchar(15) NOT NULL,
  `namarek` varchar(50) NOT NULL,
  `gambar` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`idpesan`, `nama`, `jumlah`, `bank`, `norek`, `namarek`, `gambar`) VALUES
('37', 'Aljumad', 450000, 'BCA', '1234567890', 'ALJUMAD', '2.jpg'),
('39', 'Inka Ardya Indrawan', 1400000, 'Mandiri', '33344455566666', 'Inka', '5.jpg'),
('40', 'Muh. Fahrizal', 1800000, 'BNI', '677777777777777', 'Fahri', '7.jpg'),
('42', 'Muh. Ade Furkan', 1350000, 'BRI', '493111122233344', 'Furkan', '5.jpg'),
('47', 'salsa', 2800000, 'BCA', '12345678', 'salsa', 'Capture.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `idpesan` int(11) NOT NULL,
  `tglpesan` datetime NOT NULL,
  `batasbayar` datetime NOT NULL,
  `idkamar` varchar(15) NOT NULL,
  `tipe` varchar(20) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `idtamu` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(500) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `tglmasuk` date NOT NULL,
  `tglkeluar` date NOT NULL,
  `lamahari` int(11) NOT NULL DEFAULT 0,
  `totalbayar` int(11) NOT NULL DEFAULT 0,
  `status` varchar(50) NOT NULL DEFAULT 'Pending...'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`idpesan`, `tglpesan`, `batasbayar`, `idkamar`, `tipe`, `harga`, `jumlah`, `idtamu`, `nama`, `alamat`, `telepon`, `tglmasuk`, `tglkeluar`, `lamahari`, `totalbayar`, `status`) VALUES
(36, '2018-05-22 18:26:42', '2018-05-22 23:26:42', '001', 'Superior', 410000, 1, 10, 'Aljumad', 'Jl. qwerty', '081222333444', '2018-05-22', '2018-05-23', 1, 410000, 'Dibatalkan'),
(37, '2018-05-22 18:27:45', '2018-05-23 23:27:45', '002', 'Deluxe', 450000, 1, 10, 'Aljumad', 'Jl. qwerty', '081222333444', '2018-05-22', '2018-05-23', 1, 450000, 'Dibatalkan'),
(38, '2018-05-22 22:03:17', '2018-05-23 03:03:17', '002', 'Deluxe', 450000, 1, 11, 'Inka Ardya Indrawan', 'Jl. abcd', '088111222333', '2018-05-22', '2018-05-23', 1, 450000, 'Dibatalkan'),
(39, '2018-05-22 22:04:53', '2018-05-23 03:04:53', '003', 'Junior Suite', 700000, 1, 11, 'Inka Ardya Indrawan', 'Jl. abcd', '088111222333', '2018-05-23', '2018-05-25', 2, 1400000, 'Dibatalkan'),
(40, '2018-05-22 22:13:51', '2018-05-23 03:13:51', '002', 'Deluxe', 450000, 2, 12, 'Muh. Fahrizal', 'Jl....', '1234567777', '2018-05-22', '2018-05-24', 2, 1800000, 'Dibatalkan'),
(41, '2018-05-22 22:24:20', '2018-05-23 03:24:20', '002', 'Deluxe', 450000, 1, 12, 'Muh. Fahrizal', 'Jl....', '1234567777', '2018-05-21', '2018-05-22', 1, 450000, 'Dibatalkan'),
(42, '2018-05-22 22:29:27', '2018-05-23 03:29:27', '002', 'Deluxe', 450000, 1, 13, 'Muh. Ade Furkan', 'Jlll', '088777888999', '2018-05-22', '2018-05-25', 3, 1350000, 'Berhasil'),
(43, '2018-05-23 10:19:17', '2018-05-23 15:19:17', '002', 'Deluxe', 450000, 2, 12, 'Muh. Fahrizal', 'Jl....', '1234567777', '2018-05-23', '2018-05-25', 2, 1800000, 'Berhasil'),
(44, '2018-07-14 14:19:36', '2018-07-14 19:19:36', '002', 'Deluxe', 450000, 1, 10, 'Aljumad', 'Jl. qwerty', '081222333444', '2018-07-14', '2018-07-16', 2, 900000, 'Dibatalkan'),
(45, '2022-04-20 21:25:03', '2022-04-21 02:25:03', '002', 'Deluxe', 450000, 2, 14, 'sasa', 'batujajar', '087777777', '2022-04-21', '2022-04-22', 1, 900000, 'Pending...'),
(46, '2022-04-21 01:10:22', '2022-04-21 06:10:22', '002', 'Deluxe', 450000, 2, 14, 'sasa', 'batujajar', '087777777', '2022-04-20', '2022-04-22', 2, 1800000, 'Pending...'),
(47, '2022-04-21 02:30:52', '2022-04-21 07:30:52', '003', 'Junior Suite', 700000, 2, 16, 'salsa', 'batujajar', '123456', '2022-04-22', '2022-04-24', 2, 2800000, 'Berhasil');

-- --------------------------------------------------------

--
-- Table structure for table `stokkamar`
--

CREATE TABLE `stokkamar` (
  `idkamar` varchar(20) NOT NULL,
  `tipe` varchar(50) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stokkamar`
--

INSERT INTO `stokkamar` (`idkamar`, `tipe`, `stok`) VALUES
('001', 'Superior', 7),
('002', 'Deluxe', 38),
('003', 'Junior Suite', 3),
('004', 'Executive', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tamu`
--

CREATE TABLE `tamu` (
  `idtamu` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `foto` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tamu`
--

INSERT INTO `tamu` (`idtamu`, `username`, `email`, `nama`, `alamat`, `telepon`, `password`, `foto`) VALUES
(14, 'salsa', 'sasa@gmail.com', 'sasa', 'batujajar', '087777777', 'e10adc3949ba59abbe56e057f20f883e', ''),
(16, 'salsa2', 'salsa@gmail.com', 'salsa', 'batujajar', '123456', 'e10adc3949ba59abbe56e057f20f883e', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`idkamar`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`idkontak`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `oprator`
--
ALTER TABLE `oprator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`idpesan`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`idpesan`);

--
-- Indexes for table `stokkamar`
--
ALTER TABLE `stokkamar`
  ADD PRIMARY KEY (`idkamar`);

--
-- Indexes for table `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`idtamu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `idkontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `oprator`
--
ALTER TABLE `oprator`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `idpesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tamu`
--
ALTER TABLE `tamu`
  MODIFY `idtamu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
