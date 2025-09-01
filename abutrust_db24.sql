-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 01, 2023 at 06:14 AM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iwebbtec_db24`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountname`
--

CREATE TABLE `accountname` (
  `id` int(11) NOT NULL,
  `account` varchar(50) NOT NULL,
  `accountname` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `cardnum` varchar(50) NOT NULL,
  `month` varchar(50) NOT NULL,
  `year` varchar(50) NOT NULL,
  `ccv` varchar(50) NOT NULL,
  `dated` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`id`, `userid`, `fullname`, `cardnum`, `month`, `year`, `ccv`, `dated`) VALUES
(6, '23', 'John Doe', '5055997633557699', '1', '2025', '806', '01 May 2023');

-- --------------------------------------------------------

--
-- Table structure for table `check_deposit`
--

CREATE TABLE `check_deposit` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` int(50) NOT NULL,
  `front` varchar(150) DEFAULT NULL,
  `back` varchar(150) DEFAULT NULL,
  `date_created` varchar(50) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT '0',
  `check_number` varchar(50) DEFAULT NULL,
  `ref` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `check_deposit`
--

INSERT INTO `check_deposit` (`id`, `user_id`, `amount`, `front`, `back`, `date_created`, `status`, `check_number`, `ref`) VALUES
(11, 22, 520, 'MORIMG202202082328-Z0ZKN.PNG', NULL, '08 Feb 2022, 23:28', '0', '801769202', 'MOR/E1ODDE0JR-0222');

-- --------------------------------------------------------

--
-- Table structure for table `cryptos`
--

CREATE TABLE `cryptos` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `symbol` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `datecreated` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `crypto_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cryptos`
--

INSERT INTO `cryptos` (`id`, `status`, `symbol`, `code`, `datecreated`, `address`, `crypto_name`) VALUES
(1, 1, '<em class=\"icon ni ni-sign-steller\"></em>', 'XLM', '', '5dXkCgbm9KDJviBv8mppNHauMaRDobjXA1', 'Stellar'),
(2, 1, '<em class=\"icon ni ni-sign-usdt\"></em>', 'USDT', '', '5dXkCgbm9KDJviBv8mppNHauMaRDobjXA1', 'tether'),
(3, 1, '<em class=\"icon ni ni-sign-btc\"></em>', 'BTC', '', '5dXkCgbm9KDJviBv8mppNHauMaRDobjXA1', 'Bitcoin'),
(4, 1, '<em class=\"icon ni ni-sign-bch\"></em>', 'BCH', '', '5dXkCgbm9KDJviBv8mppNHauMaRDobjXA1', 'Bitcoin Cash'),
(5, 0, '<em class=\"icon ni ni-sign-bnb\"></em>', 'BNB', '', '5K4AGuGwJjzvTNXNTLMrXkfQqepWSc3yNAiEHhRAZTcpKcKesDt', 'Binance'),
(6, 0, '<em class=\"icon ni ni-sign-eth\"></em>', 'ETH', '', 'wallet6', 'Ethereum'),
(7, 1, '<em class=\"icon ni ni-sign-ltc-alt\"></em>', 'LTC', '', '5dXkCgbm9KDJviBv8mppNHauMaRDobjXA1', 'Litecoin'),
(8, 1, '<em class=\"icon ni ni-sign-xrp-new-alt\"></em>', 'XRP', '', 'Wallet7', 'Ripple'),
(9, 1, '<em class=\"icon ni ni-sign-trx-alt\"></em>', 'TRX', '', 'Wallet8', 'Tron');

-- --------------------------------------------------------

--
-- Table structure for table `crypto_deposits`
--

CREATE TABLE `crypto_deposits` (
  `id` int(11) NOT NULL,
  `coin` varchar(20) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `datecreated` varchar(50) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `amount` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `crypto_deposits`
--

INSERT INTO `crypto_deposits` (`id`, `coin`, `address`, `datecreated`, `userid`, `status`, `amount`) VALUES
(17, 'BTC', '1xlgfjvfjcccxfdcfddvrfuyvti6767tuyv', '01 May 2023, 11:19 AM', 23, 'success', '0.00350434');

-- --------------------------------------------------------

--
-- Table structure for table `crypto_withdrawals`
--

CREATE TABLE `crypto_withdrawals` (
  `id` int(11) NOT NULL,
  `userid` int(20) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `coin` varchar(11) DEFAULT NULL,
  `wallet` varchar(200) DEFAULT NULL,
  `datecreated` varchar(40) DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `getbank`
--

CREATE TABLE `getbank` (
  `id` int(11) NOT NULL,
  `accountnumber` varchar(50) DEFAULT NULL,
  `bankname` varchar(100) DEFAULT NULL,
  `accountname` varchar(100) DEFAULT NULL,
  `bankbranch` varchar(100) DEFAULT NULL,
  `accounttype` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kyc`
--

CREATE TABLE `kyc` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `phone` varchar(80) DEFAULT NULL,
  `dob` varchar(80) DEFAULT NULL,
  `accountnumber` varchar(80) DEFAULT NULL,
  `address1` varchar(200) DEFAULT NULL,
  `address2` varchar(200) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `state` varchar(80) DEFAULT NULL,
  `city` varchar(80) DEFAULT NULL,
  `zipcode` varchar(80) DEFAULT NULL,
  `id_type` varchar(80) DEFAULT NULL,
  `front` varchar(80) DEFAULT NULL,
  `back` varchar(80) DEFAULT NULL,
  `status` varchar(80) DEFAULT NULL,
  `userid` int(80) DEFAULT NULL,
  `datecreated` varchar(80) DEFAULT NULL,
  `ref` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `loan_maxi` varchar(90) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `loan_mini` varchar(80) DEFAULT NULL,
  `interest_rate` varchar(80) DEFAULT NULL,
  `mana_fee` varchar(80) DEFAULT NULL,
  `insurance` varchar(80) DEFAULT NULL,
  `penal_charge` varchar(80) DEFAULT NULL,
  `status` varchar(11) DEFAULT '1',
  `loan_period` varchar(11) DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`loan_maxi`, `id`, `loan_mini`, `interest_rate`, `mana_fee`, `insurance`, `penal_charge`, `status`, `loan_period`) VALUES
('150000', 1, '150', '4.3', '3', '0.8', '3.5', '1', '3');

-- --------------------------------------------------------

--
-- Table structure for table `loan_application`
--

