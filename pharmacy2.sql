-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 15, 2021 at 04:06 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
CREATE TABLE IF NOT EXISTS `attendance` (
  `EmpID` varchar(9) NOT NULL,
  `date` date NOT NULL,
  `Status` enum('P','A') NOT NULL,
  PRIMARY KEY (`EmpID`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `EmpID` varchar(9) NOT NULL,
  `EmpPin` int UNSIGNED NOT NULL,
  `EmpName` varchar(28) NOT NULL,
  `EmpGender` enum('Male','Female','Others') NOT NULL,
  `EmpPhone` varchar(13) NOT NULL,
  `EmpAddress` varchar(50) NOT NULL,
  `EmpEmail` varchar(25) NOT NULL,
  `EmpRole` varchar(20) NOT NULL,
  `EmpWrkHrs` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`EmpID`),
  UNIQUE KEY `EmpPin` (`EmpPin`),
  UNIQUE KEY `EmpPhone` (`EmpPhone`),
  UNIQUE KEY `EmpEmail` (`EmpEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_accounts`
--

DROP TABLE IF EXISTS `employee_accounts`;
CREATE TABLE IF NOT EXISTS `employee_accounts` (
  `EmpID` varchar(9) NOT NULL,
  `BankName` varchar(30) NOT NULL,
  `AccountNo` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`EmpID`,`AccountNo`),
  UNIQUE KEY `AccountNo` (`AccountNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mainaccounts`
--

DROP TABLE IF EXISTS `mainaccounts`;
CREATE TABLE IF NOT EXISTS `mainaccounts` (
  `AcName` varchar(12) NOT NULL,
  `AcPin` int UNSIGNED NOT NULL,
  PRIMARY KEY (`AcName`),
  UNIQUE KEY `AcPin` (`AcPin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
CREATE TABLE IF NOT EXISTS `modules` (
  `ModID` varchar(6) NOT NULL,
  `ModName` varchar(20) NOT NULL,
  `ModDesc` varchar(50) NOT NULL,
  PRIMARY KEY (`ModID`),
  UNIQUE KEY `ModName` (`ModName`),
  UNIQUE KEY `ModDesc` (`ModDesc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `RoleName` varchar(18) NOT NULL,
  `ModID` varchar(6) NOT NULL,
  PRIMARY KEY (`RoleName`,`ModID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

DROP TABLE IF EXISTS `salaries`;
CREATE TABLE IF NOT EXISTS `salaries` (
  `EmpID` varchar(9) NOT NULL,
  `Month` varchar(15) NOT NULL,
  `AccountNo` bigint UNSIGNED NOT NULL,
  `pay` int UNSIGNED NOT NULL,
  PRIMARY KEY (`EmpID`,`Month`),
  KEY `AccountNo` (`AccountNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`EmpID`) REFERENCES `employees` (`EmpID`);

--
-- Constraints for table `employee_accounts`
--
ALTER TABLE `employee_accounts`
  ADD CONSTRAINT `employee_accounts_ibfk_1` FOREIGN KEY (`EmpID`) REFERENCES `employees` (`EmpID`);

--
-- Constraints for table `salaries`
--
ALTER TABLE `salaries`
  ADD CONSTRAINT `salaries_ibfk_1` FOREIGN KEY (`EmpID`) REFERENCES `employee_accounts` (`EmpID`),
  ADD CONSTRAINT `salaries_ibfk_2` FOREIGN KEY (`AccountNo`) REFERENCES `employee_accounts` (`AccountNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
