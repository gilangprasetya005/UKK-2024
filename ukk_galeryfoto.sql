-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 08, 2024 at 06:48 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ukk_galeryfoto`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `albumid` int NOT NULL,
  `namaalbum` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggalbuat` date NOT NULL,
  `userid` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`albumid`, `namaalbum`, `deskripsi`, `tanggalbuat`, `userid`) VALUES
(14, 'Sunrice', 'Keindahan', '2024-03-05', 7),
(15, 'Mountain', 'Pegunungan', '2024-03-05', 9),
(16, 'Animal', 'Hewan', '2024-03-05', 9),
(17, 'Mountain', 'Pegunungan', '2024-03-05', 7),
(18, 'Animal', 'Hewan', '2024-03-05', 7),
(19, 'Sunset', 'Pemandangan', '2024-03-05', 7),
(20, 'Foto Otomotif', 'Kendaraan', '2024-03-05', 9),
(22, 'Foto Otomotif', 'Kendaraan', '2024-03-06', 10),
(23, 'Mountain', 'Pegunungan', '2024-03-06', 10),
(24, 'Sunset', 'Pemandangan', '2024-03-06', 10),
(25, 'Sunrice', 'Pagi Hari', '2024-03-06', 10),
(26, 'Animal', 'Hewan', '2024-03-06', 10),
(27, 'Mountain', 'Gunung', '2024-03-06', 11),
(29, 'Elektronik', 'Barang', '2024-03-07', 12),
(30, 'Foto Otomotif', 'Kendaraan', '2024-03-07', 13),
(31, 'Animasi', 'crayon', '2024-03-07', 13),
(33, 'makanan', 'makanan berat', '2024-03-08', 17),
(34, 'Foto Otomotif', 'kendaraan', '2024-03-08', 17),
(35, 'bvv', 'ffff', '2024-03-08', 17);

-- --------------------------------------------------------

--
-- Table structure for table `foto`
--

