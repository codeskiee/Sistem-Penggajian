-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Jun 2024 pada 12.30
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penggajian`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_jabatan`
--

CREATE TABLE `data_jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(120) NOT NULL,
  `gaji_pokok` varchar(50) NOT NULL,
  `tj_transport` varchar(50) NOT NULL,
  `uang_makan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_jabatan`
--

INSERT INTO `data_jabatan` (`id_jabatan`, `nama_jabatan`, `gaji_pokok`, `tj_transport`, `uang_makan`) VALUES
(1, 'HRD', '4000000', '600000', '400000'),
(2, 'Staff Marketing', '2500000', '300000', '200000'),
(3, 'Admin', '2200000', '300000', '200000'),
(4, 'Sales', '2500000', '300000', '200000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_kehadiran`
--

CREATE TABLE `data_kehadiran` (
  `id_kehadiran` int(11) NOT NULL,
  `bulan` varchar(15) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `nama_jabatan` varchar(50) NOT NULL,
  `hadir` int(11) NOT NULL,
  `sakit` int(11) NOT NULL,
  `alpha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_kehadiran`
--

INSERT INTO `data_kehadiran` (`id_kehadiran`, `bulan`, `nik`, `nama_pegawai`, `jenis_kelamin`, `nama_jabatan`, `hadir`, `sakit`, `alpha`) VALUES
(1, '012021', '0987654321', 'Dodi', 'Laki-Laki', 'Staff Marketing', 24, 0, 0),
(2, '012021', '123456789', 'Fauzi', 'Laki-Laki', 'Admin', 22, 0, 1),
(3, '062024', '19221613', 'Leonardus Ejo', 'Laki-Laki', 'Admin', 25, 1, 0),
(4, '062024', '19220798', 'Meiranda', 'Laki-Laki', 'HRD', 20, 2, 0),
(5, '062024', '19220820', 'Muhammad Aziz Fadillah ', 'Laki-Laki', 'Sales', 22, 0, 0),
(6, '062024', '19220838', 'Rian Saputra', 'Laki-Laki', 'Staff Marketing', 22, 0, 0),
(7, '062024', '19220809', 'Rihana Laili', 'Perempuan', 'Sales', 26, 0, 0),
(8, '062024', '19220792', 'Steven Wijaya', 'Laki-Laki', 'Sales', 26, 0, 0),
(9, '012024', '19221613', 'Leonardus Ejo', 'Laki-Laki', 'Admin', 24, 0, 2),
(10, '012024', '19220798', 'Meiranda', 'Laki-Laki', 'HRD', 24, 0, 0),
(11, '012024', '19220820', 'Muhammad Aziz Fadillah ', 'Laki-Laki', 'Sales', 25, 1, 0),
(12, '012024', '19220838', 'Rian Saputra', 'Laki-Laki', 'Staff Marketing', 26, 0, 0),
(13, '012024', '19220809', 'Rihana Laili', 'Perempuan', 'Sales', 23, 1, 2),
(14, '012024', '19220792', 'Steven Wijaya', 'Laki-Laki', 'Sales', 22, 3, 1),
(15, '022024', '19221613', 'Leonardus Ejo', 'Laki-Laki', 'Admin', 22, 0, 0),
(16, '022024', '19220798', 'Meiranda', 'Laki-Laki', 'HRD', 22, 0, 0),
(17, '022024', '19220820', 'Muhammad Aziz Fadillah ', 'Laki-Laki', 'Sales', 26, 0, 0),
(18, '022024', '19220838', 'Rian Saputra', 'Laki-Laki', 'Staff Marketing', 20, 2, 0),
(19, '022024', '19220809', 'Rihana Laili', 'Perempuan', 'Sales', 23, 3, 0),
(20, '022024', '19220792', 'Steven Wijaya', 'Laki-Laki', 'Sales', 24, 0, 2),
(21, '032024', '19221613', 'Leonardus Ejo', 'Laki-Laki', 'Admin', 22, 0, 0),
(22, '032024', '19220798', 'Meiranda', 'Laki-Laki', 'HRD', 21, 1, 0),
(23, '032024', '19220820', 'Muhammad Aziz Fadillah ', 'Laki-Laki', 'Sales', 22, 2, 2),
(24, '032024', '19220838', 'Rian Saputra', 'Laki-Laki', 'Staff Marketing', 20, 2, 0),
(25, '032024', '19220809', 'Rihana ', 'Perempuan', 'Sales', 23, 1, 2),
(26, '032024', '19220792', 'Steven Wijaya', 'Laki-Laki', 'Sales', 24, 1, 1),
(27, '042024', '19221613', 'Leonardus Ejo', 'Laki-Laki', 'Admin', 22, 0, 0),
(28, '042024', '19220798', 'Meiranda', 'Laki-Laki', 'HRD', 22, 0, 0),
(29, '042024', '19220820', 'Muhammad Aziz Fadillah ', 'Laki-Laki', 'Sales', 25, 1, 0),
(30, '042024', '19220838', 'Rian Saputra', 'Laki-Laki', 'Staff Marketing', 20, 0, 2),
(31, '042024', '19220809', 'Rihana ', 'Perempuan', 'Sales', 24, 2, 0),
(32, '042024', '19220792', 'Steven Wijaya', 'Laki-Laki', 'Sales', 24, 1, 1),
(33, '052024', '19221613', 'Leonardus Ejo', 'Laki-Laki', 'Admin', 20, 2, 0),
(34, '052024', '19220798', 'Meiranda', 'Laki-Laki', 'HRD', 20, 2, 0),
(35, '052024', '19220820', 'Muhammad Aziz Fadillah ', 'Laki-Laki', 'Sales', 21, 3, 2),
(36, '052024', '19220838', 'Rian Saputra', 'Laki-Laki', 'Staff Marketing', 22, 0, 0),
(37, '052024', '19220809', 'Rihana ', 'Perempuan', 'Sales', 23, 3, 0),
(38, '052024', '19220792', 'Steven Wijaya', 'Laki-Laki', 'Sales', 23, 2, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pegawai`
--

CREATE TABLE `data_pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(32) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `hak_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_pegawai`
--

INSERT INTO `data_pegawai` (`id_pegawai`, `nik`, `nama_pegawai`, `username`, `password`, `jenis_kelamin`, `jabatan`, `tanggal_masuk`, `status`, `photo`, `hak_akses`) VALUES
(2, '19220838', 'Rian Saputra', 'Rian Saputra', '1d8a0c2b9bb5f218b825a78a8a1f4d8d', 'Laki-Laki', 'Staff Marketing', '2024-01-03', 'Karyawan Tetap', 'pegawai-240608-68e45c6369.jpg', 1),
(3, '19220798', 'Meiranda', 'Meiranda', '1ef88564dee2393485f39dee44e20736', 'Laki-Laki', 'HRD', '2024-01-08', 'Karyawan Tetap', 'pegawai.png', 1),
(4, '19220820', 'Muhammad Aziz Fadillah ', 'Muhammad Aziz Fadillah ', '13dceec23d7d511ee118ef0460bf389d', 'Laki-Laki', 'Sales', '2024-02-05', 'Karyawan Tidak Tetap', 'pegawai-240608-2f44eb5c97.jpg', 2),
(5, '19220792', 'Steven Wijaya', 'Steven Wijaya', '68fd9207ffa000b9bd6e90798fbf22bc', 'Laki-Laki', 'Sales', '2024-03-04', 'Karyawan Tidak Tetap', 'pegawai.png', 2),
(6, '19221613', 'Leonardus Ejo', 'Leonardus Ejo', 'a35dde6e0312c1a3541721606565c3ec', 'Laki-Laki', 'Admin', '2024-02-12', 'Karyawan Tidak Tetap', 'pegawai.png', 2),
(7, '19220809', 'Rihana ', 'Rihana', '462fc27bb86b30d0cc72d8dc8fafff09', 'Perempuan', 'Sales', '2024-03-04', 'Karyawan Tidak Tetap', 'pegawai-240613-afad3aa551.jpg', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hak_akses`
--

CREATE TABLE `hak_akses` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `hak_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hak_akses`
--

INSERT INTO `hak_akses` (`id`, `keterangan`, `hak_akses`) VALUES
(1, 'admin', 1),
(2, 'pegawai', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `potongan_gaji`
--

CREATE TABLE `potongan_gaji` (
  `id` int(11) NOT NULL,
  `potongan` varchar(120) NOT NULL,
  `jml_potongan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `potongan_gaji`
--

INSERT INTO `potongan_gaji` (`id`, `potongan`, `jml_potongan`) VALUES
(1, 'Tanpa Surat Keterangan', 200000),
(2, 'Sakit', 0),
(4, 'Cuti Tahunan', 20000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_jabatan`
--
ALTER TABLE `data_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indeks untuk tabel `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  ADD PRIMARY KEY (`id_kehadiran`);

--
-- Indeks untuk tabel `data_pegawai`
--
ALTER TABLE `data_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indeks untuk tabel `hak_akses`
--
ALTER TABLE `hak_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `potongan_gaji`
--
ALTER TABLE `potongan_gaji`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_jabatan`
--
ALTER TABLE `data_jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  MODIFY `id_kehadiran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `data_pegawai`
--
ALTER TABLE `data_pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `hak_akses`
--
ALTER TABLE `hak_akses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `potongan_gaji`
--
ALTER TABLE `potongan_gaji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
