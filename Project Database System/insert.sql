
USE projectlab

INSERT INTO [User](UserID, UserNickname, UserFullname, UserEmail, UserCity, Userdescription)
	VALUES 
	('USR001', 'Mirnia', 'Mirnia Cantika', 'mirniacantika@gmail.com', 'Pekanbaru', 'Tidak suka makan sayur'),
	('USR002', 'Widiya', 'Widiya Febri Wulandari', 'widiyawulan@gmail.com', 'Pekanbaru', 'Suka merawat tubuhnya'),
	('USR003', 'Fernando', 'Fernando Putra', 'fernandoptr@gmail.com', 'Jakarta', 'Suka dengerin musik'),
	('USR004', 'Joshlim', 'joshlim Bobby', 'joshuabobby@gmail.com', 'Medan', 'Suka ngelag jaringan'),
	('USR005', 'Agustina', 'Agustina Mardalina', 'agustina22@gmail.com', 'Pontianak', 'Soleksi tasnya sangat banyak'),
	('USR006', 'Andian', ' Andiansyah jordi', ' andiansyah @gmail.com', 'Tanggerang', 'Suka bermain bola'),
	('USR007', 'Mikasih', 'Mikasih Mirzani', 'mikamirzani@gmail.com', 'Palembang', 'Suka nonton drama korea'),
	('USR008', 'Budiyat', 'Budi yanto', 'budiyanto@gmail.com', 'Palangkaraya','Suka film action'),
	('USR009', 'Fikhri', 'Fikhri cahyadi', 'fikricahyadi@gmail.com', 'Medan', ' Suka makan sayur'),
	('USR010', 'Jhonny', 'Jhonny kusuma', 'jonnykusuma@gmail.com', 'Pekanbaru', 'Suka nonton film action'), 
	('USR011', 'Asepty', 'Asepty Kasep', 'Asepgaming@gmail.com', 'Bandung', 'Suka yang anime gitu')


INSERT INTO Director(DirectorID, DirectorName, DirectorEmail, DirectorCity, DirectorAddress, DirectorPhone)
	VALUES ('DIR001', 'Wijayanto Prasmono', 'wijayantoprm@gmail.com', 'Tangerang', 'Jl. Perdagangan 12',82212303345),
	('DIR002', 'Gagang Rudi', 'bosrudi363@gmail.com', 'Jakarta', 'Jl. Agung timur 45', 85713543745),
	('DIR003', 'Riko Burket', 'rikoriok21@gmail.com', 'Bandung', 'Jl. Pasar ikan 77', 88813241722),
	('DIR004', 'Jasima Sukowati', 'jasimasukowati@yahoo.com', 'Pekanbaru', 'Jl. Angkasaraya 33', 81345567871),
	('DIR005', 'Arda Nella', 'ardanella@gmail.com', 'Banyuwangi', 'Jl. Budiraya 11', 82340907080),
	('DIR006','Ewing UHD', 'EwingUHD@gmail.com', 'Surabaya', 'Jl. Pattimura 67', 81264728462),
	('DIR007', 'Sukarni Mahyadi', 'Sukarni@gmail.com',  'Palembang', 'Jl. Ahmad yani 55', 83645183648),
	('DIR008', 'Dwi Sri Haryani', '@Haryanigmail.com', 'Bali', 'Jl. Jendral Sudirman 34', 84628573901),
	('DIR009', 'Andy Tanuwijaya', '@Andy_Jayagmail.com', 'Medan', 'Jl. Permata Hijau 78', 89576829164),
	('DIR010', 'Nikolas Nugroho', 'NikolasNugroho@gmail.com', 'Pekanbaru', 'Jl. Yetro Singseng 89', 81628467582)


INSERT INTO Publisher(PublisherID, PublisherName, PublisherEmail, Publishercity, PublisherAddress, PublisherPhone)
	VALUES('PUB001', 'Baskoro Putro', 'baskoroptr@gmail.com', 'Kediri', 'Jl. Kecamatan Baru 18', 6282233445566),
	('PUB002', 'Junaidi Karo', 'junetganteng22@gmail.com', 'Banten', 'Jl. Pasar Uler Timur 11', 6281353548932),
	('PUB003', 'Anya Galardo', 'anyagalardo1@gmail.com', 'Jakarta', 'Jl. Proklamasi 45', 6285773849182),
	('PUB004', 'Kasturi Rahmana', 'kasturi30@yahoo.com', 'Madiun', 'JL. Persimpangan 19',6284790999398),
	('PUB005', 'Sofia Maharani', 'sofiamaharani@gmail.com', 'Bagansiapi-api', 'Jl. Nelayan Ujung 71', 6282360342212),
	('PUB006', 'Firmansyah', 'Firmansyah80@gmail.com', 'Aceh', 'Jl. Jelakengan 90', 6287635471894),
	('PUB007', 'Adithia Putra', 'Adithia_Putra@gmail.com', 'Surabaya', 'Jl. Hayam Muruk 6', 6281209745678),
	('PUB008', 'Nurlayani', 'Nurlayani9@gmail.com', 'Malang', 'Jl. Jendaral Sudirman 36', 6289092748274),
	('PUB009', 'Fanny putriyani', 'Fannyputri49@gmail.com', 'Jakarta', 'Jl. HR Rasuna Said 56', 6281294617182),
	('PUB010', 'Doni Putra', 'Doni_putra@gmail.com', 'Maluku', 'Jl. Tanuwijaya Kusuma 77', 6281165448272)


