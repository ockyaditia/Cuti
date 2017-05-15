-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 20 Sep 2015 pada 14.18
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cuti`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_tatausaha`
--

CREATE TABLE IF NOT EXISTS `admin_tatausaha` (
  `id_admin_tatausaha` int(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_tlp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin_tatausaha`
--

INSERT INTO `admin_tatausaha` (`id_admin_tatausaha`, `nama`, `username`, `password`, `status`, `email`, `no_tlp`) VALUES
(1, 'Admin', 'admin', 'admin', 'admin', '', ''),
(1402012046, 'Irwan Nawi Zainaro', 'irwan.nawi', '299821', 'admin', 'zainaro.irwan@gmail.com', '085777335408'),
(1402012064, 'Nurrochman Wicaksono', 'rohman.wicaksono', 'yasudah', 'admin', 'rohmanwicaksono@gmail.com', '087778389224'),
(1402012068, 'Prabowo Nugroho Budisejati', 'prabowo', 'remaja313', 'admin', 'prabowo_sejati@ymail,com', '083894701211'),
(1402012082, 'Taufik Hidayat Raharjo', 'taufik.hidayat', 'thr', 'admin', 'taufik.hidayat.raharjo@gmail.com', '081314320485'),
(1402012089, 'Ocky Aditia Saputra', 'ocky.aditia', 'ppl', 'admin', 'ocky.aditia@gmail.com', '081288104708'),
(1402012096, 'Hery Eka Rianto', 'heryekarianto', 'jakarta123', 'admin', 'heryekarianto.77@gmail.com', '085282369917');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dekanat`
--

CREATE TABLE IF NOT EXISTS `dekanat` (
  `id_dekanat` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `NIK` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tahun_masuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dekanat`
--

INSERT INTO `dekanat` (`id_dekanat`, `nama`, `status`, `username`, `password`, `NIK`, `email`, `tahun_masuk`) VALUES
(1, 'Dekan', 'dekan', 'dekan', 'dekan', '1', '', '2015-05-01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen_pegawai`
--

CREATE TABLE IF NOT EXISTS `dosen_pegawai` (
`id_dosen_pegawai` int(25) NOT NULL,
  `waktu_cuti` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `NIK` varchar(25) NOT NULL,
  `unit_atau_fakultas` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_tlp` varchar(25) NOT NULL,
  `tahun_masuk` date NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dosen_pegawai`
--

INSERT INTO `dosen_pegawai` (`id_dosen_pegawai`, `waktu_cuti`, `nama`, `username`, `password`, `NIK`, `unit_atau_fakultas`, `status`, `email`, `no_tlp`, `tahun_masuk`, `active`) VALUES
(1, 12, 'Dr. Vitri Tundjungsari, S.T., M.Sc.', 'vitri.tundjungsari', '12345678', '531141102015', 'Teknologi Informasi', '1', '', '', '2002-10-01', 1),
(2, 12, 'Elan Suherlan, S.Si., M.Si.', 'elan.suherlan', '12345678', '531141195010', 'Teknologi Informasi', '1', '', '', '1995-12-01', 1),
(3, 12, 'Dr. Ummi Azizah Rachmawati, M.Kom.', 'ummi.azizah', '12345678', '531141106017', 'Teknologi Informasi', '1', '', '', '2006-01-01', 1),
(4, 12, 'Herika Hayurani, S.Kom., M.Kom.', 'herika.hayurani', '12345678', '531141106018', 'Teknologi Informasi', '1', 'herika.hayurani@gmail.com', '081283055759', '2006-09-01', 1),
(5, 12, 'Dr. Sri C. Haryanti, S.T., M.T.', 'sri', '12345678', '531141195009', 'Teknologi Informasi', '1', '', '', '1995-11-15', 1),
(6, 12, 'Sri Puji Utami, S.T., M.T.', 'sripuji.utami', '12345678', '531141195011', 'Teknologi Informasi', '1', '', '', '1995-12-11', 1),
(7, 12, 'Drs. Suhaeri, M.T.', 'suhaeri', '12345678', '531141193008', 'Teknologi Informasi', '1', '', '', '1993-11-01', 1),
(8, 12, 'Nova Eka Diana, S.Kom., M.Eng.', 'novaeka.diana', '12345678', '531141113025', 'Teknologi Informasi', '1', '', '', '2013-02-01', 1),
(9, 12, 'Mubarik Ahmad, S.Kom., M.Kom.', 'mubarik.ahmad', '12345678', '531141113027', 'Teknologi Informasi', '1', '', '', '2013-05-01', 1),
(10, 12, 'Drs. Heri Yugaswara, M.T.', 'heri.yugaswara', '12345678', '531141193006', 'Teknologi Informasi', '1', '', '', '1993-09-01', 1),
(11, 12, 'Drs. Aan Kardiana, M.Si.', 'aan.kardiana', '12345678', '531141193007', 'Teknologi Informasi', '1', '', '', '1993-09-01', 1),
(12, 12, 'Chandra Prasetyo Utomo, S.Kom., M.S.', 'chandra.prasetyo', '12345678', '531141112024', 'Teknologi Informasi', '1', '', '', '2012-03-01', 1),
(13, 12, 'Puspa Setia Pratiwi, S.Kom.,MSME.', 'puspa.setia', '12345678', '531141112023', 'Teknologi Informasi', '1', '', '', '2012-02-01', 1),
(14, 12, 'Ahmad Sabiq, S.Kom., M.Kom.', 'ahmad.sabiq', '12345678', '531141113029', 'Teknologi Informasi', '1', '', '', '2013-12-01', 1),
(15, 12, 'Pinkie Anggia, S.Kom., M.Kom.', 'pinkie.anggia', '12345678', '531141114030', 'Teknologi Informasi', '1', '', '', '2014-01-01', 1),
(16, 12, 'Indah Dwi Lestantri, S.T., M.Si.', 'indah.dwi', '12345678', '531141114031', 'Teknologi Informasi', '1', '', '', '2014-01-01', 1),
(17, 0, 'Nurmaya, S.Kom., M.Eng.', 'nurmaya', '12345678', '531141114033', 'Teknologi Informasi', '1', '', '', '2014-06-10', 1),
(18, 12, 'Nita Ismayati, S.IP., M.Hum', 'nita.ismayati', '12345678', '531142109016', 'Teknologi Informasi', '2', '', '', '2009-07-01', 1),
(19, 12, 'Drs. H. M. Kailani Eryono, M.M.', 'kailani.eryono', '12345678', '531141107004', 'Teknologi Informasi', '2', '', '', '2006-12-01', 1),
(20, 12, 'Dra. Pudjiharti, M.Kes.', 'pudjiharti', '12345678', '531141107005', 'Teknologi Informasi', '1', '', '', '2007-06-01', 1),
(21, 12, 'Fuady Munir, S.IP., M.Si.', 'fuady.munir', '12345678', '531141107003', 'Teknologi Informasi', '2', '', '', '2007-06-01', 1),
(22, 12, 'Pranajaya, S.IP., M.Hum.', 'pranajaya', '12345678', '531141111022', 'Teknologi Informasi', '2', '', '', '2011-05-01', 1),
(23, 12, 'Wardiyono, S.S., MBA.', 'wardiyono', '12345678', '531141113028', 'Teknologi Informasi', '2', '', '', '2013-09-01', 1),
(24, 12, 'Hendra Wicaksono, S.Hum., M.IP.', 'hendra.wicaksono', '12345678', '531141114032', 'Teknologi Informasi', '2', '', '', '2014-01-01', 1),
(25, 0, 'Rosini, SS., M.P.', 'rosini', '12345678', '531141114034', 'Teknologi Informasi', '2', '', '', '2014-09-01', 1),
(26, 0, 'Indah Kurnianingsih, S.S., M.P.', 'indah.kurnianingsih', '12345678', '531141114035', 'Teknologi Informasi', '2', '', '', '2014-11-04', 1),
(27, 12, 'Sri Wuryanti', 'sri.wuryanti', '12345678', '531142196009', 'Teknologi Informasi', 'Karyawan', '', '', '1996-11-01', 1),
(28, 12, 'Agus Widayat', 'agus.widayat', '12345678', '531142102011', 'Teknologi Informasi', '3', '', '', '2002-11-01', 1),
(29, 12, 'Lang Yudi Kurniawan F', 'lang.yudi', '12345678', '531142102012', 'Teknologi Informasi', 'Karyawan', '', '', '2002-04-08', 1),
(30, 12, 'Imelda', 'imelda', '12345678', '531142103013', 'Teknologi Informasi', 'Karyawan', '', '', '2003-10-06', 1),
(31, 0, 'Budi Mulyanto, SE.', 'budi.mulyanto', '12345678', '531142193006', 'Teknologi Informasi', 'Karyawan', '', '', '2015-05-01', 1),
(32, 12, 'Slamet Robani', 'slamet.robani', '12345678', '531142194008', 'Teknologi Informasi', 'Karyawan', '', '', '1994-06-01', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `form_cuti`
--

CREATE TABLE IF NOT EXISTS `form_cuti` (
`id_form_cuti` int(25) NOT NULL,
  `id_dosen_pegawai` int(25) DEFAULT NULL,
  `mengajukan` varchar(250) NOT NULL,
  `alasan_khusus_text` varchar(250) DEFAULT NULL,
  `alasan_lain_text` varchar(250) DEFAULT NULL,
  `alasan_penting_text` varchar(250) DEFAULT NULL,
  `luar_tanggungan_text` varchar(250) DEFAULT NULL,
  `jumlah_hari` int(50) NOT NULL,
  `tanggal_awal` date NOT NULL,
  `tanggal_berakhir` date NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `status_pengesahan` varchar(25) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `catatan` varchar(250) DEFAULT NULL,
  `tanggal_pengesahan` varchar(100) DEFAULT NULL,
  `laporan` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `form_cuti`
--

INSERT INTO `form_cuti` (`id_form_cuti`, `id_dosen_pegawai`, `mengajukan`, `alasan_khusus_text`, `alasan_lain_text`, `alasan_penting_text`, `luar_tanggungan_text`, `jumlah_hari`, `tanggal_awal`, `tanggal_berakhir`, `keterangan`, `status_pengesahan`, `tanggal`, `catatan`, `tanggal_pengesahan`, `laporan`) VALUES
(1, 3, 'Alasan Lain', '', 'Test', '', '', 1, '2015-04-01', '2015-04-02', 'Surat dokter', 'Setuju', '24-4-2015', 'Good', '26-4-2015', 'Tidak ada'),
(2, 3, 'Sakit', '', '', '', '', 2, '2015-04-01', '2015-04-03', 'Surat tugas', 'Belum', '29-4-2015', NULL, NULL, 'Ada'),
(3, 3, 'Sakit', '', '', '', '', 4, '2015-04-01', '2015-04-05', 'Dipotong gaji', 'Belum', '29-4-2015', NULL, NULL, 'Ada'),
(4, 3, 'Sakit', '', '', '', '', 5, '2015-04-01', '2015-04-06', 'Dipotong cuti tahunan', 'Belum', '29-4-2015', NULL, NULL, 'Tidak ada'),
(5, 1, 'Sakit', '', '', '', '', 1, '2015-04-01', '2015-04-01', 'Surat keterangan', 'Belum', '1-5-2015', NULL, NULL, 'Tidak ada'),
(6, 25, 'Alasan Lain', '', 'Surat Tugas FTI Festival ttd Rektor : Pelatihan Googling with Fun', '', '', 1, '2015-04-16', '2015-04-17', 'Surat dokter', 'Belum', '2-5-2015', NULL, NULL, 'Ada'),
(7, 25, 'Alasan Khusus', 'Off Sabtu 18/4/15 (Panitia Wisuda)', '', '', '', 1, '2015-04-18', '2015-04-19', 'Dipotong gaji', 'Belum', '2-5-2015', NULL, NULL, 'Tidak ada'),
(8, 1, 'Alasan Khusus', 'Surat Tugas Rektor : Panitia dan Juri Design Challenge CHIuXiD 2015 di Bandung', '', '', '', 4, '2015-04-07', '2015-04-10', 'Dipotong gaji', 'Belum', '2-5-2015', NULL, NULL, ''),
(9, 4, 'Alasan Lain', '', 'Surat Tugas : Mentor Tim Design Challenge CHIuXiD 2015 di Bandung', '', '', 3, '2015-04-07', '2015-04-09', 'Dipotong gaji', 'Belum', '2-5-2015', NULL, NULL, 'Ada'),
(10, 4, 'Sakit', '', '', '', '', 2, '2015-04-10', '2015-04-11', 'Dipotong cuti tahunan', 'Belum', '2-5-2015', NULL, NULL, 'Tidak ada'),
(11, 4, 'Sakit', '', '', '', '', 3, '2015-05-01', '2015-05-03', 'Surat keterangan', 'Belum', '4-5-2015', NULL, NULL, 'Tidak ada'),
(12, 4, 'Alasan Lain', '', '------------------------', '', '', 3, '2015-05-08', '2015-05-10', 'Surat tugas', 'Belum', '5-5-2015', NULL, NULL, 'Tidak ada'),
(13, 25, 'Sakit', '', '', '', '', 2, '2015-05-22', '2015-05-23', 'Surat dokter', 'Belum', '8-5-2015', NULL, NULL, ''),
(14, 25, 'Sakit', '', '', '', '', 1, '2015-05-01', '2015-05-01', 'Surat keterangan', 'Belum', '8-5-2015', NULL, NULL, ''),
(15, 25, 'Sakit', '', '', '', '', 3, '2015-05-23', '2015-05-25', 'Dipotong gaji', 'Belum', '8-5-2015', NULL, NULL, ''),
(16, 25, 'Sakit', '', '', '', '', 4, '2015-05-29', '2015-06-01', 'Dipotong cuti tahunan', 'Belum', '8-5-2015', NULL, NULL, ''),
(17, 25, 'Sakit', '', '', '', '', 3, '2015-05-25', '2015-05-27', 'Surat keterangan', 'Belum', '8-5-2015', NULL, NULL, ''),
(18, 3, 'Sakit', '', '', '', '', 1, '2015-05-01', '2015-05-01', 'Surat dokter', 'Belum', '16-5-2015', NULL, NULL, ''),
(19, 3, 'Sakit', '', '', '', '', 3, '2015-05-06', '2015-05-08', 'Surat dokter', 'Belum', '16-5-2015', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `forum_cuti`
--

CREATE TABLE IF NOT EXISTS `forum_cuti` (
  `id_forum_cuti` int(25) NOT NULL,
  `id_dosen_pegawai` int(25) NOT NULL,
  `komentar` varchar(100) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi_cuti`
--

CREATE TABLE IF NOT EXISTS `informasi_cuti` (
`id_informasi_cuti` int(25) NOT NULL,
  `id_admin_tatausaha` int(25) NOT NULL DEFAULT '1',
  `syarat_cuti` text NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `informasi_cuti`
--

INSERT INTO `informasi_cuti` (`id_informasi_cuti`, `id_admin_tatausaha`, `syarat_cuti`, `active`) VALUES
(1, 1, 'Cuti di FTI Universitas YARSI terdiri cuti tahunan, besar, sakit, bersalin atau melahirkan dan alasan penting lainnya.', 1),
(2, 1, 'Untuk cuti tahunan maksimal hari yang bisa diambil adalah 12 hari.', 1),
(3, 1, 'Untuk yang mengambil cuti akan dikenakan potongan gaji.', 1),
(4, 1, 'Untuk melakukan cuti harus isi form terlebih dahulu.', 1),
(5, 1, 'Ketika telah mengisi form cuti, maka pimpinan atau dekan akan menyetujui atau tidaknya pengambilan cuti.', 1),
(6, 1, 'Untuk yang mengambil cuti akan di kenakan potongan gaji jika waktu yang di ambil melewati batas maksimal.', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_tatausaha`
--
ALTER TABLE `admin_tatausaha`
 ADD PRIMARY KEY (`id_admin_tatausaha`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `dekanat`
--
ALTER TABLE `dekanat`
 ADD PRIMARY KEY (`id_dekanat`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `dosen_pegawai`
--
ALTER TABLE `dosen_pegawai`
 ADD PRIMARY KEY (`id_dosen_pegawai`), ADD UNIQUE KEY `username` (`username`), ADD KEY `id_waktu_cuti` (`waktu_cuti`);

--
-- Indexes for table `form_cuti`
--
ALTER TABLE `form_cuti`
 ADD PRIMARY KEY (`id_form_cuti`), ADD KEY `id_dosen/pegawai` (`id_dosen_pegawai`);

--
-- Indexes for table `forum_cuti`
--
ALTER TABLE `forum_cuti`
 ADD PRIMARY KEY (`id_forum_cuti`), ADD KEY `id_dosen/pegawai` (`id_dosen_pegawai`);

--
-- Indexes for table `informasi_cuti`
--
ALTER TABLE `informasi_cuti`
 ADD PRIMARY KEY (`id_informasi_cuti`), ADD KEY `id_admin_tatausaha` (`id_admin_tatausaha`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dosen_pegawai`
--
ALTER TABLE `dosen_pegawai`
MODIFY `id_dosen_pegawai` int(25) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `form_cuti`
--
ALTER TABLE `form_cuti`
MODIFY `id_form_cuti` int(25) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `informasi_cuti`
--
ALTER TABLE `informasi_cuti`
MODIFY `id_informasi_cuti` int(25) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `form_cuti`
--
ALTER TABLE `form_cuti`
ADD CONSTRAINT `form_cuti_ibfk_1` FOREIGN KEY (`id_dosen_pegawai`) REFERENCES `dosen_pegawai` (`id_dosen_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `forum_cuti`
--
ALTER TABLE `forum_cuti`
ADD CONSTRAINT `forum_cuti_ibfk_1` FOREIGN KEY (`id_dosen_pegawai`) REFERENCES `dosen_pegawai` (`id_dosen_pegawai`);

--
-- Ketidakleluasaan untuk tabel `informasi_cuti`
--
ALTER TABLE `informasi_cuti`
ADD CONSTRAINT `informasi_cuti_ibfk_1` FOREIGN KEY (`id_admin_tatausaha`) REFERENCES `admin_tatausaha` (`id_admin_tatausaha`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
