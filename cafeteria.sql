-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 17, 2018 at 12:54 PM
-- Server version: 5.7.23-0ubuntu0.16.04.1
-- PHP Version: 7.1.20-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cafeteria`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `role` varchar(100) NOT NULL,
  `mobile` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `password`, `username`, `role`, `mobile`, `status`) VALUES
(1, 'admin@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'admin', 'admin', '1234567890', 0),
(2, 'manager@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'manager', 'manager', '9876543210', 0),
(3, 'kitchen@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'kitchen', 'kitchen', '0123456789', 0);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `book_id` int(11) NOT NULL,
  `payment` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `bike_cc` varchar(255) DEFAULT NULL,
  `bike_plan` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `txid` varchar(255) DEFAULT NULL,
  `service` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`book_id`, `payment`, `email`, `mobile`, `bike_cc`, `bike_plan`, `name`, `txid`, `service`, `created_at`) VALUES
(1, '354', 'amit@gmail.com', '9990708450', 'Bikes_Below_150CC', 'Basic Plan', 'amit', 'tx-14269', NULL, '2018-07-13 12:04:32'),
(2, '354', 'sahutech8@gmail.com', '845834685', 'Bikes_Below_150CC', 'Standard Plan', 'sahutech', 'tx-54405', NULL, '2018-07-13 12:04:32'),
(3, '413', 'sahutech8@gmail.com', '845834685', 'Bikes_Below_150CC', 'Premium Plan', 'sahutech', 'tx-17777', NULL, '2018-07-13 12:04:32'),
(4, '354', 'sahutech8@gmail.com', '845834685', 'Bikes_Below_150CC', 'Basic Plan', 'sahutech', 'tx-20235', 3, '2018-07-13 12:04:32'),
(5, '350', NULL, NULL, 'Bikes_Below_150CC', 'Basic Plan', NULL, 'tx-99148', 3, '2018-07-15 04:25:23'),
(6, '300', NULL, NULL, 'Bikes_Below_150CC', 'Standard Plan', NULL, 'tx-50331', 4, '2018-07-15 04:27:07'),
(7, '300', NULL, NULL, 'Bikes_Below_150CC', 'Standard Plan', NULL, 'tx-78773', 4, '2018-07-15 04:31:28'),
(8, '300', NULL, NULL, 'Bikes_Below_150CC', 'Basic Plan', NULL, 'tx-21994', 3, '2018-07-15 04:40:50'),
(9, '1300', NULL, NULL, 'Bikes_Below_150CC', 'Basic Plan', NULL, 'tx-55041', 3, '2018-07-17 19:51:36'),
(10, '50', NULL, NULL, 'Bikes_150CC_and_220CC', 'Premium Plan', NULL, 'tx-60778', 6, '2018-07-18 09:42:29');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_cat` varchar(255) NOT NULL,
  `brand_sub_cat` varchar(255) NOT NULL,
  `brand_slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `brand_table`
--

CREATE TABLE `brand_table` (
  `SN` int(11) NOT NULL,
  `Brand_price` varchar(255) NOT NULL,
  `Brand_Name` varchar(255) NOT NULL,
  `Brand_menu` varchar(255) NOT NULL,
  `discount_price` varchar(100) NOT NULL,
  `total_price` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand_table`
--

INSERT INTO `brand_table` (`SN`, `Brand_price`, `Brand_Name`, `Brand_menu`, `discount_price`, `total_price`) VALUES
(10, '400', 'Chicken Korma', 'Chicken', '4', '384'),
(11, '300', 'vag food', 'Vagitable', '4', '288');

-- --------------------------------------------------------

--
-- Table structure for table `category_table`
--

CREATE TABLE `category_table` (
  `cat_id` int(11) NOT NULL,
  `SN` int(11) NOT NULL,
  `Category_ID` varchar(255) NOT NULL,
  `Category_Name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_table`
--

INSERT INTO `category_table` (`cat_id`, `SN`, `Category_ID`, `Category_Name`) VALUES
(23, 0, '001', 'chicken'),
(24, 0, '002', 'vagitable'),
(25, 0, '003', 'snacks'),
(26, 0, '001', 'lunch'),
(27, 0, '005', 'dinner');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `COL 1` int(3) DEFAULT NULL,
  `COL 2` varchar(20) DEFAULT NULL,
  `COL 3` int(2) DEFAULT NULL,
  `COL 4` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`COL 1`, `COL 2`, `COL 3`, `COL 4`) VALUES
