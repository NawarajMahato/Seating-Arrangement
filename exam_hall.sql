-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2023 at 04:44 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam_hall`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(500) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(500) NOT NULL,
  `gender` varchar(500) NOT NULL,
  `dob` text NOT NULL,
  `contact` text NOT NULL,
  `address` varchar(500) NOT NULL,
  `image` varchar(2000) NOT NULL,
  `created_on` date NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `fname`, `lname`, `gender`, `dob`, `contact`, `address`, `image`, `created_on`, `group_id`) VALUES
(1, 'admin', 'nawarajmahato9@gmail.com', 'aa7f019c326413d5b8bcad4314228bcd33ef557f5d81c7cc977f7728156f4357', 'Nawaraj', 'Mahato', 'Male', '1988-05-29', '7056420684', 'Nashik', 'dv.jpg', '2018-04-30', 1),
(0, 'user', 'niranjandhungana62@gmail.com', 'a6f640c288ce809922d6e83bebb410ea28667d3353212bcbf98d4de97d8a6234', 'Niranjan', 'Dhungana', 'Male', '1999-11-20', '7056420684', 'Neapl', 'abc.jpg', '2022-12-28', 4);

-- --------------------------------------------------------

--
-- Table structure for table `allot`
--

CREATE TABLE `allot` (
  `id` int(60) NOT NULL,
  `class_id` int(50) NOT NULL,
  `room_type_id` int(60) NOT NULL,
  `subject_id` int(50) NOT NULL,
  `exam_id` int(50) NOT NULL,
  `added_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `allot`
--

INSERT INTO `allot` (`id`, `class_id`, `room_type_id`, `subject_id`, `exam_id`, `added_date`) VALUES
(7, 1, 5, 1, 4, '2022-12-28'),
(8, 2, 5, 2, 5, '2022-12-30'),
(9, 1, 3, 4, 6, '2022-12-30');

-- --------------------------------------------------------

--
-- Table structure for table `allot_student`
--

CREATE TABLE `allot_student` (
  `id` int(100) NOT NULL,
  `allot_id` int(60) NOT NULL,
  `exam_id` int(50) NOT NULL,
  `exam_date` date NOT NULL,
  `start_time` varchar(20) NOT NULL,
  `end_time` varchar(20) NOT NULL,
  `room_id` int(50) NOT NULL,
  `student_id` int(50) NOT NULL,
  `teacher_id` int(50) DEFAULT NULL,
  `stud_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `allot_student`
--

INSERT INTO `allot_student` (`id`, `allot_id`, `exam_id`, `exam_date`, `start_time`, `end_time`, `room_id`, `student_id`, `teacher_id`, `stud_id`) VALUES
(5, 7, 4, '2022-12-28', '12:54', '13:54', 4, 1, 3, '11'),
(6, 7, 4, '2022-12-28', '12:54', '13:54', 4, 3, 3, '14'),
(7, 7, 4, '2022-12-28', '12:54', '13:54', 4, 4, 3, '3'),
(8, 8, 5, '2022-12-30', '13:00', '14:01', 4, 2, 3, '15'),
(9, 9, 6, '2022-12-30', '11:28', '13:29', 2, 4, 4, '3'),
(10, 9, 6, '2022-12-30', '11:28', '13:29', 2, 6, 4, '3'),
(11, 9, 6, '2022-12-30', '11:28', '13:29', 2, 7, 4, '4'),
(12, 9, 6, '2022-12-30', '11:28', '13:29', 2, 8, 4, '5');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `id` int(60) NOT NULL,
  `class_id` int(50) NOT NULL,
  `subject_id` int(50) NOT NULL,
  `exam_date` date NOT NULL,
  `start_time` varchar(50) NOT NULL,
  `end_time` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `added_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`id`, `class_id`, `subject_id`, `exam_date`, `start_time`, `end_time`, `name`, `added_date`) VALUES
(1, 1, 1, '2022-12-30', '12:00', '14:00', 'pc-cs-204L', '2022-12-26'),
(2, 2, 2, '2022-12-27', '00:01', '14:01', 'MST-1', '2022-12-27'),
(3, 3, 3, '2022-12-28', '11:49', '13:49', 'MST-2', '2022-12-28'),
(4, 1, 1, '2022-12-28', '12:54', '13:54', 'pc-cs-234L', '2022-12-28'),
(5, 2, 2, '2022-12-30', '13:00', '14:01', 'mst 2', '2022-12-30'),
(6, 1, 4, '2022-12-30', '11:28', '13:29', 'Demo', '2022-12-30');

