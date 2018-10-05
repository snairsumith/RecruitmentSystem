-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2018 at 09:03 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `billing_tbl`
--

CREATE TABLE `billing_tbl` (
  `BillId` int(11) NOT NULL,
  `CompanyId` int(11) NOT NULL,
  `AccountNumber` int(11) NOT NULL,
  `BankName` varchar(50) NOT NULL,
  `Amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `company_job-post`
--

CREATE TABLE `company_job-post` (
  `CompanyId` varchar(50) NOT NULL,
  `JobPostId` int(11) NOT NULL,
  `ApplyDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `company_reg`
--

CREATE TABLE `company_reg` (
  `CompanyId` int(11) NOT NULL,
  `CompanyName` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Country` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Pin` int(11) NOT NULL,
  `Contact` int(11) NOT NULL,
  `SecondaryContact` int(11) NOT NULL,
  `CompanyWebsite` varchar(50) NOT NULL,
  `EstablishmentDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `education_details`
--

CREATE TABLE `education_details` (
  `UserId` int(11) NOT NULL,
  `CertifiedDegree` varchar(50) NOT NULL,
  `University` varchar(50) NOT NULL,
  `StartingDate` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `CompletionDate` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `Percentage` varchar(50) NOT NULL,
  `Cgpa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `ExamId` int(11) NOT NULL,
  `CompanyId` int(11) NOT NULL,
  `ExamTitle` varchar(50) NOT NULL,
  `Createddate` timestamp NULL DEFAULT NULL,
  `UpdatedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exam_assign_tbl`
--

CREATE TABLE `exam_assign_tbl` (
  `ExamId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Result` varchar(15) NOT NULL,
  `InterviewDate` timestamp NULL DEFAULT NULL,
  `JobPostId` int(11) NOT NULL,
  `CreatedDate` timestamp NULL DEFAULT NULL,
  `UpdateDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exam_attend`
--

CREATE TABLE `exam_attend` (
  `UserId` int(11) NOT NULL,
  `ExamId` int(11) NOT NULL,
  `QuestionId` int(11) NOT NULL,
  `Answer` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `experience_details`
--

CREATE TABLE `experience_details` (
  `UserId` int(11) NOT NULL,
  `IsCurrentJob` varchar(50) NOT NULL,
  `CompanyName` varchar(50) NOT NULL,
  `JobLocation` varchar(50) NOT NULL,
  `JobTitle` varchar(25) NOT NULL,
  `StartingDate` timestamp NULL DEFAULT NULL,
  `EndingDate` timestamp NULL DEFAULT NULL,
  `Description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `joblocationtable`
--

CREATE TABLE `joblocationtable` (
  `LocationId` int(11) NOT NULL,
  `StreetAdress` varchar(50) NOT NULL,
  `City` varchar(25) NOT NULL,
  `State` varchar(25) NOT NULL,
  `Country` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jobpost`
--

CREATE TABLE `jobpost` (
  `JobPostId` int(11) NOT NULL,
  `JobTypeId` int(11) NOT NULL,
  `CompanyId` int(11) NOT NULL,
  `CreatedDate` timestamp NULL DEFAULT NULL,
  `JobDescription` varchar(50) NOT NULL,
  `JobLocation` varchar(50) NOT NULL,
  `IsActive` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jobpost_activity`
--

CREATE TABLE `jobpost_activity` (
  `UserId` int(11) NOT NULL,
  `JobPostId` int(11) NOT NULL,
  `ApplyDate` timestamp NULL DEFAULT NULL,
  `Skill` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `job_type_tbl`
--

CREATE TABLE `job_type_tbl` (
  `TypeId` int(11) NOT NULL,
  `TypeName` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `LocationId` int(11) NOT NULL,
  `LocationName` varchar(50) NOT NULL,
  `ParentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_tbl`
--

CREATE TABLE `login_tbl` (
  `LoginId` int(11) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Role` int(11) NOT NULL,
  `Status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_tbl`
--

INSERT INTO `login_tbl` (`LoginId`, `UserName`, `Password`, `Role`, `Status`) VALUES
(1, 'Admin', 'Admin', 1, '0'),
(2, 'Admin', 'Admin', 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `notification_tbl`
--

CREATE TABLE `notification_tbl` (
  `NotificatioId` int(11) NOT NULL,
  `NotificationType` varchar(50) NOT NULL,
  `NotificationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `NotificationTitle` varchar(50) NOT NULL,
  `NotificationDescription` varchar(50) NOT NULL,
  `SenderId` int(11) NOT NULL,
  `ReceiverId` int(11) NOT NULL,
  `ReceiverType` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `QuestionId` int(11) NOT NULL,
  `QuestionTitle` varchar(50) NOT NULL,
  `Option1` varchar(50) NOT NULL,
  `Option2` varchar(50) NOT NULL,
  `Option3` varchar(50) NOT NULL,
  `CorrectAnswer` int(11) NOT NULL,
  `CompanyId` int(11) NOT NULL,
  `MarkType` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `skill_tbl`
--

CREATE TABLE `skill_tbl` (
  `SkillId` int(11) NOT NULL,
  `SkillName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_reg`
--

CREATE TABLE `user_reg` (
  `UserId` int(11) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Dob` timestamp NULL DEFAULT NULL,
  `Email` varchar(30) NOT NULL,
  `Country` varchar(25) NOT NULL,
  `City` varchar(25) NOT NULL,
  `Contact` int(11) NOT NULL,
  `Experience` varchar(25) NOT NULL,
  `HigherQualification` varchar(50) NOT NULL,
  `Marks` int(11) NOT NULL,
  `University` varchar(50) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `RegTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ProfileNotification` varchar(50) NOT NULL,
  `EmailNotification` varchar(50) NOT NULL,
  `Photo` varchar(50) NOT NULL,
  `Cv` varchar(50) NOT NULL,
  `MarkList` varchar(50) NOT NULL,
  `IdProof` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_skill_tbl`
--

CREATE TABLE `user_skill_tbl` (
  `UserId` int(11) NOT NULL,
  `SkillId` int(11) NOT NULL,
  `SkillType` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billing_tbl`
--
ALTER TABLE `billing_tbl`
  ADD PRIMARY KEY (`BillId`);

--
-- Indexes for table `company_job-post`
--
ALTER TABLE `company_job-post`
  ADD PRIMARY KEY (`JobPostId`);

--
-- Indexes for table `company_reg`
--
ALTER TABLE `company_reg`
  ADD PRIMARY KEY (`CompanyId`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`ExamId`);

--
-- Indexes for table `joblocationtable`
--
ALTER TABLE `joblocationtable`
  ADD PRIMARY KEY (`LocationId`);

--
-- Indexes for table `jobpost`
--
ALTER TABLE `jobpost`
  ADD PRIMARY KEY (`JobPostId`);

--
-- Indexes for table `jobpost_activity`
--
ALTER TABLE `jobpost_activity`
  ADD PRIMARY KEY (`JobPostId`);

--
-- Indexes for table `job_type_tbl`
--
ALTER TABLE `job_type_tbl`
  ADD PRIMARY KEY (`TypeId`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`LocationId`);

--
-- Indexes for table `login_tbl`
--
ALTER TABLE `login_tbl`
  ADD PRIMARY KEY (`LoginId`);

--
-- Indexes for table `notification_tbl`
--
ALTER TABLE `notification_tbl`
  ADD PRIMARY KEY (`NotificatioId`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`QuestionId`);

--
-- Indexes for table `skill_tbl`
--
ALTER TABLE `skill_tbl`
  ADD PRIMARY KEY (`SkillId`);

--
-- Indexes for table `user_reg`
--
ALTER TABLE `user_reg`
  ADD PRIMARY KEY (`UserId`),
  ADD KEY `Country` (`Country`);

--
-- Indexes for table `user_skill_tbl`
--
ALTER TABLE `user_skill_tbl`
  ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billing_tbl`
--
ALTER TABLE `billing_tbl`
  MODIFY `BillId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_job-post`
--
ALTER TABLE `company_job-post`
  MODIFY `JobPostId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_reg`
--
ALTER TABLE `company_reg`
  MODIFY `CompanyId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `ExamId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `joblocationtable`
--
ALTER TABLE `joblocationtable`
  MODIFY `LocationId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobpost`
--
ALTER TABLE `jobpost`
  MODIFY `JobPostId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobpost_activity`
--
ALTER TABLE `jobpost_activity`
  MODIFY `JobPostId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_type_tbl`
--
ALTER TABLE `job_type_tbl`
  MODIFY `TypeId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `LocationId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_tbl`
--
ALTER TABLE `login_tbl`
  MODIFY `LoginId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notification_tbl`
--
ALTER TABLE `notification_tbl`
  MODIFY `NotificatioId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `QuestionId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skill_tbl`
--
ALTER TABLE `skill_tbl`
  MODIFY `SkillId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_reg`
--
ALTER TABLE `user_reg`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_skill_tbl`
--
ALTER TABLE `user_skill_tbl`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
