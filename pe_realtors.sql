-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2024 at 04:56 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pe_realtors`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE `admin_user` (
  `admin_user_id` int(11) NOT NULL,
  `admin_user_role_id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `admin_user_name` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `show_password` varchar(255) NOT NULL,
  `email` varchar(250) NOT NULL,
  `username` varchar(500) DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `address1` varchar(500) NOT NULL,
  `address2` varchar(500) DEFAULT NULL,
  `address3` varchar(500) DEFAULT NULL,
  `pincode` varchar(50) DEFAULT NULL,
  `mobile_no` varchar(50) NOT NULL,
  `alt_mobile_no` varchar(50) DEFAULT NULL,
  `fax_no` varchar(50) DEFAULT NULL,
  `data_view` int(11) NOT NULL DEFAULT 0,
  `approval_access` int(11) NOT NULL DEFAULT 0,
  `user_image` varchar(250) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_loginip` varchar(100) DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `termination_date` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `added_on` datetime NOT NULL DEFAULT current_timestamp(),
  `added_by` int(11) NOT NULL,
  `updated_on` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_deleted` char(1) NOT NULL DEFAULT '0',
  `is_deleted_on` datetime DEFAULT NULL,
  `is_deleted_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`admin_user_id`, `admin_user_role_id`, `designation_id`, `admin_user_name`, `password`, `show_password`, `email`, `username`, `country_id`, `state_id`, `city_id`, `address1`, `address2`, `address3`, `pincode`, `mobile_no`, `alt_mobile_no`, `fax_no`, `data_view`, `approval_access`, `user_image`, `last_login`, `last_loginip`, `joining_date`, `termination_date`, `status`, `added_on`, `added_by`, `updated_on`, `updated_by`, `is_deleted`, `is_deleted_on`, `is_deleted_by`) VALUES
(1, 1, 1, 'Krishna', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'krishna@prachitours.in', 'admin', 1, 1, 8, 'Tumkuru', '', '', '560069', '9886551433', '', '', 0, 0, NULL, '2024-08-06 14:22:55', '::1', '2023-03-02', '1970-01-01', 1, '2024-08-01 00:00:00', 0, '2024-08-05 18:16:40', 1, '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_file`
--