CREATE TABLE `foto` (
  `fotoid` int NOT NULL,
  `judulfoto` varchar(255) NOT NULL,
  `deskripsifoto` text NOT NULL,
  `tanggalunggah` date NOT NULL,
  `lokasifile` varchar(255) NOT NULL,
  `albumid` int NOT NULL,
  `userid` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `foto`
--

INSERT INTO `foto` (`fotoid`, `judulfoto`, `deskripsifoto`, `tanggalunggah`, `lokasifile`, `albumid`, `userid`) VALUES
(20, 'Animal', 'hewan', '2024-03-06', '1894614454-monyet.jpeg', 16, 9),
(21, 'Gunung Cikuray', 'Gunung', '2024-03-06', '1313691847-cikuray.jpeg', 15, 7),
(23, 'Bike', 'Kendaraan Beroda 2', '2024-03-06', '1904839686-bike.jpeg', 22, 10),
(24, 'Pantai', 'Daerah Pesisir Pantai', '2024-03-06', '20355362-Sunset.jpg', 24, 10),
(25, 'Suasana Pagi Hari', 'Sejuk dan Indah', '2024-03-06', '1833739745-sunscrice.jpeg', 25, 10),
(26, 'Gunung Cikuray', 'Gunung', '2024-03-06', '264947256-cikuray.jpeg', 23, 10),
(28, 'Gunung Cikuray', 'pemandangan', '2024-03-06', '285443359-image4.jpeg', 27, 11),
(29, 'Otomotif', 'Kendaraan', '2024-03-07', '1562272000-mobil.jpeg', 20, 9),
(30, 'Laptop Canggih', '2 juta', '2024-03-07', '602796900-laptop.png', 29, 12),
(31, 'motor', 'beroda dua', '2024-03-07', '2036102828-motor.jpg', 30, 13),
(32, 'Gambar krayon', 'tugas gambar', '2024-03-07', '1748469833-animasi.jpeg', 31, 13),
(35, 'mie', 'mie lengkap', '2024-03-08', '1220595731-mie.jpeg', 33, 17),
(36, 'mobil', 'ads', '2024-03-08', '477601442-mobil.jpeg', 34, 17);

-- --------------------------------------------------------

--
-- Table structure for table `komentarfoto`
--

CREATE TABLE `komentarfoto` (
  `komentarid` int NOT NULL,
  `fotoid` int NOT NULL,
  `userid` int NOT NULL,
  `isikomentar` text NOT NULL,
  `tanggalkomentar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `komentarfoto`
--

INSERT INTO `komentarfoto` (`komentarid`, `fotoid`, `userid`, `isikomentar`, `tanggalkomentar`) VALUES
(1, 31, 13, 'ini yang lagi saya carii', '2024-03-07'),
(2, 31, 13, 'kerenn motornya bro', '2024-03-07'),
(3, 26, 13, 'kapan ngedaki bareng nih?', '2024-03-07'),
(4, 28, 9, 'penguin yang menarik', '2024-03-07'),
(5, 31, 13, 'motor', '2024-03-07'),
(6, 30, 13, 'merk apa ni broo?', '2024-03-07'),
(7, 29, 9, 'mobil yang bagus', '2024-03-07'),
(8, 35, 17, 'sedap nii', '2024-03-08'),
(9, 36, 17, 'mobil yang menarik', '2024-03-08');

-- --------------------------------------------------------

--
-- Table structure for table `likefoto`
--

CREATE TABLE `likefoto` (
  `likeid` int NOT NULL,
  `fotoid` int NOT NULL,
  `userid` int NOT NULL,
  `tanggallike` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `likefoto`
--

INSERT INTO `likefoto` (`likeid`, `fotoid`, `userid`, `tanggallike`) VALUES
(1, 21, 7, '2024-03-06'),
(2, 22, 7, '2024-03-06'),
(3, 21, 7, '2024-03-06'),
(4, 22, 7, '2024-03-06'),
(5, 21, 7, '2024-03-06'),
(6, 22, 7, '2024-03-06'),
(7, 21, 7, '2024-03-06'),
(8, 21, 7, '2024-03-06'),
(9, 21, 7, '2024-03-06'),
(10, 22, 7, '2024-03-06'),
(11, 21, 7, '2024-03-06'),
(12, 21, 7, '2024-03-06'),
(17, 21, 7, '2024-03-06'),
(18, 22, 7, '2024-03-06'),
(19, 22, 7, '2024-03-06'),
(20, 21, 7, '2024-03-06'),
(36, 23, 10, '2024-03-06'),
(37, 24, 10, '2024-03-06'),
(41, 26, 9, '2024-03-06'),
(45, 24, 12, '2024-03-07'),
(46, 20, 12, '2024-03-07'),
(49, 25, 12, '2024-03-07'),
(56, 23, 9, '2024-03-07'),
(58, 28, 9, '2024-03-07'),
(59, 31, 9, '2024-03-07'),
(62, 32, 13, '2024-03-07'),
(64, 31, 13, '2024-03-07'),
(65, 20, 13, '2024-03-07'),
(66, 30, 13, '2024-03-07'),
(67, 20, 9, '2024-03-07'),
(68, 24, 9, '2024-03-07'),
(74, 35, 17, '2024-03-08');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `password_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(255) NOT NULL,
  `namalengkap` varchar(255) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password_user`, `email`, `namalengkap`, `alamat`) VALUES
(2, 'sakjdhdsa', 'sodajsad', 'sadjdsa@gmail.com', 'saiodjsdaj', 'asodsda'),
(3, 'us', 'pas', 'em@gmail.com', 'naleng', ''),
(4, 'tono', '54262d262ae2da6017d1047ae823d886', 'tono@gmail.com', 'tonoarduino', 'bandung'),
(8, 'gilangprsetya', '413ba9e5bbd34245782adc24da374509', 'turkanmekano@gmail.com', 'gilang', 'cibiru'),
(9, 'joko', '9ba0009aa81e794e628a04b51eaf7d7f', 'joko@gmail.com', 'jokodo', 'ntt'),
(10, 'nono', 'c625ade02c3acde8e4d9de57fca78203', 'nono@gmail.com', 'nono', 'cipacing'),
(11, 'jamal', '74f56399c89f4bd03ff5e85b6bf4e85f', 'jamal@jamal.com', 'jamal', 'surabaya'),
(12, 'agus', 'fdf169558242ee051cca1479770ebac3', 'agus@gmail.com', 'agus', 'cilenyi'),
(13, 'saya', '20c1a26a55039b30866c9d0aa51953ca', 'saya@gmail.com', 'saya', 'amsterdam'),
(14, 'palo', 'b50347c6fa8e55d5b562fe0f1511d324', 'palo@gmail.com', 'palo', 'riau'),
(15, 'sano', '7ec7d4601015ff019f3433e59a32a078', 'sano@gmail.com', 'sano', 'bangka'),
(16, 'andri', '6bd3108684ccc9dfd40b126877f850b0', 'andri@gmail.com', 'andri', 'amrik'),
(17, 'kano', 'b90f0f8e0fca2793be67dda2ec08fcfc', 'kano@gmail.com', 'kano', 'cianjur');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`albumid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`fotoid`),
  ADD KEY `albumid` (`albumid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD PRIMARY KEY (`komentarid`),
  ADD KEY `fotoid` (`fotoid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `likefoto`
--
ALTER TABLE `likefoto`
  ADD PRIMARY KEY (`likeid`),
  ADD KEY `fotoid` (`fotoid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `albumid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
  MODIFY `fotoid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `komentarfoto`
--
ALTER TABLE `komentarfoto`
  MODIFY `komentarid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `likefoto`
--
ALTER TABLE `likefoto`
  MODIFY `likeid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
