CREATE DATABASE IF NOT exists Gojek;
USE Gojek;


CREATE TABLE IF NOT exists Customer (
   ID_Customer varchar(10),
   NamaCustomer varchar(50),
   EmailCustomer varchar(50),
   NoHp_Customer char(12),
   PasswordCustomer varchar(6),
   PRIMARY KEY (ID_Customer)
);

CREATE TABLE IF NOT exists Driver (
   ID_Driver varchar(10),
   NamaDriver varchar(50),
   NoHp_Driver varchar(12),
   FotoDriver blob,
   NoPlat_Kendaraan varchar(10),
   TipeKendaraan varchar(50),
  PRIMARY KEY (ID_Driver)
);

CREATE TABLE IF NOT EXISTS LokasiDriver (
	nomor int,
	ID_Driver varchar(10),
    latitude float(10),
    longitude float(10),
    PRIMARY KEY (nomor),
    FOREIGN KEY (ID_Driver) REFERENCES Driver(ID_Driver)
);

CREATE TABLE IF NOT exists `Payment` (
	ID_Pembayaran varchar(10),
    MetodePembayaran varchar(5),
    PRIMARY KEY (ID_Pembayaran)
);

CREATE TABLE IF NOT exists `Order` (
   ID_Order varchar(10),
   ID_Customer varchar(10),
   ID_Driver varchar(10),
   ID_Pembayaran varchar(10),
   LokasiTujuan longtext,
   LokasiAsal longtext,
   Harga int,
  PRIMARY KEY (ID_Order),
  FOREIGN KEY (ID_Customer) REFERENCES Customer(ID_Customer),
  FOREIGN KEY (ID_Driver) REFERENCES Driver(ID_Driver),
  FOREIGN KEY (ID_Pembayaran) REFERENCES `Payment`(ID_Pembayaran)
);

/*INSERT DATA CUSTOMER*/
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA11223344', 'athalla1@gmail.com', 'athalla arli', '087888586843', '12345');
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA22334455', 'bintan2@gmail.com', 'bintan dinar', '087834586843', '14235');
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA33445566', 'luthfi3@gmail.com', 'luthfi', '087888586843', '12345');
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA44556677', 'ahmad4@gmail.com', 'ahmad dani', '087998586843', '13245');
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA55667788', 'januar5@gmail.com', 'januar bagas', '087588586843', '12435');
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA66778899', 'guna6@gmail.com', 'guna faidhan', '087858586843', '12345');
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA12345678', 'lucky7@gmail.com', 'lucky', '087888586843', '12345');
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA23456789', 'ruli8@gmail.com', 'ruli ferdiansyah', '087888586843', '12345');
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA34567890', 'amir9@gmail.com', 'amir faidhan', '087888586843', '12345');
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA45678910', 'alfaris10@gmail.com', 'alfaris faidhan', '087888586843', '12345');
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA56789101', 'syahrul11@gmail.com', 'syahrul', '087888586843', '12345');
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA67891011', 'ken12@gmail.com', 'ken', '087888586843', '12345');
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA78910111', 'emma13@gmail.com', 'emma watson', '087668586843', '12345');
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA89101112', 'junaedi14@gmail.com', 'junaedi', '08588586843', '12345');
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA91011121', 'jerry15@gmail.com', 'jerry', '08988586843', '12345');
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA12121211', 'tom16@gmail.com', 'tom waits', '087888676843', '12345');
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA21212121', 'chris17@gmail.com', 'chris pratt', '087688586843', '12345');
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA21321321', 'thom18@gmail.com', 'thom yorke', '087666586843', '12345');
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA78787878', 'john19@gmail.com', 'john kei', '087888586234', '12345');
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA92305532', 'paul20@gmail.com', 'paul simonon', '087899586843', '12345');
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA12341234', 'paul21@gmail.com', 'paul rudd', '089688586843', '12345');
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA12332132', 'john22@gmail.com', 'john wick', '08966686843', '12345');
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA23154231', 'robert23@gmail.com', 'robert', '087888776843', '12345');
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA17859124', 'johnny24@gmail.com', ' johnny greenwood', '087665586843', '12345');
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA67821325', 'emma25@gmail.com', 'emma stone', '087555586843', '12345');
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA29093522', 'faris26@gmail.com', 'faris fauzi', '08567886843', '12345');
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA14679870', 'fauzan27@gmail.com', 'fauzan maruf', '087998886843', '12345');
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA29834651', 'donald28@gmail.com', 'donald trump', '087123486843', '12345');
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA14286421', 'thoriq29@gmail.com', 'thoriq dwi', '081234558684', '12345');
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA29340658', 'zaidan30@gmail.com', 'zaidan rizq', '087887686843', '12345');
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA09237965', 'maudy31@gmail.com', 'maudy mawar', '087222586843', '12345');
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA09286235', 'billie32@gmail.com', 'billie joe', '087834434843', '12345');
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA90724635', 'tom33@gmail.com', 'tom araya', '0866666843', '12345');
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA02938682', 'kurt34@gmail.com', 'kurt cobain', '08788999843', '12345');
INSERT INTO Customer (ID_Customer, EmailCustomer , NamaCustomer , NoHp_Customer , PasswordCustomer) VALUES ('CA32073584', 'jim35@gmail.com', 'jim carey', '08432186843', '12345');

