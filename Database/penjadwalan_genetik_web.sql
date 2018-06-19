-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2018 at 03:08 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjadwalan_genetik_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `kode` int(2) NOT NULL,
  `nidn` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `telp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`kode`, `nidn`, `nama`, `alamat`, `telp`) VALUES
(1, '0120077401', 'Mariana Simanjuntak, S.S, M.Sc', '', ''),
(3, '0119098101', 'Anthon Roberto Tampubolon, S.Kom, M.T', '', ''),
(4, '0121038401', 'Roy Deddy Hasiholan Lumban Tobing, S.T.,M.ICT', '', ''),
(41, '0118118201', 'Inte Christinawati Bu''ulolo, ST., M.T.I', '', ''),
(42, '0112058504', 'Verawaty Situmorang, S.Kom., M.T.I', '', ''),
(43, '0000000000', 'Tulus Pardamean Simanjuntak, SST', '', ''),
(44, '0129118901', 'Togu Novriansyah Turnip, S.S.T., M.IM', '', ''),
(45, '0120069101', 'M. Yusuf Hakim Widianto, M.Si, M.Sc', '', ''),
(47, '0117068901', 'Yuniarta Basani, S.Si, M.Si', '', ''),
(49, '0116108503', 'Kisno, S.Pd, M.Pd', '', ''),
(50, '0128049001', 'Rismal, S.Pd, M.Si', '', ''),
(52, '9931000091', 'Eka Stephani Sinambela, SST., M.Sc', '', ''),
(53, '0121048604', 'Maisevli Harika, M.T, M.Eng.', '', ''),
(55, '0105088310', 'Santi Agustina Manalu, S.S., M.Pd', '', ''),
(60, '0131089001', 'Mukhammad Solikhin, S.Si, M.Si', '', ''),
(61, '0121058503', 'Riyanthi Angrainy Sianturi, S.Sos, M.Ds', '', ''),
(62, '0115017701', 'Dr. Arnaldo Marulitua Sinaga, S.T, M.InfoTech', '', ''),
(67, '0109049001', 'Ike Fitriyaningsih, S.Si, M.Si', '', ''),
(73, '0117027901', 'Dr. Arlinta Christy Barus, S.T, M.InfoTech', '', ''),
(74, '0130068601', 'Devis Wawan Saputra, ST., MBA', '', ''),
(77, '0118097802', 'Lit Malem Ginting, S.Si, MT', '', ''),
(81, '0927028002', 'Arie Satia Dharma, S.T, M.Kom', '', ''),
(82, '0108057601', 'Rumondang Miranda Marsaulina, S.P, M.Si', '', ''),
(83, '0128109001', 'Nenni Mona Aruan, S.Pd., M.Si', '', ''),
(84, '0130058604', 'Ernie Bertha Nababan, S.Pd, M.Pd', 'Institut Teknologi Del', ''),
(85, '0110117601', 'Tennov Simanjuntak, S.T, M.Sc', 'Institut Teknologi Del', ''),
(86, '0108024001', 'Ir. Partumpuan Naiborhu, M.M', 'Institut Teknologi Del', '');

-- --------------------------------------------------------

--
-- Table structure for table `hari`
--

CREATE TABLE `hari` (
  `kode` int(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hari`
--

INSERT INTO `hari` (`kode`, `nama`) VALUES
(1, 'Senin'),
(2, 'Selasa'),
(3, 'Rabu'),
(4, 'Kamis'),
(5, 'Jumat');

-- --------------------------------------------------------

--
-- Table structure for table `jadwalkuliah`
--

