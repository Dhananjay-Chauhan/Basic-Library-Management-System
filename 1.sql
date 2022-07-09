-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.51-log - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for dj1
CREATE DATABASE IF NOT EXISTS `dj1` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dj1`;

-- Dumping structure for table dj1.book
CREATE TABLE IF NOT EXISTS `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(60) DEFAULT NULL,
  `author` char(50) DEFAULT NULL,
  `pages` int(11) DEFAULT NULL,
  `price` float(6,2) DEFAULT NULL,
  `status` char(10) DEFAULT NULL,
  `publisher` char(60) DEFAULT NULL,
  `edition` char(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table dj1.book: ~7 rows (approximately)
DELETE FROM `book`;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` (`id`, `title`, `author`, `pages`, `price`, `status`, `publisher`, `edition`) VALUES
	(6, 'physics2', 'dhananjay', 200, 2000.00, 'available', 'bhatart', '1'),
	(7, 'physics', 'dhananjay', 200, 2000.00, 'available', 'bhatart', '1'),
	(8, 'computer', 'dhananjay', 1350, 2000.00, 'available', 'bhatart', '1'),
	(9, 'python', 'sumita arora', 700, 5000.00, 'available', 'dhanpat rai', '1'),
	(10, 'maths', 'rd sharma', 2000, 9999.00, 'available', 'bharat', '1'),
	(15, 'biology', 'mr. reddy', 1500, 2000.00, 'available', 'bharat', '2'),
	(16, 'biology', 'mr. reddy', 1500, 2000.00, 'available', 'bharat', '2');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;

-- Dumping structure for table dj1.member
CREATE TABLE IF NOT EXISTS `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(30) DEFAULT NULL,
  `class` char(15) DEFAULT NULL,
  `address` char(100) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `email` char(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table dj1.member: ~4 rows (approximately)
DELETE FROM `member`;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` (`id`, `name`, `class`, `address`, `phone`, `email`) VALUES
	(2, 'dhananjay', 'XIIB', 'house no.12', '7018332852', 'dj@gmail.com'),
	(3, 'himanshu', 'XIIC', 'house no. 11', '8019563832', 'him@gmail.com'),
	(4, 'sagar', 'XIIA', 'house no. 18', '9845264838', 'sagar@gmail.com'),
	(6, 'soyal', 'XIIE', 'house no. 20', '7652396385', 'soyal@gmail.com');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;

-- Dumping structure for table dj1.transaction
CREATE TABLE IF NOT EXISTS `transaction` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `b_id` int(11) DEFAULT NULL,
  `m_id` int(11) DEFAULT NULL,
  `doi` date DEFAULT NULL,
  `dor` date DEFAULT NULL,
  `fine` float(5,2) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table dj1.transaction: ~2 rows (approximately)
DELETE FROM `transaction`;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` (`tid`, `b_id`, `m_id`, `doi`, `dor`, `fine`) VALUES
	(1, 6, 2, '2021-03-24', '2021-03-25', 1.00),
	(3, 8, 4, '2021-03-25', '2021-03-25', 0.00);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
book