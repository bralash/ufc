-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 16, 2018 at 05:55 PM
-- Server version: 5.6.38
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `creative_royacle`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `role` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `bio` text NOT NULL,
  `status` int(11) NOT NULL,
  `ip` int(11) NOT NULL,
  `last_login_ip` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `role`, `username`, `password`, `email`, `full_name`, `phone`, `photo`, `address`, `city`, `state`, `country`, `bio`, `status`, `ip`, `last_login_ip`, `date_added`, `last_login`, `updated_date`) VALUES
(1, 'Administrator', 'administrator', '$2y$10$3oftPaBZaaqakgQ8vF5k9.h2.B9SpdnnAcSQ7hKys35ScTye7gMv6', 'administrator@mysite.com', 'Harrison Oziegbe', '08037372777', '../img/admin/4262f51c185869d12b4bf7fe33b73f1e.png', '12, Olawaiye Street, Anifowoshe', 'Ikeja', 'Lagos', 'Nigeria', 'Enter information about yourself here.', 1, 1, 197211, '2016-03-20 00:00:00', '2018-03-15 17:31:29', '0000-00-00 00:00:00'),
(3, 'Accounting', 'ozi_harrison', '$2y$10$hbmnCcQn/pKwuyIZk3waC.nsxWwMnier9R48Qn0gQ8B8NYOhd9HB6', 'ozi@yahoo.com', 'Harrison Oziegbe', '08027277272777', '../img/admin/6f72367d48da6b91062b117e7890706e.jpg', '1, Onanbajo Close, Cele B/Stop', 'Ikeja', 'Lagos', 'Nigeria', 'Here you can tell about yourself', 1, 0, 0, '2017-07-19 17:52:04', '2017-08-04 01:24:27', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `admin_login_activity`
--

CREATE TABLE `admin_login_activity` (
  `id` int(11) NOT NULL,
  `admin` varchar(100) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `browser` varchar(100) NOT NULL,
  `os` varchar(100) NOT NULL,
  `last_access` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login_activity`
--

INSERT INTO `admin_login_activity` (`id`, `admin`, `ip`, `browser`, `os`, `last_access`) VALUES
(57, 'administrator', '::1', 'Firefox', 'Windows 8.1', '2017-08-03 08:01:51'),
(58, 'administrator', '::1', 'Firefox', 'Windows 8.1', '2017-08-03 04:48:37'),
(59, 'ozi_harrison', '::1', 'Chrome', 'Windows 8.1', '2017-08-03 08:01:29'),
(60, 'administrator', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-08-03 08:08:30'),
(61, 'administrator', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-08-03 18:18:48'),
(62, 'ozi_harrison', '154.120.108.66', 'Chrome', 'Windows 8.1', '2017-08-03 19:06:20'),
(63, 'administrator', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-08-03 18:55:27'),
(64, 'administrator', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-08-03 19:05:29'),
(65, 'administrator', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-08-03 21:13:20'),
(66, 'ozi_harrison', '154.120.108.66', 'Chrome', 'Windows 8.1', '2017-08-03 20:23:40'),
(67, 'ozi_harrison', '154.120.108.66', 'Chrome', 'Windows 8.1', '2017-08-03 20:27:46'),
(68, 'ozi_harrison', '154.120.108.66', 'Chrome', 'Windows 8.1', '2017-08-03 20:41:37'),
(69, 'administrator', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-08-05 04:49:35'),
(70, 'ozi_harrison', '154.120.108.66', 'Chrome', 'Windows 8.1', '2017-08-04 02:14:53'),
(71, 'ozi_harrison', '154.120.108.66', 'Chrome', 'Windows 8.1', '2017-08-04 02:24:27'),
(72, 'ozi_harrison', '154.120.108.66', 'Chrome', 'Windows 8.1', '2017-08-04 02:26:04'),
(73, 'administrator', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-08-15 11:45:40'),
(74, 'administrator', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-08-24 00:46:34'),
(75, 'administrator', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-08-24 00:58:15'),
(76, 'administrator', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-08-26 01:54:36'),
(77, 'administrator', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-08-26 20:21:38'),
(78, 'administrator', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-08-27 14:24:58'),
(79, 'administrator', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-08-31 01:55:46'),
(80, 'administrator', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-08-31 11:15:57'),
(81, 'administrator', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-08-31 15:58:28'),
(82, 'administrator', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-08-31 22:48:46'),
(83, 'administrator', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-09-01 15:37:59'),
(84, 'administrator', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-09-01 19:37:44'),
(85, 'administrator', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-09-02 23:40:26'),
(86, 'administrator', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-09-04 02:17:54'),
(87, 'administrator', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-09-11 10:33:01'),
(88, 'administrator', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-09-11 11:39:39'),
(89, 'administrator', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-09-13 23:52:08'),
(90, 'administrator', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-09-19 17:30:52'),
(91, 'administrator', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-09-28 01:11:54'),
(92, 'administrator', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-10-04 01:08:08'),
(93, 'administrator', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-10-04 14:45:34'),
(94, 'administrator', '154.120.108.66', 'Chrome', 'Windows 8.1', '2017-10-05 02:07:11'),
(95, 'administrator', '154.120.108.66', 'Chrome', 'Windows 7', '2017-10-05 10:33:06'),
(96, 'administrator', '154.120.108.66', 'Chrome', 'Windows 7', '2017-10-05 10:42:33'),
(97, 'administrator', '154.120.108.66', 'Chrome', 'Windows 7', '2017-10-05 10:50:28'),
(98, 'administrator', '154.120.108.66', 'Chrome', 'Windows 7', '2017-10-05 12:14:58'),
(99, 'administrator', '154.120.108.66', 'Chrome', 'Windows 7', '2017-10-05 13:25:41'),
(100, 'administrator', '154.120.108.66', 'Chrome', 'Windows 7', '2017-10-05 14:14:45'),
(101, 'administrator', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-10-06 11:15:13'),
(102, 'administrator', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-10-06 11:21:41'),
(103, 'administrator', '154.120.108.66', 'Chrome', 'Windows 7', '2017-10-06 12:35:44'),
(104, 'administrator', '154.120.108.66', 'Chrome', 'Windows 8.1', '2017-10-06 22:26:12'),
(105, 'administrator', '154.120.108.66', 'Chrome', 'Windows 8.1', '2017-10-07 00:33:19'),
(106, 'administrator', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-10-07 19:06:45'),
(107, 'Administrator', '197.211.63.63', 'Chrome', 'Android', '2017-10-10 20:45:26'),
(108, 'administrator', '197.211.63.63', 'Chrome', 'Android', '2017-10-10 20:48:37'),
(109, 'Administrator', '197.211.63.63', 'Chrome', 'Android', '2017-10-11 18:13:21'),
(110, 'Administrator', '197.211.63.63', 'Chrome', 'Android', '2017-10-12 14:46:31'),
(111, 'administrator', '197.210.226.73', 'Firefox', 'Windows 8.1', '2017-10-12 15:18:54'),
(112, 'Administrator', '197.211.63.63', 'Chrome', 'Android', '2017-10-12 18:32:44'),
(113, 'administrator', '197.211.61.20', 'Handheld Browser', 'Android', '2017-10-23 20:07:46'),
(114, 'administrator', '8.37.230.53', 'Handheld Browser', 'Android', '2017-11-26 15:58:10'),
(115, 'administrator', '168.235.206.97', 'Handheld Browser', 'Android', '2017-11-28 20:30:45'),
(116, 'administrator', '104.57.8.104', 'Chrome', 'Windows 10', '2017-12-17 00:32:18'),
(117, 'administrator', '73.179.36.91', 'Handheld Browser', 'iPhone', '2017-12-24 23:05:56'),
(118, 'administrator', '73.179.36.91', 'Handheld Browser', 'iPhone', '2017-12-24 23:07:14'),
(119, 'Administrator', '41.66.199.46', 'Handheld Browser', 'Android', '2018-02-19 13:49:11'),
(120, 'administrator', '154.120.108.66', 'Chrome', 'Windows 7', '2018-03-01 21:27:38'),
(121, 'administrator', '154.120.108.66', 'Chrome', 'Windows 7', '2018-03-01 23:47:02'),
(122, 'administrator', '154.120.108.66', 'Chrome', 'Windows 10', '2018-03-11 09:53:42'),
(123, 'administrator', '154.120.108.66', 'Chrome', 'Windows 10', '2018-03-11 12:44:21'),
(124, 'administrator', '154.120.108.66', 'Firefox', 'Windows 8', '2018-03-15 18:29:14'),
(125, 'administrator', '154.118.4.151', 'Firefox', 'Windows 8', '2018-03-15 18:32:40'),
(126, 'administrator', '154.118.4.151', 'Firefox', 'Windows 8', '2018-03-15 18:40:13'),
(127, 'administrator', '168.235.195.191', 'Handheld Browser', 'Android', '2018-03-15 19:00:32');

-- --------------------------------------------------------

--
-- Table structure for table `bank_info`
--

CREATE TABLE `bank_info` (
  `id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `account_name` varchar(100) NOT NULL,
  `account_number` varchar(100) NOT NULL,
  `bank` varchar(100) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_info`
--

INSERT INTO `bank_info` (`id`, `login_id`, `account_name`, `account_number`, `bank`, `date_added`) VALUES
(1, 2, 'Test', '0869765', 'UBA', '2017-08-26 21:17:46'),
(7, 52, 'Test', '4456789009', 'UBA', '2017-09-11 21:13:56'),
(8, 51, 'wwwdffddf', '5565656777', 'qwwqw', '2017-09-13 23:42:40'),
(9, 3, 'ssaassa', '0869765', 'asasasas', '2017-09-28 00:59:30'),
(10, 55, 'Test', '4456789009', 'Gtbank', '2017-10-03 12:52:06'),
(11, 56, 'ssaassa', '2345678999', 'ssaassa', '2017-10-05 02:02:08'),
(12, 59, 'Rex Wilson', '0011234909', 'GTB', '2017-10-05 10:52:37'),
(13, 62, 'Ben Emma', '2098765431', 'UBA', '2017-10-11 18:05:13'),
(14, 1, 'Test', '1234567890', 'UBA', '2017-10-12 14:18:26'),
(15, 63, 'yturrtyrt', '12345456667', 'MTN', '2018-03-01 20:52:30'),
(16, 64, 'ajdjfjmf f', '1847858850', 'Yabatech', '2018-03-15 19:01:13');

-- --------------------------------------------------------

--
-- Table structure for table `configuration`
--

CREATE TABLE `configuration` (
  `id` int(11) NOT NULL,
  `signup_bonus` int(11) NOT NULL,
  `referral_bonus` double NOT NULL,
  `min_referral_payout` double NOT NULL,
  `creditbility` int(11) NOT NULL,
  `min_credit_payout` double NOT NULL,
  `credit_pop_upload` int(11) NOT NULL,
  `credit_pop_confirm` int(11) NOT NULL,
  `credit_profile_photo` int(11) NOT NULL,
  `credit_testimony` int(11) NOT NULL,
  `credit_video_testimony` int(11) NOT NULL,
  `credit_referral` int(11) NOT NULL,
  `ph_percentage` int(11) NOT NULL,
  `down_pay` int(11) NOT NULL,
  `min_ph` double NOT NULL,
  `max_ph` double NOT NULL,
  `min_gh` double NOT NULL,
  `max_gh` double NOT NULL,
  `ph_maturity` varchar(100) NOT NULL,
  `ph_timer` varchar(100) NOT NULL,
  `ph_auto_merge_timer` varchar(100) NOT NULL,
  `pay_instructions` text NOT NULL,
  `pay_confirmation_instr` varchar(255) NOT NULL,
  `pop_confirm` varchar(100) NOT NULL,
  `auto_merge` varchar(100) NOT NULL,
  `recommit_perc` int(11) NOT NULL,
  `recommit_perc_opt` int(11) NOT NULL,
  `recommit_bonus` int(11) NOT NULL,
  `email_note` varchar(100) NOT NULL,
  `sms_note` varchar(100) NOT NULL,
  `sms_sender` varchar(100) NOT NULL,
  `sms_port` varchar(100) NOT NULL,
  `sms_gateway_url` varchar(255) NOT NULL,
  `sms_gateway_user` varchar(100) NOT NULL,
  `sms_gateway_pass` varchar(100) NOT NULL,
  `last_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `configuration`
--

INSERT INTO `configuration` (`id`, `signup_bonus`, `referral_bonus`, `min_referral_payout`, `creditbility`, `min_credit_payout`, `credit_pop_upload`, `credit_pop_confirm`, `credit_profile_photo`, `credit_testimony`, `credit_video_testimony`, `credit_referral`, `ph_percentage`, `down_pay`, `min_ph`, `max_ph`, `min_gh`, `max_gh`, `ph_maturity`, `ph_timer`, `ph_auto_merge_timer`, `pay_instructions`, `pay_confirmation_instr`, `pop_confirm`, `auto_merge`, `recommit_perc`, `recommit_perc_opt`, `recommit_bonus`, `email_note`, `sms_note`, `sms_sender`, `sms_port`, `sms_gateway_url`, `sms_gateway_user`, `sms_gateway_pass`, `last_updated`) VALUES
(1, 0, 2.5, 10000, 100, 0, 10, 10, 10, 5, 10, 10, 50, 20, 100, 5000, 100, 5, '7 days', '+24 hours', '+30 minutes', 'We\'ve found a sponsor for you, ensure you donate the allocated amount to the sponsor within 24 Hours, otherwise, your account would be blocked!', 'Please conform this payment within 6 hours else it will be automatically confirmed.', '+6 hours', 'Enabled', 20, 70, 5, 'Enabled', 'Enabled', 'Royacle', '8080', '121.241.242.114/', 'userxxxxx', 'passxxxxx', '2017-08-26 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `ctn_id` int(11) NOT NULL,
  `abt_title` varchar(225) NOT NULL,
  `about` longtext NOT NULL,
  `terms_title` varchar(225) NOT NULL,
  `terms` longtext NOT NULL,
  `policy_title` varchar(225) NOT NULL,
  `policy` longtext NOT NULL,
  `biz_fb` varchar(255) NOT NULL,
  `biz_twitter` varchar(255) NOT NULL,
  `biz_linkedin` varchar(255) NOT NULL,
  `biz_g_plus` varchar(255) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`ctn_id`, `abt_title`, `about`, `terms_title`, `terms`, `policy_title`, `policy`, `biz_fb`, `biz_twitter`, `biz_linkedin`, `biz_g_plus`, `last_updated`) VALUES
(1, 'About us', '<p>Royal Empire is a social financial platform that has been designed for communities to donate money to each other directly, in a peer to peer method, where a large community of people donates money to each other, in order to help each other fulfil projects or personal obligations. Royal Empire is not a bank. Royal Empire does not collect your money. Royal Empire is not an online business, HYIP or MLM program because it does not have a central bank account into which all users give money into. Instead, users are paired together with other users on the platform, and they donate to each other directly, of their own free will.<br /><br />After making such donation a participant receives up to 100% bonus for whatever they donate every 10 days. We give you a technical basic program, which helps millions of participants worldwide to find those who NEED help, and those who are ready to PROVIDE help for FREE no lenders &amp; no debtors. There are no lenders and no debtors. Everything is very simple: one participant asks for help &ndash; another one helps. When you provide help to a member, another will provide help to you with 100% Increase in 10 days maximum after RECOMMITTING to provide another help to keep the Empire healthy. <br /><br />All funds transferred to other participants are help given at your own<br />good to another participant, absolutely gratis</p>', 'How it Works', '<p>Summarily, you declare the willingness to Provide Help by making a pledge. The Help provided will start growing from the moment you make the pledge (at the rate of 100% in 10days). Within 5 days of making your pledge you will be paired to make donation directly to a participant (or participants) whose details are given to you. These details includes; recipient&rsquo;s name, recipient&rsquo;s bank account details and recipient&rsquo;s contact detail. After making the said payment to the recipient, then you indicate that the payment has been made by uploading your proof of payment (POP). <br /><br />Upon receiving the said amount, the recipient indicates that the donation has been received. Within the next 10daysfrom your PH date, your maturity time is completed and you are due to receive payment of your initial investment and incentive (100%) after recommitting atleast 50% of your matured investment within the 11th and 12th day. E.g. you have announced willingness to assist with $100, the yield amount will immediately start growing! 10days later, this $100 will become $200, but you will have to provide another help of atleast $100 again within the 11th and 12th day before you can receive your matured investment ($200), this is to keep the Empire strong and healthy. <br /><br />That is how it works.</p>', 'Credibility Score Index', '<p>none</p>', '#', '#', '#', '#', '2017-10-04 13:45:25');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `c_id` int(11) NOT NULL,
  `c_default` int(11) NOT NULL,
  `c_country` varchar(100) NOT NULL,
  `c_code` varchar(5) NOT NULL,
  `c_symbol` text NOT NULL,
  `c_added_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`c_id`, `c_default`, `c_country`, `c_code`, `c_symbol`, `c_added_date`) VALUES
(6, 0, 'United States', 'USD', '$', '2017-04-29 21:33:36'),
(7, 0, 'United Kingdom', 'GBP', 'Â£', '2017-04-29 21:34:02'),
(8, 0, 'Spain', 'EUR', 'â‚¬', '2017-04-29 21:34:45'),
(10, 0, 'Nigeria', 'NGN', 'â‚¦', '2017-07-17 17:48:08'),
(12, 1, 'Ghana', 'GHS', 'â‚µ', '2017-09-03 22:24:52'),
(13, 0, 'Ghana', 'GHS', 'â‚µ', '2018-03-01 21:27:00');

-- --------------------------------------------------------

--
-- Table structure for table `facebook_graph`
--

CREATE TABLE `facebook_graph` (
  `id` int(11) NOT NULL,
  `app_id` varchar(225) NOT NULL,
  `app_secret` varchar(255) NOT NULL,
  `page_access_token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facebook_graph`
--

INSERT INTO `facebook_graph` (`id`, `app_id`, `app_secret`, `page_access_token`) VALUES
(1, '1454302497983304', '640ada7e6639102dc287181dcd73611b', 'EAAUqriZCJy0gBAFw7HK7xSUBQxfquaSQD4ZAUUmvFLnjWFsTVC2bAV7xGj9OE5Askehq7J2X3AGu97AL7yKKpKwsc8FH2t3xkZASAhQFMKQ07ZB6ZAmLLfPUaiizm0m7ky609wIFjhOohM2DHBppZBEgeHzZCSALIfq4RZCjnHaJhZBMLVm0oMTBKCAiUHhrVAEzMdK3vWGOgLQZDZD');

-- --------------------------------------------------------

--
-- Table structure for table `get_help`
--

CREATE TABLE `get_help` (
  `gh_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `g_amount` double NOT NULL,
  `g_withdrawn` double NOT NULL,
  `g_status` varchar(100) NOT NULL,
  `req_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `get_help`
--

INSERT INTO `get_help` (`gh_id`, `login_id`, `g_amount`, `g_withdrawn`, `g_status`, `req_date`) VALUES
(11, 1, 3600, 1000, 'Part Payment', '2017-09-01 21:28:00'),
(12, 51, 70000, 70000, 'Frozen', '2017-09-03 21:48:36'),
(13, 2, 10000, 10000, 'Frozen', '2017-09-12 20:36:53'),
(14, 2, 320000, 320000, 'Frozen', '2017-09-12 20:40:52'),
(17, 55, 320000, 4000, 'Part Payment', '2017-10-04 12:28:58'),
(18, 51, 40000, 40000, 'Frozen', '2017-09-03 21:48:36'),
(19, 55, 300000, 0, 'Pending', '2017-10-04 12:50:59'),
(20, 59, 10000, 0, 'Available', '2017-10-05 13:38:21');

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `slide_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `descr` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`slide_id`, `title`, `url`, `banner`, `descr`, `status`) VALUES
(5, 'BEST THEMES DESIGN', '#', '../img/slider/ccb6ac731b6422b7e1dcbdf06bcbad94.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod ut laoreet dolore magna aliquam erat volutpat.', 1),
(6, 'BEST ADVERTISING', '', '../img/slider/7a7b6b1af7b3c765f4791356d3d345dd.png', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod ut laoreet dolore magna aliquam erat volutpat.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `messaging`
--

CREATE TABLE `messaging` (
  `msg_id` int(11) NOT NULL,
  `msg_number` double NOT NULL,
  `admin_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `time_frame` varchar(100) NOT NULL,
  `budget` double NOT NULL,
  `role` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `hidden_by` varchar(100) NOT NULL,
  `date_read` varchar(100) NOT NULL,
  `date_sent` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messaging`
--

INSERT INTO `messaging` (`msg_id`, `msg_number`, `admin_id`, `sender_id`, `receiver_id`, `subject`, `message`, `attachment`, `time_frame`, `budget`, `role`, `status`, `hidden_by`, `date_read`, `date_sent`) VALUES
(35, 1548270174, 0, 2, 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p><img style=\"width: 25%; float: left;\" src=\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAYABgAAD/4TIiaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/Pgo8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjMtYzAxMSA2Ni4xNDU2NjEsIDIwMTIvMDIvMDYtMTQ6NTY6MjcgICAgICAgICI+CiAgIDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+CiAgICAgIDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiCiAgICAgICAgICAgIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyI+CiAgICAgICAgIDx4bXA6Q3JlYXRvclRvb2w+QWRvYmUgRmlyZXdvcmtzIENTNiAoV2luZG93cyk8L3htcDpDcmVhdG9yVG9vbD4KICAgICAgICAgPHhtcDpDcmVhdGVEYXRlPjIwMTYtMDMtMTlUMTE6MTA6NDRaPC94bXA6Q3JlYXRlRGF0ZT4KICAgICAgICAgPHhtcDpNb2RpZnlEYXRlPjIwMTYtMDQtMTdUMjM6MjA6MTVaPC94bXA6TW9kaWZ5RGF0ZT4KICAgICAgPC9yZGY6RGVzY3JpcHRpb24+CiAgICAgIDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiCiAgICAgICAgICAgIHhtbG5zOmRjPSJodHRwOi8vcHVybC5vcmcvZGMvZWxlbWVudHMvMS4xLyI+CiAgICAgICAgIDxkYzpmb3JtYXQ+aW1hZ2UvanBlZzwvZGM6Zm9ybWF0PgogICAgICA8L3JkZjpEZXNjcmlwdGlvbj4KICAgPC9yZGY6UkRGPgo8L3g6eG1wbWV0YT4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAKPD94cGFja2V0IGVuZD0idyI/Pv/bAEMADQkJCgoKDgsLDhQNCw0UFxEODhEXGxUVFRUVGxsVFxcXFxUbGh4gISAeGicnKionJzU1NTU1NjY2NjY2NjY2Nv/bAEMBDg0NERERFxERFxcTFBMXHRkaGhkdJh0dHh0dJiwkICAgICQsKCsmJiYrKC8vLCwvLzY2NjY2NjY2NjY2NjY2Nv/AABEIASwBLAMBEQACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAABAUBAgMGBwj/xAA+EAACAQMCAwUFBAkDBQEAAAAAAQIDBBEFIRIxQQYTIlFhMkJxgZEjUrHBBxQVM3Kh0eHwJGJjNHOC0vFD/8QAGQEBAQEBAQEAAAAAAAAAAAAAAAIBAwQF/8QAJxEBAQACAgICAgICAwEAAAAAAAECEQMhEjFBURMiBGEycYGRoUL/2gAMAwEAAhEDEQA/APmAAAAAAAAADIAABnAGcAZwGs8IDhDGvCBjAGAAGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMgZSA3jSbDdO0LVvmTtvikQsYvzM8lzB1Wm0/J/Uzzb+ONv2XD1+pnm38bV6YujaN82fic5aZUXstP+RvnE3jqPO3qQ9pYK2iyxp3bNY1dJgaOkwNWmgMAYAAAAAAAAAAAAAAAAAAAAAAAAMgAOkKeQJVOgl8SbVzFJVEja9O9OEfmFJMYxxsQuR0jFGK0zgNbcKMNHB5DZpiVumt1k3Z4olWwUd4r5HXHk+3DPi+nNWkXyO07cL0OxGmI1axGhAq0HAlriBgAAAAAAAAAAAAAAAAAAAAAAAA2SywJNLoTVxPpLPIiukdeExrso+fUNdYrYh0kdeHGyMVp3p222/MzatN+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\" data-filename=\"PrNq5gMOpG.jpg\" class=\"img-circle pull-left\">Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.<br></p>', '', '', 0, '', 1, '', '', '2017-08-28 00:17:47'),
(39, 107105674, 0, 2, 0, 'Re: Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p> simply dummy text of the printing and typesetting industry.Lorem Ipsum \r\nis simply dummy text of the printing and typesetting industry.Lorem \r\nIpsum is simply dummy text of the printing and typesetting \r\nindustry.Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry.Lorem Ipsum is simply dummy text of the printing \r\nand types<br></p>', '', '', 0, '', 1, '', '', '2017-08-28 01:48:28'),
(40, 1098238485, 0, 2, 0, 'Re: Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p>ewrwarew<br></p>', '', '', 0, '', 1, '', '', '2017-08-28 01:49:18'),
(41, 1068732693, 1, 0, 6, 'Domain Renewal', '<p>Domain RenewalDomain RenewalDomain RenewalDomain RenewalDomain RenewalDomain RenewalDomain Renewal<br></p>', '', '', 0, '', 1, '', '', '2017-08-31 09:51:54'),
(45, 1068732693, 1, 0, 2, 'Domain Renewal', '<p>Domain RenewalDomain RenewalDomain RenewalDomain RenewalDomain RenewalDomain RenewalDomain Renewal<br></p>', '', '', 0, '', 1, '', '', '2017-08-31 09:51:54'),
(47, 365698327, 1, 0, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.<br></p>', '', '', 0, '', 1, '', '', '2017-08-31 09:55:31'),
(48, 2081731630, 0, 52, 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p>vwsdvsd<br></p>', '', '', 0, '', 1, '', '', '2017-09-14 11:12:14'),
(49, 363366653, 1, 0, 54, 'Project Update - ojaolawebsolution Nigeria', '<p>saFwgr<br></p>', '', '', 0, '', 0, '', '', '2017-09-28 01:02:38'),
(50, 363366653, 1, 0, 52, 'Welcome to Royal Empire', '<p>saFwgr<br></p>', '', '', 0, '', 0, '', '', '2017-09-28 01:02:38'),
(51, 522006961, 1, 0, 54, 'Project Update - ojaolawebsolution Nigeria', '<p>saFwgr<br></p>', '', '', 0, '', 0, '', '', '2017-09-28 01:07:54'),
(52, 522006961, 1, 0, 52, 'Welcome to Royal Empire', '<p>saFwgr<br></p>', '', '', 0, '', 0, '', '', '2017-09-28 01:07:54'),
(53, 1465078959, 1, 0, 54, 'Project Update - ojaolawebsolution Nigeria', '<p>saFwgr<br></p>', '', '', 0, '', 0, '', '', '2017-09-28 01:10:10'),
(54, 1465078959, 1, 0, 52, 'Welcome to Royal Empire', '<p>saFwgr<br></p>', '', '', 0, '', 0, '', '', '2017-09-28 01:10:10'),
(55, 1074790946, 1, 0, 54, 'Domain Renewal', '<p>awwarr2f<br></p>', '', '', 0, '', 0, '', '', '2017-09-28 01:11:09'),
(56, 1074790946, 1, 0, 52, 'Welcome to Royal Empire', '<p>awwarr2f<br></p>', '', '', 0, '', 0, '', '', '2017-09-28 01:11:09'),
(57, 272370406, 1, 0, 54, 'Domain Renewal', '<p>awwarr2f<br></p>', '', '', 0, '', 0, '', '', '2017-09-28 01:11:53'),
(58, 272370406, 1, 0, 52, 'Domain Renewal', '<p>awwarr2f<br></p>', '', '', 0, '', 0, '', '', '2017-09-28 01:11:53'),
(59, 272370406, 1, 0, 51, 'Domain Renewal', '<p>awwarr2f<br></p>', '', '', 0, '', 0, '', '', '2017-09-28 01:11:53'),
(60, 272370406, 1, 0, 6, 'Domain Renewal', '<p>awwarr2f<br></p>', '', '', 0, '', 0, '', '', '2017-09-28 01:11:53'),
(61, 272370406, 1, 0, 3, 'Domain Renewal', '<p>awwarr2f<br></p>', '', '', 0, '', 1, '', '', '2017-09-28 01:11:53'),
(62, 272370406, 1, 0, 2, 'Domain Renewal', '<p>awwarr2f<br></p>', '', '', 0, '', 1, '', '', '2017-09-28 01:11:53'),
(63, 272370406, 1, 0, 1, 'Domain Renewal', '<p>awwarr2f<br></p>', '', '', 0, '', 0, '', '', '2017-09-28 01:11:53');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `admin` varchar(100) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `readers` text NOT NULL,
  `status` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `admin`, `subject`, `content`, `readers`, `status`, `date_added`) VALUES
(3, 'administrator', 'What is Royacle  and what it stands for', '<p>Royacle is a social financial platform that has been designed for communities to donate money to each other directly, in a peer to peer method, where a large community of people donates money to each other, in order to help each other fulfil projects or personal obligations. Royacle is not a bank. Royacle does not collect your money. Royacle is not an online business, HYIP or MLM program because it does not have a central bank account into which all users give money into. Instead, users are paired together with other users on the platform, and they donate to each other directly, of their own free will.</p>\r\n<p>After making such donation a participant receives up to 100% bonus for whatever they donate every 10 days. We give you a technical basic program, which helps millions of participants worldwide to find those who NEED help, and those who are ready to PROVIDE help for FREE no lenders &amp; no debtors. There are no lenders and no debtors. Everything is very simple: one participant asks for help &ndash; another one helps. When you provide help to a member, another will provide help to you with 100% Increase in 10 days maximum after RECOMMITTING to provide another help to keep the Royacle healthy.</p>\r\n<p>All funds transferred to other participants are help given at your own<br />good to another participant, absolutely gratis</p>', ', 52, 51, 3, 55, 56', 1, '2017-09-13 23:16:55');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `admin` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  `readers` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `action_url` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `admin`, `action`, `readers`, `type`, `action_url`, `status`, `date_added`) VALUES
(1, 'administrator', 'administrator has just logged in!', 'administrator', '0', '', 1, '2017-08-03 18:53:33'),
(2, 'administrator', 'administrator has just logged in!', 'administrator', 'Login', '', 1, '2017-08-03 18:55:36'),
(3, 'administrator', 'administrator has just logged in!', 'administrator', 'Login', 'admin-profile?admu=administrator', 1, '2017-08-03 19:05:38'),
(4, 'ozi_harrison', 'ozi_harrison has just logged in!', '', 'Login', 'admin-profile?admu=ozi_harrison', 1, '2017-08-03 19:26:04'),
(5, 'ozi_harrison', 'ozi_harrison has just logged out!', '', 'Logout', 'admin-profile?admu=ozi_harrison', 1, '2017-08-03 20:23:40'),
(6, 'ozi_harrison', 'ozi_harrison has logged in!', 'administrator', 'Login', 'admin-profile?admu=ozi_harrison', 1, '2017-08-03 20:27:34'),
(7, 'ozi_harrison', 'ozi_harrison has logged in!', 'administrator', 'Login', 'admin-profile?admu=ozi_harrison', 1, '2017-08-03 20:27:50'),
(8, 'administrator', 'administrator has logged in!', 'administrator', 'Login', 'admin-profile?admu=administrator', 1, '2017-08-04 00:54:56'),
(9, 'ozi_harrison', 'ozi_harrison has logged in!', 'administrator', 'Login', 'admin-profile?admu=ozi_harrison', 1, '2017-08-04 02:00:48'),
(10, 'ozi_harrison', 'ozi_harrison has changed his profile picture!', 'administrator', 'Profile Update', 'admin-profile?admu=ozi_harrison', 1, '2017-08-04 02:01:56'),
(11, 'ozi_harrison', 'ozi_harrison has changed his profile picture!', 'administrator', 'Profile Update', 'admin-profile?admu=ozi_harrison', 1, '2017-08-04 02:02:38'),
(12, 'ozi_harrison', 'ozi_harrison has changed his profile picture!', 'administrator', 'Profile Update', 'admin-profile?admu=ozi_harrison', 1, '2017-08-04 02:07:37'),
(13, 'administrator', 'administrator has changed his profile picture!', 'administrator', 'Profile Update', 'admin-profile?admu=administrator', 1, '2017-08-04 02:11:03'),
(14, 'ozi_harrison', 'ozi_harrison has updated his profile information!', 'ozi_harrison', 'Profile Update', 'admin-profile?admu=ozi_harrison', 1, '2017-08-04 02:13:32'),
(15, 'ozi_harrison', 'ozi_harrison has logged out!', 'ozi_harrison', 'Logout', 'admin-profile?admu=ozi_harrison', 1, '2017-08-04 02:14:53'),
(16, 'ozi_harrison', 'ozi_harrison has logged in!', 'ozi_harrison', 'Login', 'admin-profile?admu=ozi_harrison', 1, '2017-08-04 02:16:05'),
(17, 'ozi_harrison', 'ozi_harrison has updated his profile information!', 'ozi_harrison', 'Profile Update', 'admin-profile?admu=ozi_harrison', 1, '2017-08-04 02:21:56'),
(18, 'ozi_harrison', 'ozi_harrison has updated his profile information!', 'ozi_harrison', 'Profile Update', 'admin-profile?admu=ozi_harrison', 1, '2017-08-04 02:22:37'),
(19, 'ozi_harrison', 'ozi_harrison has changed his account password!', 'ozi_harrison', 'Profile Update', 'admin-profile?admu=ozi_harrison', 1, '2017-08-04 02:23:20'),
(20, 'ozi_harrison', 'ozi_harrison has changed his account password!', 'ozi_harrison', 'Change of Password', 'admin-profile?admu=ozi_harrison', 1, '2017-08-04 02:24:01'),
(21, 'ozi_harrison', 'ozi_harrison has changed his account password!', 'administrator', 'Change of Password', 'admin-profile?admu=ozi_harrison', 1, '2017-08-04 02:24:26'),
(22, 'ozi_harrison', 'ozi_harrison has logged out!', 'administrator', 'Logout', 'admin-profile?admu=ozi_harrison', 1, '2017-08-04 02:24:27'),
(23, 'ozi_harrison', 'ozi_harrison has logged in!', 'ozi_harrison', 'Login', 'admin-profile?admu=ozi_harrison', 1, '2017-08-04 02:25:26'),
(24, '', 'James Gabriel has created customer account!', 'administrator', 'A New Customer Account Created', 'customer-summary?uid=6', 1, '2017-08-04 02:37:08'),
(25, '', 'A new order has been added with order Number: 1884242382', 'administrator', 'New Order', 'customer-summary?uid=6', 1, '2017-08-04 02:51:27'),
(26, '', 'A new shipping address has been added by a customer, likely to be James Gabriel', 'administrator', 'Shipping Address', 'customer-addresses?uid=6', 1, '2017-08-04 03:06:16'),
(27, 'administrator', 'administrator has logged in!', 'administrator', 'Login', 'admin-profile?admu=administrator', 1, '2017-08-15 11:35:33'),
(28, 'administrator', 'administrator has logged in!', 'administrator', 'Login', 'admin-profile?admu=administrator', 1, '2017-08-24 00:44:52'),
(29, 'administrator', 'administrator has logged in!', 'administrator', 'Login', 'admin-profile?admu=administrator', 1, '2017-08-24 00:58:15'),
(30, 'administrator', 'administrator has logged in!', 'administrator', 'Login', 'admin-profile?admu=administrator', 1, '2017-08-26 01:28:54'),
(31, 'administrator', 'administrator has logged out!', 'administrator', 'Logout', 'admin-profile?admu=administrator', 1, '2017-08-26 01:54:36'),
(32, 'administrator', 'administrator has logged in!', 'administrator', 'Login', 'admin-profile?admu=administrator', 1, '2017-08-26 01:54:50'),
(33, 'administrator', 'administrator has logged in!', 'administrator', 'Login', 'admin-profile?admu=administrator', 1, '2017-08-27 14:11:28'),
(34, 'administrator', 'administrator has logged in!', 'administrator', 'Login', 'admin-profile?admu=administrator', 1, '2017-08-31 00:23:06'),
(35, 'administrator', 'administrator has logged in!', 'administrator', 'Login', 'admin-profile?admu=administrator', 1, '2017-08-31 08:58:35'),
(36, 'administrator', 'administrator has logged in!', 'administrator', 'Login', 'admin-profile?admu=administrator', 1, '2017-08-31 11:24:15'),
(37, 'administrator', 'administrator has logged in!', 'administrator', 'Login', 'admin-profile?admu=administrator', 1, '2017-08-31 20:16:36'),
(38, '', 'Harrison Ozigbe. has approved uploaded POP!', 'administrator', 'Payment Confirmation', 'administrator/payment?ordid=2', 1, '2017-09-01 12:08:01'),
(39, '', 'Harrison Ozigbe. has approved uploaded POP!', 'administrator', 'Payment Confirmation', 'administrator/payment?ordid=2', 1, '2017-09-01 12:11:29'),
(40, '', 'MonieGram Test. has uploaded POP for PH order', 'administrator', 'POP Submitted', 'administrator/approve?ordid=4', 1, '2017-09-01 12:48:27'),
(41, '', 'Harrison Ozigbe. has reported uploaded POP!', 'administrator', 'POP Reported', 'administrator/payment?ordid=4', 1, '2017-09-01 13:01:52'),
(42, 'administrator', 'administrator has logged in!', 'administrator', 'Login', 'admin-profile?admu=administrator', 1, '2017-09-01 13:33:09'),
(43, '', ' . has reported uploaded POP!', 'administrator', 'POP Reported', 'approve?ordid=4', 1, '2017-09-01 15:18:04'),
(44, '', 'MonieGram Test. has uploaded POP for PH order', 'administrator', 'POP Submitted', 'approve?ordid=5', 1, '2017-09-01 15:29:50'),
(45, '', 'Harrison Ozigbe. has reported uploaded POP!', 'administrator', 'POP Reported', 'approve?ordid=5', 1, '2017-09-01 15:30:16'),
(46, 'administrator', ' . has reported uploaded POP!', 'administrator', 'POP Reported', 'approve?ordid=5', 1, '2017-09-01 15:31:10'),
(47, 'administrator', 'administrator has logged in!', 'administrator', 'Login', 'admin-profile?admu=administrator', 1, '2017-09-01 15:38:23'),
(48, 'administrator', 'administrator, has unblocked user account', 'administrator', 'Account unrestricted', 'customer-summary?uid=2', 1, '2017-09-01 16:04:18'),
(49, 'administrator', 'administrator, has unblocked user account', 'administrator', 'Account unrestricted', 'customer-summary?uid=2', 1, '2017-09-01 16:04:25'),
(50, 'administrator', 'administrator, has blocked user account', 'administrator', 'Account Restricted', 'customer-summary?uid=2', 1, '2017-09-01 16:08:21'),
(51, 'administrator', 'administrator, has unblocked user account', 'administrator', 'Account unrestricted', 'customer-summary?uid=2', 1, '2017-09-01 16:08:29'),
(52, 'administrator', 'administrator, has deleted user account', 'administrator', 'Account deleted', 'customer-summary?uid=5', 1, '2017-09-01 16:12:53'),
(53, 'administrator', 'administrator, has deleted user account', 'administrator', 'Account deleted', 'customer-summary?uid=4', 1, '2017-09-01 16:13:05'),
(54, '', 'MonieGram Test. has uploaded POP for PH order', 'administrator', 'POP Submitted', 'approve?ordid=15', 1, '2017-09-01 19:38:06'),
(55, '', 'Harrison Ozigbe. has approved uploaded POP!', 'administrator', 'Payment Confirmation', 'approve?ordid=15', 1, '2017-09-01 19:38:24'),
(56, 'administrator', 'administrator has logged in!', 'administrator', 'Login', 'admin-profile?admu=administrator', 1, '2017-09-01 21:56:54'),
(57, '', 'MonieGram Test. has uploaded POP for PH order', 'administrator', 'POP Submitted', 'approve?ordid=16', 1, '2017-09-01 21:58:03'),
(58, '', 'Harrison Ozigbe. has approved uploaded POP!', 'administrator', 'Payment Confirmation', 'approve?ordid=16', 1, '2017-09-01 21:58:15'),
(59, '', 'Harrison Ozigbe. has submitted new testimony waiting for approval', 'administrator', 'New Testimony', 'testimonial?tsid=4', 1, '2017-09-01 22:14:24'),
(60, '', 'Harrison Ozigbe. has submitted new testimony waiting for approval', 'administrator', 'New Testimony', 'testimonial?tsid=5', 1, '2017-09-02 11:32:04'),
(61, '', 'Harrison Ozigbe. has submitted new testimony waiting for approval', 'administrator', 'New Testimony', 'testimonial?tsid=6', 1, '2017-09-02 11:37:25'),
(62, '', 'Harrison Ozigbe. has submitted new testimony waiting for approval', 'administrator', 'New Testimony', 'testimonial?tsid=7', 1, '2017-09-02 11:45:41'),
(63, 'administrator', 'administrator. has approved submitted Testimonial!', 'administrator', 'Testimonial Approval', 'testimonial?tsid=7', 1, '2017-09-02 12:11:25'),
(64, 'administrator', 'administrator. has approved submitted Testimonial!', 'administrator', 'Testimonial Approval', 'testimonial?tsid=7', 1, '2017-09-02 12:11:39'),
(65, 'administrator', 'administrator. has approved submitted Testimonial!', 'administrator', 'Testimonial Approval', 'testimonial?tsid=7', 1, '2017-09-02 12:19:37'),
(66, '', 'Harrison Ozigbe. has submitted new testimony waiting for approval', 'administrator', 'New Testimony', 'testimonial?tsid=8', 1, '2017-09-02 12:25:02'),
(67, 'administrator', 'administrator. has approved submitted Testimonial!', 'administrator', 'Testimonial Approval', 'testimonial?tsid=8', 1, '2017-09-02 12:26:05'),
(68, '', 'Mr. Emmanuel A.O has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=7', 0, '2017-09-02 21:37:54'),
(69, '', 'Jude Gary has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=8', 0, '2017-09-02 21:42:36'),
(70, '', 'Asuenimhen Oziegbe has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=9', 0, '2017-09-02 23:20:11'),
(71, '', 'Asuenimhen Oziegbe has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=10', 0, '2017-09-02 23:22:43'),
(72, '', 'Asuenimhen Oziegbe has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=11', 0, '2017-09-02 23:25:50'),
(73, '', 'Harrison Asuenimhen has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=12', 0, '2017-09-02 23:27:35'),
(74, '', 'Harrison Asuenimhen has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=13', 0, '2017-09-02 23:28:00'),
(75, '', 'Harrison Asuenimhen has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=14', 0, '2017-09-02 23:29:37'),
(76, '', 'Harrison Asuenimhen has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=15', 0, '2017-09-02 23:41:34'),
(77, '', 'Harrison Asuenimhen has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=16', 0, '2017-09-02 23:43:19'),
(78, '', 'Harrison Asuenimhen has created customer account!', 'administrator', 'A New Customer Account Created', 'customer-summary?uid=17', 1, '2017-09-02 23:43:55'),
(79, '', 'Harrison Asuenimhen has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=18', 0, '2017-09-02 23:44:39'),
(80, '', 'Harrison Asuenimhen has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=19', 0, '2017-09-02 23:45:15'),
(81, '', 'Harrison Asuenimhen has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=20', 0, '2017-09-02 23:46:34'),
(82, '', 'Harrison Asuenimhen has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=21', 0, '2017-09-02 23:47:33'),
(83, '', 'Harrison Asuenimhen has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=22', 0, '2017-09-02 23:48:30'),
(84, '', 'Harrison Asuenimhen has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=23', 0, '2017-09-02 23:49:10'),
(85, '', 'Harrison Asuenimhen has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=24', 0, '2017-09-02 23:50:17'),
(86, '', 'Harrison Asuenimhen has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=25', 0, '2017-09-03 09:28:41'),
(87, '', 'Harrison Asuenimhen has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=26', 0, '2017-09-03 09:30:05'),
(88, '', 'Harrison Asuenimhen has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=27', 0, '2017-09-03 09:32:24'),
(89, '', 'Harrison Asuenimhen has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=28', 0, '2017-09-03 09:33:24'),
(90, '', 'Harrison Asuenimhen has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=29', 0, '2017-09-03 09:48:31'),
(91, '', 'Harrison Asuenimhen has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=30', 0, '2017-09-03 09:49:53'),
(92, '', 'Harrison Asuenimhen has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=31', 0, '2017-09-03 09:50:34'),
(93, '', 'Harrison Asuenimhen has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=32', 0, '2017-09-03 09:51:10'),
(94, '', 'Harrison Asuenimhen has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=33', 0, '2017-09-03 10:04:37'),
(95, '', 'Harrison Asuenimhen has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=34', 0, '2017-09-03 10:05:04'),
(96, '', 'Harrison Asuenimhen has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=35', 0, '2017-09-03 10:10:42'),
(97, '', 'Harrison Asuenimhen has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=36', 0, '2017-09-03 10:15:45'),
(98, '', 'Harrison Asuenimhen has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=37', 0, '2017-09-03 10:16:15'),
(99, '', 'Harrison Asuenimhen has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=38', 0, '2017-09-03 10:18:01'),
(100, '', 'Harrison Asuenimhen has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=39', 0, '2017-09-03 10:18:52'),
(101, '', 'Harrison Asuenimhen has created customer account!', 'administrator', 'A New Customer Account Created', 'customer-summary?uid=40', 1, '2017-09-03 10:21:31'),
(102, '', 'Harrison Asuenimhen has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=41', 0, '2017-09-03 10:24:16'),
(103, '', 'Harrison Asuenimhen has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=42', 0, '2017-09-03 10:28:48'),
(104, '', 'Harrison Asuenimhen has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=43', 0, '2017-09-03 10:31:09'),
(105, '', 'Harrison Asuenimhen has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=44', 0, '2017-09-03 10:32:02'),
(106, '', 'Harrison Asuenimhen has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=45', 0, '2017-09-03 10:33:45'),
(107, '', 'Harrison Asuenimhen has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=46', 0, '2017-09-03 10:36:11'),
(108, '', 'Asuenimhen Ozi has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=47', 0, '2017-09-03 11:00:10'),
(109, '', 'Harrison Doe  has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=48', 0, '2017-09-03 20:53:51'),
(110, '', 'Harrison Doe has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=49', 0, '2017-09-03 21:26:09'),
(111, '', 'Harrison Doe has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=50', 0, '2017-09-03 21:28:31'),
(112, '', 'Harrison Oziegbe has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=51', 0, '2017-09-03 21:30:09'),
(113, '', 'Mr. Emmanuel A.O has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=52', 0, '2017-09-03 21:45:13'),
(114, 'administrator', 'administrator has logged in!', '', 'Login', 'admin-profile?admu=administrator', 0, '2017-09-03 21:50:52'),
(115, 'administrator', 'administrator. has approved submitted Testimonial!', '', 'Testimonial Approval', 'testimonial?tsid=8', 0, '2017-09-04 00:31:32'),
(116, 'administrator', 'administrator. has approved submitted Testimonial!', '', 'Testimonial Approval', 'testimonial?tsid=8', 0, '2017-09-04 00:31:43'),
(117, 'administrator', 'administrator. has approved submitted Testimonial!', '', 'Testimonial Approval', 'testimonial?tsid=8', 0, '2017-09-04 00:37:26'),
(118, 'administrator', 'administrator. has approved submitted Testimonial!', '', 'Testimonial Approval', 'testimonial?tsid=8', 0, '2017-09-04 00:39:46'),
(119, '', 'Mr. Emmanuel A.O. has submitted new testimony waiting for approval', '', 'New Testimony', 'testimonial?tsid=9', 0, '2017-09-04 00:45:03'),
(120, 'administrator', 'administrator. has approved submitted Testimonial!', 'administrator', 'Testimonial Approval', 'testimonial?tsid=9', 1, '2017-09-04 00:51:24'),
(121, 'administrator', 'administrator. has approved submitted Testimonial!', 'administrator', 'Testimonial Approval', 'testimonial?tsid=7', 1, '2017-09-04 00:52:02'),
(122, 'administrator', 'administrator has logged in!', 'administrator', 'Login', 'admin-profile?admu=administrator', 1, '2017-09-11 09:38:33'),
(123, 'administrator', 'administrator has logged in!', 'administrator', 'Login', 'admin-profile?admu=administrator', 1, '2017-09-11 11:28:07'),
(124, 'administrator', 'administrator has logged in!', 'administrator', 'Login', 'admin-profile?admu=administrator', 1, '2017-09-12 19:58:25'),
(125, 'administrator', 'administrator has changed his profile picture!', 'administrator', 'Profile Update', 'admin-profile?admu=administrator', 1, '2017-09-12 20:52:23'),
(126, 'administrator', 'administrator has logged in!', 'administrator', 'Login', 'admin-profile?admu=administrator', 1, '2017-09-14 11:12:08'),
(127, '', 'A new message from the Mr. Emmanuel A.O', 'administrator', 'New Message', 'message?msgid=48', 1, '2017-09-14 11:12:14'),
(128, '', 'Harrison Doe has created customer account!', 'administrator', 'A New Customer Account Created', 'customer-summary?uid=53', 1, '2017-09-19 17:35:16'),
(129, 'administrator', 'administrator has logged in!', 'administrator', 'Login', 'admin-profile?admu=administrator', 1, '2017-09-19 17:35:53'),
(130, '', 'Harrison Oziegbe has created customer account!', 'administrator', 'A New Customer Account Created', 'customer-summary?uid=54', 1, '2017-09-19 17:37:04'),
(131, 'administrator', 'administrator has logged in!', 'administrator', 'Login', 'admin-profile?admu=administrator', 1, '2017-10-03 11:41:32'),
(132, '', 'Harrison Harrison has created customer account!', 'administrator', 'A New Customer Account Created', 'customer-summary?uid=55', 1, '2017-10-03 12:35:17'),
(133, '', 'Harrison Harrison. has uploaded POP for PH order', 'administrator', 'POP Submitted', 'approve?ordid=21', 1, '2017-10-03 22:47:13'),
(134, '', 'MonieGram Test. has approved uploaded POP!', 'administrator', 'Payment Confirmation', 'approve?ordid=21', 1, '2017-10-03 22:51:16'),
(135, '', 'MonieGram Test. has submitted new testimony waiting for approval', 'administrator', 'New Testimony', 'testimonial?tsid=10', 1, '2017-10-03 22:52:06'),
(136, 'administrator', 'administrator. has approved submitted Testimonial!', 'administrator', 'Testimonial Approval', 'testimonial?tsid=10', 1, '2017-10-03 23:03:14'),
(137, '', 'Harrison Harrison. has uploaded POP for PH order', 'administrator', 'POP Submitted', 'approve?ordid=22', 1, '2017-10-03 23:38:43'),
(138, '', 'MonieGram Test. has reported uploaded POP!', 'administrator', 'POP Reported', 'approve?ordid=22', 1, '2017-10-03 23:39:12'),
(139, '', 'Harrison Harrison. has uploaded POP for PH order', 'administrator', 'POP Submitted', 'approve?ordid=23', 1, '2017-10-03 23:45:00'),
(140, '', 'MonieGram Test. has approved uploaded POP!', 'administrator', 'Payment Confirmation', 'approve?ordid=23', 1, '2017-10-03 23:45:12'),
(141, '', 'MonieGram Test. has submitted new testimony waiting for approval', 'administrator', 'New Testimony', 'testimonial?tsid=11', 1, '2017-10-04 00:34:35'),
(142, '', 'Harrison Harrison. has uploaded POP for PH order', 'administrator', 'POP Submitted', 'approve?ordid=24', 1, '2017-10-04 00:35:14'),
(143, '', 'MonieGram Test. has approved uploaded POP!', 'administrator', 'Payment Confirmation', 'approve?ordid=24', 1, '2017-10-04 00:35:27'),
(144, '', 'MonieGram Test. has submitted new testimony waiting for approval', 'administrator', 'New Testimony', 'testimonial?tsid=12', 1, '2017-10-04 00:35:44'),
(145, '', 'Harrison Harrison. has uploaded POP for PH order', 'administrator', 'POP Submitted', 'approve?ordid=25', 1, '2017-10-04 00:39:28'),
(146, '', 'MonieGram Test. has approved uploaded POP!', 'administrator', 'Payment Confirmation', 'approve?ordid=25', 1, '2017-10-04 00:39:45'),
(147, '', 'MonieGram Test. has submitted new testimony waiting for approval', 'administrator', 'New Testimony', 'testimonial?tsid=13', 1, '2017-10-04 00:39:54'),
(148, '', 'Harrison Harrison. has uploaded POP for PH order', 'administrator', 'POP Submitted', 'approve?ordid=26', 1, '2017-10-04 00:43:38'),
(149, '', 'MonieGram Test. has approved uploaded POP!', 'administrator', 'Payment Confirmation', 'approve?ordid=26', 1, '2017-10-04 00:43:54'),
(150, '', 'Harrison Harrison. has uploaded POP for PH order', 'administrator', 'POP Submitted', 'approve?ordid=27', 1, '2017-10-04 00:47:48'),
(151, '', ' . has approved uploaded POP!', 'administrator', 'Payment Confirmation', 'administrator/payment?ordid=27', 1, '2017-10-04 00:48:12'),
(152, '', 'MonieGram Test. has submitted new testimony waiting for approval', 'administrator', 'New Testimony', 'testimonial?tsid=14', 1, '2017-10-04 01:03:12'),
(153, '', 'MonieGram Test. has uploaded POP for PH order', 'administrator', 'POP Submitted', 'approve?ordid=34', 1, '2017-10-04 01:05:16'),
(154, '', 'Harrison Harrison. has reported uploaded POP!', 'administrator', 'POP Reported', 'approve?ordid=34', 1, '2017-10-04 01:05:27'),
(155, 'administrator', 'administrator has taken actions on reported POP!', 'administrator', 'Actions Taken', 'approve?ordid=34', 1, '2017-10-04 01:07:55'),
(156, 'administrator', 'administrator has logged in!', 'administrator', 'Login', 'admin-profile?admu=administrator', 1, '2017-10-04 11:47:11'),
(157, '', 'Harrison Oziegbe. has submitted new testimony waiting for approval', 'administrator', 'New Testimony', 'testimonial?tsid=15', 1, '2017-10-04 12:38:07'),
(158, '', 'Harrison Harrison. has uploaded POP for PH order', 'administrator', 'POP Submitted', 'approve?ordid=34', 1, '2017-10-04 12:38:35'),
(159, '', 'Harrison Oziegbe. has reported uploaded POP!', 'administrator', 'POP Reported', 'approve?ordid=34', 1, '2017-10-04 12:47:31'),
(160, '', 'Harrison Oziegbe. has approved uploaded POP!', 'administrator', 'Payment Confirmation', 'approve?ordid=34', 1, '2017-10-04 12:49:54'),
(161, '', 'Harrison Oziegbe. has submitted new testimony waiting for approval', 'administrator', 'New Testimony', 'testimonial?tsid=16', 1, '2017-10-04 12:52:55'),
(162, 'administrator', 'administrator. has approved submitted Testimonial!', '', 'Testimonial Approval', 'testimonial?tsid=14', 0, '2017-10-04 13:21:30'),
(163, 'administrator', 'administrator. has approved submitted Testimonial!', '', 'Testimonial Approval', 'testimonial?tsid=13', 0, '2017-10-04 13:21:49'),
(164, '', 'Harrison Oziegbe. has submitted new testimony waiting for approval', '', 'New Testimony', 'testimonial?tsid=17', 0, '2017-10-04 13:22:16'),
(165, 'administrator', 'administrator. has approved submitted Testimonial!', '', 'Testimonial Approval', 'testimonial?tsid=14', 0, '2017-10-04 13:25:50'),
(166, 'administrator', 'administrator. has approved submitted Testimonial!', '', 'Testimonial Approval', 'testimonial?tsid=16', 0, '2017-10-04 13:26:02'),
(167, 'administrator', 'administrator. has approved submitted Testimonial!', '', 'Testimonial Approval', 'testimonial?tsid=15', 0, '2017-10-04 13:26:13'),
(168, 'administrator', 'administrator. has approved submitted Testimonial!', '', 'Testimonial Approval', 'testimonial?tsid=14', 0, '2017-10-04 13:26:24'),
(169, 'administrator', 'administrator. has approved submitted Testimonial!', '', 'Testimonial Approval', 'testimonial?tsid=9', 0, '2017-10-04 13:26:42'),
(170, 'administrator', 'administrator. has approved submitted Testimonial!', '', 'Testimonial Approval', 'testimonial?tsid=17', 0, '2017-10-04 13:40:02'),
(171, 'administrator', 'administrator. has approved submitted Testimonial!', '', 'Testimonial Approval', 'testimonial?tsid=13', 0, '2017-10-04 13:40:41'),
(172, 'administrator', 'administrator. has approved submitted Testimonial!', '', 'Testimonial Approval', 'testimonial?tsid=9', 0, '2017-10-04 13:40:51'),
(173, 'administrator', 'administrator. has approved submitted Testimonial!', '', 'Testimonial Approval', 'testimonial?tsid=13', 0, '2017-10-04 13:41:00'),
(174, 'administrator', 'administrator. has approved submitted Testimonial!', '', 'Testimonial Approval', 'testimonial?tsid=8', 0, '2017-10-04 13:41:15'),
(175, '', 'John Deo. has submitted new testimony waiting for approval', '', 'New Testimony', 'testimonial?tsid=18', 0, '2017-10-04 13:42:03'),
(176, 'administrator', 'administrator. has approved submitted Testimonial!', '', 'Testimonial Approval', 'testimonial?tsid=18', 0, '2017-10-04 13:42:34'),
(177, '', 'Obinna Tunde. has submitted new testimony waiting for approval', '', 'New Testimony', 'testimonial?tsid=19', 0, '2017-10-04 14:39:15'),
(178, '', 'Obinna Tunde. has submitted new testimony waiting for approval', '', 'New Testimony', 'testimonial?tsid=20', 0, '2017-10-04 14:44:22'),
(179, '', 'Online Test has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=56', 0, '2017-10-05 01:59:15'),
(180, 'administrator', 'administrator has logged in!', '', 'Login', 'admin-profile?admu=administrator', 0, '2017-10-05 02:07:10'),
(181, 'administrator', 'administrator has logged in!', '', 'Login', 'admin-profile?admu=administrator', 0, '2017-10-05 10:21:17'),
(182, '', 'Rex Wilson has created customer account!', 'administrator', 'A New Customer Account Created', 'customer-summary?uid=57', 1, '2017-10-05 10:30:30'),
(183, 'administrator', 'administrator has logged in!', 'administrator', 'Login', 'admin-profile?admu=administrator', 1, '2017-10-05 10:33:13'),
(184, 'administrator', 'administrator, has deleted user account', 'administrator', 'Account deleted', 'customer-summary?uid=57', 1, '2017-10-05 10:42:32'),
(185, '', 'Rex Wilson has created customer account!', 'administrator', 'A New Customer Account Created', 'customer-summary?uid=58', 1, '2017-10-05 10:43:25'),
(186, 'administrator', 'administrator has logged in!', 'administrator', 'Login', 'admin-profile?admu=administrator', 1, '2017-10-05 10:45:40'),
(187, 'administrator', 'administrator, has deleted user account', 'administrator', 'Account deleted', 'customer-summary?uid=58', 1, '2017-10-05 10:50:27'),
(188, '', 'Rex Wilson has created customer account!', 'administrator', 'A New Customer Account Created', 'customer-summary?uid=59', 1, '2017-10-05 10:51:14'),
(189, 'administrator', 'administrator has logged in!', 'administrator', 'Login', 'admin-profile?admu=administrator', 1, '2017-10-05 12:12:48'),
(190, 'administrator', 'administrator has logged in!', 'administrator', 'Login', 'admin-profile?admu=administrator', 1, '2017-10-05 12:43:13'),
(191, 'administrator', 'administrator has logged in!', 'administrator', 'Login', 'admin-profile?admu=administrator', 1, '2017-10-05 13:37:12'),
(192, 'administrator', 'administrator has logged in!', 'administrator', 'Login', 'admin-profile?admu=administrator', 1, '2017-10-06 11:14:57'),
(193, 'administrator', 'administrator has logged in!', 'administrator', 'Login', 'admin-profile?admu=administrator', 1, '2017-10-06 11:15:30'),
(194, 'administrator', 'administrator has logged in!', 'administrator', 'Login', 'admin-profile?admu=administrator', 1, '2017-10-06 11:48:11'),
(195, 'administrator', 'administrator has logged in!', 'administrator', 'Login', 'admin-profile?admu=administrator', 1, '2017-10-06 22:23:51'),
(196, 'administrator', 'administrator has logged in!', 'administrator', 'Login', 'admin-profile?admu=administrator', 1, '2017-10-06 23:59:07'),
(197, 'administrator', 'administrator has logged in!', '', 'Login', 'admin-profile?admu=administrator', 0, '2017-10-07 19:02:08'),
(198, 'Administrator', 'Administrator has logged in!', '', 'Login', 'admin-profile?admu=Administrator', 0, '2017-10-10 20:21:51'),
(199, 'administrator', 'administrator, has unblocked user account', '', 'Account unrestricted', 'customer-summary?uid=59', 0, '2017-10-10 20:40:24'),
(200, 'administrator', 'administrator. has approved submitted Testimonial!', '', 'Testimonial Approval', 'testimonial?tsid=20', 0, '2017-10-10 20:41:56'),
(201, 'administrator', 'administrator has logged in!', '', 'Login', 'admin-profile?admu=administrator', 0, '2017-10-10 20:45:56'),
(202, 'Administrator', 'Administrator has logged in!', '', 'Login', 'admin-profile?admu=Administrator', 0, '2017-10-11 17:47:26'),
(203, '', 'Ben Emma has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=60', 0, '2017-10-11 17:52:10'),
(204, '', 'Ben Emma has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=61', 0, '2017-10-11 17:53:49'),
(205, '', 'Ben Emma has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=62', 0, '2017-10-11 17:54:31'),
(206, 'administrator', 'administrator, has unblocked user account', '', 'Account unrestricted', 'customer-summary?uid=62', 0, '2017-10-11 17:55:57'),
(207, 'administrator', 'administrator, has unblocked user account', '', 'Account unrestricted', 'customer-summary?uid=62', 0, '2017-10-11 17:56:50'),
(208, 'administrator', 'administrator, has unblocked user account', '', 'Account unrestricted', 'customer-summary?uid=62', 0, '2017-10-11 17:57:26'),
(209, 'administrator', 'administrator, has deleted user account', '', 'Account deleted', 'customer-summary?uid=61', 0, '2017-10-11 18:01:28'),
(210, 'administrator', 'administrator, has deleted user account', '', 'Account deleted', 'customer-summary?uid=60', 0, '2017-10-11 18:02:46'),
(211, '', 'Bright Joe has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=63', 0, '2017-10-12 13:43:25'),
(212, '', 'Steven Mark. has submitted new testimony waiting for approval', '', 'New Testimony', 'testimonial?tsid=21', 0, '2017-10-12 14:17:47'),
(213, 'Administrator', 'Administrator has logged in!', '', 'Login', 'admin-profile?admu=Administrator', 0, '2017-10-12 14:26:46'),
(214, 'administrator', 'administrator, has deleted user account', '', 'Account deleted', 'customer-summary?uid=63', 0, '2017-10-12 14:30:03'),
(215, 'administrator', 'administrator has logged in!', '', 'Login', 'admin-profile?admu=administrator', 0, '2017-10-12 15:18:02'),
(216, 'Administrator', 'Administrator has logged in!', '', 'Login', 'admin-profile?admu=Administrator', 0, '2017-10-12 18:28:58'),
(217, '', 'Ben Emma. has uploaded POP for PH order', '', 'POP Submitted', 'approve?ordid=35', 0, '2017-10-12 18:29:07'),
(218, '', 'The submitted POP has automatically approved by the system!', '', 'Payment Confirmation', 'approve?ordid=35', 0, '2017-10-14 00:34:33'),
(219, 'administrator', 'administrator has logged in!', '', 'Login', 'admin-profile?admu=administrator', 0, '2017-10-23 20:04:28'),
(220, 'administrator', 'administrator has logged in!', '', 'Login', 'admin-profile?admu=administrator', 0, '2017-11-26 15:56:06'),
(221, 'administrator', 'administrator has logged in!', '', 'Login', 'admin-profile?admu=administrator', 0, '2017-11-28 20:27:48'),
(222, 'administrator', 'administrator has logged in!', '', 'Login', 'admin-profile?admu=administrator', 0, '2017-12-17 00:29:37'),
(223, 'administrator', 'administrator, has blocked user account', '', 'Account Restricted', 'customer-summary?uid=52', 0, '2017-12-17 00:31:08'),
(224, 'administrator', 'administrator has logged in!', '', 'Login', 'admin-profile?admu=administrator', 0, '2017-12-24 23:05:10'),
(225, 'administrator', 'administrator has logged out!', '', 'Logout', 'admin-profile?admu=administrator', 0, '2017-12-24 23:05:56'),
(226, 'administrator', 'administrator has logged in!', '', 'Login', 'admin-profile?admu=administrator', 0, '2017-12-24 23:06:14'),
(227, 'Administrator', 'Administrator has logged in!', '', 'Login', 'admin-profile?admu=Administrator', 0, '2018-02-19 13:46:28'),
(228, 'administrator', 'administrator has logged in!', '', 'Login', 'admin-profile?admu=administrator', 0, '2018-03-01 20:24:32'),
(229, '', 'Globalmoneymax Francis has created customer account!', 'administrator', 'A New Customer Account Created', 'customer-summary?uid=63', 1, '2018-03-01 20:44:29'),
(230, 'administrator', 'administrator, has unblocked user account', '', 'Account unrestricted', 'customer-summary?uid=63', 0, '2018-03-01 20:50:26'),
(231, 'administrator', 'administrator has logged in!', '', 'Login', 'admin-profile?admu=administrator', 0, '2018-03-01 23:39:00'),
(232, 'administrator', 'administrator has logged in!', '', 'Login', 'admin-profile?admu=administrator', 0, '2018-03-11 09:44:22'),
(233, 'administrator', 'administrator has logged in!', '', 'Login', 'admin-profile?admu=administrator', 0, '2018-03-11 12:44:20'),
(234, 'administrator', 'administrator has logged in!', '', 'Login', 'admin-profile?admu=administrator', 0, '2018-03-15 18:07:33'),
(235, 'administrator', 'administrator has logged out!', '', 'Logout', 'admin-profile?admu=administrator', 0, '2018-03-15 18:29:14'),
(236, 'administrator', 'administrator has logged in!', '', 'Login', 'admin-profile?admu=administrator', 0, '2018-03-15 18:29:28'),
(237, 'administrator', 'administrator has logged out!', '', 'Logout', 'admin-profile?admu=administrator', 0, '2018-03-15 18:32:40'),
(238, 'administrator', 'administrator has logged in!', '', 'Login', 'admin-profile?admu=administrator', 0, '2018-03-15 18:40:12'),
(239, 'administrator', 'administrator has logged in!', '', 'Login', 'admin-profile?admu=administrator', 0, '2018-03-15 18:54:41'),
(240, '', 'James  doro has created customer account!', '', 'A New Customer Account Created', 'customer-summary?uid=64', 0, '2018-03-15 18:59:56'),
(241, 'administrator', 'administrator, has unblocked user account', '', 'Account unrestricted', 'customer-summary?uid=64', 0, '2018-03-15 19:00:30');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ord_id` int(11) NOT NULL,
  `ph_id` int(11) NOT NULL,
  `gh_id` int(11) NOT NULL,
  `payer_id` int(11) NOT NULL,
  `payee_id` int(11) NOT NULL,
  `ord_amount` double NOT NULL,
  `pop` varchar(255) NOT NULL,
  `ord_status` int(11) NOT NULL,
  `flag` int(11) NOT NULL,
  `flag_date` varchar(100) NOT NULL,
  `period_timer` varchar(100) NOT NULL,
  `pop_date` varchar(100) NOT NULL,
  `date_paid` varchar(100) NOT NULL,
  `ord_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ord_id`, `ph_id`, `gh_id`, `payer_id`, `payee_id`, `ord_amount`, `pop`, `ord_status`, `flag`, `flag_date`, `period_timer`, `pop_date`, `date_paid`, `ord_date`) VALUES
(16, 17, 11, 2, 1, 1000, '../uploads/pop/0cec035d88291d50ecdd5e8bad4e4fea.jpg', 1, 0, '', '2017-09-02 03:57:27', '2017-09-02 03:58:03', '2017-09-01 21:58:15', '2017-09-01 21:57:27'),
(21, 21, 14, 55, 2, 40000, '../uploads/pop/d8af576a1d567a8ef2a6a5fe30633c92.png', 1, 0, '', '2017-10-05 22:45:42', '2017-10-04 04:47:13', '2017-10-03 22:51:16', '2017-10-03 22:45:42'),
(23, 21, 14, 55, 2, 160000, '../uploads/pop/17edeb33e9eccbb81760a5aa58ee2195.png', 1, 0, '', '2017-10-05 23:44:43', '2017-10-04 05:45:00', '2017-10-03 23:45:12', '2017-10-03 23:44:43'),
(24, 22, 14, 55, 2, 40000, '../uploads/pop/d48325e217226ad52b2f782ed42fbdc6.png', 1, 0, '', '2017-10-06 00:34:03', '2017-10-04 06:35:15', '2017-10-04 00:35:27', '2017-10-04 00:34:03'),
(25, 22, 14, 55, 2, 80000, '../uploads/pop/db28c62f93962cf1309243994d3fcbd9.jpg', 1, 0, '', '2017-10-06 00:38:55', '2017-10-04 06:39:29', '2017-10-04 00:39:45', '2017-10-04 00:38:55'),
(26, 22, 13, 55, 2, 10000, '../uploads/pop/56210b48672e9adb1af760f55d96503e.png', 1, 0, '', '2017-10-06 00:43:16', '2017-10-04 06:43:38', '2017-10-04 00:43:54', '2017-10-04 00:43:16'),
(27, 22, 12, 55, 51, 70000, '../uploads/pop/ea3901a6fafebd5284ef43e53b717ac5.png', 1, 0, '', '2017-10-06 00:47:32', '2017-10-04 06:47:48', '2017-10-04 00:48:12', '2017-10-04 00:47:32'),
(34, 24, 18, 55, 51, 40000, '../uploads/pop/014f52657ffdf04175c5bf169e5db655.png', 1, 1, '2017-10-04 12:47:31', '2017-10-06 12:36:38', '2017-10-04 18:38:36', '2017-10-04 12:49:54', '2017-10-04 12:36:38'),
(35, 27, 17, 62, 55, 4000, '../uploads/pop/7b84a17473c30577f951e889d8463e16.jpg', 1, 0, '', '2017-10-13 14:42:52', '2017-10-13 00:29:07', '2017-10-14 00:34:33', '2017-10-12 14:42:52'),
(36, 29, 17, 64, 55, 4000, '', 0, 0, '', '2018-03-16 19:01:38', '', '', '2018-03-15 19:01:38');

-- --------------------------------------------------------

--
-- Table structure for table `provide_help`
--

CREATE TABLE `provide_help` (
  `ph_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `plan` varchar(100) NOT NULL,
  `amount` double NOT NULL,
  `interest` double NOT NULL,
  `bonus` double NOT NULL,
  `paid` double NOT NULL,
  `gh_amount` double NOT NULL,
  `ph_control` int(11) NOT NULL,
  `ph_on` int(11) NOT NULL,
  `request_amt` double NOT NULL,
  `ph_status` varchar(100) NOT NULL,
  `gh_status` int(11) NOT NULL,
  `matured_date` datetime NOT NULL,
  `ph_auto_merge_timer` varchar(100) NOT NULL,
  `date_added` datetime NOT NULL,
  `last_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provide_help`
--

INSERT INTO `provide_help` (`ph_id`, `login_id`, `plan`, `amount`, `interest`, `bonus`, `paid`, `gh_amount`, `ph_control`, `ph_on`, `request_amt`, `ph_status`, `gh_status`, `matured_date`, `ph_auto_merge_timer`, `date_added`, `last_modified`) VALUES
(6, 51, '', 2000, 2000, 200, 2000, 0, 0, 0, 4000, 'Frozen', 1, '2017-08-01 00:00:00', '', '2017-08-01 00:00:00', '2017-08-01 00:00:00'),
(16, 1, '', 400, 400, 20, 0, 0, 0, 0, 820, 'Cancelled', 0, '2017-09-11 21:28:00', '', '2017-09-01 21:28:00', '2017-09-01 21:28:00'),
(17, 2, '', 1000, 1000, 100, 1000, 0, 0, 0, 2100, 'Frozen', 0, '2017-09-11 21:56:34', '', '2017-09-01 21:56:34', '2017-09-01 21:56:34'),
(18, 51, '', 2000, 2000, 100, 0, 0, 0, 0, 4100, 'Frozen', 0, '2017-09-13 21:48:37', '', '2017-09-03 21:48:36', '2017-09-03 21:48:36'),
(19, 52, '', 1000, 1000, 100, 0, 0, 0, 0, 2100, 'Frozen', 0, '2017-09-13 21:50:27', '', '2017-09-03 21:50:27', '2017-09-03 21:50:27'),
(20, 3, '', 1000, 1000, 100, 0, 0, 0, 0, 2100, 'Pending', 0, '2017-10-08 01:00:30', '', '2017-09-28 01:00:30', '2017-09-28 01:00:30'),
(21, 55, 'Jet', 200000, 100000, 20000, 200000, 0, 0, 0, 320000, 'Full Payment', 1, '2017-10-10 22:08:05', '2017-10-04 01:45:13', '2017-10-03 22:08:04', '2017-10-03 22:08:04'),
(22, 55, 'Jet', 200000, 100000, 0, 200000, 0, 0, 0, 300000, 'Part Payment', 1, '2017-10-11 00:34:03', '2017-10-04 01:18:12', '2017-10-04 00:34:03', '2017-10-04 00:34:03'),
(23, 2, 'Bicycle', 20000, 10000, 0, 0, 0, 0, 1, 30000, 'Frozen', 0, '2017-10-11 01:04:09', '', '2017-10-04 01:04:09', '2017-10-04 01:04:09'),
(24, 55, 'Jet', 200000, 100000, 0, 40000, 0, 0, 0, 300000, 'Part Payment', 0, '2017-10-11 12:29:29', '2017-10-04 13:19:56', '2017-10-04 12:29:29', '2017-10-04 12:29:29'),
(25, 56, 'Bicycle', 20000, 10000, 2000, 0, 0, 0, 1, 32000, 'Cancelled', 0, '2017-10-12 02:02:24', '', '2017-10-05 02:02:24', '2017-10-05 02:02:24'),
(26, 59, 'Car', 50000, 25000, 0, 0, 0, 0, 1, 75000, 'Cancelled', 0, '2017-10-12 10:52:58', '', '2017-10-05 10:52:58', '2017-10-05 10:52:58'),
(27, 62, 'Bronze', 20000, 10000, 0, 4000, 0, 0, 1, 30000, 'Part Payment', 0, '2017-10-19 14:42:46', '', '2017-10-12 14:42:45', '2017-10-12 14:42:45'),
(28, 63, 'Bronze', 20000, 10000, 0, 0, 0, 0, 1, 30000, 'Cancelled', 0, '2018-03-08 20:54:50', '', '2018-03-01 20:54:50', '2018-03-01 20:54:50'),
(29, 64, 'Bronze', 20000, 10000, 0, 0, 0, 0, 1, 30000, 'Pending', 0, '2018-03-22 19:01:38', '', '2018-03-15 19:01:37', '2018-03-15 19:01:37');

-- --------------------------------------------------------

--
-- Table structure for table `referral`
--

CREATE TABLE `referral` (
  `id` int(11) NOT NULL,
  `ph_id` int(11) NOT NULL,
  `referree_id` int(11) NOT NULL,
  `referral_id` int(11) NOT NULL,
  `ph_amount` double NOT NULL,
  `bonus` double NOT NULL,
  `pay_status` int(11) NOT NULL,
  `credit_status` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `referral`
--

INSERT INTO `referral` (`id`, `ph_id`, `referree_id`, `referral_id`, `ph_amount`, `bonus`, `pay_status`, `credit_status`, `date_added`) VALUES
(5, 7, 2, 1, 1000, 50, 0, 0, '2017-09-01 12:45:52'),
(6, 9, 2, 1, 100, 5, 0, 0, '2017-09-01 19:24:13'),
(7, 10, 2, 1, 1000, 50, 0, 0, '2017-09-01 19:24:37'),
(8, 12, 2, 1, 500, 25, 1, 0, '2017-09-01 19:33:29'),
(9, 17, 2, 1, 1000, 50, 1, 0, '2017-09-01 21:56:34'),
(10, 19, 52, 0, 1000, 50, 0, 0, '2017-09-03 21:50:27'),
(11, 20, 3, 0, 1000, 50, 0, 0, '2017-09-28 01:00:30'),
(12, 21, 55, 1, 200000, 10000, 1, 0, '2017-10-03 22:08:04'),
(13, 25, 56, 1, 20000, 500, 0, 0, '2017-10-05 02:02:24'),
(14, 26, 59, 56, 50000, 1250, 0, 0, '2017-10-05 10:52:58'),
(15, 27, 62, 59, 20000, 500, 1, 0, '2017-10-12 14:42:45'),
(16, 28, 63, 62, 20000, 500, 0, 0, '2018-03-01 20:54:50'),
(17, 29, 64, 63, 20000, 500, 0, 0, '2018-03-15 19:01:37');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `ord_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `video` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `ord_id`, `login_id`, `content`, `video`, `status`, `date_added`) VALUES
(8, 0, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '', 1, '2017-09-02 12:25:02'),
(9, 0, 52, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '', 1, '2017-09-04 00:45:03'),
(13, 25, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '', 1, '2017-10-04 00:39:54'),
(17, 0, 51, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '', 1, '2017-10-04 13:22:16'),
(18, 0, 55, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '', 1, '2017-10-04 13:42:03'),
(19, 27, 51, 'Please write Letter of Happiness to continue\r\n', '', 0, '2017-10-04 14:39:15'),
(20, 34, 51, 'ease write Letter of Happiness to continue\r\n', '', 1, '2017-10-04 14:44:22'),
(21, 16, 1, 'rite Letter of Happiness to continue', '', 0, '2017-10-12 14:17:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `login_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `referral` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `bio` text NOT NULL,
  `creditbility` double NOT NULL,
  `email_code` varchar(100) NOT NULL,
  `sms_code` varchar(100) NOT NULL,
  `email_verify` int(11) NOT NULL,
  `sms_verify` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `signup_ip` varchar(100) NOT NULL,
  `signup_date` datetime NOT NULL,
  `last_login_ip` varchar(100) NOT NULL,
  `last_login` datetime NOT NULL,
  `last_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`login_id`, `email`, `password`, `first_name`, `last_name`, `phone`, `gender`, `referral`, `photo`, `location`, `bio`, `creditbility`, `email_code`, `sms_code`, `email_verify`, `sms_verify`, `status`, `signup_ip`, `signup_date`, `last_login_ip`, `last_login`, `last_updated`) VALUES
(1, 'info@ojaolawebsolution.com', '$2y$10$3oftPaBZaaqakgQ8vF5k9.h2.B9SpdnnAcSQ7hKys35ScTye7gMv6', 'Steven', 'Mark', '23480356777', 'Male', 2, '', '', '', 0, 'teyeyert', 'trtawatratr', 1, 1, 'Active', '', '2017-06-30 14:15:03', '', '2018-03-15 18:38:39', '2017-10-12 14:34:42'),
(2, 'gn@yahoo.com', '$2y$10$eBa9P4Mrg2tjQA7zXF/T2OXqPjt90bUbwdfyqpt0gIbioIi/ru6Jy', 'MonieGram', 'Test', '23487373734734', 'Male', 1, '../uploads/users/d03e71f98d5e920e71b818a2a400ef41.jpg', 'Lagos, Nigeria', 'Just about me here', 0, '', '', 0, 0, 'Blocked', '', '2017-06-30 15:10:10', '', '2017-10-04 01:05:17', '2017-07-19 20:28:57'),
(3, 'eeor_me@rocketmail.com', '$2y$10$8wjbmwWcNT0nT.c9kxS3O.CWmq9N1INJzN9IUWA/r4GmA7gkYtjAq', 'dddssdsd', 'dssdsdsd', '2.348037372', 'Female', 0, '', '', '', 0, '', '', 0, 0, '1', '', '2017-07-28 14:33:14', '', '2017-09-28 01:12:17', '2017-07-28 14:33:14'),
(6, 'james@gabriel.com', '$2y$10$c6RzAc4VsOCnlcp6M0URBOJnTOvHHVInpzJ/NYDu6C.EiPsGktc5.', 'James', 'Gabriel', '23497484848994', 'Male', 0, '', 'Lagos, Nigeria', '', 0, '', '', 0, 0, '1', '', '2017-08-04 02:37:08', '', '0000-00-00 00:00:00', '2017-08-31 12:20:46'),
(51, 'info3@ojaolawebsolution.com', '$2y$10$SJeYBG3Y.zRAsm1sgEFQRueRqin94AStNwAtb3TjvDwQ6bCyjIPS6', 'Obinna', 'Tunde', '+23485572777', 'Male', 0, '../uploads/users/c3964363f82d98b06dda03f11225ad3a.jpg', ' , ', '', 0, 'UT2O65', 'VR24FZ', 1, 1, 'Blocked', '154.120.108.66', '2017-09-03 21:30:09', '', '2017-10-04 14:44:32', '2017-10-04 13:25:30'),
(52, 'asuesrr@yahoo.com', '$2y$10$/d4r/riGh1Us3qx7gYcQV.85BSmvk15pYBOcdQeEsTRXieScoU/Xm', 'Mr. Emmanuel', 'A.O', '+2347052983300', 'Male', 0, '../uploads/users/158d4e3ff4edebe95c244b78dbf876f9.jpg', ' , ', '', 0, 'QF52RT', 'IL3J8M', 1, 1, 'Blocked', '154.120.108.66', '2017-09-03 21:45:13', '', '2017-09-15 14:03:26', '2017-09-11 20:57:41'),
(54, 'asues@yahoo.com', '$2y$10$EJ6TbwACR1OwCcNaQJwLB.DZvtZSyoAhI2vKNVx5T.jqwJduxY7qe', 'Matthew', 'Justins', '+234803788', 'Male', 52, '', ' , ', '', 0, 'LAVS4Q', 'X7HRI0', 0, 1, 'Pending', '154.120.108.66', '2017-09-19 17:37:04', '', '2017-09-19 17:38:36', '2017-10-04 13:24:44'),
(55, 'asues2@yahoo.com', '$2y$10$eBa9P4Mrg2tjQA7zXF/T2OXqPjt90bUbwdfyqpt0gIbioIi/ru6Jy', 'John', 'Deo', '+2348072777', 'Male', 1, '', ' , ', '', 0, '1ZYXVN', 'LXUJ2N', 1, 1, 'Active', '154.120.108.66', '2017-10-03 12:35:17', '', '2017-10-04 14:49:39', '2017-10-04 13:24:05'),
(56, 'ozi_harrisonworld2008@yahoo.com', '$2y$10$kLLple5eM5p109ECg9nqQum6PBglhHpd3A83iGxGQG7/JNUokc5GO', 'Online', 'Test', '+2348037372777', 'Male', 1, '../uploads/users/96d54af72f02dd204f4c10d522382efd.jpg', ' , ', '', 0, 'P7UL65', '7BYIKE', 1, 1, 'Blockd', '154.120.108.66', '2017-10-05 01:59:15', '', '2017-10-07 00:37:47', '2017-10-05 02:00:56'),
(59, 'royderex@gmail.com', '$2y$10$NhQ2HdIWrz3XdkH/PP7bbeGV3DoccDMfVlcLVuS2368xDv3OflrQm', 'Rex', 'Wilson', '+2348131665951', 'Male', 56, '', ' , ', '', 0, '2ARP9Y', 'YN32UX', 1, 1, 'Active', '154.120.108.66', '2017-10-05 10:51:14', '', '2017-10-05 13:36:21', '2017-10-05 10:52:08'),
(62, 'festus1@gmail.com', '$2y$10$O76oIqOWqN2L7CNrR54dS.KlftkYKm7WLnX1KezDX5vRWyxXJB.fC', 'Ben', 'Emma', '08159635112', 'Male', 59, '', 'Akure', '', 0, 'DZBJG0', 'VOPLQS', 0, 0, 'Active', '154.120.108.66', '2017-10-11 17:54:31', '', '2017-11-07 12:38:18', '2017-10-11 18:10:13'),
(63, 'globalmoneymax@yahoo.com', '$2y$10$0pDQEzdmxf0k6fuLRiI2z.s3L0dyh9rYOJOpbjLROMNSps8Ju83o6', 'Globalmoneymax', 'Francis', '08059915730', 'Male', 62, '', ' , ', '', 0, 'GL3TUM', 'WFEZ9J', 0, 0, 'Blockd', '154.120.108.66', '2018-03-01 20:44:29', '', '2018-03-01 21:25:46', '2018-03-01 20:44:29'),
(64, 'adminaxs@yahoo.com', '$2y$10$P2t5hlCjjTkqVAwaeLAVNuWbhQYvaaSl8BlhJEftNcWvxlscLwcfa', 'James ', 'doro', '36384957594', 'Male', 63, '', 'Pasadena CA, United States', '', 0, 'LD0U5S', 'ZGR07K', 0, 0, 'Active', '168.235.195.191', '2018-03-15 18:59:56', '', '2018-03-15 19:01:53', '2018-03-15 18:59:56');

-- --------------------------------------------------------

--
-- Table structure for table `user_credibility`
--

CREATE TABLE `user_credibility` (
  `id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `action` varchar(255) NOT NULL,
  `score` double NOT NULL,
  `credit_status` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_credibility`
--

INSERT INTO `user_credibility` (`id`, `login_id`, `action`, `score`, `credit_status`, `date_added`) VALUES
(1, 1, 'Promt POP Confirmation Reward', 10, 0, '2017-09-01 19:38:24'),
(2, 2, 'Reward for Promt POP Upload', 10, 0, '2017-09-01 19:38:24'),
(3, 1, 'Promt POP Confirmation Reward', 10, 0, '2017-09-01 21:58:15'),
(4, 2, 'Reward for Promt POP Upload', 10, 0, '2017-09-01 21:58:15'),
(5, 1, 'Reward for submitting testimony in the community', 10, 0, '2017-09-02 12:11:25'),
(6, 1, 'Reward for submitting testimony in the community', 10, 0, '2017-09-02 12:11:39'),
(7, 1, 'Reward for submitting testimony in the community', 30, 0, '2017-09-02 12:26:05'),
(8, 52, 'Reward for submitting Video of happiness in the community', 30, 0, '2017-09-04 00:51:24'),
(9, 2, 'Promt POP Confirmation Reward', 10, 0, '2017-10-03 22:51:16'),
(10, 55, 'Reward for Promt POP Upload', 10, 0, '2017-10-03 22:51:16'),
(11, 2, 'Reward for submitting Letter of happiness in the community', 5, 0, '2017-10-03 23:03:14'),
(12, 2, 'Promt POP Confirmation Reward', 10, 0, '2017-10-03 23:45:12'),
(13, 55, 'Reward for Promt POP Upload', 10, 0, '2017-10-03 23:45:12'),
(14, 2, 'Promt POP Confirmation Reward', 10, 0, '2017-10-04 00:35:27'),
(15, 55, 'Reward for Promt POP Upload', 10, 0, '2017-10-04 00:35:27'),
(16, 2, 'Promt POP Confirmation Reward', 10, 0, '2017-10-04 00:39:45'),
(17, 55, 'Reward for Promt POP Upload', 10, 0, '2017-10-04 00:39:45'),
(18, 2, 'Promt POP Confirmation Reward', 10, 0, '2017-10-04 00:43:54'),
(19, 55, 'Reward for Promt POP Upload', 10, 0, '2017-10-04 00:43:54'),
(20, 55, 'Reward for Promt POP Upload', 10, 0, '2017-10-04 00:48:12'),
(21, 51, 'Promt POP Confirmation Reward', 10, 0, '2017-10-04 12:49:54'),
(22, 55, 'Reward for Promt POP Upload', 10, 0, '2017-10-04 12:49:54'),
(23, 2, 'Reward for submitting Letter of happiness in the community', 5, 0, '2017-10-04 13:21:30'),
(24, 2, 'Reward for submitting Letter of happiness in the community', 5, 0, '2017-10-04 13:21:49'),
(25, 51, 'Reward for submitting Letter of happiness in the community', 5, 0, '2017-10-04 13:26:02'),
(26, 51, 'Reward for submitting Letter of happiness in the community', 5, 0, '2017-10-04 13:26:13'),
(27, 51, 'Reward for submitting Letter of happiness in the community', 5, 0, '2017-10-04 13:40:02'),
(28, 55, 'Reward for submitting Letter of happiness in the community', 5, 0, '2017-10-04 13:42:34'),
(29, 51, 'Reward for submitting Letter of happiness in the community', 5, 0, '2017-10-10 20:41:56'),
(30, 62, 'Reward for Promt POP Upload', 10, 0, '2017-10-14 00:34:33');

-- --------------------------------------------------------

--
-- Table structure for table `user_login_activity`
--

CREATE TABLE `user_login_activity` (
  `id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `browser` varchar(100) NOT NULL,
  `os` varchar(100) NOT NULL,
  `last_access` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login_activity`
--

INSERT INTO `user_login_activity` (`id`, `login_id`, `username`, `ip`, `browser`, `os`, `last_access`) VALUES
(11, 2, 'gn@yahoo.com', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-08-30 10:16:17'),
(12, 2, 'gn@yahoo.com', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-08-30 10:16:25'),
(13, 2, 'gn@yahoo.com', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-08-30 10:18:13'),
(14, 2, 'gn@yahoo.com', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-08-30 10:20:57'),
(15, 2, 'gn@yahoo.com', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-08-30 10:21:38'),
(16, 2, 'gn@yahoo.com', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-08-30 10:22:07'),
(17, 2, 'gn@yahoo.com', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-08-30 10:24:30'),
(18, 2, 'gn@yahoo.com', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-08-30 10:24:35'),
(19, 2, 'gn@yahoo.com', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-08-30 13:17:30'),
(20, 2, 'gn@yahoo.com', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-08-30 13:59:23'),
(21, 2, 'gn@yahoo.com', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-08-31 01:30:01'),
(22, 2, 'gn@yahoo.com', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-08-31 09:59:43'),
(23, 2, 'gn@yahoo.com', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-08-31 23:34:56'),
(24, 2, 'gn@yahoo.com', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-09-01 13:07:36'),
(25, 1, 'john@yahoo.com', '154.120.108.66', 'Chrome', 'Windows 8.1', '2017-09-01 13:01:53'),
(26, 2, 'gn@yahoo.com', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-09-01 15:34:35'),
(27, 1, 'john@yahoo.com', '154.120.108.66', 'Chrome', 'Windows 8.1', '2017-09-01 19:39:33'),
(28, 2, 'gn@yahoo.com', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-09-01 19:43:16'),
(29, 2, 'gn@yahoo.com', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-09-03 15:17:49'),
(30, 1, 'john@yahoo.com', '154.120.108.66', 'Chrome', 'Windows 8.1', '2017-09-02 20:35:58'),
(31, 52, 'asues@yahoo.com', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-09-11 11:27:44'),
(32, 52, 'asues@yahoo.com', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-09-11 11:13:24'),
(33, 52, 'asues@yahoo.com', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-09-11 11:13:00'),
(34, 1, 'john@yahoo.com', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-09-12 19:08:23'),
(35, 52, 'asues@yahoo.com', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-09-11 11:11:16'),
(36, 52, 'asues@yahoo.com', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-09-11 21:14:24'),
(37, 52, 'asues@yahoo.com', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-09-12 19:58:08'),
(38, 52, 'asues@yahoo.com', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-09-13 23:43:09'),
(39, 51, 'support@ozitechhost.com', '154.120.108.66', 'Chrome', 'Windows 8.1', '2017-09-14 00:18:14'),
(40, 52, 'asues@yahoo.com', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-09-14 14:04:52'),
(41, 52, 'asues@yahoo.com', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-09-15 14:03:26'),
(42, 2, 'gn@yahoo.com', '154.120.108.66', 'Chrome', 'Windows 8.1', '2017-10-04 01:05:17'),
(43, 55, 'asues2@yahoo.com', '154.120.108.66', 'Firefox', 'Windows 8.1', '2017-10-04 14:49:39'),
(44, 51, 'support@ozitechhost.com', '154.120.108.66', 'Chrome', 'Windows 8.1', '2017-10-04 14:44:32'),
(45, 59, 'royderex@gmail.com', '154.120.108.66', 'Chrome', 'Windows 7', '2017-10-05 11:18:41'),
(46, 59, 'royderex@gmail.com', '154.120.108.66', 'Chrome', 'Windows 7', '2017-10-05 12:12:33'),
(47, 59, 'royderex@gmail.com', '154.120.108.66', 'Chrome', 'Windows 7', '2017-10-05 13:36:21'),
(48, 56, '+2348037372777', '154.120.108.66', 'Chrome', 'Windows 8.1', '2017-10-06 23:57:59'),
(49, 56, '+2348037372777', '154.120.108.66', 'Chrome', 'Windows 8.1', '2017-10-07 00:37:47'),
(50, 62, 'Festus1@gmail.com', '154.120.108.66', 'Chrome', 'Android', '2017-10-11 18:15:00'),
(51, 62, 'Festus1@gmail.com', '154.120.108.66', 'Chrome', 'Android', '2017-10-11 17:58:26'),
(52, 62, 'Festus1@gmail.com', '154.120.108.66', 'Chrome', 'Android', '2017-10-11 17:58:34'),
(53, 62, 'Festus1@gmail.com', '154.120.108.66', 'Chrome', 'Android', '2017-10-11 17:58:41'),
(54, 62, 'Festus1@gmail.com', '154.120.108.66', 'Chrome', 'Android', '2017-10-11 18:00:22'),
(55, 62, 'Festus1@gmail.com', '154.120.108.66', 'Chrome', 'Android', '2017-10-11 18:00:26'),
(56, 62, 'Festus1@gmail.com', '197.211.63.63', 'Chrome', 'Android', '2017-10-12 13:42:27'),
(57, 62, 'Festus1@gmail.com', '154.120.108.66', 'Chrome', 'Android', '2017-10-12 14:11:11'),
(58, 1, 'info@ojaolawebsolution.com', '197.210.226.132', 'Firefox', 'Windows 8.1', '2017-10-12 14:37:42'),
(59, 62, 'Festus1@gmail.com', '197.211.63.63', 'Chrome', 'Android', '2017-10-12 14:47:32'),
(60, 1, 'info@ojaolawebsolution.com', '197.210.226.173', 'Firefox', 'Windows 8.1', '2017-10-12 14:45:58'),
(61, 62, 'Festus1@gmail.com', '197.211.63.63', 'Chrome', 'Android', '2017-10-12 18:29:07'),
(62, 62, 'Festus1@gmail.com', '197.211.63.68', 'Chrome', 'Android', '2017-11-07 12:38:18'),
(63, 1, 'info@ojaolawebsolution.com', '154.120.108.66', 'Firefox', 'Windows 8', '2018-03-01 18:33:11'),
(64, 1, 'info@ojaolawebsolution.com', '154.120.108.66', 'Firefox', 'Windows 8', '2018-03-04 09:03:52'),
(65, 1, 'info@ojaolawebsolution.com', '154.120.108.66', 'Handheld Browser', 'Android', '2018-03-04 09:42:55'),
(66, 1, 'info@ojaolawebsolution.com', '154.120.108.66', 'Handheld Browser', 'Android', '2018-03-04 09:11:25'),
(67, 1, 'info@ojaolawebsolution.com', '154.120.108.66', 'Handheld Browser', 'Android', '2018-03-04 09:15:19'),
(68, 1, 'info@ojaolawebsolution.com', '154.120.108.66', 'Handheld Browser', 'Android', '2018-03-04 09:15:24'),
(69, 1, 'info@ojaolawebsolution.com', '154.120.108.66', 'Handheld Browser', 'Android', '2018-03-04 09:15:45'),
(70, 1, 'info@ojaolawebsolution.com', '154.120.108.66', 'Handheld Browser', 'Android', '2018-03-04 09:16:03'),
(71, 1, 'Info@ojaolawebsolution.com', '154.118.4.151', 'Handheld Browser', 'Android', '2018-03-15 18:38:39');

-- --------------------------------------------------------

--
-- Table structure for table `user_notification`
--

CREATE TABLE `user_notification` (
  `id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `action` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `action_url` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_notification`
--

INSERT INTO `user_notification` (`id`, `login_id`, `action`, `type`, `action_url`, `status`, `date_added`) VALUES
(28, 1, 'MonieGram T. has uploaded POP for your GH order', 'POP Submitted', 'user/approve?ordid=4', 1, '2017-09-01 12:48:27'),
(29, 2, 'Harrison O. has reported your submitted POP!', 'Your POP Reported', 'user/payment?ordid=4', 1, '2017-09-01 13:01:52'),
(30, 2, ' . has reported your submitted POP!', 'Your POP Reported', 'user/payment?ordid=4', 1, '2017-09-01 15:18:04'),
(31, 1, 'MonieGram T. has uploaded POP for your GH order', 'POP Submitted', 'user/approve?ordid=5', 1, '2017-09-01 15:29:50'),
(32, 2, 'Harrison O. has reported your submitted POP!', 'Your POP Reported', 'user/payment?ordid=5', 1, '2017-09-01 15:30:16'),
(33, 1, 'The administrator has deleted reported order and you will receive a new order asap!', 'Actions taken', 'user/notifications', 1, '2017-09-01 15:31:10'),
(34, 2, 'The administrator has deleted your PH order which was reported by the receiver and your account has been restricted.', 'Actions taken', 'user/notifications', 1, '2017-09-01 15:31:10'),
(35, 2, 'The administrator has Unblocked your account!', 'Account Unblocked', 'user/', 1, '2017-09-01 16:04:18'),
(36, 2, 'The administrator has Unblocked your account!', 'Account Unblocked', 'user/', 1, '2017-09-01 16:04:25'),
(37, 2, 'The administrator has UBlocked your account!', 'Account Blocked', 'user/', 1, '2017-09-01 16:08:21'),
(38, 2, 'The administrator has Unblocked your account!', 'Account Unblocked', 'user/', 1, '2017-09-01 16:08:29'),
(39, 1, 'MonieGram T. has uploaded POP for your GH order', 'POP Submitted', 'user/approve?ordid=15', 1, '2017-09-01 19:38:06'),
(40, 2, 'Harrison O. has approved your payment!', 'Payment Confirmation', 'user/payment?ordid=15', 1, '2017-09-01 19:38:24'),
(41, 1, 'MonieGram T. has uploaded POP for your GH order', 'POP Submitted', 'user/approve?ordid=16', 1, '2017-09-01 21:58:03'),
(42, 2, 'Harrison O. has approved your payment!', 'Payment Confirmation', 'user/payment?ordid=16', 1, '2017-09-01 21:58:15'),
(43, 1, 'The administrator has approved your testimony!', 'Testimony Approval', 'user/user-testimonial?tsid=7', 1, '2017-09-02 12:11:25'),
(44, 1, 'The administrator has approved your testimony!', 'Testimony Approval', 'user/user-testimonial?tsid=7', 1, '2017-09-02 12:11:39'),
(45, 1, 'The administrator has approved your testimony!', 'Testimony Approval', 'user/user-testimonials', 1, '2017-09-02 12:19:37'),
(46, 1, 'The administrator has approved your testimony!', 'Testimony Approval', 'user/user-testimonials', 1, '2017-09-02 12:26:05'),
(47, 1, 'The administrator has approved your testimony!', 'Testimony Approval', 'user/user-testimonials', 0, '2017-09-04 00:31:32'),
(48, 1, 'The administrator has approved your testimony!', 'Testimony Approval', 'user/user-testimonials', 0, '2017-09-04 00:31:43'),
(49, 1, 'The administrator has approved your testimony!', 'Testimony Approval', 'user/user-testimonials', 0, '2017-09-04 00:37:26'),
(50, 1, 'The administrator has approved your testimony!', 'Testimony Approval', 'user/user-testimonials', 0, '2017-09-04 00:39:46'),
(51, 52, 'The administrator has approved your testimony!', 'Testimony Approval', 'user/user-testimonials', 1, '2017-09-04 00:51:24'),
(52, 1, 'The administrator has approved your testimony!', 'Testimony Approval', 'user/user-testimonials', 0, '2017-09-04 00:52:02'),
(53, 54, 'You have recieved a new message from the administrator', 'New Message', 'user/message?msgid=49', 0, '2017-09-28 01:02:38'),
(54, 54, 'You have recieved a new message from the administrator', 'New Message', 'user/message?msgid=51', 0, '2017-09-28 01:07:54'),
(55, 54, 'You have recieved a new message from the administrator', 'New Message', 'user/message?msgid=53', 0, '2017-09-28 01:10:10'),
(56, 54, 'You have recieved a new message from the administrator', 'New Message', 'user/message?msgid=55', 0, '2017-09-28 01:11:09'),
(57, 54, 'You have recieved a new message from the administrator', 'New Message', 'user/message?msgid=57', 0, '2017-09-28 01:11:53'),
(58, 52, 'You have recieved a new message from the administrator', 'New Message', 'user/message?msgid=58', 0, '2017-09-28 01:11:53'),
(59, 51, 'You have recieved a new message from the administrator', 'New Message', 'user/message?msgid=59', 0, '2017-09-28 01:11:53'),
(60, 6, 'You have recieved a new message from the administrator', 'New Message', 'user/message?msgid=60', 0, '2017-09-28 01:11:53'),
(61, 3, 'You have recieved a new message from the administrator', 'New Message', 'user/message?msgid=61', 1, '2017-09-28 01:11:53'),
(62, 2, 'You have recieved a new message from the administrator', 'New Message', 'user/message?msgid=62', 1, '2017-09-28 01:11:53'),
(63, 1, 'You have recieved a new message from the administrator', 'New Message', 'user/message?msgid=63', 0, '2017-09-28 01:11:53'),
(64, 2, 'Harrison H. has uploaded POP for your GH order', 'POP Submitted', 'user/approve?ordid=21', 1, '2017-10-03 22:47:13'),
(65, 55, 'MonieGram T. has approved your payment!', 'Payment Confirmation', 'user/payment?ordid=21', 1, '2017-10-03 22:51:16'),
(66, 2, 'The administrator has approved your testimony!', 'Testimony Approval', 'user/user-testimonials', 1, '2017-10-03 23:03:14'),
(67, 2, 'Harrison H. has uploaded POP for your GH order', 'POP Submitted', 'user/approve?ordid=22', 1, '2017-10-03 23:38:43'),
(68, 55, 'MonieGram T. has reported your submitted POP!', 'Your POP Reported', 'user/payment?ordid=22', 1, '2017-10-03 23:39:12'),
(69, 2, 'Harrison H. has uploaded POP for your GH order', 'POP Submitted', 'user/approve?ordid=23', 1, '2017-10-03 23:45:00'),
(70, 55, 'MonieGram T. has approved your payment!', 'Payment Confirmation', 'user/payment?ordid=23', 1, '2017-10-03 23:45:12'),
(71, 2, 'Harrison H. has uploaded POP for your GH order', 'POP Submitted', 'user/approve?ordid=24', 1, '2017-10-04 00:35:14'),
(72, 55, 'MonieGram T. has approved your payment!', 'Payment Confirmation', 'user/payment?ordid=24', 1, '2017-10-04 00:35:27'),
(73, 2, 'Harrison H. has uploaded POP for your GH order', 'POP Submitted', 'user/approve?ordid=25', 1, '2017-10-04 00:39:28'),
(74, 55, 'MonieGram T. has approved your payment!', 'Payment Confirmation', 'user/payment?ordid=25', 1, '2017-10-04 00:39:45'),
(75, 2, 'Harrison H. has uploaded POP for your GH order', 'POP Submitted', 'user/approve?ordid=26', 1, '2017-10-04 00:43:38'),
(76, 55, 'MonieGram T. has approved your payment!', 'Payment Confirmation', 'user/payment?ordid=26', 1, '2017-10-04 00:43:54'),
(77, 51, 'Harrison H. has uploaded POP for your GH order', 'POP Submitted', 'user/approve?ordid=27', 0, '2017-10-04 00:47:48'),
(78, 55, ' . has approved your payment!', 'Payment Confirmation', 'administrator/payment?ordid=27', 1, '2017-10-04 00:48:12'),
(79, 55, 'MonieGram T. has uploaded POP for your GH order', 'POP Submitted', 'user/approve?ordid=34', 1, '2017-10-04 01:05:16'),
(80, 2, 'Harrison H. has reported your submitted POP!', 'Your POP Reported', 'user/payment?ordid=34', 0, '2017-10-04 01:05:27'),
(81, 55, 'The administrator has deleted reported order and you will receive a new order asap!', 'Actions taken', 'user/notifications?che', 1, '2017-10-04 01:07:55'),
(82, 2, 'The administrator has deleted your PH order which was reported by the receiver and your account has been restricted.', 'Account restriction', 'user/notifications?che', 0, '2017-10-04 01:07:55'),
(83, 51, 'Harrison H. has uploaded POP for your GH order', 'POP Submitted', 'user/approve?ordid=34', 1, '2017-10-04 12:38:35'),
(84, 55, 'Harrison O. has reported your submitted POP!', 'Your POP Reported', 'user/payment?ordid=34', 1, '2017-10-04 12:47:31'),
(85, 55, 'Harrison O. has approved your payment!', 'Payment Confirmation', 'user/payment?ordid=34', 1, '2017-10-04 12:49:54'),
(86, 2, 'The administrator has approved your testimony!', 'Testimony Approval', 'user/user-testimonials', 0, '2017-10-04 13:21:30'),
(87, 2, 'The administrator has approved your testimony!', 'Testimony Approval', 'user/user-testimonials', 0, '2017-10-04 13:21:49'),
(88, 2, 'The administrator has approved your testimony!', 'Testimony Approval', 'user/user-testimonials', 0, '2017-10-04 13:25:50'),
(89, 51, 'The administrator has approved your testimony!', 'Testimony Approval', 'user/user-testimonials', 1, '2017-10-04 13:26:02'),
(90, 51, 'The administrator has approved your testimony!', 'Testimony Approval', 'user/user-testimonials', 0, '2017-10-04 13:26:13'),
(91, 2, 'The administrator has approved your testimony!', 'Testimony Approval', 'user/user-testimonials', 0, '2017-10-04 13:26:24'),
(92, 52, 'The administrator has approved your testimony!', 'Testimony Approval', 'user/user-testimonials', 0, '2017-10-04 13:26:42'),
(93, 51, 'The administrator has approved your testimony!', 'Testimony Approval', 'user/user-testimonials', 0, '2017-10-04 13:40:02'),
(94, 2, 'The administrator has approved your testimony!', 'Testimony Approval', 'user/user-testimonials', 0, '2017-10-04 13:40:41'),
(95, 52, 'The administrator has approved your testimony!', 'Testimony Approval', 'user/user-testimonials', 0, '2017-10-04 13:40:51'),
(96, 2, 'The administrator has approved your testimony!', 'Testimony Approval', 'user/user-testimonials', 0, '2017-10-04 13:41:00'),
(97, 1, 'The administrator has approved your testimony!', 'Testimony Approval', 'user/user-testimonials', 0, '2017-10-04 13:41:15'),
(98, 55, 'The administrator has approved your testimony!', 'Testimony Approval', 'user/user-testimonials', 0, '2017-10-04 13:42:34'),
(99, 59, 'The administrator has Unblocked your account!', 'Account Unblocked', 'user/', 0, '2017-10-10 20:40:24'),
(100, 51, 'The administrator has approved your testimony!', 'Testimony Approval', 'user/user-testimonials', 0, '2017-10-10 20:41:56'),
(101, 62, 'The administrator has Unblocked your account!', 'Account Unblocked', 'user/', 0, '2017-10-11 17:55:57'),
(102, 62, 'The administrator has Unblocked your account!', 'Account Unblocked', 'user/', 0, '2017-10-11 17:56:50'),
(103, 62, 'The administrator has Unblocked your account!', 'Account Unblocked', 'user/', 0, '2017-10-11 17:57:26'),
(104, 55, 'Ben E. has uploaded POP for your GH order', 'POP Submitted', 'user/approve?ordid=35', 0, '2017-10-12 18:29:07'),
(105, 62, 'Your submitted POP has automatically approved by the system!', 'Payment Confirmation', 'user/payment?ordid=35', 0, '2017-10-14 00:34:33'),
(106, 52, 'The administrator has UnBlocked your account!', 'Account Blocked', 'user/', 0, '2017-12-17 00:31:08'),
(107, 63, 'The administrator has Unblocked your account!', 'Account Unblocked', 'user/', 0, '2018-03-01 20:50:26'),
(108, 64, 'The administrator has Unblocked your account!', 'Account Unblocked', 'user/', 0, '2018-03-15 19:00:30');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `website` varchar(255) NOT NULL,
  `curr_version` varchar(255) NOT NULL,
  `version_date` datetime NOT NULL,
  `client_host` varchar(255) NOT NULL,
  `client_addr` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`id`, `name`, `website`, `curr_version`, `version_date`, `client_host`, `client_addr`) VALUES
(1, 'Ojaolawebsolution Nigeria', 'www.ojaolawebsolution.com', '1.1', '2017-04-01 00:00:00', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` int(11) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `isp` varchar(255) NOT NULL,
  `client` varchar(255) NOT NULL,
  `device` varchar(255) NOT NULL,
  `os` varchar(100) NOT NULL,
  `location` varchar(255) NOT NULL,
  `v_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `ip`, `isp`, `client`, `device`, `os`, `location`, `v_date`) VALUES
(1, '192.83.9.0', 'Spetranect', 'mozila firefox', 'desktop', '', 'Lagos, Nigeria', '2017-08-02 00:25:00'),
(2, '192.83.9.0', 'Spetranect', 'mozila firefox', 'desktop', '', 'Lagos, Nigeria', '2017-08-01 00:00:00'),
(3, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', 'Lagos, Nigeria', '2017-08-03 07:58:16'),
(4, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', 'Lagos, Nigeria', '2017-08-03 07:59:13'),
(5, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', 'Lagos, Nigeria', '2017-08-03 07:59:19'),
(6, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', 'Lagos, Nigeria', '2017-08-03 07:59:24'),
(7, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', 'Lagos, Nigeria', '2017-08-03 18:18:36'),
(8, '154.120.108.66', '', 'Chrome', '', 'Windows 8.1', ', ', '2017-08-04 02:36:11'),
(9, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-08-04 20:04:30'),
(10, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-08-24 00:31:09'),
(11, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-08-26 01:51:10'),
(12, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-08-26 01:54:42'),
(13, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-08-26 21:05:27'),
(14, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-08-27 14:09:08'),
(15, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-08-27 23:40:51'),
(16, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-08-30 01:13:58'),
(17, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-08-30 07:39:03'),
(18, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-08-30 10:15:07'),
(19, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-08-30 10:24:30'),
(20, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-08-30 13:15:35'),
(21, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-08-30 13:48:57'),
(22, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-08-30 19:21:05'),
(23, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-08-31 09:40:20'),
(24, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-08-31 20:15:43'),
(25, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-09-01 08:07:48'),
(26, '154.120.108.66', '', 'Chrome', '', 'Windows 8.1', ', ', '2017-09-01 11:55:48'),
(27, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-09-01 14:48:30'),
(28, '154.120.108.66', '', 'Chrome', '', 'Windows 8.1', ', ', '2017-09-01 14:50:34'),
(29, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-09-01 15:38:03'),
(30, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-09-01 20:04:19'),
(31, '154.120.108.66', '', 'Chrome', '', 'Windows 8.1', ', ', '2017-09-01 20:04:48'),
(32, '154.120.108.66', '', 'Chrome', '', 'Windows 8.1', ', ', '2017-09-02 20:35:58'),
(33, '154.120.108.66', '', 'Chrome', '', 'Windows 8.1', ', ', '2017-09-02 23:17:18'),
(34, '154.120.108.66', '', 'Chrome', '', 'Windows 8.1', ', ', '2017-09-02 23:27:03'),
(35, '154.120.108.66', '', 'Chrome', '', 'Windows 8.1', ', ', '2017-09-03 10:36:36'),
(36, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-09-03 20:47:07'),
(37, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-09-03 21:25:49'),
(38, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-09-03 21:26:11'),
(39, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-09-03 21:29:30'),
(40, '154.120.108.66', '', 'Chrome', '', 'Windows 8.1', ', ', '2017-09-03 21:44:18'),
(41, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-09-04 02:13:03'),
(42, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-09-11 09:18:02'),
(43, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-09-11 11:19:57'),
(44, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-09-11 11:30:13'),
(45, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-09-11 11:43:03'),
(46, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-09-11 11:43:57'),
(47, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-09-11 20:54:51'),
(48, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-09-12 18:59:07'),
(49, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-09-12 19:57:56'),
(50, '154.120.108.66', '', 'Chrome', '', 'Windows 8.1', ', ', '2017-09-13 23:42:10'),
(51, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-09-13 23:43:50'),
(52, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-09-13 23:43:51'),
(53, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-09-14 10:54:14'),
(54, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-09-15 13:56:37'),
(55, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-09-15 14:03:27'),
(56, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-09-19 17:31:32'),
(57, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-09-19 17:36:47'),
(58, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-10-03 10:47:25'),
(59, '154.120.108.66', '', 'Chrome', '', 'Windows 8.1', ', ', '2017-10-03 22:49:18'),
(60, '154.120.108.66', '', 'Chrome', '', 'Windows 8.1', ', ', '2017-10-04 01:40:12'),
(61, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-10-04 11:47:01'),
(62, '154.120.108.66', '', 'Chrome', '', 'Windows 8.1', ', ', '2017-10-04 12:37:34'),
(63, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-10-05 01:46:20'),
(64, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-10-05 03:07:16'),
(65, '154.120.108.66', '', 'Unknown Browser', '', 'Windows 7', ', ', '2017-10-05 03:40:18'),
(66, '154.120.108.66', '', 'Unknown Browser', '', 'Windows 7', ', ', '2017-10-05 07:18:05'),
(67, '154.120.108.66', '', 'Chrome', '', 'Windows 10', ', ', '2017-10-05 07:18:59'),
(68, '154.120.108.66', '', 'Handheld Browser', '', 'iPhone', ', ', '2017-10-05 07:19:05'),
(69, '154.120.108.66', '', 'Chrome', '', 'Windows 7', ', ', '2017-10-05 10:20:38'),
(70, '154.120.108.66', '', 'Chrome', '', 'Windows 8.1', ', ', '2017-10-05 10:33:32'),
(71, '154.120.108.66', '', 'Chrome', '', 'Windows 7', ', ', '2017-10-05 10:42:45'),
(72, '154.120.108.66', '', 'Chrome', '', 'Windows 7', ', ', '2017-10-05 10:50:37'),
(73, '154.120.108.66', '', 'Chrome', '', 'Windows 7', ', ', '2017-10-05 11:18:28'),
(74, '154.120.108.66', '', 'Handheld Browser', '', 'iPhone', ', ', '2017-10-05 12:09:55'),
(75, '154.120.108.66', '', 'Chrome', '', 'Windows 7', ', ', '2017-10-05 12:12:29'),
(76, '154.120.108.66', '', 'Chrome', '', 'Windows 7', ', ', '2017-10-05 12:44:33'),
(77, '154.120.108.66', '', 'Chrome', '', 'Windows 8.1', ', ', '2017-10-05 13:28:48'),
(78, '154.120.108.66', '', 'Chrome', '', 'Windows 7', ', ', '2017-10-05 13:36:21'),
(79, '154.120.108.66', '', 'Handheld Browser', '', 'Android', ', ', '2017-10-05 23:53:29'),
(80, '154.120.108.66', '', 'Unknown Browser', '', 'Unknown OS Platform', ', ', '2017-10-05 23:56:12'),
(81, '154.120.108.66', '', 'Chrome', '', 'Windows 7', ', ', '2017-10-06 11:52:27'),
(82, '154.120.108.66', '', 'Chrome', '', 'Windows 8.1', ', ', '2017-10-06 13:48:11'),
(83, '154.120.108.66', '', 'Chrome', '', 'Windows 8.1', ', ', '2017-10-06 21:29:20'),
(84, '154.120.108.66', '', 'Chrome', '', 'Windows 8.1', ', ', '2017-10-06 23:58:00'),
(85, '154.120.108.66', '', 'Chrome', '', 'Windows 8.1', ', ', '2017-10-07 02:13:31'),
(86, '154.120.108.66', '', 'Unknown Browser', '', 'Windows 7', ', ', '2017-10-07 14:37:13'),
(87, '154.120.108.66', '', 'Chrome', '', 'Android', ', ', '2017-10-07 18:47:30'),
(88, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-10-07 19:06:27'),
(89, '154.120.108.66', '', 'Chrome', '', 'Windows 10', ', ', '2017-10-07 19:51:42'),
(90, '154.120.108.66', '', 'Handheld Browser', '', 'iPhone', ', ', '2017-10-07 22:17:43'),
(91, '154.120.108.66', '', 'Chrome', '', 'Windows 10', ', ', '2017-10-07 23:10:22'),
(92, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-10-07 23:34:28'),
(93, '197.211.63.63', '', 'Chrome', '', 'Android', 'Lagos, Nigeria', '2017-10-10 20:42:23'),
(94, '154.120.108.66', '', 'Chrome', '', 'Android', ', ', '2017-10-11 17:49:14'),
(95, '197.210.226.180', '', 'Firefox', '', 'Windows 8.1', 'Lagos, Nigeria', '2017-10-12 01:03:00'),
(96, '197.210.226.180', '', 'Firefox', '', 'Windows 8.1', 'Lagos, Nigeria', '2017-10-12 01:11:48'),
(97, '197.211.63.63', '', 'Chrome', '', 'Android', 'Lagos, Nigeria', '2017-10-12 13:39:36'),
(98, '197.211.63.63', '', 'Chrome', '', 'Android', 'Lagos, Nigeria', '2017-10-12 13:42:29'),
(99, '23.101.61.176', '', 'Unknown Browser', '', 'Windows 7', 'County Dublin, Ireland', '2017-10-12 13:52:27'),
(100, '23.101.61.176', '', 'Unknown Browser', '', 'Windows 7', 'County Dublin, Ireland', '2017-10-12 13:52:28'),
(101, '40.78.146.128', '', 'Unknown Browser', '', 'Windows 7', 'IA, United States', '2017-10-12 13:52:49'),
(102, '40.78.146.128', '', 'Unknown Browser', '', 'Windows 7', 'IA, United States', '2017-10-12 13:52:49'),
(103, '197.210.226.173', '', 'Firefox', '', 'Windows 8.1', 'Lagos, Nigeria', '2017-10-12 14:04:07'),
(104, '197.211.63.63', '', 'Chrome', '', 'Android', 'Lagos, Nigeria', '2017-10-12 14:24:17'),
(105, '197.210.226.173', '', 'Firefox', '', 'Windows 8.1', 'Lagos, Nigeria', '2017-10-12 14:37:43'),
(106, '197.211.63.63', '', 'Chrome', '', 'Android', 'Lagos, Nigeria', '2017-10-12 18:15:50'),
(107, '197.210.227.233', '', 'Firefox', '', 'Windows 8.1', 'Lagos, Nigeria', '2017-10-14 00:34:33'),
(108, '197.211.63.63', '', 'Chrome', '', 'Android', 'Lagos, Nigeria', '2017-10-14 18:24:25'),
(109, '197.210.8.171', '', 'Firefox', '', 'Windows 8.1', 'Lagos, Nigeria', '2017-10-15 00:34:49'),
(110, '197.210.8.171', '', 'Chrome', '', 'Windows 8.1', 'Lagos, Nigeria', '2017-10-15 01:13:55'),
(111, '197.210.8.171', '', 'Firefox', '', 'Windows 8.1', 'Lagos, Nigeria', '2017-10-15 01:30:07'),
(112, '197.210.8.171', '', 'Firefox', '', 'Windows 8.1', 'Lagos, Nigeria', '2017-10-15 01:31:58'),
(113, '197.210.227.148', '', 'Chrome', '', 'Windows 8.1', 'Lagos, Nigeria', '2017-10-15 11:45:38'),
(114, '197.210.227.148', '', 'Firefox', '', 'Windows 8.1', 'Lagos, Nigeria', '2017-10-15 11:47:35'),
(115, '197.210.227.253', '', 'Firefox', '', 'Windows 8.1', 'Lagos, Nigeria', '2017-10-15 12:09:26'),
(116, '197.210.226.31', '', 'Firefox', '', 'Windows 8.1', 'Lagos, Nigeria', '2017-10-18 04:40:47'),
(117, '197.210.37.103', '', 'Firefox', '', 'Windows 8.1', ', Nigeria', '2017-10-18 17:25:39'),
(118, '105.112.41.85', '', 'Handheld Browser', '', 'Android', 'Lagos, Nigeria', '2017-10-21 22:21:26'),
(119, '105.112.45.16', '', 'Handheld Browser', '', 'Android', 'Lagos, Nigeria', '2017-10-23 16:24:55'),
(120, '197.210.29.121', '', 'Firefox', '', 'Windows 8.1', 'Lagos, Nigeria', '2017-11-03 23:59:21'),
(121, '197.211.63.68', '', 'Chrome', '', 'Android', 'Lagos, Nigeria', '2017-11-07 12:34:06'),
(122, '197.211.63.68', '', 'Chrome', '', 'Android', 'Lagos, Nigeria', '2017-11-08 11:45:31'),
(123, '41.147.110.30', '', 'Handheld Browser', '', 'Android', 'KwaZulu-Natal, South Africa', '2017-11-10 20:00:06'),
(124, '41.147.110.30', '', 'Chrome', '', 'Windows 10', 'KwaZulu-Natal, South Africa', '2017-11-10 20:08:18'),
(125, '197.229.249.11', '', 'Chrome', '', 'Windows 10', 'KwaZulu-Natal, South Africa', '2017-11-11 15:52:43'),
(126, '197.211.63.70', '', 'Chrome', '', 'Android', 'Lagos, Nigeria', '2017-11-16 19:17:32'),
(127, '197.210.172.14', '', 'Firefox', '', 'Windows 8.1', 'Lagos, Nigeria', '2017-11-23 15:03:00'),
(128, '8.37.230.53', '', 'Handheld Browser', '', 'Android', 'CA, United States', '2017-11-26 15:53:52'),
(129, '8.37.230.53', '', 'Handheld Browser', '', 'Android', 'CA, United States', '2017-11-26 15:59:00'),
(130, '105.112.20.41', '', 'Firefox', '', 'Windows 7', ', Nigeria', '2017-11-27 17:32:02'),
(131, '197.210.24.100', '', 'Firefox', '', 'Windows 8.1', ', Nigeria', '2017-11-30 17:20:25'),
(132, '41.217.116.45', '', 'Chrome', '', 'Windows 7', 'Lagos, Nigeria', '2017-11-30 17:22:10'),
(133, '154.120.108.66', '', 'Firefox', '', 'Windows 8.1', ', ', '2017-11-30 18:48:10'),
(134, '49.207.191.138', '', 'Chrome', '', 'Windows 10', 'Tamil NÄdu, India', '2017-12-05 23:35:09'),
(135, '112.198.242.94', '', 'Chrome', '', 'Windows 7', 'Cavite, Philippines', '2017-12-13 15:55:56'),
(136, '154.118.40.103', '', 'Firefox', '', 'Windows 8.1', 'Lagos, Nigeria', '2017-12-14 16:42:04'),
(137, '154.118.40.103', '', 'Firefox', '', 'Windows 8.1', 'Lagos, Nigeria', '2017-12-14 16:43:14'),
(138, '154.118.40.103', '', 'Firefox', '', 'Windows 8.1', 'Lagos, Nigeria', '2017-12-14 17:08:51'),
(139, '41.250.150.94', '', 'Chrome', '', 'Mac OS X', 'Grand Casablanca, Morocco', '2017-12-15 01:28:30'),
(140, '104.57.8.104', '', 'Chrome', '', 'Windows 10', 'OH, United States', '2017-12-16 23:08:31'),
(141, '104.57.8.104', '', 'Chrome', '', 'Windows 10', 'OH, United States', '2017-12-17 00:27:36'),
(142, '162.217.27.220', '', 'Chrome', '', 'Windows 7', ', Germany', '2017-12-23 21:20:41'),
(143, '73.225.70.43', '', 'Firefox', '', 'Windows 7', 'WA, United States', '2017-12-23 21:40:10'),
(144, '23.226.128.28', '', 'Chrome', '', 'Mac OS X', 'NJ, United States', '2017-12-23 22:01:32'),
(145, '73.179.36.91', '', 'Handheld Browser', '', 'iPhone', 'FL, United States', '2017-12-24 19:26:38'),
(146, '73.179.36.91', '', 'Handheld Browser', '', 'iPhone', 'FL, United States', '2017-12-24 21:16:17'),
(147, '73.179.36.91', '', 'Handheld Browser', '', 'iPhone', 'FL, United States', '2017-12-24 22:27:57'),
(148, '73.179.36.91', '', 'Handheld Browser', '', 'iPhone', 'FL, United States', '2017-12-24 23:07:41'),
(149, '66.249.73.27', '', 'Unknown Browser', '', 'Unknown OS Platform', 'TX, United States', '2017-12-26 22:13:14'),
(150, '66.249.73.25', '', 'Unknown Browser', '', 'Unknown OS Platform', 'TX, United States', '2017-12-26 22:18:15'),
(151, '66.249.73.25', '', 'Unknown Browser', '', 'Unknown OS Platform', 'TX, United States', '2017-12-26 22:18:24'),
(152, '66.249.73.25', '', 'Unknown Browser', '', 'Unknown OS Platform', 'TX, United States', '2017-12-26 22:18:27'),
(153, '66.249.73.25', '', 'Unknown Browser', '', 'Unknown OS Platform', 'TX, United States', '2017-12-26 22:18:29'),
(154, '66.249.73.25', '', 'Unknown Browser', '', 'Unknown OS Platform', 'TX, United States', '2017-12-26 22:22:50'),
(155, '66.249.73.25', '', 'Unknown Browser', '', 'Unknown OS Platform', 'TX, United States', '2017-12-26 22:22:54'),
(156, '41.115.113.66', '', 'Unknown Browser', '', 'Windows 7', 'Gauteng, South Africa', '2017-12-26 23:28:51'),
(157, '41.115.113.66', '', 'Unknown Browser', '', 'Windows 7', 'Gauteng, South Africa', '2017-12-26 23:59:54'),
(158, '73.179.36.91', '', 'Chrome', '', 'Windows 7', 'FL, United States', '2017-12-27 18:03:38'),
(159, '66.249.73.25', '', 'Handheld Browser', '', 'Android', 'TX, United States', '2017-12-28 11:22:40'),
(160, '66.249.73.25', '', 'Handheld Browser', '', 'Android', 'TX, United States', '2017-12-28 14:10:21'),
(161, '66.249.73.26', '', 'Handheld Browser', '', 'Android', 'TX, United States', '2017-12-28 19:25:00'),
(162, '66.249.73.26', '', 'Handheld Browser', '', 'Android', 'TX, United States', '2017-12-29 03:57:51'),
(163, '66.249.69.43', '', 'Handheld Browser', '', 'Android', 'CA, United States', '2017-12-29 11:23:10'),
(164, '66.249.69.45', '', 'Handheld Browser', '', 'Android', 'CA, United States', '2017-12-29 13:39:38'),
(165, '73.179.36.91', '', 'Handheld Browser', '', 'iPhone', 'FL, United States', '2017-12-30 16:17:13'),
(166, '141.226.166.7', '', 'Chrome', '', 'Windows 10', ', Israel', '2017-12-30 23:36:30'),
(167, '66.249.73.27', '', 'Handheld Browser', '', 'Android', 'TX, United States', '2017-12-31 02:54:59'),
(168, '73.179.36.91', '', 'Chrome', '', 'Windows 7', 'FL, United States', '2018-01-05 05:02:58'),
(169, '73.179.36.91', '', 'Chrome', '', 'Windows 7', 'FL, United States', '2018-01-05 05:53:56'),
(170, '105.185.241.25', '', 'Chrome', '', 'Windows 7', 'KwaZulu-Natal, South Africa', '2018-01-08 22:12:07'),
(171, '105.185.241.25', '', 'Chrome', '', 'Windows 7', 'KwaZulu-Natal, South Africa', '2018-01-08 22:16:37'),
(172, '105.185.241.25', '', 'Chrome', '', 'Windows 7', 'KwaZulu-Natal, South Africa', '2018-01-08 22:36:30'),
(173, '42.111.92.108', '', 'Handheld Browser', '', 'Android', 'Delhi, India', '2018-01-09 10:37:43'),
(174, '60.254.66.0', '', 'Chrome', '', 'Windows 8.1', 'Uttar Pradesh, India', '2018-01-10 08:19:00'),
(175, '107.170.96.6', '', 'Firefox', '', 'Windows 7', 'NY, United States', '2018-01-10 08:19:40'),
(176, '107.170.96.6', '', 'Firefox', '', 'Windows 7', 'NY, United States', '2018-01-10 08:19:46'),
(177, '185.195.202.52', '', 'Chrome', '', 'Windows 10', 'Manchester, United Kingdom', '2018-01-17 15:20:51'),
(178, '66.249.93.223', '', 'Handheld Browser', '', 'Android', ', Europe', '2018-01-18 21:21:37'),
(179, '41.113.249.7', '', 'Handheld Browser', '', 'Android', 'Gauteng, South Africa', '2018-01-19 05:27:49'),
(180, '196.21.153.197', '', 'Chrome', '', 'Windows 7', 'Eastern Cape, South Africa', '2018-01-19 10:34:16'),
(181, '73.81.113.154', '', 'Chrome', '', 'Windows 8.1', 'PA, United States', '2018-01-21 16:56:12'),
(182, '108.54.105.77', '', 'Chrome', '', 'Windows 10', 'NY, United States', '2018-01-22 01:18:36'),
(183, '162.251.164.182', '', 'Handheld Browser', '', 'Android', 'CA, United States', '2018-01-24 09:57:08'),
(184, '66.249.93.222', '', 'Handheld Browser', '', 'Android', ', Europe', '2018-01-28 20:12:23'),
(185, '23.125.4.53', '', 'Handheld Browser', '', 'Android', 'GA, United States', '2018-02-02 01:22:49'),
(186, '24.167.249.21', '', 'Chrome', '', 'Mac OS X', 'WI, United States', '2018-02-04 12:24:20'),
(187, '23.101.61.176', '', 'Unknown Browser', '', 'Windows 7', 'County Dublin, Ireland', '2018-02-04 14:38:46'),
(188, '66.249.65.93', '', 'Unknown Browser', '', 'Unknown OS Platform', 'CA, United States', '2018-02-05 05:21:06'),
(189, '66.249.65.94', '', 'Unknown Browser', '', 'Unknown OS Platform', 'CA, United States', '2018-02-05 17:58:56'),
(190, '66.249.65.94', '', 'Unknown Browser', '', 'Unknown OS Platform', 'CA, United States', '2018-02-06 02:49:26'),
(191, '41.57.208.40', '', 'Chrome', '', 'Windows 10', 'Greater Accra, Ghana', '2018-02-06 08:28:28'),
(192, '66.249.65.93', '', 'Unknown Browser', '', 'Unknown OS Platform', 'CA, United States', '2018-02-06 09:08:20'),
(193, '73.179.36.91', '', 'Handheld Browser', '', 'iPhone', 'FL, United States', '2018-02-06 13:12:26'),
(194, '66.249.65.94', '', 'Unknown Browser', '', 'Unknown OS Platform', 'CA, United States', '2018-02-07 02:44:07'),
(195, '66.249.93.222', '', 'Handheld Browser', '', 'Android', ', Europe', '2018-02-07 17:45:39'),
(196, '66.249.79.40', '', 'Unknown Browser', '', 'Unknown OS Platform', 'CA, United States', '2018-02-07 21:36:40'),
(197, '158.69.252.176', '', 'Unknown Browser', '', 'Unknown OS Platform', 'QC, Canada', '2018-02-07 21:54:01'),
(198, '66.249.93.223', '', 'Handheld Browser', '', 'Android', ', Europe', '2018-02-08 07:58:16'),
(199, '69.30.226.234', '', 'Unknown Browser', '', 'Unknown OS Platform', 'MO, United States', '2018-02-08 12:14:35'),
(200, '69.30.226.234', '', 'Unknown Browser', '', 'Unknown OS Platform', 'MO, United States', '2018-02-08 12:16:31'),
(201, '69.30.226.234', '', 'Unknown Browser', '', 'Unknown OS Platform', 'MO, United States', '2018-02-08 12:17:51'),
(202, '69.30.226.234', '', 'Unknown Browser', '', 'Unknown OS Platform', 'MO, United States', '2018-02-08 12:18:01'),
(203, '186.2.182.162', '', 'Handheld Browser', '', 'Android', '00, Curacao', '2018-02-08 12:25:30'),
(204, '169.149.49.159', '', 'Chrome', '', 'Windows 10', 'Jammu and KashmÄ«r, India', '2018-02-09 17:04:39'),
(205, '5.9.61.111', '', 'Unknown Browser', '', 'Unknown OS Platform', ', Germany', '2018-02-09 18:55:20'),
(206, '5.9.61.111', '', 'Unknown Browser', '', 'Unknown OS Platform', ', Germany', '2018-02-09 18:55:22'),
(207, '104.209.188.207', '', 'Unknown Browser', '', 'Windows 7', 'VA, United States', '2018-02-12 20:42:14'),
(208, '149.154.167.164', '', 'Unknown Browser', '', 'Unknown OS Platform', ', United Kingdom', '2018-02-12 20:46:52'),
(209, '105.112.33.212', '', 'Chrome', '', 'Windows 10', 'Lagos, Nigeria', '2018-02-12 20:47:08'),
(210, '66.249.93.222', '', 'Handheld Browser', '', 'Android', ', Europe', '2018-02-14 07:23:36'),
(211, '66.249.70.27', '', 'Unknown Browser', '', 'Unknown OS Platform', 'CA, United States', '2018-02-14 18:36:52'),
(212, '154.120.108.66', '', 'Firefox', '', 'Windows 8', ', ', '2018-03-01 18:24:08'),
(213, '154.120.108.66', '', 'Firefox', '', 'Windows 8', ', ', '2018-03-01 18:33:26'),
(214, '154.120.108.66', '', 'Handheld Browser', '', 'Android', ', ', '2018-03-01 18:57:12'),
(215, '154.120.108.66', '', 'Chrome', '', 'Windows 7', ', ', '2018-03-01 20:18:34'),
(216, '154.120.108.66', '', 'Firefox', '', 'Windows 8', ', ', '2018-03-01 21:07:47'),
(217, '154.120.108.66', '', 'Chrome', '', 'Windows 7', ', ', '2018-03-01 23:24:48'),
(218, '154.120.108.66', '', 'Handheld Browser', '', 'Android', ', ', '2018-03-02 10:32:04'),
(219, '154.120.108.66', '', 'Handheld Browser', '', 'Android', ', ', '2018-03-02 10:32:25'),
(220, '154.120.108.66', '', 'Handheld Browser', '', 'Android', ', ', '2018-03-02 10:34:13'),
(221, '154.120.108.66', '', 'Handheld Browser', '', 'Android', ', ', '2018-03-02 13:01:07'),
(222, '154.120.108.66', '', 'Chrome', '', 'Windows 8.1', ', ', '2018-03-03 23:22:11'),
(223, '154.120.108.66', '', 'Firefox', '', 'Windows 10', ', ', '2018-03-03 23:36:20'),
(224, '154.120.108.66', '', 'Firefox', '', 'Windows 10', ', ', '2018-03-03 23:51:18'),
(225, '154.120.108.66', '', 'Chrome', '', 'Windows 8.1', ', ', '2018-03-03 23:53:21'),
(226, '154.120.108.66', '', 'Chrome', '', 'Windows 8.1', ', ', '2018-03-04 00:16:45'),
(227, '154.120.108.66', '', 'Firefox', '', 'Windows 10', ', ', '2018-03-04 00:19:42'),
(228, '154.120.108.66', '', 'Chrome', '', 'Windows 8.1', ', ', '2018-03-04 00:30:19'),
(229, '154.120.108.66', '', 'Handheld Browser', '', 'Android', ', ', '2018-03-04 00:44:19'),
(230, '154.120.108.66', '', 'Handheld Browser', '', 'Android', ', ', '2018-03-04 01:50:02'),
(231, '154.120.108.66', '', 'Handheld Browser', '', 'Android', ', ', '2018-03-04 02:47:04'),
(232, '154.120.108.66', '', 'Handheld Browser', '', 'Android', ', ', '2018-03-04 02:47:09'),
(233, '154.120.108.66', '', 'Chrome', '', 'Windows 8.1', ', ', '2018-03-04 08:30:36'),
(234, '154.120.108.66', '', 'Firefox', '', 'Windows 8', ', ', '2018-03-04 09:03:12'),
(235, '154.120.108.66', '', 'Handheld Browser', '', 'Android', ', ', '2018-03-04 09:11:56'),
(236, '154.120.108.66', '', 'Chrome', '', 'Windows 8.1', ', ', '2018-03-04 09:14:31'),
(237, '154.120.108.66', '', 'Handheld Browser', '', 'Android', ', ', '2018-03-04 09:14:56'),
(238, '154.120.108.66', '', 'Handheld Browser', '', 'Android', ', ', '2018-03-04 15:00:18'),
(239, '154.120.108.66', '', 'Handheld Browser', '', 'Android', ', ', '2018-03-05 12:55:00'),
(240, '154.120.108.66', '', 'Chrome', '', 'Windows 7', ', ', '2018-03-05 21:46:07'),
(241, '154.120.108.66', '', 'Chrome', '', 'Windows 7', ', ', '2018-03-05 21:53:48'),
(242, '154.120.108.66', '', 'Unknown Browser', '', 'Unknown OS Platform', ', ', '2018-03-10 16:54:43'),
(243, '154.120.108.66', '', 'Handheld Browser', '', 'Android', ', ', '2018-03-13 21:11:22'),
(244, '154.120.108.66', '', 'Handheld Browser', '', 'Android', ', ', '2018-03-14 00:12:05'),
(245, '154.120.108.66', '', 'Firefox', '', 'Windows 8', ', ', '2018-03-15 18:06:40'),
(246, '154.120.108.66', '', 'Handheld Browser', '', 'Android', ', ', '2018-03-15 18:10:18'),
(247, '168.235.195.191', '', 'Handheld Browser', '', 'Android', 'CA, United States', '2018-03-15 18:57:58'),
(248, '154.118.68.100', '', 'Handheld Browser', '', 'Android', 'Lagos, Nigeria', '2018-03-15 22:34:49'),
(249, '180.76.15.12', '', 'Unknown Browser', '', 'Unknown OS Platform', 'Beijing, China', '2018-03-15 22:38:10');

-- --------------------------------------------------------

--
-- Table structure for table `website_settings`
--

CREATE TABLE `website_settings` (
  `id` int(11) NOT NULL,
  `biz_name` varchar(255) NOT NULL,
  `site_name` varchar(100) NOT NULL,
  `site_title` varchar(100) NOT NULL,
  `site_description` varchar(255) NOT NULL,
  `site_url` varchar(100) NOT NULL,
  `favicon_url` varchar(225) NOT NULL,
  `logo_url` varchar(255) NOT NULL,
  `biz_addr` varchar(225) NOT NULL,
  `biz_city` varchar(100) NOT NULL,
  `biz_state` varchar(100) NOT NULL,
  `biz_country` varchar(100) NOT NULL,
  `biz_phone` double NOT NULL,
  `chat_code` text NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `website_settings`
--

INSERT INTO `website_settings` (`id`, `biz_name`, `site_name`, `site_title`, `site_description`, `site_url`, `favicon_url`, `logo_url`, `biz_addr`, `biz_city`, `biz_state`, `biz_country`, `biz_phone`, `chat_code`, `last_modified`) VALUES
(1, 'ojaolawebsolution Websolution', 'Royacle', 'Welcome to Royacle', 'Here is my default site description.....', 'www.ojaolawebsolution.com', '../images/6bbb860bc90326d162752565df3199fc.png', '../images/a0912863278a4138e1c18f7b42ed9e2d.png', '12, Olawaiye Street, Anifowoshe', 'Ikeja', 'Lagos', 'Nigeria', 2348000000000, '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5970bab20d1bb37f1f7a5144/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', '2017-10-03 10:50:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `admin_login_activity`
--
ALTER TABLE `admin_login_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_info`
--
ALTER TABLE `bank_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configuration`
--
ALTER TABLE `configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`ctn_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `facebook_graph`
--
ALTER TABLE `facebook_graph`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `get_help`
--
ALTER TABLE `get_help`
  ADD PRIMARY KEY (`gh_id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `messaging`
--
ALTER TABLE `messaging`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ord_id`);

--
-- Indexes for table `provide_help`
--
ALTER TABLE `provide_help`
  ADD PRIMARY KEY (`ph_id`);

--
-- Indexes for table `referral`
--
ALTER TABLE `referral`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ph_id` (`ph_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`login_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `user_credibility`
--
ALTER TABLE `user_credibility`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_login_activity`
--
ALTER TABLE `user_login_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_notification`
--
ALTER TABLE `user_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `website_settings`
--
ALTER TABLE `website_settings`
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
-- AUTO_INCREMENT for table `admin_login_activity`
--
ALTER TABLE `admin_login_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `bank_info`
--
ALTER TABLE `bank_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `configuration`
--
ALTER TABLE `configuration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `ctn_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `facebook_graph`
--
ALTER TABLE `facebook_graph`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `get_help`
--
ALTER TABLE `get_help`
  MODIFY `gh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `slide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `messaging`
--
ALTER TABLE `messaging`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ord_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `provide_help`
--
ALTER TABLE `provide_help`
  MODIFY `ph_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `referral`
--
ALTER TABLE `referral`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `user_credibility`
--
ALTER TABLE `user_credibility`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user_login_activity`
--
ALTER TABLE `user_login_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `user_notification`
--
ALTER TABLE `user_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `website_settings`
--
ALTER TABLE `website_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
