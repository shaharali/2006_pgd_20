-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2020 at 10:35 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iit_du`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `cont_id` int(11) NOT NULL,
  `cont_name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cont_email` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`cont_id`, `cont_name`, `cont_email`, `message`) VALUES
(2, 'Md. Zakaria Hossain', 'zak@gmail.com', 'Text Message. Text Message. Text Message. Text Message. Text Message. Text Message. Text Message. Text Message. Text Message. Text Message. '),
(3, 'Md. Zakaria Hossain', 'zak@gmail.com', 'Text Message. Text Message. Text Message. Text Message. Text Message. Text Message. Text Message. Text Message. Text Message. Text Message. '),
(4, 'Md. Shahar Ali', 'msalipbl@gmail.com', 'dfdfds'),
(5, 'Md. Shahar Ali', 'msalipbl@gmail.com', 'dsfs dfdsfdsfdfdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cookie`
--

CREATE TABLE `tbl_cookie` (
  `cook_id` int(11) NOT NULL,
  `cook_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cook_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cook_name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tbl_cookie`
--

INSERT INTO `tbl_cookie` (`cook_id`, `cook_email`, `cook_password`, `cook_name`) VALUES
(41, 'ali@gmail.com', '1', 'Md. Shahar Ali'),
(42, 'ali@gmail.com', '1', 'Md. Shahar Ali');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_session`
--

CREATE TABLE `tbl_session` (
  `session_id` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_ip` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `time_login` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tbl_session`
--

INSERT INTO `tbl_session` (`session_id`, `email`, `user_ip`, `time_login`) VALUES
(1, 'ali@gmail.com', '172.25.4.28', '2020-12-01 10:20:58'),
(2, 'ali@gmail.com', '172.25.4.28', '2020-12-01 12:15:21'),
(3, 'ali@gmail.com', '172.25.4.28', '2020-12-01 12:15:24'),
(4, 'ali@gmail.com', '::1', '2020-12-04 11:17:36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `stu_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `gender` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `father` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `mother` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `paddress` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `maddress` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `mobile` varchar(11) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_applicaiton` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `position` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`stu_id`, `name`, `email`, `password`, `gender`, `father`, `mother`, `paddress`, `maddress`, `mobile`, `date_applicaiton`, `position`) VALUES
(1, 'Md. Shahar Ali', 'ali@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'Male', 'Abdul Wahab Mia', 'Firoja Khalasi', 'Bhanga, Faridpur', 'Maniknagar, Dhaka', '01971633817', '2020-11-23 07:35:45', 'Active'),
(3, 'Md. Zakaria Hossain', 'zak@gmail.com', '202cb962ac59075b964b07152d234b70', 'Male', 'Mr. A.K. Fazlul Karim Khan', 'Mrs. Jahanara Begum', 'Sirajgonj', 'Motijheel, Dhaka', '01562445547', '2020-11-23 11:49:34', 'Active'),
(4, 'Ms. Arifa Sultana', 'arifa@gmail.com', '202cb962ac59075b964b07152d234b70', 'female', 'Md. Kamal Hossain', 'Mrs. Roksana Akter', 'Bhanga, Faridpur', 'Motijheel, Dhaka', '01536874854', '2020-11-24 11:32:08', 'Active'),
(5, 'Shahar Ali', 'msalipbl@gmail.com', '94d4392dd317bc19f0c80b47b3f69405', 'Male', 'Abdul Wahab Mia', 'Firoja Khalasi', 'Bhanga, Faridpur', 'Maniknagar, Dhaka', '01534679910', '2020-11-28 14:20:03', 'Active'),
(6, 'S Ali', 'bhanga@pubalibankbd.com', '4bff9944b88124f6c1cb007bbbb37bbd', 'male', 'Shahar Ali', 'Firoja Khalasi', 'Bhanga, Faridpur', 'Maniknagar, Dhaka', '01568997451', '2020-11-28 17:57:58', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonial`
--

CREATE TABLE `tbl_testimonial` (
  `test_id` int(11) NOT NULL,
  `stu_id` int(11) NOT NULL,
  `class` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `batch` int(4) NOT NULL,
  `roll` int(10) NOT NULL,
  `pyear` int(4) NOT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `result` float NOT NULL,
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `receip_no` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `payment_date` date NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `testimonial_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `prepared_by` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tbl_testimonial`
--

INSERT INTO `tbl_testimonial` (`test_id`, `stu_id`, `class`, `batch`, `roll`, `pyear`, `subject`, `result`, `payment_method`, `receip_no`, `payment_date`, `amount`, `status`, `testimonial_date`, `prepared_by`) VALUES
(1, 1, 'PGDIT', 2020, 2006, 2021, 'Software', 7.77, 'BKASH', '01971633817', '2020-11-22', 505, 'yes', '2020-11-22 18:00:00', ''),
(2, 3, 'B.Sc (Eng.)', 2015, 2001, 2019, 'CSE', 3.74, 'BKASH', '015648745', '2020-11-23', 550, 'yes', '2020-11-23 18:00:00', ''),
(3, 4, 'B.Sc (Eng.)', 2016, 2012, 2020, 'Software Engineering', 3.65, 'BKASH', '01971633817', '2020-11-24', 550, 'yes', '0000-00-00 00:00:00', ''),
(4, 1, 'B.Sc (Eng.)', 2016, 2012, 2015, 'Software Engineering', 3.45, '', '', '0000-00-00', 0, '', '2020-11-26 11:59:01', ''),
(5, 5, 'B.Sc (Eng.)', 2016, 2005, 2020, 'Software Engineering', 4.35, '', '', '0000-00-00', 0, '', '2020-11-28 17:50:47', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `level` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`email`, `user_id`, `password`, `name`, `level`) VALUES
('admin@gmail.com', 'admin', 'admin123', 'Administrator', 'Admin'),
('msalipbl@gmail.com', 'msali', '4bff9944b88124f6c1cb007bbbb37bbd', 'Md. Shahar Ali', 'Admin'),
('shraban@gmail.com', 'shraban', '633817', 'Tahsina Tabassum', 'User'),
('tahsan@gmail.com', 'tahsan', '633817', 'Tahsan Ahmed', 'tahsan@gma');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_cookie`
--

CREATE TABLE `tbl_user_cookie` (
  `cook_id` int(11) NOT NULL,
  `cook_user_id` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cook_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cook_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cook_name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cook_level` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tbl_user_cookie`
--

INSERT INTO `tbl_user_cookie` (`cook_id`, `cook_user_id`, `cook_email`, `cook_password`, `cook_name`, `cook_level`) VALUES
(7, 'msali', 'msalipbl@gmail.com', '633817', 'Md. Shahar Ali', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_visitor`
--

CREATE TABLE `tbl_visitor` (
  `visitor_id` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `visitor_ip` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `visit_time` datetime NOT NULL,
  `visit_page` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `tbl_visitor`
--

INSERT INTO `tbl_visitor` (`visitor_id`, `email`, `visitor_ip`, `visit_time`, `visit_page`) VALUES
(1, 'ali@gmail.com', '172.25.4.28', '2020-12-01 11:00:52', 'index'),
(2, 'ali@gmail.com', '172.25.4.28', '2020-12-01 11:01:44', 'profile'),
(3, 'ali@gmail.com', '172.25.4.28', '2020-12-01 11:02:42', 'testimonial'),
(4, 'ali@gmail.com', '172.25.4.28', '2020-12-01 11:02:54', 'edit_testimonial'),
(5, 'ali@gmail.com', '172.25.4.28', '2020-12-01 11:02:57', 'edit_testimonial'),
(6, 'ali@gmail.com', '172.25.4.28', '2020-12-01 11:02:57', 'testimonial'),
(7, 'ali@gmail.com', '172.25.4.28', '2020-12-01 11:02:59', 'profile'),
(8, 'ali@gmail.com', '172.25.4.28', '2020-12-01 11:03:01', 'edit_profile'),
(9, 'ali@gmail.com', '172.25.4.28', '2020-12-01 11:03:02', 'edit_profile'),
(10, 'ali@gmail.com', '172.25.4.28', '2020-12-01 11:03:02', 'profile'),
(11, 'ali@gmail.com', '172.25.4.28', '2020-12-01 11:11:15', 'index'),
(12, 'Unknown', '172.25.4.28', '2020-12-01 11:11:15', 'index'),
(13, 'Unknown', '172.25.4.28', '2020-12-01 11:14:20', 'index'),
(14, 'Unknown', '172.25.4.28', '2020-12-01 11:14:25', 'index'),
(15, 'Unknown', '172.25.4.28', '2020-12-01 11:14:25', 'index'),
(16, 'Unknown', '172.25.4.28', '2020-12-01 12:14:46', 'index'),
(17, 'Unknown', '172.25.4.28', '2020-12-01 12:15:15', 'profile'),
(18, 'Unknown', '172.25.4.28', '2020-12-01 12:15:17', 'index'),
(19, 'Unknown', '172.25.4.28', '2020-12-01 12:15:17', 'index'),
(20, 'Unknown', '172.25.4.28', '2020-12-01 12:15:20', 'login'),
(21, 'ali@gmail.com', '172.25.4.28', '2020-12-01 12:15:24', 'login'),
(22, 'ali@gmail.com', '172.25.4.28', '2020-12-01 12:15:26', 'profile'),
(23, 'ali@gmail.com', '172.25.4.28', '2020-12-01 12:15:27', 'testimonial'),
(24, 'Unknown', '172.25.4.28', '2020-12-01 12:48:13', 'profile'),
(25, 'Unknown', '172.25.4.28', '2020-12-02 05:22:28', 'index'),
(26, 'Unknown', '172.25.4.28', '2020-12-02 05:23:15', 'index'),
(27, 'Unknown', '172.25.4.28', '2020-12-02 05:23:43', 'index'),
(28, 'Unknown', '172.25.4.28', '2020-12-03 09:39:26', 'index'),
(29, 'Unknown', '172.25.4.28', '2020-12-03 09:39:35', 'profile'),
(77, 'Unknown', '127.0.0.1', '2020-12-05 10:28:02', 'contact'),
(78, 'Unknown', '127.0.0.1', '2020-12-05 10:28:31', 'contact'),
(79, 'Unknown', '127.0.0.1', '2020-12-05 10:28:32', 'contact'),
(80, 'Unknown', '127.0.0.1', '2020-12-05 10:28:34', 'contact'),
(81, 'Unknown', '127.0.0.1', '2020-12-05 10:28:35', 'index'),
(82, 'Unknown', '127.0.0.1', '2020-12-05 10:28:37', 'contact');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`cont_id`);

--
-- Indexes for table `tbl_cookie`
--
ALTER TABLE `tbl_cookie`
  ADD PRIMARY KEY (`cook_id`);

--
-- Indexes for table `tbl_session`
--
ALTER TABLE `tbl_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`stu_id`);

--
-- Indexes for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  ADD PRIMARY KEY (`test_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `tbl_user_cookie`
--
ALTER TABLE `tbl_user_cookie`
  ADD PRIMARY KEY (`cook_id`);

--
-- Indexes for table `tbl_visitor`
--
ALTER TABLE `tbl_visitor`
  ADD PRIMARY KEY (`visitor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `cont_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_cookie`
--
ALTER TABLE `tbl_cookie`
  MODIFY `cook_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `tbl_session`
--
ALTER TABLE `tbl_session`
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `stu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  MODIFY `test_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_user_cookie`
--
ALTER TABLE `tbl_user_cookie`
  MODIFY `cook_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_visitor`
--
ALTER TABLE `tbl_visitor`
  MODIFY `visitor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
