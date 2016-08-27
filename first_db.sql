-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2016 at 01:58 AM
-- Server version: 5.5.50-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `first_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `acl_resource`
--

CREATE TABLE IF NOT EXISTS `acl_resource` (
  `resource_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`resource_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=62 ;

--
-- Dumping data for table `acl_resource`
--

INSERT INTO `acl_resource` (`resource_id`, `parent_id`, `code`, `label`, `url`) VALUES
(1, NULL, 'application', 'Manage applications', NULL),
(2, 1, 'application_create', 'Create an application', 'admin/application/createpost'),
(3, 1, 'application_delete', 'Delete an application', 'admin/application/delete'),
(4, NULL, 'editor', 'Access the application editor', NULL),
(5, 4, 'editor_design', 'Access the Design tab', 'application/customization_design_style/edit'),
(6, 4, 'editor_colors', 'Access the Colors tab', 'application/customization_design_colors/edit'),
(7, 4, 'editor_features', 'Access the Features tab', 'application/customization_features/list'),
(8, 4, 'editor_application', 'Access the Application tab', 'application/customization_publication_app/index'),
(9, 4, 'editor_publication', 'Access the Publication tab', 'application/customization_publication_infos/index'),
(10, 4, 'editor_settings', 'Access the settings from the editor', NULL),
(11, 10, 'editor_settings_tc', 'Access the Terms & Conditions tab', 'application/settings_tc/*'),
(12, 10, 'editor_settings_facebook', 'Access the Facebook tab', 'application/settings_facebook/*'),
(13, 10, 'editor_settings_domain', 'Access the Domain tab', 'application/settings_domain/*'),
(14, 10, 'editor_settings_messages', 'Access the editor messages', 'message/application/*'),
(15, 10, 'editor_settings_instagram', 'Access the Instagram tab', 'application/settings_instagram/*'),
(16, NULL, 'admin_access_management', 'Manage the editor users', 'admin/access_management/*'),
(17, NULL, 'analytics_application', 'Analytics application page', 'application/analytics_application/*'),
(18, NULL, 'analytics_feature', 'Analytics feature page', 'application/analytics_feature/*'),
(19, NULL, 'promote', 'Promote page', 'application/promote/*'),
(20, NULL, 'users', 'Users page', 'customer/application/list'),
(21, NULL, 'support', 'Support', NULL),
(22, NULL, 'feature', 'Features', NULL),
(23, 22, 'feature_music_gallery', 'Audio', 'media/application_gallery_music/*'),
(24, 22, 'feature_video_gallery', 'Videos', 'media/application_gallery_video/*'),
(25, 22, 'feature_image_gallery', 'Images', 'media/application_gallery_image/*'),
(26, 22, 'feature_booking', 'Booking', 'booking/application/*'),
(27, 22, 'feature_set_meal', 'Set Meal', 'catalog/application_menu/*'),
(28, 22, 'feature_catalog', 'Catalog', 'catalog/application/*'),
(29, 22, 'feature_custom_page', 'Custom Page', 'cms/application_page/*'),
(30, 22, 'feature_code_scan', 'Code Scan', 'codescan/application/*'),
(31, 22, 'feature_newswall', 'Newswall', 'comment/application/*'),
(32, 22, 'feature_fanwall', 'Fan Wall', 'comment/application/*'),
(33, 22, 'feature_contact', 'Contact', 'contact/application/*'),
(34, 22, 'feature_calendar', 'Calendar', 'event/application/*'),
(35, 22, 'feature_folder', 'Folder', 'folder/application/*'),
(36, 22, 'feature_form', 'Form', 'form/application/*'),
(37, 22, 'feature_loyalty', 'Loyalty Card', 'loyaltycard/application/*'),
(38, 22, 'feature_maps', 'Maps', 'maps/application/*'),
(39, 22, 'feature_m_commerce', 'Commerce', 'mcommerce/application/*'),
(40, 22, 'feature_padlock', 'Padlock', 'padlock/application/*'),
(41, 22, 'feature_places', 'Places', 'places/application/*'),
(42, 22, 'feature_discount', 'Discount', 'promotion/application/*'),
(43, 22, 'feature_qr_discount', 'QR Coupons', 'promotion/application/*'),
(44, 22, 'feature_inapp_messages', 'In-App Messages', 'push/application/*'),
(45, 22, 'feature_push_notification', 'Push Notifications', 'push/application/*'),
(46, 22, 'feature_radio', 'Radio', 'radio/application/*'),
(47, 22, 'feature_rss_feed', 'RSS Feed', 'rss/application_feed/*'),
(48, 22, 'feature_facebook', 'Facebook', 'social/application_facebook/*'),
(49, 22, 'feature_social_gaming', 'Contest', 'socialgaming/application/*'),
(50, 22, 'feature_source_code', 'Source code', 'sourcecode/application/*'),
(51, 22, 'feature_tip', 'Tips calculator', 'tip/application/*'),
(52, 22, 'feature_topic', 'Topics', 'topic/application/*'),
(53, 22, 'feature_weather', 'Weather', 'weather/application/*'),
(54, 22, 'feature_weblink_mono', 'Link', 'weblink/application_mono/*'),
(55, 22, 'feature_weblink_multi', 'Links', 'weblink/application_multi/*'),
(56, 22, 'feature_magento', 'Magento', 'weblink/application_magento/*'),
(57, 22, 'feature_woocommerce', 'WooCommerce', 'weblink/application_woocommerce/*'),
(58, 22, 'feature_prestashop', 'Prestashop', 'weblink/application_prestashop/*'),
(59, 22, 'feature_volusion', 'Volusion', 'weblink/application_volusion/*'),
(60, 22, 'feature_shopify', 'Shopify', 'weblink/application_shopify/*'),
(61, 22, 'feature_wordpress', 'Wordpress', 'wordpress/application/*');

-- --------------------------------------------------------

--
-- Table structure for table `acl_resource_role`
--

CREATE TABLE IF NOT EXISTS `acl_resource_role` (
  `resource_id` int(11) unsigned NOT NULL,
  `role_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`resource_id`,`role_id`),
  KEY `FK_RESOURCE_ROLE_ROLE_ID` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acl_role`
--

CREATE TABLE IF NOT EXISTS `acl_role` (
  `role_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `acl_role`
--

INSERT INTO `acl_role` (`role_id`, `code`, `label`) VALUES
(1, 'Admin', 'Administrator : full access');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `role_id` int(11) unsigned NOT NULL DEFAULT '1',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_allowed_to_add_pages` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `publication_access_type` enum('sources','info') COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vat_number` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `parent_id`, `role_id`, `email`, `password`, `is_allowed_to_add_pages`, `publication_access_type`, `company`, `firstname`, `lastname`, `address`, `address2`, `city`, `zip_code`, `region_code`, `region`, `country_code`, `country`, `phone`, `vat_number`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'polaris0610@outlook.com', '8c3ac9d562e028d534ecac9e246b11cd7ec451f8', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-08-27 00:37:13', '2016-08-27 00:37:13');

-- --------------------------------------------------------

--
-- Table structure for table `api_key`
--

CREATE TABLE IF NOT EXISTS `api_key` (
  `key_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `provider_id` int(11) unsigned NOT NULL,
  `key` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key_id`),
  KEY `api_key_ibfk_1` (`provider_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `api_key`
--

INSERT INTO `api_key` (`key_id`, `provider_id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'token', NULL, '2016-08-27 00:36:41', '2016-08-27 00:36:41'),
(2, 1, 'client_id', NULL, '2016-08-27 00:36:41', '2016-08-27 00:36:41'),
(3, 2, 'app_id', NULL, '2016-08-27 00:36:41', '2016-08-27 00:36:41'),
(4, 2, 'secret_key', NULL, '2016-08-27 00:36:41', '2016-08-27 00:36:41'),
(5, 3, 'api_key', NULL, '2016-08-27 00:36:41', '2016-08-27 00:36:41'),
(6, 4, 'client_id', NULL, '2016-08-27 00:36:41', '2016-08-27 00:36:41'),
(7, 4, 'secret_id', NULL, '2016-08-27 00:36:41', '2016-08-27 00:36:41');

-- --------------------------------------------------------

--
-- Table structure for table `api_provider`
--

