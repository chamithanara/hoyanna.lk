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
CREATE TABLE IF NOT EXISTS `event` (
  `id` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `venue` varchar(50) DEFAULT NULL,
  `userid` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_event_user` (`userid`),
  CONSTRAINT `FK_event_user` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table hoyanna.permission
CREATE TABLE IF NOT EXISTS `permission` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table hoyanna.request
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

-- Data exporting was unselected.


-- Dumping structure for table hoyanna.role
CREATE TABLE IF NOT EXISTS `role` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table hoyanna.role_permission
CREATE TABLE IF NOT EXISTS `role_permission` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`),
  KEY `FK_role_permission_permission` (`permission_id`),
  CONSTRAINT `FK_role_permission_permission` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`),
  CONSTRAINT `FK_role_permission_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table hoyanna.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `sessionsid` varchar(100) NOT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `menu` varchar(50) DEFAULT NULL,
  `pg` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `others` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sessionsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Handle the sessions';

-- Data exporting was unselected.


-- Dumping structure for table hoyanna.user
CREATE TABLE IF NOT EXISTS `user` (
  `userid` int(10) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL DEFAULT '0',
  `lastname` varchar(100) NOT NULL DEFAULT '0',
  `emailaddress` varchar(100) NOT NULL DEFAULT '0',
  `nic` varchar(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table hoyanna.user_role
CREATE TABLE IF NOT EXISTS `user_role` (
  `role_id` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  PRIMARY KEY (`role_id`,`userid`),
  KEY `FK_user_role_user` (`userid`),
  CONSTRAINT `FK_user_role_user` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`),
  CONSTRAINT `FK__role` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table hoyanna.vacancy
CREATE TABLE IF NOT EXISTS `vacancy` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `userid` int(10) NOT NULL,
  `typeid` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_vacancy_vacancytype` (`typeid`),
  KEY `FK_vacancy_user` (`userid`),
  CONSTRAINT `FK_vacancy_user` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`),
  CONSTRAINT `FK_vacancy_vacancytype` FOREIGN KEY (`typeid`) REFERENCES `vacancytype` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table hoyanna.vacancytype
CREATE TABLE IF NOT EXISTS `vacancytype` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