CREATE TABLE `admin_user_file` (
  `admin_user_file_id` int(11) NOT NULL,
  `admin_user_id` int(11) NOT NULL,
  `file_title` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `added_on` datetime DEFAULT current_timestamp(),
  `added_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `is_deleted` char(1) NOT NULL DEFAULT '0',
  `is_deleted_on` datetime DEFAULT NULL,
  `is_deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_role`
--

CREATE TABLE `admin_user_role` (
  `admin_user_role_id` int(11) NOT NULL,
  `admin_user_role_name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `added_on` datetime DEFAULT current_timestamp(),
  `added_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `is_deleted` char(1) NOT NULL DEFAULT '0',
  `is_deleted_on` datetime DEFAULT NULL,
  `is_deleted_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_role`
--

INSERT INTO `admin_user_role` (`admin_user_role_id`, `admin_user_role_name`, `status`, `added_on`, `added_by`, `updated_on`, `updated_by`, `is_deleted`, `is_deleted_on`, `is_deleted_by`) VALUES
(1, 'Super User', 1, '2024-08-02 12:10:11', 1, '2024-08-06 12:11:44', 1, '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `au_pwd_reset_token`
--

CREATE TABLE `au_pwd_reset_token` (
  `au_pwd_reset_token_id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `token` varchar(200) NOT NULL,
  `admin_user_id` int(11) NOT NULL,
  `used` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `added_on` datetime DEFAULT current_timestamp(),
  `added_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `is_deleted` char(1) NOT NULL DEFAULT '0',
  `is_deleted_on` datetime DEFAULT NULL,
  `is_deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bhk_type`
--

CREATE TABLE `bhk_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `added_on` datetime DEFAULT current_timestamp(),
  `added_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_deleted_on` datetime DEFAULT NULL,
  `is_deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bhk_type`
--

INSERT INTO `bhk_type` (`id`, `name`, `status`, `added_on`, `added_by`, `updated_on`, `updated_by`, `is_deleted`, `is_deleted_on`, `is_deleted_by`) VALUES
(1, '1-RK', 1, '2024-08-06 12:36:58', 1, '2024-08-06 12:38:22', 1, 0, NULL, NULL),
(2, '1-BHK', 1, '2024-08-06 12:38:37', 1, '2024-08-06 12:59:44', 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `city_code` varchar(255) DEFAULT NULL,
  `is_display` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL,
  `added_on` datetime NOT NULL DEFAULT current_timestamp(),
  `added_by` int(11) NOT NULL,
  `updated_on` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `is_deleted_by` int(11) DEFAULT NULL,
  `is_deleted` char(1) NOT NULL DEFAULT '0',
  `is_deleted_on` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `country_id`, `state_id`, `city_name`, `city_code`, `is_display`, `status`, `added_on`, `added_by`, `updated_on`, `updated_by`, `is_deleted_by`, `is_deleted`, `is_deleted_on`) VALUES
(1, 1, 1, 'Dharwad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(2, 1, 1, 'Hubli', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(3, 1, 1, 'Belagavi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(4, 1, 1, 'Mangaluru', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(5, 1, 1, 'Davanagere', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(6, 1, 1, 'Ballari', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(7, 1, 1, 'Mysore', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(8, 1, 1, 'Tumkur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(9, 1, 1, 'Kolar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(10, 1, 1, 'Mandya', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(11, 1, 1, 'Udupi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(12, 1, 1, 'Chikkamagaluru', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(13, 1, 1, 'Karwar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(14, 1, 1, 'Gokak', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(15, 1, 1, 'Yadgir', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(16, 1, 1, 'Tiptur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(17, 1, 1, 'Arsikere', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(18, 1, 1, 'Nanjangud', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(19, 1, 1, 'Athni', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(20, 1, 1, 'Wadi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(21, 1, 1, 'Nelamangala', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(22, 1, 1, 'Lakshmeshwar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(23, 1, 1, 'Nargund', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(24, 1, 1, 'Tarikere', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(25, 1, 1, 'Lingsugur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(26, 1, 1, 'Vijayapura', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(27, 1, 1, 'Talikota', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(28, 1, 1, 'Afzalpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(29, 1, 1, 'Tekkalakote', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(30, 1, 1, 'Terdal', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(31, 1, 1, 'Navalgund', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(32, 1, 2, 'Port Blair', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(33, 1, 3, 'Visakhapatnam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(34, 1, 3, 'Vijayawada', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(35, 1, 3, 'Guntur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(36, 1, 3, 'Nellore', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(37, 1, 3, 'Kurnool', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(38, 1, 3, 'Kakinada', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(39, 1, 3, 'Tirupati', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(40, 1, 3, 'Anantapur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(41, 1, 3, 'Kadapa', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(42, 1, 3, 'Vizianagaram', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(43, 1, 3, 'Eluru', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(44, 1, 3, 'Ongole', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(45, 1, 3, 'Nandyal', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(46, 1, 3, 'Machilipatnam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(47, 1, 3, 'Adoni', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(48, 1, 3, 'Tenali', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(49, 1, 3, 'Chittoor', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(50, 1, 3, 'Hindupur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(51, 1, 3, 'Bhimavaram', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(52, 1, 3, 'Madanapalle', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(53, 1, 3, 'Guntakal', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(54, 1, 3, 'Dharmavaram', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(55, 1, 3, 'Gudivada', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(56, 1, 3, 'Narasaraopet', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(57, 1, 3, 'Tadpatri', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(58, 1, 3, 'Tadepalligudem', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(59, 1, 3, 'Chilakaluripet', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(60, 1, 3, 'Yemmiganur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(61, 1, 3, 'Kadiri', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(62, 1, 3, 'Chirala', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(63, 1, 3, 'Anakapalle', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(64, 1, 3, 'Kavali', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(65, 1, 3, 'Tanuku', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(66, 1, 3, 'Bapatla', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(67, 1, 3, 'Naidupet', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(68, 1, 3, 'Nagari', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(69, 1, 3, 'Gudur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(70, 1, 3, 'Vinukonda', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(71, 1, 3, 'Narasapuram', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(72, 1, 3, 'Nuzvid', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(73, 1, 3, 'Kandukur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(74, 1, 3, 'Bobbili', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(75, 1, 3, 'Jaggaiahpet', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(76, 1, 3, 'Tuni', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(77, 1, 3, 'Amalapuram', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(78, 1, 3, 'Bheemunipatnam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(79, 1, 3, 'Venkatagiri', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(80, 1, 3, 'Gooty', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(81, 1, 3, 'Jammalamadugu', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(82, 1, 3, 'Nidadavole', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(83, 1, 3, 'Kovvur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(84, 1, 3, 'Tiruvuru', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(85, 1, 3, 'Uravakonda', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(86, 1, 3, 'Narsipatnam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(87, 1, 3, 'Yerraguntla', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(88, 1, 4, 'Naharlagun', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(89, 1, 5, 'Guwahati', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(90, 1, 5, 'Dibrugarh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(91, 1, 5, 'Nagaon', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(92, 1, 5, 'Tinsukia', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(93, 1, 5, 'Jorhat', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(94, 1, 5, 'Bongaigaon City', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(95, 1, 5, 'Dhubri', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(96, 1, 5, 'Diphu', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(97, 1, 5, 'North Lakhimpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(98, 1, 5, 'Tezpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(99, 1, 5, 'Karimganj', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(100, 1, 5, 'Goalpara', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(101, 1, 5, 'Barpeta', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(102, 1, 5, 'Lanka', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(103, 1, 5, 'Lumding', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(104, 1, 5, 'Nalbari', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(105, 1, 6, 'Gaya', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(106, 1, 6, 'Bhagalpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(107, 1, 6, 'Muzaffarpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(108, 1, 6, 'Darbhanga', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(109, 1, 6, 'Arrah', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(110, 1, 6, 'Begusarai', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(111, 1, 6, 'Chhapra', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(112, 1, 6, 'Katihar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(113, 1, 6, 'Munger', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(114, 1, 6, 'Saharsa', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(115, 1, 6, 'Sasaram', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(116, 1, 6, 'Hajipur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(117, 1, 6, 'Dehri-on-Sone', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(118, 1, 6, 'Bettiah', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(119, 1, 6, 'Motihari', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(120, 1, 6, 'Bagaha', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(121, 1, 6, 'Kishanganj', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(122, 1, 6, 'Jamalpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(123, 1, 6, 'Buxar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(124, 1, 6, 'Jehanabad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(125, 1, 6, 'Aurangabad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(126, 1, 6, 'Lakhisarai', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(127, 1, 6, 'Nawada', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(128, 1, 6, 'Jamui', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(129, 1, 6, 'Araria', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(130, 1, 6, 'Gopalganj', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(131, 1, 6, 'Dumraon', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(132, 1, 6, 'Arwal', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(133, 1, 6, 'Forbesganj', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(134, 1, 6, 'BhabUrban Agglomeration', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(135, 1, 6, 'Narkatiaganj', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(136, 1, 6, 'Naugachhia', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(137, 1, 6, 'Warisaliganj', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(138, 1, 6, 'Nokha', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(139, 1, 6, 'Lalganj', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(140, 1, 7, 'Chandigarh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(141, 1, 8, 'Bhilai Nagar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(142, 1, 8, 'Korba', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(143, 1, 8, 'Bilaspur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(144, 1, 8, 'Durg', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(145, 1, 8, 'Jagdalpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(146, 1, 8, 'Ambikapur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(147, 1, 8, 'Mahasamund', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(148, 1, 8, 'Dhamtari', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(149, 1, 8, 'Chirmiri', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(150, 1, 8, 'Bhatapara', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(151, 1, 8, 'Dalli-Rajhara', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(152, 1, 8, 'Naila Janjgir', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(153, 1, 8, 'Tilda Newra', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(154, 1, 19, 'Silvassa', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(155, 1, 10, 'Delhi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(156, 1, 10, 'New Delhi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(157, 1, 11, 'Marmagao', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(158, 1, 11, 'Panaji', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(159, 1, 11, 'Margao', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(160, 1, 11, 'Mapusa', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(161, 1, 12, 'Ahmedabad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(162, 1, 12, 'Vadodara', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(163, 1, 12, 'Bhavnagar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(164, 1, 12, 'Jamnagar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(165, 1, 12, 'Nadiad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(166, 1, 12, 'Anand', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(167, 1, 12, 'Morvi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(168, 1, 12, 'Mahesana', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(169, 1, 12, 'Bharuch', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(170, 1, 12, 'Vapi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(171, 1, 12, 'Navsari', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(172, 1, 12, 'Veraval', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(173, 1, 12, 'Bhuj', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(174, 1, 12, 'Godhra', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(175, 1, 12, 'Palanpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(176, 1, 12, 'Valsad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(177, 1, 12, 'Deesa', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(178, 1, 12, 'Amreli', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(179, 1, 12, 'Anjar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(180, 1, 12, 'Dhoraji', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(181, 1, 12, 'Khambhat', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(182, 1, 12, 'Keshod', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(183, 1, 12, 'Wadhwan', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(184, 1, 12, 'Ankleshwar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(185, 1, 12, 'Kadi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(186, 1, 12, 'Visnagar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(187, 1, 12, 'Upleta', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(188, 1, 12, 'Una', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(189, 1, 12, 'Unjha', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(190, 1, 12, 'Viramgam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(191, 1, 12, 'Kapadvanj', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(192, 1, 12, 'Kalavad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(193, 1, 12, 'Wankaner', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(194, 1, 12, 'Limbdi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(195, 1, 12, 'Thangadh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(196, 1, 12, 'Vyara', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(197, 1, 12, 'Lunawada', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(198, 1, 12, 'Vapi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(199, 1, 12, 'Umreth', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(200, 1, 12, 'Tharad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(201, 1, 12, 'Umbergaon', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(202, 1, 12, 'Talaja', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(203, 1, 12, 'Vadnagar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(204, 1, 12, 'Vijapur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(205, 1, 12, 'Lathi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(206, 1, 13, 'Faridabad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(207, 1, 13, 'Gurgaon', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(208, 1, 13, 'Hisar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(209, 1, 13, 'Panipat', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(210, 1, 13, 'Karnal', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(211, 1, 13, 'Yamunanagar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(212, 1, 13, 'Panchkula', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(213, 1, 13, 'Bhiwani', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(214, 1, 13, 'Bahadurgarh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(215, 1, 13, 'Jind', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(216, 1, 13, 'Thanesar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(217, 1, 13, 'Kaithal', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(218, 1, 13, 'Palwal', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(219, 1, 13, 'Hansi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(220, 1, 13, 'Narnaul', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(221, 1, 13, 'Fatehabad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(222, 1, 13, 'Gohana', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(223, 1, 13, 'Tohana', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(224, 1, 13, 'Narwana', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(225, 1, 13, 'Charkhi Dadri', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(226, 1, 13, 'Ladwa', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(227, 1, 13, 'Taraori', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(228, 1, 14, 'Nahan', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(229, 1, 15, 'Jammu', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(230, 1, 15, 'Baramula', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(231, 1, 15, 'Anantnag', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(232, 1, 15, 'KathUrban Agglomeration', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(233, 1, 15, 'Udhampur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(234, 1, 16, 'Dhanbad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(235, 1, 16, 'Jamshedpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(236, 1, 16, 'Bokaro Steel City', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(237, 1, 16, 'Deoghar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(238, 1, 16, 'Adityapur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(239, 1, 16, 'Hazaribag', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(240, 1, 16, 'Giridih', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(241, 1, 16, 'Jhumri Tilaiya', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(242, 1, 16, 'Medininagar (Daltonganj)', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(243, 1, 16, 'Chaibasa', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(244, 1, 16, 'Chatra', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(245, 1, 16, 'Gumia', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(246, 1, 16, 'Dumka', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(247, 1, 16, 'Chirkunda', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(248, 1, 16, 'Lohardaga', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(249, 1, 16, 'Tenu dam-cum-Kathhara', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(250, 1, 17, 'Thiruvananthapuram', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(251, 1, 17, 'Kochi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(252, 1, 17, 'Kozhikode', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(253, 1, 17, 'Kollam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(254, 1, 17, 'Thrissur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(255, 1, 17, 'Alappuzha', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(256, 1, 17, 'Malappuram', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(257, 1, 17, 'Vatakara', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(258, 1, 17, 'Kanhangad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(259, 1, 17, 'Taliparamba', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(260, 1, 17, 'Koyilandy', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(261, 1, 17, 'Neyyattinkara', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(262, 1, 17, 'Kayamkulam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(263, 1, 17, 'Nedumangad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(264, 1, 17, 'Kannur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(265, 1, 17, 'Tirur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(266, 1, 17, 'Kottayam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(267, 1, 17, 'Kasaragod', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(268, 1, 17, 'Kunnamkulam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(269, 1, 17, 'Ottappalam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(270, 1, 17, 'Thiruvalla', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(271, 1, 17, 'Thodupuzha', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(272, 1, 17, 'Chalakudy', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(273, 1, 17, 'Changanassery', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(274, 1, 17, 'Nilambur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(275, 1, 17, 'Cherthala', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(276, 1, 17, 'Varkala', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(277, 1, 17, 'Attingal', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(278, 1, 17, 'Kodungallur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(279, 1, 17, 'Chittur-Thathamangalam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(280, 1, 17, 'Adoor', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(281, 1, 17, 'Vaikom', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(282, 1, 17, 'Guruvayoor', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(283, 1, 18, 'Indore', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(284, 1, 18, 'Bhopal', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(285, 1, 18, 'Jabalpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(286, 1, 18, 'Gwalior', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(287, 1, 18, 'Ujjain', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(288, 1, 18, 'Murwara (Katni)', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(289, 1, 18, 'Morena', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(290, 1, 18, 'Vidisha', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(291, 1, 18, 'Ganjbasoda', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(292, 1, 18, 'Mandsaur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(293, 1, 18, 'Neemuch', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(294, 1, 18, 'Nagda', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(295, 1, 18, 'Itarsi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(296, 1, 18, 'Balaghat', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(297, 1, 18, 'Ashok Nagar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(298, 1, 18, 'Tikamgarh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(299, 1, 18, 'Alirajpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(300, 1, 18, 'Nowgong', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(301, 1, 18, 'Lahar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(302, 1, 18, 'Umaria', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(303, 1, 18, 'Narsinghgarh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(304, 1, 18, 'Nepanagar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(305, 1, 18, 'Wara Seoni', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(306, 1, 18, 'Tarana', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(307, 1, 18, 'Niwari', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(308, 1, 18, 'Nainpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(309, 1, 18, 'Nowrozabad (Khodargama)', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(310, 1, 19, 'Mumbai', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(311, 1, 19, 'Nagpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(312, 1, 19, 'Thane', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(313, 1, 19, 'Nashik', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(314, 1, 19, 'Kalyan-Dombivali', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(315, 1, 19, 'Vasai-Virar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(316, 1, 19, 'Mira-Bhayandar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(317, 1, 19, 'Bhiwandi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(318, 1, 19, 'Amravati', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(319, 1, 19, 'Nanded-Waghala', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(320, 1, 19, 'Malegaon', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(321, 1, 19, 'Akola', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(322, 1, 19, 'Latur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(323, 1, 19, 'Dhule', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(324, 1, 19, 'Ahmednagar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(325, 1, 19, 'Ichalkaranji', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(326, 1, 19, 'Yavatmal', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(327, 1, 19, 'Achalpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(328, 1, 19, 'Osmanabad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(329, 1, 19, 'Nandurbar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(330, 1, 19, 'Wardha', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(331, 1, 19, 'Udgir', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(332, 1, 19, 'Aurangabad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(333, 1, 19, 'Amalner', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(334, 1, 19, 'Akot', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(335, 1, 19, 'Washim', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(336, 1, 19, 'Ambejogai', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(337, 1, 19, 'Uran Islampur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(338, 1, 19, 'Wani', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(339, 1, 19, 'Lonavla', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(340, 1, 19, 'Talegaon Dabhade', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(341, 1, 19, 'Anjangaon', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(342, 1, 19, 'Umred', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(343, 1, 19, 'Ozar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(344, 1, 19, 'Yevla', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(345, 1, 19, 'Vita', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(346, 1, 19, 'Umarkhed', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(347, 1, 19, 'Warora', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(348, 1, 19, 'Tumsar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(349, 1, 19, 'Arvi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(350, 1, 19, 'Nandura', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(351, 1, 19, 'Vaijapur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(352, 1, 19, 'Wadgaon Road', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(353, 1, 19, 'Tasgaon', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(354, 1, 19, 'Yawal', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(355, 1, 19, 'Nilanga', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(356, 1, 19, 'Wai', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(357, 1, 19, 'Umarga', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(358, 1, 19, 'Nawapur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(359, 1, 19, 'Tuljapur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(360, 1, 19, 'Uchgaon', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(361, 1, 19, 'Uran', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(362, 1, 19, 'Karjat', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(363, 1, 19, 'Talode', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(364, 1, 19, 'Vadgaon Kasba', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(365, 1, 19, 'Tirora', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(366, 1, 19, 'Lonar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(367, 1, 19, 'Narkhed', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(368, 1, 19, 'Loha', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(369, 1, 20, 'Imphal', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(370, 1, 20, 'Thoubal', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(371, 1, 20, 'Lilong', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(372, 1, 21, 'Tura', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(373, 1, 21, 'Nongstoin', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(374, 1, 22, 'Aizawl', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(375, 1, 22, 'Lunglei', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(376, 1, 23, 'Dimapur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(377, 1, 23, 'Kohima', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(378, 1, 23, 'Zunheboto', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(379, 1, 23, 'Tuensang', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(380, 1, 23, 'Wokha', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(381, 1, 24, 'Bhubaneswar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(382, 1, 24, 'Cuttack', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(383, 1, 24, 'Brahmapur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(384, 1, 24, 'Sambalpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(385, 1, 24, 'Baleshwar Town', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(386, 1, 24, 'Baripada Town', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(387, 1, 24, 'Bhadrak', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(388, 1, 24, 'Balangir', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(389, 1, 24, 'Jharsuguda', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(390, 1, 24, 'Bargarh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(391, 1, 24, 'Bhawanipatna', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(392, 1, 24, 'Dhenkanal', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(393, 1, 24, 'Barbil', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(394, 1, 24, 'Kendujhar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(395, 1, 24, 'Jatani', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(396, 1, 24, 'Byasanagar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(397, 1, 24, 'Kendrapara', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(398, 1, 24, 'Talcher', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(399, 1, 24, 'Titlagarh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(400, 1, 24, 'Nabarangapur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(401, 1, 25, 'Karaikal', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(402, 1, 25, 'Yanam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(403, 1, 26, 'Ludhiana', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(404, 1, 26, 'Amritsar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(405, 1, 26, 'Jalandhar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(406, 1, 26, 'Bathinda', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(407, 1, 26, 'Hoshiarpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(408, 1, 26, 'Batala', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(409, 1, 26, 'Moga', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(410, 1, 26, 'Malerkotla', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(411, 1, 26, 'Khanna', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(412, 1, 26, 'Barnala', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(413, 1, 26, 'Firozpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(414, 1, 26, 'Kapurthala', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(415, 1, 26, 'Zirakpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(416, 1, 26, 'Kot Kapura', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(417, 1, 26, 'Faridkot', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(418, 1, 26, 'Fazilka', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(419, 1, 26, 'Gurdaspur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(420, 1, 26, 'Kharar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(421, 1, 26, 'Gobindgarh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(422, 1, 26, 'Nabha', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(423, 1, 26, 'Tarn Taran', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(424, 1, 26, 'Jagraon', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(425, 1, 26, 'Dhuri', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(426, 1, 26, 'Firozpur Cantt.', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(427, 1, 26, 'Jalandhar Cantt.', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(428, 1, 26, 'Nawanshahr', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(429, 1, 26, 'Nangal', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(430, 1, 26, 'Nakodar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(431, 1, 26, 'Zira', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(432, 1, 26, 'Longowal', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(433, 1, 26, 'Urmar Tanda', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(434, 1, 26, 'Qadian', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(435, 1, 27, 'Jaipur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(436, 1, 27, 'Jodhpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(437, 1, 27, 'Bikaner', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(438, 1, 27, 'Udaipur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(439, 1, 27, 'Ajmer', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(440, 1, 27, 'Bhilwara', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(441, 1, 27, 'Alwar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(442, 1, 27, 'Bharatpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(443, 1, 27, 'Pali', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(444, 1, 27, 'Barmer', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(445, 1, 27, 'Tonk', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(446, 1, 27, 'Nagaur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(447, 1, 27, 'Ladnu', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(448, 1, 27, 'Nokha', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(449, 1, 27, 'Nimbahera', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(450, 1, 27, 'Lachhmangarh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(451, 1, 27, 'Nasirabad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(452, 1, 27, 'Nohar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(453, 1, 27, 'Nathdwara', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(454, 1, 27, 'Neem-Ka-Thana', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(455, 1, 27, 'Lalsot', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(456, 1, 27, 'Taranagar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(457, 1, 27, 'Vijainagar, Ajmer', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(458, 1, 27, 'Lakheri', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(459, 1, 27, 'Udaipurwati', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(460, 1, 27, 'Losal', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(461, 1, 27, 'Nadbai', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(462, 1, 27, 'Nagar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(463, 1, 27, 'Todaraisingh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(464, 1, 27, 'Todabhim', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(465, 1, 28, 'Chennai', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(466, 1, 28, 'Coimbatore', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(467, 1, 28, 'Madurai', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(468, 1, 28, 'Tiruchirappalli', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(469, 1, 28, 'Salem', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(470, 1, 28, 'Tirunelveli', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(471, 1, 28, 'Tiruppur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL);
INSERT INTO `city` (`city_id`, `country_id`, `state_id`, `city_name`, `city_code`, `is_display`, `status`, `added_on`, `added_by`, `updated_on`, `updated_by`, `is_deleted_by`, `is_deleted`, `is_deleted_on`) VALUES
(472, 1, 28, 'Nagercoil', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(473, 1, 28, 'Thanjavur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(474, 1, 28, 'Vellore', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(475, 1, 28, 'Kancheepuram', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(476, 1, 28, 'Erode', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(477, 1, 28, 'Tiruvannamalai', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(478, 1, 28, 'Neyveli (TS)', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(479, 1, 28, 'Nagapattinam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(480, 1, 28, 'Viluppuram', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(481, 1, 28, 'Tiruchengode', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(482, 1, 28, 'Vaniyambadi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(483, 1, 28, 'Theni Allinagaram', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(484, 1, 28, 'Udhagamandalam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(485, 1, 28, 'Aruppukkottai', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(486, 1, 28, 'Arakkonam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(487, 1, 28, 'Virudhachalam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(488, 1, 28, 'Tindivanam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(489, 1, 28, 'Virudhunagar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(490, 1, 28, 'Karur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(491, 1, 28, 'Valparai', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(492, 1, 28, 'Sankarankovil', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(493, 1, 28, 'Tenkasi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(494, 1, 28, 'Tirupathur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(495, 1, 28, 'Udumalaipettai', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(496, 1, 28, 'Gobichettipalayam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(497, 1, 28, 'Thiruvarur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(498, 1, 28, 'Thiruvallur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(499, 1, 28, 'Namakkal', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(500, 1, 28, 'Thirumangalam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(501, 1, 28, 'Vikramasingapuram', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(502, 1, 28, 'Nellikuppam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(503, 1, 28, 'Tiruttani', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(504, 1, 28, 'Nandivaram-Guduvancheri', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(505, 1, 28, 'Vellakoil', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(506, 1, 28, 'Vadalur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(507, 1, 28, 'Tiruvethipuram', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(508, 1, 28, 'Usilampatti', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(509, 1, 28, 'Vedaranyam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(510, 1, 28, 'Nanjikottai', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(511, 1, 28, 'Thuraiyur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(512, 1, 28, 'Tiruchendur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(513, 1, 28, 'Vandavasi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(514, 1, 28, 'Tharamangalam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(515, 1, 28, 'Tirukkoyilur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(516, 1, 28, 'Oddanchatram', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(517, 1, 28, 'Vadakkuvalliyur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(518, 1, 28, 'Tirukalukundram', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(519, 1, 28, 'Uthamapalayam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(520, 1, 28, 'Vadipatti', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(521, 1, 28, 'Tirupathur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(522, 1, 28, 'Viswanatham', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(523, 1, 28, 'Uthiramerur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(524, 1, 28, 'Thiruthuraipoondi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(525, 1, 28, 'Lalgudi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(526, 1, 28, 'Natham', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(527, 1, 28, 'Unnamalaikadai', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(528, 1, 28, 'Tharangambadi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(529, 1, 28, 'Tittakudi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(530, 1, 28, 'O\' Valley', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(531, 1, 28, 'Thammampatti', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(532, 1, 28, 'Namagiripettai', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(533, 1, 29, 'Hyderabad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(534, 1, 29, 'Warangal', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(535, 1, 29, 'Nizamabad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(536, 1, 29, 'Karimnagar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(537, 1, 29, 'Khammam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(538, 1, 29, 'Mahbubnagar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(539, 1, 29, 'Adilabad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(540, 1, 29, 'Jagtial', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(541, 1, 29, 'Nirmal', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(542, 1, 29, 'Kamareddy', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(543, 1, 29, 'Kothagudem', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(544, 1, 29, 'Bodhan', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(545, 1, 29, 'Koratla', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(546, 1, 29, 'Tandur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(547, 1, 29, 'Wanaparthy', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(548, 1, 29, 'Kagaznagar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(549, 1, 29, 'Gadwal', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(550, 1, 29, 'Bellampalle', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(551, 1, 29, 'Bhongir', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(552, 1, 29, 'Vikarabad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(553, 1, 29, 'Jangaon', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(554, 1, 29, 'Bhadrachalam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(555, 1, 29, 'Bhainsa', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(556, 1, 29, 'Farooqnagar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(557, 1, 29, 'Narayanpet', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(558, 1, 29, 'Yellandu', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(559, 1, 29, 'Kyathampalle', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(560, 1, 29, 'Nagarkurnool', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(561, 1, 30, 'Agartala', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(562, 1, 30, 'Udaipur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(563, 1, 30, 'Dharmanagar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(564, 1, 30, 'Kailasahar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(565, 1, 31, 'Lucknow', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(566, 1, 31, 'Kanpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(567, 1, 31, 'Firozabad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(568, 1, 31, 'Agra', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(569, 1, 31, 'Meerut', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(570, 1, 31, 'Varanasi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(571, 1, 31, 'Allahabad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(572, 1, 31, 'Amroha', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(573, 1, 31, 'Moradabad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(574, 1, 31, 'Aligarh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(575, 1, 31, 'Saharanpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(576, 1, 31, 'Noida', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(577, 1, 31, 'Loni', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(578, 1, 31, 'Jhansi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(579, 1, 31, 'Hapur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(580, 1, 31, 'Etawah', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(581, 1, 31, 'Sambhal', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(582, 1, 31, 'Orai', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(583, 1, 31, 'Bahraich', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(584, 1, 31, 'Unnao', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(585, 1, 31, 'Lakhimpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(586, 1, 31, 'Lalitpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(587, 1, 31, 'Chandausi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(588, 1, 31, 'Hardoi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(589, 1, 31, 'Azamgarh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(590, 1, 31, 'Khair', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(591, 1, 31, 'Tanda', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(592, 1, 31, 'Nagina', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(593, 1, 31, 'Najibabad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(594, 1, 31, 'Vrindavan', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(595, 1, 31, 'Ujhani', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(596, 1, 31, 'Laharpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(597, 1, 31, 'Tilhar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(598, 1, 31, 'Kalpi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(599, 1, 31, 'Tundla', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(600, 1, 31, 'Nanpara', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(601, 1, 31, 'Nehtaur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(602, 1, 31, 'Thakurdwara', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(603, 1, 31, 'Nawabganj', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(604, 1, 31, 'Noorpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(605, 1, 31, 'Thana Bhawan', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(606, 1, 31, 'Zaidpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(607, 1, 31, 'Nautanwa', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(608, 1, 31, 'Zamania', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(609, 1, 31, 'Naugawan Sadat', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(610, 1, 31, 'Fatehpur Sikri', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(611, 1, 31, 'Utraula', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(612, 1, 31, 'Lar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(613, 1, 31, 'Lal Gopalganj Nindaura', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(614, 1, 31, 'Tulsipur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(615, 1, 31, 'Tirwaganj', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(616, 1, 31, 'Warhapur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(617, 1, 31, 'Achhnera', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(618, 1, 31, 'Naraura', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(619, 1, 31, 'Nakur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(620, 1, 31, 'Lalganj', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(621, 1, 32, 'Dehradun', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(622, 1, 32, 'Hardwar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(623, 1, 32, 'Haldwani-cum-Kathgodam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(624, 1, 32, 'Kashipur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(625, 1, 32, 'Nainital', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(626, 1, 32, 'Tehri', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(627, 1, 32, 'Nagla', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(628, 1, 33, 'Kolkata', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(629, 1, 33, 'Asansol', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(630, 1, 33, 'Kharagpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(631, 1, 33, 'Naihati', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(632, 1, 33, 'English Bazar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(633, 1, 33, 'Baharampur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(634, 1, 33, 'Hugli-Chinsurah', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(635, 1, 33, 'Jalpaiguri', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(636, 1, 33, 'Santipur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(637, 1, 33, 'Balurghat', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(638, 1, 33, 'Habra', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(639, 1, 33, 'Bankura', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(640, 1, 33, 'Nabadwip', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(641, 1, 33, 'Darjiling', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(642, 1, 33, 'Arambagh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(643, 1, 33, 'Tamluk', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(644, 1, 33, 'AlipurdUrban Agglomeratio', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(645, 1, 33, 'Jhargram', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(646, 1, 33, 'Gangarampur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(647, 1, 33, 'Kalimpong', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(648, 1, 33, 'Taki', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(649, 1, 33, 'Tarakeswar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(650, 1, 19, 'Parli Vaijnath', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(651, 1, 1, 'Bangalore', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(652, 1, 16, 'Pakur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(653, 1, 19, 'Pune', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(654, 1, 31, 'Ballia', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(655, 1, 28, 'Tambaram', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(656, 1, 27, 'Suratgarh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(657, 1, 27, 'Mount Abu', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(658, 1, 1, 'Bidar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(659, 1, 31, 'Ghaziabad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(660, 1, 19, 'Chiplun', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(661, 1, 15, 'Srinagar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(662, 1, 3, 'Rajahmundry', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(663, 1, 3, 'Proddatur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(664, 1, 3, 'Srikakulam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(665, 1, 3, 'Rajampet', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(666, 1, 3, 'Palacole', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(667, 1, 3, 'Sullurpeta', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(668, 1, 3, 'Rayachoti', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(669, 1, 3, 'Srikalahasti', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(670, 1, 3, 'Markapur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(671, 1, 3, 'Ponnur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(672, 1, 3, 'Rayadurg', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(673, 1, 3, 'Samalkot', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(674, 1, 3, 'Sattenapalle', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(675, 1, 3, 'Pithapuram', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(676, 1, 3, 'Palasa Kasibugga', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(677, 1, 3, 'Parvathipuram', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(678, 1, 3, 'Macherla', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(679, 1, 3, 'Salur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(680, 1, 3, 'Mandapeta', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(681, 1, 3, 'Peddapuram', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(682, 1, 3, 'Punganur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(683, 1, 3, 'Repalle', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(684, 1, 3, 'Ramachandrapuram', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(685, 1, 3, 'Pedana', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(686, 1, 3, 'Puttur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(687, 1, 3, 'Renigunta', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(688, 1, 3, 'Rajam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(689, 1, 3, 'Srisailam Project (Right ', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(690, 1, 4, 'Pasighat', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(691, 1, 5, 'Silchar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(692, 1, 5, 'Sibsagar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(693, 1, 5, 'Mankachar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(694, 1, 5, 'Rangia', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(695, 1, 5, 'Margherita', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(696, 1, 5, 'Mangaldoi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(697, 1, 5, 'Silapathar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(698, 1, 5, 'Mariani', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(699, 1, 5, 'Marigaon', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(700, 1, 6, 'Patna', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(701, 1, 6, 'Purnia', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(702, 1, 6, 'Siwan', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(703, 1, 6, 'Sitamarhi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(704, 1, 6, 'Madhubani', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(705, 1, 6, 'Masaurhi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(706, 1, 6, 'Samastipur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(707, 1, 6, 'Mokameh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(708, 1, 6, 'Supaul', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(709, 1, 6, 'Madhepura', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(710, 1, 6, 'Sheikhpura', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(711, 1, 6, 'Sultanganj', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(712, 1, 6, 'Raxaul Bazar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(713, 1, 6, 'Ramnagar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(714, 1, 6, 'Mahnar Bazar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(715, 1, 6, 'Revelganj', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(716, 1, 6, 'Rajgir', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(717, 1, 6, 'Sonepur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(718, 1, 6, 'Sherghati', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(719, 1, 6, 'Sugauli', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(720, 1, 6, 'Makhdumpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(721, 1, 6, 'Maner', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(722, 1, 6, 'Rosera', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(723, 1, 6, 'Piro', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(724, 1, 6, 'Rafiganj', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(725, 1, 6, 'Marhaura', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(726, 1, 6, 'Mirganj', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(727, 1, 6, 'Murliganj', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(728, 1, 6, 'Motipur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(729, 1, 6, 'Manihari', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(730, 1, 6, 'Sheohar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(731, 1, 6, 'Maharajganj', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(732, 1, 6, 'Silao', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(733, 1, 6, 'Barh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(734, 1, 6, 'Asarganj', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(735, 1, 8, 'Raipur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(736, 1, 8, 'Rajnandgaon', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(737, 1, 8, 'Raigarh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(738, 1, 8, 'Mungeli', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(739, 1, 8, 'Manendragarh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(740, 1, 8, 'Sakti', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(741, 1, 12, 'Surat', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(742, 1, 12, 'Rajkot', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(743, 1, 12, 'Porbandar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(744, 1, 12, 'Patan', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(745, 1, 12, 'Mahuva', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(746, 1, 12, 'Savarkundla', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(747, 1, 12, 'Sidhpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(748, 1, 12, 'Mangrol', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(749, 1, 12, 'Modasa', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(750, 1, 12, 'Palitana', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(751, 1, 12, 'Petlad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(752, 1, 12, 'Sihor', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(753, 1, 12, 'Mandvi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(754, 1, 12, 'Padra', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(755, 1, 12, 'Rajpipla', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(756, 1, 12, 'Sanand', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(757, 1, 12, 'Rajula', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(758, 1, 12, 'Radhanpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(759, 1, 12, 'Mahemdabad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(760, 1, 12, 'Ranavav', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(761, 1, 12, 'Mansa', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(762, 1, 12, 'Manavadar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(763, 1, 12, 'Salaya', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(764, 1, 12, 'Pardi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(765, 1, 12, 'Rapar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(766, 1, 12, 'Songadh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(767, 1, 12, 'Adalaj', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(768, 1, 13, 'Rohtak', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(769, 1, 13, 'Sonipat', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(770, 1, 13, 'Sirsa', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(771, 1, 13, 'Rewari', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(772, 1, 13, 'Mandi Dabwali', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(773, 1, 13, 'Shahbad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(774, 1, 13, 'Pehowa', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(775, 1, 13, 'Samalkha', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(776, 1, 13, 'Pinjore', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(777, 1, 13, 'Sohna', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(778, 1, 13, 'Safidon', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(779, 1, 13, 'Mahendragarh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(780, 1, 13, 'Ratia', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(781, 1, 13, 'Rania', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(782, 1, 13, 'Sarsod', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(783, 1, 14, 'Shimla', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(784, 1, 14, 'Mandi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(785, 1, 14, 'Solan', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(786, 1, 14, 'Sundarnagar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(787, 1, 14, 'Palampur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(788, 1, 15, 'Srinagar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(789, 1, 15, 'Sopore', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(790, 1, 15, 'Rajauri', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(791, 1, 15, 'Poonch', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(792, 1, 16, 'Ranchi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(793, 1, 16, 'Phusro', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(794, 1, 16, 'Ramgarh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(795, 1, 16, 'Saunda', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(796, 1, 16, 'Sahibganj', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(797, 1, 16, 'Madhupur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(798, 1, 16, 'Pakaur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(799, 1, 16, 'Simdega', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(800, 1, 16, 'Musabani', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(801, 1, 16, 'Mihijam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(802, 1, 16, 'Patratu', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(803, 1, 1, 'Shivamogga', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(804, 1, 1, 'Raayachuru', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(805, 1, 1, 'Robertson Pet', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(806, 1, 1, 'Ranebennuru', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(807, 1, 1, 'Ranibennur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(808, 1, 1, 'Ramanagaram', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(809, 1, 1, 'Rabkavi Banhatti', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(810, 1, 1, 'Shahabad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(811, 1, 1, 'Sirsi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(812, 1, 1, 'Sindhnur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(813, 1, 1, 'Sagara', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(814, 1, 1, 'Sira', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(815, 1, 1, 'Puttur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(816, 1, 1, 'Mulbagal', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(817, 1, 1, 'Surapura', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(818, 1, 1, 'Siruguppa', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(819, 1, 1, 'Mudhol', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(820, 1, 1, 'Sidlaghatta', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(821, 1, 1, 'Shahpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(822, 1, 1, 'Saundatti-Yellamma', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(823, 1, 1, 'Manvi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(824, 1, 1, 'Ramdurg', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(825, 1, 1, 'Malavalli', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(826, 1, 1, 'Savanur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(827, 1, 1, 'Sankeshwara', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(828, 1, 1, 'Madikeri', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(829, 1, 1, 'Sedam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(830, 1, 1, 'Shikaripur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(831, 1, 1, 'Mahalingapura', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(832, 1, 1, 'Mudalagi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(833, 1, 1, 'Muddebihal', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(834, 1, 1, 'Pavagada', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(835, 1, 1, 'Malur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(836, 1, 1, 'Sindhagi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(837, 1, 1, 'Sanduru', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(838, 1, 1, 'Maddur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(839, 1, 1, 'Madhugiri', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(840, 1, 1, 'Mudabidri', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(841, 1, 1, 'Magadi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(842, 1, 1, 'Shiggaon', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(843, 1, 1, 'Shrirangapattana', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(844, 1, 1, 'Sindagi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(845, 1, 1, 'Sakaleshapura', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(846, 1, 1, 'Srinivaspur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(847, 1, 1, 'Ron', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(848, 1, 1, 'Mundargi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(849, 1, 1, 'Sadalagi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(850, 1, 1, 'Piriyapatna', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(851, 1, 1, 'Adyar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(852, 1, 17, 'Palakkad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(853, 1, 17, 'Ponnani', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(854, 1, 17, 'Punalur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(855, 1, 17, 'Perinthalmanna', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(856, 1, 17, 'Mattannur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(857, 1, 17, 'Shoranur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(858, 1, 17, 'Paravoor', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(859, 1, 17, 'Pathanamthitta', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(860, 1, 17, 'Peringathur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(861, 1, 17, 'Pappinisseri', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(862, 1, 17, 'Muvattupuzha', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(863, 1, 17, 'Mavelikkara', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(864, 1, 17, 'Mavoor', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(865, 1, 17, 'Perumbavoor', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(866, 1, 17, 'Palai', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(867, 1, 17, 'Panniyannur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(868, 1, 17, 'Puthuppally', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(869, 1, 17, 'Panamattom', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(870, 1, 18, 'Sagar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(871, 1, 18, 'Ratlam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(872, 1, 18, 'Satna', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(873, 1, 18, 'Singrauli', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(874, 1, 18, 'Rewa', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(875, 1, 18, 'Shivpuri', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(876, 1, 18, 'Sarni', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(877, 1, 18, 'Sehore', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(878, 1, 18, 'Mhow Cantonment', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(879, 1, 18, 'Seoni', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(880, 1, 18, 'Shahdol', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(881, 1, 18, 'Pithampur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(882, 1, 18, 'Mandla', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(883, 1, 18, 'Sheopur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(884, 1, 18, 'Shajapur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(885, 1, 18, 'Panna', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(886, 1, 18, 'Raghogarh-Vijaypur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(887, 1, 18, 'Sendhwa', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(888, 1, 18, 'Sidhi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(889, 1, 18, 'Pipariya', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(890, 1, 18, 'Shujalpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(891, 1, 18, 'Sironj', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(892, 1, 18, 'Pandhurna', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(893, 1, 18, 'Mandideep', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(894, 1, 18, 'Sihora', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(895, 1, 18, 'Raisen', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(896, 1, 18, 'Maihar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(897, 1, 18, 'Sanawad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(898, 1, 18, 'Sabalgarh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(899, 1, 18, 'Porsa', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(900, 1, 18, 'Malaj Khand', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(901, 1, 18, 'Sarangpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(902, 1, 18, 'Mundi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(903, 1, 18, 'Pasan', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(904, 1, 18, 'Mahidpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(905, 1, 18, 'Seoni-Malwa', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(906, 1, 18, 'Rehli', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(907, 1, 18, 'Manawar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(908, 1, 18, 'Rahatgarh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(909, 1, 18, 'Panagar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(910, 1, 18, 'Sausar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(911, 1, 18, 'Rajgarh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(912, 1, 18, 'Mauganj', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(913, 1, 18, 'Manasa', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(914, 1, 18, 'Prithvipur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(915, 1, 18, 'Sohagpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(916, 1, 18, 'Shamgarh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(917, 1, 18, 'Maharajpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(918, 1, 18, 'Multai', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(919, 1, 18, 'Pachore', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(920, 1, 18, 'Rau', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(921, 1, 18, 'Mhowgaon', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(922, 1, 18, 'Vijaypur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(923, 1, 19, 'Solapur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(924, 1, 19, 'Sangli', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(925, 1, 19, 'Parbhani', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(926, 1, 19, 'Panvel', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(927, 1, 19, 'Satara', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(928, 1, 19, 'Pandharpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(929, 1, 19, 'Shrirampur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(930, 1, 19, 'Parli', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(931, 1, 19, 'Manmad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(932, 1, 19, 'Ratnagiri', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(933, 1, 19, 'Pusad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(934, 1, 19, 'Sangamner', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(935, 1, 19, 'Shirpur-Warwade', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(936, 1, 19, 'Malkapur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(937, 1, 19, 'Palghar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(938, 1, 19, 'Shegaon', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(939, 1, 19, 'Phaltan', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL);
INSERT INTO `city` (`city_id`, `country_id`, `state_id`, `city_name`, `city_code`, `is_display`, `status`, `added_on`, `added_by`, `updated_on`, `updated_by`, `is_deleted_by`, `is_deleted`, `is_deleted_on`) VALUES
(940, 1, 19, 'Shahade', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(941, 1, 19, 'Pachora', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(942, 1, 19, 'Manjlegaon', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(943, 1, 19, 'Sillod', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(944, 1, 19, 'Sailu', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(945, 1, 19, 'Murtijapur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(946, 1, 19, 'Mehkar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(947, 1, 19, 'Pulgaon', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(948, 1, 19, 'Paithan', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(949, 1, 19, 'Rahuri', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(950, 1, 19, 'Morshi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(951, 1, 19, 'Purna', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(952, 1, 19, 'Satana', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(953, 1, 19, 'Pathri', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(954, 1, 19, 'Sinnar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(955, 1, 19, 'Pen', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(956, 1, 19, 'Manwath', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(957, 1, 19, 'Partur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(958, 1, 19, 'Sangole', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(959, 1, 19, 'Mangrulpir', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(960, 1, 19, 'Risod', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(961, 1, 19, 'Shirur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(962, 1, 19, 'Savner', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(963, 1, 19, 'Sasvad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(964, 1, 19, 'Pandharkaoda', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(965, 1, 19, 'Shrigonda', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(966, 1, 19, 'Shirdi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(967, 1, 19, 'Raver', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(968, 1, 19, 'Mukhed', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(969, 1, 19, 'Rajura', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(970, 1, 19, 'Mahad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(971, 1, 19, 'Sawantwadi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(972, 1, 19, 'Pathardi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(973, 1, 19, 'Pauni', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(974, 1, 19, 'Ramtek', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(975, 1, 19, 'Mul', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(976, 1, 19, 'Soyagaon', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(977, 1, 19, 'Mangalvedhe', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(978, 1, 19, 'Shendurjana', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(979, 1, 19, 'Patur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(980, 1, 19, 'Mhaswad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(981, 1, 19, 'Nandgaon', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(982, 1, 19, 'Warud', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(983, 1, 20, 'Mayang Imphal', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(984, 1, 21, 'Shillong', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(985, 1, 22, 'Saiha', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(986, 1, 23, 'Mokokchung', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(987, 1, 24, 'Raurkela', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(988, 1, 24, 'Puri', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(989, 1, 24, 'Paradip', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(990, 1, 24, 'Sunabeda', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(991, 1, 24, 'Rayagada', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(992, 1, 24, 'Rajagangapur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(993, 1, 24, 'Parlakhemundi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(994, 1, 24, 'Sundargarh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(995, 1, 24, 'Phulabani', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(996, 1, 24, 'Pattamundai', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(997, 1, 24, 'Soro', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(998, 1, 24, 'Malkangiri', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(999, 1, 24, 'Rairangpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1000, 1, 24, 'Tarbha', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1001, 1, 25, 'Pondicherry', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1002, 1, 25, 'Mahe', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1003, 1, 26, 'Patiala', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1004, 1, 26, 'Pathankot', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1005, 1, 26, 'Mohali', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1006, 1, 26, 'Phagwara', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1007, 1, 26, 'Muktsar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1008, 1, 26, 'Rajpura', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1009, 1, 26, 'Sangrur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1010, 1, 26, 'Mansa', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1011, 1, 26, 'Malout', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1012, 1, 26, 'Sunam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1013, 1, 26, 'Sirhind Fatehgarh Sahib', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1014, 1, 26, 'Rupnagar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1015, 1, 26, 'Samana', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1016, 1, 26, 'Rampura Phul', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1017, 1, 26, 'Patti', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1018, 1, 26, 'Raikot', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1019, 1, 26, 'Morinda, India', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1020, 1, 26, 'Phillaur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1021, 1, 26, 'Pattran', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1022, 1, 26, 'Sujanpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1023, 1, 26, 'Mukerian', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1024, 1, 26, 'Talwara', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1025, 1, 27, 'Sikar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1026, 1, 27, 'Sadulpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1027, 1, 27, 'Sawai Madhopur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1028, 1, 27, 'Makrana', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1029, 1, 27, 'Sujangarh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1030, 1, 27, 'Sardarshahar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1031, 1, 27, 'Ratangarh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1032, 1, 27, 'Rajsamand', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1033, 1, 27, 'Rajgarh (Churu)', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1034, 1, 27, 'Phalodi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1035, 1, 27, 'Pilani', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1036, 1, 27, 'Merta City', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1037, 1, 27, 'Sojat', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1038, 1, 27, 'Sirohi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1039, 1, 27, 'Pratapgarh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1040, 1, 27, 'Rawatbhata', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1041, 1, 27, 'Sangaria', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1042, 1, 27, 'Pilibanga', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1043, 1, 27, 'Pipar City', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1044, 1, 27, 'Sumerpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1045, 1, 27, 'Sagwara', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1046, 1, 27, 'Ramganj Mandi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1047, 1, 27, 'Sri Madhopur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1048, 1, 27, 'Ramngarh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1049, 1, 27, 'Rawatsar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1050, 1, 27, 'Rajakhera', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1051, 1, 27, 'Shahpura', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1052, 1, 27, 'Shahpura', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1053, 1, 27, 'Raisinghnagar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1054, 1, 27, 'Malpura', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1055, 1, 27, 'Sanchore', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1056, 1, 27, 'Rajgarh (Alwar)', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1057, 1, 27, 'Sheoganj', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1058, 1, 27, 'Sadri', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1059, 1, 27, 'Reengus', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1060, 1, 27, 'Rajaldesar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1061, 1, 27, 'Sadulshahar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1062, 1, 27, 'Sambhar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1063, 1, 27, 'Prantij', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1064, 1, 27, 'Mangrol', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1065, 1, 27, 'Phulera', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1066, 1, 27, 'Mandawa', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1067, 1, 27, 'Pindwara', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1068, 1, 27, 'Mandalgarh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1069, 1, 27, 'Takhatgarh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1070, 1, 28, 'Ranipet', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1071, 1, 28, 'Pollachi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1072, 1, 28, 'Rajapalayam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1073, 1, 28, 'Sivakasi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1074, 1, 28, 'Pudukkottai', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1075, 1, 28, 'Paramakudi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1076, 1, 28, 'Srivilliputhur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1077, 1, 28, 'Palani', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1078, 1, 28, 'Pattukkottai', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1079, 1, 28, 'Ramanathapuram', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1080, 1, 28, 'Panruti', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1081, 1, 28, 'Rasipuram', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1082, 1, 28, 'Periyakulam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1083, 1, 28, 'Pernampattu', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1084, 1, 28, 'Sivaganga', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1085, 1, 28, 'Rameshwaram', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1086, 1, 28, 'Perambalur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1087, 1, 28, 'Sathyamangalam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1088, 1, 28, 'Puliyankudi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1089, 1, 28, 'Sirkali', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1090, 1, 28, 'Periyasemur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1091, 1, 28, 'Sattur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1092, 1, 28, 'Palladam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1093, 1, 28, 'Surandai', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1094, 1, 28, 'Sankari', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1095, 1, 28, 'Shenkottai', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1096, 1, 28, 'Sholingur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1097, 1, 28, 'Manachanallur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1098, 1, 28, 'Polur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1099, 1, 28, 'Panagudi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1100, 1, 28, 'Pallapatti', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1101, 1, 28, 'Ponneri', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1102, 1, 28, 'P.N.Patti', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1103, 1, 28, 'Pacode', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1104, 1, 28, 'Suriyampalayam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1105, 1, 28, 'Sholavandan', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1106, 1, 28, 'Peravurani', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1107, 1, 28, 'Parangipettai', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1108, 1, 28, 'Pudupattinam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1109, 1, 28, 'Pallikonda', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1110, 1, 28, 'Sivagiri', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1111, 1, 28, 'Punjaipugalur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1112, 1, 28, 'Padmanabhapuram', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1113, 1, 28, 'Thirupuvanam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1114, 1, 29, 'Ramagundam', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1115, 1, 29, 'Mancherial', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1116, 1, 29, 'Suryapet', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1117, 1, 29, 'Miryalaguda', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1118, 1, 29, 'Palwancha', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1119, 1, 29, 'Mandamarri', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1120, 1, 29, 'Sircilla', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1121, 1, 29, 'Siddipet', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1122, 1, 29, 'Sangareddy', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1123, 1, 29, 'Medak', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1124, 1, 29, 'Sadasivpet', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1125, 1, 29, 'Manuguru', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1126, 1, 30, 'Pratapgarh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1127, 1, 30, 'Belonia', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1128, 1, 30, 'Khowai', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1129, 1, 31, 'Shahjahanpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1130, 1, 31, 'Rampur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1131, 1, 31, 'Modinagar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1132, 1, 31, 'Rae Bareli', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1133, 1, 31, 'Sitapur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1134, 1, 31, 'Pilibhit', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1135, 1, 31, 'Hardoi ', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1136, 1, 31, 'Sultanpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1137, 1, 31, 'Shamli', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1138, 1, 31, 'Shikohabad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1139, 1, 31, 'Sikandrabad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1140, 1, 31, 'Shahabad, Hardoi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1141, 1, 31, 'Pilkhuwa', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1142, 1, 31, 'Renukoot', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1143, 1, 31, 'Sahaswan', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1144, 1, 31, 'Rath', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1145, 1, 31, 'Sherkot', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1146, 1, 31, 'Sandila', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1147, 1, 31, 'Sardhana', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1148, 1, 31, 'Seohara', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1149, 1, 31, 'Padrauna', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1150, 1, 31, 'Mathura', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1151, 1, 31, 'Siana', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1152, 1, 31, 'Sikandra Rao', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1153, 1, 31, 'Puranpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1154, 1, 31, 'Rudauli', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1155, 1, 31, 'Palia Kalan', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1156, 1, 31, 'Shikarpur, Bulandshahr', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1157, 1, 31, 'Shahabad, Rampur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1158, 1, 31, 'Robertsganj', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1159, 1, 31, 'Sadabad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1160, 1, 31, 'Rasra', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1161, 1, 31, 'Sirsaganj', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1162, 1, 31, 'Pihani', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1163, 1, 31, 'Shamsabad, Agra', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1164, 1, 31, 'Rudrapur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1165, 1, 31, 'Soron', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1166, 1, 31, 'SUrban Agglomerationr', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1167, 1, 31, 'Samdhan', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1168, 1, 31, 'Sahjanwa', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1169, 1, 31, 'Rampur Maniharan', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1170, 1, 31, 'Sumerpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1171, 1, 31, 'Shahganj', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1172, 1, 31, 'PurqUrban Agglomerationzi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1173, 1, 31, 'Shamsabad, Farrukhabad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1174, 1, 31, 'Powayan', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1175, 1, 31, 'Sandi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1176, 1, 31, 'Sahaspur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1177, 1, 31, 'Safipur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1178, 1, 31, 'Reoti', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1179, 1, 31, 'Sikanderpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1180, 1, 31, 'Saidpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1181, 1, 31, 'Sirsi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1182, 1, 31, 'Purwa', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1183, 1, 31, 'Parasi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1184, 1, 31, 'Phulpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1185, 1, 31, 'Shishgarh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1186, 1, 31, 'Sahawar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1187, 1, 31, 'Samthar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1188, 1, 31, 'Pukhrayan', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1189, 1, 31, 'Obra', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1190, 1, 31, 'Niwai', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1191, 1, 32, 'Srinagar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1192, 1, 32, 'Roorkee', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1193, 1, 32, 'Rudrapur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1194, 1, 32, 'Rishikesh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1195, 1, 32, 'Ramnagar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1196, 1, 32, 'Pithoragarh', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1197, 1, 32, 'Manglaur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1198, 1, 32, 'Mussoorie', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1199, 1, 32, 'Pauri', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1200, 1, 32, 'Sitarganj', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1201, 1, 32, 'Bageshwar', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1202, 1, 33, 'Siliguri', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1203, 1, 33, 'Raghunathganj', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1204, 1, 33, 'Raiganj', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1205, 1, 33, 'Medinipur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1206, 1, 33, 'Ranaghat', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1207, 1, 33, 'Purulia', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1208, 1, 33, 'AlipurdUrban Agglomeratio', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1209, 1, 33, 'Suri', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1210, 1, 33, 'Rampurhat', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1211, 1, 33, 'Sainthia', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1212, 1, 33, 'Murshidabad', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1213, 1, 33, 'Memari', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1214, 1, 33, 'Paschim Punropara', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1215, 1, 33, 'Sonamukhi', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1216, 1, 33, 'PandUrban Agglomeration', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1217, 1, 33, 'Mainaguri', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1218, 1, 33, 'Malda', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1219, 1, 33, 'Panchla', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1220, 1, 33, 'Raghunathpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1221, 1, 33, 'Mathabhanga', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1222, 1, 33, 'Monoharpur', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1223, 1, 33, 'Srirampore', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1224, 1, 33, 'Adra', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', NULL, NULL, '0', NULL),
(1225, 1, 31, 'Shravasti', '', 1, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:50:16', 1, NULL, '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company_profile`
--

CREATE TABLE `company_profile` (
  `company_profile_id` int(11) NOT NULL,
  `company_unique_name` varchar(1200) NOT NULL,
  `company_name` varchar(1200) NOT NULL,
  `company_email` varchar(500) DEFAULT NULL,
  `company_website` varchar(500) DEFAULT NULL,
  `letterhead_header_image` varchar(255) DEFAULT NULL,
  `person_name` varchar(500) NOT NULL,
  `email` varchar(250) NOT NULL,
  `logo` varchar(500) DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `address1` varchar(500) NOT NULL,
  `address2` varchar(500) DEFAULT NULL,
  `address3` varchar(500) DEFAULT NULL,
  `pincode` varchar(50) DEFAULT NULL,
  `mobile_no` varchar(50) NOT NULL,
  `alt_mobile_no` varchar(50) DEFAULT NULL,
  `gst_no` varchar(15) DEFAULT NULL,
  `user_image` varchar(250) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `added_on` datetime NOT NULL DEFAULT current_timestamp(),
  `added_by` int(11) NOT NULL,
  `updated_on` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `is_deleted_by` int(11) DEFAULT NULL,
  `is_deleted` char(1) NOT NULL DEFAULT '0',
  `is_deleted_on` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_profile`
--

INSERT INTO `company_profile` (`company_profile_id`, `company_unique_name`, `company_name`, `company_email`, `company_website`, `letterhead_header_image`, `person_name`, `email`, `logo`, `country_id`, `state_id`, `city_id`, `address1`, `address2`, `address3`, `pincode`, `mobile_no`, `alt_mobile_no`, `gst_no`, `user_image`, `status`, `added_on`, `added_by`, `updated_on`, `updated_by`, `is_deleted_by`, `is_deleted`, `is_deleted_on`) VALUES
(1, 'A Travellers Mind', 'A Travelers Mind', 'info@atravelersmind.in', 'www.atravelersmind.in', 'letterhead_header_image_1.jpg', 'Krishna', 'info@atravelersmindkrishna.in', 'logo_1.jpg', 1, 1, 8, 'Tumkuru', '', '', '502101', '9666364912', '', '29AASFM3822G1ZY', NULL, 1, '2022-11-21 15:17:21', 1, '2024-08-03 17:45:21', 1, NULL, '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `country_short_name` varchar(255) NOT NULL,
  `dial_code` varchar(255) NOT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `added_on` datetime NOT NULL DEFAULT current_timestamp(),
  `added_by` int(11) NOT NULL,
  `updated_on` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `is_deleted_by` int(11) DEFAULT NULL,
  `is_deleted` char(1) NOT NULL DEFAULT '0',
  `is_deleted_on` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`, `country_short_name`, `dial_code`, `country_code`, `status`, `added_on`, `added_by`, `updated_on`, `updated_by`, `is_deleted_by`, `is_deleted`, `is_deleted_on`) VALUES
(1, 'India', 'IN', '0', '91', 1, '2022-11-21 20:26:13', 1, '2024-08-03 15:40:24', 1, NULL, '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `designation_id` int(11) NOT NULL,
  `designation_name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `added_on` datetime DEFAULT current_timestamp(),
  `added_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `is_deleted` char(1) NOT NULL DEFAULT '0',
  `is_deleted_on` datetime DEFAULT NULL,
  `is_deleted_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`designation_id`, `designation_name`, `status`, `added_on`, `added_by`, `updated_on`, `updated_by`, `is_deleted`, `is_deleted_on`, `is_deleted_by`) VALUES
(1, 'Product Manager', 1, '2024-08-02 17:33:18', NULL, NULL, NULL, '0', NULL, NULL),
(2, 'Store Manager new', 1, '2024-08-02 17:33:18', NULL, '2024-08-05 17:46:50', 1, '0', NULL, NULL),
(4, 'Sales', 1, '2024-08-03 19:57:25', 1, '2024-08-05 17:46:38', 1, '0', NULL, NULL),
(5, 'Store Manager', 1, '2024-08-05 18:04:22', 1, NULL, NULL, '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email_log`
--

CREATE TABLE `email_log` (
  `id` int(11) NOT NULL,
  `subject` text DEFAULT NULL,
  `template` longtext DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `response` longtext DEFAULT NULL,
  `error_info` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `added_on` datetime DEFAULT current_timestamp(),
  `added_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_deleted_on` datetime DEFAULT NULL,
  `is_deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `facing_type`
--

CREATE TABLE `facing_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `added_on` datetime DEFAULT current_timestamp(),
  `added_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_deleted_on` datetime DEFAULT NULL,
  `is_deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `facing_type`
--

INSERT INTO `facing_type` (`id`, `name`, `status`, `added_on`, `added_by`, `updated_on`, `updated_by`, `is_deleted`, `is_deleted_on`, `is_deleted_by`) VALUES
(1, 'North', 1, '2024-08-06 12:46:40', NULL, NULL, NULL, 0, NULL, NULL),
(2, 'East', 1, '2024-08-06 12:46:40', NULL, NULL, NULL, 0, NULL, NULL),
(3, 'South', 1, '2024-08-06 12:46:40', NULL, NULL, NULL, 0, NULL, NULL),
(4, 'West', 1, '2024-08-06 12:46:40', NULL, NULL, NULL, 0, NULL, NULL),
(5, 'South-East', 1, '2024-08-06 12:46:40', NULL, NULL, NULL, 0, NULL, NULL),
(6, 'South-West', 1, '2024-08-06 12:46:41', NULL, NULL, NULL, 0, NULL, NULL),
(7, 'North-West', 1, '2024-08-06 12:46:41', NULL, NULL, NULL, 0, NULL, NULL),
(8, 'North-East', 1, '2024-08-06 12:47:38', NULL, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gated_community_type`
--

CREATE TABLE `gated_community_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `added_on` datetime DEFAULT current_timestamp(),
  `added_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_deleted_on` datetime DEFAULT NULL,
  `is_deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gated_community_type`
--

INSERT INTO `gated_community_type` (`id`, `name`, `status`, `added_on`, `added_by`, `updated_on`, `updated_by`, `is_deleted`, `is_deleted_on`, `is_deleted_by`) VALUES
(1, 'Basic Apartment - Basic Amenities', 1, '2024-08-06 13:01:18', 1, NULL, NULL, 0, NULL, NULL),
(2, 'Premium Apartment - All Amenities', 1, '2024-08-06 13:01:31', 1, NULL, NULL, 0, NULL, NULL),
(3, 'Gated Community Villa', 1, '2024-08-06 13:01:38', 1, '2024-08-06 13:01:56', 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `join_au_cp_aur`
--

CREATE TABLE `join_au_cp_aur` (
  `join_au_cp_aur_id` int(11) NOT NULL,
  `admin_user_id` int(11) NOT NULL,
  `admin_user_role_id` int(11) NOT NULL,
  `company_profile_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `added_on` datetime DEFAULT current_timestamp(),
  `added_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `is_deleted` char(1) NOT NULL DEFAULT '0',
  `is_deleted_on` datetime DEFAULT NULL,
  `is_deleted_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `join_au_cp_aur`
--

INSERT INTO `join_au_cp_aur` (`join_au_cp_aur_id`, `admin_user_id`, `admin_user_role_id`, `company_profile_id`, `status`, `added_on`, `added_by`, `updated_on`, `updated_by`, `is_deleted`, `is_deleted_on`, `is_deleted_by`) VALUES
(1, 1, 1, 1, 1, '2024-08-02 11:02:40', NULL, NULL, NULL, '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location_id` int(11) NOT NULL,
  `location_name` varchar(255) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 1,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `is_display` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `added_on` datetime DEFAULT current_timestamp(),
  `added_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_deleted_on` datetime DEFAULT NULL,
  `is_deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `location_name`, `pincode`, `country_id`, `state_id`, `city_id`, `is_display`, `status`, `added_on`, `added_by`, `updated_on`, `updated_by`, `is_deleted`, `is_deleted_on`, `is_deleted_by`) VALUES
(1, 'jayanagar 4th block', '560069', 1, 1, 651, 1, 1, '2024-08-05 19:21:39', 1, '2024-08-05 19:51:36', 1, 0, NULL, NULL),
(2, 'Dollars colony', '560060', 1, 1, 19, 1, 1, '2024-08-06 15:06:19', 1, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `module_id` int(11) NOT NULL,
  `module_name` varchar(500) NOT NULL,
  `main_menu_name` varchar(255) NOT NULL,
  `is_master` int(11) NOT NULL,
  `parent_module_id` int(11) NOT NULL,
  `class_name` varchar(500) DEFAULT NULL,
  `function_name` varchar(500) DEFAULT NULL,
  `count_function_name` varchar(200) DEFAULT NULL,
  `is_company_profile_id` int(11) NOT NULL DEFAULT 0 COMMENT 'count according to company_profile_id 1=yes , 0=no',
  `direct_db_count` int(11) DEFAULT NULL,
  `table_name` varchar(500) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `is_display` int(11) NOT NULL,
  `icon` varchar(500) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `added_on` datetime DEFAULT current_timestamp(),
  `added_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `is_deleted` char(1) NOT NULL DEFAULT '0',
  `is_deleted_on` datetime DEFAULT NULL,
  `is_deleted_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`module_id`, `module_name`, `main_menu_name`, `is_master`, `parent_module_id`, `class_name`, `function_name`, `count_function_name`, `is_company_profile_id`, `direct_db_count`, `table_name`, `position`, `is_display`, `icon`, `status`, `added_on`, `added_by`, `updated_on`, `updated_by`, `is_deleted`, `is_deleted_on`, `is_deleted_by`) VALUES
(1, 'Role Manager', 'Masters', 1, 0, 'master/Admin-user-role-module', 'list', '', 0, 1, 'admin_user_role', 101, 1, NULL, 1, '2024-08-02 12:02:43', 1, '2024-08-05 17:58:53', NULL, '0', NULL, NULL),
(2, 'Country', 'Masters', 1, 0, 'master/Country-module', 'list', '', 0, 1, 'country', 102, 0, NULL, 1, '2024-08-02 12:02:43', 1, '2024-08-05 19:02:01', NULL, '0', NULL, NULL),
(3, 'State', 'Masters', 1, 0, 'master/State-module', 'list', '', 0, 1, 'state', 103, 1, NULL, 1, '2024-08-02 12:02:43', 1, '2024-08-05 17:58:56', NULL, '0', NULL, NULL),
(4, 'City', 'Masters', 1, 0, 'master/City-module', 'list', '', 0, 1, 'city', 104, 1, NULL, 1, '2024-08-02 12:02:43', 1, '2024-08-05 17:58:59', NULL, '0', NULL, NULL),
(5, 'Designation', 'Masters', 1, 0, 'master/Designation-module', 'list', '', 0, 1, 'designation', 105, 1, NULL, 1, '2024-08-02 12:02:43', 1, '2024-08-05 17:59:00', NULL, '0', NULL, NULL),
(6, 'Employee', 'Human Resource', 2, 0, 'human_resource/Admin-user-module', 'list', '', 0, 1, 'admin_user', 201, 1, NULL, 1, '2024-08-02 12:02:43', 1, '2024-08-05 18:15:35', NULL, '0', NULL, NULL),
(7, 'Company Profile', 'Company Profile', 3, 0, 'company_profile/Company-profile-module', 'list', '', 0, 1, 'company_profile', 301, 1, NULL, 1, '2024-08-02 12:02:43', 1, '2024-08-05 17:59:03', NULL, '0', NULL, NULL),
(8, 'Department', 'Masters', 1, 0, 'master/Department-module', 'list', '', 0, 1, 'department', 106, 0, NULL, 1, '2024-08-02 12:02:43', 1, '2024-08-05 19:01:56', NULL, '0', NULL, NULL),
(9, 'Location', 'Masters', 1, 0, 'master/Location-module', 'list', '', 0, 1, 'location', 107, 1, NULL, 1, '2024-08-02 12:02:43', 1, '2024-08-05 17:59:04', NULL, '0', NULL, NULL),
(10, 'Property Sub Type', 'Masters', 1, 0, 'master/Property-sub-type-module', 'list', '', 0, 1, 'property_sub_type', 107, 1, NULL, 1, '2024-08-02 12:02:43', 1, '2024-08-06 12:10:55', NULL, '0', NULL, NULL),
(11, 'BHK Type', 'Masters', 1, 0, 'master/Bhk-type-module', 'list', '', 0, 1, 'bhk_type', 107, 1, NULL, 1, '2024-08-02 12:02:43', 1, '2024-08-06 12:10:55', NULL, '0', NULL, NULL),
(12, 'Gated Community Type', 'Masters', 1, 0, 'master/Gated-community-type-module', 'list', '', 0, 1, 'gated_community_type', 107, 1, NULL, 1, '2024-08-02 12:02:43', 1, '2024-08-06 12:53:05', NULL, '0', NULL, NULL),
(13, 'Property Age', 'Masters', 1, 0, 'master/Property-age-module', 'list', '', 0, 1, 'property_age', 107, 1, NULL, 1, '2024-08-02 12:02:43', 1, '2024-08-06 12:53:05', NULL, '0', NULL, NULL),
(14, 'Property', 'Catalog', 1, 0, 'catalog/Property-module', 'list', '', 0, 1, 'property', 107, 1, NULL, 1, '2024-08-02 12:02:43', 1, '2024-08-06 12:53:05', NULL, '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `module_permission`
--

CREATE TABLE `module_permission` (
  `module_permission_id` bigint(20) NOT NULL,
  `module_id` int(11) NOT NULL,
  `admin_user_role_id` int(11) NOT NULL,
  `view_module` tinyint(4) NOT NULL,
  `add_module` tinyint(4) NOT NULL,
  `update_module` tinyint(4) NOT NULL,
  `delete_module` tinyint(4) NOT NULL,
  `approval_module` tinyint(4) NOT NULL DEFAULT 0,
  `import_data` tinyint(4) NOT NULL,
  `export_data` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `added_on` datetime DEFAULT current_timestamp(),
  `added_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `is_deleted` char(1) NOT NULL DEFAULT '0',
  `is_deleted_on` datetime DEFAULT NULL,
  `is_deleted_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module_permission`
--

INSERT INTO `module_permission` (`module_permission_id`, `module_id`, `admin_user_role_id`, `view_module`, `add_module`, `update_module`, `delete_module`, `approval_module`, `import_data`, `export_data`, `status`, `added_on`, `added_by`, `updated_on`, `updated_by`, `is_deleted`, `is_deleted_on`, `is_deleted_by`) VALUES
(20, 10, 1, 1, 1, 1, 0, 0, 1, 1, 1, '2024-08-06 12:11:44', NULL, NULL, NULL, '0', NULL, NULL),
(19, 9, 1, 1, 1, 1, 0, 0, 1, 1, 1, '2024-08-06 12:11:44', NULL, NULL, NULL, '0', NULL, NULL),
(18, 8, 1, 1, 1, 1, 0, 0, 1, 1, 1, '2024-08-06 12:11:44', NULL, NULL, NULL, '0', NULL, NULL),
(17, 7, 1, 1, 1, 1, 0, 0, 1, 1, 1, '2024-08-06 12:11:44', NULL, NULL, NULL, '0', NULL, NULL),
(16, 6, 1, 1, 1, 1, 0, 0, 1, 1, 1, '2024-08-06 12:11:44', NULL, NULL, NULL, '0', NULL, NULL),
(15, 5, 1, 1, 1, 1, 0, 0, 1, 1, 1, '2024-08-06 12:11:44', NULL, NULL, NULL, '0', NULL, NULL),
(14, 4, 1, 1, 1, 1, 0, 0, 1, 1, 1, '2024-08-06 12:11:44', NULL, NULL, NULL, '0', NULL, NULL),
(13, 3, 1, 1, 1, 1, 0, 0, 1, 1, 1, '2024-08-06 12:11:44', NULL, NULL, NULL, '0', NULL, NULL),
(12, 2, 1, 1, 1, 1, 0, 0, 1, 1, 1, '2024-08-06 12:11:44', NULL, NULL, NULL, '0', NULL, NULL),
(11, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, '2024-08-06 12:11:44', NULL, NULL, NULL, '0', NULL, NULL),
(21, 11, 1, 1, 1, 1, 0, 0, 1, 1, 1, '2024-08-06 12:11:44', NULL, NULL, NULL, '0', NULL, NULL),
(22, 12, 1, 1, 1, 1, 0, 0, 1, 1, 1, '2024-08-06 12:11:44', NULL, NULL, NULL, '0', NULL, NULL),
(23, 13, 1, 1, 1, 1, 0, 0, 1, 1, 1, '2024-08-06 12:11:44', NULL, NULL, NULL, '0', NULL, NULL),
(24, 14, 1, 1, 1, 1, 0, 0, 1, 1, 1, '2024-08-06 12:11:44', NULL, NULL, NULL, '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `id` int(11) NOT NULL,
  `sl_no` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `property_type_id` int(11) NOT NULL,
  `property_sub_type_id` int(11) NOT NULL,
  `property_custom_id` int(11) DEFAULT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `property_age_id` int(11) NOT NULL,
  `bhk_type_id` int(11) DEFAULT NULL,
  `plot_facing_type_id` int(11) DEFAULT NULL,
  `door_facing_type_id` int(11) DEFAULT NULL,
  `plot_dimension_sqft` varchar(255) DEFAULT NULL,
  `built_up_area` varchar(255) DEFAULT NULL,
  `in_acres` varchar(255) DEFAULT NULL,
  `in_guntas` varchar(255) DEFAULT NULL,
  `gated_community_type_id` int(11) DEFAULT NULL,
  `is_rent_lease_sale` tinyint(4) NOT NULL,
  `rent_lease_sale_amount` decimal(15,2) NOT NULL,
  `is_negotiable` tinyint(4) NOT NULL,
  `is_display` tinyint(4) NOT NULL,
  `youtube_link` text DEFAULT NULL,
  `description` longtext NOT NULL,
  `other_details` longtext NOT NULL,
  `cover_image` varchar(255) NOT NULL,
  `cover_image_title` varchar(255) NOT NULL,
  `cover_image_alt_title` varchar(255) NOT NULL,
  `slug_url` text NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `added_on` datetime DEFAULT current_timestamp(),
  `added_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_deleted_on` datetime DEFAULT NULL,
  `is_deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `property_age`
--

CREATE TABLE `property_age` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `added_on` datetime DEFAULT current_timestamp(),
  `added_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_deleted_on` datetime DEFAULT NULL,
  `is_deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `property_age`
--

INSERT INTO `property_age` (`id`, `name`, `status`, `added_on`, `added_by`, `updated_on`, `updated_by`, `is_deleted`, `is_deleted_on`, `is_deleted_by`) VALUES
(1, 'Less than 1 Year', 1, '2024-08-06 13:09:18', 1, NULL, NULL, 0, NULL, NULL),
(2, '1-To-5 Years', 1, '2024-08-06 13:09:25', 1, NULL, NULL, 0, NULL, NULL),
(3, '5-To-10 Years', 1, '2024-08-06 13:09:34', 1, NULL, NULL, 0, NULL, NULL),
(4, '10-To-15 Years', 1, '2024-08-06 13:09:43', 1, NULL, NULL, 0, NULL, NULL),
(5, '15-To-20 Years', 1, '2024-08-06 13:09:51', 1, NULL, NULL, 0, NULL, NULL),
(6, 'More than 20 Years', 1, '2024-08-06 13:10:01', 1, '2024-08-06 13:10:58', 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `property_gallery_image`
--

CREATE TABLE `property_gallery_image` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `file_title` varchar(255) DEFAULT NULL,
  `file_alt_title` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) NOT NULL,
  `position` int(11) DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `added_on` datetime DEFAULT current_timestamp(),
  `added_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_deleted_on` datetime DEFAULT NULL,
  `is_deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `property_sub_type`
--

CREATE TABLE `property_sub_type` (
  `id` int(11) NOT NULL,
  `property_type_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `added_on` datetime DEFAULT current_timestamp(),
  `added_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_deleted_on` datetime DEFAULT NULL,
  `is_deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `property_sub_type`
--

INSERT INTO `property_sub_type` (`id`, `property_type_id`, `name`, `status`, `added_on`, `added_by`, `updated_on`, `updated_by`, `is_deleted`, `is_deleted_on`, `is_deleted_by`) VALUES
(4, 2, 'Independent House', 1, '2024-08-06 12:20:46', 1, '2024-08-06 13:18:30', 1, 0, NULL, NULL),
(5, 2, 'Flat', 1, '2024-08-06 12:21:01', 1, NULL, NULL, 0, NULL, NULL),
(6, 9, 'Flat', 1, '2024-08-06 13:24:33', 1, NULL, NULL, 0, NULL, NULL),
(7, 2, 'Builder/Owner\'s Floor', 1, '2024-08-06 13:39:42', 1, '2024-08-06 13:39:56', 1, 0, NULL, NULL),
(8, 2, 'Big Commercial Shops/Space', 1, '2024-08-06 13:40:39', 1, NULL, NULL, 0, NULL, NULL),
(9, 2, 'Commercial Space for office Purpose (Furnished)', 1, '2024-08-06 13:40:52', 1, NULL, NULL, 0, NULL, NULL),
(10, 2, 'Commercial Space for office Purpose (Unfurnished)', 1, '2024-08-06 13:41:08', 1, NULL, NULL, 0, NULL, NULL),
(11, 2, 'Empty Commercial Plot', 1, '2024-08-06 13:41:21', 1, NULL, NULL, 0, NULL, NULL),
(12, 2, 'Godown/Storage', 1, '2024-08-06 13:41:31', 1, NULL, NULL, 0, NULL, NULL),
(13, 2, 'Independent House (Commercial)', 1, '2024-08-06 13:41:47', 1, NULL, NULL, 0, NULL, NULL),
(14, 2, 'Small Commercial Shops/Space', 1, '2024-08-06 13:41:58', 1, NULL, NULL, 0, NULL, NULL),
(15, 3, 'Independent House', 1, '2024-08-06 12:20:46', 1, '2024-08-06 13:18:30', 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `property_type`
--

CREATE TABLE `property_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `added_on` datetime DEFAULT current_timestamp(),
  `added_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_deleted_on` datetime DEFAULT NULL,
  `is_deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `property_type`
--

INSERT INTO `property_type` (`id`, `name`, `status`, `added_on`, `added_by`, `updated_on`, `updated_by`, `is_deleted`, `is_deleted_on`, `is_deleted_by`) VALUES
(1, 'Rent_Residential', 1, '2024-08-06 11:26:01', NULL, '2024-08-06 11:33:31', NULL, 0, NULL, NULL),
(2, 'Rent_Commercial', 1, '2024-08-06 11:33:21', NULL, NULL, NULL, 0, NULL, NULL),
(3, 'Sale_Residential Flat', 1, '2024-08-06 11:33:21', NULL, NULL, NULL, 0, NULL, NULL),
(4, 'Sale_Residential House', 1, '2024-08-06 11:33:21', NULL, NULL, NULL, 0, NULL, NULL),
(5, 'Sale_Residential Site', 1, '2024-08-06 11:33:21', NULL, NULL, NULL, 0, NULL, NULL),
(6, 'Sale_Commercial Site', 1, '2024-08-06 11:33:21', NULL, NULL, NULL, 0, NULL, NULL),
(7, 'Sale_Commercial Building', 1, '2024-08-06 11:33:21', NULL, NULL, NULL, 0, NULL, NULL),
(8, 'Sale_Agriculture', 1, '2024-08-06 11:33:21', NULL, NULL, NULL, 0, NULL, NULL),
(9, 'New Projects', 1, '2024-08-06 11:33:21', NULL, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL,
  `state_code` varchar(255) DEFAULT NULL,
  `is_display` int(11) NOT NULL DEFAULT 1,
  `province_code` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `added_on` datetime DEFAULT current_timestamp(),
  `added_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `is_deleted` char(1) NOT NULL DEFAULT '0',
  `is_deleted_on` datetime DEFAULT NULL,
  `is_deleted_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `country_id`, `state_name`, `state_code`, `is_display`, `province_code`, `status`, `added_on`, `added_by`, `updated_on`, `updated_by`, `is_deleted`, `is_deleted_on`, `is_deleted_by`) VALUES
(1, 1, 'Karnataka', '29', 1, NULL, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:49:17', 1, '0', NULL, NULL),
(2, 1, 'Andaman and Nicobar Islan', '35', 1, NULL, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:49:43', 1, '0', NULL, NULL),
(3, 1, 'Andhra Pradesh', '28', 1, NULL, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:49:43', 1, '0', NULL, NULL),
(4, 1, 'Arunachal Pradesh', '12', 1, NULL, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:49:43', 1, '0', NULL, NULL),
(5, 1, 'Assam', '18', 1, NULL, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:49:43', 1, '0', NULL, NULL),
(6, 1, 'Bihar', '10', 1, NULL, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:49:43', 1, '0', NULL, NULL),
(7, 1, 'Chandigarh', '4', 1, NULL, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:49:43', 1, '0', NULL, NULL),
(8, 1, 'Chhattisgarh', '22', 1, NULL, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:49:43', 1, '0', NULL, NULL),
(9, 1, 'Dadra and Nagar Haveli', '26', 1, NULL, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:49:43', 1, '0', NULL, NULL),
(10, 1, 'Delhi', '7', 1, NULL, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:49:43', 1, '0', NULL, NULL),
(11, 1, 'Goa', '30', 1, NULL, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:49:43', 1, '0', NULL, NULL),
(12, 1, 'Gujarat', '24', 1, NULL, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:49:43', 1, '0', NULL, NULL),
(13, 1, 'Haryana', '6', 1, NULL, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:49:43', 1, '0', NULL, NULL),
(14, 1, 'Himachal Pradesh', '2', 1, NULL, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:49:43', 1, '0', NULL, NULL),
(15, 1, 'Jammu and Kashmir', '1', 1, NULL, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:49:43', 1, '0', NULL, NULL),
(16, 1, 'Jharkhand', '20', 1, NULL, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:49:43', 1, '0', NULL, NULL),
(17, 1, 'Kerala', '32', 1, NULL, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:49:43', 1, '0', NULL, NULL),
(18, 1, 'Madhya Pradesh', '23', 1, NULL, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:49:43', 1, '0', NULL, NULL),
(19, 1, 'Maharashtra', '27', 1, NULL, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:49:43', 1, '0', NULL, NULL),
(20, 1, 'Manipur', '14', 1, NULL, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:49:43', 1, '0', NULL, NULL),
(21, 1, 'Meghalaya', '17', 1, NULL, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:49:43', 1, '0', NULL, NULL),
(22, 1, 'Mizoram', '15', 1, NULL, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:49:43', 1, '0', NULL, NULL),
(23, 1, 'Nagaland', '13', 1, NULL, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:49:43', 1, '0', NULL, NULL),
(24, 1, 'Odisha', '21', 1, NULL, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:49:43', 1, '0', NULL, NULL),
(25, 1, 'Puducherry', '34', 1, NULL, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:49:43', 1, '0', NULL, NULL),
(26, 1, 'Punjab', '3', 1, NULL, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:49:43', 1, '0', NULL, NULL),
(27, 1, 'Rajasthan', '8', 1, NULL, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:49:43', 1, '0', NULL, NULL),
(28, 1, 'Tamil Nadu', '33', 1, NULL, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:49:43', 1, '0', NULL, NULL),
(29, 1, 'Telangana', '36', 1, NULL, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:49:43', 1, '0', NULL, NULL),
(30, 1, 'Tripura', '16', 1, NULL, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:49:43', 1, '0', NULL, NULL),
(31, 1, 'Uttar Pradesh', '9', 1, NULL, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:49:43', 1, '0', NULL, NULL),
(32, 1, 'Uttarakhand', '5', 1, NULL, 1, '2024-08-06 00:00:00', 1, '2024-08-06 13:49:43', 1, '0', NULL, NULL),
(33, 1, 'West Bengal', '19', 1, NULL, 1, '2024-08-06 00:00:00', 1, '2024-08-06 15:05:39', 1, '0', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`admin_user_id`);

--
-- Indexes for table `admin_user_file`
--
ALTER TABLE `admin_user_file`
  ADD PRIMARY KEY (`admin_user_file_id`);

--
-- Indexes for table `admin_user_role`
--
ALTER TABLE `admin_user_role`
  ADD PRIMARY KEY (`admin_user_role_id`);

--
-- Indexes for table `au_pwd_reset_token`
--
ALTER TABLE `au_pwd_reset_token`
  ADD PRIMARY KEY (`au_pwd_reset_token_id`);

--
-- Indexes for table `bhk_type`
--
ALTER TABLE `bhk_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `company_profile`
--
ALTER TABLE `company_profile`
  ADD PRIMARY KEY (`company_profile_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`designation_id`);

--
-- Indexes for table `email_log`
--
ALTER TABLE `email_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facing_type`
--
ALTER TABLE `facing_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `gated_community_type`
--
ALTER TABLE `gated_community_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `join_au_cp_aur`
--
ALTER TABLE `join_au_cp_aur`
  ADD PRIMARY KEY (`join_au_cp_aur_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `module_permission`
--
ALTER TABLE `module_permission`
  ADD PRIMARY KEY (`module_permission_id`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_age`
--
ALTER TABLE `property_age`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `property_gallery_image`
--
ALTER TABLE `property_gallery_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_sub_type`
--
ALTER TABLE `property_sub_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_type`
--
ALTER TABLE `property_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `admin_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_user_file`
--
ALTER TABLE `admin_user_file`
  MODIFY `admin_user_file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `admin_user_role`
--
ALTER TABLE `admin_user_role`
  MODIFY `admin_user_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `au_pwd_reset_token`
--
ALTER TABLE `au_pwd_reset_token`
  MODIFY `au_pwd_reset_token_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bhk_type`
--
ALTER TABLE `bhk_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1228;

--
-- AUTO_INCREMENT for table `company_profile`
--
ALTER TABLE `company_profile`
  MODIFY `company_profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `designation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `email_log`
--
ALTER TABLE `email_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `facing_type`
--
ALTER TABLE `facing_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `gated_community_type`
--
ALTER TABLE `gated_community_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `join_au_cp_aur`
--
ALTER TABLE `join_au_cp_aur`
  MODIFY `join_au_cp_aur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `module_permission`
--
ALTER TABLE `module_permission`
  MODIFY `module_permission_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `property_age`
--
ALTER TABLE `property_age`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `property_gallery_image`
--
ALTER TABLE `property_gallery_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `property_sub_type`
--
ALTER TABLE `property_sub_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `property_type`
--
ALTER TABLE `property_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