/*INSERT DATA DRIVER*/
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DA66666666', 'anton sukajadi', '08788866634', '1.png', 'supra', 'b 123 saf');
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DA77777777', 'brian ginting', '09897788761', '2.png', 'vixion', 'd 321 saq');
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DB88888888', 'leci suka', '08788855443', '3.png', 'H2', 'ab 432 qas');
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DC99999999', 'citra luna', '08783333567', '4.png', 'ducati v4', 'b 567 kj');
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DD00000000', 'mawar venc', '087811113458', '5.png', 'aprilia 150', 'b 890 ujh');
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DA11111111', 'ilham sukajadi', '087823466634', '6.png', 'supra', 'b 1223 saf');
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DR22222222', 'brian aja', '04427788761', '7.png', 'vixion', 'd 3221 saq');
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DD33333333', 'leci pasteur', '08666855443', '8.png', 'H2', 'ab 4332 qa');
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DW44444444', 'citra natural', '08783333567', '9.png', 'ducati v4', 'b 5647 kj');
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DL55555555', 'mawar merah', '087811113458', '10.png', 'aprilia 150', 'b 8490 ujh');
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DK00001111', 'anton rodrigo', '08100866634', '11.jpg', 'supra', 'b 343 saf');
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DF00002222', 'giring ginting', '09897788761', '12.jpg', 'vixion', 'd 331 saq');
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DR00003333', 'aku suka', '08788855443', '13.jpg', 'H2', 'ab 111 qas');
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DE00004444', 'masa luna', '087458333356', '14.jpg', 'ducati v4', 'b 512 kj');
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DW00005555', 'agus gondrong', '087823113458', '15.jpg', 'aprilia 150', 'b 3233 ujh');
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DQ00006666', 'acil aja', '081022334', '16.jpg', 'supra', 'b 3113 saf');
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DI00007777', 'dadeung ugal', '0983333761', '17.jpg', 'vixion', 'd 3121 saq');
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DU00008888', 'akamsi', '0878555443', '18.jpg', 'H2', 'ab 1333 qa');
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DR00009999', 'masalembo', '0878334467', '19.jpg', 'ducati v4', 'b 5134 kj');
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DE01100110', 'agus pitak', '08781222458', '20.jpg', 'aprilia 150', 'b 3233 ujh');
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DK00001010', 'bagas diam', '089561222458', '21.jpg', 'supra 150', 'b 3333 uh');
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DV00001212', 'bagus harun', '08552458', '22.jpg', 'aprilia 150', 'b 323 uja');
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DF00001313', 'alang uja', '0878199958', '23.jpg', 'aprilia 150', 'b 123 h');
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DG00001414', 'jibril aja', '0878543458', '24.jpg', 'aprilia 150', 'b 355 gh');
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DN00001515', 'anton setia', '087098634', '25.jpg', 'supra', 'b 333 af');
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DT00001616', 'brian simanjuntak', '0989999761', '26.jpg', 'vixion', 'd 3661 sq');
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DR00001717', 'ical suka', '087855443', '27.jpg', 'H2', 'ab 321 as');
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DE00001818', 'citra bengkoang', '08965546778', '28.jpg', 'ducati v4', 'b 555 aa');
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DC00001919', 'mawar putih', '0866667758', '29.jpg', 'aprilia 150', 'b 380 is');
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DX00002020', 'ija wika', '0812345634', '30.jpg', 'supra', 'b 1223 hf');
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DA00002121', 'umam ubi', '09833388761', '31.jpg', 'vixion', 'd 3213 ma');
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DP00002323', 'ujang batu', '0845455443', '32.jpg', 'H2', 'ab 4322 ha');
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DS00002424', 'chris nom', '087456767', '33.jpg', 'ducati v4', 'b 777 kj');
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DW00002525', 'eman rus', '08722213458', '34.jpg', 'aprilia 150', 'b 888 h');
INSERT INTO Driver (ID_Driver, NamaDriver, NoHp_Driver, FotoDriver, TipeKendaraan, NoPlat_Kendaraan) values ('DJ00002626', 'dimebag darrell', '089666663', '35.jpg', 'H2', 'n 666 eri');

