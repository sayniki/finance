-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 06, 2015 at 05:01 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `finance_gsm_files`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_file`
--

CREATE TABLE IF NOT EXISTS `access_file` (
`id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `type` varchar(35) NOT NULL,
  `menu_name` varchar(15) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access_file`
--

INSERT INTO `access_file` (`id`, `menu_id`, `type`, `menu_name`) VALUES
(1, 1, 'Add', 'Address Book'),
(2, 3, 'ADD', 'Department'),
(3, 6, 'ADD', 'Create'),
(4, 7, 'Edit', 'View'),
(5, 8, 'Add', 'Create'),
(6, 9, 'Edit', 'View'),
(7, 10, 'Add', 'User'),
(8, 12, 'Reject', 'For Approve'),
(9, 12, 'Receive Cash Request', ''),
(10, 12, 'Ready for pick up', ''),
(11, 10, 'Edit', ''),
(12, 9, 'Reject', ''),
(13, 7, 'Reject', ''),
(14, 3, 'Deactivate', ''),
(15, 3, 'Edit', ''),
(16, 1, 'Edit', ''),
(17, 1, 'Deactivate', ''),
(18, 7, 'For Approval', ''),
(19, 9, 'For Approval', ''),
(23, 12, 'View', ''),
(27, 14, 'Hide', ''),
(22, 15, 'Add', ''),
(24, 7, 'View', ''),
(25, 9, 'View', ''),
(26, 14, 'View', ''),
(28, 10, 'Deactivate', '');

-- --------------------------------------------------------

--
-- Table structure for table `chat_history_file`
--

CREATE TABLE IF NOT EXISTS `chat_history_file` (
  `id` int(11) NOT NULL,
  `remarks` text NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `chat_date` datetime NOT NULL,
  `trans_no` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `master_address_file`
--

CREATE TABLE IF NOT EXISTS `master_address_file` (
`id` int(11) NOT NULL,
  `account_type` varchar(50) NOT NULL,
  `account_id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `department_id` int(11) NOT NULL,
  `account_executive_id` int(11) NOT NULL,
  `phone_number` varchar(13) NOT NULL,
  `date_created` datetime NOT NULL,
  `created_by` varchar(25) NOT NULL,
  `mas_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `master_department_file`
--

CREATE TABLE IF NOT EXISTS `master_department_file` (
`id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `department` varchar(50) NOT NULL,
  `mas_status` int(11) NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_department_file`
--

INSERT INTO `master_department_file` (`id`, `department_id`, `department`, `mas_status`, `added_date`, `added_by`) VALUES
(1, 1, 'Finance', 1, '0000-00-00 00:00:00', ''),
(2, 2, 'Accounting2', 0, '0000-00-00 00:00:00', ''),
(3, 3, 'Accounting2', 1, '0000-00-00 00:00:00', ''),
(4, 4, 'Accounting1 ', 0, '0000-00-00 00:00:00', ''),
(5, 0, ' test', 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `master_engineer_file`
--

CREATE TABLE IF NOT EXISTS `master_engineer_file` (
`id` int(11) NOT NULL,
  `engineer_id` int(11) NOT NULL,
  `engineer` varchar(50) NOT NULL,
  `mas_status` int(11) NOT NULL DEFAULT '1',
  `date_created` datetime NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `account_executive_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_engineer_file`
--

INSERT INTO `master_engineer_file` (`id`, `engineer_id`, `engineer`, `mas_status`, `date_created`, `created_by`, `account_executive_id`) VALUES
(1, 1, '2', 1, '0000-00-00 00:00:00', '', 1),
(2, 3, 'ENGINEER_1', 1, '0000-00-00 00:00:00', '', 1),
(3, 1, 'engineer_2', 1, '0000-00-00 00:00:00', '', 1),
(4, 1, 'kai', 1, '0000-00-00 00:00:00', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `menu_file`
--

CREATE TABLE IF NOT EXISTS `menu_file` (
`id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(25) NOT NULL,
  `menu_php` varchar(50) NOT NULL,
  `menu_type` int(11) NOT NULL,
  `menu_head` int(11) NOT NULL,
  `menu_order` int(11) NOT NULL,
  `mas_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_file`
--

