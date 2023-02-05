
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Database: `worldeng_blinkit`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrators`
--

CREATE TABLE `administrators` (
  `user_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(150) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `profile_img` varchar(256) NOT NULL,
  `role` tinyint(4) NOT NULL COMMENT '1-admin,2-demo',
  `token` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrators`
--

INSERT INTO `administrators` (`user_id`, `email`, `password`, `username`, `full_name`, `profile_img`, `role`, `token`) VALUES
(1, 'bino@dreamguys.co.in', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'Admin', 'uploads/profile_img/temp/1675571402.png', 1, '1527jtRTJMosIlY'),
(2, 'bino+1@dreamguys.co.in', '21232f297a57a5a743894a0e4a801fc3', 'demo', 'Demo', 'uploads/profile_img/temp/1604546524.png', 2, '1527jtRTJMosIlY');

-- --------------------------------------------------------

--
-- Table structure for table `admin_access`
--

CREATE TABLE `admin_access` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `access` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_access`
--

INSERT INTO `admin_access` (`id`, `admin_id`, `module_id`, `access`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 3, 1),
(4, 1, 4, 1),
(5, 1, 5, 1),
(6, 1, 6, 1),
(7, 1, 7, 1),
(8, 1, 8, 1),
(9, 1, 9, 1),
(10, 1, 10, 1),
(11, 1, 11, 1),
(12, 1, 12, 1),
(13, 1, 13, 1),
(14, 1, 14, 1),
(15, 2, 1, 1),
(16, 2, 2, 1),
(17, 2, 3, 1),
(18, 2, 4, 1),
(19, 2, 5, 1),
(20, 2, 6, 1),
(21, 2, 7, 1),
(22, 2, 8, 1),
(23, 2, 9, 1),
(24, 2, 10, 1),
(25, 2, 11, 1),
(26, 2, 12, 1),
(27, 2, 13, 1),
(28, 2, 14, 1),
(29, 1, 15, 1),
(30, 2, 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_commission`
--

CREATE TABLE `admin_commission` (
  `id` int(11) NOT NULL,
  `admin_id` tinyint(1) NOT NULL,
  `commission` tinyint(5) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_commission`
--

INSERT INTO `admin_commission` (`id`, `admin_id`, `commission`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 15, '1', '2020-06-26 11:57:06', '2020-06-26 13:41:58');

-- --------------------------------------------------------

--
-- Table structure for table `admin_modules`
--

CREATE TABLE `admin_modules` (
  `id` int(11) NOT NULL,
  `module_name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_modules`
--

INSERT INTO `admin_modules` (`id`, `module_name`, `status`) VALUES
(1, 'Admin Users', 1),
(2, 'Categories', 1),
(3, 'Sub Categories', 1),
(4, 'Services', 1),
(5, 'Booking List', 1),
(6, 'Payments', 1),
(7, 'Rating Type', 1),
(8, 'Ratings', 1),
(9, 'Subscriptions', 1),
(10, 'Wallet', 1),
(11, 'Revenue', 1),
(12, 'Service Providers', 1),
(13, 'Users', 1),
(14, 'Settings', 1),
(15, 'Email Templates', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_payment`
--

CREATE TABLE `admin_payment` (
  `id` int(11) NOT NULL,
  `account_holder_name` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `account_iban` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `bank_address` varchar(255) NOT NULL,
  `sort_code` varchar(255) NOT NULL,
  `routing_number` varchar(255) NOT NULL,
  `account_ifsc` varchar(255) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `booking_id` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app_language_management`
--

CREATE TABLE `app_language_management` (
  `sno` int(11) NOT NULL,
  `page_key` varchar(500) DEFAULT NULL,
  `lang_key` text DEFAULT NULL,
  `lang_value` text DEFAULT NULL,
  `placeholder` text DEFAULT NULL,
  `validation1` text DEFAULT NULL,
  `validation2` text DEFAULT NULL,
  `validation3` text DEFAULT NULL,
  `type` varchar(225) DEFAULT NULL,
  `language` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `language` varchar(150) NOT NULL,
  `language_value` varchar(25) NOT NULL,
  `tag` varchar(100) NOT NULL,
  `default_language` int(11) NOT NULL COMMENT '1-default',
  `status` tinyint(5) NOT NULL DEFAULT 2 COMMENT '1.active 2.inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `language`, `language_value`, `tag`, `default_language`, `status`) VALUES
(1, 'English', 'en', '', 1, 1),
(5, 'German', 'ge', 'ltr', 0, 2),
(9, 'Arabic', 'ar', 'rtl', 0, 1),
(10, 'Tamil', 'ta', 'ltr', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `language_management`
--

CREATE TABLE `language_management` (
  `sno` int(11) NOT NULL,
  `lang_key` text DEFAULT NULL,
  `lang_value` text DEFAULT NULL,
  `language` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language_management`
--


-- Table structure for table `paytabs_details`
--

CREATE TABLE `paytabs_details` (
  `id` int(11) NOT NULL,
  `sandbox_email` varchar(50) NOT NULL,
  `sandbox_secretkey` varchar(500) NOT NULL,
  `email` varchar(50) NOT NULL,
  `secretkey` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `paytabs_details`
--

INSERT INTO `paytabs_details` (`id`, `sandbox_email`, `sandbox_secretkey`, `email`, `secretkey`) VALUES
(1, 'balaji@dreamguys.co.in', 'MYvcf5Z98ys4rJGkbY9qoorzjN8l0pmNoSZDXZM6yfbZYRj9QtzeR0ObNWxOmUCLMBoKAbQ9q18oTsyKV8ZN9NZXKwM7qoSdZgXA', 'balaji@dreamguys.co.in', 'MYvcf5Z98ys4rJGkbY9qoorzjN8l0pmNoSZDXZM6yfbZYRj9QtzeR0ObNWxOmUCLMBoKAbQ9q18oTsyKV8ZN9NZXKwM7qoSdZgXA');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobileno` varchar(225) NOT NULL,
  `country_code` varchar(255) NOT NULL,
  `currency_code` varchar(50) DEFAULT NULL,
  `share_code` varchar(20) DEFAULT NULL,
  `category` int(11) NOT NULL,
  `subcategory` int(11) NOT NULL,
  `profile_img` varchar(225) NOT NULL,
  `token` varchar(225) NOT NULL,
  `dob` date DEFAULT NULL,
  `otp` varchar(225) NOT NULL,
  `account_holder_name` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `account_iban` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `bank_address` varchar(255) NOT NULL,
  `sort_code` varchar(255) NOT NULL,
  `routing_number` varchar(255) NOT NULL,
  `account_ifsc` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1-active,2-inactive,0-delete',
  `delete_status` varchar(1) NOT NULL DEFAULT '0' COMMENT '1-delete,0-not delete',
  `usertype` varchar(1) NOT NULL COMMENT '1- existing user, 2- new user',
  `type` int(1) NOT NULL DEFAULT 1,
  `last_login` datetime NOT NULL,
  `last_logout` datetime DEFAULT NULL,
  `is_agree` int(10) DEFAULT NULL,
  `is_online` int(10) DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `providers`
--

INSERT INTO `providers` (`id`, `name`, `email`, `password`, `mobileno`, `country_code`, `currency_code`, `share_code`, `category`, `subcategory`, `profile_img`, `token`, `dob`, `otp`, `account_holder_name`, `account_number`, `account_iban`, `bank_name`, `bank_address`, `sort_code`, `routing_number`, `account_ifsc`, `created_at`, `updated_at`, `status`, `delete_status`, `usertype`, `type`, `last_login`, `last_logout`, `is_agree`, `is_online`) VALUES
(2, '', '', '', '', '', NULL, NULL, 0, 0, '', '', NULL, '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '0', '', 1, '0000-00-00 00:00:00', NULL, NULL, 2),
(24, 'raj', 'raj@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '9234696566', 'IN', 'INR', NULL, 3, 0, '', '', NULL, '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '0', '', 1, '2023-02-05 11:08:22', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `provider_address`
--

CREATE TABLE `provider_address` (
  `id` int(10) NOT NULL,
  `provider_id` int(10) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `country_id` int(10) DEFAULT NULL,
  `state_id` int(10) DEFAULT NULL,
  `city_id` int(10) DEFAULT NULL,
  `pincode` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  `created_by` int(10) DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rating_review`
--

CREATE TABLE `rating_review` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `rating` float(2,1) NOT NULL,
  `review` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 1 COMMENT '1-active,2-inactive',
  `delete_status` int(11) NOT NULL DEFAULT 0 COMMENT '1-delete,0 not delete',
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rating_type`
--

CREATE TABLE `rating_type` (
  `id` int(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0 COMMENT '0-active,1- inactive',
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating_type`
--

INSERT INTO `rating_type` (`id`, `name`, `status`, `created`) VALUES
(1, 'Good', 1, '0000-00-00 00:00:00'),
(2, 'Excellent', 1, '0000-00-00 00:00:00'),
(3, 'Normal', 1, '0000-00-00 00:00:00'),
(4, 'High', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `razorpay_contact`
--

CREATE TABLE `razorpay_contact` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rp_contactid` varchar(100) NOT NULL,
  `entity` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `reference_id` varchar(255) NOT NULL,
  `batch_id` varchar(50) DEFAULT NULL,
  `active` varchar(10) NOT NULL,
  `accountnumber` varchar(50) NOT NULL,
  `mode` varchar(50) NOT NULL,
  `purpose` varchar(50) NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Table structure for table `subscription_details`
--

CREATE TABLE `subscription_details` (
  `id` int(11) NOT NULL,
  `subscription_id` int(11) NOT NULL,
  `subscriber_id` int(11) NOT NULL,
  `subscription_date` datetime NOT NULL,
  `expiry_date_time` datetime NOT NULL,
  `type` int(1) NOT NULL COMMENT '1-provider,2-user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_details_history`
--

CREATE TABLE `subscription_details_history` (
  `id` int(11) NOT NULL,
  `subscription_id` int(11) NOT NULL,
  `subscriber_id` int(11) NOT NULL,
  `subscription_date` datetime NOT NULL,
  `expiry_date_time` datetime NOT NULL,
  `type` int(1) NOT NULL COMMENT '1-provider,2-user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_fee`
--

CREATE TABLE `subscription_fee` (
  `id` int(11) NOT NULL,
  `subscription_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fee` double(10,2) NOT NULL,
  `currency_code` char(5) NOT NULL,
  `duration` int(11) NOT NULL COMMENT 'Duration in months',
  `fee_description` tinytext NOT NULL,
  `status` int(11) NOT NULL COMMENT '0-inactive,1-active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_payment`
--

CREATE TABLE `subscription_payment` (
  `id` int(11) NOT NULL,
  `sub_id` int(11) NOT NULL,
  `subscription_id` int(11) NOT NULL,
  `subscriber_id` int(11) NOT NULL,
  `subscription_date` datetime NOT NULL,
  `tokenid` text NOT NULL,
  `payment_details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` smallint(6) NOT NULL,
  `key` varchar(250) NOT NULL,
  `value` mediumtext NOT NULL,
  `system` tinyint(150) NOT NULL DEFAULT 1,
  `groups` varchar(150) NOT NULL,
  `update_date` date NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Table structure for table `wallet_table`
--

CREATE TABLE `wallet_table` (
  `id` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `currency_code` varchar(25) DEFAULT NULL,
  `user_provider_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `wallet_amt` float NOT NULL,
  `reason` varchar(1000) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transaction_history`
--

CREATE TABLE `wallet_transaction_history` (
  `id` int(11) NOT NULL,
  `token` varchar(60) NOT NULL COMMENT 'user or provider token',
  `currency_code` varchar(25) DEFAULT NULL,
  `user_provider_id` int(11) NOT NULL COMMENT 'user or provider ids',
  `type` int(11) NOT NULL COMMENT 'provider 1,user 2',
  `tokenid` varchar(500) NOT NULL,
  `payment_detail` varchar(10000) NOT NULL,
  `charge_id` varchar(200) DEFAULT '1',
  `transaction_id` float NOT NULL,
  `exchange_rate` float DEFAULT 0,
  `paid_status` varchar(100) NOT NULL,
  `cust_id` varchar(200) NOT NULL,
  `card_id` varchar(200) NOT NULL,
  `total_amt` float NOT NULL,
  `fee_amt` float NOT NULL,
  `net_amt` float NOT NULL,
  `amount_refund` float DEFAULT 0,
  `current_wallet` float NOT NULL,
  `credit_wallet` float DEFAULT 0,
  `debit_wallet` float DEFAULT 0,
  `avail_wallet` float DEFAULT 0,
  `reason` varchar(1000) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `update_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wallet_withdraw`
--

CREATE TABLE `wallet_withdraw` (
  `id` int(11) NOT NULL,
  `user_id` tinyint(2) NOT NULL,
  `amount` varchar(25) NOT NULL,
  `currency_code` varchar(10) NOT NULL,
  `request_payment` varchar(25) NOT NULL,
  `transaction_status` tinyint(2) NOT NULL,
  `transaction_date` date NOT NULL,
  `status` tinyint(2) NOT NULL,
  `created_by` tinyint(2) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrators`
--
ALTER TABLE `administrators`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `admin_access`
--
ALTER TABLE `admin_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_commission`
--
ALTER TABLE `admin_commission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_modules`
--
ALTER TABLE `admin_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_payment`
--
ALTER TABLE `admin_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_language_management`
--
ALTER TABLE `app_language_management`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `bank_account`
--
ALTER TABLE `bank_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_service`
--
ALTER TABLE `book_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_hours`
--
ALTER TABLE `business_hours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_table`
--
ALTER TABLE `chat_table`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_form_details`
--
ALTER TABLE `contact_form_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_reply`
--
ALTER TABLE `contact_reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_table`
--
ALTER TABLE `country_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency_rate`
--
ALTER TABLE `currency_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device_details`
--
ALTER TABLE `device_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`template_id`);

--
-- Indexes for table `footer_menu`
--
ALTER TABLE `footer_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_submenu`
--
ALTER TABLE `footer_submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forget_password_det`
--
ALTER TABLE `forget_password_det`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language_management`
--
ALTER TABLE `language_management`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `mobile_otp`
--
ALTER TABLE `mobile_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_table`
--
ALTER TABLE `notification_table`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paypal_payment_gateways`
--
ALTER TABLE `paypal_payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paypal_transaction`
--
ALTER TABLE `paypal_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paytabs_details`
--
ALTER TABLE `paytabs_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provider_address`
--
ALTER TABLE `provider_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating_review`
--
ALTER TABLE `rating_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating_type`
--
ALTER TABLE `rating_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `razorpay_contact`
--
ALTER TABLE `razorpay_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `razorpay_fund_account`
--
ALTER TABLE `razorpay_fund_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `razorpay_gateway`
--
ALTER TABLE `razorpay_gateway`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `razorpay_payouts`
--
ALTER TABLE `razorpay_payouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revenue`
--
ALTER TABLE `revenue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services_image`
--
ALTER TABLE `services_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stripe_bank_details`
--
ALTER TABLE `stripe_bank_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stripe_customer_card_details`
--
ALTER TABLE `stripe_customer_card_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stripe_customer_table`
--
ALTER TABLE `stripe_customer_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stripe_provider_card_details`
--
ALTER TABLE `stripe_provider_card_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stripe_provider_table`
--
ALTER TABLE `stripe_provider_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_details`
--
ALTER TABLE `subscription_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_details_history`
--
ALTER TABLE `subscription_details_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_fee`
--
ALTER TABLE `subscription_fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_payment`
--
ALTER TABLE `subscription_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theme_color_change`
--
ALTER TABLE `theme_color_change`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_table`
--
ALTER TABLE `wallet_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_transaction_history`
--
ALTER TABLE `wallet_transaction_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_withdraw`
--
ALTER TABLE `wallet_withdraw`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrators`
--
ALTER TABLE `administrators`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_access`
--
ALTER TABLE `admin_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `admin_commission`
--
ALTER TABLE `admin_commission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_modules`
--
ALTER TABLE `admin_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `admin_payment`
--
ALTER TABLE `admin_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_language_management`
--
ALTER TABLE `app_language_management`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1118;

--
-- AUTO_INCREMENT for table `bank_account`
--
ALTER TABLE `bank_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_service`
--
ALTER TABLE `book_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business_hours`
--
ALTER TABLE `business_hours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `chat_table`
--
ALTER TABLE `chat_table`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47577;

--
-- AUTO_INCREMENT for table `contact_form_details`
--
ALTER TABLE `contact_form_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_reply`
--
ALTER TABLE `contact_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `country_table`
--
ALTER TABLE `country_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `currency_rate`
--
ALTER TABLE `currency_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `device_details`
--
ALTER TABLE `device_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=369;

--
-- AUTO_INCREMENT for table `footer_menu`
--
ALTER TABLE `footer_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `footer_submenu`
--
ALTER TABLE `footer_submenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `forget_password_det`
--
ALTER TABLE `forget_password_det`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `language_management`
--
ALTER TABLE `language_management`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `mobile_otp`
--
ALTER TABLE `mobile_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1464;

--
-- AUTO_INCREMENT for table `notification_table`
--
ALTER TABLE `notification_table`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=414;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `paypal_payment_gateways`
--
ALTER TABLE `paypal_payment_gateways`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `paypal_transaction`
--
ALTER TABLE `paypal_transaction`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `paytabs_details`
--
ALTER TABLE `paytabs_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `provider_address`
--
ALTER TABLE `provider_address`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rating_review`
--
ALTER TABLE `rating_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rating_type`
--
ALTER TABLE `rating_type`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `razorpay_contact`
--
ALTER TABLE `razorpay_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `razorpay_fund_account`
--
ALTER TABLE `razorpay_fund_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `razorpay_gateway`
--
ALTER TABLE `razorpay_gateway`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `razorpay_payouts`
--
ALTER TABLE `razorpay_payouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `revenue`
--
ALTER TABLE `revenue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services_image`
--
ALTER TABLE `services_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4121;

--
-- AUTO_INCREMENT for table `stripe_bank_details`
--
ALTER TABLE `stripe_bank_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `stripe_customer_card_details`
--
ALTER TABLE `stripe_customer_card_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stripe_customer_table`
--
ALTER TABLE `stripe_customer_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stripe_provider_card_details`
--
ALTER TABLE `stripe_provider_card_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stripe_provider_table`
--
ALTER TABLE `stripe_provider_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subscription_details`
--
ALTER TABLE `subscription_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_details_history`
--
ALTER TABLE `subscription_details_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_fee`
--
ALTER TABLE `subscription_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_payment`
--
ALTER TABLE `subscription_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6777;

--
-- AUTO_INCREMENT for table `theme_color_change`
--
ALTER TABLE `theme_color_change`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2035;

--
-- AUTO_INCREMENT for table `wallet_table`
--
ALTER TABLE `wallet_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet_transaction_history`
--
ALTER TABLE `wallet_transaction_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet_withdraw`
--
ALTER TABLE `wallet_withdraw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