CREATE TABLE `jadwalkuliah` (
  `kode` int(10) NOT NULL,
  `kode_pengampu` int(10) DEFAULT NULL,
  `kode_jam` int(10) DEFAULT NULL,
  `kode_hari` int(10) DEFAULT NULL,
  `kode_ruang` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='hasil proses';

--
-- Dumping data for table `jadwalkuliah`
--

INSERT INTO `jadwalkuliah` (`kode`, `kode_pengampu`, `kode_jam`, `kode_hari`, `kode_ruang`) VALUES
(1, 14, 8, 3, 17),
(2, 15, 4, 4, 4),
(3, 16, 7, 4, 4),
(4, 17, 8, 2, 16),
(5, 42, 1, 1, 10),
(6, 43, 5, 1, 16),
(7, 47, 3, 2, 17),
(8, 67, 9, 3, 10),
(9, 88, 4, 1, 10),
(10, 89, 7, 5, 9),
(11, 96, 9, 2, 17),
(12, 97, 5, 1, 4),
(13, 0, 0, 0, 0),
(14, 99, 2, 5, 9),
(15, 157, 1, 2, 9),
(16, 158, 7, 4, 16),
(17, 159, 3, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jam`
--

CREATE TABLE `jam` (
  `kode` int(10) NOT NULL,
  `range_jam` varchar(50) DEFAULT NULL,
  `aktif` enum('Y','N') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jam`
--

INSERT INTO `jam` (`kode`, `range_jam`, `aktif`) VALUES
(1, '08.00-08.50', NULL),
(2, '08.50-09.30', NULL),
(3, '09.40-10.30', NULL),
(4, '10.30-11.20', NULL),
(5, '11.20-12.10', NULL),
(6, '12.10-13.00', NULL),
(7, '13.00-13.50', NULL),
(8, '13.50-14.40', NULL),
(9, '14.40-15.30', NULL),
(10, '15.30-16.20', NULL),
(11, '16.20-17.10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode` int(10) NOT NULL,
  `kode_mk` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `sks` int(6) DEFAULT NULL,
  `semester` int(6) DEFAULT NULL,
  `aktif` enum('True','False') DEFAULT 'True',
  `jenis` enum('TEORI','PRAKTIKUM') DEFAULT 'TEORI'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='example kode_mk = 0765109 ';

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`kode`, `kode_mk`, `nama`, `sks`, `semester`, `aktif`, `jenis`) VALUES
(1, 'IF411111', 'Bahasa Indonesia ', 2, 1, 'True', 'TEORI'),
(2, 'IF421315', 'Sistem Basis Data', 3, 3, 'True', 'TEORI'),
(3, 'IF411213', 'Matematika Diskrit', 3, 1, 'True', 'TEORI'),
(4, 'IF411222', 'Probabilitas dan Statistik', 3, 2, 'True', 'TEORI'),
(5, 'IF421324', 'Proyek Akhir Tahun II', 4, 4, 'True', 'PRAKTIKUM'),
(6, 'IF411315', 'Pengembangan Situs Web', 2, 1, 'True', 'PRAKTIKUM'),
(7, 'IF411318', 'Sistem Operasi', 3, 1, 'True', 'TEORI'),
(8, 'IF411112', 'Bahasa Inggris I', 2, 1, 'True', 'TEORI'),
(9, 'IF421316', 'Pengenalan Sistem Informasi', 2, 3, 'True', 'TEORI'),
(10, 'IF421317', 'Pengenalan Rekayasa Perangkat Lunak', 2, 3, 'True', 'TEORI'),
(11, 'IF411316', 'Arsitektur dan Organisasi Komputer', 3, 1, 'True', 'TEORI'),
(12, 'IF421122', 'Bahasa Inggris IV', 2, 4, 'True', 'TEORI'),
(13, 'IF411317', 'Dasar Pemrograman', 1, 1, 'True', 'TEORI'),
(14, 'IF421111', 'Bahasa Inggris III', 2, 3, 'True', 'TEORI'),
(15, 'IF411323', 'Perancangan Antarmuka Pengguna', 3, 2, 'True', 'TEORI'),
(16, 'IF411121', 'Bahasa Inggris II', 2, 2, 'True', 'TEORI'),
(17, 'IF421314', 'Pemrograman Berorientasi Objek', 3, 3, 'True', 'TEORI'),
(18, 'IF421418', 'Komunikasi Interpersonal', 2, 3, 'True', 'TEORI'),
(19, NULL, 'Struktur Data  (C++/Java)  (P)', 3, 2, 'True', 'PRAKTIKUM'),
(20, 'IF421112', 'Pancasila dan Kewarganegaraan', 2, 3, 'True', 'TEORI'),
(21, NULL, 'Teknologi Komputer Utilitas (P) ', 2, 2, 'True', 'PRAKTIKUM'),
(22, 'IF411314', 'Pengantar Teknologi Informasi', 2, 1, 'True', 'TEORI'),
(23, 'IF421121', 'Agama dan Etika', 2, 4, 'True', 'PRAKTIKUM'),
(24, 'KUS1101', 'Pembentukan Karakter Del', 2, 2, 'True', 'TEORI'),
(25, NULL, 'Matematika Diskrit (P) ', 2, 4, 'True', 'PRAKTIKUM'),
(26, 'IF411427', 'Proyek Akhir Tahun I', 3, 2, 'True', 'PRAKTIKUM'),
(27, NULL, 'Pemrograman Science II (P)', 3, 4, 'True', 'PRAKTIKUM'),
(28, 'IF411326', 'Struktur Data', 3, 2, 'True', 'TEORI'),
(29, NULL, 'Pemrograman Desktop II (VB) (P) ', 3, 4, 'True', 'PRAKTIKUM'),
(30, 'IF421323', 'Pemrograman Berbasis Komponen dan Framework', 4, 4, 'True', 'TEORI'),
(31, NULL, 'Teknologi Open Source II  (P)', 3, 6, 'True', 'PRAKTIKUM'),
(32, 'IF411324', 'Jaringan Komputer', 3, 2, 'True', 'TEORI'),
(33, NULL, 'Pemrograman Mobile II (P)', 3, 6, 'True', 'PRAKTIKUM'),
(34, 'IF421325', 'Analisis Kebutuhan Perangkat Lunak', 3, 4, 'True', 'TEORI'),
(35, NULL, 'Web Desain (P)', 2, 6, 'True', 'PRAKTIKUM'),
(36, 'IF421313', 'Pengembangan Aplikasi Berbasis Internet', 4, 3, 'True', 'TEORI'),
(38, 'IF421326', 'Pengembangan Aplikasi Sistem Terdistribusi', 3, 4, 'True', 'TEORI'),
(39, 'IF43290', 'Proyek Akhir Tahun III', 4, 6, 'True', 'PRAKTIKUM'),
(40, 'KU43203', 'Komputer Dan Masyarakat ', 2, 6, 'True', 'TEORI'),
(41, 'IF44206', 'Kecerdasan Buatan', 3, 6, 'True', 'TEORI'),
(42, 'IF43104', 'Pengembangan Aplikasi Game', 3, 5, 'True', 'TEORI'),
(43, 'IF44207', 'Pembelajaran Mesin', 3, 6, 'True', 'TEORI');

-- --------------------------------------------------------

--
-- Table structure for table `pengampu`
--

CREATE TABLE `pengampu` (
  `kode` int(10) NOT NULL,
  `kode_mk` int(10) DEFAULT NULL,
  `kode_dosen` int(10) DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  `tahun_akademik` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengampu`
--

INSERT INTO `pengampu` (`kode`, `kode_mk`, `kode_dosen`, `kelas`, `tahun_akademik`) VALUES
(1, 1, 1, 'F', '2011-2012'),
(2, 1, 1, 'G', '2011-2012'),
(3, 1, 1, 'H', '2011-2012'),
(6, 2, 3, 'A', '2011-2012'),
(7, 2, 3, 'C', '2011-2012'),
(8, 2, 3, 'D', '2011-2012'),
(9, 2, 3, 'B', '2011-2012'),
(10, 2, 4, 'E', '2011-2012'),
(11, 2, 4, 'G', '2011-2012'),
(12, 2, 4, 'H', '2011-2012'),
(13, 2, 4, 'F', '2011-2012'),
(14, 4, 43, 'C', '2011-2012'),
(15, 4, 43, 'A', '2011-2012'),
(16, 4, 43, 'B', '2011-2012'),
(17, 4, 43, 'D', '2011-2012'),
(38, 20, 41, 'E', '2011-2012'),
(39, 20, 41, 'C', '2011-2012'),
(40, 20, 41, 'D', '2011-2012'),
(41, 20, 41, 'F', '2011-2012'),
(42, 12, 41, 'A', '2011-2012'),
(43, 12, 41, 'B', '2011-2012'),
(44, 18, 42, 'H', '2011-2012'),
(45, 18, 42, 'G', '2011-2012'),
(47, 34, 42, 'D', '2011-2012'),
(48, 7, 49, 'F', '2011-2012'),
(49, 7, 49, 'D', '2011-2012'),
(50, 7, 49, 'C', '2011-2012'),
(51, 7, 50, 'A', '2011-2012'),
(52, 7, 50, 'B', '2011-2012'),
(53, 22, 55, 'B', '2011-2012'),
(54, 22, 55, 'A', '2011-2012'),
(55, 22, 55, 'C', '2011-2012'),
(56, 22, 55, 'D', '2011-2012'),
(60, 20, 44, 'B', '2011-2012'),
(61, 22, 44, 'G', '2011-2012'),
(62, 22, 44, 'E', '2011-2012'),
(63, 22, 44, 'F', '2011-2012'),
(64, 20, 45, 'A', '2011-2012'),
(65, 20, 45, 'G', '2011-2012'),
(66, 20, 45, 'H', '2011-2012'),
(67, 12, 45, 'C', '2011-2012'),
(72, 18, 47, 'F', '2011-2012'),
(73, 18, 47, 'E', '2011-2012'),
(77, 11, 77, 'E', '2011-2012'),
(78, 11, 77, 'D', '2011-2012'),
(79, 11, 77, 'F', '2011-2012'),
(88, 30, 67, 'B', '2011-2012'),
(89, 30, 67, 'A', '2011-2012'),
(96, 24, 82, 'B', '2011-2012'),
(97, 24, 82, 'C', '2011-2012'),
(98, 24, 82, 'D', '2011-2012'),
(99, 24, 82, 'A', '2011-2012'),
(100, 11, 83, 'B', '2011-2012'),
(101, 11, 83, 'A', '2011-2012'),
(102, 11, 83, 'C', '2011-2012'),
(112, 8, 81, 'D', '2011-2012'),
(113, 8, 81, 'F', '2011-2012'),
(114, 8, 81, 'E', '2011-2012'),
(124, 3, 52, 'C', '2011-2012'),
(125, 3, 52, 'E', '2011-2012'),
(126, 3, 52, 'D', '2011-2012'),
(127, 3, 53, 'H', '2011-2012'),
(128, 3, 53, 'G', '2011-2012'),
(129, 3, 53, 'F', '2011-2012'),
(149, 13, 60, 'A', '2011-2012'),
(150, 13, 60, 'B', '2011-2012'),
(155, 36, 81, 'B', '2011-2012'),
(157, 28, 74, 'F', '2011-2012'),
(158, 28, 74, 'G', '2011-2012'),
(159, 26, 73, 'G', '2011-2012'),
(165, 14, 61, 'A', '2011-2012'),
(166, 14, 61, 'B', '2011-2012'),
(167, 14, 62, 'C', '2011-2012'),
(168, 11, 3, '31TI', '2018-2019'),
(169, 11, 3, '41TI', '2018-2019'),
(170, 1, 84, '31TI', '2018-2019'),
(171, 1, 84, '42TI', '2018-2019'),
(172, 8, 82, '31TI', '2018-2019'),
(173, 8, 82, '41TI', '2018-2019'),
(174, 14, 82, '32TI', '2018-2019'),
(175, 14, 82, '42TI', '2018-2019'),
(176, 13, 85, '31TI', '2018-2019'),
(177, 13, 85, '41TI', '2018-2019'),
(178, 18, 84, '32TI', '2018-2019'),
(179, 18, 84, '42TI', '2018-2019'),
(180, 3, 67, '32TI', '2018-2019'),
(181, 3, 67, '41TI', '2018-2019'),
(182, 20, 86, '32TI', '2018-2019'),
(183, 20, 86, '42TI', '2018-2019'),
(184, 17, 4, '32TI', '2018-2019'),
(185, 17, 4, '42TI', '2018-2019'),
(186, 17, 4, '42TI', '2018-2019'),
(187, 40, 4, '43TI', '2018-2019'),
(188, 40, 4, '33TI', '2018-2019'),
(189, 42, 77, '33TI', '2018-2019'),
(190, 42, 77, '43TI', '2018-2019'),
(191, 43, 3, '43TI', '2018-2019');

-- --------------------------------------------------------

--
-- Table structure for table `ruang`
--

CREATE TABLE `ruang` (
  `kode` int(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `kapasitas` int(10) DEFAULT NULL,
  `jenis` enum('TEORI','LABORATORIUM') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruang`
--

INSERT INTO `ruang` (`kode`, `nama`, `kapasitas`, `jenis`) VALUES
(1, 'GD513', 0, 'LABORATORIUM'),
(2, 'GD514', 0, 'LABORATORIUM'),
(3, 'GD515', 0, 'LABORATORIUM'),
(4, 'GD516', 0, 'TEORI'),
(5, 'GD524', 0, 'LABORATORIUM'),
(6, 'GD515', 0, 'LABORATORIUM'),
(7, 'GD525', 0, 'LABORATORIUM'),
(8, 'GD526', 0, 'LABORATORIUM'),
(9, 'GD711', 30, 'TEORI'),
(10, 'GD712', 30, 'TEORI'),
(11, 'GD713', 30, 'LABORATORIUM'),
(12, 'GD714', 60, 'LABORATORIUM'),
(13, 'GD715', 30, 'LABORATORIUM'),
(14, 'GD716', 30, 'LABORATORIUM'),
(15, 'GD717', 30, 'LABORATORIUM'),
(16, 'GD721', 60, 'TEORI'),
(17, 'GD722', 90, 'TEORI'),
(18, 'GD723', 60, 'LABORATORIUM'),
(19, 'GD724', 30, 'LABORATORIUM'),
(20, 'GD725', 30, 'LABORATORIUM'),
(21, 'GD726', 30, 'LABORATORIUM');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `level` enum('Y','N') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `waktu_tidak_bersedia`
--

CREATE TABLE `waktu_tidak_bersedia` (
  `kode` int(10) NOT NULL,
  `kode_dosen` int(10) DEFAULT NULL,
  `kode_hari` int(10) DEFAULT NULL,
  `kode_jam` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `waktu_tidak_bersedia`
--

INSERT INTO `waktu_tidak_bersedia` (`kode`, `kode_dosen`, `kode_hari`, `kode_jam`) VALUES
(1, 3, 1, 6),
(2, 3, 2, 6),
(3, 3, 3, 6),
(4, 3, 4, 6),
(5, 3, 5, 6),
(6, 81, 1, 6),
(7, 81, 2, 6),
(8, 81, 3, 6),
(9, 81, 4, 6),
(10, 81, 5, 6),
(11, 74, 1, 6),
(12, 74, 2, 6),
(13, 74, 3, 6),
(14, 74, 4, 6),
(15, 74, 5, 6),
(16, 73, 1, 6),
(17, 73, 2, 6),
(18, 73, 3, 6),
(19, 73, 4, 6),
(20, 73, 5, 6),
(21, 62, 1, 6),
(22, 62, 2, 6),
(23, 62, 3, 6),
(24, 62, 4, 6),
(25, 62, 5, 6),
(26, 52, 1, 6),
(27, 52, 2, 6),
(28, 52, 3, 6),
(29, 52, 4, 6),
(30, 52, 5, 6),
(31, 84, 1, 6),
(32, 84, 2, 6),
(33, 84, 3, 6),
(34, 84, 4, 6),
(35, 84, 5, 6),
(36, 67, 1, 6),
(37, 67, 2, 6),
(38, 67, 3, 6),
(39, 67, 4, 6),
(40, 67, 5, 6),
(41, 41, 1, 6),
(42, 41, 2, 6),
(43, 41, 3, 6),
(44, 41, 4, 6),
(45, 41, 5, 6),
(46, 86, 1, 6),
(47, 86, 2, 6),
(48, 86, 3, 6),
(49, 86, 4, 6),
(50, 86, 5, 6),
(51, 49, 1, 6),
(52, 49, 2, 6),
(53, 49, 3, 6),
(54, 49, 4, 6),
(55, 49, 5, 6),
(56, 77, 1, 6),
(57, 77, 2, 6),
(58, 77, 3, 6),
(59, 77, 4, 6),
(60, 77, 5, 6),
(61, 45, 1, 6),
(62, 45, 2, 6),
(63, 45, 3, 6),
(64, 45, 4, 6),
(65, 45, 5, 6),
(66, 53, 1, 6),
(67, 53, 2, 6),
(68, 53, 3, 6),
(69, 53, 4, 6),
(70, 53, 5, 6),
(71, 1, 1, 6),
(72, 1, 2, 6),
(73, 1, 3, 6),
(74, 1, 4, 6),
(75, 1, 5, 6),
(76, 60, 1, 6),
(77, 60, 2, 6),
(78, 60, 3, 6),
(79, 60, 4, 6),
(80, 60, 5, 6),
(81, 83, 1, 6),
(82, 83, 2, 6),
(83, 83, 3, 6),
(84, 83, 4, 6),
(85, 83, 5, 6),
(86, 50, 1, 6),
(87, 50, 2, 6),
(88, 50, 3, 6),
(89, 50, 4, 6),
(90, 50, 5, 6),
(91, 61, 1, 6),
(92, 61, 2, 6),
(93, 61, 3, 6),
(94, 61, 4, 6),
(95, 61, 5, 6),
(96, 4, 1, 6),
(97, 4, 2, 6),
(98, 4, 3, 6),
(99, 4, 4, 6),
(100, 4, 5, 6),
(101, 82, 1, 6),
(102, 82, 2, 6),
(103, 82, 3, 6),
(104, 82, 4, 6),
(105, 82, 5, 6),
(106, 55, 1, 6),
(107, 55, 2, 6),
(108, 55, 3, 6),
(109, 55, 4, 6),
(110, 55, 5, 6),
(111, 85, 1, 6),
(112, 85, 2, 6),
(113, 85, 3, 6),
(114, 85, 4, 6),
(115, 85, 5, 6),
(116, 44, 1, 6),
(117, 44, 2, 6),
(118, 44, 3, 6),
(119, 44, 4, 6),
(120, 44, 5, 6),
(121, 43, 1, 6),
(122, 43, 2, 6),
(123, 43, 3, 6),
(124, 43, 4, 6),
(125, 43, 5, 6),
(126, 47, 1, 6),
(127, 47, 2, 6),
(128, 47, 3, 6),
(129, 47, 4, 6),
(130, 47, 5, 6),
(131, 42, 1, 6),
(132, 42, 2, 6),
(133, 42, 3, 6),
(134, 42, 4, 6),
(135, 42, 5, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `hari`
--
ALTER TABLE `hari`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `jadwalkuliah`
--
ALTER TABLE `jadwalkuliah`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `jam`
--
ALTER TABLE `jam`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `pengampu`
--
ALTER TABLE `pengampu`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `waktu_tidak_bersedia`
--
ALTER TABLE `waktu_tidak_bersedia`
  ADD PRIMARY KEY (`kode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `kode` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `hari`
--
ALTER TABLE `hari`
  MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `jadwalkuliah`
--
ALTER TABLE `jadwalkuliah`
  MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `jam`
--
ALTER TABLE `jam`
  MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `matakuliah`
--
ALTER TABLE `matakuliah`
  MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `pengampu`
--
ALTER TABLE `pengampu`
  MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;
--
-- AUTO_INCREMENT for table `ruang`
--
ALTER TABLE `ruang`
  MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `waktu_tidak_bersedia`
--
ALTER TABLE `waktu_tidak_bersedia`
  MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
