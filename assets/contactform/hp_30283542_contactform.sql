-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gazdă: sql101.hyperphp.com
-- Timp de generare: ian. 25, 2022 la 07:02 AM
-- Versiune server: 10.3.27-MariaDB
-- Versiune PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `hp_30283542_contactform`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(150) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `UserName`, `Password`, `UpdationDate`) VALUES
(1, 'admin', '$2y$12$dvoP.D1hbdRRTyaK7vFe.O8s1PNrkKFOsslh3IAsmF.ljT2g0NTvG', '2022-01-25 11:32:43'),
(2, 'madii', '$2y$12$xE8mFrOITDNrgkwM.8JEju7lpct3KRbxoGS5uE2PzyVdZk8Jnzrdy', '2021-04-24 12:32:24'),
(3, 'admin2', 'c84258e9c39059a89ab77d846ddab909', '2022-01-25 10:39:40');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `tbladminremarks`
--

CREATE TABLE `tbladminremarks` (
  `id` int(11) NOT NULL,
  `contactFormId` int(11) DEFAULT NULL,
  `adminRemark` mediumtext DEFAULT NULL,
  `remarkDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `tbladminremarks`
--

INSERT INTO `tbladminremarks` (`id`, `contactFormId`, `adminRemark`, `remarkDate`) VALUES
(1, 1, 'This is for testing remark by admin.', '2021-04-24 13:39:41'),
(2, 1, 'Test by admin part 2', '2021-04-24 13:39:59'),
(3, 1, 'Test by admin part 2', '2021-04-24 13:41:53'),
(4, 1, 'Test by admin part 2', '2021-04-24 13:42:15'),
(5, 16, 'I love her:))))))', '2021-12-14 18:10:48');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `tblcontactdata`
--

CREATE TABLE `tblcontactdata` (
  `id` int(11) NOT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `PhoneNumber` char(12) DEFAULT NULL,
  `EmailId` varchar(200) DEFAULT NULL,
  `Subject` varchar(255) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `UserIp` varbinary(16) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Is_Read` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `tblcontactdata`
--

INSERT INTO `tblcontactdata` (`id`, `FullName`, `PhoneNumber`, `EmailId`, `Subject`, `Message`, `UserIp`, `PostingDate`, `Is_Read`) VALUES
(5, 'Vasile Georgian', '0767345004', 'vasilegeorgiancristinel@gmail.com', 'Site', 'New Site', 0x38322e37372e3234352e323035, '2021-11-03 09:56:10', 1),
(9, 'Hello mtfckr', '0767345004', 'vasilegeorgiancristinel@gmail.com', 'Test email', 'Hello mother fucker', 0x37392e3131322e3232342e313838, '2021-11-12 08:16:55', 1),
(14, 'Croitoru Alin-Andrei ', '0738301440', 'andrei.croitoru97@yahoo.com', 'Ce faci? ', 'Merge? ', 0x39322e34302e3137392e3531, '2021-12-13 22:25:12', 1),
(15, 'Vasile', '9868384774', 'hahajah@gmail.com', 'Gajajaja', 'Jahahakak', 0x37392e3131322e3233382e38, '2021-12-14 17:50:52', 1),
(16, 'Mihai', '0784740321', 'mihaelamihai.m@yahoo.com', 'Love you', 'Love you', 0x3137382e3133382e3139342e323137, '2021-12-14 17:52:46', 1),
(17, 'Tudor Prisacariu', '0767438178', 'prisacariu.tudor1997@gmail.com', 'rehdf', 'ranmjkjtsf', 0x3137382e3133382e3139342e323438, '2021-12-15 20:16:46', 1);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `tblemail`
--

CREATE TABLE `tblemail` (
  `id` int(11) NOT NULL,
  `emailId` varchar(250) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `tblemail`
--

INSERT INTO `tblemail` (`id`, `emailId`, `UpdationDate`) VALUES
(1, 'vasilegeorgiancristinel@gmail.com', '2022-01-25 10:34:05');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `tbladminremarks`
--
ALTER TABLE `tbladminremarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `tblcontactdata`
--
ALTER TABLE `tblcontactdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `tblemail`
--
ALTER TABLE `tblemail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pentru tabele `tbladminremarks`
--
ALTER TABLE `tbladminremarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pentru tabele `tblcontactdata`
--
ALTER TABLE `tblcontactdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pentru tabele `tblemail`
--
ALTER TABLE `tblemail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
