-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2014 at 01:21 PM
-- Server version: 5.5.34
-- PHP Version: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `manan`
--

-- --------------------------------------------------------

--
-- Table structure for table `joom_assets`
--

CREATE TABLE IF NOT EXISTS `joom_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=227 ;

--
-- Dumping data for table `joom_assets`
--

INSERT INTO `joom_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 526, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":[],"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 2, 3, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 4, 13, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 14, 15, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 16, 17, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 18, 19, 1, 'com_config', 'com_config', '{}'),
(7, 1, 20, 91, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(8, 1, 92, 395, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 396, 397, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 398, 399, 1, 'com_installer', 'com_installer', '{"core.admin":{"7":0},"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 400, 401, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 402, 403, 1, 'com_login', 'com_login', '{}'),
(13, 1, 404, 405, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 406, 407, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 408, 409, 1, 'com_media', 'com_media', '{"core.admin":{"7":0},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 410, 411, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 39, 40, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 414, 415, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 416, 423, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(20, 1, 424, 425, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 426, 427, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 428, 429, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 430, 431, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 432, 433, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 434, 451, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1,"10":0,"12":0},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
(26, 1, 452, 453, 1, 'com_wrapper', 'com_wrapper', '{}'),
(34, 8, 109, 112, 2, 'com_content.category.9', 'Uncategorised', '{"core.create":{"10":0,"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(35, 3, 7, 8, 2, 'com_banners.category.10', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(36, 7, 25, 26, 2, 'com_contact.category.11', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(37, 19, 419, 420, 2, 'com_newsfeeds.category.12', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(38, 25, 441, 442, 2, 'com_weblinks.category.13', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(39, 8, 113, 302, 2, 'com_content.category.14', 'Sample Data-Articles', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 3, 9, 10, 2, 'com_banners.category.15', 'Sample Data-Banners', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 7, 27, 88, 2, 'com_contact.category.16', 'Sample Data-Contact', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 19, 421, 422, 2, 'com_newsfeeds.category.17', 'Sample Data-Newsfeeds', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 25, 443, 450, 2, 'com_weblinks.category.18', 'Sample Data-Weblinks', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 39, 114, 249, 3, 'com_content.category.19', 'Joomla!', '{"core.create":{"10":0,"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 44, 115, 226, 4, 'com_content.category.20', 'Extensions', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 45, 116, 131, 5, 'com_content.category.21', 'Components', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 45, 132, 191, 5, 'com_content.category.22', 'Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 45, 192, 203, 5, 'com_content.category.23', 'Templates', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 45, 204, 205, 5, 'com_content.category.24', 'Languages', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 45, 206, 221, 5, 'com_content.category.25', 'Plugins', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 39, 250, 281, 3, 'com_content.category.26', 'Park Site', '{"core.create":{"10":0,"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 51, 251, 256, 4, 'com_content.category.27', 'Park Blog', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 51, 257, 278, 4, 'com_content.category.28', 'Photo Gallery', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 39, 282, 295, 3, 'com_content.category.29', 'Fruit Shop Site', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(55, 54, 283, 288, 4, 'com_content.category.30', 'Growers', '{"core.create":{"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":{"10":1}}'),
(56, 43, 444, 445, 3, 'com_weblinks.category.31', 'Park Links', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(57, 43, 446, 449, 3, 'com_weblinks.category.32', 'Joomla! Specific Links', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(58, 57, 447, 448, 4, 'com_weblinks.category.33', 'Other Resources', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(59, 41, 28, 29, 3, 'com_contact.category.34', 'Park Site', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(60, 41, 30, 87, 3, 'com_contact.category.35', 'Shop Site', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(61, 60, 31, 32, 4, 'com_contact.category.36', 'Staff', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(62, 60, 33, 86, 4, 'com_contact.category.37', 'Fruit Encyclopedia', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(63, 62, 34, 35, 5, 'com_contact.category.38', 'A', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(64, 62, 36, 37, 5, 'com_contact.category.39', 'B', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(65, 62, 38, 39, 5, 'com_contact.category.40', 'C', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(66, 62, 40, 41, 5, 'com_contact.category.41', 'D', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(67, 62, 42, 43, 5, 'com_contact.category.42', 'E', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(68, 62, 44, 45, 5, 'com_contact.category.43', 'F', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(69, 62, 46, 47, 5, 'com_contact.category.44', 'G', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(70, 62, 48, 49, 5, 'com_contact.category.45', 'H', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(71, 62, 50, 51, 5, 'com_contact.category.46', 'I', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(72, 62, 52, 53, 5, 'com_contact.category.47', 'J', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(73, 62, 54, 55, 5, 'com_contact.category.48', 'K', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(74, 62, 56, 57, 5, 'com_contact.category.49', 'L', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(75, 62, 58, 59, 5, 'com_contact.category.50', 'M', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(76, 62, 60, 61, 5, 'com_contact.category.51', 'N', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(77, 62, 62, 63, 5, 'com_contact.category.52', 'O', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(78, 62, 64, 65, 5, 'com_contact.category.53', 'P', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(79, 62, 66, 67, 5, 'com_contact.category.54', 'Q', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(80, 62, 68, 69, 5, 'com_contact.category.55', 'R', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(81, 62, 70, 71, 5, 'com_contact.category.56', 'S', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(82, 62, 72, 73, 5, 'com_contact.category.57', 'T', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(83, 62, 74, 75, 5, 'com_contact.category.58', 'U', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(84, 62, 76, 77, 5, 'com_contact.category.59', 'V', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(85, 62, 78, 79, 5, 'com_contact.category.60', 'W', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(86, 62, 80, 81, 5, 'com_contact.category.61', 'X', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(87, 62, 82, 83, 5, 'com_contact.category.62', 'Y', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(88, 62, 84, 85, 5, 'com_contact.category.63', 'Z', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(89, 46, 117, 118, 6, 'com_content.article.1', 'Administrator Components', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(90, 93, 134, 135, 7, 'com_content.article.2', 'Archive Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(91, 93, 136, 137, 7, 'com_content.article.3', 'Article Categories Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(92, 93, 138, 139, 7, 'com_content.article.4', 'Articles Category Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(93, 47, 133, 148, 6, 'com_content.category.64', 'Content Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(94, 47, 149, 156, 6, 'com_content.category.65', 'User Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(95, 47, 157, 170, 6, 'com_content.category.66', 'Display Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(96, 47, 171, 182, 6, 'com_content.category.67', 'Utility Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(97, 48, 193, 194, 6, 'com_content.category.68', 'Atomic', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(98, 48, 195, 196, 6, 'com_content.category.69', 'Beez 20', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(99, 48, 197, 198, 6, 'com_content.category.70', 'Beez5', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(100, 48, 199, 200, 6, 'com_content.category.71', 'Milky Way', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(101, 50, 207, 208, 6, 'com_content.article.5', 'Authentication', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(102, 51, 279, 280, 4, 'com_content.article.6', 'Australian Parks ', '{"core.delete":[],"core.edit":{"2":1},"core.edit.state":[]}'),
(103, 95, 158, 159, 7, 'com_content.article.7', 'Banner Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(104, 44, 227, 228, 4, 'com_content.article.8', 'Beginners', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(105, 46, 119, 120, 6, 'com_content.article.9', 'Contact', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(106, 46, 121, 122, 6, 'com_content.article.10', 'Content', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(107, 109, 269, 270, 6, 'com_content.article.11', 'Cradle Mountain', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(108, 53, 258, 267, 5, 'com_content.category.72', 'Animals', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(109, 53, 268, 277, 5, 'com_content.category.73', 'Scenery', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(110, 95, 160, 161, 7, 'com_content.article.12', 'Custom HTML Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(111, 54, 289, 290, 4, 'com_content.article.13', 'Directions', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(112, 50, 209, 210, 6, 'com_content.article.14', 'Editors', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(113, 50, 211, 212, 6, 'com_content.article.15', 'Editors-xtd', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(114, 95, 162, 163, 7, 'com_content.article.16', 'Feed Display', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(115, 52, 252, 253, 5, 'com_content.article.17', 'First Blog Post', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(116, 52, 254, 255, 5, 'com_content.article.18', 'Second Blog Post', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(117, 95, 164, 165, 7, 'com_content.article.19', 'Footer Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(118, 54, 291, 292, 4, 'com_content.article.20', 'Fruit Shop', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(119, 44, 229, 230, 4, 'com_content.article.21', 'Getting Help', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(120, 44, 231, 232, 4, 'com_content.article.22', 'Getting Started', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(121, 55, 284, 285, 5, 'com_content.article.23', 'Happy Orange Orchard', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(122, 44, 233, 234, 4, 'com_content.article.24', 'Joomla!', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(123, 108, 259, 260, 6, 'com_content.article.25', 'Koala', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(124, 96, 172, 173, 7, 'com_content.article.26', 'Language Switcher', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(125, 93, 140, 141, 7, 'com_content.article.27', 'Latest Articles Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(126, 94, 150, 151, 7, 'com_content.article.28', 'Login Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(127, 166, 186, 187, 7, 'com_content.article.29', 'Menu Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(128, 93, 142, 143, 7, 'com_content.article.30', 'Most Read Content', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(129, 93, 144, 145, 7, 'com_content.article.31', 'News Flash', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(130, 44, 235, 236, 4, 'com_content.article.32', 'Parameters', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(131, 108, 261, 262, 6, 'com_content.article.33', 'Phyllopteryx', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(132, 109, 271, 272, 6, 'com_content.article.34', 'Pinnacles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(133, 44, 237, 238, 4, 'com_content.article.35', 'Professionals', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(134, 95, 166, 167, 7, 'com_content.article.36', 'Random Image Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(135, 93, 146, 147, 7, 'com_content.article.37', 'Related Items Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(136, 44, 239, 240, 4, 'com_content.article.38', 'Sample Sites', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(137, 46, 123, 124, 6, 'com_content.article.39', 'Search', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(138, 96, 174, 175, 7, 'com_content.article.40', 'Search Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(139, 50, 213, 214, 6, 'com_content.article.41', 'Search ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(140, 39, 296, 297, 3, 'com_content.article.42', 'Site Map', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(141, 108, 263, 264, 6, 'com_content.article.43', 'Spotted Quoll', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(142, 96, 176, 177, 7, 'com_content.article.44', 'Statistics Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(143, 96, 178, 179, 7, 'com_content.article.45', 'Syndicate Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(144, 50, 215, 216, 6, 'com_content.article.46', 'System', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(145, 44, 241, 242, 4, 'com_content.article.47', 'The Joomla! Community', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(146, 44, 243, 244, 4, 'com_content.article.48', 'The Joomla! Project', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(147, 48, 201, 202, 6, 'com_content.article.49', 'Typography', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(148, 44, 245, 246, 4, 'com_content.article.50', 'Upgraders', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(149, 50, 217, 218, 6, 'com_content.article.51', 'User', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(150, 46, 125, 126, 6, 'com_content.article.52', 'Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(151, 44, 247, 248, 4, 'com_content.article.53', 'Using Joomla!', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(152, 46, 127, 128, 6, 'com_content.article.54', 'Weblinks', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(153, 95, 168, 169, 7, 'com_content.article.55', 'Weblinks Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(154, 94, 152, 153, 7, 'com_content.article.56', 'Who''s Online', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(155, 108, 265, 266, 6, 'com_content.article.57', 'Wobbegone', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(156, 55, 286, 287, 5, 'com_content.article.58', 'Wonderful Watermelon', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(157, 96, 180, 181, 7, 'com_content.article.59', 'Wrapper Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(158, 46, 129, 130, 6, 'com_content.article.60', 'News Feeds', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(159, 166, 188, 189, 7, 'com_content.article.61', 'Breadcrumbs Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(160, 50, 219, 220, 6, 'com_content.article.62', 'Content', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(162, 109, 273, 274, 6, 'com_content.article.64', 'Blue Mountain Rain Forest', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(163, 109, 275, 276, 6, 'com_content.article.65', 'Ormiston Pound', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(165, 94, 154, 155, 7, 'com_content.article.66', 'Latest Users Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(166, 47, 185, 190, 6, 'com_content.category.75', 'Navigation Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(167, 54, 293, 294, 4, 'com_content.category.76', 'Recipes', '{"core.create":{"12":1,"10":1},"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":{"12":1,"10":1}}'),
(168, 34, 110, 111, 3, 'com_content.article.67', 'What''s New in 1.5?', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(169, 8, 303, 394, 2, 'com_content.category.77', 'Template Details', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(170, 169, 304, 319, 3, 'com_content.category.78', 'Design & Features', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(171, 169, 320, 349, 3, 'com_content.category.79', 'Advanced Stuff', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(172, 169, 350, 361, 3, 'com_content.category.80', 'General', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(173, 169, 362, 377, 3, 'com_content.category.81', 'Layout Variations', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(174, 169, 378, 379, 3, 'com_content.category.82', 'Testimonials', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(175, 169, 380, 393, 3, 'com_content.category.83', 'Menu Styles', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(176, 170, 305, 306, 4, 'com_content.article.68', 'Color Variations in the PRO Edition', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(177, 170, 307, 308, 4, 'com_content.article.69', 'Font Styles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(178, 170, 309, 310, 4, 'com_content.article.70', 'JSN Yoyo Design & Features', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(179, 170, 311, 312, 4, 'com_content.article.71', 'Layout', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(180, 170, 313, 314, 4, 'com_content.article.72', 'Menu Styles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(181, 170, 315, 316, 4, 'com_content.article.73', 'Module Styles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(182, 170, 317, 318, 4, 'com_content.article.74', 'Typography', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(183, 171, 321, 322, 4, 'com_content.article.75', 'CSS/JS Compression', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(184, 171, 323, 324, 4, 'com_content.article.76', 'Docs & Support', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(185, 171, 325, 326, 4, 'com_content.article.77', 'Easy to Start', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(186, 171, 327, 328, 4, 'com_content.article.78', 'Extended styles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(187, 171, 329, 330, 4, 'com_content.article.79', 'Image Gallery', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(188, 171, 331, 332, 4, 'com_content.article.80', 'Flash Gallery Alternative', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(189, 171, 333, 334, 4, 'com_content.article.81', 'Joomla! 2.5 & Joomla! 3.x Support', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(190, 171, 335, 336, 4, 'com_content.article.82', 'Mobile Ready in the PRO Edition', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(191, 171, 337, 338, 4, 'com_content.article.83', 'Multilingual Support', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(192, 171, 339, 340, 4, 'com_content.article.84', 'Painless Configuration ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(193, 171, 341, 342, 4, 'com_content.article.85', 'RTL Layout Support', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(194, 171, 343, 344, 4, 'com_content.article.86', 'SEO & Accessibility', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(195, 173, 363, 364, 4, 'com_content.article.87', 'Layout variation Center | Innerright | Right ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(196, 173, 365, 366, 4, 'com_content.article.88', 'Layout variation Innerleft | Center | Right ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(197, 173, 367, 368, 4, 'com_content.article.89', 'Layout variation Left | Center | Innerright ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(198, 173, 369, 370, 4, 'com_content.article.90', 'Layout variation Left | Center | Right', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(199, 173, 371, 372, 4, 'com_content.article.91', 'Layout variation Left | Innerleft | Center', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(200, 173, 373, 374, 4, 'com_content.article.92', 'Main content only', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(201, 175, 381, 382, 4, 'com_content.article.93', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(202, 175, 383, 384, 4, 'com_content.article.94', 'Rich Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(203, 175, 385, 386, 4, 'com_content.article.95', 'Side Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(204, 175, 387, 388, 4, 'com_content.article.96', 'Side Menu RTL', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(205, 175, 389, 390, 4, 'com_content.article.97', 'Top Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(206, 175, 391, 392, 4, 'com_content.article.98', 'Tree Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(207, 171, 345, 346, 4, 'com_content.article.99', 'JSN Yoyo Advanced Stuff', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(208, 171, 347, 348, 4, 'com_content.article.100', 'K2 Support', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(209, 172, 351, 352, 4, 'com_content.article.101', 'JSN Yoyo Product Tour', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(210, 172, 353, 354, 4, 'com_content.article.102', '5 reasons to choose JSN Yoyo', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(211, 172, 355, 356, 4, 'com_content.article.103', 'Welcome to JSN Yoyo ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(212, 172, 357, 358, 4, 'com_content.article.104', 'JSN Yoyo Showcase', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(213, 3, 11, 12, 2, 'com_banners.category.84', 'Promo', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(214, 1, 516, 517, 1, 'com_imageshow', 'com_imageshow', '{}'),
(215, 7, 89, 90, 2, 'com_contact.category.85', 'Contacts', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(216, 173, 375, 376, 4, 'com_content.article.105', 'Main content only (2)', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(219, 45, 222, 223, 5, 'com_content.article.106', 'Form Builder', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(220, 45, 224, 225, 5, 'com_content.article.107', 'Thanks for filling out form', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(221, 1, 518, 519, 1, 'com_uniform', 'uniform', '{}'),
(222, 39, 300, 301, 3, 'com_content.article.108', 'JSN PowerAdmin - Managing your Joomla website can’t be easier', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(223, 1, 520, 521, 1, 'com_poweradmin', 'poweradmin', '{}'),
(224, 172, 359, 360, 4, 'com_content.article.109', 'Welcome', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(225, 1, 522, 523, 1, 'com_mobilize', 'mobilize', '{}'),
(226, 1, 524, 525, 1, 'com_kunena', 'com_kunena', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `joom_associations`
--

CREATE TABLE IF NOT EXISTS `joom_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `joom_banners`
--

CREATE TABLE IF NOT EXISTS `joom_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `joom_banners`
--

INSERT INTO `joom_banners` (`id`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `clickurl`, `state`, `catid`, `description`, `custombannercode`, `sticky`, `ordering`, `metakey`, `params`, `own_prefix`, `metakey_prefix`, `purchase_type`, `track_clicks`, `track_impressions`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `reset`, `created`, `language`) VALUES
(2, 1, 0, 'Shop 1', 'shop-1', 0, 16, 0, 'http://shop.joomla.org/amazoncom-bookstores.html', 1, 15, 'Get books about Joomla! at the Joomla! book shop.', '', 0, 1, '', '{"imageurl":"images\\/banners\\/shop-ad-books.jpg","width":"","height":"","alt":"Joomla! Books"}', 0, '', -1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-01-01 00:00:01', 'en-GB'),
(3, 1, 0, 'Shop 2', 'shop-2', 0, 22, 0, 'http://shop.joomla.org', 1, 15, 'T Shirts, caps and more from the Joomla! Shop.', '', 0, 2, '', '{"imageurl":"images\\/banners\\/shop-ad.jpg","width":"","height":"","alt":"Joomla! Shop"}', 0, '', -1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-01-01 00:00:01', 'en-GB'),
(4, 1, 0, 'Support Joomla!', 'support-joomla', 0, 19, 0, 'http://contribute.joomla.org', 1, 15, 'Your contributions of time, talent and money make Joomla! possible.', '', 0, 3, '', '{"imageurl":"images\\/banners\\/white.png","width":"","height":"","alt":""}', 0, '', -1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'en-GB'),
(5, 1, 1, 'Product Tour', 'product-tour', 0, 291, 4, 'index.php?option=com_content&view=article&id=101&Itemid=497', 1, 84, '', '<a title="Product Tour" target="_blank" href="index.php?option=com_content&view=article&id=101&Itemid=497"><img alt="Product Tour" src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/banners/product-tour.jpg"/></a>', 0, 1, '', '{"imageurl":"images\\/banners\\/product-tour.jpg","width":"","height":"","alt":""}', 0, '', 1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-04-01 08:32:43', '*');

-- --------------------------------------------------------

--
-- Table structure for table `joom_banner_clients`
--

CREATE TABLE IF NOT EXISTS `joom_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `joom_banner_clients`
--

INSERT INTO `joom_banner_clients` (`id`, `name`, `contact`, `email`, `extrainfo`, `state`, `checked_out`, `checked_out_time`, `metakey`, `own_prefix`, `metakey_prefix`, `purchase_type`, `track_clicks`, `track_impressions`) VALUES
(1, 'Joomla!', 'Administrator', 'email@email.com', '', 1, 0, '0000-00-00 00:00:00', '', 0, '', -1, -1, -1);

-- --------------------------------------------------------

--
-- Table structure for table `joom_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `joom_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `joom_categories`
--

CREATE TABLE IF NOT EXISTS `joom_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned DEFAULT NULL,
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=86 ;

--
-- Dumping data for table `joom_categories`
--

INSERT INTO `joom_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`) VALUES
(1, 0, 0, 0, 151, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(9, 34, 1, 131, 132, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(10, 35, 1, 129, 130, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(11, 36, 1, 125, 126, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(12, 37, 1, 61, 62, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(13, 38, 1, 57, 58, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(14, 39, 1, 9, 56, 1, 'sample-data-articles', 'com_content', 'Sample Data-Articles', 'sample-data-articles', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(15, 40, 1, 127, 128, 1, 'sample-data-banners', 'com_banners', 'Sample Data-Banners', 'sample-data-banners', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(16, 41, 1, 63, 124, 1, 'sample-data-contact', 'com_contact', 'Sample Data-Contact', 'sample-data-contact', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(17, 42, 1, 59, 60, 1, 'sample-data-newsfeeds', 'com_newsfeeds', 'Sample Data-Newsfeeds', 'sample-data-newsfeeds', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(18, 43, 1, 1, 8, 1, 'sample-data-weblinks', 'com_weblinks', 'Sample Data-Weblinks', 'sample-data-weblinks', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(19, 44, 14, 10, 39, 2, 'sample-data-articles/joomla', 'com_content', 'Joomla!', 'joomla', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(20, 45, 19, 11, 38, 3, 'sample-data-articles/joomla/extensions', 'com_content', 'Extensions', 'extensions', '', '<p>The Joomla! content management system lets you create webpages of various types using extensions. There are 5 basic types of extensions: components, modules, templates, languages, and plugins. Your website includes the extensions you need to create a basic website in English, but thousands of additional extensions of all types are available. The <a href="http://extensions.joomla.org" style="color: #1b57b1; text-decoration: none; font-weight: normal;">Joomla! Extensions Directory</a> is the largest directory of Joomla! extensions.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(21, 46, 20, 12, 13, 4, 'sample-data-articles/joomla/extensions/components', 'com_content', 'Components', 'components', '', '<p><img src="administrator/templates/bluestork/images/header/icon-48-component.png" class="image-left" alt="Component Image" />Components are larger extensions that produce the major content for your site. Each component has one or more "views" that control how content is displayed.In the Joomla! administrator there are additional extensions suce as Menus, Redirection, and the extension managers.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(22, 47, 20, 14, 25, 4, 'sample-data-articles/joomla/extensions/modules', 'com_content', 'Modules', 'modules', '', '<p><img src="administrator/templates/bluestork/images/header/icon-48-module.png" alt="Media Image" class="image-left" />Modules are small blocks of content that can be displayed in positions on a web page. The menus on this site are displayed in modules. The core of Joomla! includes 17 separate modules ranging from login to search to random images. Each module has a name that starts mod_ but when it displays it has a title. In the descriptions in this section, the titles are the same as the names.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(23, 48, 20, 26, 33, 4, 'sample-data-articles/joomla/extensions/templates', 'com_content', 'Templates', 'templates', '', '<p><img src="administrator/templates/bluestork/images/header/icon-48-themes.png" border="0" alt="Media Image" align="left" />Templates give your site its look and feel. They determine layout, colors, type faces, graphics and other aspects of design that make your site unique. Your installation of Joomla comes prepackaged with four templates. <a href="http://help.joomla.org/proxy/index.php?option=com_help&keyref=Help16:Extensions_Template_Manager_Templates">Help</a></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-10 04:42:02', 0, '*'),
(24, 49, 20, 34, 35, 4, 'sample-data-articles/joomla/extensions/languages', 'com_content', 'Languages', 'languages', '', '<p><img src="administrator/templates/bluestork/images/header/icon-48-language.png" border="0" alt="Languages Image" align="left" />Joomla! installs in English, but translations of the interfaces, sample data and help screens are available in dozens of languages. <a href="http://help.joomla.org/proxy/index.php?option=com_help&keyref=Help16:Extensions_Language_Manager_Installed">Help</a></p>\n<p><a href="http://community.joomla.org/translations.html">Translation information</a></p>\n<p>If there is no language pack available for your language, instructions are available for creating your own translation, which you can also contribute to the community by starting a translation team to create an accredited translation.</p>\n<p>Translations of the interfaces are installed using the extensions manager in the site administrator and then managed using the language manager.</p>\n<p>If you have two or more languages installed you may enable the language switcher plugin and module. They should always be used together. If you create multilingual content and mark your content, menu items or modules as in specific languages and follow <a href="http://docs.joomla.org/Language_Switcher_Tutorial_for_Joomla_1.6">the complete instructions</a> your users will be able to select a specific content language using the module. By default both the plugin and module are disabled.</p>\n<p>There are a number of extensions that can help you manage translations of content available in the<a href="http://extensions.joomla.org"> Joomla! Extensions Directory</a>.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-10 04:07:45', 0, '*'),
(25, 50, 20, 36, 37, 4, 'sample-data-articles/joomla/extensions/plugins', 'com_content', 'Plugins', 'plugins', '', '<p><img src="administrator/templates/bluestork/images/header/icon-48-plugin.png" border="0" alt="Plugin Image" align="left" />Plugins are small task oriented extensions that enhance the Joomla! framework. Some are associated with particular extensions and others, such as editors, are used across all of Joomla!. Most beginning users do not need to change any of the plugins that install with Joomla!. <a href="http://help.joomla.org/proxy/index.php?option=com_help&keyref=Help16:Extensions_Plugin_Manager_Edit">Help</a></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-10 04:05:05', 0, '*'),
(26, 51, 14, 40, 49, 2, 'sample-data-articles/park-site', 'com_content', 'Park Site', 'park-site', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, 'en-GB'),
(27, 52, 26, 41, 42, 3, 'sample-data-articles/park-site/park-blog', 'com_content', 'Park Blog', 'park-blog', '', '<p><span style="font-size: 12px;">Here is where I will blog all about the parks of Australia.</span></p>\n<p><em>You can make a blog on your website by creating a category to write you blog posts in (this one is called Park Blog). Each blog post will be an article in that category. If you make a category blog menu link with 1 column it will look like this page, if you display the category description (this part) displayed. </em></p>\n<p><em>To enhance your blog you may want to add  extensions for <a href="http://extensions.joomla.org/extensions/contacts-and-feedback/articles-comments" style="color: #1b57b1; text-decoration: none; font-weight: normal;">comments</a>,<a href="http://extensions.joomla.org/extensions/social-web" style="color: #1b57b1; text-decoration: none; font-weight: normal;"> interacting with social network sites</a>, <a href="http://extensions.joomla.org/extensions/content-sharing" style="color: #1b57b1; text-decoration: none; font-weight: normal;">tagging</a>, and <a href="http://extensions.joomla.org/extensions/content-sharing" style="color: #1b57b1; text-decoration: none; font-weight: normal;">keeping in contact with your readers</a>.   You will also enable the syndication that is included in Joomla! (in the Integration Options set Show Feed Link to Show an make sure to display the syndication module on the page).</em></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"images\\/sampledata\\/parks\\/banner_cradle.jpg"}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, 'en-GB'),
(28, 53, 26, 43, 48, 3, 'sample-data-articles/park-site/photo-gallery', 'com_content', 'Photo Gallery', 'photo-gallery', '', '<p><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/sampledata/parks/banner_cradle.jpg" border="0" /></p>\n<p>These are my photos from parks I have visited (I didn''t take them, they are all from <a href="http://commons.wikimedia.org/wiki/Main_Page">Wikimedia Commons</a>).</p>\n<p><em>This shows you how to make a simple image gallery using articles in com_content. </em></p>\n<p><em>In each article put a thumbnail image before a "readmore" and the full size image after it. Set the article to Show Intro Text: Hide. </em></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, 'en-GB'),
(29, 54, 14, 50, 55, 2, 'sample-data-articles/fruit-shop-site', 'com_content', 'Fruit Shop Site', 'fruit-shop-site', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(30, 55, 29, 51, 52, 3, 'sample-data-articles/fruit-shop-site/growers', 'com_content', 'Growers', 'growers', '', '<p>We search the whole countryside for the best fruit growers.</p>\n<p><em>You can let each supplier have a page that he or she can edit. To see this in action you will need to create a users who is in the suppliers group.  <br />Create one page in the growers category for that user and make that supplier the author of the page.  That user will be able to edit his or her page. </em></p>\n<p><em>This illustrates the use of the Edit Own permission. </em></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(31, 56, 18, 2, 3, 2, 'sample-data-weblinks/park-links', 'com_weblinks', 'Park Links', 'park-links', '', '<p>Here are links to some of my favorite parks.</p>\n<p><em>The weblinks component provides an easy way to make links to external sites that are consistently formatted and categorised. You can create weblinks from the front end of your site.</em></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"images\\/sampledata\\/parks\\/banner_cradle.jpg"}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, 'en-GB'),
(32, 57, 18, 4, 7, 2, 'sample-data-weblinks/joomla-specific-links', 'com_weblinks', 'Joomla! Specific Links', 'joomla-specific-links', '', '<p><div style="font-family: Tahoma, Helvetica, Arial, sans-serif; font-size: 76%; background-color: #ffffff; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.3em; color: #333333;"><p>A selection of links that are all related to the Joomla! Project.</p></div></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(33, 58, 32, 5, 6, 3, 'sample-data-weblinks/joomla-specific-links/other-resources', 'com_weblinks', 'Other Resources', 'other-resources', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(34, 59, 16, 64, 65, 2, 'sample-data-contact/park-site', 'com_contact', 'Park Site', 'park-site', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, 'en-GB'),
(35, 60, 16, 66, 123, 2, 'sample-data-contact/shop-site', 'com_contact', 'Shop Site', 'shop-site', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(36, 61, 35, 67, 68, 3, 'sample-data-contact/shop-site/staff', 'com_contact', 'Staff', 'staff', '', '<p>Please feel free to contact our staff at any time should you need assistance.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(37, 62, 35, 69, 122, 3, 'sample-data-contact/shop-site/fruit-encyclopedia', 'com_contact', 'Fruit Encyclopedia', 'fruit-encyclopedia', '', '<p> </p><p>Our directory of information about different kinds of fruit.</p><p>We love fruit and want the world to know more about all of its many varieties.</p><p>Although it is small now, we work on it whenever we have a chance.</p><p>All of the images can be found in <a href="http://commons.wikimedia.org/wiki/Main_Page">Wikimedia Commons</a>.</p><p><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/sampledata/fruitshop/apple.jpg" border="0" alt="Apples" title="Apples" /></p><p><em>This encyclopedia is implemented using the contact component, each fruit a separate contact and a category for each letter. A CSS style is used to create the horizontal layout of the alphabet headings. </em></p><p><em>If you wanted to, you could allow some users (such as your growers) to have access to just this category in the contact component and let them help you to create new content for the encyclopedia.</em></p><p> </p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(38, 63, 37, 70, 71, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/a', 'com_contact', 'A', 'a', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(39, 64, 37, 72, 73, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/b', 'com_contact', 'B', 'b', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(40, 65, 37, 74, 75, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/c', 'com_contact', 'C', 'c', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(41, 66, 37, 76, 77, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/d', 'com_contact', 'D', 'd', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(42, 67, 37, 78, 79, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/e', 'com_contact', 'E', 'e', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(43, 68, 37, 80, 81, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/f', 'com_contact', 'F', 'f', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(44, 69, 37, 82, 83, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/g', 'com_contact', 'G', 'g', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(45, 70, 37, 84, 85, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/h', 'com_contact', 'H', 'h', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(46, 71, 37, 86, 87, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/i', 'com_contact', 'I', 'i', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(47, 72, 37, 88, 89, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/j', 'com_contact', 'J', 'j', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(48, 73, 37, 90, 91, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/k', 'com_contact', 'K', 'k', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(49, 74, 37, 92, 93, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/l', 'com_contact', 'L', 'l', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(50, 75, 37, 94, 95, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/m', 'com_contact', 'M', 'm', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(51, 76, 37, 96, 97, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/n', 'com_contact', 'N', 'n', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(52, 77, 37, 98, 99, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/o', 'com_contact', 'O', 'o', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(53, 78, 37, 100, 101, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/p', 'com_contact', 'P', 'p', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(54, 79, 37, 102, 103, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/q', 'com_contact', 'Q', 'q', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(55, 80, 37, 104, 105, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/r', 'com_contact', 'R', 'r', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(56, 81, 37, 106, 107, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/s', 'com_contact', 'S', 's', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(57, 82, 37, 108, 109, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/t', 'com_contact', 'T', 't', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(58, 83, 37, 110, 111, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/u', 'com_contact', 'U', 'u', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(59, 84, 37, 112, 113, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/v', 'com_contact', 'V', 'v', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(60, 85, 37, 114, 115, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/w', 'com_contact', 'W', 'w', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(61, 86, 37, 116, 117, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/x', 'com_contact', 'X', 'x', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(62, 87, 37, 118, 119, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/y', 'com_contact', 'Y', 'y', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(63, 88, 37, 120, 121, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/z', 'com_contact', 'Z', 'z', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(64, 93, 22, 15, 16, 5, 'sample-data-articles/joomla/extensions/modules/articles-modules', 'com_content', 'Content Modules', 'articles-modules', '', '<p>Content modules display article and other information from the content component.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(65, 94, 22, 17, 18, 5, 'sample-data-articles/joomla/extensions/modules/user-modules', 'com_content', 'User Modules', 'user-modules', '', '<p>User modules interact with the user system, allowing users to login, showing who is logged in, and showing the most recently registered users.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(66, 95, 22, 19, 20, 5, 'sample-data-articles/joomla/extensions/modules/display-modules', 'com_content', 'Display Modules', 'display-modules', '', '<p>These modules display information from components other than content and user. These include weblinks, news feeds and the media manager.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(67, 96, 22, 21, 22, 5, 'sample-data-articles/joomla/extensions/modules/utility-modules', 'com_content', 'Utility Modules', 'utility-modules', '', '<p>Utility modules provide useful functionality such as search, syndication, and statistics.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(68, 97, 23, 31, 32, 5, 'sample-data-articles/joomla/extensions/templates/atomic', 'com_content', 'Atomic', 'atomic', '', '<p>Atomic is a minimal template designed to be a skeleton for making your own template and to learn about Joomla! templating.</p>\n<p><img src="templates/atomic/template_thumbnail.png" border="0" alt="The Atomic Template" style="border: 0; float: right;" /></p>\n<p> </p>\n<ul>\n<li><a href="index.php?Itemid=285">Home Page</a></li>\n<li><a href="index.php?Itemid=316">Typography</a></li>\n</ul>\n<p> </p>\n<p> </p>\n<p><br /><br /></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(69, 98, 23, 27, 28, 5, 'sample-data-articles/joomla/extensions/templates/beez-20', 'com_content', 'Beez 20', 'beez-20', '', '<p><img src="templates/beez_20/template_thumbnail.png" border="0" alt="Beez_20 thumbnail" align="right" style="float: right; margin: 5px,80px,5px,25px;" /></p>\n<p>Beez 2.0 is a versatile, easy to customize template that works for a variety of sites. It meets major accessibility standards and demonstrates a range of css and javascript techniques. It is the default template that installs with Joomla!</p>\n<ul>\n<li><a href="index.php?Itemid=424">Home Page</a></li>\n<li><a href="index.php?Itemid=423">Typography</a></li>\n</ul>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(70, 99, 23, 29, 30, 5, 'sample-data-articles/joomla/extensions/templates/beez5', 'com_content', 'Beez5', 'beez5', '', '<p><img src="templates/beez5/template_thumbnail.png" border="0" alt="Beez5 Thumbnail" align="right" style="float: right;" /></p>\n<p> </p>\n<p>Beez 5 is an html5 implementation of a Joomla! template. It uses a number of html5 techniques to enhance the presentation of a site. It is used as the template for the Fruit Shop sample site.</p>\n<ul>\n<li><a href="index.php?Itemid=458">Home Page</a></li>\n<li><a href="index.php?Itemid=457">Typography</a></li>\n</ul>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(72, 108, 28, 44, 45, 4, 'sample-data-articles/park-site/photo-gallery/animals', 'com_content', 'Animals', 'animals', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, 'en-GB'),
(73, 109, 28, 46, 47, 4, 'sample-data-articles/park-site/photo-gallery/scenery', 'com_content', 'Scenery', 'scenery', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, 'en-GB'),
(75, 166, 22, 23, 24, 5, 'sample-data-articles/joomla/extensions/modules/navigation-modules', 'com_content', 'Navigation Modules', 'navigation-modules', '', '<p>Navigation modules help your visitors move through your site and find what they need.</p>\n<p>Menus provide your site with structure and help your visitors navigate your site.  Although they are all based on the same menu module, the variety of ways menus are used in the sample data show how flexible this module is.</p>\n<p>A menu can range from extremely simple (for example the top menu or the menu for the Australian Parks sample site) to extremely complex (for example the About Joomla! menu with its many levels). They can also be used for other types of presentation such as the site map linked from the "This Site" menu.</p>\n<p>Breadcrumbs provide users with information about where they are in a site.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(76, 167, 29, 53, 54, 3, 'sample-data-articles/fruit-shop-site/recipes', 'com_content', 'Recipes', 'recipes', '', '<p>Customers and suppliers can post their favorite recipes for fruit here.</p>\n<p>A good idea is to promote the use of metadata keywords to make finding other recipes for the same fruit easier.</p>\n<p><em>To see this in action, create a user assigned to the customer group and a user assigned to the suppliers group. These users will be able to create their own recipe pages and edit those pages. The will not be able to edit other users'' pages.</em><br /><br /></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(77, 169, 1, 133, 146, 1, 'template-details', 'com_content', 'Template Details', 'template-details', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-04-01 02:52:47', 0, '0000-00-00 00:00:00', 0, '*'),
(78, 170, 77, 134, 135, 2, 'template-details/design-a-features', 'com_content', 'Design & Features', 'design-a-features', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-04-01 02:53:14', 0, '0000-00-00 00:00:00', 0, '*'),
(79, 171, 77, 136, 137, 2, 'template-details/advanced-stuff', 'com_content', 'Advanced Stuff', 'advanced-stuff', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-04-01 02:53:27', 0, '0000-00-00 00:00:00', 0, '*'),
(80, 172, 77, 138, 139, 2, 'template-details/general', 'com_content', 'General', 'general', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-04-01 02:53:39', 0, '0000-00-00 00:00:00', 0, '*'),
(81, 173, 77, 140, 141, 2, 'template-details/layout-variations', 'com_content', 'Layout Variations', 'layout-variations', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-04-01 02:53:50', 0, '0000-00-00 00:00:00', 0, '*'),
(82, 174, 77, 142, 143, 2, 'template-details/testimonials', 'com_content', 'Testimonials', 'testimonials', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-04-01 02:53:58', 0, '0000-00-00 00:00:00', 0, '*'),
(83, 175, 77, 144, 145, 2, 'template-details/menu-styles', 'com_content', 'Menu Styles', 'menu-styles', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-04-01 02:54:08', 0, '0000-00-00 00:00:00', 0, '*'),
(84, 213, 1, 147, 148, 1, 'promo', 'com_banners', 'Promo', 'promo', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-04-01 08:36:56', 0, '0000-00-00 00:00:00', 0, '*'),
(85, 215, 1, 149, 150, 1, 'contacts', 'com_contact', 'Contacts', 'contacts', '', 'Contact Details for this Web site', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-04-13 07:17:36', 0, '0000-00-00 00:00:00', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `joom_contact_details`
--

CREATE TABLE IF NOT EXISTS `joom_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned DEFAULT NULL,
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `joom_contact_details`
--

INSERT INTO `joom_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`) VALUES
(1, 'Contact Name Here', 'name', 'Position', 'Street Address', 'Suburb', 'State', 'Country', 'Zip Code', 'Telephone', 'Fax', '<p>Information about or by the contact.</p>', 'images/powered_by.png', 'top', 'email@email.com', 1, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"1","linka_name":"Twitter","linka":"http:\\/\\/twitter.com\\/joomla","linkb_name":"YouTube","linkb":"http:\\/\\/www.youtube.com\\/user\\/joomla","linkc_name":"Facebook","linkc":"http:\\/\\/www.facebook.com\\/joomla","linkd_name":"FriendFeed","linkd":"http:\\/\\/friendfeed.com\\/joomla","linke_name":"Scribed","linke":"http:\\/\\/www.scribd.com\\/people\\/view\\/504592-joomla","contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 16, 1, '', '', 'last', 'first', 'middle', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-08 17:39:00', 42, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Webmaster', 'webmaster', '', '', '', '', '', '', '', '', '', '', '', 'webmaster@example.com', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"","redirect":""}', 0, 34, 1, '', '', '', '', '', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Owner', 'owner', '', '', '', '', '', '', '', '', '<p>I''m the owner of this store.</p>', '', '', '', 0, 1, 0, '0000-00-00 00:00:00', 2, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 36, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Buyer', 'buyer', '', '', '', '', '', '', '', '', '<p>I am in charge of buying fruit. If you sell good fruit, contact me.</p>', '', '', '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"0","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 36, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Bananas', 'bananas', 'Scientific Name: Musa', 'Image Credit: Enzik\nRights: Creative Commons Share Alike Unported 3.0\nSource: http://commons.wikimedia.org/wiki/File:Bananas_-_Morocco.jpg', '', 'Type: Herbaceous', 'Large Producers: India, China, Brasil', '', '', '', '<p>Bananas are a great source of potassium.</p>\n<p> </p>', 'images/sampledata/fruitshop/bananas_2.jpg', '', '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"show_with_link","show_contact_list":"","presentation_style":"plain","show_name":"","show_position":"1","show_email":"","show_street_address":"","show_suburb":"","show_state":"1","show_postcode":"","show_country":"1","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"1","linka_name":"Wikipedia: Banana English","linka":"http:\\/\\/en.wikipedia.org\\/wiki\\/Banana","linkb_name":"Wikipedia:  \\u0939\\u093f\\u0928\\u094d\\u0926\\u0940 \\u0915\\u0947\\u0932\\u093e","linkb":"http:\\/\\/hi.wikipedia.org\\/wiki\\/%E0%A4%95%E0%A5%87%E0%A4%B2%E0%A4%BE","linkc_name":"Wikipedia:Banana Portugu\\u00eas","linkc":"http:\\/\\/pt.wikipedia.org\\/wiki\\/Banana","linkd_name":"Wikipedia: \\u0411\\u0430\\u043d\\u0430\\u043d  \\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439","linkd":"http:\\/\\/ru.wikipedia.org\\/\\u0411\\u0430\\u043d\\u0430\\u043d","linke_name":"","linke":"","contact_layout":"beez5:encyclopedia"}', 0, 39, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Apples', 'apples', 'Scientific Name: Malus gruvestica', 'Image Credit: Fievet\nRights: Public Domain\nSource: http://commons.wikimedia.org/wiki/File:Pommes_vertes.JPG', '', 'Family: Rosaceae', 'Large: Producers: China, United States', '', '', '', '<p>Apples are a versatile fruit, used for eating, cooking, and preserving.</p>\n<p>There are more that 7500 different kinds of apples grown around the world.</p>', 'images/sampledata/fruitshop/apple.jpg', '', '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"plain","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"1","linka_name":"Wikipedia: Apples English","linka":"http:\\/\\/en.wikipedia.org\\/wiki\\/Apple","linkb_name":"Wikipedia: Manzana Espa\\u00f1ol ","linkb":"http:\\/\\/es.wikipedia.org\\/wiki\\/Manzana","linkc_name":"Wikipedia: \\u82f9\\u679c \\u4e2d\\u6587","linkc":"http:\\/\\/zh.wikipedia.org\\/zh\\/\\u82f9\\u679c","linkd_name":"Wikipedia: Tofaa Kiswahili","linkd":"http:\\/\\/sw.wikipedia.org\\/wiki\\/Tofaa","linke_name":"","linke":"","contact_layout":"beez5:encyclopedia"}', 0, 38, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Tamarind', 'tamarind', 'Scientific Name: Tamarindus indica', 'Image Credit: Franz Eugen Köhler, Köhler''s Medizinal-Pflanzen \nRights: Public Domain\nSource:http://commons.wikimedia.org/wiki/File:Koeh-134.jpg', '', 'Family: Fabaceae', 'Large Producers: India, United States', '', '', '', '<p>Tamarinds are a versatile fruit used around the world. In its young form it is used in hot sauces; ripened it is the basis for many refreshing drinks.</p>\n<p> </p>', 'images/sampledata/fruitshop/tamarind.jpg', '', '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"plain","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"1","linka_name":"Wikipedia: Tamarind English","linka":"http:\\/\\/en.wikipedia.org\\/wiki\\/Tamarind","linkb_name":"Wikipedia: \\u09a4\\u09c7\\u0981\\u09a4\\u09c1\\u09b2  \\u09ac\\u09be\\u0982\\u09b2\\u09be  ","linkb":"http:\\/\\/bn.wikipedia.org\\/wiki\\/\\u09a4\\u09c7\\u0981\\u09a4\\u09c1\\u09b2 ","linkc_name":"Wikipedia: Tamarinier Fran\\u00e7ais","linkc":"http:\\/\\/fr.wikipedia.org\\/wiki\\/Tamarinier","linkd_name":"Wikipedia:Tamaline lea faka-Tonga","linkd":"http:\\/\\/to.wikipedia.org\\/wiki\\/Tamaline","linke_name":"","linke":"","contact_layout":"beez5:encyclopedia"}', 0, 57, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Shop Address', 'shop-address', '', '', 'Our City', 'Our Province', 'Our Country', '', '555-555-5555', '', '<p>Here are directions for how to get to our shop.</p>', '', '', '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 35, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Name', 'name', 'Position', 'Street', 'Suburb', 'State', 'Country', 'Zip Code', 'Telephone', 'Fax', 'Miscellanous info', 'images/powered_by.png', '', 'email@email.com', 0, -2, 0, '0000-00-00 00:00:00', 3, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"0","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 85, 1, '', '', '', '', '', '*', '2011-04-13 07:20:25', 42, '', '0000-00-00 00:00:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `joom_content`
--

CREATE TABLE IF NOT EXISTS `joom_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=110 ;

--
-- Dumping data for table `joom_content`
--

INSERT INTO `joom_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 89, 'Administrator Components', 'administrator-components', '', '<p>All components also are used in the administrator area of your website. In addition to the ones listed here, there are components in the administrator that do not have direct front end displays, but do help shape your site. The most important ones for most users are</p>\n<ul>\n<li>Media Manager</li>\n<li>Extensions Manager</li>\n<li>Menu Manager</li>\n<li>Global Configuration</li>\n<li>Banners</li>\n<li>Redirect</li>\n</ul>\n<hr title="Media Manager" alt="Media Manager" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\n<p> </p>\n<h3>Media Manager</h3>\n<p>The media manager component lets you upload and insert images into content throughout your site. Optionally, you can enable the flash uploader which will allow you to to upload multiple images. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Content_Media_Manager">Help</a></p>\n<hr title="Extensions Manager" alt="Extensions Manager" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\n<h3>Extensions Manager</h3>\n<p>The extensions manager lets you install, update, uninstall and manage all of your extensions. The extensions manager has been extensively redesigned for Joomla! 1.6, although the core install and uninstall functionality remains the same as in Joomla 1.5. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Extension_Manager_Install">Help</a></p>\n<hr title="Menu Manager" alt="Menu Manager" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\n<h3>Menu Manager</h3>\n<p>The menu manager lets you create the menus you see displayed on your site. It also allows you to assign modules and template styles to specific menu links. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Menus_Menu_Manager">Help</a></p>\n<hr title="Global Configuration" alt="Global Configuration" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\n<h3>Global Configuration</h3>\n<p>The global configuration is where the site administrator configures things such as whether search engine friendly urls are enabled, the site meta data (descriptive text used by search engines an indexers) and other functions. For many beginning users simply leaving the settings on default is a good way to begin, although when your site is ready for the public you will want to change the meta data to match its content. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Site_Global_Configuration">Help</a></p>\n<hr title="Banners" alt="Banners" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\n<h3>Banners</h3>\n<p>The banners component provides a simple way to display a rotating image in a module and, if you wish to have advertising, a way to track the number of times an image is viewed and clicked. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Banners_Banners_Edit">Help</a></p>\n<h3>\n<hr title="Redirect" class="system-pagebreak" />\n</h3>\n<h3><br />Redirect</h3>\n<p>The redirect component is used to manage broken links that produce Page Not Found (404) errors. If enabled it will allow you to redirect broken links to specific pages. It can also be used to manage migration related URL changes. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Redirect_Manager">Help</a></p>', '', 1, 0, 0, 21, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 12:57:27', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 7, 0, 7, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 90, 'Archive Module', 'archive-module', '', '<p>This module shows a list of the calendar months containing archived articles. After you have changed the status of an article to archived, this list will be automatically generated. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Archive" title="Archive Module">Help</a></p>\n<p>{loadposition archiveload}</p>', '', 1, 0, 0, 64, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:21:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 5, 'modules, content', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 91, 'Article Categories Module', 'article-categories-module', '', '<p>This module displays a list of categories from one parent category. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Categories" title="Categories Module">Help</a></p>\n<p>{loadposition articlescategoriesload}</p>\n<p> </p>', '', 1, 0, 0, 64, '2011-01-01 00:00:01', 42, '', '2011-01-10 03:24:54', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 6, 'modules, content', '', 1, 4, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 92, 'Articles Category Module', 'articles-category-module', '', '<p>This module allows you to display the articles in a specific category. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Category">Help</a></p>\n<p>{loadposition articlescategoryload}</p>', '', 1, 0, 0, 64, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 04:57:37', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 4, 0, 7, '', 'articles,content', 1, 7, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 101, 'Authentication', 'authentication', '', '<p>The authentication plugins operate when users login to your site or administrator. The Joomla! authentication is in operation by default but you can enable Gmail or LDAP or install a plugin for a different system. An example is included that may be used to create a new authentication plugin.</p><p>Default on:</p><ul><li>Joomla</li></ul><p>Default off:</p><ul><li>Gmail</li><li>LDAP</li></ul>', '', 1, 0, 0, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 3, '', '', 1, 2, '', 0, '*', ''),
(6, 102, 'Australian Parks ', 'australian-parks', '', '<p><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/sampledata/parks/banner_cradle.jpg" border="0" alt="Cradle Park Banner" /></p>\n<p>Welcome!</p>\n<p>This is a basic site about the beautiful and fascinating parks of Australia.</p>\n<p>On this site you can read all about my travels to different parks, see photos, and find links to park websites.</p>\n<p><em>This sample site is an example of using the core of Joomla! to create a basic website, whether a "brochure site,"  a personal blog, or as a way to present information on a topic you are interested in.</em></p>\n<p><em> Read more about the site in the About Parks module.</em></p>\n<p> </p>', '', 1, 0, 0, 26, '2011-01-01 00:00:01', 42, 'Parks webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 1, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 103, 'Banner Module', 'banner-module', '', '<p>The banner module is used to display the banners that are managed by the banners component in the site administrator. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Banners">Help</a>.</p>\n<p>{loadposition bannersload}</p>', '', 1, 0, 0, 66, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:41:15', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 6, '', '', 1, 2, '', 0, '*', ''),
(8, 104, 'Beginners', 'beginners', '', '<p>If this is your first Joomla site or your first web site, you have come to the right place. Joomla will help you get your website up and running quickly and easily.</p>\n<p>Start off using your site by logging in using the administrator account you created when you installed Joomla!.</p>\n', '\n<p>Explore the articles and other resources right here on your site data to learn more about how Joomla works.(When you''re done reading, you can delete or archive all of this.) You will also probably want to visit the beginners'' areas of the <a href="http://docs.joomla.org/Beginners">Joomla documentation</a> and <a href="http://forum.joomla.org">support forums</a>.</p>\n<p>You''ll also want to sign up for the Joomla Security Mailing list and the Announcements mailing list. For inspiration visit the Joomla Site Showcase to see an amazing array of ways people use Joomla to tell their stories on the web.</p>\n<p>The basic Joomla! installation will let you get a great site up and running, but when you are ready for more features the power of Joomla! is in the creative ways that developers have extended it to do all kinds of things. Visit the Joomla! Extensions Directory to see thousands of extensions that can do almost anything you could want on a website. Can''t find what you need? You may want to find a Joomla professional on the Joomla! Resources Directory.</p>\n<p>Want to learn more? Consider attending a Joomla! Day or other event or joining a local Joomla! Users Group. Can''t find one near you? Start one yourself.</p>', 1, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-04-01 07:22:14', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 4, 0, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 105, 'Contacts', 'contact', '', '<p>The contact component provides a way to provide contact forms and information for your site or to create a complex directory that can be used for many different purposes. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Contacts_Contacts">Help</a></p>', '', 1, 0, 0, 21, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 04:15:37', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 2, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 106, 'Content', 'content', '', '<p>The content component (com_content) is what you use to write articles. It is extremely flexible and has the largest number of built in views. Articles can be created an edited from the front end, making content the easiest component to use to create your site content. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Content_Article_Manager">Help</a></p>', '', 1, 0, 0, 21, '2011-01-01 00:00:01', 42, '', '2011-01-10 04:28:12', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 1, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 107, 'Cradle Mountain', 'cradle-mountain', '', '<p><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/sampledata/parks/landscape/250px_cradle_mountain_seen_from_barn_bluff.jpg" border="0" alt="Cradle Mountain" style="vertical-align: middle;" /></p>', '<p><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/sampledata/parks/landscape/800px_cradle_mountain_seen_from_barn_bluff.jpg" border="0" alt="Cradle Mountain" style="vertical-align: middle;" /></p><p> </p><p class="caption">Source: http://commons.wikimedia.org/wiki/File:Rainforest,bluemountainsNSW.jpg</p><p class="caption">Author: Alan J.W.C.</p><p class="caption">License: GNU Free Documentation License v . 1.2 or later</p>', 1, 0, 0, 73, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 1, '', '', 1, 7, '', 0, '*', ''),
(12, 110, 'Custom HTML Module', 'custom-html-module', '', '<p>This Module allows you to create your own HTML Module using a WYSIWYG editor. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Custom_HTML" title="Custom HTML Module">Help</a></p>\n<p>{loadposition customload}</p>', '', 1, 0, 0, 66, '2011-01-01 00:00:01', 42, '', '2011-01-10 03:46:58', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 1, '', '', 1, 2, '', 0, '*', ''),
(13, 111, 'Directions', 'directions', '', '<p>Here''s how to find our shop.</p><p>By car</p><p>Drive along Main Street to the intersection with First Avenue.  Look for our sign.</p><p>By foot</p><p>From the center of town, walk north on Main Street until you see our sign.</p><p>By bus</p><p>Take the #73 Bus to the last stop. We are on the north east corner.</p>', '', 1, 0, 0, 29, '2011-01-01 00:00:01', 42, 'Fruit Shop Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 2, '', '', 1, 0, '', 0, '*', ''),
(14, 112, 'Editors', 'editors', '', '<p>Editors are used thoughout Joomla! where content is created. TinyMCE is the default choice in most locations although CodeMirror is used in the template manager. No Editor provides a text box for html content.</p><p>Default on:</p><ul><li>CodeMirror Help</li><li>TinyMCE Help</li><li>No Editor Help</li></ul><p>Default off:</p><ul><li>None</li></ul>', '', 1, 0, 0, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 5, '', '', 1, 0, '', 0, '*', ''),
(15, 113, 'Editors-xtd', 'editors-xtd', '', '<p>These plugins are behind the buttons found beneath your editor. They only run when an editor plugin runs.</p><p>Default on:</p><ul><li>Editor Button: Image</li><li>Editor Button: Readmore</li><li>Editor Button: Page Break</li><li>Editor Button: Article</li></ul><p>Default off:</p><ul><li>None</li></ul>', '', 1, 0, 0, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 6, '', '', 1, 0, '', 0, '*', ''),
(16, 114, 'Feed Display', 'feed-display', '', '<p>This module allows the displaying of a syndicated feed. <a href="http://docs.joomla.org/Help15:Screen.modulessite.edit.15#Feed_Display" title="Feed Display Module">Help</a></p><p>{loadposition feeddisplayload}</p>', '', 1, 0, 0, 66, '2011-01-01 00:00:01', 42, '', '2011-01-01 00:00:01', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 2, '', '', 1, 0, '', 0, '*', ''),
(17, 115, 'First Blog Post', 'first-blog-post', '', '<p><em>Lorem Ipsum is filler text that is commonly used by designers before the content for a new site is ready.</em></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus purus vitae diam posuere nec eleifend elit dictum. Aenean sit amet erat purus, id fermentum lorem. Integer elementum tristique lectus, non posuere quam pretium sed. Quisque scelerisque erat at urna condimentum euismod. Fusce vestibulum facilisis est, a accumsan massa aliquam in. In auctor interdum mauris a luctus. Morbi euismod tempor dapibus. Duis dapibus posuere quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In eu est nec erat sollicitudin hendrerit. Pellentesque sed turpis nunc, sit amet laoreet velit. Praesent vulputate semper nulla nec varius. Aenean aliquam, justo at blandit sodales, mauris leo viverra orci, sed sodales mauris orci vitae magna.</p>', '<p>Quisque a massa sed libero tristique suscipit. Morbi tristique molestie metus, vel vehicula nisl ultrices pretium. Sed sit amet est et sapien condimentum viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus viverra tortor porta orci convallis ac cursus erat sagittis. Vivamus aliquam, purus non luctus adipiscing, orci urna imperdiet eros, sed tincidunt neque sapien et leo. Cras fermentum, dolor id tempor vestibulum, neque lectus luctus mauris, nec congue tellus arcu nec augue. Nulla quis mi arcu, in bibendum quam. Sed placerat laoreet fermentum. In varius lobortis consequat. Proin vulputate felis ac arcu lacinia adipiscing. Morbi molestie, massa id sagittis luctus, sem sapien sollicitudin quam, in vehicula quam lectus quis augue. Integer orci lectus, bibendum in fringilla sit amet, rutrum eget enim. Curabitur at libero vitae lectus gravida luctus. Nam mattis, ligula sit amet vestibulum feugiat, eros sem sodales mi, nec dignissim ante elit quis nisi. Nulla nec magna ut leo convallis sagittis ac non erat. Etiam in augue nulla, sed tristique orci. Vestibulum quis eleifend sapien.</p><p>Nam ut orci vel felis feugiat posuere ut eu lorem. In risus tellus, sodales eu eleifend sed, imperdiet id nulla. Nunc at enim lacus. Etiam dignissim, arcu quis accumsan varius, dui dui faucibus erat, in molestie mauris diam ac lacus. Sed sit amet egestas nunc. Nam sollicitudin lacinia sapien, non gravida eros convallis vitae. Integer vehicula dui a elit placerat venenatis. Nullam tincidunt ligula aliquet dui interdum feugiat. Maecenas ultricies, lacus quis facilisis vehicula, lectus diam consequat nunc, euismod eleifend metus felis eu mauris. Aliquam dapibus, ipsum a dapibus commodo, dolor arcu accumsan neque, et tempor metus arcu ut massa. Curabitur non risus vitae nisl ornare pellentesque. Pellentesque nec ipsum eu dolor sodales aliquet. Vestibulum egestas scelerisque tincidunt. Integer adipiscing ultrices erat vel rhoncus.</p><p>Integer ac lectus ligula. Nam ornare nisl id magna tincidunt ultrices. Phasellus est nisi, condimentum at sollicitudin vel, consequat eu ipsum. In venenatis ipsum in ligula tincidunt bibendum id et leo. Vivamus quis purus massa. Ut enim magna, pharetra ut condimentum malesuada, auctor ut ligula. Proin mollis, urna a aliquam rutrum, risus erat cursus odio, a convallis enim lectus ut lorem. Nullam semper egestas quam non mattis. Vestibulum venenatis aliquet arcu, consectetur pretium erat pulvinar vel. Vestibulum in aliquet arcu. Ut dolor sem, pellentesque sit amet vestibulum nec, tristique in orci. Sed lacinia metus vel purus pretium sit amet commodo neque condimentum.</p><p>Aenean laoreet aliquet ullamcorper. Nunc tincidunt luctus tellus, eu lobortis sapien tincidunt sed. Donec luctus accumsan sem, at porttitor arcu vestibulum in. Sed suscipit malesuada arcu, ac porttitor orci volutpat in. Vestibulum consectetur vulputate eros ut porttitor. Aenean dictum urna quis erat rutrum nec malesuada tellus elementum. Quisque faucibus, turpis nec consectetur vulputate, mi enim semper mi, nec porttitor libero magna ut lacus. Quisque sodales, leo ut fermentum ullamcorper, tellus augue gravida magna, eget ultricies felis dolor vitae justo. Vestibulum blandit placerat neque, imperdiet ornare ipsum malesuada sed. Quisque bibendum quam porta diam molestie luctus. Sed metus lectus, ornare eu vulputate vel, eleifend facilisis augue. Maecenas eget urna velit, ac volutpat velit. Nam id bibendum ligula. Donec pellentesque, velit eu convallis sodales, nisi dui egestas nunc, et scelerisque lectus quam ut ipsum.</p>', 1, 0, 0, 27, '2011-01-01 00:00:01', 42, '', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 0, '', '', 1, 6, '', 0, '*', ''),
(18, 116, 'Second Blog Post', 'second-blog-post', '', '<p><em>Lorem Ipsum is text that is traditionally used by designers when working on a site before the content is ready.</em></p><p>Pellentesque bibendum metus ut dolor fermentum ut pulvinar tortor hendrerit. Nam vel odio vel diam tempus iaculis in non urna. Curabitur scelerisque, nunc id interdum vestibulum, felis elit luctus dui, ac dapibus tellus mauris tempus augue. Duis congue facilisis lobortis. Phasellus neque erat, tincidunt non lacinia sit amet, rutrum vitae nunc. Sed placerat lacinia fermentum. Integer justo sem, cursus id tristique eget, accumsan vel sapien. Curabitur ipsum neque, elementum vel vestibulum ut, lobortis a nisl. Fusce malesuada mollis purus consectetur auctor. Morbi tellus nunc, dapibus sit amet rutrum vel, laoreet quis mauris. Aenean nec sem nec purus bibendum venenatis. Mauris auctor commodo libero, in adipiscing dui adipiscing eu. Praesent eget orci ac nunc sodales varius.</p>', '<p>Nam eget venenatis lorem. Vestibulum a interdum sapien. Suspendisse potenti. Quisque auctor purus nec sapien venenatis vehicula malesuada velit vehicula. Fusce vel diam dolor, quis facilisis tortor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque libero nisi, pellentesque quis cursus sit amet, vehicula vitae nisl. Curabitur nec nunc ac sem tincidunt auctor. Phasellus in mattis magna. Donec consequat orci eget tortor ultricies rutrum. Mauris luctus vulputate molestie. Proin tincidunt vehicula euismod. Nam congue leo non erat cursus a adipiscing ipsum congue. Nulla iaculis purus sit amet turpis aliquam sit amet dapibus odio tincidunt. Ut augue diam, congue ut commodo pellentesque, fermentum mattis leo. Sed iaculis urna id enim dignissim sodales at a ipsum. Quisque varius lobortis mollis. Nunc purus magna, pellentesque pellentesque convallis sed, varius id ipsum. Etiam commodo mi mollis erat scelerisque fringilla. Nullam bibendum massa sagittis diam ornare rutrum.</p><p>Praesent convallis metus ut elit faucibus tempus in quis dui. Donec fringilla imperdiet nibh, sit amet fringilla velit congue et. Quisque commodo luctus ligula, vitae porttitor eros venenatis in. Praesent aliquet commodo orci id varius. Nulla nulla nibh, varius id volutpat nec, sagittis nec eros. Cras et dui justo. Curabitur malesuada facilisis neque, sed tempus massa tincidunt ut. Sed suscipit odio in lacus auctor vehicula non ut lacus. In hac habitasse platea dictumst. Sed nulla nisi, lacinia in viverra at, blandit vel tellus. Nulla metus erat, ultrices non pretium vel, varius nec sem. Morbi sollicitudin mattis lacus quis pharetra. Donec tincidunt mollis pretium. Proin non libero justo, vitae mattis diam. Integer vel elit in enim varius posuere sed vitae magna. Duis blandit tempor elementum. Vestibulum molestie dui nisi.</p><p>Curabitur volutpat interdum lorem sed tempus. Sed placerat quam non ligula lacinia sodales. Cras ultrices justo at nisi luctus hendrerit. Quisque sit amet placerat justo. In id sapien eu neque varius pharetra sed in sapien. Etiam nisl nunc, suscipit sed gravida sed, scelerisque ut nisl. Mauris quis massa nisl, aliquet posuere ligula. Etiam eget tortor mauris. Sed pellentesque vestibulum commodo. Mauris vitae est a libero dapibus dictum fringilla vitae magna.</p><p>Nulla facilisi. Praesent eget elit et mauris gravida lobortis ac nec risus. Ut vulputate ullamcorper est, volutpat feugiat lacus convallis non. Maecenas quis sem odio, et aliquam libero. Integer vel tortor eget orci tincidunt pulvinar interdum at erat. Integer ullamcorper consequat eros a pellentesque. Cras sagittis interdum enim in malesuada. Etiam non nunc neque. Fusce non ligula at tellus porta venenatis. Praesent tortor orci, fermentum sed tincidunt vel, varius vel dui. Duis pulvinar luctus odio, eget porta justo vulputate ac. Nulla varius feugiat lorem sed tempor. Phasellus pulvinar dapibus magna eget egestas. In malesuada lectus at justo pellentesque vitae rhoncus nulla ultrices. Proin ut sem sem. Donec eu suscipit ipsum. Cras eu arcu porttitor massa feugiat aliquet at quis nisl.</p>', 1, 0, 0, 27, '2011-01-01 00:00:01', 42, '', '2011-01-01 00:00:01', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 0, '', '', 1, 6, '', 0, '*', ''),
(19, 117, 'Footer Module', 'footer-module', '', '<p>This module shows the Joomla! copyright information. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Footer" title="Footer Module">Help</a></p>\n<p>{loadposition footerload}</p>', '', 1, 0, 0, 66, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:43:33', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 3, '', '', 1, 2, '', 0, '*', ''),
(20, 118, 'Fruit Shop', 'fruit-shop', '', '<h2>Welcome to the Fruit Shop</h2><p>We sell fruits from around the world. Please use our website to learn more about our business. We hope you will come to our shop and buy some fruit.</p><p ><em>This mini site will show you how you might want to set up a site for a business, in this case one selling fruit. It shows how to use access controls to manage your site content. If you were building a real site, you would might want to extend it with e-commerce, a catalog, mailing lists or other enhancements, many of which are available through the</em><a href="http://extensions.joomla.org"><em> Joomla! Extensions Directory</em></a>.</p><p><em>To understand this site you will probably want to make one user with groups set to customer and one with group set to grower. By logging in with different privileges  you can see how access control works.</em></p>', '', 1, 0, 0, 29, '2011-01-01 00:00:01', 42, 'Fruit Shop Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 1, '', '', 1, 0, '', 0, '*', ''),
(21, 119, 'Getting Help', 'getting-help', '', '<p><img class="image-left" src="administrator/templates/hathor/images/header/icon-48-help_header.png" border="0" /> There are lots of places you can get help with Joomla!. In many places in your site administrator you will see the help icon. Click on this for more information about the options and functions of items on your screen. Other places to get help are:</p>\n<ul>\n<li><a href="http://forum.joomla.org">Support Forums</a></li>\n<li><a href="http://docs.joomla.org">Documentation</a></li>\n<li><a href="http://resources.joomla.org">Professionals</a></li>\n<li><a href="http://shop.joomla.org/amazoncom-bookstores.html">Books</a></li>\n</ul>', '', 1, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 15:32:54', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 10, 0, 8, '', '', 1, 18, '', 0, '*', ''),
(22, 120, 'Getting Started', 'getting-started', '', '<p>It''s easy to get started creating your website. Knowing some of the basics will help.</p><h3>What is a Content Management System?</h3><p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.</p><p>In this site, the content is stored in a <em>database</em>. The look and feel are created by a <em>template</em>. The Joomla! software brings together the template and the content to create web pages.</p><h3>Site and Administrator</h3><p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see.  The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the "Site Administrator" link on the "This Site" menu or by adding /administrator to the end of you domain name.</p><p>Log in to the administrator using the username and password created during the installation of Joomla!.</p><h3>Logging in</h3><p>To login to the front end of your site use the login form or the login menu link on the "This Site" menu. Use the user name an password that were created as part of the installation process. Once logged in you will be able to create and edit articles.</p><p>In managing your site, you will be able to create content that only logged in users are able to see.</p><h3>Creating an article</h3><p>Once you are logged in, a new menu will be visible.  To create a new article, click on the "submit article" link on that menu.</p><p>The new article interface gives you a lot of options, but all you need to do is add a title an put something in the content area. To make it easy to find, set the state to published an put it in the Joomla! category.</p><div>You can edit an existing article by  clicking on the edit icon (this only displays to users who have the right to edit).</div><h3>Learn more</h3><p>There is much more to learn about how to use Joomla! to create the web site you envision. You can learn much more at the <a href="http://docs.joomla.org">Joomla! documentation site</a> and on the<a href="http://forum.joomla.org"> Joomla! forums</a>.</p>', '', 1, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 9, '', '', 1, 0, '', 0, '*', ''),
(23, 121, 'Happy Orange Orchard', 'happy-orange-orchard', '', '<p>At our orchard we grow the world''s best oranges as well as other citrus fruit such as lemons and grapefruit. Our family has been tending this orchard for generations.</p>', '', 1, 0, 0, 30, '2011-01-01 00:00:01', 42, 'Fruit Shop Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 2, '', '', 1, 0, '', 0, '*', ''),
(24, 122, 'Joomla!', 'joomla', '', '<p>Congratulations! You have a Joomla! site! Joomla! makes it easy to build a website just the way you want it and keep it simple to update and maintain.</p>\n<p>Joomla! is a flexible and powerful platform, whether you are building a small site for yourself or a huge site with hundreds of thousands of visitors. Joomla is open source, which means you can make it work just the way you want it to.</p>', '', 1, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-04-01 07:22:18', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 2, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(25, 123, 'Koala', 'koala', '', '<p><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/sampledata/parks/animals/180px_koala_ag1.jpg" border="0" alt="Koala  Thumbnail" width="180" height="123" style="vertical-align: middle; border: 0;" /></p>', '<p><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/sampledata/parks/animals/800px_koala_ag1.jpg" border="0" alt="Koala Climbing Tree" width="500" height="341" style="vertical-align: middle; border: 0;" /></p><p> </p><p> </p><p class="caption">Source: http://commons.wikimedia.org/wiki/File:Koala-ag1.jpg</p><p class="caption">Author: Arnaud Gaillard</p><p><span class="caption">License: Creative Commons Share Alike Attribution Generic 1.0</span></p>', 1, 0, 0, 72, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 2, '', '', 1, 6, '', 0, '*', ''),
(26, 124, 'Language Switcher', 'language-switcher', '', '<p>The language switcher module allows you to take advantage of the language tags that are available when content, modules and menu links are created.</p>\n<p>This module displays a list of available Content Languages for switching between them.</p>\n<p>When switching languages, it redirects to the Home page defined for the chosen language. Thereafter, the navigation will be the one defined for that language.</p>\n<p><strong>The language filter plugin must be enabled for this module to work properly.</strong></p>\n<p><strong></strong> <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Language_Switcher" title="Language Switcher Module">Help</a></p>\n<p>To view an example of the language switch moduler module, go to the site administrator and enable the language filter plugin and the language switcher module labellled "language switcher" and visit the fruit shop or park sample sites. Then follow<a href="http://docs.joomla.org/Language_Switcher_Tutorial_for_Joomla_1.6"> the instructions in this tutorial</a>.</p>', '', 1, 0, 0, 67, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:57:35', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 3, '', '', 1, 4, '', 0, '*', ''),
(27, 125, 'Latest Articles Module', 'latest-articles-module', '', '<p>This Module shows a list of the most recently published and current Articles. Some that are shown may have expired even though they are the most recent. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Latest_News" title="Latest Articles">Help</a></p>\n<p>{loadposition articleslatestload}</p>', '', 1, 0, 0, 64, '2011-01-01 00:00:01', 42, '', '2011-01-10 03:18:38', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 1, 'modules, content', '', 1, 4, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(28, 126, 'Login Module', 'login-module', '', '<p>This module displays a username and password login form. It also displays a link to retrieve a forgotten password. If user registration is enabled (in the Global Configuration settings), another link will be shown to enable self-registration for users. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Login" title="Login">Help</a></p>\n<p>{loadposition loginload}</p>', '', 1, 0, 0, 65, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:36:13', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 2, '', '', 1, 3, '', 0, '*', ''),
(29, 127, 'Menu Module', 'menu-module', '', '<p>This module displays a menu on the site (frontend).  Menus can be displayed in a wide variety of ways by using the menu options and css menu styles. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Menu">Help</a></p>\n<p>{loadposition menuload}</p>', '', 1, 0, 0, 75, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:07:59', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 1, '', '', 1, 4, '', 0, '*', ''),
(30, 128, 'Most Read Content', 'most-read-content', '', '<p>This Module shows a list of the currently published Articles which have the highest number of page views. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Most_Read" title="Most Read Content">Help</a></p>\n<p>{loadposition articlespopularload}</p>', '', 1, 0, 0, 64, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:13:53', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 3, 0, 2, 'modules, content', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(31, 129, 'News Flash', 'news-flash', '', '<p>Displays a set number of articles from a category based on date or random selection. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Newsflash" title="News Flash Module">Help</a></p>\n<p>{loadposition newsflashload}</p>', '', 1, 0, 0, 64, '2011-01-01 00:00:01', 42, '', '2011-01-10 03:16:50', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 3, 'modules, content', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(32, 130, 'Parameters', 'parameters', '', '<p>As you make your Joomla! site using the extension you will control the details of the display using <em>parameter</em><strong>s</strong>. Parameters control everything from whether the author''s name is displayed to who can view what to the number of items shown on a list.</p><p>Default parameters for each components are changed using the Options button on the component toolbar.</p><p>Parameters can also be set on an individual item, such as an article or contact and in menu links.</p><p>If you are happy with how your site looks, it is fine to leave all of the parameters set to the defaults that were created when your site was installed. As you become more experienced with Joomla! you will use parameters more.</p><p> </p>', '', 1, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 10, '', '', 1, 1, '', 0, '*', '');
INSERT INTO `joom_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(33, 131, 'Phyllopteryx', 'phyllopteryx', '', '<p><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/sampledata/parks/animals/200px_phyllopteryx_taeniolatus1.jpg" border="0" style="vertical-align: middle;" /></p><p> </p>', '<p><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/sampledata/parks/animals/800px_phyllopteryx_taeniolatus1.jpg" border="0" style="vertical-align: middle;" /></p><p> </p><p>Source: http://en.wikipedia.org/wiki/File:Phyllopteryx_taeniolatus1.jpg</p><p>Author: Richard Ling</p><p>License: GNU Free Documentation License v 1.2 or later</p>', 1, 0, 0, 72, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 3, '', '', 1, 3, '', 0, '*', ''),
(34, 132, 'Pinnacles', 'pinnacles', '', '<p><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/sampledata/parks/landscape/120px_pinnacles_western_australia.jpg" border="0" alt="Kings Canyon" width="120" height="90" style="vertical-align: middle; border: 0;" /></p>', '<p><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/sampledata/parks/landscape/800px_pinnacles_western_australia.jpg" border="0" alt="King''s Canyon" width="500" height="374" style="vertical-align: middle; border: 0;" /></p><p> </p><p class="caption">Source: http://commons.wikimedia.org/wiki/File:Pinnacles_Western_Australia.jpg</p><p class="caption">Author: <a class="new" href="http://commons.wikimedia.org/w/index.php?title=User:Markdoe&action=edit&redlink=1" title="User:Markdoe (page does not exist)"></a>Martin Gloss</p><p class="caption">License: GNU Free Documentation license v 1.2 or later.</p>', 1, 0, 0, 73, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 4, '', '', 1, 4, '', 0, '*', ''),
(35, 133, 'Professionals', 'professionals', '', '<p>Joomla! 1.6 continues development of the Joomla Framework and CMS as a powerful and flexible way to bring your vision of the web to reality. With the administrator now fully MVC, the ability to control its look and the management of extensions is now complete.</p>\n', '\n<p>Working with multiple template styles and overrides for the same views, creating the design you want is easier than it has ever been. Limiting support to PHP 5.2.4 and above and ending legacy support for Joomla 1.0 extensions makes Joomla! lighter and faster than ever. Languages files can now be overridden without having your changes lost during an upgrade.  With the proper xml your users update extensions with a single click.</p>\n<p>Access control lists are now incorporated using a new system developed for Joomla!. The ACL system is designed with developers in mind, so it is easy to incorporate into your extensions. The new nested sets libraries allow you to incorporate infinitely deep categories but also to use nested sets in a variety of other ways.</p>\n<p>A new forms library makes creating all kinds of user interaction simple. MooTools 1.3 provides a highly flexible javascript framework that is a major advance over MooTools 1.0.</p>\n<p>New events throughout the core make integration of your plugins where you want them a snap.</p>\n<p>Learn about:</p>\n<ul>\n<li><a href="http://docs.joomla.org/What''s_new_in_Joomla_1.6">Changes since 1.5</a></li>\n<li><a href="http://docs.joomla.org/ACL_Tutorial_for_Joomla_1.6">Working with ACL</a></li>\n<li><a href="http://docs.joomla.org/API16:JCategories">Working with nested categories</a></li>\n<li><a href="http://docs.joomla.org/API16:JForm">Forms library</a></li>\n<li><a href="http://docs.joomla.org/Working_with_Mootools_1.3">Working with Mootools 1.3</a></li>\n<li><a href="http://docs.joomla.org/Layout_Overrides_in_Joomla_1.6">Using new features of the override system</a></li>\n<li><a href="http://docs.joomla.org/API16:Framework">Joomla! 1.6 AP</a>I</li>\n<li><a href="http://docs.joomla.org/API16:JDatabaseQuery">Using JDatabaseQuery</a></li>\n<li><a href="http://docs.joomla.org/What''s_new_in_Joomla_1.6#Events">New and updated events</a></li>\n<li><a href="http://docs.joomla.org/Xml-rpc_changes_in_Joomla!_1.6">Xmlrpc</a></li>\n<li><a href="http://docs.joomla.org/What''s_new_in_Joomla_1.6#Extension_management">Installing and updating extensions</a></li>\n<li><a href="http://docs.joomla.org/Setting_up_your_workstation_for_Joomla!_development">Setting up your development environment</a></li>\n</ul>', 1, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-04-01 07:22:26', 42, 0, '0000-00-00 00:00:00', '2011-01-09 16:41:13', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 13, 0, 5, '', '', 1, 9, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(36, 134, 'Random Image Module', 'random-image-module', '', '<p>This Module displays a random image from your chosen image directory. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Random_Image" title="Random Image Module">Help</a></p>\n<p>{loadposition randomimageload}</p>', '', 1, 0, 0, 66, '2011-01-01 00:00:01', 42, '', '2011-01-10 03:39:30', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 4, '', '', 1, 2, '', 0, '*', ''),
(37, 135, 'Related Items Module', 'related-items-module', '', '<p>This Module displays other Articles that are related to the one currently being viewed. These relations are established by the Meta Keywords.  All the keywords of the current Article are searched against all the keywords of all other published articles. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Related" title="Related Items Module">Help</a></p>\n<p>{loadposition relateditemsload}</p>', '', 1, 0, 0, 64, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:23:25', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 4, 'modules, content', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(38, 136, 'Sample Sites', 'sample-sites', '', '<p>Your installation includes sample data, designed to show you some of the options you have for building your website. In addition to information about Joomla! there are two sample "sites within a site" designed to help you get started with builidng your own site.</p><p>The first site is a simple site about <a href="index.php?Itemid=243">Australian Parks</a>. It shows you you an quickly and easily build a personal site with just the building blocks that are part of Joomla!. It includes a personal blog, weblinks, and a very simple image gallery.</p><p>The second site is slightly more complex and represents what you might do if you are building a site for a small business, in this case a <a href="index.php/welcome.html"></a><a href="index.php?Itemid=429">Fruit Shop</a>.</p><p>In building either style site, or something completely different, you will probably want to add <a href="http://extensions.joomla.org">extensions</a> and either create or purchase your own template. Many Joomla! users start off by modifying the <a href="http://docs.joomla.org/How_do_you_modify_a_template%3F">templates</a> that come with the core distribution so that they include special images and other design elements that relate to their site''s focus.</p>', '', 1, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 11, '', '', 1, 0, '', 0, '*', ''),
(39, 137, 'Search', 'search-component', '', '<p>The search component proviedes basic search functionality for the information contained in your core components. Many third part extensions also can be searched by the search component. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Search">Help</a></p>', '', 1, 0, 0, 21, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 04:19:31', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 3, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(40, 138, 'Search Module', 'search-module', '', '<p>This module will display a search box. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Search" title="Search">Help</a></p>\n<p>{loadposition searchload}</p>', '', 1, 0, 0, 67, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:55:54', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 4, '', '', 1, 2, '', 0, '*', ''),
(41, 139, 'Search ', 'search-plugin', '', '<p>The search component uses plugins to control which parts of your Joomla! site are searched. You may choose to turn off some areas to improve performance or for other reasons. Many third party Joomla! extensions have search plugins that extend where search takes place.</p><p>Default On:</p><ul><li>Content Help</li><li>Contacts Help</li><li>Weblinks Help</li><li>News Feeds Help</li><li>Categories Help</li></ul>', '', 1, 0, 0, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 1, '', '', 1, 9, '', 0, '*', ''),
(42, 140, 'Site Map', 'site-map', '', '<p>{loadposition sitemapload}</p><p><em>By putting all of your content into nested categories you can give users and search engines access to everything using a menu.</em></p>', '', 1, 0, 0, 14, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 1, '', '', 1, 0, '', 0, '*', ''),
(43, 141, 'Spotted Quoll', 'spotted-quoll', '', '<p><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/sampledata/parks/animals/220px_spottedquoll_2005_seanmcclean.jpg" border="0" alt="Spotted Quoll" style="vertical-align: middle; border: 0;" /></p>', '<p><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/sampledata/parks/animals/789px_spottedquoll_2005_seanmcclean.jpg" border="0" alt="Spotted Quoll" style="vertical-align: middle;" /></p><p> </p><p>Source: http://en.wikipedia.org/wiki/File:SpottedQuoll_2005_SeanMcClean.jpg</p><p>Author: Sean McClean</p><p>License: GNU Free Documentation License v 1.2 or later</p>', 1, 0, 0, 72, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 4, '', '', 1, 3, '', 0, '*', ''),
(44, 142, 'Statistics Module', 'statistics', '', '<p>The Statistics Module shows information about your server installation together with statistics on the Web site users, number of Articles in your database and the number of Web links you provide.</p><p>{loadposition statisticsload}</p>', '', 1, 0, 0, 67, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 5, '', '', 1, 0, '', 0, '*', ''),
(45, 143, 'Syndicate Module', 'syndicate-module', '', '<p>The syndicate module allows you to display a link that allows users to take a feed from your site. It will only display on pages for which feeds are possible. That means it will not display on single article, contact or weblinks pages, such as this one. <a href="http://docs.joomla.org/Help15:Screen.modulessite.edit.15#Syndicate" title="Synicate Module">Help</a></p><p>{loadposition syndicateload}</p>', '', 1, 0, 0, 67, '2011-01-01 00:00:01', 42, '', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 6, '', '', 1, 0, '', 0, '*', ''),
(46, 144, 'System', 'system', '', '<p>System plugins operate every time a page on your site loads. They control such things as your URLS, whether users can check a "remember me" box on the login module, and whether caching is enabled.  New in 1.6 is the redirect plugin that with the redirect component assist you in managing changes in URLs.</p><p>Default on:</p><ul><li>Remember me Help</li><li>SEF Help</li><li>Debug Help</li></ul><p>Default off:</p><ul><li>Cache Help</li><li>Log Help</li><li>Redirect Help</li></ul>', '', 1, 0, 0, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 2, '', '', 1, 5, '', 0, '*', ''),
(47, 145, 'The Joomla! Community', 'the-joomla-community', '', '<p>Joomla! means All Together, and it is a community of people all working and having fun together that makes Joomla! possible. Thousands of people each year participate in the Joomla! community, and we hope you will be one of them.</p><p>People with all kinds of skills, of all skill levels and from around the world are welcome to join in. Participate in the <a href="http://joomla.org">Joomla.org</a> family of websites (the<a href="http://forum.joomla.org"> forum </a>is a great place to start). Come to a <a href="http://community.joomla.org/events.html">Joomla! event</a>. Join or start a <a href="http://community.joomla.org/user-groups.html">Joomla! Users Group</a>. Whether you are a developer, site administrator, designer, end user or fan, there are ways for you to participate and contribute.</p>', '', 1, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 4, '', '', 1, 11, '', 0, '*', ''),
(48, 146, 'The Joomla! Project', 'the-joomla-project', '', '<p>The Joomla! Project consists of all of the people who make and support the Joomla! Web Platform and Content Management System.</p><p>Our mission is to provide a flexible platform for digital publishing and collaboration.</p><p>The core values are:</p><ul><li>Freedom</li><li>Equality</li><li>Trust</li><li>Community</li><li>Collaboration</li><li>Usability</li></ul><p>In our vision, we see:</p><ul><li>People publishing and collaborating in their communities and around the world</li><li>Software that is free, secure, and high-quality</li><li>A community that is enjoyable and rewarding to participate in</li><li>People around the world using their preferred languages</li><li>A project that acts autonomously</li><li>A project that is socially responsible</li><li>A project dedicated to maintaining the trust of its users</li></ul><p>There are millions of users around the world and thousands of people who contribute to the Joomla! Project. They work in three main groups: the Production Working Group, responsible for everything that goes into software and documentation; the Community Working Group, responsible for creating a nurturing the community; and Open Source Matters, the non profit organization responsible for managing legal, financial and organizational issues.</p><p>Joomla! is a free and open source project, which uses the GNU General Public License version 2 or later.</p>', '', 1, 0, 0, 19, '2011-01-01 00:00:01', 42, '', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 1, '', '', 1, 10, '', 0, '*', ''),
(49, 147, 'Typography', 'typography', '', '<h1>H1 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h1><h2>H2 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h2><h3>H3 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h3><h4>H4 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h4><h5>H5 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h5><h6>H6 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h6><p>P The quick brown fox ran over the lazy dog. THE QUICK BROWN FOX RAN OVER THE LAZY DOG.</p><ul><li>Item</li><li>Item</li><li>Item<br /> <ul><li>Item</li><li>Item</li><li>Item<br /> <ul><li>Item</li><li>Item</li><li>Item</li></ul></li></ul></li></ul><ol><li>tem</li><li>Item</li><li>Item<br /> <ol><li>Item</li><li>Item</li><li>Item<br /><ol><li>Item</li><li>Item</li><li>Item</li></ol></li></ol> </li></ol>', '', 1, 0, 0, 23, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 1, '', '', 1, 0, '', 0, '*', ''),
(50, 148, 'Upgraders', 'upgraders', '', '<p>If you are an experienced Joomla! 1.5 user, 1.6 will seem very familiar. There are new templates and improved user interfaces, but most functionality is the same. The biggest changes are improved access control (ACL) and nested categories.</p>\n', '\n<p>The new user manager which will let you manage who has access to what in your site. You can leave access groups exactly the way you had them in Joomla 1.5 or make them as complicated as you want. You can learn more about<a href="http://docs.joomla.org/ACL_Tutorial_for_Joomla_1.6"> how access control works</a> in on the <a href="http://docs.joomla.org">Joomla! Documentation site</a></p>\n<p>In Joomla 1.5 and 1.0 content was organized into sections and categories. In 1.6 sections are gone, and you can create categories within categories, going as deep as you want. The sample data provides many examples of the use of nested categories.</p>\n<p>All layouts have been redesigned to improve accessibility and flexibility. If you would like to keep the 1.5 layouts, you can find them in the html folder of the MilkyWay template. Simply copy the layouts you want to the html folder of your template.</p>\n<p>Updating your site and extensions when needed is easier than ever thanks to installer improvements.</p>\n<p> </p>', 1, 0, 0, 19, '2011-01-01 00:00:01', 42, '', '2011-04-01 07:22:36', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, 5, '', '', 1, 4, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(51, 149, 'User', 'user-plugins', '', '<p>Default on:</p><ul><li>Joomla Help</li></ul><p>Default off:</p><p>Two new plugins are available in 1.6 but are disabled by default.</p><ul><li>Contact Creator Help<br />Creates a new linked contact record for each new user created. </li><li>Profile Help<br />This example profile plugin allows you to insert additional fields into user registration and profile display. This is intended as an example of the types of extensions to the profile you might want to create. </li></ul>', '', 1, 0, 0, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 4, '', '', 1, 0, '', 0, '*', ''),
(52, 150, 'Users', 'users-component', '', '<p>The users extension lets your site visitors register, login and logout, change their passwords and other information, and recover lost passwords. In the administrator it allows you to create, block and manage users and create user groups and access levels. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Users_User_Manager">Help</a></p>\n<p>Please note that some of the user views will not display if you are not logged in to the site.</p>', '', 1, 0, 0, 21, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 04:52:55', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 5, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(53, 151, 'Using Joomla!', 'using-joomla', '', '<p>With Joomla! You can create anything from a simple personal website to a complex ecommerce or social site with millions of visitors.</p><p>This section of the sample data provides you with a brief introduction to Joomla! concepts and reference material to help you understand how Joomla! works.</p><p><em>When you no longer need the sample data, you can can simply unpublish the sample data category found within each extension in the site administrator or you may completely delete each item and all of the categories. </em></p>', '', 1, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 7, '', '', 1, 9, '', 0, '*', ''),
(54, 152, 'Weblinks', 'weblinks', '', '<p>Weblinks (com_weblinks) is a component that provides a structured way to organize external links and present them in a visually attractive, consistent and informative way. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Weblinks_Links">Help</a></p>', '', 1, 0, 0, 21, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 04:20:10', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 6, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(55, 153, 'Weblinks Module', 'weblinks-module', '', '<p>This module displays the list of weblinks in a category. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Weblinks" title="Weblinks Module">Help</a></p>\n<p>{loadposition weblinksload}</p>', '', 1, 0, 0, 66, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:45:52', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 5, '', '', 1, 3, '', 0, '*', ''),
(56, 154, 'Who''s Online', 'whos-online', '', '<p>The Who''s Online Module displays the number of Anonymous Users (e.g. Guests) and Registered Users (ones logged in) that are currently accessing the Web site. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Who_Online" title="Who''s Online">Help</a></p>\n<p>{loadposition whosonlineload}</p>', '', 1, 0, 0, 65, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:34:18', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 1, '', '', 1, 6, '', 0, '*', ''),
(57, 155, 'Wobbegone', 'wobbegone', '', '<p><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/sampledata/parks/animals/180px_wobbegong.jpg" border="0" alt="Wobbegone" style="vertical-align: middle; border: 0;" /></p>', '<p><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/sampledata/parks/animals/800px_wobbegong.jpg" border="0" style="vertical-align: middle; border: 0;" /></p><p>Source: http://en.wikipedia.org/wiki/File:Wobbegong.jpg</p><p>Author: Richard Ling</p><p>Rights: GNU Free Documentation License v 1.2 or later</p>', 1, 0, 0, 72, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 1, '', '', 1, 0, '', 0, '*', ''),
(58, 156, 'Wonderful Watermelon', 'wonderful-watermelon', '', '<p>Watermelon is a wonderful and healthy treat. We grow the world''s sweetest watermelon. We have the largest watermelon patch in our country.</p>', '', 1, 0, 0, 30, '2011-01-01 00:00:01', 42, 'Fruit Shop Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 1, '', '', 1, 5, '', 0, '*', ''),
(59, 157, 'Wrapper Module', 'wrapper-module', '', '<p>This module shows an iFrame window to specified location. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Wrapper" title="Wrapper Module">Help</a></p>\n<p>{loadposition wrapperload}</p>', '', 1, 0, 0, 67, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:44:50', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 1, '', '', 1, 3, '', 0, '*', ''),
(60, 158, 'News Feeds', 'news-feeds', '', '<p>News Feeds (com_newsfeeds) provides a way to organize and present news feeds. News feeds are a way that you present information from another site on your site. For example, the joomla.org website has numerous feeds that you an incorporate on your site. You an use menus to present a single feed, a list of feeds in a category, or or a list of all feed categories. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Newsfeeds_Feeds">Help</a></p>', '', 1, 0, 0, 21, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 04:17:08', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 4, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(61, 159, 'Breadcrumbs Module', 'breadcrumbs-module', '', '<p>Breadcrumbs provide a pathway for users to navigate through the site. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Breadcrumbs" title="Breacrumbs Module">Help</a></p>\n<p>{loadposition breadcrumbsload}</p>', '', 1, 0, 0, 75, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:10:46', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, 2, '', '', 1, 6, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(62, 160, 'Content', 'content-plugins', '', '<p>Content plugins run when specific kinds of pages are loaded. They do things ranging from protecting email addresses from harvesters to creating page breaks.</p><p>Default on:</p><ul><li>Email Cloaking Help</li><li>Load Module Help</li><li>Page Break Help</li><li>Page Navigation Help</li><li>Rating Help</li></ul><p>Default off:</p><ul><li>Code Highlighting (Geshi) Help</li></ul>', '', 1, 0, 0, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 7, '', '', 1, 1, '', 0, '*', ''),
(64, 162, 'Blue Mountain Rain Forest', 'blue-mountain-rain-forest', '', '<p><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/sampledata/parks/landscape/120px_rainforest_bluemountainsnsw.jpg" border="0" alt="Rain Forest Blue Mountrains" /></p>', '<p><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/sampledata/parks/landscape/727px_rainforest_bluemountainsnsw.jpg" border="0" alt="Rain Forest Blue Mountrains" style="vertical-align: middle;" /></p><p> </p><p class="caption">Source: http://commons.wikimedia.org/wiki/File:Rainforest,bluemountainsNSW.jpg</p><p class="caption">Author: Adam J.W.C.</p><p class="caption">License: GNU Free Documentation License</p>', 1, 0, 0, 73, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 2, '', '', 1, 0, '', 0, '*', ''),
(65, 163, 'Ormiston Pound', 'ormiston-pound', '', '<p><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/sampledata/parks/landscape/180px_ormiston_pound.jpg" border="0" alt="Ormiston Pound" style="border: 0;" /></p>', '<p><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/sampledata/parks/landscape/800px_ormiston_pound.jpg" border="0" alt="Ormiston Pound" height="375" style="vertical-align: middle; border: 0;" /></p><p> </p><p class="caption">Source: http://commons.wikimedia.org/wiki/File:Ormiston_Pound.JPG</p><p class="caption">Author:</p><p class="caption">License: GNU Free Public Documentation License</p>', 1, 0, 0, 73, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 3, '', '', 1, 2, '', 0, '*', ''),
(66, 165, 'Latest Users Module', 'latest-users-module', '', '<p>This module displays the latest registered users. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Latest_Users">Help</a></p>\n<p>{loadposition userslatestload}</p>', '', 1, 0, 0, 65, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 03:31:12', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"1","link_titles":"","show_intro":"","show_category":"1","link_category":"1","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 3, '', '', 1, 4, '', 0, '*', ''),
(67, 168, 'What''s New in 1.5?', 'whats-new-in-15', '', '<p>As with previous releases, Joomla! provides a unified and easy-to-use framework for delivering content for Web sites of all kinds. To support the changing nature of the Internet and emerging Web technologies, Joomla! required substantial restructuring of its core functionality and we also used this effort to simplify many challenges within the current user interface. Joomla! 1.5 has many new features.</p>\n<p style="margin-bottom: 0in;">In Joomla! 1.5, you''''ll notice:</p>\n<ul>\n<li>Substantially improved usability, manageability, and scalability far beyond the original Mambo foundations</li>\n<li>Expanded accessibility to support internationalisation, double-byte characters and right-to-left support for Arabic, Farsi, and Hebrew languages among others</li>\n<li>Extended integration of external applications through Web services</li>\n<li>Enhanced content delivery, template and presentation capabilities to support accessibility standards and content delivery to any destination</li>\n<li>A more sustainable and flexible framework for Component and Extension developers</li>\n<li>Backward compatibility with previous releases of Components, Templates, Modules, and other Extensions</li>\n</ul>', '', 2, 0, 0, 9, '2011-01-01 00:00:01', 42, 'Joomla! 1.5', '2011-01-01 00:00:01', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(68, 176, 'Color Variations in the PRO Edition', 'color-variations', '', '<p>JSN Yoyo provides<strong> 6 major colors variation</strong> for your taste. Each color variation covers not only the main background, but also color of drop-down menu, links, table''s header and some others.</p>\n<h3>Color variations</h3>\n<div class="content-center">\n<p><strong>Click on any screenshot to LIVE demo of that color variation. (<a href="index.php?option=com_content&amp;view=article&amp;id=68&amp;Itemid=467&amp;jsn_setcolor=blue">reset to default</a>)</strong></p>\n{imageshow sl=4 sc=2 with=600 h=350 /}\n<p>Interactive images presentation by <a href="http://www.joomlashine.com/joomla-extensions/jsn-imageshow.html" target="_blank">JSN ImageShow extension</a></p>\n</div>\n<hr class="line-dots" />\n<h3>Color configuration</h3>\n<p>Each template color can be configured by 3 different ways:</p>\n<div class="grid-layout">\n<div>\n<h4>By template parameter</h4>\n<p><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/design-features/color-variations/color-config-tp.png" border="0" width="215" height="125" /></p>\n<p>Template color can be set by template parameter <strong>Template Color</strong> in administration panel.</p>\n</div>\n<div>\n<h4>By "Page Class Suffix"</h4>\n<p><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/design-features/color-variations/color-config-pcs.png" border="0" width="215" height="125" /></p>\n<p>Template color can be defined in parameter <strong>Page Class Suffix</strong> of menu items as <strong>custom-color-xxx</strong><strong>.</strong></p>\n</div>\n<div>\n<h4>By Site tools panel</h4>\n<p><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/design-features/color-variations/color-config-st.png" border="0" width="215" height="125" /></p>\n<p>Template color can be selected by website visitor from <strong>Color Selector</strong> in <strong>Site tools</strong>.</p>\n</div>\n</div>', '', 1, 0, 0, 78, '2011-04-01 02:55:34', 42, '', '2012-07-21 02:23:45', 43, 0, '0000-00-00 00:00:00', '2011-04-01 02:55:34', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 12, 0, 6, '', '', 1, 140, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(69, 177, 'Font Styles', 'font-styles', '', '<h3>Font Face</h3>\n<p>JSN Yoyo provides <strong>3 font face options </strong>for major website types. Each font face option is actually a combination of 2 font types: one for content text, another for heading text and main navigation text.</p>\n<h4>Special Font (powered by Google Font Directory)</h4>\n<p>To make your website content look even better, we included feature to load special fonts directly from Google Font Directory. We have carefully selected the most appropriate special font for each text styles. Since this service is provided by Google, it''s very reliable and fast.</p>\n<div class="content-center">\n<p><strong>Click on any screenshot to see LIVE demo of that font face. (<a href="index.php?option=com_content&amp;view=article&amp;id=69&amp;Itemid=471&jsn_settextstyle=business&jsn_setspecialfont=no" class="link-action">reset to default</a>)</strong></p>\n{imageshow sl=5 sc=2 with=600 h=220 /}\n<p>Interactive images presentation by <a href="http://www.joomlashine.com/joomla-extensions/jsn-imageshow.html" target="_blank">JSN ImageShow extension</a></p>\n</div>\n<hr class="line-dots" />\n<h3>Font Size</h3>\n<p>JSN Yoyo provides <strong>3 text size options</strong> for major website audience.</p>\n<div class="content-center">\n<p><strong>Click on any screenshot to see LIVE demo of  that font size. (<a href="index.php?option=com_content&amp;view=article&amp;id=69&amp;Itemid=471&jsn_settextsize=medium" class="link-action">reset to default</a>)</strong></p>\n{imageshow sl=6 sc=2 with=600 h=220 /}\n<p>Interactive images presentation by <a href="http://www.joomlashine.com/joomla-extensions/jsn-imageshow.html" target="_blank">JSN ImageShow extension</a></p>\n</div>', '', 0, 0, 0, 78, '2011-04-01 02:55:57', 42, '', '2011-04-15 10:29:44', 42, 0, '0000-00-00 00:00:00', '2011-04-01 02:55:57', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 8, 0, 5, '', '', 1, 98, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `joom_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(70, 178, 'JSN Yoyo Design & Features', 'jsn-yoyo-design-a-features', '', '<p>JSN Yoyo has incredibly beautiful clean design with ultra flexible layout built-up from 36 module positions. The combination of 6 colors variation, 5 menu styles and 6 module styles results in a really remarkable website. In addition, super rich typography makes your content look stunning and clear for all users.</p>\n\n<div class="grid-layout">\n<div>\n<h3>Layout</h3>\n<p><strong>40 module positions </strong>allowing you to have multiple layout configurations. All module positions are collapsible and can arrange modules in horizontal or vertical layout.</p>\n<p><a href="index.php?option=com_content&view=article&id=71&Itemid=466" class="link-button button-light"><span class="link-icon">More about layout</span></a></p>\n</div>\n<div>\n<h3>Color Variations</h3>\n<p><strong>6 major color variations</strong> for your taste. Each color variation covers not only the main background, but also color of drop-down menu, links, table''s header and more.</p>\n<p><a href="index.php?option=com_content&view=article&id=68&Itemid=467" class="link-button button-light"><span class="link-icon">More about colors</span></a></p>\n</div>\n</div>\n\n<div class="grid-layout">\n<div>\n<h3>Menu Styles</h3>\n<p><strong>5 menu styles </strong>to display your website navigation on muliple position. The built-in menu module is  utilized, so you don''t need to install any external menu modules.</p>\n<p><a href="index.php?option=com_content&view=article&id=72&Itemid=468" class="link-button button-light"><span class="link-icon">More about menu styles</span></a></p>\n</div>\n<div>\n<h3>Typography</h3>\n<p><strong>Super rich typography</strong> ready for the most comprehensive content presentation. Headings, text, links, tables, images, everything was designed with high level of refinement.</p>\n<p><a href="index.php?option=com_content&view=article&id=74&Itemid=469" class="link-button button-light"><span class="link-icon">More about typography</span></a></p>\n</div>\n</div>\n\n<div class="grid-layout">\n<div>\n<h3>Module Styles</h3>\n<p>JSN Yoyo provides<strong>6 background designs</strong>, which can be combined with <strong>20 predefined icons</strong> for outstading module styling. Make your modules look good easily!</p>\n<p><a href="index.php?option=com_content&view=article&id=73&Itemid=470" class="link-button button-light"><span class="link-icon">More about modules styles</span></a></p>\n</div>\n<div>\n<h3>Font Styles</h3>\n<p><strong>3 font face</strong> options for major website types and <strong>3 font size</strong> options for major audience. Each font face option is a combination of 2 font types, which looks stunning..</p>\n<p><a href="index.php?option=com_content&view=article&id=69&Itemid=471" class="link-button button-light"><span class="link-icon">More about font styles</span></a></p>\n</div>\n</div>', '', 0, 0, 0, 78, '2011-04-01 02:56:18', 42, '', '2012-07-20 04:50:31', 43, 0, '0000-00-00 00:00:00', '2011-04-01 02:56:18', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 13, 0, 4, '', '', 1, 102, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(71, 179, 'Layout', 'layout', '', '<h3>Module Positions</h3>\r\n<p>JSN Yoyo provides <strong>36 module positions</strong> allowing you to have multiple layout configurations. All module positions are collapsible which means if you don''t publish any modules in some position it will not take any blank spaces leaving those for neighbor modules. Some positions are designed to arrange modules inside in horizontal layout which makes it very easy to reorder modules inside it.</p>\r\n<p class="content-center"><a href="images/content/template-details/design-features/layout/layout-full.png" target="_blank" class="link-action">See all module positions outline</a></p>\r\n<hr class="line-dots" />\r\n<h3>Layout Configuration</h3>\r\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/design-features/layout/params-layout.png" class="image-border" alt="Layout configuration by template parameters" /></p>\r\n<p>JSN Yoyo allows you to change the width size for several critical layout elements. All settings can be done via template parameters in section <strong>LAYOUT SETTINGS</strong>.</p>\r\n<hr class="line-dots" />\r\n<h3>Layout Variations</h3>\r\n<p>JSN Yoyo layout system is very flexible and capable. Module positions are designed in smart way to cover all possible spot where you might want to put content. More over, you can specify width of both overall layout and specific columns conveniently via template parameters. Bellow is live presentation of some most popular layout variations:</p>\r\n<div class="grid-layout" style="margin-top: 10px">\r\n	<div class="content-center">\r\n    	<a href="index.php?option=com_content&view=article&id=92&Itemid=477" class="link-highlight"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/layout-variations/layout-thumb-mc.png" width="160" height="90" alt="Main content only" /><br />Main content only</a>\r\n	</div>\r\n	<div class="content-center">\r\n    	<a href="index.php?option=com_content&view=article&id=89&Itemid=474" class="link-highlight"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/layout-variations/layout-thumb-lcir.png" width="160" height="90" alt="Left | Center | InnerRight" /><br />Left | Center | InnerRight</a>\r\n	</div>\r\n	<div class="content-center">\r\n    	<a href="index.php?option=com_content&view=article&id=91&Itemid=473" class="link-highlight"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/layout-variations/layout-thumb-lilc.png" width="160" height="90" alt="Left | Center | InnerRight" /><br />Left | InnerLeft | Center</a>\r\n	</div>\r\n</div>\r\n<div class="grid-layout" style="margin-top: 10px">\r\n	<div class="content-center">\r\n    	<a href="index.php?option=com_content&view=article&id=90&Itemid=472" class="link-highlight"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/layout-variations/layout-thumb-lcr.png" width="160" height="90" alt="Left | Center | Right" /><br />Left | Center | Right</a>\r\n    </div>\r\n	<div class="content-center">\r\n    	<a href="index.php?option=com_content&view=article&id=88&Itemid=476" class="link-highlight"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/layout-variations/layout-thumb-ilcr.png" width="160" height="90" alt="Left | Center | Right" /><br />InnerLeft | Center | Right</a>\r\n	</div>\r\n	<div class="content-center">\r\n    	<a href="index.php?option=com_content&view=article&id=87&Itemid=475" class="link-highlight"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/layout-variations/layout-thumb-cirr.png" width="160" height="90" alt="Left | Center | Right" /><br />Center | InnerRight | Right</a>\r\n	</div>\r\n</div>', '', 1, 0, 0, 78, '2011-04-01 02:56:37', 42, '', '2013-05-06 03:16:09', 42, 0, '0000-00-00 00:00:00', '2011-04-01 02:56:37', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 20, 0, 3, '', '', 1, 319, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(72, 180, 'Menu Styles', 'menu-styles', '', '<p>JSN Yoyo provides <strong>3 menu styles </strong>to present your website navigation. The default Joomla! built-in menu module <strong>(mod_mainmenu)</strong> is utilized, so you don''t need to install any external menu modules.</p>\r\n<h3>Main Menu</h3>\r\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/design-features/menu-styles/menu-mainmenu-submenus.png" class="image-border" alt="Main Menu" width="600" height="300" /></p>\r\n<p>Main Menu is very powerful menu built with clean accessible XHTML code structure and effective drop-down submenu panels.</p>\r\n<h4>Main Menu with rich text</h4>\r\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/design-features/menu-styles/menu-mainmenu-rich.png" class="image-border" alt="Main Menu with rich text" width="600" height="175" /></p>\r\n<p>You can add icon and descriptive text to each menu item to make them much clearer and more  appealing. Both descriptive text and icons are configured directly in menu item settings page, which is very convenient.</p>\r\n<p class="content-center"><a class="link-action" href="index.php?option=com_content&view=article&id=93&Itemid=479">See live demo of Main Menu</a></p>\r\n<hr class="line-dots" />\r\n<h3>Tree Menu</h3>\r\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/design-features/menu-styles/menu-treemenu.png" class="image-border" width="600" height="300" /></p>\r\n<p>Tree Menu represents menu items in clear tree-like hierarchy, which is very appropriate for indexing menu. By default all submenu items are collapsed until you select the parent menu item.</p>\r\n<p class="content-center"><a class="link-action" href="index.php?option=com_content&view=article&id=98&Itemid=482">See live demo of Tree Menu</a></p>\r\n<hr class="line-dots" />\r\n<h3>Div Menu</h3>\r\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/design-features/menu-styles/menu-divmenu.png" class="image-border" alt="Div Menu" width="600" height="175" /></p>\r\n<p>Div Menu is simple yet nice menu bar with items separated by slightly visible dashes. This menu is very suitable for footer navigation presentation.</p>', '', 1, 0, 0, 78, '2011-04-01 02:56:55', 42, '', '2013-05-04 10:11:06', 42, 0, '0000-00-00 00:00:00', '2011-04-01 02:56:55', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 14, 0, 2, '', '', 1, 241, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(73, 181, 'Module Styles', 'module-styles', '', '<p>JSN Yoyo provides <strong>2 box designs</strong> for module background styling in Free edition and <strong>6 box designs</strong> in PRO edition (which can be combined with <strong>20 predefined icons</strong> for module title styling). Module styles are configured by module''s parameter <strong>Module Class Suffix</strong> with very simple syntax.</p>\n<p>Take a look around to see how module styles are applied.</p>', '', 1, 0, 0, 78, '2011-04-01 02:57:11', 42, '', '2012-07-23 03:38:36', 43, 0, '0000-00-00 00:00:00', '2011-04-01 02:57:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 8, 0, 1, '', '', 1, 195, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(74, 182, 'Typography', 'typography', '', '<p>JSN Yoyo was developed with <strong>extreme focus on typography</strong> and we believe it provides the most comprehensive content presentation capability. Headings, text, links, tables, images, everything was designed with high level of refinement. Let''s take a look.</p>\n<h3>Headings</h3>\n<div class="grid-layout">\n  <div>\n    <h1>This is an H1 Header</h1>\n    <p>Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus laoreet. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n  </div>\n  <div>\n    <h2>This is an H2 Header</h2>\n    <p>Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus laoreet. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n  </div>\n</div>\n<div class="grid-layout">\n  <div>\n    <h3>This is an H3 Header</h3>\n    <p>Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus laoreet. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n  </div>\n  <div>\n    <h4>This is an H4 Header</h4>\n    <p>Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus laoreet. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n  </div>\n</div>\n<div class="grid-layout">\n  <div>\n    <h5>This is an H5 Header</h5>\n    <p>Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus laoreet. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n  </div>\n  <div>\n    <h6>This is an H6 Header</h6>\n    <p>Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus laoreet. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n  </div>\n</div>\n<hr class="line-dots" />\n<h3>Text columns</h3>\n<p>You can arrange  content in multiple columns by using very simple html code. JSN Yoyo will detect the amount of columns you defined and automatically make arrangement.</p>\n<p> <span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;div class=&rdquo;grid-layout&rdquo;&gt;&lt;div&gt;</strong>Text in column 1<strong>&lt;/div&gt;&lt;div&gt;</strong>Text in column 2<strong>&lt;/div&gt;&lt;/div&gt;</strong></p>\n<h4>Content arranged in 2 columns</h4>\n<div class="grid-layout">\n  <div>\n    <h5>Text column</h5>\n    <p>Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus laoreet. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n  </div>\n  <div>\n    <h5>Text column</h5>\n    <p>Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus laoreet. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n  </div>\n</div>\n<h4>Content arranged in 3 columns</h4>\n<div class="grid-layout">\n  <div>\n    <h5>Text column</h5>\n    <p>Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus laoreet. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n  </div>\n  <div>\n    <h5>Text column</h5>\n    <p>Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus laoreet. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n  </div>\n  <div>\n    <h5>Text column</h5>\n    <p>Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus laoreet. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n  </div>\n</div>\n<h4>Content arranged in 4 columns</h4>\n<div class="grid-layout">\n  <div>\n    <h5>Text column</h5>\n    <p>At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n  </div>\n  <div>\n    <h5>Text column</h5>\n    <p>At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n  </div>\n  <div>\n    <h5>Text column</h5>\n    <p>At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n  </div>\n  <div>\n    <h5>Text column</h5>\n    <p>At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n  </div>\n</div>\n<h4>Content arranged in 5 columns</h4>\n<div class="grid-layout">\n  <div>\n    <h5>Text column</h5>\n    <p>Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus laoreet.</p>\n  </div>\n  <div>\n    <h5>Text column</h5>\n    <p>Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus laoreet.</p>\n  </div>\n  <div>\n    <h5>Text column</h5>\n    <p>Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus laoreet.</p>\n  </div>\n  <div>\n    <h5>Text column</h5>\n    <p>Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus laoreet.</p>\n  </div>\n  <div>\n    <h5>Text column</h5>\n    <p>Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus laoreet.</p>\n  </div>\n</div>\n<hr class="line-dots" />\n<h3>Text styles</h3>\n<h4>Preformatted text (&lt;pre&gt; tag)</h4>\n<pre>#ja-rightcol {\n width: 180px;\n float: right;\n color: #EEEEEE;\n}\n</pre>\n\n<h4>Quote text (<strong>&lt;blockquote&gt;</strong> tag)</h4>\n<blockquote>\n  <p>You can us this style to quote somebody''s speech, idea or a fragment from some book, articles, etc. Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus  laoreet. At ut pellentesque risus quis sem eros et consequat enim lorem.  Aenean lorem consequat consequat eu.</p>\n<p><span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;blockquote&gt;</strong>This is your quote<strong>&lt;/blockquote&gt;</strong></p>\n</blockquote>\n\n<h4>Drop Cap</h4>\n<div class="text-dropcap">\n<p>You can use this special drop cap symbol style for magazine / newspaper text paragraph. Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus laoreet. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n<p><span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;p class=&quot;text-dropcap&quot;&gt;</strong>This is the text with dropcap symbol.<strong>&lt;/p&gt;</strong></p>\n</div>\n\n<h4>Highlighted Text</h4>\n<p>You can use this style to <span class="text-highlight">highlight important words and / or keyword expression</span> in search result page. Lorem ipsum dolor sit amet consectetuer eleifend elit vel tellus  laoreet. At ut pellentesque risus quis sem eros et consequat enim lorem.  Aenean lorem consequat consequat eu.</p>\n<p><span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;span class=&quot;text-highlight&quot;&gt;</strong>This is the text to be highlighted.<strong>&lt;/span&gt;</strong></p>\n\n<h4>Highlighted Text on mouse over</h4>\n<div class="grid-layout">\n<div><div class="text-box-highlight">\n<p>You can use this style to highlight important text block on mouse over. Just roll mouse over this text block to see how it''s highlighted.</p>\n<p><span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;div class=&quot;text-box-highlight&quot;&gt;</strong>This is the text to be highlighted.<strong>&lt;/div&gt;</strong></p>\n</div></div>\n<div>\n  <div class="text-box-highlight">\n<p>You can use this style to highlight important text block on mouse over. Just roll mouse over this text block to see how it''s highlighted.</p>\n<p><span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;div class=&quot;text-box-highlight&quot;&gt;</strong>This is the text to be highlighted.<strong>&lt;/div&gt;</strong></p>\n</div></div>\n</div>\n\n<h4>Alert Text</h4>\n<div class="text-alert">\n<p>You can use this style for alert or warning text paragraph requiring user''s attention. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n<p><span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;p class=&quot;text-alert&quot;&gt;</strong>This is text that requires user''s attentions.<strong>&lt;/p&gt;</strong></p>\n</div>\n<h4>Info Text</h4>\n<div class="text-info">\n<p>You can use this style for regular information text paragraph that does not require much user''s attentions. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n<p><span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;p class=&quot;text-info&quot;&gt;</strong>This is your d text.<strong>&lt;/p&gt;</strong></p>\n</div>\n<h4>Download Text</h4>\n<div class="text-download">\n<p>You can use this style for information text paragraph related to download process. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n<p><span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;p class=&quot;text-download&quot;&gt;</strong>This is download related text.<strong>&lt;/p&gt;</strong></p>\n</div>\n<h4>Tip Text</h4>\n<div class="text-tip">\n<p>You can use this style for useful information like tips, hint or help text. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n<p><span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;p class=&quot;text-tip&quot;&gt;</strong>This is yourtip hint or help text.<strong>&lt;/p&gt;</strong></p>\n</div>\n<h4>Comment Text</h4>\n<div class="text-comment">\n<p>You can use this style for comment text paragraph. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n<p><span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;p class=&quot;text-comment&quot;&gt;</strong>This is your comment text.<strong>&lt;/p&gt;</strong></p>\n</div>\n<h4>Attachment Text</h4>\n<div class="text-attachment">\n<p>You can use this style for information text paragraph related to attachment file. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n<p><span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;p class=&quot;text-attachment&quot;&gt;</strong>This is your attachment related text.<strong>&lt;/p&gt;</strong></p>\n</div>\n<h4>Video Text</h4>\n<div class="text-comment">\n<p>You can use this style for description text paragraph that related to video file. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n<p><span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;p class=&quot;text-video&quot;&gt;</strong>This is your video related text.<strong>&lt;/p&gt;</strong></p>\n</div>\n<h4>Audio Text</h4>\n<div class="text-audio">\n<p>You can use this style for description text paragraph related to audio file. At ut pellentesque risus quis sem eros et consequat enim lorem. Aenean lorem consequat consequat eu.</p>\n<p><span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;p class=&quot;text-audio&quot;&gt;</strong>This is your audio related text.<strong>&lt;/p&gt;</strong></p>\n</div>\n<hr class="line-dots" />\n<h3>Link Styles</h3>\n<h4>Link Icon Styles</h4>\n<p>You  can attach up to <strong>20 predefined</strong> <strong>icons</strong> to the front of any link by  adding simple class to it.</p>\n<div class="grid-layout">\n  <div>\n    <ul class="list-nobullet">\n      <li><a class="link-icon">Link with article icon</a></li>\n      <li><a class="link-icon">Link with calendar icon</a></li>\n      <li><a class="link-icon">Link with cart icon</a></li>\n      <li><a class="link-icon">Link with comment icon</a></li>\n      <li><a class="link-icon">Link with display icon</a></li>\n      <li><a class="link-icon">Link with download icon</a></li>\n      <li><a class="link-icon">Link with online icon</a></li>\n    </ul>\n  </div>\n  <div>\n    <ul class="list-nobullet">\n      <li><a class="link-icon">Link with folder icon</a></li>\n      <li><a class="link-icon">Link with help icon</a></li>\n      <li><a class="link-icon">Link with home icon</a></li>\n      <li><a class="link-icon">Link with image icon</a></li>\n      <li><a class="link-icon">Link with info icon</a></li>\n      <li><a class="link-icon">Link with mail icon</a></li>\n      <li><a class="link-icon">Link with rss icon</a></li>\n    </ul>\n  </div>\n  <div>\n    <ul class="list-nobullet">\n      <li><a class="link-icon">Link with search icon</a></li>\n      <li><a class="link-icon">Link with selection icon</a></li>\n      <li><a class="link-icon">Link with settings icon</a></li>\n      <li><a class="link-icon">Link with star icon</a></li>\n      <li><a class="link-icon">Link with statistics icon</a></li>\n      <li><a class="link-icon">Link with user icon</a></li>\n    </ul>\n  </div>\n</div>\n<p><span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;a class=&quot;link-icon icon-xxx&quot;&gt;</strong>This is link  text.<strong>&lt;/a&gt;</strong>, where <strong>xxx</strong> is the name of icon to be applied. Detailed information about all icon names can be found in template documentation.</p>\n<p><span class="text-highlight highlight-light"><strong>Example:</strong></span> <strong>&lt;a  class=&quot;link-icon icon-download&quot;&gt;</strong>This is link to download something.<strong>&lt;/a&gt;</strong></p>\n<h4>Link Button Styles</h4>\n<p>JSN  Yoyo offers<strong> 6 button styles </strong>to decorate  any call-to-action links you have in the content.</p>\n<div class="grid-layout">\n  <div>\n  	<p><a href="#" class="link-button button-light">Link as light button</a></p>\n    <p><a href="#" class="link-button button-dark">Link as dark button</a></p>\n  </div>\n  <div>\n  <p><a href="#" class="link-button button-blue">Link as blue button</a></p>\n  <p><a href="#" class="link-button button-green">Link as green button</a></p>\n  </div>\n  <div>\n  <p><a href="#" class="link-button button-red">Link as red button</a></p>\n  <p><a href="#" class="link-button button-orange">Link as orange button</a></p>\n  </div>\n</div>\n<p><span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;a class=&quot;link-button button-xxx&quot;&gt;</strong>This  is link text.<strong>&lt;/a&gt;</strong>, where <strong>xxx</strong> is the button color name selected from: <strong>light</strong>, <strong>dark</strong>, <strong>green</strong>, <strong>orange</strong>, <strong>blue</strong> and <strong>red</strong>.</p>\n<p><span class="text-highlight highlight-light"><strong>Example:</strong></span> <strong>&lt;a  class=&quot;link-button button-orange&quot;&gt;</strong>See plans &amp; pricing.<strong>&lt;/a&gt;</strong></p>\n<h4>Combination of Button and Icon Styles</h4>\n<p>You can use both button and icon link style combined.</p>\n<div class="grid-layout">\n  <div>\n  <p><a href="#" class="link-button button-light"><span class="link-icon">Light button &amp; Home icon</span></a></p>\n  <p><a href="#" class="link-button button-dark"><span class="link-icon">Dark button &amp; Calendar icon</span></a></p>\n  </div>\n  <div>\n  <p><a href="#" class="link-button button-blue"><span class="link-icon">Blue button &amp; Mail icon</span></a></p>\n  <p><a href="#" class="link-button button-green"><span class="link-icon">Green button &amp; Image icon</span></a></p>\n  </div>\n  <div>\n  <p><a href="#" class="link-button button-red"><span class="link-icon">Red button &amp; Star icon</span></a></p>\n  <p><a href="#" class="link-button button-orange"><span class="link-icon">Orange button &amp User icon</span></a></p>\n  </div>\n</div>\n<p><span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;a class=&quot;link-button button-xxx&quot;&gt;&lt;span  class=&quot;link-icon icon-yyy&quot;&gt;</strong>This is link text.<strong>&lt;/span&gt;&lt;/a&gt;</strong>, where <strong>xxx</strong> and <strong>yyy</strong> are button color and icon names  respectively.</p>\n<p><span class="text-highlight highlight-light"><strong>Example:</strong></span> <strong>&lt;a  class=&quot;link-button button-green&quot;&gt;&lt;span class=&quot;link-icon icon-cart&quot;&gt;</strong>Add  to cart.<strong>&lt;/span&gt;&lt;/a&gt;</strong></p>\n<h4>Extension  link styles</h4>\n<p>JSN  Yoyo is able to attach not only descriptive icon to the front of link as  described in above section, but also <strong>23 extension  icons</strong> to the end of the link.</p>\n<div class="grid-layout">\n  <div>\n    <ul>\n      <li><a class="link-icon-ext icon-ext-aim">AIM contact link (aim:)</a></li>\n      <li><a class="link-icon-ext icon-ext-application">Application file (.app)</a></li>\n      <li><a class="link-icon-ext icon-ext-archive">Archive file (.zip, .rar, .gzip)</a></li>\n      <li><a class="link-icon-ext icon-ext-calendar">Calendar file (.ical)</a></li>\n      <li><a class="link-icon-ext icon-ext-css">Cascading Style Sheet file (.css)</a></li>\n      <li><a class="link-icon-ext icon-ext-doc">Microsoft Word file (.doc)</a></li>\n      <li><a class="link-icon-ext icon-ext-excel">Microsoft Excel file (.xls)</a></li>\n      <li><a class="link-icon-ext icon-ext-feed">Feed item (.rss, .atom)</a></li>\n    </ul>\n  </div>\n  <div>\n    <ul>\n      <li><a class="link-icon-ext icon-ext-flash">Adobe Flash / Flex file (.fla, .swf)</a></li>\n      <li><a class="link-icon-ext icon-ext-font">Font file (.ttf)</a></li>\n      <li><a class="link-icon-ext icon-ext-mail">Email link (mailto:)</a></li>\n      <li><a class="link-icon-ext icon-ext-mobile">Call link (callto:)</a></li>\n      <li><a class="link-icon-ext icon-ext-movie">Movie file (.mp4, .avi, .mpg)</a></li>\n      <li><a class="link-icon-ext icon-ext-msn">MSN IM contact link (msnim:)</a></li>\n      <li><a class="link-icon-ext icon-ext-music">Music file (.mp3, .wav, .wma)</a></li>\n      <li><a class="link-icon-ext icon-ext-pdf">Adobe PDF file (.pdf)</a></li>\n    </ul>\n  </div>\n  <div>\n    <ul>\n      <li><a class="link-icon-ext icon-ext-powerpoint">Microsoft PowerPoint file (.pps)</a></li>\n      <li><a class="link-icon-ext icon-ext-quicktime">QuickTime movie file (.mov)</a></li>\n      <li><a class="link-icon-ext icon-ext-skype">Skype contact link (skype:)</a></li>\n      <li><a class="link-icon-ext icon-ext-text">Regular text file (.txt)</a></li>\n      <li><a class="link-icon-ext icon-ext-torrent">Torrent metainfo file (.torrent)</a></li>\n      <li><a class="link-icon-ext icon-ext-vcard">Electronic business card  (.vcard)</a></li>\n      <li><a class="link-icon-ext icon-ext-yahoo">Yahoo Messenger contact  (ymsgr:)</a></li>\n    </ul>\n  </div>\n</div>\n<p>All icons can be assigned automatically by enabling a template parameter or manually by adding simple class to the link.</p>\n<p><span class="text-highlight highlight-light"><strong>Usage:</strong></span> <strong>&lt;a class=&quot;link-icon-ext icon-ext-xxx&quot;&gt;</strong>This  is link text.<strong>&lt;/a&gt;</strong>, where <strong>xxx</strong> is the icon name. Detailed information about all icon names can be found in template documentation.</p>\n<hr class="line-dots" />\n<h3>Table Styles</h3>\n<h4>Plain  Rows table style</h4>\n<table width="100%" border="0" class="table-style style-colorheader">\n  <thead>\n    <tr>\n      <th>Table header</th>\n      <th>Column header 1</th>\n      <th class="highlight">Column header 2</th>\n      <th>Column header 3</th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr class="odd">\n      <th>Row header 1</th>\n      <td>Lorem ipsum</td>\n      <td class="highlight">Dolor sit amet</td>\n      <td>Lorem ipsum</td>\n    </tr>\n    <tr class="odd">\n      <th>Row header 1</th>\n      <td>Lorem ipsum</td>\n      <td class="highlight">Dolor sit amet</td>\n      <td>Lorem ipsum</td>\n    </tr>\n    <tr class="odd">\n      <th>Row header 1</th>\n      <td>Lorem ipsum</td>\n      <td class="highlight">Dolor sit amet</td>\n      <td>Lorem ipsum</td>\n    </tr>\n    <tr class="odd">\n      <th>Row header 1</th>\n      <td>Lorem ipsum</td>\n      <td class="highlight">Dolor sit amet</td>\n      <td>Lorem ipsum</td>\n    </tr>\n    <tr class="odd">\n      <th>Row header 1</th>\n      <td>Lorem ipsum</td>\n      <td class="highlight">Dolor sit amet</td>\n      <td>Lorem ipsum</td>\n    </tr>\n  </tbody>\n  <tfoot>\n    <tr>\n      <th>Table footer</th>\n      <td colspan="3">Footer data</td>\n    </tr>\n  </tfoot>\n</table>\n<h4>Color Stripes table style</h4>\n<table width="100%" border="0" class="table-style style-colorstripes">\n  <thead>\n    <tr>\n      <th>Table header</th>\n      <th>Column header 1</th>\n      <th class="highlight">Column header 2</th>\n      <th>Column header 3</th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr class="odd">\n      <th>Row header 1</th>\n      <td>Lorem ipsum</td>\n      <td class="highlight">Dolor sit amet</td>\n      <td>Lorem ipsum</td>\n    </tr>\n    <tr>\n      <th>Row header 1</th>\n      <td>Lorem ipsum</td>\n      <td class="highlight">Dolor sit amet</td>\n      <td>Lorem ipsum</td>\n    </tr>\n    <tr class="odd">\n      <th>Row header 1</th>\n      <td>Lorem ipsum</td>\n      <td class="highlight">Dolor sit amet</td>\n      <td>Lorem ipsum</td>\n    </tr>\n    <tr>\n      <th>Row header 1</th>\n      <td>Lorem ipsum</td>\n      <td class="highlight">Dolor sit amet</td>\n      <td>Lorem ipsum</td>\n    </tr>\n    <tr class="odd">\n      <th>Row header 1</th>\n      <td>Lorem ipsum</td>\n      <td class="highlight">Dolor sit amet</td>\n      <td>Lorem ipsum</td>\n    </tr>\n  </tbody>\n  <tfoot>\n    <tr>\n      <th>Table footer</th>\n      <td colspan="3">Footer data</td>\n    </tr>\n  </tfoot>\n</table>\n<h4>Grey Stripes table style</h4>\n<table width="100%" border="0" class="table-style style-greystripes">\n  <thead>\n    <tr>\n      <th>Table header</th>\n      <th>Column header 1</th>\n      <th class="highlight">Column header 2</th>\n      <th>Column header 3</th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr class="odd">\n      <th>Row header 1</th>\n      <td>Lorem ipsum</td>\n      <td class="highlight">Dolor sit amet</td>\n      <td>Lorem ipsum</td>\n    </tr>\n    <tr>\n      <th>Row header 1</th>\n      <td>Lorem ipsum</td>\n      <td class="highlight">Dolor sit amet</td>\n      <td>Lorem ipsum</td>\n    </tr>\n    <tr class="odd">\n      <th>Row header 1</th>\n      <td>Lorem ipsum</td>\n      <td class="highlight">Dolor sit amet</td>\n      <td>Lorem ipsum</td>\n    </tr>\n    <tr>\n      <th>Row header 1</th>\n      <td>Lorem ipsum</td>\n      <td class="highlight">Dolor sit amet</td>\n      <td>Lorem ipsum</td>\n    </tr>\n    <tr class="odd">\n      <th>Row header 1</th>\n      <td>Lorem ipsum</td>\n      <td class="highlight">Dolor sit amet</td>\n      <td>Lorem ipsum</td>\n    </tr>\n  </tbody>\n  <tfoot>\n    <tr>\n      <th>Table footer</th>\n      <td colspan="3">Footer data</td>\n    </tr>\n  </tfoot>\n</table>\n<hr class="line-dots" />\n<h3>List styles</h3>\n<h4>Standard list styles</h4>\n<div class="grid-layout">\n  <div>\n    <h5>Unordered list</h5>\n    <ul>\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n  <div>\n    <h5>Ordered list</h5>\n    <ol>\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ol>\n  </div>\n</div>\n<h4>Arrow list styles</h4>\n<div class="grid-layout">\n  <div>\n    <h5>Red arrow</h5>\n    <ul class="list-arrow arrow-red">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n  <div>\n    <h5>Blue arrow</h5>\n    <ul class="list-arrow arrow-blue">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n  <div>\n    <h5>Green arrow</h5>\n    <ul class="list-arrow arrow-green">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n</div>\n<h4>Icon list styles</h4>\n<div class="grid-layout">\n  <div>\n    <h5>Article icon list</h5>\n    <ul class="list-icon">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n  <div>\n    <h5>Folder icon list</h5>\n    <ul class="list-icon">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n  <div>\n    <h5>Image icon list</h5>\n    <ul class="list-icon">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n</div>\n<div class="grid-layout">\n  <div>\n    <h5>Online icon list</h5>\n    <ul class="list-icon">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n  <div>\n    <h5>Star icon list</h5>\n    <ul class="list-icon">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n  <div>\n    <h5>User icon list</h5>\n    <ul class="list-icon">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n</div>\n<p class="text-tip">You can assign any of predefined 20 icons to list items. 6 icons shown above are just samples.</p>\n<h4>Number list styles</h4>\n<div class="grid-layout">\n  <div>\n    <h5>Blue Bullet number list</h5>\n    <ul class="list-number-bullet bullet-blue">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n  <div>\n    <h5>Green Bullet number list</h5>\n    <ul class="list-number-bullet bullet-green">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n  <div>\n    <h5>Grey Bullet number list</h5>\n    <ul class="list-number-bullet bullet-grey">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n</div>\n<div class="grid-layout">\n  <div>\n    <h5>Orange Bullet number list</h5>\n    <ul class="list-number-bullet bullet-orange">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n  <div>\n    <h5>Red Bullet number list</h5>\n    <ul class="list-number-bullet bullet-red">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n  <div>\n    <h5>Violet Bullet number list</h5>\n    <ul class="list-number-bullet bullet-violet">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n</div>\n<div class="grid-layout">\n  <div>\n    <h5>Blue Digit number list</h5>\n    <ul class="list-number-digit digit-blue">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n  <div>\n    <h5>Green Digit number list</h5>\n    <ul class="list-number-digit digit-green">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n  <div>\n    <h5>Grey Digit number list</h5>\n    <ul class="list-number-digit digit-grey">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n</div>\n<div class="grid-layout">\n  <div>\n    <h5>Orange Digit number list</h5>\n    <ul class="list-number-digit digit-orange">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n  <div>\n    <h5>Red Digit number list</h5>\n    <ul class="list-number-digit digit-red">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n  <div>\n    <h5>Violet Digit number list</h5>\n    <ul class="list-number-digit digit-violet">\n      <li>Lorem ipsum dolor sit amet</li>\n      <li>Consetetur sadipscing elitr</li>\n      <li>Sed diam voluptua</li>\n    </ul>\n  </div>\n</div>', '', 0, 0, 0, 78, '2011-04-01 02:57:27', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-04-01 02:57:27', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 0, '', '', 1, 59, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(75, 183, 'CSS/JS Compression', 'cssjs-compression', '', '<p>At JoomlaShine.com, we put great efforts in optimizing our templates performance by multiple techniques like image sprites application, clean html code output and now one new step – <strong>CSS/JS Compression</strong>.</p>\n<p>What it does is to combine all CSS/JS files into a single file and deliver it in GZIP compressed state to browser. This feature significantly reduce http request number to server as well as overall loading size, which results in 35% performance boost.</p>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/cssjs-compression/system-compression-filesbefore.png" border="0" alt="Before enabling CSS/JS compression" width="600" height="380" /></p>\n<p class="content-center"><em>Before enabling CSS/JS compression</em></p>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/cssjs-compression/system-compression-filesafter.png" border="0" alt="After enabling CSS/JS compression" width="600" height="200" /></p>\n<p class="content-center"><em>After enabling CSS/JS compression</em></p>\n<p>CSS/JS Compression feature is enabled on this demo website. You can check the source code to see how it works.</p>\n<hr class="line-dots" />\n<h3>Custom CSS File(s)</h3>\n<p>This feature allows you to load multiple custom CSS files among with template default files. This feature is very useful, when you have special dedicated CSS file for content styling.</p>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/cssjs-compression/system-customcss.png" border="0" alt="Custom CSS files are loaded among with other template CSS files" width="600" height="320" /></p>\n<p class="content-center"><em>Custom CSS files are loaded among with other template CSS files</em></p>\n<p>Just put custom CSS files to template''s CSS folder and define them in template parameter <strong>Custom CSS File(s)</strong> each file name at a line. If you enable <strong>CSS/JS Compression </strong>feature, all custom CSS files will be compressed as well.</p>', '', 1, 0, 0, 79, '2011-04-01 03:05:52', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-04-01 03:05:52', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 13, '', '', 1, 12, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(76, 184, 'Docs & Support', 'docs-and-support-2', '', '\r\n<h3>Documentation</h3>\r\n<p>JSN Yoyo is equipped with very comprehensive documentation package that will help you with template utilization.</p>\r\n<ul>\r\n<li><h4>Configuration Manual</h4>This PDF document gives you detailed description of every template feature. You can print and use this document as a reference every time you want to configure your template. You also can watch <a href="http://www.youtube.com/playlist?list=PL068EB32BB584F3F7">our play list JoomlaShine Template Configuration</a>. </li>\r\n<li><h4>Customization Manual</h4>This PDF document gives you easy-to-understand instruction how to customize template elements to make it suites you or your client. You also can watch <a href="http://www.youtube.com/playlist?list=PL0B473CA36B16C3FD">our playlist JoomlaShine Template Customization</a>. </li> \r\n</ul>\r\n<p class="content-center"><a class="link-button button-light" href="http://www.joomlashine.com/joomla-templates/jsn-yoyo-docs.zip"><span class="link-icon jsn-icon-download">Download documentation</span></a></p>\r\n<hr class="line-dots" />\r\n<h3>Support</h3>\r\n<p>When purchasing our products you are backed up with professional and timely support providing via:</p>\r\n<ul>\r\n<li><h4>Support Forum</h4>In the <a href="http://www.joomlashine.com/forum.html">support forum</a> we provide support for everyone who bought the <strong>PRO Edition</strong> of our products. Here you will get support from our support team as well as thousands of active members.</li>\r\n<li><h4>Dedicated Ticket Support</h4><a href="http://www.joomlashine.com/dedicated-support.html">Dedicated Ticket Support</a> is for developers who bought<strong> PRO UNLIMITED Edition </strong>of our products. With ticket support we can investigate the issue in-depth and provide a solution much faster. <strong>12-hour</strong> response time is guaranteed.</p> <p>One more great benefit is that we provide support for all questions related not only to the product, but also to your Joomla! configuration.</li> \r\n</ul>\r\n', '', 1, 0, 0, 79, '2011-04-01 03:06:29', 42, '', '2013-03-15 09:17:16', 42, 0, '0000-00-00 00:00:00', '2011-04-01 03:06:29', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 8, 0, 12, '', '', 1, 56, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `joom_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(77, 185, 'Easy to Start', 'easy-to-start', '', '<p>One of the fastest and easiest ways to learn template is to install sample data and start playing with it. JSN Yoyo provides unique mechanism of installing sample data directly on your current website. Just few steps and the demo website is here.</p>\r\n<h3>Step 1. Setup sample data </h3>\r\n<p>Go to template settings page and click button <strong>"Get started".</strong></p> \r\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/easy-start/sampledata-step01.png" class="image-border" width="600" alt="Run sample data installer" /></p>\r\n<p>There are 2 options for you to choose: <strong>Install sample data directly on your site</strong> or<strong> download the quickstart package and use it as standard Joomla site</strong>.</p>\r\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/easy-start/sampledata-step02.png" class="image-border" width="600" alt="Download sample data package" /></p>\r\n<p> The installation process would start instantly and you would get the website in less than a minute.</p>\r\n<h3>Step 2. Read template documentation and start playing</h3>\r\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/easy-start/sampledata-check-documentation.png" class="image-border" width="600" alt="Run sample data installer" /></p>\r\n<p><strong>Done!</strong> Just 2 simple steps and you have sample data installed.</p>\r\n<p>Now it''s time to read documentation and play with the template. You can download documentation package for free.</p>\r\n<ul type="disc">\r\n<li><a class="link-action" href="http://www.joomlashine.com/joomla-templates/jsn-yoyo-docs.zip">Download documentation package</a>.</li>\r\n', '', 1, 0, 0, 79, '2011-04-01 03:06:47', 42, '', '2013-05-06 03:17:03', 42, 0, '0000-00-00 00:00:00', '2011-04-01 03:06:47', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 13, 0, 11, '', '', 1, 145, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(78, 186, 'Extended styles', 'extended-styles', '', '<p>One of hottest features in JSN Yoyo is extended styles adapted for 5 most popular Joomla! extension: <strong>K2</strong>, <strong>Community Builder</strong>, <strong>Virtue Mart</strong>, <strong>JEvents</strong> and <strong>JoomGallery</strong>.</p>\n<p>Technically extended styles are overrides of default extensions style (images + CSS) and located in folder <strong>/ext</strong> inside template folder. Some extensions have their own template system and you might want to turn off extended style thru template parameter in order to use those native templates.</p>\n<p class="text-info">The extensions discussed here are not included in the template package and you have to download separately. You can download the extensions on Joomla! Extensions Directory <a href="http://extensions.joomla.org/">http://extensions.joomla.org/</a></p>\n<h3>K2</h3>\n<p>Extended style for K2 includes adapted tabs color, additional module styles, fixed alignment issues and some other minor visual enhancement.</p>\n<h4>Component styling</h4>\n<p>Here is how K2 component will look like after extended styles applied.</p>\n<p class="content-center"><img width="600" height="445" src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/images/content/template-details/advanced-stuff/extended-styles/ext-k2-style-after.png" alt="K2 Style Applied" /></p>\n<h4>Module styling</h4>\n<p>Besides from extended component styling you can use template module styles for K2 modules as well.</p>\n<div class="grid-layout">\n<div>\n<p class="content-center"><img width="300" height="455" src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/images/content/template-details/advanced-stuff/extended-styles/ext-k2-module-content.png" alt="K2 Style Module Content" /></p>\n<ul><li>K2 Content Module (mod_k2_content) with module style <strong>box-green icon-article</strong> applied</li></ul>\n</div>\n<div>\n  <p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/extended-styles/ext-k2-module-comment-login.png" width="300" height="580" alt="K2 Style Module Comment" /></p>\n  <ul>\n    <li>K2 Comments Module (mod_k2_comments) with module style <strong>box-blue icon-comment</strong> applied</li>\n    <li>K2 Login Module (mod_k2_login) with module style <strong>box-yellow icon-user</strong> applied </li>\n  </ul>\n</div>\n</div>\n<hr class="line-dots" />\n<h3>Community Builder</h3>\n<p>Extended style for Community Builder includes adapted dropdown menu style, tabs color, additional module styles and some other minor visual enhancement.</p>\n<h4>Component styling</h4>\n<p>Here is how Community Builder component will look like after extended styles applied.</p>\n<p class="content-center"><img width="600" height="500" src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/images/content/template-details/advanced-stuff/extended-styles/ext-cb-profile.png" alt="CB Profile Style" /><br />\nAdapted drop-menu style and tabs color on <strong>CB Profile page</strong></p>\n<h4>Module styling</h4>\n<p>Besides from extended component styling you can use template module styles for Community Builder modules as well.</p>\n<p class="content-center"><img width="300" height="360" src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/images/content/template-details/advanced-stuff/extended-styles/ext-cb-modules.png" alt="CB Module Style" /></p>\n<p>In the example above:</p>\n<ul>\n  <li>CB Login Module (mod_cblogin) with module style <strong>box-yellow icon-user</strong> applied</li>\n  <li>CB Online Module (mod_comprofilerOnline) with module style <strong>box-blue icon-online</strong> applied</li>\n  <li>CB Workflows (mod_comprofilermoderator) with module style<strong> box-grey icon-selection</strong> applied</li>\n</ul>\n<hr class="line-dots" />\n<h3>Virtue Mart</h3>\n<p>Extended style for Virtue Mart includes adapted Add to Cart button, additional module styles, fixed alignment issues, redesigned checkout-steps icons and some other minor visual enhancement.</p>\n<h4>Component Styling</h4>\n<p class="content-center"><img width="600" height="420" src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/images/content/template-details/advanced-stuff/extended-styles/ext-vm-product.png" alt="VM Product Style" /><br />Fixed alignment issues on <strong>Product Details</strong> page</p>\n<h4>Module styling</h4>\n<p>Besides from extended component styling you can use template module styles for Virtue Mart modules as well.</p>\n<p class="content-center"><img width="300" height="420" src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/images/content/template-details/advanced-stuff/extended-styles/ext-vm-module.png" alt="VM Module Style" /></p>\n<ul>\n  <li>VirtueMart Module (mod_virtuemart) with module style <strong>box-blue icon-cart</strong> applied.</li>\n</ul>\n<hr class="line-dots" />\n<h3>JEvents</h3>\n<p>Extended style for JEvents includes redesigned calendar navigation icons and calendar table, adapted table header color, additional module styles, fixed alignment issues and some other minor visual enhancement.</p>\n<h4>Component Styling</h4>\n<p class="content-center"><img width="600" height="220" src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/images/content/template-details/advanced-stuff/extended-styles/ext-jevents-navigation.png" alt="JEvents Navigation Style" /><br />Totally redesigned calendar navigation icons</p>\n<p class="content-center"><img width="600" height="455" src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/images/content/template-details/advanced-stuff/extended-styles/ext-jevents-monthly.png" alt="JEvents Monthly Style" /><br />Adapted calendar table header color</p>\n<p class="content-center"><img width="600" height="550" src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/images/content/template-details/advanced-stuff/extended-styles/ext-jevents-weekly.png" alt="JEvents Weekly Style" /><br />\nAdapted table header color on Event List page</p>\n<h4>Module styling</h4>\n<p>Besides from extended component styling you can use template module styles for JEvents modules as well.</p>\n<p class="content-center"><img width="300" height="530" src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/images/content/template-details/advanced-stuff/extended-styles/ext-jevents-modules.png" alt="JEvents Module Style" /></p>\n<p>In the example above:</p>\n<ul>\n  <li>Events Calendar Module (mod_jevents_cal) with module style <strong>box-blue icon-calendar</strong> applied.</li>\n  <li>Latest Events Module (mod_jevents_latest) with module style <strong>box-green icon-star</strong> applied.</li>\n  <li>JEvents Legend Module (mod_jevents_legend) with module style <strong>box-grey icon-info</strong> applied.</li>\n</ul>\n<hr class="line-dots" />\n<h3>JoomGallery</h3>\n<p>Extended style for JoomGallery includes redesigned navigation icons, fixed alignment issues, additional module styles and some other minor visual enhancement.</p>\n<h4>Component Styling</h4>\n<p class="content-center"><img width="600" height="500" src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/images/content/template-details/advanced-stuff/extended-styles/ext-jg-layout.png" alt="JG Layout Style" /><br />Totally redesigned navigation bar and information panel</p>\n<p class="content-center"><img width="600" height="500" src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/images/content/template-details/advanced-stuff/extended-styles/ext-jg-navigation.png" alt="JG Navigation Style" /><br />\nFixed alignment issues</p>\n<h4>Module styling</h4>\n<p>Besides from extended component styling you can use template module styles for JoomGallery modules as well.</p>\n<div class="grid-layout">\n<div>\n<p class="content-center"><img width="300" height="500" src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/images/content/template-details/advanced-stuff/extended-styles/ext-jg-modules1.png" alt="JG Module Style" /></p>\n<ul>\n  <li>JoomSearch Module (mod_joomsearch) with module style<strong> box-blue icon-search</strong> applied.</li>\n  <li>JoomGallery Treeview Module (mod_jgtreeview) with module style <strong>box-yellow icon-image</strong> applied. </li>\n</ul>\n</div>\n<div>\n<p class="content-center"><img width="300" height="500" src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/images/content/template-details/advanced-stuff/extended-styles/ext-jg-modules2.png" alt="JG Module 2 Style" /></p>\n<ul>\n  <li>JoomGallery Latest Categories Module (mod_jglatestcart) with module style <strong>box-grey icon-star</strong> applied.</li>\n  <li>JoomGallery Stats Module (mod_joomgallerystats) with module style <strong>box-green icon-statistics</strong> applied.</li>\n</ul>\n</div>\n</div>', '', 1, 0, 0, 79, '2011-04-01 03:07:08', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-04-01 03:07:08', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 10, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(79, 187, 'Image Gallery', 'image-gallery', '', '<p>The image gallery you see on this website is another cool product <strong><a href="http://www.joomlashine.com/joomla-extensions/jsn-imageshow.html" target="_blank">JSN ImageShow</a></strong> from JoomlaShine.com. This product is shipped with component, module and content plugin, so you can place it anywhere on every website.</p>\r\n<p>On this page you can see how JSN ImageShow is presented as module on top and as plugin in article content. With it, you get smooth experience and consistent performance in all browsers. The JSN ImageShow also support mobile devices normally with JS/HTML version switched automatically when you visit the website.</p>\r\n<p>Currently, JSN ImageShow comes with 6 themes: Theme Classic, Theme Slider, Theme Grid, Theme Carousel, Theme Strip and Theme Flow. More themes will be released in the future.</p>\r\n<p class="content-center">{imageshow sl=11 sc=3 w=650 h=400 /}</p>\r\n<p class="content-center"><em>JSN ImageShow with Theme Classic</em></p>\r\n<div class="content-center">{imageshow sl=11 sc=1 w=650 h=400 /}</div>\r\n<p class="content-center"><em>JSN ImageShow with Theme Slider</em></p>\r\n<div class="content-center" {imageshow sl=11 sc=2 w=750 h=550 /}</div>\r\n<p class="content-center" style="clear: both;"><em>JSN ImageShow with Theme Grid</em></p>\r\n<div class="content-center">{imageshow sl=11 sc=4 w=650 /}</div>\r\n<p class="content-center"><em>JSN ImageShow with Theme Carousel</em></p>\r\n<div class="content-center">{imageshow sl=11 sc=5 /}</div>\r\n<p class="content-center"><em>JSN ImageShow with Theme Strip Vertical</em></p>\r\n<div class="content-center">{imageshow sl=11 sc=6 /}</div>\r\n<p class="content-center"><em>JSN ImageShow with Theme Strip Horizontal</em></p>\r\n<div class="content-center">{imageshow sl=11 sc=7 /}</div>\r\n<p class="content-center"><em>JSN ImageShow with Theme Flow</em></p>\r\n<hr class="line-dots" />\r\n<h3>Mobile optimized</h3>\r\n<p>For mobile device, we have built special lightweight Javascript version, so you can be absolutely sure about images presentation.</p>\r\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/flash-gallery/flash-gallery-iphone.png" width="320" height="480" alt="Mobile optimized presentation (screenshot made by iPhone)" /><br />\r\n<em>Mobile optimized presentation (screenshot made by iPhone)</em></p>\r\n<p class="text-info">This extension is NOT included in the template package, but you can download it for free. <a href="http://www.joomlashine.com/joomla-extensions/jsn-imageshow.html" class="link-action">Read more</a>.</p>', '', 1, 0, 0, 79, '2011-04-01 03:07:30', 42, '', '2013-10-11 04:45:48', 42, 0, '0000-00-00 00:00:00', '2011-04-01 03:07:30', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 30, 0, 9, '', '', 1, 133, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(80, 188, 'Flash Gallery Alternative', 'flash-gallery-alternative', '', '<a href="http://www.joomlashine.com/joomla-extensions/jsn-imageshow.html" target="_blank" style="display: block; height: 300px; background: url(http://demo.joomlashine.com/joomla-templates/jsn_yoyo/images/extensions/custom-html/jsn-imageshow-promo/jsn-imageshow-promo.jpg) center center no-repeat;"></a>', '', 1, 0, 0, 79, '2011-04-01 03:07:50', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-04-01 03:07:50', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 8, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(81, 189, 'Joomla! 2.5 & Joomla! 3.x Support', 'joomla-16-support', '', '<p class="content-center"><img width="600" height="300" src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/joomla-25-support/joomla25-3x-promo.jpg" /></p>\r\n<p>JSN Yoyo is natively compatible with both <strong>Joomla! 2.5 and Joomla! 3.x</strong>.\r\nThe installation package is compatible with both Joomla CMS.</p>\r\n<p class="content-center"><img width="600" height="300" src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/joomla-17-support/installation-files.png" /></p>\r\n<p>In Customer Area, you can choose to download appropriate installation file for the Joomla! version you are using.</p>', '', 1, 0, 0, 79, '2011-04-01 03:08:14', 42, '', '2013-05-18 03:27:55', 42, 0, '0000-00-00 00:00:00', '2011-04-01 03:08:14', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 0, 7, '', '', 1, 70, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(82, 190, 'Mobile Ready in the PRO Edition', 'mobile-ready', '', '<p class="text-alert">Please be aware that the responsive design is available only in the template version for Joomla 2.5</p>\n\n<p>All JoomlaShine.com templates have special built-in design optimized for modern mobile devices iPhone, Android and Windows Mobile-based.</p>\n<p>Unlike other template providers, we do not develop something that looks like a mobile app with heavy menu and animation. We built compact and lightweight version of the template preserving the whole original look-and-feel.</p>\n<h3>Mobile layout overview on Iphone</h3>\n<div class="grid-layout">\n<div>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/mobile-ready/mobile-iphone-top.png" width="320" height="480" alt="Mobile layout overview" /></p>\n <p class="content-center"><em>Mobile layout overview</em></p>\n</div>\n<div>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/mobile-ready/mobile-layout.png" width="320" height="480" alt="Module positions in mobile layout" /></p>\n <p class="content-center"><em>Module positions in mobile layout</em></p>\n</div>\n</div>\n<p>Mobile layout has <strong>8 dedicated module positions</strong>, where you can show modules specifically designed for mobile edition. Additionally, you can use template parameter <strong>Position Mapping</strong> to present modules from regular positions in mobile positions.</p>\n<h3>Mobile layout overveiw on Ipad </h3>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/mobile-ready/mobile-ipad.png" width="600" height="800" alt="Mobile Ipad layout overview" /></p>\n\n <p class="content-center"><em>Mobile layout overview on Ipad</em></p>\n\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/mobile-ready/mobile-ipad-desktop.png" width="600" height="450" alt="Desktop Ipad layout overview" /></p>\n\n <p class="content-center"><em>Desktop layout overview on Ipad</em></p>\n<hr class="line-dots" />\n<h3>Optimized HTML overrides for mobile</h3>\n<div class="grid-layout">\n<div>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/mobile-ready/mobile-iphone-content-article.png" width="320" height="480" alt="Article presentation (com_content)" /></p>\n <p class="content-center"><em>Article presentation (com_content)</em></p>\n</div>\n<div>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/mobile-ready/mobile-iphone-content-newsfeeds.png" width="320" height="480" alt="News feeds presentation (com_newsfeeds)" /></p>\n <p class="content-center"><em>News feeds presentation (com_newsfeeds)</em></p>\n</div>\n</div>\n<p>We optimized HTML overrides for all default Joomla! extensions to make them looks neat in mobile edition. The work is mainly focused on rearrangement content from columns to rows.</p>\n<hr class="line-dots" />\n<h3>Optimized menu for mobile</h3>\n<p>For mobile edition, we have built very simple, yet effective menu system, where all children menu items are presented as tree in collapsible panel. This menu system utilizes only little Javascript (MooTool) for expanding/collapsing submenu panels and is very fast and lightweight.</p>\n<div class="grid-layout">\n<div>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/mobile-ready/mobile-iphone-menu-normal.png" width="320" height="480" alt="Special designed mobile menu system" /></p>\n <p class="content-center"><em>Special designed mobile menu system</em></p>\n</div>\n<div>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/mobile-ready/mobile-iphone-menu-expanded.png" width="320" height="480" alt="Children menu items are presented as tree" /></p>\n <p class="content-center"><em>Children menu items are presented as tree</em></p>\n</div>\n</div>\n<p>You just need to put the menu module to mobile position <strong>mainmenu-m</strong> and it will automatically obtain appropriate look-n-feel. All module settings are the same as for regular main menu. Additionally, you can use template parameter <strong>Position Mapping</strong> to present menu module from regular position <strong>mainmenu</strong> in mobile position <strong>mainmenu-m</strong>.</p>\n<h4>Mobile Menu with icons and rich text</h4>\nThe most amazing thing is mobile menu inherits all the goodies of regular menu like icons and rich text.\n<div class="grid-layout">\n <div>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/mobile-ready/mobile-iphone-menu-icon.png" width="320" height="480" alt="Mobile menu with icons applied" /></p>\n <p class="content-center"><em>Mobile menu with icons applied</em></p>\n</div>\n<div>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/mobile-ready/mobile-iphone-menu-richtext.png" width="320" height="480" alt="Mobile menu with rich text" /></p>\n <p class="content-center"><em>Mobile menu with rich text</em></p>\n</div>\n</div>\n<p class="text-info">The mobile feature is enabled on live demo. You can see in real time how the template works on your mobile device.</p>', '', 1, 0, 0, 79, '2011-04-01 03:08:38', 42, '', '2012-07-23 07:12:24', 42, 0, '0000-00-00 00:00:00', '2011-04-01 03:08:38', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 0, 6, '', '', 1, 85, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(83, 191, 'Multilingual Support', 'multilingual-support', '', '<p>In our templates all wordings of both back-end and front-end are moved to separated language files, so you can easily translate them into any language you want.</p>\n<div class="content-center">\n{imageshow sl=10 sc=2 with=600 h=250 /}\n<p>Interactive images presentation by <a href="http://www.joomlashine.com/joomla-extensions/jsn-imageshow.html" target="_blank">JSN ImageShow extension</a></p>\n</div>\n<!--<p>Currently our templates support <strong>more then 10 languages</strong> and more to be come in future.</p>\n<div class="content-center">\n<p>\n<img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/multilingual-support/seo-lang-en.png" border="0" alt="English support" width="600" height="250" /><br />\n<strong>English</strong> <br />\n\n<img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/multilingual-support/seo-lang-de.png" border="0" alt="German support" width="600" height="250" /><br />\n<strong>German</strong> <br />\n\n<img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/multilingual-support/seo-lang-nl.png" border="0" alt="Dutch support" width="600" height="250" /><br />\n<strong>Dutch</strong> <br />\n\n<img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/multilingual-support/seo-lang-it.png" border="0" alt="Italian support" width="600" height="250" /><br />\n<strong>Italian</strong> <br />\n\n<img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/multilingual-support/seo-lang-es.png" border="0" alt="Spanish support" width="600" height="250" /><br />\n<strong>Spanish</strong> <br />\n\n<img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/multilingual-support/seo-lang-fr.png" border="0" alt="French support" width="600" height="250" /><br />\n<strong>French</strong> <br />\n\n<img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/multilingual-support/seo-lang-ja.png" border="0" alt="Japanese support" width="600" height="250" /><br />\n<strong>Japanese</strong> <br />\n\n<img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/multilingual-support/seo-lang-da.png" border="0" alt="Danish support" width="600" height="250" /><br />\n<strong>Danish</strong> <br />\n\n<img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/multilingual-support/seo-lang-ru.png" border="0" alt="Russian support" width="600" height="250" /><br />\n<strong>Russian</strong> <br />\n\n<img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/multilingual-support/seo-lang-pl.png" border="0" alt="Polish support" width="600" height="250" /><br />\n<strong>Polish</strong> <br />\n\n</p>\n</div>-->', '', 1, 0, 0, 79, '2011-04-01 03:08:55', 42, '', '2011-04-11 02:33:35', 42, 0, '0000-00-00 00:00:00', '2011-04-01 03:08:55', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 5, '', '', 1, 15, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(84, 192, 'Painless Configuration ', 'painless-configuration', '', '<p>All JoomlaShine templates can be effortlessly configured by template parameters. In template setting page, you will find <strong>16 template parameters</strong> arranged into logical groups for convenient operation.</p>\r\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/painless-configuration/params-preview.png" class="image-border" alt="Over 40 parameters to pick up"  /></p>\r\n<hr class="line-dots" />\r\n<h3>Set parameters without confusion</h3>\r\n<p>Most parameters are designed that way that you can simply select options without confusion about what value to define. All parameters are equipped with description text for easier understanding.</p>\r\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/painless-configuration/params-layout.png" class="image-border" alt="Parameters to control layout dimensions"  /><br /> <em>Parameters to control layout dimensions</em></p>\r\n<p class="content-center"><br />\r\n</p>\r\n', '', 1, 0, 0, 79, '2011-04-01 03:09:23', 42, '', '2013-05-06 03:16:39', 42, 0, '0000-00-00 00:00:00', '2011-04-01 03:09:23', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 8, 0, 4, '', '', 1, 91, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(85, 193, 'RTL Layout Support', 'rtl-layout-support', '', '<p>All JoomlaShine templates are equipped with <strong>native RTL layout support</strong>. We spent huge amount of time tweaking every tiny details of the template to make it look absolutely awesome in RTL mode. Everything is horizontally-flipped including dropdown main menu and side menu.</p>\r\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/rtl-layout-support/layout-rtl.jpg" class="image-border" alt="RTL layout support" width="600" height="400" /></p>\r\n<p class="content-center"><strong>(Select any menu item to get back to normal layout</strong>)</p>', '', 1, 0, 0, 79, '2011-04-01 03:09:40', 42, '', '2013-05-04 10:15:28', 42, 0, '0000-00-00 00:00:00', '2011-04-01 03:09:40', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 12, 0, 3, '', '', 1, 180, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(86, 194, 'SEO & Accessibility', 'seo-a-accessibility', '', '<p>JSN Yoyo has some great features to improve your website visibility to search engines and audience with disabilities. All these SEO features are not new, but they are built-in the template and you do not have to install any additional extensions.</p>\n<h3>Source ordering</h3>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/seo-accessibility/seo-source-ordering.png" width="600" height="350" alt="Source ordering" /></p>\n<p>One of the most important SEO technique is to make sure that  search engine can find your critical content before others. To make this  possible in our template code structure we generate the <strong>&ldquo;center&rdquo;</strong>  part first and only after that <strong>&ldquo;left&rdquo;</strong> and <strong>&ldquo;right&rdquo;</strong> columns.</p>\n<p>In this way, you can be sure that search engines will see  your critical content first. You can use Lynx browser both <a href="http://www.delorie.com/web/lynxview.html">online</a> or <a href="http://www.vordweb.co.uk/standards/download_lynx.htm">offline</a> to make sure  of that.</p>\n<hr class="line-dots" />\n<h3>Website Title</h3>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/seo-accessibility/seo-website-title.png" width="600" height="300" alt="Website Title" /></p>\n<p>This feature allows  you to use value defined in parameter <strong>Site Name</strong> from Joomla Global Configuration and show it in tag <strong>&lt;title&gt;</strong> <strong>on every pages</strong>. By default Joomla!  presents <strong>Site Name</strong> only at back-end and offline  page. Now, with parameter <strong>Website Title</strong> you can  utilize Site Name at front-end on every page. This is great feature to improve  your website SEO, since you can define a website title with some important  keywords and show it on every page.</p>\n<hr class="line-dots" />\n<h3>Top H1 tag</h3>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/seo-accessibility/seo-top-h1.png" width="600" height="300" alt="Top h1 tag" /></p>\n<p>This feature allows you to wrap website slogan to <strong>&lt;h1&gt;</strong> tag, which is good for both <strong>SEO</strong> and <strong>accessibility</strong>. As we all know, <strong>&lt;h1&gt;</strong>  is the most important content tag and search engine normally pays special  attention to the content in that tag. Once you configured your keyword-powered  website title and slogan, you can include them in the first h1 tag to increase  SE ranking.</p>', '', 1, 0, 0, 79, '2011-04-01 03:09:59', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-04-01 03:09:59', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 2, '', '', 1, 12, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(87, 195, 'Layout variation Center | Innerright | Right ', 'layout-variation-center-innerright-right', '', '<p>This is 3 columns layout with content presented on the left side, which is typical for blog sites. On right side columns you can present modules with sumplementary information for main content. The width of side columns can be adjusted conveniently via template parameters.</p>\n<p class="content-center"><a href="images/content/template-details/design-features/layout/layout-full.png" target="_blank" class="link-action">See all module positions outline</a></p>\n', '', 1, 0, 0, 81, '2011-04-01 03:11:52', 42, '', '2011-11-25 10:31:29', 42, 0, '0000-00-00 00:00:00', '2011-04-01 03:11:52', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 5, 0, 6, '', '', 1, 45, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(88, 196, 'Layout variation Innerleft | Center | Right ', 'layout-variation-innerleft-center-right', '', '<p>This is also 3 columns layout with content presented at center, but the left side column was designed to present content of secondary importance comparing to those in right side column. On side columns you can present modules with equal importance. The width of side columns can be adjusted conveniently via template parameters.</p>\n<p class="content-center"><a href="images/content/template-details/design-features/layout/layout-full.png" target="_blank" class="link-action">See all module positions outline</a></p>\n', '', 1, 0, 0, 81, '2011-04-01 03:12:20', 42, '', '2011-11-25 10:31:54', 42, 0, '0000-00-00 00:00:00', '2011-04-01 03:12:20', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 4, 0, 5, '', '', 1, 40, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(89, 197, 'Layout variation Left | Center | Innerright ', 'layout-variation-left-center-innerright', '', '<p>This is also 3 columns layout with content presented at center, but the right side column was designed to present content of secondary importance comparing to those in left side column. On side columns you can present modules with equal importance. The width of side columns can be adjusted conveniently via template parameters.</p>\n<p class="content-center"><a href="images/content/template-details/design-features/layout/layout-full.png" target="_blank" class="link-action">See all module positions outline</a></p>', '', 1, 0, 0, 81, '2011-04-01 03:12:40', 42, '', '2011-11-25 10:32:15', 42, 0, '0000-00-00 00:00:00', '2011-04-01 03:12:40', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 5, 0, 4, '', '', 1, 64, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(90, 198, 'Layout variation Left | Center | Right', 'layout-variation-left-center-right', '', '<p>This is pretty &ldquo;old-fashioned&rdquo; 3 columns layout with content presented at center. On side columns you can present modules with equal importance. The width of side columns can be adjusted conveniently via template parameters.</p>\n<p class="content-center"><a href="images/content/template-details/design-features/layout/layout-full.png" target="_blank" class="link-action">See all module positions outline</a></p>\n', '', 1, 0, 0, 81, '2011-04-01 03:13:33', 42, '', '2012-07-21 02:04:18', 43, 0, '0000-00-00 00:00:00', '2011-04-01 03:13:33', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 0, 3, '', '', 1, 125, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(91, 199, 'Layout variation Left | Innerleft | Center', 'layout-variation-left-innerleft-center', '', '<p>This is  3 columns layout with content presented on the right side, which is typical for blog sites. On left side columns you can  present modules with sumplementary information for main content. The width of side columns can be  adjusted conveniently via template parameters.</p>\n<p class="content-center"><a href="images/content/template-details/design-features/layout/layout-full.png" target="_blank" class="link-action">See all module positions outline</a></p>\n', '', 1, 0, 0, 81, '2011-04-01 03:13:50', 42, '', '2011-11-25 10:33:05', 42, 0, '0000-00-00 00:00:00', '2011-04-01 03:13:50', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 4, 0, 2, '', '', 1, 67, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(92, 200, 'Main content only', 'main-content-only', '', '<p>Here you can see how content are presented only in main content area. Sometimes, you will need a lot of space to present content and that how it will looks like.</p>\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce suscipit dui eu augue faucibus non interdum odio elementum. Praesent faucibus lorem sed massa condimentum in semper lacus aliquet. Aliquam viverra erat a libero accumsan a egestas lorem hendrerit. Donec id elit dolor. Phasellus est ligula, hendrerit id vehicula sit amet, placerat ut diam. Sed eu fringilla lectus. Aliquam augue lorem, suscipit eu consequat vel, viverra id diam. Praesent lectus elit, interdum a imperdiet vitae, cursus at velit. </p>\n<p class="content-center"><a href="images/content/template-details/design-features/layout/layout-full.png" target="_blank" class="link-action">See all module positions outline</a></p>\n', '', 1, 0, 0, 81, '2011-04-01 03:14:14', 42, '', '2012-07-21 02:27:31', 43, 0, '0000-00-00 00:00:00', '2011-04-01 03:14:14', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 8, 0, 1, '', '', 1, 44, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(93, 201, 'Main Menu', 'main-menu', '', '<p class="text-tip" style="position: relative">On the left side, you can see live demonstration of Main Menu with icons and rich text. <img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/cliparts/arrows/arrow-down-right.png" style="position: absolute; top: -65px; right: -20px" alt="Icon Arrow Up" /></p>\r\n<p>Main Menu is very powerful menu built with clean accessible XHTML code structure and effective drop-down submenu panels.</p>\r\n<h3>Main Menu Rich Text</h3>\r\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/menu-styles/mainmenu/menu-mainmenu-rich.png" alt="Main Menu Rich Text" width="600" height="175" class="image-border" /></p>\r\n<p>You can add descriptive text to menu items to make them much clearer.</p>\r\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/menu-styles/mainmenu/menu-mainmenu-rich-settings-j25.png" alt="Main Menu Rich Text Settings" width="600" height="300" class="image-border" /></p>\r\n<p>To set up descriptive text, you need to go to menu item settings and add descriptive text to menu item’s parameter <strong>Link Title Attribute</strong>.</p>', '', 1, 0, 0, 83, '2011-04-01 04:04:45', 42, '', '2013-10-11 04:49:28', 42, 0, '0000-00-00 00:00:00', '2011-04-01 04:04:45', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 14, 0, 5, '', '', 1, 247, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `joom_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(94, 202, 'Rich Menu', 'rich-menu', '', '<p class="text-tip" style="position: relative">On top of this page, you can see live demonstration of Rich Menu. <img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/cliparts/arrows/arrow-up-right-2.png" style="position: absolute; top: -50px; padding-left: 10px" alt="Icon Arrow Up" /></p>\n<p>With this menu system you can attach icons and add descriptive text to each menu item making them much clearer and visually appealing. The best thing is you can use the default menu module built-in Joomla!, no need to install external menu modules.</p>\n<h3>Menu items with descriptive text</h3>\n<p>JSN Yoyo allows you to present menu items with descriptive text placed on a separated line at the bottom of main text.</p>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/menu-styles/rich-menu/menu-mainmenu-rich.png" alt="Main Menu Rich Text" width="600" height="175" border="0" /></p>\n<p>To setup text strings you need to go to menu item settings and add symbol combination &ldquo;<strong>(=)</strong><strong>&rdquo;</strong> as separator between primary and secondary text.</p>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/menu-styles/rich-menu/menu-mainmenu-rich-settings.png" alt="Main Menu Rich Text Settings" width="600" height="270" border="0" /></p>\n<p>In the example above text &ldquo;<strong>Home</strong>&rdquo; is the primary text and &ldquo;<strong>Lorem ipsum dolor sit...</strong>&rdquo; is the secondary text. Separator between them is the symbol combination &ldquo;<strong>(=)</strong>&rdquo;. Really simple and elegant solution.</p>\n<hr class="line-dots" />\n<h3>Menu items with icons</h3>\n<p>JSN Yoyo allows you to assign up to <strong>20 predefined icons</strong> for items in main menu.</p>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/menu-styles/rich-menu/menu-mainmenu-icons.png" alt="Main Menu Icons" width="600" height="125" border="0" /></p>\n<p> To setup icons, you need to find template parameter <strong>Main Menu Icons</strong> and choose any icon you want to display from drop-down panel.</p>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/menu-styles/rich-menu/menu-mainmenu-icons-settings.png" alt="Main Menu Icons Settings" width="600" height="300" border="0" /></p>\n<hr class="line-dots" />\n<h3>Combination of descriptive text and icons</h3>\n<p>You can use combination of descriptive text and icons to get Rich Menu in it''s best presentation.</p>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/menu-styles/rich-menu/menu-mainmenu-rich-icons.png" alt="Main Menu Rich Text combined with Icons" width="600" height="175" border="0" /></p>', '', 1, 0, 0, 83, '2011-04-01 04:05:08', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-04-01 04:05:08', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(95, 203, 'Side Menu', 'side-menu', '', '<p class="text-tip" style="position: relative"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/cliparts/arrows/arrow-down-left.png" style="position: absolute; top: 20px; left: -12px" />Here you can see live demonstration of Side Menu.</p>\n<p>Side Menu is very unique vertical menu with slide-out panels. This menu is extremely efficient when you have complex navigation with a lot of menu items.</p>\n<p>To setup Side Menu you just need to configure module parameter &ldquo;<strong>Menu Class Suffix</strong>&rdquo; appropriately and the menu system will take care of the rest. There are very detailed instructions in template documentation.</p>\n<h3>Side Menu with Icons and Rich Text</h3>\n<p class="text-tip" style="position: relative"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/cliparts/arrows/arrow-down-left.png" style="position: absolute; top: 20px; left: -12px" />Here you can see live demonstration of Side Menu with icons and rich text.</p>\n<p>Side Menu can present menu items with icons and descriptive text, pretty much like Main Menu.</p>\n<p>To setup icons you need to configure menu items appropriately just like Main Menu. There are very detailed instructions in template documentation.</p>\n<h3>Side Menu with RTL Support</h3>\n<p>Side Menu works flawlessly even in RTL layout, in which sub-menu panels will slide out from right to left.</p>\n<p class="content-center"><a href="index.php?option=com_content&view=article&id=96&Itemid=481" class="link-button button-light"><span class="link-icon">See Side Menu in RTL layout</span></a></p>\n', '', 1, 0, 0, 83, '2011-04-01 04:05:29', 42, '', '2011-11-22 09:06:46', 42, 0, '0000-00-00 00:00:00', '2011-04-01 04:05:29', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 9, 0, 3, '', '', 1, 105, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(96, 204, 'Side Menu RTL', 'side-menu-rtl', '', '<p class="text-tip" style="position: relative">Here you can see live demonstration of Side Menu in RTL layout.<img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/cliparts/arrows/arrow-down-right.png" style="position: absolute; top: 25px; right:-12px" /></p>\n<p>Side Menu is very unique vertical menu with slide-out panels. This menu is extremely efficient when you have complex navigation with a lot of menu items.</p>\n<p>To setup Side Menu you just need to configure module parameter &ldquo;<strong>Menu Class Suffix</strong>&rdquo; appropriately and the menu system will take care of the rest. There are very detailed instructions in template documentation.</p>\n<h3>Side Menu with Icons and Rich Text</h3>\n<p class="text-tip" style="position: relative">Here you can see live demonstration of Side Menu with icons and rich text in RTL layout.<img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/cliparts/arrows/arrow-down-right.png" style="position: absolute; top: 25px; right:-12px" /></p>\n<p>Side Menu can present menu items with icons and descriptive text, pretty much like Main Menu.</p>\n<p>To setup icons you need to configure menu items appropriately just like Main Menu. There are very detailed instructions in template documentation.</p>\n<p class="content-center"><a href="index.php?option=com_content&view=article&id=95&Itemid=480" class="link-button button-light"><span class="link-icon">See Side Menu in Normal layout</span></a></p>\n', '', 1, 0, 0, 83, '2011-04-01 04:05:43', 42, '', '2011-11-22 09:06:53', 42, 0, '0000-00-00 00:00:00', '2011-04-01 04:05:43', '0000-00-00 00:00:00', '', '', '{"show_title":"0","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 14, 0, 2, '', '', 1, 74, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(97, 205, 'Top Menu', 'top-menu', '', '<p class="text-tip" style="position: relative">At the top of this page, you can see live demonstration of Top Menu. <img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/cliparts/arrows/arrow-up-right-2.png" style="position: absolute; top: -50px; padding-left: 10px" /></p>\n<p>Top Menu allows you to arrange menu items in horizontal line and assign icons to them. All icons are configured directly in menu item settings page which is very convenient.</p>\n<p>You can choose up to <strong>20 predefined icons</strong> to menu item. </p>\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/menu-styles/topmenu/menu-topmenu-icons-settings-j16.png" width="600" height="300" /></p>\n<p>To set up icons, you need to go to menu item settings and add symbol combination <strong>icon-xxx</strong> to menu item''s parameter <strong>Link CSS Style</strong>, where <strong>xxx</strong> is the icon name.</p>\n<ul>\n<li><a href="images/content/template-details/design-features/uniicons.png" target="_blank" class="link-action">See preview of all icons</a></li></ul>', '', 1, 0, 0, 83, '2011-04-01 04:05:59', 42, '', '2012-07-21 08:53:23', 43, 0, '0000-00-00 00:00:00', '2011-04-01 04:05:59', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 1, '', '', 1, 23, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(98, 206, 'Tree Menu', 'tree-menu', '', '<p>Tree Menu represents menu items in clear tree-like hierarchy, which is very appropriate for indexing menu. By default all submenu items are collapsed until you select the parent menu item.</p>\n<p>To setup Tree Menu you just need to configure module parameter &ldquo;<strong>Menu Class Suffix</strong>&rdquo; appropriately and the menu system will take care of the rest.</p>\n<h3>Tree Menu with Rich Text</h3>\n<p class="text-tip" style="position: relative">Here you can see live demonstration of Tree Menu.</p>\n<p>Tree Menu can present menu items with icons and descriptive text, pretty much like <a href="index.php?option=com_content&amp;view=article&amp;id=93&amp;Itemid=479">Main Menu</a>.</p>\n<p>To setup icons you need to configure menu items appropriately just like Main Menu. There are very detailed instructions in template documentation.</p>', '', 1, 0, 0, 83, '2011-04-01 04:06:29', 42, '', '2011-11-28 04:01:01', 42, 0, '0000-00-00 00:00:00', '2011-04-01 04:06:29', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 10, 0, 0, '', '', 1, 97, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(99, 207, 'JSN Yoyo Advanced Stuff', 'jsn-yoyo-advanced-stuff', '', '<p>We have been developing JSN Yoyo for <strong>more then 2 years</strong> and that tremendous amount of time allowed us to roll out some really advanced stuff. For us, the word &ldquo;advanced&rdquo; is not just fancy marketing buzz, but really something that you will not likely see anywhere else.</p>\n\n<div class="grid-layout">\n<div>\n<h3>Easy to Start</h3>\n<p>JSN Yoyo provides unique mechanism of installing sample data on directly your current website. Just few clicks and the demo website is here.</p>\n<p><a href="index.php?option=com_content&view=article&id=77&Itemid=484" class="link-button button-light"><span class="link-icon">More about sample data</span></a></p>\n</div>\n<div>\n<h3>Mobile Ready</h3>\n<p>JSN Yoyo provides special built-in design optimized for modern mobile devices such as iPhone, Android and Windows Mobile-based.</p>\n<p><a href="index.php?option=com_content&view=article&id=82&Itemid=486" class="link-button button-light"><span class="link-icon">More about mobile support</span></a></p>\n</div>\n</div>\n\n<div class="grid-layout">\n<div>\n<h3>Painless Configuration</h3>\n<p>JSN Yoyo provides 48 template parameters for super flexible template configuration. All parameters are nicely arranged in multiple sections in template settings page for easy access.</p>\n<p><a href="index.php?option=com_content&view=article&id=84&Itemid=485" class="link-button button-light"><span class="link-icon">More about template configuration</span></a></p>\n</div>\n<div>\n<h3>Flash Gallery</h3>\n<p>The flash gallery you see on this website is cool product <strong><a href="http://www.joomlashine.com/joomla-extensions/jsn-imageshow.html">JSN ImageShow</a></strong>. Designed to present photos, you can use this product to show either professional photo portfolio or your family album.</p>\n<p><a href="http://www.joomlashine.com/joomla-extensions/jsn-imageshow.html" class="link-button button-light"><span class="link-icon">More about JSN ImageShow</span></a></p>\n</div>\n</div>\n\n<div class="grid-layout">\n<div>\n<h3>RTL Layout</h3>\n<p>All JoomlaShine templates are equipped with native RTL layout support. We tweak every tiny details to make template look absolutely awesome in RTL mode.</p>\n<p><a href="index.php?option=com_content&view=article&id=85&Itemid=488" class="link-button button-light"><span class="link-icon">More about RTL layout</span></a></p>\n</div>\n<div>\n<h3>Docs &amp; Support</h3>\n<p>JSN Yoyo is equipped with very comprehensive documentation package of quick start video and PDF documents that you can print and read at convenience.</p>\n<p><a href="index.php?option=com_content&view=article&id=76&Itemid=493" class="link-button button-light"><span class="link-icon">More about docs &amp; support</span></a></p>\n</div>\n</div>\n', '', 1, 0, 0, 79, '2011-04-01 04:17:12', 42, '', '2011-11-23 07:48:13', 42, 0, '0000-00-00 00:00:00', '2011-04-01 04:17:12', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 14, 0, 1, '', '', 1, 76, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(100, 208, 'K2 Support', 'k2-support', '', '<p>One of hottest features in JSN Yoyo is extended styles adapted for a very popular Joomla! extension <strong>K2</strong>. Technically extended styles are overrides of default extension&rsquo;s style (images + CSS) and located in folder &ldquo;<strong>/ext/k2&rdquo;</strong> inside template folder.</p>\n<p>Extended style for K2 includes adapted tabs color, additional module styles, fixed alignment issues and some other minor visual enhancement.</p>\n<h3>Component styling</h3>\n<p>Here is how K2 component will look like after extended styles applied.</p>\n<p class="content-center"><img width="600" height="445" src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/extended-styles/ext-k2-style-after.png" /></p>\n<h3>Module styling</h3>\n<p>Besides from extended component styling you can use template module styles for K2 modules as well.</p>\n<div class="grid-layout">\n<div>\n<p class="content-center"><img width="300" height="455" src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/extended-styles/ext-k2-module-content.png" /></p>\n<ul><li>K2 Content Module (mod_k2_content) with module style <strong>box-green icon-article</strong> applied</li></ul>\n</div>\n<div>\n  <p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/extended-styles/ext-k2-module-comment-login.png" width="300" height="580" /></p>\n  <ul>\n    <li>K2 Comments Module (mod_k2_comments) with module style <strong>box-blue icon-comment</strong> applied</li>\n    <li>K2 Login Module (mod_k2_login) with module style <strong>box-yellow icon-user</strong> applied </li>\n  </ul>\n</div>\n</div>\n<p class="text-info">The K2 extensions is not included in the template package and you have to download separately at http://www.getk2.org</p>', '', 0, 0, 0, 79, '2011-04-01 04:24:28', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(101, 209, 'JSN Yoyo Product Tour', 'jsn-yoyo-product-tour', '', '<h3>Easy to start</h3>\r\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/general/product-tour/slide-easy-start.jpg" alt="Easy to Start" class="image-border" /></p>\r\n<p>One of the fastest and easiest ways to learn template is to install sample data and start playing with it. JSN Yoyo provides unique mechanism of <strong>installing sample data directly on your current website</strong>. Just few steps and the demo website is here.</p>\r\n<p class="content-center"><a href="index.php?option=com_content&amp;view=article&amp;id=77&amp;Itemid=542" class="link-button button-light"><span class="link-icon jsn-icon-info">More about easy start</span></a></p>\r\n\r\n\r\n\r\n<h3>Painless Configuration</h3>\r\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/general/product-tour/slide-configuration.jpg" alt="Painless Configuration" class="image-border" /></p>\r\n<p>All JoomlaShine templates can be effortlessly configured by template parameters. In template setting page, you will find <strong>16 template parameters</strong> arranged into logical groups for convenient operation. All parameters are equipped with description text for easier understanding.</p>\r\n<p class="content-center"><a href="index.php?option=com_content&amp;view=article&amp;id=84&amp;Itemid=543" class="link-button button-light"><span class="link-icon jsn-icon-info">More about configuration</span></a></p>\r\n\r\n\r\n\r\n<h3>Flexible layout</h3>\r\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/general/product-tour/slide-layout.jpg" alt="Flexible layout" class="image-border" /></p>\r\n<p>JSN Yoyo provides <strong>36+ module positions </strong>allowing you to have multiple layout configurations. Module positions are designed in smart way to cover all possible spot where you might want to put content. You can specify width of both overall layout and specific columns conveniently via template parameters.</p>\r\n<p class="content-center"><a href="index.php?option=com_content&amp;view=article&amp;id=71&amp;Itemid=466" class="link-button button-light"><span class="link-icon jsn-icon-info">More about layout</span></a></p>\r\n\r\n\r\n<h3>Versatile Menu Styles</h3>\r\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/general/product-tour/slide-menu-styles.jpg" alt="Menu Styles" class="image-border" /></p>\r\n<p>JSN Yoyo provides <strong>3 menu styles</strong> to present your website navigation. The default Joomla! built-in menu module is utilized, so you don''t need to install any external menu modules.</p>\r\n<p class="content-center"><a href="index.php?option=com_content&amp;view=article&amp;id=72&amp;Itemid=468" class="link-button button-light"><span class="link-icon jsn-icon-info">More about menu styles</span></a></p>\r\n\r\n<h3>Native RTL Support</h3>\r\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/general/product-tour/slide-rtl-support.jpg" alt="RTL Support" class="image-border" /></p>\r\n<p>All JoomlaShine templates are equipped with <strong>native RTL layout support</strong>. We spent huge amount of time tweaking every tiny details of the template to make it look absolutely awesome in RTL mode. Everything is horizontally-flipped including dropdown main menu and side menu.</p>\r\n<p class="content-center"><a href="index.php?option=com_content&amp;view=article&amp;id=85&amp;Itemid=544" class="link-button button-light"><span class="link-icon jsn-icon-info">More about RTL support</span></a></p>\r\n\r\n\r\n<h3>Cool Image Gallery</h3>\r\n{imageshow sl=11 sc=3 max-width=650 h=400 /}\r\n<p>The image gallery you see on this website is another cool product <strong>JSN ImageShow</strong> from JoomlaShine.com. With transition technology applied, you get smooth experience and consistent performance in all browsers.</p>\r\n<p>For mobile device, we have built special lightweight Javascript version, so you can be absolutely sure about images presentation.</p>\r\n<p class="content-center"><a href="index.php?option=com_content&amp;view=article&amp;id=79&amp;Itemid=545" class="link-button button-light"><span class="link-icon jsn-icon-info">More about image gallery</span></a></p>\r\n\r\n\r\n<h3>Manage Joomla easily</h3>\r\n<p class="content-center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/general/product-tour/slide-poweradmin.jpg" alt="JSN PowerAdmin" class="image-border" /></p>\r\n<p>When you install sample data template, you will have one more powerful  extension to manage your Joomla site: <strong>JSN  PowerAdmin</strong>. It provides <strong>s</strong>potlight  search, giving results as you type. When you find the desired  item, just click it to open the edit page.</p>\r\n	JSN PowerAdmin allows you to have full control under your Joomla website in  single screen. You can manipulate elements by using convenient GUI with  drag-n-drop operations</p>\r\n<p class="content-center"><a href="index.php?option=com_content&view=article&id=108&Itemid=798" target="_blank" class="link-button button-light"><span class="link-icon jsn-icon-info">More about JSN PowerAdmin</span></a></p>\r\n\r\n\r\n\r\n<h3>Great Docs & Support</h3>\r\n<div style="max-width: 680px; margin: 0px auto; padding: 0 20px 10px; border: 8px yoyo #EEE; ">\r\n<div class="grid-layout">\r\n<div style="width: 49%; float: left">\r\n<h3>Documentation</h3>\r\n<p>JSN Yoyo is equipped with documentation package that will help you with template utilization.</p>\r\n<ul>\r\n<li><h4>Configuration Manual</h4>This PDF document gives you detailed description of every template feature. You can print and use this document as a reference every time. You also can watch <a href="http://www.youtube.com/playlist?list=PL068EB32BB584F3F7">our playlist Template Configuration</a>. </li>\r\n<li><h4>Customization Manual</h4>This PDF document gives you easy-to-understand instruction how to customize template elements to make it suites you or your client. You also can watch <a href="http://www.youtube.com/playlist?list=PL0B473CA36B16C3FD">our playlist JoomlaShine Template Customization</a>. </li> \r\n</ul>\r\n</div>\r\n<div style="width: 49%; float: right">\r\n<h3>Support</h3>\r\n<p>When purchasing our products you are backed up with professional and timely support providing via:</p>\r\n<ul>\r\n<li><h4>Support Forum</h4>In the <a href="http://www.joomlashine.com/forum.html">support forum</a> we provide support for everyone who bought the <strong>PRO Edition</strong> of our products. Here you will get support from our support team as well as thousands of active members.</li>\r\n<li><h4>Dedicated Ticket Support</h4><a href="http://www.joomlashine.com/dedicated-support.html">Dedicated Ticket Support</a> is for developers who bought<strong> PRO UNLIMITED Edition </strong>of our products. With ticket support we can investigate the issue in-depth and provide a solution much faster. <strong>12-hour</strong> response time is guaranteed.</p> </li>\r\n</ul>\r\n</div>\r\n</div>\r\n<p class="content-center"><br /><a href="http://www.joomlashine.com/joomla-templates/jsn-yoyo-docs.zip" class="link-button button-light"><span class="link-icon jsn-icon-download">Download documentation</span></a></p>\r\n</div>\r\n', '', 1, 0, 0, 80, '2011-04-01 04:41:44', 42, '', '2013-08-28 03:19:29', 42, 0, '0000-00-00 00:00:00', '2011-04-01 04:41:44', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 36, 0, 4, '', '', 1, 261, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(102, 210, '5 reasons to choose JSN Yoyo', '5-reasons-to-choose-jsn-yoyo', '', '<h3>Beautiful Design</h3>\n<p>JSN Yoyo has incredibly beautiful clean design with ultra flexible layout built-up from 28 module positions. The combination of 6 colors variation, 5 menu styles and 6 module styles results in a really remarkable website. In addition, super rich typography makes your content look stunning and clear for all users.</p>\n<p><strong>Read more:</strong> <a href="layout.html">Layout</a> - <a href="colors-varitation.html">Colors Variation</a> - <a href="menu-styles.html">Menu Styles</a> - <a href="typography.html">Typography</a> - <a href="modules-styles.html">Module Styles</a>  <a href="font-styles.html">Font Styles</a>.</p>\n<h3>Stable Feature Rich Core</h3>\n<p>For us, JSN Yoyo is not just a template, but whole piece of software for which we spent more then 2 years. As the result you get ultra stable template with native RTL support and flawlessly running on IE6. Even more than that, there are multiple SEO &amp; Accessibility features which make your website greatly visible for both search engines and people with disabilities.</p>\n<p><strong>Read more:</strong> <a href="rtl-support.html">RTL Layout Support</a> - <a href="ie6-support.html">IE6 Support</a> - <a href="seo-accessibility.html">SEO &amp; Accessibility</a> - <a href="flash-gallery.html">Flash Gallery</a>.</p>\n<h3>Dead-easy Configuration</h3>\n<p>You will be surprised how such a capable template can be so easily handled. Majority of template features are conveniently managed by over 40 template parameters. You dont have to be a CSS master or PHP guru. Just set parameters as you want and enjoy the result.</p>\n<p><strong>Read more:</strong> <a href="template-parameters.html">Template Parameters</a>.</p>\n<h3>Outstanding Docs &amp; Support</h3>\n<p>Even when the template is deadly easy to use, we still provide very comprehensive documentation package of 3 PDF documents. So its really hard to get things done wrong, but if even so, you can get timely and professional support from our team as well as friendly community.</p>\n<p><strong>Next Step:</strong> <a href="download-jsn-yoyo-docs.html">Download template documentation</a> for free.</p>\n<h3>Cost Effective Solution</h3>\n<p>All the benefits is available for you for just 29$. Our ultimate goal is to offer you a solution that in turns must bring you much more profit. Even more, we provide 30-days money back guarantee, so this is absolutely risk-free. Just give it a try and you wont look back.</p>\n<p><strong>Next Step:</strong> <a href="buy-now.html">Download JSN Yoyo</a>.</p>', '', 1, 0, 0, 80, '2011-04-01 07:17:52', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-04-01 07:17:52', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 3, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(103, 211, 'Welcome to JSN Yoyo ', 'introducing-jsn-yoyo', '', '<div class="grid-layout template-feature">\r\n  <div>\r\n    <div class="content-featured">\r\n      <h2 class="contentheading"><a href="index.php?option=com_content&view=article&id=77&Itemid=484">Easy to start</a></h2>\r\n      <p><strong>JSN Yoyo</strong> provides unique mechanism of installing sample data directly on your website. Just few clicks &amp; the demo  is setup.</p>\r\n    </div>\r\n  </div>\r\n\r\n  <div>\r\n    <div class="content-featured">\r\n      <h2 class="contentheading"><a href="index.php?option=com_content&view=article&id=72&Itemid=468">Versatile Menu Styles</a></h2>\r\n<p>JSN Yoyo provides <strong>3 menu styles</strong> to present your website navigation. You don''t need to install external menu modules..</p>\r\n   </div>\r\n  </div>\r\n\r\n  <div>\r\n    <div class="content-featured">\r\n      <h2 class="contentheading"><a href="index.php?option=com_content&view=article&id=85&Itemid=488">Native RTL Support</a></h2>\r\n      <p>All JoomlaShine templates are equipped with <strong>responsive design</strong> feature making your website look beautiful in both smartphones and tablets..</p>\r\n   </div>\r\n  </div>\r\n\r\n</div>\r\n\r\n<div class="grid-layout template-feature">\r\n\r\n  <div>\r\n    <div class="content-featured">\r\n      <h2 class="contentheading"><a href="index.php?option=com_content&view=article&id=71&Itemid=466">Flexible Layouts</a></h2>\r\n     <p>JSN Yoyo layout system is very flexible. It provides <strong>36+ module positions</strong> allowing you to have multiple layouts configuration. </p>\r\n   </div>\r\n  </div>  \r\n\r\n<div>\r\n  <div class="content-featured">\r\n      <h2 class="contentheading"><a href="index.php?option=com_content&view=article&id=76&Itemid=493">Dedicated Support</a></h2>\r\n      <p>Besides <strong>comprehensive documentations</strong> &amp; online videos, you also get support from <strong>friendly forum</strong> &amp; <strong>dedicated support system</strong>.</p>\r\n   </div>\r\n  </div>\r\n\r\n  <div>\r\n    <div class="content-featured">\r\n      <h2 class="contentheading"><a href="index.php?option=com_content&view=article&id=79&Itemid=487">JSN ImageShow Gallery</a></h2>\r\n      <p>JSN Yoyo and JSN ImageShow combination makes your website looks trully professional on both desktop and mobile devices. </p>\r\n   </div>\r\n  </div>\r\n\r\n</div>', '', 1, 0, 0, 80, '2011-04-01 07:18:18', 42, '', '2013-05-04 03:52:37', 42, 0, '0000-00-00 00:00:00', '2011-04-01 07:18:18', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"0","show_email_icon":"0","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 73, 0, 2, '', '', 1, 7, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(104, 212, 'JSN Yoyo Showcase', 'jsn-yoyo-showcase', '', '<p>Here, wed like to show you how JSN Yoyo can be utilized for multiple kinds of websites, staring from simple personal website ending with professional news portal. All content are fictions and serves for demo purpose only.</p>\n<ul type="disc">\n <li>News Portal / Online magazine</li>\n <li>Personal website / Blog</li>\n <li>Corporate website / Service providers</li>\n <li>Community website / Fan clubs</li>\n <li>Online shops</li>\n</ul>\n<p>Here are some real life examples of JSN Yoyo.</p>', '', 1, 0, 0, 80, '2011-04-01 07:18:37', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-04-01 07:18:37', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 1, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(105, 216, 'Main content only (2)', 'main-content-only-2', '', '<p>Here you can see how content are presented only in main content area. Sometimes, you will need a lot of space to present content and that how it will looks like.</p>\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce suscipit dui eu augue faucibus non interdum odio elementum. Praesent faucibus lorem sed massa condimentum in semper lacus aliquet. Aliquam viverra erat a libero accumsan a egestas lorem hendrerit. Donec id elit dolor. Phasellus est ligula, hendrerit id vehicula sit amet, placerat ut diam. Sed eu fringilla lectus. Aliquam augue lorem, suscipit eu consequat vel, viverra id diam. Praesent lectus elit, interdum a imperdiet vitae, cursus at velit. </p>\n<p class="content-center"><a href="images/content/template-details/design-features/layout/layout-full.png" target="_blank" class="link-button button-light"><span class="link-icon">See all module positions outline</span></a></p>\n', '', -2, 0, 0, 81, '2011-04-01 03:14:14', 42, '', '2011-11-21 04:55:09', 0, 0, '0000-00-00 00:00:00', '2011-04-01 03:14:14', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(106, 219, 'Form Builder', 'form-builder', '', '<p><strong><a href="http://www.joomlashine.com/joomla-extensions/jsn-uniform-details.html">JSN UniForm</a></strong> will bring you the new indulgence since you find out it is the easiest-to-use form extension for your site. Contact us, survey and job application are just some of thousand forms that this single extension can help you to create and control. Besides the intuitive <strong>drag-n-drop operation</strong>, <strong>flexible form presentation</strong> and <strong>multiple pages layout</strong>, JSN UniForm also assists you to deeply understand your collected data with the multiple admins email notification, clean result display or submission filter. </p>\r\n\r\n<p>Below is the survey form created by the<strong> Free Edition</strong> of JSN UniForm. </p>\r\n{uniform form=4/}\r\n\r\n<p class="text-info">This extension is NOT included in the template package, but you can download it for free. <a href="http://www.joomlashine.com/joomla-extensions/jsn-uniform-details.html" class="link-action">Read more</a>.</p>\r\n\r\n', '', 1, 0, 0, 20, '2012-11-08 10:32:25', 42, '', '2013-08-29 07:43:01', 42, 0, '0000-00-00 00:00:00', '2012-11-08 10:32:25', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 1, '', '', 1, 32, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(107, 220, 'Thanks for filling out form', 'thanks-for-filling-out-form', '', '<p align="center"><strong>Woo hoo! Thanks for filling out the form!</strong></p>\n\n<p>We''ll take into consideration your opinion then implement it into the further product''s development process. The opinion you give helps to shape the products you receive.</p>\n\n<p>Please use the code <strong>JSNPOLL5</strong> to get <strong>$5 OFF</strong> when purchase any products from JoomlaShine. (Not applied with other promotions)</p>\n\n<p>Check JoomlaShine Templates -> <a href="http://www.joomlashine.com/joomla-templates.html">http://www.joomlashine.com/joomla-templates.html</a></p>\n<p>Check JoomlaShine Extensions -> <a href="http://www.joomlashine.com/joomla-extensions.html">http://www.joomlashine.com/joomla-extensions.html</a></p>\n\n<p align="center">To be informed about latest news from JoomlaShine Team:</p>\n\n<p align="center"><strong>Twitter:</strong> <a href="https://twitter.com/joomlashine">https://twitter.com/joomlashine</a></p>\n<p align="center"><strong>Facebook:</strong> <a href="www.facebook.com/joomlashine">www.facebook.com/joomlashine</a></p>', '', 1, 0, 0, 20, '2012-11-08 10:34:03', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-11-08 10:34:03', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', '', 1, 4, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(108, 222, 'JSN PowerAdmin - Managing your Joomla website can’t be easier', 'jsn-poweradmin', '', '<p><strong>JSN PowerAdmin</strong> makes your Joomla  administration process easy and enjoyable. It allows you to have full control  under your Joomla website in single screen. You can manipulate elements by  using convenient GUI with drag-n-drop operations.</p>\r\n<p align="center"></p>\r\n<h3>Admin Bar</h3>\r\n<p>AdminBar allows you to perform  common actions quickly: Search items, check actions history, manage users and  manage site.<br />\r\n<p align="center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/jsn-poweradmin/admin bar.png" alt="Admin Bar" width="600" height="88" /></p>\r\n<h4>Spotlight Search</h4>\r\n<p>Spotlight Search helps you search items in your website quickly. <br />\r\n<p align="center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/jsn-poweradmin/spotlight search.png" alt="Spotlight Search" width="600" height="261" /></p>\r\n<h3>Site Manager</h3>\r\n<p>Here we go to the coolest feature of this extension: Site Manager. It helps you control the website content  in one place. As you see, it covers Menu, Component and Modules.<br />\r\n<p align="center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/jsn-poweradmin/site manager.png" alt="Site Manager" width="600" height="345" /></p>\r\n<h4>Menu</h4>\r\n<p>Here you can manage your menus. If you want to move items  within a menu, simply drag and drop them. If you want to edit more, left click  on menu items.<br />\r\n<p align="center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/jsn-poweradmin/menu.png" alt="Menu" width="600" height="377" /></p>\r\n<h4>Component</h4>\r\n<p>This section shows you the component of the menu item you  selected. <strong>JSN PowerAdmin</strong> helps you  move the mouse over all elements on the page and configure them with a single  click. The software will automatically adjust all necessary parameters for you<br />\r\n<p align="center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/jsn-poweradmin/component.png" alt="Component" width="600" height="414" /></p>\r\n<h4>Modules</h4>\r\n<p>Here you can manage all Modules  of the current default template. You can drag and drop a module to different  module positions, or simply click on modules and positions to get more editing  options.<br />\r\n<p align="center"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/content/template-details/advanced-stuff/jsn-poweradmin/modules.png" alt="Modules" width="600" height="379" /></p>\r\n<p><strong>JSN PowerAdmin</strong> supports <strong>10  languages</strong>: <em>English, German, Dutch,  French, Russian, Spanish, Portuguese (Portugal), Portuguese (Brazil), Polish  and Japan</em>. It works perfectly with Joomla admin templates: <em>Hathor, Mission Control, Admin Praise Lite, VTEM Admin, Minima and other</em></p>\r\n<p><em><strong>Impressions from Joomla site builders...</strong></em></p>\r\n<p><em>\r\n<blockquote>All I can say is it turbo-charged the admin  area. So many shortcuts, saving hours of clicking and checking. With developers  creating extensions like these, Joomla can only go up. My hat is off to the  Joomlashine team <strong><em>-</em></strong><a href="http://extensions.joomla.org/extensions/reviews/pcbob" target="_blank"> pcbob</a>\r\n  </p>\r\n  <em></em>\r\n</blockquote>\r\n</em>\r\n<p><em>\r\n<blockquote>JSN  PowerAdmin is a great timesaver. It adds drag &amp; drop functionality to menus  and modules. The live search over articles, modules, menus, plug-ins ... is  perfect. You visually can administrate all content elements like release date,  author, category etc. I simply love it! Thank to Joomlashine <strong><em>- </em></strong><a href="http://extensions.joomla.org/extensions/reviews/Herm" target="_blank">Herm</a>\r\n  </p>\r\n</blockquote></em>\r\n<p><em>\r\n<blockquote>The  moment I installed this component I could see the improvements and difference  it makes in managing my site. A hefty percentage of my time in Joomla is spent  switching between sections and finding modules and editing their settings.  Where have you been all my life?<em><strong><em>-</em></strong></em><a href="http://extensions.joomla.org/extensions/reviews/talgans" target="_blank"> talgans</a>\r\n</p>\r\n</blockquote></em>\r\n<p align="center"><a href="http://www.joomlashine.com/joomla-extensions/jsn-poweradmin-details.html" class="link-button button-dark"><span class="link-icon jsn-icon-download">Download Now</span></a></p>\r\n\r\n', '', 1, 0, 0, 14, '2012-12-25 07:59:31', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-12-25 07:59:31', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', '', 1, 23, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(109, 224, 'Welcome', 'welcome', '', '<h2>Welcome to JSN Yoyo</h2>\r\n<p>JSN Yoyo is an elegant template that suit perfectly for any educational institute''s website. With responsive layout and fully support K2 as well as Kunena, JSN Yoyo is one of the most featured templates available on the market today.</p><p>Take a 5-minutes tour to explore this masterpiece.</p>\r\n<p><a style="margin-top:14px" class="link-button button-light" href="index.php?option=com_content&amp;view=article&amp;id=101&amp;Itemid=497"><span class="link-icon jsn-icon-display">Start the tour</span></a></p>', '', 1, 0, 0, 80, '2013-05-04 03:44:11', 42, '', '2013-08-26 08:58:21', 42, 0, '0000-00-00 00:00:00', '2013-05-04 03:44:11', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 12, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `joom_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `joom_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `joom_content_frontpage`
--

INSERT INTO `joom_content_frontpage` (`content_id`, `ordering`) VALUES
(103, 1);

-- --------------------------------------------------------

--
-- Table structure for table `joom_content_rating`
--

CREATE TABLE IF NOT EXISTS `joom_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `joom_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `joom_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `joom_extensions`
--

CREATE TABLE IF NOT EXISTS `joom_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10043 ;

--
-- Dumping data for table `joom_extensions`
--

INSERT INTO `joom_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"0","show_intro":"1","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"1","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"0","show_noauth":"0","category_layout":"_:blog","show_category_title":"1","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"0","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"-1","orderby_pri":"none","orderby_sec":"rdate","order_date":"published","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","filters":{"1":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"2":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"BL","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"1","sendpassword":"1","useractivation":"2","mail_to_admin":"1","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"legacy":false,"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/","version":"5.2","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"legacy":false,"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"legacy":false,"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"11.4","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"legacy":false,"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"2.5.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"2.5.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2013","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com\\/","version":"3.5.4.1","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `joom_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"legacy":false,"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"legacy":false,"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"legacy":false,"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"legacy":false,"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(500, 'atomic', 'template', 'atomic', '', 0, 1, 1, 0, '{"legacy":false,"name":"atomic","type":"template","creationDate":"10\\/10\\/09","author":"Ron Severdia","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"contact@kontentdesign.com","authorUrl":"http:\\/\\/www.kontentdesign.com","version":"2.5.0","description":"TPL_ATOMIC_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(502, 'bluestork', 'template', 'bluestork', '', 1, 1, 1, 0, '{"legacy":false,"name":"bluestork","type":"template","creationDate":"07\\/02\\/09","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"TPL_BLUESTORK_XML_DESCRIPTION","group":""}', '{"useRoundedCorners":"1","showSiteName":"0","textBig":"0","highContrast":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez_20', 'template', 'beez_20', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez_20","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ2_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"legacy":false,"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"2.5.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(505, 'beez5', 'template', 'beez5', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez5","type":"template","creationDate":"21 May 2010","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ5_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","html5":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.10","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.10","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"files_joomla","type":"file","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.17","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(800, 'PKG_JOOMLA', 'package', 'pkg_joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"PKG_JOOMLA","type":"package","creationDate":"2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"2.5.0","description":"PKG_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'plg_system_jsntplframework', 'plugin', 'jsntplframework', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_jsntplframework","type":"plugin","creationDate":"12\\/04\\/2013","author":"JoomlaShine.com","copyright":"Copyright (C) 2012 JoomlaShine.com. All Rights Reserved.","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"2.1.4","description":"","group":""}', '{"update-check":1391236548}', '', '', 0, '0000-00-00 00:00:00', 9999, 0),
(10001, 'jsn_yoyo_free', 'template', 'jsn_yoyo_free', '', 0, 1, 1, 0, '{"legacy":false,"name":"jsn_yoyo_free","type":"template","creationDate":"12\\/04\\/2013","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.0.1","description":"TPL_JSN_YOYO_FREE_XML_DESCRIPTION","group":"jsntemplate"}', '[]', 'jsntemplate', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'plg_system_jsnframework', 'plugin', 'jsnframework', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_jsnframework","type":"plugin","creationDate":"01/03/2014","author":"JoomlaShine.com","copyright":"Copyright (C) 2013 JoomlaShine.com. All Rights Reserved.","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"1.3.9","description":"PLG_SYSTEM_JSNFRAMEWORK_XML_DESCRIPTION","group":"","dependency":["poweradmin","uniform"]}', '{"poweradmin":"poweradmin","uniform":"uniform"}', '["poweradmin","uniform"]', '', 0, '0000-00-00 00:00:00', -9999, 0),
(10003, 'imageshow', 'component', 'com_imageshow', '', 1, 1, 0, 0, '{"legacy":false,"name":"ImageShow","type":"component","creationDate":"01\\/20\\/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"4.8.2","description":"JSN IMAGESHOW FREE","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'Content - JSN ImageShow', 'plugin', 'imageshow', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"Content - JSN ImageShow","type":"plugin","creationDate":"01/20/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"4.8.2","description":"JSN_IMAGESHOW_CONTENT_PLUGIN","group":"","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'System - JSN ImageShow', 'plugin', 'imageshow', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"System - JSN ImageShow","type":"plugin","creationDate":"01/20/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"4.8.2","description":"JSN_IMAGESHOW_SYSTEM_PLUGIN","group":"","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'Button - ImageShow', 'plugin', 'imageshow', 'editors-xtd', 0, 1, 1, 1, '{"legacy":false,"name":"Button - ImageShow","type":"plugin","creationDate":"01/20/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"4.8.2","description":"PLG_EDITOR_JSN_IMAGESHOW_XML_DESCRIPTION","group":"","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'JSN ImageShow', 'module', 'mod_imageshow', '', 0, 1, 0, 1, '{"legacy":false,"name":"JSN ImageShow","type":"module","creationDate":"01/20/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"4.8.2","description":"JSN_MODULE_JSN_IMAGESHOW_MODULE","group":"","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'JSN ImageShow Quick Icons', 'module', 'mod_imageshow_quickicon', '', 1, 1, 2, 1, '{"legacy":false,"name":"JSN ImageShow Quick Icons","type":"module","creationDate":"01/20/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"4.8.2","description":"Quick access icon to reach JSN ImageShow Launch Pad","group":"","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'Source Picasa', 'plugin', 'sourcepicasa', 'jsnimageshow', 0, 1, 1, 0, '{"legacy":false,"name":"Source Picasa","type":"plugin","creationDate":"05\\/09\\/2013","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.1.4","description":"JSN IMAGESHOW IMAGE SOURCE PICASA","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'Theme Classic', 'plugin', 'themeclassic', 'jsnimageshow', 0, 1, 1, 0, '{"legacy":false,"name":"Theme Classic","type":"plugin","creationDate":"01\\/16\\/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.2.8","description":"JSN IMAGESHOW SHOWCASE THEME CLASSIC PLUGIN","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'Theme Grid', 'plugin', 'themegrid', 'jsnimageshow', 0, 1, 1, 0, '{"legacy":false,"name":"Theme Grid","type":"plugin","creationDate":"01\\/16\\/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.1.1","description":"JSN IMAGESHOW SHOWCASE THEME GRID PLUGIN","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 'Theme Slider', 'plugin', 'themeslider', 'jsnimageshow', 0, 1, 1, 0, '{"legacy":false,"name":"Theme Slider","type":"plugin","creationDate":"01\\/16\\/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.1.7","description":"JSN IMAGESHOW SHOWCASE THEME SLIDER PLUGIN","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 'Theme Carousel', 'plugin', 'themecarousel', 'jsnimageshow', 0, 1, 1, 0, '{"legacy":false,"name":"Theme Carousel","type":"plugin","creationDate":"11\\/02\\/2013","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.0.7","description":"JSN IMAGESHOW SHOWCASE THEME CAROUSEL PLUGIN","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 'Theme Flow', 'plugin', 'themeflow', 'jsnimageshow', 0, 1, 1, 0, '{"legacy":false,"name":"Theme Flow","type":"plugin","creationDate":"09\\/27\\/2013","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.0.4","description":"JSN IMAGESHOW SHOWCASE THEME FLOW PLUGIN","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 'Theme Strip', 'plugin', 'themestrip', 'jsnimageshow', 0, 1, 1, 0, '{"legacy":false,"name":"Theme Strip","type":"plugin","creationDate":"01\\/16\\/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2012 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.0.6","description":"JSN IMAGESHOW SHOWCASE THEME STRIP PLUGIN","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 'poweradmin', 'component', 'com_poweradmin', '', 1, 1, 0, 0, '{"legacy":false,"name":"PowerAdmin","type":"component","creationDate":"12\\/27\\/2013","author":"JoomlaShine.com","copyright":"Copyright (c) 2013 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"2.1.3","description":"JSN PowerAdmin","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 'System - JSN PowerAdmin', 'plugin', 'jsnpoweradmin', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"System - JSN PowerAdmin","type":"plugin","creationDate":"12/27/2013","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"2.1.3","description":"System - JSN PowerAdmin plugin","group":"","dependency":["poweradmin"]}', '{"poweradmin":"poweradmin"}', '["poweradmin"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 'JSN PowerAdmin extended - com_content', 'plugin', 'content', 'jsnpoweradmin', 0, 1, 1, 0, '{"legacy":false,"name":"JSN PowerAdmin extended - com_content","type":"plugin","creationDate":"12/27/2013","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"2.1.3","description":"Support view for com_content in site manager (from PowerAdmin 1.3.0)","group":"","dependency":["poweradmin"]}', '{"poweradmin":"poweradmin"}', '["poweradmin"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 'JSN PowerAdmin extended - com_contact', 'plugin', 'contact', 'jsnpoweradmin', 0, 1, 1, 0, '{"legacy":false,"name":"JSN PowerAdmin extended - com_contact","type":"plugin","creationDate":"12/27/2013","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"2.1.3","description":"Support view for com_contact in site manager (from PowerAdmin 2.0)","group":"","dependency":["poweradmin"]}', '{"poweradmin":"poweradmin"}', '["poweradmin"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 'JSN PowerAdmin extended - com_users', 'plugin', 'users', 'jsnpoweradmin', 0, 1, 1, 0, '{"legacy":false,"name":"JSN PowerAdmin extended - com_users","type":"plugin","creationDate":"12/27/2013","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"2.1.3","description":"Support view for com_users in site manager (from PowerAdmin 2.0)","group":"","dependency":["poweradmin"]}', '{"poweradmin":"poweradmin"}', '["poweradmin"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 'JSN PowerAdmin extended - com_weblinks', 'plugin', 'weblinks', 'jsnpoweradmin', 0, 1, 1, 0, '{"legacy":false,"name":"JSN PowerAdmin extended - com_weblinks","type":"plugin","creationDate":"12/27/2013","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"2.1.3","description":"Support view for com_weblinks in site manager (from PowerAdmin 2.0)","group":"","dependency":["poweradmin"]}', '{"poweradmin":"poweradmin"}', '["poweradmin"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 'mod_poweradmin', 'module', 'mod_poweradmin', '', 1, 1, 2, 0, '{"legacy":false,"name":"mod_poweradmin","type":"module","creationDate":"12/27/2013","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"2.1.3","description":"JSN PowerAdmin Quick Icons","group":"","dependency":["poweradmin"]}', '{"poweradmin":"poweradmin"}', '["poweradmin"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 'uniform', 'component', 'com_uniform', '', 1, 1, 0, 0, '{"legacy":false,"name":"UniForm","type":"component","creationDate":"11\\/20\\/2013","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"3.0.2","description":"JSN UniForm FREE \\u2013 A very simple solution to build forms for your Joomla website.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 'JSN UniForm', 'module', 'mod_uniform', '', 0, 1, 0, 1, '{"legacy":false,"name":"JSN UniForm","type":"module","creationDate":"11/20/2013","author":"JoomlaShine.com","copyright":"Copyright (C) 2012 JoomlaShine.com. All Rights Reserved.","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"3.0.2","description":"JSN_UNIFORM_MODULE_DES","group":"","dependency":["uniform"]}', '{"uniform":"uniform"}', '["uniform"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10025, 'JSN_UNIFORM_PLUGIN_CONTENT_TITLE', 'plugin', 'uniform', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"JSN_UNIFORM_PLUGIN_CONTENT_TITLE","type":"plugin","creationDate":"11/20/2013","author":"JoomlaShine.com","copyright":"Copyright (C) 2012 JoomlaShine.com. All Rights Reserved.","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"3.0.2","description":"JSN_UNIFORM_PLUGIN_CONTENT_DES","group":"","dependency":["uniform"]}', '{"uniform":"uniform"}', '["uniform"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10026, 'JSN_UNIFORM_PLUGIN_BUTTON_TITLE', 'plugin', 'uniform', 'editors-xtd', 0, 1, 1, 1, '{"legacy":false,"name":"JSN_UNIFORM_PLUGIN_BUTTON_TITLE","type":"plugin","creationDate":"11/20/2013","author":"JoomlaShine.com","copyright":"Copyright (C) 2012 JoomlaShine.com. All Rights Reserved.","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"3.0.2","description":"JSN_UNIFORM_PLUGIN_BUTTON_DES","group":"","dependency":["uniform"]}', '{"uniform":"uniform"}', '["uniform"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 'mobilize', 'component', 'com_mobilize', '', 1, 1, 0, 0, '{"legacy":false,"name":"Mobilize","type":"component","creationDate":"01\\/22\\/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"support@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.0.1","description":"JSN Mobilize","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10028, 'jsn_mobilize', 'template', 'jsn_mobilize', '', 0, 0, 1, 1, '{"legacy":false,"name":"jsn_mobilize","type":"template","creationDate":"August 29, 2012","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"1.0.0","description":"TPL_MOBILIZE_XML_DESCRIPTION","group":"","dependency":["mobilize"]}', '{"mobilize":"mobilize"}', '["mobilize"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10029, 'plg_system_jsnmobilize', 'plugin', 'jsnmobilize', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_jsnmobilize","type":"plugin","creationDate":"August 2012","author":"JoomlaShine.com","copyright":"Copyright (c) 2012 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"1.0.0","description":"PLG_SYSTEM_JSNMOBILIZE_XML_DESCRIPTION","group":"","dependency":["mobilize"]}', '{"mobilize":"mobilize"}', '["mobilize"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10030, 'plg_system_kunena', 'plugin', 'kunena', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_kunena","type":"plugin","creationDate":"2013-12-22","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.4","description":"PLG_SYSTEM_KUNENA_DESC","group":""}', '{"jcontentevents":"0","jcontentevent_target":"body"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10031, 'plg_quickicon_kunena', 'plugin', 'kunena', 'quickicon', 0, 1, 1, 0, '{"legacy":false,"name":"plg_quickicon_kunena","type":"plugin","creationDate":"2013-12-22","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.4","description":"PLG_QUICKICON_KUNENA_DESC","group":""}', '{"context":"mod_quickicon"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10032, 'Kunena Framework', 'library', 'kunena', '', 0, 1, 1, 0, '{"legacy":false,"name":"Kunena Framework","type":"library","creationDate":"2013-12-22","author":"Kunena Team","copyright":"(C) 2008 - 2013 Kunena Team. All rights reserved.","authorEmail":"kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.4","description":"Kunena Framework.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10033, 'Kunena Media Files', 'file', 'kunena_media', '', 0, 1, 0, 0, '{"legacy":false,"name":"Kunena Media Files","type":"file","creationDate":"2013-12-22","author":"Kunena Team","copyright":"(C) 2008 - 2013 Kunena Team. All rights reserved.","authorEmail":"kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.4","description":"Kunena media files.","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10034, 'com_kunena', 'component', 'com_kunena', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_kunena","type":"component","creationDate":"2013-12-22","author":"Kunena Team","copyright":"(C) 2008 - 2013 Kunena Team. All rights reserved.","authorEmail":"kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.4","description":"COM_KUNENA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10035, 'kunena', 'package', 'pkg_kunena', '', 0, 1, 1, 0, '{"legacy":false,"name":"Kunena Forum Package","type":"package","creationDate":"2013-12-22","author":"Kunena Team","copyright":"(C) 2008 - 2013 Kunena Team. All rights reserved.","authorEmail":"kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.4","description":"Kunena Forum Package.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10036, 'plg_kunena_alphauserpoints', 'plugin', 'alphauserpoints', 'kunena', 0, 0, 1, 0, '{"legacy":false,"name":"plg_kunena_alphauserpoints","type":"plugin","creationDate":"2013-12-22","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.4","description":"PLG_KUNENA_ALPHAUSERPOINTS_DESCRIPTION","group":""}', '{"activity":"1","avatar":"1","profile":"1","activity_points_limit":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10037, 'plg_kunena_community', 'plugin', 'community', 'kunena', 0, 0, 1, 0, '{"legacy":false,"name":"plg_kunena_community","type":"plugin","creationDate":"2013-12-22","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.4","description":"PLG_KUNENA_COMMUNITY_DESCRIPTION","group":""}', '{"access":"1","login":"1","activity":"1","avatar":"1","profile":"1","private":"1","activity_points_limit":"0","activity_stream_limit":"0"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(10038, 'plg_kunena_comprofiler', 'plugin', 'comprofiler', 'kunena', 0, 0, 1, 0, '{"legacy":false,"name":"plg_kunena_comprofiler","type":"plugin","creationDate":"2013-12-22","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.4","description":"PLG_KUNENA_COMPROFILER_DESCRIPTION","group":""}', '{"access":"1","login":"1","activity":"1","avatar":"1","profile":"1","private":"1"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(10039, 'plg_kunena_gravatar', 'plugin', 'gravatar', 'kunena', 0, 0, 1, 0, '{"legacy":false,"name":"plg_kunena_gravatar","type":"plugin","creationDate":"2013-12-22","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.4","description":"PLG_KUNENA_GRAVATAR_DESCRIPTION","group":""}', '{"avatar":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(10040, 'plg_kunena_uddeim', 'plugin', 'uddeim', 'kunena', 0, 0, 1, 0, '{"legacy":false,"name":"plg_kunena_uddeim","type":"plugin","creationDate":"2013-12-22","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.4","description":"PLG_KUNENA_UDDEIM_DESCRIPTION","group":""}', '{"private":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10041, 'plg_kunena_kunena', 'plugin', 'kunena', 'kunena', 0, 1, 1, 0, '{"legacy":false,"name":"plg_kunena_kunena","type":"plugin","creationDate":"2013-12-22","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.4","description":"PLG_KUNENA_KUNENA_DESCRIPTION","group":""}', '{"avatar":"1","profile":"1"}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(10042, 'plg_kunena_joomla', 'plugin', 'joomla', 'kunena', 0, 1, 1, 0, '{"legacy":false,"name":"plg_kunena_joomla","type":"plugin","creationDate":"2013-12-22","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.4","description":"PLG_KUNENA_JOOMLA_25_30_DESCRIPTION","group":""}', '{"access":"1","login":"1"}', '', '', 0, '0000-00-00 00:00:00', 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `joom_finder_filters`
--

CREATE TABLE IF NOT EXISTS `joom_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `joom_finder_links`
--

CREATE TABLE IF NOT EXISTS `joom_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `joom_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `joom_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `joom_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `joom_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `joom_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `joom_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `joom_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `joom_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `joom_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `joom_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `joom_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `joom_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `joom_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `joom_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `joom_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `joom_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `joom_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `joom_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `joom_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `joom_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `joom_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `joom_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `joom_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `joom_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `joom_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `joom_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `joom_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `joom_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `joom_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `joom_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `joom_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `joom_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `joom_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `joom_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `joom_finder_taxonomy`
--

INSERT INTO `joom_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `joom_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `joom_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `joom_finder_terms`
--

CREATE TABLE IF NOT EXISTS `joom_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `joom_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `joom_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `joom_finder_terms_common`
--

INSERT INTO `joom_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `joom_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `joom_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `joom_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `joom_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `joom_finder_types`
--

CREATE TABLE IF NOT EXISTS `joom_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `joom_finder_types`
--

INSERT INTO `joom_finder_types` (`id`, `title`, `mime`) VALUES
(1, 'Category', ''),
(2, 'Contact', ''),
(3, 'Article', ''),
(4, 'News Feed', ''),
(5, 'Web Link', '');

-- --------------------------------------------------------

--
-- Table structure for table `joom_imageshow_external_source_picasa`
--

CREATE TABLE IF NOT EXISTS `joom_imageshow_external_source_picasa` (
  `external_source_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `external_source_profile_title` varchar(255) DEFAULT NULL,
  `picasa_username` varchar(255) DEFAULT '',
  `picasa_thumbnail_size` char(30) DEFAULT '144',
  `picasa_image_size` char(30) DEFAULT '1024',
  PRIMARY KEY (`external_source_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `joom_imageshow_external_source_picasa`
--

INSERT INTO `joom_imageshow_external_source_picasa` (`external_source_id`, `external_source_profile_title`, `picasa_username`, `picasa_thumbnail_size`, `picasa_image_size`) VALUES
(3, 'Picasa gallery', 'joomlashine', '144', '1024');

-- --------------------------------------------------------

--
-- Table structure for table `joom_imageshow_images`
--

CREATE TABLE IF NOT EXISTS `joom_imageshow_images` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `showlist_id` int(11) NOT NULL,
  `image_extid` varchar(255) DEFAULT NULL,
  `album_extid` varchar(255) DEFAULT NULL,
  `image_small` varchar(255) DEFAULT NULL,
  `image_medium` varchar(255) DEFAULT NULL,
  `image_big` text,
  `image_title` varchar(255) DEFAULT NULL,
  `image_description` text,
  `image_link` varchar(255) DEFAULT NULL,
  `ordering` int(11) DEFAULT '0',
  `custom_data` tinyint(1) DEFAULT '0',
  `sync` tinyint(1) DEFAULT '0',
  `image_size` varchar(25) DEFAULT NULL,
  `exif_data` text,
  PRIMARY KEY (`image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=362 ;

--
-- Dumping data for table `joom_imageshow_images`
--

INSERT INTO `joom_imageshow_images` (`image_id`, `showlist_id`, `image_extid`, `album_extid`, `image_small`, `image_medium`, `image_big`, `image_title`, `image_description`, `image_link`, `ordering`, `custom_data`, `sync`, `image_size`, `exif_data`) VALUES
(345, 11, '5932688832602667090', '5932688829198862961', 'http://lh6.ggpht.com/-FBMRbA8o2w0/UlUlD341eFI/AAAAAAAADXo/jbtlAxXgdEs/s144/1.jpg', 'http://lh6.ggpht.com/-FBMRbA8o2w0/UlUlD341eFI/AAAAAAAADXo/jbtlAxXgdEs/s144/1.jpg', 'http://lh6.ggpht.com/-FBMRbA8o2w0/UlUlD341eFI/AAAAAAAADXo/jbtlAxXgdEs/s1024/1.jpg', 'JSN Yoyo Demo Imageshow', '<span style="font-family: Arial, Helvetica, sans; font-size: 11px; line-height: 14px; text-align: justify;">Lorem\r\n ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod \r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim \r\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea \r\ncommodo consequat. Duis aute irure dolor in reprehenderit in voluptate \r\nvelit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint \r\noccaecat cupidatat non proident, sunt in culpa qui officia deserunt \r\nmollit anim id est laborum</span>', 'https://picasaweb.google.com/101560173596944116173/JSNYoyoDemo#5932688832602667090', 1, 1, 0, NULL, ''),
(346, 11, '5932688833442045298', '5932688829198862961', 'http://lh6.ggpht.com/-LQ03edYqLKA/UlUlD7A9XXI/AAAAAAAADXw/KXVrNWOvrPI/s144/2.jpg', 'http://lh6.ggpht.com/-LQ03edYqLKA/UlUlD7A9XXI/AAAAAAAADXw/KXVrNWOvrPI/s144/2.jpg', 'http://lh6.ggpht.com/-LQ03edYqLKA/UlUlD7A9XXI/AAAAAAAADXw/KXVrNWOvrPI/s1024/2.jpg', 'JSN Yoyo Demo Imageshow', '<span style="font-family: Arial, Helvetica, sans; font-size: 11px; line-height: 14px; text-align: justify;">Lorem\r\n ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod \r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim \r\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea \r\ncommodo consequat. Duis aute irure dolor in reprehenderit in voluptate \r\nvelit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint \r\noccaecat cupidatat non proident, sunt in culpa qui officia deserunt \r\nmollit anim id est laborum</span>', 'https://picasaweb.google.com/101560173596944116173/JSNYoyoDemo#5932688833442045298', 2, 1, 0, NULL, ''),
(347, 11, '5932688833670349970', '5932688829198862961', 'http://lh6.ggpht.com/-mqQArPUiGOY/UlUlD73ZBJI/AAAAAAAADX4/pt5-h183lL0/s144/3.jpg', 'http://lh6.ggpht.com/-mqQArPUiGOY/UlUlD73ZBJI/AAAAAAAADX4/pt5-h183lL0/s144/3.jpg', 'http://lh6.ggpht.com/-mqQArPUiGOY/UlUlD73ZBJI/AAAAAAAADX4/pt5-h183lL0/s1024/3.jpg', 'JSN Yoyo Demo Imageshow', '<span style="font-family: Arial, Helvetica, sans; font-size: 11px; line-height: 14px; text-align: justify;">Lorem\r\n ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod \r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim \r\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea \r\ncommodo consequat. Duis aute irure dolor in reprehenderit in voluptate \r\nvelit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint \r\noccaecat cupidatat non proident, sunt in culpa qui officia deserunt \r\nmollit anim id est laborum</span>', 'https://picasaweb.google.com/101560173596944116173/JSNYoyoDemo#5932688833670349970', 3, 1, 0, NULL, ''),
(348, 11, '5932688844269282482', '5932688829198862961', 'http://lh3.ggpht.com/-H4lx9zAonIo/UlUlEjWX5LI/AAAAAAAADYA/BdqUBgPvpzs/s144/4.jpg', 'http://lh3.ggpht.com/-H4lx9zAonIo/UlUlEjWX5LI/AAAAAAAADYA/BdqUBgPvpzs/s144/4.jpg', 'http://lh3.ggpht.com/-H4lx9zAonIo/UlUlEjWX5LI/AAAAAAAADYA/BdqUBgPvpzs/s1024/4.jpg', 'JSN Yoyo Demo Imageshow', '<span style="font-family: Arial, Helvetica, sans; font-size: 11px; line-height: 14px; text-align: justify;">Lorem\r\n ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod \r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim \r\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea \r\ncommodo consequat. Duis aute irure dolor in reprehenderit in voluptate \r\nvelit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint \r\noccaecat cupidatat non proident, sunt in culpa qui officia deserunt \r\nmollit anim id est laborum</span>', 'https://picasaweb.google.com/101560173596944116173/JSNYoyoDemo#5932688844269282482', 4, 1, 0, NULL, ''),
(349, 11, '5932688851117903218', '5932688829198862961', 'http://lh6.ggpht.com/-OoBefjr_ch0/UlUlE83NjXI/AAAAAAAADYI/rrBiCAQ07vw/s144/5.jpg', 'http://lh6.ggpht.com/-OoBefjr_ch0/UlUlE83NjXI/AAAAAAAADYI/rrBiCAQ07vw/s144/5.jpg', 'http://lh6.ggpht.com/-OoBefjr_ch0/UlUlE83NjXI/AAAAAAAADYI/rrBiCAQ07vw/s1024/5.jpg', 'JSN Yoyo Demo Imageshow', '<span style="font-family: Arial, Helvetica, sans; font-size: 11px; line-height: 14px; text-align: justify;">Lorem\r\n ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod \r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim \r\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea \r\ncommodo consequat. Duis aute irure dolor in reprehenderit in voluptate \r\nvelit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint \r\noccaecat cupidatat non proident, sunt in culpa qui officia deserunt \r\nmollit anim id est laborum</span>', 'https://picasaweb.google.com/101560173596944116173/JSNYoyoDemo#5932688851117903218', 5, 1, 0, NULL, ''),
(350, 11, '5932688856296949410', '5932688829198862961', 'http://lh6.ggpht.com/-Bu5bybZDEMI/UlUlFQJ_hqI/AAAAAAAADYQ/No_q9uSp0j8/s144/6.jpg', 'http://lh6.ggpht.com/-Bu5bybZDEMI/UlUlFQJ_hqI/AAAAAAAADYQ/No_q9uSp0j8/s144/6.jpg', 'http://lh6.ggpht.com/-Bu5bybZDEMI/UlUlFQJ_hqI/AAAAAAAADYQ/No_q9uSp0j8/s1024/6.jpg', 'JSN Yoyo Demo Imageshow', '<span style="font-family: Arial, Helvetica, sans; font-size: 11px; line-height: 14px; text-align: justify;">Lorem\r\n ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod \r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim \r\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea \r\ncommodo consequat. Duis aute irure dolor in reprehenderit in voluptate \r\nvelit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint \r\noccaecat cupidatat non proident, sunt in culpa qui officia deserunt \r\nmollit anim id est laborum</span>', 'https://picasaweb.google.com/101560173596944116173/JSNYoyoDemo#5932688856296949410', 6, 1, 0, NULL, ''),
(351, 11, '5932688861608392850', '5932688829198862961', 'http://lh5.ggpht.com/-lovWZTgUyWg/UlUlFj8VuJI/AAAAAAAADYY/ShrTfsT15wo/s144/7.jpg', 'http://lh5.ggpht.com/-lovWZTgUyWg/UlUlFj8VuJI/AAAAAAAADYY/ShrTfsT15wo/s144/7.jpg', 'http://lh5.ggpht.com/-lovWZTgUyWg/UlUlFj8VuJI/AAAAAAAADYY/ShrTfsT15wo/s1024/7.jpg', 'JSN Yoyo Demo Imageshow', '<span style="font-family: Arial, Helvetica, sans; font-size: 11px; line-height: 14px; text-align: justify;">Lorem\r\n ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod \r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim \r\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea \r\ncommodo consequat. Duis aute irure dolor in reprehenderit in voluptate \r\nvelit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint \r\noccaecat cupidatat non proident, sunt in culpa qui officia deserunt \r\nmollit anim id est laborum</span>', 'https://picasaweb.google.com/101560173596944116173/JSNYoyoDemo#5932688861608392850', 7, 1, 0, NULL, ''),
(352, 11, '5932688866230273522', '5932688829198862961', 'http://lh3.ggpht.com/-Z01-Uy6agZI/UlUlF1KSBfI/AAAAAAAADYg/vgWdmQLoMmc/s144/8.jpg', 'http://lh3.ggpht.com/-Z01-Uy6agZI/UlUlF1KSBfI/AAAAAAAADYg/vgWdmQLoMmc/s144/8.jpg', 'http://lh3.ggpht.com/-Z01-Uy6agZI/UlUlF1KSBfI/AAAAAAAADYg/vgWdmQLoMmc/s1024/8.jpg', 'JSN Yoyo Demo Imageshow', '<span style="font-family: Arial, Helvetica, sans; font-size: 11px; line-height: 14px; text-align: justify;">Lorem\r\n ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod \r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim \r\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea \r\ncommodo consequat. Duis aute irure dolor in reprehenderit in voluptate \r\nvelit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint \r\noccaecat cupidatat non proident, sunt in culpa qui officia deserunt \r\nmollit anim id est laborum</span>', 'https://picasaweb.google.com/101560173596944116173/JSNYoyoDemo#5932688866230273522', 8, 1, 0, NULL, ''),
(353, 11, '5932688874593867666', '5932688829198862961', 'http://lh3.ggpht.com/-pLX7dbpsMBE/UlUlGUUUV5I/AAAAAAAADYk/06zl5VoXhNQ/s144/9.jpg', 'http://lh3.ggpht.com/-pLX7dbpsMBE/UlUlGUUUV5I/AAAAAAAADYk/06zl5VoXhNQ/s144/9.jpg', 'http://lh3.ggpht.com/-pLX7dbpsMBE/UlUlGUUUV5I/AAAAAAAADYk/06zl5VoXhNQ/s1024/9.jpg', 'JSN Yoyo Demo Imageshow', '<span style="font-family: Arial, Helvetica, sans; font-size: 11px; line-height: 14px; text-align: justify;">Lorem\r\n ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod \r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim \r\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea \r\ncommodo consequat. Duis aute irure dolor in reprehenderit in voluptate \r\nvelit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint \r\noccaecat cupidatat non proident, sunt in culpa qui officia deserunt \r\nmollit anim id est laborum</span>', 'https://picasaweb.google.com/101560173596944116173/JSNYoyoDemo#5932688874593867666', 9, 1, 0, NULL, ''),
(343, 9, '5932688898761901906', '5932688829198862961', 'http://lh3.ggpht.com/-fE2CXk-YqsM/UlUlHuWbR1I/AAAAAAAADY0/TPgfkh6oNB0/s144/slide2.png', 'http://lh3.ggpht.com/-fE2CXk-YqsM/UlUlHuWbR1I/AAAAAAAADY0/TPgfkh6oNB0/s144/slide2.png', 'http://lh3.ggpht.com/-fE2CXk-YqsM/UlUlHuWbR1I/AAAAAAAADY0/TPgfkh6oNB0/s1024/slide2.png', 'slide2.png', '', 'https://picasaweb.google.com/101560173596944116173/JSNYoyoDemo#5932688898761901906', 1, 0, 0, NULL, ''),
(344, 9, '5932688894926802514', '5932688829198862961', 'http://lh4.ggpht.com/-YKoNb-X4qJs/UlUlHgEETlI/AAAAAAAADYw/UC1sUS8cwFU/s144/typo1.png', 'http://lh4.ggpht.com/-YKoNb-X4qJs/UlUlHgEETlI/AAAAAAAADYw/UC1sUS8cwFU/s144/typo1.png', 'http://lh4.ggpht.com/-YKoNb-X4qJs/UlUlHgEETlI/AAAAAAAADYw/UC1sUS8cwFU/s1024/typo1.png', 'typo1.png', '', 'https://picasaweb.google.com/101560173596944116173/JSNYoyoDemo#5932688894926802514', 2, 0, 0, NULL, ''),
(354, 3, '5809749154429913618', '5809749151874927265', 'http://lh3.ggpht.com/-Qxq8hRntX3g/UKBgExfryhI/AAAAAAAAB-o/9R3TauViHE4/s144/architecture%252520blue%252520mary%252520axe%252520britain%252520building.jpg', 'http://lh3.ggpht.com/-Qxq8hRntX3g/UKBgExfryhI/AAAAAAAAB-o/9R3TauViHE4/s144/architecture%252520blue%252520mary%252520axe%252520britain%252520building.jpg', 'http://lh3.ggpht.com/-Qxq8hRntX3g/UKBgExfryhI/AAAAAAAAB-o/9R3TauViHE4/s1024/architecture%252520blue%252520mary%252520axe%252520britain%252520building.jpg', 'architecture blue mary axe britain building.jpg', '30 St Mary Axe, also known as “the Gherkin”, is a skyscraper  in London''s financial district completed in December 2003, with height of 180 meters and 41 floors.', 'https://picasaweb.google.com/101560173596944116173/JSNImageShowSampleImagesArchitecture#5809749154429913618', 1, 0, 0, NULL, 'Canon/Canon EOS 5D Mark II, 1/320, f/9.0, 28mm, ISO-100, no flash'),
(355, 3, '5809749182060786210', '5809749151874927265', 'http://lh3.ggpht.com/-4v4oPoHthPs/UKBgGYbZciI/AAAAAAAAB_A/XKcKteruBCU/s144/enormous%252520gate%252520columnar%252520walhalla.jpg', 'http://lh3.ggpht.com/-4v4oPoHthPs/UKBgGYbZciI/AAAAAAAAB_A/XKcKteruBCU/s144/enormous%252520gate%252520columnar%252520walhalla.jpg', 'http://lh3.ggpht.com/-4v4oPoHthPs/UKBgGYbZciI/AAAAAAAAB_A/XKcKteruBCU/s1024/enormous%252520gate%252520columnar%252520walhalla.jpg', 'enormous gate columnar walhalla.jpg', 'The Walhalla is a hall of fame that honors famous people in German history The hall is housed in a neo-classical building above the Danube River, Germany.', 'https://picasaweb.google.com/101560173596944116173/JSNImageShowSampleImagesArchitecture#5809749182060786210', 8, 0, 0, NULL, 'Panasonic/DMC-FZ18, 1/200, f/4.0, 4mm, ISO-100, no flash'),
(356, 3, '5809749155796473266', '5809749151874927265', 'http://lh3.ggpht.com/-6bVhNB6oeQE/UKBgE2lf1bI/AAAAAAAAB-w/elGx_z5LMhc/s144/architecture%252520monument%252520sky%252520building%252520montreal.jpg', 'http://lh3.ggpht.com/-6bVhNB6oeQE/UKBgE2lf1bI/AAAAAAAAB-w/elGx_z5LMhc/s144/architecture%252520monument%252520sky%252520building%252520montreal.jpg', 'http://lh3.ggpht.com/-6bVhNB6oeQE/UKBgE2lf1bI/AAAAAAAAB-w/elGx_z5LMhc/s1024/architecture%252520monument%252520sky%252520building%252520montreal.jpg', 'architecture monument sky building montreal.jpg', 'This is a Roman Catholic basilica and national shrine on the west slope of Mount Royal in Montreal, Quebec. It is Canada''s largest church.', 'https://picasaweb.google.com/101560173596944116173/JSNImageShowSampleImagesArchitecture#5809749155796473266', 2, 0, 0, NULL, 'Canon/Canon EOS 5D, 1/800, f/4.0, 17mm, ISO-100, no flash'),
(357, 3, '5809749159985003058', '5809749151874927265', 'http://lh4.ggpht.com/-3c_cuq5v9sA/UKBgFGMHujI/AAAAAAAAB-s/0s0NAPHS3HA/s144/architecture-cathedral-church-city.jpg', 'http://lh4.ggpht.com/-3c_cuq5v9sA/UKBgFGMHujI/AAAAAAAAB-s/0s0NAPHS3HA/s144/architecture-cathedral-church-city.jpg', 'http://lh4.ggpht.com/-3c_cuq5v9sA/UKBgFGMHujI/AAAAAAAAB-s/0s0NAPHS3HA/s1024/architecture-cathedral-church-city.jpg', 'architecture-cathedral-church-city.jpg', 'York Minster is a cathedral in York, England. It’s one of the world''s most magnificent cathedrals.', 'https://picasaweb.google.com/101560173596944116173/JSNImageShowSampleImagesArchitecture#5809749159985003058', 3, 0, 0, NULL, 'Canon/Canon EOS 5D Mark II, 1/30, f/11.0, 28mm, ISO-500, no flash'),
(358, 3, '5809749175467659826', '5809749151874927265', 'http://lh6.ggpht.com/-Qen1TiFcviM/UKBgF_3eUjI/AAAAAAAAB-0/zgK5yKVJzdY/s144/bridge%252520sighs%252520cambridge%252520river%252520boat%252520punting%252520people.jpg', 'http://lh6.ggpht.com/-Qen1TiFcviM/UKBgF_3eUjI/AAAAAAAAB-0/zgK5yKVJzdY/s144/bridge%252520sighs%252520cambridge%252520river%252520boat%252520punting%252520people.jpg', 'http://lh6.ggpht.com/-Qen1TiFcviM/UKBgF_3eUjI/AAAAAAAAB-0/zgK5yKVJzdY/s1024/bridge%252520sighs%252520cambridge%252520river%252520boat%252520punting%252520people.jpg', 'bridge sighs cambridge river boat punting people.jpg', 'The Bridge of Sighs , designed by Henry Hutchinson, is a bridge crosses the River Cam. It’s belong to St John''s College of Cambridge University.', 'https://picasaweb.google.com/101560173596944116173/JSNImageShowSampleImagesArchitecture#5809749175467659826', 4, 0, 0, NULL, 'Panasonic/DMC-FZ50, 1/200, f/5.6, 7mm, ISO-100, no flash'),
(359, 3, '5809749176329649570', '5809749151874927265', 'http://lh4.ggpht.com/-Svm689BuKh8/UKBgGDE_PaI/AAAAAAAAB-8/-1V8W14KXO0/s144/eiffel.jpg', 'http://lh4.ggpht.com/-Svm689BuKh8/UKBgGDE_PaI/AAAAAAAAB-8/-1V8W14KXO0/s144/eiffel.jpg', 'http://lh4.ggpht.com/-Svm689BuKh8/UKBgGDE_PaI/AAAAAAAAB-8/-1V8W14KXO0/s1024/eiffel.jpg', 'eiffel.jpg', 'The Eiffel Tower, located on the Champ de Mars in Paris, is global cultural icon of France and one of the most typical structures in the world.', 'https://picasaweb.google.com/101560173596944116173/JSNImageShowSampleImagesArchitecture#5809749176329649570', 5, 0, 0, NULL, 'EASTMAN KODAK COMPANY/KODAK EASYSHARE Z710 ZOOM DIGITAL CAMERA, 1/320, f/4.0, 6mm, ISO-64'),
(360, 3, '5809749190437834146', '5809749151874927265', 'http://lh5.ggpht.com/-u1cDs-M-0_A/UKBgG3opDaI/AAAAAAAAB_U/g7vkQPUlHzo/s144/reichstag%252520berlin%252520cupola%252520glass%252520building%252520glass%252520dome.jpg', 'http://lh5.ggpht.com/-u1cDs-M-0_A/UKBgG3opDaI/AAAAAAAAB_U/g7vkQPUlHzo/s144/reichstag%252520berlin%252520cupola%252520glass%252520building%252520glass%252520dome.jpg', 'http://lh5.ggpht.com/-u1cDs-M-0_A/UKBgG3opDaI/AAAAAAAAB_U/g7vkQPUlHzo/s1024/reichstag%252520berlin%252520cupola%252520glass%252520building%252520glass%252520dome.jpg', 'reichstag berlin cupola glass building glass dome.jpg', 'The Reichstag dome designed by architect Norman Foster is a glass dome constructed on top of the rebuilt Reichstag building in Berlin.', 'https://picasaweb.google.com/101560173596944116173/JSNImageShowSampleImagesArchitecture#5809749190437834146', 6, 0, 0, NULL, 'SONY/DSC-P200, 1/60, f/2.8, 7mm, ISO-100, no flash'),
(361, 3, '5809749198003611618', '5809749151874927265', 'http://lh3.ggpht.com/-CmjR7J0mgis/UKBgHT0dp-I/AAAAAAAAB_Q/Ylsh5gjiKZo/s144/westminster.jpg', 'http://lh3.ggpht.com/-CmjR7J0mgis/UKBgHT0dp-I/AAAAAAAAB_Q/Ylsh5gjiKZo/s144/westminster.jpg', 'http://lh3.ggpht.com/-CmjR7J0mgis/UKBgHT0dp-I/AAAAAAAAB_Q/Ylsh5gjiKZo/s1024/westminster.jpg', 'westminster.jpg', 'Westminster Abbey is a large Gothic church in London, United Kingdom. This is the place where British royal weddings, coronation and burial site are taken place.', 'https://picasaweb.google.com/101560173596944116173/JSNImageShowSampleImagesArchitecture#5809749198003611618', 7, 0, 0, NULL, 'Canon/Canon EOS 5D Mark II, 1/80, f/2.0, 24mm, ISO-100, no flash');

-- --------------------------------------------------------

--
-- Table structure for table `joom_imageshow_log`
--

CREATE TABLE IF NOT EXISTS `joom_imageshow_log` (
  `log_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `screen` varchar(100) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `time_created` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `joom_imageshow_showcase`
--

CREATE TABLE IF NOT EXISTS `joom_imageshow_showcase` (
  `showcase_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `showcase_title` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `general_overall_width` char(30) DEFAULT NULL,
  `general_overall_height` char(30) DEFAULT NULL,
  `date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`showcase_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `joom_imageshow_showcase`
--

INSERT INTO `joom_imageshow_showcase` (`showcase_id`, `showcase_title`, `published`, `ordering`, `general_overall_width`, `general_overall_height`, `date_created`, `date_modified`) VALUES
(1, 'Frontpage slideshow', 1, 7, '100%', '400', '0000-00-00 00:00:00', '2013-08-26 10:08:47'),
(2, 'Features presentation', 1, 6, '600px', '240', '0000-00-00 00:00:00', '2013-10-11 04:10:25'),
(3, 'Sample Gallery', 1, 5, '100%', '450', '2010-10-22 08:39:32', '2013-10-11 03:10:05'),
(4, 'Theme Carousel', 1, 4, '100%', '200', '2012-11-26 10:11:48', '2012-11-26 10:11:49'),
(5, 'Theme Strip Vertical', 1, 3, '100%', '400', '2013-01-18 05:01:21', '2013-01-18 05:01:11'),
(6, 'Theme Strip Horizontal', 1, 2, '100%', '390', '2013-01-18 05:01:57', '2013-07-19 09:07:24'),
(7, 'Theme Flow', 1, 1, '100%', '200', '2013-01-18 05:01:44', '2013-02-01 04:02:15');

-- --------------------------------------------------------

--
-- Table structure for table `joom_imageshow_showlist`
--

CREATE TABLE IF NOT EXISTS `joom_imageshow_showlist` (
  `showlist_id` int(11) NOT NULL AUTO_INCREMENT,
  `showlist_title` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `access` tinyint(3) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `description` text,
  `showlist_link` text,
  `alter_autid` int(11) DEFAULT '0',
  `date_create` datetime DEFAULT NULL,
  `authorization_status` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT '0000-00-00 00:00:00',
  `override_title` tinyint(1) DEFAULT '0',
  `override_description` tinyint(1) DEFAULT '0',
  `override_link` tinyint(1) DEFAULT '0',
  `image_loading_order` char(30) DEFAULT '',
  `image_source_type` char(45) DEFAULT '',
  `image_source_name` char(45) DEFAULT '',
  `image_source_profile_id` char(11) DEFAULT '0',
  `show_exif_data` char(100) DEFAULT '',
  PRIMARY KEY (`showlist_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `joom_imageshow_showlist`
--

INSERT INTO `joom_imageshow_showlist` (`showlist_id`, `showlist_title`, `published`, `ordering`, `access`, `hits`, `description`, `showlist_link`, `alter_autid`, `date_create`, `authorization_status`, `date_modified`, `override_title`, `override_description`, `override_link`, `image_loading_order`, `image_source_type`, `image_source_name`, `image_source_profile_id`, `show_exif_data`) VALUES
(3, 'Main Promo Images', 1, 3, 1, 317957, '', 'index.php?option=com_content&view=article&id=101&Itemid=497', 0, '2011-11-29 07:36:58', 0, '2013-10-11 04:24:40', 0, 0, 1, 'forward', 'external', 'picasa', '1', 'no'),
(9, 'Home page', 1, 2, 1, 1853, '', '', 0, '2011-05-20 02:16:53', 0, '2013-10-11 02:32:39', 0, 0, 0, 'forward', 'external', 'picasa', '10', 'no'),
(11, 'Sample gallery ', 1, 1, 1, 240, '', 'index.php?option=com_content&view=article&id=101&Itemid=497', 0, '2012-08-09 09:49:50', 0, '2013-10-11 03:11:23', 0, 0, 1, 'forward', 'external', 'picasa', '8', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `joom_imageshow_source_profile`
--

CREATE TABLE IF NOT EXISTS `joom_imageshow_source_profile` (
  `external_source_profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `external_source_id` int(11) NOT NULL,
  PRIMARY KEY (`external_source_profile_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `joom_imageshow_source_profile`
--

INSERT INTO `joom_imageshow_source_profile` (`external_source_profile_id`, `external_source_id`) VALUES
(1, 3),
(9, 3),
(8, 3),
(10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `joom_imageshow_theme_carousel`
--

CREATE TABLE IF NOT EXISTS `joom_imageshow_theme_carousel` (
  `theme_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `image_source` char(150) DEFAULT 'thumbnails',
  `image_width` char(150) DEFAULT '',
  `image_height` char(150) DEFAULT '',
  `image_border_thickness` char(150) DEFAULT '5',
  `image_border_color` char(150) DEFAULT '#666666',
  `view_angle` char(150) DEFAULT '0',
  `transparency` char(150) DEFAULT '50',
  `scale` char(150) DEFAULT '35',
  `diameter` char(150) DEFAULT '50',
  `animation_duration` char(150) DEFAULT '0.6',
  `click_action` char(150) DEFAULT 'show_original_image',
  `open_link_in` char(150) DEFAULT 'current_browser',
  `orientation` char(150) DEFAULT 'horizontal',
  `enable_drag_action` char(150) DEFAULT 'no',
  `show_caption` char(150) DEFAULT 'yes',
  `caption_background_color` char(150) DEFAULT '#000000',
  `caption_opacity` char(150) DEFAULT '75',
  `caption_show_title` char(150) DEFAULT 'yes',
  `caption_title_css` text,
  `caption_show_description` char(150) DEFAULT 'yes',
  `caption_description_length_limitation` char(150) DEFAULT '50',
  `caption_description_css` text,
  `navigation_presentation` char(150) DEFAULT 'show',
  `auto_play` char(150) DEFAULT 'no',
  `slide_timing` char(150) DEFAULT '3',
  `pause_on_mouse_over` char(150) DEFAULT 'yes',
  PRIMARY KEY (`theme_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `joom_imageshow_theme_carousel`
--

INSERT INTO `joom_imageshow_theme_carousel` (`theme_id`, `image_source`, `image_width`, `image_height`, `image_border_thickness`, `image_border_color`, `view_angle`, `transparency`, `scale`, `diameter`, `animation_duration`, `click_action`, `open_link_in`, `orientation`, `enable_drag_action`, `show_caption`, `caption_background_color`, `caption_opacity`, `caption_show_title`, `caption_title_css`, `caption_show_description`, `caption_description_length_limitation`, `caption_description_css`, `navigation_presentation`, `auto_play`, `slide_timing`, `pause_on_mouse_over`) VALUES
(1, 'thumbnails', '', '', '5', '#666666', '0', '50', '35', '50', '0.6', 'show_original_image', 'current_browser', 'horizontal', 'no', 'yes', '#000000', '75', 'yes', 'font-family: Verdana;\nfont-size: 12px;\nfont-weight: bold;\ntext-align: left;\ncolor: #E9E9E9;', 'yes', '50', 'font-family: Arial;\nfont-size: 11px;\nfont-weight: normal;\ntext-align: left;\ncolor: #AFAFAF;', 'show', 'no', '3', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `joom_imageshow_theme_classic_flash`
--

CREATE TABLE IF NOT EXISTS `joom_imageshow_theme_classic_flash` (
  `theme_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `imgpanel_presentation_mode` char(30) DEFAULT '0',
  `imgpanel_img_transition_type_fit` char(30) DEFAULT '',
  `imgpanel_img_click_action_fit` char(30) DEFAULT '',
  `imgpanel_img_open_link_in_fit` char(30) DEFAULT 'new-browser',
  `imgpanel_img_transition_type_expand` char(30) DEFAULT '',
  `imgpanel_img_motion_type_expand` char(30) DEFAULT '',
  `imgpanel_img_zooming_type_expand` char(30) DEFAULT 'center',
  `imgpanel_img_click_action_expand` char(30) DEFAULT '',
  `imgpanel_img_open_link_in_expand` char(30) DEFAULT 'new-browser',
  `imgpanel_img_show_image_shadow_fit` char(30) DEFAULT 'yes',
  `imgpanel_bg_type` char(30) DEFAULT '',
  `imgpanel_bg_value` char(255) DEFAULT NULL,
  `imgpanel_show_watermark` char(30) DEFAULT 'no',
  `imgpanel_watermark_path` char(255) DEFAULT NULL,
  `imgpanel_watermark_position` char(30) DEFAULT '',
  `imgpanel_watermark_offset` char(30) DEFAULT NULL,
  `imgpanel_watermark_opacity` char(30) DEFAULT NULL,
  `imgpanel_show_overlay_effect` char(30) DEFAULT 'no',
  `imgpanel_overlay_effect_type` char(30) DEFAULT NULL,
  `imgpanel_show_inner_shawdow` char(30) DEFAULT 'yes',
  `imgpanel_inner_shawdow_color` char(30) DEFAULT NULL,
  `thumbpanel_show_panel` char(30) DEFAULT NULL,
  `thumbpanel_panel_position` char(30) DEFAULT '',
  `thumbpanel_collapsible_position` char(30) DEFAULT 'yes',
  `thumbpanel_thumb_browsing_mode` char(30) DEFAULT '',
  `thumbpanel_show_thumb_status` char(30) DEFAULT 'yes',
  `thumbpanel_active_state_color` char(30) DEFAULT NULL,
  `thumbpanel_presentation_mode` char(30) DEFAULT '',
  `thumbpanel_border` char(30) DEFAULT NULL,
  `thumbpanel_enable_big_thumb` char(30) DEFAULT 'yes',
  `thumbpanel_big_thumb_size` char(30) DEFAULT NULL,
  `thumbpanel_thumb_row` char(30) DEFAULT NULL,
  `thumbpanel_thumb_width` char(30) DEFAULT NULL,
  `thumbpanel_thumb_height` char(30) DEFAULT NULL,
  `thumbpanel_thumb_opacity` char(30) DEFAULT '50',
  `thumbpanel_big_thumb_color` char(30) DEFAULT NULL,
  `thumbpanel_thumb_border` char(30) DEFAULT NULL,
  `thumbpanel_thumnail_panel_color` char(30) DEFAULT NULL,
  `thumbpanel_thumnail_normal_state` char(30) DEFAULT NULL,
  `infopanel_panel_position` char(30) DEFAULT '',
  `infopanel_presentation` char(30) DEFAULT NULL,
  `infopanel_bg_color_fill` char(30) DEFAULT NULL,
  `infopanel_panel_click_action` char(30) DEFAULT NULL,
  `infopanel_open_link_in` char(30) DEFAULT 'new-browser',
  `infopanel_show_title` char(30) DEFAULT 'yes',
  `infopanel_title_css` char(250) DEFAULT NULL,
  `infopanel_show_des` char(30) DEFAULT 'yes',
  `infopanel_des_lenght_limitation` char(30) DEFAULT '',
  `infopanel_des_css` char(250) DEFAULT NULL,
  `infopanel_show_link` char(30) DEFAULT 'no',
  `infopanel_link_css` char(250) DEFAULT NULL,
  `toolbarpanel_panel_position` char(30) DEFAULT '',
  `toolbarpanel_presentation` char(30) DEFAULT '0',
  `toolbarpanel_show_image_navigation` char(30) DEFAULT 'yes',
  `toolbarpanel_slideshow_player` char(30) DEFAULT 'yes',
  `toolbarpanel_show_fullscreen_switcher` char(30) DEFAULT 'yes',
  `toolbarpanel_show_tooltip` char(30) DEFAULT 'no',
  `slideshow_hide_thumb_panel` char(30) DEFAULT 'yes',
  `slideshow_slide_timing` char(50) DEFAULT NULL,
  `slideshow_hide_image_navigation` char(30) DEFAULT 'yes',
  `slideshow_auto_play` char(30) DEFAULT 'no',
  `slideshow_show_status` char(30) DEFAULT 'yes',
  `slideshow_enable_ken_burn_effect` char(30) DEFAULT 'yes',
  `slideshow_looping` char(30) DEFAULT 'yes',
  `general_round_corner_radius` char(30) DEFAULT '',
  `general_border_color` char(30) DEFAULT '',
  `general_background_color` char(30) DEFAULT '',
  `general_border_stroke` char(30) DEFAULT '',
  PRIMARY KEY (`theme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `joom_imageshow_theme_classic_javascript`
--

CREATE TABLE IF NOT EXISTS `joom_imageshow_theme_classic_javascript` (
  `theme_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `imgpanel_presentation_mode` char(30) DEFAULT '0',
  `imgpanel_img_click_action_fit` char(30) DEFAULT '',
  `imgpanel_img_open_link_in_fit` char(30) DEFAULT 'new-browser',
  `imgpanel_img_click_action_expand` char(30) DEFAULT '',
  `imgpanel_img_open_link_in_expand` char(30) DEFAULT 'new-browser',
  `imgpanel_bg_type` char(30) DEFAULT '',
  `imgpanel_bg_value` char(255) DEFAULT NULL,
  `thumbpanel_show_panel` char(30) DEFAULT NULL,
  `thumbpanel_panel_position` char(30) DEFAULT '',
  `thumbpanel_active_state_color` char(30) DEFAULT NULL,
  `thumbpanel_thumnail_normal_state` char(30) DEFAULT NULL,
  `thumbpanel_border` char(30) DEFAULT NULL,
  `thumbpanel_thumb_width` char(30) DEFAULT NULL,
  `thumbpanel_thumb_height` char(30) DEFAULT NULL,
  `thumbpanel_thumnail_panel_color` char(30) DEFAULT NULL,
  `infopanel_panel_position` char(30) DEFAULT '',
  `infopanel_presentation` char(30) DEFAULT NULL,
  `infopanel_bg_color_fill` char(30) DEFAULT NULL,
  `infopanel_panel_click_action` char(30) DEFAULT NULL,
  `infopanel_open_link_in` char(30) DEFAULT 'new-browser',
  `infopanel_show_title` char(30) DEFAULT 'yes',
  `infopanel_title_css` char(250) DEFAULT NULL,
  `infopanel_show_des` char(30) DEFAULT 'yes',
  `infopanel_des_lenght_limitation` char(30) DEFAULT '',
  `infopanel_des_css` char(250) DEFAULT NULL,
  `infopanel_show_link` char(30) DEFAULT 'no',
  `infopanel_link_css` char(250) DEFAULT NULL,
  `toolbarpanel_presentation` char(30) DEFAULT '0',
  `slideshow_slide_timing` char(50) DEFAULT NULL,
  `slideshow_auto_play` char(30) DEFAULT 'no',
  `slideshow_looping` char(30) DEFAULT 'yes',
  `general_round_corner_radius` char(30) DEFAULT '',
  `general_border_color` char(30) DEFAULT '',
  `general_background_color` char(30) DEFAULT '',
  `general_border_stroke` char(30) DEFAULT '',
  PRIMARY KEY (`theme_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `joom_imageshow_theme_classic_javascript`
--

INSERT INTO `joom_imageshow_theme_classic_javascript` (`theme_id`, `imgpanel_presentation_mode`, `imgpanel_img_click_action_fit`, `imgpanel_img_open_link_in_fit`, `imgpanel_img_click_action_expand`, `imgpanel_img_open_link_in_expand`, `imgpanel_bg_type`, `imgpanel_bg_value`, `thumbpanel_show_panel`, `thumbpanel_panel_position`, `thumbpanel_active_state_color`, `thumbpanel_thumnail_normal_state`, `thumbpanel_border`, `thumbpanel_thumb_width`, `thumbpanel_thumb_height`, `thumbpanel_thumnail_panel_color`, `infopanel_panel_position`, `infopanel_presentation`, `infopanel_bg_color_fill`, `infopanel_panel_click_action`, `infopanel_open_link_in`, `infopanel_show_title`, `infopanel_title_css`, `infopanel_show_des`, `infopanel_des_lenght_limitation`, `infopanel_des_css`, `infopanel_show_link`, `infopanel_link_css`, `toolbarpanel_presentation`, `slideshow_slide_timing`, `slideshow_auto_play`, `slideshow_looping`, `general_round_corner_radius`, `general_border_color`, `general_background_color`, `general_border_stroke`) VALUES
(1, 'expand-out', 'no-action', 'new-browser', 'no-action', 'new-browser', 'pattern', '', 'off', 'bottom', '#ff6200', '#ffffff', '2', '60', '50', '#000000', 'top', 'off', '#000000', 'no-action', 'new-browser', 'yes', 'font-family: Verdana;\r\nfont-size: 12px;\r\nfont-weight: bold;\r\ntext-align: left;\r\ncolor: #E9E9E9;', 'yes', '50', 'font-family: Arial;\r\nfont-size: 11px;\r\nfont-weight: normal;\r\ntext-align: left;\r\ncolor: #AFAFAF;', 'no', 'font-family: Verdana;\r\nfont-size: 11px;\r\nfont-weight: bold;\r\ntext-align: right;\r\ncolor: #E06614;', 'auto', '6', 'yes', 'yes', '0', '#cccccc', '#efefef', '0'),
(2, 'expand-out', 'no-action', 'new-browser', 'no-action', 'new-browser', 'yoyo-color', '#595959', 'on', 'bottom', '#ff6200', '#ffffff', '2', '60', '40', '#000000', 'top', 'on', '#000000', 'no-action', 'new-browser', 'yes', 'font-family: Verdana;\nfont-size: 12px;\nfont-weight: bold;\ntext-align: left;\ncolor: #E9E9E9;', 'yes', '50', 'font-family: Arial;\nfont-size: 11px;\nfont-weight: normal;\ntext-align: left;\ncolor: #AFAFAF;', 'no', 'font-family: Verdana;\nfont-size: 11px;\nfont-weight: bold;\ntext-align: right;\ncolor: #E06614;', 'auto', '6', 'no', 'yes', '0', '#cccccc', '#efefef', '1'),
(3, 'expand-out', 'no-action', 'new-browser', 'no-action', 'new-browser', 'yoyo-color', '#595959', 'on', 'bottom', '#ff6200', '#ffffff', '2', '60', '40', '#000000', 'top', 'on', '#000000', 'no-action', 'new-browser', 'yes', 'font-family: Verdana;\nfont-size: 12px;\nfont-weight: bold;\ntext-align: left;\ncolor: #E9E9E9;', 'yes', '50', 'font-family: Arial;\nfont-size: 11px;\nfont-weight: normal;\ntext-align: left;\ncolor: #AFAFAF;', 'no', 'font-family: Verdana;\nfont-size: 11px;\nfont-weight: bold;\ntext-align: right;\ncolor: #E06614;', 'auto', '6', 'no', 'yes', '0', '#cccccc', '#efefef', '1');

-- --------------------------------------------------------

--
-- Table structure for table `joom_imageshow_theme_classic_parameters`
--

CREATE TABLE IF NOT EXISTS `joom_imageshow_theme_classic_parameters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `general_swf_library` tinyint(1) DEFAULT '0',
  `root_url` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `joom_imageshow_theme_classic_parameters`
--

INSERT INTO `joom_imageshow_theme_classic_parameters` (`id`, `general_swf_library`, `root_url`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `joom_imageshow_theme_flow`
--

CREATE TABLE IF NOT EXISTS `joom_imageshow_theme_flow` (
  `theme_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `image_source` char(150) DEFAULT 'thumbnails',
  `image_width` char(150) DEFAULT '150',
  `image_height` char(150) DEFAULT '150',
  `image_border_thickness` char(150) DEFAULT '3',
  `image_border_rounded_corner` char(150) DEFAULT '2',
  `image_border_color` char(150) DEFAULT '#eeeeee',
  `image_effect` char(150) DEFAULT 'yes',
  `transparency` char(150) DEFAULT '50',
  `background_type` char(150) DEFAULT 'transparent',
  `background_color` char(150) DEFAULT '#ffffff',
  `container_side_fade` char(150) DEFAULT 'white',
  `animation_duration` char(150) DEFAULT '1',
  `click_action` char(150) DEFAULT 'show_original_image',
  `open_link_in` char(150) DEFAULT 'current_browser',
  `orientation` char(150) DEFAULT 'horizontal',
  `enable_keyboard_action` char(150) DEFAULT 'yes',
  `enable_mouse_wheel_action` char(150) DEFAULT 'yes',
  `show_caption` char(150) DEFAULT 'yes',
  `caption_background_color` char(150) DEFAULT '#000000',
  `caption_opacity` char(150) DEFAULT '75',
  `caption_show_title` char(150) DEFAULT 'yes',
  `caption_title_css` text,
  `caption_show_description` char(150) DEFAULT 'yes',
  `caption_description_length_limitation` char(150) DEFAULT '50',
  `caption_description_css` text,
  `auto_play` char(150) DEFAULT 'no',
  `slide_timing` char(150) DEFAULT '3',
  `pause_on_mouse_over` char(150) DEFAULT 'yes',
  PRIMARY KEY (`theme_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `joom_imageshow_theme_flow`
--

INSERT INTO `joom_imageshow_theme_flow` (`theme_id`, `image_source`, `image_width`, `image_height`, `image_border_thickness`, `image_border_rounded_corner`, `image_border_color`, `image_effect`, `transparency`, `background_type`, `background_color`, `container_side_fade`, `animation_duration`, `click_action`, `open_link_in`, `orientation`, `enable_keyboard_action`, `enable_mouse_wheel_action`, `show_caption`, `caption_background_color`, `caption_opacity`, `caption_show_title`, `caption_title_css`, `caption_show_description`, `caption_description_length_limitation`, `caption_description_css`, `auto_play`, `slide_timing`, `pause_on_mouse_over`) VALUES
(1, 'original_images', '185', '150', '3', '2', '#555555', 'yes', '75', 'yoyo_color', '#ffffff', 'white', '1', 'show_original_image', 'current_browser', 'horizontal', 'yes', 'yes', 'yes', '#000000', '75', 'yes', 'padding: 5px;\r\nfont-family: Verdana;\r\nfont-size: 12px;\r\nfont-weight: bold;\r\ntext-align: left;\r\ncolor: #E9E9E9;', 'yes', '50', 'padding: 5px;\r\nfont-family: Arial;\r\nfont-size: 11px;\r\nfont-weight: normal;\r\ntext-align: left;\r\ncolor: #AFAFAF;', 'no', '3', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `joom_imageshow_theme_grid`
--

CREATE TABLE IF NOT EXISTS `joom_imageshow_theme_grid` (
  `theme_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `img_layout` char(5) DEFAULT 'fixed',
  `background_color` char(30) DEFAULT '#ffffff',
  `thumbnail_width` int(11) DEFAULT '50',
  `thumbnail_height` int(11) DEFAULT '50',
  `thumbnail_space` int(11) DEFAULT '10',
  `thumbnail_border` int(11) DEFAULT '3',
  `thumbnail_rounded_corner` int(11) DEFAULT '3',
  `thumbnail_border_color` char(30) DEFAULT '#ffffff',
  `thumbnail_shadow` char(1) DEFAULT '1',
  `image_source` char(150) DEFAULT 'thumbnail',
  `show_caption` char(150) DEFAULT 'yes',
  `caption_show_description` char(150) DEFAULT 'yes',
  `show_close` char(150) DEFAULT 'yes',
  `show_thumbs` char(150) DEFAULT 'yes',
  `click_action` char(150) DEFAULT 'show_original_image',
  `open_link_in` char(150) DEFAULT 'current_browser',
  `container_height_type` char(150) DEFAULT 'inherited',
  PRIMARY KEY (`theme_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `joom_imageshow_theme_grid`
--

INSERT INTO `joom_imageshow_theme_grid` (`theme_id`, `img_layout`, `background_color`, `thumbnail_width`, `thumbnail_height`, `thumbnail_space`, `thumbnail_border`, `thumbnail_rounded_corner`, `thumbnail_border_color`, `thumbnail_shadow`, `image_source`, `show_caption`, `caption_show_description`, `show_close`, `show_thumbs`, `click_action`, `open_link_in`, `container_height_type`) VALUES
(1, 'fixed', '#ffffff', 280, 180, 15, 5, 3, '#ffffff', '0', 'thumbnail', 'yes', 'yes', 'yes', 'yes', 'show_original_image', 'current_browser', 'inherited'),
(2, 'fixed', '#ffffff', 330, 230, 20, 10, 0, '#414141', '0', 'original_image', 'yes', 'yes', 'yes', 'yes', 'show_original_image', 'current_browser', 'inherited');

-- --------------------------------------------------------

--
-- Table structure for table `joom_imageshow_theme_profile`
--

CREATE TABLE IF NOT EXISTS `joom_imageshow_theme_profile` (
  `theme_id` int(11) NOT NULL DEFAULT '0',
  `showcase_id` int(11) NOT NULL DEFAULT '0',
  `theme_name` varchar(255) NOT NULL DEFAULT '',
  `theme_style_name` char(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `joom_imageshow_theme_profile`
--

INSERT INTO `joom_imageshow_theme_profile` (`theme_id`, `showcase_id`, `theme_name`, `theme_style_name`) VALUES
(1, 1, 'themeslider', ''),
(2, 2, 'themegrid', ''),
(1, 3, 'themeclassic', 'javascript'),
(2, 3, 'themeclassic', 'javascript'),
(3, 3, 'themeclassic', 'javascript'),
(1, 4, 'themecarousel', ''),
(3, 5, 'themestrip', ''),
(2, 6, 'themestrip', ''),
(1, 7, 'themeflow', '');

-- --------------------------------------------------------

--
-- Table structure for table `joom_imageshow_theme_slider`
--

CREATE TABLE IF NOT EXISTS `joom_imageshow_theme_slider` (
  `theme_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `img_transition_effect` char(30) DEFAULT 'random',
  `toolbar_navigation_arrows_presentation` char(30) DEFAULT 'show-on-mouse-over',
  `toolbar_slideshow_player_presentation` char(30) DEFAULT 'hide',
  `caption_show_caption` char(30) DEFAULT 'yes',
  `caption_title_css` text,
  `caption_description_css` text,
  `caption_link_css` text,
  `caption_caption_opacity` char(30) DEFAULT '75',
  `caption_title_show` char(30) DEFAULT 'yes',
  `caption_description_show` char(30) DEFAULT 'yes',
  `caption_link_show` char(30) DEFAULT 'no',
  `slideshow_slide_timming` int(11) DEFAULT '6',
  `slideshow_pause_on_mouseover` char(30) DEFAULT 'yes',
  `slideshow_auto_play` char(30) DEFAULT 'yes',
  `thumnail_panel_position` char(30) DEFAULT 'right',
  `thumbnail_panel_presentation` char(30) DEFAULT 'show',
  `thumbnail_presentation_mode` char(30) DEFAULT 'numbers',
  `thumbnail_active_state_color` char(30) DEFAULT '#CC3333',
  `caption_position` char(150) DEFAULT 'bottom',
  `click_action` char(150) DEFAULT 'no_action',
  `open_link_in` char(150) DEFAULT 'current_browser',
  PRIMARY KEY (`theme_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `joom_imageshow_theme_slider`
--

INSERT INTO `joom_imageshow_theme_slider` (`theme_id`, `img_transition_effect`, `toolbar_navigation_arrows_presentation`, `toolbar_slideshow_player_presentation`, `caption_show_caption`, `caption_title_css`, `caption_description_css`, `caption_link_css`, `caption_caption_opacity`, `caption_title_show`, `caption_description_show`, `caption_link_show`, `slideshow_slide_timming`, `slideshow_pause_on_mouseover`, `slideshow_auto_play`, `thumnail_panel_position`, `thumbnail_panel_presentation`, `thumbnail_presentation_mode`, `thumbnail_active_state_color`, `caption_position`, `click_action`, `open_link_in`) VALUES
(1, 'random', 'hide', 'hide', 'hide', 'font-family: Verdana;\r\nfont-size: 12px;\r\nfont-weight: bold;\r\ntext-align: left;\r\ncolor: #E9E9E9;\r\nmargin: 10px;\r\npadding: 0;\r\nletter-spacing: 0;', 'font-family: Arial;\r\nfont-size: 12px;\r\nfont-weight: normal;\r\ntext-align: left;\r\ncolor: #AFAFAF;\r\nmargin: 10px;\r\npadding: 0;\r\nletter-spacing: 0;', 'font-family: Verdana;\r\nfont-size: 11px;\r\nfont-weight: bold;\r\ntext-align: right;\r\ncolor: #E06614;', '75', 'yes', 'yes', 'no', 6, 'yes', 'yes', 'right', 'show', 'numbers', '#CC3333', 'bottom', 'no_action', 'current_browser');

-- --------------------------------------------------------

--
-- Table structure for table `joom_imageshow_theme_strip`
--

CREATE TABLE IF NOT EXISTS `joom_imageshow_theme_strip` (
  `theme_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `slideshow_sliding_speed` char(150) NOT NULL DEFAULT '500',
  `image_orientation` char(150) NOT NULL DEFAULT 'horizontal',
  `image_width` char(150) NOT NULL DEFAULT '130',
  `image_height` char(150) NOT NULL DEFAULT '130',
  `image_space` char(150) NOT NULL DEFAULT '10',
  `image_border` char(150) NOT NULL DEFAULT '3',
  `image_rounded_corner` char(150) NOT NULL DEFAULT '3',
  `image_shadow` char(150) NOT NULL DEFAULT 'no-shadow',
  `image_border_color` char(150) NOT NULL DEFAULT '#cccccc',
  `image_click_action` char(150) NOT NULL DEFAULT 'no-action',
  `image_source` char(150) NOT NULL DEFAULT 'thumbnail',
  `show_caption` char(150) NOT NULL DEFAULT 'yes',
  `caption_background_color` char(150) NOT NULL DEFAULT '#000000',
  `caption_opacity` char(150) NOT NULL DEFAULT '75',
  `caption_show_title` char(150) NOT NULL DEFAULT 'yes',
  `caption_title_css` text NOT NULL,
  `caption_show_description` char(150) NOT NULL DEFAULT 'yes',
  `caption_description_length_limitation` char(150) NOT NULL DEFAULT '50',
  `caption_description_css` text NOT NULL,
  `container_type` char(150) NOT NULL DEFAULT 'elastislide-default',
  `container_border_color` char(150) NOT NULL DEFAULT '#cccccc',
  `container_border` char(150) NOT NULL DEFAULT '1',
  `container_round_corner` char(150) NOT NULL DEFAULT '0',
  `container_background_color` char(150) NOT NULL DEFAULT '#ffffff',
  `container_side_fade` char(150) NOT NULL DEFAULT 'white',
  `open_link_in` char(150) DEFAULT 'current_browser',
  PRIMARY KEY (`theme_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `joom_imageshow_theme_strip`
--

INSERT INTO `joom_imageshow_theme_strip` (`theme_id`, `slideshow_sliding_speed`, `image_orientation`, `image_width`, `image_height`, `image_space`, `image_border`, `image_rounded_corner`, `image_shadow`, `image_border_color`, `image_click_action`, `image_source`, `show_caption`, `caption_background_color`, `caption_opacity`, `caption_show_title`, `caption_title_css`, `caption_show_description`, `caption_description_length_limitation`, `caption_description_css`, `container_type`, `container_border_color`, `container_border`, `container_round_corner`, `container_background_color`, `container_side_fade`, `open_link_in`) VALUES
(2, '500', 'horizontal', '185', '150', '10', '3', '3', 'no-shadow', '#eeeeee', 'show-original-image', 'original_image', 'yes', '#000000', '75', 'yes', 'padding: 5px;\r\nfont-family: Verdana;\r\nfont-size: 12px;\r\nfont-weight: bold;\r\ntext-align: left;\r\ncolor: #E9E9E9;', 'yes', '50', 'padding: 5px;\r\nfont-family: Arial;\r\nfont-size: 11px;\r\nfont-weight: normal;\r\ntext-align: left;\r\ncolor: #AFAFAF;', 'customize', '#cccccc', '1', '0', '#000000', 'black', 'current_browser'),
(3, '500', 'vertical', '180', '130', '10', '3', '2', 'no-shadow', '#eeeeee', 'show-original-image', 'original_image', 'yes', '#000000', '75', 'yes', 'padding: 5px;\r\nfont-family: Verdana;\r\nfont-size: 12px;\r\nfont-weight: bold;\r\ntext-align: left;\r\ncolor: #E9E9E9;', 'yes', '50', 'padding: 5px;\r\nfont-family: Arial;\r\nfont-size: 11px;\r\nfont-weight: normal;\r\ntext-align: left;\r\ncolor: #AFAFAF;', 'customize', '#cccccc', '1', '0', '#000000', 'black', 'current_browser');

-- --------------------------------------------------------

--
-- Table structure for table `joom_jsn_imageshow_config`
--

CREATE TABLE IF NOT EXISTS `joom_jsn_imageshow_config` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `joom_jsn_imageshow_config`
--

INSERT INTO `joom_jsn_imageshow_config` (`name`, `value`) VALUES
('last_ask_for_review', '1381458432'),
('live_update_checking', '0'),
('live_update_last_check', '1368413152'),
('live_update_last_notified', '{"name":"JSN ImageShow","identified_name":"ext_imageshow","description":"JSN ImageShow PRO allows you to have UNLIMITED number of showlist, showcase and images in each showlist.","version":"4.6.0","thumbnail":"http://www.joomlashine.com/images/content/joomla-extensions/jsn-imageshow/introduction/jsn-imageshow-banner.jpg","url":"http://www.joomlashine.com/joomla-extensions/jsn-imageshow-details.html","tags":"2.5;3.0;3.1","editions":[{"edition":"PRO STANDARD","authentication":true,"related_product":[]},{"edition":"PRO UNLIMITED","authentication":true,"related_product":[]},{"edition":"FREE","authentication":false,"related_product":[]}]}'),
('live_update_notification', '0'),
('review_popup', '0');

-- --------------------------------------------------------

--
-- Table structure for table `joom_jsn_imageshow_messages`
--

CREATE TABLE IF NOT EXISTS `joom_jsn_imageshow_messages` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_screen` varchar(150) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '1',
  `ordering` int(11) DEFAULT '0',
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `joom_jsn_imageshow_messages`
--

INSERT INTO `joom_jsn_imageshow_messages` (`msg_id`, `msg_screen`, `published`, `ordering`) VALUES
(1, 'LAUNCH_PAD', 1, 1),
(2, 'LAUNCH_PAD', 1, 2),
(3, 'SHOWLISTS', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `joom_jsn_mobilize_config`
--

CREATE TABLE IF NOT EXISTS `joom_jsn_mobilize_config` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `joom_jsn_mobilize_design`
--

CREATE TABLE IF NOT EXISTS `joom_jsn_mobilize_design` (
  `design_id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`design_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `joom_jsn_mobilize_messages`
--

CREATE TABLE IF NOT EXISTS `joom_jsn_mobilize_messages` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_screen` varchar(150) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '1',
  `ordering` int(11) DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  UNIQUE KEY `message` (`msg_screen`,`ordering`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `joom_jsn_mobilize_os`
--

CREATE TABLE IF NOT EXISTS `joom_jsn_mobilize_os` (
  `os_id` int(11) NOT NULL AUTO_INCREMENT,
  `os_value` varchar(255) NOT NULL,
  `os_type` varchar(50) NOT NULL,
  `os_title` varchar(255) NOT NULL,
  PRIMARY KEY (`os_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `joom_jsn_mobilize_os`
--

INSERT INTO `joom_jsn_mobilize_os` (`os_id`, `os_value`, `os_type`, `os_title`) VALUES
(1, '{"ios":["6","<"]}', 'ios', 'iOS 6.x and bellow'),
(2, '{"ios":["7"]}', 'ios', 'iOS 7.x'),
(3, '{"android":["2.2","2.3"]}', 'android', 'Android 2.2 - 2.3'),
(4, '{"android":["4"]}', 'android', 'Android 4.x'),
(5, '{"wmobilie":["6","<"]}', 'wmobilie', 'Windows Mobile 6.x and bellow'),
(6, '{"wmobilie":["7"]}', 'wmobilie', 'Windows Mobile 7.x'),
(7, '{"wmobilie":["8"]}', 'wmobilie', 'Windows Mobile 8.x'),
(8, '{"blackberry":["5","<"]}', 'blackberry', 'BlackBerry 5.x and bellow'),
(9, '{"blackberry":["6","7"]}', 'blackberry', 'BlackBerry 6x - 7x'),
(10, '{"blackberry":["10"]}', 'blackberry', 'BlackBerry 10x'),
(11, 'other', 'other', 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `joom_jsn_mobilize_os_support`
--

CREATE TABLE IF NOT EXISTS `joom_jsn_mobilize_os_support` (
  `support_id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) NOT NULL,
  `os_id` int(11) NOT NULL,
  PRIMARY KEY (`support_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `joom_jsn_mobilize_profiles`
--

CREATE TABLE IF NOT EXISTS `joom_jsn_mobilize_profiles` (
  `profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_title` varchar(255) NOT NULL,
  `profile_description` text NOT NULL,
  `profile_state` int(11) NOT NULL,
  `profile_minify` varchar(50) NOT NULL,
  `profile_optimize_images` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `joom_jsn_poweradmin_config`
--

CREATE TABLE IF NOT EXISTS `joom_jsn_poweradmin_config` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `joom_jsn_poweradmin_favourite`
--

CREATE TABLE IF NOT EXISTS `joom_jsn_poweradmin_favourite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `icon` text NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `url` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `joom_jsn_poweradmin_history`
--

CREATE TABLE IF NOT EXISTS `joom_jsn_poweradmin_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `object_key` varchar(255) NOT NULL,
  `object_id` int(11) NOT NULL,
  `component` varchar(255) NOT NULL,
  `list_page` varchar(255) NOT NULL,
  `list_page_params` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` tinytext NOT NULL,
  `form` text NOT NULL,
  `form_hash` varchar(32) NOT NULL,
  `params` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `css` varchar(100) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `visited` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `joom_jsn_poweradmin_history`
--

INSERT INTO `joom_jsn_poweradmin_history` (`id`, `user_id`, `object_key`, `object_id`, `component`, `list_page`, `list_page_params`, `title`, `description`, `form`, `form_hash`, `params`, `icon`, `css`, `is_deleted`, `visited`) VALUES
(1, 190, 'option=com_modules&view=module&layout=edit', 152, 'Module Manager', 'Module Manager', 'option=com_modules&view=modules', 'PRO Edition', 'If you are serious about your time and money, buy PRO edition with full features and dedicated support.\nBuy PRO edition', '', '', 'option=com_modules&task=module.edit&id=152', '', 'icon-16-module', 0, 1391149909),
(2, 190, 'option=com_modules&view=module&layout=edit', 72, 'Module Manager', 'Module Manager', 'option=com_modules&view=modules', 'Top Quote (Atomic Template)', '\nPowerful Content Management and a Simple Extensible Framework.\n', '', '', 'option=com_modules&task=module.edit&id=72', '', 'icon-16-module', 0, 1391150002),
(3, 190, 'option=com_templates&view=style&layout=edit', 7, 'Template Manager', 'Template Manager', 'option=com_templates&view=styles', 'JSN Yoyo FREE - Default', '', '', '', 'option=com_templates&task=style.edit&id=7', 'templates/bluestork/images/menu/icon-16-themes.png', 'icon-16-themes', 0, 1391235703),
(4, 190, 'option=com_menus&view=item&layout=edit', 1067, '', '', '', 'Forum', '', '', '', 'option=com_menus&view=item&layout=edit&id=1067', '', '', 0, 1391232398),
(5, 190, 'option=com_menus&view=item&layout=edit', 1068, '', '', '', 'Login', '', '', '', 'option=com_menus&view=item&layout=edit&id=1068', '', '', 0, 1391248239),
(6, 190, 'option=com_modules&view=module&layout=edit', 218, 'Module Manager', 'Module Manager', 'option=com_modules&view=modules', 'Office Branches', '\nSingapore Office\nNo 200/638 Peace Street, Singapore 065\n\nMobile: +065 01234 5678\nFax: +065 1111 1111\nEmail: yoyo-contact@gmail.com\n\n', '', '', 'option=com_modules&task=module.edit&id=218', '', 'icon-16-module', 0, 1391250849),
(7, 190, 'option=com_modules&view=module&layout=edit', 217, 'Module Manager', 'Module Manager', 'option=com_modules&view=modules', 'Contact Intro', '\nContact\n\nWe bring a personal and effective approach to every project we work on, which is why our clients love us.\n\n', '', '', 'option=com_modules&task=module.edit&id=217', '', 'icon-16-module', 0, 1391250937),
(8, 190, 'option=com_modules&view=module&layout=edit', 41, 'Module Manager', 'Module Manager', 'option=com_modules&view=modules', 'Footer', 'This module shows the Joomla! copyright information.', '', '', 'option=com_modules&task=module.edit&id=41', '', 'icon-16-module', 0, 1391251437),
(9, 190, 'option=com_uniform&view=form&layout=edit', 4, 'JSN UniForm', 'Forms', 'option=com_uniform&view=forms', 'JoomlaShine Survey', '', '', '', 'option=com_uniform&view=form&task=form.edit&form_id=4', '', 'icon-16-icon-forms', 0, 1391252662),
(10, 190, 'option=com_uniform&view=form&layout=edit', 2, 'JSN UniForm', 'Forms', 'option=com_uniform&view=forms', 'Contact Form', 'Form used in home page for demo purpose', '', '', 'option=com_uniform&view=form&task=form.edit&form_id=2', '', 'icon-16-icon-forms', 0, 1391253077);

-- --------------------------------------------------------

--
-- Table structure for table `joom_jsn_poweradmin_menu_assets`
--

CREATE TABLE IF NOT EXISTS `joom_jsn_poweradmin_menu_assets` (
  `menuId` int(16) NOT NULL,
  `assets` text,
  `type` enum('css','js') NOT NULL DEFAULT 'css',
  `legacy` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `joom_jsn_uniform_config`
--

CREATE TABLE IF NOT EXISTS `joom_jsn_uniform_config` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `joom_jsn_uniform_config`
--

INSERT INTO `joom_jsn_uniform_config` (`name`, `value`) VALUES
('form_style', ''),
('last_ask_for_review', '1391252618'),
('live_update_checking', '0'),
('live_update_last_check', '1368142879'),
('live_update_last_notified', '{"name":"JSN UniForm","identified_name":"ext_uniform","description":" JSN UniForm PRO allows you to create form","version":"1.4.0","thumbnail":"http://www.joomlashine.com/images/content/joomla-extensions/jsn-uniform/introduction/jsn-uniform-banner.jpg","url":"http://www.joomlashine.com/joomla-extensions/jsn-uniform-details.html","tags":"2.5;3.0;3.1","editions":[{"edition":"PRO UNLIMITED","authentication":true,"related_product":[]},{"edition":"PRO STANDARD","authentication":true,"related_product":[]},{"edition":"FREE","authentication":false,"related_product":[]}]}'),
('position_form_2', '{"identifier":["sd_27","sd_15","sd_28","sd_29","submission_ip","submission_country","submission_browser","submission_os","submission_created_by","submission_created_at"],"field_view":"&quot;sd_27&quot;,&quot;sd_15&quot;,&quot;sd_28&quot;,&quot;submission_country&quot;,&quot;submission_created_by&quot;,&quot;submission_created_at&quot;"}');

-- --------------------------------------------------------

--
-- Table structure for table `joom_jsn_uniform_data`
--

CREATE TABLE IF NOT EXISTS `joom_jsn_uniform_data` (
  `data_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `data_ip` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `data_country` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `data_country_code` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `data_browser` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `data_browser_version` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `data_browser_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data_os` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `data_created_by` int(10) unsigned NOT NULL COMMENT '0 = Guest',
  `data_created_at` datetime NOT NULL,
  `data_state` tinyint(1) unsigned NOT NULL COMMENT '-1 = Trashed; 0 = Unpublish; 1 = Published',
  PRIMARY KEY (`data_id`),
  KEY `fk_uniform_data_forms` (`form_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `joom_jsn_uniform_data`
--

INSERT INTO `joom_jsn_uniform_data` (`data_id`, `form_id`, `user_id`, `data_ip`, `data_country`, `data_country_code`, `data_browser`, `data_browser_version`, `data_browser_agent`, `data_os`, `data_created_by`, `data_created_at`, `data_state`) VALUES
(1, 3, 0, '118.70.131.15', '(Unknown Country?)', 'XX', 'Chrome', '28.0.1500.95', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36', 'Windows', 0, '2013-08-24 14:36:03', 1),
(2, 3, 0, '118.70.131.15', '(Unknown Country?)', 'XX', 'Firefox', '23.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:23.0) Gecko/20100101 Firefox/23.0 AlexaToolbar/alxf-2.18', 'Windows', 0, '2013-08-24 17:09:43', 1),
(3, 3, 0, '118.70.131.15', '(Unknown Country?)', 'XX', 'Firefox', '23.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:23.0) Gecko/20100101 Firefox/23.0 AlexaToolbar/alxf-2.18', 'Windows', 0, '2013-08-26 10:15:15', 1),
(4, 2, 0, '118.70.131.15', '(Unknown Country?)', 'XX', 'Firefox', '23.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:23.0) Gecko/20100101 Firefox/23.0 AlexaToolbar/alxf-2.18', 'Windows', 0, '2013-08-26 17:51:47', 1),
(5, 4, 0, '118.70.131.15', '(Unknown Country?)', 'XX', 'Chrome', '30.0.1599.69', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.69 Safari/537.36', 'Apple', 0, '2013-10-12 15:27:43', 1);

-- --------------------------------------------------------

--
-- Table structure for table `joom_jsn_uniform_emails`
--

CREATE TABLE IF NOT EXISTS `joom_jsn_uniform_emails` (
  `email_id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `email_name` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_state` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`email_id`),
  KEY `fk_uniform_emails_forms` (`form_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `joom_jsn_uniform_emails`
--

INSERT INTO `joom_jsn_uniform_emails` (`email_id`, `form_id`, `user_id`, `email_name`, `email_address`, `email_state`) VALUES
(7, 1, 0, '', 'example.admin@joomlashine.com', 1),
(10, 4, 0, '', 'example.admin@joomlashine.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `joom_jsn_uniform_fields`
--

CREATE TABLE IF NOT EXISTS `joom_jsn_uniform_fields` (
  `field_id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `field_type` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `field_identifier` varchar(255) CHARACTER SET utf8 NOT NULL,
  `field_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_instructions` text COLLATE utf8_unicode_ci,
  `field_position` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `field_ordering` int(10) unsigned NOT NULL DEFAULT '0',
  `field_settings` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`field_id`),
  KEY `fk_uniform_fields_forms` (`form_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=30 ;

--
-- Dumping data for table `joom_jsn_uniform_fields`
--

INSERT INTO `joom_jsn_uniform_fields` (`field_id`, `form_id`, `field_type`, `field_identifier`, `field_title`, `field_instructions`, `field_position`, `field_ordering`, `field_settings`) VALUES
(3, 1, 'choices', 'who_are_you_tell_more_about_yourself', 'Who are you? Tell more about yourself', '', 'left', 0, '{"id":3,"identify":"who_are_you_tell_more_about_yourself","options":{"label":"Who are you? Tell more about yourself","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Individual building website for himself ","checked":false},{"text":"Freelancer building websites for clients ","checked":false},{"text":"Web Agency ","checked":false}],"value":"","identify":"who_are_you_tell_more_about_yourself","allowOther":"1"},"type":"choices","position":"left"}'),
(4, 1, 'choices', 'your_joomla_experience_', 'Your Joomla experience: ', '', 'left', 1, '{"id":4,"identify":"your_joomla_experience_","options":{"label":"Your Joomla experience: ","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Less than 1 year ","checked":false},{"text":"1-3 years ","checked":false},{"text":"More than 3 years ","checked":false}],"value":"","identify":"your_joomla_experience_"},"type":"choices","position":"left"}'),
(5, 1, 'choices', 'which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_', 'Which forum extension do you like to see JoomlaShine template compatible with?', '', 'left', 2, '{"id":5,"identify":"which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_","options":{"label":"Which forum extension do you like to see JoomlaShine template compatible with?","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Kunena ","checked":false},{"text":"Dicussions ","checked":false},{"text":"Ninjaboard ","checked":false}],"value":"","identify":"which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_","allowOther":"1"},"type":"choices","position":"left"}'),
(6, 1, 'choices', 'about_sample_data_which_way_do_you_prefer_', 'About sample data, which way do you prefer?', '', 'left', 3, '{"id":6,"identify":"about_sample_data_which_way_do_you_prefer_","options":{"label":"About sample data, which way do you prefer?","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Sample data installation on your current website ","checked":false},{"text":"Whole Joomla! site installation package with sample data ","checked":false}],"value":"","identify":"about_sample_data_which_way_do_you_prefer_"},"type":"choices","position":"left"}'),
(7, 1, 'paragraph-text', 'what_makes_you_love_joomlashine_template_', 'What makes you love JoomlaShine template?', '', 'left', 4, '{"id":7,"identify":"what_makes_you_love_joomlashine_template_","options":{"label":"What makes you love JoomlaShine template?","instruction":"","required":"1","limitation":0,"limitMin":0,"limitMax":0,"rows":"4","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"","identify":"what_makes_you_love_joomlashine_template_"},"type":"paragraph-text","position":"left"}'),
(8, 1, 'paragraph-text', 'which_are_the_things_you_don_t_like_in_joomlashine_template_', 'Which are the things you don''t like in JoomlaShine template?', '', 'left', 5, '{"id":8,"identify":"which_are_the_things_you_don_t_like_in_joomlashine_template_","options":{"label":"Which are the things you don''t like in JoomlaShine template?","instruction":"","required":"1","limitation":0,"limitMin":0,"limitMax":0,"rows":"4","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"","identify":"which_are_the_things_you_don_t_like_in_joomlashine_template_"},"type":"paragraph-text","position":"left"}'),
(9, 1, 'choices', 'which_features_do_you_like_to_see_joomlashine_template_have_', 'Which features do you like to see JoomlaShine template have?', '', 'left', 6, '{"id":9,"identify":"which_features_do_you_like_to_see_joomlashine_template_have_","options":{"label":"Which features do you like to see JoomlaShine template have?","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Control Panel to customize style ","checked":false},{"text":"Mega menu ","checked":false},{"text":"More icons to use ","checked":false}],"value":"","identify":"which_features_do_you_like_to_see_joomlashine_template_have_","allowOther":"1"},"type":"choices","position":"left"}'),
(10, 1, 'paragraph-text', 'what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_', 'What design style you want to see in the further JoomlaShine templates, give us the URL to the design? ', '', 'left', 7, '{"id":10,"identify":"what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_","options":{"label":"What design style you want to see in the further JoomlaShine templates, give us the URL to the design? ","instruction":"","required":0,"limitation":0,"limitMin":0,"limitMax":0,"rows":"3","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"","identify":"what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_"},"type":"paragraph-text","position":"left"}'),
(11, 1, 'date', 'date_time', 'Date/Time', '', 'left', 8, '{"id":11,"identify":"date_time","options":{"label":"Date\\/Time","instruction":"","required":0,"enableRageSelection":"1","size":"jsn-input-small-fluid","timeFormat":0,"dateFormat":"1","yearRangeMin":"1930","yearRangeMax":"2013","dateValue":"","dateValueRange":"","dateOptionFormat":"mm\\/dd\\/yy","customFormatDate":"","timeOptionFormat":"hh:mm tt","identify":"date_time"},"type":"date","position":"left"}'),
(15, 2, 'email', 'email', 'Email', '', 'left', 1, '{"id":15,"identify":"email","options":{"label":"Email","instruction":"","required":"1","noDuplicates":0,"size":"jsn-input-xlarge-fluid","value":"Your email","valueConfirm":"","identify":"email"},"type":"email","position":"left"}'),
(16, 3, 'static-content', 'static_content', 'Static Content', NULL, 'left', 0, '{"id":16,"identify":"static_content","options":{"label":"Static Content","value":"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.","identify":"static_content"},"type":"static-content","position":"left"}'),
(17, 3, 'single-line-text', '', '', '', 'left', 1, '{"id":17,"identify":"","options":{"label":"","instruction":"","required":0,"limitation":0,"limitMin":0,"limitMax":0,"limitType":"Words","size":"jsn-input-medium-fluid","value":"Subcribe our newsletter","identify":""},"type":"single-line-text","position":"left"}'),
(18, 4, 'choices', 'multiple_choice', 'Multiple Choice', '', 'left', 0, '{"id":18,"identify":"multiple_choice","options":{"label":"Multiple Choice","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Individual building website for himself ","checked":false},{"text":"Freelancer building websites for clients ","checked":false},{"text":"Web Agency ","checked":false}],"value":"","identify":"multiple_choice","itemAction":"","allowOther":"1"},"type":"choices","position":"left"}'),
(19, 4, 'choices', 'your_joomla_experience_', 'Your Joomla experience: ', '', 'left', 1, '{"id":19,"identify":"your_joomla_experience_","options":{"label":"Your Joomla experience: ","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Less than 1 year ","checked":false},{"text":"1-3 years ","checked":false},{"text":"More than 3 years ","checked":false}],"value":"","identify":"your_joomla_experience_","itemAction":""},"type":"choices","position":"left"}'),
(20, 4, 'choices', 'which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_', 'Which forum extension do you like to see JoomlaShine template compatible with?', '', 'left', 2, '{"id":20,"identify":"which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_","options":{"label":"Which forum extension do you like to see JoomlaShine template compatible with?","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Kunena ","checked":false},{"text":"Dicussions ","checked":false},{"text":"Ninjaboard ","checked":false}],"value":"","identify":"which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_","itemAction":"","allowOther":"1"},"type":"choices","position":"left"}'),
(21, 4, 'choices', 'about_sample_data_which_way_do_you_prefer_', 'About sample data, which way do you prefer?', '', 'left', 3, '{"id":21,"identify":"about_sample_data_which_way_do_you_prefer_","options":{"label":"About sample data, which way do you prefer?","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Sample data installation on your current website ","checked":false},{"text":"Whole Joomla! site installation package with sample data ","checked":false}],"value":"","identify":"about_sample_data_which_way_do_you_prefer_","itemAction":""},"type":"choices","position":"left"}'),
(22, 4, 'paragraph-text', 'what_makes_you_love_joomlashine_template_', 'What makes you love JoomlaShine template?', '', 'left', 4, '{"id":22,"identify":"what_makes_you_love_joomlashine_template_","options":{"label":"What makes you love JoomlaShine template?","instruction":"","required":"1","limitation":0,"limitMin":0,"limitMax":0,"rows":"4","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"","identify":"what_makes_you_love_joomlashine_template_"},"type":"paragraph-text","position":"left"}'),
(23, 4, 'paragraph-text', 'which_are_the_things_you_don_t_like_in_joomlashine_template_', 'Which are the things you don''t like in JoomlaShine template?', '', 'left', 5, '{"id":23,"identify":"which_are_the_things_you_don_t_like_in_joomlashine_template_","options":{"label":"Which are the things you don''t like in JoomlaShine template?","instruction":"","required":"1","limitation":0,"limitMin":0,"limitMax":0,"rows":"4","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"","identify":"which_are_the_things_you_don_t_like_in_joomlashine_template_"},"type":"paragraph-text","position":"left"}'),
(24, 4, 'choices', 'which_features_do_you_like_to_see_joomlashine_template_have_', 'Which features do you like to see JoomlaShine template have?', '', 'left', 6, '{"id":24,"identify":"which_features_do_you_like_to_see_joomlashine_template_have_","options":{"label":"Which features do you like to see JoomlaShine template have?","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Control Panel to customize style ","checked":false},{"text":"Mega menu ","checked":false},{"text":"More icons to use ","checked":false}],"value":"","identify":"which_features_do_you_like_to_see_joomlashine_template_have_","itemAction":"","allowOther":"1"},"type":"choices","position":"left"}'),
(25, 4, 'paragraph-text', 'what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_', 'What design style you want to see in the further JoomlaShine templates, give us the URL to the design? ', '', 'left', 7, '{"id":25,"identify":"what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_","options":{"label":"What design style you want to see in the further JoomlaShine templates, give us the URL to the design? ","instruction":"","required":0,"limitation":0,"limitMin":0,"limitMax":0,"rows":"3","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"","identify":"what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_"},"type":"paragraph-text","position":"left"}'),
(26, 4, 'date', 'date_time', 'Date/Time', '', 'left', 8, '{"id":26,"identify":"date_time","options":{"label":"Date\\/Time","instruction":"","required":0,"enableRageSelection":"1","size":"jsn-input-small-fluid","timeFormat":0,"dateFormat":"1","yearRangeMin":"1930","yearRangeMax":"2023","identify":"date_time","dateValue":"","dateValueRange":"","dateOptionFormat":"mm\\/dd\\/yy","customFormatDate":"","timeOptionFormat":"hh:mm tt"},"type":"date","position":"left"}'),
(27, 2, 'single-line-text', 'name', 'Name', '', 'left', 0, '{"id":27,"identify":"name","options":{"label":"Name","instruction":"","required":"1","limitation":0,"limitMin":0,"limitMax":0,"limitType":"Words","size":"jsn-input-xlarge-fluid","value":"Your Name","identify":"name"},"type":"single-line-text","position":"left"}'),
(28, 2, 'single-line-text', 'subject', 'Subject', '', 'left', 2, '{"id":28,"identify":"subject","options":{"label":"Subject","instruction":"","required":0,"limitation":0,"limitMin":0,"limitMax":0,"limitType":"Words","size":"jsn-input-xlarge-fluid","value":"Subject","identify":"subject"},"type":"single-line-text","position":"left"}'),
(29, 2, 'paragraph-text', 'massage', 'Massage', '', 'left', 3, '{"id":29,"identify":"massage","options":{"label":"Massage","instruction":"","required":"1","limitation":0,"limitMin":0,"limitMax":0,"rows":"8","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"Your message","identify":"massage"},"type":"paragraph-text","position":"left"}');

-- --------------------------------------------------------

--
-- Table structure for table `joom_jsn_uniform_forms`
--

CREATE TABLE IF NOT EXISTS `joom_jsn_uniform_forms` (
  `form_id` int(11) NOT NULL AUTO_INCREMENT,
  `form_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `form_description` text COLLATE utf8_unicode_ci,
  `form_layout` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `form_theme` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `form_style` text CHARACTER SET utf8 NOT NULL,
  `form_notify_submitter` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `form_post_action` tinyint(1) unsigned NOT NULL COMMENT '1 = Redirect to URL; 2 = Redirect to Menu Item; 3 = Show Article; 4 = Show custom message',
  `form_post_action_data` text COLLATE utf8_unicode_ci NOT NULL,
  `form_captcha` tinyint(1) unsigned NOT NULL,
  `form_state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `form_access` int(11) NOT NULL,
  `form_created_by` int(10) unsigned NOT NULL,
  `form_created_at` datetime DEFAULT NULL,
  `form_modified_by` int(10) unsigned DEFAULT '0',
  `form_modified_at` datetime DEFAULT NULL,
  `form_checked_out` int(10) unsigned DEFAULT '0',
  `form_checked_out_time` datetime DEFAULT NULL,
  `form_submission_cout` int(11) NOT NULL,
  `form_last_submitted` datetime NOT NULL,
  `form_submitter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `form_type` int(11) NOT NULL,
  `form_settings` longtext COLLATE utf8_unicode_ci NOT NULL,
  `form_edit_submission` int(11) NOT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `joom_jsn_uniform_forms`
--

INSERT INTO `joom_jsn_uniform_forms` (`form_id`, `form_title`, `form_description`, `form_layout`, `form_theme`, `form_style`, `form_notify_submitter`, `form_post_action`, `form_post_action_data`, `form_captcha`, `form_state`, `form_access`, `form_created_by`, `form_created_at`, `form_modified_by`, `form_modified_at`, `form_checked_out`, `form_checked_out_time`, `form_submission_cout`, `form_last_submitted`, `form_submitter`, `form_type`, `form_settings`, `form_edit_submission`) VALUES
(2, 'Contact Form', 'Form used in home page for demo purpose', 'default', '', '{"layout":"Vertical","theme":"jsn-style-light","themes_style":{"light":"{\\"background_color\\":\\"\\",\\"background_active_color\\":\\"#FCF8E3\\",\\"border_thickness\\":\\"0\\",\\"border_color\\":\\"\\",\\"border_active_color\\":\\"#FBEED5\\",\\"rounded_corner_radius\\":\\"0\\",\\"padding_space\\":\\"10\\",\\"margin_space\\":\\"0\\",\\"text_color\\":\\"#333333\\",\\"font_type\\":\\" Verdana, Geneva, sans-serif\\",\\"font_size\\":\\"14\\",\\"field_background_color\\":\\"#ffffff\\",\\"field_border_color\\":\\"\\",\\"field_shadow_color\\":\\"\\",\\"field_text_color\\":\\"#666666\\",\\"message_error_background_color\\":\\"#B94A48\\",\\"message_error_text_color\\":\\"#FFFFFF\\",\\"button_position\\":\\"btn-toolbar pull-left\\",\\"button_submit_color\\":\\"btn btn-success\\"}","dark":"{\\"background_color\\":\\"\\",\\"background_active_color\\":\\"#444444\\",\\"border_thickness\\":\\"0\\",\\"border_color\\":\\"\\",\\"border_active_color\\":\\"#666666\\",\\"rounded_corner_radius\\":\\"0\\",\\"padding_space\\":\\"10\\",\\"margin_space\\":\\"0\\",\\"text_color\\":\\"#C6C6C6\\",\\"font_type\\":\\" Verdana, Geneva, sans-serif\\",\\"font_size\\":\\"14\\",\\"field_background_color\\":\\"#000000\\",\\"field_border_color\\":\\"#111111\\",\\"field_shadow_color\\":\\"#000000\\",\\"field_text_color\\":\\"#333333\\",\\"message_error_background_color\\":\\"#B94A48\\",\\"message_error_text_color\\":\\"#FFFFFF\\"}"},"themes":["light","dark"],"background_color":"","background_active_color":"#FCF8E3","border_thickness":"0","border_color":"","border_active_color":"#FBEED5","rounded_corner_radius":"0","padding_space":"10","margin_space":"0","text_color":"#333333","font_type":" Verdana, Geneva, sans-serif","font_size":"14","field_background_color":"#ffffff","field_border_color":"","field_shadow_color":"","field_text_color":"#666666","message_error_background_color":"#B94A48","message_error_text_color":"#FFFFFF","button_position":"btn-toolbar pull-left","button_submit_color":"btn btn-success","button_reset_color":"btn","custom_css":""}', 0, 4, 'Thank you!\r\nAn email has been sent to your email. Please check it.', 2, 1, 0, 42, '2013-08-26 16:54:41', 190, '2014-02-01 12:11:11', 0, NULL, 1, '2013-08-26 17:51:47', '["email"]', 1, '{"form_btn_next_text":"NEXT","form_btn_prev_text":"PREV","form_btn_submit_text":"SUBMIT","form_btn_reset_text":"Reset","form_state_btn_reset_text":"No","action_save_submissions":"Yes"}', 0),
(3, 'Newsletter', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.', 'default', '', '{"layout":"Vertical","theme":"jsn-style-light","themes_style":{"light":"{\\"background_color\\":\\"\\",\\"background_active_color\\":\\"#FCF8E3\\",\\"border_thickness\\":\\"0\\",\\"border_color\\":\\"\\",\\"border_active_color\\":\\"#FBEED5\\",\\"rounded_corner_radius\\":\\"0\\",\\"padding_space\\":\\"10\\",\\"margin_space\\":\\"0\\",\\"text_color\\":\\"#333333\\",\\"font_type\\":\\" Verdana, Geneva, sans-serif\\",\\"font_size\\":\\"14\\",\\"field_background_color\\":\\"#ffffff\\",\\"field_border_color\\":\\"\\",\\"field_shadow_color\\":\\"\\",\\"field_text_color\\":\\"#666666\\",\\"message_error_background_color\\":\\"#B94A48\\",\\"message_error_text_color\\":\\"#FFFFFF\\"}","dark":"{\\"background_color\\":\\"\\",\\"background_active_color\\":\\"#444444\\",\\"border_thickness\\":\\"0\\",\\"border_color\\":\\"\\",\\"border_active_color\\":\\"#666666\\",\\"rounded_corner_radius\\":\\"0\\",\\"padding_space\\":\\"10\\",\\"margin_space\\":\\"0\\",\\"text_color\\":\\"#C6C6C6\\",\\"font_type\\":\\" Verdana, Geneva, sans-serif\\",\\"font_size\\":\\"14\\",\\"field_background_color\\":\\"#000000\\",\\"field_border_color\\":\\"#111111\\",\\"field_shadow_color\\":\\"#000000\\",\\"field_text_color\\":\\"#333333\\",\\"message_error_background_color\\":\\"#B94A48\\",\\"message_error_text_color\\":\\"#FFFFFF\\"}"},"themes":["light","dark"],"background_color":"","background_active_color":"#FCF8E3","border_thickness":"0","border_color":"","border_active_color":"#FBEED5","rounded_corner_radius":"0","padding_space":"10","margin_space":"0","text_color":"#333333","font_type":" Verdana, Geneva, sans-serif","font_size":"14","field_background_color":"#ffffff","field_border_color":"","field_shadow_color":"","field_text_color":"#666666","message_error_background_color":"#B94A48","message_error_text_color":"#FFFFFF","button_position":"btn-toolbar","button_submit_color":"btn btn-primary"}', 0, 0, '', 0, 1, 0, 42, '2013-08-26 17:47:09', 42, '2013-09-03 15:17:05', 0, NULL, 0, '0000-00-00 00:00:00', '', 1, '{"form_btn_next_text":null,"form_btn_prev_text":null,"form_btn_submit_text":null}', 0),
(4, 'JoomlaShine Survey', '', 'default', '', '{"layout":"Vertical","theme":"jsn-style-light","themes_style":{"light":"{\\"background_color\\":\\"\\",\\"background_active_color\\":\\"#FCF8E3\\",\\"border_thickness\\":\\"0\\",\\"border_color\\":\\"\\",\\"border_active_color\\":\\"#FBEED5\\",\\"rounded_corner_radius\\":\\"0\\",\\"padding_space\\":\\"10\\",\\"margin_space\\":\\"0\\",\\"text_color\\":\\"#333333\\",\\"font_type\\":\\" Verdana, Geneva, sans-serif\\",\\"font_size\\":\\"14\\",\\"field_background_color\\":\\"#ffffff\\",\\"field_border_color\\":\\"\\",\\"field_shadow_color\\":\\"\\",\\"field_text_color\\":\\"#666666\\",\\"message_error_background_color\\":\\"#B94A48\\",\\"message_error_text_color\\":\\"#FFFFFF\\"}","dark":"{\\"background_color\\":\\"\\",\\"background_active_color\\":\\"#444444\\",\\"border_thickness\\":\\"0\\",\\"border_color\\":\\"\\",\\"border_active_color\\":\\"#666666\\",\\"rounded_corner_radius\\":\\"0\\",\\"padding_space\\":\\"10\\",\\"margin_space\\":\\"0\\",\\"text_color\\":\\"#C6C6C6\\",\\"font_type\\":\\" Verdana, Geneva, sans-serif\\",\\"font_size\\":\\"14\\",\\"field_background_color\\":\\"#000000\\",\\"field_border_color\\":\\"#111111\\",\\"field_shadow_color\\":\\"#000000\\",\\"field_text_color\\":\\"#333333\\",\\"message_error_background_color\\":\\"#B94A48\\",\\"message_error_text_color\\":\\"#FFFFFF\\"}"},"themes":["light","dark"],"background_color":"","background_active_color":"#FCF8E3","border_thickness":"0","border_color":"","border_active_color":"#FBEED5","rounded_corner_radius":"0","padding_space":"10","margin_space":"0","text_color":"#333333","font_type":" Verdana, Geneva, sans-serif","font_size":"14","field_background_color":"#ffffff","field_border_color":"","field_shadow_color":"","field_text_color":"#666666","message_error_background_color":"#B94A48","message_error_text_color":"#FFFFFF","button_position":"btn-toolbar","button_submit_color":"btn btn-primary"}', 0, 4, 'Woo hoo! Thanks for filling out the form! Please use the code JSNPOLL5 to get $5 OFF when purchase any products from JoomlaShine. (Not applied with other promotions)', 0, 1, 0, 42, '2013-08-29 14:41:47', 42, '2013-10-12 15:23:35', 0, NULL, 1, '2013-10-12 15:27:43', '', 1, '{"form_btn_next_text":null,"form_btn_prev_text":null,"form_btn_submit_text":null}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `joom_jsn_uniform_form_pages`
--

CREATE TABLE IF NOT EXISTS `joom_jsn_uniform_form_pages` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_title` varchar(255) NOT NULL,
  `form_id` int(11) NOT NULL,
  `page_content` text NOT NULL,
  `page_template` text NOT NULL,
  `page_container` longtext NOT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `joom_jsn_uniform_form_pages`
--

INSERT INTO `joom_jsn_uniform_form_pages` (`page_id`, `page_title`, `form_id`, `page_content`, `page_template`, `page_container`) VALUES
(1, 'Page 1', 1, '[{"id":3,"type":"choices","position":"left","identify":"who_are_you_tell_more_about_yourself","label":"Who are you? Tell more about yourself","instruction":"","options":{"label":"Who are you? Tell more about yourself","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Individual building website for himself ","checked":false},{"text":"Freelancer building websites for clients ","checked":false},{"text":"Web Agency ","checked":false}],"value":"","identify":"who_are_you_tell_more_about_yourself","allowOther":"1"}},{"id":4,"type":"choices","position":"left","identify":"your_joomla_experience_","label":"Your Joomla experience: ","instruction":"","options":{"label":"Your Joomla experience: ","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Less than 1 year ","checked":false},{"text":"1-3 years ","checked":false},{"text":"More than 3 years ","checked":false}],"value":"","identify":"your_joomla_experience_"}},{"id":5,"type":"choices","position":"left","identify":"which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_","label":"Which forum extension do you like to see JoomlaShine template compatible with?","instruction":"","options":{"label":"Which forum extension do you like to see JoomlaShine template compatible with?","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Kunena ","checked":false},{"text":"Dicussions ","checked":false},{"text":"Ninjaboard ","checked":false}],"value":"","identify":"which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_","allowOther":"1"}},{"id":6,"type":"choices","position":"left","identify":"about_sample_data_which_way_do_you_prefer_","label":"About sample data, which way do you prefer?","instruction":"","options":{"label":"About sample data, which way do you prefer?","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Sample data installation on your current website ","checked":false},{"text":"Whole Joomla! site installation package with sample data ","checked":false}],"value":"","identify":"about_sample_data_which_way_do_you_prefer_"}},{"id":7,"type":"paragraph-text","position":"left","identify":"what_makes_you_love_joomlashine_template_","label":"What makes you love JoomlaShine template?","instruction":"","options":{"label":"What makes you love JoomlaShine template?","instruction":"","required":"1","limitation":0,"limitMin":0,"limitMax":0,"rows":"4","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"","identify":"what_makes_you_love_joomlashine_template_"}},{"id":8,"type":"paragraph-text","position":"left","identify":"which_are_the_things_you_don_t_like_in_joomlashine_template_","label":"Which are the things you don''t like in JoomlaShine template?","instruction":"","options":{"label":"Which are the things you don''t like in JoomlaShine template?","instruction":"","required":"1","limitation":0,"limitMin":0,"limitMax":0,"rows":"4","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"","identify":"which_are_the_things_you_don_t_like_in_joomlashine_template_"}},{"id":9,"type":"choices","position":"left","identify":"which_features_do_you_like_to_see_joomlashine_template_have_","label":"Which features do you like to see JoomlaShine template have?","instruction":"","options":{"label":"Which features do you like to see JoomlaShine template have?","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Control Panel to customize style ","checked":false},{"text":"Mega menu ","checked":false},{"text":"More icons to use ","checked":false}],"value":"","identify":"which_features_do_you_like_to_see_joomlashine_template_have_","allowOther":"1"}},{"id":10,"type":"paragraph-text","position":"left","identify":"what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_","label":"What design style you want to see in the further JoomlaShine templates, give us the URL to the design? ","instruction":"","options":{"label":"What design style you want to see in the further JoomlaShine templates, give us the URL to the design? ","instruction":"","required":0,"limitation":0,"limitMin":0,"limitMax":0,"rows":"3","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"","identify":"what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_"}},{"id":11,"type":"date","position":"left","identify":"date_time","label":"Date\\/Time","instruction":"","options":{"label":"Date\\/Time","instruction":"","required":0,"enableRageSelection":"1","size":"jsn-input-small-fluid","timeFormat":0,"dateFormat":"1","yearRangeMin":"1930","yearRangeMax":"2013","dateValue":"","dateValueRange":"","dateOptionFormat":"mm\\/dd\\/yy","customFormatDate":"","timeOptionFormat":"hh:mm tt","identify":"date_time"}}]', '{"dataFormLayout":"default","dataField":[{"field_type":"choices","field_id":"sb_3","field_title":"Who are you? Tell more about yourself","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":3,\\"identify\\":\\"who_are_you_tell_more_about_yourself\\",\\"options\\":{\\"label\\":\\"Who are you? Tell more about yourself\\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"randomize\\":0,\\"labelOthers\\":\\"Others\\",\\"layout\\":\\"jsn-columns-count-one\\",\\"items\\":[{\\"text\\":\\"Individual building website for himself \\",\\"checked\\":false},{\\"text\\":\\"Freelancer building websites for clients \\",\\"checked\\":false},{\\"text\\":\\"Web Agency \\",\\"checked\\":false}],\\"value\\":\\"\\",\\"identify\\":\\"who_are_you_tell_more_about_yourself\\",\\"allowOther\\":\\"1\\"},\\"type\\":\\"choices\\",\\"position\\":\\"left\\"}"},{"field_type":"choices","field_id":"sb_4","field_title":"Your Joomla experience: ","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":4,\\"identify\\":\\"your_joomla_experience_\\",\\"options\\":{\\"label\\":\\"Your Joomla experience: \\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"randomize\\":0,\\"labelOthers\\":\\"Others\\",\\"layout\\":\\"jsn-columns-count-one\\",\\"items\\":[{\\"text\\":\\"Less than 1 year \\",\\"checked\\":false},{\\"text\\":\\"1-3 years \\",\\"checked\\":false},{\\"text\\":\\"More than 3 years \\",\\"checked\\":false}],\\"value\\":\\"\\",\\"identify\\":\\"your_joomla_experience_\\"},\\"type\\":\\"choices\\",\\"position\\":\\"left\\"}"},{"field_type":"choices","field_id":"sb_5","field_title":"Which forum extension do you like to see JoomlaShine template compatible with?","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":5,\\"identify\\":\\"which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_\\",\\"options\\":{\\"label\\":\\"Which forum extension do you like to see JoomlaShine template compatible with?\\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"randomize\\":0,\\"labelOthers\\":\\"Others\\",\\"layout\\":\\"jsn-columns-count-one\\",\\"items\\":[{\\"text\\":\\"Kunena \\",\\"checked\\":false},{\\"text\\":\\"Dicussions \\",\\"checked\\":false},{\\"text\\":\\"Ninjaboard \\",\\"checked\\":false}],\\"value\\":\\"\\",\\"identify\\":\\"which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_\\",\\"allowOther\\":\\"1\\"},\\"type\\":\\"choices\\",\\"position\\":\\"left\\"}"},{"field_type":"choices","field_id":"sb_6","field_title":"About sample data, which way do you prefer?","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":6,\\"identify\\":\\"about_sample_data_which_way_do_you_prefer_\\",\\"options\\":{\\"label\\":\\"About sample data, which way do you prefer?\\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"randomize\\":0,\\"labelOthers\\":\\"Others\\",\\"layout\\":\\"jsn-columns-count-one\\",\\"items\\":[{\\"text\\":\\"Sample data installation on your current website \\",\\"checked\\":false},{\\"text\\":\\"Whole Joomla! site installation package with sample data \\",\\"checked\\":false}],\\"value\\":\\"\\",\\"identify\\":\\"about_sample_data_which_way_do_you_prefer_\\"},\\"type\\":\\"choices\\",\\"position\\":\\"left\\"}"},{"field_type":"paragraph-text","field_id":"sb_7","field_title":"What makes you love JoomlaShine template?","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":7,\\"identify\\":\\"what_makes_you_love_joomlashine_template_\\",\\"options\\":{\\"label\\":\\"What makes you love JoomlaShine template?\\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"limitation\\":0,\\"limitMin\\":0,\\"limitMax\\":0,\\"rows\\":\\"4\\",\\"size\\":\\"jsn-input-xlarge-fluid\\",\\"limitType\\":\\"Words\\",\\"value\\":\\"\\",\\"identify\\":\\"what_makes_you_love_joomlashine_template_\\"},\\"type\\":\\"paragraph-text\\",\\"position\\":\\"left\\"}"},{"field_type":"paragraph-text","field_id":"sb_8","field_title":"Which are the things you don''t like in JoomlaShine template?","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":8,\\"identify\\":\\"which_are_the_things_you_don_t_like_in_joomlashine_template_\\",\\"options\\":{\\"label\\":\\"Which are the things you don''t like in JoomlaShine template?\\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"limitation\\":0,\\"limitMin\\":0,\\"limitMax\\":0,\\"rows\\":\\"4\\",\\"size\\":\\"jsn-input-xlarge-fluid\\",\\"limitType\\":\\"Words\\",\\"value\\":\\"\\",\\"identify\\":\\"which_are_the_things_you_don_t_like_in_joomlashine_template_\\"},\\"type\\":\\"paragraph-text\\",\\"position\\":\\"left\\"}"},{"field_type":"choices","field_id":"sb_9","field_title":"Which features do you like to see JoomlaShine template have?","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":9,\\"identify\\":\\"which_features_do_you_like_to_see_joomlashine_template_have_\\",\\"options\\":{\\"label\\":\\"Which features do you like to see JoomlaShine template have?\\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"randomize\\":0,\\"labelOthers\\":\\"Others\\",\\"layout\\":\\"jsn-columns-count-one\\",\\"items\\":[{\\"text\\":\\"Control Panel to customize style \\",\\"checked\\":false},{\\"text\\":\\"Mega menu \\",\\"checked\\":false},{\\"text\\":\\"More icons to use \\",\\"checked\\":false}],\\"value\\":\\"\\",\\"identify\\":\\"which_features_do_you_like_to_see_joomlashine_template_have_\\",\\"allowOther\\":\\"1\\"},\\"type\\":\\"choices\\",\\"position\\":\\"left\\"}"},{"field_type":"paragraph-text","field_id":"sb_10","field_title":"What design style you want to see in the further JoomlaShine templates, give us the URL to the design? ","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":10,\\"identify\\":\\"what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_\\",\\"options\\":{\\"label\\":\\"What design style you want to see in the further JoomlaShine templates, give us the URL to the design? \\",\\"instruction\\":\\"\\",\\"required\\":0,\\"limitation\\":0,\\"limitMin\\":0,\\"limitMax\\":0,\\"rows\\":\\"3\\",\\"size\\":\\"jsn-input-xlarge-fluid\\",\\"limitType\\":\\"Words\\",\\"value\\":\\"\\",\\"identify\\":\\"what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_\\"},\\"type\\":\\"paragraph-text\\",\\"position\\":\\"left\\"}"},{"field_type":"date","field_id":"sb_11","field_title":"Date\\/Time","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":11,\\"identify\\":\\"date_time\\",\\"options\\":{\\"label\\":\\"Date\\\\\\/Time\\",\\"instruction\\":\\"\\",\\"required\\":0,\\"enableRageSelection\\":\\"1\\",\\"size\\":\\"jsn-input-small-fluid\\",\\"timeFormat\\":0,\\"dateFormat\\":\\"1\\",\\"yearRangeMin\\":\\"1930\\",\\"yearRangeMax\\":\\"2013\\",\\"dateValue\\":\\"\\",\\"dateValueRange\\":\\"\\",\\"dateOptionFormat\\":\\"mm\\\\\\/dd\\\\\\/yy\\",\\"customFormatDate\\":\\"\\",\\"timeOptionFormat\\":\\"hh:mm tt\\",\\"identify\\":\\"date_time\\"},\\"type\\":\\"date\\",\\"position\\":\\"left\\"}"}]}', ''),
(4, 'Page 1', 2, '[{"id":27,"type":"single-line-text","position":"left","identify":"name","label":"Name","instruction":"","options":{"label":"Name","instruction":"","required":"1","limitation":0,"limitMin":0,"limitMax":0,"limitType":"Words","size":"jsn-input-xlarge-fluid","value":"Your Name","identify":"name"}},{"id":15,"type":"email","position":"left","identify":"email","label":"Email","instruction":"","options":{"label":"Email","instruction":"","required":"1","noDuplicates":0,"size":"jsn-input-xlarge-fluid","value":"Your email","valueConfirm":"","identify":"email"}},{"id":28,"type":"single-line-text","position":"left","identify":"subject","label":"Subject","instruction":"","options":{"label":"Subject","instruction":"","required":0,"limitation":0,"limitMin":0,"limitMax":0,"limitType":"Words","size":"jsn-input-xlarge-fluid","value":"Subject","identify":"subject"}},{"id":29,"type":"paragraph-text","position":"left","identify":"massage","label":"Massage","instruction":"","options":{"label":"Massage","instruction":"","required":"1","limitation":0,"limitMin":0,"limitMax":0,"rows":"8","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"Your message","identify":"massage"}}]', '{"dataField":[{"field_type":"single-line-text","field_id":"sb_27","field_title":"Name","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":27,\\"identify\\":\\"name\\",\\"options\\":{\\"label\\":\\"Name\\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"limitation\\":0,\\"limitMin\\":0,\\"limitMax\\":0,\\"limitType\\":\\"Words\\",\\"size\\":\\"jsn-input-xlarge-fluid\\",\\"value\\":\\"Your Name\\",\\"identify\\":\\"name\\"},\\"type\\":\\"single-line-text\\",\\"position\\":\\"left\\"}"},{"field_type":"email","field_id":"sb_15","field_title":"Email","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":15,\\"identify\\":\\"email\\",\\"options\\":{\\"label\\":\\"Email\\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"noDuplicates\\":0,\\"size\\":\\"jsn-input-xlarge-fluid\\",\\"value\\":\\"Your email\\",\\"valueConfirm\\":\\"\\",\\"identify\\":\\"email\\"},\\"type\\":\\"email\\",\\"position\\":\\"left\\"}"},{"field_type":"single-line-text","field_id":"sb_28","field_title":"Subject","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":28,\\"identify\\":\\"subject\\",\\"options\\":{\\"label\\":\\"Subject\\",\\"instruction\\":\\"\\",\\"required\\":0,\\"limitation\\":0,\\"limitMin\\":0,\\"limitMax\\":0,\\"limitType\\":\\"Words\\",\\"size\\":\\"jsn-input-xlarge-fluid\\",\\"value\\":\\"Subject\\",\\"identify\\":\\"subject\\"},\\"type\\":\\"single-line-text\\",\\"position\\":\\"left\\"}"},{"field_type":"paragraph-text","field_id":"sb_29","field_title":"Massage","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":29,\\"identify\\":\\"massage\\",\\"options\\":{\\"label\\":\\"Massage\\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"limitation\\":0,\\"limitMin\\":0,\\"limitMax\\":0,\\"rows\\":\\"8\\",\\"size\\":\\"jsn-input-xlarge-fluid\\",\\"limitType\\":\\"Words\\",\\"value\\":\\"Your message\\",\\"identify\\":\\"massage\\"},\\"type\\":\\"paragraph-text\\",\\"position\\":\\"left\\"}"}],"dataFormLayout":"default"}', '[[{"columnName":"left","columnClass":"span12"}]]'),
(5, 'Page 1', 3, '[{"id":16,"type":"static-content","position":"left","identify":"static_content","label":"Static Content","instruction":null,"options":{"label":"Static Content","value":"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.","identify":"static_content"}},{"id":17,"type":"single-line-text","position":"left","identify":"","label":"","instruction":"","options":{"label":"","instruction":"","required":0,"limitation":0,"limitMin":0,"limitMax":0,"limitType":"Words","size":"jsn-input-medium-fluid","value":"Subcribe our newsletter","identify":""}}]', '{"dataField":[{"field_type":"static-content","field_id":"sb_16","field_title":"Static Content","field_instructions":null,"field_position":"left","field_settings":"{\\"id\\":16,\\"identify\\":\\"static_content\\",\\"options\\":{\\"label\\":\\"Static Content\\",\\"value\\":\\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.\\",\\"identify\\":\\"static_content\\"},\\"type\\":\\"static-content\\",\\"position\\":\\"left\\"}"},{"field_type":"single-line-text","field_id":"sb_17","field_title":"","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":17,\\"identify\\":\\"\\",\\"options\\":{\\"label\\":\\"\\",\\"instruction\\":\\"\\",\\"required\\":0,\\"limitation\\":0,\\"limitMin\\":0,\\"limitMax\\":0,\\"limitType\\":\\"Words\\",\\"size\\":\\"jsn-input-medium-fluid\\",\\"value\\":\\"Subcribe our newsletter\\",\\"identify\\":\\"\\"},\\"type\\":\\"single-line-text\\",\\"position\\":\\"left\\"}"}],"dataFormLayout":"default"}', '[[{"columnName":"left","columnClass":"span12"}]]'),
(6, 'Page 1', 4, '[{"id":18,"type":"choices","position":"left","identify":"multiple_choice","label":"Multiple Choice","instruction":"","options":{"label":"Multiple Choice","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Individual building website for himself ","checked":false},{"text":"Freelancer building websites for clients ","checked":false},{"text":"Web Agency ","checked":false}],"value":"","identify":"multiple_choice","itemAction":"","allowOther":"1"}},{"id":19,"type":"choices","position":"left","identify":"your_joomla_experience_","label":"Your Joomla experience: ","instruction":"","options":{"label":"Your Joomla experience: ","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Less than 1 year ","checked":false},{"text":"1-3 years ","checked":false},{"text":"More than 3 years ","checked":false}],"value":"","identify":"your_joomla_experience_","itemAction":""}},{"id":20,"type":"choices","position":"left","identify":"which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_","label":"Which forum extension do you like to see JoomlaShine template compatible with?","instruction":"","options":{"label":"Which forum extension do you like to see JoomlaShine template compatible with?","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Kunena ","checked":false},{"text":"Dicussions ","checked":false},{"text":"Ninjaboard ","checked":false}],"value":"","identify":"which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_","itemAction":"","allowOther":"1"}},{"id":21,"type":"choices","position":"left","identify":"about_sample_data_which_way_do_you_prefer_","label":"About sample data, which way do you prefer?","instruction":"","options":{"label":"About sample data, which way do you prefer?","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Sample data installation on your current website ","checked":false},{"text":"Whole Joomla! site installation package with sample data ","checked":false}],"value":"","identify":"about_sample_data_which_way_do_you_prefer_","itemAction":""}},{"id":22,"type":"paragraph-text","position":"left","identify":"what_makes_you_love_joomlashine_template_","label":"What makes you love JoomlaShine template?","instruction":"","options":{"label":"What makes you love JoomlaShine template?","instruction":"","required":"1","limitation":0,"limitMin":0,"limitMax":0,"rows":"4","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"","identify":"what_makes_you_love_joomlashine_template_"}},{"id":23,"type":"paragraph-text","position":"left","identify":"which_are_the_things_you_don_t_like_in_joomlashine_template_","label":"Which are the things you don''t like in JoomlaShine template?","instruction":"","options":{"label":"Which are the things you don''t like in JoomlaShine template?","instruction":"","required":"1","limitation":0,"limitMin":0,"limitMax":0,"rows":"4","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"","identify":"which_are_the_things_you_don_t_like_in_joomlashine_template_"}},{"id":24,"type":"choices","position":"left","identify":"which_features_do_you_like_to_see_joomlashine_template_have_","label":"Which features do you like to see JoomlaShine template have?","instruction":"","options":{"label":"Which features do you like to see JoomlaShine template have?","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Control Panel to customize style ","checked":false},{"text":"Mega menu ","checked":false},{"text":"More icons to use ","checked":false}],"value":"","identify":"which_features_do_you_like_to_see_joomlashine_template_have_","itemAction":"","allowOther":"1"}},{"id":25,"type":"paragraph-text","position":"left","identify":"what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_","label":"What design style you want to see in the further JoomlaShine templates, give us the URL to the design? ","instruction":"","options":{"label":"What design style you want to see in the further JoomlaShine templates, give us the URL to the design? ","instruction":"","required":0,"limitation":0,"limitMin":0,"limitMax":0,"rows":"3","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"","identify":"what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_"}},{"id":26,"type":"date","position":"left","identify":"date_time","label":"Date\\/Time","instruction":"","options":{"label":"Date\\/Time","instruction":"","required":0,"enableRageSelection":"1","size":"jsn-input-small-fluid","timeFormat":0,"dateFormat":"1","yearRangeMin":"1930","yearRangeMax":"2023","identify":"date_time","dateValue":"","dateValueRange":"","dateOptionFormat":"mm\\/dd\\/yy","customFormatDate":"","timeOptionFormat":"hh:mm tt"}}]', '{"dataField":[{"field_type":"choices","field_id":"sb_18","field_title":"Multiple Choice","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":18,\\"identify\\":\\"multiple_choice\\",\\"options\\":{\\"label\\":\\"Multiple Choice\\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"randomize\\":0,\\"labelOthers\\":\\"Others\\",\\"layout\\":\\"jsn-columns-count-one\\",\\"items\\":[{\\"text\\":\\"Individual building website for himself \\",\\"checked\\":false},{\\"text\\":\\"Freelancer building websites for clients \\",\\"checked\\":false},{\\"text\\":\\"Web Agency \\",\\"checked\\":false}],\\"value\\":\\"\\",\\"identify\\":\\"multiple_choice\\",\\"itemAction\\":\\"\\",\\"allowOther\\":\\"1\\"},\\"type\\":\\"choices\\",\\"position\\":\\"left\\"}"},{"field_type":"choices","field_id":"sb_19","field_title":"Your Joomla experience: ","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":19,\\"identify\\":\\"your_joomla_experience_\\",\\"options\\":{\\"label\\":\\"Your Joomla experience: \\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"randomize\\":0,\\"labelOthers\\":\\"Others\\",\\"layout\\":\\"jsn-columns-count-one\\",\\"items\\":[{\\"text\\":\\"Less than 1 year \\",\\"checked\\":false},{\\"text\\":\\"1-3 years \\",\\"checked\\":false},{\\"text\\":\\"More than 3 years \\",\\"checked\\":false}],\\"value\\":\\"\\",\\"identify\\":\\"your_joomla_experience_\\",\\"itemAction\\":\\"\\"},\\"type\\":\\"choices\\",\\"position\\":\\"left\\"}"},{"field_type":"choices","field_id":"sb_20","field_title":"Which forum extension do you like to see JoomlaShine template compatible with?","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":20,\\"identify\\":\\"which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_\\",\\"options\\":{\\"label\\":\\"Which forum extension do you like to see JoomlaShine template compatible with?\\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"randomize\\":0,\\"labelOthers\\":\\"Others\\",\\"layout\\":\\"jsn-columns-count-one\\",\\"items\\":[{\\"text\\":\\"Kunena \\",\\"checked\\":false},{\\"text\\":\\"Dicussions \\",\\"checked\\":false},{\\"text\\":\\"Ninjaboard \\",\\"checked\\":false}],\\"value\\":\\"\\",\\"identify\\":\\"which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_\\",\\"itemAction\\":\\"\\",\\"allowOther\\":\\"1\\"},\\"type\\":\\"choices\\",\\"position\\":\\"left\\"}"},{"field_type":"choices","field_id":"sb_21","field_title":"About sample data, which way do you prefer?","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":21,\\"identify\\":\\"about_sample_data_which_way_do_you_prefer_\\",\\"options\\":{\\"label\\":\\"About sample data, which way do you prefer?\\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"randomize\\":0,\\"labelOthers\\":\\"Others\\",\\"layout\\":\\"jsn-columns-count-one\\",\\"items\\":[{\\"text\\":\\"Sample data installation on your current website \\",\\"checked\\":false},{\\"text\\":\\"Whole Joomla! site installation package with sample data \\",\\"checked\\":false}],\\"value\\":\\"\\",\\"identify\\":\\"about_sample_data_which_way_do_you_prefer_\\",\\"itemAction\\":\\"\\"},\\"type\\":\\"choices\\",\\"position\\":\\"left\\"}"},{"field_type":"paragraph-text","field_id":"sb_22","field_title":"What makes you love JoomlaShine template?","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":22,\\"identify\\":\\"what_makes_you_love_joomlashine_template_\\",\\"options\\":{\\"label\\":\\"What makes you love JoomlaShine template?\\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"limitation\\":0,\\"limitMin\\":0,\\"limitMax\\":0,\\"rows\\":\\"4\\",\\"size\\":\\"jsn-input-xlarge-fluid\\",\\"limitType\\":\\"Words\\",\\"value\\":\\"\\",\\"identify\\":\\"what_makes_you_love_joomlashine_template_\\"},\\"type\\":\\"paragraph-text\\",\\"position\\":\\"left\\"}"},{"field_type":"paragraph-text","field_id":"sb_23","field_title":"Which are the things you don''t like in JoomlaShine template?","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":23,\\"identify\\":\\"which_are_the_things_you_don_t_like_in_joomlashine_template_\\",\\"options\\":{\\"label\\":\\"Which are the things you don''t like in JoomlaShine template?\\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"limitation\\":0,\\"limitMin\\":0,\\"limitMax\\":0,\\"rows\\":\\"4\\",\\"size\\":\\"jsn-input-xlarge-fluid\\",\\"limitType\\":\\"Words\\",\\"value\\":\\"\\",\\"identify\\":\\"which_are_the_things_you_don_t_like_in_joomlashine_template_\\"},\\"type\\":\\"paragraph-text\\",\\"position\\":\\"left\\"}"},{"field_type":"choices","field_id":"sb_24","field_title":"Which features do you like to see JoomlaShine template have?","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":24,\\"identify\\":\\"which_features_do_you_like_to_see_joomlashine_template_have_\\",\\"options\\":{\\"label\\":\\"Which features do you like to see JoomlaShine template have?\\",\\"instruction\\":\\"\\",\\"required\\":\\"1\\",\\"randomize\\":0,\\"labelOthers\\":\\"Others\\",\\"layout\\":\\"jsn-columns-count-one\\",\\"items\\":[{\\"text\\":\\"Control Panel to customize style \\",\\"checked\\":false},{\\"text\\":\\"Mega menu \\",\\"checked\\":false},{\\"text\\":\\"More icons to use \\",\\"checked\\":false}],\\"value\\":\\"\\",\\"identify\\":\\"which_features_do_you_like_to_see_joomlashine_template_have_\\",\\"itemAction\\":\\"\\",\\"allowOther\\":\\"1\\"},\\"type\\":\\"choices\\",\\"position\\":\\"left\\"}"},{"field_type":"paragraph-text","field_id":"sb_25","field_title":"What design style you want to see in the further JoomlaShine templates, give us the URL to the design? ","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":25,\\"identify\\":\\"what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_\\",\\"options\\":{\\"label\\":\\"What design style you want to see in the further JoomlaShine templates, give us the URL to the design? \\",\\"instruction\\":\\"\\",\\"required\\":0,\\"limitation\\":0,\\"limitMin\\":0,\\"limitMax\\":0,\\"rows\\":\\"3\\",\\"size\\":\\"jsn-input-xlarge-fluid\\",\\"limitType\\":\\"Words\\",\\"value\\":\\"\\",\\"identify\\":\\"what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_\\"},\\"type\\":\\"paragraph-text\\",\\"position\\":\\"left\\"}"},{"field_type":"date","field_id":"sb_26","field_title":"Date\\/Time","field_instructions":"","field_position":"left","field_settings":"{\\"id\\":26,\\"identify\\":\\"date_time\\",\\"options\\":{\\"label\\":\\"Date\\\\\\/Time\\",\\"instruction\\":\\"\\",\\"required\\":0,\\"enableRageSelection\\":\\"1\\",\\"size\\":\\"jsn-input-small-fluid\\",\\"timeFormat\\":0,\\"dateFormat\\":\\"1\\",\\"yearRangeMin\\":\\"1930\\",\\"yearRangeMax\\":\\"2023\\",\\"identify\\":\\"date_time\\",\\"dateValue\\":\\"\\",\\"dateValueRange\\":\\"\\",\\"dateOptionFormat\\":\\"mm\\\\\\/dd\\\\\\/yy\\",\\"customFormatDate\\":\\"\\",\\"timeOptionFormat\\":\\"hh:mm tt\\"},\\"type\\":\\"date\\",\\"position\\":\\"left\\"}"}],"dataFormLayout":"default"}', '[[{"columnName":"left","columnClass":"span12"}]]');

-- --------------------------------------------------------

--
-- Table structure for table `joom_jsn_uniform_messages`
--

CREATE TABLE IF NOT EXISTS `joom_jsn_uniform_messages` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_screen` varchar(150) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '1',
  `ordering` int(11) DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  UNIQUE KEY `message` (`msg_screen`,`ordering`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `joom_jsn_uniform_submissions`
--

CREATE TABLE IF NOT EXISTS `joom_jsn_uniform_submissions` (
  `submission_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `submission_ip` varchar(40) NOT NULL,
  `submission_country` varchar(45) NOT NULL,
  `submission_country_code` varchar(4) NOT NULL,
  `submission_browser` varchar(45) NOT NULL,
  `submission_browser_version` varchar(20) NOT NULL,
  `submission_browser_agent` varchar(255) NOT NULL,
  `submission_os` varchar(45) NOT NULL,
  `submission_created_by` int(10) unsigned NOT NULL COMMENT '0 = Guest',
  `submission_created_at` datetime NOT NULL,
  `submission_state` tinyint(1) unsigned NOT NULL COMMENT '-1 = Trashed; 0 = Unpublish; 1 = Published',
  PRIMARY KEY (`submission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `joom_jsn_uniform_submissions_2`
--

CREATE TABLE IF NOT EXISTS `joom_jsn_uniform_submissions_2` (
  `data_id` int(11) DEFAULT NULL,
  `sb_15` varchar(255) DEFAULT NULL,
  `sb_27` varchar(255) DEFAULT NULL,
  `sb_28` varchar(255) DEFAULT NULL,
  `sb_29` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `joom_jsn_uniform_submissions_2`
--

INSERT INTO `joom_jsn_uniform_submissions_2` (`data_id`, `sb_15`, `sb_27`, `sb_28`, `sb_29`) VALUES
(4, 'tamnl@bravebits.vn', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `joom_jsn_uniform_submissions_4`
--

CREATE TABLE IF NOT EXISTS `joom_jsn_uniform_submissions_4` (
  `data_id` int(11) DEFAULT NULL,
  `sb_18` varchar(255) DEFAULT NULL,
  `sb_19` varchar(255) DEFAULT NULL,
  `sb_20` varchar(255) DEFAULT NULL,
  `sb_21` varchar(255) DEFAULT NULL,
  `sb_22` longtext,
  `sb_23` longtext,
  `sb_24` varchar(255) DEFAULT NULL,
  `sb_25` longtext,
  `sb_26` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `joom_jsn_uniform_submissions_4`
--

INSERT INTO `joom_jsn_uniform_submissions_4` (`data_id`, `sb_18`, `sb_19`, `sb_20`, `sb_21`, `sb_22`, `sb_23`, `sb_24`, `sb_25`, `sb_26`) VALUES
(5, 'Freelancer building websites for clients ', 'Less than 1 year ', 'Ninjaboard ', 'Whole Joomla! site installation package with sample data ', 'I love Joomla templates', 'I love Joomla templates', 'Mega menu ', '', '''''');

-- --------------------------------------------------------

--
-- Table structure for table `joom_jsn_uniform_submission_data`
--

CREATE TABLE IF NOT EXISTS `joom_jsn_uniform_submission_data` (
  `submission_data_id` int(11) NOT NULL AUTO_INCREMENT,
  `submission_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `field_type` varchar(45) NOT NULL,
  `submission_data_value` longtext NOT NULL,
  PRIMARY KEY (`submission_data_id`),
  KEY `submission_data_id` (`submission_data_id`),
  KEY `submission_id` (`submission_id`),
  KEY `form_id` (`form_id`),
  KEY `field_id` (`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `joom_jsn_uniform_templates`
--

CREATE TABLE IF NOT EXISTS `joom_jsn_uniform_templates` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `template_notify_to` tinyint(1) NOT NULL COMMENT '0 = Send to submitter; 1 = Send to added emails',
  `template_from` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `template_reply_to` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `template_subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `template_attach` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`template_id`),
  KEY `fk_uniform_templates_forms` (`form_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `joom_jsn_uniform_templates`
--

INSERT INTO `joom_jsn_uniform_templates` (`template_id`, `form_id`, `template_notify_to`, `template_from`, `template_reply_to`, `template_subject`, `template_message`, `template_attach`) VALUES
(1, 1, 1, '', '', 'New answer for JoomlaShine survey - From Demo site', '', ''),
(2, 1, 0, '', '', '', '', ''),
(3, 2, 1, '', '', '', '', ''),
(4, 2, 0, 'JSN Yoyo Demo at JoomlaShine.com', '', '', '<p>Hi,</p>\r\n\r\n<p>You receive this email because you''ve input your email in <strong>Get Newsletter</strong> module at <a href="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/index.php">JSN Yoyo Demo</a>. </p>\r\n\r\n<p>This subscription form is created by <a href="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/index.php?option=com_content&view=article&id=106&Itemid=774">JSN UniForm</a>, another cool extension from <a href="http://www.joomlashine.com">JoomlaShine</a>. JSN UniForm Free Edition is also included in JSN Yoyo package and you can will find out it is the easiest-to-use form extension. </p>\r\n\r\n<p>Thank you for concerning JoomlaShine’s products. Hope you feel satisfy with our <a href="http://www.joomlashine.com/joomla-templates.html">Joomla templates</a> and <a href="http://www.joomlashine.com/joomla-extensions.html">Joomla extensions</a>.</p>\r\n\r\n<p>Feel free to contact if you have questions. Keep in touch with us at:</p>\r\n<ul><li>Facebook: <a href="http://www.facebook.com/joomlashine">http://www.facebook.com/joomlashine</a></li>\r\n<li>Twitter: <a href="http://www.twitter.com/joomlashine">http://www.twitter.com/joomlashine</a></li></ul></p>\r\n\r\n<p>Best regards,</p>\r\n<p>JoomlaShine team</p>', ''),
(5, 3, 1, '', '', '', '', ''),
(6, 3, 0, 'JSN Yoyo Demo at JoomlaShine.com', '', '[JOOMLASHINE] Newsletter from Responsive Joomla template JSN Yoyo demo', '<p>Hi,</p>\r\n\r\n<p>You receive this email because you''ve input your email in <strong>Get Newsletter</strong> module at <a href="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/index.php">JSN Yoyo Demo</a>. </p>\r\n\r\n<p>This subscription form is created by <a href="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/index.php?option=com_content&view=article&id=106&Itemid=774">JSN UniForm</a>, another cool extension from <a href="http://www.joomlashine.com">JoomlaShine</a>. JSN UniForm Free Edition is also included in JSN Yoyo package and you can will find out it is the easiest-to-use form extension. </p>\r\n\r\n<p>Thank you for concerning JoomlaShine’s products. Hope you feel satisfy with our <a href="http://www.joomlashine.com/joomla-templates.html">Joomla templates</a> and <a href="http://www.joomlashine.com/joomla-extensions.html">Joomla extensions</a>.</p>\r\n\r\n<p>Feel free to contact if you have questions. Keep in touch with us at:</p>\r\n<ul><li>Facebook: <a href="http://www.facebook.com/joomlashine">http://www.facebook.com/joomlashine</a></li>\r\n<li>Twitter: <a href="http://www.twitter.com/joomlashine">http://www.twitter.com/joomlashine</a></li></ul></p>\r\n\r\n<p>Best regards,</p>\r\n<p>JoomlaShine team</p>', ''),
(7, 2, 1, '', '', '', '', ''),
(8, 2, 0, '', '', '', '', ''),
(9, 3, 1, '', '', '', '', ''),
(10, 3, 0, '', '', '', '', ''),
(11, 4, 1, '', '', 'New answer for JoomlaShine survey - From Demo site', '', ''),
(12, 4, 0, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `joom_kunena_aliases`
--

CREATE TABLE IF NOT EXISTS `joom_kunena_aliases` (
  `alias` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `item` varchar(32) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0',
  UNIQUE KEY `alias` (`alias`),
  KEY `state` (`state`),
  KEY `item` (`item`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `joom_kunena_aliases`
--

INSERT INTO `joom_kunena_aliases` (`alias`, `type`, `item`, `state`) VALUES
('announcement', 'view', 'announcement', 1),
('category', 'view', 'category', 1),
('category/create', 'layout', 'category.create', 1),
('category/default', 'layout', 'category.default', 1),
('category/edit', 'layout', 'category.edit', 1),
('category/manage', 'layout', 'category.manage', 1),
('category/moderate', 'layout', 'category.moderate', 1),
('category/user', 'layout', 'category.user', 1),
('common', 'view', 'common', 1),
('create', 'layout', 'category.create', 0),
('credits', 'view', 'credits', 1),
('default', 'layout', 'category.default', 0),
('edit', 'layout', 'category.edit', 0),
('home', 'view', 'home', 1),
('main-forum', 'catid', '1', 1),
('manage', 'layout', 'category.manage', 0),
('misc', 'view', 'misc', 1),
('moderate', 'layout', 'category.moderate', 0),
('search', 'view', 'search', 1),
('statistics', 'view', 'statistics', 1),
('suggestion-box', 'catid', '3', 1),
('topic', 'view', 'topic', 1),
('topics', 'view', 'topics', 1),
('user', 'view', 'user', 1),
('welcome-mat', 'catid', '2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `joom_kunena_announcement`
--

CREATE TABLE IF NOT EXISTS `joom_kunena_announcement` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `title` tinytext NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `sdescription` text NOT NULL,
  `description` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` tinyint(4) NOT NULL DEFAULT '0',
  `showdate` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `joom_kunena_attachments`
--

CREATE TABLE IF NOT EXISTS `joom_kunena_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mesid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `hash` char(32) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `folder` varchar(255) NOT NULL,
  `filetype` varchar(20) NOT NULL,
  `filename` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mesid` (`mesid`),
  KEY `userid` (`userid`),
  KEY `hash` (`hash`),
  KEY `filename` (`filename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `joom_kunena_categories`
--

CREATE TABLE IF NOT EXISTS `joom_kunena_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '0',
  `name` tinytext,
  `alias` varchar(255) NOT NULL,
  `icon_id` tinyint(4) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `accesstype` varchar(20) NOT NULL DEFAULT 'joomla.level',
  `access` int(11) NOT NULL DEFAULT '0',
  `pub_access` int(11) NOT NULL DEFAULT '1',
  `pub_recurse` tinyint(4) DEFAULT '1',
  `admin_access` int(11) NOT NULL DEFAULT '0',
  `admin_recurse` tinyint(4) DEFAULT '1',
  `ordering` smallint(6) NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `channels` text,
  `checked_out` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review` tinyint(4) NOT NULL DEFAULT '0',
  `allow_anonymous` tinyint(4) NOT NULL DEFAULT '0',
  `post_anonymous` tinyint(4) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `headerdesc` text NOT NULL,
  `class_sfx` varchar(20) NOT NULL,
  `allow_polls` tinyint(4) NOT NULL DEFAULT '0',
  `topic_ordering` varchar(16) NOT NULL DEFAULT 'lastpost',
  `numTopics` mediumint(8) NOT NULL DEFAULT '0',
  `numPosts` mediumint(8) NOT NULL DEFAULT '0',
  `last_topic_id` int(11) NOT NULL DEFAULT '0',
  `last_post_id` int(11) NOT NULL DEFAULT '0',
  `last_post_time` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `category_access` (`accesstype`,`access`),
  KEY `published_pubaccess_id` (`published`,`pub_access`,`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `joom_kunena_categories`
--

INSERT INTO `joom_kunena_categories` (`id`, `parent_id`, `name`, `alias`, `icon_id`, `locked`, `accesstype`, `access`, `pub_access`, `pub_recurse`, `admin_access`, `admin_recurse`, `ordering`, `published`, `channels`, `checked_out`, `checked_out_time`, `review`, `allow_anonymous`, `post_anonymous`, `hits`, `description`, `headerdesc`, `class_sfx`, `allow_polls`, `topic_ordering`, `numTopics`, `numPosts`, `last_topic_id`, `last_post_id`, `last_post_time`, `params`) VALUES
(1, 0, 'Main Forum', 'main-forum', 0, 0, 'joomla.group', 0, 1, 1, 0, 1, 1, 1, NULL, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'This is the main forum section. It serves as a container for categories for your topics.', 'The section header is used to display additional information about the categories of topics that it contains.', '', 0, 'lastpost', 0, 0, 0, 0, 0, ''),
(2, 1, 'Welcome Mat', 'welcome-mat', 0, 0, 'joomla.group', 0, 1, 1, 0, 1, 1, 1, NULL, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'We encourage new members to introduce themselves here. Get to know one another and share your interests.', '[b]Welcome to the Kunena forum![/b] \n\n Tell us and our members who you are, what you like and why you became a member of this site. \n We welcome all new members and hope to see you around a lot!', '', 0, 'lastpost', 2, 2, 2, 2, 1391247640, '{}'),
(3, 1, 'Suggestion Box', 'suggestion-box', 0, 0, 'joomla.group', 0, 1, 1, 0, 1, 2, 1, NULL, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'Have some feedback and input to share? \n Don''t be shy and drop us a note. We want to hear from you and strive to make our site better and more user friendly for our guests and members a like.', 'This is the optional category header for the Suggestion Box.', '', 1, 'lastpost', 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `joom_kunena_configuration`
--

CREATE TABLE IF NOT EXISTS `joom_kunena_configuration` (
  `id` int(11) NOT NULL DEFAULT '0',
  `params` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `joom_kunena_keywords`
--

CREATE TABLE IF NOT EXISTS `joom_kunena_keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `public_count` int(11) NOT NULL,
  `total_count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `public_count` (`public_count`),
  KEY `total_count` (`total_count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `joom_kunena_keywords_map`
--

CREATE TABLE IF NOT EXISTS `joom_kunena_keywords_map` (
  `keyword_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  UNIQUE KEY `keyword_user_topic` (`keyword_id`,`user_id`,`topic_id`),
  KEY `user_id` (`user_id`),
  KEY `topic_user` (`topic_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `joom_kunena_messages`
--

CREATE TABLE IF NOT EXISTS `joom_kunena_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) DEFAULT '0',
  `thread` int(11) DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `name` tinytext,
  `userid` int(11) NOT NULL DEFAULT '0',
  `email` tinytext,
  `subject` tinytext,
  `time` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(128) DEFAULT NULL,
  `topic_emoticon` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `hold` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `moved` tinyint(4) DEFAULT '0',
  `modified_by` int(7) DEFAULT NULL,
  `modified_time` int(11) DEFAULT NULL,
  `modified_reason` tinytext,
  PRIMARY KEY (`id`),
  KEY `thread` (`thread`),
  KEY `ip` (`ip`),
  KEY `userid` (`userid`),
  KEY `time` (`time`),
  KEY `locked` (`locked`),
  KEY `hold_time` (`hold`,`time`),
  KEY `parent_hits` (`parent`,`hits`),
  KEY `catid_parent` (`catid`,`parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `joom_kunena_messages`
--

INSERT INTO `joom_kunena_messages` (`id`, `parent`, `thread`, `catid`, `name`, `userid`, `email`, `subject`, `time`, `ip`, `topic_emoticon`, `locked`, `hold`, `ordering`, `hits`, `moved`, `modified_by`, `modified_time`, `modified_reason`) VALUES
(1, 0, 1, 2, 'Kunena', 190, NULL, 'Welcome to Kunena!', 1391231467, '127.0.0.1', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL),
(2, 0, 2, 2, 'admin', 190, '', 'hhj', 1391247640, '::1', 0, 0, 0, 0, 0, 0, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `joom_kunena_messages_text`
--

CREATE TABLE IF NOT EXISTS `joom_kunena_messages_text` (
  `mesid` int(11) NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  PRIMARY KEY (`mesid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `joom_kunena_messages_text`
--

INSERT INTO `joom_kunena_messages_text` (`mesid`, `message`) VALUES
(1, '[size=4][b]Welcome to Kunena![/b][/size] \n\n Thank you for choosing Kunena for your community forum needs in Joomla. \n\n Kunena, translated from Swahili meaning “to speak”, is built by a team of open source professionals with the goal of providing a top quality, tightly unified forum solution for Joomla. \n\n\n [size=4][b]Additional Kunena Resources[/b][/size] \n\n [b]Kunena Documentation:[/b] [url]http://www.kunena.org/docs[/url] \n\n [b]Kunena Support Forum[/b]: [url]http://www.kunena.org/forum[/url] \n\n [b]Kunena Downloads:[/b] [url]http://www.kunena.org/download[/url] \n\n [b]Kunena Blog:[/b] [url]http://www.kunena.org/blog[/url] \n\n [b]Follow Kunena on Twitter:[/b] [url]http://www.kunena.org/twitter[/url]'),
(2, 'hbh');

-- --------------------------------------------------------

--
-- Table structure for table `joom_kunena_polls`
--

CREATE TABLE IF NOT EXISTS `joom_kunena_polls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `threadid` int(11) NOT NULL,
  `polltimetolive` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `threadid` (`threadid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `joom_kunena_polls_options`
--

CREATE TABLE IF NOT EXISTS `joom_kunena_polls_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pollid` int(11) DEFAULT NULL,
  `text` varchar(100) DEFAULT NULL,
  `votes` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pollid` (`pollid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `joom_kunena_polls_users`
--

CREATE TABLE IF NOT EXISTS `joom_kunena_polls_users` (
  `pollid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `votes` int(11) DEFAULT NULL,
  `lasttime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvote` int(11) DEFAULT NULL,
  UNIQUE KEY `pollid` (`pollid`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `joom_kunena_ranks`
--

CREATE TABLE IF NOT EXISTS `joom_kunena_ranks` (
  `rank_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rank_title` varchar(255) NOT NULL DEFAULT '',
  `rank_min` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rank_special` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rank_image` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rank_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `joom_kunena_ranks`
--

INSERT INTO `joom_kunena_ranks` (`rank_id`, `rank_title`, `rank_min`, `rank_special`, `rank_image`) VALUES
(1, 'New Member', 0, 0, 'rank1.gif'),
(2, 'Junior Member', 20, 0, 'rank2.gif'),
(3, 'Senior Member', 40, 0, 'rank3.gif'),
(4, 'Premium Member', 80, 0, 'rank4.gif'),
(5, 'Elite Member', 160, 0, 'rank5.gif'),
(6, 'Platinum Member', 320, 0, 'rank6.gif'),
(7, 'Administrator', 0, 1, 'rankadmin.gif'),
(8, 'Moderator', 0, 1, 'rankmod.gif'),
(9, 'Spammer', 0, 1, 'rankspammer.gif'),
(10, 'Banned', 0, 1, 'rankbanned.gif');

-- --------------------------------------------------------

--
-- Table structure for table `joom_kunena_sessions`
--

CREATE TABLE IF NOT EXISTS `joom_kunena_sessions` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `allowed` text,
  `lasttime` int(11) NOT NULL DEFAULT '0',
  `readtopics` text,
  `currvisit` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`),
  KEY `currvisit` (`currvisit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `joom_kunena_sessions`
--

INSERT INTO `joom_kunena_sessions` (`userid`, `allowed`, `lasttime`, `readtopics`, `currvisit`) VALUES
(190, 'na', 1391236425, '0', 1391247643);

-- --------------------------------------------------------

--
-- Table structure for table `joom_kunena_smileys`
--

CREATE TABLE IF NOT EXISTS `joom_kunena_smileys` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `code` varchar(12) NOT NULL DEFAULT '',
  `location` varchar(50) NOT NULL DEFAULT '',
  `greylocation` varchar(60) NOT NULL DEFAULT '',
  `emoticonbar` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `joom_kunena_smileys`
--

INSERT INTO `joom_kunena_smileys` (`id`, `code`, `location`, `greylocation`, `emoticonbar`) VALUES
(1, 'B)', 'cool.png', 'cool-grey.png', 1),
(2, '8)', 'cool.png', 'cool-grey.png', 0),
(3, '8-)', 'cool.png', 'cool-grey.png', 0),
(4, ':-(', 'sad.png', 'sad-grey.png', 0),
(5, ':(', 'sad.png', 'sad-grey.png', 1),
(6, ':sad:', 'sad.png', 'sad-grey.png', 0),
(7, ':cry:', 'sad.png', 'sad-grey.png', 0),
(8, ':)', 'smile.png', 'smile-grey.png', 1),
(9, ':-)', 'smile.png', 'smile-grey.png', 0),
(10, ':cheer:', 'cheerful.png', 'cheerful-grey.png', 1),
(11, ';)', 'wink.png', 'wink-grey.png', 1),
(12, ';-)', 'wink.png', 'wink-grey.png', 0),
(13, ':wink:', 'wink.png', 'wink-grey.png', 0),
(14, ';-)', 'wink.png', 'wink-grey.png', 0),
(15, ':P', 'tongue.png', 'tongue-grey.png', 1),
(16, ':p', 'tongue.png', 'tongue-grey.png', 0),
(17, ':-p', 'tongue.png', 'tongue-grey.png', 0),
(18, ':-P', 'tongue.png', 'tongue-grey.png', 0),
(19, ':razz:', 'tongue.png', 'tongue-grey.png', 0),
(20, ':angry:', 'angry.png', 'angry-grey.png', 1),
(21, ':mad:', 'angry.png', 'angry-grey.png', 0),
(22, ':unsure:', 'unsure.png', 'unsure-grey.png', 1),
(23, ':o', 'shocked.png', 'shocked-grey.png', 0),
(24, ':-o', 'shocked.png', 'shocked-grey.png', 0),
(25, ':O', 'shocked.png', 'shocked-grey.png', 0),
(26, ':-O', 'shocked.png', 'shocked-grey.png', 0),
(27, ':eek:', 'shocked.png', 'shocked-grey.png', 0),
(28, ':ohmy:', 'shocked.png', 'shocked-grey.png', 1),
(29, ':huh:', 'wassat.png', 'wassat-grey.png', 1),
(30, ':?', 'confused.png', 'confused-grey.png', 0),
(31, ':-?', 'confused.png', 'confused-grey.png', 0),
(32, ':???', 'confused.png', 'confused-grey.png', 0),
(33, ':dry:', 'ermm.png', 'ermm-grey.png', 1),
(34, ':ermm:', 'ermm.png', 'ermm-grey.png', 0),
(35, ':lol:', 'grin.png', 'grin-grey.png', 1),
(36, ':X', 'sick.png', 'sick-grey.png', 0),
(37, ':x', 'sick.png', 'sick-grey.png', 0),
(38, ':sick:', 'sick.png', 'sick-grey.png', 1),
(39, ':silly:', 'silly.png', 'silly-grey.png', 1),
(40, ':y32b4:', 'silly.png', 'silly-grey.png', 0),
(41, ':blink:', 'blink.png', 'blink-grey.png', 1),
(42, ':blush:', 'blush.png', 'blush-grey.png', 1),
(43, ':oops:', 'blush.png', 'blush-grey.png', 1),
(44, ':kiss:', 'kissing.png', 'kissing-grey.png', 1),
(45, ':rolleyes:', 'blink.png', 'blink-grey.png', 0),
(46, ':roll:', 'blink.png', 'blink-grey.png', 0),
(47, ':woohoo:', 'w00t.png', 'w00t-grey.png', 1),
(48, ':side:', 'sideways.png', 'sideways-grey.png', 1),
(49, ':S', 'dizzy.png', 'dizzy-grey.png', 1),
(50, ':s', 'dizzy.png', 'dizzy-grey.png', 0),
(51, ':evil:', 'devil.png', 'devil-grey.png', 1),
(52, ':twisted:', 'devil.png', 'devil-grey.png', 0),
(53, ':whistle:', 'whistling.png', 'whistling-grey.png', 1),
(54, ':pinch:', 'pinch.png', 'pinch-grey.png', 1),
(55, ':D', 'laughing.png', 'laughing-grey.png', 0),
(56, ':-D', 'laughing.png', 'laughing-grey.png', 0),
(57, ':grin:', 'laughing.png', 'laughing-grey.png', 0),
(58, ':laugh:', 'laughing.png', 'laughing-grey.png', 0),
(59, ':|', 'neutral.png', 'neutral-grey.png', 0),
(60, ':-|', 'neutral.png', 'neutral-grey.png', 0),
(61, ':neutral:', 'neutral.png', 'neutral-grey.png', 0),
(62, ':mrgreen:', 'mrgreen.png', 'mrgreen-grey.png', 0),
(63, ':?:', 'question.png', 'question-grey.png', 0),
(64, ':!:', 'exclamation.png', 'exclamation-grey.png', 0),
(65, ':arrow:', 'arrow.png', 'arrow-grey.png', 0),
(66, ':idea:', 'idea.png', 'idea-grey.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `joom_kunena_thankyou`
--

CREATE TABLE IF NOT EXISTS `joom_kunena_thankyou` (
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `targetuserid` int(11) NOT NULL,
  `time` datetime NOT NULL,
  UNIQUE KEY `postid` (`postid`,`userid`),
  KEY `userid` (`userid`),
  KEY `targetuserid` (`targetuserid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `joom_kunena_topics`
--

CREATE TABLE IF NOT EXISTS `joom_kunena_topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `subject` tinytext,
  `icon_id` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `hold` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `posts` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `attachments` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  `moved_id` int(11) NOT NULL DEFAULT '0',
  `first_post_id` int(11) NOT NULL DEFAULT '0',
  `first_post_time` int(11) NOT NULL DEFAULT '0',
  `first_post_userid` int(11) NOT NULL DEFAULT '0',
  `first_post_message` text,
  `first_post_guest_name` tinytext,
  `last_post_id` int(11) NOT NULL DEFAULT '0',
  `last_post_time` int(11) NOT NULL DEFAULT '0',
  `last_post_userid` int(11) NOT NULL DEFAULT '0',
  `last_post_message` text,
  `last_post_guest_name` tinytext,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `locked` (`locked`),
  KEY `hold` (`hold`),
  KEY `posts` (`posts`),
  KEY `hits` (`hits`),
  KEY `first_post_userid` (`first_post_userid`),
  KEY `last_post_userid` (`last_post_userid`),
  KEY `first_post_time` (`first_post_time`),
  KEY `last_post_time` (`last_post_time`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `joom_kunena_topics`
--

INSERT INTO `joom_kunena_topics` (`id`, `category_id`, `subject`, `icon_id`, `locked`, `hold`, `ordering`, `posts`, `hits`, `attachments`, `poll_id`, `moved_id`, `first_post_id`, `first_post_time`, `first_post_userid`, `first_post_message`, `first_post_guest_name`, `last_post_id`, `last_post_time`, `last_post_userid`, `last_post_message`, `last_post_guest_name`, `params`) VALUES
(1, 2, 'Welcome to Kunena!', 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1391231467, 190, '[size=4][b]Welcome to Kunena![/b][/size] \n\n Thank you for choosing Kunena for your community forum needs in Joomla. \n\n Kunena, translated from Swahili meaning “to speak”, is built by a team of open source professionals with the goal of providing a top quality, tightly unified forum solution for Joomla. \n\n\n [size=4][b]Additional Kunena Resources[/b][/size] \n\n [b]Kunena Documentation:[/b] [url]http://www.kunena.org/docs[/url] \n\n [b]Kunena Support Forum[/b]: [url]http://www.kunena.org/forum[/url] \n\n [b]Kunena Downloads:[/b] [url]http://www.kunena.org/download[/url] \n\n [b]Kunena Blog:[/b] [url]http://www.kunena.org/blog[/url] \n\n [b]Follow Kunena on Twitter:[/b] [url]http://www.kunena.org/twitter[/url]', 'Kunena', 1, 1391231467, 190, '[size=4][b]Welcome to Kunena![/b][/size] \n\n Thank you for choosing Kunena for your community forum needs in Joomla. \n\n Kunena, translated from Swahili meaning “to speak”, is built by a team of open source professionals with the goal of providing a top quality, tightly unified forum solution for Joomla. \n\n\n [size=4][b]Additional Kunena Resources[/b][/size] \n\n [b]Kunena Documentation:[/b] [url]http://www.kunena.org/docs[/url] \n\n [b]Kunena Support Forum[/b]: [url]http://www.kunena.org/forum[/url] \n\n [b]Kunena Downloads:[/b] [url]http://www.kunena.org/download[/url] \n\n [b]Kunena Blog:[/b] [url]http://www.kunena.org/blog[/url] \n\n [b]Follow Kunena on Twitter:[/b] [url]http://www.kunena.org/twitter[/url]', 'Kunena', ''),
(2, 2, 'hhj', 0, 0, 0, 0, 1, 1, 0, 0, 0, 2, 1391247640, 190, 'hbh', 'admin', 2, 1391247640, 190, 'hbh', 'admin', '');

-- --------------------------------------------------------

--
-- Table structure for table `joom_kunena_users`
--

CREATE TABLE IF NOT EXISTS `joom_kunena_users` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `view` varchar(8) NOT NULL DEFAULT '',
  `signature` text,
  `moderator` int(11) DEFAULT '0',
  `banned` datetime DEFAULT NULL,
  `ordering` int(11) DEFAULT '0',
  `posts` int(11) DEFAULT '0',
  `avatar` varchar(255) DEFAULT NULL,
  `karma` int(11) DEFAULT '0',
  `karma_time` int(11) DEFAULT '0',
  `group_id` int(4) DEFAULT '1',
  `uhits` int(11) DEFAULT '0',
  `personalText` tinytext,
  `gender` tinyint(4) NOT NULL DEFAULT '0',
  `birthdate` date NOT NULL DEFAULT '0001-01-01',
  `location` varchar(50) DEFAULT NULL,
  `icq` varchar(50) DEFAULT NULL,
  `aim` varchar(50) DEFAULT NULL,
  `yim` varchar(50) DEFAULT NULL,
  `msn` varchar(50) DEFAULT NULL,
  `skype` varchar(50) DEFAULT NULL,
  `twitter` varchar(50) DEFAULT NULL,
  `facebook` varchar(50) DEFAULT NULL,
  `gtalk` varchar(50) DEFAULT NULL,
  `myspace` varchar(50) DEFAULT NULL,
  `linkedin` varchar(50) DEFAULT NULL,
  `delicious` varchar(50) DEFAULT NULL,
  `friendfeed` varchar(50) DEFAULT NULL,
  `digg` varchar(50) DEFAULT NULL,
  `blogspot` varchar(50) DEFAULT NULL,
  `flickr` varchar(50) DEFAULT NULL,
  `bebo` varchar(50) DEFAULT NULL,
  `websitename` varchar(50) DEFAULT NULL,
  `websiteurl` varchar(50) DEFAULT NULL,
  `rank` tinyint(4) NOT NULL DEFAULT '0',
  `hideEmail` tinyint(1) NOT NULL DEFAULT '1',
  `showOnline` tinyint(1) NOT NULL DEFAULT '1',
  `thankyou` int(11) DEFAULT '0',
  PRIMARY KEY (`userid`),
  KEY `group_id` (`group_id`),
  KEY `posts` (`posts`),
  KEY `uhits` (`uhits`),
  KEY `banned` (`banned`),
  KEY `moderator` (`moderator`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `joom_kunena_users`
--

INSERT INTO `joom_kunena_users` (`userid`, `view`, `signature`, `moderator`, `banned`, `ordering`, `posts`, `avatar`, `karma`, `karma_time`, `group_id`, `uhits`, `personalText`, `gender`, `birthdate`, `location`, `icq`, `aim`, `yim`, `msn`, `skype`, `twitter`, `facebook`, `gtalk`, `myspace`, `linkedin`, `delicious`, `friendfeed`, `digg`, `blogspot`, `flickr`, `bebo`, `websitename`, `websiteurl`, `rank`, `hideEmail`, `showOnline`, `thankyou`) VALUES
(190, '', NULL, 0, NULL, 0, 2, NULL, 0, 0, 1, 0, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `joom_kunena_users_banned`
--

CREATE TABLE IF NOT EXISTS `joom_kunena_users_banned` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `ip` varchar(128) DEFAULT NULL,
  `blocked` tinyint(4) NOT NULL DEFAULT '0',
  `expiration` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_time` datetime NOT NULL,
  `reason_private` text,
  `reason_public` text,
  `modified_by` int(11) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `comments` text,
  `params` text,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `ip` (`ip`),
  KEY `expiration` (`expiration`),
  KEY `created_time` (`created_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `joom_kunena_user_categories`
--

CREATE TABLE IF NOT EXISTS `joom_kunena_user_categories` (
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT '0',
  `allreadtime` datetime DEFAULT NULL,
  `subscribed` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`user_id`,`category_id`),
  KEY `category_subscribed` (`category_id`,`subscribed`),
  KEY `role` (`role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `joom_kunena_user_read`
--

CREATE TABLE IF NOT EXISTS `joom_kunena_user_read` (
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  UNIQUE KEY `user_topic_id` (`user_id`,`topic_id`),
  KEY `category_user_id` (`category_id`,`user_id`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `joom_kunena_user_read`
--

INSERT INTO `joom_kunena_user_read` (`user_id`, `topic_id`, `category_id`, `message_id`, `time`) VALUES
(190, 2, 2, 2, 1391247643);

-- --------------------------------------------------------

--
-- Table structure for table `joom_kunena_user_topics`
--

CREATE TABLE IF NOT EXISTS `joom_kunena_user_topics` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL,
  `posts` mediumint(8) NOT NULL DEFAULT '0',
  `last_post_id` int(11) NOT NULL DEFAULT '0',
  `owner` tinyint(4) NOT NULL DEFAULT '0',
  `favorite` tinyint(4) NOT NULL DEFAULT '0',
  `subscribed` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  UNIQUE KEY `user_topic_id` (`user_id`,`topic_id`),
  KEY `topic_id` (`topic_id`),
  KEY `posts` (`posts`),
  KEY `owner` (`owner`),
  KEY `favorite` (`favorite`),
  KEY `subscribed` (`subscribed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `joom_kunena_user_topics`
--

INSERT INTO `joom_kunena_user_topics` (`user_id`, `topic_id`, `category_id`, `posts`, `last_post_id`, `owner`, `favorite`, `subscribed`, `params`) VALUES
(190, 1, 2, 1, 1, 1, 0, 0, ''),
(190, 2, 2, 1, 2, 1, 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `joom_kunena_version`
--

CREATE TABLE IF NOT EXISTS `joom_kunena_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(20) NOT NULL,
  `versiondate` date NOT NULL,
  `installdate` date NOT NULL,
  `build` varchar(20) NOT NULL,
  `versionname` varchar(40) DEFAULT NULL,
  `state` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `joom_kunena_version`
--

INSERT INTO `joom_kunena_version` (`id`, `version`, `versiondate`, `installdate`, `build`, `versionname`, `state`) VALUES
(1, '3.0.4', '2013-12-22', '2014-02-01', '', 'Ukko', '');

-- --------------------------------------------------------

--
-- Table structure for table `joom_languages`
--

CREATE TABLE IF NOT EXISTS `joom_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_ordering` (`ordering`),
  KEY `idx_access` (`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `joom_languages`
--

INSERT INTO `joom_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `joom_menu`
--

CREATE TABLE IF NOT EXISTS `joom_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned DEFAULT NULL,
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1069 ;

--
-- Dumping data for table `joom_menu`
--

INSERT INTO `joom_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 211, 0, '*', 0),
(435, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"1","orderby_pri":"none","orderby_sec":"","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"0","link_titles":"","show_intro":"1","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"use_article","show_modify_date":"","show_publish_date":"","show_item_navigation":"1","show_vote":"0","show_readmore":"","show_readmore_title":"1","show_icons":"1","show_print_icon":"0","show_email_icon":"0","show_hits":"","show_noauth":"0","show_feed_link":"","feed_summary":"","menu-anchor_title":"Start here","menu-anchor_css":"jsn-icon-home","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"jsn-onepage","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 1, 2, 1, '*', 0),
(466, 'mainmenu', 'Layout', 'layout', '', 'layout', 'index.php?option=com_content&view=article&id=71', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"36 positions","menu-anchor_css":"jsn-icon-image","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 3, 16, 0, '*', 0),
(468, 'mainmenu', 'Menu Styles', 'menu-styles', '', 'menu-styles', 'index.php?option=com_content&view=article&id=72', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"Efficient navigation","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 17, 22, 0, '*', 0),
(470, 'mainmenu', 'Module Styles', 'module-styles', '', 'module-styles', 'index.php?option=com_content&view=article&id=73', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"Make it beautiful","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 23, 24, 0, '*', 0),
(472, 'mainmenu', 'Left | Center | Right ', 'left-center-right', '', 'layout/left-center-right', 'index.php?option=com_content&view=article&id=90', 'component', 1, 466, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 4, 5, 0, '*', 0),
(473, 'mainmenu', 'Left | Innerleft | Center', 'left--innerleft--center', '', 'layout/left--innerleft--center', 'index.php?option=com_content&view=article&id=91', 'component', 1, 466, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 6, 7, 0, '*', 0),
(474, 'mainmenu', 'Left | Center | Innerright', 'left--center--innerright', '', 'layout/left--center--innerright', 'index.php?option=com_content&view=article&id=89', 'component', 1, 466, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 8, 9, 0, '*', 0),
(475, 'mainmenu', 'Center | Innerright | Right', 'center--innerright--right', '', 'layout/center--innerright--right', 'index.php?option=com_content&view=article&id=87', 'component', 1, 466, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 10, 11, 0, '*', 0),
(476, 'mainmenu', 'Innerleft | Center | Right', 'innerleft--center--right', '', 'layout/innerleft--center--right', 'index.php?option=com_content&view=article&id=88', 'component', 1, 466, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 12, 13, 0, '*', 0),
(477, 'mainmenu', 'Main content only', 'main-content-only', '', 'layout/main-content-only', 'index.php?option=com_content&view=article&id=92', 'component', 1, 466, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 14, 15, 0, '*', 0),
(479, 'mainmenu', 'Main Menu', 'main-menu', '', 'menu-styles/main-menu', 'index.php?option=com_content&view=article&id=93', 'component', 1, 468, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 18, 19, 0, '*', 0),
(482, 'mainmenu', 'Tree menu', 'tree-menu', '', 'menu-styles/tree-menu', 'index.php?option=com_content&view=article&id=98', 'component', 1, 468, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 20, 21, 0, '*', 0),
(496, 'mainmenu', 'Get now', 'editions-a-pricing', '', 'editions-a-pricing', 'http://www.joomlashine.com/joomla-templates/jsn-yoyo-download.html', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"It''s free","menu-anchor_css":"","menu_image":"","menu_text":1}', 33, 34, 0, '*', 0),
(497, 'topmenu', 'Product Tour', 'product-tour', '', 'product-tour', 'index.php?option=com_content&view=article&id=101', 'component', 0, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 35, 36, 0, '*', 0),
(498, 'topmenu', 'Get it Now', 'buy-now', '', 'buy-now', 'http://www.joomlashine.com/joomla-templates/jsn-yoyo-download.html', 'url', 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 37, 38, 0, '*', 0),
(499, 'footermenu', 'JoomlaShine', 'joomlashine', '', 'joomlashine', 'http://www.joomlashine.com', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 39, 40, 0, '*', 0),
(500, 'footermenu', 'Joomla Templates', 'joomla-templates', '', 'joomla-templates', 'http://www.joomlashine.com/joomla-templates.html', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 41, 42, 0, '*', 0),
(501, 'footermenu', 'Joomla Extensions', 'joomla-extensions', '', 'joomla-extensions', 'http://www.joomlashine.com/joomla-extensions.html', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 43, 44, 0, '*', 0),
(502, 'mustsee', 'Layout', '2011-11-25-09-21-19', '', '2011-11-25-09-21-19', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"466","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 49, 50, 0, '*', 0),
(503, 'mustsee', 'Easy to start', '2011-11-25-09-29-27', '', '2011-11-25-09-29-27', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"542","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 45, 46, 0, '*', 0),
(504, 'mustsee', 'Menu Styles', '2011-11-25-09-22-12', '', '2011-11-25-09-22-12', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"468","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 51, 52, 0, '*', 0),
(505, 'mustsee', 'Painless Configuration', '2011-11-25-09-29-40', '', '2011-11-25-09-29-40', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"543","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 47, 48, 0, '*', 0),
(506, 'mustsee', 'Module Styles', '2011-11-25-09-24-30', '', '2011-11-25-09-24-30', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"470","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 53, 54, 0, '*', 0),
(507, 'mustsee', 'RTL Support', '2011-11-25-09-25-33', '', '2011-11-25-09-25-33', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"542","menu-anchor_title":"","menu-anchor_css":"custom-direction-rtl","menu_image":"","menu_text":1}', 55, 56, 0, '*', 0),
(542, 'advanced-stuff', 'Easy to Start', 'easy-to-start', '', 'easy-to-start', 'index.php?option=com_content&view=article&id=77', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 57, 58, 0, '*', 0),
(543, 'advanced-stuff', 'Painless Configuration', 'painless-configuration', '', 'painless-configuration', 'index.php?option=com_content&view=article&id=84', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 59, 60, 0, '*', 0),
(544, 'advanced-stuff', 'RTL Support', 'rtl-support', '', 'rtl-support', 'index.php?option=com_content&view=article&id=85', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"custom-direction-rtl","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 61, 62, 0, '*', 0),
(545, 'advanced-stuff', 'Image Gallery', 'image-gallery', '', 'image-gallery', 'index.php?option=com_content&view=article&id=79', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 63, 64, 0, '*', 0),
(546, 'advanced-stuff', 'Docs / Support', 'docs-support', '', 'docs-support', 'index.php?option=com_content&view=article&id=76', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 65, 66, 0, '*', 0),
(547, 'advanced-stuff', 'Multilingual Support', 'multilingual-support', '', 'multilingual-support', 'index.php?option=com_content&view=article&id=83', 'component', 0, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 67, 68, 0, '*', 0),
(706, 'mainmenu', 'Free Stuffs', 'free-extensions', '', 'free-extensions', '#', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"Extend func..","menu-anchor_css":"","menu_image":"","menu_text":1}', 25, 32, 0, '*', 0),
(707, 'mainmenu', 'Image Gallery', 'image-gallery', '', 'free-extensions/image-gallery', 'index.php?option=com_content&view=article&id=79', 'component', 1, 706, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 26, 27, 0, '*', 0),
(708, 'mainmenu', 'Form Builder', 'form-builder', '', 'free-extensions/form-builder', 'index.php?option=com_content&view=article&id=106', 'component', 1, 706, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 28, 29, 0, '*', 0),
(798, 'mainmenu', 'Joomla Management', 'joomla-management', '', 'free-extensions/joomla-management', 'index.php?option=com_content&view=article&id=108', 'component', 1, 706, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 30, 31, 0, '*', 0),
(836, 'onepage-menu', 'Home', '2013-10-11-02-46-55', '', '2013-10-11-02-46-55', '#top', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"jsn-scroll","menu_image":"","menu_text":1}', 69, 70, 0, '*', 0),
(837, 'onepage-menu', 'Services', '2013-10-11-02-47-35', '', '2013-10-11-02-47-35', '#our-services', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"jsn-scroll","menu_image":"","menu_text":1}', 71, 72, 0, '*', 0),
(838, 'onepage-menu', 'Recent Works', '2013-10-11-02-47-58', '', '2013-10-11-02-47-58', '#recent-works', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"jsn-scroll","menu_image":"","menu_text":1}', 73, 74, 0, '*', 0),
(839, 'onepage-menu', 'Our Team', '2013-10-11-02-48-25', '', '2013-10-11-02-48-25', '#our-team', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"jsn-scroll","menu_image":"","menu_text":1}', 75, 76, 0, '*', 0),
(840, 'onepage-menu', 'Contact', '2013-10-11-02-48-50', '', '2013-10-11-02-48-50', '#our-contact', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"jsn-scroll","menu_image":"","menu_text":1}', 77, 78, 0, '*', 0),
(841, 'onepage-menu', 'Go inside', '2013-10-11-02-49-50', '', '2013-10-11-02-49-50', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"468","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 79, 80, 0, '*', 0),
(1004, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 81, 90, 0, '*', 1),
(1005, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 1004, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 82, 83, 0, '*', 1),
(1006, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 1004, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 84, 85, 0, '*', 1),
(1007, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 1004, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 86, 87, 0, '*', 1),
(1008, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 1004, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 88, 89, 0, '*', 1),
(1009, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 91, 96, 0, '*', 1),
(1010, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 1009, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 92, 93, 0, '*', 1),
(1011, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 1009, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 94, 95, 0, '*', 1),
(1012, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 97, 102, 0, '*', 1),
(1013, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 1012, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 98, 99, 0, '*', 1),
(1014, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 1012, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 100, 101, 0, '*', 1),
(1015, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 103, 108, 0, '*', 1),
(1016, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1015, 2, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 104, 105, 0, '*', 1),
(1017, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 1015, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 106, 107, 0, '*', 1),
(1018, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 109, 110, 0, '*', 1),
(1019, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 111, 112, 0, '*', 1),
(1020, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 113, 118, 0, '*', 1),
(1021, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 1020, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 114, 115, 0, '*', 1),
(1022, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 1020, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 116, 117, 0, '*', 1),
(1023, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 119, 120, 0, '*', 1),
(1024, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 121, 122, 0, '*', 1),
(1025, 'main', 'COM_IMAGESHOW', 'com-imageshow', '', 'com-imageshow', 'index.php?option=com_imageshow', 'component', 0, 1, 1, 10003, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-picture.png', 0, '', 123, 134, 0, '', 1),
(1026, 'main', 'LAUNCH_PAD', 'launch-pad', '', 'com-imageshow/launch-pad', 'index.php?option=com_imageshow', 'component', 0, 1025, 2, 10003, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-off.png', 0, '', 124, 125, 0, '', 1),
(1027, 'main', 'SHOWLISTS', 'showlists', '', 'com-imageshow/showlists', 'index.php?option=com_imageshow&controller=showlist', 'component', 0, 1025, 2, 10003, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-file.png', 0, '', 126, 127, 0, '', 1),
(1028, 'main', 'SHOWCASES', 'showcases', '', 'com-imageshow/showcases', 'index.php?option=com_imageshow&controller=showcase', 'component', 0, 1025, 2, 10003, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-monitor.png', 0, '', 128, 129, 0, '', 1),
(1029, 'main', 'CONFIGURATION_AND_MAINTENANCE', 'configuration-and-maintenance', '', 'com-imageshow/configuration-and-maintenance', 'index.php?option=com_imageshow&controller=maintenance&type=configs', 'component', 0, 1025, 2, 10003, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-cog.png', 0, '', 130, 131, 0, '', 1),
(1030, 'main', 'ABOUT', 'about', '', 'com-imageshow/about', 'index.php?option=com_imageshow&controller=about', 'component', 0, 1025, 2, 10003, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-star.png', 0, '', 132, 133, 0, '', 1),
(1031, 'main', 'JSN_POWERADMIN_MENU_TEXT', 'jsn-poweradmin-menu-text', '', 'jsn-poweradmin-menu-text', 'index.php?option=com_poweradmin', 'component', 0, 1, 1, 10016, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_poweradmin/assets/images/icons-16/icon-wrench.png', 0, '', 135, 144, 0, '', 1),
(1032, 'main', 'JSN_POWERADMIN_MENU_RAWMODE_TEXT', 'jsn-poweradmin-menu-rawmode-text', '', 'jsn-poweradmin-menu-text/jsn-poweradmin-menu-rawmode-text', 'index.php?option=com_poweradmin&view=rawmode', 'component', 0, 1031, 2, 10016, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_poweradmin/assets/images/icons-16/icon-monitor.png', 0, '', 136, 137, 0, '', 1),
(1033, 'main', 'JSN_POWERADMIN_MENU_SITESEARCH_TEXT', 'jsn-poweradmin-menu-sitesearch-text', '', 'jsn-poweradmin-menu-text/jsn-poweradmin-menu-sitesearch-text', 'index.php?option=com_poweradmin&task=search.query', 'component', 0, 1031, 2, 10016, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_poweradmin/assets/images/icons-16/icon-search.png', 0, '', 138, 139, 0, '', 1),
(1034, 'main', 'JSN_POWERADMIN_MENU_CONFIGURATION_TEXT', 'jsn-poweradmin-menu-configuration-text', '', 'jsn-poweradmin-menu-text/jsn-poweradmin-menu-configuration-text', 'index.php?option=com_poweradmin&view=configuration', 'component', 0, 1031, 2, 10016, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_poweradmin/assets/images/icons-16/icon-cog.png', 0, '', 140, 141, 0, '', 1),
(1035, 'main', 'JSN_POWERADMIN_MENU_HELP_TEXT', 'jsn-poweradmin-menu-help-text', '', 'jsn-poweradmin-menu-text/jsn-poweradmin-menu-help-text', 'index.php?option=com_poweradmin&view=about', 'component', 0, 1031, 2, 10016, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_poweradmin/assets/images/icons-16/icon-star.png', 0, '', 142, 143, 0, '', 1),
(1036, 'main', 'JSN_UNIFORM_MENU_TEXT', 'jsn-uniform-menu-text', '', 'jsn-uniform-menu-text', 'index.php?option=com_uniform', 'component', 0, 1, 1, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_uniform/assets/images/icons-16/icon-uniform.png', 0, '', 145, 154, 0, '', 1),
(1037, 'main', 'JSN_UNIFORM_MENU_FORMS_TEXT', 'jsn-uniform-menu-forms-text', '', 'jsn-uniform-menu-text/jsn-uniform-menu-forms-text', 'index.php?option=com_uniform&view=forms', 'component', 0, 1036, 2, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_uniform/assets/images/icons-16/icon-forms.png', 0, '', 146, 147, 0, '', 1),
(1038, 'main', 'JSN_UNIFORM_MENU_SUBMISSIONS_TEXT', 'jsn-uniform-menu-submissions-text', '', 'jsn-uniform-menu-text/jsn-uniform-menu-submissions-text', 'index.php?option=com_uniform&view=submissions', 'component', 0, 1036, 2, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_uniform/assets/images/icons-16/icon-submissions.png', 0, '', 148, 149, 0, '', 1),
(1039, 'main', 'JSN_UNIFORM_MENU_CONFIGURATION_TEXT', 'jsn-uniform-menu-configuration-text', '', 'jsn-uniform-menu-text/jsn-uniform-menu-configuration-text', 'index.php?option=com_uniform&view=configuration', 'component', 0, 1036, 2, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_uniform/assets/images/icons-16/icon-cog.png', 0, '', 150, 151, 0, '', 1),
(1040, 'main', 'JSN_UNIFORM_MENU_ABOUT_TEXT', 'jsn-uniform-menu-about-text', '', 'jsn-uniform-menu-text/jsn-uniform-menu-about-text', 'index.php?option=com_uniform&view=about', 'component', 0, 1036, 2, 10023, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_uniform/assets/images/icons-16/icon-about.png', 0, '', 152, 153, 0, '', 1),
(1041, 'main', 'JSN_MOBILIZE_MENU_TEXT', 'jsn-mobilize-menu-text', '', 'jsn-mobilize-menu-text', 'index.php?option=com_mobilize', 'component', 0, 1, 1, 10027, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_mobilize/assets/images/icon-mobilize.png', 0, '', 155, 162, 0, '', 1),
(1042, 'main', 'JSN_MOBILIZE_SUB_MENU_MOBILIZATION_TEXT', 'jsn-mobilize-sub-menu-mobilization-text', '', 'jsn-mobilize-menu-text/jsn-mobilize-sub-menu-mobilization-text', 'index.php?option=com_mobilize&view=profiles', 'component', 0, 1041, 2, 10027, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_mobilize/assets/images/icons-16/icon-mobilize.png', 0, '', 156, 157, 0, '', 1),
(1043, 'main', 'JSN_MOBILIZE_SUB_MENU_CONFIGURARTION_TEXT', 'jsn-mobilize-sub-menu-configurartion-text', '', 'jsn-mobilize-menu-text/jsn-mobilize-sub-menu-configurartion-text', 'index.php?option=com_mobilize&view=configuration', 'component', 0, 1041, 2, 10027, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_mobilize/assets/images/icons-16/icon-cog.png', 0, '', 158, 159, 0, '', 1),
(1044, 'main', 'JSN_MOBILIZE_SUB_MENU_ABOUT_TEXT', 'jsn-mobilize-sub-menu-about-text', '', 'jsn-mobilize-menu-text/jsn-mobilize-sub-menu-about-text', 'index.php?option=com_mobilize&view=about', 'component', 0, 1041, 2, 10027, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_mobilize/assets/images/icons-16/icon-about.png', 0, '', 160, 161, 0, '', 1),
(1045, 'main', 'COM_KUNENA', 'com-kunena', '', 'com-kunena', 'index.php?option=com_kunena', 'component', 0, 1, 1, 10034, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-logo-white.png', 0, '', 163, 186, 0, '', 1),
(1046, 'main', 'COM_KUNENA_DASHBOARD', 'com-kunena-dashboard', '', 'com-kunena/com-kunena-dashboard', 'index.php?option=com_kunena&view=cpanel', 'component', 0, 1045, 2, 10034, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-logo-white.png', 0, '', 164, 165, 0, '', 1),
(1047, 'main', 'COM_KUNENA_CATEGORY_MANAGER', 'com-kunena-category-manager', '', 'com-kunena/com-kunena-category-manager', 'index.php?option=com_kunena&view=categories', 'component', 0, 1045, 2, 10034, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-categories.png', 0, '', 166, 167, 0, '', 1),
(1048, 'main', 'COM_KUNENA_USER_MANAGER', 'com-kunena-user-manager', '', 'com-kunena/com-kunena-user-manager', 'index.php?option=com_kunena&view=users', 'component', 0, 1045, 2, 10034, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-users.png', 0, '', 168, 169, 0, '', 1),
(1049, 'main', 'COM_KUNENA_FILE_MANAGER', 'com-kunena-file-manager', '', 'com-kunena/com-kunena-file-manager', 'index.php?option=com_kunena&view=attachments', 'component', 0, 1045, 2, 10034, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-files.png', 0, '', 170, 171, 0, '', 1),
(1050, 'main', 'COM_KUNENA_EMOTICON_MANAGER', 'com-kunena-emoticon-manager', '', 'com-kunena/com-kunena-emoticon-manager', 'index.php?option=com_kunena&view=smilies', 'component', 0, 1045, 2, 10034, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-smileys.png', 0, '', 172, 173, 0, '', 1),
(1051, 'main', 'COM_KUNENA_RANK_MANAGER', 'com-kunena-rank-manager', '', 'com-kunena/com-kunena-rank-manager', 'index.php?option=com_kunena&view=ranks', 'component', 0, 1045, 2, 10034, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-ranks.png', 0, '', 174, 175, 0, '', 1),
(1052, 'main', 'COM_KUNENA_TEMPLATE_MANAGER', 'com-kunena-template-manager', '', 'com-kunena/com-kunena-template-manager', 'index.php?option=com_kunena&view=templates', 'component', 0, 1045, 2, 10034, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-templates.png', 0, '', 176, 177, 0, '', 1),
(1053, 'main', 'COM_KUNENA_CONFIGURATION', 'com-kunena-configuration', '', 'com-kunena/com-kunena-configuration', 'index.php?option=com_kunena&view=config', 'component', 0, 1045, 2, 10034, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-prune.png', 0, '', 178, 179, 0, '', 1),
(1054, 'main', 'COM_KUNENA_PLUGIN_MANAGER', 'com-kunena-plugin-manager', '', 'com-kunena/com-kunena-plugin-manager', 'index.php?option=com_kunena&view=plugins', 'component', 0, 1045, 2, 10034, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-plugins.png', 0, '', 180, 181, 0, '', 1),
(1055, 'main', 'COM_KUNENA_FORUM_TOOLS', 'com-kunena-forum-tools', '', 'com-kunena/com-kunena-forum-tools', 'index.php?option=com_kunena&view=tools', 'component', 0, 1045, 2, 10034, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-config.png', 0, '', 182, 183, 0, '', 1),
(1056, 'main', 'COM_KUNENA_TRASH_MANAGER', 'com-kunena-trash-manager', '', 'com-kunena/com-kunena-trash-manager', 'index.php?option=com_kunena&view=trash', 'component', 0, 1045, 2, 10034, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-trash.png', 0, '', 184, 185, 0, '', 1),
(1057, 'kunenamenu', 'Forum', 'forum', '', 'forum', 'index.php?option=com_kunena&view=home&defaultmenu=1059', 'component', 1, 1, 1, 10034, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"catids":0}', 187, 204, 0, '*', 0),
(1058, 'kunenamenu', 'Index', 'index', '', 'forum/index', 'index.php?option=com_kunena&view=category&layout=list', 'component', 1, 1057, 2, 10034, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 188, 189, 0, '*', 0),
(1059, 'kunenamenu', 'Recent Topics', 'recent', '', 'forum/recent', 'index.php?option=com_kunena&view=topics&mode=replies', 'component', 1, 1057, 2, 10034, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"topics_catselection":"","topics_categories":"","topics_time":720}', 190, 191, 0, '*', 0),
(1060, 'kunenamenu', 'New Topic', 'newtopic', '', 'forum/newtopic', 'index.php?option=com_kunena&view=topic&layout=create', 'component', 1, 1057, 2, 10034, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 192, 193, 0, '*', 0),
(1061, 'kunenamenu', 'No Replies', 'noreplies', '', 'forum/noreplies', 'index.php?option=com_kunena&view=topics&mode=noreplies', 'component', 1, 1057, 2, 10034, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"topics_catselection":"","topics_categories":"","topics_time":-1}', 194, 195, 0, '*', 0),
(1062, 'kunenamenu', 'My Topics', 'mylatest', '', 'forum/mylatest', 'index.php?option=com_kunena&view=topics&layout=user&mode=default', 'component', 1, 1057, 2, 10034, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"topics_catselection":"2","topics_categories":"0","topics_time":-1}', 196, 197, 0, '*', 0),
(1063, 'kunenamenu', 'Profile', 'profile', '', 'forum/profile', 'index.php?option=com_kunena&view=user', 'component', 1, 1057, 2, 10034, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"integration":1}', 198, 199, 0, '*', 0),
(1064, 'kunenamenu', 'Help', 'help', '', 'forum/help', 'index.php?option=com_kunena&view=misc', 'component', 1, 1057, 2, 10034, 0, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"body":"This help page is a menu item inside [b]Kunena Menu[\\/b], which allows easy navigation in your forum. \\n\\n You can use Joomla Menu Manager to edit items in this menu. Please go to [b]Administration[\\/b] >> [b]Menus[\\/b] >> [b]Kunena Menu[\\/b] >> [b]Help[\\/b] to edit or remove this menu item. \\n\\n In this menu item you can use Plain Text, BBCode or HTML. If you want to bind article into this page, you may use article BBCode (with article id): [code][article=full]123[\\/article][\\/code] \\n\\n If you want to create your own menu for Kunena, please start by creating [b]Home Page[\\/b] first. In that page you can select default menu item, which is shown when you enter to Kunena.","body_format":"bbcode"}', 200, 201, 0, '*', 0),
(1065, 'kunenamenu', 'Search', 'search', '', 'forum/search', 'index.php?option=com_kunena&view=search', 'component', 1, 1057, 2, 10034, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 202, 203, 0, '*', 0),
(1066, 'mainmenu', 'Forum', 'kunena-2014-02-01', '', 'kunena-2014-02-01', 'index.php?Itemid=1057', 'alias', 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"1057","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 205, 206, 0, '*', 0),
(1067, 'onepage-menu', 'Forum', 'home-forum', '', 'home-forum', 'index.php?option=com_kunena&view=home&defaultmenu=1057', 'component', 1, 1, 1, 10034, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"catids":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 207, 208, 0, '*', 0),
(1068, 'onepage-menu', 'Login', 'login', '', 'login', 'index.php?option=com_users&view=login', 'component', 1, 1, 1, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"login_redirect_url":"","logindescription_show":"1","login_description":"","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 209, 210, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `joom_menu_types`
--

CREATE TABLE IF NOT EXISTS `joom_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `joom_menu_types`
--

INSERT INTO `joom_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(6, 'mainmenu', 'Main Menu', 'Simple Home Menu'),
(8, 'topmenu', 'Top Menu', ''),
(9, 'footermenu', 'Footer Menu', ''),
(10, 'mustsee', 'Must-see Stuff', ''),
(11, 'advanced-stuff', 'Advanced Stuff', ''),
(12, 'onepage-menu', 'Homepage Menu', 'Homepage Menu'),
(13, 'kunenamenu', 'Kunena Menu', 'This is the default Kunena menu. It is used as the top navigation for Kunena. It can be publish in any module position. Simply unpublish items that are not required.');

-- --------------------------------------------------------

--
-- Table structure for table `joom_messages`
--

CREATE TABLE IF NOT EXISTS `joom_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `joom_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `joom_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `joom_modules`
--

CREATE TABLE IF NOT EXISTS `joom_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=227 ;

--
-- Dumping data for table `joom_modules`
--

INSERT INTO `joom_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 'One-page Main Menu', '', '', 2, 'mainmenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"onepage-menu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"menu-mainmenu","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(17, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"Home","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(25, 'Site Map', '', '', 1, 'sitemapload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","startLevel":"2","endLevel":"3","showAllChildren":"1","tag_id":"","class_sfx":"sitemap","window_open":"","layout":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(26, 'This Site', '', '', 5, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"1","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(27, 'Archived Articles', '', '', 1, 'archiveload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_archive', 1, 1, '{"count":"10","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(28, 'Latest News', '', '', 1, 'articleslatestload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"catid":["19"],"count":"5","ordering":"c_dsc","user_id":"0","show_featured":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(29, 'Articles Most Read', '', '', 1, 'articlespopularload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_popular', 1, 1, '{"show_front":"1","count":"5","catid":["26","29"],"layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(30, 'Feed Display', '', '', 1, 'feeddisplayload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_feed', 1, 1, '{"rssurl":"http:\\/\\/community.joomla.org\\/blogs\\/community.feed?type=rss","rssrtl":"0","rsstitle":"1","rssdesc":"1","rssimage":"1","rssitems":"3","rssitemdesc":"1","word_count":"0","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(31, 'News Flash: Latest', '', '', 1, 'newsflashload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 1, '{"catid":["20"],"image":"0","item_title":"0","link_titles":"","item_heading":"h4","showLastSeparator":"1","readmore":"1","count":"1","ordering":"a.publish_up","layout":"horizontal","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(32, 'News Flash: Random', '', '', 1, 'newsflashload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 1, '{"catid":["19"],"image":"0","item_title":"0","link_titles":"","item_heading":"h4","showLastSeparator":"1","readmore":"0","count":"1","ordering":"rand()","layout":"vertical","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(33, 'Random Image', '', '', 1, 'randomimageload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_random_image', 1, 1, '{"type":"jpg","folder":"images\\/sampledata\\/parks\\/animals","link":"","width":"180","height":"","layout":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(34, 'Articles Related Items', '', '', 1, 'relateditemsload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_related_items', 1, 1, '{"showDate":"0","layout":"","moduleclass_sfx":"","owncache":"1"}', 0, '*'),
(35, 'Search', '', '', 1, 'searchload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"width":"20","text":"","button":"","button_pos":"right","imagebutton":"","button_text":"","set_itemid":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(36, 'Statistics', '', '', 1, 'statisticsload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_stats', 1, 1, '{"serverinfo":"1","siteinfo":"1","counter":"1","increase":"0","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(41, 'Footer', '', '', 1, 'footerload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_footer', 1, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(44, 'Login', '', '', 12, 'loginload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":"lightbox-2","cache":"0"}', 0, '*'),
(45, 'Menu', '', '', 1, 'menuload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(47, 'Latest Park Blogs', '', '', 6, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"count":"5","ordering":"c_dsc","user_id":"0","show_front":"1","catid":"35","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, 'en-GB'),
(48, 'Custom HTML', '', '<p>This is a custom html module. That means you can enter whatever content you want.</p>', 1, 'customload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(52, 'Breadcrumbs', '', '', 1, 'breadcrumbsload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"showHome":"1","homeText":"Home","showLast":"1","separator":"","layout":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(58, 'Special!', '', '<h1>This week we have a special, half price on delicious oranges!</h1><div>Only for our special customers!</div><div>Use the code: Joomla! when ordering</div><p><em>This module can only be seen by people in the customers group or higher.</em></p>', 1, 'position-12', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 4, 1, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(61, 'Articles Categories', '', '', 1, 'articlescategoriesload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_categories', 1, 1, '{"parent":"29","show_description":"0","show_children":"0","maxlevel":"0","count":"0","layout":"","moduleclass_sfx":"","owncache":"1","cache_time":"900"}', 0, '*'),
(63, 'Search', '', '', 1, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"width":"20","text":"","button":"","button_pos":"right","imagebutton":"1","button_text":"","set_itemid":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(65, 'About Fruit Shop', '', '<p>The Fruit Shop site shows a number of Joomla! features.</p><p>The template uses classes in cascading style sheets to change the layout of items, such as creating the horizontal alphabetical list in the Fruit Encyclopedia.</p><p> </p>', 1, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(68, 'About Parks', '', '<p>The Parks sample site is designed as a simple site that can be routinely updated from the front end of Joomla!.</p><p>As a site, it is largely focused on a blog which can be updated using the front end article submission.</p><p>New weblinks can also be added through the front end.</p><p>A simple image gallery uses com_content with thumbnails displayed in a blog layout and full size images shown in article layout.</p><p>The Parks site features the language switch module. All of the content and modules are tagged as English (en-GB). If a second language pack is added with sample data this can be filtered using the language switch.</p><p>Parks uses HTML5 which is a major web standard (along with XHTML which is used in other areas of sample data).</p>', 2, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(69, 'Articles Category', '', '', 1, 'articlescategoryload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_category', 1, 1, '{"mode":"normal","show_on_article_page":"1","show_front":"show","count":"0","category_filtering_type":"1","catid":["72"],"show_child_category_articles":"0","levels":"1","author_filtering_type":"1","created_by":[""],"author_alias_filtering_type":"1","created_by_alias":[""],"excluded_articles":"","date_filtering":"off","date_field":"a.created","start_date_range":"","end_date_range":"","relative_date":"30","article_ordering":"a.title","article_ordering_direction":"ASC","article_grouping":"none","article_grouping_direction":"ksort","month_year_format":"F Y","item_heading":"4","show_date":"0","show_date_field":"created","show_date_format":"Y-m-d H:i:s","show_category":"0","show_hits":"0","show_author":"0","show_introtext":"0","introtext_limit":"100","layout":"","moduleclass_sfx":"","owncache":"1","cache_time":"900"}', 0, '*'),
(70, 'Search (Atomic Template)', '', '', 1, 'atomic-search', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 0, '{"width":"20","text":"","button":"","button_pos":"right","imagebutton":"","button_text":"","set_itemid":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(72, 'Top Quote (Atomic Template)', '', '<hr />\n<h2 class="alt">Powerful Content Management and a Simple Extensible Framework.</h2>\n<hr />', 1, 'atomic-topquote', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(73, 'Bottom Left Column (Atomic Template)', '', '<h6>This is a nested column</h6>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 1, 'atomic-bottomleft', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(74, 'Bottom Middle Column (Atomic Template)', '', '<h6>This is another nested column</h6>\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 1, 'atomic-bottommiddle', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(75, 'Sidebar (Atomic Template)', '', '<h3>A <span class="alt">Simple</span> Sidebar</h3>\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue.</p>\n<p class="quiet">Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue.</p>\n<h5>Incremental leading</h5>\n<p class="incr">Vestibulum ante ipsum primis in faucibus orci luctus vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. sed aliquet vehicula, lectus tellus.</p>\n<p class="incr">Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue.</p>', 1, 'atomic-sidebar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(76, 'Login (Atomic Template)', '', '', 2, 'atomic-sidebar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 0, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(77, 'Top Menu', '', '', 1, 'top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"topmenu","startLevel":"1","endLevel":"2","showAllChildren":"0","tag_id":"","class_sfx":"menu-topmenu menu-iconmenu","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(78, 'Footer Menu', '', '', 3, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 0, '{"menutype":"footermenu","startLevel":"1","endLevel":"1","showAllChildren":"0","tag_id":"","class_sfx":"menu-divmenu","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(81, 'Tree Menu with rich text', '', '', 4, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"menu-treemenu menu-iconmenu menu-richmenu","window_open":"","layout":"_:default","moduleclass_sfx":"richbox-2","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(83, 'Position "left"', '', '<p>This is a sample module in position <strong>left</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>', 6, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"richbox-2","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(87, 'Compatibility', '', '<p class="content-center"><a href="index.php?option=com_content&amp;view=article&amp;id=81&amp;Itemid=490"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/native-compatibility/j25-j3x-promo.png" border="0" alt="Joomla! 2.5 - Get more" width="170" height="50" /></a></p>\r\n<p>JSN Yoyo is natively compatible with both <strong>Joomla! 2.5 and Joomla! 3.x</strong>.</p>\r\n<p>The installation package is compatible with both Joomla CMS.</p>', 3, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"yoyo-1","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(88, 'Docs', '', '<p>Full details about all template features can be found in comprehensive documentation package available for free download.</p>\r\n<p class="content-center"><a class="link-button button-light" href="http://www.joomlashine.com/joomla-templates/jsn-yoyo-docs.zip"><span class="link-icon">Free download</span></a></p>', 2, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"yoyo-1","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(89, 'Tree Menu', '', '', 11, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"menu-treemenu","window_open":"","layout":"_:default","moduleclass_sfx":"richbox-2","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(91, 'Advanced Stuff', '', '', 6, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"advanced-stuff","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"menu-treemenu ","window_open":"","layout":"_:default","moduleclass_sfx":"richbox-2","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(98, 'Position "right"', '', '<p>This is sample module in position <strong>right</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>', 10, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"richbox-1","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(99, 'Joomla! Copyright', '', '<p>The <a href="http://www.joomla.org/" target="_blank">Joomla!</a> name is used under a limited license from <a href="http://www.opensourcematters.org/" target="_blank">Open Source Matters</a> in the United States and other countries.<a href="http://www.joomlashine.com" target="_blank">JoomlaShine.com</a> is not affiliated with or endorsed by Open Source Matters or the Joomla! Project.</p>', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(100, 'Breadcrumbs', '', '', 1, 'breadcrumbs', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"showHere":"0","showHome":"1","homeText":"Home","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(101, 'JoomlaShine copyright', '', '<p>Copyright © 2008 - 2013 JoomlaShine.com. All rights reserved. Many features demonstrated on this website are available only in <a href="http://www.joomlashine.com/joomla-templates/buy-jsn-yoyo.html">JSN Yoyo PRO Edition</a>.</p>\r\n<p>All stock photos used on this JSN Yoyo demo site are only for demo purposes and not included in the template package.</p>', 1, 'bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(102, 'Position "innerleft"', '', '<p>This is sample module in position <strong>innerleft</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>', 0, 'innerleft', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"lightbox-1","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(103, 'Position "innerright"', '', '<p>This is sample module in position <strong>innerright</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>', 0, 'innerright', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"lightbox-1","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(107, 'Position "stick-leftbottom"', '', '<a><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/position-stick-x/position-stick-leftbottom.png" width="65" height="190" alt="Sample module in position -stick-leftbottom-" /></a>', 1, 'stick-leftbottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(108, 'Position "stick-leftmiddle''', '', '<a><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/position-stick-x/position-stick-leftmiddle.png" width="65" height="190" alt="Sample module in position -stick-leftmiddle-" /></a>', 1, 'stick-leftmiddle', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(109, 'Position "stick-lefttop"', '', '<a><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/position-stick-x/position-stick-lefttop.png" width="65" height="190" alt="Sample module in position -stick-lefttop-" /></a>', 0, 'stick-lefttop', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(110, 'See other templates', '', '<a rel="{handler: ''iframe'', size: {x: 640, y: 510}}" href="http://www.joomlashine.com/free-joomla-templates-promo.html" class="modal link-tooltip" style="z-index: 90;"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/see-other-templates/see-other-templates-banner.png" width="120" height="120" alt="See other templates" /><span style="left: -90px; top: -260px"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/see-other-templates/see-other-templates-banner-text.png" width="200" height="200" alt="See other templates" /></span></a>', 1, 'stick-rightbottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(112, 'Position "stick-rightmiddle"', '', '<a><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/position-stick-x/position-stick-rightmiddle.png" width="65" height="190" alt="Sample module in position -stickrightmiddle-" /></a>', 0, 'stick-rightmiddle', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(116, 'Layout Variations', '', '<div class="grid-layout" style="margin-top: 10px">\n	<div class="content-center"><a href="index.php?option=com_content&view=article&id=90&Itemid=472" class="link-highlight"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/layout-variations/layout-thumb-lcr.png" width="160" height="90" alt="Left | Center | Right" style="vertical-align: middle;" class="margin-right" /><br />\n		Left | Center | Right</a></div>\n	<div class="content-center"><a href="index.php?option=com_content&view=article&id=92&Itemid=477" class="link-highlight"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/layout-variations/layout-thumb-mc.png" width="160" height="90" alt="Main content only" style="vertical-align: middle;" class="margin-right" /><br />\n		Main content only</a></div>\n</div>\n<div class="grid-layout" style="margin-top: 10px">\n	<div class="content-center"><a href="index.php?option=com_content&view=article&id=89&Itemid=474" class="link-highlight"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/layout-variations/layout-thumb-lcir.png" width="160" height="90" alt="Left | Center | InnerRight" style="vertical-align: middle;" class="margin-right" /><br />\n		Left | Center | InnerRight</a></div>\n	<div class="content-center"><a href="index.php?option=com_content&view=article&id=88&Itemid=476" class="link-highlight"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/layout-variations/layout-thumb-ilcr.png" width="160" height="90" alt="InnerLeft | Center | Right" style="vertical-align: middle;" class="margin-right" /><br />\n		InnerLeft | Center | Right</a></div>\n</div>\n<div class="grid-layout" style="margin-top: 10px">\n	<div class="content-center"><a href="index.php?option=com_content&view=article&id=91&Itemid=473" class="link-highlight"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/layout-variations/layout-thumb-lilc.png" width="160" height="90" alt="Left | Center | InnerRight" style="vertical-align: middle;" class="margin-right" /><br />\n		Left | InnerLeft | Center</a></div>\n	<div class="content-center"><a href="index.php?option=com_content&view=article&id=87&Itemid=475" class="link-highlight"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/layout-variations/layout-thumb-cirr.png" width="160" height="90" alt="Left | Center | Right" style="vertical-align: middle;" class="margin-right" /><br />\n		Center | InnerRight | Right</a></div>\n</div>\n', 1, 'user-bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(118, 'Position "content-top"', '', '<p>This is a sample module in position <strong>&ldquo;content-top&rdquo;</strong>. All modules in this position will be arranged in <strong>horizontal row</strong>. The whole position will be collapsed, if there are no modules published.</p>\n', 1, 'content-top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(120, 'Position "content-top"', '', '<p>This is a sample module in position <strong>&ldquo;content-top&rdquo;</strong>. All modules in this position will be arranged in <strong>horizontal row</strong>. The whole position will be collapsed, if there are no modules published.</p>\n', 3, 'content-top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(121, 'Position "user7"', '', '<p>This is a sample module in position <strong>&ldquo;user7&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>', 1, 'user7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(122, 'Position "user6"', '', '<p>This is a sample module in position <strong>&ldquo;user6&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>', 1, 'user6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(123, 'Position "user3"', '', '<p>This is a sample module in position <strong>&ldquo;user3&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>', 1, 'user3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(128, '"RichBox 1" Style', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>\n<p>Module Class Suffix:<br />\n  <strong>&quot;richbox-1&quot;</strong></p>', 10, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"richbox-1","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(130, '"RichBox 2" Style', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius nisl id lectus ultricies ut elementum nulla ornare. Nulla sed mi massa, at tincidunt felis.</p>\n<p>Module Class Suffix:<br />\n  <strong>&quot;richbox-2&quot;</strong></p>', 8, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"richbox-2","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(136, 'Position "user1"', '', '<p>This is a sample module in position <strong>&ldquo;user1&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(137, 'Position "user2"', '', '<p>This is a sample module in position <strong>&ldquo;user2&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>', 1, 'user2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(139, 'Position "user4"', '', '<p>This is a sample module in position <strong>&ldquo;user4&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>', 1, 'user4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(140, 'Position "user5"', '', '<p>This is a sample module in position <strong>&ldquo;user5&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>', 1, 'user5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(141, 'Menu', '', '', 9, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"2","endLevel":"3","showAllChildren":"0","tag_id":"","class_sfx":"menu-treemenu","window_open":"","layout":"_:default","moduleclass_sfx":"richbox-2","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(143, 'See PRO edition', '', '<a href="http://demo.joomlashine.com/joomla-templates/jsn-yoyo.html" class="link-tooltip" style="z-index: 90;"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/pro-edition/pro-edition-banner.png" width="120" height="120" alt="See PRO edition" /><span style="left: -120px; top: -20px"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/pro-edition/pro-edition-banner-text.png" width="240" height="250" alt="See PRO edition" /></span></a>', 1, 'stick-righttop', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(152, 'PRO Edition', '', '<p><img class="image-left" src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/editions-badge-pro.png" border="0" width="75" height="75" />If you are serious about your time and money, buy PRO edition with full features and dedicated support.</p>\r\n<p><a class="link-action" href="http://www.joomlashine.com/joomla-templates/jsn-yoyo-download.html">Buy PRO edition</a></p>', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"richbox-2","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(159, 'Position "promo-left"', '', '<p>This is a sample module in position <strong>&ldquo;promo-left&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>', 0, 'promo-left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(160, 'Position "promo-right"', '', '<p>This is a sample module in position <strong>&ldquo;promo-right&rdquo;</strong>. All modules in this position will be arranged in <strong>vertical column</strong>. The whole position will be collapsed, if there are no modules published.</p>', 0, 'promo-right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(161, 'Position "promo"', '', '<div style="height: 204px; background: url(''http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/position-promo/position-promo.jpg'') center center no-repeat;"> </div>', 1, 'promo', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(162, 'Position "content-bottom"', '', '<p>This is a sample module in position <strong>&ldquo;content-bottom&rdquo;</strong>. All modules in this position will be arranged in <strong>horizontal row</strong>. The whole position will be collapsed, if there are no modules published.</p>\n', 7, 'content-bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(163, 'Position "content-bottom"', '', '<p>This is a sample module in position <strong>&ldquo;content-bottom&rdquo;</strong>. All modules in this position will be arranged in <strong>horizontal row</strong>. The whole position will be collapsed, if there are no modules published.</p>\n', 8, 'content-bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(168, 'Main Menu (Icons & Rich Text)', '', '', 0, 'mainmenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"menu-mainmenu menu-iconmenu menu-richmenu","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(172, 'JSN UniForm Module', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_uniform', 1, 1, '', 0, '*'),
(173, 'Reviews on JED', '', '<p>JSN UniForm has been <strong>approved on Joomla Extension Directory</strong>. Let''s see how Joomla community enjoy it. If you use JSN UniForm, please post a rating and a review at the <a href="http://www.joomlashine.com/joomla-extensions/jsn-uniform-on-jed.html" target="_blank">Joomla! Extensions Directory</a></p>\r\n', 7, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"richbox-2 jsn-icon-user","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(174, 'Free Joomla! Ebook', '', '<a href="http://www.joomlashine.com/index.php?option=com_lightcart&view=sharemessage&layout=askbefore&tmpl=component&utm_source=demo.joomlashine.com%20&utm_medium=banner&utm_campaign=Joomla%2B3.0%2BMade%2BEasy"><img src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/banners/banner-joomla-30-made-easy.jpg" alt="Free Joomla ebook | Joomla 3.0 Made Easy" /></a>', 8, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"richbox-1","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(176, 'Our Facebook', '', '<iframe src="//www.facebook.com/plugins/likebox.php?href=http%3A%2F%2Fwww.facebook.com%2Fjoomlashine&amp;width=234&amp;height=303&amp;show_faces=true&amp;colorscheme=light&amp;stream=false&amp;border_color=%23ffffff&amp;header=false&amp;appId=350219141723323" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:234px; height:354px;" allowTransparency="true"></iframe>', 7, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"richbox-2","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(178, 'Search ', '', '', 5, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_finder', 1, 1, '{"searchfilter":"","show_autosuggest":"1","show_advanced":"0","layout":"_:default","moduleclass_sfx":"","field_size":"25","alt_label":"","show_label":"1","label_pos":"top","show_button":"0","button_pos":"right","opensearch":"1","opensearch_title":""}', 0, '*'),
(179, 'Must-see Stuff', '', '', 1, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"advanced-stuff","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"menu-treemenu","window_open":"","layout":"_:default","moduleclass_sfx":"yoyo-1","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(186, 'Networks', '', '', 0, 'user7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"advanced-stuff","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"menu-treemenu","window_open":"","layout":"_:default","moduleclass_sfx":"yoyo-1","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(190, 'Promo Intro', '', '<div id="our-services" class="demo-mainsection-intro">\r\n<h1 class="main-heading"><span><i class="main-heading-icon icon-service"></i>Our Services</span></h1>\r\n<p class="main-heading-desc">\r\nJoomlaShine provides hi-quality Joomla templates and extensions.\r\n</p>\r\n</div>', 1, 'promo', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"promo-homepage-demo","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(191, 'Profile Intro', '', '<div class="infor-promo">\r\n<div>\r\n<img class="image-left" src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/profile-intro/promo-right1.png" border="0" alt="">\r\n<div class="infor-promo-text">\r\n<h3 class="jsn-moduletitle">Flexible Layout</h3>\r\n<p>JSN Yoyo provides 36+ module positions allowing you to have multiple layout configurations. All module positions works well in RTL mode.</p>\r\n</div>\r\n</div>\r\n<div>\r\n<p><img class="image-left" src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/profile-intro/promo-right2.png" border="0"></p>\r\n<div class="infor-promo-text">\r\n<h3 class="jsn-moduletitle">Native RTL Support</h3>\r\n<p>Native RTL support means that every elements on the page is mirror swapped including layout, menus, typography, icons...everything. </p>\r\n</div>\r\n</div>\r\n<div>\r\n<img class="image-left" src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/profile-intro/promo-right3.png" border="0">\r\n<div class="infor-promo-text">\r\n<h3 class="jsn-moduletitle">Imageshow Included</h3>\r\n<p>The image gallery you see on this website is the FREE edition of another cool product: JSN ImageShow.  It will help you to display images lively and truthfully</p>\r\n<ul>\r\n<li style="line-height: 27px;"><strong>Multiple Image Sources</strong></li>\r\n<li style="line-height: 27px;"><strong>Multiple Gallery Themes</strong></li>\r\n<li style="line-height: 27px;"><strong>Present Anywhere</strong></li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n</div>', 1, 'promo-right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(194, 'Search', '', '', 0, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_finder', 1, 0, '{"searchfilter":"","show_autosuggest":"1","show_advanced":"0","layout":"_:default","moduleclass_sfx":"","field_size":25,"alt_label":"","show_label":"1","label_pos":"top","show_button":"0","button_pos":"right","opensearch":"1","opensearch_title":""}', 0, '*'),
(199, 'Search', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_search', 1, 0, '{"label":"","width":"20","text":"Search...","button":"","button_pos":"right","imagebutton":"","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"798","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(200, 'JSN UniForm Module', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_uniform', 1, 1, '', 0, '*'),
(210, 'Header Top ImageShow', '', '', 1, 'header-top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_imageshow', 1, 0, '{"moduleclass_sfx":"header-top-is","showlist_id":"9","showcase_id":"3","width":"960px","height":"640","pretext":"","posttext":""}', 0, '*');
INSERT INTO `joom_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(211, 'Easy to Start', '', '<div id="demo-services">\r\n\r\n<div class="grid-layout">\r\n\r\n<div class="grid-col">\r\n<div class="service-item service">\r\n<div class="service-content">\r\n<h3>Easy to Start </h3>\r\n<p>JSN Yoyo provides unique mechanism of installing sample data directly on your current website. Just few steps and the demo website is ready for you.</p>\r\n<a href="index.php?option=com_content&view=article&id=77&Itemid=542" class="link-button button-pink button-flag">Read more...</a>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="grid-col">\r\n<div class="service-item retina">\r\n<div class="service-content">\r\n<h3>JSN ImageShow</h3>\r\n<p>The image gallery you see on this website is another cool product <strong><a href="http://www.joomlashine.com/joomla-extensions/jsn-imageshow.html" target="_blank">JSN ImageShow</a></strong> from JoomlaShine.com. You can download it free and try it now.</p>\r\n<a href="index.php?option=com_content&view=article&id=79&Itemid=707" class="link-button button-pink button-flag">Read more...</a>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="grid-col">\r\n<div class="service-item upload">\r\n<div class="service-content">\r\n<h3>Flexible Layout</h3>\r\n<p>JSN Yoyo provides <strong>37+ module positions</strong> allowing you to have multiple layout configurations. All  module positions works well in RTL mode.</p>\r\n<a href="index.php?option=com_content&view=article&id=71&Itemid=466" class="link-button button-pink button-flag">Read more...</a>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n</div>\r\n\r\n<div class="grid-layout">\r\n\r\n<div class="grid-col">\r\n<div class="service-item support">\r\n<div class="service-content">\r\n<h3>Docs & Support </h3>\r\n<p>JSN Yoyo is equipped with comprehensive documentation package. When purchasing product you will have timely support via support forum and dedicated ticket.</p>\r\n<a href="index.php?option=com_content&view=article&id=76&Itemid=493" class="link-button button-pink button-flag">Read more...</a>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="grid-col">\r\n<div class="service-item game">\r\n<div class="service-content">\r\n<h3>Native RTL Support</h3>\r\n<p>Native RTL support means that every elements on the page is mirror  swapped including layout, menus, typography, icons...everything. </p>\r\n<a href="index.php?option=com_content&view=article&id=85&Itemid=542" class="link-button button-pink button-flag">Read more...</a>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="grid-col">\r\n<div class="service-item image">\r\n<div class="service-content">\r\n<h3>Painless Configuration</h3>\r\n<p>All JoomlaShine templates can be effortlessly configured by 16 template parameters arranged into logical groups in template setting page.</p>\r\n<a href="index.php?option=com_content&view=article&id=84&Itemid=485" class="link-button button-pink button-flag">Read more...</a>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n</div>\r\n\r\n</div>', 1, 'content-top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(212, 'Recent Work Heading', '', '<div id="recent-works" class="demo-mainsection-intro recent-works">\r\n<h1 class="main-heading"><span><i class="main-heading-icon icon-image"></i>Recent Works</span></h1>\r\n<p class="main-heading-desc">\r\nHere are some sample images for our template JSN Yoyo\r\n</p>\r\n</div>', 0, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(213, 'Recent Work ImageShow', '', '', 1, 'user1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_imageshow', 1, 0, '{"moduleclass_sfx":"","showlist_id":"11","showcase_id":"2","width":"100%","height":"800","pretext":"","posttext":""}', 0, '*'),
(214, 'Our Team Heading', '', '<div id="our-team" class="demo-mainsection-intro">\r\n<h1 class="main-heading"><span><i class="main-heading-icon icon-groupuser"></i>Our Team</span></h1>\r\n<p class="main-heading-desc">\r\nPassionate web developers, talented designers, and helpful support staff.\r\n</p>\r\n</div>', 0, 'content-bottom-over', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(215, 'Our Team Members', '', '<div id="our-team-member">\r\n\r\n<div class="grid-layout">\r\n<div class="grid-col">\r\n<div class="member-item">\r\n<img class="member-avatar" src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/our-team/1.jpg" alt="" />\r\n<div class="member-desc">\r\n<div class="member-name">\r\n<h4>Michael Steele</h4>\r\n<span>CEO</span>\r\n</div>\r\n<div class="memer-info">\r\n"We focus on the products quality, which can be clearly seen in our design, functionality and usability."\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="grid-col">\r\n<div class="member-item">\r\n<img class="member-avatar" src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/our-team/2.jpg" alt="" />\r\n<div class="member-desc">\r\n<div class="member-name">\r\n<h4>Frank Thomas</h4>\r\n<span>Co-Founder</span>\r\n</div>\r\n<div class="memer-info">\r\n"Actively participating in Joomla forums, our staff are making a positive contribution to the community."\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="grid-col">\r\n<div class="member-item">\r\n<img class="member-avatar" src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/our-team/3.jpg" alt="" />\r\n<div class="member-desc">\r\n<div class="member-name">\r\n<h4>Tracy Belle</h4>\r\n<span>VFX Designer</span>\r\n</div>\r\n<div class="memer-info">\r\n"We strongly promote continuous learning and training, keep updated with the latest news and techniques."\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="grid-layout">\r\n<div class="grid-col">\r\n<div class="member-item">\r\n<img class="member-avatar" src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/our-team/4.jpg" alt="" />\r\n<div class="member-desc">\r\n<div class="member-name">\r\n<h4>Larry Queen</h4>\r\n<span>Marketer</span>\r\n</div>\r\n<div class="memer-info">\r\n"We share our knowledge and skills through various Joomla tutorials with full and detailed explanations."\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="grid-col">\r\n<div class="member-item">\r\n<img class="member-avatar" src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/our-team/5.jpg" alt="" />\r\n<div class="member-desc">\r\n<div class="member-name">\r\n<h4>Luke Richardson</h4>\r\n<span>Coder</span>\r\n</div>\r\n<div class="memer-info">\r\n" As a result, the code should be clean and well commented, and each line of the code in our products matters."\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="grid-col">\r\n<div class="member-item">\r\n<img class="member-avatar" src="http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/our-team/6.jpg" alt="" />\r\n<div class="member-desc">\r\n<div class="member-name">\r\n<h4>Martin Sinclair</h4>\r\n<span>Account Manager</span>\r\n</div>\r\n<div class="memer-info">\r\n"We know how support is important to you. The response, therefore, should be fast and helpful"\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n</div>', 0, 'content-bottom-over', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"our-team-member","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(216, 'JSN Demo custom CSS', '', '<style>\r\n.jsn-homepage #jsn-header-top {\r\n	background: #060511 url(http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/position-header-top/bg-header-top.jpg) center top no-repeat fixed;\r\n	background-size: cover;\r\n	color: #fff;\r\n	padding: 200px 0;\r\n	box-sizing: border-box;\r\n	-moz-box-sizing: border-box;\r\n	-webkit-box-sizing: border-box;\r\n}\r\n.jsn-homepage #jsn-content {\r\n	background: #000 url(http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/bg-working.jpg);\r\n	background-attachment: fixed;\r\n	background-size: cover;\r\n	filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(\r\n    src=''images/extensions/custom-html/bg-working.jpg'',\r\n    sizingMethod=''scale'');\r\n}\r\n.main-heading .icon-service {\r\n	background: url(http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/icons/service-big-icon.png) center center no-repeat;\r\n        background-size: 60px auto;\r\n        background: url(http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/icons/service-big-icon-ie.png) center center no-repeat\\9;\r\n}\r\n.main-heading .icon-image {\r\n	background: url(http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/icons/image-big-icon.png) center center no-repeat;\r\n        background-size: 60px auto;\r\n        background: url(http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/icons/image-big-icon-ie.png) center center no-repeat\\9;\r\n}\r\n.main-heading .icon-groupuser {\r\n	background: url(http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/icons/user-big-icon.png) center center no-repeat;\r\n        background-size: 60px auto;\r\n        background: url(http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/icons/user-big-icon-ie.png) center center no-repeat\\9;\r\n}\r\n.main-heading .icon-maplocation {\r\n	background: url(http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/icons/location-big-icon.png) center center no-repeat;\r\n	background-size: auto 56px;\r\n        background: url(http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/icons/map-location-ie.png) center center no-repeat\\9;\r\n}\r\n#demo-services .service-item.service {\r\n	background-image: url(http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/icons/icon-rocket.png);\r\n}\r\n#demo-services .service-item.retina {\r\n	background-image: url(http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/icons/icon-eye.png);\r\n}\r\n#demo-services .service-item.upload {\r\n	background-image: url(http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/icons/icon-cloudup.png);\r\n}\r\n#demo-services .service-item.support {\r\n	background-image: url(http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/icons/icon-forum.png);\r\n}\r\n#demo-services .service-item.game {\r\n	background-image: url(http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/icons/icon-game.png);\r\n}\r\n#demo-services .service-item.image {\r\n	background-image: url(http://demo.joomlashine.com/joomla-templates/jsn_yoyo/free/images/extensions/custom-html/icons/icon-crop.png);\r\n}\r\n</style>', 1, 'stick-leftbottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(217, 'Contact Intro', '', '<div id="our-contact" class="demo-mainsection-intro">\r\n<h1 class="main-heading"><span>Contact Us<br /></span></h1>\r\n<p class="main-heading-desc"> </p>\r\n</div>', 1, 'content-bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(218, 'Office Branches', '', '<div class="demo-office-branch">\r\n<h3>Singapore Office</h3>\r\n<span>No 200/638 Peace Street, Singapore 065</span><hr />\r\n<div class="office-desc">\r\n<p>Mobile: +065 01234 5678</p>\r\n<p>Fax: +065 1111 1111</p>\r\n<p>Email: <a href="#">yoyo-contact@gmail.com</a></p>\r\n</div>\r\n</div>', 1, 'user5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(219, 'Contact Form', '', '', 0, 'user6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_uniform', 1, 0, '{"uniform_top_content":"","form_id":"2","uniform_bottom_content":"","moduleclass_sfx":"demo-contact-form","cache":"1","cache_time":"900"}', 0, '*'),
(220, 'Main Menu', '', '', 1, 'mainmenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"menu-mainmenu","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(221, 'JSN ImageShow', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_imageshow', 1, 1, '', 0, '*'),
(222, 'JSN UniForm', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_uniform', 1, 1, '', 0, '*'),
(223, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(224, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(225, 'JSN imageshow Quick Icons', '', '', 0, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_imageshow_quickicon', 1, 1, '', 1, '*'),
(226, 'JSN PowerAdmin Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_poweradmin', 1, 1, '', 1, '*');

-- --------------------------------------------------------

--
-- Table structure for table `joom_modules_menu`
--

CREATE TABLE IF NOT EXISTS `joom_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `joom_modules_menu`
--

INSERT INTO `joom_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 435),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(17, 0),
(19, -463),
(19, -462),
(19, -433),
(19, -432),
(19, -431),
(19, -430),
(19, -429),
(19, -427),
(19, -400),
(19, -399),
(19, -296),
(19, -244),
(19, -243),
(19, -242),
(19, -234),
(20, 0),
(22, 231),
(22, 234),
(22, 238),
(22, 242),
(22, 243),
(22, 244),
(22, 296),
(22, 399),
(22, 400),
(23, -463),
(23, -462),
(23, -433),
(23, -432),
(23, -431),
(23, -430),
(23, -429),
(23, -427),
(23, -400),
(23, -399),
(23, -296),
(23, -244),
(23, -243),
(23, -242),
(23, -238),
(23, -234),
(25, 294),
(26, -463),
(26, -462),
(26, -433),
(26, -432),
(26, -431),
(26, -430),
(26, -429),
(26, -427),
(26, -400),
(26, -399),
(26, -296),
(26, -244),
(26, -243),
(26, -242),
(26, -238),
(26, -234),
(27, 325),
(28, 310),
(29, 302),
(30, 410),
(31, 309),
(32, 309),
(33, 307),
(34, 326),
(35, 306),
(36, 304),
(41, 435),
(47, 231),
(47, 234),
(47, 242),
(47, 243),
(47, 244),
(47, 296),
(47, 399),
(47, 400),
(48, 418),
(52, 416),
(57, 238),
(57, 427),
(57, 429),
(57, 430),
(57, 431),
(57, 432),
(57, 433),
(57, 462),
(57, 463),
(58, 427),
(58, 429),
(58, 430),
(58, 431),
(58, 432),
(58, 433),
(58, 462),
(58, 463),
(61, 443),
(63, 0),
(65, 427),
(65, 429),
(65, 430),
(65, 431),
(65, 432),
(65, 433),
(65, 462),
(65, 463),
(68, 243),
(69, 459),
(70, 285),
(70, 316),
(71, 285),
(71, 316),
(72, 285),
(72, 316),
(73, 285),
(73, 316),
(74, 285),
(74, 316),
(75, 285),
(75, 316),
(76, 285),
(76, 316),
(77, 0),
(78, 435),
(81, 482),
(83, 472),
(83, 473),
(83, 474),
(87, 435),
(87, 707),
(87, 708),
(87, 798),
(88, 435),
(88, 466),
(88, 468),
(88, 479),
(89, 482),
(91, 542),
(91, 543),
(91, 544),
(91, 545),
(91, 546),
(91, 547),
(98, 472),
(98, 475),
(98, 476),
(99, 0),
(100, 466),
(100, 468),
(100, 470),
(100, 472),
(100, 473),
(100, 474),
(100, 475),
(100, 476),
(100, 477),
(100, 479),
(100, 482),
(100, 496),
(100, 497),
(100, 498),
(100, 499),
(100, 500),
(100, 501),
(100, 502),
(100, 503),
(100, 504),
(100, 505),
(100, 506),
(100, 507),
(100, 542),
(100, 543),
(100, 544),
(100, 545),
(100, 546),
(100, 547),
(101, 0),
(102, 473),
(102, 476),
(103, 474),
(103, 475),
(107, 472),
(107, 473),
(107, 474),
(107, 475),
(107, 476),
(107, 477),
(108, 472),
(108, 473),
(108, 474),
(108, 475),
(108, 476),
(108, 477),
(109, 472),
(109, 473),
(109, 474),
(109, 475),
(109, 476),
(109, 477),
(110, 0),
(112, 472),
(112, 473),
(112, 474),
(112, 475),
(112, 476),
(112, 477),
(116, 472),
(116, 473),
(116, 474),
(116, 475),
(116, 476),
(116, 477),
(118, 472),
(118, 473),
(118, 474),
(118, 475),
(118, 476),
(118, 477),
(120, 472),
(120, 473),
(120, 474),
(120, 475),
(120, 476),
(121, 472),
(121, 473),
(121, 474),
(121, 475),
(121, 476),
(121, 477),
(122, 472),
(122, 473),
(122, 474),
(122, 475),
(122, 476),
(122, 477),
(123, 472),
(123, 473),
(123, 474),
(123, 475),
(123, 476),
(123, 477),
(128, 470),
(130, 470),
(133, 0),
(135, 0),
(135, 481),
(136, 472),
(136, 473),
(136, 474),
(136, 475),
(136, 476),
(136, 477),
(137, 472),
(137, 473),
(137, 474),
(137, 475),
(137, 476),
(137, 477),
(139, 472),
(139, 473),
(139, 474),
(139, 475),
(139, 476),
(139, 477),
(140, 472),
(140, 473),
(140, 474),
(140, 475),
(140, 476),
(140, 477),
(141, 466),
(141, 468),
(141, 479),
(141, 707),
(141, 708),
(141, 798),
(143, 0),
(144, 0),
(159, 472),
(159, 473),
(159, 474),
(159, 475),
(159, 476),
(159, 477),
(160, 472),
(160, 473),
(160, 474),
(160, 475),
(160, 476),
(160, 477),
(161, 472),
(161, 473),
(161, 474),
(161, 475),
(161, 476),
(161, 477),
(162, 472),
(162, 473),
(162, 474),
(162, 475),
(162, 476),
(162, 477),
(163, 472),
(163, 473),
(163, 474),
(163, 475),
(163, 476),
(163, 477),
(168, 479),
(172, 0),
(173, 708),
(175, 0),
(179, 435),
(186, 435),
(190, 435),
(191, 435),
(194, 435),
(199, 435),
(206, 0),
(207, 0),
(207, 481),
(208, 0),
(209, 0),
(210, 435),
(211, 435),
(212, 435),
(213, 435),
(214, 435),
(215, 435),
(216, 0),
(217, 435),
(218, 435),
(219, 435),
(220, -507),
(220, -506),
(220, -505),
(220, -504),
(220, -503),
(220, -502),
(220, -501),
(220, -500),
(220, -499),
(220, -479),
(220, -435),
(223, 0),
(224, 0),
(225, 0),
(226, 0);

-- --------------------------------------------------------

--
-- Table structure for table `joom_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `joom_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned DEFAULT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `joom_newsfeeds`
--

INSERT INTO `joom_newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `filename`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`, `access`, `language`, `params`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `xreference`, `publish_up`, `publish_down`) VALUES
(17, 1, 'Joomla! Announcements', 'joomla-announcements', 'http://www.joomla.org/announcements.feed?type=rss', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 1, 0, 1, 'en-GB', '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0"}', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 2, 'New Joomla! Extensions', 'new-joomla-extensions', 'http://feeds.joomla.org/JoomlaExtensions', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 4, 0, 1, 'en-GB', '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0"}', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 3, 'Joomla! Security News', 'joomla-security-news', 'http://feeds.joomla.org/JoomlaSecurityNews', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 2, 0, 1, 'en-GB', '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0"}', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 4, 'Joomla! Connect', 'joomla-connect', 'http://feeds.joomla.org/JoomlaConnect', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 3, 0, 1, 'en-GB', '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0"}', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `joom_overrider`
--

CREATE TABLE IF NOT EXISTS `joom_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `joom_redirect_links`
--

CREATE TABLE IF NOT EXISTS `joom_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `joom_schemas`
--

CREATE TABLE IF NOT EXISTS `joom_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `joom_schemas`
--

INSERT INTO `joom_schemas` (`extension_id`, `version_id`) VALUES
(700, '2.5.17'),
(10003, '4.5.0'),
(10010, '1.1.6'),
(10011, '1.1.1'),
(10012, '1.1.3'),
(10013, '1.0.1'),
(10014, '1.0.0'),
(10015, '1.0.3'),
(10016, '2.1.0');

-- --------------------------------------------------------

--
-- Table structure for table `joom_session`
--

CREATE TABLE IF NOT EXISTS `joom_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `joom_session`
--

INSERT INTO `joom_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`, `usertype`) VALUES
('7a231f39db4f0eff2db82989eac1ee8c', 1, 0, '1391253080', '__default|a:9:{s:22:"session.client.browser";s:72:"Mozilla/5.0 (Windows NT 6.2; WOW64; rv:26.0) Gecko/20100101 Firefox/26.0";s:15:"session.counter";i:77;s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":5:{s:11:"application";O:8:"stdClass":1:{s:4:"lang";s:0:"";}s:11:"com_modules";O:8:"stdClass":3:{s:7:"modules";O:8:"stdClass":4:{s:6:"filter";O:8:"stdClass":8:{s:18:"client_id_previous";i:0;s:6:"search";s:0:"";s:6:"access";i:0;s:5:"state";s:1:"1";s:8:"position";s:0:"";s:6:"module";s:0:"";s:9:"client_id";i:0;s:8:"language";s:0:"";}s:10:"limitstart";i:0;s:8:"ordercol";s:8:"position";s:9:"orderdirn";s:3:"asc";}s:4:"edit";O:8:"stdClass":1:{s:6:"module";O:8:"stdClass":2:{s:2:"id";a:0:{}s:4:"data";N;}}s:3:"add";O:8:"stdClass":1:{s:6:"module";O:8:"stdClass":2:{s:12:"extension_id";N;s:6:"params";N;}}}s:6:"global";O:8:"stdClass":1:{s:4:"list";O:8:"stdClass":1:{s:5:"limit";i:0;}}s:11:"com_uniform";O:8:"stdClass":1:{s:4:"edit";O:8:"stdClass":1:{s:4:"form";O:8:"stdClass":2:{s:2:"id";a:2:{i:0;i:4;i:1;i:2;}s:4:"data";N;}}}s:14:"com_jsnuniform";N;}}s:4:"user";O:5:"JUser":25:{s:9:"\0*\0isRoot";b:1;s:2:"id";s:3:"190";s:4:"name";s:10:"Super User";s:8:"username";s:5:"admin";s:5:"email";s:22:"gaud.mayur99@gmail.com";s:8:"password";s:65:"815d8521c701327dab3c01531c4bcdfa:TEvYWrxpom3KJMnx1MPQT1AEE6M1naTA";s:14:"password_clear";s:0:"";s:8:"usertype";s:10:"deprecated";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2014-01-31 06:13:50";s:13:"lastvisitDate";s:19:"2014-02-01 09:50:56";s:10:"activation";s:1:"0";s:6:"params";s:0:"";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\0*\0_authLevels";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"e6b1315e0cb5b2d50e2ecda3bc1214cf";s:19:"session.timer.start";i:1391250664;s:18:"session.timer.last";i:1391253078;s:17:"session.timer.now";i:1391253079;s:32:"e8c38e617f84fff370c969601c4ae6a1";s:85:"{"queryString":"option=com_uniform&view=form&task=form.edit&form_id=2","object_id":0}";}__form-design-4|a:3:{s:11:"form_page_6";s:4367:"[{"id":18,"identify":"multiple_choice","options":{"label":"Multiple Choice","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Individual building website for himself ","checked":false},{"text":"Freelancer building websites for clients ","checked":false},{"text":"Web Agency ","checked":false}],"value":"","identify":"multiple_choice","itemAction":"","allowOther":"1"},"type":"choices","position":"left"},{"id":19,"identify":"your_joomla_experience_","options":{"label":"Your Joomla experience: ","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Less than 1 year ","checked":false},{"text":"1-3 years ","checked":false},{"text":"More than 3 years ","checked":false}],"value":"","identify":"your_joomla_experience_","itemAction":""},"type":"choices","position":"left"},{"id":20,"identify":"which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_","options":{"label":"Which forum extension do you like to see JoomlaShine template compatible with?","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Kunena ","checked":false},{"text":"Dicussions ","checked":false},{"text":"Ninjaboard ","checked":false}],"value":"","identify":"which_forum_extension_do_you_like_to_see_joomlashine_template_compatible_with_","itemAction":"","allowOther":"1"},"type":"choices","position":"left"},{"id":21,"identify":"about_sample_data_which_way_do_you_prefer_","options":{"label":"About sample data, which way do you prefer?","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Sample data installation on your current website ","checked":false},{"text":"Whole Joomla! site installation package with sample data ","checked":false}],"value":"","identify":"about_sample_data_which_way_do_you_prefer_","itemAction":""},"type":"choices","position":"left"},{"id":22,"identify":"what_makes_you_love_joomlashine_template_","options":{"label":"What makes you love JoomlaShine template?","instruction":"","required":"1","limitation":0,"limitMin":0,"limitMax":0,"rows":"4","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"","identify":"what_makes_you_love_joomlashine_template_"},"type":"paragraph-text","position":"left"},{"id":23,"identify":"which_are_the_things_you_don_t_like_in_joomlashine_template_","options":{"label":"Which are the things you don''t like in JoomlaShine template?","instruction":"","required":"1","limitation":0,"limitMin":0,"limitMax":0,"rows":"4","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"","identify":"which_are_the_things_you_don_t_like_in_joomlashine_template_"},"type":"paragraph-text","position":"left"},{"id":24,"identify":"which_features_do_you_like_to_see_joomlashine_template_have_","options":{"label":"Which features do you like to see JoomlaShine template have?","instruction":"","required":"1","randomize":0,"labelOthers":"Others","layout":"jsn-columns-count-one","items":[{"text":"Control Panel to customize style ","checked":false},{"text":"Mega menu ","checked":false},{"text":"More icons to use ","checked":false}],"value":"","identify":"which_features_do_you_like_to_see_joomlashine_template_have_","itemAction":"","allowOther":"1"},"type":"choices","position":"left"},{"id":25,"identify":"what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_","options":{"label":"What design style you want to see in the further JoomlaShine templates, give us the URL to the design? ","instruction":"","required":0,"limitation":0,"limitMin":0,"limitMax":0,"rows":"3","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"","identify":"what_design_style_you_want_to_see_in_the_further_joomlashine_templates_give_us_the_url_to_the_design_"},"type":"paragraph-text","position":"left"},{"id":26,"identify":"date_time","options":{"label":"Date\\/Time","instruction":"","required":0,"enableRageSelection":"1","size":"jsn-input-small-fluid","timeFormat":0,"dateFormat":"1","yearRangeMin":"1930","yearRangeMax":"2023","identify":"date_time","dateValue":"","dateValueRange":"","dateOptionFormat":"mm\\/dd\\/yy","customFormatDate":"","timeOptionFormat":"hh:mm tt"},"type":"date","position":"left"}]";s:21:"form_container_page_6";s:48:"[[{"columnName":"left","columnClass":"span12"}]]";s:12:"page_content";s:5:"["6"]";}__form-design-2|a:3:{s:11:"form_page_4";s:1042:"[{"id":27,"identify":"name","options":{"label":"Name","instruction":"","required":"1","limitation":0,"limitMin":0,"limitMax":0,"limitType":"Words","size":"jsn-input-xlarge-fluid","value":"Your Name","identify":"name"},"type":"single-line-text","position":"left"},{"id":15,"identify":"email","options":{"label":"Email","instruction":"","required":"1","noDuplicates":0,"size":"jsn-input-xlarge-fluid","value":"Your email","valueConfirm":"","identify":"email"},"type":"email","position":"left"},{"id":28,"identify":"subject","options":{"label":"Subject","instruction":"","required":0,"limitation":0,"limitMin":0,"limitMax":0,"limitType":"Words","size":"jsn-input-xlarge-fluid","value":"Subject","identify":"subject"},"type":"single-line-text","position":"left"},{"id":29,"identify":"massage","options":{"label":"Massage","instruction":"","required":"1","limitation":0,"limitMin":0,"limitMax":0,"rows":"8","size":"jsn-input-xlarge-fluid","limitType":"Words","value":"Your message","identify":"massage"},"type":"paragraph-text","position":"left"}]";s:21:"form_container_page_4";s:48:"[[{"columnName":"left","columnClass":"span12"}]]";s:12:"page_content";s:5:"["4"]";}', 190, 'admin', ''),
('a78gntm01pjgjdbqh91c96qft7', 0, 1, '1391253180', '__default|a:9:{s:15:"session.counter";i:63;s:19:"session.timer.start";i:1391250863;s:18:"session.timer.last";i:1391253087;s:17:"session.timer.now";i:1391253179;s:22:"session.client.browser";s:72:"Mozilla/5.0 (Windows NT 6.2; WOW64; rv:26.0) Gecko/20100101 Firefox/26.0";s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":1:{s:10:"com_kunena";O:8:"stdClass":1:{s:10:"user0_read";a:3:{i:1;s:1:"1";i:2;s:1:"2";i:3;s:1:"3";}}}}s:4:"user";O:5:"JUser":25:{s:9:"\0*\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:0:{}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";a:1:{i:0;i:1;}s:14:"\0*\0_authLevels";a:2:{i:0;i:1;i:1;i:1;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"830dc70cdd30f82435095bc71ece41a3";s:16:"com_mailto.links";a:5:{s:40:"26c67a6a6f14943cd4e49bb055164677887ed468";O:8:"stdClass":2:{s:4:"link";s:57:"http://localhost/manan/index.php/layout/left-center-right";s:6:"expiry";i:1391252383;}s:40:"7a17b5b931303390bc1ba012803adad774135f30";O:8:"stdClass":2:{s:4:"link";s:54:"http://localhost/manan/index.php/menu-styles/tree-menu";s:6:"expiry";i:1391252419;}s:40:"8186dc50c5417f0a32af12f82333941679c8d109";O:8:"stdClass":2:{s:4:"link";s:39:"http://localhost/manan/index.php/layout";s:6:"expiry";i:1391252430;}s:40:"f2d92f0cddc9f08abdde98c225b5f9261600fd8e";O:8:"stdClass":2:{s:4:"link";s:61:"http://localhost/manan/index.php/free-extensions/form-builder";s:6:"expiry";i:1391252486;}s:40:"31a38f8cf2a5fca2f363a2d9b5e22c2618ed48c0";O:8:"stdClass":2:{s:4:"link";s:46:"http://localhost/manan/index.php/easy-to-start";s:6:"expiry";i:1391253180;}}}securimage_code_disp|a:2:{s:32:"bef98dd989d7ab9c63bb295151197d18";s:6:"SzfZE7";s:32:"1e89281bac778d891754bfcfb0ddc391";s:6:"7vVT4W";}securimage_code_value|a:2:{s:32:"bef98dd989d7ab9c63bb295151197d18";s:6:"SzfZE7";s:32:"1e89281bac778d891754bfcfb0ddc391";s:6:"7vVT4W";}securimage_code_ctime|a:2:{s:32:"bef98dd989d7ab9c63bb295151197d18";i:1391253083;s:32:"1e89281bac778d891754bfcfb0ddc391";i:1391253087;}', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `joom_template_styles`
--

CREATE TABLE IF NOT EXISTS `joom_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `joom_template_styles`
--

INSERT INTO `joom_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(2, 'bluestork', 1, '1', 'Bluestork - Default', '{"useRoundedCorners":"1","showSiteName":"0"}'),
(3, 'atomic', 0, '0', 'Atomic - Default', '{}'),
(4, 'beez_20', 0, '0', 'Beez2 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(6, 'beez5', 0, '0', 'Beez5 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/sampledata\\/fruitshop\\/fruits.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","html5":"0"}'),
(7, 'jsn_yoyo_free', 0, '1', 'JSN Yoyo FREE - Default', '{"logoColored":"1","mobileLogo":"","logoLink":"index.php","logoSlogan":"","templateWidth":{"type":"fixed","fixed":"1150","float":"90"},"showFrontpage":"0","desktopSwitcher":"1","promoColumns":{"01:promo-left":"span3","00:promo":"span6","02:promo-right":"span3"},"mainColumns":{"01:left":"span3","00:content":"span6","02:right":"span3"},"contentColumns":{"01:innerleft":"span3","00:component":"span6","02:innerright":"span3"},"userColumns":{"00:user5":"span4","00:user6":"span4","00:user7":"span4"},"menuSticky":{"mobile":"1","desktop":"1"},"sitetoolsColors":"{\\"list\\":[\\"blue\\",\\"red\\",\\"green\\",\\"violet\\",\\"orange\\",\\"grey\\"],\\"colors\\":[\\"blue\\",\\"red\\",\\"green\\",\\"violet\\",\\"orange\\",\\"grey\\"]}","socialIcons":{"status":["facebook","twitter","youtube"]}}'),
(8, 'jsn_mobilize', 0, '0', 'JSN Mobilize - Default', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `joom_updates`
--

CREATE TABLE IF NOT EXISTS `joom_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=63 ;

--
-- Dumping data for table `joom_updates`
--

INSERT INTO `joom_updates` (`update_id`, `update_site_id`, `extension_id`, `categoryid`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(1, 3, 0, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hy-AM_details.xml', ''),
(2, 3, 0, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/id-ID_details.xml', ''),
(3, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.14.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(4, 3, 0, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/km-KH_details.xml', ''),
(5, 3, 0, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', ''),
(6, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.14.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(7, 3, 0, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/bg-BG_details.xml', ''),
(8, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(9, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.17.2', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(10, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(11, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(12, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(13, 3, 0, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '2.5.13.11', '', 'http://update.joomla.org/language/details/uk-UA_details.xml', ''),
(14, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(15, 3, 0, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', ''),
(16, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(17, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2-5-17.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(18, 3, 0, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ro-RO_details.xml', ''),
(19, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(20, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(21, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.17.2', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(22, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(23, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(24, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(25, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.16.1', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(26, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(27, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(28, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(29, 3, 0, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/lt-LT_details.xml', ''),
(30, 3, 0, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '2.5.1.5', '', 'http://update.joomla.org/language/details/sq-AL_details.xml', ''),
(31, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.16.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(32, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(33, 3, 0, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '2.5.7.4', '', 'http://update.joomla.org/language/details/gl-ES_details.xml', ''),
(34, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(35, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(36, 3, 0, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pt-PT_details.xml', ''),
(37, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(38, 3, 0, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/he-IL_details.xml', ''),
(39, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.16.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(40, 3, 0, 0, 'Laotian', '', 'pkg_lo-LA', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/lo-LA_details.xml', ''),
(41, 3, 0, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '2.5.16.1', '', 'http://update.joomla.org/language/details/af-ZA_details.xml', ''),
(42, 3, 0, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/zh-CN_details.xml', ''),
(43, 3, 0, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/el-GR_details.xml', ''),
(44, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(45, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(46, 3, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(47, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(48, 3, 0, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/vi-VN_details.xml', ''),
(49, 3, 0, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', ''),
(50, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(51, 3, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(52, 3, 0, 0, 'Azeri', '', 'pkg_az-AZ', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/az-AZ_details.xml', ''),
(53, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(54, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.17.2', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(55, 3, 0, 0, 'Scottish Gaelic', '', 'pkg_gd-GB', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/gd-GB_details.xml', ''),
(56, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(57, 3, 0, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '1.7.0.1', '', 'http://update.joomla.org/language/details/eu-ES_details.xml', ''),
(58, 3, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(59, 3, 0, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ko-KR_details.xml', ''),
(60, 3, 0, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/hi-IN_details.xml', ''),
(61, 3, 0, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/cy-GB_details.xml', ''),
(62, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.17.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', '');

-- --------------------------------------------------------

--
-- Table structure for table `joom_update_categories`
--

CREATE TABLE IF NOT EXISTS `joom_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Categories' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `joom_update_sites`
--

CREATE TABLE IF NOT EXISTS `joom_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `joom_update_sites`
--

INSERT INTO `joom_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 0, 1391247810),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 0, 1391247810),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist.xml', 0, 1391247810),
(4, 'Kunena 3.0 Update Site', 'collection', 'http://update.kunena.org/3.0/list.xml', 0, 1391247809);

-- --------------------------------------------------------

--
-- Table structure for table `joom_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `joom_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `joom_update_sites_extensions`
--

INSERT INTO `joom_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 10035);

-- --------------------------------------------------------

--
-- Table structure for table `joom_usergroups`
--

CREATE TABLE IF NOT EXISTS `joom_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `joom_usergroups`
--

INSERT INTO `joom_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 20, 'Public'),
(2, 1, 6, 17, 'Registered'),
(3, 2, 7, 14, 'Author'),
(4, 3, 8, 11, 'Editor'),
(5, 4, 9, 10, 'Publisher'),
(6, 1, 2, 5, 'Manager'),
(7, 6, 3, 4, 'Administrator'),
(8, 1, 18, 19, 'Super Users');

-- --------------------------------------------------------

--
-- Table structure for table `joom_users`
--

CREATE TABLE IF NOT EXISTS `joom_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=191 ;

--
-- Dumping data for table `joom_users`
--

INSERT INTO `joom_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`) VALUES
(190, 'Super User', 'admin', 'gaud.mayur99@gmail.com', '815d8521c701327dab3c01531c4bcdfa:TEvYWrxpom3KJMnx1MPQT1AEE6M1naTA', 'deprecated', 0, 1, '2014-01-31 06:13:50', '2014-02-01 10:31:04', '0', '', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `joom_user_notes`
--

CREATE TABLE IF NOT EXISTS `joom_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `joom_user_profiles`
--

CREATE TABLE IF NOT EXISTS `joom_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `joom_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `joom_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `joom_user_usergroup_map`
--

INSERT INTO `joom_user_usergroup_map` (`user_id`, `group_id`) VALUES
(190, 8);

-- --------------------------------------------------------

--
-- Table structure for table `joom_viewlevels`
--

CREATE TABLE IF NOT EXISTS `joom_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `joom_viewlevels`
--

INSERT INTO `joom_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]');

-- --------------------------------------------------------

--
-- Table structure for table `joom_weblinks`
--

CREATE TABLE IF NOT EXISTS `joom_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `joom_weblinks`
--

INSERT INTO `joom_weblinks` (`id`, `catid`, `sid`, `title`, `alias`, `url`, `description`, `date`, `hits`, `state`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `access`, `params`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`) VALUES
(1, 32, 0, 'Joomla!', 'joomla', 'http://www.joomla.org', '<p>Home of Joomla!</p>', '0000-00-00 00:00:00', 5, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 33, 0, 'php.net', 'php', 'http://www.php.net', '<p>The language that Joomla! is developed in</p>', '0000-00-00 00:00:00', 6, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 1, '{"target":"","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 33, 0, 'MySQL', 'mysql', 'http://www.mysql.com', '<p>The database that Joomla! uses</p>', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 1, '{"target":"","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 32, 0, 'OpenSourceMatters', 'opensourcematters', 'http://www.opensourcematters.org', '<p>Home of OSM</p>', '0000-00-00 00:00:00', 11, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 32, 0, 'Joomla! - Forums', 'joomla-forums', 'http://forum.joomla.org', '<p>Joomla! Forums</p>', '0000-00-00 00:00:00', 4, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 33, 0, 'Ohloh Tracking of Joomla!', 'ohloh-tracking-of-joomla', 'http://www.ohloh.net/projects/20', '<p>Objective reports from Ohloh about Joomla''s development activity. Joomla! has some star developers with serious kudos.</p>', '0000-00-00 00:00:00', 2, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 31, 0, 'Baw Baw National Park', 'baw-baw-national-park', 'http://www.parkweb.vic.gov.au/1park_display.cfm?park=44', '<p>Park of the Austalian Alps National Parks system, Baw Baw  features sub alpine vegetation, beautiful views, and opportunities for hiking, skiing and other outdoor activities.</p>', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 31, 0, 'Kakadu', 'kakadu', 'http://www.environment.gov.au/parks/kakadu/index.html', '<p>Kakadu is known for both its cultural heritage and its natural features. It is one of a small number of places listed as World Heritage Places for both reasons. Extensive rock art is found there.</p>', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 31, 0, 'Pulu Keeling', 'pulu-keeling', 'http://www.environment.gov.au/parks/cocos/index.html', '<p>Located on an atoll 2000 kilometers north of Perth, Pulu Keeling is Australia''s smallest national park.</p>', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '2010-07-10 23:44:03', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