INSERT INTO Movie(MovieID, DirectorID, PublisherID, Movietitle, MovieDescription, MovieReleaseDate, MoviePrice)
	VALUES('MOV001', 'DIR001', 'PUB001', 'Valak', 'Menceritakan Ketika seorang biarawati muda di biara terpencil Rumania mengorbankan hidupnya sendiri', '2015-02-12', 100000),
	('MOV002', 'DIR002', 'PUB002', 'The Fault in Our Stars', ' Merupakan seorang remaja yang tinggal di Indianapolis yang menderita kanker tiroid yang telah menyebar ke paru-parunya', '2014-04-23', 55000),
	('MOV003', 'DIR003', 'PUB003', 'Kimi No Nawa', 'Sebuah film animasi Jepang produksi tahun 2016 bertema fantasi untuk remaja', '2015-03-01', 95000),
	('MOV004', 'DIR004', 'PUB004', 'Pain and Gain', 'Pain & Gain adalah sebuah film komedi kejahatan Amerika Serikat tahun 2013', '2013-09-18', 75000),
	('MOV005', 'DIR005', 'PUB005', 'Gone Girl', 'Gone Girl adalah sebuah film thriller psikologis Amerika Serikat yang rilis pada tahun 2014', '2014-10-05', 105000),
	('MOV006', 'DIR006', 'PUB006', 'The Intern', 'Seorang duda berusia 70 tahun yang menjadi magang senior di situs web mode online', '2015-02-08', 25000),
	('MOV007', 'DIR007', 'PUB007', 'The Conjuring', 'Mengisahkan tentang investigasi paranormal untuk membantu keluarga Perron', '2013-07-22',28000),
	('MOV008', 'DIR008', 'PUB008', 'Avatar', 'Pandora, yang atmosfernya beracun bagi manusia, dihuni oleh suku NaVi, spesies humanoid bewarna biru', '2009-02-01', 28000),
	('MOV009', 'DIR009', 'PUB009', 'Felony', 'Saat mengejar tersangka yang melarikan diri dari labotarium obat, detektif ditembak dan masih selamat', '2013-07-14', 45000),
	('MOV010', 'DIR010', 'PUB010', 'Harry Potter and the Sorcerer’s Stone', 'Mengisahkan tentang seorang anak yatim piatu bernama Harry yang baru saja masuk ke dalam sekolah sihir', '2001-01-01', 30000),
	('MOV011', 'DIR003', 'PUB004', 'The Legend of Hercules', 'The Legend of Hercules Cerita asli dari legenda Yunani Hercules. Dikhianati oleh ayah angkatnya,', '2014-03-22', 50000),
	('MOV012', 'DIR004', 'PUB002', 'Tomorrowland', 'sebuah dimensi yang belum pernah dijelajahi dalam ruang dan waktu', '2015-09-02', 55000),
	('MOV013', 'DIR005', 'PUB003', 'Paper Towns', 'pada satu malam menghilang secara misterius setelah meninggalkan sebuah petunjuk untuknya', '2015-11-21', 45000),
	('MOV014', 'DIR006', 'PUB005', 'The Stanford Prison Experiment', 'Dua puluh empat siswa berpartisipasi dalam percobaan psikologis', '2015-12-12', 55000),
	('MOV015', 'DIR008', 'PUB009', 'Nightcrawler', 'Seorang pencuri bernama Louis "Lou" Bloom (Jake Gyllenhaal) ditangkap oleh seorang penjaga keamanan', '2001-10-31', 15000),
	('MOV016', 'DIR002', 'PUB004', 'Ad Astra', 'perjalanan ke tepi luar tata surya untuk menemukan ayahnya yang hilang dan mengungkap misteri yang mengancam kelangsungan hidup planet kita.', '2015-09-01', 15000)


INSERT INTO Genre(Genreid, GenreName)
	VALUES ('GEN001', 'Horror'),
	('GEN002', 'Romance'),
	('GEN003', 'Anime'),
	('GEN004', 'Action'),
	('GEN005', 'Drama'),
	('GEN006', 'Comedy'),
	('GEN007', 'Thriller'),
	('GEN008', 'Adventure'),
	('GEN009', 'Crime'),
	('GEN010', 'Fantasy')