(1, 'Adilabad', 32, 'Telangana'),
(2, 'Agra', 34, 'Uttar Pradesh'),
(3, 'Ahmed Nagar', 21, 'Maharashtra'),
(4, 'Ahmedabad City', 12, 'Gujarat'),
(5, 'Aizawl', 24, 'Mizoram'),
(6, 'Ajmer', 29, 'Rajasthan'),
(7, 'Akola', 21, 'Maharashtra'),
(8, 'Aligarh', 34, 'Uttar Pradesh'),
(9, 'Allahabad', 34, 'Uttar Pradesh'),
(10, 'Alleppey', 18, 'Kerala'),
(11, 'Almora', 35, 'Uttarakhand'),
(12, 'Alwar', 29, 'Rajasthan'),
(13, 'Alwaye', 18, 'Kerala'),
(14, 'Amalapuram', 2, 'Andhra Pradesh'),
(15, 'Ambala', 13, 'Haryana'),
(16, 'Ambedkar Nagar', 34, 'Uttar Pradesh'),
(17, 'Amravati', 21, 'Maharashtra'),
(18, 'Amreli', 12, 'Gujarat'),
(19, 'Amritsar', 28, 'Punjab'),
(20, 'Anakapalle', 2, 'Andhra Pradesh'),
(21, 'Anand', 12, 'Gujarat'),
(22, 'Anantapur', 2, 'Andhra Pradesh'),
(23, 'Ananthnag', 15, 'Jammu & Kashmir'),
(24, 'Anna Road H.O', 31, 'Tamil Nadu'),
(25, 'Arakkonam', 31, 'Tamil Nadu'),
(26, 'Asansol', 36, 'West Bengal'),
(27, 'Aska', 26, 'Odisha'),
(28, 'Auraiya', 34, 'Uttar Pradesh'),
(29, 'Aurangabad', 21, 'Maharashtra'),
(30, 'Aurangabad(Bihar)', 5, 'Bihar'),
(31, 'Azamgarh', 34, 'Uttar Pradesh'),
(32, 'Bagalkot', 17, 'Karnataka'),
(33, 'Bageshwar', 35, 'Uttarakhand'),
(34, 'Bagpat', 34, 'Uttar Pradesh'),
(35, 'Bahraich', 34, 'Uttar Pradesh'),
(36, 'Balaghat', 20, 'Madhya Pradesh'),
(37, 'Balangir', 26, 'Odisha'),
(38, 'Balasore', 26, 'Odisha'),
(39, 'Ballia', 34, 'Uttar Pradesh'),
(40, 'Balrampur', 34, 'Uttar Pradesh'),
(41, 'Banasanktha', 12, 'Gujarat'),
(42, 'Banda', 34, 'Uttar Pradesh'),
(43, 'Bandipur', 15, 'Jammu & Kashmir'),
(44, 'Bankura', 36, 'West Bengal'),
(45, 'Banswara', 29, 'Rajasthan'),
(46, 'Barabanki', 34, 'Uttar Pradesh'),
(47, 'Baramulla', 15, 'Jammu & Kashmir'),
(48, 'Baran', 29, 'Rajasthan'),
(49, 'Bardoli', 12, 'Gujarat'),
(50, 'Bareilly', 34, 'Uttar Pradesh'),
(51, 'Barmer', 29, 'Rajasthan'),
(52, 'Barnala', 28, 'Punjab'),
(53, 'Barpeta', 4, 'Assam'),
(54, 'Bastar', 7, 'Chattisgarh'),
(55, 'Basti', 34, 'Uttar Pradesh'),
(56, 'Bathinda', 28, 'Punjab'),
(57, 'Beed', 21, 'Maharashtra'),
(58, 'Begusarai', 5, 'Bihar'),
(59, 'Belgaum', 17, 'Karnataka'),
(60, 'Bellary', 17, 'Karnataka'),
(61, 'Bengaluru East', 17, 'Karnataka'),
(62, 'Bengaluru South', 17, 'Karnataka'),
(63, 'Bengaluru West', 17, 'Karnataka'),
(64, 'Berhampur', 26, 'Odisha'),
(65, 'Bhadrak', 26, 'Odisha'),
(66, 'Bhagalpur', 5, 'Bihar'),
(67, 'Bhandara', 21, 'Maharashtra'),
(68, 'Bharatpur', 29, 'Rajasthan'),
(69, 'Bharuch', 12, 'Gujarat'),
(70, 'Bhavnagar', 12, 'Gujarat'),
(71, 'Bhilwara', 29, 'Rajasthan'),
(72, 'Bhimavaram', 2, 'Andhra Pradesh'),
(73, 'Bhiwani', 13, 'Haryana'),
(74, 'Bhojpur', 5, 'Bihar'),
(75, 'Bhopal', 20, 'Madhya Pradesh'),
(76, 'Bhubaneswar', 26, 'Odisha'),
(77, 'Bidar', 17, 'Karnataka'),
(78, 'Bijapur', 17, 'Karnataka'),
(79, 'Bijnor', 34, 'Uttar Pradesh'),
(80, 'Bikaner', 29, 'Rajasthan'),
(81, 'Bilaspur', 7, 'Chattisgarh'),
(82, 'Birbhum', 36, 'West Bengal'),
(83, 'Bishnupur', 22, 'Manipur'),
(84, 'Bongaigaon', 4, 'Assam'),
(85, 'Budaun', 34, 'Uttar Pradesh'),
(86, 'Budgam', 15, 'Jammu & Kashmir'),
(87, 'Bulandshahr', 34, 'Uttar Pradesh'),
(88, 'Buldhana', 21, 'Maharashtra'),
(89, 'Bundi', 29, 'Rajasthan'),
(90, 'Burdwan', 36, 'West Bengal'),
(91, 'Cachar', 4, 'Assam'),
(92, 'Calicut', 18, 'Kerala'),
(93, 'Carnicobar', 1, 'Andaman & Nicobar Islands'),
(94, 'Chamba', 14, 'Himachal Pradesh'),
(95, 'Chamoli', 35, 'Uttarakhand'),
(96, 'Champawat', 35, 'Uttarakhand'),
(97, 'Champhai', 24, 'Mizoram'),
(98, 'Chandauli', 34, 'Uttar Pradesh'),
(99, 'Chandel', 22, 'Manipur'),
(100, 'Chandigarh', 6, 'Chandigarh'),
(101, 'Chandrapur', 21, 'Maharashtra'),
(102, 'Changanacherry', 18, 'Kerala'),
(103, 'Changlang', 3, 'Arunachal Pradesh'),
(104, 'Channapatna', 17, 'Karnataka'),
(105, 'Chengalpattu', 31, 'Tamil Nadu'),
(106, 'Chennai City Central', 31, 'Tamil Nadu'),
(107, 'Chennai City North', 31, 'Tamil Nadu'),
(108, 'Chennai City South', 31, 'Tamil Nadu'),
(109, 'Chhatarpur', 20, 'Madhya Pradesh'),
(110, 'Chhindwara', 20, 'Madhya Pradesh'),
(111, 'Chikmagalur', 17, 'Karnataka'),
(112, 'Chikodi', 17, 'Karnataka'),
(113, 'Chitradurga', 17, 'Karnataka'),
(114, 'Chitrakoot', 34, 'Uttar Pradesh'),
(115, 'Chittoor', 2, 'Andhra Pradesh'),
(116, 'Chittorgarh', 29, 'Rajasthan'),
(117, 'Churachandpur', 22, 'Manipur'),
(118, 'Churu', 29, 'Rajasthan'),
(119, 'Coimbatore', 31, 'Tamil Nadu'),
(120, 'Contai', 36, 'West Bengal'),
(121, 'Cooch Behar', 36, 'West Bengal'),
(122, 'Cuddalore', 31, 'Tamil Nadu'),
(123, 'Cuddapah', 2, 'Andhra Pradesh'),
(124, 'Cuttack City', 26, 'Odisha'),
(125, 'Cuttack North', 26, 'Odisha'),
(126, 'Cuttack South', 26, 'Odisha'),
(127, 'Dadra & Nagar Haveli', 8, 'Dadra & Nagar Haveli'),
(128, 'Daman', 9, 'Daman & Diu'),
(129, 'Darbhanga', 5, 'Bihar'),
(130, 'Darjiling', 36, 'West Bengal'),
(131, 'Darrang', 4, 'Assam'),
(132, 'Dausa', 29, 'Rajasthan'),
(133, 'Dehra Gopipur', 14, 'Himachal Pradesh'),
(134, 'Dehradun', 35, 'Uttarakhand'),
(135, 'Delhi', 10, 'Delhi'),
(136, 'Deoria', 34, 'Uttar Pradesh'),
(137, 'Dhalai', 33, 'Tripura'),
(138, 'Dhanbad', 16, 'Jharkhand'),
(139, 'Dharamsala', 14, 'Himachal Pradesh'),
(140, 'Dharmapuri', 31, 'Tamil Nadu'),
(141, 'Dharwad', 17, 'Karnataka'),
(142, 'Dhemaji', 4, 'Assam'),
(143, 'Dhenkanal', 26, 'Odisha'),
(144, 'Dholpur', 29, 'Rajasthan'),
(145, 'Dhubri', 4, 'Assam'),
(146, 'Dhule', 21, 'Maharashtra'),
(147, 'Dibang Valley', 3, 'Arunachal Pradesh'),
(148, 'Dibrugarh', 4, 'Assam'),
(149, 'Diglipur', 1, 'Andaman & Nicobar Islands'),
(150, 'Dimapur', 25, 'Nagaland'),
(151, 'Dindigul', 31, 'Tamil Nadu'),
(152, 'Diu', 9, 'Daman & Diu'),
(153, 'Doda', 15, 'Jammu & Kashmir'),
(154, 'Dungarpur', 29, 'Rajasthan'),
(155, 'Durg', 7, 'Chattisgarh'),
(156, 'East Champaran', 5, 'Bihar'),
(157, 'East Garo Hills', 23, 'Meghalaya'),
(158, 'East Kameng', 3, 'Arunachal Pradesh'),
(159, 'East Khasi Hills', 23, 'Meghalaya'),
(160, 'East Siang', 3, 'Arunachal Pradesh'),
(161, 'East Sikkim', 30, 'Sikkim'),
(162, 'Eluru', 2, 'Andhra Pradesh'),
(163, 'Ernakulam', 18, 'Kerala'),
(164, 'Erode', 31, 'Tamil Nadu'),
(165, 'Etah', 34, 'Uttar Pradesh'),
(166, 'Etawah', 34, 'Uttar Pradesh'),
(167, 'Faizabad', 34, 'Uttar Pradesh'),
(168, 'Faridabad', 13, 'Haryana'),
(169, 'Faridkot', 28, 'Punjab'),
(170, 'Farrukhabad', 34, 'Uttar Pradesh'),
(171, 'Fatehgarh Sahib', 28, 'Punjab'),
(172, 'Fatehpur', 34, 'Uttar Pradesh'),
(173, 'Fazilka', 28, 'Punjab'),
(174, 'Ferrargunj', 1, 'Andaman & Nicobar Islands'),
(175, 'Firozabad', 34, 'Uttar Pradesh'),
(176, 'Firozpur', 28, 'Punjab'),
(177, 'Gadag', 17, 'Karnataka'),
(178, 'Gadchiroli', 21, 'Maharashtra'),
(179, 'Gandhinagar', 12, 'Gujarat'),
(180, 'Ganganagar', 29, 'Rajasthan'),
(181, 'Gautam Buddha Nagar', 34, 'Uttar Pradesh'),
(182, 'Gaya', 5, 'Bihar'),
(183, 'Ghaziabad', 34, 'Uttar Pradesh'),
(184, 'Ghazipur', 34, 'Uttar Pradesh'),
(185, 'Giridih', 16, 'Jharkhand'),
(186, 'Goa', 11, 'Goa'),
(187, 'Goalpara', 4, 'Assam'),
(188, 'Gokak', 17, 'Karnataka'),
(189, 'Golaghat', 4, 'Assam'),
(190, 'Gonda', 34, 'Uttar Pradesh'),
(191, 'Gondal', 12, 'Gujarat'),
(192, 'Gondia', 21, 'Maharashtra'),
(193, 'Gorakhpur', 34, 'Uttar Pradesh'),
(194, 'Gudivada', 2, 'Andhra Pradesh'),
(195, 'Gudur', 2, 'Andhra Pradesh'),
(196, 'Gulbarga', 17, 'Karnataka'),
(197, 'Guna', 20, 'Madhya Pradesh'),
(198, 'Guntur', 2, 'Andhra Pradesh'),
(199, 'Gurdaspur', 28, 'Punjab'),
(200, 'Gurugram', 13, 'Haryana'),
(201, 'Gwalior', 20, 'Madhya Pradesh'),
(202, 'Hailakandi', 4, 'Assam'),
(203, 'Hamirpur (HP)', 14, 'Himachal Pradesh'),
(204, 'Hamirpur (UP)', 34, 'Uttar Pradesh'),
(205, 'Hanamkonda', 32, 'Telangana'),
(206, 'Hanumangarh', 29, 'Rajasthan'),
(207, 'Hardoi', 34, 'Uttar Pradesh'),
(208, 'Haridwar', 35, 'Uttarakhand'),
(209, 'Hassan', 17, 'Karnataka'),
(210, 'Hathras', 34, 'Uttar Pradesh'),
(211, 'Haveri', 17, 'Karnataka'),
(212, 'Hazaribagh', 16, 'Jharkhand'),
(213, 'Hindupur', 2, 'Andhra Pradesh'),
(214, 'Hingoli', 21, 'Maharashtra'),
(215, 'Hissar', 13, 'Haryana'),
(216, 'Hooghly', 36, 'West Bengal'),
(217, 'Hoshangabad', 20, 'Madhya Pradesh'),
(218, 'Hoshiarpur', 28, 'Punjab'),
(219, 'Howrah', 36, 'West Bengal'),
(220, 'Hut Bay', 1, 'Andaman & Nicobar Islands'),
(221, 'Hyderabad City', 32, 'Telangana'),
(222, 'Hyderabad South East', 32, 'Telangana'),
(223, 'Idukki', 18, 'Kerala'),
(224, 'Imphal East', 22, 'Manipur'),
(225, 'Imphal West', 22, 'Manipur'),
(226, 'Indore City', 20, 'Madhya Pradesh'),
(227, 'Indore Moffusil', 20, 'Madhya Pradesh'),
(228, 'Irinjalakuda', 18, 'Kerala'),
(229, 'Jabalpur', 20, 'Madhya Pradesh'),
(230, 'Jaintia Hills', 23, 'Meghalaya'),
(231, 'Jaipur', 29, 'Rajasthan'),
(232, 'Jaisalmer', 29, 'Rajasthan'),
(233, 'Jalandhar', 28, 'Punjab'),
(234, 'Jalaun', 34, 'Uttar Pradesh'),
(235, 'Jalgaon', 21, 'Maharashtra'),
(236, 'Jalna', 21, 'Maharashtra'),
(237, 'Jalor', 29, 'Rajasthan'),
(238, 'Jalpaiguri', 36, 'West Bengal'),
(239, 'Jammu', 15, 'Jammu & Kashmir'),
(240, 'Jamnagar', 12, 'Gujarat'),
(241, 'Jaunpur', 34, 'Uttar Pradesh'),
(242, 'Jhalawar', 29, 'Rajasthan'),
(243, 'Jhansi', 34, 'Uttar Pradesh'),
(244, 'Jhujhunu', 29, 'Rajasthan'),
(245, 'Jodhpur', 29, 'Rajasthan'),
(246, 'Jorhat', 4, 'Assam'),
(247, 'Junagadh', 12, 'Gujarat'),
(248, 'Jyotiba Phule Nagar', 34, 'Uttar Pradesh'),
(249, 'Kakinada', 2, 'Andhra Pradesh'),
(250, 'Kalahandi', 26, 'Odisha'),
(251, 'Kamrup', 4, 'Assam'),
(252, 'Kanchipuram', 31, 'Tamil Nadu'),
(253, 'Kannauj', 34, 'Uttar Pradesh'),
(254, 'Kanniyakumari', 31, 'Tamil Nadu'),
(255, 'Kannur', 18, 'Kerala'),
(256, 'Kanpur Dehat', 34, 'Uttar Pradesh'),
(257, 'Kanpur Nagar', 34, 'Uttar Pradesh'),
(258, 'Kapurthala', 28, 'Punjab'),
(259, 'Karaikal', 27, 'Poducherry'),
(260, 'Karaikudi', 31, 'Tamil Nadu'),
(261, 'Karauli', 29, 'Rajasthan'),
(262, 'Karbi Anglong', 4, 'Assam'),
(263, 'Kargil', 15, 'Jammu & Kashmir'),
(264, 'Karimganj', 4, 'Assam'),
(265, 'Karimnagar', 32, 'Telangana'),
(266, 'Karnal', 13, 'Haryana'),
(267, 'Karur', 31, 'Tamil Nadu'),
(268, 'Karwar', 17, 'Karnataka'),
(269, 'Kasaragod', 18, 'Kerala'),
(270, 'Kathua', 15, 'Jammu & Kashmir'),
(271, 'Kaushambi', 34, 'Uttar Pradesh'),
(272, 'Keonjhar', 26, 'Odisha'),
(273, 'Khammam (AP)', 2, 'Andhra Pradesh'),
(274, 'Khammam (TL)', 32, 'Telangana'),
(275, 'Khandwa', 20, 'Madhya Pradesh'),
(276, 'Kheda', 12, 'Gujarat'),
(277, 'Kheri', 34, 'Uttar Pradesh'),
(278, 'Kiphire', 25, 'Nagaland'),
(279, 'Kodagu', 17, 'Karnataka'),
(280, 'Kohima', 25, 'Nagaland'),
(281, 'Kokrajhar', 4, 'Assam'),
(282, 'Kolar', 17, 'Karnataka'),
(283, 'Kolasib', 24, 'Mizoram'),
(284, 'Kolhapur', 21, 'Maharashtra'),
(285, 'Kolkata', 36, 'West Bengal'),
(286, 'Koraput', 26, 'Odisha'),
(287, 'Kota', 29, 'Rajasthan'),
(288, 'Kottayam', 18, 'Kerala'),
(289, 'Kovilpatti', 31, 'Tamil Nadu'),
(290, 'Krishnagiri', 31, 'Tamil Nadu'),
(291, 'Kulgam', 15, 'Jammu & Kashmir'),
(292, 'Kumbakonam', 31, 'Tamil Nadu'),
(293, 'Kupwara', 15, 'Jammu & Kashmir'),
(294, 'Kurnool', 2, 'Andhra Pradesh'),
(295, 'Kurukshetra', 13, 'Haryana'),
(296, 'Kurung Kumey', 3, 'Arunachal Pradesh'),
(297, 'Kushinagar', 34, 'Uttar Pradesh'),
(298, 'Kutch', 12, 'Gujarat'),
(299, 'Lakhimpur', 4, 'Assam'),
(300, 'Lakshadweep', 19, 'Lakshadweep'),
(301, 'Lalitpur', 34, 'Uttar Pradesh'),
(302, 'Latur', 21, 'Maharashtra'),
(303, 'Lawngtlai', 24, 'Mizoram'),
(304, 'Leh', 15, 'Jammu & Kashmir'),
(305, 'Lohit', 3, 'Arunachal Pradesh'),
(306, 'Longleng', 25, 'Nagaland'),
(307, 'Lower Subansiri', 3, 'Arunachal Pradesh'),
(308, 'Lucknow', 34, 'Uttar Pradesh'),
(309, 'Ludhiana', 28, 'Punjab'),
(310, 'Lunglei', 24, 'Mizoram'),
(311, 'Machilipatnam', 2, 'Andhra Pradesh'),
(312, 'Madhubani', 5, 'Bihar'),
(313, 'Madurai', 31, 'Tamil Nadu'),
(314, 'Mahabubnagar', 32, 'Telangana'),
(315, 'Maharajganj', 34, 'Uttar Pradesh'),
(316, 'Mahesana', 12, 'Gujarat'),
(317, 'Mahoba', 34, 'Uttar Pradesh'),
(318, 'Mainpuri', 34, 'Uttar Pradesh'),
(319, 'Malda', 36, 'West Bengal'),
(320, 'Mammit', 24, 'Mizoram'),
(321, 'Mandi', 14, 'Himachal Pradesh'),
(322, 'Mandsaur', 20, 'Madhya Pradesh'),
(323, 'Mandya', 17, 'Karnataka'),
(324, 'Mangalore', 17, 'Karnataka'),
(325, 'Manjeri', 18, 'Kerala'),
(326, 'Mansa', 28, 'Punjab'),
(327, 'Marigaon', 4, 'Assam'),
(328, 'Mathura', 34, 'Uttar Pradesh'),
(329, 'Mau', 34, 'Uttar Pradesh'),
(330, 'Mavelikara', 18, 'Kerala'),
(331, 'Mayabander', 1, 'Andaman & Nicobar Islands'),
(332, 'Mayiladuthurai', 31, 'Tamil Nadu'),
(333, 'Mayurbhanj', 26, 'Odisha'),
(334, 'Medak', 32, 'Telangana'),
(335, 'Meerut', 34, 'Uttar Pradesh'),
(336, 'Meghalaya', 23, 'Meghalaya'),
(337, 'Midnapore', 36, 'West Bengal'),
(338, 'Mirzapur', 34, 'Uttar Pradesh'),
(339, 'Moga', 28, 'Punjab'),
(340, 'Mohali', 28, 'Punjab'),
(341, 'Mokokchung', 25, 'Nagaland'),
(342, 'Mon', 25, 'Nagaland'),
(343, 'Monghyr', 5, 'Bihar'),
(344, 'Moradabad', 34, 'Uttar Pradesh'),
(345, 'Morena', 20, 'Madhya Pradesh'),
(346, 'Muktsar', 28, 'Punjab'),
(347, 'Mumbai', 21, 'Maharashtra'),
(348, 'Murshidabad', 36, 'West Bengal'),
(349, 'Muzaffarnagar', 34, 'Uttar Pradesh'),
(350, 'Muzaffarpur', 5, 'Bihar'),
(351, 'Mysore', 17, 'Karnataka'),
(352, 'Nadia', 36, 'West Bengal'),
(353, 'Nagaon', 4, 'Assam'),
(354, 'Nagapattinam', 31, 'Tamil Nadu'),
(355, 'Nagaur', 29, 'Rajasthan'),
(356, 'Nagpur', 21, 'Maharashtra'),
(357, 'Nainital', 35, 'Uttarakhand'),
(358, 'Nalanda', 5, 'Bihar'),
(359, 'Nalbari', 4, 'Assam'),
(360, 'Nalgonda', 32, 'Telangana'),
(361, 'Namakkal', 31, 'Tamil Nadu'),
(362, 'Nancorie', 1, 'Andaman & Nicobar Islands'),
(363, 'Nancowrie', 1, 'Andaman & Nicobar Islands'),
(364, 'Nanded', 21, 'Maharashtra'),
(365, 'Nandurbar', 21, 'Maharashtra'),
(366, 'Nandyal', 2, 'Andhra Pradesh'),
(367, 'Nanjangud', 17, 'Karnataka'),
(368, 'Narasaraopet', 2, 'Andhra Pradesh'),
(369, 'Nashik', 21, 'Maharashtra'),
(370, 'Navsari', 12, 'Gujarat'),
(371, 'Nawadha', 5, 'Bihar'),
(372, 'Nawanshahr', 28, 'Punjab'),
(373, 'Nellore', 2, 'Andhra Pradesh'),
(374, 'Nilgiris', 31, 'Tamil Nadu'),
(375, 'Nizamabad', 32, 'Telangana'),
(376, 'North 24 Parganas', 36, 'West Bengal'),
(377, 'North Cachar Hills', 4, 'Assam'),
(378, 'North Dinajpur', 36, 'West Bengal'),
(379, 'North Sikkim', 30, 'Sikkim'),
(380, 'North Tripura', 33, 'Tripura'),
(381, 'Osmanabad', 21, 'Maharashtra'),
(382, 'Ottapalam', 18, 'Kerala'),
(383, 'Palamau', 16, 'Jharkhand'),
(384, 'Palghat', 18, 'Kerala'),
(385, 'Pali', 29, 'Rajasthan'),
(386, 'Panchmahals', 12, 'Gujarat'),
(387, 'Papum Pare', 3, 'Arunachal Pradesh'),
(388, 'Parbhani', 21, 'Maharashtra'),
(389, 'Parvathipuram', 2, 'Andhra Pradesh'),
(390, 'Patan', 12, 'Gujarat'),
(391, 'Pathanamthitta', 18, 'Kerala'),
(392, 'Patiala', 28, 'Punjab'),
(393, 'Patna', 5, 'Bihar'),
(394, 'Pattukottai', 31, 'Tamil Nadu'),
(395, 'Pauri Garhwal', 35, 'Uttarakhand'),
(396, 'Peddapalli', 32, 'Telangana'),
(397, 'Peren', 25, 'Nagaland'),
(398, 'Phek', 25, 'Nagaland'),
(399, 'Phulbani', 26, 'Odisha'),
(400, 'Pilibhit', 34, 'Uttar Pradesh'),
(401, 'Pithoragarh', 35, 'Uttarakhand'),
(402, 'Poducherry (PD)', 27, 'Poducherry'),
(403, 'Poducherry (TN)', 31, 'Tamil Nadu'),
(404, 'Pollachi', 31, 'Tamil Nadu'),
(405, 'Poonch', 15, 'Jammu & Kashmir'),
(406, 'Porbandar', 12, 'Gujarat'),
(407, 'Port Blair', 1, 'Andaman & Nicobar Islands'),
(408, 'Prakasam', 2, 'Andhra Pradesh'),
(409, 'Pratapgarh', 34, 'Uttar Pradesh'),
(410, 'Proddatur', 2, 'Andhra Pradesh'),
(411, 'Pudukkottai', 31, 'Tamil Nadu'),
(412, 'Pulwama', 15, 'Jammu & Kashmir'),
(413, 'Pune', 21, 'Maharashtra'),
(414, 'Puri', 26, 'Odisha'),
(415, 'Purnea', 5, 'Bihar'),
(416, 'Purulia', 36, 'West Bengal'),
(417, 'Puttur', 17, 'Karnataka'),
(418, 'Quilon', 18, 'Kerala'),
(419, 'Raebareli', 34, 'Uttar Pradesh'),
(420, 'Raichur', 17, 'Karnataka'),
(421, 'Raigarh (CT)', 7, 'Chattisgarh'),
(422, 'Raigarh (MH)', 21, 'Maharashtra'),
(423, 'Raipur', 7, 'Chattisgarh'),
(424, 'Rajahmundry', 2, 'Andhra Pradesh'),
(425, 'Rajauri', 15, 'Jammu & Kashmir'),
(426, 'Rajkot', 12, 'Gujarat'),
(427, 'Rajsamand', 29, 'Rajasthan'),
(428, 'Ramanathapuram', 31, 'Tamil Nadu'),
(429, 'Rampur', 34, 'Uttar Pradesh'),
(430, 'Rampur Bushahr', 14, 'Himachal Pradesh'),
(431, 'Ranchi', 16, 'Jharkhand'),
(432, 'Rangat', 1, 'Andaman & Nicobar Islands'),
(433, 'Ratlam', 20, 'Madhya Pradesh'),
(434, 'Ratnagiri', 21, 'Maharashtra'),
(435, 'Reasi', 15, 'Jammu & Kashmir'),
(436, 'Rewa', 20, 'Madhya Pradesh'),
(437, 'Ri Bhoi', 23, 'Meghalaya'),
(438, 'Rohtak', 13, 'Haryana'),
(439, 'Rohtas', 5, 'Bihar'),
(440, 'Ropar', 28, 'Punjab'),
(441, 'Rudraprayag', 35, 'Uttarakhand'),
(442, 'Rupnagar', 28, 'Punjab'),
(443, 'Sabarkantha', 12, 'Gujarat'),
(444, 'Sagar', 20, 'Madhya Pradesh'),
(445, 'Saharanpur', 34, 'Uttar Pradesh'),
(446, 'Saharsa', 5, 'Bihar'),
(447, 'Salem East', 31, 'Tamil Nadu'),
(448, 'Salem West', 31, 'Tamil Nadu'),
(449, 'Samastipur', 5, 'Bihar'),
(450, 'Sambalpur', 26, 'Odisha'),
(451, 'Sangareddy', 32, 'Telangana'),
(452, 'Sangli', 21, 'Maharashtra'),
(453, 'Sangrur', 28, 'Punjab'),
(454, 'Sant Kabir Nagar', 34, 'Uttar Pradesh'),
(455, 'Sant Ravidas Nagar', 34, 'Uttar Pradesh'),
(456, 'Santhal Parganas', 16, 'Jharkhand'),
(457, 'Saran', 5, 'Bihar'),
(458, 'Satara', 21, 'Maharashtra'),
(459, 'Sawai Madhopur', 29, 'Rajasthan'),
(460, 'Secunderabad', 32, 'Telangana'),
(461, 'Sehore', 20, 'Madhya Pradesh'),
(462, 'Senapati', 22, 'Manipur'),
(463, 'Serchhip', 24, 'Mizoram'),
(464, 'Shahdol', 20, 'Madhya Pradesh'),
(465, 'Shahjahanpur', 34, 'Uttar Pradesh'),
(466, 'Shimla', 14, 'Himachal Pradesh'),
(467, 'Shimoga', 17, 'Karnataka'),
(468, 'Shrawasti', 34, 'Uttar Pradesh'),
(469, 'Sibsagar', 4, 'Assam'),
(470, 'Siddharthnagar', 34, 'Uttar Pradesh'),
(471, 'Sikar', 29, 'Rajasthan'),
(472, 'Sindhudurg', 21, 'Maharashtra'),
(473, 'Singhbhum', 16, 'Jharkhand'),
(474, 'Sirohi', 29, 'Rajasthan'),
(475, 'Sirsi', 17, 'Karnataka'),
(476, 'Sitamarhi', 5, 'Bihar'),
(477, 'Sitapur', 34, 'Uttar Pradesh'),
(478, 'Sivaganga', 31, 'Tamil Nadu'),
(479, 'Siwan', 5, 'Bihar'),
(480, 'Solan', 14, 'Himachal Pradesh'),
(481, 'Solapur', 21, 'Maharashtra'),
(482, 'Sonbhadra', 34, 'Uttar Pradesh'),
(483, 'Sonepat', 13, 'Haryana'),
(484, 'Sonitpur', 4, 'Assam'),
(485, 'South 24 Parganas', 36, 'West Bengal'),
(486, 'South Dinajpur', 36, 'West Bengal'),
(487, 'South Garo Hills', 23, 'Meghalaya'),
(488, 'South Sikkim', 30, 'Sikkim'),
(489, 'South Tripura', 33, 'Tripura'),
(490, 'Srikakulam', 2, 'Andhra Pradesh'),
(491, 'Srinagar', 15, 'Jammu & Kashmir'),
(492, 'Srirangam', 31, 'Tamil Nadu'),
(493, 'Sultanpur', 34, 'Uttar Pradesh'),
(494, 'Sundargarh', 26, 'Odisha'),
(495, 'Surat', 12, 'Gujarat'),
(496, 'Surendranagar', 12, 'Gujarat'),
(497, 'Suryapet', 32, 'Telangana'),
(498, 'Tadepalligudem', 2, 'Andhra Pradesh'),
(499, 'Tambaram', 31, 'Tamil Nadu'),
(500, 'Tamenglong', 22, 'Manipur'),
(501, 'Tamluk', 36, 'West Bengal'),
(502, 'Tarn Taran', 28, 'Punjab'),
(503, 'Tawang', 3, 'Arunachal Pradesh'),
(504, 'Tehri Garhwal', 35, 'Uttarakhand'),
(505, 'Tenali', 2, 'Andhra Pradesh'),
(506, 'Thalassery', 18, 'Kerala'),
(507, 'Thane', 21, 'Maharashtra'),
(508, 'Thanjavur', 31, 'Tamil Nadu'),
(509, 'Theni', 31, 'Tamil Nadu'),
(510, 'Thoubal', 22, 'Manipur'),
(511, 'Tinsukia', 4, 'Assam'),
(512, 'Tirap', 3, 'Arunachal Pradesh'),
(513, 'Tiruchirapalli', 31, 'Tamil Nadu'),
(514, 'Tirunelveli', 31, 'Tamil Nadu'),
(515, 'Tirupati', 2, 'Andhra Pradesh'),
(516, 'Tirupattur', 31, 'Tamil Nadu'),
(517, 'Tirupur', 31, 'Tamil Nadu'),
(518, 'Tirur', 18, 'Kerala'),
(519, 'Tiruvalla', 18, 'Kerala'),
(520, 'Tiruvannamalai', 31, 'Tamil Nadu'),
(521, 'Tonk', 29, 'Rajasthan'),
(522, 'Trichur', 18, 'Kerala'),
(523, 'Trivandrum North', 18, 'Kerala'),
(524, 'Trivandrum South', 18, 'Kerala'),
(525, 'Tuensang', 25, 'Nagaland'),
(526, 'Tumkur', 17, 'Karnataka'),
(527, 'Tuticorin', 31, 'Tamil Nadu'),
(528, 'Udaipur', 29, 'Rajasthan'),
(529, 'Udham Singh Nagar', 35, 'Uttarakhand'),
(530, 'Udhampur', 15, 'Jammu & Kashmir'),
(531, 'Udupi', 17, 'Karnataka'),
(532, 'Ujjain', 20, 'Madhya Pradesh'),
(533, 'Ukhrul', 22, 'Manipur'),
(534, 'Una', 14, 'Himachal Pradesh'),
(535, 'Unnao', 34, 'Uttar Pradesh'),
(536, 'Upper Siang', 3, 'Arunachal Pradesh'),
(537, 'Upper Subansiri', 3, 'Arunachal Pradesh'),
(538, 'Uttarkashi', 35, 'Uttarakhand'),
(539, 'Vadakara', 18, 'Kerala'),
(540, 'Vadodara East', 12, 'Gujarat'),
(541, 'Vadodara West', 12, 'Gujarat'),
(542, 'Vaishali', 5, 'Bihar'),
(543, 'Valsad', 12, 'Gujarat'),
(544, 'Varanasi', 34, 'Uttar Pradesh'),
(545, 'Vellore', 31, 'Tamil Nadu'),
(546, 'Vidisha', 20, 'Madhya Pradesh'),
(547, 'Vijayawada', 2, 'Andhra Pradesh'),
(548, 'Virudhunagar', 31, 'Tamil Nadu'),
(549, 'Visakhapatnam', 2, 'Andhra Pradesh'),
(550, 'Vizianagaram', 2, 'Andhra Pradesh'),
(551, 'Vriddhachalam', 31, 'Tamil Nadu'),
(552, 'Wanaparthy', 32, 'Telangana'),
(553, 'Warangal', 32, 'Telangana'),
(554, 'Wardha', 21, 'Maharashtra'),
(555, 'Washim', 21, 'Maharashtra'),
(556, 'West Champaran', 5, 'Bihar'),
(557, 'West Garo Hills', 23, 'Meghalaya'),
(558, 'West Kameng', 3, 'Arunachal Pradesh'),
(559, 'West Khasi Hills', 23, 'Meghalaya'),
(560, 'West Siang', 3, 'Arunachal Pradesh'),
(561, 'West Sikkim', 30, 'Sikkim'),
(562, 'West Tripura', 33, 'Tripura'),
(563, 'Wokha', 25, 'Nagaland'),
(564, 'Yavatmal', 21, 'Maharashtra'),
(565, 'Zunhebotto', 25, 'Nagaland');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `order_menu` text NOT NULL,
  `order_quantity` text,
  `order_table` int(11) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `menu_price` text,
  `dis_price` text,
  `total_price` varchar(100) DEFAULT NULL,
  `tot_qua` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `order_menu`, `order_quantity`, `order_table`, `user_name`, `menu_price`, `dis_price`, `total_price`, `tot_qua`) VALUES
