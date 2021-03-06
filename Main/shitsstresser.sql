-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2020 at 05:04 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shitsstresser`
--

-- --------------------------------------------------------

--
-- Table structure for table `actions`
--

CREATE TABLE `actions` (
  `id` int(64) NOT NULL,
  `admin` varchar(64) NOT NULL,
  `client` varchar(64) NOT NULL,
  `action` varchar(6444) NOT NULL,
  `date` int(21) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `addfunds`
--

CREATE TABLE `addfunds` (
  `ID` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `transaction_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `vip` int(11) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `length` int(11) NOT NULL,
  `price` float NOT NULL,
  `private` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addons`
--

INSERT INTO `addons` (`ID`, `name`, `vip`, `unit`, `length`, `price`, `private`) VALUES
(1, '1 Concurrent', 1, 'Month', 1, 15, 0),
(2, '2000 Seconds', 1, 'Month', 1, 20, 0);

-- --------------------------------------------------------

--
-- Table structure for table `api`
--

CREATE TABLE `api` (
  `id` int(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `api` varchar(1024) NOT NULL,
  `slots` int(3) NOT NULL,
  `methods` varchar(2000) NOT NULL,
  `vip` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `lastUsed` int(32) NOT NULL,
  `lastip` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

CREATE TABLE `balance` (
  `User_ID` int(11) DEFAULT NULL,
  `Plan_ID` int(2) DEFAULT NULL,
  `Balance` double(20,2) NOT NULL,
  `concurrent` int(3) DEFAULT NULL,
  `Created_On` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Updated_On` timestamp NULL DEFAULT NULL,
  `mbt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `balance`
--

INSERT INTO `balance` (`User_ID`, `Plan_ID`, `Balance`, `concurrent`, `Created_On`, `Updated_On`, `mbt`) VALUES
(12534, NULL, 0.00, 1, '2020-04-05 12:46:31', NULL, 200);

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE `bans` (
  `username` varchar(15) NOT NULL,
  `reason` varchar(1024) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blacklist`
--