/*INSERT DATA LOKASIDRIVER*/
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (1, 'DA66666666', 19.0603, 12.95435);
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (2, 'DA77777777', 10.2947, 5.984926);
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (3, 'DB88888888', 7.49268, 5.325986);
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (4, 'DC99999999', 3.32508, 12.26834);
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (5, 'DD00000000', -2.2398, 10.2956);
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (6, 'DA11111111', -968.9368, 13.2595);
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (7, 'DR22222222', 92.94634, -12.95435);
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (8, 'DD33333333', 26.0802, 19.0603);
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (9, 'DW44444444', -2.60802, -1.90603);
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (10, 'DL55555555', 3.74936, 11.24694);
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (11, 'DK00001111', 45.9365, -12.98425);
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (12, 'DF00002222', 94.4259, -249.4592);
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (13, 'DR00003333', -954.94643, 45.4926);
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (14, 'DE00004444', 56.9426, 76.4063);
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (15, 'DW00005555', -46.4692, 43.03643);
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (16, 'DQ00006666', 34.8936, 19.0603);
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (17, 'DI00007777', -43.72495, 4.6547);
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (18, 'DU00008888', 121.3477, -54.9976);
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (19, 'DR00009999', -9.865087, 343.8968);
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (20, 'DE01100110', 13.8574, 45.7987);
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (21, 'DK00001010', 132.99986, -56.99976);
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (22, 'DV00001212', 54.97597, 89.097);
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (23, 'DF00001313', -78.986, 67.537);
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (24, 'DG00001414', -9.03495, -12.95435);
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (25, 'DN00001515', 9.03495, -12.95435);
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (26, 'DT00001616', -9.03495, 12.95435);
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (27, 'DR00001717', 678.9869, 121.955);
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (28, 'DE00001818', 87.5478, 476.0795);
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (29, 'DC00001919', -34.087986, 54.964);
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (30, 'DX00002020', 24.968, 6.7479);
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (31, 'DA00002121', 29.6790, 34.358934);
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (32, 'DP00002323', 31.9434, 9.9456);
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (33, 'DS00002424', 23.04957, 120.435);
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (34, 'DW00002525',45.9245, -12.95435);
INSERT INTO lokasidriver (nomor, ID_Driver, latitude, longitude) values (35, 'DJ00002626', 59.3455, 26.0802);

