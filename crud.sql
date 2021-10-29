-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2021 at 09:16 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_delete` (`id` INT)  BEGIN
DELETE FROM register WHERE register.Id= Id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_edit` (`name` VARCHAR(50), `email` VARCHAR(50), `fees` VARCHAR(50), `batch` VARCHAR(50), `id` INT)  BEGIN
UPDATE register SET
   register.Name = name,
   register.Email = email,
   register.Fees = fees,
   register.Batch = batch
   where register.Id = id;  
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fetchdata` ()  BEGIN
SELECT * FROM register;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertdata` (`Studentname` VARCHAR(50), `Studentemail` VARCHAR(50), `Studentfees` VARCHAR(50), `Studentbatch` VARCHAR(50))  BEGIN
INSERT INTO register(register.Name,register.Email,register.Fees,register.Batch)
VALUES (Studentname,Studentemail,Studentfees,Studentbatch);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `Email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `Fees` decimal(50,0) NOT NULL,
  `Batch` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`Id`, `Name`, `Email`, `Fees`, `Batch`) VALUES
(1, 'ali', 'ali@hotmail.com', '6500', '2003'),
(2, 'usama', 'usama@gmail.com', '6500', '2003c1'),
(22, 'ali khan', 'ali@hotmail.com', '6500', '2003c1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
