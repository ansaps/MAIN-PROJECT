-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2018 at 01:56 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `absence`
--

CREATE TABLE `absence` (
  `ab_id` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time_id_from` int(11) NOT NULL,
  `time_id_to` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absence`
--

INSERT INTO `absence` (`ab_id`, `doc_id`, `date`, `time_id_from`, `time_id_to`) VALUES
(115, 13, '2018-03-25', 0, 0),
(116, 13, '2018-03-26', 12, 18),
(124, 13, '2018-03-27', 10, 19),
(126, 13, '2018-03-27', 12, 21),
(127, 13, '2018-03-30', 5, 19);

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appoint_id` int(11) NOT NULL,
  `REGID` int(11) NOT NULL,
  `specialization_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL,
  `appointment_on` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `notification` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appoint_id`, `REGID`, `specialization_id`, `doctor_id`, `t_id`, `appointment_on`, `status`, `notification`) VALUES
(142, 59, 4, 13, 8, '2018-02-08', 1, 1),
(143, 59, 4, 13, 9, '2018-02-13', 1, 1),
(147, 59, 4, 13, 7, '2018-02-14', 0, 1),
(148, 59, 4, 13, 11, '2018-02-21', 0, 1),
(151, 59, 4, 13, 3, '2018-02-25', 0, 1),
(152, 59, 4, 13, 7, '2018-02-26', 0, 1),
(153, 59, 4, 13, 14, '2018-02-27', 0, 1),
(154, 59, 4, 13, 6, '2018-03-27', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(0, 'ADMIN'),
(1, 'DOCTOR'),
(2, 'PATIENT');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doc_id` int(11) NOT NULL,
  `REGID` int(11) NOT NULL,
  `specialization_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `liscence_no` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doc_id`, `REGID`, `specialization_id`, `image`, `liscence_no`) VALUES
(13, 60, 4, 'D:\\xamp\\htdocs\\Squadfree\\img\\team\\11.jpg\r\n', 453334),
(16, 67, 1, 'image/1522407878', 345678);

-- --------------------------------------------------------

--
-- Table structure for table `donate`
--

CREATE TABLE `donate` (
  `organ_id` int(11) NOT NULL,
  `organ_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `donor_id` int(11) NOT NULL,
  `REGID` int(11) NOT NULL,
  `organ_id` int(11) NOT NULL,
  `bloodgroup` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `fid` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `rate` varchar(50) NOT NULL,
  `message` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fid`, `email`, `rate`, `message`, `status`) VALUES
