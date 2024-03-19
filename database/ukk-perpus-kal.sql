-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Mar 2024 pada 04.42
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ukk-perpus-kal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `BukuID` int(11) NOT NULL,
  `Judul` varchar(255) DEFAULT NULL,
  `Penulis` varchar(255) DEFAULT NULL,
  `Penerbit` varchar(255) DEFAULT NULL,
  `TahunTerbit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`BukuID`, `Judul`, `Penulis`, `Penerbit`, `TahunTerbit`) VALUES
(1, 'Adolf Hitler : Pikiran, Tindakan, Catatan Kelam Sang Ditaktor', 'M. Muhibbuddin', 'Charissa Publisher', 2020),
(2, 'Kiprah Politik Soekarno', 'Yonita Yulia Yalinda', 'Anak Hebat Indonesia', 2024),
(3, 'Muslim Produktif, Muslim Prestatif', 'Bambang Triyawan', 'Elex Media Komputindo', 2021),
(4, 'Elon Musk: Inovasi, Ambisi, dan Kontroversi', 'Arcturus', 'Bhuana Ilmu Populer', 2024),
(6, 'Teruslah Bodoh Jangan Pintar', 'Tere Liye', 'Penerbit Sabak Grip', 2024),
(7, 'Analisis dan Desain Perangkat Lunak', 'Rosa A.S', 'Informatika', 2022),
(8, 'Filsafat Aristoteles', 'Frederick Copleston', 'basabasi', 2020),
(9, 'Pengantar Umum Psikoanalisis', 'Sigmund Freud', 'Anak Hebat Indonesia', 2024);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoribuku`
--

