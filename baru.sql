-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.1.49-community - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for baru
CREATE DATABASE IF NOT EXISTS `baru` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `baru`;


-- Dumping structure for table baru.buku
CREATE TABLE IF NOT EXISTS `buku` (
  `no_isbn` int(11) NOT NULL,
  `judul` int(11) DEFAULT NULL,
  `pengarang` int(11) DEFAULT NULL,
  `penerbit` int(11) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  PRIMARY KEY (`no_isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table baru.buku: ~0 rows (approximately)
DELETE FROM `buku`;
/*!40000 ALTER TABLE `buku` DISABLE KEYS */;
/*!40000 ALTER TABLE `buku` ENABLE KEYS */;


-- Dumping structure for table baru.login
CREATE TABLE IF NOT EXISTS `login` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table baru.login: ~1 rows (approximately)
DELETE FROM `login`;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`id`, `name`, `email`, `username`, `password`) VALUES
	(1, 'putri', 'putri@gmail.com', 'uun', 'd10906c3dac1172d4f60bd41f224ae75');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


-- Dumping structure for table baru.pelanggan
CREATE TABLE IF NOT EXISTS `pelanggan` (
  `id_anggota` int(11) NOT NULL,
  `nama` int(11) DEFAULT NULL,
  `alamat` int(11) DEFAULT NULL,
  `no_telpon` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_anggota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table baru.pelanggan: ~0 rows (approximately)
DELETE FROM `pelanggan`;
/*!40000 ALTER TABLE `pelanggan` DISABLE KEYS */;
/*!40000 ALTER TABLE `pelanggan` ENABLE KEYS */;


-- Dumping structure for table baru.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `login_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_products_1` (`login_id`),
  CONSTRAINT `FK_products_1` FOREIGN KEY (`login_id`) REFERENCES `login` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table baru.products: ~0 rows (approximately)
DELETE FROM `products`;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
