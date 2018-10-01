-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 06, 2018 at 07:54 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recruit`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

DROP TABLE IF EXISTS `achievements`;
CREATE TABLE IF NOT EXISTS `achievements` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `applicants_vacancies`
--

DROP TABLE IF EXISTS `applicants_vacancies`;
CREATE TABLE IF NOT EXISTS `applicants_vacancies` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `applicant_id` int(11) NOT NULL,
  `vacancy_id` int(11) NOT NULL,
  `years_of_experience` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `applicants_vacancies`
--

INSERT INTO `applicants_vacancies` (`id`, `applicant_id`, `vacancy_id`, `years_of_experience`, `status`, `created_at`, `updated_at`) VALUES
(6, 33, 5, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 33, 10, 4, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 33, 9, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 33, 6, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 35, 7, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 36, 7, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 33, 7, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories_lookup`
--

DROP TABLE IF EXISTS `categories_lookup`;
CREATE TABLE IF NOT EXISTS `categories_lookup` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories_lookup`
--

INSERT INTO `categories_lookup` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Administrative Support', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Catering, Food Service', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Creative Art & Design', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Customer Services', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Engineering - Electrical - Power', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Engineering - Mechanical', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Executives / Managerial', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Finance & Accounts', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'General Management', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Health & Safety', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Human Resources & Administration', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Information Technology', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'IT – Network Administration', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'IT – Software & Web Designing', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Labour / Workers', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Legal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Marketing', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Marketing – Advertisement – PR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Product Development & Quality Control', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Product Development & Research', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Production (Manufacturing & Maintenance)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Project Management', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Quality Assurance / Control', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Research & Development (R&D)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Sales', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Supply Chain (Logistics, Procurement, Warehousing, Transport)', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `category_of_interests`
--

DROP TABLE IF EXISTS `category_of_interests`;
CREATE TABLE IF NOT EXISTS `category_of_interests` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `notifications` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

DROP TABLE IF EXISTS `certificates`;
CREATE TABLE IF NOT EXISTS `certificates` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `authority` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `license_num` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies_lookup`
--

DROP TABLE IF EXISTS `companies_lookup`;
CREATE TABLE IF NOT EXISTS `companies_lookup` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `companies_lookup`
--

INSERT INTO `companies_lookup` (`id`, `name`, `url`, `created_at`, `updated_at`) VALUES
(1, 'Google', 'https://careers.google.com/', '2018-04-16 00:16:12', '2018-04-16 00:16:12'),
(2, 'Facebook', 'https://www.facebook.com/careers/', '2018-04-16 00:19:29', '2018-04-16 00:19:29'),
(4, 'Microsoft', 'https://careers.microsoft.com/us/en', '2018-04-16 00:20:44', '2018-04-16 00:20:44'),
(6, 'Amazon', 'https://amazon.itsmycareer.com/', '2018-04-16 00:22:14', '2018-04-16 00:22:14'),
(9, 'Uber', 'https://www.uber.com/careers/', '2018-04-16 00:23:16', '2018-04-16 00:23:16'),
(10, 'Airbnb', 'https://www.airbnb.com/careers/', '2018-04-16 00:24:29', '2018-04-16 00:24:29');

-- --------------------------------------------------------

--
-- Table structure for table `countries_lookup`
--

