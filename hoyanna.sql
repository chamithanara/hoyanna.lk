-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.12-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for hoyanna
DROP DATABASE IF EXISTS `hoyanna`;
CREATE DATABASE IF NOT EXISTS `hoyanna` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `hoyanna`;


-- Dumping structure for table hoyanna.event
DROP TABLE IF EXISTS `event`;
CREATE TABLE IF NOT EXISTS `event` (
  `id` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `starttime` int(5) DEFAULT NULL,
  `endtime` int(5) DEFAULT NULL,
  `userid` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_event_user` (`userid`),
  CONSTRAINT `FK_event_user` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table hoyanna.event: ~0 rows (approximately)
DELETE FROM `event`;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
/*!40000 ALTER TABLE `event` ENABLE KEYS */;


-- Dumping structure for table hoyanna.industry
DROP TABLE IF EXISTS `industry`;
CREATE TABLE IF NOT EXISTS `industry` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table hoyanna.industry: ~5 rows (approximately)
DELETE FROM `industry`;
/*!40000 ALTER TABLE `industry` DISABLE KEYS */;
INSERT INTO `industry` (`id`, `name`) VALUES
	(1, 'Travel & Tourism'),
	(2, 'Hospitality, Catering'),
	(3, 'Idustrial, Manufacturing & Production'),
	(4, ' Agriculture, Forestry & Outdoor'),
	(5, 'Transport, Logistics & Distribution');
/*!40000 ALTER TABLE `industry` ENABLE KEYS */;


-- Dumping structure for table hoyanna.permission
DROP TABLE IF EXISTS `permission`;
CREATE TABLE IF NOT EXISTS `permission` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table hoyanna.permission: ~0 rows (approximately)
DELETE FROM `permission`;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;


-- Dumping structure for table hoyanna.request
DROP TABLE IF EXISTS `request`;
CREATE TABLE IF NOT EXISTS `request` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) DEFAULT NULL,
  `userid` int(10) NOT NULL,
  `vacancyid` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK__user` (`userid`),
  KEY `FK__vacancy` (`vacancyid`),
  CONSTRAINT `FK__user` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`),
  CONSTRAINT `FK__vacancy` FOREIGN KEY (`vacancyid`) REFERENCES `vacancy` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table hoyanna.request: ~0 rows (approximately)
DELETE FROM `request`;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
/*!40000 ALTER TABLE `request` ENABLE KEYS */;


-- Dumping structure for table hoyanna.role
DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table hoyanna.role: ~0 rows (approximately)
DELETE FROM `role`;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;


-- Dumping structure for table hoyanna.role_permission
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE IF NOT EXISTS `role_permission` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`),
  KEY `FK_role_permission_permission` (`permission_id`),
  CONSTRAINT `FK_role_permission_permission` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`),
  CONSTRAINT `FK_role_permission_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table hoyanna.role_permission: ~0 rows (approximately)
DELETE FROM `role_permission`;
/*!40000 ALTER TABLE `role_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_permission` ENABLE KEYS */;


-- Dumping structure for table hoyanna.sessions
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `sessionsid` varchar(100) NOT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `menu` varchar(50) DEFAULT NULL,
  `pg` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `others` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sessionsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Handle the sessions';

-- Dumping data for table hoyanna.sessions: ~0 rows (approximately)
DELETE FROM `sessions`;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;


-- Dumping structure for table hoyanna.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `userid` int(10) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) DEFAULT '0',
  `lastname` varchar(100) DEFAULT '0',
  `emailaddress` varchar(100) DEFAULT '0',
  `nic` varchar(10) NOT NULL DEFAULT '0',
  `mobilenumber` varchar(12) NOT NULL DEFAULT '0',
  `password` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table hoyanna.user: ~0 rows (approximately)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`userid`, `firstname`, `lastname`, `emailaddress`, `nic`, `mobilenumber`, `password`, `username`) VALUES
	(1, 'sachith', 'ushan', 'khsushan@gmail.com', '920290167V', '+94718853336', 'test', 'khsushan');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


-- Dumping structure for table hoyanna.user_role
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE IF NOT EXISTS `user_role` (
  `role_id` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  PRIMARY KEY (`role_id`,`userid`),
  KEY `FK_user_role_user` (`userid`),
  CONSTRAINT `FK_user_role_user` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`),
  CONSTRAINT `FK__role` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table hoyanna.user_role: ~0 rows (approximately)
DELETE FROM `user_role`;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;


-- Dumping structure for table hoyanna.vacancy
DROP TABLE IF EXISTS `vacancy`;
CREATE TABLE IF NOT EXISTS `vacancy` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int(10) NOT NULL,
  `typeid` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_vacancy_vacancytype` (`typeid`),
  KEY `FK_vacancy_user` (`userid`),
  CONSTRAINT `FK_vacancy_user` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`),
  CONSTRAINT `FK_vacancy_vacancytype` FOREIGN KEY (`typeid`) REFERENCES `vacancytype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table hoyanna.vacancy: ~0 rows (approximately)
DELETE FROM `vacancy`;
/*!40000 ALTER TABLE `vacancy` DISABLE KEYS */;
INSERT INTO `vacancy` (`id`, `name`, `description`, `date`, `userid`, `typeid`) VALUES
	(1, 'testing', 'test desc', '2015-12-11 18:32:46', 1, 1);
/*!40000 ALTER TABLE `vacancy` ENABLE KEYS */;


-- Dumping structure for table hoyanna.vacancytype
DROP TABLE IF EXISTS `vacancytype`;
CREATE TABLE IF NOT EXISTS `vacancytype` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(200) DEFAULT '0',
  `industry_id` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_vacancytype_industry` (`industry_id`),
  CONSTRAINT `FK_vacancytype_industry` FOREIGN KEY (`industry_id`) REFERENCES `industry` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table hoyanna.vacancytype: ~3 rows (approximately)
DELETE FROM `vacancytype`;
/*!40000 ALTER TABLE `vacancytype` DISABLE KEYS */;
INSERT INTO `vacancytype` (`id`, `type`, `industry_id`) VALUES
	(1, 'Trainee Travel Executive', 1),
	(2, 'Travel Executive', 1),
	(3, 'Senior Travel Executive', 1),
	(4, 'Tour Executive', 1),
	(5, 'Service Crew', 1);
/*!40000 ALTER TABLE `vacancytype` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
