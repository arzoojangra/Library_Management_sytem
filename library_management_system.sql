-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2022 at 02:43 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `book_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`book_id`, `name`) VALUES
(634236, 'Evelyn Short'),
(17514845, 'Brielle Mooney'),
(17514845, 'Summer Larsen'),
(58713258, 'Hu Blevins'),
(58713258, 'Melissa Barry'),
(80702156, 'Nathaniel York'),
(96813353, 'Faith Gonzalez'),
(96813353, 'Noel Keller');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `member_id` varchar(10) DEFAULT NULL,
  `issuded_on` date DEFAULT NULL,
  `pub_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `title`, `member_id`, `issuded_on`, `pub_id`) VALUES
(23051, 'animal kingdom', NULL, NULL, 'J3I4H7'),
(40414, 'Plants and life', 'P0766', NULL, 'T4Z4R1'),
(45937, 'Plants and life', NULL, NULL, 'T4Z4R1'),
(46698, 'animal kingdom', 'S8385', NULL, 'J3I4H7'),
(48337, 'identity politics and why we cant get rid of it', '121112', NULL, 'N3W8R6'),
(65288, 'textbook geoloy -1', 'J3154', NULL, 'G6F1K8'),
(67433, 'textbook geology -2', 'C1357', NULL, 'I8Q5F1'),
(77161, 'identity politics and why we cant get rid of it', NULL, NULL, 'N3W8R6'),
(79941, 'textbook geology -2', NULL, NULL, 'I8Q5F1'),
(86513, 'textbook geoloy -1', 'J3154', NULL, 'G6F1K8'),
(634236, 'into to advance computing', NULL, NULL, 'I8Q5F1'),
(8043273, 'enemy at our doorstep', 'M2063', NULL, 'T4Z4R1'),
(17514845, 'terrorism in middle east', NULL, NULL, 'G6F1K8'),
(18889072, 'into to advance computing', 'S8385', NULL, 'I8Q5F1'),
(41521543, 'jobless growth what is it and how', NULL, NULL, 'J3I4H7'),
(58713258, 'why nation fails', NULL, NULL, 'N3W8R6'),
(75452262, 'terrorism in middle east', 'P0766', NULL, 'G6F1K8'),
(80702156, 'jobless growth what is it and how', NULL, NULL, 'J3I4H7'),
(81349127, 'why nation fails', 'R1212', NULL, 'N3W8R6'),
(96813353, 'enemy at our doorstep', NULL, NULL, 'T4Z4R1');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `mem_id` varchar(10) NOT NULL,
  `joined_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`mem_id`, `joined_date`, `expire_date`, `id`) VALUES
('B0904', '2021-07-13', '2022-08-13', '478462'),
('C1357', '2021-08-10', '2021-11-09', '411815'),
('J3154', '2021-08-20', '2022-03-29', '121112'),
('J7548', '2021-07-02', '2021-07-10', '488126'),
('M2063', '2021-10-12', '2022-10-21', '52881'),
('P0766', '2021-11-12', '2022-04-15', '296339'),
('R1212', '2021-08-30', '2022-04-02', '24459'),
('S8385', '2021-07-03', '2022-09-19', '121112'),
('S8518', '2021-07-22', '2021-08-04', '66664'),
('V7028', '2021-11-28', '2022-04-06', '61222');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `Pub_id` varchar(10) NOT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`Pub_id`, `Address`, `Name`) VALUES
('G6F1K8', 'Ap #770-2631 Convallis Rd.', 'Leo Inc.'),
('I8Q5F1', 'Ap #733-6751 Enim. Av.', 'Sit Amet Lorem Corporation'),
('J3I4H7', '945-8597 Consequat Rd.', 'Nunc Sed Ltd'),
('N3W8R6', '533-2242 Pellentesque St.', 'Pede Et Risus Industries'),
('T4Z4R1', 'P.O. Box 396, 3243 Nec, Av.', 'Nisi Aenean Eget Corp.');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `empid` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`empid`, `name`, `department`) VALUES
('16535', 'Montana Mcleod', 'Quality Assurance'),
('17642', 'Ethan Scott', 'Tech Support'),
('24459', 'Leonard Madden', 'Human Resources'),
('52881', 'Rogan Hunt', 'Research and Development'),
('55456', 'Hedy Barron', 'Customer Service'),
('55715', 'Jaquelyn Pena', 'Legal Department'),
('58813', 'Gil Townsend', 'Payroll'),
('61222', 'Wade Carver', 'Accounting'),
('66664', 'Zelda Landry', 'Finances'),
('67372', 'Hunter Mckenzie', 'Accounting');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `sid` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `college` varchar(50) NOT NULL,
  `course` varchar(20) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sid`, `name`, `college`, `course`, `year`) VALUES
('121112', 'Hannah Bean', 'AB college', 'law', 1),
('175829', 'Russell Atkins', 'AB college', 'law', 1),
('208525', 'Quinlan Owens', 'AB college', 'law', 2),
('214741', 'Nomlanga Holt', 'DC college', 'law', 2),
('275665', 'Inga Weeks', 'AB college', 'law', 2),
('296339', 'Raya Booker', 'DC college', 'law', 2),
('382214', 'Dominic Boyle', 'DC college', 'law', 3),
('411815', 'Rose Richards', 'DC college', 'law', 4),
('478462', 'Jana West', 'DC college', 'law', 4),
('488126', 'Ashton Ryan', 'DC college', 'law', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`book_id`,`name`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`mem_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`Pub_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`sid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `author`
--
ALTER TABLE `author`
  ADD CONSTRAINT `author_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`);

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`pub_id`) REFERENCES `publisher` (`Pub_id`),
  ADD CONSTRAINT `book_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `member` (`mem_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
