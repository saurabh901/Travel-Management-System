-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2020 at 06:37 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `traveldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'dea4e2bd0f244d3f84a5347e84d3a3f2', '2017-05-13 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `GuideId` int(11) DEFAULT NULL,
  `Name` varchar(255) NOT NULL,
  `MobileNo` varchar(11) NOT NULL,
  `EmailId` varchar(100) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `FromDate` varchar(100) NOT NULL,
  `ToDate` varchar(100) NOT NULL,
  `Comment` text NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL,
  `CancelledBy` varchar(5) NOT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `GuideId`, `Name`, `MobileNo`, `EmailId`, `Address`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(2, 24, 'Anuj Yadav', '8756144680', 'anuj123@gmail.com', 'Bithoor,kanpur', '05/18/2019', '05/31/2019', '\"Lorem ipsum dolor sit amet, cpariatur. ', '2019-05-13 19:01:10', 1, 'u', '2019-05-13 21:30:23'),
(3, 61, 'Aryan Singh', '7518398381', 'aryan123@gmail.com', 'Jalaun', '05/16/2017', '05/31/2019', 'casf esd sg gd gdfh df', '2019-05-13 20:20:01', 1, 'u', '2019-05-13 23:04:40'),
(4, 50, 'Shyamji Sharma', '9632587412', 'shyamji@gmail.com', 'kanpur', '05/16/2019', '05/31/2019', 'dwef  fwe', '2019-08-13 20:32:54', 2, 'a', '2019-08-13 21:36:39'),
(5, 22, 'Shyam Bhihari', '8523697413', 'shyam123@gmail.com', 'Sitapur', '05/16/2019', '05/31/2019', 'dwef  fwe', '2019-05-13 20:33:17', 2, 'a', '2019-07-20 20:02:42'),
(6, 44, 'Ram Prakash', '9632589630', 'ram765@gmail.com', 'Ayodhya,UP', '05/14/2019', '05/24/2019', 'test demo', '2019-05-13 21:18:37', 1, '', '2019-05-14 07:58:28'),
(7, 1, 'Ravi Vishwakarma', '9635287412', 'ravi321@gmail.com', 'Gonda', '05/26/2019', '05/30/2019', 'est laborum.\" velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, ', '2019-08-14 07:47:39', 1, 'u', '2019-05-14 07:47:39'),
(8, 20, 'Muskaan', '6325698523', 'muskaan234@gmail.com', 'Kalyanpur,kanpur', '05/27/2019', '05/28/2019', 'ubub5u6', '2020-05-14 05:10:24', 2, 'u', '2020-05-14 05:13:03'),
(9, 28, 'Rashmi', '96321478523', 'rashmi321@gmail.com', 'kanpur', '05/19/2020', '05/21/2020', '', '2020-05-14 07:45:11', 1, '', '2020-05-14 07:47:45'),
(10, 54, 'Akanksha', '8956236559', 'akanksha123@gmail.com', 'ramadevi,Kanpur', '05/22/2020', '05/24/2020', '', '2020-05-14 07:56:26', 1, '', '2020-05-14 07:58:19'),
(11, 28, 'Satyam', '963258653', 'satyam321@gmail.com', 'kanpur', '2019-07-31', '2019-08-02', 'This is sample text for testing,', '2019-07-20 20:15:35', 0, '', '2020-08-01 03:21:55');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `MobileNumber` varchar(150) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `UserEmail`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'Anuj Yadav', 'anuj123@gmail.com', '8756144680', 'The standard Lorem Ipsum passage, used since the 1500s', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ', '2019-05-13 22:23:53', 1),
(2, 'Shyamji Sharma', 'shyamji321@gmail.com', '632586523', 'The standard Lorem Ipsum passage', 'nventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, ', '2020-08-13 22:27:00', 0),
(3, 'Ram Prakash', 'ram432@gmail.com', '6985632569', 'erwt wet', 'nventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia ', '2020-06-13 22:28:11', 1),
(4, 'Rashmi', 'rashmi123@gmail.com', '96325896325', 'erwt wet', ' Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat volup', '2019-05-14 07:54:07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblguide`
--