CREATE TABLE IF NOT EXISTS `api_provider` (
  `provider_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`provider_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `api_provider`
--

INSERT INTO `api_provider` (`provider_id`, `code`, `name`, `icon`, `created_at`, `updated_at`) VALUES
(2, 'facebook', 'Facebook', 'fa-facebook-square', '2016-08-27 00:36:41', '2016-08-27 00:36:41'),
(3, 'youtube', 'Youtube', 'fa-youtube', '2016-08-27 00:36:41', '2016-08-27 00:36:41'),
(4, 'soundcloud', 'Soundcloud', 'fa-soundcloud', '2016-08-27 00:36:41', '2016-08-27 00:36:41');

-- --------------------------------------------------------

--
-- Table structure for table `api_user`
--

CREATE TABLE IF NOT EXISTS `api_user` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `apk_queue`
--

CREATE TABLE IF NOT EXISTS `apk_queue` (
  `apk_queue_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `path` text COLLATE utf8_unicode_ci NOT NULL,
  `app_id` int(11) unsigned NOT NULL,
  `host` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `status` enum('queued','building','success','failed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'queued',
  `build_time` int(11) unsigned NOT NULL,
  `log` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`apk_queue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE IF NOT EXISTS `application` (
  `app_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) unsigned NOT NULL,
  `layout_id` int(11) unsigned NOT NULL,
  `layout_visibility` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'homepage',
  `design_id` int(11) unsigned DEFAULT NULL,
  `bundle_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `design_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ionic',
  `locale` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tabbar_account_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tabbar_more_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `main_category_id` tinyint(1) unsigned DEFAULT NULL,
  `secondary_category_id` tinyint(1) unsigned DEFAULT NULL,
  `font_family` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `background_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `background_image_hd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `background_image_tablet` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `use_homepage_background_image_in_subpages` tinyint(1) NOT NULL DEFAULT '0',
  `ios_status_bar_is_hidden` tinyint(1) DEFAULT '0',
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startup_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startup_image_retina` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startup_image_iphone_6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startup_image_iphone_6_plus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startup_image_ipad_retina` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `homepage_slider_is_visible` tinyint(1) DEFAULT '0',
  `homepage_slider_duration` int(11) DEFAULT '3',
  `homepage_slider_loop_at_beginning` tinyint(1) DEFAULT '0',
  `homepage_slider_library_id` int(11) DEFAULT NULL,
  `domain` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subdomain` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subdomain_is_validated` tinyint(1) DEFAULT NULL,
  `facebook_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_key` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram_client_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `use_ads` tinyint(1) DEFAULT '0',
  `owner_use_ads` tinyint(1) NOT NULL DEFAULT '0',
  `unlock_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'account',
  `unlock_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_title` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_author` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_button_label` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `require_to_be_logged_in` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_all_customers_to_access_locked_features` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `free_until` datetime DEFAULT NULL,
  `can_be_published` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`app_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`app_id`, `admin_id`, `layout_id`, `layout_visibility`, `design_id`, `bundle_id`, `key`, `design_code`, `locale`, `tabbar_account_name`, `tabbar_more_name`, `country_code`, `name`, `description`, `keywords`, `main_category_id`, `secondary_category_id`, `font_family`, `background_image`, `background_image_hd`, `background_image_tablet`, `use_homepage_background_image_in_subpages`, `ios_status_bar_is_hidden`, `logo`, `icon`, `startup_image`, `startup_image_retina`, `startup_image_iphone_6`, `startup_image_iphone_6_plus`, `startup_image_ipad_retina`, `homepage_slider_is_visible`, `homepage_slider_duration`, `homepage_slider_loop_at_beginning`, `homepage_slider_library_id`, `domain`, `subdomain`, `subdomain_is_validated`, `facebook_id`, `facebook_key`, `facebook_token`, `instagram_client_id`, `instagram_token`, `is_active`, `use_ads`, `owner_use_ads`, `unlock_by`, `unlock_code`, `banner_title`, `banner_author`, `banner_button_label`, `require_to_be_logged_in`, `allow_all_customers_to_access_locked_features`, `is_locked`, `free_until`, `can_be_published`, `created_at`, `updated_at`) VALUES
(1, 0, 10, 'homepage', NULL, 'a128.a31.a168.a192.appoverview', '57c143343e6af', 'ionic', NULL, NULL, NULL, NULL, 'first_app', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'account', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 1, '2016-08-27 00:37:24', '2016-08-27 00:48:31');

-- --------------------------------------------------------

--
-- Table structure for table `application_acl_option`
--

CREATE TABLE IF NOT EXISTS `application_acl_option` (
  `application_acl_option_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` int(11) unsigned NOT NULL,
  `admin_id` int(11) unsigned NOT NULL,
  `value_id` int(11) unsigned NOT NULL,
  `resource_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`application_acl_option_id`),
  KEY `FK_APPLICATION_ACL_OPTION_VALUE_ID` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `application_admin`
--

CREATE TABLE IF NOT EXISTS `application_admin` (
  `app_id` int(11) unsigned NOT NULL,
  `admin_id` int(11) unsigned NOT NULL,
  `is_allowed_to_add_pages` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`app_id`,`admin_id`),
  KEY `FK_APPLICATION_ADMIN_ADMIN_ID` (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `application_device`
--

CREATE TABLE IF NOT EXISTS `application_device` (
  `device_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` int(11) unsigned NOT NULL,
  `type_id` tinyint(11) unsigned NOT NULL,
  `status_id` tinyint(11) unsigned DEFAULT '1',
  `admob_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admob_type` enum('banner','interstitial') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'banner',
  `owner_admob_id` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner_admob_type` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.0.1',
  `developer_account_username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `developer_account_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `use_our_developer_account` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `store_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `store_pass` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `store_app_id` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_store_label` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_store_price` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_pass` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`device_id`),
  KEY `APPLICATION_DEVICE_APP_ID` (`app_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `application_device`
--

INSERT INTO `application_device` (`device_id`, `app_id`, `type_id`, `status_id`, `admob_id`, `admob_type`, `owner_admob_id`, `owner_admob_type`, `version`, `developer_account_username`, `developer_account_password`, `use_our_developer_account`, `store_url`, `store_pass`, `store_app_id`, `banner_store_label`, `banner_store_price`, `key_pass`, `alias`) VALUES
(1, 1, 1, 1, NULL, 'banner', NULL, NULL, '1.0', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, 2, 1, NULL, 'banner', NULL, NULL, '1.0', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `application_layout_homepage`
--

CREATE TABLE IF NOT EXISTS `application_layout_homepage` (
  `layout_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `visibility` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'homepage',
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `preview` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `use_more_button` tinyint(1) NOT NULL DEFAULT '0',
  `use_horizontal_scroll` tinyint(1) NOT NULL DEFAULT '0',
  `number_of_displayed_icons` tinyint(2) DEFAULT NULL,
  `position` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'bottom',
  `order` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`layout_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `application_layout_homepage`
--

INSERT INTO `application_layout_homepage` (`layout_id`, `visibility`, `code`, `name`, `preview`, `use_more_button`, `use_horizontal_scroll`, `number_of_displayed_icons`, `position`, `order`, `is_active`) VALUES
(1, 'always', 'layout_1', 'Layout 1', '/customization/layout/homepage/layout_1.png', 1, 0, 5, 'bottom', 10, 1),
(2, 'homepage', 'layout_2', 'Layout 2', '/customization/layout/homepage/layout_2.png', 1, 0, 10, 'bottom', 20, 1),
(3, 'homepage', 'layout_3', 'Layout 3', '/customization/layout/homepage/layout_3.png', 0, 0, NULL, 'bottom', 30, 1),
(4, 'homepage', 'layout_4', 'Layout 4', '/customization/layout/homepage/layout_4.png', 0, 0, NULL, 'bottom', 40, 1),
(5, 'homepage', 'layout_5', 'Layout 5', '/customization/layout/homepage/layout_5.png', 0, 0, NULL, 'bottom', 50, 1),
(6, 'homepage', 'layout_6', 'Layout 6', '/customization/layout/homepage/layout_6.png', 0, 0, NULL, 'bottom', 60, 1),
(7, 'homepage', 'layout_7', 'Layout 7', '/customization/layout/homepage/layout_7.png', 0, 0, NULL, 'bottom', 70, 1),
(8, 'homepage', 'layout_8', 'Layout 8', '/customization/layout/homepage/layout_8.png', 0, 0, NULL, 'bottom', 80, 0),
(9, 'toggle', 'layout_9', 'Layout 9', '/customization/layout/homepage/layout_9.png', 0, 0, NULL, 'left', 90, 1),
(10, 'homepage', 'layout_10', 'Layout 10', '/customization/layout/homepage/layout_10.png', 1, 0, 5, 'bottom', 100, 1),
(11, 'homepage', 'layout_3_h', 'Layout 3 - Horizontal', '/customization/layout/homepage/layout_3-h.png', 0, 1, 6, 'bottom', 35, 1),
(12, 'homepage', 'layout_4_h', 'Layout 4 - Horizontal', '/customization/layout/homepage/layout_4-h.png', 0, 1, 6, 'bottom', 45, 1),
(13, 'homepage', 'layout_5_h', 'Layout 5 - Horizontal', '/customization/layout/homepage/layout_5-h.png', 0, 1, 4, 'bottom', 55, 1);

-- --------------------------------------------------------

--
-- Table structure for table `application_option`
--

CREATE TABLE IF NOT EXISTS `application_option` (
  `option_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) unsigned NOT NULL,
  `library_id` int(11) unsigned NOT NULL,
  `icon_id` int(11) NOT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `desktop_uri` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mobile_uri` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mobile_view_uri` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_view_uri_parameter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `only_once` tinyint(1) NOT NULL DEFAULT '0',
  `is_ajax` tinyint(1) NOT NULL DEFAULT '1',
  `position` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `social_sharing_is_available` tinyint(1) NOT NULL DEFAULT '0',
  `use_my_account` tinyint(1) NOT NULL DEFAULT '0',
  `use_nickname` tinyint(1) NOT NULL DEFAULT '0',
  `use_ranking` tinyint(1) NOT NULL DEFAULT '0',
  `custom_fields` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`option_id`),
  KEY `FK_APPLICATION_OPTION_CATEGORY_ID` (`category_id`),
  KEY `application_option_ibfk_1` (`library_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=40 ;

--
-- Dumping data for table `application_option`
--

INSERT INTO `application_option` (`option_id`, `category_id`, `library_id`, `icon_id`, `code`, `name`, `model`, `desktop_uri`, `mobile_uri`, `mobile_view_uri`, `mobile_view_uri_parameter`, `only_once`, `is_ajax`, `position`, `social_sharing_is_available`, `use_my_account`, `use_nickname`, `use_ranking`, `custom_fields`) VALUES
(1, 2, 1, 1, 'music_gallery', 'Audio', 'Media_Model_Gallery_Music', 'media/application_gallery_music/', 'media/mobile_gallery_music_playlists/', 'media/mobile_api_music_playlist/', 'playlist_id', 0, 1, 110, 0, 0, 0, 0, NULL),
(2, 2, 3, 13, 'video_gallery', 'Videos', 'Media_Model_Gallery_Video', 'media/application_gallery_video/', 'media/mobile_gallery_video_list/', 'media/mobile_gallery_video_view/', 'gallery_id,offset/1', 0, 1, 100, 0, 0, 0, 0, NULL),
(3, 2, 5, 22, 'image_gallery', 'Images', 'Media_Model_Gallery_Image', 'media/application_gallery_image/', 'media/mobile_gallery_image_list/', 'media/mobile_gallery_image_view/', 'gallery_id,offset/0', 0, 1, 90, 0, 0, 0, 0, NULL),
(4, 3, 7, 32, 'booking', 'Booking', 'Booking_Model_Booking', 'booking/application/', 'booking/mobile_view/', 'booking/mobile_view/', NULL, 0, 1, 140, 0, 0, 0, 0, NULL),
(5, 4, 9, 46, 'set_meal', 'Set Meal', 'Catalog_Model_Product', 'catalog/application_menu/', 'catalog/mobile_setmeal_list/', 'catalog/mobile_setmeal_view/', 'set_meal_id', 0, 1, 35, 1, 0, 0, 0, NULL),
(6, 4, 11, 61, 'catalog', 'Catalog', 'Catalog_Model_Category', 'catalog/application/', 'catalog/mobile_category_list/', 'catalog/mobile_category_product_view/', 'product_id', 0, 1, 30, 1, 0, 0, 0, NULL),
(7, 5, 13, 76, 'custom_page', 'Custom Page', 'Cms_Model_Application_Page', 'cms/application_page/', 'cms/mobile_page_view/', 'cms/mobile_page_view/', NULL, 0, 1, 70, 1, 0, 0, 0, NULL),
(8, 8, 15, 90, 'code_scan', 'Code Scan', 'Codescan_Model_Codescan', 'codescan/application/', 'codescan/mobile_view/', NULL, NULL, 0, 1, 150, 0, 0, 0, 0, NULL),
(9, 1, 17, 96, 'newswall', 'Newswall', 'Comment_Model_Comment', 'comment/application/', 'comment/mobile_list/', 'comment/mobile_view/', 'comment_id', 0, 1, 10, 1, 1, 0, 0, NULL),
(10, 1, 19, 103, 'fanwall', 'Fan Wall', 'Comment_Model_Comment', 'comment/application/', 'comment/mobile_list/', 'comment/mobile_view/', 'comment_id', 0, 1, 15, 1, 1, 0, 0, NULL),
(11, 3, 21, 110, 'contact', 'Contact', 'Contact_Model_Contact', 'contact/application/', 'contact/mobile_view/', NULL, NULL, 0, 1, 120, 0, 0, 0, 0, NULL),
(12, 7, 23, 124, 'calendar', 'Calendar', 'Event_Model_Event', 'event/application/', 'event/mobile_list/', 'event/mobile_view/', 'event_id', 0, 1, 200, 1, 0, 0, 0, NULL),
(13, 8, 25, 130, 'folder', 'Folder', 'Folder_Model_Folder', 'folder/application/', 'folder/mobile_list/', NULL, NULL, 0, 1, 180, 0, 0, 0, 0, NULL),
(14, 3, 27, 138, 'form', 'Form', 'Form_Model_Form', 'form/application/', 'form/mobile_view/', NULL, NULL, 0, 1, 190, 0, 0, 0, 0, NULL),
(15, 4, 29, 146, 'loyalty', 'Loyalty Card', 'LoyaltyCard_Model_LoyaltyCard', 'loyaltycard/application/', 'loyaltycard/mobile_view/', NULL, NULL, 0, 1, 50, 0, 1, 0, 0, NULL),
(16, 8, 31, 155, 'maps', 'Maps', 'Maps_Model_Maps', 'maps/application/', 'maps/mobile_view/', NULL, NULL, 0, 1, 240, 0, 0, 0, 0, NULL),
(17, 4, 11, 61, 'm_commerce', 'Commerce', 'Mcommerce_Model_Mcommerce', 'mcommerce/application/', 'mcommerce/mobile_category/', 'mcommerce/mobile_product/', 'product_id', 1, 1, 220, 1, 0, 0, 0, NULL),
(18, 8, 34, 164, 'padlock', 'Padlock', 'Padlock_Model_Padlock', 'padlock/application/', 'padlock/mobile_view/', NULL, NULL, 0, 1, 220, 0, 1, 0, 0, NULL),
(19, 8, 36, 168, 'places', 'Places', 'Cms_Model_Application_Page', 'places/application/', 'places/mobile_list/', NULL, NULL, 0, 1, 240, 1, 0, 0, 0, NULL),
(20, 4, 38, 175, 'discount', 'Discount', 'Promotion_Model_Promotion', 'promotion/application/', 'promotion/mobile_list/', 'promotion/mobile_view/', 'promotion_id', 0, 1, 20, 1, 1, 0, 0, NULL),
(21, 4, 40, 183, 'qr_discount', 'QR Coupons', 'Promotion_Model_Promotion', 'promotion/application/', 'promotion/mobile_list/', 'promotion/mobile_view/', 'promotion_id', 0, 1, 25, 1, 0, 0, 0, NULL),
(22, 3, 42, 191, 'inapp_messages', 'In-App Messages', 'Push_Model_Message', 'push/application/', 'push/mobile_list/', NULL, NULL, 1, 1, 130, 0, 0, 0, 0, NULL),
(23, 3, 44, 195, 'push_notification', 'Push Notifications', 'Push_Model_Message', 'push/application/', 'push/mobile_list/', NULL, NULL, 1, 1, 130, 0, 0, 0, 0, NULL),
(24, 2, 46, 203, 'radio', 'Radio', 'Radio_Model_Radio', 'radio/application/', 'radio/mobile_radio/', NULL, NULL, 0, 1, 105, 0, 0, 0, 0, NULL),
(25, 2, 48, 214, 'rss_feed', 'RSS Feed', 'Rss_Model_Feed', 'rss/application_feed/', 'rss/mobile_feed_list/', 'rss/mobile_feed_view/', 'feed_id', 0, 1, 80, 1, 0, 0, 0, NULL),
(26, 1, 50, 224, 'facebook', 'Facebook', 'Social_Model_Facebook', 'social/application_facebook/', 'social/mobile_facebook_list/', NULL, NULL, 0, 1, 210, 0, 0, 0, 0, NULL),
(27, 1, 52, 228, 'social_gaming', 'Contest', 'Socialgaming_Model_Game', 'socialgaming/application/', 'socialgaming/mobile_view/', NULL, NULL, 1, 1, 60, 0, 1, 0, 1, NULL),
(28, 5, 54, 236, 'source_code', 'Source code', 'Sourcecode_Model_Sourcecode', 'sourcecode/application/', 'sourcecode/mobile_view/', NULL, NULL, 0, 1, 75, 0, 0, 0, 0, NULL),
(29, 8, 56, 244, 'tip', 'Tips calculator', 'Tip_Model_Tip', 'tip/application/', 'tip/mobile_view/', NULL, NULL, 0, 1, 240, 0, 0, 0, 0, NULL),
(30, 3, 58, 249, 'topic', 'Topics', 'Topic_Model_Topic', 'topic/application/', 'topic/mobile_list/', NULL, NULL, 1, 1, 241, 0, 0, 0, 0, NULL),
(31, 8, 60, 256, 'weather', 'Weather', 'Weather_Model_Weather', 'weather/application/', 'weather/mobile_view/', NULL, NULL, 0, 1, 240, 0, 0, 0, 0, NULL),
(32, 6, 62, 262, 'weblink_mono', 'Link', 'Weblink_Model_Type_Mono', 'weblink/application_mono/', 'weblink/mobile_mono/', NULL, NULL, 0, 0, 150, 0, 0, 0, 0, NULL),
(33, 6, 62, 262, 'weblink_multi', 'Links', 'Weblink_Model_Type_Multi', 'weblink/application_multi/', 'weblink/mobile_multi/', NULL, NULL, 0, 1, 160, 0, 0, 0, 0, NULL),
(34, 6, 63, 265, 'magento', 'Magento', 'Weblink_Model_Type_Mono', 'weblink/application_magento/', 'weblink/mobile_mono/', NULL, NULL, 0, 0, 155, 0, 0, 0, 0, NULL),
(35, 6, 65, 268, 'woocommerce', 'WooCommerce', 'Weblink_Model_Type_Mono', 'weblink/application_woocommerce/', 'weblink/mobile_mono/', NULL, NULL, 0, 0, 155, 0, 0, 0, 0, NULL),
(36, 6, 67, 271, 'prestashop', 'Prestashop', 'Weblink_Model_Type_Mono', 'weblink/application_prestashop/', 'weblink/mobile_mono/', NULL, NULL, 0, 0, 155, 0, 0, 0, 0, NULL),
(37, 6, 69, 275, 'volusion', 'Volusion', 'Weblink_Model_Type_Mono', 'weblink/application_volusion/', 'weblink/mobile_mono/', NULL, NULL, 0, 0, 155, 0, 0, 0, 0, NULL),
(38, 6, 71, 278, 'shopify', 'Shopify', 'Weblink_Model_Type_Mono', 'weblink/application_shopify/', 'weblink/mobile_mono/', NULL, NULL, 0, 0, 155, 0, 0, 0, 0, NULL),
(39, 6, 74, 285, 'wordpress', 'Wordpress', 'Wordpress_Model_Wordpress', 'wordpress/application/', 'wordpress/mobile_list/', NULL, NULL, 0, 1, 170, 1, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `application_option_category`
--

CREATE TABLE IF NOT EXISTS `application_option_category` (
  `category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `application_option_category`
--

INSERT INTO `application_option_category` (`category_id`, `code`, `name`, `icon`, `position`, `created_at`, `updated_at`) VALUES
(1, 'social', 'Social', 'icon-share', 10, '2016-08-27 00:36:41', '2016-08-27 00:36:41'),
(2, 'media', 'Media', 'icon-play', 20, '2016-08-27 00:36:41', '2016-08-27 00:36:41'),
(3, 'contact', 'Contact', 'icon-phone', 30, '2016-08-27 00:36:41', '2016-08-27 00:36:41'),
(4, 'monetization', 'Monetization', 'icon-money', 40, '2016-08-27 00:36:41', '2016-08-27 00:36:41'),
(5, 'customization', 'Customization', 'icon-edit', 50, '2016-08-27 00:36:41', '2016-08-27 00:36:41'),
(6, 'integration', 'Integration', 'icon-globe', 60, '2016-08-27 00:36:41', '2016-08-27 00:36:41'),
(7, 'events', 'Events', 'icon-calendar', 70, '2016-08-27 00:36:41', '2016-08-27 00:36:41'),
(8, 'misc', 'Misc', 'icon-code', 80, '2016-08-27 00:36:41', '2016-08-27 00:36:41');

-- --------------------------------------------------------

--
-- Table structure for table `application_option_layout`
--

CREATE TABLE IF NOT EXISTS `application_option_layout` (
  `layout_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `option_id` int(11) unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `preview` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`layout_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `application_option_layout`
--

INSERT INTO `application_option_layout` (`layout_id`, `code`, `option_id`, `name`, `preview`, `position`) VALUES
(1, 1, 5, 'Layout 1', '/customization/layout/set-meal/layout-1.png', 1),
(2, 2, 5, 'Layout 2', '/customization/layout/set-meal/layout-2.png', 2),
(3, 3, 5, 'Layout 3', '/customization/layout/set-meal/layout-3.png', 3),
(4, 1, 6, 'Layout 1', '/customization/layout/catalog/layout-1.png', 1),
(5, 2, 6, 'Layout 2', '/customization/layout/catalog/layout-2.png', 2),
(6, 3, 6, 'Layout 3', '/customization/layout/catalog/layout-3.png', 3),
(7, 1, 9, 'Layout 1', '/customization/layout/newswall/layout-1.png', 1),
(8, 2, 9, 'Layout 2', '/customization/layout/newswall/layout-2.png', 2),
(9, 3, 9, 'Layout 3', '/customization/layout/newswall/layout-3.png', 3),
(10, 4, 9, 'Layout 4', '/customization/layout/newswall/layout-4.png', 4),
(11, 1, 20, 'Layout 1', '/customization/layout/promotion/layout-1.png', 1),
(12, 2, 20, 'Layout 2', '/customization/layout/promotion/layout-2.png', 2),
(13, 3, 20, 'Layout 3', '/customization/layout/promotion/layout-3.png', 3),
(14, 4, 20, 'Layout 4', '/customization/layout/promotion/layout-4.png', 4),
(15, 1, 25, 'Layout 1', '/customization/layout/rss-feed/layout-1.png', 1),
(16, 2, 25, 'Layout 2', '/customization/layout/rss-feed/layout-2.png', 2),
(17, 3, 25, 'Layout 3', '/customization/layout/rss-feed/layout-3.png', 3),
(18, 1, 39, 'Layout 1', '/customization/layout/wordpress/layout-1.png', 1),
(19, 2, 39, 'Layout 2', '/customization/layout/wordpress/layout-2.png', 2),
(20, 3, 39, 'Layout 3', '/customization/layout/wordpress/layout-3.png', 3);

-- --------------------------------------------------------

--
-- Table structure for table `application_option_preview`
--

CREATE TABLE IF NOT EXISTS `application_option_preview` (
  `preview_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `option_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`preview_id`),
  KEY `FK_APPLICATION_OPTION_OPTION_ID` (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `application_option_preview_language`
--

CREATE TABLE IF NOT EXISTS `application_option_preview_language` (
  `preview_id` int(11) unsigned NOT NULL,
  `library_id` int(11) unsigned NOT NULL,
  `language_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fr',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  KEY `FK_OPTION_PREVIEW_LANGUAGE_PREVIEW_ID` (`preview_id`),
  KEY `FK_OPTION_PREVIEW_LANGUAGE_LIBRARY_ID` (`library_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `application_option_value`
--

CREATE TABLE IF NOT EXISTS `application_option_value` (
  `value_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` int(11) unsigned NOT NULL,
  `option_id` int(11) unsigned NOT NULL,
  `layout_id` int(11) unsigned NOT NULL DEFAULT '1',
  `icon_id` int(11) DEFAULT NULL,
  `folder_id` int(11) unsigned DEFAULT NULL,
  `folder_category_id` int(11) unsigned DEFAULT NULL,
  `folder_category_position` int(11) unsigned DEFAULT NULL,
  `tabbar_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `background_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_visible` tinyint(1) NOT NULL DEFAULT '1',
  `position` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `social_sharing_is_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`value_id`),
  KEY `application_option_value_ibfk_1` (`app_id`),
  KEY `application_option_value_ibfk_2` (`option_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `application_option_value`
--

INSERT INTO `application_option_value` (`value_id`, `app_id`, `option_id`, `layout_id`, `icon_id`, `folder_id`, `folder_category_id`, `folder_category_position`, `tabbar_name`, `icon`, `background_image`, `is_visible`, `position`, `is_active`, `social_sharing_is_active`) VALUES
(1, 1, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1),
(2, 1, 27, 1, 233, NULL, NULL, NULL, 'Contest', NULL, NULL, 1, 2, 1, 1),
(3, 1, 10, 1, 107, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `application_tc`
--

CREATE TABLE IF NOT EXISTS `application_tc` (
  `tc_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` int(11) unsigned NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`tc_id`),
  KEY `FK_APPLICATION_TC_APP_ID` (`app_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `application_tc`
--

INSERT INTO `application_tc` (`tc_id`, `app_id`, `type`, `text`, `created_at`, `updated_at`) VALUES
(1, 1, 'discount', '<p>This is test</p>\r\n', '2016-08-27 00:40:00', '2016-08-27 00:46:32');

-- --------------------------------------------------------

--
-- Table structure for table `backoffice_notification`
--

CREATE TABLE IF NOT EXISTS `backoffice_notification` (
  `notification_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `original_notification_id` int(11) unsigned NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_high_priority` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=88 ;

--
-- Dumping data for table `backoffice_notification`
--

INSERT INTO `backoffice_notification` (`notification_id`, `original_notification_id`, `title`, `description`, `link`, `is_high_priority`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 0, 'Welcome!', 'Welcome! First of all, let''s configure your platform. <a href="/system/backoffice_config_general"><u>Click here</u></a> to fill in your information or <a href="/system/backoffice_config_email"><u>here</u></a> to configure your email address', NULL, 0, 0, '2016-08-27 00:36:42', '2016-08-27 00:36:42'),
(2, 5, 'Updates', 'Click the eye to download the latest updates for your Siberian Multi-Apps Edition. Check back regularly to keep your CMS always up to date!', 'http://www.siberiancms.com/knowledgebase/updates-for-mae-and-pe/', 1, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(3, 8, ' Siberian 3.8.3 is available !', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-)', 'http://updates.siberiancms.com/release-notes/mae/3.8.3.html', 1, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(4, 10, 'Siberian 3.8.4 is available !', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-)', 'http://updates.siberiancms.com/release-notes/mae/3.8.4.html', 1, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(5, 14, 'Known issues', 'Since 3.8.4: Padlock feature issue => the app keeps loading when it is launched if all the application is locked by the Padlock feature. Our Dev team is working on it.', '', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(6, 17, 'Siberian 3.9 is available !', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Good improvements and bug fixes inside. Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/3.9.html', 1, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(7, 20, 'Known issues', 'Since 3.9: Some of the translations are not taken into account anymore and the new offline''s popup is not translated even if the translation is made in default.csv.', '', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(8, 23, 'Siberian 3.9.1 is available !', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/3.9.1.html', 1, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(9, 26, 'Known issues', 'Since 3.9.1: Can''t change the Editor''s language if a default language is set in the backoffice', '', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(10, 29, 'Siberian 3.9.2 is available !', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/3.9.2.html', 1, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(11, 31, 'Known issues', 'Since 3.9.2: Can''t finish the buying process in MCommerce feature', '', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(12, 34, 'Known issues', 'Push notifications are not received on iOS and Android devices. It comes from a modification on the Apple''s side. In order to be sure if this is your issue, please check the points explained in the Doc first. Click on the eye to access to the article.', 'http://doc.siberiancms.com/knowledge-base/push-notifications-do-not-work/', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(13, 37, 'Siberian 3.9.3 is available !', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/3.9.3.html', 1, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(14, 40, 'Known issues', 'Since 3.9.2: MCommerce issue: can''t finish the bying process due to a bug in the My Information page. Click on the eye to see the screenshot.', 'http://www.siberiancms.com/wp-content/plugins/dynamo-support/attachments/1.png', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(15, 43, 'Known issues', 'Push Notifications issue: Apple made a new modification few hours ago on their side about the push sending process. It blocks iOS push notifications AND Android notifications in Siberian apps. The Siberian Devs are working on a fix. ', '', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(16, 46, 'Known issues', 'PDF links do not work with Android 5.x', '', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(17, 48, 'Siberian 3.10 is available !', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/3.10.html', 1, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(18, 51, 'Known issues', 'Since 3.10: Can''t load and switch between images galleries in Images feature', '', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(19, 54, 'Known issues', 'In Video feature, it is not possible to load more than 5 videos.', '', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(20, 57, 'Siberian 3.11 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note. 	', 'http://updates.siberiancms.com/release-notes/mae/3.11.html', 1, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(21, 59, 'Siberian 3.11.1 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/3.11.1.html', 1, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(22, 61, 'Known issues', 'Can''t publish iOS apps from XCode 7 because of a security connection error with iOS Simulator 9.0. This issue will be fixed with the 3.12 update.', '', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(23, 64, 'Siberian 3.12 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/3.12.html', 1, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(24, 66, 'Known issues', 'In Folder feature: if there are to many subfolders, the list does not fit the blue background and comes on top of other elements', 'http://www.siberiancms.com/wp-content/plugins/dynamo-support/attachments/folder.png', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(25, 68, 'Known issues', 'When creating a new custom audio list in Audio feature, a Mysql error appears when deleting a file then click on "Save" to save the new custom playlist.', '', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(26, 70, 'Siberian 3.13 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/3.13.html', 1, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(27, 72, 'Known issues', 'Since 3.13: In Catalog feature the products are duplicated on the main page if you set Sub Categories. ', '', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(28, 74, 'Known issues', 'Since 3.13: In Catalog feature, the displayed images of products are poor quality when changing the Design', '', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(29, 76, 'Known issues', 'Since 3.13: In Fanwall feature the comments/news are duplicated.', '', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(30, 79, 'Siberian 3.13.1 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/3.13.1.html', 1, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(31, 82, 'Known issues', 'Radio feature: AAC+ audio streams cannot be played once the app is installed on a device (works well in the Editor''s previewer)', '', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(32, 85, 'Known issues', 'In Places feature, Podcast function does not work in the app.', '', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(33, 88, 'Siberian 3.14 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/3.14.html', 1, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(34, 91, 'Siberian 3.14.1 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/3.14.1.html', 1, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(35, 93, 'Known issues', 'Since 3.14: The apps compiled from Siberian 3.14 always ask for downloading contents for the Offline mode.', '', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(36, 95, 'Known issues', 'Since 3.14: In Loyalty Card feature, it is not possible to validate points.', '', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(37, 98, 'Known issues', 'Since 3.14: The push messages does not appear in the Push Notifications feature''s list', '', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(38, 101, 'Known issues', 'In iOS apps and in Your Own Previewer app, the webview navigation bar is red when opening the Link Feature.', 'http://www.siberiancms.com/wp-content/plugins/dynamo-support/attachments/red.png', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(39, 104, 'Siberian 3.15 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/3.15.html', 1, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(40, 107, 'Known issues', 'Sometimes/Often, push notifications'' popups do not redirect to a custom URL or feature, but instead redirect to the app''s homepage.', '', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(41, 113, 'Siberian 3.15.2 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/3.15.2.html', 1, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(42, 116, 'Siberian 3.15.3 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/3.15.3.html', 1, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(43, 119, 'Siberian 3.16 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/3.16.html', 1, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(44, 122, 'Known issues', 'In Calendar feature, iCal events are displayed in a random order', '', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(45, 124, 'Known issues', 'Since 3.16, a MySQL error can appear when changing settings of the backoffice > Settings > General. It will be fixed in the update 3.16.1', '', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(46, 125, 'Siberian 3.16.1 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/3.16.1.html', 1, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(47, 128, 'Siberian 3.16.2 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/3.16.2.html', 1, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(48, 132, 'Siberian 3.16.5 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/3.16.5.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(49, 135, 'Siberian 4.0.0.3 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/4.0.3.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(50, 137, 'Siberian 4.0.0.4 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/4.0.4.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(51, 141, 'Siberian 4.0.5 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/4.0.5.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(52, 144, 'Siberian 4.0.6 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/4.0.6.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(53, 147, 'Siberian 4.0.7 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/4.0.7.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(54, 150, 'Siberian 4.0.8 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/4.0.8.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(55, 153, 'Siberian 4.0.9 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/4.0.9.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(56, 156, 'Siberian 4.0.11 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/4.0.11.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(57, 159, 'Siberian 4.1.0 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/4.1.0.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(58, 164, 'Known issues', 'Since 4.1 => Mails sent from your SIberian are empty. we are working to fix this issue as soon as possible.', '', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(59, 165, 'Siberian 4.1.1 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/4.1.1.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(60, 168, 'Siberian 4.1.2 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/4.1.2.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(61, 173, 'Siberian 4.1.3 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/4.1.3.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(62, 175, 'Siberian 4.1.4 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/4.1.4.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(63, 178, 'Siberian 4.1.5 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/4.1.5.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(64, 181, 'Siberian 4.1.6 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/4.1.6.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(65, 184, 'Siberian 4.1.7 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/4.1.7.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(66, 187, 'Siberian 4.1.8 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/4.1.8.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(67, 190, 'Siberian 4.1.9 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/4.1.9.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(68, 193, 'Siberian 4.1.10 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/4.1.10.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(69, 196, 'Siberian 4.1.11 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/4.1.11.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(70, 199, 'Siberian 4.1.12 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/4.1.12.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(71, 202, 'Updates 4.1.12 - 4.2: Hotfix', 'Click on the eye to access to the hotfix', 'http://updates.siberiancms.com/release-notes/hotfix/hotfix.4.1.12-4.2.0.html', 1, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(72, 205, 'Siberian 4.2.1 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/pe/4.2.1.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(73, 208, 'Siberian 4.2.2 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/pe/4.2.2.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(74, 211, 'Siberian 4.2.3 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/4.2.3.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(75, 214, 'Siberian 4.2.4 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/4.2.4.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(76, 217, 'Siberian 4.2.5 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/4.2.5.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(77, 221, 'Siberian 4.2.6 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/4.2.6.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(78, 223, 'Siberian 4.2.7 fix for 5.5 Php version', 'This update fixes empty pages for users using Php <= 5.5', 'http://updates.siberiancms.com/release-notes/mae/4.2.7.html', 1, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(79, 226, 'Siberian 4.2.8 fix ', 'This update fixes several things for the APK generation especially', 'http://updates.siberiancms.com/release-notes/mae/4.2.8.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(80, 229, 'Siberian 4.2.9 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/4.2.9.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(81, 232, 'Siberian 4.3.0 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/4.3.0.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(82, 235, 'Siberian 4.3.1 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/4.3.1.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(83, 238, 'Siberian 4.3.2 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://builds.local/release-notes/mae/4.3.2.htm', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(84, 240, 'Siberian 4.3.2 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/4.3.2.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(85, 243, 'Siberian 4.3.3 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/4.3.2.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(86, 246, 'Siberian 4.4.0 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/4.4.0.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52'),
(87, 250, 'Siberian 4.4.2 is available!', 'The new version of Siberian is online. You can download and install it via Settings > Modules as usual. ;-) Click on the eye to access to the Release Note.', 'http://updates.siberiancms.com/release-notes/mae/4.4.2.html', 0, 0, '2016-08-27 00:37:52', '2016-08-27 00:37:52');

-- --------------------------------------------------------

--
-- Table structure for table `backoffice_user`
--

CREATE TABLE IF NOT EXISTS `backoffice_user` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `backoffice_user`
--

INSERT INTO `backoffice_user` (`user_id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'polaris0610@outlook.com', '8c3ac9d562e028d534ecac9e246b11cd7ec451f8', '2016-08-27 00:37:13', '2016-08-27 00:37:13');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `booking_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `booking_store`
--

CREATE TABLE IF NOT EXISTS `booking_store` (
  `store_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `booking_id` int(11) NOT NULL,
  `store_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category`
--

CREATE TABLE IF NOT EXISTS `catalog_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `value_id` int(11) unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `position` smallint(5) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `catalog_category_ibfk_1` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product`
--

CREATE TABLE IF NOT EXISTS `catalog_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `value_id` int(11) unsigned NOT NULL,
  `mcommerce_id` int(11) unsigned DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `library_id` int(11) unsigned NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'basic',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `format_quantity` tinyint(2) NOT NULL DEFAULT '0',
  `conditions` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `position` smallint(5) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `catalog_product_ibfk_1` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_folder_category`
--

CREATE TABLE IF NOT EXISTS `catalog_product_folder_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `catalog_product_folder_category_ibfk_1` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_format`
--

CREATE TABLE IF NOT EXISTS `catalog_product_format` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  PRIMARY KEY (`option_id`),
  KEY `catalog_product_format_ibfk_1` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_group`
--

CREATE TABLE IF NOT EXISTS `catalog_product_group` (
  `group_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` int(11) unsigned DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_group_option`
--

CREATE TABLE IF NOT EXISTS `catalog_product_group_option` (
  `option_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(2550) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`option_id`),
  KEY `catalog_product_group_option_ibfk_1` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_group_option_value`
--

CREATE TABLE IF NOT EXISTS `catalog_product_group_option_value` (
  `value_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_value_id` int(11) unsigned NOT NULL,
  `option_id` int(11) unsigned NOT NULL,
  `price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `qty_min` smallint(5) NOT NULL DEFAULT '0',
  `qty_max` smallint(5) DEFAULT NULL,
  PRIMARY KEY (`value_id`),
  KEY `catalog_product_group_option_value_ibfk_2` (`group_value_id`),
  KEY `catalog_product_group_option_value_ibfk_1` (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_group_value`
--

CREATE TABLE IF NOT EXISTS `catalog_product_group_value` (
  `value_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `group_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`value_id`),
  KEY `catalog_product_group_value_ibfk_1` (`product_id`),
  KEY `catalog_product_group_value_ibfk_2` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cms_application_block`
--

CREATE TABLE IF NOT EXISTS `cms_application_block` (
  `block_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `position` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `template` text COLLATE utf8_unicode_ci NOT NULL,
  `mobile_template` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`block_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `cms_application_block`
--

INSERT INTO `cms_application_block` (`block_id`, `type`, `position`, `icon`, `title`, `template`, `mobile_template`) VALUES
(1, 'text', 1, 'icon-file-alt', 'Text', 'cms/application/page/edit/block/text.phtml', 'cms/page/%s/view/block/text.phtml'),
(2, 'image', 2, 'icon-picture', 'Image', 'cms/application/page/edit/block/image.phtml', 'cms/page/%s/view/block/image.phtml'),
(3, 'video', 3, 'icon-facetime-video', 'Video', 'cms/application/page/edit/block/video.phtml', 'cms/page/%s/view/block/video.phtml'),
(4, 'address', 4, 'icon-location-arrow', 'Address', 'cms/application/page/edit/block/address.phtml', 'cms/page/%s/view/block/address.phtml'),
(5, 'button', 5, 'icon-barcode', 'Button', 'cms/application/page/edit/block/button.phtml', 'cms/page/%s/view/block/button.phtml'),
(6, 'file', 6, 'icon-paper-clip', 'Attachment', 'cms/application/page/edit/block/file.phtml', 'cms/page/%s/view/block/file.phtml'),
(7, 'slider', 7, 'icon-play-circle', 'Slider', 'cms/application/page/edit/block/slider.phtml', 'cms/page/%s/view/block/slider.phtml');

-- --------------------------------------------------------

--
-- Table structure for table `cms_application_page`
--

CREATE TABLE IF NOT EXISTS `cms_application_page` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`page_id`),
  KEY `cms_application_page_ibfk_1` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cms_application_page_block`
--

CREATE TABLE IF NOT EXISTS `cms_application_page_block` (
  `value_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `block_id` int(11) unsigned NOT NULL,
  `page_id` int(11) unsigned NOT NULL,
  `position` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cms_application_page_block_address`
--

CREATE TABLE IF NOT EXISTS `cms_application_page_block_address` (
  `address_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `label` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_address` tinyint(1) NOT NULL DEFAULT '0',
  `show_geolocation_button` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`address_id`),
  KEY `cms_application_page_block_address_ibfk_1` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cms_application_page_block_button`
--

CREATE TABLE IF NOT EXISTS `cms_application_page_block_button` (
  `button_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `type_id` enum('link','phone') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'phone',
  `content` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`button_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cms_application_page_block_file`
--

CREATE TABLE IF NOT EXISTS `cms_application_page_block_file` (
  `file_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`file_id`),
  KEY `FK_CMS_APPLICATION_PAGE_BLOCK_FILE_VALUE_ID` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cms_application_page_block_image`
--

CREATE TABLE IF NOT EXISTS `cms_application_page_block_image` (
  `image_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `library_id` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layout` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`image_id`),
  KEY `cms_application_page_block_image_ibfk_1` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cms_application_page_block_image_library`
--

CREATE TABLE IF NOT EXISTS `cms_application_page_block_image_library` (
  `image_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `library_id` int(11) unsigned NOT NULL,
  `image_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_fullsize_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cms_application_page_block_slider`
--

CREATE TABLE IF NOT EXISTS `cms_application_page_block_slider` (
  `slider_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `duration` tinyint(1) NOT NULL DEFAULT '0',
  `library_id` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layout` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`slider_id`),
  KEY `cms_application_page_block_slider_ibfk_1` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cms_application_page_block_text`
--

CREATE TABLE IF NOT EXISTS `cms_application_page_block_text` (
  `text_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alignment` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `layout_id` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`text_id`),
  KEY `cms_application_page_block_text_ibfk_1` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cms_application_page_block_video`
--

CREATE TABLE IF NOT EXISTS `cms_application_page_block_video` (
  `video_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `type_id` enum('link','youtube','podcast') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'link',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`video_id`),
  KEY `cms_application_page_block_video_ibfk_1` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cms_application_page_block_video_link`
--

CREATE TABLE IF NOT EXISTS `cms_application_page_block_video_link` (
  `video_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cms_application_page_block_video_podcast`
--

CREATE TABLE IF NOT EXISTS `cms_application_page_block_video_podcast` (
  `video_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `search` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cms_application_page_block_video_youtube`
--

CREATE TABLE IF NOT EXISTS `cms_application_page_block_video_youtube` (
  `video_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `search` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `customer_id` int(11) unsigned DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_visible` int(11) DEFAULT '1',
  `latitude` decimal(11,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `comment_ibfk_1` (`value_id`),
  KEY `comment_ibfk_2` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `comment_answer`
--

CREATE TABLE IF NOT EXISTS `comment_answer` (
  `answer_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) unsigned NOT NULL,
  `customer_id` int(11) NOT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_visible` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`answer_id`),
  KEY `comment_answer_ibfk_1` (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `comment_like`
--

CREATE TABLE IF NOT EXISTS `comment_like` (
  `like_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) unsigned NOT NULL,
  `customer_id` int(11) unsigned DEFAULT NULL,
  `customer_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`like_id`),
  KEY `comment_like_ibfk_1` (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `comment_radius`
--

CREATE TABLE IF NOT EXISTS `comment_radius` (
  `radius_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `radius` decimal(7,2) unsigned DEFAULT '10.00',
  PRIMARY KEY (`radius_id`),
  KEY `comment_radius_ibfk_1` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cover` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `civility` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postcode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` decimal(11,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`contact_id`),
  KEY `contact_ibfk_1` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cron`
--

CREATE TABLE IF NOT EXISTS `cron` (
  `cron_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `command` text COLLATE utf8_unicode_ci NOT NULL,
  `minute` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-1',
  `hour` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-1',
  `month_day` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-1',
  `month` varchar(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-1',
  `week_day` varchar(14) COLLATE utf8_unicode_ci NOT NULL DEFAULT '-1',
  `is_active` tinyint(1) DEFAULT '1',
  `priority` tinyint(4) NOT NULL DEFAULT '5',
  `standalone` tinyint(1) NOT NULL,
  `last_error` longtext COLLATE utf8_unicode_ci NOT NULL,
  `last_trigger` datetime NOT NULL,
  `last_success` datetime NOT NULL,
  `last_fail` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`cron_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cron`
--

INSERT INTO `cron` (`cron_id`, `name`, `command`, `minute`, `hour`, `month_day`, `month`, `week_day`, `is_active`, `priority`, `standalone`, `last_error`, `last_trigger`, `last_success`, `last_fail`, `created_at`, `updated_at`) VALUES
(1, 'Sources builder queue', 'sources', '-1', '-1', '-1', '-1', '-1', 1, 50, 0, '', '2016-08-27 01:58:02', '2016-08-27 01:58:02', '0000-00-00 00:00:00', '2016-08-27 00:36:44', '2016-08-27 01:58:02'),
(2, 'Log rotation', 'logrotate', '5', '0', '-1', '-1', '-1', 1, 50, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-08-27 00:36:44', '2016-08-27 00:36:44'),
(3, 'APK Generator queue', 'apkgenerator', '-1', '-1', '-1', '-1', '-1', 1, 80, 0, '', '2016-08-27 01:58:02', '2016-08-27 01:58:02', '0000-00-00 00:00:00', '2016-08-27 00:36:44', '2016-08-27 01:58:02'),
(4, 'Android Tools (SDK, Etc...)', 'androidtools', '-1', '-1', '-1', '-1', '-1', 0, 10, 0, '', '2016-08-27 00:37:01', '2016-08-27 00:59:48', '0000-00-00 00:00:00', '2016-08-27 00:36:44', '2016-08-27 00:59:48'),
(5, 'Analytics', 'agregateanalytics', '10', '0', '-1', '-1', '-1', 1, 50, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-08-27 00:36:44', '2016-08-27 00:36:44'),
(6, 'Push Message queue', 'pushinstant', '-1', '-1', '-1', '-1', '-1', 1, 100, 0, '', '2016-08-27 01:58:02', '2016-08-27 01:58:02', '0000-00-00 00:00:00', '2016-08-27 00:36:44', '2016-08-27 01:58:02');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `civility` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nickname` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_custom_image` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_social_gaming` tinyint(1) NOT NULL DEFAULT '1',
  `can_access_locked_features` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `customer_address`
--

CREATE TABLE IF NOT EXISTS `customer_address` (
  `address_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) unsigned NOT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postcode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_address_ibfk_1` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `customer_metadata`
--

CREATE TABLE IF NOT EXISTS `customer_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) unsigned NOT NULL,
  `code` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `datas` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `customer_metadata_ibfk_1` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `customer_social`
--

CREATE TABLE IF NOT EXISTS `customer_social` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) unsigned NOT NULL,
  `type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `social_id` bigint(13) NOT NULL,
  `datas` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `customer_social_ibfk_1` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `customer_social_post`
--

CREATE TABLE IF NOT EXISTS `customer_social_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) unsigned NOT NULL,
  `customer_message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `points` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `customer_social_post_ibfk_1` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `event_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `event_custom`
--

CREATE TABLE IF NOT EXISTS `event_custom` (
  `event_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `agenda_id` int(11) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtitle` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `start_time_at` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_label` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_url` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rsvp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ticket_shop_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `websites` text COLLATE utf8_unicode_ci,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`event_id`),
  KEY `event_custom_ibfk_1` (`agenda_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `folder`
--

CREATE TABLE IF NOT EXISTS `folder` (
  `folder_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `root_category_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`folder_id`),
  KEY `folder_ibfk_1` (`value_id`),
  KEY `folder_ibfk_2` (`root_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `folder_category`
--

CREATE TABLE IF NOT EXISTS `folder_category` (
  `category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `type_id` enum('folder') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'folder',
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  KEY `folder_category_ibfk_1` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE IF NOT EXISTS `form` (
  `form_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `form_field`
--

CREATE TABLE IF NOT EXISTS `form_field` (
  `field_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `option` text COLLATE utf8_unicode_ci NOT NULL,
  `required` tinyint(4) NOT NULL DEFAULT '0',
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `position` smallint(5) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `form_section`
--

CREATE TABLE IF NOT EXISTS `form_section` (
  `section_id` int(11) NOT NULL AUTO_INCREMENT,
  `value_id` int(10) unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) unsigned NOT NULL,
  `value_id` int(11) unsigned NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `remote_addr` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `device_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other` text COLLATE utf8_unicode_ci,
  `visited_at` datetime NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `log_ibfk_1` (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `loyalty_card`
--

CREATE TABLE IF NOT EXISTS `loyalty_card` (
  `card_id` int(11) NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number_of_points` smallint(5) NOT NULL,
  `advantage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `conditions` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `use_once` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`card_id`),
  KEY `loyalty_card_ibfk_1` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `loyalty_card_customer`
--

CREATE TABLE IF NOT EXISTS `loyalty_card_customer` (
  `customer_card_id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` int(11) NOT NULL,
  `customer_id` int(11) unsigned NOT NULL,
  `number_of_points` smallint(5) NOT NULL,
  `is_used` tinyint(1) NOT NULL DEFAULT '0',
  `number_of_error` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `validate_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `used_at` datetime DEFAULT NULL,
  `last_error` datetime DEFAULT NULL,
  PRIMARY KEY (`customer_card_id`),
  KEY `loyalty_card_customer_ibfk_1` (`card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `loyalty_card_customer_log`
--

CREATE TABLE IF NOT EXISTS `loyalty_card_customer_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) unsigned NOT NULL,
  `card_id` int(11) NOT NULL,
  `password_id` int(11) NOT NULL,
  `number_of_points` smallint(5) unsigned NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `loyalty_card_customer_log_ibfk_1` (`card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `loyalty_card_password`
--

CREATE TABLE IF NOT EXISTS `loyalty_card_password` (
  `password_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `app_id` int(11) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`password_id`),
  KEY `loyalty_card_password_ibfk_1` (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `maps`
--

CREATE TABLE IF NOT EXISTS `maps` (
  `maps_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`maps_id`),
  KEY `FK_MAPS_VALUE_ID` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mcommerce`
--

CREATE TABLE IF NOT EXISTS `mcommerce` (
  `mcommerce_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `catalog_value_id` int(11) unsigned NOT NULL,
  `root_category_id` int(11) unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_search` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`mcommerce_id`),
  KEY `mcommerce_ibfk_1` (`catalog_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mcommerce_cart`
--

CREATE TABLE IF NOT EXISTS `mcommerce_cart` (
  `cart_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mcommerce_id` int(11) unsigned NOT NULL,
  `delivery_method_id` int(11) unsigned DEFAULT NULL,
  `payment_method_id` int(11) unsigned DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_firstname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_lastname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_birthday` date DEFAULT NULL,
  `customer_street` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_postcode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_latitude` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_longitude` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `store_id` int(11) unsigned NOT NULL,
  `subtotal_excl_tax` decimal(12,2) NOT NULL,
  `delivery_cost` decimal(12,2) unsigned NOT NULL,
  `delivery_tax_rate` decimal(5,2) DEFAULT NULL,
  `total_excl_tax` decimal(12,2) NOT NULL,
  `total_tax` decimal(12,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `paid_amount` decimal(12,2) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `mcommerce_cart_ibfk_1` (`mcommerce_id`),
  KEY `mcommerce_cart_ibfk_2` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mcommerce_cart_line`
--

CREATE TABLE IF NOT EXISTS `mcommerce_cart_line` (
  `line_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cart_id` int(11) unsigned NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `ref` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `base_price` decimal(12,2) DEFAULT NULL,
  `base_price_incl_tax` decimal(12,2) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `price_incl_tax` decimal(12,2) DEFAULT NULL,
  `qty` decimal(4,2) NOT NULL DEFAULT '1.00',
  `total` decimal(12,2) DEFAULT NULL,
  `total_incl_tax` decimal(12,2) DEFAULT NULL,
  `options` text COLLATE utf8_unicode_ci,
  `format` text COLLATE utf8_unicode_ci,
  `tax_id` int(11) unsigned NOT NULL,
  `tax_rate` decimal(5,2) NOT NULL,
  PRIMARY KEY (`line_id`),
  KEY `mcommerce_cart_line_ibfk_1` (`cart_id`),
  KEY `mcommerce_cart_line_ibfk_3` (`product_id`),
  KEY `mcommerce_cart_line_ibfk_2` (`tax_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mcommerce_delivery_method`
--

CREATE TABLE IF NOT EXISTS `mcommerce_delivery_method` (
  `method_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `is_free` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`method_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `mcommerce_delivery_method`
--

INSERT INTO `mcommerce_delivery_method` (`method_id`, `code`, `name`, `is_free`, `created_at`, `updated_at`) VALUES
(1, 'in_store', 'In store', 1, '2016-08-27 00:36:44', '2016-08-27 00:36:44'),
(2, 'carry_out', 'Carry Out', 1, '2016-08-27 00:36:44', '2016-08-27 00:36:44'),
(3, 'home_delivery', 'Delivery', 0, '2016-08-27 00:36:44', '2016-08-27 00:36:44');

-- --------------------------------------------------------

--
-- Table structure for table `mcommerce_order`
--

CREATE TABLE IF NOT EXISTS `mcommerce_order` (
  `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mcommerce_id` int(11) unsigned NOT NULL,
  `cart_id` int(11) unsigned NOT NULL,
  `store_id` int(11) unsigned NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `status_id` tinyint(1) NOT NULL DEFAULT '1',
  `payment_method_id` int(11) unsigned NOT NULL,
  `payment_method` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_method_id` int(11) unsigned NOT NULL,
  `delivery_method` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `customer_firstname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `customer_lastname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `customer_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_street` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_postcode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `subtotal_excl_tax` decimal(12,2) NOT NULL,
  `total_excl_tax` decimal(12,2) NOT NULL,
  `total_tax` decimal(12,2) NOT NULL,
  `delivery_cost` decimal(12,2) unsigned NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `paid_amount` decimal(12,2) DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `paid_at` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `mcommerce_order_ibfk_1` (`mcommerce_id`),
  KEY `mcommerce_order_ibfk_3` (`cart_id`),
  KEY `mcommerce_order_ibfk_2` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mcommerce_order_line`
--

CREATE TABLE IF NOT EXISTS `mcommerce_order_line` (
  `line_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) unsigned NOT NULL,
  `cart_line_id` int(11) unsigned NOT NULL,
  `ref` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `base_price` decimal(12,2) DEFAULT NULL,
  `base_price_incl_tax` decimal(12,2) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `price_incl_tax` decimal(12,2) DEFAULT NULL,
  `qty` decimal(4,2) NOT NULL DEFAULT '1.00',
  `total` decimal(12,2) DEFAULT NULL,
  `total_incl_tax` decimal(12,2) DEFAULT NULL,
  `options` text COLLATE utf8_unicode_ci,
  `format` text COLLATE utf8_unicode_ci,
  `tax_id` int(11) unsigned NOT NULL,
  `tax_rate` decimal(5,2) NOT NULL,
  PRIMARY KEY (`line_id`),
  KEY `mcommerce_order_line_ibfk_1` (`order_id`),
  KEY `mcommerce_order_line_ibfk_3` (`cart_line_id`),
  KEY `mcommerce_order_line_ibfk_2` (`tax_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mcommerce_payment_method`
--

CREATE TABLE IF NOT EXISTS `mcommerce_payment_method` (
  `method_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `online_payment` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`method_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `mcommerce_payment_method`
--

INSERT INTO `mcommerce_payment_method` (`method_id`, `code`, `name`, `online_payment`, `created_at`, `updated_at`) VALUES
(1, 'paypal', 'Paypal', 1, '2016-08-27 00:36:44', '2016-08-27 00:36:44'),
(2, 'cash', 'Cash', 0, '2016-08-27 00:36:44', '2016-08-27 00:36:44'),
(3, 'check', 'Check', 0, '2016-08-27 00:36:44', '2016-08-27 00:36:44'),
(4, 'meal_voucher', 'Meal Voucher', 0, '2016-08-27 00:36:44', '2016-08-27 00:36:44'),
(5, 'cc_upon_delivery', 'Credit card (pay upon pickup or delivery)', 0, '2016-08-27 00:36:44', '2016-08-27 00:36:44');

-- --------------------------------------------------------

--
-- Table structure for table `mcommerce_store`
--

CREATE TABLE IF NOT EXISTS `mcommerce_store` (
  `store_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mcommerce_id` int(11) unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postcode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_fees` decimal(12,2) NOT NULL DEFAULT '0.00',
  `min_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `min_amount_free_delivery` decimal(12,2) NOT NULL DEFAULT '0.00',
  `clients_calculate_change` tinyint(1) DEFAULT NULL,
  `delivery_area` decimal(8,4) DEFAULT NULL,
  `delivery_time` decimal(4,2) DEFAULT NULL,
  `opening_hours` text COLLATE utf8_unicode_ci,
  `is_visible` tinyint(1) NOT NULL DEFAULT '1',
  `currency_code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`store_id`),
  KEY `mcommerce_store_ibfk_1` (`mcommerce_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mcommerce_store_delivery_method`
--

CREATE TABLE IF NOT EXISTS `mcommerce_store_delivery_method` (
  `store_delivery_method_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(11) unsigned NOT NULL,
  `method_id` int(11) unsigned NOT NULL,
  `tax_id` int(11) unsigned DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `min_amount_for_free_delivery` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`store_delivery_method_id`),
  KEY `mcommerce_store_delivery_method_ibfk_1` (`store_id`),
  KEY `mcommerce_store_delivery_method_ibfk_2` (`method_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mcommerce_store_payment_method`
--

CREATE TABLE IF NOT EXISTS `mcommerce_store_payment_method` (
  `store_payment_method_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(11) unsigned NOT NULL,
  `method_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`store_payment_method_id`),
  KEY `mcommerce_store_payment_method_ibfk_1` (`store_id`),
  KEY `mcommerce_store_payment_method_ibfk_2` (`method_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mcommerce_store_payment_method_paypal`
--

CREATE TABLE IF NOT EXISTS `mcommerce_store_payment_method_paypal` (
  `paypal_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(11) unsigned NOT NULL,
  `user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `signature` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`paypal_id`),
  KEY `mcommerce_store_payment_method_paypal_ibfk_1` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mcommerce_store_printer`
--

CREATE TABLE IF NOT EXISTS `mcommerce_store_printer` (
  `printer_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(11) unsigned NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`printer_id`),
  KEY `mcommerce_store_printer_ibfk_1` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mcommerce_store_tax`
--

CREATE TABLE IF NOT EXISTS `mcommerce_store_tax` (
  `store_tax_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(11) unsigned NOT NULL,
  `tax_id` int(11) unsigned NOT NULL,
  `rate` decimal(5,2) NOT NULL,
  PRIMARY KEY (`store_tax_id`),
  KEY `mcommerce_store_tax_ibfk_1` (`store_id`),
  KEY `mcommerce_store_tax_ibfk_2` (`tax_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mcommerce_tax`
--

CREATE TABLE IF NOT EXISTS `mcommerce_tax` (
  `tax_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mcommerce_id` int(11) unsigned NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `rate` decimal(5,3) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`tax_id`),
  KEY `mcommerce_tax_ibfk_1` (`mcommerce_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `media_gallery_image`
--

CREATE TABLE IF NOT EXISTS `media_gallery_image` (
  `gallery_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `type_id` enum('picasa','custom','instagram') COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`gallery_id`),
  KEY `media_gallery_image_ibfk_1` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `media_gallery_image_custom`
--

CREATE TABLE IF NOT EXISTS `media_gallery_image_custom` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) unsigned NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`image_id`),
  KEY `media_gallery_image_custom_ibfk_1` (`gallery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `media_gallery_image_instagram`
--

CREATE TABLE IF NOT EXISTS `media_gallery_image_instagram` (
  `gallery_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `param_instagram` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `order_by` enum('updated') COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`gallery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `media_gallery_image_picasa`
--

CREATE TABLE IF NOT EXISTS `media_gallery_image_picasa` (
  `gallery_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('album','search') COLLATE utf8_unicode_ci DEFAULT NULL,
  `param` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `album_id` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_by` enum('updated') COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`gallery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `media_gallery_music`
--

CREATE TABLE IF NOT EXISTS `media_gallery_music` (
  `gallery_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `artwork_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`gallery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `media_gallery_music_album`
--

CREATE TABLE IF NOT EXISTS `media_gallery_music_album` (
  `album_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `artwork_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `podcast_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `artist_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`album_id`),
  KEY `media_gallery_music_album_ibfk_1` (`gallery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `media_gallery_music_elements`
--

CREATE TABLE IF NOT EXISTS `media_gallery_music_elements` (
  `position_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) unsigned DEFAULT NULL,
  `album_id` int(11) unsigned DEFAULT NULL,
  `track_id` int(11) unsigned DEFAULT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`position_id`),
  KEY `media_gallery_music_elements_ibfk_1` (`gallery_id`),
  KEY `media_gallery_music_elements_ibfk_2` (`album_id`),
  KEY `media_gallery_music_elements_ibfk_3` (`track_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `media_gallery_music_track`
--

CREATE TABLE IF NOT EXISTS `media_gallery_music_track` (
  `track_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` int(11) unsigned DEFAULT NULL,
  `gallery_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `artwork_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `artist_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `album_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purchase_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stream_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`track_id`),
  KEY `media_gallery_music_track_ibfk_1` (`album_id`),
  KEY `media_gallery_music_track_ibfk_2` (`gallery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `media_gallery_video`
--

CREATE TABLE IF NOT EXISTS `media_gallery_video` (
  `gallery_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `type_id` enum('youtube','itunes','vimeo') COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`gallery_id`),
  KEY `media_gallery_video_ibfk_1` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `media_gallery_video_itunes`
--

CREATE TABLE IF NOT EXISTS `media_gallery_video_itunes` (
  `gallery_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `param` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`gallery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `media_gallery_video_vimeo`
--

CREATE TABLE IF NOT EXISTS `media_gallery_video_vimeo` (
  `gallery_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('user','group','channel','album') COLLATE utf8_unicode_ci NOT NULL,
  `param` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`gallery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `media_gallery_video_youtube`
--

CREATE TABLE IF NOT EXISTS `media_gallery_video_youtube` (
  `gallery_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('user','channel','search','favorite','playlist') COLLATE utf8_unicode_ci NOT NULL,
  `param` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `order_by` enum('updated') COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`gallery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `media_library`
--

CREATE TABLE IF NOT EXISTS `media_library` (
  `library_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`library_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=76 ;

--
-- Dumping data for table `media_library`
--

INSERT INTO `media_library` (`library_id`, `name`) VALUES
(1, 'Audio'),
(2, 'Audio-flat'),
(3, 'Videos'),
(4, 'Videos-flat'),
(5, 'Images'),
(6, 'Images-flat'),
(7, 'Booking'),
(8, 'Booking-flat'),
(9, 'Set Meal'),
(10, 'Set Meal-flat'),
(11, 'Catalog'),
(12, 'Catalog-flat'),
(13, 'Custom Page'),
(14, 'Custom Page-flat'),
(15, 'Code Scan'),
(16, 'Code Scan-flat'),
(17, 'Newswall'),
(18, 'Newswall-flat'),
(19, 'Fan Wall'),
(20, 'Fan Wall-flat'),
(21, 'Contact'),
(22, 'Contact-flat'),
(23, 'Calendar'),
(24, 'Calendar-flat'),
(25, 'Folders'),
(26, 'Folders-flat'),
(27, 'Form'),
(28, 'Form-flat'),
(29, 'Loyalty Card'),
(30, 'Loyalty Card-flat'),
(31, 'Maps'),
(32, 'Maps-flat'),
(33, 'Commerce-flat'),
(34, 'Padlock'),
(35, 'Padlock-flat'),
(36, 'Places'),
(37, 'Places-flat'),
(38, 'Discount'),
(39, 'Discount-flat'),
(40, 'QR Coupons'),
(41, 'QR Coupons-flat'),
(42, 'In-App Messages'),
(43, 'In-App Messages-flat'),
(44, 'Push Notifications'),
(45, 'Push Notifications-flat'),
(46, 'Radio'),
(47, 'Radio-flat'),
(48, 'RSS Feed'),
(49, 'RSS Feed-flat'),
(50, 'Facebook'),
(51, 'Facebook-flat'),
(52, 'Contest'),
(53, 'Contest-flat'),
(54, 'Source code'),
(55, 'Source code-flat'),
(56, 'Tip'),
(57, 'Tip-flat'),
(58, 'Topics'),
(59, 'Topics-flat'),
(60, 'Weather'),
(61, 'Weather-flat'),
(62, 'Weblink'),
(63, 'Magento'),
(64, 'Magento-flat'),
(65, 'WooCommerce'),
(66, 'WooCommerce-flat'),
(67, 'Prestashop'),
(68, 'Prestashop-flat'),
(69, 'Volusion'),
(70, 'Volusion-flat'),
(71, 'Shopify'),
(72, 'Shopify-flat'),
(73, 'Weblink-flat'),
(74, 'Wordpress'),
(75, 'Wordpress-flat');

-- --------------------------------------------------------

--
-- Table structure for table `media_library_image`
--

CREATE TABLE IF NOT EXISTS `media_library_image` (
  `image_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `library_id` int(11) unsigned NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secondary_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `app_id` int(11) unsigned DEFAULT NULL,
  `can_be_colorized` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `position` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`image_id`),
  KEY `media_library_image_ibfk_1` (`library_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=288 ;

--
-- Dumping data for table `media_library_image`
--

INSERT INTO `media_library_image` (`image_id`, `library_id`, `link`, `secondary_link`, `thumbnail`, `option_id`, `app_id`, `can_be_colorized`, `position`) VALUES
(1, 1, '/musics/music1.png', NULL, NULL, NULL, NULL, 1, 0),
(2, 1, '/musics/music2.png', NULL, NULL, NULL, NULL, 1, 0),
(3, 1, '/musics/music3.png', NULL, NULL, NULL, NULL, 1, 0),
(4, 1, '/musics/music4.png', NULL, NULL, NULL, NULL, 1, 0),
(5, 1, '/musics/music5.png', NULL, NULL, NULL, NULL, 1, 0),
(6, 1, '/musics/music6.png', NULL, NULL, NULL, NULL, 1, 0),
(7, 1, '/musics/music7.png', NULL, NULL, NULL, NULL, 1, 0),
(8, 1, '/musics/music8.png', NULL, NULL, NULL, NULL, 1, 0),
(9, 1, '/musics/music9.png', NULL, NULL, NULL, NULL, 1, 0),
(10, 2, '/musics/music1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(11, 2, '/musics/music2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(12, 2, '/musics/music3-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(13, 3, '/videos/video1.png', NULL, NULL, NULL, NULL, 1, 0),
(14, 3, '/videos/video2.png', NULL, NULL, NULL, NULL, 1, 0),
(15, 3, '/videos/video3.png', NULL, NULL, NULL, NULL, 1, 0),
(16, 3, '/videos/video4.png', NULL, NULL, NULL, NULL, 1, 0),
(17, 3, '/videos/video5.png', NULL, NULL, NULL, NULL, 1, 0),
(18, 3, '/videos/video6.png', NULL, NULL, NULL, NULL, 1, 0),
(19, 4, '/videos/video1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(20, 4, '/videos/video2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(21, 4, '/videos/video3-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(22, 5, '/images/image1.png', NULL, NULL, NULL, NULL, 1, 0),
(23, 5, '/images/image2.png', NULL, NULL, NULL, NULL, 1, 0),
(24, 5, '/images/image3.png', NULL, NULL, NULL, NULL, 1, 0),
(25, 5, '/images/image4.png', NULL, NULL, NULL, NULL, 1, 0),
(26, 5, '/images/image5.png', NULL, NULL, NULL, NULL, 1, 0),
(27, 5, '/images/image6.png', NULL, NULL, NULL, NULL, 1, 0),
(28, 5, '/images/image7.png', NULL, NULL, NULL, NULL, 1, 0),
(29, 6, '/images/image1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(30, 6, '/images/image2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(31, 6, '/images/image3-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(32, 7, '/booking/booking1.png', NULL, NULL, NULL, NULL, 1, 0),
(33, 7, '/booking/booking2.png', NULL, NULL, NULL, NULL, 1, 0),
(34, 7, '/booking/booking3.png', NULL, NULL, NULL, NULL, 1, 0),
(35, 7, '/booking/booking4.png', NULL, NULL, NULL, NULL, 1, 0),
(36, 7, '/booking/booking5.png', NULL, NULL, NULL, NULL, 1, 0),
(37, 7, '/booking/booking6.png', NULL, NULL, NULL, NULL, 1, 0),
(38, 7, '/booking/booking7.png', NULL, NULL, NULL, NULL, 1, 0),
(39, 7, '/booking/booking8.png', NULL, NULL, NULL, NULL, 1, 0),
(40, 7, '/booking/booking9.png', NULL, NULL, NULL, NULL, 1, 0),
(41, 7, '/booking/booking10.png', NULL, NULL, NULL, NULL, 1, 0),
(42, 7, '/booking/booking11.png', NULL, NULL, NULL, NULL, 1, 0),
(43, 8, '/booking/booking1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(44, 8, '/booking/booking2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(45, 8, '/booking/booking3-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(46, 9, '/catalog/catalog1.png', NULL, NULL, NULL, NULL, 1, 0),
(47, 9, '/catalog/catalog2.png', NULL, NULL, NULL, NULL, 1, 0),
(48, 9, '/catalog/catalog3.png', NULL, NULL, NULL, NULL, 1, 0),
(49, 9, '/catalog/catalog4.png', NULL, NULL, NULL, NULL, 1, 0),
(50, 9, '/catalog/catalog5.png', NULL, NULL, NULL, NULL, 1, 0),
(51, 9, '/catalog/catalog6.png', NULL, NULL, NULL, NULL, 1, 0),
(52, 9, '/catalog/catalog7.png', NULL, NULL, NULL, NULL, 1, 0),
(53, 9, '/promotion/discount4.png', NULL, NULL, NULL, NULL, 1, 0),
(54, 9, '/catalog/catalog8.png', NULL, NULL, NULL, NULL, 1, 0),
(55, 9, '/catalog/catalog9.png', NULL, NULL, NULL, NULL, 1, 0),
(56, 9, '/catalog/catalog10.png', NULL, NULL, NULL, NULL, 1, 0),
(57, 9, '/catalog/catalog11.png', NULL, NULL, NULL, NULL, 1, 0),
(58, 10, '/set_meal/meat1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(59, 10, '/set_meal/meat2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(60, 10, '/set_meal/meat3-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(61, 11, '/catalog/catalog1.png', NULL, NULL, NULL, NULL, 1, 0),
(62, 11, '/catalog/catalog2.png', NULL, NULL, NULL, NULL, 1, 0),
(63, 11, '/catalog/catalog3.png', NULL, NULL, NULL, NULL, 1, 0),
(64, 11, '/catalog/catalog4.png', NULL, NULL, NULL, NULL, 1, 0),
(65, 11, '/catalog/catalog5.png', NULL, NULL, NULL, NULL, 1, 0),
(66, 11, '/catalog/catalog6.png', NULL, NULL, NULL, NULL, 1, 0),
(67, 11, '/catalog/catalog7.png', NULL, NULL, NULL, NULL, 1, 0),
(68, 11, '/promotion/discount4.png', NULL, NULL, NULL, NULL, 1, 0),
(69, 11, '/catalog/catalog8.png', NULL, NULL, NULL, NULL, 1, 0),
(70, 11, '/catalog/catalog9.png', NULL, NULL, NULL, NULL, 1, 0),
(71, 11, '/catalog/catalog10.png', NULL, NULL, NULL, NULL, 1, 0),
(72, 11, '/catalog/catalog11.png', NULL, NULL, NULL, NULL, 1, 0),
(73, 12, '/catalog/catalog1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(74, 12, '/catalog/catalog2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(75, 12, '/catalog/catalog3-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(76, 13, '/custom_page/custom1.png', NULL, NULL, NULL, NULL, 1, 0),
(77, 13, '/loyalty/loyalty6.png', NULL, NULL, NULL, NULL, 1, 0),
(78, 13, '/newswall/newswall1.png', NULL, NULL, NULL, NULL, 1, 0),
(79, 13, '/newswall/newswall2.png', NULL, NULL, NULL, NULL, 1, 0),
(80, 13, '/newswall/newswall3.png', NULL, NULL, NULL, NULL, 1, 0),
(81, 13, '/newswall/newswall4.png', NULL, NULL, NULL, NULL, 1, 0),
(82, 13, '/push_notifications/push1.png', NULL, NULL, NULL, NULL, 1, 0),
(83, 13, '/push_notifications/push2.png', NULL, NULL, NULL, NULL, 1, 0),
(84, 13, '/catalog/catalog6.png', NULL, NULL, NULL, NULL, 1, 0),
(85, 13, '/catalog/catalog8.png', NULL, NULL, NULL, NULL, 1, 0),
(86, 13, '/catalog/catalog9.png', NULL, NULL, NULL, NULL, 1, 0),
(87, 14, '/custom_page/custom1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(88, 14, '/custom_page/custom2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(89, 14, '/custom_page/custom3-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(90, 15, '/code_scan/scan1.png', NULL, NULL, NULL, NULL, 1, 0),
(91, 15, '/code_scan/scan2.png', NULL, NULL, NULL, NULL, 1, 0),
(92, 15, '/code_scan/scan3.png', NULL, NULL, NULL, NULL, 1, 0),
(93, 16, '/code_scan/scan1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(94, 16, '/code_scan/scan2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(95, 16, '/code_scan/scan3-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(96, 17, '/newswall/newswall1.png', NULL, NULL, NULL, NULL, 1, 0),
(97, 17, '/newswall/newswall2.png', NULL, NULL, NULL, NULL, 1, 0),
(98, 17, '/newswall/newswall3.png', NULL, NULL, NULL, NULL, 1, 0),
(99, 17, '/newswall/newswall4.png', NULL, NULL, NULL, NULL, 1, 0),
(100, 18, '/newswall/newswall1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(101, 18, '/newswall/newswall2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(102, 18, '/newswall/newswall3-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(103, 19, '/fanwall/fanwall1.png', NULL, NULL, NULL, NULL, 1, 0),
(104, 19, '/fanwall/fanwall2.png', NULL, NULL, NULL, NULL, 1, 0),
(105, 19, '/fanwall/fanwall3.png', NULL, NULL, NULL, NULL, 1, 0),
(106, 19, '/fanwall/fanwall4.png', NULL, NULL, NULL, NULL, 1, 0),
(107, 20, '/fanwall/fanwall1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(108, 20, '/fanwall/fanwall2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(109, 20, '/fanwall/fanwall3-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(110, 21, '/contact/contact1.png', NULL, NULL, NULL, NULL, 1, 0),
(111, 21, '/contact/contact2.png', NULL, NULL, NULL, NULL, 1, 0),
(112, 21, '/contact/contact3.png', NULL, NULL, NULL, NULL, 1, 0),
(113, 21, '/contact/contact4.png', NULL, NULL, NULL, NULL, 1, 0),
(114, 21, '/contact/contact5.png', NULL, NULL, NULL, NULL, 1, 0),
(115, 21, '/contact/contact6.png', NULL, NULL, NULL, NULL, 1, 0),
(116, 21, '/contact/contact7.png', NULL, NULL, NULL, NULL, 1, 0),
(117, 21, '/contact/contact8.png', NULL, NULL, NULL, NULL, 1, 0),
(118, 21, '/contact/contact9.png', NULL, NULL, NULL, NULL, 1, 0),
(119, 21, '/contact/contact10.png', NULL, NULL, NULL, NULL, 1, 0),
(120, 21, '/contact/contact11.png', NULL, NULL, NULL, NULL, 1, 0),
(121, 22, '/contact/contact1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(122, 22, '/contact/contact2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(123, 22, '/contact/contact3-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(124, 23, '/calendar/calendar1.png', NULL, NULL, NULL, NULL, 1, 0),
(125, 23, '/calendar/calendar2.png', NULL, NULL, NULL, NULL, 1, 0),
(126, 23, '/calendar/calendar3.png', NULL, NULL, NULL, NULL, 1, 0),
(127, 24, '/calendar/calendar1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(128, 24, '/calendar/calendar2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(129, 24, '/calendar/calendar3-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(130, 25, '/folders/folder1.png', NULL, NULL, NULL, NULL, 1, 0),
(131, 25, '/folders/folder2.png', NULL, NULL, NULL, NULL, 1, 0),
(132, 25, '/folders/folder3.png', NULL, NULL, NULL, NULL, 1, 0),
(133, 25, '/folders/folder4.png', NULL, NULL, NULL, NULL, 1, 0),
(134, 25, '/folders/folder5.png', NULL, NULL, NULL, NULL, 1, 0),
(135, 26, '/folders/folder1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(136, 26, '/folders/folder2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(137, 26, '/folders/folder3-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(138, 27, '/form/form1.png', NULL, NULL, NULL, NULL, 1, 0),
(139, 27, '/form/form2.png', NULL, NULL, NULL, NULL, 1, 0),
(140, 27, '/form/form3.png', NULL, NULL, NULL, NULL, 1, 0),
(141, 27, '/calendar/calendar1.png', NULL, NULL, NULL, NULL, 1, 0),
(142, 27, '/catalog/catalog6.png', NULL, NULL, NULL, NULL, 1, 0),
(143, 28, '/form/form1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(144, 28, '/form/form2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(145, 28, '/form/form3-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(146, 29, '/loyalty/loyalty1.png', NULL, NULL, NULL, NULL, 1, 0),
(147, 29, '/loyalty/loyalty2.png', NULL, NULL, NULL, NULL, 1, 0),
(148, 29, '/loyalty/loyalty3.png', NULL, NULL, NULL, NULL, 1, 0),
(149, 29, '/loyalty/loyalty4.png', NULL, NULL, NULL, NULL, 1, 0),
(150, 29, '/loyalty/loyalty5.png', NULL, NULL, NULL, NULL, 1, 0),
(151, 29, '/loyalty/loyalty6.png', NULL, NULL, NULL, NULL, 1, 0),
(152, 30, '/loyalty/loyalty1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(153, 30, '/loyalty/loyalty2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(154, 30, '/loyalty/loyalty3-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(155, 31, '/maps/maps1.png', NULL, NULL, NULL, NULL, 1, 0),
(156, 31, '/maps/maps2.png', NULL, NULL, NULL, NULL, 1, 0),
(157, 31, '/maps/maps3.png', NULL, NULL, NULL, NULL, 1, 0),
(158, 32, '/maps/maps1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(159, 32, '/maps/maps2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(160, 32, '/maps/maps3-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(161, 33, '/commerce/m_commerce1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(162, 33, '/commerce/m_commerce2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(163, 33, '/commerce/m_commerce3-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(164, 34, '/padlock/padlock.png', NULL, NULL, NULL, NULL, 1, 0),
(165, 35, '/padlock/padlock-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(166, 35, '/padlock/padlock1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(167, 35, '/padlock/padlock2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(168, 36, '/places/places1.png', NULL, NULL, NULL, NULL, 1, 0),
(169, 36, '/places/places2.png', NULL, NULL, NULL, NULL, 1, 0),
(170, 36, '/places/places3.png', NULL, NULL, NULL, NULL, 1, 0),
(171, 36, '/places/places4.png', NULL, NULL, NULL, NULL, 1, 0),
(172, 37, '/places/places-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(173, 37, '/places/places1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(174, 37, '/places/places2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(175, 38, '/discount/discount1.png', NULL, NULL, NULL, NULL, 1, 0),
(176, 38, '/discount/discount2.png', NULL, NULL, NULL, NULL, 1, 0),
(177, 38, '/discount/discount3.png', NULL, NULL, NULL, NULL, 1, 0),
(178, 38, '/discount/discount4.png', NULL, NULL, NULL, NULL, 1, 0),
(179, 38, '/discount/discount5.png', NULL, NULL, NULL, NULL, 1, 0),
(180, 39, '/discount/discount1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(181, 39, '/discount/discount2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(182, 39, '/discount/discount3-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(183, 40, '/discount/discount1.png', NULL, NULL, NULL, NULL, 1, 0),
(184, 40, '/discount/discount2.png', NULL, NULL, NULL, NULL, 1, 0),
(185, 40, '/discount/discount3.png', NULL, NULL, NULL, NULL, 1, 0),
(186, 40, '/discount/discount4.png', NULL, NULL, NULL, NULL, 1, 0),
(187, 40, '/discount/discount5.png', NULL, NULL, NULL, NULL, 1, 0),
(188, 41, '/discount/discount1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(189, 41, '/discount/discount2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(190, 41, '/discount/discount3-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(191, 42, '/inapp_messages/inapp1.png', NULL, NULL, NULL, NULL, 1, 0),
(192, 43, '/inapp_messages/inapp1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(193, 43, '/inapp_messages/inapp2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(194, 43, '/inapp_messages/inapp3-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(195, 44, '/push_notifications/push1.png', NULL, NULL, NULL, NULL, 1, 0),
(196, 44, '/push_notifications/push2.png', NULL, NULL, NULL, NULL, 1, 0),
(197, 44, '/push_notifications/push3.png', NULL, NULL, NULL, NULL, 1, 0),
(198, 44, '/push_notifications/push4.png', NULL, NULL, NULL, NULL, 1, 0),
(199, 44, '/push_notifications/push5.png', NULL, NULL, NULL, NULL, 1, 0),
(200, 45, '/push_notifications/push1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(201, 45, '/push_notifications/push2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(202, 45, '/push_notifications/push3-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(203, 46, '/radio/radio1.png', NULL, NULL, NULL, NULL, 1, 0),
(204, 46, '/radio/radio2.png', NULL, NULL, NULL, NULL, 1, 0),
(205, 46, '/radio/radio3.png', NULL, NULL, NULL, NULL, 1, 0),
(206, 46, '/radio/radio4.png', NULL, NULL, NULL, NULL, 1, 0),
(207, 46, '/radio/radio5.png', NULL, NULL, NULL, NULL, 1, 0),
(208, 46, '/radio/radio6.png', NULL, NULL, NULL, NULL, 1, 0),
(209, 46, '/radio/radio7.png', NULL, NULL, NULL, NULL, 1, 0),
(210, 46, '/radio/radio8.png', NULL, NULL, NULL, NULL, 1, 0),
(211, 47, '/radio/radio1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(212, 47, '/radio/radio2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(213, 47, '/radio/radio3-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(214, 48, '/rss_feed/rss1.png', NULL, NULL, NULL, NULL, 1, 0),
(215, 48, '/rss_feed/rss2.png', NULL, NULL, NULL, NULL, 1, 0),
(216, 48, '/rss_feed/rss3.png', NULL, NULL, NULL, NULL, 1, 0),
(217, 48, '/newswall/newswall1.png', NULL, NULL, NULL, NULL, 1, 0),
(218, 48, '/newswall/newswall2.png', NULL, NULL, NULL, NULL, 1, 0),
(219, 48, '/newswall/newswall3.png', NULL, NULL, NULL, NULL, 1, 0),
(220, 48, '/newswall/newswall4.png', NULL, NULL, NULL, NULL, 1, 0),
(221, 49, '/rss_feed/rss1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(222, 49, '/rss_feed/rss2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(223, 49, '/rss_feed/rss3-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(224, 50, '/social_facebook/facebook1.png', NULL, NULL, NULL, NULL, 1, 0),
(225, 51, '/social_facebook/facebook1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(226, 51, '/social_facebook/facebook2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(227, 51, '/social_facebook/facebook3-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(228, 52, '/contest/contest1.png', NULL, NULL, NULL, NULL, 1, 0),
(229, 52, '/contest/contest2.png', NULL, NULL, NULL, NULL, 1, 0),
(230, 52, '/contest/contest3.png', NULL, NULL, NULL, NULL, 1, 0),
(231, 52, '/contest/contest4.png', NULL, NULL, NULL, NULL, 1, 0),
(232, 52, '/contest/contest5.png', NULL, NULL, NULL, NULL, 1, 0),
(233, 53, '/contest/contest1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(234, 53, '/contest/contest2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(235, 53, '/contest/contest3-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(236, 54, '/source_code/source_code.png', NULL, NULL, NULL, NULL, 1, 0),
(237, 54, '/custom_page/custom1.png', NULL, NULL, NULL, NULL, 1, 0),
(238, 54, '/newswall/newswall2.png', NULL, NULL, NULL, NULL, 1, 0),
(239, 54, '/catalog/catalog6.png', NULL, NULL, NULL, NULL, 1, 0),
(240, 54, '/booking/booking4.png', NULL, NULL, NULL, NULL, 1, 0),
(241, 55, '/source_code/source_code1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(242, 55, '/source_code/source_code2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(243, 55, '/source_code/source_code3-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(244, 56, '/tip/tip1.png', NULL, NULL, NULL, NULL, 1, 0),
(245, 56, '/tip/tip2.png', NULL, NULL, NULL, NULL, 1, 0),
(246, 57, '/tip/tip1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(247, 57, '/tip/tip2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(248, 57, '/tip/tip3-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(249, 58, '/topic/topics1.png', NULL, NULL, NULL, NULL, 1, 0),
(250, 58, '/topic/topics2.png', NULL, NULL, NULL, NULL, 1, 0),
(251, 58, '/topic/topics3.png', NULL, NULL, NULL, NULL, 1, 0),
(252, 58, '/topic/topics4.png', NULL, NULL, NULL, NULL, 1, 0),
(253, 59, '/topic/topics1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(254, 59, '/topic/topics2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(255, 59, '/topic/topics3-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(256, 60, '/weather/weather1.png', NULL, NULL, NULL, NULL, 1, 0),
(257, 60, '/weather/weather2.png', NULL, NULL, NULL, NULL, 1, 0),
(258, 60, '/weather/weather3.png', NULL, NULL, NULL, NULL, 1, 0),
(259, 61, '/weather/weather-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(260, 61, '/weather/weather1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(261, 61, '/weather/weather2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(262, 62, '/weblink/link1.png', NULL, NULL, NULL, NULL, 1, 0),
(263, 62, '/weblink/link2.png', NULL, NULL, NULL, NULL, 1, 0),
(264, 62, '/weblink/link3.png', NULL, NULL, NULL, NULL, 1, 0),
(265, 63, '/magento/magento1.png', NULL, NULL, NULL, NULL, 1, 0),
(266, 64, '/magento/magento1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(267, 64, '/magento/magento2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(268, 65, '/woocommerce/woocommerce1.png', NULL, NULL, NULL, NULL, 1, 0),
(269, 66, '/woocommerce/woocommerce1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(270, 66, '/woocommerce/woocommerce2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(271, 67, '/prestashop/prestashop1.png', NULL, NULL, NULL, NULL, 1, 0),
(272, 68, '/prestashop/prestashop1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(273, 68, '/prestashop/prestashop2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(274, 68, '/prestashop/prestashop3-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(275, 69, '/volusion/volusion1.png', NULL, NULL, NULL, NULL, 1, 0),
(276, 70, '/volusion/volusion1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(277, 70, '/volusion/volusion2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(278, 71, '/shopify/shopify1.png', NULL, NULL, NULL, NULL, 1, 0),
(279, 72, '/shopify/shopify1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(280, 72, '/shopify/shopify2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(281, 72, '/shopify/shopify3-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(282, 73, '/weblink/link1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(283, 73, '/weblink/link2-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(284, 73, '/weblink/link3-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(285, 74, '/wordpress/wordpress1.png', NULL, NULL, NULL, NULL, 1, 0),
(286, 75, '/wordpress/wordpress1-flat.png', NULL, NULL, NULL, NULL, 1, 0),
(287, 75, '/wordpress/wordpress2-flat.png', NULL, NULL, NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `message_application`
--

CREATE TABLE IF NOT EXISTS `message_application` (
  `message_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) unsigned NOT NULL,
  `app_id` int(11) unsigned NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `FK_MESSAGE_APPLICATION_APP_ID` (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `message_application_file`
--

CREATE TABLE IF NOT EXISTS `message_application_file` (
  `file_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `message_id` int(11) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`file_id`),
  KEY `FK_MESSAGE_APPLICATION_FILE_MESSAGE_ID` (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE IF NOT EXISTS `module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `can_uninstall` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=46 ;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`module_id`, `name`, `version`, `can_uninstall`, `created_at`, `updated_at`) VALUES
(1, 'Core', '4.3.0', 0, '2016-08-27 00:36:41', '2016-08-27 00:36:41'),
(2, 'Application', '4.3.0', 0, '2016-08-27 00:36:41', '2016-08-27 00:36:41'),
(3, 'Media', '4.2.6', 0, '2016-08-27 00:36:41', '2016-08-27 00:36:41'),
(4, 'Admin', '4.3.0', 0, '2016-08-27 00:36:41', '2016-08-27 00:36:41'),
(5, 'Analytics', '4.2.0', 0, '2016-08-27 00:36:41', '2016-08-27 00:36:41'),
(6, 'Api', '4.2.0', 0, '2016-08-27 00:36:41', '2016-08-27 00:36:41'),
(7, 'Backoffice', '4.3.0', 0, '2016-08-27 00:36:42', '2016-08-27 00:36:42'),
(8, 'Booking', '4.2.0', 0, '2016-08-27 00:36:42', '2016-08-27 00:36:42'),
(9, 'Catalog', '4.2.0', 0, '2016-08-27 00:36:42', '2016-08-27 00:36:42'),
(10, 'Cms', '4.2.0', 0, '2016-08-27 00:36:42', '2016-08-27 00:36:42'),
(11, 'Codescan', '4.2.0', 0, '2016-08-27 00:36:42', '2016-08-27 00:36:42'),
(12, 'Comment', '4.3.0', 0, '2016-08-27 00:36:42', '2016-08-27 00:36:42'),
(13, 'Contact', '4.2.0', 0, '2016-08-27 00:36:42', '2016-08-27 00:36:42'),
(14, 'Cron', '4.3.0', 0, '2016-08-27 00:36:44', '2016-08-27 00:36:44'),
(15, 'Customer', '4.3.0', 0, '2016-08-27 00:36:44', '2016-08-27 00:36:44'),
(16, 'Event', '4.2.0', 0, '2016-08-27 00:36:44', '2016-08-27 00:36:44'),
(17, 'Folder', '4.2.0', 0, '2016-08-27 00:36:44', '2016-08-27 00:36:44'),
(18, 'Form', '4.2.0', 0, '2016-08-27 00:36:44', '2016-08-27 00:36:44'),
(19, 'Front', '4.3.0', 0, '2016-08-27 00:36:44', '2016-08-27 00:36:44'),
(20, 'Installer', '4.3.0', 0, '2016-08-27 00:36:44', '2016-08-27 00:36:44'),
(21, 'LoyaltyCard', '4.3.0', 0, '2016-08-27 00:36:44', '2016-08-27 00:36:44'),
(22, 'Map', '4.2.0', 0, '2016-08-27 00:36:44', '2016-08-27 00:36:44'),
(23, 'Maps', '4.2.0', 0, '2016-08-27 00:36:44', '2016-08-27 00:36:44'),
(24, 'Mcommerce', '4.3.1', 0, '2016-08-27 00:36:44', '2016-08-27 00:36:44'),
(25, 'Message', '4.2.0', 0, '2016-08-27 00:36:44', '2016-08-27 00:36:44'),
(26, 'Padlock', '4.3.0', 0, '2016-08-27 00:36:44', '2016-08-27 00:36:44'),
(27, 'Payment', '4.2.0', 0, '2016-08-27 00:36:44', '2016-08-27 00:36:44'),
(28, 'Places', '4.2.0', 0, '2016-08-27 00:36:44', '2016-08-27 00:36:44'),
(29, 'Preview', '4.2.0', 0, '2016-08-27 00:36:44', '2016-08-27 00:36:44'),
(30, 'Promotion', '4.3.0', 0, '2016-08-27 00:36:44', '2016-08-27 00:36:44'),
(31, 'Push', '4.3.1', 0, '2016-08-27 00:36:44', '2016-08-27 00:36:44'),
(32, 'Radio', '4.2.0', 0, '2016-08-27 00:36:44', '2016-08-27 00:36:44'),
(33, 'Rss', '4.2.0', 0, '2016-08-27 00:36:44', '2016-08-27 00:36:44'),
(34, 'Social', '4.2.0', 0, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(35, 'Socialgaming', '4.3.0', 0, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(36, 'Sourcecode', '4.2.0', 0, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(37, 'System', '4.2.0', 0, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(38, 'Template', '4.3.0', 0, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(39, 'Tip', '4.2.0', 0, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(40, 'Topic', '4.2.0', 0, '2016-08-27 00:36:45', '2016-08-27 00:36:46'),
(41, 'Translation', '4.2.0', 0, '2016-08-27 00:36:46', '2016-08-27 00:36:46'),
(42, 'Weather', '4.2.0', 0, '2016-08-27 00:36:46', '2016-08-27 00:36:46'),
(43, 'Weblink', '4.2.0', 0, '2016-08-27 00:36:46', '2016-08-27 00:36:46'),
(44, 'Wordpress', '4.2.0', 0, '2016-08-27 00:36:46', '2016-08-27 00:36:46'),
(45, 'Acl', '4.2.4', 0, '2016-08-27 00:36:46', '2016-08-27 00:36:46');

-- --------------------------------------------------------

--
-- Table structure for table `padlock`
--

CREATE TABLE IF NOT EXISTS `padlock` (
  `padlock_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`padlock_id`),
  KEY `padlock_ibfk_1` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `padlock_value`
--

CREATE TABLE IF NOT EXISTS `padlock_value` (
  `padlock_value_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` int(11) unsigned NOT NULL,
  `value_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`padlock_value_id`),
  KEY `padlock_value_ibfk_1` (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE IF NOT EXISTS `promotion` (
  `promotion_id` int(11) NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `conditions` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_unique` tinyint(1) NOT NULL DEFAULT '0',
  `end_at` date DEFAULT NULL,
  `force_validation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `condition_type` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `condition_number_of_points` tinyint(2) DEFAULT NULL,
  `condition_period_number` tinyint(2) DEFAULT NULL,
  `condition_period_type` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_shared` tinyint(1) NOT NULL DEFAULT '0',
  `owner` tinyint(1) NOT NULL DEFAULT '1',
  `unlock_by` enum('account','qrcode') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'account',
  `unlock_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`promotion_id`),
  KEY `promotion_ibfk_1` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `promotion_customer`
--

CREATE TABLE IF NOT EXISTS `promotion_customer` (
  `promotion_customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) NOT NULL,
  `pos_id` int(11) DEFAULT NULL,
  `customer_id` int(11) unsigned NOT NULL,
  `is_used` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `number_of_error` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `last_error` datetime DEFAULT NULL,
  PRIMARY KEY (`promotion_customer_id`),
  KEY `promotion_customer_ibfk_1` (`promotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `push_apns_devices`
--

CREATE TABLE IF NOT EXISTS `push_apns_devices` (
  `device_id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) unsigned NOT NULL,
  `app_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `app_version` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_known_latitude` decimal(11,8) DEFAULT NULL,
  `last_known_longitude` decimal(11,8) DEFAULT NULL,
  `device_token` char(64) COLLATE utf8_unicode_ci NOT NULL,
  `device_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `device_model` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `device_version` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `push_badge` enum('disabled','enabled') COLLATE utf8_unicode_ci DEFAULT 'disabled',
  `push_alert` enum('disabled','enabled') COLLATE utf8_unicode_ci DEFAULT 'disabled',
  `push_sound` enum('disabled','enabled') COLLATE utf8_unicode_ci DEFAULT 'disabled',
  `status` enum('active','uninstalled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `error_count` tinyint(1) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`device_id`),
  KEY `push_apns_devices_ibfk_1` (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `push_certificate`
--

CREATE TABLE IF NOT EXISTS `push_certificate` (
  `certificate_id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) DEFAULT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`certificate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `push_delivered_message`
--

CREATE TABLE IF NOT EXISTS `push_delivered_message` (
  `deliver_id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` int(11) NOT NULL,
  `device_uid` text COLLATE utf8_unicode_ci NOT NULL,
  `device_type` tinyint(1) NOT NULL,
  `message_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `is_displayed` int(11) NOT NULL DEFAULT '0',
  `delivered_at` datetime NOT NULL,
  PRIMARY KEY (`deliver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `push_gcm_devices`
--

CREATE TABLE IF NOT EXISTS `push_gcm_devices` (
  `device_id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) unsigned NOT NULL,
  `app_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `device_uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `registration_id` text COLLATE utf8_unicode_ci,
  `development` enum('production','sandbox') CHARACTER SET latin1 NOT NULL DEFAULT 'production',
  `status` enum('active','uninstalled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `error_count` tinyint(1) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`device_id`),
  KEY `push_gcm_devices_ibfk_1` (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `push_messages`
--

CREATE TABLE IF NOT EXISTS `push_messages` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) unsigned NOT NULL,
  `type_id` int(2) NOT NULL DEFAULT '1',
  `title` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` decimal(11,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `radius` decimal(7,2) DEFAULT NULL,
  `send_to_all` tinyint(1) NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `send_until` datetime DEFAULT NULL,
  `delivered_at` datetime DEFAULT NULL,
  `value_id` int(11) unsigned DEFAULT NULL,
  `status` enum('queued','delivered','sending','failed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'queued',
  `error_text` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `push_messages_ibfk_1` (`app_id`),
  KEY `FK_PUSH_MESSAGES_VALUE_ID` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `radio`
--

CREATE TABLE IF NOT EXISTS `radio` (
  `radio_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`radio_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rss_feed`
--

CREATE TABLE IF NOT EXISTS `rss_feed` (
  `feed_id` int(11) NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `title` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `picture` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`feed_id`),
  KEY `rss_feed_ibfk_1` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE IF NOT EXISTS `session` (
  `session_id` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `modified` int(11) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `data` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`session_id`, `modified`, `lifetime`, `data`) VALUES
('afhcv28l0pdo1sc0sjdf051lc6', 1472284154, 432000, 'front|a:6:{s:12:"current_type";s:5:"front";s:16:"current_language";s:2:"en";s:8:"messages";N;s:14:"editing_app_id";s:1:"1";s:9:"object_id";s:1:"1";s:13:"showTemplates";N;}backoffice|a:3:{s:16:"current_language";s:2:"en";s:12:"current_type";s:10:"backoffice";s:9:"object_id";s:1:"1";}mobile|a:3:{s:16:"current_language";s:2:"en";s:10:"isOverview";b:1;s:12:"current_type";N;}');

-- --------------------------------------------------------

--
-- Table structure for table `socialgaming_game`
--

CREATE TABLE IF NOT EXISTS `socialgaming_game` (
  `game_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `period_id` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gift` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `end_at` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`game_id`),
  KEY `socialgaming_game_ibfk_1` (`value_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `socialgaming_game`
--

INSERT INTO `socialgaming_game` (`game_id`, `value_id`, `period_id`, `name`, `gift`, `end_at`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'First Game', '', NULL, '2016-08-27 00:45:09', '2016-08-27 00:45:09');

-- --------------------------------------------------------

--
-- Table structure for table `social_facebook`
--

CREATE TABLE IF NOT EXISTS `social_facebook` (
  `facebook_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `fb_user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`facebook_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `source_code`
--

CREATE TABLE IF NOT EXISTS `source_code` (
  `source_code_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `html_code` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`source_code_id`),
  KEY `source_code_ibfk_1` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `source_queue`
--

CREATE TABLE IF NOT EXISTS `source_queue` (
  `source_queue_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `path` text COLLATE utf8_unicode_ci NOT NULL,
  `app_id` int(11) unsigned NOT NULL,
  `host` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `design_code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `status` enum('queued','building','success','failed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'queued',
  `build_time` int(11) unsigned NOT NULL,
  `log` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`source_queue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `system_config`
--

CREATE TABLE IF NOT EXISTS `system_config` (
  `config_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Dumping data for table `system_config`
--

INSERT INTO `system_config` (`config_id`, `code`, `label`, `value`) VALUES
(1, 'platform_name', 'Platform Name', NULL),
(2, 'company_name', 'Name', NULL),
(3, 'company_phone', 'Phone', NULL),
(4, 'company_address', 'Address', NULL),
(5, 'company_country', 'Country', NULL),
(6, 'company_vat_number', 'VAT Number', NULL),
(7, 'system_territory', 'Timezone', NULL),
(8, 'system_timezone', 'Timezone', NULL),
(9, 'system_currency', 'Currency', NULL),
(10, 'system_default_language', 'Default Languages', NULL),
(11, 'system_publication_access_type', 'Publication access type', 'sources'),
(12, 'support_email', 'Support Email Address', NULL),
(13, 'support_link', 'Support Link', NULL),
(14, 'support_name', 'Name', NULL),
(15, 'support_chat_code', 'Online Chat', NULL),
(16, 'logo', 'Logo', NULL),
(17, 'favicon', 'Favicon', NULL),
(18, 'application_try_apk', 'Try to generate the apk when downloading the Android source', NULL),
(19, 'admin_default_role_id', 'Default admin role', NULL),
(20, 'application_ios_owner_admob_id', 'Admob ID for platform owner (Ios)', NULL),
(21, 'application_ios_owner_admob_type', 'Admob type for platform owner (Ios)', NULL),
(22, 'application_android_owner_admob_id', 'Admob ID for platform owner (Android)', NULL),
(23, 'application_android_owner_admob_type', 'Admob type for platform owner (Android)', NULL),
(24, 'application_owner_use_ads', 'Use ads for platform owner', '0'),
(25, 'editor_design', 'Editor''s Design', 'flat'),
(26, 'analytic_app_limit', 'App limit before real data mode in analytics', '500'),
(27, 'fix_modules', 'Modules versioning has been fixed', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `template_block`
--

CREATE TABLE IF NOT EXISTS `template_block` (
  `block_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `type_id` tinyint(1) unsigned DEFAULT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_variable_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `background_color` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `background_color_variable_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `border_color` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `border_color_variable_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `use_color_on_hover` tinyint(1) NOT NULL DEFAULT '0',
  `color_on_hover` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `background_color_on_hover` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `use_color_on_active` tinyint(1) NOT NULL DEFAULT '0',
  `color_on_active` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `background_color_on_active` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_color_variable_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` smallint(5) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`block_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=36 ;

--
-- Dumping data for table `template_block`
--

INSERT INTO `template_block` (`block_id`, `parent_id`, `type_id`, `code`, `name`, `color`, `color_variable_name`, `background_color`, `background_color_variable_name`, `border_color`, `border_color_variable_name`, `use_color_on_hover`, `color_on_hover`, `background_color_on_hover`, `use_color_on_active`, `color_on_active`, `background_color_on_active`, `image_color`, `image_color_variable_name`, `position`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'header', 'Header', '#00377a', NULL, '#739c03', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 10, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(2, NULL, 1, 'subheader', 'Subheader', '#00377a', NULL, '#739c03', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(3, NULL, 1, 'connect_button', 'Connect Button', '#233799', NULL, '#f2f2f2', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 30, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(4, NULL, 1, 'background', 'Background', '#ffffff', NULL, '#0c6ec4', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 40, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(5, NULL, 1, 'discount', 'Discount Zone', '#fcfcfc', NULL, '#739c03', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 50, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(6, NULL, 1, 'button', 'Button', '#fcfcfc', NULL, '#00377a', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 60, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(7, NULL, 1, 'news', 'News', '#fcfcfc', NULL, '#00377a', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 70, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(8, NULL, 1, 'comments', 'Comments', '#ffffff', NULL, '#4d5d8a', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 80, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(9, NULL, 1, 'tabbar', 'Tabbar', '#ffffff', NULL, '#739c03', NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, '#ffffff', NULL, 90, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(10, NULL, 3, 'background', 'General', NULL, NULL, '#ededed', '$general-custom-bg', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 10, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(11, NULL, 3, 'header', 'Header', '#444', '$bar-custom-text', '#f8f8f8', '$bar-custom-bg', '#b2b2b2', '$bar-custom-border', 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(12, NULL, 3, 'homepage', 'Homepage', '#111', '$homepage-custom-text', '#fff', '$homepage-custom-bg', '#ddd', '$homepage-custom-border', 0, NULL, NULL, 0, NULL, NULL, '#ddd', '$homepage-custom-image', 30, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(13, NULL, 3, 'list', 'List', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 50, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(14, 13, 3, 'list_item_divider', 'Title''s List', '#222', '$list-item-divider-custom-text', '#f8f8f8', '$list-item-divider-custom-bg', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 52, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(15, 13, 3, 'list_item', 'List Item', '#444', '$list-item-custom-text', '#fff', '$list-item-custom-bg', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 54, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(16, NULL, 3, 'card', 'Card', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 70, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(17, 16, 3, 'card_item_divider', 'Title''s Card', '#222', '$card-item-divider-custom-text', '#f8f8f8', '$card-item-divider-custom-bg', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 72, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(18, 16, 3, 'card_item', 'Card Item', '#444', '$card-item-custom-text', '#fff', '$card-item-custom-bg', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 74, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(19, NULL, 3, 'buttons', 'Button', '#444', '$button-custom-text', '#f8f8f8', '$button-custom-bg', '#b2b2b2', '$button-custom-border', 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 80, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(20, NULL, 3, 'checkbox', 'Checkbox', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 90, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(21, 20, 3, 'checkbox_general', 'General', '#444', '$checkbox-general-custom-text', '#fff', '$checkbox-general-custom-bg', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 92, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(22, 20, 3, 'checkbox_on', 'Checkbox on', '#fff', '$checkbox-on-custom-text', '#387ef5', '$checkbox-on-custom-bg', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 94, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(23, 20, 3, 'checkbox_off', 'Checkbox off', NULL, NULL, '#fff', '$checkbox-off-custom-bg', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 96, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(24, NULL, 3, 'radio', 'Radio', '#444', '$radio-custom-text', '#fff', '$radio-custom-bg', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 100, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(25, NULL, 3, 'toggle', 'Toggle', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 110, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(26, 25, 3, 'toggle_general', 'General', '#444', '$toggle-general-custom-text', '#fff', '$toggle-general-custom-bg', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 112, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(27, 25, 3, 'toggle_on', 'Toggle on', NULL, NULL, '#387ef5', '$toggle-on-custom-bg', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 114, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(28, 25, 3, 'toggle_off', 'Toggle off', NULL, NULL, '#fff', '$toggle-off-custom-bg', '#e6e6e6', '$toggle-off-custom-border', 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 116, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(29, 25, 3, 'toggle_handle_on', 'Toggle''s Handle on', NULL, NULL, '#fff', '$toggle-handle-on-custom-bg', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 118, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(30, 25, 3, 'toggle_handle_off', 'Toggle''s Handle off', NULL, NULL, '#fff', '$toggle-handle-off-custom-bg', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 120, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(31, NULL, 3, 'tooltip', 'Tooltip', '#fff', '$tooltip-custom-text', '#444', '$tooltip-custom-bg', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 120, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(32, NULL, 3, 'icon', 'Icon', '#fff', '$icon-custom', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 125, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(33, NULL, 3, 'spinner', 'Spinner', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 130, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(34, 33, 3, 'spinner_ios_text', 'iOS Spinner', NULL, NULL, '#69717d', '$spinner-custom-ios-bg', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 132, '2016-08-27 00:36:45', '2016-08-27 00:36:45'),
(35, 33, 3, 'spinner_android_text', 'Android Spinner', NULL, NULL, '#4b8bf4', '$spinner-custom-android-bg', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 134, '2016-08-27 00:36:45', '2016-08-27 00:36:45');

-- --------------------------------------------------------

--
-- Table structure for table `template_block_app`
--

CREATE TABLE IF NOT EXISTS `template_block_app` (
  `block_id` int(11) NOT NULL,
  `app_id` int(11) unsigned NOT NULL,
  `color` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `background_color` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `border_color` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`block_id`,`app_id`),
  KEY `template_block_app_ibfk_2` (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `template_block_app`
--

INSERT INTO `template_block_app` (`block_id`, `app_id`, `color`, `background_color`, `border_color`, `image_color`) VALUES
(10, 1, NULL, '#968896', NULL, NULL),
(11, 1, '#444', '#817291', '#b2b2b2', NULL),
(12, 1, '#111', '#787b9e', '#ddd', '#ddd'),
(14, 1, '#222', '#ccc8cc', NULL, NULL),
(34, 1, NULL, '#69717d', NULL, NULL),
(35, 1, NULL, '#4b8bf4', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `template_category`
--

CREATE TABLE IF NOT EXISTS `template_category` (
  `category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `code` varchar(20) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `template_category`
--

INSERT INTO `template_category` (`category_id`, `name`, `code`) VALUES
(1, 'Arts', 'arts'),
(2, 'Design', 'design'),
(3, 'Corporate', 'corporate');

-- --------------------------------------------------------

--
-- Table structure for table `template_design`
--

CREATE TABLE IF NOT EXISTS `template_design` (
  `design_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) unsigned NOT NULL,
  `layout_visibility` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'homepage',
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `overview` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `background_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `background_image_hd` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `background_image_tablet` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startup_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startup_image_retina` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startup_image_iphone_6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startup_image_iphone_6_plus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startup_image_ipad_retina` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`design_id`),
  KEY `template_design_ibfk_1` (`layout_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `template_design`
--

INSERT INTO `template_design` (`design_id`, `layout_id`, `layout_visibility`, `code`, `name`, `overview`, `background_image`, `background_image_hd`, `background_image_tablet`, `icon`, `startup_image`, `startup_image_retina`, `startup_image_iphone_6`, `startup_image_iphone_6_plus`, `startup_image_ipad_retina`) VALUES
(1, 6, 'homepage', 'rouse', 'Red&Co', '/rouse/overview.png', '/../../images/templates/rouse/640x1136.jpg', '/../../images/templates/rouse/1242x2208.jpg', '/../../images/templates/rouse/1536x2048.jpg', '/../../images/templates/rouse/180x180.png', '/../../images/templates/rouse/640x960.png', '/../../images/templates/rouse/640x1136.jpg', '/../../images/templates/rouse/750x1334.png', '/../../images/templates/rouse/1242x2208.jpg', '/../../images/templates/rouse/1536x2048.jpg'),
(2, 5, 'homepage', 'bleuc', 'Blutility', '/bleuc/overview.png', '/../../images/templates/bleuc/640x1136.jpg', '/../../images/templates/bleuc/1242x2208.jpg', '/../../images/templates/bleuc/1536x2048.jpg', '/../../images/templates/bleuc/180x180.png', '/../../images/templates/bleuc/640x960.png', '/../../images/templates/bleuc/640x1136.jpg', '/../../images/templates/bleuc/750x1334.png', '/../../images/templates/bleuc/1242x2208.jpg', '/../../images/templates/bleuc/1536x2048.jpg'),
(3, 4, 'homepage', 'colors', 'Colors', '/colors/overview.png', '/../../images/templates/colors/640x1136.jpg', '/../../images/templates/colors/1242x2208.jpg', '/../../images/templates/colors/1536x2048.jpg', '/../../images/templates/colors/180x180.png', '/../../images/templates/colors/640x960.jpg', '/../../images/templates/colors/640x1136.jpg', '/../../images/templates/colors/750x1334.jpg', '/../../images/templates/colors/1242x2208.jpg', '/../../images/templates/colors/1536x2048.jpg'),
(4, 1, 'homepage', 'blank', 'Blank', '/blank/overview.png', '/../../images/application/placeholder/no-background.jpg', '/../../images/application/placeholder/no-background-hd.jpg', '/../../images/application/placeholder/no-background-tablet.jpg', '/../../images/application/placeholder/no-image.png', '/../../images/application/placeholder/no-startupimage.png', '/../../images/application/placeholder/no-startupimage-retina.png', '/../../images/application/placeholder/no-startupimage-iphone-6.png', '/../../images/application/placeholder/no-startupimage-iphone-6-plus.png', '/../../images/application/placeholder/no-startupimage-tablet.png');

-- --------------------------------------------------------

--
-- Table structure for table `template_design_block`
--

CREATE TABLE IF NOT EXISTS `template_design_block` (
  `design_block_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `design_id` int(11) unsigned NOT NULL,
  `block_id` int(11) NOT NULL,
  `background_color` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `border_color` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_color` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`design_block_id`),
  KEY `template_design_block_ibfk_1` (`design_id`),
  KEY `template_design_block_ibfk_2` (`block_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- Dumping data for table `template_design_block`
--

INSERT INTO `template_design_block` (`design_block_id`, `design_id`, `block_id`, `background_color`, `color`, `border_color`, `image_color`) VALUES
(1, 1, 11, '#EE4B63', '#ffffff', '#ffffff', NULL),
(2, 1, 2, '#EE4B63', '#ffffff', '#ffffff', NULL),
(3, 1, 12, '#ffffff', '#ffffff', '#ffffff', '#ffffff'),
(4, 1, 10, '#242037', NULL, NULL, NULL),
(5, 1, 14, '#EE4B63', '#ffffff', NULL, NULL),
(6, 1, 15, '#ffffff', '#000222', NULL, NULL),
(7, 1, 17, '#ee4b63', '#000222', NULL, NULL),
(8, 1, 22, '#ee4b63', '#ffffff', NULL, NULL),
(9, 1, 27, '#ee4b63', NULL, NULL, NULL),
(10, 1, 35, '#ee4b63', NULL, NULL, NULL),
(11, 2, 11, '#1374CE', '#ffffff', '#ffffff', NULL),
(12, 2, 2, '#1374CE', '#ffffff', '#ffffff', NULL),
(13, 2, 12, '#1374CE', '#ffffff', '#ffffff', '#ffffff'),
(14, 2, 10, '#ffffff', NULL, NULL, NULL),
(15, 2, 14, '#1374CE', '#ffffff', NULL, NULL),
(16, 2, 15, '#ffffff', '#000222', NULL, NULL),
(17, 2, 17, '#1374CE', '#000222', NULL, NULL),
(18, 2, 22, '#1374CE', '#ffffff', NULL, NULL),
(19, 2, 27, '#1374CE', NULL, NULL, NULL),
(20, 2, 35, '#1374CE', NULL, NULL, NULL),
(21, 3, 11, '#ee4b63', '#ffffff', '#ffffff', NULL),
(22, 3, 2, '#ee4b63', '#ffffff', '#ffffff', NULL),
(23, 3, 12, '#0faca4', '#0faca4', '#0faca4', '#ffffff'),
(24, 3, 10, '#0faca4', NULL, NULL, NULL),
(25, 3, 14, '#0faca4', '#ffffff', NULL, NULL),
(26, 3, 15, '#ffffff', '#000222', NULL, NULL),
(27, 3, 17, '#0faca4', '#ffffff', NULL, NULL),
(28, 3, 22, '#0faca4', '#ffffff', NULL, NULL),
(29, 3, 27, '#0faca4', NULL, NULL, NULL),
(30, 3, 35, '#0faca4', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `template_design_category`
--

CREATE TABLE IF NOT EXISTS `template_design_category` (
  `design_category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `design_id` int(11) unsigned NOT NULL,
  `category_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`design_category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `template_design_category`
--

INSERT INTO `template_design_category` (`design_category_id`, `design_id`, `category_id`) VALUES
(1, 1, 2),
(2, 2, 3),
(3, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `template_design_content`
--

CREATE TABLE IF NOT EXISTS `template_design_content` (
  `content_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `design_id` int(11) unsigned NOT NULL,
  `option_id` int(11) unsigned NOT NULL,
  `option_tabbar_name` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `option_icon` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `option_background_image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`content_id`),
  KEY `FK_TEMPLATE_DESIGN_CONTENT_DESIGN_ID` (`design_id`),
  KEY `FK_TEMPLATE_DESIGN_CONTENT_OPTION_ID` (`option_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `template_design_content`
--

INSERT INTO `template_design_content` (`content_id`, `design_id`, `option_id`, `option_tabbar_name`, `option_icon`, `option_background_image`) VALUES
(1, 1, 5, NULL, '58', NULL),
(2, 1, 4, NULL, '43', NULL),
(3, 1, 6, NULL, '73', NULL),
(4, 1, 20, NULL, '180', NULL),
(5, 1, 15, NULL, '152', NULL),
(6, 2, 26, NULL, '225', NULL),
(7, 2, 23, NULL, '200', NULL),
(8, 3, 1, NULL, '10', NULL),
(9, 3, 3, NULL, '29', NULL),
(10, 3, 2, NULL, '19', NULL),
(11, 3, 10, NULL, '107', NULL),
(12, 3, 24, NULL, '211', NULL),
(13, 3, 12, NULL, '127', NULL),
(14, 3, 9, NULL, '100', NULL),
(15, 3, 8, NULL, '93', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE IF NOT EXISTS `topic` (
  `topic_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `app_id` int(11) unsigned NOT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`topic_id`),
  KEY `FK_TOPIC_VALUE_ID` (`value_id`),
  KEY `FK_TOPIC_APP_ID` (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `topic_category`
--

CREATE TABLE IF NOT EXISTS `topic_category` (
  `category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) unsigned NOT NULL,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `FK_TOPIC_CATEGORY_TOPIC_ID` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `topic_category_message`
--

CREATE TABLE IF NOT EXISTS `topic_category_message` (
  `category_message_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) unsigned NOT NULL,
  `message_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`category_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `topic_subscription`
--

CREATE TABLE IF NOT EXISTS `topic_subscription` (
  `subscription_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) unsigned NOT NULL,
  `device_uid` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`subscription_id`),
  KEY `FK_TOPIC_SUBSCRIPTION_CATEGORY_ID` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `weather`
--

CREATE TABLE IF NOT EXISTS `weather` (
  `weather_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `city` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_code` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'f',
  `woeid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`weather_id`),
  KEY `FK_WEATHER_VALUE_ID` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `weblink`
--

CREATE TABLE IF NOT EXISTS `weblink` (
  `weblink_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `type_id` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `cover` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`weblink_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `weblink_link`
--

CREATE TABLE IF NOT EXISTS `weblink_link` (
  `link_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weblink_id` int(11) unsigned NOT NULL,
  `picto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`link_id`),
  KEY `weblink_link_ibfk_1` (`weblink_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wordpress`
--

CREATE TABLE IF NOT EXISTS `wordpress` (
  `wp_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value_id` int(11) unsigned NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`wp_id`),
  KEY `wordpress_ibfk_1` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wordpress_category`
--

CREATE TABLE IF NOT EXISTS `wordpress_category` (
  `category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `wp_id` int(11) unsigned NOT NULL,
  `wp_category_id` int(11) NOT NULL,
  `position` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`category_id`),
  KEY `wordpress_category_ibfk_1` (`wp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `acl_resource_role`
--
ALTER TABLE `acl_resource_role`
  ADD CONSTRAINT `FK_RESOURCE_ROLE_ROLE_ID` FOREIGN KEY (`role_id`) REFERENCES `acl_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RESOURCE_ROLE_RESOURCE_ID` FOREIGN KEY (`resource_id`) REFERENCES `acl_resource` (`resource_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `api_key`
--
ALTER TABLE `api_key`
  ADD CONSTRAINT `api_key_ibfk_1` FOREIGN KEY (`provider_id`) REFERENCES `api_provider` (`provider_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `application_acl_option`
--
ALTER TABLE `application_acl_option`
  ADD CONSTRAINT `FK_APPLICATION_ACL_OPTION_VALUE_ID` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `application_admin`
--
ALTER TABLE `application_admin`
  ADD CONSTRAINT `FK_APPLICATION_ADMIN_ADMIN_ID` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `application_admin_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `application` (`app_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `application_device`
--
ALTER TABLE `application_device`
  ADD CONSTRAINT `APPLICATION_DEVICE_APP_ID` FOREIGN KEY (`app_id`) REFERENCES `application` (`app_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `application_option`
--
ALTER TABLE `application_option`
  ADD CONSTRAINT `application_option_ibfk_1` FOREIGN KEY (`library_id`) REFERENCES `media_library` (`library_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_APPLICATION_OPTION_CATEGORY_ID` FOREIGN KEY (`category_id`) REFERENCES `application_option_category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `application_option_preview`
--
ALTER TABLE `application_option_preview`
  ADD CONSTRAINT `FK_APPLICATION_OPTION_OPTION_ID` FOREIGN KEY (`option_id`) REFERENCES `application_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `application_option_preview_language`
--
ALTER TABLE `application_option_preview_language`
  ADD CONSTRAINT `FK_OPTION_PREVIEW_LANGUAGE_LIBRARY_ID` FOREIGN KEY (`library_id`) REFERENCES `media_library` (`library_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_OPTION_PREVIEW_LANGUAGE_PREVIEW_ID` FOREIGN KEY (`preview_id`) REFERENCES `application_option_preview` (`preview_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `application_option_value`
--
ALTER TABLE `application_option_value`
  ADD CONSTRAINT `application_option_value_ibfk_2` FOREIGN KEY (`option_id`) REFERENCES `application_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `application_option_value_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `application` (`app_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `application_tc`
--
ALTER TABLE `application_tc`
  ADD CONSTRAINT `FK_APPLICATION_TC_APP_ID` FOREIGN KEY (`app_id`) REFERENCES `application` (`app_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_category`
--
ALTER TABLE `catalog_category`
  ADD CONSTRAINT `catalog_category_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product`
--
ALTER TABLE `catalog_product`
  ADD CONSTRAINT `catalog_product_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_folder_category`
--
ALTER TABLE `catalog_product_folder_category`
  ADD CONSTRAINT `catalog_product_folder_category_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `folder_category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `catalog_product_folder_category_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `catalog_product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_format`
--
ALTER TABLE `catalog_product_format`
  ADD CONSTRAINT `catalog_product_format_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `catalog_product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_group_option`
--
ALTER TABLE `catalog_product_group_option`
  ADD CONSTRAINT `catalog_product_group_option_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `catalog_product_group` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_group_option_value`
--
ALTER TABLE `catalog_product_group_option_value`
  ADD CONSTRAINT `catalog_product_group_option_value_ibfk_1` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_group_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `catalog_product_group_option_value_ibfk_2` FOREIGN KEY (`group_value_id`) REFERENCES `catalog_product_group_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog_product_group_value`
--
ALTER TABLE `catalog_product_group_value`
  ADD CONSTRAINT `catalog_product_group_value_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `catalog_product_group` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `catalog_product_group_value_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `catalog_product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cms_application_page`
--
ALTER TABLE `cms_application_page`
  ADD CONSTRAINT `cms_application_page_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cms_application_page_block_address`
--
ALTER TABLE `cms_application_page_block_address`
  ADD CONSTRAINT `cms_application_page_block_address_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `cms_application_page_block` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cms_application_page_block_file`
--
ALTER TABLE `cms_application_page_block_file`
  ADD CONSTRAINT `FK_CMS_APPLICATION_PAGE_BLOCK_FILE_VALUE_ID` FOREIGN KEY (`value_id`) REFERENCES `cms_application_page_block` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cms_application_page_block_image`
--
ALTER TABLE `cms_application_page_block_image`
  ADD CONSTRAINT `cms_application_page_block_image_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `cms_application_page_block` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cms_application_page_block_slider`
--
ALTER TABLE `cms_application_page_block_slider`
  ADD CONSTRAINT `cms_application_page_block_slider_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `cms_application_page_block` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cms_application_page_block_text`
--
ALTER TABLE `cms_application_page_block_text`
  ADD CONSTRAINT `cms_application_page_block_text_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `cms_application_page_block` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cms_application_page_block_video`
--
ALTER TABLE `cms_application_page_block_video`
  ADD CONSTRAINT `cms_application_page_block_video_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `cms_application_page_block` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cms_application_page_block_video_link`
--
ALTER TABLE `cms_application_page_block_video_link`
  ADD CONSTRAINT `cms_application_page_block_video_link_ibfk_1` FOREIGN KEY (`video_id`) REFERENCES `cms_application_page_block_video` (`video_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cms_application_page_block_video_podcast`
--
ALTER TABLE `cms_application_page_block_video_podcast`
  ADD CONSTRAINT `cms_application_page_block_video_podcast_ibfk_1` FOREIGN KEY (`video_id`) REFERENCES `cms_application_page_block_video` (`video_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cms_application_page_block_video_youtube`
--
ALTER TABLE `cms_application_page_block_video_youtube`
  ADD CONSTRAINT `cms_application_page_block_video_youtube_ibfk_1` FOREIGN KEY (`video_id`) REFERENCES `cms_application_page_block_video` (`video_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comment_answer`
--
ALTER TABLE `comment_answer`
  ADD CONSTRAINT `comment_answer_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`comment_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comment_like`
--
ALTER TABLE `comment_like`
  ADD CONSTRAINT `comment_like_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`comment_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comment_radius`
--
ALTER TABLE `comment_radius`
  ADD CONSTRAINT `comment_radius_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_address`
--
ALTER TABLE `customer_address`
  ADD CONSTRAINT `customer_address_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_metadata`
--
ALTER TABLE `customer_metadata`
  ADD CONSTRAINT `customer_metadata_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_social`
--
ALTER TABLE `customer_social`
  ADD CONSTRAINT `customer_social_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_social_post`
--
ALTER TABLE `customer_social_post`
  ADD CONSTRAINT `customer_social_post_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `event_custom`
--
ALTER TABLE `event_custom`
  ADD CONSTRAINT `event_custom_ibfk_1` FOREIGN KEY (`agenda_id`) REFERENCES `event` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `folder`
--
ALTER TABLE `folder`
  ADD CONSTRAINT `folder_ibfk_2` FOREIGN KEY (`root_category_id`) REFERENCES `folder_category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `folder_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `folder_category`
--
ALTER TABLE `folder_category`
  ADD CONSTRAINT `folder_category_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `folder_category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `log_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `application` (`app_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `loyalty_card`
--
ALTER TABLE `loyalty_card`
  ADD CONSTRAINT `loyalty_card_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `loyalty_card_customer`
--
ALTER TABLE `loyalty_card_customer`
  ADD CONSTRAINT `loyalty_card_customer_ibfk_1` FOREIGN KEY (`card_id`) REFERENCES `loyalty_card` (`card_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `loyalty_card_customer_log`
--
ALTER TABLE `loyalty_card_customer_log`
  ADD CONSTRAINT `loyalty_card_customer_log_ibfk_1` FOREIGN KEY (`card_id`) REFERENCES `loyalty_card` (`card_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `loyalty_card_password`
--
ALTER TABLE `loyalty_card_password`
  ADD CONSTRAINT `loyalty_card_password_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `application` (`app_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `maps`
--
ALTER TABLE `maps`
  ADD CONSTRAINT `FK_MAPS_VALUE_ID` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mcommerce`
--
ALTER TABLE `mcommerce`
  ADD CONSTRAINT `mcommerce_ibfk_1` FOREIGN KEY (`catalog_value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mcommerce_cart`
--
ALTER TABLE `mcommerce_cart`
  ADD CONSTRAINT `mcommerce_cart_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `mcommerce_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mcommerce_cart_ibfk_1` FOREIGN KEY (`mcommerce_id`) REFERENCES `mcommerce` (`mcommerce_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mcommerce_cart_line`
--
ALTER TABLE `mcommerce_cart_line`
  ADD CONSTRAINT `mcommerce_cart_line_ibfk_2` FOREIGN KEY (`tax_id`) REFERENCES `mcommerce_tax` (`tax_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `mcommerce_cart_line_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `mcommerce_cart` (`cart_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mcommerce_cart_line_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `catalog_product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mcommerce_order`
--
ALTER TABLE `mcommerce_order`
  ADD CONSTRAINT `mcommerce_order_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `mcommerce_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mcommerce_order_ibfk_1` FOREIGN KEY (`mcommerce_id`) REFERENCES `mcommerce` (`mcommerce_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mcommerce_order_ibfk_3` FOREIGN KEY (`cart_id`) REFERENCES `mcommerce_cart` (`cart_id`) ON UPDATE CASCADE;

--
-- Constraints for table `mcommerce_order_line`
--
ALTER TABLE `mcommerce_order_line`
  ADD CONSTRAINT `mcommerce_order_line_ibfk_2` FOREIGN KEY (`tax_id`) REFERENCES `mcommerce_tax` (`tax_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `mcommerce_order_line_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `mcommerce_order` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mcommerce_order_line_ibfk_3` FOREIGN KEY (`cart_line_id`) REFERENCES `mcommerce_cart_line` (`line_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mcommerce_store`
--
ALTER TABLE `mcommerce_store`
  ADD CONSTRAINT `mcommerce_store_ibfk_1` FOREIGN KEY (`mcommerce_id`) REFERENCES `mcommerce` (`mcommerce_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mcommerce_store_delivery_method`
--
ALTER TABLE `mcommerce_store_delivery_method`
  ADD CONSTRAINT `mcommerce_store_delivery_method_ibfk_2` FOREIGN KEY (`method_id`) REFERENCES `mcommerce_delivery_method` (`method_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mcommerce_store_delivery_method_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `mcommerce_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mcommerce_store_payment_method`
--
ALTER TABLE `mcommerce_store_payment_method`
  ADD CONSTRAINT `mcommerce_store_payment_method_ibfk_2` FOREIGN KEY (`method_id`) REFERENCES `mcommerce_payment_method` (`method_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mcommerce_store_payment_method_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `mcommerce_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mcommerce_store_payment_method_paypal`
--
ALTER TABLE `mcommerce_store_payment_method_paypal`
  ADD CONSTRAINT `mcommerce_store_payment_method_paypal_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `mcommerce_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mcommerce_store_printer`
--
ALTER TABLE `mcommerce_store_printer`
  ADD CONSTRAINT `mcommerce_store_printer_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `mcommerce_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mcommerce_store_tax`
--
ALTER TABLE `mcommerce_store_tax`
  ADD CONSTRAINT `mcommerce_store_tax_ibfk_2` FOREIGN KEY (`tax_id`) REFERENCES `mcommerce_tax` (`tax_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mcommerce_store_tax_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `mcommerce_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mcommerce_tax`
--
ALTER TABLE `mcommerce_tax`
  ADD CONSTRAINT `mcommerce_tax_ibfk_1` FOREIGN KEY (`mcommerce_id`) REFERENCES `mcommerce` (`mcommerce_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `media_gallery_image`
--
ALTER TABLE `media_gallery_image`
  ADD CONSTRAINT `media_gallery_image_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `media_gallery_image_custom`
--
ALTER TABLE `media_gallery_image_custom`
  ADD CONSTRAINT `media_gallery_image_custom_ibfk_1` FOREIGN KEY (`gallery_id`) REFERENCES `media_gallery_image` (`gallery_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `media_gallery_image_picasa`
--
ALTER TABLE `media_gallery_image_picasa`
  ADD CONSTRAINT `media_gallery_image_picasa_ibfk_1` FOREIGN KEY (`gallery_id`) REFERENCES `media_gallery_image` (`gallery_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `media_gallery_music_album`
--
ALTER TABLE `media_gallery_music_album`
  ADD CONSTRAINT `media_gallery_music_album_ibfk_1` FOREIGN KEY (`gallery_id`) REFERENCES `media_gallery_music` (`gallery_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `media_gallery_music_elements`
--
ALTER TABLE `media_gallery_music_elements`
  ADD CONSTRAINT `media_gallery_music_elements_ibfk_3` FOREIGN KEY (`track_id`) REFERENCES `media_gallery_music_track` (`track_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `media_gallery_music_elements_ibfk_1` FOREIGN KEY (`gallery_id`) REFERENCES `media_gallery_music` (`gallery_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `media_gallery_music_elements_ibfk_2` FOREIGN KEY (`album_id`) REFERENCES `media_gallery_music_album` (`album_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `media_gallery_music_track`
--
ALTER TABLE `media_gallery_music_track`
  ADD CONSTRAINT `media_gallery_music_track_ibfk_2` FOREIGN KEY (`gallery_id`) REFERENCES `media_gallery_music` (`gallery_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `media_gallery_music_track_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `media_gallery_music_album` (`album_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `media_gallery_video`
--
ALTER TABLE `media_gallery_video`
  ADD CONSTRAINT `media_gallery_video_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `media_gallery_video_itunes`
--
ALTER TABLE `media_gallery_video_itunes`
  ADD CONSTRAINT `media_gallery_video_itunes_ibfk_1` FOREIGN KEY (`gallery_id`) REFERENCES `media_gallery_video` (`gallery_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `media_gallery_video_vimeo`
--
ALTER TABLE `media_gallery_video_vimeo`
  ADD CONSTRAINT `media_gallery_video_vimeo_ibfk_1` FOREIGN KEY (`gallery_id`) REFERENCES `media_gallery_video` (`gallery_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `media_gallery_video_youtube`
--
ALTER TABLE `media_gallery_video_youtube`
  ADD CONSTRAINT `media_gallery_video_youtube_ibfk_1` FOREIGN KEY (`gallery_id`) REFERENCES `media_gallery_video` (`gallery_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `media_library_image`
--
ALTER TABLE `media_library_image`
  ADD CONSTRAINT `media_library_image_ibfk_1` FOREIGN KEY (`library_id`) REFERENCES `media_library` (`library_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `message_application`
--
ALTER TABLE `message_application`
  ADD CONSTRAINT `FK_MESSAGE_APPLICATION_APP_ID` FOREIGN KEY (`app_id`) REFERENCES `application` (`app_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `message_application_file`
--
ALTER TABLE `message_application_file`
  ADD CONSTRAINT `FK_MESSAGE_APPLICATION_FILE_MESSAGE_ID` FOREIGN KEY (`message_id`) REFERENCES `message_application` (`message_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `padlock`
--
ALTER TABLE `padlock`
  ADD CONSTRAINT `padlock_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `padlock_value`
--
ALTER TABLE `padlock_value`
  ADD CONSTRAINT `padlock_value_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `application` (`app_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `promotion`
--
ALTER TABLE `promotion`
  ADD CONSTRAINT `promotion_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `promotion_customer`
--
ALTER TABLE `promotion_customer`
  ADD CONSTRAINT `promotion_customer_ibfk_1` FOREIGN KEY (`promotion_id`) REFERENCES `promotion` (`promotion_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `push_apns_devices`
--
ALTER TABLE `push_apns_devices`
  ADD CONSTRAINT `push_apns_devices_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `application` (`app_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `push_gcm_devices`
--
ALTER TABLE `push_gcm_devices`
  ADD CONSTRAINT `push_gcm_devices_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `application` (`app_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `push_messages`
--
ALTER TABLE `push_messages`
  ADD CONSTRAINT `FK_PUSH_MESSAGES_VALUE_ID` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `push_messages_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `application` (`app_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rss_feed`
--
ALTER TABLE `rss_feed`
  ADD CONSTRAINT `rss_feed_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `socialgaming_game`
--
ALTER TABLE `socialgaming_game`
  ADD CONSTRAINT `socialgaming_game_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `source_code`
--
ALTER TABLE `source_code`
  ADD CONSTRAINT `source_code_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `template_block_app`
--
ALTER TABLE `template_block_app`
  ADD CONSTRAINT `template_block_app_ibfk_2` FOREIGN KEY (`app_id`) REFERENCES `application` (`app_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `template_block_app_ibfk_1` FOREIGN KEY (`block_id`) REFERENCES `template_block` (`block_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `template_design`
--
ALTER TABLE `template_design`
  ADD CONSTRAINT `template_design_ibfk_1` FOREIGN KEY (`layout_id`) REFERENCES `application_layout_homepage` (`layout_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `template_design_block`
--
ALTER TABLE `template_design_block`
  ADD CONSTRAINT `template_design_block_ibfk_2` FOREIGN KEY (`block_id`) REFERENCES `template_block` (`block_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `template_design_block_ibfk_1` FOREIGN KEY (`design_id`) REFERENCES `template_design` (`design_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `template_design_content`
--
ALTER TABLE `template_design_content`
  ADD CONSTRAINT `FK_TEMPLATE_DESIGN_CONTENT_OPTION_ID` FOREIGN KEY (`option_id`) REFERENCES `application_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TEMPLATE_DESIGN_CONTENT_DESIGN_ID` FOREIGN KEY (`design_id`) REFERENCES `template_design` (`design_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `topic`
--
ALTER TABLE `topic`
  ADD CONSTRAINT `FK_TOPIC_APP_ID` FOREIGN KEY (`app_id`) REFERENCES `application` (`app_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TOPIC_VALUE_ID` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `topic_category`
--
ALTER TABLE `topic_category`
  ADD CONSTRAINT `FK_TOPIC_CATEGORY_TOPIC_ID` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`topic_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `topic_subscription`
--
ALTER TABLE `topic_subscription`
  ADD CONSTRAINT `FK_TOPIC_SUBSCRIPTION_CATEGORY_ID` FOREIGN KEY (`category_id`) REFERENCES `topic_category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `weather`
--
ALTER TABLE `weather`
  ADD CONSTRAINT `FK_WEATHER_VALUE_ID` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `weblink_link`
--
ALTER TABLE `weblink_link`
  ADD CONSTRAINT `weblink_link_ibfk_1` FOREIGN KEY (`weblink_id`) REFERENCES `weblink` (`weblink_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wordpress`
--
ALTER TABLE `wordpress`
  ADD CONSTRAINT `wordpress_ibfk_1` FOREIGN KEY (`value_id`) REFERENCES `application_option_value` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wordpress_category`
--
ALTER TABLE `wordpress_category`
  ADD CONSTRAINT `wordpress_category_ibfk_1` FOREIGN KEY (`wp_id`) REFERENCES `wordpress` (`wp_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
