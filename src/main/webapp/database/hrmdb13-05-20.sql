-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.11 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for employee_management
DROP DATABASE IF EXISTS `employee_management`;
CREATE DATABASE IF NOT EXISTS `employee_management` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `employee_management`;

-- Dumping structure for table employee_management.attendance
DROP TABLE IF EXISTS `attendance`;
CREATE TABLE IF NOT EXISTS `attendance` (
  `fileId` bigint(20) NOT NULL AUTO_INCREMENT,
  `filePath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`fileId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table employee_management.attendance: 0 rows
DELETE FROM `attendance`;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;

-- Dumping structure for table employee_management.departments
DROP TABLE IF EXISTS `departments`;
CREATE TABLE IF NOT EXISTS `departments` (
  `departmentId` int(11) NOT NULL AUTO_INCREMENT,
  `departmentCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departmentName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departmentStatus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`departmentId`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table employee_management.departments: 3 rows
DELETE FROM `departments`;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` (`departmentId`, `departmentCode`, `departmentName`, `departmentStatus`) VALUES
	(1, 'DEPT - 1', 'A Department', 'Active'),
	(2, 'DEPT - 2', 'B Department', 'Active'),
	(3, 'DEPT - 3', 'C Department', 'Inactive');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;

-- Dumping structure for table employee_management.designations
DROP TABLE IF EXISTS `designations`;
CREATE TABLE IF NOT EXISTS `designations` (
  `designationId` int(11) NOT NULL AUTO_INCREMENT,
  `departmentId` int(11) DEFAULT NULL,
  `designationCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designationName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designationStatus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`designationId`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table employee_management.designations: 5 rows
DELETE FROM `designations`;
/*!40000 ALTER TABLE `designations` DISABLE KEYS */;
INSERT INTO `designations` (`designationId`, `departmentId`, `designationCode`, `designationName`, `designationStatus`) VALUES
	(1, 1, 'DESG - 1', 'A1 Designation', 'Active'),
	(2, 1, 'DESG - 2', 'A2 Designation', 'Active'),
	(3, 1, 'DESG - 3', 'A3 Designation', 'Active'),
	(4, 2, 'DESG - 4', 'B1 Designation', 'Active'),
	(5, 2, 'DESG - 5', 'B2 Designation', 'Active');
/*!40000 ALTER TABLE `designations` ENABLE KEYS */;

-- Dumping structure for table employee_management.employeeprofile
DROP TABLE IF EXISTS `employeeprofile`;
CREATE TABLE IF NOT EXISTS `employeeprofile` (
  `empId` bigint(20) NOT NULL AUTO_INCREMENT,
  `aboutYourself` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateOfBirth` datetime DEFAULT NULL,
  `dateOfJoining` datetime DEFAULT NULL,
  `departmentId` int(11) DEFAULT NULL,
  `designationId` int(11) DEFAULT NULL,
  `emailId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `empUserName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employeeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fatherName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hobbies` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoeNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profilePicPath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qualification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skills` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skypeId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`empId`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table employee_management.employeeprofile: 3 rows
DELETE FROM `employeeprofile`;
/*!40000 ALTER TABLE `employeeprofile` DISABLE KEYS */;
INSERT INTO `employeeprofile` (`empId`, `aboutYourself`, `address`, `dateOfBirth`, `dateOfJoining`, `departmentId`, `designationId`, `emailId`, `empUserName`, `employCode`, `employeeName`, `fatherName`, `hobbies`, `phoeNumber`, `profilePicPath`, `qualification`, `skills`, `skypeId`) VALUES
	(1, NULL, '', NULL, NULL, 2, 4, '', 'FDDDDDDDD', 'NAV - 1', 'FDDDDDDDD', NULL, NULL, '', ',', NULL, NULL, ''),
	(2, NULL, 'asdfasfasdf', '2318-05-31 00:00:00', NULL, 2, 5, 'chintu.just@gmail.com', 'aaaa', 'NAV - 2', 'aaaa', NULL, NULL, '9999999999', ',,,,,,,', NULL, NULL, 'fsdafsadf'),
	(3, NULL, 'asfasfasdf', NULL, NULL, 1, 5, 'aajust@gmail.com', 'bbbb', 'NAV - 3', 'bbbb', NULL, NULL, '44444444', ',,,,,,,', NULL, NULL, 'fsdafsadf');
/*!40000 ALTER TABLE `employeeprofile` ENABLE KEYS */;

-- Dumping structure for table employee_management.employees
DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `age` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table employee_management.employees: 0 rows
DELETE FROM `employees`;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;

-- Dumping structure for table employee_management.holidayslist
DROP TABLE IF EXISTS `holidayslist`;
CREATE TABLE IF NOT EXISTS `holidayslist` (
  `holidaysId` int(11) NOT NULL AUTO_INCREMENT,
  `holidayDate` datetime DEFAULT NULL,
  `holidayName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `holidayStatus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`holidaysId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table employee_management.holidayslist: 0 rows
DELETE FROM `holidayslist`;
/*!40000 ALTER TABLE `holidayslist` DISABLE KEYS */;
INSERT INTO `holidayslist` (`holidaysId`, `holidayDate`, `holidayName`, `holidayStatus`) VALUES
	(1, '1212-01-12 00:12:00', 'A Holiday', 'Optional Holiday'),
	(2, '1212-01-23 00:11:00', 'B Holiday', 'Holiday');
/*!40000 ALTER TABLE `holidayslist` ENABLE KEYS */;

-- Dumping structure for table employee_management.leavecount
DROP TABLE IF EXISTS `leavecount`;
CREATE TABLE IF NOT EXISTS `leavecount` (
  `leaveId` bigint(20) NOT NULL AUTO_INCREMENT,
  `departmentId` bigint(20) DEFAULT NULL,
  `leaveCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`leaveId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table employee_management.leavecount: 0 rows
DELETE FROM `leavecount`;
/*!40000 ALTER TABLE `leavecount` DISABLE KEYS */;
INSERT INTO `leavecount` (`leaveId`, `departmentId`, `leaveCount`) VALUES
	(1, 1, 6),
	(2, 2, 7);
/*!40000 ALTER TABLE `leavecount` ENABLE KEYS */;

-- Dumping structure for table employee_management.leaverequest
DROP TABLE IF EXISTS `leaverequest`;
CREATE TABLE IF NOT EXISTS `leaverequest` (
  `leaveRequestId` bigint(20) NOT NULL AUTO_INCREMENT,
  `departmentId` int(11) DEFAULT NULL,
  `designationId` int(11) DEFAULT NULL,
  `employId` bigint(20) DEFAULT NULL,
  `leaveFromDate` datetime DEFAULT NULL,
  `leaveRequestDate` datetime DEFAULT NULL,
  `leaveStatus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leaveToDate` datetime DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`leaveRequestId`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table employee_management.leaverequest: 7 rows
DELETE FROM `leaverequest`;
/*!40000 ALTER TABLE `leaverequest` DISABLE KEYS */;
INSERT INTO `leaverequest` (`leaveRequestId`, `departmentId`, `designationId`, `employId`, `leaveFromDate`, `leaveRequestDate`, `leaveStatus`, `leaveToDate`, `reason`) VALUES
	(1, 2, 4, 1, '3354-01-23 00:42:00', '1212-01-12 00:12:00', 'Pending', '3354-01-23 00:42:00', 'aafasfasfasfasdfsadf'),
	(2, 2, 4, 1, '2222-01-22 00:22:00', '1111-01-11 00:11:00', 'Pending', '3354-01-23 00:42:00', 'vzvzxcvxzcvzxcvxzv'),
	(3, 2, 4, 1, '3354-01-23 00:42:00', '2222-01-21 00:21:00', 'Pending', '2345-01-23 00:45:00', 'dfgsdfgsdg'),
	(4, 2, 4, 1, '1122-01-12 00:12:00', '2222-01-21 00:21:00', 'Pending', '3333-01-12 00:12:00', 'SFSDFSFSFSDF'),
	(5, 2, 4, 1, '2222-01-12 00:11:00', '2020-01-25 00:12:00', 'Pending', '2020-01-12 00:12:00', 'SSFSFSDF'),
	(6, 2, 4, 1, '3354-01-23 00:42:00', '3354-01-23 00:42:00', 'Pending', '3354-01-23 00:42:00', 'FSDGSDGSDG'),
	(7, 2, 4, 1, '2222-01-21 00:21:00', '2222-01-12 00:12:00', 'Pending', '6366-01-22 00:22:00', 'KLKKLJKLJLKJL');
/*!40000 ALTER TABLE `leaverequest` ENABLE KEYS */;

-- Dumping structure for table employee_management.rolesdata
DROP TABLE IF EXISTS `rolesdata`;
CREATE TABLE IF NOT EXISTS `rolesdata` (
  `roleId` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table employee_management.rolesdata: 2 rows
DELETE FROM `rolesdata`;
/*!40000 ALTER TABLE `rolesdata` DISABLE KEYS */;
INSERT INTO `rolesdata` (`roleId`, `roleName`) VALUES
	(1, 'ROLE_ADMIN'),
	(2, 'ROLE_USER');
/*!40000 ALTER TABLE `rolesdata` ENABLE KEYS */;

-- Dumping structure for table employee_management.salarydetails
DROP TABLE IF EXISTS `salarydetails`;
CREATE TABLE IF NOT EXISTS `salarydetails` (
  `salaryId` bigint(20) NOT NULL AUTO_INCREMENT,
  `departmentId` bigint(20) DEFAULT NULL,
  `designationId` bigint(20) DEFAULT NULL,
  `empId` bigint(20) DEFAULT NULL,
  `salaryPerAnum` double DEFAULT NULL,
  PRIMARY KEY (`salaryId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table employee_management.salarydetails: 0 rows
DELETE FROM `salarydetails`;
/*!40000 ALTER TABLE `salarydetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `salarydetails` ENABLE KEYS */;

-- Dumping structure for table employee_management.teamstructure
DROP TABLE IF EXISTS `teamstructure`;
CREATE TABLE IF NOT EXISTS `teamstructure` (
  `teamId` bigint(20) NOT NULL AUTO_INCREMENT,
  `departmentId` int(11) DEFAULT NULL,
  `designationId` int(11) DEFAULT NULL,
  `empId` bigint(20) DEFAULT NULL,
  `teamRoleName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`teamId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table employee_management.teamstructure: 0 rows
DELETE FROM `teamstructure`;
/*!40000 ALTER TABLE `teamstructure` DISABLE KEYS */;
/*!40000 ALTER TABLE `teamstructure` ENABLE KEYS */;

-- Dumping structure for table employee_management.userregistration
DROP TABLE IF EXISTS `userregistration`;
CREATE TABLE IF NOT EXISTS `userregistration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `empPassword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employeeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table employee_management.userregistration: 3 rows
DELETE FROM `userregistration`;
/*!40000 ALTER TABLE `userregistration` DISABLE KEYS */;
INSERT INTO `userregistration` (`id`, `empEmail`, `empPassword`, `employeeName`) VALUES
	(1, 'FDDDDDDDD', 'FDDDDDDDD', 'FDDDDDDDD'),
	(2, 'aaaa', 'aaaa', 'aaaa'),
	(3, 'bbbb', 'bbbb', 'bbbb');
/*!40000 ALTER TABLE `userregistration` ENABLE KEYS */;

-- Dumping structure for table employee_management.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `enabled` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table employee_management.users: 3 rows
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`userId`, `enabled`, `password`, `username`) VALUES
	(1, NULL, 'FDDDDDDDD', 'FDDDDDDDD'),
	(2, NULL, 'aaaa', 'aaaa'),
	(3, NULL, 'bbbb', 'bbbb');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table employee_management.user_roles
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE IF NOT EXISTS `user_roles` (
  `roleId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `user_role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table employee_management.user_roles: 3 rows
DELETE FROM `user_roles`;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` (`roleId`, `userId`, `user_role_id`) VALUES
	(1, 1, 1),
	(2, 2, 2),
	(3, 3, 2);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