CREATE TABLE `tblguide` (
  `id` int(11) NOT NULL,
  `FullName` varchar(255) NOT NULL,
  `MobileNumber` varchar(150) NOT NULL,
  `EmailId` varchar(150) NOT NULL,
  `Address` varchar(150) NOT NULL,
  `ServiceArea` varchar(150) NOT NULL,
  `guidedetails` varchar(150) NOT NULL,
  `guideimage` varchar(255) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblguide`
--

INSERT INTO `tblguide` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Address`, `ServiceArea`, `guidedetails`, `guideimage`, `RegDate`, `UpdationDate`) VALUES
(1, 'Aryan Singh', '7518398381', 'aryansingh123@gmail.com', 'Jalaun', 'agra,shimla,manali', 'good', '1.jpg', '2020-07-31 11:35:55', '2020-07-31 11:45:37'),
(2, 'Anuj yadav', '8756144680', 'anujyadav123@gmail.com', 'Bithoor', 'Kanpur,manali, Lucknow', 'good', '14.jpg', '2020-07-31 14:55:15', '2020-07-31 14:55:15'),
(3, 'Shyamji Sharma', '9856231478', 'shyamji123@gmail.com', 'govind nagar', 'lucknow, agra, kanpur', 'good', 'shyam.png', '2020-07-31 14:55:15', '2020-07-31 14:55:15'),
(4, 'Ravi', '2589631472', 'ravi321@gmail.com', 'gonda', 'haridwaar,manali,lucknow', 'good', '5.jpg', '2020-08-01 03:02:07', '2020-08-01 03:02:07'),
(5, 'Rashmi', '9856231472', 'rashmi123@gmail.com', 'kanpur', 'kanpur', 'good', '15.jpg', '2020-08-01 03:02:07', '2020-08-01 03:02:07'),
(6, 'Shyam', '9632587412', 'shyam321@gmail.com', 'Sitapur', 'kanpur,lucknow', 'good', 'shyam.jpg', '2020-08-01 03:05:36', '2020-08-01 03:05:36'),
(7, 'Akanksha', '8523697412', 'akanksha234@gmail.com', 'kanpur', 'kanpur,manali,shimla,kashmir', 'good', 'akanksha1.jpg', '2020-08-01 03:05:36', '2020-08-01 03:05:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `MobileNo` varchar(255) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `Name`, `MobileNo`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(4, 'Anuj Yadav', '8756144680', 'anuj123@gmail.com', 'Cancellation', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco ', '2019-05-13 22:03:33', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur', '2019-05-13 23:50:40'),
(5, 'Ravi Vishwakarma', '9632586523', 'ram123@gmail.com', 'Cancellation', 'voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil', '2020-06-14 05:12:14', 'voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil', '2020-06-14 07:52:07'),
(6, 'Shyamji Sharma', '9696258325', 'shyamji321@gmail.com', 'Refund', 'voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil', '2019-05-14 07:45:37', NULL, '2019-06-14 07:45:37'),
(7, 'Aryan Singh', '7518398381', 'aryan123@gmail.com', 'Refund', 'tcommodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil', '2020-08-14 07:56:46', 'vetet ert erteryre', '2020-08-14 07:58:43');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <A href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</A>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>'),
(2, 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(3, 'aboutus', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Test test</span>'),
(11, 'contact', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address------Test</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(255) NOT NULL,
  `PackageType` varchar(255) NOT NULL,
  `PackageLocation` varchar(255) NOT NULL,
  `PackagePrice` int(11) NOT NULL,
  `PackageImage` varchar(255) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Shimla', 'General', 'Himanchal pradesh, India', 12500, 'simla.jpg', '2020-07-31 08:25:21', '2020-07-31 08:25:21'),
(2, 'Manali', 'general', 'Himanchal Pradesh,India', 25000, 'manali.jpg', '2020-07-31 10:38:43', '2020-07-31 10:38:43'),
(3, 'Goa', 'general & couple', 'Uttar pradesh,India', 50000, 'goa.jpg', '2020-07-31 10:38:43', '2020-07-31 10:38:43'),
(4, 'kashmir', 'general & Couple', 'uttar Pradesh, India', 50000, 'kashmir.jpg', '2020-07-31 10:40:55', '2020-07-31 10:40:55'),
(5, 'unnao', 'general', 'Uttar pradesh', 35000, 'unnao.jpg', '2020-07-31 10:40:55', '2020-07-31 10:40:55'),
(6, 'Lucknow', 'general & couple', 'Uttar pradesh, india', 25000, 'lucknow.jpg', '2020-07-31 10:42:15', '2020-07-31 10:42:15'),
(7, 'Kanpur', 'general & couple', 'Uttar Pradesh', 18000, 'kanpur.jpg', '2020-07-31 11:17:39', '2020-07-31 11:17:39'),
(8, 'Agra', 'Couple', 'Uttarapradesh', 52000, 'agra.jpg', '2020-07-31 11:17:39', '2020-07-31 11:17:39');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'Anuj kumar', '1111111111', 'anuj@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-05-10 10:38:17', '2019-07-20 20:18:18'),
(8, 'Anuj kumar', '9999999999', 'demo@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-05-14 07:17:44', '0000-00-00 00:00:00'),
(10, 'Anuj Kumar', '4543534534', 'demo@test.com', 'f925916e2754e5e03f75dd58a5733251', '2017-05-14 07:43:23', '2017-05-14 07:46:57'),
(12, 'saurabh kumar jha', '8317046454', 'saurabhkumarjha291@gmail.com', 'dea4e2bd0f244d3f84a5347e84d3a3f2', '2020-07-30 17:15:34', '2020-07-30 17:18:46'),
(13, 'anjali', '9236513300', 'anjalipal12299@gmail.com', '872f4efa9f7985a25eb96b0b35132ec9', '2020-07-30 17:24:03', '2020-07-30 17:24:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblguide`
--
ALTER TABLE `tblguide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblguide`
--
ALTER TABLE `tblguide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