DROP TABLE IF EXISTS `countries_lookup`;
CREATE TABLE IF NOT EXISTS `countries_lookup` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries_lookup`
--

INSERT INTO `countries_lookup` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'United States', 'US', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Canada', 'CA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Afghanistan', 'AF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Albania', 'AL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Algeria', 'DZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'American Samoa', 'DS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Andorra', 'AD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Angola', 'AO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Anguilla', 'AI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Antarctica', 'AQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Antigua and/or Barbuda', 'AG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Argentina', 'AR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Armenia', 'AM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Aruba', 'AW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Australia', 'AU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Austria', 'AT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Azerbaijan', 'AZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Bahamas', 'BS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Bahrain', 'BH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Bangladesh', 'BD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Barbados', 'BB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Belarus', 'BY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Belgium', 'BE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Belize', 'BZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Benin', 'BJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Bermuda', 'BM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Bhutan', 'BT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Bolivia', 'BO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Bosnia and Herzegovina', 'BA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Botswana', 'BW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Bouvet Island', 'BV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Brazil', 'BR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'British lndian Ocean Territory', 'IO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Brunei Darussalam', 'BN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Bulgaria', 'BG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Burkina Faso', 'BF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Burundi', 'BI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Cambodia', 'KH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Cameroon', 'CM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Cape Verde', 'CV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Cayman Islands', 'KY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Central African Republic', 'CF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Chad', 'TD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Chile', 'CL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'China', 'CN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Christmas Island', 'CX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Cocos (Keeling) Islands', 'CC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Colombia', 'CO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Comoros', 'KM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Congo', 'CG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Cook Islands', 'CK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Costa Rica', 'CR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Croatia (Hrvatska)', 'HR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Cuba', 'CU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Cyprus', 'CY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Czech Republic', 'CZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Denmark', 'DK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Djibouti', 'DJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Dominica', 'DM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Dominican Republic', 'DO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'East Timor', 'TP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Ecudaor', 'EC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Egypt', 'EG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'El Salvador', 'SV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Equatorial Guinea', 'GQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Eritrea', 'ER', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'Estonia', 'EE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'Ethiopia', 'ET', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'Falkland Islands (Malvinas)', 'FK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'Faroe Islands', 'FO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'Fiji', 'FJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'Finland', 'FI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'France', 'FR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'France, Metropolitan', 'FX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'French Guiana', 'GF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'French Polynesia', 'PF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'French Southern Territories', 'TF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'Gabon', 'GA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'Gambia', 'GM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'Georgia', 'GE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'Germany', 'DE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'Ghana', 'GH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'Gibraltar', 'GI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'Greece', 'GR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'Greenland', 'GL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'Grenada', 'GD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'Guadeloupe', 'GP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'Guam', 'GU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'Guatemala', 'GT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'Guinea', 'GN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'Guinea-Bissau', 'GW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'Guyana', 'GY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'Haiti', 'HT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'Heard and Mc Donald Islands', 'HM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'Honduras', 'HN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'Hong Kong', 'HK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'Hungary', 'HU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'Iceland', 'IS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'India', 'IN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'Indonesia', 'ID', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'Iran (Islamic Republic of)', 'IR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'Iraq', 'IQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'Ireland', 'IE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'Israel', 'IL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'Italy', 'IT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'Ivory Coast', 'CI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'Jamaica', 'JM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'Japan', 'JP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'Jordan', 'JO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'Kazakhstan', 'KZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'Kenya', 'KE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'Kiribati', 'KI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'Korea, Democratic People\'s Republic of', 'KP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'Korea, Republic of', 'KR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'Kuwait', 'KW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'Kyrgyzstan', 'KG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'Lao People\'s Democratic Republic', 'LA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'Latvia', 'LV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'Lebanon', 'LB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'Lesotho', 'LS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'Liberia', 'LR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'Libyan Arab Jamahiriya', 'LY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'Liechtenstein', 'LI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'Lithuania', 'LT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'Luxembourg', 'LU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'Macau', 'MO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'Macedonia', 'MK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'Madagascar', 'MG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'Malawi', 'MW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'Malaysia', 'MY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'Maldives', 'MV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'Mali', 'ML', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'Malta', 'MT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'Marshall Islands', 'MH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'Martinique', 'MQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'Mauritania', 'MR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'Mauritius', 'MU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'Mayotte', 'TY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'Mexico', 'MX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'Micronesia, Federated States of', 'FM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'Moldova, Republic of', 'MD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'Monaco', 'MC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'Mongolia', 'MN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'Montserrat', 'MS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'Morocco', 'MA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'Mozambique', 'MZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'Myanmar', 'MM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'Namibia', 'NA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'Nauru', 'NR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'Nepal', 'NP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'Netherlands', 'NL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'Netherlands Antilles', 'AN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'New Caledonia', 'NC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'New Zealand', 'NZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'Nicaragua', 'NI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'Niger', 'NE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'Nigeria', 'NG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'Niue', 'NU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'Norfork Island', 'NF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'Northern Mariana Islands', 'MP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'Norway', 'NO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'Oman', 'OM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'Pakistan', 'PK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'Palau', 'PW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 'Panama', 'PA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 'Papua New Guinea', 'PG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 'Paraguay', 'PY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 'Peru', 'PE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'Philippines', 'PH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 'Pitcairn', 'PN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 'Poland', 'PL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 'Portugal', 'PT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 'Puerto Rico', 'PR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 'Qatar', 'QA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 'Reunion', 'RE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 'Romania', 'RO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 'Russian Federation', 'RU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 'Rwanda', 'RW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 'Saint Kitts and Nevis', 'KN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 'Saint Lucia', 'LC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 'Saint Vincent and the Grenadines', 'VC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 'Samoa', 'WS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 'San Marino', 'SM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 'Sao Tome and Principe', 'ST', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 'Saudi Arabia', 'SA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 'Senegal', 'SN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 'Seychelles', 'SC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 'Sierra Leone', 'SL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 'Singapore', 'SG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 'Slovakia', 'SK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 'Slovenia', 'SI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 'Solomon Islands', 'SB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 'Somalia', 'SO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 'South Africa', 'ZA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 'South Georgia South Sandwich Islands', 'GS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 'Spain', 'ES', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 'Sri Lanka', 'LK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 'St. Helena', 'SH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 'St. Pierre and Miquelon', 'PM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 'Sudan', 'SD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 'Suriname', 'SR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 'Svalbarn and Jan Mayen Islands', 'SJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 'Swaziland', 'SZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 'Sweden', 'SE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 'Switzerland', 'CH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 'Syrian Arab Republic', 'SY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 'Taiwan', 'TW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 'Tajikistan', 'TJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 'Tanzania, United Republic of', 'TZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 'Thailand', 'TH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 'Togo', 'TG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 'Tokelau', 'TK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 'Tonga', 'TO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 'Trinidad and Tobago', 'TT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 'Tunisia', 'TN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 'Turkey', 'TR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 'Turkmenistan', 'TM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 'Turks and Caicos Islands', 'TC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 'Tuvalu', 'TV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 'Uganda', 'UG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 'Ukraine', 'UA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 'United Arab Emirates', 'AE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 'United Kingdom', 'GB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 'United States minor outlying islands', 'UM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 'Uruguay', 'UY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 'Uzbekistan', 'UZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 'Vanuatu', 'VU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 'Vatican City State', 'VA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 'Venezuela', 'VE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 'Vietnam', 'VN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 'Virigan Islands (British)', 'VG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 'Virgin Islands (U.S.)', 'VI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 'Wallis and Futuna Islands', 'WF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 'Western Sahara', 'EH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 'Yemen', 'YE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 'Yugoslavia', 'YU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 'Zaire', 'ZR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 'Zambia', 'ZM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 'Zimbabwe', 'ZW', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
CREATE TABLE IF NOT EXISTS `education` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `school` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entrance_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `graduation_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` int(11) NOT NULL,
  `major` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `grade` int(11) NOT NULL,
  `activities_social` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `user_id`, `school`, `entrance_date`, `graduation_date`, `country`, `major`, `grade`, `activities_social`, `description`, `created_at`, `updated_at`) VALUES
(1, 33, 'test', '', '', 1, '', 1, '', '', '2018-04-23 16:14:09', '2018-04-23 16:14:09');

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

DROP TABLE IF EXISTS `experiences`;
CREATE TABLE IF NOT EXISTS `experiences` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `end_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `current_job` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_classification_lookup`
--

DROP TABLE IF EXISTS `job_classification_lookup`;
CREATE TABLE IF NOT EXISTS `job_classification_lookup` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `job_classification_lookup`
--

INSERT INTO `job_classification_lookup` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Junior level', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Senior level', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `user_id`, `lang_id`, `level`, `created_at`, `updated_at`) VALUES
(1, 35, 21, 1, '2018-05-03 17:57:09', '2018-05-03 17:57:09'),
(2, 36, 15, 1, '2018-05-03 17:58:52', '2018-05-03 17:58:52');

-- --------------------------------------------------------

--
-- Table structure for table `languages_lookup`
--

DROP TABLE IF EXISTS `languages_lookup`;
CREATE TABLE IF NOT EXISTS `languages_lookup` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages_lookup`
--

