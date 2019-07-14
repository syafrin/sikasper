-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jul 2019 pada 12.59
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sikasperdb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aduan`
--

CREATE TABLE `aduan` (
  `aduan_id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `no_hp` int(13) NOT NULL,
  `kec_id` int(5) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `alamat_aduan` varchar(250) NOT NULL,
  `kateg_id` int(5) NOT NULL,
  `keterangan` text NOT NULL,
  `foto` varchar(150) NOT NULL,
  `sts_id` int(5) NOT NULL,
  `tgl_aduan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `aduan`
--

INSERT INTO `aduan` (`aduan_id`, `user_id`, `no_hp`, `kec_id`, `judul`, `alamat_aduan`, `kateg_id`, `keterangan`, `foto`, `sts_id`, `tgl_aduan`) VALUES
(1, 17, 2147483647, 2, 'Penebangan Pohon', 'penenbangan liar di sepanjnag jalan hutan', 2, 'penebangna phon sepanjnag jala kenagana', '', 1, '2019-07-14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_aduan`
--

CREATE TABLE `kategori_aduan` (
  `kateg_id` int(5) NOT NULL,
  `kategori` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori_aduan`
--

INSERT INTO `kategori_aduan` (`kateg_id`, `kategori`) VALUES
(1, 'Pembuangan Sampah  Dan Limbah      '),
(2, 'Penebangan Pohon Liar'),
(3, 'Pembukaan Lahan HUtan Lindung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kecamatan`
--

CREATE TABLE `kecamatan` (
  `kec_id` int(5) NOT NULL,
  `nama_kec` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kecamatan`
--

INSERT INTO `kecamatan` (`kec_id`, `nama_kec`) VALUES
(1, 'Tapa'),
(2, 'Suwawa'),
(3, 'Kabila');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sts_aduan`
--

CREATE TABLE `sts_aduan` (
  `sts_id` int(5) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sts_aduan`
--

INSERT INTO `sts_aduan` (`sts_id`, `status`) VALUES
(1, 'baru'),
(2, 'verifikasi'),
(3, 'disposisi'),
(4, 'tindak-lanjut');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `user_id` int(5) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `image` varchar(100) NOT NULL,
  `role_id` int(5) NOT NULL,
  `is_active` int(1) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`user_id`, `nama`, `email`, `password`, `image`, `role_id`, `is_active`, `created_at`) VALUES
(16, 'geri', 'geri@gmail.com', '$2y$10$6gcyP/HNFer5aU0GE5.oqe9sFv/6HaQlxyFVLpE6G3hS0kVSeAkNa', 'default-image.jpg', 1, 1, '2019-07-13'),
(17, 'dika', 'dika@gmail.com', '$2y$10$kN7MZryTRG6vFJYFuZZqoe9U3lmtQzVw/1KHpjJvVSIq9S6VAkyBS', 'default-image.jpg', 4, 1, '2019-07-13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `role_id` int(5) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`role_id`, `role`) VALUES
(1, 'Administrator'),
(2, 'kepala Dinas'),
(3, 'Admin kecamatan'),
(4, 'User');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aduan`
--
ALTER TABLE `aduan`
  ADD PRIMARY KEY (`aduan_id`);

--
-- Indeks untuk tabel `kategori_aduan`
--
ALTER TABLE `kategori_aduan`
  ADD PRIMARY KEY (`kateg_id`);

--
-- Indeks untuk tabel `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`kec_id`);

--
-- Indeks untuk tabel `sts_aduan`
--
ALTER TABLE `sts_aduan`
  ADD PRIMARY KEY (`sts_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`role_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `aduan`
--
ALTER TABLE `aduan`
  MODIFY `aduan_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kategori_aduan`
--
ALTER TABLE `kategori_aduan`
  MODIFY `kateg_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `kec_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `sts_aduan`
--
ALTER TABLE `sts_aduan`
  MODIFY `sts_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `role_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
