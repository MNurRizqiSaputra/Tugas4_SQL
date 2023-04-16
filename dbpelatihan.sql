-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2023 at 04:06 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpelatihan`
--

-- --------------------------------------------------------

--
-- Table structure for table `kehadiran`
--

CREATE TABLE `kehadiran` (
  `ID_Presensi` int(11) NOT NULL,
  `Status_Kehadiran` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kehadiran`
--

INSERT INTO `kehadiran` (`ID_Presensi`, `Status_Kehadiran`) VALUES
(1, 'Hadir'),
(2, 'Hadir'),
(3, 'Hadir'),
(4, 'Tidak Hadir'),
(5, 'Hadir'),
(6, 'Tidak Hadir');

-- --------------------------------------------------------

--
-- Table structure for table `materi_pelatihan`
--

CREATE TABLE `materi_pelatihan` (
  `ID_Materi` int(11) NOT NULL,
  `Nama_Materi` varchar(32) NOT NULL,
  `Deskripsi_Materi` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `materi_pelatihan`
--

INSERT INTO `materi_pelatihan` (`ID_Materi`, `Nama_Materi`, `Deskripsi_Materi`) VALUES
(1, 'Mobile Programming', 'Pengenalan & praktik pemrograman berbasis mobile dengan bahasa pemrograman tertentu'),
(2, 'Sales Strategy', 'Startegi penjualan produk dalam situasi pasar terkini'),
(3, 'Manajemen SDM', 'Prinsip-prinsip manajemen sumber daya manusia');

-- --------------------------------------------------------

--
-- Table structure for table `narasumber`
--

CREATE TABLE `narasumber` (
  `ID_Narasumber` int(11) NOT NULL,
  `Nama_Narasumber` varchar(32) NOT NULL,
  `Bidang_Keahlian` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `narasumber`
--

INSERT INTO `narasumber` (`ID_Narasumber`, `Nama_Narasumber`, `Bidang_Keahlian`) VALUES
(1, 'Ahmad', 'IT'),
(2, 'Putra', 'Sales'),
(3, 'Wulan', 'HR');

-- --------------------------------------------------------

--
-- Table structure for table `pelatihan`
--

CREATE TABLE `pelatihan` (
  `ID_Pelatihan` int(11) NOT NULL,
  `Nama_Pelatihan` varchar(64) NOT NULL,
  `Tanggal_Pelatihan` date NOT NULL,
  `Lokasi_Pelatihan` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pelatihan`
--

INSERT INTO `pelatihan` (`ID_Pelatihan`, `Nama_Pelatihan`, `Tanggal_Pelatihan`, `Lokasi_Pelatihan`) VALUES
(1, 'Pelatihan IT', '2023-05-15', 'Jakarta'),
(2, 'Pelatihan Sales', '2023-06-20', 'Bandung'),
(3, 'Pelatihan HR', '2023-07-10', 'Surabaya');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `ID_Pendaftaran` int(11) NOT NULL,
  `Nama_Peserta` varchar(32) NOT NULL,
  `Jabatan_Peserta` varchar(32) NOT NULL,
  `Divisi_Peserta` varchar(32) NOT NULL,
  `Tanggal_Daftar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pendaftaran`
--

INSERT INTO `pendaftaran` (`ID_Pendaftaran`, `Nama_Peserta`, `Jabatan_Peserta`, `Divisi_Peserta`, `Tanggal_Daftar`) VALUES
(1, 'Agung', 'IT Analis', 'IT', '2023-04-18'),
(2, 'Budi', 'IT Developer', 'IT', '2023-04-19'),
(3, 'Chika', 'Sales Executive', 'Sales', '2023-05-01'),
(4, 'Dito', 'Sales Manager', 'Sales', '2023-05-02'),
(5, 'Eka', 'HR Officer', 'HR', '2023-06-19'),
(6, 'Fani', 'HR Manager', 'HR', '2023-06-20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD PRIMARY KEY (`ID_Presensi`);

--
-- Indexes for table `materi_pelatihan`
--
ALTER TABLE `materi_pelatihan`
  ADD PRIMARY KEY (`ID_Materi`);

--
-- Indexes for table `narasumber`
--
ALTER TABLE `narasumber`
  ADD PRIMARY KEY (`ID_Narasumber`);

--
-- Indexes for table `pelatihan`
--
ALTER TABLE `pelatihan`
  ADD PRIMARY KEY (`ID_Pelatihan`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`ID_Pendaftaran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kehadiran`
--
ALTER TABLE `kehadiran`
  MODIFY `ID_Presensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `materi_pelatihan`
--
ALTER TABLE `materi_pelatihan`
  MODIFY `ID_Materi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `narasumber`
--
ALTER TABLE `narasumber`
  MODIFY `ID_Narasumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pelatihan`
--
ALTER TABLE `pelatihan`
  MODIFY `ID_Pelatihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `ID_Pendaftaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