INSERT INTO `languages_lookup` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, 'Albanian', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Arabic', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Asturian', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Basque', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Bengali', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Bulgarian', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Cantonese', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Catalan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Corsican', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Croatian', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Czech', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Danish', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Dutch', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'English', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Estonian', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Faroese', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Farsi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Finnish', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'French', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Frisian', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Gaelic', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Galician', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'German', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Greek', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Greenlandic', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Hebrew', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Hindi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Hungarian', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Icelandic', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Irish', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Italian', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Japanese', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Kurdish', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Latin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Latvian', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Macedonian', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Malay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Maltese', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Mandarin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Moroccan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Norwegian', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Polish', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Portuguese', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Punjabi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Romanian', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Russian', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Sami', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Sardinian', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Serbian', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Serbo Croat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Slovak', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Slovakian', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Slovenian', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Somalian', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Spanish', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Swedish', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Tamil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Thai', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Turkish', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Urdu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Vietnamese', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Welsh', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2015_03_27_141932_create_vacancies_table', 1),
('2015_03_27_145146_create_users_table', 1),
('2015_03_27_155452_create_companies_lookup_table', 1),
('2015_03_27_155730_create_categories_lookup_table', 1),
('2015_03_27_155914_create_countries_lookup_table', 1),
('2015_03_29_091158_create_profiles_table', 1),
('2015_03_30_124208_create_applicants_vacancies_table', 1),
('2015_03_30_152128_create_education_table', 1),
('2015_03_31_081020_create_experiences_table', 1),
('2015_03_31_100926_create_achievements_table', 1),
('2015_03_31_103826_create_courses_table', 1),
('2015_03_31_103937_create_languages_table', 1),
('2015_03_31_105041_create_skills_table', 1),
('2015_03_31_105350_create_certificates_table', 1),
('2015_03_31_125328_create_languages_lookup_table', 1),
('2015_04_04_070158_create_password_reminders_table', 2),
('2015_04_04_130522_create_category_of_interests_table', 3),
('2015_04_04_142623_create_job_classification_lookup_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reminders`
--

DROP TABLE IF EXISTS `password_reminders`;
CREATE TABLE IF NOT EXISTS `password_reminders` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_reminders_email_index` (`email`),
  KEY `password_reminders_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_reminders`
--

INSERT INTO `password_reminders` (`email`, `token`, `created_at`) VALUES
('yxie37@syr.edu', '03f358200b4f9e0fe52fe90b3d5eab5451bd5ce9', '2018-04-25 18:08:24');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
CREATE TABLE IF NOT EXISTS `profiles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` int(11) NOT NULL,
  `nationality` int(11) NOT NULL,
  `residence` int(11) NOT NULL,
  `married` int(11) NOT NULL,
  `dob` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cv_file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `summary` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `first_name`, `last_name`, `gender`, `nationality`, `residence`, `married`, `dob`, `mobile`, `phone`, `address`, `cv_file`, `summary`, `created_at`, `updated_at`) VALUES
(2, 33, 'Yuxuan', 'Xie', 2, 45, 45, 1, '07/29/1994', '777-777-7777', '', '100 xxx Road, Syracuse, NY, 132xx', 'a737f6c36f989b1138ef87e68ee9a201.docx', '', '2018-04-17 21:06:18', '2018-04-23 16:13:55'),
(3, 34, 'John', 'Doe', 1, 1, 1, 1, '04/17/1990', '777-777-7777', '', '', '', '', '2018-04-19 06:24:12', '2018-04-19 06:25:10'),
(4, 35, 'John', 'Doe', 0, 1, 1, 0, '', '', '', '', 'c2903c322af90421307f288a96543bbe.docx', '', '2018-05-03 17:55:39', '2018-05-03 17:56:44'),
(5, 36, 'Jane', 'Doe', 0, 1, 1, 0, '', '', '', '', '5859e283db4ef29ac5f259bb1c7fefd5.docx', '', '2018-05-03 17:58:42', '2018-05-03 17:59:53');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
CREATE TABLE IF NOT EXISTS `skills` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `user_id`, `name`, `level`, `created_at`, `updated_at`) VALUES
(1, 35, 'Java', 1, '2018-05-03 17:57:20', '2018-05-03 17:57:20'),
(2, 35, 'JavaScript', 1, '2018-05-03 17:57:35', '2018-05-03 17:57:35'),
(3, 36, 'Java', 1, '2018-05-03 17:59:17', '2018-05-03 17:59:17'),
(4, 36, 'C++', 2, '2018-05-03 17:59:28', '2018-05-03 17:59:28'),
(6, 33, 'Java', 3, '2018-05-03 18:00:57', '2018-05-03 18:06:51'),
(7, 33, 'C++', 2, '2018-05-03 18:01:07', '2018-05-03 18:01:07'),
(9, 36, 'Python', 1, '2018-05-03 18:06:05', '2018-05-03 18:06:05'),
(10, 33, 'JavaScript', 3, '2018-05-03 18:06:36', '2018-05-03 18:06:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin@syr.edu', '$2y$10$ZpH5R.wYM7Rg9momNTDZ7e/yT9UWTgDsWzp01G2P29EV3cqvkIWq6', 1, 'n1vdbzymiJFPdXEAYWZMrfczvzv9v0KLRreanOe0pvyfyuikiWP3auVZva7k', '2018-04-03 13:54:07', '2018-05-06 22:01:18'),
(33, 'yxie37@syr.edu', '$2y$10$/QdkF6ZIX2imQTOUx1PSCO0XQk2wFvvYKsJn/6Rv83Dy4mJ1JpZBi', 0, 'Z4hmCH2Y8PS5jhxncPpQtuuw6oaJNveF7VjeIeSuPSmSixEtA2oiJoVJRzZG', '2018-04-17 21:06:18', '2018-05-03 18:07:02'),
(34, 'user@syr.edu', '$2y$10$e9/mkYWeqLa6q5HYiJ.ziu/DgfTor1QOB.P48OBvBm4TC/KSgOVDq', 0, NULL, '2018-04-19 06:24:12', '2018-04-19 06:24:12'),
(35, 'aaa@syr.edu', '$2y$10$EskPB1IjTB./nRtqVX6cLOPHM4.0ymJLLnoSuTyr98eVW6BP/xNkC', 0, 'ClR69kwbkrxZapmZK5eXuqLMl3Qa0Xjv5C2Fab7XheQaGzZaSrkUD9XxNEjH', '2018-05-03 17:55:39', '2018-05-03 18:05:41'),
(36, 'bbb@syr.edu', '$2y$10$wBE3v.hzy52KO.Dq442oOei/yN4lOBdU1.5tadOGTz6gYyTFlY1fC', 0, 'NwqGdxg1m3L15f9d44YV0rmFKPqKMqhCPR1h68BIAkAbtyj5zfC8n9ikzbrQ', '2018-05-03 17:58:42', '2018-05-03 18:06:13');

-- --------------------------------------------------------

--
-- Table structure for table `vacancies`
--

DROP TABLE IF EXISTS `vacancies`;
CREATE TABLE IF NOT EXISTS `vacancies` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `open_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `closing_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `classification` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `salary` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `summary` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `responsibilities` text COLLATE utf8_unicode_ci NOT NULL,
  `qualifications_experience` text COLLATE utf8_unicode_ci NOT NULL,
  `skills_knowledge` text COLLATE utf8_unicode_ci NOT NULL,
  `posted_user` int(11) NOT NULL,
  `closed` int(11) NOT NULL,
  `date_closed` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vacancies`
--

INSERT INTO `vacancies` (`id`, `title`, `location`, `open_date`, `closing_date`, `classification`, `company_id`, `cat_id`, `salary`, `summary`, `description`, `responsibilities`, `qualifications_experience`, `skills_knowledge`, `posted_user`, `closed`, `date_closed`, `created_at`, `updated_at`) VALUES
(5, 'Java Programmer', 'Syracuse', '04/17/2018', '04/26/2018', 1, 1, 14, '$10,000', '', '', '', '', '', 0, 1, '2018-05-06', '2018-04-17 23:26:21', '2018-05-06 21:21:29'),
(6, 'JavaScript Developer', '', '04/18/2018', '04/22/2018', 1, 2, 14, '15,000', '', '', '', '', '', 0, 1, '2018-05-06', '2018-04-17 23:34:56', '2018-05-06 21:21:29'),
(7, 'Software Engineer, Tools and Infrastructure', ' Mountain View, CA, United States', '04/19/2018', '04/23/2018', 1, 1, 14, '10,000', '', 'A line of code can be many things - an amazing feature, a beautiful UI, a transformative algorithm. The faster this line of code reaches millions of users, the sooner it impacts their lives. As a Software Engineer, Tools and Infrastructure, you will be at the heart of Google’s engineering process building software that empowers engineering teams to develop and deliver high quality products quickly. We are focused on solving the hardest, most interesting challenges of developing software at scale without sacrificing stability, quality, velocity or code health.\r\n\r\nWe ensure Google\'s success by partnering with engineering teams and developing scalable tools and infrastructure that help engineers develop, test, debug and release software quickly. We impact thousands of Googlers and billions of users by increasing the pace of product development and ensuring our products are thoroughly tested. Expect to learn best practices for code health, testability and maintainability - critical skills for early career software engineers.\r\n\r\nHaving access to all of Google\'s platforms and vast compute resources provides a unique opportunity to grow as an engineer. We typically work in small, nimble teams that collaborate on common problems across products and focus areas. As a result, the exposure to this broad set of problems provides diverse technical challenges as well as accelerated career growth.\r\n\r\nGoogle is and always will be an engineering company. We hire people with a broad set of technical skills who are ready to take on some of technology\'s greatest challenges and make an impact on millions, if not billions, of users. At Google, engineers not only revolutionize search, they routinely work on massive scalability and storage solutions, large-scale applications and entirely new platforms for developers around the world. From AdWords to Chrome, Android to YouTube, Social to Local, Google engineers are changing the world one technological achievement after another.', '1. Collaborate with engineers through the entire software development lifecycle to solve complex engineering problems in tools and testing.\r\n2. Develop advanced automated testing frameworks.\r\n3. Develop tooling and infrastructure to help engineering teams measure and increase their velocity.\r\n4. Conduct research on emerging technologies.', '', 'Minimum qualifications:\r\n1. BA/BS degree in Computer Science or related technical field, or equivalent practical experience.\r\n2. Experience in writing code fixes and tools to solve problems in C, C++, C#, Java, JavaScript, Go or Python (e.g., removing duplicate elements from a list) and experience in optimizing code for stability, functionality and scalability (e.g., crawling, search, troubleshooting).\r\n3. Experience or previous project assignments with Data Structures and Algorithms (i.e. selecting and implementing an algorithm, using data structures to solve a problem.) Experience with algorithms that improve a product’s capabilities, speed, efficiency, or reliability.\r\n4. Experience with data structures, branching, function-calls, and conditionals as well as debugging code and submitting the appropriate fix.', 0, 1, '2018-05-06', '2018-04-19 06:02:59', '2018-05-06 21:21:29'),
(9, 'IT Service Operations Manager', 'Beijing, Beijing, China', '04/21/2018', '05/25/2018', 2, 4, 14, '15,000', '', 'At Microsoft, we embrace the company mission to help empower every person and every organization on the planet to achieve more. Every product we build, every service we provide, and every service experience we deliver is grounded in this mission. Today, we live in a mobile-first, cloud-first world, and the transformation we are driving across our businesses is designed to enable Microsoft and our customers to thrive in this world. To learn more please visit: https://careers.microsoft.com/mission-culture Check out all our products at: http://www.microsoft.com Microsoft Core Services & Engineering & The Opportunity Our Microsoft Engineering organization has an immense opportunity to both help drive the future of Microsoft, as well as accelerate the company’s transformation in this ever-changing fast paced digital world. Our organization is for those individuals who want to be strategic partners to the business in addition to having an immense opportunity to create innovative solutions across a vast portfolio of products and services. The IT Services Operations Manager is accountable for deployment and operation of IT-related services, which support the Microsoft businesses internationally, and promote Microsoft technologies through experience and best practice sharing during IT Showcase sessions with external customers.', 'The IT Services Operations Manager in Beijing is the field IT person delivering the foundation services that keep Microsoft Beijing office connected including:\r\n\r\n• Deploying and operating IT products and services to our internal end users in Beijing West Campus buildings in addition to support new projects when applicable\r\n\r\n• Collaborating with other IT Teams to prioritize and plan the infrastructure and services roadmap\r\n\r\n• Interacting and supporting executives in Beijing West campus buildings to support critical meetings and events by coordinating with IT resources and counterparts.  \r\n\r\nThis position will be reporting to the Area IT Manager in GCR. Microsoft Core Services & Engineering provides a new hire onboarding program, career growth, ongoing technical training, mentorships, as well as a rewarding and flexible work environment so you can better integrate professional and personal life. Microsoft Core Services & Engineering seeks someone who is collaborative, dedicated, a quick learner and adaptable (will be able to pick up a new technology with relative ease).\r\n\r\n ', '', '• Proven experience of IT operations or service experience for a multi-site / multi-country organization, including infrastructure deployment, end user support, or IT operation related experience\r\n\r\n• Proficiency in Microsoft Products & Services\r\n\r\n• Fluent in English language Microsoft is an equal opportunity employer and supports workforce diversity.\r\n\r\n \r\n\r\nAt Microsoft, we believe that diversity enriches our performance and products, the communities where we live and work, and the lives of our employees. As our workforce evolves to reflect the growing diversity of our communities and the global marketplace, our efforts to understand, value, and incorporate differences become increasingly important. Women and minorities are encouraged to apply. ', 0, 1, '2018-05-06', '2018-04-19 06:04:38', '2018-05-06 21:21:29'),
(10, 'Data Security Generalist', 'San Francisco, United States', '05/21/2018', '07/19/2018', 1, 10, 20, '8,000', '', 'Airbnb is built on trust. Our security team works hard to improve the security of our platform that enables millions of users to explore the world.\r\n\r\nWe are looking for people who want to make the Airbnb platform safer for millions of users around the world. We’d love to talk to you if you’re a talented individual who is passionate about finding security weaknesses and crafting scalable and usable solutions. We are enablers who make it easier for engineers to create secure features, not blockers.  If that mission sounds exciting to you, we have a few different flavors of projects/skill sets we are looking for.', 'What are examples of work that Security Engineers have done at Airbnb?\r\n\r\n1. Author & maintain core encryption/authentication/authorization services, libraries, and frameworks\r\n2. Building new tools to detect vulnerabilities via static analysis, automated scanning, etc.\r\n3. Implementation of two-factor authentication for internal systems; standardized identity and access management\r\n4. Work across functions to ensure the security of the entire production ecosystem\r\n5. Help design and review security-sensitive aspects of the system\r\n6. Train new engineers and evangelize good security habits; ensure best practices (in technology or education/outreach)\r\n7. Regular collaboration with third-party penetration-testing firms\r\n8. Attend security conferences\r\n9. Contribute to open source\r\n10. Publish security research', '', '1. Solid defensive security experience shipping projects that mitigate application or infrastructure risks at scale\r\n2. Experience finding ways to enable other engineers to create more secure products by default without requiring security expertise\r\n3. Significant experience performing security design review of distributed systems and APIs\r\n4. Significant experience in at least one of Java, Ruby, Python, Go or C/C++\r\n5. Working knowledge of cloud computing (AWS) operations\r\n6. Interest in both breaking and building', 0, 1, '2018-05-06', '2018-04-19 06:13:50', '2018-05-06 21:21:29'),
(11, 'test', 'test', '04/24/2018', '04/28/2018', 1, 1, 1, '', '', '', '', '', '', 0, 1, '2018-05-06', '2018-04-23 16:15:49', '2018-05-06 21:21:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements` ADD FULLTEXT KEY `search` (`name`,`description`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates` ADD FULLTEXT KEY `search` (`name`,`authority`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses` ADD FULLTEXT KEY `search` (`name`,`description`);

--
-- Indexes for table `education`
--
ALTER TABLE `education` ADD FULLTEXT KEY `search` (`school`,`major`,`activities_social`,`description`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences` ADD FULLTEXT KEY `search` (`company`,`title`,`description`);

--
-- Indexes for table `languages_lookup`
--
ALTER TABLE `languages_lookup` ADD FULLTEXT KEY `search` (`name`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles` ADD FULLTEXT KEY `search` (`summary`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills` ADD FULLTEXT KEY `search` (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
