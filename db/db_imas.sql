-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Des 2023 pada 18.55
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_imas`
--
CREATE DATABASE IF NOT EXISTS `db_imas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_imas`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `aktif` varchar(5) NOT NULL,
  `foto` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama_lengkap`, `username`, `password`, `aktif`, `foto`) VALUES
(1, 'Entus Azi Bachtiar', 'admin@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Y', 'admin.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_guru`
--

CREATE TABLE `tb_guru` (
  `id_guru` int(11) NOT NULL,
  `nip` varchar(15) NOT NULL,
  `nama_guru` varchar(120) NOT NULL,
  `email` varchar(65) NOT NULL,
  `password` varchar(100) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_guru`
--

INSERT INTO `tb_guru` (`id_guru`, `nip`, `nama_guru`, `email`, `password`, `foto`, `status`) VALUES
(5, '001', 'Fatmawati S.Pd', 'fatmawati@gmail.com', 'e193a01ecf8d30ad0affefd332ce934e32ffce72', 'guru.png', 'Y'),
(10, '002', 'Entus Azi Bachtiar.Mpd', 'entus03022003@gmail.com', '6fc978af728d43c59faa400d5f6e0471ac850d4c', '3001764.png', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kepsek`
--

CREATE TABLE `tb_kepsek` (
  `id_kepsek` int(11) NOT NULL,
  `nip` varchar(15) NOT NULL,
  `nama_kepsek` varchar(120) NOT NULL,
  `email` varchar(65) NOT NULL,
  `password` varchar(100) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kepsek`
--

INSERT INTO `tb_kepsek` (`id_kepsek`, `nip`, `nama_kepsek`, `email`, `password`, `foto`, `status`) VALUES
(1, '12345', 'Sugitat Bagja M.Pd', 'amirudiin@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'kepala.png', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_master_mapel`
--

CREATE TABLE `tb_master_mapel` (
  `id_mapel` int(11) NOT NULL,
  `kode_mapel` varchar(40) NOT NULL,
  `mapel` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_master_mapel`
--

INSERT INTO `tb_master_mapel` (`id_mapel`, `kode_mapel`, `mapel`) VALUES
(1, 'MP-1561560093', 'Bahasa Indonesia'),
(2, 'MP-1561560129', 'Matematika'),
(3, 'MP-1561871991', 'Biologi'),
(4, 'MP-1561872004', 'Sejarah'),
(5, 'MP-1561872013', 'Teknologi Informasi'),
(6, 'MP-1561872026', 'Seni Budaya'),
(7, 'MP-1561872043', 'Bahasa Inggris'),
(8, 'MP-1615002340', 'Ilmu Pengetahuan Alam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mengajar`
--

CREATE TABLE `tb_mengajar` (
  `id_mengajar` int(11) NOT NULL,
  `kode_pelajaran` varchar(30) NOT NULL,
  `hari` varchar(40) NOT NULL,
  `jam_mengajar` varchar(60) NOT NULL,
  `jamke` varchar(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_mkelas` int(11) NOT NULL,
  `id_semester` int(11) NOT NULL,
  `id_thajaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_mengajar`
--

INSERT INTO `tb_mengajar` (`id_mengajar`, `kode_pelajaran`, `hari`, `jam_mengajar`, `jamke`, `id_guru`, `id_mapel`, `id_mkelas`, `id_semester`, `id_thajaran`) VALUES
(1, 'MPL-1614670924', 'Senin', '09.00-10.00', '1-2', 1, 1, 1, 1, 2),
(2, 'MPL-1614674537', 'Senin', '09.00-10.00', '1-2', 5, 1, 1, 1, 2),
(4, 'MPL-1615004563', 'Senin', '08.00-09.00', '1', 6, 2, 3, 2, 2),
(5, 'MPL-1616288498', 'Rabu', '09.00-10.00', '2', 8, 7, 1, 2, 2),
(6, 'MPL-1582242668', 'Senin', '08.00-09.00', '1', 5, 1, 1, 4, 8),
(7, 'MPL-1616673172', 'Senin', '08.00-09.00', '1', 5, 1, 5, 4, 8),
(8, 'MPL-1702633021', 'Sabtu', '08.00-09.00', '3', 5, 2, 9, 4, 8),
(9, 'MPL-1702660346', 'Selasa', '08.00-09.00', '1', 10, 2, 9, 4, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mkelas`
--

CREATE TABLE `tb_mkelas` (
  `id_mkelas` int(11) NOT NULL,
  `kd_kelas` varchar(40) NOT NULL,
  `nama_kelas` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_mkelas`
--

INSERT INTO `tb_mkelas` (`id_mkelas`, `kd_kelas`, `nama_kelas`) VALUES
(8, 'KL-1702632706', 'X'),
(9, 'KL-1702632715', 'XI'),
(10, 'KL-1702632720', 'XII');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_semester`
--

CREATE TABLE `tb_semester` (
  `id_semester` int(11) NOT NULL,
  `semester` varchar(45) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_semester`
--

INSERT INTO `tb_semester` (`id_semester`, `semester`, `status`) VALUES
(4, 'Ganjil', 1),
(5, 'Genap', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` varchar(60) NOT NULL,
  `nama_siswa` varchar(120) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` varchar(15) NOT NULL,
  `th_angkatan` year(4) NOT NULL,
  `id_mkelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `nis`, `nama_siswa`, `tempat_lahir`, `tgl_lahir`, `jk`, `alamat`, `password`, `foto`, `status`, `th_angkatan`, `id_mkelas`) VALUES
(9, '0009', 'Syahdan Ali', 'Kab. Karawang', '2003-07-16', 'L', 'Alun-Alun', '8815061c1a6c63398b9a2dfb1f44aae89dd59bfd', '3001764.png', '1', 2018, 9),
(10, '0010', 'Nishy', 'Kab. Karawang', '2003-11-12', 'P', 'Tempuran', '69e356fc5b897ff52301d1a4d870e2862a05c244', '3231671.png', '1', 2018, 9),
(11, '0007', 'Dian', 'Kab. Karawang', '2002-05-15', 'P', 'Tirtamulya', '83de061fb52099b8b9b03b3ae4e888d6b10d9e5e', '3231671.png', '1', 2018, 9),
(12, '0003', 'Muhammad Nur Arsyi ', 'Kab. Karawang', '2003-01-01', 'L', 'Selang', '5caa47a3e35d5c847e2666a8f9c82c5287640e40', '3001764.png', '1', 2018, 9),
(13, '0004', 'Muhammad Husaini ', 'Bandung', '2003-06-15', 'L', 'Lamaran', 'a031eb6d2f6330f89b937098d4439578421617df', '3001764.png', '1', 2018, 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_thajaran`
--

CREATE TABLE `tb_thajaran` (
  `id_thajaran` int(11) NOT NULL,
  `tahun_ajaran` varchar(30) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_thajaran`
--

INSERT INTO `tb_thajaran` (`id_thajaran`, `tahun_ajaran`, `status`) VALUES
(7, '2020/2021', 0),
(8, '2022/2023', 1),
(9, '2019/2020', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_walikelas`
--

CREATE TABLE `tb_walikelas` (
  `id_walikelas` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_mkelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_walikelas`
--

INSERT INTO `tb_walikelas` (`id_walikelas`, `id_guru`, `id_mkelas`) VALUES
(9, 5, 8),
(10, 10, 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `_logabsensi`
--

CREATE TABLE `_logabsensi` (
  `id_presensi` int(11) NOT NULL,
  `id_mengajar` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `tgl_absen` date NOT NULL,
  `ket` enum('H','I','S','T','A','B') NOT NULL,
  `pertemuan_ke` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `_logabsensi`
--

INSERT INTO `_logabsensi` (`id_presensi`, `id_mengajar`, `id_siswa`, `tgl_absen`, `ket`, `pertemuan_ke`) VALUES
(1, 2, 1, '2021-03-02', '', '1'),
(2, 4, 2, '2021-03-06', 'I', '1'),
(3, 2, 1, '2021-03-21', 'H', '2'),
(4, 2, 3, '2021-03-21', 'H', '3'),
(5, 5, 1, '2021-03-21', 'H', '1'),
(6, 5, 3, '2021-03-21', 'H', '1'),
(7, 2, 1, '2021-03-23', 'H', '4'),
(8, 2, 3, '2021-03-23', 'I', '4'),
(9, 6, 1, '2021-03-23', 'H', '1'),
(10, 6, 3, '2021-03-23', 'H', '1'),
(11, 6, 4, '2021-03-23', 'H', '1'),
(12, 6, 1, '2021-03-25', 'I', '2'),
(13, 6, 3, '2021-03-25', 'I', '2'),
(14, 6, 4, '2021-03-25', 'I', '2'),
(15, 8, 8, '2023-12-15', 'H', '1'),
(16, 8, 9, '2023-12-15', 'H', '1'),
(17, 8, 10, '2023-12-15', 'H', '1'),
(18, 8, 11, '2023-12-15', 'H', '1'),
(19, 8, 12, '2023-12-15', 'H', '2'),
(20, 8, 13, '2023-12-15', 'H', '2'),
(21, 9, 9, '2023-12-15', 'H', '1'),
(22, 9, 10, '2023-12-15', 'H', '1'),
(23, 9, 11, '2023-12-15', 'H', '1'),
(24, 9, 12, '2023-12-15', 'H', '1'),
(25, 9, 13, '2023-12-15', 'H', '1');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indeks untuk tabel `tb_kepsek`
--
ALTER TABLE `tb_kepsek`
  ADD PRIMARY KEY (`id_kepsek`);

--
-- Indeks untuk tabel `tb_master_mapel`
--
ALTER TABLE `tb_master_mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indeks untuk tabel `tb_mengajar`
--
ALTER TABLE `tb_mengajar`
  ADD PRIMARY KEY (`id_mengajar`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indeks untuk tabel `tb_mkelas`
--
ALTER TABLE `tb_mkelas`
  ADD PRIMARY KEY (`id_mkelas`);

--
-- Indeks untuk tabel `tb_semester`
--
ALTER TABLE `tb_semester`
  ADD PRIMARY KEY (`id_semester`);

--
-- Indeks untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indeks untuk tabel `tb_thajaran`
--
ALTER TABLE `tb_thajaran`
  ADD PRIMARY KEY (`id_thajaran`);

--
-- Indeks untuk tabel `tb_walikelas`
--
ALTER TABLE `tb_walikelas`
  ADD PRIMARY KEY (`id_walikelas`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indeks untuk tabel `_logabsensi`
--
ALTER TABLE `_logabsensi`
  ADD PRIMARY KEY (`id_presensi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_guru`
--
ALTER TABLE `tb_guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_kepsek`
--
ALTER TABLE `tb_kepsek`
  MODIFY `id_kepsek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_master_mapel`
--
ALTER TABLE `tb_master_mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_mengajar`
--
ALTER TABLE `tb_mengajar`
  MODIFY `id_mengajar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_mkelas`
--
ALTER TABLE `tb_mkelas`
  MODIFY `id_mkelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_semester`
--
ALTER TABLE `tb_semester`
  MODIFY `id_semester` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tb_thajaran`
--
ALTER TABLE `tb_thajaran`
  MODIFY `id_thajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_walikelas`
--
ALTER TABLE `tb_walikelas`
  MODIFY `id_walikelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `_logabsensi`
--
ALTER TABLE `_logabsensi`
  MODIFY `id_presensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