INSERT INTO `menu_file` (`id`, `menu_id`, `menu_name`, `menu_php`, `menu_type`, `menu_head`, `menu_order`, `mas_status`) VALUES
(1, 1, 'Address Book', 'list_view.php', 2, 1, 1, 1),
(2, 2, 'Masters', '', 1, 1, 1, 1),
(4, 3, 'Department', 'department_list.php', 2, 1, 3, 1),
(5, 4, 'With PO', '', 1, 2, 1, 1),
(6, 5, 'Without PO', '', 1, 3, 1, 1),
(7, 6, 'Create', 'wo_po_form.php?type=withoutpo', 2, 3, 1, 1),
(8, 7, 'View', 'view_data.php?type=Without%20Po', 2, 3, 2, 1),
(9, 8, 'Create', 'wo_po_form.php', 2, 2, 1, 1),
(10, 9, 'View', 'view_data.php?type=With%20Po', 2, 2, 2, 1),
(11, 10, 'User', 'user_list.php', 2, 1, 4, 1),
(13, 11, 'QA', '', 1, 4, 4, 1),
(14, 12, 'For Approve', 'view_for_approve.php', 2, 4, 1, 1),
(15, 13, 'SMS', '', 1, 5, 5, 1),
(16, 14, 'SMS List', 'sms_list.php', 2, 5, 1, 1),
(17, 15, 'User Access', 'user_access.php', 2, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `po_check_file`
--

CREATE TABLE IF NOT EXISTS `po_check_file` (
`id` int(11) NOT NULL,
  `trans_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `cv` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL,
  `created_by` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `po_file`
--

CREATE TABLE IF NOT EXISTS `po_file` (
`id` int(11) NOT NULL,
  `trans_no` int(11) NOT NULL,
  `number_code` int(11) NOT NULL,
  `letter_code` varchar(10) NOT NULL,
  `requestor` varchar(50) NOT NULL,
  `title` varchar(25) NOT NULL COMMENT 'title/remarks',
  `company_name` varchar(100) NOT NULL,
  `secretary` varchar(50) NOT NULL,
  `supplier` varchar(50) NOT NULL COMMENT 'pat to/supplier',
  `payment_type` varchar(50) NOT NULL COMMENT 'cash or check',
  `total_amount` double(11,2) NOT NULL,
  `date_created` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `jo` varchar(11) NOT NULL,
  `po` varchar(40) NOT NULL,
  `item_description` text NOT NULL,
  `engineer` varchar(55) NOT NULL,
  `page` varchar(50) NOT NULL,
  `file_name` varchar(50) NOT NULL,
  `received_date` datetime NOT NULL,
  `created_by` varchar(55) NOT NULL,
  `mas_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `po_header_file`
--

CREATE TABLE IF NOT EXISTS `po_header_file` (
`id` int(11) NOT NULL,
  `number_code` int(11) NOT NULL,
  `user_name` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `po_item_file`
--

CREATE TABLE IF NOT EXISTS `po_item_file` (
`id` int(11) NOT NULL,
  `item` text NOT NULL,
  `trans_no` int(11) NOT NULL,
  `description` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `po_remarks_file`
--

CREATE TABLE IF NOT EXISTS `po_remarks_file` (
`id` int(11) NOT NULL,
  `remarks` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL,
  `rejected_by` varchar(50) NOT NULL,
  `trans_no` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sms_files`
--

CREATE TABLE IF NOT EXISTS `sms_files` (
`id` int(11) NOT NULL,
  `sms_id` int(11) NOT NULL,
  `sms` text NOT NULL,
  `date_sent` datetime NOT NULL,
  `trans_no` int(11) NOT NULL,
  `hide` int(11) NOT NULL COMMENT 'to show or not in sms trail',
  `received` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_access_file`
--

CREATE TABLE IF NOT EXISTS `user_access_file` (
`id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `user_type` varchar(15) NOT NULL,
  `added_by` varchar(25) NOT NULL,
  `added_date` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_file`
--

INSERT INTO `user_access_file` (`id`, `menu_id`, `user_type`, `added_by`, `added_date`) VALUES
(84, 12, 'Admin', '', '0000-00-00 00:00:00'),
(83, 7, 'Admin', '', '0000-00-00 00:00:00'),
(82, 6, 'Admin', '', '0000-00-00 00:00:00'),
(81, 9, 'Admin', '', '0000-00-00 00:00:00'),
(80, 8, 'Admin', '', '0000-00-00 00:00:00'),
(79, 10, 'Admin', '', '0000-00-00 00:00:00'),
(78, 3, 'Admin', '', '0000-00-00 00:00:00'),
(77, 15, 'Admin', '', '0000-00-00 00:00:00'),
(76, 1, 'Admin', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_access_type_file`
--

CREATE TABLE IF NOT EXISTS `user_access_type_file` (
`id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `user_type` varchar(35) NOT NULL,
  `type` varchar(35) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=186 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_type_file`
--

INSERT INTO `user_access_type_file` (`id`, `menu_id`, `user_type`, `type`) VALUES
(185, 12, 'Admin', 'View'),
(184, 12, 'Admin', 'Ready for pick up'),
(183, 12, 'Admin', 'Receive Cash Request'),
(182, 12, 'Admin', 'Reject'),
(181, 7, 'Admin', 'For Approval'),
(180, 7, 'Admin', 'Reject'),
(179, 7, 'Admin', 'Edit'),
(178, 6, 'Admin', 'ADD'),
(177, 9, 'Admin', 'View'),
(176, 9, 'Admin', 'For Approval'),
(175, 9, 'Admin', 'Reject'),
(48, 10, 'Finance Head', 'Edit'),
(47, 10, 'Finance Head', 'Add'),
(46, 3, 'Finance Head', 'Edit'),
(45, 3, 'Finance Head', 'Deactivate'),
(44, 3, 'Finance Head', 'ADD'),
(43, 1, 'Finance Head', 'Edit'),
(30, 12, 'QA', 'Receive Cash Request'),
(29, 12, 'QA', 'Ready for Pickup'),
(31, 12, 'QA', 'Reject'),
(42, 1, 'Finance Head', 'Deactivate'),
(41, 1, 'Finance Head', 'Add'),
(49, 9, 'Finance Head', 'For Approval'),
(174, 9, 'Admin', 'Edit'),
(173, 8, 'Admin', 'Add'),
(172, 10, 'Admin', 'Edit'),
(171, 10, 'Admin', 'Add'),
(169, 3, 'Admin', 'Deactivate'),
(170, 3, 'Admin', 'Edit'),
(168, 3, 'Admin', 'ADD'),
(167, 15, 'Admin', 'Add'),
(166, 1, 'Admin', 'Deactivate'),
(165, 1, 'Admin', 'Edit'),
(164, 1, 'Admin', 'Add');

-- --------------------------------------------------------

--
-- Table structure for table `user_file`
--

CREATE TABLE IF NOT EXISTS `user_file` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `created_date` datetime NOT NULL,
  `mas_status` int(11) NOT NULL DEFAULT '1',
  `user_type` varchar(25) NOT NULL,
  `department` varchar(50) NOT NULL,
  `finance_head` varchar(50) NOT NULL,
  `phone_number` varchar(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_file`
--

INSERT INTO `user_file` (`id`, `user_id`, `user_name`, `first_name`, `last_name`, `password`, `created_date`, `mas_status`, `user_type`, `department`, `finance_head`, `phone_number`) VALUES
(1, 1, 'admin', '', '', 'a', '0000-00-00 00:00:00', 1, 'admin', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_file`
--
ALTER TABLE `access_file`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_address_file`
--
ALTER TABLE `master_address_file`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_department_file`
--
ALTER TABLE `master_department_file`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_engineer_file`
--
ALTER TABLE `master_engineer_file`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_file`
--
ALTER TABLE `menu_file`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `po_check_file`
--
ALTER TABLE `po_check_file`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `po_file`
--
ALTER TABLE `po_file`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `po_header_file`
--
ALTER TABLE `po_header_file`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `po_item_file`
--
ALTER TABLE `po_item_file`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `po_remarks_file`
--
ALTER TABLE `po_remarks_file`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_files`
--
ALTER TABLE `sms_files`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_file`
--
ALTER TABLE `user_access_file`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_type_file`
--
ALTER TABLE `user_access_type_file`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_file`
--
ALTER TABLE `user_file`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_file`
--
ALTER TABLE `access_file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `master_address_file`
--
ALTER TABLE `master_address_file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `master_department_file`
--
ALTER TABLE `master_department_file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `master_engineer_file`
--
ALTER TABLE `master_engineer_file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `menu_file`
--
ALTER TABLE `menu_file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `po_check_file`
--
ALTER TABLE `po_check_file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `po_file`
--
ALTER TABLE `po_file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `po_header_file`
--
ALTER TABLE `po_header_file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `po_item_file`
--
ALTER TABLE `po_item_file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `po_remarks_file`
--
ALTER TABLE `po_remarks_file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sms_files`
--
ALTER TABLE `sms_files`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_access_file`
--
ALTER TABLE `user_access_file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `user_access_type_file`
--
ALTER TABLE `user_access_type_file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=186;
--
-- AUTO_INCREMENT for table `user_file`
--
ALTER TABLE `user_file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
