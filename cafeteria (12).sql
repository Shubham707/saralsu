-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 20, 2018 at 06:44 PM
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
(4, '354', 'sahutech8@gmail.com', '845834685', 'Bikes_Below_150CC', 'Basic Plan', 'sahutech', 'tx-20235', 3, '2018-07-13 12:04:32');

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
  `city_id` int(11) NOT NULL,
  `city_name` varchar(100) NOT NULL,
  `city_state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL DEFAULT 'India'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city_id`, `city_name`, `city_state`, `country`) VALUES
(1, 'Kolhapur', 'Maharashtra', 'India'),
(2, 'Port Blair', 'Andaman & Nicobar Islands', 'India'),
(3, 'Adilabad', 'Andhra Pradesh', 'India'),
(4, 'Adoni', 'Andhra Pradesh', 'India'),
(5, 'Amadalavalasa', 'Andhra Pradesh', 'India'),
(6, 'Amalapuram', 'Andhra Pradesh', 'India'),
(7, 'Anakapalle', 'Andhra Pradesh', 'India'),
(8, 'Anantapur', 'Andhra Pradesh', 'India'),
(9, 'Badepalle', 'Andhra Pradesh', 'India'),
(10, 'Banganapalle', 'Andhra Pradesh', 'India'),
(11, 'Bapatla', 'Andhra Pradesh', 'India'),
(12, 'Bellampalle', 'Andhra Pradesh', 'India'),
(13, 'Bethamcherla', 'Andhra Pradesh', 'India'),
(14, 'Bhadrachalam', 'Andhra Pradesh', 'India'),
(15, 'Bhainsa', 'Andhra Pradesh', 'India'),
(16, 'Bheemunipatnam', 'Andhra Pradesh', 'India'),
(17, 'Bhimavaram', 'Andhra Pradesh', 'India'),
(18, 'Bhongir', 'Andhra Pradesh', 'India'),
(19, 'Bobbili', 'Andhra Pradesh', 'India'),
(20, 'Bodhan', 'Andhra Pradesh', 'India'),
(21, 'Chilakaluripet', 'Andhra Pradesh', 'India'),
(22, 'Chirala', 'Andhra Pradesh', 'India'),
(23, 'Chittoor', 'Andhra Pradesh', 'India'),
(24, 'Cuddapah', 'Andhra Pradesh', 'India'),
(25, 'Devarakonda', 'Andhra Pradesh', 'India'),
(26, 'Dharmavaram', 'Andhra Pradesh', 'India'),
(27, 'Eluru', 'Andhra Pradesh', 'India'),
(28, 'Farooqnagar', 'Andhra Pradesh', 'India'),
(29, 'Gadwal', 'Andhra Pradesh', 'India'),
(30, 'Gooty', 'Andhra Pradesh', 'India'),
(31, 'Gudivada', 'Andhra Pradesh', 'India'),
(32, 'Gudur', 'Andhra Pradesh', 'India'),
(33, 'Guntakal', 'Andhra Pradesh', 'India'),
(34, 'Guntur', 'Andhra Pradesh', 'India'),
(35, 'Hanuman Junction', 'Andhra Pradesh', 'India'),
(36, 'Hindupur', 'Andhra Pradesh', 'India'),
(37, 'Hyderabad', 'Andhra Pradesh', 'India'),
(38, 'Ichchapuram', 'Andhra Pradesh', 'India'),
(39, 'Jaggaiahpet', 'Andhra Pradesh', 'India'),
(40, 'Jagtial', 'Andhra Pradesh', 'India'),
(41, 'Jammalamadugu', 'Andhra Pradesh', 'India'),
(42, 'Jangaon', 'Andhra Pradesh', 'India'),
(43, 'Kadapa', 'Andhra Pradesh', 'India'),
(44, 'Kadiri', 'Andhra Pradesh', 'India'),
(45, 'Kagaznagar', 'Andhra Pradesh', 'India'),
(46, 'Kakinada', 'Andhra Pradesh', 'India'),
(47, 'Kalyandurg', 'Andhra Pradesh', 'India'),
(48, 'Kamareddy', 'Andhra Pradesh', 'India'),
(49, 'Kandukur', 'Andhra Pradesh', 'India'),
(50, 'Karimnagar', 'Andhra Pradesh', 'India'),
(51, 'Kavali', 'Andhra Pradesh', 'India'),
(52, 'Khammam', 'Andhra Pradesh', 'India'),
(53, 'Koratla', 'Andhra Pradesh', 'India'),
(54, 'Kothagudem', 'Andhra Pradesh', 'India'),
(55, 'Kothapeta', 'Andhra Pradesh', 'India'),
(56, 'Kovvur', 'Andhra Pradesh', 'India'),
(57, 'Kurnool', 'Andhra Pradesh', 'India'),
(58, 'Kyathampalle', 'Andhra Pradesh', 'India'),
(59, 'Macherla', 'Andhra Pradesh', 'India'),
(60, 'Machilipatnam', 'Andhra Pradesh', 'India'),
(61, 'Madanapalle', 'Andhra Pradesh', 'India'),
(62, 'Mahbubnagar', 'Andhra Pradesh', 'India'),
(63, 'Mancherial', 'Andhra Pradesh', 'India'),
(64, 'Mandamarri', 'Andhra Pradesh', 'India'),
(65, 'Mandapeta', 'Andhra Pradesh', 'India'),
(66, 'Manuguru', 'Andhra Pradesh', 'India'),
(67, 'Markapur', 'Andhra Pradesh', 'India'),
(68, 'Medak', 'Andhra Pradesh', 'India'),
(69, 'Miryalaguda', 'Andhra Pradesh', 'India'),
(70, 'Mogalthur', 'Andhra Pradesh', 'India'),
(71, 'Nagari', 'Andhra Pradesh', 'India'),
(72, 'Nagarkurnool', 'Andhra Pradesh', 'India'),
(73, 'Nandyal', 'Andhra Pradesh', 'India'),
(74, 'Narasapur', 'Andhra Pradesh', 'India'),
(75, 'Narasaraopet', 'Andhra Pradesh', 'India'),
(76, 'Narayanpet', 'Andhra Pradesh', 'India'),
(77, 'Narsipatnam', 'Andhra Pradesh', 'India'),
(78, 'Nellore', 'Andhra Pradesh', 'India'),
(79, 'Nidadavole', 'Andhra Pradesh', 'India'),
(80, 'Nirmal', 'Andhra Pradesh', 'India'),
(81, 'Nizamabad', 'Andhra Pradesh', 'India'),
(82, 'Nuzvid', 'Andhra Pradesh', 'India'),
(83, 'Ongole', 'Andhra Pradesh', 'India'),
(84, 'Palacole', 'Andhra Pradesh', 'India'),
(85, 'Palasa Kasibugga', 'Andhra Pradesh', 'India'),
(86, 'Palwancha', 'Andhra Pradesh', 'India'),
(87, 'Parvathipuram', 'Andhra Pradesh', 'India'),
(88, 'Pedana', 'Andhra Pradesh', 'India'),
(89, 'Peddapuram', 'Andhra Pradesh', 'India'),
(90, 'Pithapuram', 'Andhra Pradesh', 'India'),
(91, 'Pondur', 'Andhra pradesh', 'India'),
(92, 'Ponnur', 'Andhra Pradesh', 'India'),
(93, 'Proddatur', 'Andhra Pradesh', 'India'),
(94, 'Punganur', 'Andhra Pradesh', 'India'),
(95, 'Puttur', 'Andhra Pradesh', 'India'),
(96, 'Rajahmundry', 'Andhra Pradesh', 'India'),
(97, 'Rajam', 'Andhra Pradesh', 'India'),
(98, 'Ramachandrapuram', 'Andhra Pradesh', 'India'),
(99, 'Ramagundam', 'Andhra Pradesh', 'India'),
(100, 'Rayachoti', 'Andhra Pradesh', 'India'),
(101, 'Rayadurg', 'Andhra Pradesh', 'India'),
(102, 'Renigunta', 'Andhra Pradesh', 'India'),
(103, 'Repalle', 'Andhra Pradesh', 'India'),
(104, 'Sadasivpet', 'Andhra Pradesh', 'India'),
(105, 'Salur', 'Andhra Pradesh', 'India'),
(106, 'Samalkot', 'Andhra Pradesh', 'India'),
(107, 'Sangareddy', 'Andhra Pradesh', 'India'),
(108, 'Sattenapalle', 'Andhra Pradesh', 'India'),
(109, 'Siddipet', 'Andhra Pradesh', 'India'),
(110, 'Singapur', 'Andhra Pradesh', 'India'),
(111, 'Sircilla', 'Andhra Pradesh', 'India'),
(112, 'Srikakulam', 'Andhra Pradesh', 'India'),
(113, 'Srikalahasti', 'Andhra Pradesh', 'India'),
(115, 'Suryapet', 'Andhra Pradesh', 'India'),
(116, 'Tadepalligudem', 'Andhra Pradesh', 'India'),
(117, 'Tadpatri', 'Andhra Pradesh', 'India'),
(118, 'Tandur', 'Andhra Pradesh', 'India'),
(119, 'Tanuku', 'Andhra Pradesh', 'India'),
(120, 'Tenali', 'Andhra Pradesh', 'India'),
(121, 'Tirupati', 'Andhra Pradesh', 'India'),
(122, 'Tuni', 'Andhra Pradesh', 'India'),
(123, 'Uravakonda', 'Andhra Pradesh', 'India'),
(124, 'Venkatagiri', 'Andhra Pradesh', 'India'),
(125, 'Vicarabad', 'Andhra Pradesh', 'India'),
(126, 'Vijayawada', 'Andhra Pradesh', 'India'),
(127, 'Vinukonda', 'Andhra Pradesh', 'India'),
(128, 'Visakhapatnam', 'Andhra Pradesh', 'India'),
(129, 'Vizianagaram', 'Andhra Pradesh', 'India'),
(130, 'Wanaparthy', 'Andhra Pradesh', 'India'),
(131, 'Warangal', 'Andhra Pradesh', 'India'),
(132, 'Yellandu', 'Andhra Pradesh', 'India'),
(133, 'Yemmiganur', 'Andhra Pradesh', 'India'),
(134, 'Yerraguntla', 'Andhra Pradesh', 'India'),
(135, 'Zahirabad', 'Andhra Pradesh', 'India'),
(136, 'Rajampet', 'Andhra Pradesh', 'India'),
(137, 'Along', 'Arunachal Pradesh', 'India'),
(138, 'Bomdila', 'Arunachal Pradesh', 'India'),
(139, 'Itanagar', 'Arunachal Pradesh', 'India'),
(140, 'Naharlagun', 'Arunachal Pradesh', 'India'),
(141, 'Pasighat', 'Arunachal Pradesh', 'India'),
(142, 'Abhayapuri', 'Assam', 'India'),
(143, 'Amguri', 'Assam', 'India'),
(144, 'Anandnagaar', 'Assam', 'India'),
(145, 'Barpeta', 'Assam', 'India'),
(146, 'Barpeta Road', 'Assam', 'India'),
(147, 'Bilasipara', 'Assam', 'India'),
(148, 'Bongaigaon', 'Assam', 'India'),
(149, 'Dhekiajuli', 'Assam', 'India'),
(150, 'Dhubri', 'Assam', 'India'),
(151, 'Dibrugarh', 'Assam', 'India'),
(152, 'Digboi', 'Assam', 'India'),
(153, 'Diphu', 'Assam', 'India'),
(154, 'Dispur', 'Assam', 'India'),
(156, 'Gauripur', 'Assam', 'India'),
(157, 'Goalpara', 'Assam', 'India'),
(158, 'Golaghat', 'Assam', 'India'),
(159, 'Guwahati', 'Assam', 'India'),
(160, 'Haflong', 'Assam', 'India'),
(161, 'Hailakandi', 'Assam', 'India'),
(162, 'Hojai', 'Assam', 'India'),
(163, 'Jorhat', 'Assam', 'India'),
(164, 'Karimganj', 'Assam', 'India'),
(165, 'Kokrajhar', 'Assam', 'India'),
(166, 'Lanka', 'Assam', 'India'),
(167, 'Lumding', 'Assam', 'India'),
(168, 'Mangaldoi', 'Assam', 'India'),
(169, 'Mankachar', 'Assam', 'India'),
(170, 'Margherita', 'Assam', 'India'),
(171, 'Mariani', 'Assam', 'India'),
(172, 'Marigaon', 'Assam', 'India'),
(173, 'Nagaon', 'Assam', 'India'),
(174, 'Nalbari', 'Assam', 'India'),
(175, 'North Lakhimpur', 'Assam', 'India'),
(176, 'Rangia', 'Assam', 'India'),
(177, 'Sibsagar', 'Assam', 'India'),
(178, 'Silapathar', 'Assam', 'India'),
(179, 'Silchar', 'Assam', 'India'),
(180, 'Tezpur', 'Assam', 'India'),
(181, 'Tinsukia', 'Assam', 'India'),
(182, 'Amarpur', 'Bihar', 'India'),
(183, 'Araria', 'Bihar', 'India'),
(184, 'Areraj', 'Bihar', 'India'),
(185, 'Arrah', 'Bihar', 'India'),
(186, 'Asarganj', 'Bihar', 'India'),
(187, 'Aurangabad', 'Bihar', 'India'),
(188, 'Bagaha', 'Bihar', 'India'),
(189, 'Bahadurganj', 'Bihar', 'India'),
(190, 'Bairgania', 'Bihar', 'India'),
(191, 'Bakhtiarpur', 'Bihar', 'India'),
(192, 'Banka', 'Bihar', 'India'),
(193, 'Banmankhi Bazar', 'Bihar', 'India'),
(194, 'Barahiya', 'Bihar', 'India'),
(195, 'Barauli', 'Bihar', 'India'),
(196, 'Barbigha', 'Bihar', 'India'),
(197, 'Barh', 'Bihar', 'India'),
(198, 'Begusarai', 'Bihar', 'India'),
(199, 'Behea', 'Bihar', 'India'),
(200, 'Bettiah', 'Bihar', 'India'),
(201, 'Bhabua', 'Bihar', 'India'),
(202, 'Bhagalpur', 'Bihar', 'India'),
(203, 'Bihar Sharif', 'Bihar', 'India'),
(204, 'Bikramganj', 'Bihar', 'India'),
(205, 'Bodh Gaya', 'Bihar', 'India'),
(206, 'Buxar', 'Bihar', 'India'),
(207, 'Chandan Bara', 'Bihar', 'India'),
(208, 'Chanpatia', 'Bihar', 'India'),
(209, 'Chhapra', 'Bihar', 'India'),
(210, 'Colgong', 'Bihar', 'India'),
(211, 'Dalsinghsarai', 'Bihar', 'India'),
(212, 'Darbhanga', 'Bihar', 'India'),
(213, 'Daudnagar', 'Bihar', 'India'),
(214, 'Dehri-on-Sone', 'Bihar', 'India'),
(215, 'Dhaka', 'Bihar', 'India'),
(216, 'Dighwara', 'Bihar', 'India'),
(217, 'Dumraon', 'Bihar', 'India'),
(218, 'Fatwah', 'Bihar', 'India'),
(219, 'Forbesganj', 'Bihar', 'India'),
(220, 'Gaya', 'Bihar', 'India'),
(221, 'Gogri Jamalpur', 'Bihar', 'India'),
(222, 'Gopalganj', 'Bihar', 'India'),
(223, 'Hajipur', 'Bihar', 'India'),
(224, 'Hilsa', 'Bihar', 'India'),
(225, 'Hisua', 'Bihar', 'India'),
(226, 'Islampur', 'Bihar', 'India'),
(227, 'Jagdispur', 'Bihar', 'India'),
(228, 'Jamalpur', 'Bihar', 'India'),
(229, 'Jamui', 'Bihar', 'India'),
(230, 'Jehanabad', 'Bihar', 'India'),
(231, 'Jhajha', 'Bihar', 'India'),
(232, 'Jhanjharpur', 'Bihar', 'India'),
(233, 'Jogabani', 'Bihar', 'India'),
(234, 'Kanti', 'Bihar', 'India'),
(235, 'Katihar', 'Bihar', 'India'),
(236, 'Khagaria', 'Bihar', 'India'),
(237, 'Kharagpur', 'Bihar', 'India'),
(238, 'Kishanganj', 'Bihar', 'India'),
(239, 'Lakhisarai', 'Bihar', 'India'),
(240, 'Lalganj', 'Bihar', 'India'),
(241, 'Madhepura', 'Bihar', 'India'),
(242, 'Madhubani', 'Bihar', 'India'),
(243, 'Maharajganj', 'Bihar', 'India'),
(244, 'Mahnar Bazar', 'Bihar', 'India'),
(245, 'Makhdumpur', 'Bihar', 'India'),
(246, 'Maner', 'Bihar', 'India'),
(247, 'Manihari', 'Bihar', 'India'),
(248, 'Marhaura', 'Bihar', 'India'),
(249, 'Masaurhi', 'Bihar', 'India'),
(250, 'Mirganj', 'Bihar', 'India'),
(251, 'Mokameh', 'Bihar', 'India'),
(252, 'Motihari', 'Bihar', 'India'),
(253, 'Motipur', 'Bihar', 'India'),
(254, 'Munger', 'Bihar', 'India'),
(255, 'Murliganj', 'Bihar', 'India'),
(256, 'Muzaffarpur', 'Bihar', 'India'),
(257, 'Narkatiaganj', 'Bihar', 'India'),
(258, 'Naugachhia', 'Bihar', 'India'),
(259, 'Nawada', 'Bihar', 'India'),
(260, 'Nokha', 'Bihar', 'India'),
(261, 'Patna', 'Bihar', 'India'),
(262, 'Piro', 'Bihar', 'India'),
(263, 'Purnia', 'Bihar', 'India'),
(264, 'Rafiganj', 'Bihar', 'India'),
(265, 'Rajgir', 'Bihar', 'India'),
(266, 'Ramnagar', 'Bihar', 'India'),
(267, 'Raxaul Bazar', 'Bihar', 'India'),
(268, 'Revelganj', 'Bihar', 'India'),
(269, 'Rosera', 'Bihar', 'India'),
(270, 'Saharsa', 'Bihar', 'India'),
(271, 'Samastipur', 'Bihar', 'India'),
(272, 'Sasaram', 'Bihar', 'India'),
(273, 'Sheikhpura', 'Bihar', 'India'),
(274, 'Sheohar', 'Bihar', 'India'),
(275, 'Sherghati', 'Bihar', 'India'),
(276, 'Silao', 'Bihar', 'India'),
(277, 'Sitamarhi', 'Bihar', 'India'),
(278, 'Siwan', 'Bihar', 'India'),
(279, 'Sonepur', 'Bihar', 'India'),
(280, 'Sugauli', 'Bihar', 'India'),
(281, 'Sultanganj', 'Bihar', 'India'),
(282, 'Supaul', 'Bihar', 'India'),
(283, 'Warisaliganj', 'Bihar', 'India'),
(284, 'Ahiwara', 'Chhattisgarh', 'India'),
(285, 'Akaltara', 'Chhattisgarh', 'India'),
(286, 'Ambagarh Chowki', 'Chhattisgarh', 'India'),
(287, 'Ambikapur', 'Chhattisgarh', 'India'),
(288, 'Arang', 'Chhattisgarh', 'India'),
(289, 'Bade Bacheli', 'Chhattisgarh', 'India'),
(290, 'Balod', 'Chhattisgarh', 'India'),
(291, 'Baloda Bazar', 'Chhattisgarh', 'India'),
(292, 'Bemetra', 'Chhattisgarh', 'India'),
(293, 'Bhatapara', 'Chhattisgarh', 'India'),
(294, 'Bilaspur', 'Chhattisgarh', 'India'),
(295, 'Birgaon', 'Chhattisgarh', 'India'),
(296, 'Champa', 'Chhattisgarh', 'India'),
(297, 'Chirmiri', 'Chhattisgarh', 'India'),
(298, 'Dalli-Rajhara', 'Chhattisgarh', 'India'),
(299, 'Dhamtari', 'Chhattisgarh', 'India'),
(300, 'Dipka', 'Chhattisgarh', 'India'),
(301, 'Dongargarh', 'Chhattisgarh', 'India'),
(302, 'Durg-Bhilai Nagar', 'Chhattisgarh', 'India'),
(303, 'Gobranawapara', 'Chhattisgarh', 'India'),
(304, 'Jagdalpur', 'Chhattisgarh', 'India'),
(305, 'Janjgir', 'Chhattisgarh', 'India'),
(306, 'Jashpurnagar', 'Chhattisgarh', 'India'),
(307, 'Kanker', 'Chhattisgarh', 'India'),
(308, 'Kawardha', 'Chhattisgarh', 'India'),
(309, 'Kondagaon', 'Chhattisgarh', 'India'),
(310, 'Korba', 'Chhattisgarh', 'India'),
(311, 'Mahasamund', 'Chhattisgarh', 'India'),
(312, 'Mahendragarh', 'Chhattisgarh', 'India'),
(313, 'Mungeli', 'Chhattisgarh', 'India'),
(314, 'Naila Janjgir', 'Chhattisgarh', 'India'),
(315, 'Raigarh', 'Chhattisgarh', 'India'),
(316, 'Raipur', 'Chhattisgarh', 'India'),
(317, 'Rajnandgaon', 'Chhattisgarh', 'India'),
(318, 'Sakti', 'Chhattisgarh', 'India'),
(319, 'Tilda Newra', 'Chhattisgarh', 'India'),
(320, 'Amli', 'Dadra & Nagar Haveli', 'India'),
(321, 'Silvassa', 'Dadra & Nagar Haveli', 'India'),
(322, 'Daman and Diu', 'Daman & Diu', 'India'),
(323, 'Daman and Diu', 'Daman & Diu', 'India'),
(324, 'Asola', 'Delhi', 'India'),
(325, 'Delhi', 'Delhi', 'India'),
(326, 'Aldona', 'Goa', 'India'),
(327, 'Curchorem Cacora', 'Goa', 'India'),
(328, 'Madgaon', 'Goa', 'India'),
(329, 'Mapusa', 'Goa', 'India'),
(330, 'Margao', 'Goa', 'India'),
(331, 'Marmagao', 'Goa', 'India'),
(332, 'Panaji', 'Goa', 'India'),
(333, 'Ahmedabad', 'Gujarat', 'India'),
(334, 'Amreli', 'Gujarat', 'India'),
(335, 'Anand', 'Gujarat', 'India'),
(336, 'Ankleshwar', 'Gujarat', 'India'),
(337, 'Bharuch', 'Gujarat', 'India'),
(338, 'Bhavnagar', 'Gujarat', 'India'),
(339, 'Bhuj', 'Gujarat', 'India'),
(340, 'Cambay', 'Gujarat', 'India'),
(341, 'Dahod', 'Gujarat', 'India'),
(342, 'Deesa', 'Gujarat', 'India'),
(343, 'Dharampur', ' India', 'India'),
(344, 'Dholka', 'Gujarat', 'India'),
(345, 'Gandhinagar', 'Gujarat', 'India'),
(346, 'Godhra', 'Gujarat', 'India'),
(347, 'Himatnagar', 'Gujarat', 'India'),
(348, 'Idar', 'Gujarat', 'India'),
(349, 'Jamnagar', 'Gujarat', 'India'),
(350, 'Junagadh', 'Gujarat', 'India'),
(351, 'Kadi', 'Gujarat', 'India'),
(352, 'Kalavad', 'Gujarat', 'India'),
(353, 'Kalol', 'Gujarat', 'India'),
(354, 'Kapadvanj', 'Gujarat', 'India'),
(355, 'Karjan', 'Gujarat', 'India'),
(356, 'Keshod', 'Gujarat', 'India'),
(357, 'Khambhalia', 'Gujarat', 'India'),
(358, 'Khambhat', 'Gujarat', 'India'),
(359, 'Kheda', 'Gujarat', 'India'),
(360, 'Khedbrahma', 'Gujarat', 'India'),
(361, 'Kheralu', 'Gujarat', 'India'),
(362, 'Kodinar', 'Gujarat', 'India'),
(363, 'Lathi', 'Gujarat', 'India'),
(364, 'Limbdi', 'Gujarat', 'India'),
(365, 'Lunawada', 'Gujarat', 'India'),
(366, 'Mahesana', 'Gujarat', 'India'),
(367, 'Mahuva', 'Gujarat', 'India'),
(368, 'Manavadar', 'Gujarat', 'India'),
(369, 'Mandvi', 'Gujarat', 'India'),
(370, 'Mangrol', 'Gujarat', 'India'),
(371, 'Mansa', 'Gujarat', 'India'),
(372, 'Mehmedabad', 'Gujarat', 'India'),
(373, 'Modasa', 'Gujarat', 'India'),
(374, 'Morvi', 'Gujarat', 'India'),
(375, 'Nadiad', 'Gujarat', 'India'),
(376, 'Navsari', 'Gujarat', 'India'),
(377, 'Padra', 'Gujarat', 'India'),
(378, 'Palanpur', 'Gujarat', 'India'),
(379, 'Palitana', 'Gujarat', 'India'),
(380, 'Pardi', 'Gujarat', 'India'),
(381, 'Patan', 'Gujarat', 'India'),
(382, 'Petlad', 'Gujarat', 'India'),
(383, 'Porbandar', 'Gujarat', 'India'),
(384, 'Radhanpur', 'Gujarat', 'India'),
(385, 'Rajkot', 'Gujarat', 'India'),
(386, 'Rajpipla', 'Gujarat', 'India'),
(387, 'Rajula', 'Gujarat', 'India'),
(388, 'Ranavav', 'Gujarat', 'India'),
(389, 'Rapar', 'Gujarat', 'India'),
(390, 'Salaya', 'Gujarat', 'India'),
(391, 'Sanand', 'Gujarat', 'India'),
(392, 'Savarkundla', 'Gujarat', 'India'),
(393, 'Sidhpur', 'Gujarat', 'India'),
(394, 'Sihor', 'Gujarat', 'India'),
(395, 'Songadh', 'Gujarat', 'India'),
(396, 'Surat', 'Gujarat', 'India'),
(397, 'Talaja', 'Gujarat', 'India'),
(398, 'Thangadh', 'Gujarat', 'India'),
(399, 'Tharad', 'Gujarat', 'India'),
(400, 'Umbergaon', 'Gujarat', 'India'),
(401, 'Umreth', 'Gujarat', 'India'),
(402, 'Una', 'Gujarat', 'India'),
(403, 'Unjha', 'Gujarat', 'India'),
(404, 'Upleta', 'Gujarat', 'India'),
(405, 'Vadnagar', 'Gujarat', 'India'),
(406, 'Vadodara', 'Gujarat', 'India'),
(407, 'Valsad', 'Gujarat', 'India'),
(408, 'Vapi', 'Gujarat', 'India'),
(409, 'Vapi', 'Gujarat', 'India'),
(410, 'Veraval', 'Gujarat', 'India'),
(411, 'Vijapur', 'Gujarat', 'India'),
(412, 'Viramgam', 'Gujarat', 'India'),
(413, 'Visnagar', 'Gujarat', 'India'),
(414, 'Vyara', 'Gujarat', 'India'),
(415, 'Wadhwan', 'Gujarat', 'India'),
(416, 'Wankaner', 'Gujarat', 'India'),
(417, 'Adalaj', 'Gujrat', 'India'),
(418, 'Adityana', 'Gujrat', 'India'),
(419, 'Alang', 'Gujrat', 'India'),
(420, 'Ambaji', 'Gujrat', 'India'),
(421, 'Ambaliyasan', 'Gujrat', 'India'),
(422, 'Andada', 'Gujrat', 'India'),
(423, 'Anjar', 'Gujrat', 'India'),
(424, 'Anklav', 'Gujrat', 'India'),
(425, 'Antaliya', 'Gujrat', 'India'),
(426, 'Arambhada', 'Gujrat', 'India'),
(427, 'Atul', 'Gujrat', 'India'),
(428, 'Ballabhgarh', 'Hariyana', 'India'),
(429, 'Ambala', 'Haryana', 'India'),
(430, 'Ambala', 'Haryana', 'India'),
(431, 'Asankhurd', 'Haryana', 'India'),
(432, 'Assandh', 'Haryana', 'India'),
(433, 'Ateli', 'Haryana', 'India'),
(434, 'Babiyal', 'Haryana', 'India'),
(435, 'Bahadurgarh', 'Haryana', 'India'),
(436, 'Barwala', 'Haryana', 'India'),
(437, 'Bhiwani', 'Haryana', 'India'),
(438, 'Charkhi Dadri', 'Haryana', 'India'),
(439, 'Cheeka', 'Haryana', 'India'),
(440, 'Ellenabad 2', 'Haryana', 'India'),
(441, 'Faridabad', 'Haryana', 'India'),
(442, 'Fatehabad', 'Haryana', 'India'),
(443, 'Ganaur', 'Haryana', 'India'),
(444, 'Gharaunda', 'Haryana', 'India'),
(445, 'Gohana', 'Haryana', 'India'),
(446, 'Gurgaon', 'Haryana', 'India'),
(447, 'Haibat(Yamuna Nagar)', 'Haryana', 'India'),
(448, 'Hansi', 'Haryana', 'India'),
(449, 'Hisar', 'Haryana', 'India'),
(450, 'Hodal', 'Haryana', 'India'),
(451, 'Jhajjar', 'Haryana', 'India'),
(452, 'Jind', 'Haryana', 'India'),
(453, 'Kaithal', 'Haryana', 'India'),
(454, 'Kalan Wali', 'Haryana', 'India'),
(455, 'Kalka', 'Haryana', 'India'),
(456, 'Karnal', 'Haryana', 'India'),
(457, 'Ladwa', 'Haryana', 'India'),
(458, 'Mahendragarh', 'Haryana', 'India'),
(459, 'Mandi Dabwali', 'Haryana', 'India'),
(460, 'Narnaul', 'Haryana', 'India'),
(461, 'Narwana', 'Haryana', 'India'),
(462, 'Palwal', 'Haryana', 'India'),
(463, 'Panchkula', 'Haryana', 'India'),
(464, 'Panipat', 'Haryana', 'India'),
(465, 'Pehowa', 'Haryana', 'India'),
(466, 'Pinjore', 'Haryana', 'India'),
(467, 'Rania', 'Haryana', 'India'),
(468, 'Ratia', 'Haryana', 'India'),
(469, 'Rewari', 'Haryana', 'India'),
(470, 'Rohtak', 'Haryana', 'India'),
(471, 'Safidon', 'Haryana', 'India'),
(472, 'Samalkha', 'Haryana', 'India'),
(473, 'Shahbad', 'Haryana', 'India'),
(474, 'Sirsa', 'Haryana', 'India'),
(475, 'Sohna', 'Haryana', 'India'),
(476, 'Sonipat', 'Haryana', 'India'),
(477, 'Taraori', 'Haryana', 'India'),
(478, 'Thanesar', 'Haryana', 'India'),
(479, 'Tohana', 'Haryana', 'India'),
(480, 'Yamunanagar', 'Haryana', 'India'),
(481, 'Arki', 'Himachal Pradesh', 'India'),
(482, 'Baddi', 'Himachal Pradesh', 'India'),
(483, 'Bilaspur', 'Himachal Pradesh', 'India'),
(484, 'Chamba', 'Himachal Pradesh', 'India'),
(485, 'Dalhousie', 'Himachal Pradesh', 'India'),
(486, 'Dharamsala', 'Himachal Pradesh', 'India'),
(487, 'Hamirpur', 'Himachal Pradesh', 'India'),
(488, 'Mandi', 'Himachal Pradesh', 'India'),
(489, 'Nahan', 'Himachal Pradesh', 'India'),
(490, 'Shimla', 'Himachal Pradesh', 'India'),
(491, 'Solan', 'Himachal Pradesh', 'India'),
(492, 'Sundarnagar', 'Himachal Pradesh', 'India'),
(493, 'Jammu', 'Jammu & Kashmir', 'India'),
(494, 'Achabbal', 'Jammu & Kashmir', 'India'),
(495, 'Akhnoor', 'Jammu & Kashmir', 'India'),
(496, 'Anantnag', 'Jammu & Kashmir', 'India'),
(497, 'Arnia', 'Jammu & Kashmir', 'India'),
(498, 'Awantipora', 'Jammu & Kashmir', 'India'),
(499, 'Bandipore', 'Jammu & Kashmir', 'India'),
(500, 'Baramula', 'Jammu & Kashmir', 'India'),
(501, 'Kathua', 'Jammu & Kashmir', 'India'),
(502, 'Leh', 'Jammu & Kashmir', 'India'),
(503, 'Punch', 'Jammu & Kashmir', 'India'),
(504, 'Rajauri', 'Jammu & Kashmir', 'India'),
(505, 'Sopore', 'Jammu & Kashmir', 'India'),
(506, 'Srinagar', 'Jammu & Kashmir', 'India'),
(507, 'Udhampur', 'Jammu & Kashmir', 'India'),
(508, 'Amlabad', 'Jharkhand', 'India'),
(509, 'Ara', 'Jharkhand', 'India'),
(510, 'Barughutu', 'Jharkhand', 'India'),
(511, 'Bokaro Steel City', 'Jharkhand', 'India'),
(512, 'Chaibasa', 'Jharkhand', 'India'),
(513, 'Chakradharpur', 'Jharkhand', 'India'),
(514, 'Chandrapura', 'Jharkhand', 'India'),
(515, 'Chatra', 'Jharkhand', 'India'),
(516, 'Chirkunda', 'Jharkhand', 'India'),
(517, 'Churi', 'Jharkhand', 'India'),
(518, 'Daltonganj', 'Jharkhand', 'India'),
(519, 'Deoghar', 'Jharkhand', 'India'),
(520, 'Dhanbad', 'Jharkhand', 'India'),
(521, 'Dumka', 'Jharkhand', 'India'),
(522, 'Garhwa', 'Jharkhand', 'India'),
(523, 'Ghatshila', 'Jharkhand', 'India'),
(524, 'Giridih', 'Jharkhand', 'India'),
(525, 'Godda', 'Jharkhand', 'India'),
(526, 'Gomoh', 'Jharkhand', 'India'),
(527, 'Gumia', 'Jharkhand', 'India'),
(528, 'Gumla', 'Jharkhand', 'India'),
(529, 'Hazaribag', 'Jharkhand', 'India'),
(530, 'Hussainabad', 'Jharkhand', 'India'),
(531, 'Jamshedpur', 'Jharkhand', 'India'),
(532, 'Jamtara', 'Jharkhand', 'India'),
(533, 'Jhumri Tilaiya', 'Jharkhand', 'India'),
(534, 'Khunti', 'Jharkhand', 'India'),
(535, 'Lohardaga', 'Jharkhand', 'India'),
(536, 'Madhupur', 'Jharkhand', 'India'),
(537, 'Mihijam', 'Jharkhand', 'India'),
(538, 'Musabani', 'Jharkhand', 'India'),
(539, 'Pakaur', 'Jharkhand', 'India'),
(540, 'Patratu', 'Jharkhand', 'India'),
(541, 'Phusro', 'Jharkhand', 'India'),
(542, 'Ramngarh', 'Jharkhand', 'India'),
(543, 'Ranchi', 'Jharkhand', 'India'),
(544, 'Sahibganj', 'Jharkhand', 'India'),
(545, 'Saunda', 'Jharkhand', 'India'),
(546, 'Simdega', 'Jharkhand', 'India'),
(547, 'Tenu Dam-cum- Kathhara', 'Jharkhand', 'India'),
(548, 'Arasikere', 'Karnataka', 'India'),
(549, 'Bangalore', 'Karnataka', 'India'),
(550, 'Belgaum', 'Karnataka', 'India'),
(551, 'Bellary', 'Karnataka', 'India'),
(552, 'Chamrajnagar', 'Karnataka', 'India'),
(553, 'Chikkaballapur', 'Karnataka', 'India'),
(554, 'Chintamani', 'Karnataka', 'India'),
(555, 'Chitradurga', 'Karnataka', 'India'),
(556, 'Gulbarga', 'Karnataka', 'India'),
(557, 'Gundlupet', 'Karnataka', 'India'),
(558, 'Hassan', 'Karnataka', 'India'),
(559, 'Hospet', 'Karnataka', 'India'),
(560, 'Hubli', 'Karnataka', 'India'),
(561, 'Karkala', 'Karnataka', 'India'),
(562, 'Karwar', 'Karnataka', 'India'),
(563, 'Kolar', 'Karnataka', 'India'),
(564, 'Kota', 'Karnataka', 'India'),
(565, 'Lakshmeshwar', 'Karnataka', 'India'),
(566, 'Lingsugur', 'Karnataka', 'India'),
(567, 'Maddur', 'Karnataka', 'India'),
(568, 'Madhugiri', 'Karnataka', 'India'),
(569, 'Madikeri', 'Karnataka', 'India'),
(570, 'Magadi', 'Karnataka', 'India'),
(571, 'Mahalingpur', 'Karnataka', 'India'),
(572, 'Malavalli', 'Karnataka', 'India'),
(573, 'Malur', 'Karnataka', 'India'),
(574, 'Mandya', 'Karnataka', 'India'),
(575, 'Mangalore', 'Karnataka', 'India'),
(576, 'Manvi', 'Karnataka', 'India'),
(577, 'Mudalgi', 'Karnataka', 'India'),
(578, 'Mudbidri', 'Karnataka', 'India'),
(579, 'Muddebihal', 'Karnataka', 'India'),
(580, 'Mudhol', 'Karnataka', 'India'),
(581, 'Mulbagal', 'Karnataka', 'India'),
(582, 'Mundargi', 'Karnataka', 'India'),
(583, 'Mysore', 'Karnataka', 'India'),
(584, 'Nanjangud', 'Karnataka', 'India'),
(585, 'Pavagada', 'Karnataka', 'India'),
(586, 'Puttur', 'Karnataka', 'India'),
(587, 'Rabkavi Banhatti', 'Karnataka', 'India'),
(588, 'Raichur', 'Karnataka', 'India'),
(589, 'Ramanagaram', 'Karnataka', 'India'),
(590, 'Ramdurg', 'Karnataka', 'India'),
(591, 'Ranibennur', 'Karnataka', 'India'),
(592, 'Robertson Pet', 'Karnataka', 'India'),
(593, 'Ron', 'Karnataka', 'India'),
(594, 'Sadalgi', 'Karnataka', 'India'),
(595, 'Sagar', 'Karnataka', 'India'),
(596, 'Sakleshpur', 'Karnataka', 'India'),
(597, 'Sandur', 'Karnataka', 'India'),
(598, 'Sankeshwar', 'Karnataka', 'India'),
(599, 'Saundatti-Yellamma', 'Karnataka', 'India'),
(600, 'Savanur', 'Karnataka', 'India'),
(601, 'Sedam', 'Karnataka', 'India'),
(602, 'Shahabad', 'Karnataka', 'India'),
(603, 'Shahpur', 'Karnataka', 'India'),
(604, 'Shiggaon', 'Karnataka', 'India'),
(605, 'Shikapur', 'Karnataka', 'India'),
(606, 'Shimoga', 'Karnataka', 'India'),
(607, 'Shorapur', 'Karnataka', 'India'),
(608, 'Shrirangapattana', 'Karnataka', 'India'),
(609, 'Sidlaghatta', 'Karnataka', 'India'),
(610, 'Sindgi', 'Karnataka', 'India'),
(611, 'Sindhnur', 'Karnataka', 'India'),
(612, 'Sira', 'Karnataka', 'India'),
(613, 'Sirsi', 'Karnataka', 'India'),
(614, 'Siruguppa', 'Karnataka', 'India'),
(615, 'Srinivaspur', 'Karnataka', 'India'),
(616, 'Talikota', 'Karnataka', 'India'),
(617, 'Tarikere', 'Karnataka', 'India'),
(618, 'Tekkalakota', 'Karnataka', 'India'),
(619, 'Terdal', 'Karnataka', 'India'),
(620, 'Tiptur', 'Karnataka', 'India'),
(621, 'Tumkur', 'Karnataka', 'India'),
(622, 'Udupi', 'Karnataka', 'India'),
(623, 'Vijayapura', 'Karnataka', 'India'),
(624, 'Wadi', 'Karnataka', 'India'),
(625, 'Yadgir', 'Karnataka', 'India'),
(626, 'Adoor', 'Kerala', 'India'),
(627, 'Akathiyoor', 'Kerala', 'India'),
(628, 'Alappuzha', 'Kerala', 'India'),
(629, 'Ancharakandy', 'Kerala', 'India'),
(630, 'Aroor', 'Kerala', 'India'),
(631, 'Ashtamichira', 'Kerala', 'India'),
(632, 'Attingal', 'Kerala', 'India'),
(633, 'Avinissery', 'Kerala', 'India'),
(634, 'Chalakudy', 'Kerala', 'India'),
(635, 'Changanassery', 'Kerala', 'India'),
(636, 'Chendamangalam', 'Kerala', 'India'),
(637, 'Chengannur', 'Kerala', 'India'),
(638, 'Cherthala', 'Kerala', 'India'),
(639, 'Cheruthazham', 'Kerala', 'India'),
(640, 'Chittur-Thathamangalam', 'Kerala', 'India'),
(641, 'Chockli', 'Kerala', 'India'),
(642, 'Erattupetta', 'Kerala', 'India'),
(643, 'Guruvayoor', 'Kerala', 'India'),
(644, 'Irinjalakuda', 'Kerala', 'India'),
(645, 'Kadirur', 'Kerala', 'India'),
(646, 'Kalliasseri', 'Kerala', 'India'),
(647, 'Kalpetta', 'Kerala', 'India'),
(648, 'Kanhangad', 'Kerala', 'India'),
(649, 'Kanjikkuzhi', 'Kerala', 'India'),
(650, 'Kannur', 'Kerala', 'India'),
(651, 'Kasaragod', 'Kerala', 'India'),
(652, 'Kayamkulam', 'Kerala', 'India'),
(653, 'Kochi', 'Kerala', 'India'),
(654, 'Kodungallur', 'Kerala', 'India'),
(655, 'Kollam', 'Kerala', 'India'),
(656, 'Koothuparamba', 'Kerala', 'India'),
(657, 'Kothamangalam', 'Kerala', 'India'),
(658, 'Kottayam', 'Kerala', 'India'),
(659, 'Kozhikode', 'Kerala', 'India'),
(660, 'Kunnamkulam', 'Kerala', 'India'),
(661, 'Malappuram', 'Kerala', 'India'),
(662, 'Mattannur', 'Kerala', 'India'),
(663, 'Mavelikkara', 'Kerala', 'India'),
(664, 'Mavoor', 'Kerala', 'India'),
(665, 'Muvattupuzha', 'Kerala', 'India'),
(666, 'Nedumangad', 'Kerala', 'India'),
(667, 'Neyyattinkara', 'Kerala', 'India'),
(668, 'Ottappalam', 'Kerala', 'India'),
(669, 'Palai', 'Kerala', 'India'),
(670, 'Palakkad', 'Kerala', 'India'),
(671, 'Panniyannur', 'Kerala', 'India'),
(672, 'Pappinisseri', 'Kerala', 'India'),
(673, 'Paravoor', 'Kerala', 'India'),
(674, 'Pathanamthitta', 'Kerala', 'India'),
(675, 'Payyannur', 'Kerala', 'India'),
(676, 'Peringathur', 'Kerala', 'India'),
(677, 'Perinthalmanna', 'Kerala', 'India'),
(678, 'Perumbavoor', 'Kerala', 'India'),
(679, 'Ponnani', 'Kerala', 'India'),
(680, 'Punalur', 'Kerala', 'India'),
(681, 'Quilandy', 'Kerala', 'India'),
(682, 'Shoranur', 'Kerala', 'India'),
(683, 'Taliparamba', 'Kerala', 'India'),
(684, 'Thiruvalla', 'Kerala', 'India'),
(685, 'Thiruvananthapuram', 'Kerala', 'India'),
(686, 'Thodupuzha', 'Kerala', 'India'),
(687, 'Thrissur', 'Kerala', 'India'),
(688, 'Tirur', 'Kerala', 'India'),
(689, 'Vadakara', 'Kerala', 'India'),
(690, 'Vaikom', 'Kerala', 'India'),
(691, 'Varkala', 'Kerala', 'India'),
(692, 'Kavaratti', 'Lakshadweep', 'India'),
(693, 'Ashok Nagar', 'Madhya Pradesh', 'India'),
(694, 'Balaghat', 'Madhya Pradesh', 'India'),
(695, 'Betul', 'Madhya Pradesh', 'India'),
(696, 'Bhopal', 'Madhya Pradesh', 'India'),
(697, 'Burhanpur', 'Madhya Pradesh', 'India'),
(698, 'Chhatarpur', 'Madhya Pradesh', 'India'),
(699, 'Dabra', 'Madhya Pradesh', 'India'),
(700, 'Datia', 'Madhya Pradesh', 'India'),
(701, 'Dewas', 'Madhya Pradesh', 'India'),
(702, 'Dhar', 'Madhya Pradesh', 'India'),
(703, 'Fatehabad', 'Madhya Pradesh', 'India'),
(704, 'Gwalior', 'Madhya Pradesh', 'India'),
(705, 'Indore', 'Madhya Pradesh', 'India'),
(706, 'Itarsi', 'Madhya Pradesh', 'India'),
(707, 'Jabalpur', 'Madhya Pradesh', 'India'),
(708, 'Katni', 'Madhya Pradesh', 'India'),
(709, 'Kotma', 'Madhya Pradesh', 'India'),
(710, 'Lahar', 'Madhya Pradesh', 'India'),
(711, 'Lundi', 'Madhya Pradesh', 'India'),
(712, 'Maharajpur', 'Madhya Pradesh', 'India'),
(713, 'Mahidpur', 'Madhya Pradesh', 'India'),
(714, 'Maihar', 'Madhya Pradesh', 'India'),
(715, 'Malajkhand', 'Madhya Pradesh', 'India'),
(716, 'Manasa', 'Madhya Pradesh', 'India'),
(717, 'Manawar', 'Madhya Pradesh', 'India'),
(718, 'Mandideep', 'Madhya Pradesh', 'India'),
(719, 'Mandla', 'Madhya Pradesh', 'India'),
(720, 'Mandsaur', 'Madhya Pradesh', 'India'),
(721, 'Mauganj', 'Madhya Pradesh', 'India'),
(722, 'Mhow Cantonment', 'Madhya Pradesh', 'India'),
(723, 'Mhowgaon', 'Madhya Pradesh', 'India'),
(724, 'Morena', 'Madhya Pradesh', 'India'),
(725, 'Multai', 'Madhya Pradesh', 'India'),
(726, 'Murwara', 'Madhya Pradesh', 'India'),
(727, 'Nagda', 'Madhya Pradesh', 'India'),
(728, 'Nainpur', 'Madhya Pradesh', 'India'),
(729, 'Narsinghgarh', 'Madhya Pradesh', 'India'),
(730, 'Narsinghgarh', 'Madhya Pradesh', 'India'),
(731, 'Neemuch', 'Madhya Pradesh', 'India'),
(732, 'Nepanagar', 'Madhya Pradesh', 'India'),
(733, 'Niwari', 'Madhya Pradesh', 'India'),
(734, 'Nowgong', 'Madhya Pradesh', 'India'),
(735, 'Nowrozabad', 'Madhya Pradesh', 'India'),
(736, 'Pachore', 'Madhya Pradesh', 'India'),
(737, 'Pali', 'Madhya Pradesh', 'India'),
(738, 'Panagar', 'Madhya Pradesh', 'India'),
(739, 'Pandhurna', 'Madhya Pradesh', 'India'),
(740, 'Panna', 'Madhya Pradesh', 'India'),
(741, 'Pasan', 'Madhya Pradesh', 'India'),
(742, 'Pipariya', 'Madhya Pradesh', 'India'),
(743, 'Pithampur', 'Madhya Pradesh', 'India'),
(744, 'Porsa', 'Madhya Pradesh', 'India'),
(745, 'Prithvipur', 'Madhya Pradesh', 'India'),
(746, 'Raghogarh-Vijaypur', 'Madhya Pradesh', 'India'),
(747, 'Rahatgarh', 'Madhya Pradesh', 'India'),
(748, 'Raisen', 'Madhya Pradesh', 'India'),
(749, 'Rajgarh', 'Madhya Pradesh', 'India'),
(750, 'Ratlam', 'Madhya Pradesh', 'India'),
(751, 'Rau', 'Madhya Pradesh', 'India'),
(752, 'Rehli', 'Madhya Pradesh', 'India'),
(753, 'Rewa', 'Madhya Pradesh', 'India'),
(754, 'Sabalgarh', 'Madhya Pradesh', 'India'),
(755, 'Sagar', 'Madhya Pradesh', 'India'),
(756, 'Sanawad', 'Madhya Pradesh', 'India'),
(757, 'Sarangpur', 'Madhya Pradesh', 'India'),
(758, 'Sarni', 'Madhya Pradesh', 'India'),
(759, 'Satna', 'Madhya Pradesh', 'India'),
(760, 'Sausar', 'Madhya Pradesh', 'India'),
(761, 'Sehore', 'Madhya Pradesh', 'India'),
(762, 'Sendhwa', 'Madhya Pradesh', 'India'),
(763, 'Seoni', 'Madhya Pradesh', 'India'),
(764, 'Seoni-Malwa', 'Madhya Pradesh', 'India'),
(765, 'Shahdol', 'Madhya Pradesh', 'India'),
(766, 'Shajapur', 'Madhya Pradesh', 'India'),
(767, 'Shamgarh', 'Madhya Pradesh', 'India'),
(768, 'Sheopur', 'Madhya Pradesh', 'India'),
(769, 'Shivpuri', 'Madhya Pradesh', 'India'),
(770, 'Shujalpur', 'Madhya Pradesh', 'India'),
(771, 'Sidhi', 'Madhya Pradesh', 'India'),
(772, 'Sihora', 'Madhya Pradesh', 'India'),
(773, 'Singrauli', 'Madhya Pradesh', 'India'),
(774, 'Sironj', 'Madhya Pradesh', 'India'),
(775, 'Sohagpur', 'Madhya Pradesh', 'India'),
(776, 'Tarana', 'Madhya Pradesh', 'India'),
(777, 'Tikamgarh', 'Madhya Pradesh', 'India'),
(778, 'Ujhani', 'Madhya Pradesh', 'India'),
(779, 'Ujjain', 'Madhya Pradesh', 'India'),
(780, 'Umaria', 'Madhya Pradesh', 'India'),
(781, 'Vidisha', 'Madhya Pradesh', 'India'),
(782, 'Wara Seoni', 'Madhya Pradesh', 'India'),
(783, 'Ahmednagar', 'Maharashtra', 'India'),
(784, 'Akola', 'Maharashtra', 'India'),
(785, 'Amravati', 'Maharashtra', 'India'),
(786, 'Aurangabad', 'Maharashtra', 'India'),
(787, 'Baramati', 'Maharashtra', 'India'),
(788, 'Chalisgaon', 'Maharashtra', 'India'),
(789, 'Chinchani', 'Maharashtra', 'India'),
(790, 'Devgarh', 'Maharashtra', 'India'),
(791, 'Dhule', 'Maharashtra', 'India'),
(792, 'Dombivli', 'Maharashtra', 'India'),
(793, 'Durgapur', 'Maharashtra', 'India'),
(794, 'Ichalkaranji', 'Maharashtra', 'India'),
(795, 'Jalna', 'Maharashtra', 'India'),
(796, 'Kalyan', 'Maharashtra', 'India'),
(797, 'Latur', 'Maharashtra', 'India'),
(798, 'Loha', 'Maharashtra', 'India'),
(799, 'Lonar', 'Maharashtra', 'India'),
(800, 'Lonavla', 'Maharashtra', 'India'),
(801, 'Mahad', 'Maharashtra', 'India'),
(802, 'Mahuli', 'Maharashtra', 'India'),
(803, 'Malegaon', 'Maharashtra', 'India'),
(804, 'Malkapur', 'Maharashtra', 'India'),
(805, 'Manchar', 'Maharashtra', 'India'),
(806, 'Mangalvedhe', 'Maharashtra', 'India'),
(807, 'Mangrulpir', 'Maharashtra', 'India'),
(808, 'Manjlegaon', 'Maharashtra', 'India'),
(809, 'Manmad', 'Maharashtra', 'India'),
(810, 'Manwath', 'Maharashtra', 'India'),
(811, 'Mehkar', 'Maharashtra', 'India'),
(812, 'Mhaswad', 'Maharashtra', 'India'),
(813, 'Miraj', 'Maharashtra', 'India'),
(814, 'Morshi', 'Maharashtra', 'India'),
(815, 'Mukhed', 'Maharashtra', 'India'),
(816, 'Mul', 'Maharashtra', 'India'),
(817, 'Mumbai', 'Maharashtra', 'India'),
(818, 'Murtijapur', 'Maharashtra', 'India'),
(819, 'Nagpur', 'Maharashtra', 'India'),
(820, 'Nalasopara', 'Maharashtra', 'India'),
(821, 'Nanded-Waghala', 'Maharashtra', 'India'),
(822, 'Nandgaon', 'Maharashtra', 'India'),
(823, 'Nandura', 'Maharashtra', 'India'),
(824, 'Nandurbar', 'Maharashtra', 'India'),
(825, 'Narkhed', 'Maharashtra', 'India'),
(826, 'Nashik', 'Maharashtra', 'India'),
(827, 'Navi Mumbai', 'Maharashtra', 'India'),
(828, 'Nawapur', 'Maharashtra', 'India'),
(829, 'Nilanga', 'Maharashtra', 'India'),
(830, 'Osmanabad', 'Maharashtra', 'India'),
(831, 'Ozar', 'Maharashtra', 'India'),
(832, 'Pachora', 'Maharashtra', 'India'),
(833, 'Paithan', 'Maharashtra', 'India'),
(834, 'Palghar', 'Maharashtra', 'India'),
(835, 'Pandharkaoda', 'Maharashtra', 'India'),
(836, 'Pandharpur', 'Maharashtra', 'India'),
(837, 'Panvel', 'Maharashtra', 'India'),
(838, 'Parbhani', 'Maharashtra', 'India'),
(839, 'Parli', 'Maharashtra', 'India'),
(840, 'Parola', 'Maharashtra', 'India'),
(841, 'Partur', 'Maharashtra', 'India'),
(842, 'Pathardi', 'Maharashtra', 'India'),
(843, 'Pathri', 'Maharashtra', 'India'),
(844, 'Patur', 'Maharashtra', 'India'),
(845, 'Pauni', 'Maharashtra', 'India'),
(846, 'Pen', 'Maharashtra', 'India'),
(847, 'Phaltan', 'Maharashtra', 'India'),
(848, 'Pulgaon', 'Maharashtra', 'India'),
(849, 'Pune', 'Maharashtra', 'India'),
(850, 'Purna', 'Maharashtra', 'India'),
(851, 'Pusad', 'Maharashtra', 'India'),
(852, 'Rahuri', 'Maharashtra', 'India'),
(853, 'Rajura', 'Maharashtra', 'India'),
(854, 'Ramtek', 'Maharashtra', 'India'),
(855, 'Ratnagiri', 'Maharashtra', 'India'),
(856, 'Raver', 'Maharashtra', 'India'),
(857, 'Risod', 'Maharashtra', 'India'),
(858, 'Sailu', 'Maharashtra', 'India'),
(859, 'Sangamner', 'Maharashtra', 'India'),
(860, 'Sangli', 'Maharashtra', 'India'),
(861, 'Sangole', 'Maharashtra', 'India'),
(862, 'Sasvad', 'Maharashtra', 'India'),
(863, 'Satana', 'Maharashtra', 'India'),
(864, 'Satara', 'Maharashtra', 'India'),
(865, 'Savner', 'Maharashtra', 'India'),
(866, 'Sawantwadi', 'Maharashtra', 'India'),
(867, 'Shahade', 'Maharashtra', 'India'),
(868, 'Shegaon', 'Maharashtra', 'India'),
(869, 'Shendurjana', 'Maharashtra', 'India'),
(870, 'Shirdi', 'Maharashtra', 'India'),
(871, 'Shirpur-Warwade', 'Maharashtra', 'India'),
(872, 'Shirur', 'Maharashtra', 'India'),
(873, 'Shrigonda', 'Maharashtra', 'India'),
(874, 'Shrirampur', 'Maharashtra', 'India'),
(875, 'Sillod', 'Maharashtra', 'India'),
(876, 'Sinnar', 'Maharashtra', 'India'),
(877, 'Solapur', 'Maharashtra', 'India'),
(878, 'Soyagaon', 'Maharashtra', 'India'),
(879, 'Talegaon Dabhade', 'Maharashtra', 'India'),
(880, 'Talode', 'Maharashtra', 'India'),
(881, 'Tasgaon', 'Maharashtra', 'India'),
(882, 'Tirora', 'Maharashtra', 'India'),
(883, 'Tuljapur', 'Maharashtra', 'India'),
(884, 'Tumsar', 'Maharashtra', 'India'),
(885, 'Uran', 'Maharashtra', 'India'),
(886, 'Uran Islampur', 'Maharashtra', 'India'),
(887, 'Wadgaon Road', 'Maharashtra', 'India'),
(888, 'Wai', 'Maharashtra', 'India'),
(889, 'Wani', 'Maharashtra', 'India'),
(890, 'Wardha', 'Maharashtra', 'India'),
(891, 'Warora', 'Maharashtra', 'India'),
(892, 'Warud', 'Maharashtra', 'India'),
(893, 'Washim', 'Maharashtra', 'India'),
(894, 'Yevla', 'Maharashtra', 'India'),
(895, 'Uchgaon', 'Maharashtra', 'India'),
(896, 'Udgir', 'Maharashtra', 'India'),
(897, 'Umarga', 'Maharastra', 'India'),
(898, 'Umarkhed', 'Maharastra', 'India'),
(899, 'Umred', 'Maharastra', 'India'),
(900, 'Vadgaon Kasba', 'Maharastra', 'India'),
(901, 'Vaijapur', 'Maharastra', 'India'),
(902, 'Vasai', 'Maharastra', 'India'),
(903, 'Virar', 'Maharastra', 'India'),
(904, 'Vita', 'Maharastra', 'India'),
(905, 'Yavatmal', 'Maharastra', 'India'),
(906, 'Yawal', 'Maharastra', 'India'),
(907, 'Imphal', 'Manipur', 'India'),
(908, 'Kakching', 'Manipur', 'India'),
(909, 'Lilong', 'Manipur', 'India'),
(910, 'Mayang Imphal', 'Manipur', 'India'),
(911, 'Thoubal', 'Manipur', 'India'),
(912, 'Jowai', 'Meghalaya', 'India'),
(913, 'Nongstoin', 'Meghalaya', 'India'),
(914, 'Shillong', 'Meghalaya', 'India'),
(915, 'Tura', 'Meghalaya', 'India'),
(916, 'Aizawl', 'Mizoram', 'India'),
(917, 'Champhai', 'Mizoram', 'India'),
(918, 'Lunglei', 'Mizoram', 'India'),
(919, 'Saiha', 'Mizoram', 'India'),
(920, 'Dimapur', 'Nagaland', 'India'),
(921, 'Kohima', 'Nagaland', 'India'),
(922, 'Mokokchung', 'Nagaland', 'India'),
(923, 'Tuensang', 'Nagaland', 'India'),
(924, 'Wokha', 'Nagaland', 'India'),
(925, 'Zunheboto', 'Nagaland', 'India'),
(950, 'Anandapur', 'Orissa', 'India'),
(951, 'Anugul', 'Orissa', 'India'),
(952, 'Asika', 'Orissa', 'India'),
(953, 'Balangir', 'Orissa', 'India'),
(954, 'Balasore', 'Orissa', 'India'),
(955, 'Baleshwar', 'Orissa', 'India'),
(956, 'Bamra', 'Orissa', 'India'),
(957, 'Barbil', 'Orissa', 'India'),
(958, 'Bargarh', 'Orissa', 'India'),
(959, 'Bargarh', 'Orissa', 'India'),
(960, 'Baripada', 'Orissa', 'India'),
(961, 'Basudebpur', 'Orissa', 'India'),
(962, 'Belpahar', 'Orissa', 'India'),
(963, 'Bhadrak', 'Orissa', 'India'),
(964, 'Bhawanipatna', 'Orissa', 'India'),
(965, 'Bhuban', 'Orissa', 'India'),
(966, 'Bhubaneswar', 'Orissa', 'India'),
(967, 'Biramitrapur', 'Orissa', 'India'),
(968, 'Brahmapur', 'Orissa', 'India'),
(969, 'Brajrajnagar', 'Orissa', 'India'),
(970, 'Byasanagar', 'Orissa', 'India'),
(971, 'Cuttack', 'Orissa', 'India'),
(972, 'Debagarh', 'Orissa', 'India'),
(973, 'Dhenkanal', 'Orissa', 'India'),
(974, 'Gunupur', 'Orissa', 'India'),
(975, 'Hinjilicut', 'Orissa', 'India'),
(976, 'Jagatsinghapur', 'Orissa', 'India'),
(977, 'Jajapur', 'Orissa', 'India'),
(978, 'Jaleswar', 'Orissa', 'India'),
(979, 'Jatani', 'Orissa', 'India'),
(980, 'Jeypur', 'Orissa', 'India'),
(981, 'Jharsuguda', 'Orissa', 'India'),
(982, 'Joda', 'Orissa', 'India'),
(983, 'Kantabanji', 'Orissa', 'India'),
(984, 'Karanjia', 'Orissa', 'India'),
(985, 'Kendrapara', 'Orissa', 'India'),
(986, 'Kendujhar', 'Orissa', 'India'),
(987, 'Khordha', 'Orissa', 'India'),
(988, 'Koraput', 'Orissa', 'India'),
(989, 'Malkangiri', 'Orissa', 'India'),
(990, 'Nabarangapur', 'Orissa', 'India'),
(991, 'Paradip', 'Orissa', 'India'),
(992, 'Parlakhemundi', 'Orissa', 'India'),
(993, 'Pattamundai', 'Orissa', 'India'),
(994, 'Phulabani', 'Orissa', 'India'),
(995, 'Puri', 'Orissa', 'India'),
(996, 'Rairangpur', 'Orissa', 'India'),
(997, 'Rajagangapur', 'Orissa', 'India'),
(998, 'Raurkela', 'Orissa', 'India'),
(999, 'Rayagada', 'Orissa', 'India'),
(1000, 'Sambalpur', 'Orissa', 'India'),
(1001, 'Soro', 'Orissa', 'India'),
(1002, 'Sunabeda', 'Orissa', 'India'),
(1003, 'Sundargarh', 'Orissa', 'India'),
(1004, 'Talcher', 'Orissa', 'India'),
(1005, 'Titlagarh', 'Orissa', 'India'),
(1006, 'Umarkote', 'Orissa', 'India'),
(1007, 'Karaikal', 'Pondicherry', 'India'),
(1008, 'Mahe', 'Pondicherry', 'India'),
(1009, 'Pondicherry', 'Pondicherry', 'India'),
(1010, 'Yanam', 'Pondicherry', 'India'),
(1011, 'Ahmedgarh', 'Punjab', 'India'),
(1012, 'Amritsar', 'Punjab', 'India'),
(1013, 'Barnala', 'Punjab', 'India'),
(1014, 'Batala', 'Punjab', 'India'),
(1015, 'Bathinda', 'Punjab', 'India'),
(1016, 'Bhagha Purana', 'Punjab', 'India'),
(1017, 'Budhlada', 'Punjab', 'India'),
(1018, 'Chandigarh', 'Punjab', 'India'),
(1019, 'Dasua', 'Punjab', 'India'),
(1020, 'Dhuri', 'Punjab', 'India'),
(1021, 'Dinanagar', 'Punjab', 'India'),
(1022, 'Faridkot', 'Punjab', 'India'),
(1023, 'Fazilka', 'Punjab', 'India'),
(1024, 'Firozpur', 'Punjab', 'India'),
(1025, 'Firozpur Cantt.', 'Punjab', 'India'),
(1026, 'Giddarbaha', 'Punjab', 'India'),
(1027, 'Gobindgarh', 'Punjab', 'India'),
(1028, 'Gurdaspur', 'Punjab', 'India'),
(1029, 'Hoshiarpur', 'Punjab', 'India'),
(1030, 'Jagraon', 'Punjab', 'India'),
(1031, 'Jaitu', 'Punjab', 'India'),
(1032, 'Jalalabad', 'Punjab', 'India'),
(1033, 'Jalandhar', 'Punjab', 'India'),
(1034, 'Jalandhar Cantt.', 'Punjab', 'India'),
(1035, 'Jandiala', 'Punjab', 'India'),
(1036, 'Kapurthala', 'Punjab', 'India'),
(1037, 'Karoran', 'Punjab', 'India'),
(1038, 'Kartarpur', 'Punjab', 'India'),
(1039, 'Khanna', 'Punjab', 'India'),
(1040, 'Kharar', 'Punjab', 'India'),
(1041, 'Kot Kapura', 'Punjab', 'India'),
(1042, 'Kurali', 'Punjab', 'India'),
(1043, 'Longowal', 'Punjab', 'India'),
(1044, 'Ludhiana', 'Punjab', 'India'),
(1045, 'Malerkotla', 'Punjab', 'India'),
(1046, 'Malout', 'Punjab', 'India'),
(1047, 'Mansa', 'Punjab', 'India'),
(1048, 'Maur', 'Punjab', 'India'),
(1049, 'Moga', 'Punjab', 'India'),
(1050, 'Mohali', 'Punjab', 'India'),
(1051, 'Morinda', 'Punjab', 'India'),
(1052, 'Mukerian', 'Punjab', 'India'),
(1053, 'Muktsar', 'Punjab', 'India'),
(1054, 'Nabha', 'Punjab', 'India'),
(1055, 'Nakodar', 'Punjab', 'India'),
(1056, 'Nangal', 'Punjab', 'India'),
(1057, 'Nawanshahr', 'Punjab', 'India'),
(1058, 'Pathankot', 'Punjab', 'India'),
(1059, 'Patiala', 'Punjab', 'India'),
(1060, 'Patran', 'Punjab', 'India'),
(1061, 'Patti', 'Punjab', 'India'),
(1062, 'Phagwara', 'Punjab', 'India'),
(1063, 'Phillaur', 'Punjab', 'India'),
(1064, 'Qadian', 'Punjab', 'India'),
(1065, 'Raikot', 'Punjab', 'India'),
(1066, 'Rajpura', 'Punjab', 'India'),
(1067, 'Rampura Phul', 'Punjab', 'India'),
(1068, 'Rupnagar', 'Punjab', 'India'),
(1069, 'Samana', 'Punjab', 'India'),
(1070, 'Sangrur', 'Punjab', 'India'),
(1071, 'Sirhind Fatehgarh Sahib', 'Punjab', 'India'),
(1072, 'Sujanpur', 'Punjab', 'India'),
(1073, 'Sunam', 'Punjab', 'India'),
(1074, 'Talwara', 'Punjab', 'India'),
(1075, 'Tarn Taran', 'Punjab', 'India'),
(1076, 'Urmar Tanda', 'Punjab', 'India'),
(1077, 'Zira', 'Punjab', 'India'),
(1078, 'Zirakpur', 'Punjab', 'India'),
(1079, 'Bali', 'Rajasthan', 'India'),
(1080, 'Banswara', 'Rajastan', 'India'),
(1081, 'Ajmer', 'Rajasthan', 'India'),
(1082, 'Alwar', 'Rajasthan', 'India'),
(1083, 'Bandikui', 'Rajasthan', 'India'),
(1084, 'Baran', 'Rajasthan', 'India'),
(1085, 'Barmer', 'Rajasthan', 'India'),
(1086, 'Bikaner', 'Rajasthan', 'India'),
(1087, 'Fatehpur', 'Rajasthan', 'India'),
(1088, 'Jaipur', 'Rajasthan', 'India'),
(1089, 'Jaisalmer', 'Rajasthan', 'India'),
(1090, 'Jodhpur', 'Rajasthan', 'India'),
(1091, 'Kota', 'Rajasthan', 'India'),
(1092, 'Lachhmangarh', 'Rajasthan', 'India'),
(1093, 'Ladnu', 'Rajasthan', 'India'),
(1094, 'Lakheri', 'Rajasthan', 'India'),
(1095, 'Lalsot', 'Rajasthan', 'India'),
(1096, 'Losal', 'Rajasthan', 'India'),
(1097, 'Makrana', 'Rajasthan', 'India'),
(1098, 'Malpura', 'Rajasthan', 'India'),
(1099, 'Mandalgarh', 'Rajasthan', 'India'),
(1100, 'Mandawa', 'Rajasthan', 'India'),
(1101, 'Mangrol', 'Rajasthan', 'India'),
(1102, 'Merta City', 'Rajasthan', 'India'),
(1103, 'Mount Abu', 'Rajasthan', 'India'),
(1104, 'Nadbai', 'Rajasthan', 'India'),
(1105, 'Nagar', 'Rajasthan', 'India'),
(1106, 'Nagaur', 'Rajasthan', 'India'),
(1107, 'Nargund', 'Rajasthan', 'India'),
(1108, 'Nasirabad', 'Rajasthan', 'India'),
(1109, 'Nathdwara', 'Rajasthan', 'India'),
(1110, 'Navalgund', 'Rajasthan', 'India'),
(1111, 'Nawalgarh', 'Rajasthan', 'India'),
(1112, 'Neem-Ka-Thana', 'Rajasthan', 'India'),
(1113, 'Nelamangala', 'Rajasthan', 'India'),
(1114, 'Nimbahera', 'Rajasthan', 'India'),
(1115, 'Nipani', 'Rajasthan', 'India'),
(1116, 'Niwai', 'Rajasthan', 'India'),
(1117, 'Nohar', 'Rajasthan', 'India'),
(1118, 'Nokha', 'Rajasthan', 'India'),
(1119, 'Pali', 'Rajasthan', 'India'),
(1120, 'Phalodi', 'Rajasthan', 'India'),
(1121, 'Phulera', 'Rajasthan', 'India'),
(1122, 'Pilani', 'Rajasthan', 'India'),
(1123, 'Pilibanga', 'Rajasthan', 'India'),
(1124, 'Pindwara', 'Rajasthan', 'India'),
(1125, 'Pipar City', 'Rajasthan', 'India'),
(1126, 'Prantij', 'Rajasthan', 'India'),
(1127, 'Pratapgarh', 'Rajasthan', 'India'),
(1128, 'Raisinghnagar', 'Rajasthan', 'India'),
(1129, 'Rajakhera', 'Rajasthan', 'India'),
(1130, 'Rajaldesar', 'Rajasthan', 'India'),
(1131, 'Rajgarh (Alwar)', 'Rajasthan', 'India'),
(1132, 'Rajgarh (Churu', 'Rajasthan', 'India'),
(1133, 'Rajsamand', 'Rajasthan', 'India'),
(1134, 'Ramganj Mandi', 'Rajasthan', 'India'),
(1135, 'Ramngarh', 'Rajasthan', 'India'),
(1136, 'Ratangarh', 'Rajasthan', 'India'),
(1137, 'Rawatbhata', 'Rajasthan', 'India'),
(1138, 'Rawatsar', 'Rajasthan', 'India'),
(1139, 'Reengus', 'Rajasthan', 'India'),
(1140, 'Sadri', 'Rajasthan', 'India'),
(1141, 'Sadulshahar', 'Rajasthan', 'India'),
(1142, 'Sagwara', 'Rajasthan', 'India'),
(1143, 'Sambhar', 'Rajasthan', 'India'),
(1144, 'Sanchore', 'Rajasthan', 'India'),
(1145, 'Sangaria', 'Rajasthan', 'India'),
(1146, 'Sardarshahar', 'Rajasthan', 'India'),
(1147, 'Sawai Madhopur', 'Rajasthan', 'India'),
(1148, 'Shahpura', 'Rajasthan', 'India'),
(1149, 'Shahpura', 'Rajasthan', 'India'),
(1150, 'Sheoganj', 'Rajasthan', 'India'),
(1151, 'Sikar', 'Rajasthan', 'India'),
(1152, 'Sirohi', 'Rajasthan', 'India'),
(1153, 'Sojat', 'Rajasthan', 'India'),
(1154, 'Sri Madhopur', 'Rajasthan', 'India'),
(1155, 'Sujangarh', 'Rajasthan', 'India'),
(1156, 'Sumerpur', 'Rajasthan', 'India'),
(1157, 'Suratgarh', 'Rajasthan', 'India'),
(1158, 'Taranagar', 'Rajasthan', 'India'),
(1159, 'Todabhim', 'Rajasthan', 'India'),
(1160, 'Todaraisingh', 'Rajasthan', 'India'),
(1161, 'Tonk', 'Rajasthan', 'India'),
(1162, 'Udaipur', 'Rajasthan', 'India'),
(1163, 'Udaipurwati', 'Rajasthan', 'India'),
(1164, 'Vijainagar', 'Rajasthan', 'India'),
(1165, 'Gangtok', 'Sikkim', 'India'),
(1166, 'Calcutta', 'West Bengal', 'India'),
(1167, 'Arakkonam', 'Tamil Nadu', 'India'),
(1168, 'Arcot', 'Tamil Nadu', 'India'),
(1169, 'Aruppukkottai', 'Tamil Nadu', 'India'),
(1170, 'Bhavani', 'Tamil Nadu', 'India'),
(1171, 'Chengalpattu', 'Tamil Nadu', 'India'),
(1172, 'Chennai', 'Tamil Nadu', 'India'),
(1173, 'Chinna salem', 'Tamil nadu', 'India'),
(1174, 'Coimbatore', 'Tamil Nadu', 'India'),
(1175, 'Coonoor', 'Tamil Nadu', 'India'),
(1176, 'Cuddalore', 'Tamil Nadu', 'India'),
(1177, 'Dharmapuri', 'Tamil Nadu', 'India'),
(1178, 'Dindigul', 'Tamil Nadu', 'India'),
(1179, 'Erode', 'Tamil Nadu', 'India'),
(1180, 'Gudalur', 'Tamil Nadu', 'India'),
(1181, 'Gudalur', 'Tamil Nadu', 'India'),
(1182, 'Gudalur', 'Tamil Nadu', 'India'),
(1183, 'Kanchipuram', 'Tamil Nadu', 'India'),
(1184, 'Karaikudi', 'Tamil Nadu', 'India'),
(1185, 'Karungal', 'Tamil Nadu', 'India'),
(1186, 'Karur', 'Tamil Nadu', 'India'),
(1187, 'Kollankodu', 'Tamil Nadu', 'India'),
(1188, 'Lalgudi', 'Tamil Nadu', 'India'),
(1189, 'Madurai', 'Tamil Nadu', 'India'),
(1190, 'Nagapattinam', 'Tamil Nadu', 'India'),
(1191, 'Nagercoil', 'Tamil Nadu', 'India'),
(1192, 'Namagiripettai', 'Tamil Nadu', 'India'),
(1193, 'Namakkal', 'Tamil Nadu', 'India'),
(1194, 'Nandivaram-Guduvancheri', 'Tamil Nadu', 'India'),
(1195, 'Nanjikottai', 'Tamil Nadu', 'India'),
(1196, 'Natham', 'Tamil Nadu', 'India'),
(1197, 'Nellikuppam', 'Tamil Nadu', 'India'),
(1198, 'Neyveli', 'Tamil Nadu', 'India'),
(1199, 'O\' Valley', 'Tamil Nadu', 'India'),
(1200, 'Oddanchatram', 'Tamil Nadu', 'India'),
(1201, 'P.N.Patti', 'Tamil Nadu', 'India'),
(1202, 'Pacode', 'Tamil Nadu', 'India'),
(1203, 'Padmanabhapuram', 'Tamil Nadu', 'India'),
(1204, 'Palani', 'Tamil Nadu', 'India'),
(1205, 'Palladam', 'Tamil Nadu', 'India'),
(1206, 'Pallapatti', 'Tamil Nadu', 'India'),
(1207, 'Pallikonda', 'Tamil Nadu', 'India'),
(1208, 'Panagudi', 'Tamil Nadu', 'India'),
(1209, 'Panruti', 'Tamil Nadu', 'India'),
(1210, 'Paramakudi', 'Tamil Nadu', 'India'),
(1211, 'Parangipettai', 'Tamil Nadu', 'India'),
(1212, 'Pattukkottai', 'Tamil Nadu', 'India'),
(1213, 'Perambalur', 'Tamil Nadu', 'India'),
(1214, 'Peravurani', 'Tamil Nadu', 'India'),
(1215, 'Periyakulam', 'Tamil Nadu', 'India'),
(1216, 'Periyasemur', 'Tamil Nadu', 'India'),
(1217, 'Pernampattu', 'Tamil Nadu', 'India'),
(1218, 'Pollachi', 'Tamil Nadu', 'India'),
(1219, 'Polur', 'Tamil Nadu', 'India'),
(1220, 'Ponneri', 'Tamil Nadu', 'India'),
(1221, 'Pudukkottai', 'Tamil Nadu', 'India'),
(1222, 'Pudupattinam', 'Tamil Nadu', 'India'),
(1223, 'Puliyankudi', 'Tamil Nadu', 'India'),
(1224, 'Punjaipugalur', 'Tamil Nadu', 'India'),
(1225, 'Rajapalayam', 'Tamil Nadu', 'India'),
(1226, 'Ramanathapuram', 'Tamil Nadu', 'India'),
(1227, 'Rameshwaram', 'Tamil Nadu', 'India'),
(1228, 'Rasipuram', 'Tamil Nadu', 'India'),
(1229, 'Salem', 'Tamil Nadu', 'India'),
(1230, 'Sankarankoil', 'Tamil Nadu', 'India'),
(1231, 'Sankari', 'Tamil Nadu', 'India'),
(1232, 'Sathyamangalam', 'Tamil Nadu', 'India'),
(1233, 'Sattur', 'Tamil Nadu', 'India'),
(1234, 'Shenkottai', 'Tamil Nadu', 'India'),
(1235, 'Sholavandan', 'Tamil Nadu', 'India'),
(1236, 'Sholingur', 'Tamil Nadu', 'India'),
(1237, 'Sirkali', 'Tamil Nadu', 'India'),
(1238, 'Sivaganga', 'Tamil Nadu', 'India'),
(1239, 'Sivagiri', 'Tamil Nadu', 'India'),
(1240, 'Sivakasi', 'Tamil Nadu', 'India'),
(1241, 'Srivilliputhur', 'Tamil Nadu', 'India'),
(1242, 'Surandai', 'Tamil Nadu', 'India'),
(1243, 'Suriyampalayam', 'Tamil Nadu', 'India'),
(1244, 'Tenkasi', 'Tamil Nadu', 'India'),
(1245, 'Thammampatti', 'Tamil Nadu', 'India'),
(1246, 'Thanjavur', 'Tamil Nadu', 'India'),
(1247, 'Tharamangalam', 'Tamil Nadu', 'India'),
(1248, 'Tharangambadi', 'Tamil Nadu', 'India'),
(1249, 'Theni Allinagaram', 'Tamil Nadu', 'India'),
(1250, 'Thirumangalam', 'Tamil Nadu', 'India'),
(1251, 'Thirunindravur', 'Tamil Nadu', 'India'),
(1252, 'Thiruparappu', 'Tamil Nadu', 'India'),
(1253, 'Thirupuvanam', 'Tamil Nadu', 'India'),
(1254, 'Thiruthuraipoondi', 'Tamil Nadu', 'India'),
(1255, 'Thiruvallur', 'Tamil Nadu', 'India'),
(1256, 'Thiruvarur', 'Tamil Nadu', 'India'),
(1257, 'Thoothukudi', 'Tamil Nadu', 'India'),
(1258, 'Thuraiyur', 'Tamil Nadu', 'India'),
(1259, 'Tindivanam', 'Tamil Nadu', 'India'),
(1260, 'Tiruchendur', 'Tamil Nadu', 'India'),
(1261, 'Tiruchengode', 'Tamil Nadu', 'India'),
(1262, 'Tiruchirappalli', 'Tamil Nadu', 'India'),
(1263, 'Tirukalukundram', 'Tamil Nadu', 'India'),
(1264, 'Tirukkoyilur', 'Tamil Nadu', 'India'),
(1265, 'Tirunelveli', 'Tamil Nadu', 'India'),
(1266, 'Tirupathur', 'Tamil Nadu', 'India'),
(1267, 'Tirupathur', 'Tamil Nadu', 'India'),
(1268, 'Tiruppur', 'Tamil Nadu', 'India'),
(1269, 'Tiruttani', 'Tamil Nadu', 'India'),
(1270, 'Tiruvannamalai', 'Tamil Nadu', 'India'),
(1271, 'Tiruvethipuram', 'Tamil Nadu', 'India'),
(1272, 'Tittakudi', 'Tamil Nadu', 'India'),
(1273, 'Udhagamandalam', 'Tamil Nadu', 'India'),
(1274, 'Udumalaipettai', 'Tamil Nadu', 'India'),
(1275, 'Unnamalaikadai', 'Tamil Nadu', 'India'),
(1276, 'Usilampatti', 'Tamil Nadu', 'India'),
(1277, 'Uthamapalayam', 'Tamil Nadu', 'India'),
(1278, 'Uthiramerur', 'Tamil Nadu', 'India'),
(1279, 'Vadakkuvalliyur', 'Tamil Nadu', 'India'),
(1280, 'Vadalur', 'Tamil Nadu', 'India'),
(1281, 'Vadipatti', 'Tamil Nadu', 'India'),
(1282, 'Valparai', 'Tamil Nadu', 'India'),
(1283, 'Vandavasi', 'Tamil Nadu', 'India'),
(1284, 'Vaniyambadi', 'Tamil Nadu', 'India'),
(1285, 'Vedaranyam', 'Tamil Nadu', 'India'),
(1286, 'Vellakoil', 'Tamil Nadu', 'India'),
(1287, 'Vellore', 'Tamil Nadu', 'India');
INSERT INTO `cities` (`city_id`, `city_name`, `city_state`, `country`) VALUES
(1288, 'Vikramasingapuram', 'Tamil Nadu', 'India'),
(1289, 'Viluppuram', 'Tamil Nadu', 'India'),
(1290, 'Virudhachalam', 'Tamil Nadu', 'India'),
(1291, 'Virudhunagar', 'Tamil Nadu', 'India'),
(1292, 'Viswanatham', 'Tamil Nadu', 'India'),
(1293, 'Agartala', 'Tripura', 'India'),
(1294, 'Badharghat', 'Tripura', 'India'),
(1295, 'Dharmanagar', 'Tripura', 'India'),
(1296, 'Indranagar', 'Tripura', 'India'),
(1297, 'Jogendranagar', 'Tripura', 'India'),
(1298, 'Kailasahar', 'Tripura', 'India'),
(1299, 'Khowai', 'Tripura', 'India'),
(1300, 'Pratapgarh', 'Tripura', 'India'),
(1301, 'Udaipur', 'Tripura', 'India'),
(1302, 'Achhnera', 'Uttar Pradesh', 'India'),
(1303, 'Adari', 'Uttar Pradesh', 'India'),
(1304, 'Agra', 'Uttar Pradesh', 'India'),
(1305, 'Aligarh', 'Uttar Pradesh', 'India'),
(1306, 'Allahabad', 'Uttar Pradesh', 'India'),
(1307, 'Amroha', 'Uttar Pradesh', 'India'),
(1308, 'Azamgarh', 'Uttar Pradesh', 'India'),
(1309, 'Bahraich', 'Uttar Pradesh', 'India'),
(1310, 'Ballia', 'Uttar Pradesh', 'India'),
(1311, 'Balrampur', 'Uttar Pradesh', 'India'),
(1312, 'Banda', 'Uttar Pradesh', 'India'),
(1313, 'Bareilly', 'Uttar Pradesh', 'India'),
(1314, 'Chandausi', 'Uttar Pradesh', 'India'),
(1315, 'Dadri', 'Uttar Pradesh', 'India'),
(1316, 'Deoria', 'Uttar Pradesh', 'India'),
(1317, 'Etawah', 'Uttar Pradesh', 'India'),
(1318, 'Fatehabad', 'Uttar Pradesh', 'India'),
(1319, 'Fatehpur', 'Uttar Pradesh', 'India'),
(1320, 'Fatehpur', 'Uttar Pradesh', 'India'),
(1321, 'Greater Noida', 'Uttar Pradesh', 'India'),
(1322, 'Hamirpur', 'Uttar Pradesh', 'India'),
(1323, 'Hardoi', 'Uttar Pradesh', 'India'),
(1324, 'Jajmau', 'Uttar Pradesh', 'India'),
(1325, 'Jaunpur', 'Uttar Pradesh', 'India'),
(1326, 'Jhansi', 'Uttar Pradesh', 'India'),
(1327, 'Kalpi', 'Uttar Pradesh', 'India'),
(1328, 'Kanpur', 'Uttar Pradesh', 'India'),
(1329, 'Kota', 'Uttar Pradesh', 'India'),
(1330, 'Laharpur', 'Uttar Pradesh', 'India'),
(1331, 'Lakhimpur', 'Uttar Pradesh', 'India'),
(1332, 'Lal Gopalganj Nindaura', 'Uttar Pradesh', 'India'),
(1333, 'Lalganj', 'Uttar Pradesh', 'India'),
(1334, 'Lalitpur', 'Uttar Pradesh', 'India'),
(1335, 'Lar', 'Uttar Pradesh', 'India'),
(1336, 'Loni', 'Uttar Pradesh', 'India'),
(1337, 'Lucknow', 'Uttar Pradesh', 'India'),
(1338, 'Mathura', 'Uttar Pradesh', 'India'),
(1339, 'Meerut', 'Uttar Pradesh', 'India'),
(1340, 'Modinagar', 'Uttar Pradesh', 'India'),
(1341, 'Muradnagar', 'Uttar Pradesh', 'India'),
(1342, 'Nagina', 'Uttar Pradesh', 'India'),
(1343, 'Najibabad', 'Uttar Pradesh', 'India'),
(1344, 'Nakur', 'Uttar Pradesh', 'India'),
(1345, 'Nanpara', 'Uttar Pradesh', 'India'),
(1346, 'Naraura', 'Uttar Pradesh', 'India'),
(1347, 'Naugawan Sadat', 'Uttar Pradesh', 'India'),
(1348, 'Nautanwa', 'Uttar Pradesh', 'India'),
(1349, 'Nawabganj', 'Uttar Pradesh', 'India'),
(1350, 'Nehtaur', 'Uttar Pradesh', 'India'),
(1351, 'NOIDA', 'Uttar Pradesh', 'India'),
(1352, 'Noorpur', 'Uttar Pradesh', 'India'),
(1353, 'Obra', 'Uttar Pradesh', 'India'),
(1354, 'Orai', 'Uttar Pradesh', 'India'),
(1355, 'Padrauna', 'Uttar Pradesh', 'India'),
(1356, 'Palia Kalan', 'Uttar Pradesh', 'India'),
(1357, 'Parasi', 'Uttar Pradesh', 'India'),
(1358, 'Phulpur', 'Uttar Pradesh', 'India'),
(1359, 'Pihani', 'Uttar Pradesh', 'India'),
(1360, 'Pilibhit', 'Uttar Pradesh', 'India'),
(1361, 'Pilkhuwa', 'Uttar Pradesh', 'India'),
(1362, 'Powayan', 'Uttar Pradesh', 'India'),
(1363, 'Pukhrayan', 'Uttar Pradesh', 'India'),
(1364, 'Puranpur', 'Uttar Pradesh', 'India'),
(1365, 'Purquazi', 'Uttar Pradesh', 'India'),
(1366, 'Purwa', 'Uttar Pradesh', 'India'),
(1367, 'Rae Bareli', 'Uttar Pradesh', 'India'),
(1368, 'Rampur', 'Uttar Pradesh', 'India'),
(1369, 'Rampur Maniharan', 'Uttar Pradesh', 'India'),
(1370, 'Rasra', 'Uttar Pradesh', 'India'),
(1371, 'Rath', 'Uttar Pradesh', 'India'),
(1372, 'Renukoot', 'Uttar Pradesh', 'India'),
(1373, 'Reoti', 'Uttar Pradesh', 'India'),
(1374, 'Robertsganj', 'Uttar Pradesh', 'India'),
(1375, 'Rudauli', 'Uttar Pradesh', 'India'),
(1376, 'Rudrapur', 'Uttar Pradesh', 'India'),
(1377, 'Sadabad', 'Uttar Pradesh', 'India'),
(1378, 'Safipur', 'Uttar Pradesh', 'India'),
(1379, 'Saharanpur', 'Uttar Pradesh', 'India'),
(1380, 'Sahaspur', 'Uttar Pradesh', 'India'),
(1381, 'Sahaswan', 'Uttar Pradesh', 'India'),
(1382, 'Sahawar', 'Uttar Pradesh', 'India'),
(1383, 'Sahjanwa', 'Uttar Pradesh', 'India'),
(1384, 'Saidpur', ' Ghazipur', 'India'),
(1385, 'Sambhal', 'Uttar Pradesh', 'India'),
(1386, 'Samdhan', 'Uttar Pradesh', 'India'),
(1387, 'Samthar', 'Uttar Pradesh', 'India'),
(1388, 'Sandi', 'Uttar Pradesh', 'India'),
(1389, 'Sandila', 'Uttar Pradesh', 'India'),
(1390, 'Sardhana', 'Uttar Pradesh', 'India'),
(1391, 'Seohara', 'Uttar Pradesh', 'India'),
(1392, 'Shahabad', ' Hardoi', 'India'),
(1393, 'Shahabad', ' Rampur', 'India'),
(1394, 'Shahganj', 'Uttar Pradesh', 'India'),
(1395, 'Shahjahanpur', 'Uttar Pradesh', 'India'),
(1396, 'Shamli', 'Uttar Pradesh', 'India'),
(1397, 'Shamsabad', ' Agra', 'India'),
(1398, 'Shamsabad', ' Farrukhabad', 'India'),
(1399, 'Sherkot', 'Uttar Pradesh', 'India'),
(1400, 'Shikarpur', ' Bulandshahr', 'India'),
(1401, 'Shikohabad', 'Uttar Pradesh', 'India'),
(1402, 'Shishgarh', 'Uttar Pradesh', 'India'),
(1403, 'Siana', 'Uttar Pradesh', 'India'),
(1404, 'Sikanderpur', 'Uttar Pradesh', 'India'),
(1405, 'Sikandra Rao', 'Uttar Pradesh', 'India'),
(1406, 'Sikandrabad', 'Uttar Pradesh', 'India'),
(1407, 'Sirsaganj', 'Uttar Pradesh', 'India'),
(1408, 'Sirsi', 'Uttar Pradesh', 'India'),
(1409, 'Sitapur', 'Uttar Pradesh', 'India'),
(1410, 'Soron', 'Uttar Pradesh', 'India'),
(1411, 'Suar', 'Uttar Pradesh', 'India'),
(1412, 'Sultanpur', 'Uttar Pradesh', 'India'),
(1413, 'Sumerpur', 'Uttar Pradesh', 'India'),
(1414, 'Tanda', 'Uttar Pradesh', 'India'),
(1415, 'Tanda', 'Uttar Pradesh', 'India'),
(1416, 'Tetri Bazar', 'Uttar Pradesh', 'India'),
(1417, 'Thakurdwara', 'Uttar Pradesh', 'India'),
(1418, 'Thana Bhawan', 'Uttar Pradesh', 'India'),
(1419, 'Tilhar', 'Uttar Pradesh', 'India'),
(1420, 'Tirwaganj', 'Uttar Pradesh', 'India'),
(1421, 'Tulsipur', 'Uttar Pradesh', 'India'),
(1422, 'Tundla', 'Uttar Pradesh', 'India'),
(1423, 'Unnao', 'Uttar Pradesh', 'India'),
(1424, 'Utraula', 'Uttar Pradesh', 'India'),
(1425, 'Varanasi', 'Uttar Pradesh', 'India'),
(1426, 'Vrindavan', 'Uttar Pradesh', 'India'),
(1427, 'Warhapur', 'Uttar Pradesh', 'India'),
(1428, 'Zaidpur', 'Uttar Pradesh', 'India'),
(1429, 'Zamania', 'Uttar Pradesh', 'India'),
(1430, 'Almora', 'Uttarakhand', 'India'),
(1431, 'Bazpur', 'Uttarakhand', 'India'),
(1432, 'Chamba', 'Uttarakhand', 'India'),
(1433, 'Dehradun', 'Uttarakhand', 'India'),
(1434, 'Haldwani', 'Uttarakhand', 'India'),
(1435, 'Haridwar', 'Uttarakhand', 'India'),
(1436, 'Jaspur', 'Uttarakhand', 'India'),
(1437, 'Kashipur', 'Uttarakhand', 'India'),
(1438, 'kichha', 'Uttarakhand', 'India'),
(1439, 'Kotdwara', 'Uttarakhand', 'India'),
(1440, 'Manglaur', 'Uttarakhand', 'India'),
(1441, 'Mussoorie', 'Uttarakhand', 'India'),
(1442, 'Nagla', 'Uttarakhand', 'India'),
(1443, 'Nainital', 'Uttarakhand', 'India'),
(1444, 'Pauri', 'Uttarakhand', 'India'),
(1445, 'Pithoragarh', 'Uttarakhand', 'India'),
(1446, 'Ramnagar', 'Uttarakhand', 'India'),
(1447, 'Rishikesh', 'Uttarakhand', 'India'),
(1448, 'Roorkee', 'Uttarakhand', 'India'),
(1449, 'Rudrapur', 'Uttarakhand', 'India'),
(1450, 'Sitarganj', 'Uttarakhand', 'India'),
(1451, 'Tehri', 'Uttarakhand', 'India'),
(1452, 'Muzaffarnagar', 'Uttar Pradesh', 'India'),
(1453, 'Adra', ' Purulia', 'India'),
(1454, 'Alipurduar', 'West Bengal', 'India'),
(1455, 'Arambagh', 'West Bengal', 'India'),
(1456, 'Asansol', 'West Bengal', 'India'),
(1457, 'Baharampur', 'West Bengal', 'India'),
(1458, 'Bally', 'West Bengal', 'India'),
(1459, 'Balurghat', 'West Bengal', 'India'),
(1460, 'Bankura', 'West Bengal', 'India'),
(1461, 'Barakar', 'West Bengal', 'India'),
(1462, 'Barasat', 'West Bengal', 'India'),
(1463, 'Bardhaman', 'West Bengal', 'India'),
(1464, 'Bidhan Nagar', 'West Bengal', 'India'),
(1465, 'Chinsura', 'West Bengal', 'India'),
(1466, 'Contai', 'West Bengal', 'India'),
(1467, 'Cooch Behar', 'West Bengal', 'India'),
(1468, 'Darjeeling', 'West Bengal', 'India'),
(1469, 'Durgapur', 'West Bengal', 'India'),
(1470, 'Haldia', 'West Bengal', 'India'),
(1471, 'Howrah', 'West Bengal', 'India'),
(1472, 'Islampur', 'West Bengal', 'India'),
(1473, 'Jhargram', 'West Bengal', 'India'),
(1474, 'Kharagpur', 'West Bengal', 'India'),
(1475, 'Kolkata', 'West Bengal', 'India'),
(1476, 'Mainaguri', 'West Bengal', 'India'),
(1477, 'Mal', 'West Bengal', 'India'),
(1478, 'Mathabhanga', 'West Bengal', 'India'),
(1479, 'Medinipur', 'West Bengal', 'India'),
(1480, 'Memari', 'West Bengal', 'India'),
(1481, 'Monoharpur', 'West Bengal', 'India'),
(1482, 'Murshidabad', 'West Bengal', 'India'),
(1483, 'Nabadwip', 'West Bengal', 'India'),
(1484, 'Naihati', 'West Bengal', 'India'),
(1485, 'Panchla', 'West Bengal', 'India'),
(1486, 'Pandua', 'West Bengal', 'India'),
(1487, 'Paschim Punropara', 'West Bengal', 'India'),
(1488, 'Purulia', 'West Bengal', 'India'),
(1489, 'Raghunathpur', 'West Bengal', 'India'),
(1490, 'Raiganj', 'West Bengal', 'India'),
(1491, 'Rampurhat', 'West Bengal', 'India'),
(1492, 'Ranaghat', 'West Bengal', 'India'),
(1493, 'Sainthia', 'West Bengal', 'India'),
(1494, 'Santipur', 'West Bengal', 'India'),
(1495, 'Siliguri', 'West Bengal', 'India'),
(1496, 'Sonamukhi', 'West Bengal', 'India'),
(1497, 'Srirampore', 'West Bengal', 'India'),
(1498, 'Suri', 'West Bengal', 'India'),
(1499, 'Taki', 'West Bengal', 'India'),
(1500, 'Tamluk', 'West Bengal', 'India'),
(1501, 'Tarakeswar', 'West Bengal', 'India'),
(1502, 'Chikmagalur', 'Karnataka', 'India'),
(1503, 'Davanagere', 'Karnataka', 'India'),
(1504, 'Dharwad', 'Karnataka', 'India'),
(1505, 'Gadag', 'Karnataka', 'India'),
(1506, 'Chennai', 'Tamil Nadu', 'India'),
(1507, 'Coimbatore', 'Tamil Nadu', 'India');

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
  `states` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cities` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deliver_time` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `product_top` int(11) NOT NULL DEFAULT '0',
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_image`, `product_price`, `product_discount`, `discount_total`, `product_category`, `product_sub_cat`, `product_brand`, `product_desc`, `product_address`, `states`, `cities`, `deliver_time`, `product_top`, `status`) VALUES
(4, 'Taco Mexican', 'travel4.png', 544.00, '4', '522', 'chicken', 'Chicken fry', 'ratna', '                    fcsdfdsfds                    ', 'A 81/3 O;d Kondli New Delhi                    ', 'Uttar Pradesh', 'allahabad', '23:04', 0, '1'),
(5, 'aaa', 'staring.png', 144.00, '4', '522', 'chicken', 'Chicken tandoori', 'ratna', '                    fcsdfdsfds                                                            ', 'A 81/3 O;d Kondli New Delhi                                                            ', 'Uttar Pradesh', 'aligarh', '23:04', 0, '1'),
(6, 'bbb', '11_(1).jpg', 744.00, '4', '522', 'chicken', 'Chicken cilli', 'ratna', '                    fcsdfdsfds                                                                                ', 'A 81/3 O;d Kondli New Delhi                                                                                ', 'Uttar Pradesh', 'aligarh', '23:04', 0, '1'),
(7, 'ccc', '6q6.jpg', 94.00, '4', '522', 'chicken', 'Chicken masala', 'ratna', '                    fcsdfdsfds                                                                                ', 'A 81/3 O;d Kondli New Delhi                                                                                ', 'Uttar Pradesh', 'aligarh', '23:04', 0, '1'),
(8, 'ddd', '77.jpg', 564.00, '4', '522', 'snacks', 'tagri kabbab', 'ratna', '                    fcsdfdsfds                                                                                ', 'A 81/3 O;d Kondli New Delhi                                                                                ', 'Uttar Pradesh', 'aligarh', '23:04', 0, '1'),
(9, 'eee', 'travel4.png', 544.00, '4', '522', 'lunch', 'Chicken fry', 'ratna', '                    fcsdfdsfds                    ', 'A 81/3 O;d Kondli New Delhi                    ', 'Uttar Pradesh', 'allahabad', '23:04', 0, '1'),
(10, 'fff', '1530197888_(1)_(1).png', 74.00, '4', '522', 'snacks', 'Chicken fry', 'ratna', '                    fcsdfdsfds                                                                                ', 'A 81/3 O;d Kondli New Delhi                                                                                ', 'Uttar Pradesh', 'aligarh', '23:04', 0, '1'),
(11, 'ggg', 'aeroplane_(2).png', 74.00, '4', '522', 'chicken', 'Chicken fry', 'ratna', '                    fcsdfdsfds                                                                                ', 'A 81/3 O;d Kondli New Delhi                                                                                ', 'Uttar Pradesh', 'aligarh', '23:04', 0, '1'),
(12, 'hhh', 'elegant-design-for-indian-independence-day_1394-822.jpg', 34.00, '4', '522', 'snacks', 'Chicken fry', 'ratna', '                    fcsdfdsfds                                                                                ', 'A 81/3 O;d Kondli New Delhi                                                                                ', 'Uttar Pradesh', 'aligarh', '23:04', 0, '1'),
(13, 'iii', 'buy.png', 67.00, '4', '522', 'chicken', 'Chicken fry', 'ratna', '                    fcsdfdsfds                                                                                ', 'A 81/3 O;d Kondli New Delhi                                                                                ', 'Uttar Pradesh', 'aligarh', '23:04', 0, '1');

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
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `oauth_provider`, `oauth_uid`, `first_name`, `last_name`, `email`, `gender`, `locale`, `cover`, `picture`, `password`, `mobile`, `bike_name`, `address`, `link`, `login_time`, `status`, `created`, `modified`) VALUES
(1, '', '', 'Shubham Sahu', '', 'amit@gmail.com', '', '', '', 'download.jpeg', '827ccb0eea8a706c4c34a16891f84e7b', '34324324', 'Hero', 'Gurgaon', '', '2018-07-22 22:42:01', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '', '', 'ssadfsad@gmail.com', '', 'ssadfsad@gmail.com', '', '', '', '', '827ccb0eea8a706c4c34a16891f84e7b', '4324324', NULL, NULL, '', NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '', '', 'Shubam', 'Sahu', 'shubhamsahu707@gmail.com', '', '', '', '', '827ccb0eea8a706c4c34a16891f84e7b', '8585916263', NULL, NULL, '', NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '', '', 'Shubam', 'Sahu', 'shubhamsasewhu707@gmail.com', '', '', '', '', 'fcea920f7412b5da7be0cf42b8c93759', '8585967263', NULL, NULL, '', NULL, 0, '2018-09-19 18:07:24', '0000-00-00 00:00:00'),
(5, '', '', '', '', 'admin@12334', '', '', '', '', '0192023a7bbd73250516f069df18b500', '', NULL, NULL, '', NULL, 0, '2018-09-19 18:40:26', '0000-00-00 00:00:00');

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
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_id`);

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
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
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
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1624;
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
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `waiter`
--
ALTER TABLE `waiter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
