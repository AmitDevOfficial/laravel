-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2025 at 10:49 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laraproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `mobile` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `emp_id` varchar(65) NOT NULL,
  `fullName` varchar(100) DEFAULT NULL,
  `email` varchar(65) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `doj` date DEFAULT NULL,
  `gender` enum('M','F','O') DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `emp_id`, `fullName`, `email`, `address`, `doj`, `gender`, `status`, `image`, `created_at`, `updated_at`) VALUES
(0, '5024', 'Rahul Vishwakarma', 'rahul@gmail.com', 'Rewa', '2025-09-26', 'M', 1, NULL, '2025-09-26 05:56:02', '2025-09-26 05:56:02'),
(2, '9962', 'Amit Vishwakarma', 'vishamit8833@gmail.com', 'shree nagar', '2025-09-27', 'M', 1, NULL, '2025-09-26 05:33:45', '2025-09-26 05:33:45'),
(3, '5630', 'Ankit vishwakarma', 'vishamit8833@gmail.com', 'shree nagar', '2025-09-27', 'M', 1, NULL, '2025-09-26 05:34:10', '2025-09-26 05:34:10'),
(4, '9691', 'Rahul Vishwakarma', 'rahul@gmail.com', 'Rewa', '2025-09-26', 'M', 1, NULL, '2025-09-26 05:37:12', '2025-09-26 05:37:12'),
(6, '4499', 'Anuj Sharma', 'anuj@gmail.com', 'Bhopal', '2025-09-27', 'O', 1, NULL, '2025-09-26 06:03:26', '2025-09-29 22:57:16'),
(7, '9795', 'Damini Verma', 'dam@gmail.com', 'Dewas', '2025-09-26', 'F', 1, NULL, '2025-09-26 23:54:44', '2025-09-26 23:54:44'),
(8, '7535', 'Kavita Lamba', 'kavita@gmail.com', 'leh', '2025-10-31', 'F', 1, NULL, '2025-09-30 22:49:54', '2025-09-30 22:49:54'),
(9, '9956', NULL, 'hello@gmail.com', 'hello world', '2025-10-31', 'O', 1, NULL, '2025-10-01 00:54:08', '2025-10-01 00:54:08'),
(10, '8420', 'Testing Seeder', 'seeder@gmail.com', NULL, '2025-10-03', 'M', 1, NULL, '2025-10-03 01:08:55', '2025-10-03 01:08:55'),
(12, '2675', 'Ava Adams PhD', 'louvenia.borer@yahoo.com', '63319 Gilbert Divide\nEast Shakiramouth, NJ 79611', '2017-01-02', 'M', 1, NULL, '2025-10-03 23:11:08', '2025-10-03 23:11:08'),
(13, '5607', 'Addie Cronin', 'larkin.jacey@hotmail.com', '12579 Abbott Circle\nPort Yasmeen, FL 77730', '1977-11-30', 'M', 1, NULL, '2025-10-03 23:14:54', '2025-10-03 23:14:54'),
(14, '2526', 'Weston Grady V', 'murazik.sydnie@hotmail.com', '8659 Ebert Branch Apt. 916\nJaimestad, SC 46097-8268', '1993-06-01', 'M', 1, NULL, '2025-10-03 23:15:41', '2025-10-03 23:15:42'),
(15, '2314', 'Amy Tremblay PhD', 'jacques03@hintz.com', '49386 Antonia Parkways\nNorth Halleland, OR 86694-0567', '1989-12-02', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(16, '2565', 'Lee Reichert', 'schuppe.misty@farrell.com', '4011 Hickle Via\nLake Saigeton, WY 18933', '1994-08-09', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(17, '8869', 'Brant Gaylord', 'sabbott@hotmail.com', '50711 Robel Valley\nDarienburgh, MI 43686', '2014-09-29', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(18, '1291', 'Lilliana Luettgen', 'ohane@ohara.info', '724 Schoen Pass\nKaelamouth, PA 12864', '2006-06-03', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(19, '2093', 'Brooklyn Hermiston', 'bwalter@wintheiser.com', '69033 Rosemary Pine Suite 140\nReeceshire, NY 32138', '2021-09-05', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(20, '8841', 'Colby Hyatt', 'fadel.alexie@hotmail.com', '16522 Kara Locks Suite 382\nVonfort, NJ 52327-4945', '2003-09-14', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(21, '9814', 'Melissa Ryan IV', 'feest.rosalind@schultz.info', '62516 Emmerich Manor Suite 230\nNorth Genevieve, KS 03896', '2010-09-30', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(22, '8297', 'Cierra Glover', 'ystreich@hotmail.com', '15596 Therese Islands\nWest Zechariahton, CO 40367-8736', '1976-07-15', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(23, '2487', 'Terrill Abshire', 'sgrant@gmail.com', '3143 Wava Land Suite 578\nNorth Sophieport, OR 45006', '1978-07-30', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(24, '4030', 'Eloise Veum', 'howe.maya@balistreri.com', '3996 Champlin Locks Apt. 523\nWest Yvetteburgh, UT 34245', '1997-11-07', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(25, '9626', 'Dagmar Thompson', 'durward.wiza@hotmail.com', '982 Schmidt Ville Apt. 981\nVernstad, VA 42242-9515', '1971-02-05', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(26, '9891', 'Merlin Paucek', 'jrosenbaum@yahoo.com', '17592 Jamal Drive\nLockmanfort, TX 50321-0103', '2006-02-06', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(27, '1391', 'Russ Huel', 'brando.reinger@gmail.com', '730 Russel Plaza Apt. 705\nNew Alayna, AZ 58825-4489', '1994-01-31', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(28, '1691', 'Fred Hoeger II', 'vlindgren@kuhic.org', '279 Sonia Burg\nNorth Patsyshire, ID 52101', '1989-03-11', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(29, '3481', 'Elwyn Wintheiser DVM', 'pcrona@franecki.net', '2545 Evangeline Fall Suite 210\nOralchester, WY 70385-9385', '1983-02-21', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(30, '4211', 'Dr. Rod Kertzmann III', 'purdy.yesenia@cronin.net', '265 O\'Conner Cliffs Suite 413\nSouth Quintenside, ID 52841-5045', '2020-05-24', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(31, '4459', 'Casper Brown', 'rhoppe@watsica.net', '22586 Lauretta Inlet\nRusselview, IL 52610-0867', '2010-10-18', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(32, '3257', 'Susanna Williamson DDS', 'heidenreich.keyon@gmail.com', '75720 Nicole Shoals Apt. 628\nVerdiechester, MD 10138', '2003-08-29', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(33, '1453', 'Alize Mertz', 'bruen.josefina@yahoo.com', '776 Reilly Coves Suite 163\nWest Zola, SC 72830', '1975-06-14', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(34, '6326', 'Dr. Ollie Pfannerstill', 'fullrich@yahoo.com', '54092 Dayna Landing\nLangoshfurt, RI 96058-4470', '1975-07-16', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(35, '2374', 'Darion Purdy', 'brannon85@gmail.com', '567 Lucile Gateway\nWest Carsonborough, MA 45850', '2018-05-31', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(36, '5368', 'Pete Kertzmann', 'easter.gleichner@casper.info', '610 Wilhelmine Squares\nKristabury, VA 40900-6806', '2009-11-05', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(37, '9771', 'Prof. Kennith Mayer IV', 'hill.golda@nikolaus.biz', '913 Hackett Gateway\nWest Juanitaland, MD 23142', '2017-08-19', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(38, '2808', 'Josh Dooley', 'brook.breitenberg@gmail.com', '4892 Stracke Meadow Suite 023\nForestton, UT 87638-4602', '2011-08-13', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(39, '4279', 'Justine McClure', 'barrows.shania@gmail.com', '616 Easton Ford\nWest Rosendo, MO 46122-0483', '1985-01-08', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(40, '8910', 'Crystel Lind', 'hfeeney@hotmail.com', '241 Bauch Oval\nTracyland, HI 24364', '1988-08-20', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(41, '3814', 'Dr. Janick Morissette', 'robyn62@yahoo.com', '593 Riley Ridges\nLeoramouth, MO 00454-1665', '1976-06-07', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(42, '1621', 'Mr. Evert Lakin', 'stoltenberg.helene@olson.info', '61390 Skylar Forges\nLake Emely, CT 60314', '2014-09-24', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(43, '2384', 'Adam Schaden Sr.', 'barrows.curt@lind.com', '9923 Benny Mills\nSatterfieldview, MN 82092-8084', '2009-02-16', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(44, '1883', 'Martina Feil', 'heller.alyce@hotmail.com', '200 Herman Summit Suite 027\nNew Troyport, MI 59375-9488', '1979-10-08', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(45, '8334', 'Lourdes Daniel', 'mhermiston@yahoo.com', '39315 Delphia Islands\nSchusterfort, CT 91213', '2021-08-18', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(46, '7673', 'Rylee Cormier', 'afton22@yahoo.com', '800 Kunze Point Apt. 918\nBettybury, MD 64894-1484', '1977-05-26', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(47, '6446', 'Kelly Strosin PhD', 'orlo52@lubowitz.biz', '86827 Brody Groves\nLandenton, ND 60926-2659', '2007-12-14', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(48, '6970', 'Jacinto Littel', 'jleuschke@gmail.com', '6306 Thiel Isle Apt. 046\nEast Erick, CA 90026-6763', '2003-09-08', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(49, '3985', 'Caterina Carroll DVM', 'triston50@beier.com', '811 Hadley Camp Apt. 648\nSouth Janessa, PA 14211', '2021-06-19', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(50, '2727', 'Arely Jaskolski', 'destany06@hotmail.com', '1547 Rodriguez Mills Apt. 470\nLake Billie, MD 91128-3490', '1993-06-06', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(51, '3943', 'Kattie Orn', 'antonio.glover@yahoo.com', '92963 Nelson Fork\nShanellechester, GA 28359', '1988-10-08', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(52, '9042', 'Andreanne Howe', 'annamarie50@nolan.com', '5287 Hansen Station\nNorth Ruben, CT 81784-9390', '2020-12-29', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(53, '4365', 'Edwina Franecki', 'torp.celestino@hotmail.com', '8121 Purdy Shoals Apt. 823\nPort Aniya, KS 62231-4580', '1970-04-20', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(54, '3908', 'Santa Purdy V', 'xjohnston@hotmail.com', '3145 Luettgen Summit\nPort Diamond, IN 54679-7175', '1977-04-16', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(55, '2113', 'Violet Fay', 'vconsidine@lang.info', '4993 Ebert Keys Suite 857\nCaseyshire, DE 77125', '1987-02-13', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(56, '4998', 'Deanna Daugherty I', 'ayden61@hotmail.com', '69016 Yoshiko Union Apt. 010\nPort Mariano, SC 34851-6319', '1999-02-15', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(57, '4002', 'Dr. Lavina Schultz', 'dante.prosacco@douglas.com', '46966 Pfannerstill Islands Suite 327\nIgnatiusville, OR 19214-4424', '1997-01-21', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(58, '9879', 'Margie Russel', 'bartell.cleve@wintheiser.com', '89055 Hills Expressway Suite 945\nPort Desireeland, CO 94307-0669', '2019-08-09', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(59, '6990', 'Miss Jeanne Marks IV', 'gdonnelly@hotmail.com', '184 Considine Turnpike\nWest Deborahburgh, AL 93750-5922', '2011-02-16', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(60, '7572', 'Savion Leannon I', 'colton21@denesik.com', '77833 Annamae Forges\nRutherfordview, SC 21249', '2013-10-04', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(61, '9480', 'Elvis Johns', 'crona.marlon@hotmail.com', '8560 Welch Gateway\nBatzfort, WV 30676-5802', '2006-04-12', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(62, '6897', 'Dr. Jeffrey Prosacco V', 'pbeer@becker.org', '699 Trevion Turnpike\nBerniertown, TN 03748', '2014-07-20', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(63, '2829', 'Mortimer Wintheiser', 'ward.eleanore@welch.com', '9232 Cole Dam Apt. 414\nMohrchester, WY 37815-2698', '1989-09-07', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(64, '1290', 'Orlando Beier', 'lucinda25@mante.info', '1455 Gottlieb Summit\nPort Delpha, AZ 49955', '1997-05-01', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(65, '4051', 'Earl Kessler V', 'koepp.erin@blick.com', '50129 Haley Summit Apt. 129\nIsombury, MD 76467', '1986-10-18', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(66, '3268', 'Prof. Agnes Berge', 'brionna04@gmail.com', '37693 Sawayn Keys\nPort Edgar, MS 96257', '2025-02-26', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(67, '3699', 'Avis Cummings', 'tromp.tatum@altenwerth.com', '449 Schroeder Parkway\nGusikowskiborough, NY 26778', '2020-06-08', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(68, '8264', 'Ms. Maud Upton', 'fgusikowski@yahoo.com', '90397 Quinten Corner Suite 535\nNew Jedidiah, WI 28723', '1978-08-08', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(69, '3191', 'Hope Steuber', 'djast@hirthe.com', '4068 Vidal Valley Apt. 328\nPort Alyceshire, MI 93309', '1971-03-18', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(70, '4721', 'Emmitt Raynor', 'gbecker@hotmail.com', '47253 Danny Burg Apt. 587\nBraunfurt, MN 29345', '2005-03-18', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(71, '3071', 'Annetta Leannon I', 'lucius.mante@hintz.com', '30965 Caroline Common Suite 962\nWest Ginachester, OK 61361', '2001-01-22', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(72, '4303', 'Vita Bruen DVM', 'hermann.helen@abbott.com', '1763 Kory Cove Apt. 743\nSouth Rico, VA 42283-1369', '1997-08-01', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(73, '1578', 'Evan Rath', 'mayert.cortney@hotmail.com', '69861 Morissette Knolls\nFlaviechester, MO 03361', '1992-07-05', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(74, '9781', 'Stanton Pfannerstill', 'krista.moen@stehr.net', '653 Ashleigh Courts\nConnborough, AL 42982', '1986-05-10', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(75, '9280', 'Ms. Laura Graham Jr.', 'cierra18@gmail.com', '54174 Hilpert Ridge\nNew Alanamouth, WV 24851-3822', '2011-03-06', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(76, '1569', 'Mrs. Mary Nolan', 'meda.rosenbaum@parker.com', '36608 Hermann Forest\nKathlynborough, OR 01412', '1994-05-29', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(77, '7873', 'Kiana Bashirian', 'golda.nolan@jaskolski.info', '55404 Alda View Apt. 994\nSchulistchester, ID 39920-8679', '2025-02-28', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(78, '6699', 'Gunnar Towne', 'cathryn45@mcglynn.com', '5115 Keshawn Extension Apt. 226\nTreutelmouth, WV 09656-9920', '1991-08-28', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(79, '1483', 'Fae Bailey II', 'olang@hotmail.com', '542 April Pines Suite 953\nLonzomouth, ND 59655', '2004-04-07', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(80, '9685', 'Enoch Tromp', 'balistreri.carmen@green.com', '348 Itzel Well Apt. 885\nWest Sandyfurt, WV 63285-9675', '1980-06-14', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(81, '9514', 'Deon Reinger', 'barry29@schaden.info', '705 Alexzander Plain Apt. 909\nTerrybury, CO 07341-8835', '2013-03-23', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(82, '2517', 'Keely Quitzon', 'schroeder.jason@yahoo.com', '54838 Kyleigh Road\nNew Fannyland, ME 29422-9682', '2001-01-15', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(83, '3059', 'Ms. Sydnie Upton PhD', 'dibbert.dino@yahoo.com', '756 Halvorson Roads\nEmelyside, AZ 07147-3245', '1999-01-29', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(84, '2346', 'Maxwell Blanda MD', 'schuster.maci@hotmail.com', '94362 Kiehn Streets Suite 054\nKelleyport, ND 91050', '2001-12-29', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(85, '7509', 'Toni Hoppe', 'christelle30@yahoo.com', '5640 Schmitt Center Suite 113\nNorth Ines, DE 70425', '1992-01-15', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(86, '8690', 'Prof. Orin Botsford', 'fbeier@walker.com', '86774 Elvera Island Suite 732\nNew Luzfurt, FL 81366-5002', '1970-07-14', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(87, '2195', 'Felton Lakin', 'marjolaine06@yahoo.com', '5309 Homenick Hill\nJulianbury, SD 13275-1158', '1972-06-03', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(88, '9198', 'Bernardo Stiedemann', 'damaris.sawayn@yahoo.com', '107 Nicholas Terrace\nHildegardville, NH 04497', '1997-10-16', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(89, '4213', 'Prof. Gaston Mante II', 'jakayla.crona@simonis.com', '98423 Katlynn Roads\nWest Ethaburgh, CT 77003', '1997-12-19', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(90, '3470', 'Hershel Braun', 'elza47@gmail.com', '734 Glover Village Suite 299\nGaylordburgh, VA 78694-1099', '1973-09-19', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(91, '2218', 'Marina Luettgen', 'upton.brandt@cremin.com', '448 Giuseppe Park\nNew Caleb, GA 34165-8193', '1976-11-26', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(92, '7870', 'Issac Kertzmann MD', 'thea.frami@gmail.com', '7881 Maverick Terrace Apt. 320\nBriceport, IL 59033-5285', '1979-06-14', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(93, '4413', 'Noah Durgan', 'jo68@connelly.info', '2328 Wallace Vista\nWest Evans, ID 41075-8905', '1994-05-05', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(94, '5636', 'Amber Volkman', 'tcorkery@tromp.org', '89061 Christa Fields Suite 869\nLake Colton, NY 44330-2418', '2019-12-09', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(95, '6328', 'Dr. Alexandre Halvorson', 'maiya34@lemke.info', '129 Ismael Extension Suite 766\nWeststad, IL 93269-8156', '1981-02-05', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(96, '9436', 'Don Botsford', 'madelynn.hettinger@hotmail.com', '80179 Langworth Locks Apt. 608\nWest Elyse, RI 29992-4505', '1979-10-03', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(97, '6788', 'Elissa Nikolaus', 'mafalda.adams@hotmail.com', '4305 VonRueden Square\nSamanthaborough, MD 25175', '1989-07-05', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(98, '8258', 'Edwina Lakin', 'dbailey@hotmail.com', '1901 Corwin Points\nNorth Lindaberg, FL 60610-7388', '1998-01-18', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(99, '4781', 'Mr. Raleigh Kunze Sr.', 'faustino.pacocha@yahoo.com', '820 Carter Divide Apt. 638\nEast Edd, ID 90557-1808', '1971-05-30', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(100, '4833', 'Prof. Zachariah Paucek I', 'winfield81@harris.com', '770 Eriberto Meadows\nSouth Sandrineville, MD 75895-3451', '2024-03-31', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(101, '7736', 'Missouri Lang MD', 'emory.johns@rolfson.biz', '496 Coleman Via\nNew Reannaberg, AZ 00246-8743', '2012-03-20', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(102, '6424', 'Gilbert Nitzsche', 'trantow.alivia@yahoo.com', '8903 Jonathon Divide\nEast Maia, CT 90919', '2004-11-07', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(103, '4295', 'Dr. Verner Altenwerth PhD', 'dgleason@littel.com', '869 Lukas Roads Apt. 431\nNorth Davin, WY 78620', '2010-10-27', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(104, '8677', 'Roberta Kohler', 'ptreutel@fisher.com', '11886 Kuhlman Meadows Suite 629\nEast Hayden, IN 09521', '2024-09-25', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(105, '8018', 'Genesis Mayer', 'duncan.jacobson@hotmail.com', '3359 Champlin Gardens Apt. 630\nEast Hallie, WA 42974-3233', '1976-01-17', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(106, '4881', 'Judge Fisher IV', 'justina10@yahoo.com', '40692 Zella Terrace\nWest Kellyland, MN 20557', '2012-01-28', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(107, '6866', 'Kyler O\'Kon I', 'xstreich@gmail.com', '23919 Antonetta Drive\nNorth Vicentehaven, ID 94049', '1991-03-07', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(108, '2081', 'Krista Corwin', 'lizzie.hintz@adams.com', '34781 Morton Well Suite 808\nRoobshire, NV 11474-7864', '2017-12-03', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(109, '4389', 'Mr. Sam Mueller', 'bonita05@legros.com', '828 Wiza Prairie\nPort Phoebe, UT 05205', '1979-07-08', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(110, '1805', 'Dr. Colton Rohan', 'lavinia40@hansen.net', '21903 O\'Keefe Cape Apt. 206\nRosettafurt, ND 04348-1700', '1982-01-14', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(111, '5452', 'Makayla McCullough', 'gleichner.zachary@maggio.biz', '62000 Edna Loaf\nMarilynebury, TN 79728-0545', '2008-03-02', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(112, '2745', 'Maria Kling', 'ustracke@zieme.biz', '3380 Tremblay Crossing Apt. 306\nBahringerchester, IN 79824-0384', '2005-08-20', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(113, '4719', 'Prof. Aleen Schinner', 'ross94@rippin.com', '1288 Prince Run Apt. 219\nPort Cleveland, NH 15404-1289', '2015-06-03', 'M', 1, NULL, '2025-10-03 23:18:30', '2025-10-03 23:18:30'),
(114, '1696', 'Billo', 'billo@gmail.com', 'Manali', '2025-10-03', 'F', 1, NULL, '2025-10-03 23:18:30', '2025-11-01 13:00:01'),
(115, '3101', 'Surbhi Sharma', 'surbhi@gmail.com', 'Delhi', '2025-10-31', 'F', 1, 'jungle_safari.png', '2025-10-04 02:11:30', '2025-10-04 02:11:30'),
(116, '6324', 'Paro', 'paro@gmail.com', 'Dewas', '2025-10-04', 'F', 1, 'hq720.jpg', '2025-10-04 02:13:40', '2025-10-04 02:13:40');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(5, '2025_09_14_133730_create_employee_table', 2),
(6, '2025_09_14_135751_add_coloumn_to_empolyee_table', 3),
(7, '2025_10_13_070112_create_personal_access_tokens_table', 4),
(8, '2025_11_01_183118_create_worker_table', 4),
(9, '2025_11_01_183503_create_salary_table', 5),
(10, '2025_11_01_185207_create_sessions_table', 6),
(11, '2025_11_03_072357_create_technology_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `work_id` varchar(5) NOT NULL,
  `salary` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `work_id`, `salary`, `created_at`, `updated_at`) VALUES
(1, '25', '30000', '2025-11-03 16:38:59', '2025-11-03 16:38:59'),
(2, '2', '20000', '2025-11-04 05:41:49', '2025-11-04 05:41:49'),
(3, '4', '15000', '2025-11-05 05:41:49', '2025-11-05 05:41:49');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ZResyrczWESR5hXJxmDL9tXy8Uh073hQAvUFYcLt', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicW52TnlDWXBMbUJ3UXlpVEU5TTBTNVRhSWlyVHRHNFhGSXdvdUlsUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC93b3JrZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1762156606);

-- --------------------------------------------------------

--
-- Table structure for table `technology`
--

CREATE TABLE `technology` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `work_id` varchar(5) NOT NULL,
  `technology` varchar(60) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `technology`
--

INSERT INTO `technology` (`id`, `work_id`, `technology`, `created_at`, `updated_at`) VALUES
(1, '2', 'JavaScript', '2025-11-04 07:28:29', NULL),
(2, '2', 'Html', '2025-11-04 07:28:29', NULL),
(3, '25', 'Css', '2025-11-12 07:29:13', NULL),
(4, '25', 'React', '2025-11-04 07:29:13', NULL),
(5, '25', 'Node Js', '2025-11-06 07:29:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `displayName` varchar(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `emp_id`, `displayName`, `username`, `email`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, '', 'Test User', 'test@example.com', '2025-10-03 01:08:53', '$2y$12$rO/ls0AErxVWiAN4c9qgvuFBAcKGsGsnrst8qCfnyg/t9un1Bbcl.', NULL, '63NYfvfu3Z', '2025-10-03 01:08:55', '2025-10-03 01:08:55'),
(5, 5630, '', 'Test User', 'testOne@example.com', '2025-10-03 22:56:46', '$2y$12$HySsoaYJzO6cAmrhb167Iewkf2z4/pkOBTTNPSqvFrhCpK/mf3Ql6', NULL, 'G1lnxTWXGH', '2025-10-03 22:56:47', '2025-10-03 22:56:47'),
(7, 9962, 'testing Baby', 'admin', 'testing@gmail.com', NULL, '$2y$12$jkV3fB6pBngONMhjay6o3eBEqew5kUx9RT03WKJtAZdIO4s2PoCLS', 1, NULL, '2025-10-11 08:02:19', '2025-10-11 08:02:19');

-- --------------------------------------------------------

--
-- Table structure for table `worker`
--

CREATE TABLE `worker` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `work_id` varchar(5) NOT NULL,
  `work_name` varchar(20) NOT NULL,
  `work_mobile` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `worker`
--

INSERT INTO `worker` (`id`, `work_id`, `work_name`, `work_mobile`, `created_at`, `updated_at`) VALUES
(3, '25', 'Amit Vishwakarma', '7974743671', '2025-11-02 05:26:15', '2025-11-02 16:38:17'),
(4, '2', 'Gautam Sharma', '123456789', '2025-11-03 05:39:21', '2025-11-03 05:39:21'),
(5, '4', 'Chetna Baby', '987654321', '2025-11-04 05:39:21', '2025-11-04 05:39:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_work_id_foreign` (`work_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `technology`
--
ALTER TABLE `technology`
  ADD PRIMARY KEY (`id`),
  ADD KEY `technology_work_id_foreign` (`work_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `worker`
--
ALTER TABLE `worker`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `worker_work_id_unique` (`work_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `technology`
--
ALTER TABLE `technology`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `worker`
--
ALTER TABLE `worker`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `salary_work_id_foreign` FOREIGN KEY (`work_id`) REFERENCES `worker` (`work_id`);

--
-- Constraints for table `technology`
--
ALTER TABLE `technology`
  ADD CONSTRAINT `technology_work_id_foreign` FOREIGN KEY (`work_id`) REFERENCES `worker` (`work_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
