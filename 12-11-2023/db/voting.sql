-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2023 at 05:47 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voting`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `username`, `password`) VALUES
(1, 'cven@gmail.com', 'adrian'),
(3, 'justin@gmail.com', 'justine');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `CandId` int(11) NOT NULL,
  `DeptId` int(11) DEFAULT NULL,
  `Lname` varchar(50) DEFAULT NULL,
  `Fname` varchar(50) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `Contact` bigint(20) DEFAULT NULL,
  `Position` varchar(50) DEFAULT NULL,
  `Platform` varchar(100) DEFAULT NULL,
  `Achievements` varchar(100) DEFAULT NULL,
  `TotalVotes` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`CandId`, `DeptId`, `Lname`, `Fname`, `Gender`, `email`, `Contact`, `Position`, `Platform`, `Achievements`, `TotalVotes`) VALUES
(4, 1, 'Balingasa', 'Justine', NULL, 'mayank@gmail.com', NULL, 'President', NULL, NULL, 0),
(5, 1, 'Nido', 'Nathaniel', NULL, 'prakashverma@gmail.com', NULL, 'Vice-President', NULL, NULL, 0),
(6, 1, 'Lazar', 'Adrian', NULL, 'cvenlazar@gmail.com', 9123456789, 'Secretary', 'To be The Best', NULL, 0),
(9, 2, 'Formalejo', 'Patrick Adrian', NULL, 'Patrick@gmail.com', 9876543211, 'President', 'Protect The Student', NULL, 0),
(15, 2, 'Dela Cruz', 'Billy John', NULL, 'Billy@gmail.com', 9656372476, 'Secretary', 'No', NULL, 0),
(14, 2, 'Sanchez', 'Vernard Joshua', NULL, 'Vj@gmail.com', 9764753254, 'Vice-President', 'Yes', NULL, 0),
(21, 3, 'Tahum', 'Rolando', NULL, 'Jr@gmail.com', 9663254132, 'President', 'TAHUUUUUUUUUUUM', NULL, 0),
(22, 3, 'Mendoza', 'Jhelian', 'Female', 'jhelian@gmail.com', 9743264523, 'President', 'To Keep The Pamantasan Clean', NULL, 0),
(23, 2, 'Muntinlupa', 'Tunasan', 'Female', 'TM@gmail.com', 9456216345, 'Vice-President', 'PLMUN', NULL, 0),
(28, 1, 'Lazar', 'Justine', 'Male', 'Lj@gmail.com', 9453412543, 'President', 'HEHEHEHEHEHE', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_2nd`
--

CREATE TABLE `candidate_2nd` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL,
  `rollno` bigint(20) DEFAULT NULL,
  `enrollid` varchar(200) DEFAULT NULL,
  `approve_status` int(20) DEFAULT 0 COMMENT '0 for pending , 1 for approve 2 for reject'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `candidate_2nd`
--

INSERT INTO `candidate_2nd` (`id`, `name`, `email`, `mobile`, `branch`, `rollno`, `enrollid`, `approve_status`) VALUES
(1, 'Mayank', 'mayank@gmail.com', 1238846, 'Information Technology', 68468, 'sdfsdf', 1),
(2, 'Mayank', 'adfi8edhfousah@gmail.com', 65, 'Information Technology', 2005002, 'sdes', 1);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_3rd`
--

CREATE TABLE `candidate_3rd` (
  `id` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `branch` varchar(60) DEFAULT NULL,
  `rollno` bigint(20) DEFAULT NULL,
  `enrollid` varchar(40) DEFAULT NULL,
  `approve_status` int(11) DEFAULT 0 COMMENT '	0 for pending , 1 for approve 2 for reject'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `candidate_3rd`
--

INSERT INTO `candidate_3rd` (`id`, `name`, `email`, `mobile`, `branch`, `rollno`, `enrollid`, `approve_status`) VALUES
(1, 'Mayank', 'mayank@gmail.com', 32412, 'Information Technology', 3342, '432', 1),
(2, 'Parinay', 'mayank@gmail.com', 6269888, 'Mechanical', 6849545, '32432', 1),
(3, 'Abhay', 'mayank@gmail.com', 626887802, 'Information Technology', 5255152, '3242134', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `message` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`) VALUES
(1, 'Aditya', 'adityakumarverified@gmail.com', 'nothing'),
(2, 'Aditya', 'adityakumarverified@gmail.com', 'nothing');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `CourseId` int(11) NOT NULL,
  `DeptId` int(11) DEFAULT NULL,
  `Course_Name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`CourseId`, `DeptId`, `Course_Name`) VALUES
(11, 1, 'BSIT'),
(12, 1, 'BSCS'),
(13, 1, 'ACT'),
(14, 2, 'BAPolSci'),
(15, 2, 'BAComm'),
(16, 2, 'BSPsy'),
(17, 3, 'BSCrim');

-- --------------------------------------------------------

--
-- Table structure for table `date`
--

CREATE TABLE `date` (
  `dateid` int(11) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `date`
--

INSERT INTO `date` (`dateid`, `date`) VALUES
(0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DeptId` int(11) NOT NULL,
  `Dept_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DeptId`, `Dept_name`) VALUES
