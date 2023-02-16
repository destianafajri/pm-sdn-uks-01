-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jan 2023 pada 06.43
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
-- Database: `pm_sdnuks01`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id` int(11) NOT NULL,
  `nama_user` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `nama_user`, `username`, `password`) VALUES
(1, 'admin', 'admin', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_guru`
--

CREATE TABLE `tb_guru` (
  `id_guru` int(11) NOT NULL,
  `nama_guru` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_guru`
--

INSERT INTO `tb_guru` (`id_guru`, `nama_guru`, `username`, `password`) VALUES
(12345, 'Rini', 'rini', '123'),
(123456, 'Sri', 'sri', '12345');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jawaban`
--

CREATE TABLE `tb_jawaban` (
  `id_jawaban` int(5) NOT NULL,
  `id_peserta` int(5) NOT NULL,
  `id_soal_ujian` int(5) NOT NULL,
  `jawaban` varchar(15) NOT NULL,
  `skor` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_jawaban`
--

INSERT INTO `tb_jawaban` (`id_jawaban`, `id_peserta`, `id_soal_ujian`, `jawaban`, `skor`) VALUES
(1, 2, 1, 'A', '1'),
(2, 2, 1, 'A', '1'),
(3, 2, 1, 'A', '1'),
(4, 7, 1, 'A', '1'),
(5, 7, 2, 'B', '0'),
(6, 9, 1, 'D', '0'),
(7, 10, 1, 'C', '1'),
(8, 10, 2, 'A', '1'),
(9, 13, 7, 'A', '1'),
(10, 13, 6, 'B', '0'),
(11, 15, 7, 'A', '1'),
(12, 15, 8, 'D', '1'),
(13, 15, 6, 'A', '1'),
(14, 17, 9, 'A', '1'),
(15, 17, 8, 'D', '1'),
(16, 17, 7, 'A', '1'),
(17, 17, 6, 'E', '0'),
(18, 14, 8, 'E', '0'),
(19, 14, 6, 'E', '0'),
(20, 14, 7, 'A', '1'),
(21, 14, 9, 'E', '0'),
(22, 26, 15, 'B', '1'),
(23, 26, 13, 'B', '1'),
(24, 26, 14, 'A', '1'),
(25, 28, 14, 'A', '1'),
(26, 28, 13, 'B', '1'),
(27, 28, 15, 'B', '1'),
(28, 29, 17, 'C', '0'),
(29, 29, 19, 'C', '0'),
(30, 29, 18, 'D', '0'),
(31, 30, 0, '', ''),
(32, 30, 0, '', ''),
(33, 30, 0, '', ''),
(34, 31, 19, 'B', '1'),
(35, 31, 17, 'D', '0'),
(36, 31, 18, 'D', '0'),
(37, 32, 19, 'B', '1'),
(38, 32, 17, 'B', '1'),
(39, 32, 18, 'C', '1'),
(40, 33, 18, 'A', '0'),
(41, 33, 20, 'C', '0'),
(42, 33, 19, 'D', '0'),
(43, 33, 17, 'B', '1'),
(44, 35, 18, 'C', '1'),
(45, 35, 17, 'B', '1'),
(46, 35, 19, 'D', '0'),
(47, 35, 20, 'D', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jenis_ujian`
--

CREATE TABLE `tb_jenis_ujian` (
  `id_jenis_ujian` int(11) NOT NULL,
  `jenis_ujian` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_jenis_ujian`
--

INSERT INTO `tb_jenis_ujian` (`id_jenis_ujian`, `jenis_ujian`) VALUES
(4, 'Ujian Sekolah TA 2019/2020'),
(5, 'Ujian Sekolah TA 2020/2021'),
(6, 'Ujian Sekolah TA 2018/1019');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kelas`
--

INSERT INTO `tb_kelas` (`id_kelas`, `nama_kelas`) VALUES
(7, '6A'),
(8, '6B');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_matapelajaran`
--

CREATE TABLE `tb_matapelajaran` (
  `id_matapelajaran` int(11) NOT NULL,
  `kode_matapelajaran` varchar(10) NOT NULL,
  `nama_matapelajaran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_matapelajaran`
--

INSERT INTO `tb_matapelajaran` (`id_matapelajaran`, `kode_matapelajaran`, `nama_matapelajaran`) VALUES
(26, 'MTK', 'Matematika'),
(27, 'BI', 'Bahasa Indonesia'),
(28, 'AGMI', 'Agama Islam'),
(29, 'IPA', 'Ilmu Pengetahuan Alam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_peserta`
--

CREATE TABLE `tb_peserta` (
  `id_peserta` int(11) NOT NULL,
  `id_matapelajaran` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_jenis_ujian` int(11) NOT NULL,
  `tanggal_ujian` date NOT NULL,
  `jam_ujian` time NOT NULL,
  `durasi_ujian` int(11) NOT NULL,
  `timer_ujian` int(11) NOT NULL,
  `status_ujian` tinyint(1) NOT NULL,
  `status_ujian_ujian` int(11) NOT NULL,
  `benar` varchar(20) NOT NULL,
  `salah` varchar(20) NOT NULL,
  `nilai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_peserta`
--

INSERT INTO `tb_peserta` (`id_peserta`, `id_matapelajaran`, `id_siswa`, `id_jenis_ujian`, `tanggal_ujian`, `jam_ujian`, `durasi_ujian`, `timer_ujian`, `status_ujian`, `status_ujian_ujian`, `benar`, `salah`, `nilai`) VALUES
(2, 6, 39, 1, '2020-05-02', '09:05:00', 10, 600, 2, 2, '3', '0', '100'),
(4, 6, 40, 1, '2020-05-03', '16:30:00', 5, 300, 1, 0, '', '', ''),
(5, 6, 41, 1, '2020-05-03', '17:45:00', 2, 120, 1, 0, '', '', ''),
(7, 6, 38, 1, '2020-05-05', '06:30:00', 2, 120, 2, 2, '1', '1', '50'),
(8, 6, 2, 1, '2020-06-13', '15:46:00', 5, 300, 2, 2, '0', '0', '0'),
(9, 6, 3, 1, '2020-06-13', '15:49:00', 5, 300, 2, 2, '0', '1', '0'),
(10, 6, 5, 1, '2020-06-17', '21:30:00', 10, 600, 2, 2, '2', '0', '100'),
(11, 6, 6, 1, '2020-06-23', '21:45:00', 3, 180, 1, 0, '', '', ''),
(12, 8, 7, 3, '2020-06-24', '07:15:00', 10, 600, 1, 0, '', '', ''),
(13, 8, 8, 1, '2020-06-27', '15:15:00', 10, 600, 2, 2, '1', '1', '50'),
(14, 8, 5, 1, '2020-06-29', '09:30:00', 10, 600, 2, 2, '1', '3', '25'),
(15, 8, 9, 1, '2020-06-28', '17:30:00', 10, 600, 2, 2, '3', '0', '100'),
(16, 8, 7, 3, '2020-06-28', '20:20:00', 10, 600, 1, 0, '', '', ''),
(17, 8, 10, 3, '2020-06-28', '20:20:00', 10, 600, 2, 2, '3', '1', '75'),
(18, 8, 5, 1, '2020-06-29', '09:30:00', 10, 600, 1, 0, '', '', ''),
(19, 10, 5, 1, '2020-06-30', '23:30:00', 10, 600, 2, 2, '0', '0', '0'),
(20, 10, 4, 1, '2020-07-31', '07:30:00', 2, 120, 1, 0, '', '', ''),
(24, 23, 15, 1, '2021-03-20', '09:00:00', 60, 3600, 2, 2, '0', '0', '0'),
(26, 24, 15, 1, '2021-03-20', '09:10:00', 60, 3600, 2, 2, '3', '0', '100'),
(27, 24, 13, 3, '2021-03-21', '09:30:00', 60, 3600, 1, 0, '', '', ''),
(28, 24, 15, 3, '2021-03-21', '09:30:00', 60, 3600, 2, 2, '3', '0', '100'),
(29, 29, 16, 5, '2022-08-19', '16:35:00', 5, 300, 2, 2, '0', '3', '0'),
(30, 29, 17, 5, '2022-08-19', '16:35:00', 5, 300, 2, 2, '0', '0', '0'),
(31, 29, 16, 5, '2022-08-19', '16:45:00', 5, 300, 2, 2, '1', '2', '33.3333333'),
(32, 29, 17, 5, '2022-08-19', '16:45:00', 5, 300, 2, 2, '3', '0', '100'),
(33, 29, 16, 4, '2022-08-19', '18:20:00', 5, 300, 2, 2, '1', '3', '25'),
(35, 29, 16, 5, '2022-08-21', '10:30:00', 5, 300, 2, 2, '2', '2', '50'),
(36, 29, 17, 5, '2022-08-21', '10:30:00', 5, 300, 1, 0, '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `nis` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `id_kelas`, `nama_siswa`, `nis`, `username`, `password`) VALUES
(4, 1, 'Nadia', 987654321, 'nadia', '123456'),
(5, 2, 'Sasa', 876543219, 'sasa', '123456'),
(11, 3, 'Fajar', 889912346, 'fajar', '123456'),
(12, 4, 'Syahira', 879124321, 'syahira', '123456'),
(13, 5, 'Aisyah', 981287345, 'aisyah', '123456'),
(14, 6, 'Kania', 923789453, 'kania', '123456'),
(15, 5, 'Contoh Siswa', 123456987, 'siswa', 'siswa'),
(16, 7, 'Axelle Choiri Iman', 12345, 'acil', '123'),
(17, 8, 'Aisha Ainun', 2345, 'aay', '123'),
(18, 7, 'Sydney Ahsan', 23456, 'nney', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_soal_ujian`
--

CREATE TABLE `tb_soal_ujian` (
  `id_soal_ujian` int(11) NOT NULL,
  `id_matapelajaran` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `a` text NOT NULL,
  `b` text NOT NULL,
  `c` text NOT NULL,
  `d` text NOT NULL,
  `e` text NOT NULL,
  `kunci_jawaban` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_soal_ujian`
--

INSERT INTO `tb_soal_ujian` (`id_soal_ujian`, `id_matapelajaran`, `pertanyaan`, `a`, `b`, `c`, `d`, `e`, `kunci_jawaban`) VALUES
(16, 26, '1+(1x1)=....', '2', '3', '4', '5', '6', 'A'),
(17, 29, 'Terdapat alur pada ban kendaraan bermotor, karet pada alas sandal atau sepatu diberi pola alur, serta keramik lantai pada toilet selalu bertekstur.\r\nHal tersebut merupakan usaha manusia dalam memanfaatkan gaya gesek agar ....', 'memperkecil gaya gesek supaya tidak tergelincir', 'memperbesar gaya gesek supaya tidak tergelincir', 'menambah keindahan pada sebuah benda', 'mengurangi gaya gesek saat bersentuhan dengan benda', 'tidak tahu', 'B'),
(18, 29, 'Buah dari pohon akan jatuh ke bawah, ketika melempar batu ke atas juga akan jatuh ke bawah pada akhirnya. Dari contoh di atas apa yang menyebabkan benda di bumi selalu jatuh ke bawah ....', 'gaya magnet', 'gaya otot', 'gaya gravitasi', 'gaya gesek', 'gaya bebas', 'C'),
(19, 29, 'Berdasarkan pernyataan tersebut, yang menyebabkan bola berhenti adalah ....', 'udara di sekitar lapangan', 'gaya otot yang bekerja pada kaki Lionel Messi', 'tendangan dari tim lawan', 'gaya listrik dalam tubuh Lionel Messi', 'tidak tahu', 'B'),
(20, 29, 'Pernyataan berikut ini benar bahwa pada penggunaan blender terjadi ....', 'perubahan bentuk energi kimia menjadi energi panas', 'perubahan bentuk energi listrik menjadi energi gerak', 'perubahan bentuk energi listrik menjadi energi cahaya', 'perubahan bentuk energi gerak menjadi listrik', 'tidak tahu', 'B'),
(21, 26, '<p>Rumus dari luas lingkaran adalah..</p>\r\n', '<p>22/7 x r<sup>2</sup></p>\r\n', '<p>a x t</p>\r\n', '<p>p x l</p>\r\n', '<p>s x 4</p>\r\n', '<p>tidak tahu</p>\r\n', 'A'),
(22, 26, '<p>5 x 5 =...</p>\r\n', '<p>5</p>\r\n', '<p>80</p>\r\n', '<p>25</p>\r\n', '<p>55</p>\r\n', '<p>50</p>\r\n', 'C');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indeks untuk tabel `tb_jawaban`
--
ALTER TABLE `tb_jawaban`
  ADD PRIMARY KEY (`id_jawaban`),
  ADD KEY `id_soal_ujian` (`id_soal_ujian`),
  ADD KEY `id_peserta` (`id_peserta`);

--
-- Indeks untuk tabel `tb_jenis_ujian`
--
ALTER TABLE `tb_jenis_ujian`
  ADD PRIMARY KEY (`id_jenis_ujian`);

--
-- Indeks untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `tb_matapelajaran`
--
ALTER TABLE `tb_matapelajaran`
  ADD PRIMARY KEY (`id_matapelajaran`);

--
-- Indeks untuk tabel `tb_peserta`
--
ALTER TABLE `tb_peserta`
  ADD PRIMARY KEY (`id_peserta`),
  ADD KEY `id_matakuliah` (`id_matapelajaran`),
  ADD KEY `id_mahasiswa` (`id_siswa`),
  ADD KEY `id_jenis_ujian` (`id_jenis_ujian`);

--
-- Indeks untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD UNIQUE KEY `nim` (`nis`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indeks untuk tabel `tb_soal_ujian`
--
ALTER TABLE `tb_soal_ujian`
  ADD PRIMARY KEY (`id_soal_ujian`),
  ADD KEY `id_matakuliah` (`id_matapelajaran`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_jawaban`
--
ALTER TABLE `tb_jawaban`
  MODIFY `id_jawaban` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `tb_jenis_ujian`
--
ALTER TABLE `tb_jenis_ujian`
  MODIFY `id_jenis_ujian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_matapelajaran`
--
ALTER TABLE `tb_matapelajaran`
  MODIFY `id_matapelajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `tb_peserta`
--
ALTER TABLE `tb_peserta`
  MODIFY `id_peserta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tb_soal_ujian`
--
ALTER TABLE `tb_soal_ujian`
  MODIFY `id_soal_ujian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