INSERT INTO DetailMovieGenre(MovieID, GenreID) 
	VALUES ('MOV001','GEN001'),
	('MOV001','GEN007'),
	('MOV002','GEN002'),
	('MOV003','GEN010'),
	('MOV003','GEN004'),
	('MOV004','GEN006'),
	('MOV005','GEN007'),
	('MOV006','GEN005'),
	('MOV007','GEN001'),
	('MOV007','GEN007'),
	('MOV008','GEN008'),
	('MOV008','GEN010'),
	('MOV009','GEN009'),
	('MOV010','GEN010'),
	('MOV011','GEN008'),
	('MOV012','GEN008'),
	('MOV012','GEN010'),
	('MOV013','GEN008'),
	('MOV014','GEN004'),
	('MOV015','GEN009'),
	('MOV016','GEN005'),
	('MOV016','GEN008')


INSERT INTO Review(UserID, MovieID, ReviewRecommendationStatus, ReviewContent, ReviewDate)
	VALUES('USR001', 'MOV001', 'Recommended', 'Filmnya bikin merinding untung bawa pacar jadi bisa pegang tangannya biar ga takut', '2020-02-22'),
	('USR001', 'MOV003', 'Recommended', 'Ceritanya bikin sedih dan seru banget ampe rewatch tiga kali', '2020-02-22'),
	('USR002', 'MOV001', 'Recommended', 'Gabisa tidur ampe dua hari, nyesel si tapi seru hehe', '2020-02-13'),
	('USR003', 'MOV001', 'Not Recommended', 'Ceritanya sepertinya tidak cocok untuk anak dikalangan umurnya 18 kebawah', '2020-02-21'),
	('USR004', 'MOV004', 'Recommended', 'Asik banget filmnya penuh dengan tantangan dan lucu', '2020-02-24'),
	('USR004', 'MOV012', 'Recommended', 'Timelinenya seru menjelajah ruang dan waktu jadi pengen', '2020-02-25'),
	('USR005', 'MOV013', 'Not Recommended', 'Misterius banget, plot twistnya ga kedepak bikin pusing', '2020-02-25'),
	('USR006', 'MOV001', 'Not Recommended', 'filmya membuat gua gabisa tidur dan takut kalo mandi', '2020-02-26'),
	('USR003', 'MOV007', 'Recommended', 'Alurnya gak ketebak dan nuansa horrornya sangat nyata', '2020-02-28'),
	('USR011', 'MOV011', 'Recommended', 'asli kasian banget hercules dikhianati oleh ayah angkatnya', '2020-03-12'),
	('USR007', 'MOV001', 'Not Recommended', 'Gaberani mandi malem lagi takut ada valak', '2020-03-15'),
	('USR008', 'MOV013', 'Recommended', 'Misterius banget, bintang lima deh seru abizz', '2020-03-25'), 
	('USR009', 'MOV003', 'Not Recommended', 'Ceritanya menyedihkan dan ceritanya terlalu vulgar', '2020-04-02'), 
	('USR001', 'MOV006', 'Not Recommended', 'Dudanya gacocok diperanin dia, mending josua', '2020-04-22')


INSERT INTO SalesTranscation(SalesTranscationID, UserID, SalesTranscationDate, QuantityEachMovie)
VALUES('SAL001', 'USR001', '2020-02-19', 2),
('SAL002', 'USR002', '2020-02-19', 1),
('SAL003', 'USR003', '2020-02-20', 2),
('SAL004', 'USR004', '2020-02-19', 5),
('SAL005', 'USR004', '2020-02-19', 2),
('SAL006', 'USR001', '2020-02-22', 3),
('SAL007', 'USR005', '2020-02-24', 2),
('SAL008', 'USR006', '2020-02-24', 1),
('SAL009', 'USR003', '2020-02-24', 3),
('SAL010', 'USR011', '2020-03-11', 2),
('SAL011', 'USR007', '2020-03-13', 1),
('SAL012', 'USR008', '2020-03-24', 2),
('SAL013', 'USR009', '2020-04-02', 1),
('SAL014', 'USR001', '2020-04-21', 1),
('SAL015', 'USR010', '2020-05-11', 1),
('SAL016', 'USR011', '2020-05-24', 2)


INSERT INTO DetailSalesTransaction(MovieID, SalesTransactionID)
VALUES('MOV001', 'SAL001'),
('MOV003', 'SAL001'),
('MOV001', 'SAL002'),
('MOV006', 'SAL003'),
('MOV001', 'SAL003'),
('MOV004', 'SAL004'),
('MOV007', 'SAL004'),
('MOV010', 'SAL004'),
('MOV012', 'SAL004'),
('MOV001', 'SAL004'),
('MOV004', 'SAL005'),
('MOV015', 'SAL006'),
('MOV008', 'SAL006'),
('MOV013', 'SAL007'),
('MOV001', 'SAL007'),
('MOV001', 'SAL008'),
('MOV007', 'SAL009'),
('MOV003', 'SAL009'),
('MOV009', 'SAL009'),
('MOV001', 'SAL010'),
('MOV011', 'SAL010'),
('MOV001', 'SAL011'),
('MOV013', 'SAL012'),
('MOV001', 'SAL012'),
('MOV003', 'SAL013'),
('MOV006', 'SAL014'),
('MOV001', 'SAL015'),
('MOV002', 'SAL016'),
('MOV009', 'SAL016')