/*INSERT DATA ORDER*/
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('AS87654321', 'CA11223344', 'DA66666666', 'PL87654321', 'Jl. Plemahan VI No. 23', 'Jl. Barakuda No. 19', 90000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('AD87654321', 'CA22334455', 'DA77777777', 'PB87654321', 'Perum. The Grandika Cibubur', 'Mal Ciputra Cibubur', 16000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('AY87654321', 'CA33445566', 'DB88888888', 'PC87654321', 'Kota Wisata cluster Amsterdam', 'Soekarno-Hatta International Airport', 111800);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('AO87654321', 'CA44556677', 'DC99999999', 'PD87654321', 'Pondok Indah Mall 3', 'Stasiun Gambir', 45000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('AL87654321', 'CA66778899', 'DD00000000', 'PE87654321', 'Pondok Kemangi Cibubur', 'Jl. Alternatif Cibubur No.26', 15000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('AP87654321', 'CA12345678', 'DA11111111', 'PF87654321', 'Mitra 10 Cibubur', 'Trans Studio Mal Cibubur', 36000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('AT87654321', 'CA23456789', 'DR22222222', 'PG87654321', 'Jakarta Eye Centre Cibubur', 'RS Meilia Cibubur', 23000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('AR87654321', 'CA34567890', 'DD33333333', 'PH87654321', 'MAN Insan Cendekia Serpong', 'Aeon Mal BSD', 28000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('AF87654321', 'CA45678910', 'DW44444444', 'PI87654321', 'Aeon Mal BSD', 'MAN Insan Cendekia Serpong', 30000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('AH87654321', 'CA56789101', 'DL55555555', 'PJ87654321', 'Villa Puri Cinere Depok', 'Raffless Hills Cibubur', 78000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('AA87654321', 'CA67891011', 'DK00001111', 'PK87654321', 'Jl Raya kita semua', 'Jl. API BARA No. 39', 22500);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OB87654321', 'CA78910111', 'DF00002222', 'PL87654321', 'Perum. Alzerta', 'Mal Ciputra Cibubur', 16000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OC87654321', 'CA89101112', 'DR00003333', 'PM87654321', 'Kota Wisata cluster Nederlen', 'Soekarno-Hatta Bandung', 111800);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OD87654321', 'CA91011121', 'DE00004444', 'PN87654321', 'Pondok Pesantren Al-Zara', 'Stasiun Gunung Batu', 45000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OE87654321', 'CA12121211', 'DW00005555', 'PO87654321', 'Pondok Cibubur Raya', 'Jl. Alternatif Cibubur No.26', 20000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OF87654321', 'CA21212121', 'DQ00006666', 'PP87654321', 'Mitra 10 Ciajag', 'Trans Studio Mal Cianjur', 25000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OG87654321', 'CA21321321', 'DI00007777', 'PQ87654321', 'Firda Cell Ciajag', 'RS Sayang Kamu', 19000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OH87654321', 'CA78787878', 'DU00008888', 'PR87654321', 'Al-Bayan Anyer', 'Al-Bayan Sukabumi', 111000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OI87654321', 'CA92305532', 'DR00009999', 'PS87654321', 'Panembong City', 'Kota Baru Cibeber', 25000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OJ87654321', 'CA12341234', 'DE01100110', 'PT87654321', 'Villa Pure Ciranjang', 'Green Hills Cianjur', 60000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('AK87654321', 'CA12332132', 'DK00001010', 'PU87654321', 'Jl. Polisi Tidur', 'Jl. Polisi Bangun 111', 45000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OL87654321', 'CA23154231', 'DV00001212', 'PV87654321', 'Perum. Pesona Indah Cianjur', 'Citimall Cianjur', 22000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OM87654321', 'CA17859124', 'DF00001313', 'PW87654321', 'Kota Bunga Hanjawar Cipanas', 'Taman Bunga Cibodas', 40000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('ON87654321', 'CA67821325', 'DG00001414', 'PX87654321', 'Perum. Pondok Indah', 'Kalimaya Cianjur', 9000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OO87654321', 'CA29093522', 'DN00001515', 'PY87654321', 'Ebood Stasiun Cianjur', 'Masjid Agung Cianjur', 15000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OP87654321', 'CA14679870', 'DT00001616', 'PZ87654321', 'Mitra Kukar', 'Mitra Asih', 25000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OQ87654321', 'CA29834651', 'DR00001717', 'PA17654321', 'Buah Hati Cirene', 'Batu Nunggal Ninggul', 23000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OR87654321', 'CA14286421', 'DE00001818', 'PB27654321', 'Warung Batu Cugenang', 'Indomaret Cangklek', 7000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OS87654321', 'CA29340658', 'DC00001919', 'PC37654321', 'Digicom Stasiun', 'Jalan Raya Cianjur', 30000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OT87654321', 'CA09237965', 'DX00002020', 'PD47654321', 'FSU Landan City', 'Jalan Rafflesia Arnoldi', 30500);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('AU87654321', 'CA09286235', 'DA00002121', 'PE17654321', 'Jl. Plemahan VII', 'Jl. Naik Kuda', 90000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OV87654321', 'CA90724635', 'DP00002323', 'PF17654321', 'Perum. Panti Kita', 'Tugu Bubur Tumpah', 16000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OW87654321', 'CA02938682', 'DS00002424', 'PG17654321', 'Kota Wisata Bermain Anak', 'Kota Baru Cijarah', 23500);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OX87654321', 'CA32073584', 'DW00002525', 'PH17654321', 'Jalan Raya Ciherang No. 111', 'Kota Bukit Kita 20', 45000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OY87654321', 'CA67821325', 'DJ00002626', 'PI17654321', 'Jalan Keyshia Cole', 'Jl.  Pontoku No.26', 19000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OZ87654321', 'CA78787878', 'DG00001414', 'PJ17654321', 'Cangklek Legok City', 'Griya Ciajag No.22', 20000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OT17654321', 'CA14286421', 'DE01100110', 'PW97654321', 'Brees Waset Cirata', 'RS Dr. Hafidz', 23000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OR17654321', 'CA21321321', 'DX00002020', 'PX97654321', 'MAN 1 Cianjur', 'SMAN 1 Cilaku', 21000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OF17654321', 'CA66778899', 'DA00002121', 'PY97654321', 'Jalan Bustomi No. 23', 'SMAN 1 Ciranjang', 30000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OH17654321', 'CA91011121', 'DU00008888', 'PZ97654321', 'Villa Puri Indah No. 231', 'Pondok Indah Cianjur No. 44', 35000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('AS17654321', 'CA66778899', 'DK00001111', 'PA97654321', 'Jalan Kaki Dua No. 99', 'Bojong Herang No. 23', 37000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OD17654321', 'CA66778899', 'DB88888888', 'PB97654321', 'Perum. BELKA Residence No. 33', 'Griya Maleber No. 99', 35000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OY17654321', 'CA12341234', 'DA77777777', 'PC97654321', 'Perum. Bukit Tinggi No. 45', 'Perum. Graha Pratama No.21', 22000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OO17654321', 'CA34567890', 'DD00000000', 'PD97654321', 'RSUD Sayang Cianjur', 'BELKA Residence No. 11', 20000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OL17654321', 'CA66778899', 'DG00001414', 'PE97654321', 'Villa Kota Bunga No. 999', 'Monalisa Shop Ciherang', 15000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OP17654321', 'CA67891011', 'DC00001919', 'PF97654321', 'Biiru Kuning Hijau No. 28', 'SMPI Al-Azhar 20 Cianjur', 36000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OT81654321', 'CA33445566', 'DB88888888', 'PG97654321', 'Jalan Oting Wawan No. 55', 'SMAN 2 Cianjur', 23000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OR81654321', 'CA29834651', 'DE01100110', 'PH97654321', 'Perum. Pondok Indah No. 34', 'Citimall Cianjur', 19000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OF81654321', 'CA23154231', 'DI00007777', 'PI97654321', 'Negara Api No. 33', 'Negara Air No. 44', 24000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OH81654321', 'CA91011121', 'DL55555555', 'PJ97654321', 'Rumah Onyo No. 44', 'Ja;an Raya Cianjur No.33', 35000);

/*INSERT DATA PAYMENT*/
INSERT INTO `payment` (ID_Pembayaran, MetodePembayaran) values ('PL87654321', 'gopay');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PB87654321', 'cash');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PC87654321', 'gopay');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PD87654321', 'gopay');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PE87654321', 'gopay');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PF87654321', 'gopay');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PG87654321', 'cash');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PH87654321', 'cash');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PI87654321', 'gopay');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PJ87654321', 'cash');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PK87654321', 'gopay');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PP87654321', 'cash');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PM87654321', 'gopay');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PN87654321', 'gopay');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PO87654321', 'gopay');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PQ87654321', 'gopay');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PR87654321', 'cash');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PS87654321', 'cash');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PT87654321', 'gopay');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PU87654321', 'cash');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PV87654321', 'gopay');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PW87654321', 'cash');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PX87654321', 'gopay');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PY87654321', 'gopay');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PZ87654321', 'gopay');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PA17654321', 'gopay');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PB27654321', 'cash');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PC37654321', 'cash');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PD47654321', 'gopay');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PE17654321', 'cash');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PF17654321', 'gopay');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PG17654321', 'cash');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PH17654321', 'cash');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PI17654321', 'gopay');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PJ17654321', 'cash');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PW97654321', 'cash');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PX97654321', 'gopay');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PY97654321', 'gopay');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PZ97654321', 'gopay');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PA97654321', 'gopay');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PB97654321', 'cash');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PC97654321', 'cash');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PD97654321', 'gopay');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PE97654321', 'cash');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PF97654321', 'gopay');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PG97654321', 'cash');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PH97654321', 'cash');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PI97654321', 'gopay');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PJ97654321', 'cash');
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PL97654321', 'cash');


CREATE TABLE trial_number (
	price numeric(4,2)
);
INSERT INTO trial_number VALUES (-99.99);