(14, 'Chicken Korma,vag food', '1,1', 1, NULL, '400,300', '384,288', '672', ''),
(15, 'Chicken Korma,vag food', '3,5', 1, NULL, '400,300', '384,288', '2592', ''),
(16, 'Chicken Korma,vag food', '4,5', 3, NULL, '400,300', '384,288', '2976', ''),
(17, 'Chicken Korma,vag food', '2,3', 4, NULL, '400,300', '384,288', '1632', ''),
(18, 'Chicken Korma,vag food', '1,2', 4, NULL, '400,300', '384,288', '960', 'Full,half');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `txn_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `payment_gross` float(10,2) NOT NULL,
  `currency_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `payer_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `popular_brand`
--

CREATE TABLE `popular_brand` (
  `pop_id` int(11) NOT NULL,
  `populer_brand_name` varchar(200) NOT NULL,
  `populer_brand_slug` varchar(200) NOT NULL,
  `populer_brand_tag` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `popular_brand`
--

INSERT INTO `popular_brand` (`pop_id`, `populer_brand_name`, `populer_brand_slug`, `populer_brand_tag`) VALUES
(1, 'Sagar Ratna', 'sagar-ratna', 'sagar ratna'),
(2, 'Pizza Hut', 'pizza-hut', 'pizza hut'),
(3, 'Netram', 'netram', 'netram'),
(4, 'Keventers', 'keventers', 'keventers');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_price` float(10,2) NOT NULL,
  `product_discount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `discount_total` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `product_category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_sub_cat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_brand` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `product_address` text COLLATE utf8_unicode_ci NOT NULL,
  `deliver_time` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `product_top` int(11) NOT NULL DEFAULT '0',
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_image`, `product_price`, `product_discount`, `discount_total`, `product_category`, `product_sub_cat`, `product_brand`, `product_desc`, `product_address`, `deliver_time`, `product_top`, `status`) VALUES
(4, 'aaa', 'travel4.png', 544.00, '4', '522', 'chicken', 'Chicken fry', 'ratna', '                    fcsdfdsfds                    ', 'A 81/3 O;d Kondli New Delhi                    ', '23:04', 0, '1'),
(5, 'aaa', 'staring.png', 544.00, '4', '522', 'chicken', 'Chicken fry', 'ratna', '                    fcsdfdsfds                                                            ', 'A 81/3 O;d Kondli New Delhi                                                            ', '23:04', 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `product_cat`
--

CREATE TABLE `product_cat` (
  `cat_id` int(11) NOT NULL,
  `prod_cat_name` varchar(150) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `tag` varchar(150) NOT NULL,
  `images` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_cat`
--

INSERT INTO `product_cat` (`cat_id`, `prod_cat_name`, `slug`, `tag`, `images`) VALUES
(5, 'chicken', 'chicken', 'chicken', ''),
(6, 'Meat', 'meat', 'meat', ''),
(7, 'Vagitable', 'vagitable', 'vagitable', ''),
(8, 'Snacks', 'snacks', 'snacks', ''),
(9, 'dinner', 'dinner', 'dinner', ''),
(10, 'breakfast', 'breakfast', 'breakfast', '');

-- --------------------------------------------------------

--
-- Table structure for table `prod_sub_cat`
--

CREATE TABLE `prod_sub_cat` (
  `sub_cat_id` int(11) NOT NULL,
  `prod_category` varchar(255) NOT NULL,
  `sub_cat_name` varchar(255) NOT NULL,
  `sub_cat_slug` varchar(255) NOT NULL,
  `sub_cat_tag` varchar(255) NOT NULL,
  `images` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prod_sub_cat`
--

INSERT INTO `prod_sub_cat` (`sub_cat_id`, `prod_category`, `sub_cat_name`, `sub_cat_slug`, `sub_cat_tag`, `images`) VALUES
(2, 'Meat', 'fresh motton', 'fresh-motton', 'fresh motton', ''),
(3, 'Vagitable', 'pure vag', 'pure-vag', 'pure vag', ''),
(4, 'Meat', 'bhuna meat', 'bhuna-meat', 'bhuna meat', ''),
(5, 'chicken', 'Chicken fry', 'chicken-fry', 'chicken fry', ''),
(6, 'chicken', 'tagri kabab', 'tagri-kabab', 'tagri kabab', ''),
(7, 'breakfast', 'bread egg', 'bread-egg', 'bread egg', '');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `res_id` int(11) NOT NULL,
  `Service_ID` varchar(100) DEFAULT NULL,
  `user_name` varchar(150) DEFAULT NULL,
  `res_table_seat` varchar(150) NOT NULL,
  `res_seat` varchar(200) NOT NULL,
  `waiter_service` varchar(100) DEFAULT NULL,
  `res_date_and_time` varchar(100) DEFAULT NULL,
  `order_close` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`res_id`, `Service_ID`, `user_name`, `res_table_seat`, `res_seat`, `waiter_service`, `res_date_and_time`, `order_close`, `status`) VALUES
(10, 'right-6', 'itcare', '2', 'reserved', 'kasif', '2018/09/19 15:14', 1, 1),
(11, 'right-4', NULL, '5', 'available', NULL, NULL, NULL, 0),
(12, 'left-4', 'itcare', '6', 'reserved', 'demo', '2018/09/20 20:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_table`
--

CREATE TABLE `service_table` (
  `SN` int(11) NOT NULL,
  `Service_ID` varchar(255) NOT NULL,
  `Service_Name` varchar(255) NOT NULL,
  `total_seat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_table`
--

INSERT INTO `service_table` (`SN`, `Service_ID`, `Service_Name`, `total_seat`) VALUES
(70, '1', 'left', 2),
(71, '2', 'middle', 4),
(72, '3', 'right', 3),
(73, '6', 'left', 6);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `COL 1` int(2) DEFAULT NULL,
  `COL 2` varchar(25) DEFAULT NULL,
  `COL 3` int(1) DEFAULT NULL,
  `COL 4` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`COL 1`, `COL 2`, `COL 3`, `COL 4`) VALUES
(1, 'Andaman & Nicobar Islands', 1, 'India'),
(2, 'Andhra Pradesh', 1, 'India'),
(3, 'Arunachal Pradesh', 1, 'India'),
(4, 'Assam', 1, 'India'),
(5, 'Bihar', 1, 'India'),
(6, 'Chandigarh', 1, 'India'),
(7, 'Chattisgarh', 1, 'India'),
(8, 'Dadra & Nagar Haveli', 1, 'India'),
(9, 'Daman & Diu', 1, 'India'),
(10, 'Delhi', 1, 'India'),
(11, 'Goa', 1, 'India'),
(12, 'Gujarat', 1, 'India'),
(13, 'Haryana', 1, 'India'),
(14, 'Himachal Pradesh', 1, 'India'),
(15, 'Jammu & Kashmir', 1, 'India'),
(16, 'Jharkhand', 1, 'India'),
(17, 'Karnataka', 1, 'India'),
(18, 'Kerala', 1, 'India'),
(19, 'Lakshadweep', 1, 'India'),
(20, 'Madhya Pradesh', 1, 'India'),
(21, 'Maharashtra', 1, 'India'),
(22, 'Manipur', 1, 'India'),
(23, 'Meghalaya', 1, 'India'),
(24, 'Mizoram', 1, 'India'),
(25, 'Nagaland', 1, 'India'),
(26, 'Odisha', 1, 'India'),
(27, 'Poducherry', 1, 'India'),
(28, 'Punjab', 1, 'India'),
(29, 'Rajasthan', 1, 'India'),
(30, 'Sikkim', 1, 'India'),
(31, 'Tamil Nadu', 1, 'India'),
(32, 'Telangana', 1, 'India'),
(33, 'Tripura', 1, 'India'),
(34, 'Uttar Pradesh', 1, 'India'),
(35, 'Uttarakhand', 1, 'India'),
(36, 'West Bengal', 1, 'India');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL,
  `stock_cat` varchar(100) NOT NULL,
  `stock_name` varchar(100) NOT NULL,
  `stock_url` varchar(150) NOT NULL,
  `stock_price` varchar(100) NOT NULL,
  `stock_quantity` float NOT NULL,
  `stock_total` varchar(100) NOT NULL,
  `stock_status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `stock_cat`, `stock_name`, `stock_url`, `stock_price`, `stock_quantity`, `stock_total`, `stock_status`, `created_at`, `updated_at`) VALUES
(1, 'chilli', 'Chilli Powder', 'Chilli-Powder', '200', 12, '23', 2, '2018-09-12 10:46:05', '2018-09-12 12:07:17'),
(3, 'chilli', 'grenn cilli', 'grenn-cilli', '400', 3, '9', 0, '2018-09-12 11:37:22', '2018-09-12 12:29:11'),
(6, 'chilli', 'chilli powder', 'chilli-powder', '45', 1, '45', 0, '2018-09-12 12:40:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stock_cat`
--

CREATE TABLE `stock_cat` (
  `stock_cat_id` int(11) NOT NULL,
  `stoke_cat_name` varchar(150) NOT NULL,
  `stock_cat_url` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_cat`
--

INSERT INTO `stock_cat` (`stock_cat_id`, `stoke_cat_name`, `stock_cat_url`) VALUES
(2, 'chilli', 'chilli');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `oauth_provider` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `oauth_uid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bike_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `login_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `oauth_provider`, `oauth_uid`, `first_name`, `last_name`, `email`, `gender`, `locale`, `cover`, `picture`, `password`, `mobile`, `bike_name`, `address`, `link`, `login_time`, `status`, `created`, `modified`) VALUES
(1, '', '', 'Shubham Sahu', '', 'amit@gmail.com', '', '', '', 'download.jpeg', '827ccb0eea8a706c4c34a16891f84e7b', '34324324', 'Hero', 'Gurgaon', '', '2018-07-22 22:42:01', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '', '', 'ssadfsad@gmail.com', '', 'ssadfsad@gmail.com', '', '', '', '', '827ccb0eea8a706c4c34a16891f84e7b', '4324324', NULL, NULL, '', NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_database`
--

CREATE TABLE `user_database` (
  `User_ID` int(11) NOT NULL,
  `User_Name` varchar(255) NOT NULL,
  `User_Email` varchar(255) NOT NULL,
  `User_Mobile` varchar(10) NOT NULL,
  `User_Address` varchar(255) NOT NULL,
  `User_Password` varchar(255) NOT NULL,
  `OTP` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_database`
--

INSERT INTO `user_database` (`User_ID`, `User_Name`, `User_Email`, `User_Mobile`, `User_Address`, `User_Password`, `OTP`) VALUES
(1, 'Admin', 'admin@vkbikes.com', '', '', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `waiter`
--

CREATE TABLE `waiter` (
  `id` int(11) NOT NULL,
  `waiter_id` varchar(100) NOT NULL,
  `waiter_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `waiter`
--

INSERT INTO `waiter` (`id`, `waiter_id`, `waiter_name`) VALUES
(1, 'emp-001', 'prateek'),
(4, 'emp-003', 'kasif'),
(5, 'emp-005', 'demo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `brand_table`
--
ALTER TABLE `brand_table`
  ADD PRIMARY KEY (`SN`);

--
-- Indexes for table `category_table`
--
ALTER TABLE `category_table`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `popular_brand`
--
ALTER TABLE `popular_brand`
  ADD PRIMARY KEY (`pop_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_cat`
--
ALTER TABLE `product_cat`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `prod_sub_cat`
--
ALTER TABLE `prod_sub_cat`
  ADD PRIMARY KEY (`sub_cat_id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`res_id`);

--
-- Indexes for table `service_table`
--
ALTER TABLE `service_table`
  ADD PRIMARY KEY (`SN`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `stock_cat`
--
ALTER TABLE `stock_cat`
  ADD PRIMARY KEY (`stock_cat_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_database`
--
ALTER TABLE `user_database`
  ADD PRIMARY KEY (`User_Email`),
  ADD UNIQUE KEY `User_ID` (`User_ID`);

--
-- Indexes for table `waiter`
--
ALTER TABLE `waiter`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `category_table`
--
ALTER TABLE `category_table`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `popular_brand`
--
ALTER TABLE `popular_brand`
  MODIFY `pop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `product_cat`
--
ALTER TABLE `product_cat`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `prod_sub_cat`
--
ALTER TABLE `prod_sub_cat`
  MODIFY `sub_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `res_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `service_table`
--
ALTER TABLE `service_table`
  MODIFY `SN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `stock_cat`
--
ALTER TABLE `stock_cat`
  MODIFY `stock_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `waiter`
--
ALTER TABLE `waiter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