-- --------------------------------------------------------

--
-- Table structure for table `manage_website`
--

CREATE TABLE `manage_website` (
  `id` int(11) NOT NULL,
  `title` varchar(600) NOT NULL,
  `short_title` varchar(600) NOT NULL,
  `logo` text NOT NULL,
  `footer` text NOT NULL,
  `currency_code` varchar(600) NOT NULL,
  `currency_symbol` varchar(600) NOT NULL,
  `login_logo` text NOT NULL,
  `invoice_logo` text NOT NULL,
  `background_login_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `manage_website`
--

INSERT INTO `manage_website` (`id`, `title`, `short_title`, `logo`, `footer`, `currency_code`, `currency_symbol`, `login_logo`, `invoice_logo`, `background_login_image`) VALUES
(1, 'SEATING ARRANGEMENT', 'SA', 'i.jpg', 'Upturn India Technology', 'INR', 'â‚¹', 'i.jpg', '', 'background-form-login-1.png');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(30) NOT NULL,
  `type_id` int(60) NOT NULL,
  `name` varchar(30) NOT NULL,
  `strenght` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `type_id`, `name`, `strenght`) VALUES
(1, 2, 'hot', '34'),
(2, 3, 'Demo', '30'),
(3, 4, 'B.tech', '20'),
(4, 5, 'cse', '5');

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `id` int(30) NOT NULL,
  `roomname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`id`, `roomname`) VALUES
(2, 'Blue'),
(3, 'C-102'),
(4, 'C-305'),
(5, 'Cse');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_class`
--

CREATE TABLE `tbl_class` (
  `id` int(30) NOT NULL,
  `classname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_class`
--

INSERT INTO `tbl_class` (`id`, `classname`) VALUES
(1, 'CSE'),
(2, 'Civil'),
(3, 'Finalyear');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_email_config`
--

