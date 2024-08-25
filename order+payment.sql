CREATE DATABASE IF NOT exists Gojek;
USE Gojek;

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

CREATE TABLE IF NOT exists `Payment` (
	ID_Pembayaran varchar(10),
    MetodePembayaran varchar(5),
    PRIMARY KEY (ID_Pembayaran)
);


INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('AS87654321', '1', '6666', 'PA87654321', 'Jl. Plemahan VI No. 23', 'Jl. Barakuda No. 19', 90000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('AD87654321', '2', '7777', 'PB87654321', 'Perum. The Grandika Cibubur', 'Mal Ciputra Cibubur', 16000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('AY87654321', '3', '8888', 'PC87654321', 'Kota Wisata cluster Amsterdam', 'Soekarno-Hatta International Airport', 111800);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('AO87654321', '4', '9999', 'PD87654321', 'Pondok Indah Mall 3', 'Stasiun Gambir', 45000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('AL87654321', '5', '0000', 'PE87654321', 'Pondok Kemangi Cibubur', 'Jl. Alternatif Cibubur No.26', 15000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('AP87654321', '6', '1111', 'PF87654321', 'Mitra 10 Cibubur', 'Trans Studio Mal Cibubur', 36000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('AT87654321', '7', '2222', 'PG87654321', 'Jakarta Eye Centre Cibubur', 'RS Meilia Cibubur', 23000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('AR87654321', '8', '3333', 'PH87654321', 'MAN Insan Cendekia Serpong', 'Aeon Mal BSD', 28000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('AF87654321', '9', '4444', 'PI87654321', 'Aeon Mal BSD', 'MAN Insan Cendekia Serpong', 30000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('AH87654321', '10', '5555', 'PJ87654321', 'Villa Puri Cinere Depok', 'Raffless Hills Cibubur', 78000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('AA87654321', '11', '0011', 'PK87654321', 'Jl Raya kita semua', 'Jl. API BARA No. 39', 22500);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OB87654321', '12', '0022', 'PL87654321', 'Perum. Alzerta', 'Mal Ciputra Cibubur', 16000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OC87654321', '13', '0033', 'PM87654321', 'Kota Wisata cluster Nederlen', 'Soekarno-Hatta Bandung', 111800);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OD87654321', '14', '0044', 'PN87654321', 'Pondok Pesantren Al-Zara', 'Stasiun Gunung Batu', 45000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OE87654321', '15', '0055', 'PO87654321', 'Pondok Cibubur Raya', 'Jl. Alternatif Cibubur No.26', 20000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OF87654321', '16', '0066', 'PP87654321', 'Mitra 10 Ciajag', 'Trans Studio Mal Cianjur', 25000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OG87654321', '17', '0077', 'PQ87654321', 'Firda Cell Ciajag', 'RS Sayang Kamu', 19000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OH87654321', '18', '0088', 'PR87654321', 'Al-Bayan Anyer', 'Al-Bayan Sukabumi', 111000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OI87654321', '19', '0099', 'PS87654321', 'Panembong City', 'Kota Baru Cibeber', 25000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OJ87654321', '20', '0110', 'PT87654321', 'Villa Pure Ciranjang', 'Green Hills Cianjur', 60000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('AK87654321', '21', '0010', 'PU87654321', 'Jl. Polisi Tidur', 'Jl. Polisi Bangun 111', 45000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OL87654321', '22', '0011', 'PV87654321', 'Perum. Pesona Indah Cianjur', 'Citimall Cianjur', 22000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OM87654321', '23', '0012', 'PW87654321', 'Kota Bunga Hanjawar Cipanas', 'Taman Bunga Cibodas', 40000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('ON87654321', '24', '0013', 'PX87654321', 'Perum. Pondok Indah', 'Kalimaya Cianjur', 9000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OO87654321', '25', '0014', 'PY87654321', 'Ebood Stasiun Cianjur', 'Masjid Agung Cianjur', 15000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OP87654321', '26', '0015', 'PZ87654321', 'Mitra Kukar', 'Mitra Asih', 25000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OQ87654321', '27', '0016', 'PA17654321', 'Buah Hati Cirene', 'Batu Nunggal Ninggul', 23000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OR87654321', '28', '0017', 'PB27654321', 'Warung Batu Cugenang', 'Indomaret Cangklek', 7000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OS87654321', '29', '0018', 'PC37654321', 'Digicom Stasiun', 'Jalan Raya Cianjur', 30000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OT87654321', '30', '0019', 'PD47654321', 'FSU Landan City', 'Jalan Rafflesia Arnoldi', 30500);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('AU87654321', '31', '0020', 'PE17654321', 'Jl. Plemahan VII', 'Jl. Naik Kuda', 90000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OV87654321', '32', '0021', 'PF17654321', 'Perum. Panti Kita', 'Tugu Bubur Tumpah', 16000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OW87654321', '33', '0022', 'PG17654321', 'Kota Wisata Bermain Anak', 'Kota Baru Cijarah', 23500);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OX87654321', '34', '0023', 'PH17654321', 'Jalan Raya Ciherang No. 111', 'Kota Bukit Kita 20', 45000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OY87654321', '35', '0024', 'PI17654321', 'Jalan Keyshia Cole', 'Jl.  Pontoku No.26', 19000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OZ87654321', '36', '0025', 'PJ17654321', 'Cangklek Legok City', 'Griya Ciajag No.22', 20000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OT17654321', '37', '0026', 'PR17654321', 'Brees Waset Cirata', 'RS Dr. Hafidz', 23000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OR17654321', '38', '0027', 'PT17654321', 'MAN 1 Cianjur', 'SMAN 1 Cilaku', 21000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OF17654321', '39', '0028', 'PP17654321', 'Jalan Bustomi No. 23', 'SMAN 1 Ciranjang', 30000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OH17654321', '40', '0029', 'PM17654321', 'Villa Puri Indah No. 231', 'Pondok Indah Cianjur No. 44', 35000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('AS17654321', '41', '0030', 'PL17654321', 'Jalan Kaki Dua No. 99', 'Bojong Herang No. 23', 37000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OD17654321', '42', '0031', 'PK17654321', 'Perum. BELKA Residence No. 33', 'Griya Maleber No. 99', 35000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OY17654321', '43', '0032', 'PO17654321', 'Perum. Bukit Tinggi No. 45', 'Perum. Graha Pratama No.21', 22000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OO17654321', '44', '0033', 'PZ17654321', 'RSUD Sayang Cianjur', 'BELKA Residence No. 11', 20000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OL17654321', '45', '0034', 'PD57654321', 'Villa Kota Bunga No. 999', 'Monalisa Shop Ciherang', 15000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OP17654321', '46', '0035', 'PU57654321', 'Biiru Kuning Hijau No. 28', 'SMPI Al-Azhar 20 Cianjur', 36000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OT81654321', '47', '0036', 'PR57654321', 'Jalan Oting Wawan No. 55', 'SMAN 2 Cianjur', 23000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OR81654321', '48', '0037', 'PT57654321', 'Perum. Pondok Indah No. 34', 'Citimall Cianjur', 19000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OF81654321', '49', '0038', 'PP57654321', 'Negara Api No. 33', 'Negara Air No. 44', 24000);
INSERT INTO `order` (ID_Order, ID_Customer, ID_Driver, ID_Pembayaran, LokasiTujuan, LokasiAsal, Harga ) values ('OH81654321', '50', '0039', 'PE57654321', 'Rumah Onyo No. 44', 'Ja;an Raya Cianjur No.33', 35000);

INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PA87654321', 'gopay');
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
INSERT INTO `Payment` (ID_Pembayaran, MetodePembayaran) values ('PL87654321', 'cash');
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