CREATE TABLE `blacklist` (
  `ID` int(11) NOT NULL,
  `data` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dailygift`
--

CREATE TABLE `dailygift` (
  `ID` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `gift` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dailygiftwon`
--

CREATE TABLE `dailygiftwon` (
  `ID` int(11) NOT NULL,
  `username` text NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(3) NOT NULL,
  `question` varchar(1024) NOT NULL,
  `answer` varchar(5000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `question`, `answer`) VALUES
(1, 'Refound ?', 'Usually no since we pay for bandwidth, but if it\'s a fair reason such as \r\ndowntime or heavy mistakes on our part we will either compensate you \r\nwith added days or refund you.\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `giftcards`
--

CREATE TABLE `giftcards` (
  `ID` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `planID` int(11) NOT NULL,
  `claimedby` int(11) NOT NULL,
  `dateClaimed` int(11) NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `giftlogs`
--

CREATE TABLE `giftlogs` (
  `id` int(11) NOT NULL,
  `user` varchar(65) NOT NULL,
  `amount` varchar(5) NOT NULL,
  `date` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gifts`
--

CREATE TABLE `gifts` (
  `ID` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `bal` varchar(255) NOT NULL DEFAULT '0',
  `claimedby` int(11) NOT NULL,
  `dateClaimed` int(11) NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loginlogss`
--

CREATE TABLE `loginlogss` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `date` int(11) NOT NULL,
  `results` varchar(50) NOT NULL,
  `country` varchar(100) NOT NULL,
  `city` varchar(500) NOT NULL,
  `hostname` varchar(500) NOT NULL,
  `http` varchar(800) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginlogss`
--

INSERT INTO `loginlogss` (`id`, `username`, `ip`, `date`, `results`, `country`, `city`, `hostname`, `http`) VALUES
(33, 'pusiga', '9027baf6144c234474100a781afb30290128f0a6', 1586090801, 'Successful', 'Cannot Be Found', 'Cannot Be Found', 'DESKTOP-CQ8P8LG', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.162 Safari/537.36 Edg/80.0.361.109'),
(34, 'NullingOVH', '9027baf6144c234474100a781afb30290128f0a6', 1586093686, 'Successful', 'Cannot Be Found', 'Cannot Be Found', 'DESKTOP-CQ8P8LG', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.162 Safari/537.36 Edg/80.0.361.109');

-- --------------------------------------------------------

--
-- Table structure for table `logins_failed`
--

CREATE TABLE `logins_failed` (
  `ID` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 NOT NULL,
  `ip` varchar(250) CHARACTER SET latin1 NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `login_history`
--

CREATE TABLE `login_history` (
  `id` int(11) NOT NULL,
  `username` varchar(75) NOT NULL,
  `password` text NOT NULL,
  `ip` varchar(128) NOT NULL,
  `date` int(16) NOT NULL,
  `status` text NOT NULL,
  `platform` varchar(512) DEFAULT NULL,
  `method` text NOT NULL,
  `country` text NOT NULL,
  `hide` varchar(25) NOT NULL DEFAULT 'off'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_history`
--

INSERT INTO `login_history` (`id`, `username`, `password`, `ip`, `date`, `status`, `platform`, `method`, `country`, `hide`) VALUES
(8222, 'pusiga', 'XX', '9027baf6144c234474100a781afb30290128f0a6', 1586090801, 'success', 'PC', 'System_Login', 'Crime', 'off'),
(8223, 'NullingOVH', 'XX', '9027baf6144c234474100a781afb30290128f0a6', 1586093686, 'success', 'PC', 'System_Login', 'Crime', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user` varchar(15) NOT NULL,
  `ip` varchar(1024) NOT NULL,
  `port` int(5) NOT NULL,
  `time` int(4) NOT NULL,
  `method` varchar(10) NOT NULL,
  `date` int(11) NOT NULL,
  `chart` varchar(255) NOT NULL,
  `stopped` int(1) NOT NULL DEFAULT 0,
  `handler` varchar(50) NOT NULL,
  `vip` int(11) NOT NULL,
  `totalservers` int(11) NOT NULL,
  `api` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `messageid` int(11) NOT NULL,
  `ticketid` int(11) NOT NULL,
  `content` text NOT NULL,
  `sender` varchar(30) NOT NULL,
  `date` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `methods`
--

CREATE TABLE `methods` (
  `id` int(2) NOT NULL,
  `name` varchar(30) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `type` varchar(6) NOT NULL,
  `vip` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `ID` int(11) NOT NULL,
  `color` varchar(25) NOT NULL,
  `icon` varchar(25) NOT NULL,
  `title` varchar(1024) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `username` varchar(15) NOT NULL,
  `read` int(1) NOT NULL DEFAULT 0,
  `date` int(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `content`, `username`, `read`, `date`) VALUES
(2194, 'Thanks for joining vStress.io', 'pusiga', 0, 1586090791);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `ID` int(11) NOT NULL,
  `IP` text NOT NULL,
  `planID` int(11) NOT NULL,
  `invoiceID` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `username` text NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `vip` int(11) NOT NULL,
  `mbt` int(11) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `length` int(11) NOT NULL,
  `price` float NOT NULL,
  `concurrents` int(11) NOT NULL,
  `private` int(1) NOT NULL,
  `api` int(1) NOT NULL DEFAULT 0,
  `totalservers` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`ID`, `name`, `vip`, `mbt`, `unit`, `length`, `price`, `concurrents`, `private`, `api`, `totalservers`) VALUES
(1, 'OWNERS', 1, 2000000, 'Years', 200, 999, 200, 1, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `registerlogs`
--

CREATE TABLE `registerlogs` (
  `id` int(11) NOT NULL,
  `username` varchar(15) CHARACTER SET latin1 NOT NULL,
  `ip` varchar(15) CHARACTER SET latin1 NOT NULL,
  `date` int(11) NOT NULL,
  `country` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `registerlogs`
--

INSERT INTO `registerlogs` (`id`, `username`, `ip`, `date`, `country`) VALUES
(1652, 'pusiga', '9027baf6144c234', 1586090791, 'XX');

-- --------------------------------------------------------

--
-- Table structure for table `remotecontrol`
--

CREATE TABLE `remotecontrol` (
  `id` int(255) NOT NULL,
  `userid` int(11) NOT NULL,
  `info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `report` varchar(644) NOT NULL,
  `date` int(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `sitename` varchar(1024) NOT NULL,
  `url` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `cooldown` int(11) NOT NULL,
  `cooldownTime` int(11) NOT NULL,
  `paypal` varchar(50) NOT NULL,
  `bitcoin` varchar(50) NOT NULL,
  `maintaince` varchar(100) NOT NULL,
  `rotation` int(1) NOT NULL DEFAULT 0,
  `system` varchar(7) NOT NULL,
  `testboots` int(1) NOT NULL,
  `key` varchar(100) NOT NULL,
  `issuerId` varchar(50) NOT NULL,
  `coinpayments` varchar(50) NOT NULL,
  `ipnSecret` varchar(100) NOT NULL,
  `google_site` varchar(644) NOT NULL,
  `google_secret` varchar(644) NOT NULL,
  `btc_address` varchar(64) NOT NULL,
  `secretKey` varchar(50) NOT NULL,
  `paypal_email` varchar(64) NOT NULL,
  `cloudflare_set` int(1) NOT NULL,
  `bootername_1` varchar(30) NOT NULL,
  `bootername_2` varchar(30) NOT NULL,
  `giftchances` int(5) NOT NULL,
  `giftsystem` int(1) NOT NULL DEFAULT 0,
  `theme` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`sitename`, `url`, `description`, `cooldown`, `cooldownTime`, `paypal`, `bitcoin`, `maintaince`, `rotation`, `system`, `testboots`, `key`, `issuerId`, `coinpayments`, `ipnSecret`, `google_site`, `google_secret`, `btc_address`, `secretKey`, `paypal_email`, `cloudflare_set`, `bootername_1`, `bootername_2`, `giftchances`, `giftsystem`, `theme`) VALUES
('NULLED BY BLIZZARD STRESSER NULLINGOVH', 'https://SHITSTRESSER/panel/', 'NULLED BY BLIZZARD STRESSER NULLINGOVH', 0, 1540382151, '0', '1', '', 0, 'api', 0, '', '', '', '123453923Ansuiaj19msA', '', '', '', '', '', 0, 'Shit', 'Stresser', 3, 1, 'bg-theme bg-theme1');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `priority` varchar(50) NOT NULL,
  `department` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL,
  `username` varchar(15) NOT NULL,
  `lastreply` varchar(10) NOT NULL,
  `read` int(1) NOT NULL DEFAULT 0,
  `time` int(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` int(11) NOT NULL,
  `sender` varchar(65) NOT NULL,
  `receiver` varchar(65) NOT NULL,
  `amountsent` int(65) NOT NULL,
  `date` int(15) NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `rank` int(11) NOT NULL DEFAULT 0,
  `membership` int(11) NOT NULL,
  `expire` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `balance` varchar(255) NOT NULL DEFAULT '0',
  `activity` int(64) NOT NULL DEFAULT 0,
  `atime` int(11) NOT NULL,
  `aserv` int(11) NOT NULL,
  `aconcu` int(11) NOT NULL,
  `avip` int(11) NOT NULL,
  `lastip` varchar(20) NOT NULL,
  `lastlogin` int(11) NOT NULL,
  `lastact` int(11) NOT NULL,
  `security_question` varchar(200) NOT NULL DEFAULT '0',
  `answer_question` varchar(255) NOT NULL DEFAULT '0',
  `ip_address` varchar(35) NOT NULL DEFAULT '0',
  `ip_address_api` varchar(25) NOT NULL DEFAULT '0',
  `log_redirect` varchar(60) NOT NULL DEFAULT '0',
  `code_account` varchar(5) NOT NULL DEFAULT '0',
  `code` varchar(15) NOT NULL DEFAULT '0',
  `reset` varchar(15) NOT NULL DEFAULT '0',
  `dailygiftdate` int(11) NOT NULL,
  `apikey` varchar(40) NOT NULL,
  `activation` int(5) NOT NULL DEFAULT 0,
  `activation_code` varchar(255) NOT NULL DEFAULT '0',
  `spin` int(5) NOT NULL,
  `byhub` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `username`, `password`, `email`, `rank`, `membership`, `expire`, `status`, `balance`, `activity`, `atime`, `aserv`, `aconcu`, `avip`, `lastip`, `lastlogin`, `lastact`, `security_question`, `answer_question`, `ip_address`, `ip_address_api`, `log_redirect`, `code_account`, `code`, `reset`, `dailygiftdate`, `apikey`, `activation`, `activation_code`, `spin`, `byhub`) VALUES
(12534, 'NullingOVH', 'e886ef2c50fa60660e82e2f7cf49524b0b0103b9', 'pusiga@gmail.com', 69, 0, 0, 0, '0', 1586098191, 0, 0, 0, 0, '9027baf6144c23447410', 1586093686, 1586093686, '0', '0', '0', '0', '0', '0', '0', '0', 1586177408, '0', 1, 'e886ef2c50fa60660e82e2f7cf49524b0b0103b9', 1, '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `addfunds`
--
ALTER TABLE `addfunds`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `api`
--
ALTER TABLE `api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blacklist`
--
ALTER TABLE `blacklist`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `dailygift`
--
ALTER TABLE `dailygift`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `dailygiftwon`
--
ALTER TABLE `dailygiftwon`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `giftcards`
--
ALTER TABLE `giftcards`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `giftlogs`
--
ALTER TABLE `giftlogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gifts`
--
ALTER TABLE `gifts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `loginlogss`
--
ALTER TABLE `loginlogss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logins_failed`
--
ALTER TABLE `logins_failed`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `login_history`
--
ALTER TABLE `login_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`ip`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`messageid`);

--
-- Indexes for table `methods`
--
ALTER TABLE `methods`
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `registerlogs`
--
ALTER TABLE `registerlogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `remotecontrol`
--
ALTER TABLE `remotecontrol`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `sitename` (`sitename`(767));

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actions`
--
ALTER TABLE `actions`
  MODIFY `id` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=613;

--
-- AUTO_INCREMENT for table `addfunds`
--
ALTER TABLE `addfunds`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=507;

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `api`
--
ALTER TABLE `api`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=472;

--
-- AUTO_INCREMENT for table `blacklist`
--
ALTER TABLE `blacklist`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `dailygift`
--
ALTER TABLE `dailygift`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dailygiftwon`
--
ALTER TABLE `dailygiftwon`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `giftcards`
--
ALTER TABLE `giftcards`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=404;

--
-- AUTO_INCREMENT for table `giftlogs`
--
ALTER TABLE `giftlogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gifts`
--
ALTER TABLE `gifts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412;

--
-- AUTO_INCREMENT for table `loginlogss`
--
ALTER TABLE `loginlogss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `logins_failed`
--
ALTER TABLE `logins_failed`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login_history`
--
ALTER TABLE `login_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8224;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `messageid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `methods`
--
ALTER TABLE `methods`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1278;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2195;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1101;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `registerlogs`
--
ALTER TABLE `registerlogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1653;

--
-- AUTO_INCREMENT for table `remotecontrol`
--
ALTER TABLE `remotecontrol`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=850;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12535;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