CREATE TABLE `tbl_email_config` (
  `e_id` int(21) NOT NULL,
  `name` varchar(500) NOT NULL,
  `mail_driver_host` varchar(5000) NOT NULL,
  `mail_port` int(50) NOT NULL,
  `mail_username` varchar(50) NOT NULL,
  `mail_password` varchar(30) NOT NULL,
  `mail_encrypt` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_email_config`
--

INSERT INTO `tbl_email_config` (`e_id`, `name`, `mail_driver_host`, `mail_port`, `mail_username`, `mail_password`, `mail_encrypt`) VALUES
(1, '<student register> ', 'nawarajmahato9@gmail.com', 587, 'hacker9r@gmail.com', 'DI$C0NTINUE', 'sdsad');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group`
--

CREATE TABLE `tbl_group` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_group`
--

INSERT INTO `tbl_group` (`id`, `name`, `description`) VALUES
(1, 'admin', 'admin'),
(4, 'user1', 'user1'),
(5, 'user2', 'user2'),
(6, 'user3', 'class nd sub adding'),
(7, 'user4', 'user permissin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permission`
--

CREATE TABLE `tbl_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `display_name` varchar(200) NOT NULL,
  `operation` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_permission`
--

INSERT INTO `tbl_permission` (`id`, `name`, `display_name`, `operation`) VALUES
(1, 'manage_student', 'Manage Student', 'manage_student'),
(2, 'add_student', 'Add Student', 'add_student'),
(3, 'edit_student', 'Edit Student', 'edit_student'),
(4, 'delete_student', 'Delete Student', 'delete_student'),
(5, 'manage_teacher', 'Manage Teacher', 'manage_teacher'),
(6, 'add_teacher', 'Add Teacher', 'add_teacher'),
(7, 'edit_teacher', 'Edit Teacher', 'edit_teacher'),
(8, 'delete_teacher', 'Delete Teacher', 'delete_teacher'),
(9, 'manage_subject', 'Manage Subject', 'manage_subject'),
(10, 'add_subject', 'Add Subject', 'add_subject'),
(11, 'edit_subject', 'Edit Subject', 'edit_subject'),
(12, 'delete_subject', 'Delete Subject', 'delete_subject'),
(13, 'manage_class', 'Manage Class', 'manage_class'),
(14, 'add_class', 'Add Class', 'add_class'),
(15, 'edit_class', 'Edit Class', 'edit_class'),
(16, 'delete_class', 'Delete Class', 'delete_class'),
(21, 'manage_user', 'Manage User', 'manage_user'),
(22, 'add_user', 'Add User', 'add_user'),
(23, 'edit_user', 'Edit User', 'edit_user'),
(24, 'delete_user', 'Delete User', 'delete_user'),
(25, 'manage_exam', 'Manage Exam', 'manage_exam');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permission_role`
--

CREATE TABLE `tbl_permission_role` (
  `id` int(30) NOT NULL,
  `permission_id` int(30) NOT NULL,
  `role_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_permission_role`
--

INSERT INTO `tbl_permission_role` (`id`, `permission_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(20, 20, 1),
(21, 21, 1),
(22, 22, 1),
(23, 23, 1),
(24, 24, 1),
(27, 25, 1),
(28, 21, 7),
(29, 22, 7),
(30, 23, 7),
(31, 24, 7),
(32, 1, 5),
(33, 2, 5),
(34, 10, 5),
(35, 14, 5),
(41, 1, 8),
(42, 2, 8),
(43, 3, 8),
(44, 4, 8),
(45, 5, 8),
(46, 6, 8),
(47, 7, 8),
(48, 8, 8),
(49, 9, 8),
(50, 10, 8),
(51, 11, 8),
(52, 12, 8),
(53, 13, 8),
(54, 14, 8),
(55, 15, 8),
(56, 16, 8),
(57, 21, 8),
(58, 22, 8),
(59, 23, 8),
(60, 24, 8),
(61, 25, 8),
(62, 1, 9),
(63, 2, 9),
(64, 3, 9),
(65, 4, 9),
(66, 5, 9),
(67, 6, 9),
(68, 7, 9),
(69, 8, 9),
(70, 9, 9),
(71, 10, 9),
(72, 11, 9),
(73, 12, 9),
(74, 13, 9),
(75, 14, 9),
(76, 15, 9),
(77, 16, 9),
(78, 21, 9),
(79, 22, 9),
(80, 23, 9),
(81, 24, 9),
(82, 25, 9),
(104, 1, 4),
(105, 2, 4),
(106, 3, 4),
(107, 4, 4),
(108, 5, 4),
(109, 6, 4),
(110, 7, 4),
(111, 8, 4),
(112, 9, 4),
(113, 10, 4),
(114, 11, 4),
(115, 12, 4),
(116, 13, 4),
(117, 14, 4),
(118, 15, 4),
(119, 16, 4),
(120, 25, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sms_config`
--

CREATE TABLE `tbl_sms_config` (
  `smsid` int(20) NOT NULL,
  `senderid` int(20) NOT NULL,
  `sms_username` varchar(30) NOT NULL,
  `sms_password` varchar(20) NOT NULL,
  `auth_key` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_sms_config`
--

INSERT INTO `tbl_sms_config` (`smsid`, `senderid`, `sms_username`, `sms_password`, `auth_key`) VALUES
(1, 101, 'username', 'password', 'authkey');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `id` int(11) NOT NULL,
  `stud_id` varchar(50) NOT NULL,
  `sfname` varchar(30) NOT NULL,
  `slname` varchar(30) NOT NULL,
  `classname` varchar(30) NOT NULL,
  `semail` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `sgender` varchar(30) NOT NULL,
  `sdob` date NOT NULL,
  `scontact` int(50) NOT NULL,
  `saddress` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`id`, `stud_id`, `sfname`, `slname`, `classname`, `semail`, `password`, `sgender`, `sdob`, `scontact`, `saddress`) VALUES
(2, '15', 'Keshav', 'Thapa', '2', 'keshavthapa@gmail.com', 'aa7f019c326413d5b8bcad4314228bcd33ef557f5d81c7cc977f7728156f4357', 'Male', '1999-11-20', 2147483647, 'Panipat'),
(4, '3', 'Alisha', 'shrivastav', '1', 'alishashrivastav@gmail.com', 'aa7f019c326413d5b8bcad4314228bcd33ef557f5d81c7cc977f7728156f4357', 'Male', '1999-11-20', 2147483647, 'Nepal'),
(6, '3', 'chandes', 'kumar', '1', 'chandreskumar@gmail.com', '82ebf3b94a396d67f3a0b0e99acf697d37cb0861a98ea820c8a886d0758e1a32', 'Male', '2000-12-05', 1111111111, 'panipat'),
(7, '4', 'manish', 'kumar', '1', 'manishkumar@gmail.com', '82ebf3b94a396d67f3a0b0e99acf697d37cb0861a98ea820c8a886d0758e1a32', 'Male', '2000-02-02', 1111111111, 'panipat haryana india'),
(8, '5', 'aman', 'kumar', '1', 'amankumar@gmail.com', '82ebf3b94a396d67f3a0b0e99acf697d37cb0861a98ea820c8a886d0758e1a32', 'Male', '2002-02-02', 1111221112, 'delhi'),
(9, '8', 'Asish', 'kumar', '1', 'asish@gmail.com', '82ebf3b94a396d67f3a0b0e99acf697d37cb0861a98ea820c8a886d0758e1a32', 'Male', '2000-02-02', 1564891415, 'nepal'),
(10, '9', 'nisha', 'kumari', '1', 'nisha@gmail.com', '82ebf3b94a396d67f3a0b0e99acf697d37cb0861a98ea820c8a886d0758e1a32', 'Male', '2001-02-02', 2147483647, 'nainatal');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subject`
--

CREATE TABLE `tbl_subject` (
  `id` int(30) NOT NULL,
  `class_id` int(60) NOT NULL,
  `subjectname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_subject`
--

INSERT INTO `tbl_subject` (`id`, `class_id`, `subjectname`) VALUES
(1, 1, 'FOC'),
(2, 2, 'Steel'),
(3, 3, 'softcomputing'),
(4, 1, 'ProjectWork'),
(5, 1, 'SVVT');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teacher`
--

CREATE TABLE `tbl_teacher` (
  `id` int(50) NOT NULL,
  `tfname` varchar(50) NOT NULL,
  `tlname` varchar(50) NOT NULL,
  `classname` varchar(30) NOT NULL,
  `subjectname` varchar(50) NOT NULL,
  `temail` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `tgender` varchar(50) NOT NULL,
  `tdob` date NOT NULL,
  `tcontact` int(50) NOT NULL,
  `taddress` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_teacher`
--

INSERT INTO `tbl_teacher` (`id`, `tfname`, `tlname`, `classname`, `subjectname`, `temail`, `password`, `tgender`, `tdob`, `tcontact`, `taddress`) VALUES
(1, 'Akash', 'Kumar', '1', '1', 'akashkumar@gmail.com', 'aa7f019c326413d5b8bcad4314228bcd33ef557f5d81c7cc977f7728156f4357', 'Male', '1999-11-20', 2147483647, 'panipat'),
(2, 'Rahul', 'Kumawat', '2', '2', 'rahulkumawat@gmail.com', 'aa7f019c326413d5b8bcad4314228bcd33ef557f5d81c7cc977f7728156f4357', 'Male', '1999-11-20', 2147483647, 'Panipat'),
(3, 'saurav', 'shrivastav', '3', '3', 'sauravshrivastav@gmail.com', 'aa7f019c326413d5b8bcad4314228bcd33ef557f5d81c7cc977f7728156f4357', 'Male', '2022-12-28', 2147483647, 'Nepal'),
(4, 'Komal', 'Wadhwa', '1', '4', 'komal@geeta.edu.in', 'aa7f019c326413d5b8bcad4314228bcd33ef557f5d81c7cc977f7728156f4357', 'Male', '1999-11-20', 2147483647, 'Panipat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allot`
--
ALTER TABLE `allot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `allot_student`
--
ALTER TABLE `allot_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_website`
--
ALTER TABLE `manage_website`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_class`
--
ALTER TABLE `tbl_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_email_config`
--
ALTER TABLE `tbl_email_config`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `tbl_group`
--
ALTER TABLE `tbl_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_permission_role`
--
ALTER TABLE `tbl_permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sms_config`
--
ALTER TABLE `tbl_sms_config`
  ADD PRIMARY KEY (`smsid`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subject`
--
ALTER TABLE `tbl_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allot`
--
ALTER TABLE `allot`
  MODIFY `id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `allot_student`
--
ALTER TABLE `allot_student`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `manage_website`
--
ALTER TABLE `manage_website`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_class`
--
ALTER TABLE `tbl_class`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_email_config`
--
ALTER TABLE `tbl_email_config`
  MODIFY `e_id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_group`
--
ALTER TABLE `tbl_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_permission_role`
--
ALTER TABLE `tbl_permission_role`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `tbl_sms_config`
--
ALTER TABLE `tbl_sms_config`
  MODIFY `smsid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_subject`
--
ALTER TABLE `tbl_subject`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