CREATE TABLE `kategoribuku` (
  `KategoriID` int(11) NOT NULL,
  `NamaKategori` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategoribuku`
--

INSERT INTO `kategoribuku` (`KategoriID`, `NamaKategori`) VALUES
(1, 'fiksi'),
(2, 'bibiliografi'),
(3, 'Publikasi Umum, informasi umum dan komputer'),
(4, 'Perpustakaan dan informasi'),
(5, 'Ensiklopedia dan buku yang memuat fakta-fakta'),
(6, 'Biografi'),
(7, 'Majalah dan Jurnal'),
(8, 'Asosiasi, Organisasi dan Museum'),
(9, 'Kutipan'),
(10, 'Manuskrip dan buku langka'),
(11, 'filsafat'),
(12, 'psychology'),
(13, 'Epistimologi'),
(14, 'Parapsikologi dan Okultisme'),
(15, 'Pemikiran Filosofis'),
(16, 'Filosofis Logis'),
(17, 'Etik'),
(18, 'Filosofi kuno, zaman pertengahan, dan filosofi ketimuran'),
(19, 'Filosofi barat modern'),
(38, 'Agama'),
(39, 'Ilmu sosial, sosiologi dan antropolog'),
(40, 'Statistik'),
(41, 'Ilmu politik'),
(42, 'Ekonomi'),
(43, 'Hukum'),
(44, 'Administrasi publik dan ilmu kemiliteran'),
(45, 'Masalah dan layanan sosial'),
(46, 'Pendidikan'),
(47, 'Perdagangan, komunikasi dan transportasi'),
(48, 'Norma, etika dan tradisi'),
(49, 'Bahasa'),
(50, 'Sains'),
(51, 'Matematika'),
(52, 'Astronomi'),
(53, 'Fisika'),
(54, 'Kimia'),
(55, 'Ilmu kebumian dan geologi'),
(56, 'Fosil dan kehidupan prasejarah'),
(57, 'Biologi'),
(58, 'Tanaman'),
(59, 'Zoologi'),
(60, 'Teknologi'),
(61, 'Kesehatan dan Obat-Obatan'),
(62, 'Teknik'),
(63, 'Pertanian'),
(64, 'Managemen Rumah Tangga dan Keluarga'),
(65, 'Manajemen dan Hubungan dengan Publik'),
(66, 'Teknik Kimia'),
(67, 'Manufaktur'),
(68, 'Manufaktur untuk Keperluan Khusus'),
(69, 'Konstruksi'),
(70, 'Kesenian dan rekreasi'),
(71, 'Perencanaan dan Arsitektur Lanskap'),
(72, 'Arsitektur'),
(73, 'Patung, Keramik dan Seni Metal'),
(74, 'Seni Grafis dan Dekoratif'),
(75, 'Lukisan'),
(76, 'Percetakan'),
(77, 'Fotografi, Film, Video'),
(78, 'Musik'),
(79, 'Olahraga, Permainan dan Hiburan'),
(80, 'Literatur, Sastra, Retorika dan Kritik'),
(81, 'Sejarah'),
(82, 'Geografi dan Perjalanan'),
(83, 'Asal-Usul'),
(84, 'Sejarah Dunia Lama'),
(85, 'Asal–Usul Eropa'),
(86, 'Asal-Usul Asia'),
(87, 'Asal-Usul Afrika'),
(88, 'Asal-Usul Amerika Utara'),
(89, 'Asal-Usul Amerika Selatan'),
(90, 'Asal-Usul Wilayah Lain');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoribuku_relasi`
--

CREATE TABLE `kategoribuku_relasi` (
  `KategoriBukuID` int(11) NOT NULL,
  `BukuID` int(11) NOT NULL,
  `KategoriID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategoribuku_relasi`
--

INSERT INTO `kategoribuku_relasi` (`KategoriBukuID`, `BukuID`, `KategoriID`) VALUES
(1, 1, 83),
(2, 2, 41),
(3, 3, 38),
(4, 4, 2),
(6, 6, 1),
(7, 7, 60),
(8, 8, 11),
(9, 9, 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `koleksipribadi`
--

CREATE TABLE `koleksipribadi` (
  `KoleksiID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `BukuID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `koleksipribadi`
--

INSERT INTO `koleksipribadi` (`KoleksiID`, `UserID`, `BukuID`) VALUES
(1, 1, 1),
(2, 1, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `PeminjamanID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `BukuID` int(11) NOT NULL,
  `TanggalPeminjaman` date DEFAULT NULL,
  `TanggalPengembalian` date DEFAULT NULL,
  `StatusPeminjaman` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`PeminjamanID`, `UserID`, `BukuID`, `TanggalPeminjaman`, `TanggalPengembalian`, `StatusPeminjaman`) VALUES
(1, 1, 8, '2024-03-18', NULL, 'Belum di Kembalikan'),
(3, 1, 4, '2024-03-18', NULL, 'Belum di Kembalikan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ulasanbuku`
--

CREATE TABLE `ulasanbuku` (
  `UlasanID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `BukuID` int(11) NOT NULL,
  `Ulasan` text DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ulasanbuku`
--

INSERT INTO `ulasanbuku` (`UlasanID`, `UserID`, `BukuID`, `Ulasan`, `Rating`) VALUES
(1, 1, 8, 'membingungkan', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `NamaLengkap` varchar(255) DEFAULT NULL,
  `Alamat` text DEFAULT NULL,
  `Role` enum('Administrator','Petugas','Peminjam') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`UserID`, `Username`, `Password`, `Email`, `NamaLengkap`, `Alamat`, `Role`) VALUES
(1, 'NARUTO', '$2y$10$hgeQPR8E06gwJg4OkI.HF./HG8zqe/rnDi.HfL.3QqR35gPe5aIq6', 'naruto@shipuden.com', 'Uzumaki Naruto', 'konoha', 'Peminjam'),
(3, 'KiRA', '$2y$10$KzmXfMeZ7o.Eij0y8ge/xec0rkPZzoeA4abBTcv1rxv5Yax.BGQWS', 'death@note.com', 'Light Yagami', 'Tokyo', 'Petugas'),
(4, 'KAL', '$2y$10$Qt71YX2VWXNZAqDOf432lezm/QcXmmIuuww5Valx9XJGaH0pwCP8.', 'kal0101@gmail.com', 'Haikal Mubarok', 'word', 'Administrator'),
(5, 'YOHAN', '$2y$10$0itfnBSf7ItgZ6zMc5h9GeLzZWg/J21gMVA4RHIxN60VZ8ETMSho.', 'nameless@monster.com', 'Yohan Liebert', 'cekoslowaki', 'Petugas');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`BukuID`);

--
-- Indeks untuk tabel `kategoribuku`
--
ALTER TABLE `kategoribuku`
  ADD PRIMARY KEY (`KategoriID`);

--
-- Indeks untuk tabel `kategoribuku_relasi`
--
ALTER TABLE `kategoribuku_relasi`
  ADD PRIMARY KEY (`KategoriBukuID`),
  ADD KEY `BukuID` (`BukuID`),
  ADD KEY `KategoriID` (`KategoriID`);

--
-- Indeks untuk tabel `koleksipribadi`
--
ALTER TABLE `koleksipribadi`
  ADD PRIMARY KEY (`KoleksiID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `BukuID` (`BukuID`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`PeminjamanID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `BukuID` (`BukuID`);

--
-- Indeks untuk tabel `ulasanbuku`
--
ALTER TABLE `ulasanbuku`
  ADD PRIMARY KEY (`UlasanID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `BukuID` (`BukuID`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `BukuID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `kategoribuku`
--
ALTER TABLE `kategoribuku`
  MODIFY `KategoriID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT untuk tabel `kategoribuku_relasi`
--
ALTER TABLE `kategoribuku_relasi`
  MODIFY `KategoriBukuID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `koleksipribadi`
--
ALTER TABLE `koleksipribadi`
  MODIFY `KoleksiID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `PeminjamanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `ulasanbuku`
--
ALTER TABLE `ulasanbuku`
  MODIFY `UlasanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kategoribuku_relasi`
--
ALTER TABLE `kategoribuku_relasi`
  ADD CONSTRAINT `kategoribuku_relasi_ibfk_1` FOREIGN KEY (`BukuID`) REFERENCES `buku` (`BukuID`) ON DELETE CASCADE,
  ADD CONSTRAINT `kategoribuku_relasi_ibfk_2` FOREIGN KEY (`KategoriID`) REFERENCES `kategoribuku` (`KategoriID`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `koleksipribadi`
--
ALTER TABLE `koleksipribadi`
  ADD CONSTRAINT `koleksipribadi_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE,
  ADD CONSTRAINT `koleksipribadi_ibfk_2` FOREIGN KEY (`BukuID`) REFERENCES `buku` (`BukuID`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE,
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`BukuID`) REFERENCES `buku` (`BukuID`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ulasanbuku`
--
ALTER TABLE `ulasanbuku`
  ADD CONSTRAINT `ulasanbuku_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE,
  ADD CONSTRAINT `ulasanbuku_ibfk_2` FOREIGN KEY (`BukuID`) REFERENCES `buku` (`BukuID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
