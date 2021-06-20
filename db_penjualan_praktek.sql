-- --------------------------------------------------------
-- Host:                         localhost
-- Versi server:                 5.7.24 - MySQL Community Server (GPL)
-- OS Server:                    Win64
-- HeidiSQL Versi:               10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Membuang struktur basisdata untuk db_penjualan_praktek
CREATE DATABASE IF NOT EXISTS `db_penjualan_praktek` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_penjualan_praktek`;

-- membuang struktur untuk table db_penjualan_praktek.karyawan
CREATE TABLE IF NOT EXISTS `karyawan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','kasir','pemilik') DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_penjualan_praktek.karyawan: ~5 rows (lebih kurang)
/*!40000 ALTER TABLE `karyawan` DISABLE KEYS */;
INSERT INTO `karyawan` (`id`, `nama`, `username`, `password`, `role`, `email`) VALUES
	(1, 'Administrator', 'admin', '12345', 'admin', 'admin@mail.com'),
	(2, 'Kasir 1', 'kasir1', '12345', 'kasir', 'kasir1@mail.com'),
	(3, 'Kasir 2', 'kasir2', '12345', 'kasir', 'kasir2@mail.com'),
	(4, 'Si Boss', 'bossq', '12345', 'pemilik', 'bossq@mail.com');
/*!40000 ALTER TABLE `karyawan` ENABLE KEYS */;

-- membuang struktur untuk table db_penjualan_praktek.penjualan
CREATE TABLE IF NOT EXISTS `penjualan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_faktor` int(11) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `karyawan_id` int(11) DEFAULT NULL,
  `total` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_penjualan_praktek.penjualan: ~6 rows (lebih kurang)
/*!40000 ALTER TABLE `penjualan` DISABLE KEYS */;
INSERT INTO `penjualan` (`id`, `no_faktor`, `tgl`, `karyawan_id`, `total`) VALUES
	(1, 1, '2021-06-15', 3, '27000'),
	(2, 2, '2021-06-15', 3, '37000'),
	(3, 3, '2021-06-15', 3, '7000'),
	(4, 4, '2021-06-15', 3, '35000'),
	(5, 5, '2021-06-15', 3, '12000'),
	(6, 6, '2021-06-15', 2, '10500'),
	(7, 7, '2021-06-15', 2, '14500'),
	(8, 8, '2021-06-15', 2, '27000');
/*!40000 ALTER TABLE `penjualan` ENABLE KEYS */;

-- membuang struktur untuk table db_penjualan_praktek.penjualan_detil
CREATE TABLE IF NOT EXISTS `penjualan_detil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produk_id` int(11) DEFAULT NULL,
  `penjualan_id` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_penjualan_praktek.penjualan_detil: ~11 rows (lebih kurang)
/*!40000 ALTER TABLE `penjualan_detil` DISABLE KEYS */;
INSERT INTO `penjualan_detil` (`id`, `produk_id`, `penjualan_id`, `jumlah`, `harga`) VALUES
	(1, 2, 1, 1, 12000),
	(2, 3, 1, 2, 15000),
	(3, 5, 2, 1, 17500),
	(4, 3, 2, 1, 7500),
	(5, 2, 2, 1, 12000),
	(6, 4, 3, 2, 7000),
	(7, 5, 4, 2, 35000),
	(8, 2, 5, 1, 12000),
	(9, 4, 6, 3, 10500),
	(10, 3, 7, 1, 7500),
	(11, 4, 7, 2, 7000),
	(12, 2, 8, 1, 12000),
	(13, 3, 8, 2, 15000);
/*!40000 ALTER TABLE `penjualan_detil` ENABLE KEYS */;

-- membuang struktur untuk table db_penjualan_praktek.produk
CREATE TABLE IF NOT EXISTS `produk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) DEFAULT NULL,
  `barcode` char(150) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `harga_beli` int(11) DEFAULT NULL,
  `harga_jual` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel db_penjualan_praktek.produk: ~3 rows (lebih kurang)
/*!40000 ALTER TABLE `produk` DISABLE KEYS */;
INSERT INTO `produk` (`id`, `nama`, `barcode`, `stok`, `harga_beli`, `harga_jual`) VALUES
	(2, 'SAMPO', '145234', 20, 10000, 12000),
	(3, 'SIKAT GIGI', '123456', 12, 5000, 7500),
	(4, 'TEH', '458080', 100, 2000, 3500),
	(5, 'SABUN', '145235', 30, 15000, 17500);
/*!40000 ALTER TABLE `produk` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