(1, '', '3', 'good', 0),
(2, 'dil@gmail.com', '4', 'good', 0),
(3, 'haris@gmail.com', '2', '', 0),
(4, 'haris@gmail.com', '5', '', 0),
(5, '', '5', '', 0),
(6, 'hello@gmail.com', '4', '', 0),
(7, 'hello@gmail.com', '5', '', 0),
(8, 'hello@gmail.com', '5', '', 0),
(9, 'hello@gmail.com', '5', 'good', 0),
(10, 'hello@gmail.com', '1', 'kkkk', 0),
(11, 'hello@gmail.com', '5', 'msg', 0),
(12, 'hello@gmail.com', '5', 'msg', 0),
(13, 'hello@gmail.com', '5', 'msg', 0),
(14, 'hello@gmail.com', '5', 'msg', 0),
(15, 'hello@gmail.com', '5', 'msg', 0),
(16, 'hello@gmail.com', '5', 'msg', 0),
(17, 'hello@gmail.com', '2', 'fine', 0),
(18, 'sajeev@gmail.com', '2', 'gooogg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `category_id` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `modified_on` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `category_id`, `email`, `password`, `modified_on`) VALUES
(0, 0, 'admin@gmail.com', 'ad8fb00da8f729d6d06fed762681f56bb118b4ae', '2017-10-04 06:14:22.226148'),
(59, 2, 'sajeev@gmail.com', '9ea832e6453b453146eb7b0a6c38ef2e99ed092f', '2018-01-23 04:52:43.000000'),
(60, 1, 'albin@gmail.com', 'ad8fb00da8f729d6d06fed762681f56bb118b4ae', '2018-01-23 04:55:36.000000'),
(67, 1, 'stella@gmail.com', 'a692cff5fca936b2a80662ed9950e4cdc2ab0eb5', '2018-03-30 13:00:23.000000'),
(68, 2, 'diya@gmail.com', '4d8e16eca9b7132a4cfb00774377fe94633c3c97', '2018-03-30 13:28:26.000000');

-- --------------------------------------------------------

--
-- Table structure for table `medical_history`
--

CREATE TABLE `medical_history` (
  `med_id` int(11) NOT NULL,
  `REGID` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `appoint_id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `prescription` varchar(150) NOT NULL,
  `consulted_on` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `notification` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_history`
--

INSERT INTO `medical_history` (`med_id`, `REGID`, `doctor_id`, `appoint_id`, `description`, `prescription`, `consulted_on`, `status`, `notification`) VALUES
(7, 59, 13, 143, 'forehead injury', '', '2018-02-13', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `REGID` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `date_of_birth` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `PhoneNo` varchar(50) NOT NULL,
  `place` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`REGID`, `category_id`, `name`, `gender`, `date_of_birth`, `address`, `email`, `PhoneNo`, `place`, `password`, `created_at`) VALUES
(59, 2, 'Sajeev Paa', 'Female', '1989-08-01', 'gffffffff', 'sajeev@gmail.com', '8765433457', 'weee', '9ea832e6453b453146eb7b0a6c38ef2e99ed092f', '2018-01-23 04:52:43.000000'),
(60, 1, 'Albin Mathw', 'Female', '1986-09-26', 'sgsssssss', 'albin@gmail.com', '9887654567', 'Parathode', 'ad8fb00da8f729d6d06fed762681f56bb118b4ae', '2018-01-23 04:55:36.000000'),
(67, 1, 'Stella Menon', 'Female', '1968-01-01', 'Madukakuzhy', 'stella@gmail.com', '7865432112', 'Mundakayam', 'a692cff5fca936b2a80662ed9950e4cdc2ab0eb5', '2018-03-30 13:00:23.000000'),
(68, 2, 'Diya George', 'Female', '1996-01-01', 'Devalogam', 'diya@gmail.com', '9874536633', 'Mundakayam', '4d8e16eca9b7132a4cfb00774377fe94633c3c97', '2018-03-30 13:28:26.000000');

-- --------------------------------------------------------

--
-- Table structure for table `specialization`
--

CREATE TABLE `specialization` (
  `Specilization_id` int(11) NOT NULL,
  `Specialized_in` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `specialization`
--

INSERT INTO `specialization` (`Specilization_id`, `Specialized_in`) VALUES
(2, 'Addiction psychiatrist'),
(3, 'Allergist (immunologist)'),
(4, 'Cardiologist'),
(1, 'Dermatologist'),
(5, 'Neurology');

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `time_id` int(11) NOT NULL,
  `time` varchar(13) NOT NULL,
  `meridiem` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`time_id`, `time`, `meridiem`) VALUES
(0, '', ''),
(1, '08:00 AM', 'AM'),
(2, '08:30 AM', 'AM'),
(3, '09:00 AM', 'AM'),
(4, '09:30 AM', 'AM'),
(5, '10:00 AM', 'AM'),
(6, '10:30 AM', 'AM'),
(7, '11:00 AM', 'AM'),
(8, '11:30 AM', 'AM'),
(9, '12:00 PM', 'PM'),
(10, '12:30 PM', 'PM'),
(11, '01:00 PM', 'PM'),
(12, '01:30 PM', 'PM'),
(13, '02:00 PM', 'PM'),
(14, '02:30 PM', 'PM'),
(15, '03:00 PM', 'PM'),
(16, '03:30 PM', 'PM'),
(17, '04:00 PM', 'PM'),
(18, '04:30 PM', 'PM'),
(19, '05:00 PM', 'PM'),
(20, '05:30 PM', 'PM'),
(21, '06:00 PM', 'PM'),
(22, '06:30 PM', 'PM'),
(23, '07:00 PM', 'PM'),
(24, '07:30 PM', 'PM');

-- --------------------------------------------------------

--
-- Table structure for table `time_alloting`
--

CREATE TABLE `time_alloting` (
  `time_id` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `time_alloted_from` varchar(12) NOT NULL,
  `alloted_from` varchar(10) NOT NULL,
  `time_alloted_to` varchar(12) NOT NULL,
  `aloted_to` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_alloting`
--

INSERT INTO `time_alloting` (`time_id`, `doc_id`, `time_alloted_from`, `alloted_from`, `time_alloted_to`, `aloted_to`) VALUES
(13, 13, '11:00:00.000', 'AM', '02:30:00.000', 'PM'),
(15, 13, '10:00:00.000', 'AM', '12:00:00.000', 'PM'),
(16, 13, '01:00:00.000', 'PM', '02:00:00.000', 'PM'),
(17, 13, '08:00 AM', 'AM', '07:30 PM', 'PM'),
(18, 13, '09:30 AM', '', '01:00 PM', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absence`
--
ALTER TABLE `absence`
  ADD PRIMARY KEY (`ab_id`),
  ADD KEY `doc_id` (`doc_id`),
  ADD KEY `time_id_from` (`time_id_from`),
  ADD KEY `time_id_to` (`time_id_to`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appoint_id`),
  ADD KEY `REGID` (`REGID`),
  ADD KEY `specialization_id` (`specialization_id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `t_id` (`t_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doc_id`),
  ADD UNIQUE KEY `liscence_no` (`liscence_no`),
  ADD KEY `doctor_ibfk_1` (`REGID`),
  ADD KEY `doctor_ibfk_2` (`specialization_id`);

--
-- Indexes for table `donate`
--
ALTER TABLE `donate`
  ADD PRIMARY KEY (`organ_id`);

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`donor_id`),
  ADD KEY `REGID` (`REGID`),
  ADD KEY `organ_id` (`organ_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `medical_history`
--
ALTER TABLE `medical_history`
  ADD PRIMARY KEY (`med_id`),
  ADD KEY `REGID` (`REGID`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `appoint_id` (`appoint_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`REGID`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `specialization`
--
ALTER TABLE `specialization`
  ADD PRIMARY KEY (`Specilization_id`),
  ADD UNIQUE KEY `Specialized_in` (`Specialized_in`);

--
-- Indexes for table `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`time_id`);

--
-- Indexes for table `time_alloting`
--
ALTER TABLE `time_alloting`
  ADD PRIMARY KEY (`time_id`),
  ADD KEY `doc_id` (`doc_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absence`
--
ALTER TABLE `absence`
  MODIFY `ab_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;
--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appoint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `donate`
--
ALTER TABLE `donate`
  MODIFY `organ_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `donor_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `medical_history`
--
ALTER TABLE `medical_history`
  MODIFY `med_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `REGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `specialization`
--
ALTER TABLE `specialization`
  MODIFY `Specilization_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `time`
--
ALTER TABLE `time`
  MODIFY `time_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `time_alloting`
--
ALTER TABLE `time_alloting`
  MODIFY `time_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `absence`
--
ALTER TABLE `absence`
  ADD CONSTRAINT `absence_ibfk_1` FOREIGN KEY (`doc_id`) REFERENCES `doctor` (`doc_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `absence_ibfk_2` FOREIGN KEY (`time_id_from`) REFERENCES `time` (`time_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `absence_ibfk_3` FOREIGN KEY (`time_id_to`) REFERENCES `time` (`time_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`REGID`) REFERENCES `registration` (`REGID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`specialization_id`) REFERENCES `specialization` (`Specilization_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `appointment_ibfk_3` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doc_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `appointment_ibfk_4` FOREIGN KEY (`t_id`) REFERENCES `time` (`time_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`REGID`) REFERENCES `registration` (`REGID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `doctor_ibfk_2` FOREIGN KEY (`specialization_id`) REFERENCES `specialization` (`Specilization_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `donors`
--
ALTER TABLE `donors`
  ADD CONSTRAINT `donors_ibfk_1` FOREIGN KEY (`REGID`) REFERENCES `registration` (`REGID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `donors_ibfk_2` FOREIGN KEY (`organ_id`) REFERENCES `donate` (`organ_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medical_history`
--
ALTER TABLE `medical_history`
  ADD CONSTRAINT `medical_history_ibfk_1` FOREIGN KEY (`REGID`) REFERENCES `registration` (`REGID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `medical_history_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doc_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `medical_history_ibfk_3` FOREIGN KEY (`appoint_id`) REFERENCES `appointment` (`appoint_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `registration`
--
ALTER TABLE `registration`
  ADD CONSTRAINT `registration_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `time_alloting`
--
ALTER TABLE `time_alloting`
  ADD CONSTRAINT `time_alloting_ibfk_1` FOREIGN KEY (`doc_id`) REFERENCES `doctor` (`doc_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
