-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2023 at 07:09 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `psb-akp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `ID` int(11) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Alamat` text NOT NULL,
  `Nomor_Telepon` varchar(13) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Kata_Sandi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`ID`, `Nama`, `Alamat`, `Nomor_Telepon`, `Email`, `Kata_Sandi`) VALUES
(1, 'Muhammad Yudha', 'Jl. Perjuangan, Linkungan VII, Galang Kota , Galang', '081234567890', 'email@domain.com', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `tb_orang_tua`
--

CREATE TABLE `tb_orang_tua` (
  `ID` int(11) NOT NULL,
  `Nama_Ayah` varchar(30) NOT NULL,
  `Nama_Ibu` varchar(30) NOT NULL,
  `Alamat` text NOT NULL,
  `Nomor_Telepon` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_orang_tua`
--

INSERT INTO `tb_orang_tua` (`ID`, `Nama_Ayah`, `Nama_Ibu`, `Alamat`, `Nomor_Telepon`) VALUES
(1, 'Miswan', 'Ningsih', 'Jl. Perjuangan Link VII Galang', '081234567890');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pendaftaran`
--

CREATE TABLE `tb_pendaftaran` (
  `ID` int(11) NOT NULL,
  `ID_Siswa` int(11) NOT NULL,
  `ID_Orang_Tua` int(11) NOT NULL,
  `Tanggal_Daftar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_pendaftaran`
--

INSERT INTO `tb_pendaftaran` (`ID`, `ID_Siswa`, `ID_Orang_Tua`, `Tanggal_Daftar`) VALUES
(1, 1, 1, '2023-02-02');

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `ID` int(11) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Tanggal_Lahir` date NOT NULL,
  `Jenis_Kelamin` varchar(10) NOT NULL,
  `Asal_Sekolah` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`ID`, `Nama`, `Tanggal_Lahir`, `Jenis_Kelamin`, `Asal_Sekolah`) VALUES
(1, 'Irsyad', '2000-01-01', 'Laki-laki', 'SMP Negeri 1 Lubuk Pakam');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(128) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`) VALUES
(1, 'redhomeratno', 'redhomeratno@gmail.com', '$2y$10$X.NWsayHwweuiLU/s7i/7upxs/rzGxKJQA3Pk92OUFJ39SxAlfLM6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tb_orang_tua`
--
ALTER TABLE `tb_orang_tua`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tb_pendaftaran`
--
ALTER TABLE `tb_pendaftaran`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID_Siswa` (`ID_Siswa`),
  ADD UNIQUE KEY `ID_Orang_Tua` (`ID_Orang_Tua`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_orang_tua`
--
ALTER TABLE `tb_orang_tua`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_pendaftaran`
--
ALTER TABLE `tb_pendaftaran`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_pendaftaran`
--
ALTER TABLE `tb_pendaftaran`
  ADD CONSTRAINT `tb_pendaftaran_ibfk_1` FOREIGN KEY (`ID_Orang_Tua`) REFERENCES `tb_orang_tua` (`ID`),
  ADD CONSTRAINT `tb_pendaftaran_ibfk_2` FOREIGN KEY (`ID_Siswa`) REFERENCES `tb_siswa` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