CREATE TABLE `loan_application` (
  `id` int(11) NOT NULL,
  `loan_amount` int(50) DEFAULT NULL,
  `interest_amount` varchar(50) DEFAULT NULL,
  `tenure` varchar(50) DEFAULT NULL,
  `insurance_fee` varchar(50) DEFAULT NULL,
  `manage_fee` varchar(50) DEFAULT NULL,
  `penal_charge` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `datecreated` varchar(50) DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL,
  `facility` varchar(50) DEFAULT NULL,
  `userid` varchar(50) DEFAULT NULL,
  `ref` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loan_application`
--

INSERT INTO `loan_application` (`id`, `loan_amount`, `interest_amount`, `tenure`, `insurance_fee`, `manage_fee`, `penal_charge`, `status`, `datecreated`, `reason`, `facility`, `userid`, `ref`) VALUES
(11, 20000, '2648.33', '12', '160', '600', '700', 'pending', ' 01 May 2023 13:48 pm', 'Explain your purpose of collecting the loan here..', 'Contract Finance', '23', 'LEG-W7AB5MOHCX'),
(12, 10000, '653.54', '48', '80', '300', '350', 'pending', ' 02 May 2023 16:34 pm', 'Car loan', 'Automobile Loans ', '26', 'LEG-BTN1T7MR7R'),
(13, 2000, '145.61', '36', '16', '60', '70', 'pending', ' 03 May 2023 06:32 am', 'Dffgg', 'Health Finance', '26', 'LEG-AMVV04HVHM');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `ip` varchar(150) NOT NULL,
  `browser` varchar(150) NOT NULL,
  `dated` varchar(150) NOT NULL,
  `token` varchar(150) NOT NULL,
  `id` int(11) NOT NULL,
  `userid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ip`, `browser`, `dated`, `token`, `id`, `userid`) VALUES
('84.17.50.178', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '25 Jan 22, 14:14 pm', 'Z4RYmQ3YdYIdkBiV0nHAZMYiyCWTQ6bNAdmRTmrvgUtdP8WJGrkjWqWjFwAdQpV8', 300, '1'),
('84.17.50.178', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '25 Jan 22, 14:32 pm', 'Mqo4gEBNisOkIDhSDP1Egi8TeBA9OZodsMlY8Ynxag4aQh2cNEQBh39i0UmJ7XBlZ7eu', 302, '2'),
('84.17.50.178', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '25 Jan 22, 14:36 pm', 'qJAIDtmll1rMpsvQkzB1uBVaKNMVwx9nfT1Kow1nhP2AphA92fYykROv9yrInsyww7Pr', 303, '2'),
('84.17.50.178', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '25 Jan 22, 14:44 pm', '0hy2l6JFuTz7a89Wzk6NVl6ookg80AJqYxCPuimycC4pthNKdVH1SquRSOBWMHVy', 304, '1'),
('::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '31 Jan 22, 14:35 pm', 'a4nUI1EqoMuIMOqZw2vP4umAY6gvVIZrvTmGw0wMfDz8GNvN7XiI9aCaD89QgU5e', 305, '1'),
('::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '31 Jan 22, 15:00 pm', 'm4nzaOK5aHn7KBKMg3q32Ej5XDdgCBoZhwP3gqEMj1eBsRWYXBI40xzKd3qJSwgn4RbX', 306, '22'),
('::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '31 Jan 22, 16:10 pm', 'xWvaax42HXSSpndrsNsW1yEsscVc0Gis39ClCiqD3fWPHBuXBaxFR0eLD49cOFI92PAz', 307, '22'),
('::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '31 Jan 22, 16:39 pm', '9RhgZkp5kQDgXuBghgJRyEOgebzgq1FBVbpczUdQdaVI3OAVKxvV3TkErHhTo7d1gDvg', 308, '22'),
('::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '31 Jan 22, 17:11 pm', 'yuhRPzHKbWCAEhub8n7VtsHK5uwgaIhZgEMlKHlnU9HnmFfCzWjLXpr0mx6WhCOHRLat', 309, '22'),
('::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '04 Feb 22, 11:42 am', 'b8MNzq3cpZvl4Oc5ww335PQJ1c4lddS280NjFjkV9vQozUwvg0ShNydacDHgMEBz', 310, '1'),
('::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '07 Feb 22, 12:49 pm', 'lKLtrKaQna8lLaRab6y4esjgcQmBUnfJx9dQAIlFd1Rj231GAwxqUUaWk2fwBS0YhpHV', 311, '22'),
('::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '07 Feb 22, 12:51 pm', 'poxdapSYcv4obePFFlcsXArxclfkAdlOvtMsUC4tIsskqqs9qdDTL2YZ5MxaT9FDLbYG', 312, '22'),
('::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '07 Feb 22, 12:53 pm', 'op4Sy0dIL4n6KW4C3Eg9J6WktqCo1rbrEN7AHvodzxVwp1ymUTyozgPiuCGydi8c', 313, '1'),
('::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '07 Feb 22, 13:11 pm', 'Vhuq2WkOM5QwlG3ay9VNem01KOI1eBfjnAMBzhDGhAbLDrXVPz0PlVi9ptJWCiM6pYb5', 314, '22'),
('::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '07 Feb 22, 13:14 pm', 'BUdA9d88MmWQbi3vEgr2EplfKnvLWy6ZchJTaxmEA37ClyCygM5Eb1tvP6UCQWSP3Rkw', 315, '22'),
('::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '08 Feb 22, 16:59 pm', 'Qd8T6wUOicsmkEEai5nxdGIZu8ZJMLlUzEk5fa1Ub6CuryI8w1OVFoViFjiYqlUFbp7p', 316, '22'),
('::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '08 Feb 22, 22:22 pm', 'SYfiFlJbrkQZMdSXHQ2fQt5SCMKzvvMJCL2SON1C6KIVBWwCJFIGdnttusyf2EIcbLAn', 317, '22'),
('::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '08 Feb 22, 23:27 pm', 'TUeg3XdcFcYbZtNs7gLhAF0j3FvXRDovcUjO4qIQTeAYxGWiV2MJBFhJORciBB0N', 318, '1'),
('::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36 Edg/98.0.1108.43', '08 Feb 22, 23:27 pm', 'bbCi8CLo9r520cfFHZ0ElVyaMoZmrzM1sOYV55d8hfVHdFKsJSXjFA9kQdwKIl2nkwHF', 319, '22'),
('129.205.124.223', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36 OPR/97.0.0.0', '29 Apr 23, 02:19 am', 'raRqWCDIzpSYKtHmZa6A3DpvGUXkNJ4fxtCm7UuqFqbuMpepRJ4vnZQnuAlAVlIm', 320, '1'),
('129.205.124.223', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '29 Apr 23, 03:10 am', 'SIMyg36LEB6skZwEtnmvQHInGDR8b5l7tWpaIdunzpY9hNPfxwGEDXq7aNG988CzOEAF', 321, '23'),
('129.205.124.221', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36 OPR/97.0.0.0', '01 May 23, 10:59 am', '5dWU1YRIkbzKbrmHdtsTt3HsbR7R92RFAoogKLcuPGoYBIFtTsTaPZXL3g7ZFSsg', 322, '1'),
('129.205.124.221', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36 OPR/97.0.0.0', '01 May 23, 11:05 am', 'n1tV1EzF0uVCyIyJ1wWhBNxAbz2EFABRbLyrk0udoFCUSY7xOppDvv1YK9O654LZiu8i', 323, '23'),
('197.210.70.156', 'Mozilla/5.0 (Linux; Android 10; Infinix X683) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Mobile Safari/537.36', '01 May 23, 11:07 am', 'UBAOfdOnIYdaahKNeyVEohAAZZt3DOhjgoF3bgx3kOUwI7SevbjVbujCIAL7gYmYW4qY', 324, '24'),
('102.91.4.137', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '01 May 23, 11:49 am', 'HaMchCge3gC5sAZqoaSP3t7pMYeBNfQBKbmVK7w4OEvo8EMMahfUE6RhXc6SRPNdxw2M', 325, '24'),
('136.158.28.78', 'Mozilla/5.0 (Linux; Android 13; SM-A715F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Mobile Safari/537.36', '01 May 23, 11:50 am', 'dO0pE00Ssf26h33wojn1XWQjBRLGicIIfcY3W6I9J1Gh2HbYfxUIKnRg2eKPFgptwg5a', 326, '24'),
('197.210.70.223', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '01 May 23, 11:59 am', 'aJ476GsmPI2QVmzugZBT9oethqjYh4rEm51ei2hUc7Y2ULs2n9ULpVJ8wt08yKjv9APq', 327, '24'),
('129.205.124.221', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36 OPR/97.0.0.0', '01 May 23, 15:05 pm', 'DWToedyRipNIbgrAElDJLS43ghITxxUH0cA2zsWIGVwpsYZ3Tc9rprxltmti3vNR', 328, '1'),
('129.205.124.221', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', '01 May 23, 15:35 pm', 'JFALm6Qvtpq4MkmdQLB7gjoSl2Q6WF5WmmulzRt9n6sgatVqcCQi03vzMQIfgGCHbugs', 329, '23'),
('197.210.70.80', 'Mozilla/5.0 (Linux; Android 10; Infinix X683) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Mobile Safari/537.36', '01 May 23, 16:50 pm', 'avddg5HVlH2uQDP8ZULuKAxmP55IpSfT2NSeq48QDnZ10CoWxC24Wo6sLdjUV2wl8adA', 330, '24'),
('102.91.4.60', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '01 May 23, 18:36 pm', 'QLXemwEte0jSwtI3TqCAgFsrVLhtn1Jwf7BP21sKhtIOfNizKmK21Pn1oCYeDyGrVh1x', 331, '24'),
('129.205.124.221', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', '01 May 23, 22:31 pm', 'nUi9tkRfJCtUXcR2bxzn1Jl4RQ5Ohoegv9NRjXCXFJGHGzrqDoJ5ZjKEjRdR3Iju', 332, '1'),
('80.246.31.88', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Mobile Safari/537.36', '01 May 23, 22:34 pm', 'LDjX8y8oCC56BAiwG70jN8q5KkSFlZKZAMzTOn4nbTgUxgZa4btEK732CcA7oc8wY5ZP', 333, '25'),
('197.210.54.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', '01 May 23, 22:43 pm', 'KHYzNSkX21GOsKRbUzl0gw3wh4zWA92iZSuFzNcOCGo88Wel748rzGhjFmQUr26Sq3iJ', 334, '25'),
('80.246.31.88', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Mobile Safari/537.36', '01 May 23, 22:46 pm', 'eY7SIg8r2Sq4I8rp0am2wgLMF217NWHXjrN8ppc4cppGVDSHkB3EhUPLdQAEzFATJdZU', 335, '25'),
('80.246.31.54', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', '01 May 23, 22:54 pm', 'iXDcAuGe393bAvI1OYMH7BAgVb29cUBmOFJpPaaJKanicRhY1qv0e9auXIWr5J08gQ3W', 336, '25'),
('129.205.124.226', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', '02 May 23, 16:06 pm', 'qkWyTs0PnqY5dytwe4vWw3PaiOtKNZDi4fV77JnAjOeItHS4kJV2cIo7lLabDTRA', 337, '1'),
('102.91.4.199', 'Mozilla/5.0 (Linux; Android 11; TECNO KF7j) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Mobile Safari/537.36', '02 May 23, 16:08 pm', 'aAqEPtSsPm3qyxbVfWnP7UUFM38YytBdGZqtm0LC4GXxONudOMZDM0i41MHRY7t7Ngat', 338, '26'),
('102.91.5.211', 'Mozilla/5.0 (Linux; Android 11; TECNO KF7j) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Mobile Safari/537.36', '02 May 23, 16:08 pm', 'qOdQhD7KRW1EdSYssctxs6mDWH4MnvJTMBzGLmPtLyB8GumRe8dpzOcQl2C7ydZl98OV', 339, '26'),
('197.210.71.220', 'Mozilla/5.0 (Linux; Android 11; TECNO KF7j) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Mobile Safari/537.36', '02 May 23, 21:31 pm', 'DPSGyXNgCXV1uIBsJN9EwHKUQNY0AEOK5uJrsxlGiVHMsER210sT3XHdczIf4AxNnZzP', 340, '26'),
('197.211.63.79', 'Mozilla/5.0 (Linux; Android 10; Infinix X682B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Mobile Safari/537.36', '02 May 23, 22:12 pm', 'YcS9APahMs4SIBtCGEZbkNQNgOBBz1zvC34cG5tluj6AQyv3Kwl0NIWLT8NqawlavZJX', 341, '26'),
('197.211.63.79', 'Mozilla/5.0 (Linux; Android 10; Infinix X682B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Mobile Safari/537.36', '02 May 23, 22:16 pm', 'nfzEaFZJqy7641hwLWKLR3SI8pluKjK9DdD9O03jxwI81j7LYZKrSjKbbd633amgLumB', 342, '26'),
('197.210.70.220', 'Mozilla/5.0 (Linux; Android 11; TECNO KF7j) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Mobile Safari/537.36', '02 May 23, 22:16 pm', 'HoQseRMErzM25TDvvNxd9gPS6Yqcw6OO8wjoyNkXTAimEEDC6Z6i2cnJyPvyQOeqoafM', 343, '26'),
('129.205.124.226', 'Mozilla/5.0 (Linux; Android 10; Infinix X682B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Mobile Safari/537.36', '03 May 23, 06:30 am', 'kIXjjFNFAymDdyO7q3g639W9bgPql8L3ZPbKFHuFXKaUslmcSG33qTWTjUJShLv6WZa9', 344, '26'),
('197.210.52.87', 'Mozilla/5.0 (Linux; Android 11; TECNO KF7j) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Mobile Safari/537.36', '03 May 23, 06:40 am', 'ALdjnnrCvLkHxLgUHvtl5ydtdSymZS7ZmYRQAAbg0ps7ZiPEnhFDF2AnSwwT6JYhDbkN', 345, '26'),
('129.205.124.226', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36 OPR/98.0.0.0', '04 May 23, 00:13 am', 'd7rtZGdkNEmMHl7ODwQUBQ3HSA7Cx6f3KNBhs5ABbcO43zqBW2VwJEearyIPL1F3', 346, '1'),
('129.205.124.226', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', '05 May 23, 18:54 pm', '2aANIaKm1btyKjHJI2ZxQBYMJkVegVuuXzyhLrcRFvqwRLSJaBsV5G6bQcpIrjV6', 347, '1'),
('197.210.28.8', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', '05 May 23, 19:31 pm', '5IYPGV8tS1MKYMEygHblcJnv1RIADVWhr2ns1Xy00mk17yCHQi66QxwNs5TALDDc40US', 348, '27'),
('102.89.32.149', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', '05 May 23, 19:38 pm', 'u7Uq1k7SJ8W23jtjuB8PSstswa8fbKTmrSHKp83m93xiOJheSF4zpg7C1vkrwNqepcjO', 349, '27'),
('129.205.124.226', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', '05 May 23, 21:27 pm', 'Qh021iULAvNmKEmodAjdWMSVHYvvlBzovTckIgBf2pTnENeJrMrtUKongCbfmD3k', 350, '1'),
('41.58.234.92', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_0_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.0 Mobile/15E148 Safari/604.1', '05 May 23, 21:56 pm', 'sPoRnIInd0OnrQMpOcm1mKpKNQ7DWtrc2ZqSazR7875PHNgY1rYkwJ2JTSeSOW1t5DhL', 351, '28'),
('41.58.234.92', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '05 May 23, 22:12 pm', 'LDrORto509ElLntyKvnOA7ECXksM5tnWWXsbTrGgioUdKHtfMK1C4bFb23MhVTwdeub5', 352, '28'),
('129.205.124.226', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', '06 May 23, 09:34 am', '2Qc9AdPErL428jrEjSdK9WXurQoFJtjzNX23VeHCRM8marHlCVnOX8Y0PtcbRbXi', 353, '1'),
('197.210.226.133', 'Mozilla/5.0 (Linux; Android 11) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', '06 May 23, 10:08 am', '6I0iues0Xwz95ZYe026yA5zEBXz32VLQ1hxAWu6IxhmIfLlj81NOGs9WGXMY37c1mtY4', 354, '29'),
('197.210.84.194', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.72 Mobile/15E148 Safari/604.1', '06 May 23, 13:04 pm', 'N9EkKvvmuZvjXYMooCQeuxlUBclSu7wGltAjLMQ6lryO4xOYMF15b7qcsD5CxRWTXO3r', 355, '29'),
('102.89.33.147', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', '06 May 23, 19:36 pm', 'ghKW3YN2GquxI0QQq3ZHpmNtJU7iCCdBP3d9JGV3J710NKqD71YySjVpdTDFyekEjHHF', 356, '27'),
('129.205.124.226', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36 OPR/98.0.0.0', '07 May 23, 15:13 pm', 'gRheHqdRm7epGWYW9Gr30mO4hh8wYNCZvxEMqr5gjSSW2fsqpbk10Rc9bCFv025N', 357, '1'),
('129.205.124.226', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36 OPR/98.0.0.0', '07 May 23, 15:19 pm', '4r4xyzY3LJ0vOMtutVLBnhA1l9DI3gaAcMajRtui8dA0Ccl9rsLiuBV3KshppCf7vQvC', 358, '23'),
('38.64.138.145', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', '11 May 23, 20:56 pm', 'TCK20l5BxU4yv2FDLzqgoRWyFdLzVZKcPydGmFU09eW7uOfn2a0ki7ejV0Rpem4qc3mo', 359, '24'),
('197.210.71.76', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', '11 May 23, 21:43 pm', 'mgjkcbVHIoHX9MsgGW6EACb041OyvnriuIa9KM1lpeaTpYmlHEXWI7bMSSi4R32XfaBM', 360, '24'),
('102.88.34.188', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', '13 May 23, 14:37 pm', 'xRmVDDHY6zoEz2mKfI9FkJdvs7QhxvCh8rviAzJX4PJjpiRfEIhrRfwERDRDZUhP', 361, '1'),
('105.112.37.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '13 May 23, 14:40 pm', 'G7gUZbmWmTWCKdRzeK2IBK0ozPBNtGbMgLikvfpDLVYDQcTVK360Mg1t0dbphYBBd99I', 362, '31'),
('105.112.154.193', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '14 May 23, 11:04 am', 'rvaOPCj9JvR5Ip2XQDKw7qupSWpldaWvxkv9pWQCS8v6mjMvw6PJxRHti5kUltiT3lMO', 363, '31');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `dated` varchar(150) DEFAULT NULL,
  `expiry_date` varchar(150) DEFAULT NULL,
  `token` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paybill`
--

CREATE TABLE `paybill` (
  `id` int(11) NOT NULL,
  `payee` varchar(100) DEFAULT NULL,
  `dated` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `memo` varchar(100) DEFAULT NULL,
  `userid` varchar(100) DEFAULT NULL,
  `payeeid` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `ref` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payee`
--

CREATE TABLE `payee` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `method` varchar(100) DEFAULT NULL,
  `account` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zipcode` varchar(100) DEFAULT NULL,
  `nickname` varchar(100) DEFAULT NULL,
  `userid` varchar(100) DEFAULT NULL,
  `next_payment` varchar(100) DEFAULT NULL,
  `ref` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE `reply` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `ticketid` varchar(50) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `datecreated` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `logo` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `favicon` varchar(150) NOT NULL,
  `tagline` varchar(150) NOT NULL,
  `register` varchar(150) NOT NULL,
  `darklogo` varchar(150) NOT NULL,
  `description` varchar(700) NOT NULL DEFAULT 'This Credit Union is federally-insured by the National Credit Union Administration. We do business in accordance with the Fair Housing Law and Equal opportunity Credit Act.',
  `seo` varchar(150) NOT NULL,
  `footerlogo` varchar(150) NOT NULL DEFAULT 'footlogo.png',
  `securityalert` varchar(150) NOT NULL,
  `stockrate` varchar(5505) NOT NULL DEFAULT '<script type="text/javascript" src="https://s3.tradingview.com/external-embedding/embed-widget-ticker-tape.js" async="">                                                                         {                                                                             "symbols"                                                                         :                                                                             [                                                                                 {                                                                                     "title": "S&P 500",                                                                                     "proName": "OANDA:SPX500USD"                                                                                 },                                                                                 {                                                                                     "title": "Nasdaq 100",                                                                                     "proName": "OANDA:NAS100USD"                                                                                 },                                                                                 {                                                                                     "title": "EUR/USD",                                                                                     "proName": "FX_IDC:EURUSD"                                                                                 },                                                                                 {                                                                                     "title": "BTC/USD",                                                                                     "proName": "BITSTAMP:BTCUSD"                                                                                 },                                                                                 {                                                                                     "title": "ETH/USD",                                                                                     "proName": "BITSTAMP:ETHUSD"                                                                                 },                                                                                 {                                                                                     "description": "AAPL",                                                                                     "proName": "NASDAQ:AAPL"                                                                                 },                                                                                 {                                                                                     "description": "MICROSOFT",                                                                                     "proName": "NASDAQ:MSFT"                                                                                 }                                                                             ],                                                                                 "colorTheme"                                                                         :                                                                             "dark",                                                                                 "isTransparent"                                                                         :                                                                             false,                                                                                 "displayMode"                                                                         :                                                                             "compact",                                                                                 "locale"                                                                         :                                                                             "en"                                                                         }                                                                     </script>',
  `stockrate2` varchar(1000) NOT NULL DEFAULT '    <iframe             src="//www.exchangerates.org.uk/widget/ER-LRTICKER.php?w=1400&amp;s=1&amp;mc=GBP&amp;mbg=F0F0F0&amp;bs=yes&amp;bc=000044&amp;f=verdana&amp;fs=10px&amp;fc=000044&amp;lc=000044&amp;lhc=FE9A00&amp;vc=FE9A00&amp;vcu=008000&amp;vcd=FF0000&amp;"             width="1400" height="30" frameborder="0" scrolling="no" marginwidth="0" marginheight="0"></iframe>',
  `stock` int(11) NOT NULL DEFAULT 1,
  `money` varchar(50) NOT NULL DEFAULT 'USD',
  `country` varchar(50) NOT NULL DEFAULT 'United States',
  `visa_picture` varchar(150) NOT NULL,
  `tawk` varchar(500) NOT NULL,
  `shortname` varchar(150) NOT NULL DEFAULT 'Rednerbank',
  `blocked_msg` varchar(500) NOT NULL DEFAULT 'Dear Customer, we have discovered suspicious activities on your account. An unauthorized IP address attempted to carry out a transaction on your account. Consequently, your account has been flagged by our risk assessment department. kindly visit our nearest branch with your identification card and utility bill to confirm your identity before it can be reactivated. For more information, kindly contact our online customer care representatives.',
  `crypto` int(11) NOT NULL DEFAULT 1,
  `blocked_title` varchar(150) NOT NULL DEFAULT 'Account Suspended',
  `imfmsg` varchar(1000) NOT NULL DEFAULT 'You need to provide your IMF code before you can continue with this transaction.<br>                                                 You visit any of our nearest branch or contact our online customer care representative, they will help you with the appropriate IMF code for this transaction.',
  `cotmsg` varchar(1000) NOT NULL DEFAULT 'You need to provide your COT code before you can continue with this transaction. You can visit any of our nearest branch or contact our online customer care representative, they will help you with the appropriate COT code for this transaction.',
  `icmsg` text DEFAULT NULL,
  `tinmsg` text DEFAULT NULL,
  `tacmsg` text DEFAULT NULL,
  `charges` varchar(11) NOT NULL DEFAULT '0.3',
  `wiremsg` varchar(500) NOT NULL,
  `localmsg` varchar(500) NOT NULL,
  `cot_imf_counter` int(11) NOT NULL DEFAULT 5,
  `cot_error` varchar(500) NOT NULL DEFAULT 'Your account have been temporarily suspended for providing the wrong COT code, We are always committed to safe guarding your funds and therefore this is the right decision we can take for now. For more information, kindly contact our live customer care representatives.',
  `imf_error` varchar(500) NOT NULL DEFAULT 'Your account have been temporarily suspended for providing the wrong IMF code, We are always committed to safe guarding your funds and therefore this is the right decision we can take for now. For more information, kindly contact our live customer care representatives.',
  `enable_cot_imf` varchar(20) NOT NULL DEFAULT 'Yes',
  `rest_msg` varchar(1000) NOT NULL DEFAULT 'Your  account was temporary restricted from carrying out transaction via our online banking channel, Kindly visit any of our nearest branch to resolve this issue. For more information, kindly contact our online customer care representative.',
  `userstac` varchar(50) NOT NULL DEFAULT '1999',
  `usersic` varchar(50) NOT NULL DEFAULT '1999',
  `userstin` varchar(50) NOT NULL DEFAULT '1999',
  `enable_tin_ic_tac` varchar(20) NOT NULL DEFAULT 'Yes',
  `enable_tac` varchar(20) NOT NULL DEFAULT 'Yes',
  `enable_ic` varchar(20) NOT NULL DEFAULT 'Yes',
  `enable_tin` varchar(20) NOT NULL DEFAULT 'Yes',
  `bots` int(10) NOT NULL DEFAULT 1,
  `site_url` varchar(50) NOT NULL,
  `kyc` int(11) NOT NULL DEFAULT 1,
  `loan` int(11) NOT NULL DEFAULT 1,
  `visual_card` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `name`, `logo`, `address`, `email`, `phone`, `favicon`, `tagline`, `register`, `darklogo`, `description`, `seo`, `footerlogo`, `securityalert`, `stockrate`, `stockrate2`, `stock`, `money`, `country`, `visa_picture`, `tawk`, `shortname`, `blocked_msg`, `crypto`, `blocked_title`, `imfmsg`, `cotmsg`, `icmsg`, `tinmsg`, `tacmsg`, `charges`, `wiremsg`, `localmsg`, `cot_imf_counter`, `cot_error`, `imf_error`, `enable_cot_imf`, `rest_msg`, `userstac`, `usersic`, `userstin`, `enable_tin_ic_tac`, `enable_tac`, `enable_ic`, `enable_tin`, `bots`, `site_url`, `kyc`, `loan`, `visual_card`) VALUES
(1, 'Leggo', 'logo.png', '301 East Water Street, Charlottesville, VA 22904 Virginia.', 'leggo@iwebbtech.com.ng', '+44 204 MSB BANK', 'favicon.png', '', '', '', 'This Credit Union is federally insured by the National Credit Union Administration. We do business in accordance with the Fair Housing Law and Equal opportunity Credit Act.', '', 'footerlogo.jpg', '', '<script type=\"text/javascript\" src=\"https://s3.tradingview.com/external-embedding/embed-widget-ticker-tape.js\" async=\"\">                                                                         {                                                                             \"symbols\"                                                                         :                                                                             [                                                                                 {                                                                                     \"title\": \"S&P 500\",                                                                                     \"proName\": \"OANDA:SPX500USD\"                                                                                 },                                                                                 {                                                                                     \"title\": \"Nasdaq 100\",                                                                                     \"proName\": \"OANDA:NAS100USD\"                                                                                 },                                                                                 {                                                                                     \"title\": \"EUR/USD\",                                                                                     \"proName\": \"FX_IDC:EURUSD\"                                                                                 },                                                                                 {                                                                                     \"title\": \"BTC/USD\",                                                                                     \"proName\": \"BITSTAMP:BTCUSD\"                                                                                 },                                                                                 {                                                                                     \"title\": \"ETH/USD\",                                                                                     \"proName\": \"BITSTAMP:ETHUSD\"                                                                                 },                                                                                 {                                                                                     \"description\": \"AAPL\",                                                                                     \"proName\": \"NASDAQ:AAPL\"                                                                                 },                                                                                 {                                                                                     \"description\": \"MICROSOFT\",                                                                                     \"proName\": \"NASDAQ:MSFT\"                                                                                 }                                                                             ],                                                                                 \"colorTheme\"                                                                         :                                                                             \"dark\",                                                                                 \"isTransparent\"                                                                         :                                                                             false,                                                                                 \"displayMode\"                                                                         :                                                                             \"compact\",                                                                                 \"locale\"                                                                         :                                                                             \"en\"                                                                         }                                                                     </script>', '    <iframe             src=\"//www.exchangerates.org.uk/widget/ER-LRTICKER.php?w=1400&amp;s=1&amp;mc=GBP&amp;mbg=F0F0F0&amp;bs=yes&amp;bc=000044&amp;f=verdana&amp;fs=10px&amp;fc=000044&amp;lc=000044&amp;lhc=FE9A00&amp;vc=FE9A00&amp;vcu=008000&amp;vcd=FF0000&amp;\"             height=\"30\" width=\"100%\" frameborder=\"0\" scrolling=\"no\" marginwidth=\"0\" marginheight=\"0\"></iframe>', 2, 'USD', 'United Kingdom', 'images\\visa.png', '615784c8d326717cb684536a/1fguttcga', 'LG', 'Dear Customer, we have discovered suspicious activities on your account. An unauthorized IP address attempted to carry out a transaction on your account. Consequently, your account has been flagged by our risk assessment department. kindly visit our nearest branch with your identification card and utility bill to confirm your identity before it can be reactivated. For more information, kindly contact our online customer care representative.', 1, 'Account Suspended', 'The IMF code is required to enable you to continue with this transaction. Please contact any of our nearest branches or our online customer care representative with: they will help you with the appropriate IMF code for this transaction.', 'The Federal COT code is required for this transaction can be completed successfully. You can visit any of our nearest branches or contact our online customer care representative with: for more details of the for this transaction.', 'The Federal Insurance code is required for this transaction can be completed successfully. You can visit any of our nearest branches or contact our online customer care representative with:  for more details of the Insurance code for this transaction.\r\nUSE:3690NH', 'The Federal TIN code is required for this transaction can be completed successfully. You can visit any of our nearest branches or contact our online customer care representative with:  for more details of the TIN code for this transaction.\r\nUSE:3690NH', 'The Federal TAC code is required for this transaction can be completed successfully. You can visit any of our nearest branches or contact our online customer care representative with:  for more details of the TAC code for this transaction.\r\nUSE:3690NH', '0.3', '', '', 15, 'Your account has been temporarily suspended for providing the wrong COT code, We are always committed to safeguarding your funds and therefore this is the right decision we can take for now. For more information, kindly contact our live customer care representative.', 'Your account has been temporarily suspended for providing the wrong IMF code, We are always committed to safeguarding your funds and therefore this is the right decision we can take for now. For more information, kindly contact our live customer care representative.', 'Yes', 'Your account was temporarily restricted from carrying out transactions via our online banking channel, Kindly visit any of our nearest branches to resolve this issue. For more information, kindly contact our online customer care representatives.', '3690NH', '3690NH', '3690NH', 'NO', 'Yes', 'NO', 'NO', 1, 'https://iwebbtech.com.ng/leggo/account', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `picture` varchar(300) NOT NULL,
  `heading` varchar(600) NOT NULL,
  `content` varchar(600) NOT NULL,
  `link` varchar(600) NOT NULL,
  `text` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `status`, `picture`, `heading`, `content`, `link`, `text`) VALUES
(1, 1, 'images/visa1 (2).png', 'Discover our new 82% mortgages', 'This Credit Union is federally insured by the National Credit Union Administration.', '#', 'Find out more'),
(2, 1, 'images/visa.png', 'Investment Banking ', 'Investment Banking provides comprehensive financial advisory, capital raising, financing and risk management services to corporations.', '#', 'Find out more'),
(3, 1, 'images\\visa2.png', 'Global Finance', 'Our M&A team works in partnership with coverage bankers in providing solutions, using a highly analytical approach, providing unique insights.', '##', 'Find out more');

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `id` int(11) NOT NULL,
  `api` varchar(200) DEFAULT NULL,
  `sender_id` varchar(50) DEFAULT NULL,
  `status` int(13) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sms`
--

INSERT INTO `sms` (`id`, `api`, `sender_id`, `status`) VALUES
(1, 'wYxok-Y-Ryu93LRSFJzvR8LUDuAV1d8Vpj_PAKSrBLtuWUAlMNsQjT6p0XLqV2Fp', 'Leggo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `smtp_setting`
--

CREATE TABLE `smtp_setting` (
  `id` int(11) NOT NULL,
  `host` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `port` varchar(50) NOT NULL,
  `display_name` varchar(50) NOT NULL,
  `smtp_auth` varchar(50) NOT NULL,
  `emaillogo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `smtp_setting`
--

INSERT INTO `smtp_setting` (`id`, `host`, `username`, `password`, `port`, `display_name`, `smtp_auth`, `emaillogo`) VALUES
(1, 'mail.iwebbtech.com.ng', 'leggo@iwebbtech.com.ng', 'Vision@2020', '465', 'Leggo', 'ssl', 'logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE `support` (
  `id` int(11) NOT NULL,
  `userid` int(150) DEFAULT NULL,
  `ticketid` varchar(150) DEFAULT NULL,
  `department` varchar(150) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `datecreated` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `scope` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `bankname` varchar(50) DEFAULT NULL,
  `routineNumber` varchar(50) DEFAULT NULL,
  `swiftcode` varchar(50) DEFAULT NULL,
  `accountnumber` varchar(50) DEFAULT NULL,
  `accountholder` varchar(50) DEFAULT NULL,
  `otp` varchar(50) DEFAULT NULL,
  `refNumber` varchar(50) DEFAULT NULL,
  `dated` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `accountbalance` varchar(50) DEFAULT NULL,
  `userid` varchar(50) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `token` varchar(150) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `state` varchar(150) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `iban` varchar(150) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `scope`, `type`, `bankname`, `routineNumber`, `swiftcode`, `accountnumber`, `accountholder`, `otp`, `refNumber`, `dated`, `amount`, `accountbalance`, `userid`, `description`, `token`, `country`, `state`, `city`, `iban`, `status`) VALUES
(184, 'VisualCard Top-up', 'Credit', NULL, NULL, NULL, NULL, NULL, NULL, 'LEG/KBBVSJLMV-0523', '01 May 2023, 11:22 am', '100', '99.97', '23', 'Leg-0523-eTopup-KBbVSjLmV', 'MCSe60kbODcTXBRmybc9qszHR8rs2KZ1yD0uFqSyszEdzBHKeAbgQPiQNTi6S3i4', NULL, NULL, NULL, NULL, 1),
(185, 'Local Transfer', 'Debit', 'Bank Of Baroda (UK) Limited', '487590568', NULL, '0839466584', 'James Milner', '741906', 'LEG/DBV86EQK9-0523', '01 May 2023, 12:07 pm', '70', '29.97', '23', 'monthly due', 'lHdHouIoHm7LZN5xEDe0Sb15XMS53MVvYcJqranwnTqq4gkdN2UUKq0Kfw2AOHZn', NULL, NULL, NULL, NULL, 1),
(186, 'Local Transfer', 'Credit', NULL, NULL, NULL, NULL, NULL, '920435', 'LEG/UGVC9NIKD-0523', '01 May 2023, 12:20 pm', '20000', '20029.97', '23', 'Bonus', 'RfKUFVgI0YcuV97DHgRFLOni55NVLzrUulwlrQavqRNTncMevJMp1CBzBlCBWuTl', NULL, NULL, NULL, NULL, 1),
(187, 'Local Transfer', 'Debit', 'The ADIB (UK) Ltd', '48457363', NULL, '7373578594', 'Emily Jones', '754694', 'LEG/XSHYKISHV-0523', '01 May 2023, 1:13 pm', '200', '19829.97', '23', 'monthly due', 'nWlGRPlRbP53QrLpaYnrLMsPtmpGZYbWBvNI8ZVBMh6eF4CShQsl2KCXBnXMtJqH', NULL, NULL, NULL, NULL, 1),
(188, 'International Transfer', 'Debit', 'The ADIB (UK) Ltd', NULL, NULL, '1657697078', 'Rolex Milly', '094357', 'LEG/OXYUWJAPT-0523', '01 May 2023, 1:46 pm', '2000', '17829.97', '23', 'monthly due', 'Db604AHZCbvpi7qUdvhPBMNzhRb14jtK7f7XvDJXUZIBZsE7I6B9JEHhf3rd1LfK', NULL, NULL, NULL, NULL, 1),
(189, 'Check Deposit', 'Credit', NULL, NULL, NULL, NULL, NULL, '570192', 'LEG/L1VN7YUEK-0523', '02 May 2023, 4:16 pm', '10000', '10000', '26', 'Check deposited successfully ', 'G7lkmu2CLjT5nBStetj15qpKb6WbHm3wVuZRT9qkaJ4ocga3JWJVAPIgjyXEjish', NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ukbanks`
--

CREATE TABLE `ukbanks` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ukbanks`
--

INSERT INTO `ukbanks` (`id`, `name`) VALUES
(1, 'ABC International Bank Plc'),
(2, 'Access Bank UK Limited'),
(3, 'The ADIB (UK) Ltd '),
(4, 'Ahli United Bank (UK) PLC'),
(5, 'AIB Group (UK) Plc'),
(6, 'Al Rayan Bank PLC'),
(7, 'Aldermore Bank Plc'),
(8, 'Alliance Trust Savings Limited'),
(9, 'Allica Bank Ltd'),
(10, 'Alpha Bank London Limited'),
(11, 'Arbuthnot Latham & Co Limited'),
(12, 'Atom Bank PLC'),
(13, 'Axis Bank UK Limited'),
(14, 'Bank and Clients PLC'),
(15, 'Bank Leumi (UK) plc'),
(16, 'Bank Mandiri (Europe) Limited'),
(17, 'Bank Of Baroda (UK) Limited'),
(18, 'Bank of Beirut (UK) Ltd'),
(19, 'Bank of Ceylon (UK) Ltd'),
(20, 'Bank of China (UK) Ltd'),
(21, 'Bank of Ireland (UK) Plc'),
(22, 'Bank of London and The Middle East plc'),
(23, 'Bank of New York Mellon (International) Limited'),
(24, 'The HSBC Private Bank (UK) Limited Bank of Scotlan'),
(25, 'Bank of the Philippine Islands (Europe) PLC'),
(26, 'Bank Saderat Plc'),
(27, 'Bank Sepah International Plc'),
(28, 'Barclays Bank Plc'),
(29, 'Barclays Bank UK PLC'),
(30, 'Barclays Bank UK PLC'),
(31, 'BFC Bank Limited'),
(32, 'Bira Bank LimitedBMCE Bank International plc'),
(33, 'BMCE Bank International plc'),
(34, 'British Arab Commercial Bank Plc'),
(35, 'Brown Shipley & Co Limited'),
(36, 'C Hoare & Co'),
(37, 'CAF Bank Ltd'),
(38, 'Cambridge & Counties Bank Limited'),
(39, 'Castle Trust Capital PLC'),
(40, 'Cater Allen Limited'),
(41, 'Charity Bank Limited'),
(42, 'The Charter Court Financial Services Limited'),
(43, 'Chetwood Financial Limited'),
(44, 'China Construction Bank (London) Limited'),
(45, 'CIBC World Markets Plc'),
(46, 'Citibank UK Limited'),
(47, 'ClearBank Limited'),
(48, 'Close Brothers Limited'),
(49, 'Clydesdale Bank Plc'),
(50, 'Commonwealth Trade Bank Plc'),
(51, 'Co-operative Bank Plc'),
(52, 'The Coutts & Company'),
(53, 'Credit Suisse (UK) Limited'),
(54, 'Credit Suisse International'),
(55, 'Crown Agents Bank Limited'),
(56, 'Cynergy Bank Limited'),
(57, 'DB UK Bank Limited'),
(58, 'EFG Private Bank Limited'),
(59, 'Europe Arab Bank plc'),
(60, 'FBN Bank (UK) Ltd'),
(61, 'FCE Bank Plc'),
(62, 'FCMB Bank (UK) Limited'),
(63, 'Gatehouse Bank Plc'),
(64, 'Ghana International Bank Plc'),
(65, 'GKBK Limited'),
(66, 'Goldman Sachs International Bank'),
(67, 'Guaranty Trust Bank (UK) Limited'),
(68, 'Gulf International Bank (UK) Limited'),
(69, 'Habib Bank Zurich Plc'),
(70, 'Hampden & Co Plc'),
(71, 'Hampshire Trust Bank Plc'),
(72, 'Handelsbanken PLC'),
(73, 'Havin Bank Ltd'),
(74, 'HBL Bank UK Limited'),
(75, 'HSBC Bank Plc'),
(76, 'HSBC Private Bank (UK) Limited'),
(77, 'HSBC Trust Company (UK) Ltd'),
(78, 'HSBC UK Bank Plc'),
(79, 'ICBC (London) plc'),
(80, 'ICBC Standard Bank Plc'),
(81, 'ICICI Bank UK Plc'),
(82, 'Investec Bank PLC'),
(83, 'Itau BBA International PLC'),
(84, 'JN Bank UK Ltd'),
(85, 'J.P. Morgan Europe Limited'),
(86, 'J.P. Morgan Securities plc'),
(87, 'Jordan International Bank Plc'),
(88, 'Julian Hodge Bank Limited'),
(89, 'Kexim Bank (UK) Ltd'),
(90, 'Kingdom Bank Ltd'),
(91, 'Lloyds Bank Plc'),
(92, 'Lloyds Bank Corporate Markets Plc'),
(93, 'Macquarie Bank International Ltd'),
(94, 'Marks & Spencer Financial Services Plc'),
(95, 'Masthaven Bank Limited'),
(96, 'Melli Bank plc'),
(97, 'Methodist Chapel Aid Limited'),
(98, 'Metro Bank PLC'),
(99, 'Mizuho International Plc'),
(100, 'Monzo Bank Ltd'),
(101, 'Morgan Stanley Bank International Limited'),
(102, 'National Bank of Egypt (UK) Limited'),
(103, 'National Bank of Kuwait (International) Plc'),
(104, 'National Westminster Bank Plc'),
(105, 'NatWest Markets Plc'),
(106, 'Nomura Bank International Plc'),
(107, 'Northern Bank Limited'),
(108, 'OakNorth Bank plc'),
(109, 'OneSavings Bank Plc'),
(110, 'Oxbury FS Plc'),
(111, 'Paragon Bank Plc'),
(112, 'PCF Bank Limited'),
(113, 'Persia International Bank Plc'),
(114, 'Philippine National Bank (Europe) Plc'),
(115, 'Punjab National Bank (International) Limited '),
(116, 'QIB (UK) Plc'),
(117, 'R. Raphael & Sons Plc'),
(118, 'Rathbone Investment Management Limited'),
(119, 'RBC Europe Limited'),
(120, 'RCI Bank UK Limited'),
(121, 'Redwood Bank Ltd'),
(122, 'Reliance Bank Ltd'),
(123, 'Revver Limited'),
(124, 'Royal Bank of Scotland Plc'),
(125, ' The Sainsbury’s Bank Plc'),
(126, 'Santander Financial Services plc'),
(127, 'Santander UK Plc'),
(128, 'State Bank Of India (UK) Limited'),
(129, 'Schroder & Co Ltd'),
(130, 'Scotiabank Europe Plc'),
(131, 'Secure Trust Bank Plc'),
(132, 'SG Kleinwort Hambros Bank Limited'),
(133, 'Shawbrook Bank Limited'),
(134, 'Sonali Bank (UK) Limited'),
(135, 'Standard Chartered Bank'),
(136, 'Starling Bank Limited'),
(137, 'Sumitomo Mitsui Banking Corporation Europe Limited'),
(138, 'Tandem Bank Limited'),
(139, 'TD Bank Europe Limited'),
(140, 'Tesco Personal Finance Plc'),
(141, 'Triodos UK Ltd'),
(142, ''),
(143, 'ABC International Bank Plc'),
(144, 'Access Bank UK Limited'),
(145, 'The ADIB (UK) Ltd '),
(146, 'Ahli United Bank (UK) PLC'),
(147, 'AIB Group (UK) Plc'),
(148, 'Al Rayan Bank PLC'),
(149, 'Aldermore Bank Plc'),
(150, 'Alliance Trust Savings Limited'),
(151, 'Allica Bank Ltd'),
(152, 'Alpha Bank London Limited'),
(153, 'Arbuthnot Latham & Co Limited'),
(154, 'Atom Bank PLC'),
(155, 'Axis Bank UK Limited'),
(156, 'Bank and Clients PLC'),
(157, 'Bank Leumi (UK) plc'),
(158, 'Bank Mandiri (Europe) Limited'),
(159, 'Bank Of Baroda (UK) Limited'),
(160, 'Bank of Beirut (UK) Ltd'),
(161, 'Bank of Ceylon (UK) Ltd'),
(162, 'Bank of China (UK) Ltd'),
(163, 'Bank of Ireland (UK) Plc'),
(164, 'Bank of London and The Middle East plc'),
(165, 'Bank of New York Mellon (International) Limited'),
(166, 'The HSBC Private Bank (UK) Limited Bank of Scotlan'),
(167, 'Bank of the Philippine Islands (Europe) PLC'),
(168, 'Bank Saderat Plc'),
(169, 'Bank Sepah International Plc'),
(170, 'Barclays Bank Plc'),
(171, 'Barclays Bank UK PLC'),
(172, 'Barclays Bank UK PLC'),
(173, 'BFC Bank Limited'),
(174, 'Bira Bank LimitedBMCE Bank International plc'),
(175, 'BMCE Bank International plc'),
(176, 'British Arab Commercial Bank Plc'),
(177, 'Brown Shipley & Co Limited'),
(178, 'C Hoare & Co'),
(179, 'CAF Bank Ltd'),
(180, 'Cambridge & Counties Bank Limited'),
(181, 'Castle Trust Capital PLC'),
(182, 'Cater Allen Limited'),
(183, 'Charity Bank Limited'),
(184, 'The Charter Court Financial Services Limited'),
(185, 'Chetwood Financial Limited'),
(186, 'China Construction Bank (London) Limited'),
(187, 'CIBC World Markets Plc'),
(188, 'Citibank UK Limited'),
(189, 'ClearBank Limited'),
(190, 'Close Brothers Limited'),
(191, 'Clydesdale Bank Plc'),
(192, 'Commonwealth Trade Bank Plc'),
(193, 'Co-operative Bank Plc'),
(194, 'The Coutts & Company'),
(195, 'Credit Suisse (UK) Limited'),
(196, 'Credit Suisse International'),
(197, 'Crown Agents Bank Limited'),
(198, 'Cynergy Bank Limited'),
(199, 'DB UK Bank Limited'),
(200, 'EFG Private Bank Limited'),
(201, 'Europe Arab Bank plc'),
(202, 'FBN Bank (UK) Ltd'),
(203, 'FCE Bank Plc'),
(204, 'FCMB Bank (UK) Limited'),
(205, 'Gatehouse Bank Plc'),
(206, 'Ghana International Bank Plc'),
(207, 'GKBK Limited'),
(208, 'Goldman Sachs International Bank'),
(209, 'Guaranty Trust Bank (UK) Limited'),
(210, 'Gulf International Bank (UK) Limited'),
(211, 'Habib Bank Zurich Plc'),
(212, 'Hampden & Co Plc'),
(213, 'Hampshire Trust Bank Plc'),
(214, 'Handelsbanken PLC'),
(215, 'Havin Bank Ltd'),
(216, 'HBL Bank UK Limited'),
(217, 'HSBC Bank Plc'),
(218, 'HSBC Private Bank (UK) Limited'),
(219, 'HSBC Trust Company (UK) Ltd'),
(220, 'HSBC UK Bank Plc'),
(221, 'ICBC (London) plc'),
(222, 'ICBC Standard Bank Plc'),
(223, 'ICICI Bank UK Plc'),
(224, 'Investec Bank PLC'),
(225, 'Itau BBA International PLC'),
(226, 'JN Bank UK Ltd'),
(227, 'J.P. Morgan Europe Limited'),
(228, 'J.P. Morgan Securities plc'),
(229, 'Jordan International Bank Plc'),
(230, 'Julian Hodge Bank Limited'),
(231, 'Kexim Bank (UK) Ltd'),
(232, 'Kingdom Bank Ltd'),
(233, 'Lloyds Bank Plc'),
(234, 'Lloyds Bank Corporate Markets Plc'),
(235, 'Macquarie Bank International Ltd'),
(236, 'Marks & Spencer Financial Services Plc'),
(237, 'Masthaven Bank Limited'),
(238, 'Melli Bank plc'),
(239, 'Methodist Chapel Aid Limited'),
(240, 'Metro Bank PLC'),
(241, 'Mizuho International Plc'),
(242, 'Monzo Bank Ltd'),
(243, 'Morgan Stanley Bank International Limited'),
(244, 'National Bank of Egypt (UK) Limited'),
(245, 'National Bank of Kuwait (International) Plc'),
(246, 'National Westminster Bank Plc'),
(247, 'NatWest Markets Plc'),
(248, 'Nomura Bank International Plc'),
(249, 'Northern Bank Limited'),
(250, 'OakNorth Bank plc'),
(251, 'OneSavings Bank Plc'),
(252, 'Oxbury FS Plc'),
(253, 'Paragon Bank Plc'),
(254, 'PCF Bank Limited'),
(255, 'Persia International Bank Plc'),
(256, 'Philippine National Bank (Europe) Plc'),
(257, 'Punjab National Bank (International) Limited '),
(258, 'QIB (UK) Plc'),
(259, 'R. Raphael & Sons Plc'),
(260, 'Rathbone Investment Management Limited'),
(261, 'RBC Europe Limited'),
(262, 'RCI Bank UK Limited'),
(263, 'Redwood Bank Ltd'),
(264, 'Reliance Bank Ltd'),
(265, 'Revver Limited'),
(266, 'Royal Bank of Scotland Plc'),
(267, ' The Sainsbury’s Bank Plc'),
(268, 'Santander Financial Services plc'),
(269, 'Santander UK Plc'),
(270, 'State Bank Of India (UK) Limited'),
(271, 'Schroder & Co Ltd'),
(272, 'Scotiabank Europe Plc'),
(273, 'Secure Trust Bank Plc'),
(274, 'SG Kleinwort Hambros Bank Limited'),
(275, 'Shawbrook Bank Limited'),
(276, 'Sonali Bank (UK) Limited'),
(277, 'Standard Chartered Bank'),
(278, 'Starling Bank Limited'),
(279, 'Sumitomo Mitsui Banking Corporation Europe Limited'),
(280, 'Tandem Bank Limited'),
(281, 'TD Bank Europe Limited'),
(282, 'Tesco Personal Finance Plc'),
(283, 'Triodos UK Ltd'),
(284, 'TSB Bank plc'),
(285, 'Turkish Bank (UK) Ltd'),
(286, 'Ulster Bank Ltd'),
(287, 'Union Bank of India (UK) Limited'),
(288, 'Union Bank UK Plc'),
(289, 'United Bank for Africa (UK) Limited'),
(290, 'United National Bank Limited'),
(291, 'United Trust Bank Limited'),
(292, 'Unity Trust Bank Plc'),
(293, 'Vanquis Bank Limited'),
(294, 'Virgin Money plc'),
(295, 'VTB Capital plc'),
(296, 'Weatherbys Bank Limited'),
(297, 'Wesleyan Bank Limited'),
(298, 'Westpac Europe Ltd'),
(299, 'Wyelands Bank Plc'),
(300, 'Zenith Bank (UK) Limited'),
(301, 'Zopa Bank Limited'),
(302, 'Turkish Bank (UK) Ltd'),
(303, 'Ulster Bank Ltd'),
(304, 'Union Bank of India (UK) Limited'),
(305, 'Union Bank UK Plc'),
(306, 'United Bank for Africa (UK) Limited'),
(307, 'United National Bank Limited'),
(308, 'United Trust Bank Limited'),
(309, 'Unity Trust Bank Plc'),
(310, 'Vanquis Bank Limited'),
(311, 'Virgin Money plc'),
(312, 'VTB Capital plc'),
(313, 'Weatherbys Bank Limited'),
(314, 'Wesleyan Bank Limited'),
(315, 'Westpac Europe Ltd'),
(316, 'Wyelands Bank Plc'),
(317, 'Zenith Bank (UK) Limited'),
(318, 'Zopa Bank Limited');

-- --------------------------------------------------------

--
-- Table structure for table `usbank`
--

CREATE TABLE `usbank` (
  `id` int(11) NOT NULL,
  `name` varchar(69) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usbank`
--

INSERT INTO `usbank` (`id`, `name`) VALUES
(1, 'Abacus Federal Savings Bank'),
(2, 'Abbeville Building & Loan'),
(3, 'Abbeville First Bank, SSB'),
(4, 'AbbyBank'),
(5, 'ABINGTON BANK'),
(6, 'Academy Bank'),
(7, 'ACB Bank'),
(8, 'Access Bank'),
(9, 'AccessBank Texas'),
(10, 'ACNB Bank'),
(11, 'Adams Bank & Trust'),
(12, 'Adams Community Bank'),
(13, 'Adams County Bank'),
(14, 'Adams State Bank'),
(15, '1st National Bank'),
(16, 'Academy Bank'),
(17, 'ADP Trust Company'),
(18, 'Albany Bank and Trust Company'),
(19, 'Alerus Financial'),
(20, 'Amarillo National Bank'),
(21, 'Amerant Bank'),
(22, 'Amerant Trust'),
(23, 'American Bank and Trust Company'),
(24, 'American Bank'),
(25, 'American Commerce Bank'),
(26, 'American Express National Bank'),
(27, 'American First National Bank'),
(28, 'American Heritage National Bank'),
(29, 'American National Bank'),
(30, 'Adirondack Bank Utica'),
(31, 'Adrian Bank Adrian'),
(32, 'Adrian State Bank Adrian'),
(33, 'Affinity Bank Covington'),
(34, 'AIG Federal Savings Bank'),
(35, 'Alamerica Bank Birmingham'),
(36, 'Alamosa State Bank'),
(37, 'Albany Bank and Trust Company'),
(38, 'Alden State Bank'),
(39, 'Alerus Financial'),
(40, 'Algonquin State Bank'),
(41, 'All America Bank'),
(42, 'Allegiance Bank Houston'),
(43, 'Alliance Bank'),
(44, 'American Plus Bank'),
(45, 'AMG National Trust Bank'),
(46, 'Anahuac National Bank'),
(47, 'Anchorage Digital Bank'),
(48, 'Anna-Jonesboro National Bank'),
(49, 'Armed Forces Bank'),
(50, 'Asian Pacific National Bank'),
(51, 'Associated Bank'),
(52, 'Associated Trust Company'),
(53, 'Atlantic Capital Bank'),
(54, 'Austin Bank'),
(55, 'Axiom Bank'),
(56, 'Alliance Bank Topeka'),
(57, 'Alliance Bank & Trust Company'),
(58, 'Alliance Bank Central Texas'),
(59, 'Alliance Community Bank Petersburg'),
(60, 'Alliant Bank Madison'),
(61, 'Allied First Bank'),
(62, 'AllNations Bank Calumet'),
(63, 'Ally Bank'),
(64, 'Alma Bank'),
(65, 'Alpine Bank'),
(66, 'Alpine Capital Bank'),
(67, 'Altabank American Fork'),
(68, 'Altamaha Bank & Trust Company Vidalia'),
(69, 'Alton Bank Alton'),
(70, 'Altoona First Savings Bank Altoona'),
(71, 'Alva State Bank & Trust Company Alva'),
(72, 'Amalgamated Bank New York'),
(73, 'Amalgamated Bank of Chicago Chicago'),
(74, 'Amarillo National Bank Amarillo'),
(75, 'Ambler Savings Bank'),
(76, 'Amboy Bank Old Bridge'),
(77, 'Amerant Bank'),
(78, 'Amerasia Bank Flushing'),
(79, 'America\'s Community Bank'),
(80, 'American Bank'),
(81, 'American Bank & Trust Wessington Springs'),
(82, 'American Bank & Trust Company Opelousas'),
(83, 'American Bank & Trust Company Covington'),
(84, 'American Bank & Trust Company'),
(85, 'American Bank & Trust of the Cumberlands Livingston'),
(86, 'American Bank and Trust Company Tulsa'),
(87, 'American Bank and Trust Company'),
(88, 'American Bank Center Dickinson'),
(89, 'American Bank of Baxter Springs Baxter Springs'),
(90, 'American Bank of Beaver Dam Beaver Dam'),
(91, 'American Bank of Commerce Wolfforth'),
(92, 'American Bank of Missouri Wellsville'),
(93, 'American Bank of Oklahoma Collinsville'),
(94, 'American Bank of the Carolinas Monroe'),
(95, 'American Bank of the North'),
(96, 'American Business Bank Los Angeles'),
(97, 'American Commerce Bank'),
(98, 'American Community Bank Glen Cove'),
(99, 'American Community Bank & Trust Woodstock'),
(100, 'American Community Bank of Indiana'),
(101, 'American Continental Bank'),
(102, 'American Eagle Bank South Elgin'),
(103, 'American Equity Bank Minnetonka'),
(104, 'American Exchange Bank'),
(105, 'American Express National Bank Sandy'),
(106, 'American Federal Bank Fargo'),
(107, 'American First National Bank Houston'),
(108, 'American Heritage Bank Sapulpa'),
(109, 'American Heritage Bank Clovis'),
(110, 'American Heritage National Bank Long Prairie'),
(111, 'American Interstate Bank Elkhorn'),
(112, 'American Investors Bank and Mortgage Eden Prairie'),
(113, 'American Metro Bank Chicago'),
(114, 'American Momentum Bank'),
(115, 'Axos Bank'),
(116, 'Baker Boyer National Bank'),
(117, 'Ballston Spa National Bank'),
(118, 'Banc of California'),
(119, '12152 BancCentral'),
(120, '4975 Bank First'),
(121, '24077 Bank of America California'),
(122, 'Bank of Brenham'),
(123, 'Bank of Bridger'),
(124, 'Bank of Brookfield-Purdin'),
(125, 'Bank of Desoto'),
(126, 'Bank of Hillsboro'),
(127, 'Bank of Houston'),
(128, 'Bank of Southern California'),
(129, 'Bank of Whittier'),
(130, 'BankChampaign'),
(131, 'BankFinancial'),
(132, 'BankUnited'),
(133, 'Barrington Bank & Trust Company'),
(134, 'Beacon Business Bank'),
(135, 'Bessemer Trust Company of California'),
(136, 'Bessemer Trust Company of Delaware'),
(137, 'Bessemer Trust Company'),
(138, 'Beverly Bank & Trust Company'),
(139, 'Big Bend Banks'),
(140, 'Black Hills Community Bank'),
(141, 'Blackrock Institutional Trust Company'),
(142, 'Blue Ridge Bank'),
(143, 'BMO Harris Bank'),
(144, 'BMO Harris Central National Association'),
(145, 'b1BANK Baton Rouge'),
(146, 'BAC Community Bank Stockton'),
(147, 'Badger Bank Fort Atkinson'),
(148, 'Baker-Boyer National Bank'),
(149, 'Balboa Thrift and Loan Association Chula Vista'),
(150, 'Ballston Spa National Bank Ballston Spa'),
(151, 'Banc of California'),
(152, 'BancCentral'),
(153, 'BancFirst Oklahoma City'),
(154, 'Banco do Brasil Americas Miami'),
(155, 'Banco Popular de Puerto Rico San Juan'),
(156, 'BancorpSouth Bank Tupelo'),
(157, 'Bandera Bank Bandera'),
(158, 'Banesco USA Coral Gables'),
(159, 'Bangor Savings Bank'),
(160, 'Bank Northwest Hamilton'),
(161, 'Bank of Abbeville & Trust Company Abbeville'),
(162, 'Bank of Alapaha Alapaha'),
(163, 'Bank of Alma Alma'),
(164, 'Bank of America California'),
(165, 'Bank of America Charlotte'),
(166, 'Bank of Anguilla Anguilla'),
(167, 'Bank of Ann Arbor Ann Arbor'),
(168, 'Bank of Baroda New York'),
(169, 'Bank of Bartlett Bartlett'),
(170, 'Bank of Bearden Bearden'),
(171, 'Bank of Belle Glade Belle Glade'),
(172, 'Bank of Belleville Belleville'),
(173, 'Bank of Bennington Bennington'),
(174, 'Bank of Billings'),
(175, 'Bank of Bird-in-Hand'),
(176, 'Bank of Blue Valley'),
(177, 'Bank of Bluffs'),
(178, 'Bank of Botetourt'),
(179, 'Bank of Bozeman'),
(180, 'Bank of Brenham'),
(181, 'Bank of Brewton'),
(182, 'Bank of Bridger'),
(183, 'Bank of Brookfield'),
(184, 'Bank of Brookhaven'),
(185, 'Bank of Buffalo'),
(186, 'Bank of Cadiz and Trust Company Cadiz'),
(187, 'Bank of Calhoun County Hardin'),
(188, 'Bank of Camilla Camilla'),
(189, 'Bank of Cashton'),
(190, 'Bank of Cattaraugus'),
(191, 'Bank of Cave City'),
(192, 'Bank of Central Florida Lakeland'),
(193, 'Bank of Charles Town'),
(194, 'Bank of Cherokee County Hulbert'),
(195, 'Bank of Chestnut'),
(196, 'Bank of China'),
(197, 'Bank of Clarke County'),
(198, 'Bank of Clarks'),
(199, 'Bank of Clarkson'),
(200, 'Bank of Clevelan'),
(201, 'Bank of Colorado'),
(202, 'Bank of Columbia'),
(203, 'Bank of Commerce'),
(204, 'Bank of Cordell Cordell'),
(205, 'Bank of Coushatta Coushatta'),
(206, 'Bank of Crocker Waynesville'),
(207, 'Bank of Crockett Bells'),
(208, 'Bank of Dade Trenton'),
(209, 'Bank of Dawson'),
(210, 'Bank of Deerfield'),
(211, 'Bank of Delight'),
(212, 'BNC National Bank'),
(213, 'BNY Mellon'),
(214, 'BOKF'),
(215, 'Brazos National Bank'),
(216, 'Bremer Bank'),
(217, 'Broadway National Bank 1177 N.E. Loop 410 San Antonio TX 15797 474254'),
(218, 'Brown Brothers Harriman Trust Company'),
(219, 'BTH Bank'),
(220, 'Buena Vista National Bank'),
(221, 'Business Bank of Texas'),
(222, 'Bank of Denton Denton'),
(223, 'Bank of DeSoto'),
(224, 'Bank of Dickson Dickson'),
(225, 'Bank of Dixon County Ponca'),
(226, 'Bank of Doniphan Doniphan'),
(227, 'Bank of Dudley Dudley'),
(228, 'Bank of Eastern Oregon Heppner'),
(229, 'Bank of Easton North Easton'),
(230, 'Bank of Edmonson County Brownsville'),
(231, 'Bank of Elgin'),
(232, 'Bank of England'),
(233, 'Bank of Erath'),
(234, 'Bank of Estes Park'),
(235, 'Bank of Eufaula Eufaula'),
(236, 'Bank of Evergreen'),
(237, 'Bank of Farmington'),
(238, 'Bank of Feather River Yuba City'),
(239, 'Bank of Frankewing'),
(240, 'Bank of Franklin Meadville'),
(241, 'Bank of Franklin County Washington'),
(242, 'Bank of George Las Vegas'),
(243, 'Bank of Gibson City'),
(244, 'Bank of Gleason'),
(245, 'Bank of Grand Lake'),
(246, 'Bank of Grandin'),
(247, 'Bank of Gravette'),
(248, 'Bank of Greeley'),
(249, 'Bank of Greeleyville'),
(250, 'Bank of Guam'),
(251, 'Bank of Gueydan'),
(252, 'Bank of Halls'),
(253, 'Bank of Hancock County Sparta'),
(254, 'Bank of Hartington'),
(255, 'Bank of Hawaii Honolulu'),
(256, 'Bank of Hays'),
(257, 'Bank of Hazelton'),
(258, 'Bank of Hazlehurst'),
(259, 'Bank of Hillsboro'),
(260, 'Bank of Hindman'),
(261, 'Bank of Holland'),
(262, 'Bank of Holly Springs'),
(263, 'Bank of Holyrood'),
(264, 'Bank of Hope'),
(265, 'Bank of Houston'),
(266, 'Bank of Hydro'),
(267, 'Bank of Iberia'),
(268, 'Bank of Idaho Idaho Falls'),
(269, 'Bank of India New York'),
(270, 'Bank of Jackson Hole'),
(271, 'Bank of Jamestown'),
(272, 'Bank of Kampsville'),
(273, 'Bank of Kilmichael'),
(274, 'Bank of Kirksville'),
(275, 'Bank of Labor Kansas City'),
(276, 'Bank of Lake Mills'),
(277, 'Bank of Lake Village'),
(278, 'Bank of Lewellen'),
(279, 'Bank of Lexington'),
(280, 'Bank of Lincoln County Fayetteville'),
(281, 'Bank of Lindsay'),
(282, 'Bank of Montana Missoula'),
(283, 'Bank of Montgomery'),
(284, 'Bank of Monticello'),
(285, 'Bank of Morton'),
(286, 'Bank of Moundville'),
(287, 'Bank of New Cambria'),
(288, 'Bank of New Hampshire'),
(289, 'Bank of New Madrid'),
(290, 'Bank of Newington'),
(291, 'Bank of Newman Grove'),
(292, 'Bank of O\'Fallon'),
(293, 'Bank of Oak Ridge'),
(294, 'Bank of Little Rock'),
(295, 'Bank of Locust Grove'),
(296, 'Bank of Louisiana'),
(297, 'Bank of Lumber City'),
(298, 'Bank of Luxemburg'),
(299, 'Bank of Madison'),
(300, 'Bank of Maple'),
(301, 'Bank of Marin'),
(302, 'Bank of Mauston'),
(303, 'Bank of Maysville'),
(304, 'Bank of Mead'),
(305, 'Bank of Millbrook'),
(306, 'Bank of Milton'),
(307, 'Bank of Mingo'),
(308, 'C3bank'),
(309, 'Cadence Bank'),
(310, 'California First National Bank'),
(311, 'California International Bank, A National Banking Association'),
(312, 'Canandaigua National Trust Company of Florida'),
(313, 'Canyon Community Bank'),
(314, 'Capital Bank'),
(315, 'Capital One Bank (USA)'),
(316, 'Capital One'),
(317, 'Capitol National Bank'),
(318, 'Cayuga Lake National Bank'),
(319, 'Cedar Hill National Bank'),
(320, 'Cendera Bank'),
(321, 'Center National Bank'),
(322, 'Central National Bank'),
(323, 'Central National Bank'),
(324, 'CenTrust Bank'),
(325, 'CFBank'),
(326, 'Chain Bridge Bank'),
(327, 'Champlain National Bank'),
(328, 'Chester National Bank'),
(329, 'Chilton Trust Company'),
(330, 'Chino Commercial Bank'),
(331, 'CIBC National Trust Company'),
(332, 'CIT Bank'),
(333, 'Citibank, N.A.'),
(334, 'Citicorp Trust Delaware'),
(335, 'Citizens Bank'),
(336, 'Citizens Bank'),
(337, 'Citizens Community Federal National Association'),
(338, 'Citizens National Bank'),
(339, 'Citizens National Bank'),
(340, 'Citizens National Bank'),
(341, 'Citizens National Bank at Brownwood'),
(342, 'Citizens National Bank of Albion'),
(343, 'Citizens National Bank of Cheboygan'),
(344, 'Citizens National Bank of Crosbyton'),
(345, 'Citizens National Bank of Texas'),
(346, 'Citizens National Bank'),
(347, 'City First Bank of D.C.'),
(348, 'City National Bank'),
(349, 'City National Bank'),
(350, 'City National Bank of Florida'),
(351, 'City National Bank of West Virginia'),
(352, 'Clare Bank'),
(353, 'Classic Bank'),
(354, 'CNB Bank & Trust'),
(355, 'Coastal Carolina National Bank'),
(356, 'Comerica Bank & Trust'),
(357, 'Commerce National Bank & Trust'),
(358, 'Commercial Bank of Texas'),
(359, 'Commercial National Bank of Texarkana'),
(360, 'Commonwealth National Bank'),
(361, 'Community Bank'),
(362, 'Community First Bank'),
(363, 'Community First National Bank'),
(364, 'Community National Bank'),
(365, 'Community National Bank'),
(366, 'Community National Bank'),
(367, 'Community National Bank'),
(368, 'Community National Bank & Trust'),
(369, 'Community National Bank & Trust of Texas'),
(370, 'Community National Bank in Monmouth'),
(371, 'Community National Bank of Okarche'),
(372, 'Community West Bank'),
(373, 'CommunityBank of Texas'),
(374, 'Computershare Trust Company'),
(375, 'Connecticut Community Bank'),
(376, 'Consumers National Bank'),
(377, 'Cornerstone Bank'),
(378, 'Cornerstone National Bank & Trust Company'),
(379, 'Cortrust Bank National Association'),
(380, 'Country Club Trust Company'),
(381, 'County National Bank'),
(382, 'Credit First National Association'),
(383, 'Credit One Bank'),
(384, 'Crockett National Bank'),
(385, 'Crystal Lake Bank & Trust Company'),
(386, 'Cumberland Valley National Bank & Trust Company'),
(387, 'Dakota Community Bank & Trust'),
(388, 'Dallas Capital Bank'),
(389, 'Delta National Bank and Trust Company'),
(390, 'Department Stores National Bank'),
(391, 'Desjardins Bank'),
(392, 'Deutsche Bank National Trust Company'),
(393, 'Deutsche Bank Trust Company'),
(394, 'DNB National Bank'),
(395, 'Douglas National Bank'),
(396, 'DSRM National Bank'),
(397, 'Eastbank'),
(398, 'Eastern National Bank'),
(399, 'Edison National Bank'),
(400, 'EH National Bank'),
(401, 'Embassy National Bank'),
(402, 'Esquire Bank'),
(403, 'Evans Bank'),
(404, 'Evercore Trust Company'),
(405, 'Evergreen National Bank'),
(406, 'Extraco Banks'),
(407, 'F&M Community Bank'),
(408, 'Falcon National Bank'),
(409, 'Farmers National Bank'),
(410, 'Farmers National Bank'),
(411, 'Farmers National Bank of Griggsville'),
(412, 'FCN Bank'),
(413, 'Fidelity Bank'),
(414, 'Fifth Third Bank'),
(415, 'Finemark National Bank & Trust'),
(416, 'First & Farmers National Bank, Inc.'),
(417, 'First American National Bank'),
(418, 'First Bankers Trust Company'),
(419, 'First Century Bank'),
(420, 'First Citizens National Bank'),
(421, 'First Colorado National Bank'),
(422, 'First Commercial Bank'),
(423, 'First Community National Bank'),
(424, 'First Community Trust'),
(425, 'First Dakota National Bank'),
(426, 'First Farmers & Merchants National Bank'),
(427, 'First Farmers & Merchants National Bank'),
(428, 'First Federal Community Bank'),
(429, 'First Financial Bank'),
(430, 'First Financial Bank'),
(431, 'First Financial Trust & Asset Management Company'),
(432, 'First Financial Trust'),
(433, 'First Hope Bank, A National Banking Association'),
(434, 'First Mid Bank & Trust'),
(435, 'First National Bank & Trust'),
(436, 'First National Bank & Trust Company'),
(437, 'First National Bank & Trust Company of McAlester'),
(438, 'First National Bank Alaska'),
(439, 'First National Bank Albany/Breckenridge'),
(440, 'First National Bank and Trust'),
(441, 'First National Bank and Trust'),
(442, 'First National Bank and Trust Co. of Bottineau'),
(443, 'First National Bank and Trust Company'),
(444, 'First National Bank and Trust Company of Ardmore'),
(445, 'First National Bank and Trust Company of Weatherford'),
(446, 'First National Bank at Darlington'),
(447, 'First National Bank in Cimarron'),
(448, 'First National Bank in DeRidder'),
(449, 'First National Bank in Fairfield'),
(450, 'First National Bank in Frankfort'),
(451, 'First National Bank in Fredonia'),
(452, 'First National Bank in Howell'),
(453, 'First National Bank in New Bremen'),
(454, 'First National Bank in Okeene'),
(455, 'First National Bank in Olney'),
(456, 'First National Bank in Ord'),
(457, 'First National Bank in Philip'),
(458, 'First National Bank in Pinckneyville'),
(459, 'First National Bank in Port Lavaca'),
(460, 'First National Bank in Taylorville'),
(461, 'First National Bank in Tigerton'),
(462, 'First National Bank Minnesota'),
(463, 'First National Bank North'),
(464, 'First National Bank Northwest Florida'),
(465, 'First National Bank of Alvin'),
(466, 'First National Bank of America'),
(467, 'First National Bank of Anderson'),
(468, 'First National Bank of Beardstown'),
(469, 'First National Bank of Benton'),
(470, 'First National Bank of Bosque County'),
(471, 'First National Bank of Brookfield'),
(472, 'First National Bank of Burleson'),
(473, 'First National Bank of Central Texas'),
(474, 'First National Bank of Chadron'),
(475, 'First National Bank of Clarksdale'),
(476, 'First National Bank of Coffee County'),
(477, 'First National Bank of Decatur County'),
(478, 'First National Bank of Dublin'),
(479, 'First National Bank of Eastern Arkansas'),
(480, 'First National Bank of Fort Stockton'),
(481, 'First National Bank of Giddings'),
(482, 'First National Bank of Gillette'),
(483, 'First National Bank of Griffin'),
(484, 'First National Bank of Hereford'),
(485, 'First National Bank of Huntsville'),
(486, 'First National Bank of Kansas'),
(487, 'First National Bank of Kentucky'),
(488, 'First National Bank of Lake Jackson'),
(489, 'First National Bank of Las Animas'),
(490, 'First National Bank of Louisiana'),
(491, 'First National Bank of McGregor'),
(492, 'First National Bank of Michigan'),
(493, 'First National Bank of Muscatine'),
(494, 'First National Bank of Nokomis'),
(495, 'First National Bank of North Arkansas'),
(496, 'First National Bank of Oklahoma'),
(497, 'First National Bank of Omaha'),
(498, 'First National Bank of Pana'),
(499, 'First National Bank of Pasco'),
(500, 'First National Bank of Pennsylvania'),
(501, 'First National Bank of Picayune'),
(502, 'First National Bank of Pulaski'),
(503, 'First National Bank of River Falls'),
(504, 'First National Bank of Scotia'),
(505, 'First National Bank of South Carolina'),
(506, 'First National Bank of South Padre Island'),
(507, 'First National Bank of Steeleville'),
(508, 'First National Bank of Tennessee'),
(509, 'First National Bank of Wauchula'),
(510, 'First National Bank of Winnsboro'),
(511, 'First National Bank Texas'),
(512, 'First National Bank USA'),
(513, 'First National Bank, Ames, Iowa'),
(514, 'First National Bank, Cortez'),
(515, 'First National Bankers Bank'),
(516, 'First National Community Bank'),
(517, 'First National Community Bank'),
(518, 'First National Trust Company'),
(519, 'First Neighbor Bank'),
(520, 'First Pioneer National Bank'),
(521, 'First Robinson Savings Bank'),
(522, 'First Southern National Bank'),
(523, 'First Texoma National Bank'),
(524, 'First United National Bank'),
(525, 'FirstCapital Bank of Texas'),
(526, 'First-Lockhart National Bank'),
(527, 'Florida Capital Bank'),
(528, 'Forcht Bank'),
(529, 'Forest Park National Bank and Trust Company'),
(530, 'FSNB'),
(531, 'Fulton Bank'),
(532, 'Gilmer National Bank'),
(533, 'Glens Falls National Bank and Trust Company'),
(534, 'GNBank'),
(535, 'Golden Bank'),
(536, 'Golden Pacific Bank'),
(537, 'Goldwater Bank'),
(538, 'Grand Ridge National Bank'),
(539, 'Grasshopper Bank'),
(540, 'Great Plains National Bank'),
(541, 'Greenville National Bank'),
(542, 'Guaranty Bank & Trust'),
(543, 'Haskell National Bank'),
(544, 'Hawaii National Bank'),
(545, 'Heartland National Bank'),
(546, 'Heritage Bank'),
(547, 'Hiawatha National Bank'),
(548, 'Hilltop National Bank'),
(549, 'Hinsdale Bank & Trust Company'),
(550, 'HNB National Bank'),
(551, 'Home Bank'),
(552, 'Home National Bank'),
(553, 'Home State Bank / National Association'),
(554, 'Hometown Bank'),
(555, 'Hometown National Bank'),
(556, 'HSBC Bank USA'),
(557, 'HSBC Trust Company (Delaware)'),
(558, 'INB'),
(559, 'Incommons Bank'),
(560, 'Industrial and Commercial Bank of China (USA)'),
(561, 'Intercredit Bank'),
(562, 'Intrust Bank'),
(563, 'Investar Bank'),
(564, 'Inwood National Bank'),
(565, 'JPMorgan Chase Bank'),
(566, 'Junction National Bank'),
(567, 'KEB Hana Bank USA'),
(568, 'Key National Trust Company of Delaware'),
(569, 'KeyBank National Association'),
(570, 'Keystone Bank'),
(571, 'Kingston National Bank'),
(572, 'Kleberg Bank'),
(573, 'Kress National Bank'),
(574, 'Lake Forest Bank & Trust Company'),
(575, 'Lamar National Bank'),
(576, 'Landmark National Bank'),
(577, 'LCNB National Bank'),
(578, 'Leader Bank'),
(579, 'Ledyard National Bank'),
(580, 'Legacy National Bank'),
(581, 'Legacy Trust Company'),
(582, 'Legend Bank'),
(583, 'LendingClub Bank'),
(584, 'Liberty National Bank'),
(585, 'Liberty National Bank'),
(586, 'Liberty National Bank'),
(587, 'Libertyville Bank & Trust Company'),
(588, 'Llano National Bank'),
(589, 'Lone Star Capital Bank'),
(590, 'Lone Star National Bank'),
(591, 'Malvern Bank'),
(592, 'Mason City National Bank'),
(593, 'Mccurtain County National Bank'),
(594, 'Merchants Bank'),
(595, 'MetaBank'),
(596, 'Midamerica National Bank'),
(597, 'Mid-Central National Bank'),
(598, 'Midstates Bank'),
(599, 'Midwest Bank'),
(600, 'Millbury National Bank'),
(601, 'Minnesota National Bank'),
(602, 'Minnstar Bank National Association'),
(603, 'Mission National Bank'),
(604, 'Modern Bank'),
(605, 'Moody National Bank'),
(606, 'Morgan Stanley Bank, N.A.'),
(607, 'Morgan Stanley Private Bank'),
(608, 'Mountain Valley Bank'),
(609, 'MUFG Union Bank'),
(610, 'Natbank'),
(611, 'National Advisors Trust Company'),
(612, 'National Bank & Trust'),
(613, 'National Bank of Commerce'),
(614, 'National Bank of New York City'),
(615, 'National Bank of St. Anne'),
(616, 'National Cooperative Bank, N.A.'),
(617, 'National Exchange Bank and Trust'),
(618, 'National United'),
(619, 'Native American Bank'),
(620, 'NBT Bank'),
(621, 'Nebraskaland National Bank'),
(622, 'Neighborhood National Bank'),
(623, 'Neighborhood National Bank'),
(624, 'Neuberger Berman Trust Company National Association'),
(625, 'Neuberger Berman Trust Company of Delaware National Association'),
(626, 'New Covenant Trust Company'),
(627, 'New Horizon Bank'),
(628, 'New Omni Bank'),
(629, 'Newfield National Bank'),
(630, 'Newfirst National Bank'),
(631, 'NexTier Bank'),
(632, 'Nicolet National Bank'),
(633, 'North Georgia National Bank'),
(634, 'Northbrook Bank & Trust Company'),
(635, 'Northern California National Bank'),
(636, 'Northern Interstate Bank'),
(637, 'Northwestern Bank'),
(638, 'Natbank'),
(639, 'National Advisors Trust Company'),
(640, 'National Bank & Trust'),
(641, 'National Bank of Commerce'),
(642, 'National Bank of New York City'),
(643, 'National Bank of St. Anne'),
(644, 'National Cooperative Bank, N.A.'),
(645, 'National Exchange Bank and Trust'),
(646, 'National United'),
(647, 'Native American Bank'),
(648, 'NBT Bank'),
(649, 'Nebraskaland National Bank'),
(650, 'Neighborhood National Bank'),
(651, 'Neighborhood National Bank'),
(652, 'Neuberger Berman Trust Company National Association'),
(653, 'Neuberger Berman Trust Company of Delaware National Association'),
(654, 'New Covenant Trust Company'),
(655, 'New Horizon Bank'),
(656, 'New Omni Bank'),
(657, 'Newfield National Bank'),
(658, 'Newfirst National Bank'),
(659, 'NexTier Bank'),
(660, 'Nicolet National Bank'),
(661, 'North Georgia National Bank'),
(662, 'Northbrook Bank & Trust Company'),
(663, 'Northern California National Bank'),
(664, 'Northern Interstate Bank'),
(665, 'Northwestern Bank'),
(666, 'Pacific National Bank'),
(667, 'Panola National Bank'),
(668, 'Patriot Bank'),
(669, 'Peoples National Bank of Kewanee'),
(670, 'Peoples National Bank, N.A.'),
(671, 'People\'s United Bank'),
(672, 'Pike National Bank'),
(673, 'Pikes Peak National Bank'),
(674, 'Pioneer Trust Bank'),
(675, 'PNC Bank'),
(676, 'Powell Valley National Bank'),
(677, 'Progressive National Bank'),
(678, 'Quail Creek Bank'),
(679, 'Quantum National Bank'),
(680, 'Queensborough National Bank & Trust Company'),
(681, 'Ramsey National Bank'),
(682, 'Range Bank'),
(683, 'Raymond James Bank'),
(684, 'Raymond James Trust'),
(685, 'RBC Bank (Georgia)'),
(686, 'Relyance Bank'),
(687, 'Resource Bank'),
(688, 'Rockefeller Trust Company'),
(689, 'RockPoint Bank'),
(690, 'Safra National Bank of New York'),
(691, 'Santander Bank'),
(692, 'Saratoga National Bank and Trust Company'),
(693, 'Savannah Bank National Association'),
(694, 'Schaumburg Bank & Trust Company'),
(695, 'Seacoast National Bank'),
(696, 'Securian Trust Company'),
(697, 'Security First National Bank of Hugo'),
(698, 'Security National Bank'),
(699, 'Security National Bank of Omaha'),
(700, 'Security National Bank of South Dakota'),
(701, 'Security National Trust Co.'),
(702, 'Shamrock Bank'),
(703, 'Signature Bank'),
(704, 'Skyline National Bank'),
(705, 'SNB Bank'),
(706, 'Solera National Bank'),
(707, 'South State Bank'),
(708, 'SouthCrest Bank'),
(709, 'Southeast First National Bank'),
(710, 'Southtrust Bank'),
(711, 'Southwest National Bank'),
(712, 'Southwestern National Bank'),
(713, 'St. Charles Bank & Trust Company'),
(714, 'St. Martin National Bank'),
(715, 'State Bank of the Lakes'),
(716, 'State Street Bank and Trust Company National Association'),
(717, 'State Street Bank and Trust Company of California'),
(718, 'Stearns Bank Holdingford National Association'),
(719, 'Stearns Bank National Association'),
(720, 'Stearns Bank Upsala National Association'),
(721, 'Sterling National Bank'),
(722, 'Stifel Trust Company Delaware'),
(723, 'Stifel Trust Company'),
(724, 'Stillman Banccorp National Association'),
(725, 'Stockmens National Bank in Cotulla'),
(726, 'Stride Bank'),
(727, 'Stroud National Bank'),
(728, 'Summit National Bank'),
(729, 'Sunflower Bank'),
(730, 'Sunrise Banks'),
(731, 'Superior National Bank'),
(732, 'Synovus Trust Company'),
(733, 'T Bank'),
(734, 'TCF National Bank'),
(735, 'TCM Bank'),
(736, 'TD Bank USA'),
(737, 'TD Bank'),
(738, 'Terrabank National Association'),
(739, 'Texan Bank'),
(740, 'Texana Bank'),
(741, 'Texas Advantage Community Bank'),
(742, 'Texas Capital Bank'),
(743, 'Texas Citizens Bank'),
(744, 'Texas Gulf Bank'),
(745, 'Texas Heritage National Bank'),
(746, 'Texas National Bank'),
(747, 'Texas National Bank'),
(748, 'Texas National Bank of Jacksonville'),
(749, 'Texas Republic Bank'),
(750, 'TexStar National Bank'),
(751, 'The American National Bank of Mount Pleasant'),
(752, 'The American National Bank of Texas'),
(753, 'The Atlanta National Bank'),
(754, 'The Bank National Association'),
(755, 'The Bank of New York Mellon Trust Company'),
(756, 'The Bradford National Bank of Greenville'),
(757, 'The Brady National Bank'),
(758, 'The Brenham National Bank'),
(759, 'The Camden National Bank'),
(760, 'The Canandaigua National Bank and Trust Company'),
(761, 'The Central National Bank of Poteau'),
(762, 'The Chicago Trust Company'),
(763, 'The Citizens First National Bank of Storm Lake'),
(764, 'The Citizens National Bank'),
(765, 'The Citizens National Bank of Bluffton'),
(766, 'The Citizens National Bank of Hammond'),
(767, 'The Citizens National Bank of Hillsboro'),
(768, 'The Citizens National Bank of Lebanon'),
(769, 'The Citizens National Bank of McConnelsville'),
(770, 'The Citizens National Bank of Meridian'),
(771, 'The Citizens National Bank of Park Rapids'),
(772, 'The Citizens National Bank of Quitman'),
(773, 'The Citizens National Bank of Somerset'),
(774, 'The Citizens National Bank of Woodsfield'),
(775, 'The City National Bank and Trust Company of Lawton, Oklahoma'),
(776, 'The City National Bank of Colorado City'),
(777, 'The City National Bank of Metropolis'),
(778, 'The City National Bank of San Saba'),
(779, 'The City National Bank of Sulphur Springs'),
(780, 'The City National Bank of Taylor'),
(781, 'The Clinton National Bank'),
(782, 'The Commercial National Bank of Brady'),
(783, 'The Conway National Bank'),
(784, 'The Delaware National Bank of Delhi'),
(785, 'The Ephrata National Bank'),
(786, 'The Fairfield National Bank'),
(787, 'The Falls City National Bank'),
(788, 'The Farmers and Merchants National Bank of Fairview'),
(789, 'The Farmers and Merchants National Bank of Nashville'),
(790, 'The Farmers\' National Bank of Canfield'),
(791, 'The Farmers National Bank of Danville'),
(792, 'The Farmers National Bank of Emlenton'),
(793, 'The Farmers National Bank of Lebanon'),
(794, 'The Fayette County National Bank of Fayetteville'),
(795, 'The First Central National Bank of St. Paris'),
(796, 'The First Citizens National Bank of Upper Sandusky'),
(797, 'The First Farmers National Bank of Waurika'),
(798, 'The First Liberty National Bank'),
(799, 'The First National Bank'),
(800, 'The First National Bank & Trust Co. of Iron Mountain'),
(801, 'The First National Bank and Trust Co.'),
(802, 'The First National Bank and Trust Company'),
(803, 'The First National Bank and Trust Company of Broken Arrow'),
(804, 'The First National Bank and Trust Company of Miami'),
(805, 'The First National Bank and Trust Company of Newtown'),
(806, 'The First National Bank and Trust Company of Okmulgee'),
(807, 'The First National Bank and Trust Company of Vinita'),
(808, 'The First National Bank at Paris'),
(809, 'The First National Bank at St. James'),
(810, 'The First National Bank in Amboy'),
(811, 'The First National Bank in Carlyle'),
(812, 'The First National Bank in Cooper'),
(813, 'The First National Bank in Creston'),
(814, 'The First National Bank in Falfurrias'),
(815, 'The First National Bank in Marlow'),
(816, 'The First National Bank in Sioux Falls'),
(817, 'The First National Bank in Tremont'),
(818, 'The First National Bank in Trinidad'),
(819, 'The First National Bank of Absecon'),
(820, 'The First National Bank of Allendale'),
(821, 'The First National Bank of Anson'),
(822, 'The First National Bank of Arenzville'),
(823, 'The First National Bank of Aspermont'),
(824, 'The First National Bank of Assumption'),
(825, 'The First National Bank of Ava'),
(826, 'The First National Bank of Ballinger'),
(827, 'The First National Bank of Bangor'),
(828, 'The First National Bank of Bastrop'),
(829, 'The First National Bank of Bellevue'),
(830, 'The First National Bank of Bellville'),
(831, 'The First National Bank of Bemidji'),
(832, 'The First National Bank of Blanchester'),
(833, 'The First National Bank of Brooksville'),
(834, 'The First National Bank of Brownstown'),
(835, 'The First National Bank of Buhl'),
(836, 'The First National Bank of Carmi'),
(837, 'The First National Bank of Cokato'),
(838, 'The First National Bank of Coleraine'),
(839, 'The First National Bank of Dennison'),
(840, 'The First National Bank of Dighton'),
(841, 'The First National Bank of Dozier'),
(842, 'The First National Bank of Dryden'),
(843, 'The First National Bank of Eagle Lake'),
(844, 'The First National Bank of East Texas'),
(845, 'The First National Bank of Eldorado'),
(846, 'The First National Bank of Elmer'),
(847, 'The First National Bank of Ely'),
(848, 'The First National Bank of Evant'),
(849, 'The First National Bank of Fairfax'),
(850, 'The First National Bank of Fleming'),
(851, 'The First National Bank of Fletcher'),
(852, 'The First National Bank of Floydada'),
(853, 'The First National Bank of Fort Smith'),
(854, 'The First National Bank of Frederick'),
(855, 'The First National Bank of Germantown'),
(856, 'The First National Bank of Gilbert'),
(857, 'The First National Bank of Gordon'),
(858, 'The First National Bank of Granbury'),
(859, 'The First National Bank of Grayson'),
(860, 'The First National Bank of Groton'),
(861, 'The First National Bank of Hartford'),
(862, 'The First National Bank of Harveyville'),
(863, 'The First National Bank of Hebbronville'),
(864, 'The First National Bank of Henning'),
(865, 'The First National Bank of Hooker'),
(866, 'The First National Bank of Hope'),
(867, 'The First National Bank of Hughes Springs'),
(868, 'The First National Bank of Hugo'),
(869, 'The First National Bank of Hutchinson'),
(870, 'The First National Bank of Izard County'),
(871, 'The First National Bank of Jeanerette'),
(872, 'The First National Bank of Johnson'),
(873, 'The First National Bank of Kemp'),
(874, 'The First National Bank of Lacon'),
(875, 'The First National Bank of Lawrence County at Walnut Ridge'),
(876, 'The First National Bank of Le Center'),
(877, 'The First National Bank of Lindsay'),
(878, 'The First National Bank of Lipan'),
(879, 'The First National Bank of Litchfield'),
(880, 'The First National Bank of Livingston'),
(881, 'The First National Bank of Long Island'),
(882, 'The First National Bank of Louisburg'),
(883, 'The First National Bank of Manchester'),
(884, 'The First National Bank of Manning'),
(885, 'The First National Bank of McConnelsville'),
(886, 'The First National Bank of McIntosh'),
(887, 'The First National Bank of Mertzon'),
(888, 'The First National Bank of Middle Tennessee'),
(889, 'The First National Bank of Milaca'),
(890, 'The First National Bank of Monterey'),
(891, 'The First National Bank of Moody'),
(892, 'The First National Bank of Moose Lake'),
(893, 'The First National Bank of Mount Dora'),
(894, 'The First National Bank of Nevada, Missouri'),
(895, 'The First National Bank of Okawville'),
(896, 'The First National Bank of Oneida'),
(897, 'The First National Bank of Orwell'),
(898, 'The First National Bank of Osakis'),
(899, 'The First National Bank of Ottawa'),
(900, 'The First National Bank of Pandora'),
(901, 'The First National Bank of Peterstown'),
(902, 'The First National Bank of Primghar'),
(903, 'The First National Bank of Proctor'),
(904, 'The First National Bank of Quitaque'),
(905, 'The First National Bank of Raymond'),
(906, 'The First National Bank of Russell Springs'),
(907, 'The First National Bank of Sandoval'),
(908, 'The First National Bank of Scott City'),
(909, 'The First National Bank of Sedan'),
(910, 'The First National Bank of Shiner'),
(911, 'The First National Bank of Sonora'),
(912, 'The First National Bank of South Miami'),
(913, 'The First National Bank of Sparta'),
(914, 'The First National Bank of Spearville'),
(915, 'The First National Bank of St. Ignace'),
(916, 'The First National Bank of Stanton'),
(917, 'The First National Bank of Sterling City'),
(918, 'The First National Bank of Stigler'),
(919, 'The First National Bank of Sycamore'),
(920, 'The First National Bank of Syracuse'),
(921, 'The First National Bank of Tahoka'),
(922, 'The First National Bank of Tom Bean'),
(923, 'The First National Bank of Trinity'),
(924, 'The First National Bank of Wakefield'),
(925, 'The First National Bank of Waseca'),
(926, 'The First National Bank of Waterloo'),
(927, 'The First National Bank of Waverly'),
(928, 'The First National Bank of Waynesboro'),
(929, 'The First National Bank of Weatherford'),
(930, 'The First National Bank of Williamson'),
(931, 'The First, A National Banking Association'),
(932, 'The Fisher National Bank'),
(933, 'The Glenmede Trust Company'),
(934, 'The Goldman Sachs Trust Company'),
(935, 'The Granger National Bank'),
(936, 'The Granville National Bank'),
(937, 'The Havana National Bank'),
(938, 'The Home National Bank of Thorntown'),
(939, 'The Hondo National Bank'),
(940, 'The Honesdale National Bank'),
(941, 'The Huntington National Bank'),
(942, 'The Idabel National Bank'),
(943, 'The Jacksboro National Bank'),
(944, 'The Karnes County National Bank of Karnes City'),
(945, 'The Lamesa National Bank'),
(946, 'The Lemont National Bank'),
(947, 'The Liberty National Bank in Paris'),
(948, 'The Lincoln National Bank of Hodgenville'),
(949, 'The Litchfield National Bank'),
(950, 'The Lyons National Bank'),
(951, 'The Malvern National Bank'),
(952, 'The Marion National Bank'),
(953, 'The Merchants National Bank'),
(954, 'The Miners National Bank of Eveleth'),
(955, 'The Mint National Bank'),
(956, 'The National Bank of Adams County of West Union'),
(957, 'The National Bank of Andrews'),
(958, 'The National Bank of Blacksburg'),
(959, 'The National Bank of Coxsackie'),
(960, 'The National Bank of Indianapolis'),
(961, 'The National Bank of Malvern'),
(962, 'The National Bank of Middlebury'),
(963, 'The National Bank of Texas at Fort Worth'),
(964, 'The National Capital Bank of Washington'),
(965, 'The National Grand Bank of Marblehead'),
(966, 'The National Iron Bank'),
(967, 'The Neffs National Bank'),
(968, 'The Northumberland National Bank'),
(969, 'The Old Exchange National Bank of Okawville'),
(970, 'The Old Point National Bank of Phoebus'),
(971, 'The Park National Bank'),
(972, 'The Pauls Valley National Bank'),
(973, 'The Pennsville National Bank'),
(974, 'The Peoples National Bank of Checotah'),
(975, 'The Perryton National Bank'),
(976, 'The Peshtigo National Bank'),
(977, 'The Private Trust Company'),
(978, 'The Putnam County National Bank of Carmel'),
(979, 'The Riddell National Bank'),
(980, 'The Salyersville National Bank'),
(981, 'The Santa Anna National Bank'),
(982, 'The Security National Bank of Enid'),
(983, 'The Security National Bank of Sioux City, Iowa'),
(984, 'The State National Bank of Big Spring'),
(985, 'The State National Bank of Groom'),
(986, 'The Stephenson National Bank and Trust'),
(987, 'The Tipton Latham Bank'),
(988, 'The Trust Company of Toledo'),
(989, 'The Turbotville National Bank'),
(990, 'The University National Bank of Lawrence'),
(991, 'The Upstate National Bank'),
(992, 'The Vinton County National Bank'),
(993, 'The Waggoner National Bank of Vernon'),
(994, 'The Yoakum National Bank'),
(995, 'Thomasville National Bank'),
(996, 'TIB The Independent BankersBank'),
(997, 'Tioga State Bank'),
(998, 'Titan Bank'),
(999, 'Touchmark National Bank'),
(1000, 'Town Bank'),
(1001, 'Town-Country National Bank'),
(1002, 'Transact Bank'),
(1003, 'Tri City National Bank'),
(1004, 'Triad Bank'),
(1005, 'Trinity Bank'),
(1006, 'Trustmark National Bank'),
(1007, 'U.S. Bank National Association'),
(1008, 'U.S. Bank Trust Company'),
(1009, 'U.S. Bank Trust National Association'),
(1010, 'U.S. Bank Trust National Association SD'),
(1011, 'UMB Bank & Trust'),
(1012, 'UMB Bank'),
(1013, 'Union National Bank'),
(1014, 'United Bank & Trust National Association'),
(1015, 'United Midwest Savings Bank'),
(1016, 'United National Bank'),
(1017, 'Unity National Bank of Houston'),
(1018, 'Valley National Bank'),
(1019, 'Vanguard National Trust Company'),
(1020, 'Varo Bank'),
(1021, 'Vast Bank'),
(1022, 'VeraBank'),
(1023, 'Viking Bank'),
(1024, 'Village Bank & Trust'),
(1025, 'Virginia National Bank'),
(1026, 'Vision Bank'),
(1027, 'Washington Federal Bank'),
(1028, 'Waterford Bank'),
(1029, 'Webster Bank'),
(1030, 'Wellington Trust Company'),
(1031, 'Wells Fargo Bank South Central'),
(1032, 'Wells Fargo Bank'),
(1033, 'Wells Fargo Delaware Trust Company'),
(1034, 'Wells Fargo National Bank West'),
(1035, 'Wells Fargo Trust Company'),
(1036, 'West Texas National Bank'),
(1037, 'West Valley National Bank'),
(1038, 'Western National Bank'),
(1039, 'Western National Bank'),
(1040, 'Western National Bank'),
(1041, 'Wheaton Bank & Trust Company'),
(1042, 'Wheaton College Trust Company'),
(1043, 'Wilmington Trust'),
(1044, 'Winter Park National Bank'),
(1045, 'Wintrust Bank'),
(1046, 'WNB Financial'),
(1047, 'Woodforest National Bank'),
(1048, 'Woodlands National Bank'),
(1049, 'Worthington National Bank'),
(1050, 'Zapata National Bank'),
(1051, 'Zions Bancorporation');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(150) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(150) DEFAULT NULL,
  `firstname` varchar(150) DEFAULT NULL,
  `middlename` varchar(150) DEFAULT NULL,
  `lastname` varchar(150) DEFAULT NULL,
  `dob` varchar(150) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `passport` varchar(150) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `state` varchar(150) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `accountnumber` varchar(150) DEFAULT NULL,
  `accountbalance` double NOT NULL,
  `accounttype` varchar(150) DEFAULT NULL,
  `securityquestion` varchar(150) DEFAULT NULL,
  `answer` varchar(150) DEFAULT NULL,
  `ssn` int(150) DEFAULT NULL,
  `maidensname` varchar(150) DEFAULT NULL,
  `status` varchar(150) DEFAULT NULL,
  `datecreated` varchar(150) DEFAULT NULL,
  `approve` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) DEFAULT NULL,
  `dayOFBirth` varchar(50) DEFAULT NULL,
  `monthOfBirth` varchar(50) DEFAULT NULL,
  `yearOfBirth` varchar(50) DEFAULT NULL,
  `zipcode` varchar(50) DEFAULT NULL,
  `occupation` varchar(50) DEFAULT NULL,
  `income` varchar(50) DEFAULT NULL,
  `nextOfKIn` varchar(50) DEFAULT NULL,
  `secretCode` varchar(50) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `tfa` varchar(20) DEFAULT NULL,
  `usercurrency` varchar(50) NOT NULL DEFAULT 'USD',
  `next_address` varchar(150) DEFAULT NULL,
  `next_relationship` varchar(150) DEFAULT NULL,
  `next_age` varchar(150) DEFAULT NULL,
  `securityquestion2` varchar(150) DEFAULT NULL,
  `answer2` varchar(150) DEFAULT NULL,
  `email_verify` int(20) NOT NULL DEFAULT 0,
  `email_code` varchar(200) DEFAULT NULL,
  `cot` varchar(50) NOT NULL DEFAULT '00',
  `imf` varchar(50) NOT NULL DEFAULT '00',
  `blocktransfer` int(11) NOT NULL DEFAULT 1,
  `allowtransfer` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `phone`, `firstname`, `middlename`, `lastname`, `dob`, `gender`, `passport`, `address`, `state`, `city`, `country`, `accountnumber`, `accountbalance`, `accounttype`, `securityquestion`, `answer`, `ssn`, `maidensname`, `status`, `datecreated`, `approve`, `title`, `dayOFBirth`, `monthOfBirth`, `yearOfBirth`, `zipcode`, `occupation`, `income`, `nextOfKIn`, `secretCode`, `nickname`, `tfa`, `usercurrency`, `next_address`, `next_relationship`, `next_age`, `securityquestion2`, `answer2`, `email_verify`, `email_code`, `cot`, `imf`, `blocktransfer`, `allowtransfer`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin@gmail.com', '+(256) 5421 451', 'BANK', ' MANAGER', 'FIRST INLAND', '', '', '', '', '', '', '', '', 0, '', '', '', 0, '', 'active', '', 1, '', '', '', '', '', '', '', '', '', '', '', 'USD', '', '', '', '', '', 0, '0', '1999', '1999', 1, 1),
(22, NULL, 'e10adc3949ba59abbe56e057f20f883e', 'johndoe12@yopmail.com', '+12345678910', 'John', 'Demo', 'Doe', '10/28/1999', NULL, NULL, '6520 State Rd 2848, Charlotte, NC 28213', 'California', 'Acebedo', 'United States', '7836531259', 16340, 'Crypto Currency Account', NULL, NULL, NULL, NULL, 'active', ' 31 Jan 2022 14:54 pm', 1, NULL, NULL, NULL, NULL, '28213', NULL, NULL, NULL, '7546', NULL, 'active', 'USD', NULL, NULL, NULL, NULL, NULL, 1, 'MHeklLBH9orRn5RNvDahszkyzud8WSKPyou83Qe1kDltFoS8A1JmL4uC', '5205', '5205', 1, 1),
(23, NULL, '24569672eaa4127cd5ebd8935298cca0', 'ernestchuks2000@gmail.com', '+2348131528695', 'John', 'Enny', 'doe', '06/10/1997', NULL, 'LEGIMG202304290251-WNKQ3.jpg', '12 balogun street abule oja, yaba', 'Please select a region.', 'lagos', 'Nigeria', '8026081121', 17829.97, 'Savings Account', NULL, NULL, NULL, NULL, 'active', ' 29 Apr 2023 02:51 am', 1, NULL, NULL, NULL, NULL, '23401', 'Self Employed', '$15,000.00 - $20,000.00', NULL, '1234', NULL, NULL, 'USD', NULL, NULL, NULL, NULL, NULL, 1, 'jrcH9GGeEioMsCEpZzBOg0AJlItxe4UCx5AiWqeytKF2VTxCxdiTfZ3P', '52118041', '34579585', 1, 1),
(24, NULL, '2a443e90d4f42da5f7e83d63d2ff05f6', 'justinealex844@gmail.com', '1234568976', 'Efrain', 'S cott', 'L.', '05/01/2001', NULL, 'LEGIMG202305011050-LVIJK.jpeg', '4632 Alliance Rd Ravenna', 'OH', 'Ohio', 'United States of America', '8641312821', 0, 'Savings Account', NULL, NULL, NULL, NULL, 'active', ' 01 May 2023 10:50 am', 1, NULL, NULL, NULL, NULL, '44266', 'Self Employed', '$2,000.00 - $5,000.00', NULL, '0102', NULL, NULL, 'USD', NULL, NULL, NULL, NULL, NULL, 1, 'Ry6w3rD5jHb6wMo9mbSVCOuhFoEsAC7Y26O1pdKKYRDxyHWDWrtbfe1N', '33113262', '55604974', 1, 1),
(25, NULL, 'f717efba3438e640d1ad10f787c85bdb', 'nelliebanks308@gmail.com', '+13234357118', 'Nellie', 'banks', 'ajaja', '05/15/2023', NULL, 'LEGIMG202305012229-LGACD.jpg', '1405 station street', 'California', 'Dublin', 'United States of America', '7636040756', 0, 'Checking Account', NULL, NULL, NULL, NULL, 'active', ' 01 May 2023 22:29 pm', 1, NULL, NULL, NULL, NULL, '94568', 'Self Employed', '$1,000.00 - $2,000.00', NULL, '1234', NULL, NULL, 'USD', NULL, NULL, NULL, NULL, NULL, 1, 'DAYv47ox1QklkOccLkopS8O1qEqzYdwnDAa5cj4V6fzZWZnim7fdR8wn', '81067642', '12280050', 1, 1),
(26, NULL, '37151e35f35c436b86ee70ab7ef8bdc7', 'desmondokoroji59@gmail.com', '+2347063095013', 'Frank', 'Joseph', 'Mark', '12/02/1975', NULL, 'LEGIMG202305021559-L93TS.jpg', 'Tailor street No 22', 'Texas', 'Houston', 'United States of America', '5874728438', 10000, 'Checking Account', NULL, NULL, NULL, NULL, 'active', ' 02 May 2023 15:59 pm', 1, NULL, NULL, NULL, NULL, '310001', 'Self Employed', '$1,000.00 - $2,000.00', NULL, '2021', NULL, NULL, 'USD', NULL, NULL, NULL, NULL, NULL, 0, 'D0MmjH706EIMZm0VHH0tDBqNhPI77T6A0t1g5FrWHl54zIKMBIDhI4oX', '76254182', '92761200', 1, 1),
(27, NULL, 'e0fa902c55dc8938e6b8a485317e1b73', 'Irenecampillo592@outlook.com', '09920181991', 'Dol', 'Frod', 'Hop', '05/08/2023', NULL, 'LEGIMG202305051851-WVWCH.jpeg', '72 Aggresive road, oppression city', 'Jajk', 'Jsjak', 'Angola', '9144049054', 0, 'Savings Account', NULL, NULL, NULL, NULL, 'active', ' 05 May 2023 18:51 pm', 1, NULL, NULL, NULL, NULL, '919178', 'Self Employed', '$15,000.00 - $20,000.00', NULL, '0069', NULL, NULL, 'USD', NULL, NULL, NULL, NULL, NULL, 0, 'jY1aIhIpGre87GhrkVuYCZOamG7IgmDXqO0D07cGEfatP2vyrzB9PjFw', '79226118', '96649044', 1, 1),
(28, NULL, '7c6fd9bbe004ecb61e2271c9e13f164a', 'philipgraham1965@zoho.com', '8103545358', 'Philip', 'Graham', 'Quech', '04/27/1960', NULL, 'LEGIMG202305052121-L5PJV.jpeg', '1324 Mount Curve Ave', 'Minnesota ', 'Minneapolis ', 'United States of America', '2444365209', 0, 'Checking Account', NULL, NULL, NULL, NULL, 'active', ' 05 May 2023 21:21 pm', 1, NULL, NULL, NULL, NULL, '55403', 'Self Employed', '$5,000.00 - $10,000.00', NULL, '1960', NULL, NULL, 'USD', NULL, NULL, NULL, NULL, NULL, 0, 'r9Mpgd1In28Tzwst0ys8vXgR5GO1Sup4RTNXKx9vN4Pbkx8QwLUWHn1t', '80128118', '17536142', 1, 1),
(29, NULL, '3ed19442f35a1e37a126740cc4c103b0', '01ballerballer@gmail.com', '07044335876', 'Margarita', 'Fadeyka', 'Fadeyka', '03/08/2000', NULL, 'LEGIMG202305060924-FCF4M.jpg', '1 misouri', 'Missouri', 'St louis', 'United States of America', '1987518790', 0, 'Fixed Deposit Account', NULL, NULL, NULL, NULL, 'active', ' 06 May 2023 09:24 am', 1, NULL, NULL, NULL, NULL, '63001', 'Self Employed', '$15,000.00 - $20,000.00', NULL, '4283', NULL, NULL, 'USD', NULL, NULL, NULL, NULL, NULL, 1, 'OQ5a6EBTBnhPAYpGXw13OeQaJb0fOpJMttBrlLq6uUipVq5illIUgzNl', '00132895', '72471567', 1, 1),
(30, NULL, '319f59bc863a4eb002da1934901aebb4', 'felixokoro@gmail.com', '08085517555', 'matthew', 'okoro', 'james', '12/03/1994', NULL, 'LEGIMG202305131428-KUJQ6.jpg', '15 kumuti street eku', 'Delta State', 'Warri', 'Nigeria', '1066760431', 0, 'Checking Account', NULL, NULL, NULL, NULL, 'active', ' 13 May 2023 14:28 pm', 0, NULL, NULL, NULL, NULL, '33013', 'Self Employed', '$300,000.00 - $1,000,000.00', NULL, '1111', NULL, NULL, 'USD', NULL, NULL, NULL, NULL, NULL, 0, 'pabyKhxdRx26u4Iwe50DPmXi8kB3Tzkqx7bqyXsBZI1zihiMh4tiPGlU', '40570054', '95746853', 1, 1),
(31, NULL, '319f59bc863a4eb002da1934901aebb4', 'shaunthomassrn007@gmail.com', '08085517566', 'matthew', 'okoro', 'james', '12/03/1994', NULL, 'LEGIMG202305131431-TLXTN.jpg', '15 kumuti street eku', 'Delta State', 'Warri', 'Nigeria', '6164292016', 0, 'Checking Account', NULL, NULL, NULL, NULL, 'active', ' 13 May 2023 14:31 pm', 1, NULL, NULL, NULL, NULL, '33013', 'Self Employed', '$300,000.00 - $1,000,000.00', NULL, '1111', NULL, NULL, 'USD', NULL, NULL, NULL, NULL, NULL, 0, 'L5UUnVwIxIsqhkY7PniVXd9q5jXCiVkLKmwXAdvC9rPV1Nwh07npiF7i', '71356586', '27181586', 1, 1),
(32, NULL, 'f7cd762688947c521890680ca9d545c6', 'kellyripakelly@gmail.com', '4193590213', 'KELLY', 'RIPA', 'B', '03/23/1999', NULL, 'LEGIMG202305210841-SU9YM.jpg', '2545 BLVD RD', 'OH', 'TOLEDO', 'United States of America', '4322450300', 0, 'Crypto Currency Account', NULL, NULL, NULL, NULL, 'active', ' 21 May 2023 08:41 am', 0, NULL, NULL, NULL, NULL, '42252', 'Self Employed', '$25,000.00 - $30,000.00', NULL, '5050', NULL, NULL, 'USD', NULL, NULL, NULL, NULL, NULL, 1, 'eAeOnSZTpacdpv1GFfRinNPjgN3MDLwnkZYtKwmBtS35uhTwR9ZmVJOj', '56928761', '52804077', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `visual_cards`
--

CREATE TABLE `visual_cards` (
  `id` int(11) NOT NULL,
  `userid` int(80) DEFAULT NULL,
  `status` varchar(80) DEFAULT NULL,
  `balance` varchar(80) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `phone` varchar(80) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `card_type` varchar(80) DEFAULT NULL,
  `datecreated` varchar(80) DEFAULT NULL,
  `fullname` varchar(150) DEFAULT NULL,
  `card_number` varchar(80) DEFAULT NULL,
  `expiry_date` varchar(80) DEFAULT NULL,
  `ccv` int(50) DEFAULT NULL,
  `question` varchar(150) DEFAULT NULL,
  `answer` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(11) NOT NULL,
  `coin` varchar(150) NOT NULL,
  `datecreated` varchar(50) NOT NULL,
  `lastdeposit` text NOT NULL,
  `userid` int(20) NOT NULL,
  `balance` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `coin`, `datecreated`, `lastdeposit`, `userid`, `balance`) VALUES
(11, 'BTC', '01 May 2023, 11:22 AM', '01 May 2023, 11:22 AM', 23, '0.00350434');

-- --------------------------------------------------------

--
-- Table structure for table `wire`
--

CREATE TABLE `wire` (
  `id` int(11) NOT NULL,
  `userid` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `zipcode` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `iban` varchar(50) DEFAULT NULL,
  `swiftcode` varchar(50) DEFAULT NULL,
  `account` varchar(50) DEFAULT NULL,
  `accountholder` varchar(75) DEFAULT NULL,
  `accounttype` varchar(50) DEFAULT NULL,
  `bankname` varchar(75) DEFAULT NULL,
  `datecreated` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wire`
--

INSERT INTO `wire` (`id`, `userid`, `country`, `state`, `city`, `address`, `zipcode`, `email`, `phone`, `fullname`, `type`, `iban`, `swiftcode`, `account`, `accountholder`, `accounttype`, `bankname`, `datecreated`) VALUES
(8, '22', 'Syrian Arab Republic', 'Aleppo', 'Aleppo', 'Military Head Office', '90215', 'johndoe13@yopmail.com', '+234945785215', 'John Doe Recipient', 'International transfer', '123456DEMO', '4EMO123SWIFT', '76756564545', 'John Doe', 'Savings', 'Citibank, N.A.', '31 Jan 2022'),
(9, '23', 'United States of America', 'ca', 'texas', 'jhkgjh jhkgjh gkji jkhgj kljbjk', '10013', 'ernestchukwudi2000@gmail.com', '+179857464648', 'Rolex Milly', 'International transfer', '8776960965', '3785849', '1657697078', 'Rolex Milly', 'Savings', 'The ADIB (UK) Ltd', '01 May 2023');

-- --------------------------------------------------------

--
-- Table structure for table `wire_transfer`
--

CREATE TABLE `wire_transfer` (
  `id` int(11) NOT NULL,
  `userid` varchar(150) DEFAULT NULL,
  `recipientid` varchar(150) DEFAULT NULL,
  `ref` varchar(150) DEFAULT NULL,
  `fullname` varchar(150) DEFAULT NULL,
  `accountname` varchar(150) DEFAULT NULL,
  `bankname` varchar(150) DEFAULT NULL,
  `accountnumber` varchar(150) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `amount` varchar(150) DEFAULT NULL,
  `dated` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wire_transfer`
--

INSERT INTO `wire_transfer` (`id`, `userid`, `recipientid`, `ref`, `fullname`, `accountname`, `bankname`, `accountnumber`, `description`, `address`, `amount`, `dated`) VALUES
(14, '22', '8', 'MOR/PDYLS6ECG-0122', 'John Doe Recipient', 'John Doe', 'Citibank, N.A.', '76756564545', 'For site', 'Aleppo, Aleppo, 90215, Syrian Arab Republic', '100', '31 Jan 2022, 3:52 pm'),
(15, '22', '8', 'MOR/AQPRIYDKY-0222', 'John Doe Recipient', 'John Doe', 'Citibank, N.A.', '76756564545', 'Part payment for site', 'Aleppo, Aleppo, 90215, Syrian Arab Republic', '5650', '07 Feb 2022, 2:38 pm'),
(16, '23', '9', 'LEG/OXYUWJAPT-0523', 'Rolex Milly', 'Rolex Milly', 'The ADIB (UK) Ltd', '1657697078', 'monthly due', 'texas, ca, 10013, United States of America', '2000', '01 May 2023, 1:46 pm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountname`
--
ALTER TABLE `accountname`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `check_deposit`
--
ALTER TABLE `check_deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cryptos`
--
ALTER TABLE `cryptos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crypto_deposits`
--
ALTER TABLE `crypto_deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crypto_withdrawals`
--
ALTER TABLE `crypto_withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `getbank`
--
ALTER TABLE `getbank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kyc`
--
ALTER TABLE `kyc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_application`
--
ALTER TABLE `loan_application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paybill`
--
ALTER TABLE `paybill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payee`
--
ALTER TABLE `payee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smtp_setting`
--
ALTER TABLE `smtp_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ukbanks`
--
ALTER TABLE `ukbanks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usbank`
--
ALTER TABLE `usbank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visual_cards`
--
ALTER TABLE `visual_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wire`
--
ALTER TABLE `wire`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wire_transfer`
--
ALTER TABLE `wire_transfer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountname`
--
ALTER TABLE `accountname`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `check_deposit`
--
ALTER TABLE `check_deposit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cryptos`
--
ALTER TABLE `cryptos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `crypto_deposits`
--
ALTER TABLE `crypto_deposits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `crypto_withdrawals`
--
ALTER TABLE `crypto_withdrawals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `getbank`
--
ALTER TABLE `getbank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kyc`
--
ALTER TABLE `kyc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `loan_application`
--
ALTER TABLE `loan_application`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=364;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `paybill`
--
ALTER TABLE `paybill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payee`
--
ALTER TABLE `payee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `reply`
--
ALTER TABLE `reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smtp_setting`
--
ALTER TABLE `smtp_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `support`
--
ALTER TABLE `support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `ukbanks`
--
ALTER TABLE `ukbanks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=319;

--
-- AUTO_INCREMENT for table `usbank`
--
ALTER TABLE `usbank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1052;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `visual_cards`
--
ALTER TABLE `visual_cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wire`
--
ALTER TABLE `wire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wire_transfer`
--
ALTER TABLE `wire_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
