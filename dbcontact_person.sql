-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Okt 2023 pada 00.25
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbcontact_person`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agama`
--

CREATE TABLE `agama` (
  `id` int(11) NOT NULL,
  `nama` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `agama`
--

INSERT INTO `agama` (`id`, `nama`) VALUES
(1, 'Islam'),
(2, 'Kristen'),
(3, 'Katolik'),
(4, 'Hindu'),
(5, 'Buddha'),
(6, 'Konghucu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `role` enum('admin','manager','staff') NOT NULL,
  `foto` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id`, `fullname`, `username`, `password`, `role`, `foto`) VALUES
(1, 'Bahrul', 'bahrul', '556478c69eff66314a22d97990e0eef7eedaffb5', 'admin', 'bahrul.jpg'),
(2, 'Ulum', 'ulum', '036dae29b9e19efbbbe5e4848e7d4f0f5264ffe6', 'manager', 'ulum.jpg'),
(3, 'Melia', 'melia', 'ecf8bd85b263b99ff6d49d6315a1f51977205a50', 'staff', 'melia.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `partisipan`
--

CREATE TABLE `partisipan` (
  `id` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `gender` enum('Pria','Wanita') NOT NULL,
  `temp_lahir` varchar(45) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `hp` varchar(15) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `kampus` varchar(45) DEFAULT NULL,
  `instagram` varchar(45) DEFAULT NULL,
  `idagama` int(11) NOT NULL,
  `foto` varchar(45) DEFAULT NULL,
  `moto` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `partisipan`
--

INSERT INTO `partisipan` (`id`, `nama`, `gender`, `temp_lahir`, `tgl_lahir`, `alamat`, `hp`, `email`, `kampus`, `instagram`, `idagama`, `foto`, `moto`) VALUES
(1, 'Irgi Rama Sulistio', 'Pria', 'Bogor', '2002-03-06', 'Kp. Babakan RT 02/RW 03 No.16 Kec. Cileungsi ', '089612431791', 'irgirama01@gmail.com', 'Politeknik Negeri Media Kreatif', 'irgiramz', 1, 'Irgi.jpg', 'Semangat dan teruslah berusaha'),
(2, 'Ahmad Fadhliansyah', 'Pria', 'DKI Jakarta', '2003-06-13', 'Jl Lapangan Roos III', '082114254952', 'fadhliansyah9f@gmail', 'STT NF', 'fadhliansyaah', 1, 'fadli.jpg', 'Janganlah menjadi orang yang tidak menghargai orang lain.\r\n'),
(3, 'Nata Nara Narendra Putra ', 'Pria', 'Sumbawa Bes', '2003-07-30', 'Jl. Gunung Agung Gang. 1C Perumahan Pesona Ag', '089675998114', 'natanaranarendra@gma', 'Universitas Udayana', 'natanaraps', 4, 'nata.jpg', NULL),
(4, 'Muhammad Jaisy Adli', 'Pria', 'Bekasi', '2004-01-13', 'Jln. H. Taqwa no 108 rt/rw 006/009', '089512391211', 'muhjaisyadli@gmail.c', 'STT NF', 'jaisyadli', 1, 'jaisy', '2 3 ular kebo\r\nkita hidup harus semangat tlus lo phei phei\r\n'),
(5, 'Adi', 'Pria', 'Pamekasan', '2000-10-29', 'Sumber Waru Waru Jawa Timur', '081937264222', 'adilrindu29@gmail.co', 'Institut Sains danTeknologi Annuqayah', 'adialfatih45', 1, 'adi.webp', 'Jangan pernah takut untuk mencoba\r\n'),
(6, 'Qonita Azizah ', 'Wanita', 'Panyalaian ', '2002-03-08', 'Jalan Allogio barat 3, Medang, kec pegedangan', '085761434808', 'qonita.azizah@studen', 'Pradita University ', 'qonitaazh_', 1, 'qoni.webp', 'Jadi diri sendiri \r\n'),
(7, 'Milda Khusnul Khotimah', 'Wanita', 'Lumajang', '2003-03-26', 'Lumajang, Jawa Timur', '087863533945', 'mildakhusnul999@gmai', 'Politeknik Negeri Malang', '_mldkhsnl', 1, 'milda.jpg', 'Life is to be grateful\r\n'),
(8, 'Izzudin muktar ', 'Pria', 'Depok', '2003-06-27', 'Dsn bebegan, jati kabupaten Blora Jawa Tengah', '083122661966', 'izudinmuktar5@gmail.', 'STT Terpadu Nurul Fikri ', 'mukktaaaaar', 1, 'izzudin.jpg', 'Guru terbaik adalah pengalaman orang lain.\r\n'),
(9, 'MOCH FIKRI RAMADHAN', 'Pria', 'Depok', '2001-10-11', 'JL. Situ Indah No.3 Rt.06/10 Kel.Tugu Kec.Cim', '089684711291', 'libr.libr1711@gmail.', 'Sekolah Tinggi Teknologi Terpadu Nurul Fikri', '@fikrii1711', 1, 'fikrir.jpg', 'Everything you do, do it 100%\r\n'),
(10, 'Sri Lestari', 'Wanita', 'Pati', '2002-09-28', 'Ds.Sukolilo RT 06/RW 07', '08157945227', 'lestatari41@gmail.co', 'Universitas Muria Kudus', 'taarrrrri', 1, 'lestari.jpg', 'Tuhan memiliki rencananya sendiri. Percayai itu dan nikmati saat  ini.\r\n'),
(11, 'Septia Dwi Kurniasih', '', 'Jakarta', '1995-09-18', 'Kp. Pulo Makasar Jakarta Timur', '087889018920', 'septiadk2@gmail.com', 'Unsurya', 'cepiaaaws', 1, 'septi.jpeg', 'Sebaik apapun diri kita, kita tidak akan pernah terlihat sempurna oleh manusia lain.\r\n'),
(12, 'Putra Habib Al Aziz ', 'Pria', 'Rantau kary', '2003-12-23', 'OKI, Sumatera Selatan ', '085377519996', 'putrahabibalaziz@gma', 'Politeknik Manufaktur Negeri Bangka Belitung ', 'ajizz11_', 1, 'pubia.jpg', 'Bernafaslah selagi masih hidup \r\n'),
(13, 'Siti Amdah', 'Wanita', 'Tangerang', '2001-04-14', 'Tigaraksa, Tangerang-Banten', '08979281365', 'siti.amdah14@gmail.c', 'STT Terpadu Nurul Fikri', 'amdah14', 1, 'sitam.jpg', '???? ????? ??????\r\n'),
(14, 'Renawati', 'Wanita', 'Tangerang', '2001-05-22', 'Kp.Daraham ', '085282884467', 'rena09910@gmail.com', 'STT Terpadu Nurul Fikri', 'ren_aniqobie', 1, 'renaw.jpeg', 'If you\'re finish changing, you\'re finished\r\n'),
(15, 'Hanif Hidayatulloh ', 'Pria', 'Brebes', '2003-11-28', 'Purwokerto Utara', '087862678478', 'hanifhidayatulloh281', 'Universitas Amikom Purwokerto ', 'hanief_nief', 1, 'hanif.jpg', '\"Jangan kau penjarakan ucapanmu, jika kau menghamba kepada ketakutan kau hanya akan memperpanjang barisan perbudakan\" - Widji Thukul \r\n'),
(16, 'Ariza Akmal Syahida', 'Pria', 'Bantul', '2003-04-13', 'Bantul, Daerah Istimewa Yogyakarta', '083849257999', 'arizaakmal04@gmail.c', 'Universitas Amikom Yogyakarta', 'arizaakmal13', 1, 'armal.jpg', 'Jadilah lebih baik dari hari kemarin\r\n'),
(17, 'Muarif Rizqy', 'Pria', 'Brebes', '2001-11-21', 'Kec. Paguyangan jl. Bumiayu - Purwokerto', '085326762608', 'murizqyarf17@gmail.c', 'Universitas Peradaban', 'Arif_rzym', 1, 'muarif.jpg', 'Ayo makan biar nggak mati\r\n'),
(18, 'Muhammad Alifi Ferdiansya', 'Pria', 'Tulungagung', '2000-07-24', 'Desa Tenggong, Kecamatan Rejotangan, Kabupate', '088217206039', 'alifi240700@gmail.co', 'Universitas Bhinneka PGRI', 'alifi_24', 1, 'alifi.png', 'Just Do It Man!\r\n'),
(19, 'Fajar septianto', 'Pria', 'Jakarta sel', '2002-03-06', 'Cinere, Depok', '085889432197', 'fajar23.septianto@gm', 'STT Nurul Fikri', 'slashandback', 1, 'fasep.jpg', 'we can buy the time. setiap proses yang bisa di kurangi waktunya sama dengan membeli waktu\r\n'),
(20, 'Kurniawan', 'Pria', 'Sumedang', '2001-08-19', 'Sumedang', '081411096708', 'ikurniawannf@gmail.c', 'SEKOLAH TINGGI TEKNOLOGI TERPADU NURUL FIKRI', 'i_kr19', 1, 'kurniawan.jpg', 'Jangan malu untuk menjadi diri sendiri\r\n'),
(21, 'Muhammad Bahrul Ulum', 'Pria', 'Pontianak', '0000-00-00', 'Jalan Bujama Desa Pal IX Kecamatan Sungai Kakap Kabupaten Kubu Raya\r\n', '087716374672', 'rangga.agg2018@gmail', 'Universitas Tanjungpura', 'ulum_kane', 1, 'ulum.jpg', 'Dunia memang tidak memihakmu, Tapi bukan berarti kau harus kalah darinya\r\n'),
(22, 'Zian Naisila Anjarwati', 'Wanita', 'Sumedang', '2001-02-24', 'Jl. Caringin Cikungkurak Bandung\r\n', '089652639063', 'ziannaisilaa@gmail.c', 'STMIK - IM Bandung', 'ziannaisilaa', 1, 'zians.png', 'spion dulu diri sendiri, baru klakson orang lain\r\n'),
(23, 'Hadi Prasetiyo', 'Pria', 'Samarinda', '2002-06-16', 'Samarinda, Kalimantan Timur\r\n', '085711228592', 'hadiiyok01@gmail.com', 'hadiiprasetiyo', 'Universitas Mulawarman', 1, 'hadiyo.jpg', 'Sesulit apapun tugasmu pasti akan selesai dimenit terakhir\r\n'),
(24, 'Euis safania', 'Wanita', 'Cirebon', '2001-10-25', 'Kabupaten Cirebon Provinsi Jawa Barat \r\n', '083156525468', 'euissafania8703@stud', 'Universitas Negeri Semarang', 'safania.euis', 1, 'safania.jpg', '\"Sukses bukanlah kunci kebahagiaan, tapi kebahagian adalah kunci sukses\"\r\n'),
(25, 'Ulayya Salmaa Khoirunnisa', 'Wanita', 'Kudus', '2003-05-28', 'Bulungcangkring RT 03/ RW 01, Kec. Jekulo, Kab. Kudus\r\n', '081215627905', 'ulayyasalmaa28@gmail', 'Universitas Muria Kudus', 'salmaaul._', 1, 'uyama.jpg', 'Hidup itu seperti di drama Korea, penuh dengan plot twist, tapi pasti ada episode happy endingnya.\r\n'),
(26, 'Ahmad Riziq', 'Pria', 'Jakarta', '2002-07-28', 'Kp.Roke Des. Negkasari Kec.Jasinga Kab. Bogor Provinsi.jawa barat\r\n', '085939446587', 'ahmadriziq010@gmail.', 'Sekolah Tinggi Teknologi Terpadu Nurul Fikri', '@arizieq', 1, 'aziq.jpg', 'Satu Satunya perjalanan yg Mustahil, adalah perjalanan yg tidak pernah kamu mulai\r\n'),
(27, 'Carmennita Soleman', 'Wanita', 'Samarinda', '2004-01-24', 'Jl. Budaya Pampang, Samarinda, Kalimantan Timur\r\n', '085350232057', 'nitacarmen06@gmail.c', 'Universitas Mulawarman', 'carmeennita', 2, 'carmen.jpg', 'Be Grateful\r\n'),
(28, 'Dimas Andhika Firmansyah ', 'Pria', 'Pemalang ', '2003-07-20', 'Pemalang, Jawa Tengah \r\n', '089630147925', 'dmsandhika87@gmail.c', 'Universitas Negeri Semarang ', 'dmsandhika_', 1, '', 'Jika kamu merasa tidak ada orang baik, jadilah orang baik tersebut\r\n'),
(29, 'Ahmad Zuaidi', 'Pria', 'Sumenep ', '2001-11-02', 'Lembung Barat Lenteng Sumenep Jatim\r\n', '085963093822', 'ahmadzuaidi892@gmail', 'IST Annuqayah', 'ahmd.zdi__', 1, 'hefmu.jpg', 'Fatum brutum amor fati. Sebab kata orang Tuhan tidak pernah bermain dadu.\r\n'),
(30, 'SHABRINA PRIMADEWI', 'Wanita', 'Kudus', '2003-01-09', 'Desa Sadang, Rt 03 Rw 02, Kecamatan Jekulo, Kabupaten Kudus, Jawa Tengah\r\n', '085848686194', 'shabrinaprima@gmail.', 'Universitas Muria Kudus', 'shabrinampol', 1, 'sapir.png', 'Kamu seringkali berkata gak sanggup, bahkan beberapa kali ingin menyerah, tapi lihat kamu masih bertahan sampai saat ini. Teruslah mengeluh sampai semua pada akhirnya terselesaikan juga\r\n'),
(31, 'Ridwan Khomarudin Muharra', 'Pria', 'Tanggerang ', '2003-03-10', 'Citayam kp. Kelapa gg. Nusaindah rt04/rw16\r\n', '081281238348', 'ridwanmts812@gmail.c', 'STT Terpadu Nurul Fikri ', 'arraaamm__', 1, NULL, 'Klo bisa dilakukan skrng knpa harus bsk.\r\n'),
(32, 'Anisa', '', 'Depok', '2003-10-09', 'Kp. Sindangkarsa Rt01/07, sukamaju baru, Tapos depok\r\n', '083895461608', 'anisaaabcd@gmail.com', 'STT Terpadu Nurul Fikri ', 'SyNissa', 1, 'anisa.jpg', 'Stop wishing, start doing! :)\r\n'),
(33, 'Shafa Salsabila Febriani', 'Wanita', 'Depok', '2002-02-20', 'Jl Bhakti Abri Rt 02 Rw 10 \r\n', '0895706510309', 'shafafebriani4@gmail', 'UBSI Depok', 'shafaslls', 1, 'shsa.jpg', 'jadilah diri sendiri\r\n'),
(34, 'Febi Febiyanti ', 'Pria', 'Garut ', '2003-02-27', 'Jl. KH Hasan Arif, Kp. Pagersari RT.01 RW.06 Kec. Banyuresmi Kab. Garut\r\n', '085860257486', 'febi20289ti@student.', 'Sekolah Tinggi Teknologi Terpadu Nurul Fikri ', '_ffyyyyyyy', 1, 'febya.jpg', '\"Terkadang, perubahan adalah kunci untuk pertumbuhan.\"\r\n'),
(35, 'Nasyath Faykar ', 'Pria', 'Pekalongan ', '2002-11-30', 'Jalan KH Ahmad Dahlan Tirto Gg. 7 No. 31\r\n', '088806923500', 'nasyathfaykar@gmail.', 'STMIK WIDYA PRATAMA PEKALONGAN ', 'faykarr_', 1, 'nasya.jpg', 'Learn to be best rather than yesterday.\r\n'),
(36, 'Maulidhiansyah Bayu Setia', 'Pria', 'Jakarta ', '2003-05-11', 'Jl. Jantung Harapan RT 08/07 Kel.pabuaran Kec.cibinong\r\n', '089507631813', 'maulidhiansyahbayu@g', 'STT Terpadu Nurul Fikri ', 'inibayou', 1, 'maul.jpg', 'Hiduplah seperti larry\r\n'),
(37, 'RANGGA EKKLESIA GABRIEL A', 'Pria', 'Palangka Raya', '2002-06-08', 'Jl.Perkebunan komp perikanan \r\n', '083143508517', 'ranggaekkle20020806@', 'UNIVERSITAS PALANGKARAYA ', 'rangga_e.g.a', 2, NULL, 'Ngoding Tanpa Error impossible!\r\n'),
(38, 'Muhammad Alif Firdaus Ari', 'Pria', 'Surabaya', '2002-03-14', 'Perum TNI AL Candi \r\n', '082132306322', '20410100080@dinamika', 'Universitas Dinamika', 'afarizona_', 1, 'alifir.jpeg', 'Aut viam inveniam aut faciam\r\n'),
(39, 'Mukhammad Rifkhi Rifangga', 'Pria', 'Kudus ', '2002-05-13', 'Sunggingan RT 03 RW 03 Kota Kudus ', '08812670156', 'rifkhirifangga@gmail', 'Universitas Muria Kudus ', 'rifkhi.rifangga_', 1, NULL, 'Tawa adalah cara terbaik untuk lupa '),
(40, 'Winanda afrilia harisya', 'Wanita', 'Sungai penuh', '2003-04-26', 'Kapalo koto, Pauh, Padang', '087842182759', 'winandaafrilia0304@g', 'Universitas Andalas', '_winandaah', 1, NULL, '\"Walaupun hidup tidak menyenangkan akhir akhir ini, tapi setidaknya masih layak di jalani dan dicoba\"'),
(41, 'Muhammad Anwar Fauzan', 'Pria', 'Serang', '2003-01-15', 'Bumi Agung Permai 1', '085939410330', 'anwar.fauzan98@gmail', 'Universitas Banten Jaya', '@anwarfz__', 1, NULL, 'Your future created by what you do today not tomorrow'),
(42, 'Erick Darmawan', 'Pria', 'Kota Serang', '2003-08-13', 'Kota Serang', '085282568210', 'erickdarmawanboeniar', 'Universitas Banten Jaya', '@erick.db13', 1, NULL, 'tetap Semangat'),
(43, 'Lora Lorensa Manafe ', 'Wanita', 'Sulamu', '2001-10-30', 'Sulamu ', '081353024713', 'lhomanafe@gmail.com', 'Politeknik Negeri kupang ', '@Lhomnfe30 ', 2, NULL, 'Jalan mu memang beda dengan mereka, tetapi kamu akan lebih kuat dari mereka.'),
(44, 'Bagus Febriyanto', 'Pria', 'Pati', '2002-02-02', 'Kab. Pati, Kec. Tayu, desa Pondowan', '08978270522', 'bagusfebriyanto19@gm', 'Universitas Muria Kudus', '@__imnotbgs', 1, NULL, '\"Itami o kanjiro \r\n\r\nItami o kangaero\r\n\r\nItami o uketore \r\n\r\nItami o shire \r\n\r\nKoko yori.... sekai ni itami o..... SHINRA TENSEI!!!! ???\"'),
(45, 'Safitri ', 'Wanita', 'Jakarta ', '2003-10-16', 'Jakarta ', '084567444545', 'safitri1337@gmail.co', 'Universitas Bina Nusantara ', 'safitri16__', 1, NULL, 'Nothing '),
(46, 'Bagus Muhammad Mumtaza ', 'Pria', 'Kota Pekalongan ', '2003-08-20', 'Indonesia, Jawa Tengah, Kota Pekalongan, Jl. KHM. Mansyur Bendan GG. 7', '085875282178', 'bagusbendan07@gmail.', 'STMIK Widya Pratama Pekalongan ', '@mmtza.mm', 1, NULL, 'Tetap semangat dan jangan menyerah apapun yang terjadi'),
(47, 'Mahez Arya', 'Pria', 'Serang', '2003-05-17', 'Taman Pipitan Indah', '082228646169', 'mahezarya23@gmail.co', 'Universitas Banten Jaya', NULL, 1, NULL, NULL),
(48, 'Jhofy Ricardo', 'Pria', NULL, NULL, NULL, '082218994202', 'jhofyricardo@icloud.', 'Politeknik Negeri Sriwijaya', NULL, 2, NULL, NULL),
(49, 'Riski Eggy Saputro', 'Pria', NULL, NULL, NULL, '081911049214', 'eggy.riski27@gmail.c', 'Universitas Banten Jaya', NULL, 1, NULL, NULL),
(50, 'Riyanto', 'Pria', NULL, NULL, NULL, '088225448521', 'alfyansyahriyan31@gm', 'Universitas Sains Al-Quran', NULL, 1, NULL, NULL),
(51, 'Fathan Mubin', 'Pria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(52, 'Nasrul', 'Pria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agama`
--
ALTER TABLE `agama`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `partisipan`
--
ALTER TABLE `partisipan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hp_UNIQUE` (`hp`),
  ADD KEY `fk_partisipan_agama` (`idagama`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `partisipan`
--
ALTER TABLE `partisipan`
  ADD CONSTRAINT `fk_partisipan_agama` FOREIGN KEY (`idagama`) REFERENCES `agama` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