(1, 'CITCS'),
(2, 'CAS'),
(3, 'CCJ');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentNo` int(11) NOT NULL,
  `CourseId` int(11) DEFAULT NULL,
  `DeptId` int(11) DEFAULT NULL,
  `Lname` varchar(30) DEFAULT NULL,
  `Fname` varchar(30) DEFAULT NULL,
  `Mname` varchar(30) DEFAULT NULL,
  `Birthday` date DEFAULT NULL,
  `Contact` bigint(20) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentNo`, `CourseId`, `DeptId`, `Lname`, `Fname`, `Mname`, `Birthday`, `Contact`, `Email`) VALUES
(21138352, 17, 3, 'Nido', 'Nathaniel', 'Pascual', '2002-09-23', 9656453264, 'NN@gmail.com'),
(21138353, 11, 1, 'Balingasa', 'Justine', 'Villaluna', '2001-03-13', 9676673412, 'JB@gmail.com'),
(21138354, 16, 2, 'Lazar', ' Adrian Cven', 'Aguilar', '2000-04-13', 9467354672, 'cvenlazar@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `suggestion`
--

CREATE TABLE `suggestion` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `number` bigint(20) DEFAULT NULL,
  `rollno` bigint(20) DEFAULT NULL,
  `suggestion` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `suggestion`
--

INSERT INTO `suggestion` (`id`, `name`, `email`, `number`, `rollno`, `suggestion`) VALUES
(1, 'Aditya', 'adityakumarverified@gmail.com', 9898, 651, 'Nothing'),
(2, 'adrian', 'adrian@gmail.com', 9123456789, 12, 'ewan ko sayo'),
(3, NULL, NULL, NULL, NULL, NULL),
(4, 'Billy John', 'Billy@gmail.com', 9563541327, 312312312, 'fedwqdw'),
(5, 'Billy John', 'Billy@gmail.com', 9563541327, 312312312, 'fedwqdw'),
(6, 'adrian', 'adrian@gmail.com', 9123456789, 12, 'ewan ko sayo'),
(7, NULL, NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `Branch` text DEFAULT NULL,
  `number` bigint(20) DEFAULT NULL,
  `candidate` varchar(60) DEFAULT NULL,
  `rollno` bigint(20) DEFAULT NULL,
  `reason` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `Branch`, `number`, `candidate`, `rollno`, `reason`) VALUES
(26, 'Aditya Kumar', 'adityakumarverified@gmail.com', 'IT', 6268887802, NULL, 205503318002, 'nothing'),
(27, 'Aditya Kumar', 'adityakumarverified@gmail.com', 'IT', 6268887802, NULL, 205503318002, ''),
(28, 'Aditya Kumar', 'adityakumarverified@gmail.com', 'IT', 6268887802, NULL, 3453, ''),
(29, 'Aditya Kumar', 'adityakumarverified@gmail.com', 'IT', 6268887802, NULL, 3242, ''),
(30, 'Aditya Kumar', 'adityakumarverified@gmail.com', 'IT', 6268887802, NULL, 205503318002, ''),
(31, 'Aditya Kumar', 'adityakumarverified@gmail.com', 'IT', 6268887802, NULL, 208850, ''),
(32, 'Aditya Kumar', 'adityakumarverified@gmail.com', 'IT', 6268887802, NULL, 20855, ''),
(33, 'Abhay', 'adfi8edhfousah@gmail.com', 'IT', 6264874874, NULL, 684985, ''),
(34, 'Mayank', 'adfi8edhfousah@gmail.com', 'IT', 95489, NULL, 65456, 'tghgfh'),
(35, 'Adrian Lazar', 'Adrian@gmail.com', 'asdas', 9898237423, 'adrian', 123123, 'dsadasd');

-- --------------------------------------------------------

--
-- Table structure for table `users_2nd`
--

CREATE TABLE `users_2nd` (
  `id` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `Branch` varchar(20) DEFAULT NULL,
  `number` bigint(20) DEFAULT NULL,
  `candidate` varchar(40) DEFAULT NULL,
  `rollno` bigint(30) DEFAULT NULL,
  `reason` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_2nd`
--

INSERT INTO `users_2nd` (`id`, `name`, `email`, `Branch`, `number`, `candidate`, `rollno`, `reason`) VALUES
(1, 'Parinay', 'mayank@gmail.com', 'IT', 626289, 'Mayank', 9845, 'dsft'),
(2, 'aditya', 'mayank@gmail.com', 'IT', 6266, 'Parinay', 626887802, 'sea'),
(3, 'Mayank', 'mayank@gmail.com', 'IT', 626887802, 'Mayank', 205503318022, 'nothing');

-- --------------------------------------------------------

--
-- Table structure for table `users_3rd`
--

CREATE TABLE `users_3rd` (
  `id` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `Branch` varchar(60) DEFAULT NULL,
  `number` bigint(30) DEFAULT NULL,
  `candidate` varchar(60) DEFAULT NULL,
  `rollno` bigint(30) DEFAULT NULL,
  `reason` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_3rd`
--

INSERT INTO `users_3rd` (`id`, `name`, `email`, `Branch`, `number`, `candidate`, `rollno`, `reason`) VALUES
(1, 'Abhay', 'mayank@gmail.com', 'IT', 684565, 'Parinay', 651, 'sade'),
(2, 'Aditya', 'adityakumarverified@gmail.com', 'IT', 6268887802, 'Parinay', 205503318002, 'nothing\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `voter`
--

CREATE TABLE `voter` (
  `Vid` int(11) NOT NULL,
  `StudentNo` int(11) DEFAULT NULL,
  `Candid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voter`
--

INSERT INTO `voter` (`Vid`, `StudentNo`, `Candid`) VALUES
(1, 21138352, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `voting`
--

CREATE TABLE `voting` (
  `VotingId` int(11) NOT NULL,
  `StudentNo` int(11) DEFAULT NULL,
  `Deptid` int(11) DEFAULT NULL,
  `Candidate` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voting`
--

INSERT INTO `voting` (`VotingId`, `StudentNo`, `Deptid`, `Candidate`) VALUES
(1, NULL, NULL, NULL),
(2, 21138354, 2, 'Lazar, Justine'),
(3, 21138354, 2, 'Lazar, Justine'),
(4, 21138352, 3, 'Mendoza, Jhelian'),
(5, 0, 3, ''),
(6, 0, 3, ''),
(7, 0, 3, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`CandId`);

--
-- Indexes for table `candidate_2nd`
--
ALTER TABLE `candidate_2nd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_3rd`
--
ALTER TABLE `candidate_3rd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`CourseId`);

--
-- Indexes for table `date`
--
ALTER TABLE `date`
  ADD PRIMARY KEY (`dateid`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DeptId`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentNo`);

--
-- Indexes for table `suggestion`
--
ALTER TABLE `suggestion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_2nd`
--
ALTER TABLE `users_2nd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_3rd`
--
ALTER TABLE `users_3rd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voter`
--
ALTER TABLE `voter`
  ADD PRIMARY KEY (`Vid`);

--
-- Indexes for table `voting`
--
ALTER TABLE `voting`
  ADD PRIMARY KEY (`VotingId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `CandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `candidate_2nd`
--
ALTER TABLE `candidate_2nd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `candidate_3rd`
--
ALTER TABLE `candidate_3rd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `CourseId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `DeptId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `StudentNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21138355;

--
-- AUTO_INCREMENT for table `suggestion`
--
ALTER TABLE `suggestion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users_2nd`
--
ALTER TABLE `users_2nd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users_3rd`
--
ALTER TABLE `users_3rd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `voter`
--
ALTER TABLE `voter`
  MODIFY `Vid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `voting`
--
ALTER TABLE `voting`
  MODIFY `VotingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
