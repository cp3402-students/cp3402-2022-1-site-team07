-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 24, 2022 at 12:06 PM
-- Server version: 5.7.32-35-log
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db4prglaiqi04x`
--

-- --------------------------------------------------------

--
-- Table structure for table `oit_commentmeta`
--

CREATE TABLE `oit_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oit_comments`
--

CREATE TABLE `oit_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `oit_comments`
--

INSERT INTO `oit_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-05-17 00:57:12', '2022-05-17 00:57:12', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oit_links`
--

CREATE TABLE `oit_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oit_options`
--

CREATE TABLE `oit_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `oit_options`
--

INSERT INTO `oit_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://boyds.sgedu.site/staging-tjc', 'yes'),
(2, 'home', 'http://boyds.sgedu.site/staging-tjc', 'yes'),
(3, 'blogname', 'My WordPress', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'nishan.bedrossian@my.jcu.edu.au', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:91:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:73:\"All-In-One-WP-Migration-With-Import-master/all-in-one-wp-migration-wi.php\";i:1;s:56:\"advanced-custom-fields-font-awesome/acf-font-awesome.php\";i:2;s:30:\"advanced-custom-fields/acf.php\";i:3;s:39:\"wp-file-manager/file_folder_manager.php\";i:4;s:21:\"wppusher/wppusher.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'team-07-theme', 'yes'),
(41, 'stylesheet', 'team-07-theme', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '51917', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1668301032', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '51917', 'yes'),
(100, 'oit_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:9:{i:1653022632;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1653051432;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1653094632;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1653094640;a:1:{s:37:\"siteground_optimizer_check_assets_dir\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1653094649;a:1:{s:35:\"siteground_security_clear_logs_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1653094656;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1653094658;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1653440232;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'https_detection_errors', 'a:1:{s:19:\"bad_response_source\";a:1:{i:0;s:55:\"It looks like the response did not come from this site.\";}}', 'yes'),
(120, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.9.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.9.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.3\";s:7:\"version\";s:5:\"5.9.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1653008310;s:15:\"version_checked\";s:5:\"5.9.3\";s:12:\"translations\";a:0:{}}', 'no'),
(125, 'theme_mods_twentytwentytwo', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1652796850;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(133, 'siteground_optimizer_heartbeat_post_interval', '120', 'yes'),
(134, 'siteground_optimizer_heartbeat_dashboard_interval', '0', 'yes'),
(135, 'siteground_optimizer_heartbeat_frontend_interval', '0', 'yes'),
(136, 'siteground_optimizer_excluded_lazy_load_media_types', 'a:9:{i:0;s:15:\"lazyload_mobile\";i:1;s:16:\"lazyload_iframes\";i:2;s:15:\"lazyload_videos\";i:3;s:18:\"lazyload_gravatars\";i:4;s:19:\"lazyload_thumbnails\";i:5;s:19:\"lazyload_responsive\";i:6;s:20:\"lazyload_textwidgets\";i:7;s:19:\"lazyload_shortcodes\";i:8;s:20:\"lazyload_woocommerce\";}', 'yes'),
(137, 'siteground_optimizer_version', '7.1.0', 'yes'),
(140, 'siteground_optimizer_update_timestamp', '1652749040', 'yes'),
(146, 'sg_security_lock_system_folders', '1', 'yes'),
(147, 'sg_security_disable_file_edit', '1', 'yes'),
(148, 'sg_security_wp_remove_version', '1', 'yes'),
(149, 'sg_security_disable_xml_rpc', '1', 'yes'),
(150, 'sg_security_xss_protection', '1', 'yes'),
(151, 'sg_security_disable_usernames', '1', 'yes'),
(152, 'sg_security_login_attempts', '5', 'yes'),
(153, 'sg_security_version', '1.2.5', 'yes'),
(154, 'sg_security_update_timestamp', '1652749047', 'yes'),
(155, 'sg_security_server_address', '35.213.193.150', 'no'),
(156, 'sg_security_login_type', 'default', 'yes'),
(157, 'sg_security_notification_emails', 'a:1:{i:0;s:31:\"nishan.bedrossian@my.jcu.edu.au\";}', 'yes'),
(158, 'sg_security_weekly_email_timestamp', '1652749047', 'yes'),
(159, 'sg_security_hsts_protection', '0', 'yes'),
(160, 'WPLANG', '', 'yes'),
(162, 'sco_id', '2', 'yes'),
(164, '_site_transient_timeout_browser_1af3d6d4fbb7947d107b0170a309f510', '1653353857', 'no'),
(165, '_site_transient_browser_1af3d6d4fbb7947d107b0170a309f510', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"101.0.4951.64\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(166, '_site_transient_timeout_php_check_3a6f2a803f99347534e67553ed67d1ad', '1653353858', 'no'),
(167, '_site_transient_php_check_3a6f2a803f99347534e67553ed67d1ad', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(169, 'can_compress_scripts', '0', 'no'),
(182, 'recently_activated', 'a:2:{s:27:\"sg-security/sg-security.php\";i:1652749095;s:31:\"sg-cachepress/sg-cachepress.php\";i:1652749093;}', 'yes'),
(185, 'finished_updating_comment_type', '1', 'yes'),
(190, 'siteground_data_store', 'a:1:{i:0;a:57:{s:3:\"url\";s:36:\"https://boyds.sgedu.site/staging-tjc\";s:13:\"email_consent\";i:0;s:12:\"data_consent\";i:0;s:23:\"email_consent_timestamp\";i:0;s:22:\"data_consent_timestamp\";i:0;s:11:\"admin_email\";s:31:\"nishan.bedrossian@my.jcu.edu.au\";s:11:\"php_version\";s:3:\"7.4\";s:17:\"php_max_exec_time\";s:3:\"120\";s:9:\"admin_url\";s:46:\"https://boyds.sgedu.site/staging-tjc/wp-admin/\";s:23:\"php_upload_max_filesize\";s:4:\"256M\";s:16:\"php_memory_limit\";s:4:\"768M\";s:6:\"server\";s:5:\"linux\";s:13:\"image_library\";a:1:{i:0;s:2:\"gd\";}s:10:\"wp_version\";s:5:\"5.9.3\";s:15:\"wp_memory_limit\";s:3:\"40M\";s:13:\"wp_max_upload\";d:256;s:13:\"wp_user_count\";i:1;s:8:\"timezone\";s:0:\"\";s:13:\"mysql_version\";s:6:\"5.7.32\";s:14:\"server_version\";s:6:\"Apache\";s:6:\"is_ssl\";b:1;s:12:\"is_multisite\";b:0;s:10:\"site_count\";i:1;s:10:\"theme_name\";s:17:\"Twenty Twenty-Two\";s:13:\"theme_version\";s:3:\"1.1\";s:6:\"locale\";s:5:\"en_US\";s:15:\"has_woocommerce\";b:0;s:16:\"hosting_provider\";s:7:\"Unknown\";s:17:\"installed_plugins\";s:25:\"SiteGround Security 1.2.7\";s:33:\"siteground_optimizer_enable_cache\";i:0;s:33:\"siteground_optimizer_file_caching\";i:0;s:37:\"siteground_optimizer_enable_memcached\";i:0;s:36:\"siteground_optimizer_autoflush_cache\";i:0;s:32:\"siteground_optimizer_ssl_enabled\";i:0;s:41:\"siteground_optimizer_fix_insecure_content\";i:0;s:43:\"siteground_optimizer_enable_browser_caching\";i:0;s:34:\"siteground_optimizer_resize_images\";i:0;s:36:\"siteground_optimizer_lazyload_images\";i:0;s:42:\"siteground_optimizer_database_optimization\";i:0;s:37:\"siteground_optimizer_purge_rest_cache\";i:0;s:33:\"siteground_optimizer_backup_media\";i:0;s:44:\"siteground_optimizer_image_compression_level\";i:0;s:33:\"siteground_optimizer_webp_support\";i:0;s:44:\"siteground_optimizer_heartbeat_post_interval\";i:120;s:49:\"siteground_optimizer_heartbeat_dashboard_interval\";i:0;s:48:\"siteground_optimizer_heartbeat_frontend_interval\";i:0;s:31:\"sg_security_lock_system_folders\";i:1;s:29:\"sg_security_wp_remove_version\";i:1;s:26:\"sg_security_xss_protection\";i:1;s:27:\"sg_security_disable_xml_rpc\";i:1;s:29:\"sg_security_disable_file_edit\";i:1;s:24:\"sg_security_disable_feed\";i:0;s:27:\"sg_security_hsts_protection\";i:0;s:22:\"sg_security_login_type\";i:0;s:26:\"sg_security_login_attempts\";i:5;s:17:\"sg_security_sg2fa\";i:0;s:29:\"sg_security_disable_usernames\";i:1;}}', 'yes'),
(195, 'ai1wm_secret_key', '2EMZ44YrN3Dd', 'yes'),
(198, 'ai1wm_updater', 'a:0:{}', 'yes'),
(199, 'wppusher_token', '14d715980190ca04677ae25d94a30a0474d21432a4f0056dd74e9f67e7c37b0b', 'yes'),
(200, 'gl_base_url', 'https://gitlab.com', 'yes'),
(203, 'fm_key', 'gswBQvCDH65yo1XOJmRZfKYdj', 'yes'),
(243, 'gh_token', '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', 'yes'),
(250, 'current_theme', 'Team-07-Theme', 'yes'),
(251, 'theme_mods_team-07-theme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(252, 'theme_switched', '', 'yes'),
(261, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1653008312;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.12.2\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.12.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:56:\"advanced-custom-fields-font-awesome/acf-font-awesome.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:49:\"w.org/plugins/advanced-custom-fields-font-awesome\";s:4:\"slug\";s:35:\"advanced-custom-fields-font-awesome\";s:6:\"plugin\";s:56:\"advanced-custom-fields-font-awesome/acf-font-awesome.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:66:\"https://wordpress.org/plugins/advanced-custom-fields-font-awesome/\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/plugin/advanced-custom-fields-font-awesome.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:88:\"https://ps.w.org/advanced-custom-fields-font-awesome/assets/icon-256x256.jpg?rev=1016227\";s:2:\"1x\";s:88:\"https://ps.w.org/advanced-custom-fields-font-awesome/assets/icon-128x128.jpg?rev=1016227\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:89:\"https://ps.w.org/advanced-custom-fields-font-awesome/assets/banner-772x250.jpg?rev=859936\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.5\";}s:39:\"wp-file-manager/file_folder_manager.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/wp-file-manager\";s:4:\"slug\";s:15:\"wp-file-manager\";s:6:\"plugin\";s:39:\"wp-file-manager/file_folder_manager.php\";s:11:\"new_version\";s:5:\"7.1.5\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/wp-file-manager/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/wp-file-manager.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/wp-file-manager/assets/icon-128x128.png?rev=2491299\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/wp-file-manager/assets/banner-772x250.jpg?rev=2491299\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}}s:7:\"checked\";a:5:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.12.2\";s:56:\"advanced-custom-fields-font-awesome/acf-font-awesome.php\";s:5:\"4.0.3\";s:73:\"All-In-One-WP-Migration-With-Import-master/all-in-one-wp-migration-wi.php\";s:4:\"6.77\";s:39:\"wp-file-manager/file_folder_manager.php\";s:5:\"7.1.5\";s:21:\"wppusher/wppusher.php\";s:6:\"3.0.13\";}}', 'no'),
(262, 'acffa_settings', 'a:2:{s:19:\"acffa_major_version\";i:6;s:20:\"acffa_plugin_version\";s:5:\"4.0.3\";}', 'no'),
(263, 'acf_version', '5.12.2', 'yes'),
(266, 'ACFFA_latest_version_timestamp', '1652797495', 'yes'),
(267, 'ACFFA_latest_version', '6.1.1', 'yes'),
(268, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(269, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(280, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":3,\"critical\":0}', 'yes'),
(312, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1653008312;s:7:\"checked\";a:4:{s:13:\"team-07-theme\";s:3:\"1.3\";s:12:\"twentytwenty\";s:3:\"1.9\";s:15:\"twentytwentyone\";s:3:\"1.5\";s:15:\"twentytwentytwo\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.9.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.5.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.1.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(352, '_site_transient_timeout_theme_roots', '1653024159', 'no'),
(353, '_site_transient_theme_roots', 'a:4:{s:13:\"team-07-theme\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `oit_postmeta`
--

CREATE TABLE `oit_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `oit_postmeta`
--

INSERT INTO `oit_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(9, 8, '_edit_lock', '1652959829:1');

-- --------------------------------------------------------

--
-- Table structure for table `oit_posts`
--

CREATE TABLE `oit_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `oit_posts`
--

INSERT INTO `oit_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-05-17 00:57:12', '2022-05-17 00:57:12', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'closed', 'open', '', 'hello-world', '', '', '2022-05-17 00:57:29', '2022-05-17 00:57:29', '', 0, 'http://boyds.sgedu.site/staging-tjc/?p=1', 0, 'post', '', 1),
(2, 1, '2022-05-17 00:57:12', '2022-05-17 00:57:12', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://boyds.sgedu.site/staging-tjc/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2022-05-17 00:57:12', '2022-05-17 00:57:12', '', 0, 'http://boyds.sgedu.site/staging-tjc/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-05-17 00:57:12', '2022-05-17 00:57:12', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://boyds.sgedu.site/staging-tjc.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2022-05-17 00:57:12', '2022-05-17 00:57:12', '', 0, 'http://boyds.sgedu.site/staging-tjc/?page_id=3', 0, 'page', '', 0),
(4, 0, '2022-05-17 00:57:29', '2022-05-17 00:57:29', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2022-05-17 00:57:29', '2022-05-17 00:57:29', '', 1, 'http://boyds.sgedu.site/staging-tjc/?p=4', 0, 'revision', '', 0),
(5, 1, '2022-05-17 00:57:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-05-17 00:57:38', '0000-00-00 00:00:00', '', 0, 'https://boyds.sgedu.site/staging-tjc/?p=5', 0, 'post', '', 0),
(8, 1, '2022-05-19 11:30:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-05-19 11:30:27', '0000-00-00 00:00:00', '', 0, 'https://boyds.sgedu.site/staging-tjc/?post_type=acf-field-group&p=8', 0, 'acf-field-group', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oit_termmeta`
--

CREATE TABLE `oit_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oit_terms`
--

CREATE TABLE `oit_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `oit_terms`
--

INSERT INTO `oit_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oit_term_relationships`
--

CREATE TABLE `oit_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `oit_term_relationships`
--

INSERT INTO `oit_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oit_term_taxonomy`
--

CREATE TABLE `oit_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `oit_term_taxonomy`
--

INSERT INTO `oit_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oit_usermeta`
--

CREATE TABLE `oit_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `oit_usermeta`
--

INSERT INTO `oit_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Nishan'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'oit_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'oit_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"3384429529985123321efb95b6dbff4c00520f7438a58db64c3b21fcf2b06746\";a:4:{s:10:\"expiration\";i:1653132610;s:2:\"ip\";s:11:\"121.44.4.38\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36\";s:5:\"login\";i:1652959810;}}'),
(17, 1, 'oit_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"121.44.4.0\";}'),
(19, 2, 'nickname', 'jack'),
(20, 2, 'first_name', ''),
(21, 2, 'last_name', ''),
(22, 2, 'description', ''),
(23, 2, 'rich_editing', 'true'),
(24, 2, 'syntax_highlighting', 'true'),
(25, 2, 'comment_shortcuts', 'false'),
(26, 2, 'admin_color', 'fresh'),
(27, 2, 'use_ssl', '0'),
(28, 2, 'show_admin_bar_front', 'true'),
(29, 2, 'locale', ''),
(30, 2, 'oit_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(31, 2, 'oit_user_level', '10'),
(32, 2, 'dismissed_wp_pointers', ''),
(33, 3, 'nickname', 'storm'),
(34, 3, 'first_name', ''),
(35, 3, 'last_name', ''),
(36, 3, 'description', ''),
(37, 3, 'rich_editing', 'true'),
(38, 3, 'syntax_highlighting', 'true'),
(39, 3, 'comment_shortcuts', 'false'),
(40, 3, 'admin_color', 'fresh'),
(41, 3, 'use_ssl', '0'),
(42, 3, 'show_admin_bar_front', 'true'),
(43, 3, 'locale', ''),
(44, 3, 'oit_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(45, 3, 'oit_user_level', '10'),
(46, 3, 'dismissed_wp_pointers', ''),
(61, 5, 'nickname', 'boyd'),
(62, 5, 'first_name', ''),
(63, 5, 'last_name', ''),
(64, 5, 'description', ''),
(65, 5, 'rich_editing', 'true'),
(66, 5, 'syntax_highlighting', 'true'),
(67, 5, 'comment_shortcuts', 'false'),
(68, 5, 'admin_color', 'fresh'),
(69, 5, 'use_ssl', '0'),
(70, 5, 'show_admin_bar_front', 'true'),
(71, 5, 'locale', ''),
(72, 5, 'oit_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(73, 5, 'oit_user_level', '10'),
(74, 5, 'dismissed_wp_pointers', ''),
(75, 1, '_new_email', 'a:2:{s:4:\"hash\";s:32:\"3ca6b6e5bf026b60bc564c0d557c44c1\";s:8:\"newemail\";s:33:\"nishan.bedrossssian@my.jcu.edu.au\";}');

-- --------------------------------------------------------

--
-- Table structure for table `oit_users`
--

CREATE TABLE `oit_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `oit_users`
--

INSERT INTO `oit_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'townsvillejazzclub', '$P$BNCj3jF299IdqdsuDHQZYWvS9t1Ahc.', 'townsvillejazzclub', 'nishan.bedrossian@my.jcu.edu.au', 'http://boyds.sgedu.site/staging-tjc', '2022-05-17 00:57:12', '', 0, 'townsvillejazzclub'),
(2, 'jack', '$P$Bl2uWzBpav3U/v3WRTT3Qh/Ca1KqVg.', 'jack', 'jack@jack.com', '', '2022-05-17 13:52:09', '', 0, 'jack'),
(3, 'storm', '$P$B.vt/KfpZgEgapeF3fS4nLt3gv.0TO.', 'storm', 'storm@storm.com', '', '2022-05-17 13:52:48', '', 0, 'storm'),
(5, 'boyd', '$P$BhIf.VHRtjENO5rXo0ZwKe6vZXaOg6.', 'boyd', 'boyd@boyd.com', '', '2022-05-17 13:54:05', '', 0, 'boyd');

-- --------------------------------------------------------

--
-- Table structure for table `oit_wpfm_backup`
--

CREATE TABLE `oit_wpfm_backup` (
  `id` int(11) NOT NULL,
  `backup_name` text COLLATE utf8mb4_unicode_520_ci,
  `backup_date` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oit_wppusher_packages`
--

CREATE TABLE `oit_wppusher_packages` (
  `id` mediumint(9) NOT NULL,
  `package` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `repository` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `branch` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'master',
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `ptd` int(11) NOT NULL,
  `host` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `private` int(11) NOT NULL,
  `subdirectory` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `oit_wppusher_packages`
--

INSERT INTO `oit_wppusher_packages` (`id`, `package`, `repository`, `branch`, `type`, `status`, `ptd`, `host`, `private`, `subdirectory`) VALUES
(1, 'team-07-theme', 'cp3402-students/cp3402-2022-1-site-team07', 'main', 2, 1, 1, 'gh', 0, 'Website/wp-content/themes/team-07-theme');

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(95, 'action_scheduler/migration_hook', 'complete', '2022-05-22 12:06:39', '2022-05-22 22:06:39', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1653221199;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1653221199;}', 1, 1, '2022-05-22 12:07:05', '2022-05-22 22:07:05', 0, NULL),
(96, 'wpforms_process_forms_locator_scan', 'complete', '2022-05-22 12:07:41', '2022-05-22 22:07:41', '{\"tasks_meta_id\":1}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1653221261;s:18:\"\0*\0first_timestamp\";i:1653221261;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1653221261;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2022-05-22 12:07:41', '2022-05-22 22:07:41', 0, NULL),
(97, 'wpforms_email_summaries_fetch_info_blocks', 'complete', '2022-05-17 18:54:36', '2022-05-18 04:54:36', '{\"tasks_meta_id\":null}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1652813676;s:18:\"\0*\0first_timestamp\";i:1652813676;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1652813676;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 1, '2022-05-22 12:07:41', '2022-05-22 22:07:41', 0, NULL),
(98, 'wpforms_email_summaries_fetch_info_blocks', 'pending', '2022-05-29 12:07:41', '2022-05-29 22:07:41', '{\"tasks_meta_id\":null}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1653826061;s:18:\"\0*\0first_timestamp\";i:1652813676;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1653826061;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(99, 'wpforms_process_forms_locator_scan', 'complete', '2022-05-23 12:07:41', '2022-05-23 22:07:41', '{\"tasks_meta_id\":1}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1653307661;s:18:\"\0*\0first_timestamp\";i:1653221261;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1653307661;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2022-05-23 12:07:55', '2022-05-23 22:07:55', 0, NULL),
(100, 'wpforms_admin_addons_cache_update', 'pending', '2022-05-29 12:07:41', '2022-05-29 22:07:41', '{\"tasks_meta_id\":2}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1653826061;s:18:\"\0*\0first_timestamp\";i:1653826061;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1653826061;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(101, 'wpforms_admin_builder_templates_cache_update', 'pending', '2022-05-29 12:07:41', '2022-05-29 22:07:41', '{\"tasks_meta_id\":3}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1653826061;s:18:\"\0*\0first_timestamp\";i:1653826061;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1653826061;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(102, 'wpforms_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '{\"tasks_meta_id\":4}', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2022-05-22 12:09:42', '2022-05-22 22:09:42', 0, NULL),
(103, 'action_scheduler/migration_hook', 'complete', '2022-05-22 15:57:35', '2022-05-23 01:57:35', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1653235055;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1653235055;}', 1, 1, '2022-05-22 15:57:47', '2022-05-23 01:57:47', 0, NULL),
(104, 'wpforms_process_forms_locator_save', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '{\"tasks_meta_id\":5}', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2022-05-23 12:07:55', '2022-05-23 22:07:55', 0, NULL),
(105, 'wpforms_process_forms_locator_scan', 'pending', '2022-05-24 12:07:55', '2022-05-24 22:07:55', '{\"tasks_meta_id\":1}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1653394075;s:18:\"\0*\0first_timestamp\";i:1653221261;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1653394075;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(106, 'wpforms_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '{\"tasks_meta_id\":6}', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2022-05-23 17:37:05', '2022-05-24 03:37:05', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'wpforms');

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 95, 'action created', '2022-05-22 12:05:39', '2022-05-22 22:05:39'),
(2, 95, 'action started via WP Cron', '2022-05-22 12:07:05', '2022-05-22 22:07:05'),
(3, 95, 'action complete via WP Cron', '2022-05-22 12:07:05', '2022-05-22 22:07:05'),
(4, 96, 'action created', '2022-05-22 12:07:41', '2022-05-22 22:07:41'),
(5, 97, 'action created', '2022-05-22 12:07:41', '2022-05-22 22:07:41'),
(6, 97, 'action started via WP Cron', '2022-05-22 12:07:41', '2022-05-22 22:07:41'),
(7, 97, 'action complete via WP Cron', '2022-05-22 12:07:41', '2022-05-22 22:07:41'),
(8, 98, 'action created', '2022-05-22 12:07:41', '2022-05-22 22:07:41'),
(9, 96, 'action started via WP Cron', '2022-05-22 12:07:41', '2022-05-22 22:07:41'),
(10, 96, 'action complete via WP Cron', '2022-05-22 12:07:41', '2022-05-22 22:07:41'),
(11, 99, 'action created', '2022-05-22 12:07:41', '2022-05-22 22:07:41'),
(12, 100, 'action created', '2022-05-22 12:07:41', '2022-05-22 22:07:41'),
(13, 101, 'action created', '2022-05-22 12:07:41', '2022-05-22 22:07:41'),
(14, 102, 'action created', '2022-05-22 12:09:35', '2022-05-22 22:09:35'),
(15, 102, 'action started via WP Cron', '2022-05-22 12:09:42', '2022-05-22 22:09:42'),
(16, 102, 'action complete via WP Cron', '2022-05-22 12:09:42', '2022-05-22 22:09:42'),
(17, 103, 'action created', '2022-05-22 15:56:35', '2022-05-23 01:56:35'),
(18, 103, 'action started via WP Cron', '2022-05-22 15:57:47', '2022-05-23 01:57:47'),
(19, 103, 'action complete via WP Cron', '2022-05-22 15:57:47', '2022-05-23 01:57:47'),
(20, 99, 'action started via WP Cron', '2022-05-23 12:07:55', '2022-05-23 22:07:55'),
(21, 104, 'action created', '2022-05-23 12:07:55', '2022-05-23 22:07:55'),
(22, 99, 'action complete via WP Cron', '2022-05-23 12:07:55', '2022-05-23 22:07:55'),
(23, 105, 'action created', '2022-05-23 12:07:55', '2022-05-23 22:07:55'),
(24, 104, 'action started via WP Cron', '2022-05-23 12:07:55', '2022-05-23 22:07:55'),
(25, 104, 'action complete via WP Cron', '2022-05-23 12:07:55', '2022-05-23 22:07:55'),
(26, 106, 'action created', '2022-05-23 17:37:05', '2022-05-24 03:37:05'),
(27, 106, 'action started via Async Request', '2022-05-23 17:37:05', '2022-05-24 03:37:05'),
(28, 106, 'action complete via Async Request', '2022-05-23 17:37:05', '2022-05-24 03:37:05');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://boyds.sgedu.site/staging-tjc/', 'yes'),
(2, 'home', 'https://boyds.sgedu.site/staging-tjc/', 'yes'),
(3, 'blogname', 'Townsville Jazz Club', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@tsvjazzclub.com.au', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:275:{s:28:\"tribe/events/kitchen-sink/?$\";s:69:\"index.php?post_type=tribe_events&tribe_events_views_kitchen_sink=page\";s:93:\"tribe/events/kitchen-sink/(page|grid|typographical|elements|events-bar|navigation|manager)/?$\";s:76:\"index.php?post_type=tribe_events&tribe_events_views_kitchen_sink=$matches[1]\";s:28:\"event-aggregator/(insert)/?$\";s:53:\"index.php?tribe-aggregator=1&tribe-action=$matches[1]\";s:25:\"(?:event)/([^/]+)/ical/?$\";s:56:\"index.php?ical=1&name=$matches[1]&post_type=tribe_events\";s:38:\"(?:events\\-calendar)/(?:page)/(\\d+)/?$\";s:71:\"index.php?post_type=tribe_events&eventDisplay=default&paged=$matches[1]\";s:51:\"(?:events\\-calendar)/(?:featured)/(?:page)/(\\d+)/?$\";s:79:\"index.php?post_type=tribe_events&featured=1&eventDisplay=list&paged=$matches[1]\";s:48:\"(?:events\\-calendar)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?post_type=tribe_events&eventDisplay=list&feed=$matches[1]\";s:61:\"(?:events\\-calendar)/(?:featured)/(feed|rdf|rss|rss2|atom)/?$\";s:78:\"index.php?post_type=tribe_events&featured=1&eventDisplay=list&feed=$matches[1]\";s:33:\"(?:events\\-calendar)/(?:month)/?$\";s:51:\"index.php?post_type=tribe_events&eventDisplay=month\";s:46:\"(?:events\\-calendar)/(?:month)/(?:featured)/?$\";s:62:\"index.php?post_type=tribe_events&eventDisplay=month&featured=1\";s:47:\"(?:events\\-calendar)/(?:month)/(\\d{4}-\\d{2})/?$\";s:73:\"index.php?post_type=tribe_events&eventDisplay=month&eventDate=$matches[1]\";s:47:\"(?:events\\-calendar)/(?:list)/(?:page)/(\\d+)/?$\";s:68:\"index.php?post_type=tribe_events&eventDisplay=list&paged=$matches[1]\";s:60:\"(?:events\\-calendar)/(?:list)/(?:featured)/(?:page)/(\\d+)/?$\";s:79:\"index.php?post_type=tribe_events&eventDisplay=list&featured=1&paged=$matches[1]\";s:32:\"(?:events\\-calendar)/(?:list)/?$\";s:50:\"index.php?post_type=tribe_events&eventDisplay=list\";s:45:\"(?:events\\-calendar)/(?:list)/(?:featured)/?$\";s:61:\"index.php?post_type=tribe_events&eventDisplay=list&featured=1\";s:33:\"(?:events\\-calendar)/(?:today)/?$\";s:49:\"index.php?post_type=tribe_events&eventDisplay=day\";s:46:\"(?:events\\-calendar)/(?:today)/(?:featured)/?$\";s:60:\"index.php?post_type=tribe_events&eventDisplay=day&featured=1\";s:37:\"(?:events\\-calendar)/(\\d{4}-\\d{2})/?$\";s:73:\"index.php?post_type=tribe_events&eventDisplay=month&eventDate=$matches[1]\";s:50:\"(?:events\\-calendar)/(\\d{4}-\\d{2})/(?:featured)/?$\";s:84:\"index.php?post_type=tribe_events&eventDisplay=month&eventDate=$matches[1]&featured=1\";s:43:\"(?:events\\-calendar)/(\\d{4}-\\d{2}-\\d{2})/?$\";s:71:\"index.php?post_type=tribe_events&eventDisplay=day&eventDate=$matches[1]\";s:56:\"(?:events\\-calendar)/(\\d{4}-\\d{2}-\\d{2})/(?:featured)/?$\";s:82:\"index.php?post_type=tribe_events&eventDisplay=day&eventDate=$matches[1]&featured=1\";s:36:\"(?:events\\-calendar)/(?:featured)/?$\";s:43:\"index.php?post_type=tribe_events&featured=1\";s:23:\"(?:events\\-calendar)/?$\";s:53:\"index.php?post_type=tribe_events&eventDisplay=default\";s:28:\"(?:events\\-calendar)/ical/?$\";s:39:\"index.php?post_type=tribe_events&ical=1\";s:41:\"(?:events\\-calendar)/(?:featured)/ical/?$\";s:50:\"index.php?post_type=tribe_events&ical=1&featured=1\";s:48:\"(?:events\\-calendar)/(\\d{4}-\\d{2}-\\d{2})/ical/?$\";s:78:\"index.php?post_type=tribe_events&ical=1&eventDisplay=day&eventDate=$matches[1]\";s:57:\"(?:events\\-calendar)/(\\d{4}-\\d{2}-\\d{2})/ical/featured/?$\";s:89:\"index.php?post_type=tribe_events&ical=1&eventDisplay=day&eventDate=$matches[1]&featured=1\";s:70:\"(?:events\\-calendar)/(?:category)/(?:[^/]+/)*([^/]+)/(?:page)/(\\d+)/?$\";s:97:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&paged=$matches[2]\";s:83:\"(?:events\\-calendar)/(?:category)/(?:[^/]+/)*([^/]+)/(?:featured)/(?:page)/(\\d+)/?$\";s:108:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&featured=1&eventDisplay=list&paged=$matches[2]\";s:65:\"(?:events\\-calendar)/(?:category)/(?:[^/]+/)*([^/]+)/(?:month)/?$\";s:80:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=month\";s:78:\"(?:events\\-calendar)/(?:category)/(?:[^/]+/)*([^/]+)/(?:month)/(?:featured)/?$\";s:91:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=month&featured=1\";s:79:\"(?:events\\-calendar)/(?:category)/(?:[^/]+/)*([^/]+)/(?:list)/(?:page)/(\\d+)/?$\";s:97:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&paged=$matches[2]\";s:92:\"(?:events\\-calendar)/(?:category)/(?:[^/]+/)*([^/]+)/(?:list)/(?:featured)/(?:page)/(\\d+)/?$\";s:108:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&featured=1&paged=$matches[2]\";s:64:\"(?:events\\-calendar)/(?:category)/(?:[^/]+/)*([^/]+)/(?:list)/?$\";s:79:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list\";s:77:\"(?:events\\-calendar)/(?:category)/(?:[^/]+/)*([^/]+)/(?:list)/(?:featured)/?$\";s:90:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&featured=1\";s:65:\"(?:events\\-calendar)/(?:category)/(?:[^/]+/)*([^/]+)/(?:today)/?$\";s:78:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day\";s:78:\"(?:events\\-calendar)/(?:category)/(?:[^/]+/)*([^/]+)/(?:today)/(?:featured)/?$\";s:89:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&featured=1\";s:83:\"(?:events\\-calendar)/(?:category)/(?:[^/]+/)*([^/]+)/(?:day)/(\\d{4}-\\d{2}-\\d{2})/?$\";s:100:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&eventDate=$matches[2]\";s:96:\"(?:events\\-calendar)/(?:category)/(?:[^/]+/)*([^/]+)/(?:day)/(\\d{4}-\\d{2}-\\d{2})/(?:featured)/?$\";s:111:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&eventDate=$matches[2]&featured=1\";s:69:\"(?:events\\-calendar)/(?:category)/(?:[^/]+/)*([^/]+)/(\\d{4}-\\d{2})/?$\";s:102:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=month&eventDate=$matches[2]\";s:82:\"(?:events\\-calendar)/(?:category)/(?:[^/]+/)*([^/]+)/(\\d{4}-\\d{2})/(?:featured)/?$\";s:113:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=month&eventDate=$matches[2]&featured=1\";s:75:\"(?:events\\-calendar)/(?:category)/(?:[^/]+/)*([^/]+)/(\\d{4}-\\d{2}-\\d{2})/?$\";s:100:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&eventDate=$matches[2]\";s:88:\"(?:events\\-calendar)/(?:category)/(?:[^/]+/)*([^/]+)/(\\d{4}-\\d{2}-\\d{2})/(?:featured)/?$\";s:111:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&eventDate=$matches[2]&featured=1\";s:60:\"(?:events\\-calendar)/(?:category)/(?:[^/]+/)*([^/]+)/feed/?$\";s:89:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&feed=rss2\";s:73:\"(?:events\\-calendar)/(?:category)/(?:[^/]+/)*([^/]+)/(?:featured)/feed/?$\";s:100:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&featured=1&eventDisplay=list&feed=rss2\";s:60:\"(?:events\\-calendar)/(?:category)/(?:[^/]+/)*([^/]+)/ical/?$\";s:68:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&ical=1\";s:73:\"(?:events\\-calendar)/(?:category)/(?:[^/]+/)*([^/]+)/(?:featured)/ical/?$\";s:79:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&featured=1&ical=1\";s:85:\"(?:events\\-calendar)/(?:category)/(?:[^/]+/)*([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:78:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&feed=$matches[2]\";s:98:\"(?:events\\-calendar)/(?:category)/(?:[^/]+/)*([^/]+)/(?:featured)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:89:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&featured=1&feed=$matches[2]\";s:68:\"(?:events\\-calendar)/(?:category)/(?:[^/]+/)*([^/]+)/(?:featured)/?$\";s:93:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&featured=1&eventDisplay=default\";s:55:\"(?:events\\-calendar)/(?:category)/(?:[^/]+/)*([^/]+)/?$\";s:82:\"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=default\";s:54:\"(?:events\\-calendar)/(?:tag)/([^/]+)/(?:page)/(\\d+)/?$\";s:84:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&paged=$matches[2]\";s:67:\"(?:events\\-calendar)/(?:tag)/([^/]+)/(?:featured)/(?:page)/(\\d+)/?$\";s:95:\"index.php?post_type=tribe_events&tag=$matches[1]&featured=1&eventDisplay=list&paged=$matches[2]\";s:49:\"(?:events\\-calendar)/(?:tag)/([^/]+)/(?:month)/?$\";s:67:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=month\";s:62:\"(?:events\\-calendar)/(?:tag)/([^/]+)/(?:month)/(?:featured)/?$\";s:78:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=month&featured=1\";s:63:\"(?:events\\-calendar)/(?:tag)/([^/]+)/(?:list)/(?:page)/(\\d+)/?$\";s:84:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&paged=$matches[2]\";s:76:\"(?:events\\-calendar)/(?:tag)/([^/]+)/(?:list)/(?:featured)/(?:page)/(\\d+)/?$\";s:95:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&featured=1&paged=$matches[2]\";s:48:\"(?:events\\-calendar)/(?:tag)/([^/]+)/(?:list)/?$\";s:66:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list\";s:61:\"(?:events\\-calendar)/(?:tag)/([^/]+)/(?:list)/(?:featured)/?$\";s:77:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&featured=1\";s:49:\"(?:events\\-calendar)/(?:tag)/([^/]+)/(?:today)/?$\";s:65:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day\";s:62:\"(?:events\\-calendar)/(?:tag)/([^/]+)/(?:today)/(?:featured)/?$\";s:76:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&featured=1\";s:67:\"(?:events\\-calendar)/(?:tag)/([^/]+)/(?:day)/(\\d{4}-\\d{2}-\\d{2})/?$\";s:87:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&eventDate=$matches[2]\";s:80:\"(?:events\\-calendar)/(?:tag)/([^/]+)/(?:day)/(\\d{4}-\\d{2}-\\d{2})/(?:featured)/?$\";s:98:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&eventDate=$matches[2]&featured=1\";s:53:\"(?:events\\-calendar)/(?:tag)/([^/]+)/(\\d{4}-\\d{2})/?$\";s:89:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=month&eventDate=$matches[2]\";s:66:\"(?:events\\-calendar)/(?:tag)/([^/]+)/(\\d{4}-\\d{2})/(?:featured)/?$\";s:100:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=month&eventDate=$matches[2]&featured=1\";s:59:\"(?:events\\-calendar)/(?:tag)/([^/]+)/(\\d{4}-\\d{2}-\\d{2})/?$\";s:87:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&eventDate=$matches[2]\";s:72:\"(?:events\\-calendar)/(?:tag)/([^/]+)/(\\d{4}-\\d{2}-\\d{2})/(?:featured)/?$\";s:98:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&eventDate=$matches[2]&featured=1\";s:44:\"(?:events\\-calendar)/(?:tag)/([^/]+)/feed/?$\";s:76:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&feed=rss2\";s:57:\"(?:events\\-calendar)/(?:tag)/([^/]+)/(?:featured)/feed/?$\";s:87:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&feed=rss2&featured=1\";s:44:\"(?:events\\-calendar)/(?:tag)/([^/]+)/ical/?$\";s:55:\"index.php?post_type=tribe_events&tag=$matches[1]&ical=1\";s:57:\"(?:events\\-calendar)/(?:tag)/([^/]+)/(?:featured)/ical/?$\";s:66:\"index.php?post_type=tribe_events&tag=$matches[1]&featured=1&ical=1\";s:69:\"(?:events\\-calendar)/(?:tag)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:65:\"index.php?post_type=tribe_events&tag=$matches[1]&feed=$matches[2]\";s:82:\"(?:events\\-calendar)/(?:tag)/([^/]+)/(?:featured)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:76:\"index.php?post_type=tribe_events&tag=$matches[1]&featured=1&feed=$matches[2]\";s:52:\"(?:events\\-calendar)/(?:tag)/([^/]+)/(?:featured)/?$\";s:59:\"index.php?post_type=tribe_events&tag=$matches[1]&featured=1\";s:39:\"(?:events\\-calendar)/(?:tag)/([^/]+)/?$\";s:69:\"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=default\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:22:\"tribe-promoter-auth/?$\";s:37:\"index.php?tribe-promoter-auth-check=1\";s:8:\"event/?$\";s:32:\"index.php?post_type=tribe_events\";s:38:\"event/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=tribe_events&feed=$matches[1]\";s:33:\"event/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=tribe_events&feed=$matches[1]\";s:25:\"event/page/([0-9]{1,})/?$\";s:50:\"index.php?post_type=tribe_events&paged=$matches[1]\";s:8:\"bands/?$\";s:24:\"index.php?post_type=band\";s:38:\"bands/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=band&feed=$matches[1]\";s:33:\"bands/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=band&feed=$matches[1]\";s:25:\"bands/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=band&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:33:\"venue/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"venue/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"venue/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"venue/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"venue/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"venue/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"venue/([^/]+)/embed/?$\";s:44:\"index.php?tribe_venue=$matches[1]&embed=true\";s:26:\"venue/([^/]+)/trackback/?$\";s:38:\"index.php?tribe_venue=$matches[1]&tb=1\";s:34:\"venue/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?tribe_venue=$matches[1]&paged=$matches[2]\";s:41:\"venue/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?tribe_venue=$matches[1]&cpage=$matches[2]\";s:30:\"venue/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?tribe_venue=$matches[1]&page=$matches[2]\";s:22:\"venue/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"venue/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"venue/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"venue/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"venue/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"venue/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"organiser/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"organiser/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"organiser/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"organiser/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"organiser/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"organiser/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"organiser/([^/]+)/embed/?$\";s:48:\"index.php?tribe_organizer=$matches[1]&embed=true\";s:30:\"organiser/([^/]+)/trackback/?$\";s:42:\"index.php?tribe_organizer=$matches[1]&tb=1\";s:38:\"organiser/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?tribe_organizer=$matches[1]&paged=$matches[2]\";s:45:\"organiser/([^/]+)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?tribe_organizer=$matches[1]&cpage=$matches[2]\";s:34:\"organiser/([^/]+)(?:/([0-9]+))?/?$\";s:54:\"index.php?tribe_organizer=$matches[1]&page=$matches[2]\";s:26:\"organiser/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"organiser/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"organiser/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"organiser/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"organiser/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"organiser/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"event/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"event/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"event/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"event/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"event/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"event/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"event/([^/]+)/embed/?$\";s:45:\"index.php?tribe_events=$matches[1]&embed=true\";s:26:\"event/([^/]+)/trackback/?$\";s:39:\"index.php?tribe_events=$matches[1]&tb=1\";s:46:\"event/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?tribe_events=$matches[1]&feed=$matches[2]\";s:41:\"event/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?tribe_events=$matches[1]&feed=$matches[2]\";s:34:\"event/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?tribe_events=$matches[1]&paged=$matches[2]\";s:41:\"event/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?tribe_events=$matches[1]&cpage=$matches[2]\";s:30:\"event/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?tribe_events=$matches[1]&page=$matches[2]\";s:22:\"event/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"event/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"event/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"event/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"event/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"event/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"events-calendar/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?tribe_events_cat=$matches[1]&feed=$matches[2]\";s:58:\"events-calendar/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?tribe_events_cat=$matches[1]&feed=$matches[2]\";s:39:\"events-calendar/category/(.+?)/embed/?$\";s:49:\"index.php?tribe_events_cat=$matches[1]&embed=true\";s:51:\"events-calendar/category/(.+?)/page/?([0-9]{1,})/?$\";s:56:\"index.php?tribe_events_cat=$matches[1]&paged=$matches[2]\";s:33:\"events-calendar/category/(.+?)/?$\";s:38:\"index.php?tribe_events_cat=$matches[1]\";s:41:\"deleted_event/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"deleted_event/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"deleted_event/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"deleted_event/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"deleted_event/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"deleted_event/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"deleted_event/([^/]+)/embed/?$\";s:46:\"index.php?deleted_event=$matches[1]&embed=true\";s:34:\"deleted_event/([^/]+)/trackback/?$\";s:40:\"index.php?deleted_event=$matches[1]&tb=1\";s:42:\"deleted_event/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?deleted_event=$matches[1]&paged=$matches[2]\";s:49:\"deleted_event/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?deleted_event=$matches[1]&cpage=$matches[2]\";s:38:\"deleted_event/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?deleted_event=$matches[1]&page=$matches[2]\";s:30:\"deleted_event/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"deleted_event/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"deleted_event/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"deleted_event/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"deleted_event/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"deleted_event/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"band/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"band/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"band/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"band/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"band/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"band/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"band/([^/]+)/embed/?$\";s:37:\"index.php?band=$matches[1]&embed=true\";s:25:\"band/([^/]+)/trackback/?$\";s:31:\"index.php?band=$matches[1]&tb=1\";s:45:\"band/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?band=$matches[1]&feed=$matches[2]\";s:40:\"band/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?band=$matches[1]&feed=$matches[2]\";s:33:\"band/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?band=$matches[1]&paged=$matches[2]\";s:40:\"band/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?band=$matches[1]&cpage=$matches[2]\";s:29:\"band/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?band=$matches[1]&page=$matches[2]\";s:21:\"band/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"band/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"band/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"band/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"band/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"band/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\"members/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?members=$matches[1]&feed=$matches[2]\";s:43:\"members/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?members=$matches[1]&feed=$matches[2]\";s:24:\"members/([^/]+)/embed/?$\";s:40:\"index.php?members=$matches[1]&embed=true\";s:36:\"members/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?members=$matches[1]&paged=$matches[2]\";s:18:\"members/([^/]+)/?$\";s:29:\"index.php?members=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:73:\"All-In-One-WP-Migration-With-Import-master/all-in-one-wp-migration-wi.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:43:\"the-events-calendar/the-events-calendar.php\";i:4;s:24:\"wpforms-lite/wpforms.php\";i:5;s:21:\"wppusher/wppusher.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:102:\"/home/customer/www/boyds.sgedu.site/public_html/staging-tjc/wp-content/themes/team-07-theme2/style.css\";i:2;s:121:\"/home/customer/www/boyds.sgedu.site/public_html/staging-tjc/wp-content/themes/team-07-theme2/page-templates/home-page.php\";i:3;s:106:\"/home/customer/www/boyds.sgedu.site/public_html/staging-tjc/wp-content/themes/team-07-theme2/functions.php\";i:4;s:109:\"/home/customer/www/boyds.sgedu.site/public_html/staging-tjc/wp-content/themes/team-07-theme2/archive-band.php\";i:5;s:103:\"/home/customer/www/boyds.sgedu.site/public_html/staging-tjc/wp-content/themes/team-07-theme2/single.php\";}', 'no'),
(40, 'template', 'team-07-theme2', 'yes'),
(41, 'stylesheet', 'team-07-theme2', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '51917', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Australia/Sydney', 'yes'),
(81, 'page_for_posts', '23', 'yes'),
(82, 'page_on_front', '5', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '9', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1668047953', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '51917', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:101:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:25:\"read_private_tribe_events\";b:1;s:17:\"edit_tribe_events\";b:1;s:24:\"edit_others_tribe_events\";b:1;s:25:\"edit_private_tribe_events\";b:1;s:27:\"edit_published_tribe_events\";b:1;s:19:\"delete_tribe_events\";b:1;s:26:\"delete_others_tribe_events\";b:1;s:27:\"delete_private_tribe_events\";b:1;s:29:\"delete_published_tribe_events\";b:1;s:20:\"publish_tribe_events\";b:1;s:25:\"read_private_tribe_venues\";b:1;s:17:\"edit_tribe_venues\";b:1;s:24:\"edit_others_tribe_venues\";b:1;s:25:\"edit_private_tribe_venues\";b:1;s:27:\"edit_published_tribe_venues\";b:1;s:19:\"delete_tribe_venues\";b:1;s:26:\"delete_others_tribe_venues\";b:1;s:27:\"delete_private_tribe_venues\";b:1;s:29:\"delete_published_tribe_venues\";b:1;s:20:\"publish_tribe_venues\";b:1;s:29:\"read_private_tribe_organizers\";b:1;s:21:\"edit_tribe_organizers\";b:1;s:28:\"edit_others_tribe_organizers\";b:1;s:29:\"edit_private_tribe_organizers\";b:1;s:31:\"edit_published_tribe_organizers\";b:1;s:23:\"delete_tribe_organizers\";b:1;s:30:\"delete_others_tribe_organizers\";b:1;s:31:\"delete_private_tribe_organizers\";b:1;s:33:\"delete_published_tribe_organizers\";b:1;s:24:\"publish_tribe_organizers\";b:1;s:31:\"read_private_aggregator-records\";b:1;s:23:\"edit_aggregator-records\";b:1;s:30:\"edit_others_aggregator-records\";b:1;s:31:\"edit_private_aggregator-records\";b:1;s:33:\"edit_published_aggregator-records\";b:1;s:25:\"delete_aggregator-records\";b:1;s:32:\"delete_others_aggregator-records\";b:1;s:33:\"delete_private_aggregator-records\";b:1;s:35:\"delete_published_aggregator-records\";b:1;s:26:\"publish_aggregator-records\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:74:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:25:\"read_private_tribe_events\";b:1;s:17:\"edit_tribe_events\";b:1;s:24:\"edit_others_tribe_events\";b:1;s:25:\"edit_private_tribe_events\";b:1;s:27:\"edit_published_tribe_events\";b:1;s:19:\"delete_tribe_events\";b:1;s:26:\"delete_others_tribe_events\";b:1;s:27:\"delete_private_tribe_events\";b:1;s:29:\"delete_published_tribe_events\";b:1;s:20:\"publish_tribe_events\";b:1;s:25:\"read_private_tribe_venues\";b:1;s:17:\"edit_tribe_venues\";b:1;s:24:\"edit_others_tribe_venues\";b:1;s:25:\"edit_private_tribe_venues\";b:1;s:27:\"edit_published_tribe_venues\";b:1;s:19:\"delete_tribe_venues\";b:1;s:26:\"delete_others_tribe_venues\";b:1;s:27:\"delete_private_tribe_venues\";b:1;s:29:\"delete_published_tribe_venues\";b:1;s:20:\"publish_tribe_venues\";b:1;s:29:\"read_private_tribe_organizers\";b:1;s:21:\"edit_tribe_organizers\";b:1;s:28:\"edit_others_tribe_organizers\";b:1;s:29:\"edit_private_tribe_organizers\";b:1;s:31:\"edit_published_tribe_organizers\";b:1;s:23:\"delete_tribe_organizers\";b:1;s:30:\"delete_others_tribe_organizers\";b:1;s:31:\"delete_private_tribe_organizers\";b:1;s:33:\"delete_published_tribe_organizers\";b:1;s:24:\"publish_tribe_organizers\";b:1;s:31:\"read_private_aggregator-records\";b:1;s:23:\"edit_aggregator-records\";b:1;s:30:\"edit_others_aggregator-records\";b:1;s:31:\"edit_private_aggregator-records\";b:1;s:33:\"edit_published_aggregator-records\";b:1;s:25:\"delete_aggregator-records\";b:1;s:32:\"delete_others_aggregator-records\";b:1;s:33:\"delete_private_aggregator-records\";b:1;s:35:\"delete_published_aggregator-records\";b:1;s:26:\"publish_aggregator-records\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:30:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:17:\"edit_tribe_events\";b:1;s:27:\"edit_published_tribe_events\";b:1;s:19:\"delete_tribe_events\";b:1;s:29:\"delete_published_tribe_events\";b:1;s:20:\"publish_tribe_events\";b:1;s:17:\"edit_tribe_venues\";b:1;s:27:\"edit_published_tribe_venues\";b:1;s:19:\"delete_tribe_venues\";b:1;s:29:\"delete_published_tribe_venues\";b:1;s:20:\"publish_tribe_venues\";b:1;s:21:\"edit_tribe_organizers\";b:1;s:31:\"edit_published_tribe_organizers\";b:1;s:23:\"delete_tribe_organizers\";b:1;s:33:\"delete_published_tribe_organizers\";b:1;s:24:\"publish_tribe_organizers\";b:1;s:23:\"edit_aggregator-records\";b:1;s:33:\"edit_published_aggregator-records\";b:1;s:25:\"delete_aggregator-records\";b:1;s:35:\"delete_published_aggregator-records\";b:1;s:26:\"publish_aggregator-records\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:13:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:17:\"edit_tribe_events\";b:1;s:19:\"delete_tribe_events\";b:1;s:17:\"edit_tribe_venues\";b:1;s:19:\"delete_tribe_venues\";b:1;s:21:\"edit_tribe_organizers\";b:1;s:23:\"delete_tribe_organizers\";b:1;s:23:\"edit_aggregator-records\";b:1;s:25:\"delete_aggregator-records\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'en_AU', 'yes'),
(103, 'widget_block', 'a:11:{i:3;a:1:{s:7:\"content\";s:123:\"<!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:130:\"<!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:heading -->\n<h2>What\'s on</h2>\n<!-- /wp:heading --></div>\n<!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}i:8;a:1:{s:7:\"content\";s:1523:\"<!-- wp:gallery {\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped\"><!-- wp:image {\"id\":58,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/band-1.jpg\" alt=\"band-1\" class=\"wp-image-58\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":59,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/band-2.jpg\" alt=\"band-2\" class=\"wp-image-59\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":60,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/band-3.jpg\" alt=\"band-3\" class=\"wp-image-60\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":61,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Juhl-Atkinson-1.jpg\" alt=\"\" class=\"wp-image-61\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":52,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Anthony-and-the-Gentlemen-of-Jazz-.jpg\" alt=\"Anthony-and-the-Gentlemen-of-Jazz-\" class=\"wp-image-52\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->\";}i:9;a:1:{s:7:\"content\";s:252:\"<p><iframe id=\"myIframe\" onload=\"contentWindow.scrollTo(0,190);\" onclick=\"resizeIframeHight();\" scrolling=\"no\" style=\"border:0; height:420px;\" class=\"w-100\" src=\"https://boyds.sgedu.site/staging-tjc/events-calendar/\" title=\"Events\"><br />\n</iframe></p>\";}i:10;a:1:{s:7:\"content\";s:262:\"<h4>Get Social</h4>\n<p>\n<a class=\"mr-3\" href=\"#\"><i href=\"https://www.facebook.com/tsvjazzclub\" class=\"fa-brands fa-facebook\"></i> Facebook</a> </p>\n<p>\n<a href=\"mailto:townsvillejazz@icloud.com\" class=\"mr-3\"><i class=\"fa-solid fa-envelope\"></i> Email Us</a></p>\";}i:11;a:1:{s:7:\"content\";s:50:\"<!-- wp:wpforms/form-selector {\"formId\":\"94\"} /-->\";}i:12;a:1:{s:7:\"content\";s:50:\"<!-- wp:wpforms/form-selector {\"formId\":\"94\"} /-->\";}i:13;a:1:{s:7:\"content\";s:258:\"<h2>Live Radio</h2>\n<p><a target=\"_black\" href=\"http://onlineradiobox.com/au/triplet/player/?cs=au.triplet&amp;played=1\"><img class=\"img-fluid w-100\" src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/radio-banner3.jpg\" alt=\"radio\"></a></p>\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:8:\"block-11\";i:1;s:8:\"block-12\";}s:13:\"right-sidebar\";a:4:{i:0;s:7:\"block-3\";i:1;s:7:\"block-4\";i:2;s:7:\"block-9\";i:3;s:8:\"block-13\";}s:12:\"left-sidebar\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:4:\"hero\";a:0:{}s:10:\"herocanvas\";a:0:{}s:10:\"statichero\";a:0:{}s:10:\"footerfull\";a:3:{i:0;s:10:\"nav_menu-3\";i:1;s:8:\"block-10\";i:2;s:7:\"block-8\";}s:13:\"array_version\";i:3;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(105, 'cron', 'a:11:{i:1653393818;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1653395954;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1653403154;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1653432243;a:1:{s:30:\"tribe_schedule_transient_purge\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1653446354;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1653446365;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1653446367;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1653475443;a:2:{s:24:\"tribe_common_log_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"tribe_daily_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1653791954;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1653883200;a:1:{s:28:\"wpforms_email_summaries_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:30:\"wpforms_email_summaries_weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:2:{i:3;a:2:{s:5:\"title\";s:11:\"Quick Links\";s:8:\"nav_menu\";i:15;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'theme_mods_twentytwentytwo', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1653072457;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(125, 'https_detection_errors', 'a:0:{}', 'yes'),
(143, 'can_compress_scripts', '1', 'no'),
(158, 'finished_updating_comment_type', '1', 'yes'),
(159, 'recently_activated', 'a:3:{s:39:\"wp-file-manager/file_folder_manager.php\";i:1653234995;s:56:\"advanced-custom-fields-font-awesome/acf-font-awesome.php\";i:1653074058;s:51:\"colorlib-404-customizer/colorlib-404-customizer.php\";i:1653050592;}', 'yes'),
(160, 'auto_update_plugins', 'a:2:{i:2;s:30:\"advanced-custom-fields/acf.php\";i:3;s:56:\"advanced-custom-fields-font-awesome/acf-font-awesome.php\";}', 'no'),
(161, 'current_theme', 'Team-07-Theme', 'yes'),
(162, 'theme_mods_team-07-theme', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1653071406;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(163, 'theme_switched', '', 'yes'),
(171, 'acf_version', '5.12.2', 'yes'),
(180, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(181, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(203, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":2,\"critical\":0}', 'yes'),
(210, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:3;}}', 'yes'),
(216, '_site_transient_timeout_browser_7efe0f8f9de89db2b479c42f1135b66c', '1653631469', 'no'),
(217, '_site_transient_browser_7efe0f8f9de89db2b479c42f1135b66c', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"101.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(218, '_site_transient_timeout_php_check_3a6f2a803f99347534e67553ed67d1ad', '1653631470', 'no'),
(219, '_site_transient_php_check_3a6f2a803f99347534e67553ed67d1ad', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(237, 'core_updater.lock', '1653026860', 'no'),
(238, 'dismissed_update_core', 'a:1:{s:11:\"5.9.3|en_AU\";b:1;}', 'no'),
(260, '_transient_timeout_cnfp_review', '1655633249', 'no'),
(261, '_transient_cnfp_review', '2022-05-20', 'no'),
(262, 'cnfp_settings', 'a:19:{s:34:\"colorlib_404_customizer_activation\";s:1:\"1\";s:39:\"colorlib_404_customizer_select_template\";s:11:\"template_08\";s:36:\"colorlib_404_customizer_page_heading\";s:6:\"Oops !\";s:31:\"colorlib_404_customizer_content\";s:15:\"Page Not Found!\";s:35:\"colorlib_404_customizer_button_text\";s:16:\"Back to homepage\";s:39:\"colorlib_404_customizer_social_facebook\";s:21:\"https://facebook.com/\";s:38:\"colorlib_404_customizer_social_twitter\";s:20:\"https://twitter.com/\";s:40:\"colorlib_404_customizer_social_pinterest\";s:22:\"https://pinterest.com/\";s:38:\"colorlib_404_customizer_social_youtube\";s:20:\"https://youtube.com/\";s:36:\"colorlib_404_customizer_social_email\";s:14:\"your@domain.to\";s:40:\"colorlib_404_customizer_social_instagram\";s:22:\"https://instagram.com/\";s:42:\"colorlib_404_customizer_custom_css_control\";s:0:\"\";s:40:\"colorlib_404_customizer_background_image\";s:0:\"\";s:41:\"colorlib_404_customizer_background_repeat\";s:9:\"no-repeat\";s:39:\"colorlib_404_customizer_background_size\";s:4:\"auto\";s:40:\"colorlib_404_customizer_background_color\";s:0:\"\";s:34:\"colorlib_404_customizer_text_color\";s:0:\"\";s:36:\"colorlib_404_customizer_contact_link\";s:1:\"#\";s:44:\"colorlib_404_customizer_enable_header_footer\";s:0:\"\";}', 'yes'),
(265, '_site_transient_timeout_browser_704e4eb73394a95d1282c9ed2e114611', '1653646093', 'no'),
(266, '_site_transient_browser_704e4eb73394a95d1282c9ed2e114611', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"101.0.4951.67\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(269, '_site_transient_timeout_browser_1af3d6d4fbb7947d107b0170a309f510', '1653646403', 'no'),
(270, '_site_transient_browser_1af3d6d4fbb7947d107b0170a309f510', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"101.0.4951.64\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(282, 'wppusher_token', '8412fce4072ba9dbc01673173fcd203e12ab34ba488f2a91ecd1f7e43fe17469', 'yes'),
(283, 'gl_base_url', 'https://gitlab.com', 'yes'),
(284, 'gh_token', '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', 'yes'),
(297, 'tribe_last_updated_option', '1653234995.0278', 'yes'),
(301, 'tribe_events_calendar_options', 'a:48:{s:8:\"did_init\";b:1;s:19:\"tribeEventsTemplate\";s:0:\"\";s:16:\"tribeEnableViews\";a:3:{i:0;s:4:\"list\";i:1;s:5:\"month\";i:2;s:3:\"day\";}s:10:\"viewOption\";s:4:\"list\";s:14:\"schema-version\";s:6:\"5.15.0\";s:27:\"recurring_events_are_hidden\";s:6:\"hidden\";s:21:\"previous_ecp_versions\";a:1:{i:0;s:1:\"0\";}s:18:\"latest_ecp_version\";s:6:\"5.15.0\";s:16:\"views_v2_enabled\";b:1;s:12:\"postsPerPage\";s:2:\"12\";s:16:\"monthEventAmount\";s:1:\"3\";s:39:\"last-update-message-the-events-calendar\";s:6:\"5.15.0\";s:13:\"earliest_date\";s:19:\"2022-05-20 17:00:00\";s:21:\"earliest_date_markers\";a:1:{i:0;s:2:\"39\";}s:11:\"latest_date\";s:19:\"2022-08-13 17:00:00\";s:19:\"latest_date_markers\";a:1:{i:0;s:3:\"151\";}s:11:\"donate-link\";b:0;s:20:\"toggle_blocks_editor\";b:0;s:33:\"toggle_blocks_editor_hidden_field\";b:0;s:12:\"showComments\";b:0;s:29:\"disable_metabox_custom_fields\";b:1;s:20:\"showEventsInMainLoop\";b:0;s:10:\"eventsSlug\";s:15:\"events-calendar\";s:15:\"singleEventSlug\";s:5:\"event\";s:14:\"multiDayCutoff\";s:5:\"00:00\";s:21:\"defaultCurrencySymbol\";s:1:\"$\";s:19:\"defaultCurrencyCode\";s:3:\"AUD\";s:23:\"reverseCurrencyPosition\";b:0;s:17:\"trash-past-events\";s:0:\"\";s:18:\"delete-past-events\";s:0:\"\";s:15:\"embedGoogleMaps\";b:1;s:19:\"embedGoogleMapsZoom\";s:2:\"10\";s:11:\"debugEvents\";b:0;s:26:\"tribe_events_timezone_mode\";s:4:\"site\";s:32:\"tribe_events_timezones_show_zone\";b:0;s:24:\"front_page_event_archive\";b:0;s:22:\"google_maps_js_api_key\";s:39:\"AIzaSyDNsicAsP6-VuGtAb1O9riI3oc_NOb7IOU\";s:15:\"stylesheet_mode\";s:5:\"tribe\";s:20:\"tribeDisableTribeBar\";b:0;s:23:\"enable_month_view_cache\";b:1;s:18:\"dateWithYearFormat\";s:5:\"j F Y\";s:21:\"dateWithoutYearFormat\";s:3:\"F j\";s:18:\"monthAndYearFormat\";s:3:\"F Y\";s:17:\"dateTimeSeparator\";s:3:\" @ \";s:18:\"timeRangeSeparator\";s:3:\" - \";s:16:\"datepickerFormat\";s:1:\"4\";s:21:\"tribeEventsBeforeHTML\";s:0:\"\";s:20:\"tribeEventsAfterHTML\";s:0:\"\";}', 'yes'),
(304, 'tribe_last_save_post', '1653297590.46', 'yes'),
(305, 'widget_tribe-events-list-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(306, '_transient_timeout_tec_events_legacy_views_v1_removed_paths_checked', '1653478930', 'no'),
(307, '_transient_tec_events_legacy_views_v1_removed_paths_checked', 'a:4:{s:7:\"ABSPATH\";s:60:\"/home/customer/www/boyds.sgedu.site/public_html/staging-tjc/\";s:14:\"STYLESHEETPATH\";s:92:\"/home/customer/www/boyds.sgedu.site/public_html/staging-tjc/wp-content/themes/team-07-theme2\";s:12:\"TEMPLATEPATH\";s:92:\"/home/customer/www/boyds.sgedu.site/public_html/staging-tjc/wp-content/themes/team-07-theme2\";s:5:\"paths\";a:0:{}}', 'no'),
(308, 'fs_active_plugins', 'O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:42:\"the-events-calendar/common/vendor/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.4.3\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1653043444;s:11:\"plugin_path\";s:43:\"the-events-calendar/the-events-calendar.php\";}}s:7:\"abspath\";s:60:\"/home/customer/www/boyds.sgedu.site/public_html/staging-tjc/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:43:\"the-events-calendar/the-events-calendar.php\";s:8:\"sdk_path\";s:42:\"the-events-calendar/common/vendor/freemius\";s:7:\"version\";s:5:\"2.4.3\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1653043444;}}', 'yes'),
(309, 'fs_debug_mode', '', 'yes'),
(310, 'fs_accounts', 'a:5:{s:21:\"id_slug_type_path_map\";a:1:{i:3069;a:3:{s:4:\"slug\";s:19:\"the-events-calendar\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:43:\"the-events-calendar/the-events-calendar.php\";}}s:11:\"plugin_data\";a:1:{s:19:\"the-events-calendar\";a:16:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:43:\"the-events-calendar/the-events-calendar.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1653043444;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:0;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.4.3\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:6:\"5.15.0\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:16:\"boyds.sgedu.site\";s:9:\"server_ip\";s:15:\"220.253.238.233\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1653043444;s:7:\"version\";s:6:\"5.15.0\";}s:15:\"prev_is_premium\";b:0;s:12:\"is_anonymous\";a:3:{s:2:\"is\";b:1;s:9:\"timestamp\";i:1653043473;s:7:\"version\";s:6:\"5.15.0\";}}}s:13:\"file_slug_map\";a:1:{s:43:\"the-events-calendar/the-events-calendar.php\";s:19:\"the-events-calendar\";}s:7:\"plugins\";a:1:{s:19:\"the-events-calendar\";O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:19:\"The Events Calendar\";s:4:\"slug\";s:19:\"the-events-calendar\";s:12:\"premium_slug\";s:27:\"the-events-calendar-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:43:\"the-events-calendar/the-events-calendar.php\";s:7:\"version\";s:6:\"5.15.0\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_e32061abc28cfedf231f3e5c4e626\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"3069\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"25b20b5e2be1a62c963aba333c9cfc8c\";}', 'yes'),
(311, 'fs_gdpr', 'a:1:{s:2:\"u1\";a:1:{s:8:\"required\";b:0;}}', 'yes'),
(312, 'tribe_last_generate_rewrite_rules', '1653185185.954', 'yes'),
(315, 'widget_tribe-widget-events-list', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(318, '_transient_timeout_tribe_feature_detection', '1653648245', 'no'),
(319, '_transient_tribe_feature_detection', 'a:1:{s:22:\"supports_async_process\";b:1;}', 'no'),
(324, 'new_admin_email', 'admin@tsvjazzclub.com.au', 'yes'),
(365, 'external_updates-event-aggregator', 'O:8:\"stdClass\":3:{s:9:\"lastCheck\";i:1653069273;s:14:\"checkedVersion\";N;s:6:\"update\";O:19:\"Tribe__PUE__Utility\":13:{s:2:\"id\";i:0;s:6:\"plugin\";N;s:4:\"slug\";N;s:7:\"version\";s:3:\"1.0\";s:8:\"homepage\";N;s:12:\"download_url\";N;s:8:\"sections\";O:8:\"stdClass\":1:{s:9:\"changelog\";s:0:\"\";}s:14:\"upgrade_notice\";N;s:13:\"custom_update\";N;s:11:\"api_invalid\";b:1;s:19:\"api_invalid_message\";s:214:\"<p>You are using %plugin_name% but your license key is invalid. Visit the Events Calendar website to check your <a href=\"https://theeventscalendar.com/license-keys/?utm_medium=pue&utm_campaign=in-app\">licenses</a>.\";s:26:\"api_inline_invalid_message\";s:196:\"<p>Your %plugin_name% license key is invalid. Visit the Events Calendar website to check your <a href=\"https://theeventscalendar.com/license-keys/?utm_medium=pue&utm_campaign=in-app\">licenses</a>.\";s:13:\"license_error\";s:203:\"<p>Your Event Aggregator license key is invalid. Visit the Events Calendar website to check your <a href=\"https://theeventscalendar.com/license-keys/?utm_medium=pue&amp;utm_campaign=in-app\">licenses</a>.\";}}', 'no'),
(366, 'tribe_pue_key_notices', 'a:0:{}', 'yes'),
(382, 'theme_mods_understrap', 'a:7:{i:0;b:0;s:28:\"understrap_posts_index_style\";s:7:\"default\";s:27:\"understrap_sidebar_position\";s:5:\"right\";s:25:\"understrap_container_type\";s:9:\"container\";s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1653072329;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"right-sidebar\";a:0:{}s:12:\"left-sidebar\";a:0:{}s:4:\"hero\";a:0:{}s:10:\"herocanvas\";a:0:{}s:10:\"statichero\";a:0:{}s:10:\"footerfull\";a:0:{}}}}', 'yes'),
(418, 'theme_mods_theme7', 'a:6:{i:0;b:0;s:28:\"understrap_posts_index_style\";s:7:\"default\";s:27:\"understrap_sidebar_position\";s:5:\"right\";s:25:\"understrap_container_type\";s:9:\"container\";s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1653072440;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"right-sidebar\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:12:\"left-sidebar\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:4:\"hero\";a:0:{}s:10:\"herocanvas\";a:0:{}s:10:\"statichero\";a:0:{}s:10:\"footerfull\";a:0:{}}}}', 'yes'),
(421, 'theme_mods_team-07-theme2', 'a:8:{i:0;b:0;s:28:\"understrap_posts_index_style\";s:7:\"default\";s:27:\"understrap_sidebar_position\";s:5:\"right\";s:25:\"understrap_container_type\";s:9:\"container\";s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1653121292;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"right-sidebar\";a:4:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-9\";}s:12:\"left-sidebar\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:4:\"hero\";a:0:{}s:10:\"herocanvas\";a:0:{}s:10:\"statichero\";a:0:{}s:10:\"footerfull\";a:3:{i:0;s:10:\"nav_menu-3\";i:1;s:7:\"block-7\";i:2;s:7:\"block-8\";}}}s:11:\"custom_logo\";i:51;}', 'yes'),
(508, 'site_logo', '51', 'yes'),
(509, 'tribe_customizer', 'a:1:{s:15:\"global_elements\";a:2:{s:9:\"font_size\";s:1:\"0\";s:14:\"font_size_base\";s:2:\"16\";}}', 'yes'),
(554, 'tribe_events_cat_children', 'a:0:{}', 'yes'),
(660, 'ai1wm_secret_key', 'm1Lu8WGoCddf', 'yes'),
(661, 'fm_key', 'Ez5a9CAIibFqlH4ZSwUuk1DKm', 'yes'),
(662, 'ai1wm_updater', 'a:0:{}', 'yes'),
(806, '_site_transient_timeout_browser_3221fdea7fc0a3d9988dbe5ff55cbf71', '1653737945', 'no'),
(807, '_site_transient_browser_3221fdea7fc0a3d9988dbe5ff55cbf71', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"101.0.4951.54\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1056, 'category_children', 'a:0:{}', 'yes'),
(1395, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/en_AU/wordpress-5.9.3.zip\";s:6:\"locale\";s:5:\"en_AU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/en_AU/wordpress-5.9.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.3\";s:7:\"version\";s:5:\"5.9.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1653367736;s:15:\"version_checked\";s:5:\"5.9.3\";s:12:\"translations\";a:0:{}}', 'no'),
(1396, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1653382261;s:8:\"response\";a:1:{s:43:\"the-events-calendar/the-events-calendar.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:33:\"w.org/plugins/the-events-calendar\";s:4:\"slug\";s:19:\"the-events-calendar\";s:6:\"plugin\";s:43:\"the-events-calendar/the-events-calendar.php\";s:11:\"new_version\";s:8:\"5.15.0.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/the-events-calendar/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/the-events-calendar.5.15.0.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/the-events-calendar/assets/icon-256x256.gif?rev=2516440\";s:2:\"1x\";s:72:\"https://ps.w.org/the-events-calendar/assets/icon-128x128.gif?rev=2516440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/the-events-calendar/assets/banner-1544x500.png?rev=2257622\";s:2:\"1x\";s:74:\"https://ps.w.org/the-events-calendar/assets/banner-772x250.png?rev=2257622\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.6\";s:6:\"tested\";s:5:\"5.9.3\";s:12:\"requires_php\";s:3:\"7.1\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.12.2\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.12.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:24:\"wpforms-lite/wpforms.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/wpforms-lite\";s:4:\"slug\";s:12:\"wpforms-lite\";s:6:\"plugin\";s:24:\"wpforms-lite/wpforms.php\";s:11:\"new_version\";s:7:\"1.7.4.2\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wpforms-lite/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wpforms-lite.1.7.4.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-256x256.png?rev=2574201\";s:2:\"1x\";s:57:\"https://ps.w.org/wpforms-lite/assets/icon.svg?rev=2574198\";s:3:\"svg\";s:57:\"https://ps.w.org/wpforms-lite/assets/icon.svg?rev=2574198\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500.png?rev=2602491\";s:2:\"1x\";s:67:\"https://ps.w.org/wpforms-lite/assets/banner-772x250.png?rev=2602491\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500-rtl.png?rev=2602491\";s:2:\"1x\";s:71:\"https://ps.w.org/wpforms-lite/assets/banner-772x250-rtl.png?rev=2602491\";}s:8:\"requires\";s:3:\"5.2\";}}s:7:\"checked\";a:5:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.12.2\";s:73:\"All-In-One-WP-Migration-With-Import-master/all-in-one-wp-migration-wi.php\";s:4:\"6.77\";s:43:\"the-events-calendar/the-events-calendar.php\";s:6:\"5.15.0\";s:24:\"wpforms-lite/wpforms.php\";s:7:\"1.7.4.2\";s:21:\"wppusher/wppusher.php\";s:6:\"3.0.13\";}}', 'no'),
(1398, 'action_scheduler_hybrid_store_demarkation', '94', 'yes'),
(1399, 'schema-ActionScheduler_StoreSchema', '6.0.1653221138', 'yes'),
(1400, 'schema-ActionScheduler_LoggerSchema', '3.0.1653221138', 'yes'),
(1401, 'wpforms_version', '1.7.4.2', 'yes'),
(1402, 'wpforms_version_lite', '1.7.4.2', 'yes'),
(1403, 'wpforms_activated', 'a:1:{s:4:\"lite\";i:1653221138;}', 'yes'),
(1408, 'action_scheduler_lock_async-request-runner', '1653331861', 'yes'),
(1409, 'widget_wpforms-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1413, 'wpforms_admin_notices', 'a:1:{s:14:\"review_request\";a:2:{s:4:\"time\";i:1653221139;s:9:\"dismissed\";b:0;}}', 'yes'),
(1414, '_transient_wpforms_htaccess_file', 'a:3:{s:4:\"size\";i:737;s:5:\"mtime\";i:1653221140;s:5:\"ctime\";i:1653221140;}', 'yes'),
(1415, 'wpforms_builder_opened_date', '1653221156', 'no'),
(1416, 'wpforms_forms_first_created', '1653221163', 'no'),
(1420, 'wpforms_email_summaries_fetch_info_blocks_last_run', '1653221261', 'yes'),
(1421, 'wpforms_process_forms_locator_status', 'completed', 'yes'),
(1424, 'wpforms_notifications', 'a:4:{s:6:\"update\";i:1653327425;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'yes'),
(1425, 'wpforms_crypto_secret_key', 'KXK400K1NRd4YnCDxmwB2e7z2Xv6LCsqVRbnsw1FzLM=', 'yes'),
(2132, 'action_scheduler_migration_status', 'complete', 'yes'),
(2141, 'ai1wm_status', 'a:2:{s:4:\"type\";s:8:\"download\";s:7:\"message\";s:234:\"<a href=\"https://boyds.sgedu.site/staging-tjc/wp-content/ai1wm-backups/boyds.sgedu.site-staging-tjc-20220522-160609-324.wpress\" class=\"ai1wm-button-green ai1wm-emphasize\"><span>Download boyds.sgedu.site</span><em>Size: 111 MB</em></a>\";}', 'yes'),
(2277, '_transient_is_multi_author', '0', 'yes'),
(2280, '_transient_understrap_categories', '1', 'yes'),
(2545, '_site_transient_timeout_theme_roots', '1653395509', 'no'),
(2546, '_site_transient_theme_roots', 'a:5:{s:13:\"team-07-theme\";s:7:\"/themes\";s:14:\"team-07-theme2\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(2548, '_transient_timeout_global_styles_team-07-theme2', '1653393844', 'no'),
(2549, '_transient_global_styles_team-07-theme2', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #fff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--color--blue: #0d6efd;--wp--preset--color--indigo: #6610f2;--wp--preset--color--purple: #5533ff;--wp--preset--color--pink: #d63384;--wp--preset--color--red: #dc3545;--wp--preset--color--orange: #fd7e14;--wp--preset--color--yellow: #ffc107;--wp--preset--color--green: #198754;--wp--preset--color--teal: #20c997;--wp--preset--color--cyan: #0dcaf0;--wp--preset--color--gray: #6c757d;--wp--preset--color--gray-dark: #343a40;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no'),
(2550, '_transient_timeout_global_styles_svg_filters_team-07-theme2', '1653393844', 'no'),
(2551, '_transient_global_styles_svg_filters_team-07-theme2', '<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-dark-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncG type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncB type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.54901960784314 0.98823529411765\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.71764705882353 0.25490196078431\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-red\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 0.27843137254902\" /><feFuncB type=\"table\" tableValues=\"0.5921568627451 0.27843137254902\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-midnight\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0\" /><feFuncG type=\"table\" tableValues=\"0 0.64705882352941\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-magenta-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.78039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.94901960784314\" /><feFuncB type=\"table\" tableValues=\"0.35294117647059 0.47058823529412\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-green\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.65098039215686 0.40392156862745\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.44705882352941 0.4\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-orange\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.098039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.66274509803922\" /><feFuncB type=\"table\" tableValues=\"0.84705882352941 0.41960784313725\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg>', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1653318353:1'),
(4, 8, '_wp_trash_meta_status', 'publish'),
(5, 8, '_wp_trash_meta_time', '1652496922'),
(8, 10, '_wp_trash_meta_status', 'publish'),
(9, 10, '_wp_trash_meta_time', '1652496962'),
(10, 11, '_edit_last', '1'),
(11, 11, '_edit_lock', '1653318208:1'),
(12, 5, '_edit_last', '1'),
(13, 5, 'spotlight_header_text', 'Welcome To<br /> Townsville Jazz Clubs'),
(14, 5, '_spotlight_header_text', 'field_627f1a697bd15'),
(15, 5, 'spotlight_paragraph_text', 'Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\r\n<br /><br />\r\n'),
(16, 5, '_spotlight_paragraph_text', 'field_627f1a8a7bd16'),
(17, 5, 'underspotlight_where', 'The Fish Inn on The Stran (near the Rockpool)'),
(18, 5, '_underspotlight_where', 'field_627f1aa67bd17'),
(19, 5, 'underspotlight_time', 'Sunday 5.00pm till 8.00pm'),
(20, 5, '_underspotlight_time', 'field_627f1ae47bd18'),
(21, 5, 'underspotlight_date', 'Check the <a href=\"events-calendar\">Events</a> page for dates'),
(22, 5, '_underspotlight_date', 'field_627f1b007bd19'),
(23, 17, 'spotlight_header_text', 'Welcome To Townsville Jazz Club'),
(24, 17, '_spotlight_header_text', 'field_627f1a697bd15'),
(25, 17, 'spotlight_paragraph_text', 'Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.'),
(26, 17, '_spotlight_paragraph_text', 'field_627f1a8a7bd16'),
(27, 17, 'underspotlight_where', 'The Fish Inn on The Stran (near the Rockpool)'),
(28, 17, '_underspotlight_where', 'field_627f1aa67bd17'),
(29, 17, 'underspotlight_time', 'Sunday 5.00pm till 8.00pm'),
(30, 17, '_underspotlight_time', 'field_627f1ae47bd18'),
(31, 17, 'underspotlight_date', 'Check the Program page for dates'),
(32, 17, '_underspotlight_date', 'field_627f1b007bd19'),
(33, 18, 'spotlight_header_text', 'Welcome To<br /> Townsville Jazz Club'),
(34, 18, '_spotlight_header_text', 'field_627f1a697bd15'),
(35, 18, 'spotlight_paragraph_text', 'Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.'),
(36, 18, '_spotlight_paragraph_text', 'field_627f1a8a7bd16'),
(37, 18, 'underspotlight_where', 'The Fish Inn on The Stran (near the Rockpool)'),
(38, 18, '_underspotlight_where', 'field_627f1aa67bd17'),
(39, 18, 'underspotlight_time', 'Sunday 5.00pm till 8.00pm'),
(40, 18, '_underspotlight_time', 'field_627f1ae47bd18'),
(41, 18, 'underspotlight_date', 'Check the Program page for dates'),
(42, 18, '_underspotlight_date', 'field_627f1b007bd19'),
(43, 19, 'spotlight_header_text', 'Welcome To<br /> Townsville Jazz Club'),
(44, 19, '_spotlight_header_text', 'field_627f1a697bd15'),
(45, 19, 'spotlight_paragraph_text', 'Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\r\n\r\n'),
(46, 19, '_spotlight_paragraph_text', 'field_627f1a8a7bd16'),
(47, 19, 'underspotlight_where', 'The Fish Inn on The Stran (near the Rockpool)'),
(48, 19, '_underspotlight_where', 'field_627f1aa67bd17'),
(49, 19, 'underspotlight_time', 'Sunday 5.00pm till 8.00pm'),
(50, 19, '_underspotlight_time', 'field_627f1ae47bd18'),
(51, 19, 'underspotlight_date', 'Check the Program page for dates'),
(52, 19, '_underspotlight_date', 'field_627f1b007bd19'),
(53, 20, 'spotlight_header_text', 'Welcome To<br /> Townsville Jazz Club'),
(54, 20, '_spotlight_header_text', 'field_627f1a697bd15'),
(55, 20, 'spotlight_paragraph_text', 'Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\r\n<br /><br />\r\n'),
(56, 20, '_spotlight_paragraph_text', 'field_627f1a8a7bd16'),
(57, 20, 'underspotlight_where', 'The Fish Inn on The Stran (near the Rockpool)'),
(58, 20, '_underspotlight_where', 'field_627f1aa67bd17'),
(59, 20, 'underspotlight_time', 'Sunday 5.00pm till 8.00pm'),
(60, 20, '_underspotlight_time', 'field_627f1ae47bd18'),
(61, 20, 'underspotlight_date', 'Check the Program page for dates'),
(62, 20, '_underspotlight_date', 'field_627f1b007bd19'),
(66, 3, '_wp_trash_meta_status', 'draft'),
(67, 3, '_wp_trash_meta_time', '1652502683'),
(68, 3, '_wp_desired_post_slug', 'privacy-policy'),
(69, 23, '_edit_lock', '1653234517:1'),
(70, 25, '_edit_lock', '1653232209:1'),
(71, 27, '_edit_lock', '1653297520:1'),
(72, 29, '_edit_lock', '1653234732:1'),
(73, 1, '_edit_lock', '1653238321:1'),
(77, 32, '_menu_item_type', 'post_type'),
(78, 32, '_menu_item_menu_item_parent', '0'),
(79, 32, '_menu_item_object_id', '5'),
(80, 32, '_menu_item_object', 'page'),
(81, 32, '_menu_item_target', ''),
(82, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(83, 32, '_menu_item_xfn', ''),
(84, 32, '_menu_item_url', ''),
(86, 33, '_menu_item_type', 'post_type'),
(87, 33, '_menu_item_menu_item_parent', '0'),
(88, 33, '_menu_item_object_id', '25'),
(89, 33, '_menu_item_object', 'page'),
(90, 33, '_menu_item_target', ''),
(91, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(92, 33, '_menu_item_xfn', ''),
(93, 33, '_menu_item_url', ''),
(95, 34, '_menu_item_type', 'post_type'),
(96, 34, '_menu_item_menu_item_parent', '0'),
(97, 34, '_menu_item_object_id', '29'),
(98, 34, '_menu_item_object', 'page'),
(99, 34, '_menu_item_target', ''),
(100, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(101, 34, '_menu_item_xfn', ''),
(102, 34, '_menu_item_url', ''),
(104, 35, '_menu_item_type', 'post_type'),
(105, 35, '_menu_item_menu_item_parent', '0'),
(106, 35, '_menu_item_object_id', '23'),
(107, 35, '_menu_item_object', 'page'),
(108, 35, '_menu_item_target', ''),
(109, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(110, 35, '_menu_item_xfn', ''),
(111, 35, '_menu_item_url', ''),
(113, 36, '_menu_item_type', 'post_type'),
(114, 36, '_menu_item_menu_item_parent', '0'),
(115, 36, '_menu_item_object_id', '27'),
(116, 36, '_menu_item_object', 'page'),
(117, 36, '_menu_item_target', ''),
(118, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(119, 36, '_menu_item_xfn', ''),
(120, 36, '_menu_item_url', ''),
(122, 37, '_wp_trash_meta_status', 'publish'),
(123, 37, '_wp_trash_meta_time', '1653041285'),
(126, 39, '_EventOrigin', 'events-calendar'),
(127, 39, '_tribe_modified_fields', 'a:19:{s:12:\"_EventOrigin\";i:1653043505;s:10:\"_edit_last\";i:1653045915;s:10:\"post_title\";i:1653045915;s:11:\"post_status\";i:1653083324;s:17:\"_EventShowMapLink\";i:1653083324;s:13:\"_EventShowMap\";i:1653083324;s:13:\"_EventVenueID\";i:1653083324;s:15:\"_EventStartDate\";i:1653083324;s:13:\"_EventEndDate\";i:1653083324;s:18:\"_EventStartDateUTC\";i:1653083324;s:16:\"_EventEndDateUTC\";i:1653083324;s:14:\"_EventDuration\";i:1653083324;s:20:\"_EventCurrencySymbol\";i:1653083324;s:18:\"_EventCurrencyCode\";i:1653083324;s:22:\"_EventCurrencyPosition\";i:1653083324;s:10:\"_EventCost\";i:1653083324;s:9:\"_EventURL\";i:1653083324;s:14:\"_EventTimezone\";i:1653083324;s:18:\"_EventTimezoneAbbr\";i:1653083324;}'),
(128, 39, '_edit_last', '1'),
(129, 39, '_edit_lock', '1653069333:1'),
(130, 40, '_edit_lock', '1653050291:1'),
(131, 41, '_EventShowMapLink', '1'),
(132, 41, '_EventShowMap', '1'),
(133, 41, '_EventStartDate', '2022-05-20 17:00:00'),
(134, 41, '_EventEndDate', '2022-05-20 20:00:00'),
(135, 41, '_EventStartDateUTC', '2022-05-20 17:00:00'),
(136, 41, '_EventEndDateUTC', '2022-05-20 20:00:00'),
(137, 41, '_EventDuration', '10800'),
(138, 41, '_EventCurrencySymbol', '$'),
(139, 41, '_EventCurrencyCode', ''),
(140, 41, '_EventCurrencyPosition', 'prefix'),
(141, 41, '_EventCost', '20'),
(142, 41, '_EventURL', ''),
(143, 41, '_EventTimezone', 'UTC+0'),
(144, 41, '_EventTimezoneAbbr', 'UTC+0'),
(145, 39, '_EventShowMapLink', '1'),
(146, 39, '_EventShowMap', '1'),
(147, 42, '_VenueOrigin', 'events-calendar'),
(148, 42, '_tribe_modified_fields', 'a:17:{s:12:\"_VenueOrigin\";i:1653083324;s:17:\"_EventShowMapLink\";i:1653083324;s:13:\"_EventShowMap\";i:1653083324;s:17:\"_VenueShowMapLink\";i:1653083324;s:13:\"_VenueShowMap\";i:1653083324;s:13:\"_VenueAddress\";i:1653083324;s:10:\"_VenueCity\";i:1653113915;s:13:\"_VenueCountry\";i:1653083324;s:14:\"_VenueProvince\";i:1653083324;s:11:\"_VenueState\";i:1653083324;s:9:\"_VenueZip\";i:1653083324;s:11:\"_VenuePhone\";i:1653083324;s:9:\"_VenueURL\";i:1653083324;s:18:\"_VenueEventShowMap\";i:1653083324;s:22:\"_VenueEventShowMapLink\";i:1653083324;s:19:\"_VenueStateProvince\";i:1653083324;s:10:\"_edit_last\";i:1653113915;}'),
(149, 42, '_EventShowMapLink', '1'),
(150, 42, '_EventShowMap', '1'),
(151, 42, '_VenueShowMapLink', '1'),
(152, 42, '_VenueShowMap', '1'),
(153, 42, '_VenueAddress', '334 Flinders St'),
(154, 42, '_VenueCity', 'Townsville'),
(155, 42, '_VenueCountry', 'Australia'),
(156, 42, '_VenueProvince', 'QLD'),
(157, 42, '_VenueState', ''),
(158, 42, '_VenueZip', '4810'),
(159, 42, '_VenuePhone', '+61431 618 618'),
(160, 42, '_VenueURL', ''),
(161, 42, '_VenueEventShowMap', '1'),
(162, 42, '_VenueEventShowMapLink', '1'),
(163, 42, '_VenueStateProvince', 'QLD'),
(164, 39, '_EventVenueID', '42'),
(165, 39, '_EventStartDate', '2022-05-20 17:00:00'),
(166, 39, '_EventEndDate', '2022-05-20 20:00:00'),
(167, 39, '_EventStartDateUTC', '2022-05-20 17:00:00'),
(168, 39, '_EventEndDateUTC', '2022-05-20 20:00:00'),
(169, 39, '_EventDuration', '10800'),
(170, 39, '_EventCurrencySymbol', '$'),
(171, 39, '_EventCurrencyCode', ''),
(172, 39, '_EventCurrencyPosition', 'prefix'),
(173, 39, '_EventCost', '20'),
(174, 39, '_EventURL', ''),
(175, 39, '_EventTimezone', 'UTC+0'),
(176, 39, '_EventTimezoneAbbr', 'UTC+0'),
(177, 23, '_edit_last', '1'),
(182, 42, '_edit_lock', '1653077778:1'),
(185, 5, '_wp_page_template', 'page-templates/home-page.php'),
(186, 32, '_wp_old_date', '2022-05-17'),
(187, 33, '_wp_old_date', '2022-05-17'),
(188, 34, '_wp_old_date', '2022-05-17'),
(189, 35, '_wp_old_date', '2022-05-17'),
(190, 36, '_wp_old_date', '2022-05-17'),
(191, 49, '_wp_attached_file', '2022/05/the-crowd-at-fish-inn.jpg'),
(192, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:600;s:4:\"file\";s:33:\"2022/05/the-crowd-at-fish-inn.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"the-crowd-at-fish-inn-300x113.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"the-crowd-at-fish-inn-1024x384.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"the-crowd-at-fish-inn-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"the-crowd-at-fish-inn-768x288.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:34:\"the-crowd-at-fish-inn-1536x576.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(195, 51, '_wp_attached_file', '2022/05/logo.png'),
(196, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:144;s:6:\"height\";i:144;s:4:\"file\";s:16:\"2022/05/logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(197, 52, '_wp_attached_file', '2022/05/Anthony-and-the-Gentlemen-of-Jazz-.jpg'),
(198, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:46:\"2022/05/Anthony-and-the-Gentlemen-of-Jazz-.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"Anthony-and-the-Gentlemen-of-Jazz--300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"Anthony-and-the-Gentlemen-of-Jazz--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"Anthony-and-the-Gentlemen-of-Jazz--768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(199, 49, '_wp_attachment_image_alt', 'the-crowd-at-fish-inn'),
(200, 5, 'homepage_banner', '49'),
(201, 5, '_homepage_banner', 'field_6287c6c12086d'),
(202, 5, 'map', '<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"400\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(203, 5, '_map', 'field_6287b64b5f899'),
(204, 56, 'spotlight_header_text', 'Welcome To<br /> Townsville Jazz Club'),
(205, 56, '_spotlight_header_text', 'field_627f1a697bd15'),
(206, 56, 'spotlight_paragraph_text', 'Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\r\n<br /><br />\r\n'),
(207, 56, '_spotlight_paragraph_text', 'field_627f1a8a7bd16'),
(208, 56, 'underspotlight_where', 'The Fish Inn on The Stran (near the Rockpool)'),
(209, 56, '_underspotlight_where', 'field_627f1aa67bd17'),
(210, 56, 'underspotlight_time', 'Sunday 5.00pm till 8.00pm'),
(211, 56, '_underspotlight_time', 'field_627f1ae47bd18'),
(212, 56, 'underspotlight_date', 'Check the Program page for dates'),
(213, 56, '_underspotlight_date', 'field_627f1b007bd19'),
(214, 56, 'homepage_banner', '49'),
(215, 56, '_homepage_banner', 'field_6287c6c12086d'),
(216, 56, 'map', '<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"400\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(217, 56, '_map', 'field_6287b64b5f899'),
(218, 58, '_wp_attached_file', '2022/05/band-1.jpg'),
(219, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:100;s:4:\"file\";s:18:\"2022/05/band-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(220, 59, '_wp_attached_file', '2022/05/band-2.jpg'),
(221, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:100;s:4:\"file\";s:18:\"2022/05/band-2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(222, 60, '_wp_attached_file', '2022/05/band-3.jpg'),
(223, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:100;s:4:\"file\";s:18:\"2022/05/band-3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(224, 61, '_wp_attached_file', '2022/05/Juhl-Atkinson-1.jpg'),
(225, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:27:\"2022/05/Juhl-Atkinson-1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Juhl-Atkinson-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Juhl-Atkinson-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"Juhl-Atkinson-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(226, 52, '_wp_attachment_image_alt', 'Anthony-and-the-Gentlemen-of-Jazz-'),
(227, 60, '_wp_attachment_image_alt', 'band-3'),
(228, 59, '_wp_attachment_image_alt', 'band-2'),
(229, 58, '_wp_attachment_image_alt', 'band-1'),
(230, 51, '_wp_attachment_image_alt', 'Logo'),
(231, 62, 'spotlight_header_text', 'Welcome To<br /> Townsville Jazz Club'),
(232, 62, '_spotlight_header_text', 'field_627f1a697bd15'),
(233, 62, 'spotlight_paragraph_text', 'Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\r\n<br /><br />\r\n'),
(234, 62, '_spotlight_paragraph_text', 'field_627f1a8a7bd16'),
(235, 62, 'underspotlight_where', 'The Fish Inn on The Stran (near the Rockpool)'),
(236, 62, '_underspotlight_where', 'field_627f1aa67bd17'),
(237, 62, 'underspotlight_time', 'Sunday 5.00pm till 8.00pm'),
(238, 62, '_underspotlight_time', 'field_627f1ae47bd18'),
(239, 62, 'underspotlight_date', 'Check the Program page for dates'),
(240, 62, '_underspotlight_date', 'field_627f1b007bd19'),
(241, 62, 'homepage_banner', '49'),
(242, 62, '_homepage_banner', 'field_6287c6c12086d'),
(243, 62, 'map', '<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"400\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(244, 62, '_map', 'field_6287b64b5f899'),
(245, 64, 'spotlight_header_text', 'Welcome To<br /> Townsville Jazz Club'),
(246, 64, '_spotlight_header_text', 'field_627f1a697bd15'),
(247, 64, 'spotlight_paragraph_text', 'Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\r\n<br /><br />\r\n'),
(248, 64, '_spotlight_paragraph_text', 'field_627f1a8a7bd16'),
(249, 64, 'underspotlight_where', 'The Fish Inn on The Stran (near the Rockpool)'),
(250, 64, '_underspotlight_where', 'field_627f1aa67bd17'),
(251, 64, 'underspotlight_time', 'Sunday 5.00pm till 8.00pm'),
(252, 64, '_underspotlight_time', 'field_627f1ae47bd18'),
(253, 64, 'underspotlight_date', 'Check the Program page for dates'),
(254, 64, '_underspotlight_date', 'field_627f1b007bd19'),
(255, 64, 'homepage_banner', '49'),
(256, 64, '_homepage_banner', 'field_6287c6c12086d'),
(257, 64, 'map', '<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"400\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(258, 64, '_map', 'field_6287b64b5f899'),
(259, 40, '_customize_restore_dismissed', '1'),
(260, 65, '_wp_trash_meta_status', 'publish'),
(261, 65, '_wp_trash_meta_time', '1653076523'),
(262, 66, '_menu_item_type', 'post_type_archive'),
(263, 66, '_menu_item_menu_item_parent', '0'),
(264, 66, '_menu_item_object_id', '-12'),
(265, 66, '_menu_item_object', 'tribe_events'),
(266, 66, '_menu_item_target', ''),
(267, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(268, 66, '_menu_item_xfn', ''),
(269, 66, '_menu_item_url', ''),
(271, 67, '_EventOrigin', 'events-calendar'),
(272, 67, '_tribe_modified_fields', 'a:19:{s:12:\"_EventOrigin\";i:1653113851;s:10:\"_edit_last\";i:1653113865;s:10:\"post_title\";i:1653113865;s:11:\"post_status\";i:1653113945;s:17:\"_EventShowMapLink\";i:1653113945;s:13:\"_EventShowMap\";i:1653113945;s:13:\"_EventVenueID\";i:1653113945;s:15:\"_EventStartDate\";i:1653113945;s:13:\"_EventEndDate\";i:1653113945;s:18:\"_EventStartDateUTC\";i:1653113945;s:16:\"_EventEndDateUTC\";i:1653113945;s:14:\"_EventDuration\";i:1653113945;s:20:\"_EventCurrencySymbol\";i:1653113945;s:18:\"_EventCurrencyCode\";i:1653113945;s:22:\"_EventCurrencyPosition\";i:1653113945;s:10:\"_EventCost\";i:1653113945;s:9:\"_EventURL\";i:1653113945;s:14:\"_EventTimezone\";i:1653113945;s:18:\"_EventTimezoneAbbr\";i:1653113945;}'),
(273, 67, '_edit_last', '1'),
(274, 67, '_edit_lock', '1653078176:1'),
(275, 42, '_edit_last', '1'),
(276, 69, '_EventShowMapLink', '1'),
(277, 69, '_EventShowMap', '1'),
(278, 69, '_EventStartDate', '2022-05-29 17:00:00'),
(279, 69, '_EventEndDate', '2022-05-29 20:00:00'),
(280, 69, '_EventStartDateUTC', '2022-05-29 07:00:00'),
(281, 69, '_EventEndDateUTC', '2022-05-29 10:00:00'),
(282, 69, '_EventDuration', '10800'),
(283, 69, '_EventCurrencySymbol', '$'),
(284, 69, '_EventCurrencyCode', 'AUD'),
(285, 69, '_EventCurrencyPosition', 'prefix'),
(286, 69, '_EventCost', '20'),
(287, 69, '_EventURL', ''),
(288, 69, '_EventTimezone', 'Australia/Sydney'),
(289, 69, '_EventTimezoneAbbr', 'AEST'),
(290, 67, '_EventShowMapLink', '1'),
(291, 67, '_EventShowMap', '1'),
(292, 67, '_EventVenueID', '42'),
(293, 67, '_EventStartDate', '2022-05-29 17:00:00'),
(294, 67, '_EventEndDate', '2022-05-29 20:00:00'),
(295, 67, '_EventStartDateUTC', '2022-05-29 07:00:00'),
(296, 67, '_EventEndDateUTC', '2022-05-29 10:00:00'),
(297, 67, '_EventDuration', '10800'),
(298, 67, '_EventCurrencySymbol', '$'),
(299, 67, '_EventCurrencyCode', 'AUD'),
(300, 67, '_EventCurrencyPosition', 'prefix'),
(301, 67, '_EventCost', '20'),
(302, 67, '_EventURL', ''),
(303, 67, '_EventTimezone', 'Australia/Sydney'),
(304, 67, '_EventTimezoneAbbr', 'AEST'),
(305, 70, '_EventOrigin', 'events-calendar'),
(306, 70, '_tribe_modified_fields', 'a:20:{s:12:\"_EventOrigin\";i:1653114323;s:10:\"_edit_last\";i:1653114335;s:10:\"post_title\";i:1653114335;s:11:\"post_status\";i:1653114385;s:17:\"_EventShowMapLink\";i:1653114385;s:13:\"_EventShowMap\";i:1653114385;s:13:\"_EventVenueID\";i:1653114385;s:17:\"_EventOrganizerID\";i:1653114385;s:15:\"_EventStartDate\";i:1653114385;s:13:\"_EventEndDate\";i:1653114385;s:18:\"_EventStartDateUTC\";i:1653114385;s:16:\"_EventEndDateUTC\";i:1653114385;s:14:\"_EventDuration\";i:1653114385;s:20:\"_EventCurrencySymbol\";i:1653114385;s:18:\"_EventCurrencyCode\";i:1653114385;s:22:\"_EventCurrencyPosition\";i:1653114385;s:10:\"_EventCost\";i:1653114385;s:9:\"_EventURL\";i:1653114385;s:14:\"_EventTimezone\";i:1653114385;s:18:\"_EventTimezoneAbbr\";i:1653114385;}'),
(307, 70, '_edit_last', '1'),
(308, 70, '_edit_lock', '1653121918:1'),
(309, 71, '_EventShowMapLink', '1'),
(310, 71, '_EventShowMap', '1'),
(311, 71, '_EventStartDate', '2022-05-29 18:00:00'),
(312, 71, '_EventEndDate', '2022-05-29 21:00:00'),
(313, 71, '_EventStartDateUTC', '2022-05-29 08:00:00'),
(314, 71, '_EventEndDateUTC', '2022-05-29 11:00:00'),
(315, 71, '_EventDuration', '10800'),
(316, 71, '_EventCurrencySymbol', '$'),
(317, 71, '_EventCurrencyCode', 'AUD'),
(318, 71, '_EventCurrencyPosition', 'prefix'),
(319, 71, '_EventCost', '20'),
(320, 71, '_EventURL', ''),
(321, 71, '_EventTimezone', 'Australia/Sydney'),
(322, 71, '_EventTimezoneAbbr', 'AEST'),
(323, 70, '_EventShowMapLink', '1'),
(324, 70, '_EventShowMap', '1'),
(325, 70, '_EventVenueID', '42'),
(326, 72, '_OrganizerOrigin', 'events-calendar'),
(327, 72, '_tribe_modified_fields', 'a:5:{s:16:\"_OrganizerOrigin\";i:1653114385;s:21:\"_OrganizerOrganizerID\";i:1653114385;s:15:\"_OrganizerPhone\";i:1653114385;s:17:\"_OrganizerWebsite\";i:1653114385;s:15:\"_OrganizerEmail\";i:1653114385;}'),
(328, 72, '_OrganizerOrganizerID', '0'),
(329, 72, '_OrganizerPhone', ''),
(330, 72, '_OrganizerWebsite', ''),
(331, 72, '_OrganizerEmail', ''),
(332, 70, '_EventOrganizerID', '72'),
(333, 70, '_EventStartDate', '2022-05-29 18:00:00'),
(334, 70, '_EventEndDate', '2022-05-29 21:00:00'),
(335, 70, '_EventStartDateUTC', '2022-05-29 08:00:00'),
(336, 70, '_EventEndDateUTC', '2022-05-29 11:00:00'),
(337, 70, '_EventDuration', '10800'),
(338, 70, '_EventCurrencySymbol', '$'),
(339, 70, '_EventCurrencyCode', 'AUD'),
(340, 70, '_EventCurrencyPosition', 'prefix'),
(341, 70, '_EventCost', '20'),
(342, 70, '_EventURL', ''),
(343, 70, '_EventTimezone', 'Australia/Sydney'),
(344, 70, '_EventTimezoneAbbr', 'AEST'),
(345, 76, 'spotlight_header_text', 'Welcome To<br /> Townsville Jazz Club'),
(346, 76, '_spotlight_header_text', 'field_627f1a697bd15'),
(347, 76, 'spotlight_paragraph_text', 'Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\r\n<br /><br />\r\n'),
(348, 76, '_spotlight_paragraph_text', 'field_627f1a8a7bd16'),
(349, 76, 'underspotlight_where', 'The Fish Inn on The Stran (near the Rockpool)'),
(350, 76, '_underspotlight_where', 'field_627f1aa67bd17'),
(351, 76, 'underspotlight_time', 'Sunday 5.00pm till 8.00pm'),
(352, 76, '_underspotlight_time', 'field_627f1ae47bd18'),
(353, 76, 'underspotlight_date', 'Check the Events page for dates'),
(354, 76, '_underspotlight_date', 'field_627f1b007bd19'),
(355, 76, 'homepage_banner', '49'),
(356, 76, '_homepage_banner', 'field_6287c6c12086d'),
(357, 76, 'map', '<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"400\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(358, 76, '_map', 'field_6287b64b5f899'),
(359, 78, 'spotlight_header_text', 'Welcome To<br /> Townsville Jazz Club'),
(360, 78, '_spotlight_header_text', 'field_627f1a697bd15'),
(361, 78, 'spotlight_paragraph_text', 'Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\r\n<br /><br />\r\n'),
(362, 78, '_spotlight_paragraph_text', 'field_627f1a8a7bd16'),
(363, 78, 'underspotlight_where', 'The Fish Inn on The Stran (near the Rockpool)'),
(364, 78, '_underspotlight_where', 'field_627f1aa67bd17'),
(365, 78, 'underspotlight_time', 'Sunday 5.00pm till 8.00pm'),
(366, 78, '_underspotlight_time', 'field_627f1ae47bd18'),
(367, 78, 'underspotlight_date', 'Check the Evetns page for dates'),
(368, 78, '_underspotlight_date', 'field_627f1b007bd19'),
(369, 78, 'homepage_banner', '49'),
(370, 78, '_homepage_banner', 'field_6287c6c12086d'),
(371, 78, 'map', '<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"400\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(372, 78, '_map', 'field_6287b64b5f899'),
(373, 79, '_edit_lock', '1653122005:1'),
(374, 80, '_wp_attached_file', '2022/05/wpa296f048_05_06.jpg'),
(375, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:610;s:6:\"height\";i:307;s:4:\"file\";s:28:\"2022/05/wpa296f048_05_06.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"wpa296f048_05_06-300x151.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:151;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"wpa296f048_05_06-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(376, 80, '_wp_attachment_image_alt', 'The new Pacific Mainstream Jazz Band 2014'),
(377, 79, '_thumbnail_id', '80'),
(378, 81, '_edit_lock', '1653141740:1'),
(379, 81, '_customize_restore_dismissed', '1'),
(383, 86, '_wp_attached_file', '2022/05/our-location-scaled.jpg'),
(384, 86, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1227;s:4:\"file\";s:31:\"2022/05/our-location-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"our-location-300x144.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"our-location-1024x491.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:491;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"our-location-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"our-location-768x368.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:368;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:25:\"our-location-1536x736.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:736;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:25:\"our-location-2048x982.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:982;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"our-location.jpg\";}'),
(385, 87, '_wp_attached_file', '2022/05/our-location-1-scaled.jpg'),
(386, 87, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1227;s:4:\"file\";s:33:\"2022/05/our-location-1-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"our-location-1-300x144.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"our-location-1-1024x491.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:491;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"our-location-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"our-location-1-768x368.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:368;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:27:\"our-location-1-1536x736.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:736;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:27:\"our-location-1-2048x982.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:982;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:18:\"our-location-1.jpg\";}'),
(387, 94, 'wpforms_form_locations', 'a:3:{i:0;a:6:{s:4:\"type\";s:4:\"page\";s:5:\"title\";s:7:\"Contact\";s:7:\"form_id\";i:94;s:2:\"id\";i:29;s:6:\"status\";s:7:\"publish\";s:3:\"url\";s:9:\"/contact/\";}i:1;a:4:{s:4:\"type\";s:6:\"widget\";s:5:\"title\";s:12:\"Block Widget\";s:7:\"form_id\";i:94;s:2:\"id\";s:8:\"block-11\";}i:2;a:4:{s:4:\"type\";s:6:\"widget\";s:5:\"title\";s:12:\"Block Widget\";s:7:\"form_id\";i:94;s:2:\"id\";s:8:\"block-12\";}}'),
(388, 111, '_edit_lock', '1653225682:1'),
(389, 112, '_wp_attached_file', '2022/05/membership.jpg'),
(390, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:917;s:6:\"height\";i:323;s:4:\"file\";s:22:\"2022/05/membership.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"membership-300x106.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:106;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"membership-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"membership-768x271.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:271;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(391, 113, '_menu_item_type', 'post_type'),
(392, 113, '_menu_item_menu_item_parent', '33'),
(393, 113, '_menu_item_object_id', '111'),
(394, 113, '_menu_item_object', 'page'),
(395, 113, '_menu_item_target', ''),
(396, 113, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(397, 113, '_menu_item_xfn', ''),
(398, 113, '_menu_item_url', ''),
(399, 117, '_wp_attached_file', '2022/05/Rock_pool_in_the_strand_Townsville_Queensland.jpg'),
(400, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:454;s:4:\"file\";s:57:\"2022/05/Rock_pool_in_the_strand_Townsville_Queensland.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:57:\"Rock_pool_in_the_strand_Townsville_Queensland-300x114.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:114;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:58:\"Rock_pool_in_the_strand_Townsville_Queensland-1024x387.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:387;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:57:\"Rock_pool_in_the_strand_Townsville_Queensland-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:57:\"Rock_pool_in_the_strand_Townsville_Queensland-768x291.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(401, 118, 'wpforms_form_locations', 'a:1:{i:0;a:6:{s:4:\"type\";s:4:\"page\";s:5:\"title\";s:10:\"Membership\";s:7:\"form_id\";i:118;s:2:\"id\";i:111;s:6:\"status\";s:7:\"publish\";s:3:\"url\";s:12:\"/membership/\";}}'),
(402, 32, '_wp_old_date', '2022-05-21'),
(403, 66, '_wp_old_date', '2022-05-21'),
(404, 33, '_wp_old_date', '2022-05-21'),
(405, 36, '_wp_old_date', '2022-05-21'),
(406, 35, '_wp_old_date', '2022-05-21'),
(407, 34, '_wp_old_date', '2022-05-21'),
(408, 134, 'spotlight_header_text', 'Welcome To<br /> Townsville Jazz Clubs'),
(409, 134, '_spotlight_header_text', 'field_627f1a697bd15'),
(410, 134, 'spotlight_paragraph_text', 'Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\r\n<br /><br />\r\n'),
(411, 134, '_spotlight_paragraph_text', 'field_627f1a8a7bd16'),
(412, 134, 'underspotlight_where', 'The Fish Inn on The Stran (near the Rockpool)'),
(413, 134, '_underspotlight_where', 'field_627f1aa67bd17'),
(414, 134, 'underspotlight_time', 'Sunday 5.00pm till 8.00pm'),
(415, 134, '_underspotlight_time', 'field_627f1ae47bd18'),
(416, 134, 'underspotlight_date', 'Check the Evetns page for dates'),
(417, 134, '_underspotlight_date', 'field_627f1b007bd19'),
(418, 134, 'homepage_banner', '49'),
(419, 134, '_homepage_banner', 'field_6287c6c12086d'),
(420, 134, 'map', '<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"400\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(421, 134, '_map', 'field_6287b64b5f899'),
(422, 5, 'homepage_banner_heading', 'Welcome To <br>Townsville Jazz Club'),
(423, 5, '_homepage_banner_heading', 'field_627f1a697bd15'),
(424, 5, 'homepage_banner_paragraph', 'Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.'),
(425, 5, '_homepage_banner_paragraph', 'field_627f1a8a7bd16'),
(426, 5, 'homepage_banner_button_text', 'Learn about Memberships'),
(427, 5, '_homepage_banner_button_text', 'field_628a3b081c590'),
(428, 5, 'homepage_banner_button_text_url', 'https://boyds.sgedu.site/staging-tjc/membership'),
(429, 5, '_homepage_banner_button_text_url', 'field_628a3c2ee7f9a'),
(430, 137, 'spotlight_header_text', 'Welcome To<br /> Townsville Jazz Clubs'),
(431, 137, '_spotlight_header_text', 'field_627f1a697bd15'),
(432, 137, 'spotlight_paragraph_text', 'Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\r\n<br /><br />\r\n'),
(433, 137, '_spotlight_paragraph_text', 'field_627f1a8a7bd16'),
(434, 137, 'underspotlight_where', 'The Fish Inn on The Stran (near the Rockpool)'),
(435, 137, '_underspotlight_where', 'field_627f1aa67bd17'),
(436, 137, 'underspotlight_time', 'Sunday 5.00pm till 8.00pm'),
(437, 137, '_underspotlight_time', 'field_627f1ae47bd18'),
(438, 137, 'underspotlight_date', 'Check the Evetns page for dates'),
(439, 137, '_underspotlight_date', 'field_627f1b007bd19'),
(440, 137, 'homepage_banner', '49'),
(441, 137, '_homepage_banner', 'field_6287c6c12086d'),
(442, 137, 'map', '<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"400\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(443, 137, '_map', 'field_6287b64b5f899'),
(444, 137, 'homepage_banner_heading', 'Welcome To Townsville Jazz Clubs'),
(445, 137, '_homepage_banner_heading', 'field_627f1a697bd15'),
(446, 137, 'homepage_banner_paragraph', 'Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.'),
(447, 137, '_homepage_banner_paragraph', 'field_627f1a8a7bd16'),
(448, 137, 'homepage_banner_button_text', ''),
(449, 137, '_homepage_banner_button_text', 'field_628a3b081c590'),
(450, 137, 'homepage_banner_button_text_url', ''),
(451, 137, '_homepage_banner_button_text_url', 'field_628a3c2ee7f9a'),
(452, 138, 'spotlight_header_text', 'Welcome To<br /> Townsville Jazz Clubs'),
(453, 138, '_spotlight_header_text', 'field_627f1a697bd15'),
(454, 138, 'spotlight_paragraph_text', 'Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\r\n<br /><br />\r\n'),
(455, 138, '_spotlight_paragraph_text', 'field_627f1a8a7bd16'),
(456, 138, 'underspotlight_where', 'The Fish Inn on The Stran (near the Rockpool)'),
(457, 138, '_underspotlight_where', 'field_627f1aa67bd17'),
(458, 138, 'underspotlight_time', 'Sunday 5.00pm till 8.00pm'),
(459, 138, '_underspotlight_time', 'field_627f1ae47bd18'),
(460, 138, 'underspotlight_date', 'Check the Evetns page for dates'),
(461, 138, '_underspotlight_date', 'field_627f1b007bd19'),
(462, 138, 'homepage_banner', '49'),
(463, 138, '_homepage_banner', 'field_6287c6c12086d'),
(464, 138, 'map', '<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"400\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(465, 138, '_map', 'field_6287b64b5f899'),
(466, 138, 'homepage_banner_heading', 'Welcome To <br>Townsville Jazz Club'),
(467, 138, '_homepage_banner_heading', 'field_627f1a697bd15'),
(468, 138, 'homepage_banner_paragraph', 'Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.'),
(469, 138, '_homepage_banner_paragraph', 'field_627f1a8a7bd16'),
(470, 138, 'homepage_banner_button_text', ''),
(471, 138, '_homepage_banner_button_text', 'field_628a3b081c590'),
(472, 138, 'homepage_banner_button_text_url', ''),
(473, 138, '_homepage_banner_button_text_url', 'field_628a3c2ee7f9a'),
(474, 139, 'spotlight_header_text', 'Welcome To<br /> Townsville Jazz Clubs'),
(475, 139, '_spotlight_header_text', 'field_627f1a697bd15'),
(476, 139, 'spotlight_paragraph_text', 'Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\r\n<br /><br />\r\n'),
(477, 139, '_spotlight_paragraph_text', 'field_627f1a8a7bd16'),
(478, 139, 'underspotlight_where', 'The Fish Inn on The Stran (near the Rockpool)'),
(479, 139, '_underspotlight_where', 'field_627f1aa67bd17'),
(480, 139, 'underspotlight_time', 'Sunday 5.00pm till 8.00pm'),
(481, 139, '_underspotlight_time', 'field_627f1ae47bd18'),
(482, 139, 'underspotlight_date', 'Check the Evetns page for dates'),
(483, 139, '_underspotlight_date', 'field_627f1b007bd19'),
(484, 139, 'homepage_banner', '49'),
(485, 139, '_homepage_banner', 'field_6287c6c12086d'),
(486, 139, 'map', '<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"400\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(487, 139, '_map', 'field_6287b64b5f899'),
(488, 139, 'homepage_banner_heading', 'Welcome To <br>Townsville Jazz Club'),
(489, 139, '_homepage_banner_heading', 'field_627f1a697bd15'),
(490, 139, 'homepage_banner_paragraph', 'Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.'),
(491, 139, '_homepage_banner_paragraph', 'field_627f1a8a7bd16'),
(492, 139, 'homepage_banner_button_text', 'Learn about Memberships'),
(493, 139, '_homepage_banner_button_text', 'field_628a3b081c590'),
(494, 139, 'homepage_banner_button_text_url', ''),
(495, 139, '_homepage_banner_button_text_url', 'field_628a3c2ee7f9a'),
(496, 140, 'spotlight_header_text', 'Welcome To<br /> Townsville Jazz Clubs'),
(497, 140, '_spotlight_header_text', 'field_627f1a697bd15'),
(498, 140, 'spotlight_paragraph_text', 'Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\r\n<br /><br />\r\n'),
(499, 140, '_spotlight_paragraph_text', 'field_627f1a8a7bd16'),
(500, 140, 'underspotlight_where', 'The Fish Inn on The Stran (near the Rockpool)'),
(501, 140, '_underspotlight_where', 'field_627f1aa67bd17'),
(502, 140, 'underspotlight_time', 'Sunday 5.00pm till 8.00pm'),
(503, 140, '_underspotlight_time', 'field_627f1ae47bd18'),
(504, 140, 'underspotlight_date', 'Check the Evetns page for dates'),
(505, 140, '_underspotlight_date', 'field_627f1b007bd19'),
(506, 140, 'homepage_banner', '49'),
(507, 140, '_homepage_banner', 'field_6287c6c12086d'),
(508, 140, 'map', '<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"400\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(509, 140, '_map', 'field_6287b64b5f899'),
(510, 140, 'homepage_banner_heading', 'Welcome To <br>Townsville Jazz Club'),
(511, 140, '_homepage_banner_heading', 'field_627f1a697bd15'),
(512, 140, 'homepage_banner_paragraph', 'Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.'),
(513, 140, '_homepage_banner_paragraph', 'field_627f1a8a7bd16'),
(514, 140, 'homepage_banner_button_text', 'Learn about Memberships'),
(515, 140, '_homepage_banner_button_text', 'field_628a3b081c590'),
(516, 140, 'homepage_banner_button_text_url', 'https://boyds.sgedu.site/staging-tjc/membership'),
(517, 140, '_homepage_banner_button_text_url', 'field_628a3c2ee7f9a'),
(518, 142, 'spotlight_header_text', 'Welcome To<br /> Townsville Jazz Clubs'),
(519, 142, '_spotlight_header_text', 'field_627f1a697bd15'),
(520, 142, 'spotlight_paragraph_text', 'Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\r\n<br /><br />\r\n'),
(521, 142, '_spotlight_paragraph_text', 'field_627f1a8a7bd16'),
(522, 142, 'underspotlight_where', 'The Fish Inn on The Stran (near the Rockpool)'),
(523, 142, '_underspotlight_where', 'field_627f1aa67bd17'),
(524, 142, 'underspotlight_time', 'Sunday 5.00pm till 8.00pm');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(525, 142, '_underspotlight_time', 'field_627f1ae47bd18'),
(526, 142, 'underspotlight_date', 'Check the Evetns page for dates'),
(527, 142, '_underspotlight_date', 'field_627f1b007bd19'),
(528, 142, 'homepage_banner', '49'),
(529, 142, '_homepage_banner', 'field_6287c6c12086d'),
(530, 142, 'map', '<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"400\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(531, 142, '_map', 'field_6287b64b5f899'),
(532, 142, 'homepage_banner_heading', 'Welcome To <br>Townsville Jazz Club'),
(533, 142, '_homepage_banner_heading', 'field_627f1a697bd15'),
(534, 142, 'homepage_banner_paragraph', 'Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.'),
(535, 142, '_homepage_banner_paragraph', 'field_627f1a8a7bd16'),
(536, 142, 'homepage_banner_button_text', 'Learn about Memberships'),
(537, 142, '_homepage_banner_button_text', 'field_628a3b081c590'),
(538, 142, 'homepage_banner_button_text_url', 'https://boyds.sgedu.site/staging-tjc/membership'),
(539, 142, '_homepage_banner_button_text_url', 'field_628a3c2ee7f9a'),
(540, 143, '_EventOrigin', 'events-calendar'),
(541, 143, '_tribe_modified_fields', 'a:21:{s:12:\"_EventOrigin\";i:1653263766;s:10:\"_edit_last\";i:1653263816;s:10:\"post_title\";i:1653263816;s:11:\"post_status\";i:1653264412;s:12:\"_wp_old_date\";i:1653264412;s:17:\"_EventShowMapLink\";i:1653264412;s:13:\"_EventShowMap\";i:1653264412;s:13:\"_EventVenueID\";i:1653264412;s:17:\"_EventOrganizerID\";i:1653264412;s:15:\"_EventStartDate\";i:1653264412;s:13:\"_EventEndDate\";i:1653264412;s:18:\"_EventStartDateUTC\";i:1653264412;s:16:\"_EventEndDateUTC\";i:1653264412;s:14:\"_EventDuration\";i:1653264412;s:20:\"_EventCurrencySymbol\";i:1653264412;s:18:\"_EventCurrencyCode\";i:1653264412;s:22:\"_EventCurrencyPosition\";i:1653264412;s:10:\"_EventCost\";i:1653264412;s:9:\"_EventURL\";i:1653264412;s:14:\"_EventTimezone\";i:1653264412;s:18:\"_EventTimezoneAbbr\";i:1653264412;}'),
(542, 143, '_edit_last', '1'),
(543, 143, '_edit_lock', '1653228272:1'),
(544, 145, 'spotlight_header_text', 'Welcome To<br /> Townsville Jazz Clubs'),
(545, 145, '_spotlight_header_text', 'field_627f1a697bd15'),
(546, 145, 'spotlight_paragraph_text', 'Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\r\n<br /><br />\r\n'),
(547, 145, '_spotlight_paragraph_text', 'field_627f1a8a7bd16'),
(548, 145, 'underspotlight_where', 'The Fish Inn on The Stran (near the Rockpool)'),
(549, 145, '_underspotlight_where', 'field_627f1aa67bd17'),
(550, 145, 'underspotlight_time', 'Sunday 5.00pm till 8.00pm'),
(551, 145, '_underspotlight_time', 'field_627f1ae47bd18'),
(552, 145, 'underspotlight_date', 'Check the <a href=\"/membership\">Events</a> page for dates'),
(553, 145, '_underspotlight_date', 'field_627f1b007bd19'),
(554, 145, 'homepage_banner', '49'),
(555, 145, '_homepage_banner', 'field_6287c6c12086d'),
(556, 145, 'map', '<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"400\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(557, 145, '_map', 'field_6287b64b5f899'),
(558, 145, 'homepage_banner_heading', 'Welcome To <br>Townsville Jazz Club'),
(559, 145, '_homepage_banner_heading', 'field_627f1a697bd15'),
(560, 145, 'homepage_banner_paragraph', 'Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.'),
(561, 145, '_homepage_banner_paragraph', 'field_627f1a8a7bd16'),
(562, 145, 'homepage_banner_button_text', 'Learn about Memberships'),
(563, 145, '_homepage_banner_button_text', 'field_628a3b081c590'),
(564, 145, 'homepage_banner_button_text_url', 'https://boyds.sgedu.site/staging-tjc/membership'),
(565, 145, '_homepage_banner_button_text_url', 'field_628a3c2ee7f9a'),
(566, 146, 'spotlight_header_text', 'Welcome To<br /> Townsville Jazz Clubs'),
(567, 146, '_spotlight_header_text', 'field_627f1a697bd15'),
(568, 146, 'spotlight_paragraph_text', 'Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\r\n<br /><br />\r\n'),
(569, 146, '_spotlight_paragraph_text', 'field_627f1a8a7bd16'),
(570, 146, 'underspotlight_where', 'The Fish Inn on The Stran (near the Rockpool)'),
(571, 146, '_underspotlight_where', 'field_627f1aa67bd17'),
(572, 146, 'underspotlight_time', 'Sunday 5.00pm till 8.00pm'),
(573, 146, '_underspotlight_time', 'field_627f1ae47bd18'),
(574, 146, 'underspotlight_date', 'Check the <a href=\"events\">Events</a> page for dates'),
(575, 146, '_underspotlight_date', 'field_627f1b007bd19'),
(576, 146, 'homepage_banner', '49'),
(577, 146, '_homepage_banner', 'field_6287c6c12086d'),
(578, 146, 'map', '<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"400\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(579, 146, '_map', 'field_6287b64b5f899'),
(580, 146, 'homepage_banner_heading', 'Welcome To <br>Townsville Jazz Club'),
(581, 146, '_homepage_banner_heading', 'field_627f1a697bd15'),
(582, 146, 'homepage_banner_paragraph', 'Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.'),
(583, 146, '_homepage_banner_paragraph', 'field_627f1a8a7bd16'),
(584, 146, 'homepage_banner_button_text', 'Learn about Memberships'),
(585, 146, '_homepage_banner_button_text', 'field_628a3b081c590'),
(586, 146, 'homepage_banner_button_text_url', 'https://boyds.sgedu.site/staging-tjc/membership'),
(587, 146, '_homepage_banner_button_text_url', 'field_628a3c2ee7f9a'),
(588, 147, 'spotlight_header_text', 'Welcome To<br /> Townsville Jazz Clubs'),
(589, 147, '_spotlight_header_text', 'field_627f1a697bd15'),
(590, 147, 'spotlight_paragraph_text', 'Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\r\n<br /><br />\r\n'),
(591, 147, '_spotlight_paragraph_text', 'field_627f1a8a7bd16'),
(592, 147, 'underspotlight_where', 'The Fish Inn on The Stran (near the Rockpool)'),
(593, 147, '_underspotlight_where', 'field_627f1aa67bd17'),
(594, 147, 'underspotlight_time', 'Sunday 5.00pm till 8.00pm'),
(595, 147, '_underspotlight_time', 'field_627f1ae47bd18'),
(596, 147, 'underspotlight_date', 'Check the <a href=\"events-calendar\">Events</a> page for dates'),
(597, 147, '_underspotlight_date', 'field_627f1b007bd19'),
(598, 147, 'homepage_banner', '49'),
(599, 147, '_homepage_banner', 'field_6287c6c12086d'),
(600, 147, 'map', '<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"400\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(601, 147, '_map', 'field_6287b64b5f899'),
(602, 147, 'homepage_banner_heading', 'Welcome To <br>Townsville Jazz Club'),
(603, 147, '_homepage_banner_heading', 'field_627f1a697bd15'),
(604, 147, 'homepage_banner_paragraph', 'Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.'),
(605, 147, '_homepage_banner_paragraph', 'field_627f1a8a7bd16'),
(606, 147, 'homepage_banner_button_text', 'Learn about Memberships'),
(607, 147, '_homepage_banner_button_text', 'field_628a3b081c590'),
(608, 147, 'homepage_banner_button_text_url', 'https://boyds.sgedu.site/staging-tjc/membership'),
(609, 147, '_homepage_banner_button_text_url', 'field_628a3c2ee7f9a'),
(610, 150, '_EventShowMapLink', '1'),
(611, 150, '_EventShowMap', '1'),
(612, 150, '_EventStartDate', '2022-06-22 08:00:00'),
(613, 150, '_EventEndDate', '2022-06-22 17:00:00'),
(614, 150, '_EventStartDateUTC', '2022-06-21 22:00:00'),
(615, 150, '_EventEndDateUTC', '2022-06-22 07:00:00'),
(616, 150, '_EventDuration', '32400'),
(617, 150, '_EventCurrencySymbol', '$'),
(618, 150, '_EventCurrencyCode', 'AUD'),
(619, 150, '_EventCurrencyPosition', 'prefix'),
(620, 150, '_EventCost', '20'),
(621, 150, '_EventURL', ''),
(622, 150, '_EventTimezone', 'Australia/Sydney'),
(623, 150, '_EventTimezoneAbbr', 'AEST'),
(624, 143, '_wp_old_date', '2022-05-22'),
(625, 143, '_EventShowMapLink', '1'),
(626, 143, '_EventShowMap', '1'),
(627, 143, '_EventVenueID', '42'),
(628, 143, '_EventOrganizerID', '72'),
(629, 143, '_EventStartDate', '2022-06-22 08:00:00'),
(630, 143, '_EventEndDate', '2022-06-22 17:00:00'),
(631, 143, '_EventStartDateUTC', '2022-06-21 22:00:00'),
(632, 143, '_EventEndDateUTC', '2022-06-22 07:00:00'),
(633, 143, '_EventDuration', '32400'),
(634, 143, '_EventCurrencySymbol', '$'),
(635, 143, '_EventCurrencyCode', 'AUD'),
(636, 143, '_EventCurrencyPosition', 'prefix'),
(637, 143, '_EventCost', '20'),
(638, 143, '_EventURL', ''),
(639, 143, '_EventTimezone', 'Australia/Sydney'),
(640, 143, '_EventTimezoneAbbr', 'AEST'),
(641, 151, '_EventOrigin', 'events-calendar'),
(642, 151, '_tribe_modified_fields', 'a:20:{s:12:\"_EventOrigin\";i:1653264417;s:10:\"_edit_last\";i:1653264430;s:10:\"post_title\";i:1653264489;s:11:\"post_status\";i:1653264446;s:17:\"_EventShowMapLink\";i:1653264446;s:13:\"_EventShowMap\";i:1653264446;s:13:\"_EventVenueID\";i:1653264446;s:17:\"_EventOrganizerID\";i:1653264446;s:15:\"_EventStartDate\";i:1653264489;s:13:\"_EventEndDate\";i:1653264489;s:18:\"_EventStartDateUTC\";i:1653264489;s:16:\"_EventEndDateUTC\";i:1653264489;s:14:\"_EventDuration\";i:1653264446;s:20:\"_EventCurrencySymbol\";i:1653264446;s:18:\"_EventCurrencyCode\";i:1653264446;s:22:\"_EventCurrencyPosition\";i:1653264446;s:10:\"_EventCost\";i:1653264446;s:9:\"_EventURL\";i:1653264446;s:14:\"_EventTimezone\";i:1653264446;s:18:\"_EventTimezoneAbbr\";i:1653264446;}'),
(643, 151, '_edit_last', '1'),
(644, 151, '_edit_lock', '1653228389:1'),
(645, 152, '_EventShowMapLink', '1'),
(646, 152, '_EventShowMap', '1'),
(647, 152, '_EventStartDate', '2022-07-23 08:00:00'),
(648, 152, '_EventEndDate', '2022-07-23 17:00:00'),
(649, 152, '_EventStartDateUTC', '2022-07-22 22:00:00'),
(650, 152, '_EventEndDateUTC', '2022-07-23 07:00:00'),
(651, 152, '_EventDuration', '32400'),
(652, 152, '_EventCurrencySymbol', '$'),
(653, 152, '_EventCurrencyCode', 'AUD'),
(654, 152, '_EventCurrencyPosition', 'prefix'),
(655, 152, '_EventCost', '20'),
(656, 152, '_EventURL', ''),
(657, 152, '_EventTimezone', 'Australia/Sydney'),
(658, 152, '_EventTimezoneAbbr', 'AEST'),
(659, 151, '_EventShowMapLink', '1'),
(660, 151, '_EventShowMap', '1'),
(661, 151, '_EventVenueID', '42'),
(662, 151, '_EventOrganizerID', '72'),
(663, 151, '_EventStartDate', '2022-08-13 08:00:00'),
(664, 151, '_EventEndDate', '2022-08-13 17:00:00'),
(665, 151, '_EventStartDateUTC', '2022-08-12 22:00:00'),
(666, 151, '_EventEndDateUTC', '2022-08-13 07:00:00'),
(667, 151, '_EventDuration', '32400'),
(668, 151, '_EventCurrencySymbol', '$'),
(669, 151, '_EventCurrencyCode', 'AUD'),
(670, 151, '_EventCurrencyPosition', 'prefix'),
(671, 151, '_EventCost', '20'),
(672, 151, '_EventURL', ''),
(673, 151, '_EventTimezone', 'Australia/Sydney'),
(674, 151, '_EventTimezoneAbbr', 'AEST'),
(675, 153, '_EventShowMapLink', '1'),
(676, 153, '_EventShowMap', '1'),
(677, 153, '_EventStartDate', '2022-08-13 08:00:00'),
(678, 153, '_EventEndDate', '2022-08-13 17:00:00'),
(679, 153, '_EventStartDateUTC', '2022-08-12 22:00:00'),
(680, 153, '_EventEndDateUTC', '2022-08-13 07:00:00'),
(681, 153, '_EventDuration', '32400'),
(682, 153, '_EventCurrencySymbol', '$'),
(683, 153, '_EventCurrencyCode', 'AUD'),
(684, 153, '_EventCurrencyPosition', 'prefix'),
(685, 153, '_EventCost', '20'),
(686, 153, '_EventURL', ''),
(687, 153, '_EventTimezone', 'Australia/Sydney'),
(688, 153, '_EventTimezoneAbbr', 'AEST'),
(689, 154, '_EventOrigin', 'events-calendar'),
(690, 154, '_tribe_modified_fields', 'a:20:{s:12:\"_EventOrigin\";i:1653264533;s:10:\"_edit_last\";i:1653264551;s:10:\"post_title\";i:1653264551;s:11:\"post_status\";i:1653264551;s:17:\"_EventShowMapLink\";i:1653264551;s:13:\"_EventShowMap\";i:1653264551;s:13:\"_EventVenueID\";i:1653264551;s:17:\"_EventOrganizerID\";i:1653264551;s:15:\"_EventStartDate\";i:1653264551;s:13:\"_EventEndDate\";i:1653264551;s:18:\"_EventStartDateUTC\";i:1653264551;s:16:\"_EventEndDateUTC\";i:1653264551;s:14:\"_EventDuration\";i:1653264551;s:20:\"_EventCurrencySymbol\";i:1653264551;s:18:\"_EventCurrencyCode\";i:1653264551;s:22:\"_EventCurrencyPosition\";i:1653264551;s:10:\"_EventCost\";i:1653264551;s:9:\"_EventURL\";i:1653264551;s:14:\"_EventTimezone\";i:1653264551;s:18:\"_EventTimezoneAbbr\";i:1653264551;}'),
(691, 154, '_edit_last', '1'),
(692, 155, '_EventShowMapLink', '1'),
(693, 155, '_EventShowMap', '1'),
(694, 155, '_EventStartDate', '2022-05-27 08:00:00'),
(695, 155, '_EventEndDate', '2022-05-27 17:00:00'),
(696, 155, '_EventStartDateUTC', '2022-05-26 22:00:00'),
(697, 155, '_EventEndDateUTC', '2022-05-27 07:00:00'),
(698, 155, '_EventDuration', '32400'),
(699, 155, '_EventCurrencySymbol', '$'),
(700, 155, '_EventCurrencyCode', 'AUD'),
(701, 155, '_EventCurrencyPosition', 'prefix'),
(702, 155, '_EventCost', '20'),
(703, 155, '_EventURL', ''),
(704, 155, '_EventTimezone', 'Australia/Sydney'),
(705, 155, '_EventTimezoneAbbr', 'AEST'),
(706, 154, '_EventShowMapLink', '1'),
(707, 154, '_EventShowMap', '1'),
(708, 154, '_EventVenueID', '42'),
(709, 154, '_EventOrganizerID', '72'),
(710, 154, '_EventStartDate', '2022-05-27 08:00:00'),
(711, 154, '_EventEndDate', '2022-05-27 17:00:00'),
(712, 154, '_EventStartDateUTC', '2022-05-26 22:00:00'),
(713, 154, '_EventEndDateUTC', '2022-05-27 07:00:00'),
(714, 154, '_EventDuration', '32400'),
(715, 154, '_EventCurrencySymbol', '$'),
(716, 154, '_EventCurrencyCode', 'AUD'),
(717, 154, '_EventCurrencyPosition', 'prefix'),
(718, 154, '_EventCost', '20'),
(719, 154, '_EventURL', ''),
(720, 154, '_EventTimezone', 'Australia/Sydney'),
(721, 154, '_EventTimezoneAbbr', 'AEST'),
(722, 154, '_edit_lock', '1653228413:1'),
(723, 156, '_EventOrigin', 'events-calendar'),
(724, 156, '_tribe_modified_fields', 'a:20:{s:12:\"_EventOrigin\";i:1653264557;s:10:\"_edit_last\";i:1653264579;s:10:\"post_title\";i:1653264579;s:11:\"post_status\";i:1653264579;s:17:\"_EventShowMapLink\";i:1653264579;s:13:\"_EventShowMap\";i:1653264579;s:13:\"_EventVenueID\";i:1653264579;s:17:\"_EventOrganizerID\";i:1653264579;s:15:\"_EventStartDate\";i:1653264579;s:13:\"_EventEndDate\";i:1653264579;s:18:\"_EventStartDateUTC\";i:1653264579;s:16:\"_EventEndDateUTC\";i:1653264579;s:14:\"_EventDuration\";i:1653264579;s:20:\"_EventCurrencySymbol\";i:1653264579;s:18:\"_EventCurrencyCode\";i:1653264579;s:22:\"_EventCurrencyPosition\";i:1653264579;s:10:\"_EventCost\";i:1653264579;s:9:\"_EventURL\";i:1653264579;s:14:\"_EventTimezone\";i:1653264579;s:18:\"_EventTimezoneAbbr\";i:1653264579;}'),
(725, 156, '_edit_last', '1'),
(726, 157, '_EventShowMapLink', '1'),
(727, 157, '_EventShowMap', '1'),
(728, 157, '_EventStartDate', '2022-05-28 08:00:00'),
(729, 157, '_EventEndDate', '2022-05-28 17:00:00'),
(730, 157, '_EventStartDateUTC', '2022-05-27 22:00:00'),
(731, 157, '_EventEndDateUTC', '2022-05-28 07:00:00'),
(732, 157, '_EventDuration', '32400'),
(733, 157, '_EventCurrencySymbol', '$'),
(734, 157, '_EventCurrencyCode', 'AUD'),
(735, 157, '_EventCurrencyPosition', 'prefix'),
(736, 157, '_EventCost', '20'),
(737, 157, '_EventURL', ''),
(738, 157, '_EventTimezone', 'Australia/Sydney'),
(739, 157, '_EventTimezoneAbbr', 'AEST'),
(740, 156, '_EventShowMapLink', '1'),
(741, 156, '_EventShowMap', '1'),
(742, 156, '_EventVenueID', '42'),
(743, 156, '_EventOrganizerID', '72'),
(744, 156, '_EventStartDate', '2022-05-28 08:00:00'),
(745, 156, '_EventEndDate', '2022-05-28 17:00:00'),
(746, 156, '_EventStartDateUTC', '2022-05-27 22:00:00'),
(747, 156, '_EventEndDateUTC', '2022-05-28 07:00:00'),
(748, 156, '_EventDuration', '32400'),
(749, 156, '_EventCurrencySymbol', '$'),
(750, 156, '_EventCurrencyCode', 'AUD'),
(751, 156, '_EventCurrencyPosition', 'prefix'),
(752, 156, '_EventCost', '20'),
(753, 156, '_EventURL', ''),
(754, 156, '_EventTimezone', 'Australia/Sydney'),
(755, 156, '_EventTimezoneAbbr', 'AEST'),
(756, 156, '_edit_lock', '1653228439:1'),
(757, 158, '_EventOrigin', 'events-calendar'),
(758, 158, '_tribe_modified_fields', 'a:20:{s:12:\"_EventOrigin\";i:1653264584;s:10:\"_edit_last\";i:1653264597;s:10:\"post_title\";i:1653264597;s:11:\"post_status\";i:1653264611;s:17:\"_EventShowMapLink\";i:1653264611;s:13:\"_EventShowMap\";i:1653264611;s:13:\"_EventVenueID\";i:1653264611;s:17:\"_EventOrganizerID\";i:1653264611;s:15:\"_EventStartDate\";i:1653264611;s:13:\"_EventEndDate\";i:1653264611;s:18:\"_EventStartDateUTC\";i:1653264611;s:16:\"_EventEndDateUTC\";i:1653264611;s:14:\"_EventDuration\";i:1653264611;s:20:\"_EventCurrencySymbol\";i:1653264611;s:18:\"_EventCurrencyCode\";i:1653264611;s:22:\"_EventCurrencyPosition\";i:1653264611;s:10:\"_EventCost\";i:1653264611;s:9:\"_EventURL\";i:1653264611;s:14:\"_EventTimezone\";i:1653264611;s:18:\"_EventTimezoneAbbr\";i:1653264611;}'),
(759, 158, '_edit_last', '1'),
(760, 158, '_edit_lock', '1653228476:1'),
(761, 159, '_EventShowMapLink', '1'),
(762, 159, '_EventShowMap', '1'),
(763, 159, '_EventStartDate', '2022-05-29 08:00:00'),
(764, 159, '_EventEndDate', '2022-05-29 17:00:00'),
(765, 159, '_EventStartDateUTC', '2022-05-28 22:00:00'),
(766, 159, '_EventEndDateUTC', '2022-05-29 07:00:00'),
(767, 159, '_EventDuration', '32400'),
(768, 159, '_EventCurrencySymbol', '$'),
(769, 159, '_EventCurrencyCode', 'AUD'),
(770, 159, '_EventCurrencyPosition', 'prefix'),
(771, 159, '_EventCost', '20'),
(772, 159, '_EventURL', ''),
(773, 159, '_EventTimezone', 'Australia/Sydney'),
(774, 159, '_EventTimezoneAbbr', 'AEST'),
(775, 158, '_EventShowMapLink', '1'),
(776, 158, '_EventShowMap', '1'),
(777, 158, '_EventVenueID', '42'),
(778, 158, '_EventOrganizerID', '72'),
(779, 158, '_EventStartDate', '2022-05-29 08:00:00'),
(780, 158, '_EventEndDate', '2022-05-29 17:00:00'),
(781, 158, '_EventStartDateUTC', '2022-05-28 22:00:00'),
(782, 158, '_EventEndDateUTC', '2022-05-29 07:00:00'),
(783, 158, '_EventDuration', '32400'),
(784, 158, '_EventCurrencySymbol', '$'),
(785, 158, '_EventCurrencyCode', 'AUD'),
(786, 158, '_EventCurrencyPosition', 'prefix'),
(787, 158, '_EventCost', '20'),
(788, 158, '_EventURL', ''),
(789, 158, '_EventTimezone', 'Australia/Sydney'),
(790, 158, '_EventTimezoneAbbr', 'AEST'),
(791, 160, '_EventOrigin', 'events-calendar'),
(792, 160, '_tribe_modified_fields', 'a:20:{s:12:\"_EventOrigin\";i:1653264620;s:10:\"_edit_last\";i:1653264627;s:10:\"post_title\";i:1653264627;s:11:\"post_status\";i:1653264644;s:17:\"_EventShowMapLink\";i:1653264644;s:13:\"_EventShowMap\";i:1653264644;s:13:\"_EventVenueID\";i:1653264644;s:17:\"_EventOrganizerID\";i:1653264644;s:15:\"_EventStartDate\";i:1653264644;s:13:\"_EventEndDate\";i:1653264644;s:18:\"_EventStartDateUTC\";i:1653264644;s:16:\"_EventEndDateUTC\";i:1653264644;s:14:\"_EventDuration\";i:1653264644;s:20:\"_EventCurrencySymbol\";i:1653264644;s:18:\"_EventCurrencyCode\";i:1653264644;s:22:\"_EventCurrencyPosition\";i:1653264644;s:10:\"_EventCost\";i:1653264644;s:9:\"_EventURL\";i:1653264644;s:14:\"_EventTimezone\";i:1653264644;s:18:\"_EventTimezoneAbbr\";i:1653264644;}'),
(793, 160, '_edit_last', '1'),
(794, 160, '_edit_lock', '1653228506:1'),
(795, 161, '_EventShowMapLink', '1'),
(796, 161, '_EventShowMap', '1'),
(797, 161, '_EventStartDate', '2022-05-30 08:00:00'),
(798, 161, '_EventEndDate', '2022-05-30 17:00:00'),
(799, 161, '_EventStartDateUTC', '2022-05-29 22:00:00'),
(800, 161, '_EventEndDateUTC', '2022-05-30 07:00:00'),
(801, 161, '_EventDuration', '32400'),
(802, 161, '_EventCurrencySymbol', '$'),
(803, 161, '_EventCurrencyCode', 'AUD'),
(804, 161, '_EventCurrencyPosition', 'prefix'),
(805, 161, '_EventCost', '20'),
(806, 161, '_EventURL', ''),
(807, 161, '_EventTimezone', 'Australia/Sydney'),
(808, 161, '_EventTimezoneAbbr', 'AEST'),
(809, 160, '_EventShowMapLink', '1'),
(810, 160, '_EventShowMap', '1'),
(811, 160, '_EventVenueID', '42'),
(812, 160, '_EventOrganizerID', '72'),
(813, 160, '_EventStartDate', '2022-05-30 08:00:00'),
(814, 160, '_EventEndDate', '2022-05-30 17:00:00'),
(815, 160, '_EventStartDateUTC', '2022-05-29 22:00:00'),
(816, 160, '_EventEndDateUTC', '2022-05-30 07:00:00'),
(817, 160, '_EventDuration', '32400'),
(818, 160, '_EventCurrencySymbol', '$'),
(819, 160, '_EventCurrencyCode', 'AUD'),
(820, 160, '_EventCurrencyPosition', 'prefix'),
(821, 160, '_EventCost', '20'),
(822, 160, '_EventURL', ''),
(823, 160, '_EventTimezone', 'Australia/Sydney'),
(824, 160, '_EventTimezoneAbbr', 'AEST'),
(825, 162, '_EventOrigin', 'events-calendar'),
(826, 162, '_tribe_modified_fields', 'a:20:{s:12:\"_EventOrigin\";i:1653264650;s:10:\"_edit_last\";i:1653264652;s:10:\"post_title\";i:1653264652;s:11:\"post_status\";i:1653264675;s:17:\"_EventShowMapLink\";i:1653264675;s:13:\"_EventShowMap\";i:1653264675;s:13:\"_EventVenueID\";i:1653264675;s:17:\"_EventOrganizerID\";i:1653264675;s:15:\"_EventStartDate\";i:1653264675;s:13:\"_EventEndDate\";i:1653264675;s:18:\"_EventStartDateUTC\";i:1653264675;s:16:\"_EventEndDateUTC\";i:1653264675;s:14:\"_EventDuration\";i:1653264675;s:20:\"_EventCurrencySymbol\";i:1653264675;s:18:\"_EventCurrencyCode\";i:1653264675;s:22:\"_EventCurrencyPosition\";i:1653264675;s:10:\"_EventCost\";i:1653264675;s:9:\"_EventURL\";i:1653264675;s:14:\"_EventTimezone\";i:1653264675;s:18:\"_EventTimezoneAbbr\";i:1653264675;}'),
(827, 162, '_edit_last', '1'),
(828, 162, '_edit_lock', '1653228551:1'),
(829, 163, '_EventShowMapLink', '1'),
(830, 163, '_EventShowMap', '1'),
(831, 163, '_EventStartDate', '2022-06-02 08:00:00'),
(832, 163, '_EventEndDate', '2022-06-02 17:00:00'),
(833, 163, '_EventStartDateUTC', '2022-06-01 22:00:00'),
(834, 163, '_EventEndDateUTC', '2022-06-02 07:00:00'),
(835, 163, '_EventDuration', '32400'),
(836, 163, '_EventCurrencySymbol', '$'),
(837, 163, '_EventCurrencyCode', 'AUD'),
(838, 163, '_EventCurrencyPosition', 'prefix'),
(839, 163, '_EventCost', '20'),
(840, 163, '_EventURL', ''),
(841, 163, '_EventTimezone', 'Australia/Sydney'),
(842, 163, '_EventTimezoneAbbr', 'AEST'),
(843, 162, '_EventShowMapLink', '1'),
(844, 162, '_EventShowMap', '1'),
(845, 162, '_EventVenueID', '42'),
(846, 162, '_EventOrganizerID', '72'),
(847, 162, '_EventStartDate', '2022-06-02 08:00:00'),
(848, 162, '_EventEndDate', '2022-06-02 17:00:00'),
(849, 162, '_EventStartDateUTC', '2022-06-01 22:00:00'),
(850, 162, '_EventEndDateUTC', '2022-06-02 07:00:00'),
(851, 162, '_EventDuration', '32400'),
(852, 162, '_EventCurrencySymbol', '$'),
(853, 162, '_EventCurrencyCode', 'AUD'),
(854, 162, '_EventCurrencyPosition', 'prefix'),
(855, 162, '_EventCost', '20'),
(856, 162, '_EventURL', ''),
(857, 162, '_EventTimezone', 'Australia/Sydney'),
(858, 162, '_EventTimezoneAbbr', 'AEST'),
(859, 164, '_EventOrigin', 'events-calendar'),
(860, 164, '_tribe_modified_fields', 'a:20:{s:12:\"_EventOrigin\";i:1653264696;s:10:\"_edit_last\";i:1653264712;s:10:\"post_title\";i:1653264712;s:11:\"post_status\";i:1653264712;s:17:\"_EventShowMapLink\";i:1653264712;s:13:\"_EventShowMap\";i:1653264712;s:13:\"_EventVenueID\";i:1653264712;s:17:\"_EventOrganizerID\";i:1653264712;s:15:\"_EventStartDate\";i:1653264712;s:13:\"_EventEndDate\";i:1653264712;s:18:\"_EventStartDateUTC\";i:1653264712;s:16:\"_EventEndDateUTC\";i:1653264712;s:14:\"_EventDuration\";i:1653264712;s:20:\"_EventCurrencySymbol\";i:1653264712;s:18:\"_EventCurrencyCode\";i:1653264712;s:22:\"_EventCurrencyPosition\";i:1653264712;s:10:\"_EventCost\";i:1653264712;s:9:\"_EventURL\";i:1653264712;s:14:\"_EventTimezone\";i:1653264712;s:18:\"_EventTimezoneAbbr\";i:1653264712;}'),
(861, 164, '_edit_last', '1'),
(862, 165, '_EventShowMapLink', '1'),
(863, 165, '_EventShowMap', '1'),
(864, 165, '_EventStartDate', '2022-06-04 08:00:00'),
(865, 165, '_EventEndDate', '2022-06-04 17:00:00'),
(866, 165, '_EventStartDateUTC', '2022-06-03 22:00:00'),
(867, 165, '_EventEndDateUTC', '2022-06-04 07:00:00'),
(868, 165, '_EventDuration', '32400'),
(869, 165, '_EventCurrencySymbol', '$'),
(870, 165, '_EventCurrencyCode', 'AUD'),
(871, 165, '_EventCurrencyPosition', 'prefix'),
(872, 165, '_EventCost', '20'),
(873, 165, '_EventURL', ''),
(874, 165, '_EventTimezone', 'Australia/Sydney'),
(875, 165, '_EventTimezoneAbbr', 'AEST'),
(876, 164, '_EventShowMapLink', '1'),
(877, 164, '_EventShowMap', '1'),
(878, 164, '_EventVenueID', '42'),
(879, 164, '_EventOrganizerID', '72'),
(880, 164, '_EventStartDate', '2022-06-04 08:00:00'),
(881, 164, '_EventEndDate', '2022-06-04 17:00:00'),
(882, 164, '_EventStartDateUTC', '2022-06-03 22:00:00'),
(883, 164, '_EventEndDateUTC', '2022-06-04 07:00:00'),
(884, 164, '_EventDuration', '32400'),
(885, 164, '_EventCurrencySymbol', '$'),
(886, 164, '_EventCurrencyCode', 'AUD'),
(887, 164, '_EventCurrencyPosition', 'prefix'),
(888, 164, '_EventCost', '20'),
(889, 164, '_EventURL', ''),
(890, 164, '_EventTimezone', 'Australia/Sydney'),
(891, 164, '_EventTimezoneAbbr', 'AEST'),
(892, 164, '_edit_lock', '1653228646:1'),
(893, 166, '_menu_item_type', 'custom'),
(894, 166, '_menu_item_menu_item_parent', '33'),
(895, 166, '_menu_item_object_id', '166'),
(896, 166, '_menu_item_object', 'custom'),
(897, 166, '_menu_item_target', ''),
(898, 166, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(899, 166, '_menu_item_xfn', ''),
(900, 166, '_menu_item_url', '/staging-tjc/bands'),
(902, 32, '_wp_old_date', '2022-05-22'),
(903, 66, '_wp_old_date', '2022-05-22'),
(904, 33, '_wp_old_date', '2022-05-22'),
(905, 113, '_wp_old_date', '2022-05-22'),
(906, 36, '_wp_old_date', '2022-05-22'),
(907, 35, '_wp_old_date', '2022-05-22'),
(908, 34, '_wp_old_date', '2022-05-22'),
(909, 167, '_edit_lock', '1653230062:1'),
(910, 168, '_wp_attached_file', '2022/05/wpb0fb622b_05_06-1.jpg'),
(911, 168, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:576;s:6:\"height\";i:373;s:4:\"file\";s:30:\"2022/05/wpb0fb622b_05_06-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"wpb0fb622b_05_06-1-300x194.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:194;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"wpb0fb622b_05_06-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(912, 168, '_wp_attachment_image_alt', 'HOMEBANDSJAZZ RADIOPHOTOSJAZZ FESTIVALMEMBER INFO HISTORYPROGRAMLOCATION The Stokes Nicholson Big Band'),
(913, 167, '_thumbnail_id', '168'),
(914, 169, '_edit_lock', '1653230255:1'),
(915, 170, '_wp_attached_file', '2022/05/Counterpoint-e1653230254957.jpg'),
(916, 170, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:355;s:6:\"height\";i:215;s:4:\"file\";s:39:\"2022/05/Counterpoint-e1653230254957.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"Counterpoint-e1653230254957-300x182.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"Counterpoint-e1653230254957-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(917, 170, '_wp_attachment_image_alt', 'Counterpoint'),
(918, 169, '_thumbnail_id', '170'),
(919, 170, '_wp_attachment_backup_sizes', 'a:3:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:356;s:6:\"height\";i:506;s:4:\"file\";s:16:\"Counterpoint.jpg\";}s:14:\"thumbnail-orig\";a:4:{s:4:\"file\";s:24:\"Counterpoint-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"medium-orig\";a:4:{s:4:\"file\";s:24:\"Counterpoint-211x300.jpg\";s:5:\"width\";i:211;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(920, 171, '_edit_lock', '1653230417:1'),
(921, 172, '_wp_attached_file', '2022/05/TRB4-The-Reg-Braun-Four-e1653230400438.jpg'),
(922, 172, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:180;s:4:\"file\";s:50:\"2022/05/TRB4-The-Reg-Braun-Four-e1653230400438.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"TRB4-The-Reg-Braun-Four-262x300.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"TRB4-The-Reg-Braun-Four-e1653230400438-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(923, 172, '_wp_attachment_image_alt', 'TRB4 (The Reg Braun Four)'),
(924, 172, '_wp_attachment_backup_sizes', 'a:3:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:300;s:6:\"height\";i:343;s:4:\"file\";s:27:\"TRB4-The-Reg-Braun-Four.jpg\";}s:14:\"thumbnail-orig\";a:4:{s:4:\"file\";s:35:\"TRB4-The-Reg-Braun-Four-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"medium-orig\";a:4:{s:4:\"file\";s:35:\"TRB4-The-Reg-Braun-Four-262x300.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(925, 171, '_thumbnail_id', '172'),
(926, 173, '_edit_lock', '1653297264:1'),
(927, 174, '_wp_attached_file', '2022/05/Type-a-Personality-Jazz-Ensemble.jpg'),
(928, 174, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:540;s:6:\"height\";i:376;s:4:\"file\";s:44:\"2022/05/Type-a-Personality-Jazz-Ensemble.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"Type-a-Personality-Jazz-Ensemble-300x209.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:209;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"Type-a-Personality-Jazz-Ensemble-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(929, 174, '_wp_attachment_image_alt', 'Type a Personality Jazz Ensemble'),
(930, 173, '_thumbnail_id', '174'),
(931, 176, '_wp_attached_file', '2022/05/173485030_292458865619274_1885454902808024696_n.jpeg'),
(932, 176, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:846;s:4:\"file\";s:60:\"2022/05/173485030_292458865619274_1885454902808024696_n.jpeg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:60:\"173485030_292458865619274_1885454902808024696_n-300x176.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:176;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:61:\"173485030_292458865619274_1885454902808024696_n-1024x602.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:602;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:60:\"173485030_292458865619274_1885454902808024696_n-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:60:\"173485030_292458865619274_1885454902808024696_n-768x451.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:451;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(933, 177, '_wp_attached_file', '2022/05/Sit-in-bracket-4.jpg'),
(934, 177, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1095;s:6:\"height\";i:730;s:4:\"file\";s:28:\"2022/05/Sit-in-bracket-4.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"Sit-in-bracket-4-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"Sit-in-bracket-4-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"Sit-in-bracket-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"Sit-in-bracket-4-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"Canon EOS 6D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1584300877\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"32\";s:3:\"iso\";s:3:\"640\";s:13:\"shutter_speed\";s:17:\"0.066666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(935, 178, '_wp_attached_file', '2022/05/Sit-in-bracket-3.jpg'),
(936, 178, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1095;s:6:\"height\";i:730;s:4:\"file\";s:28:\"2022/05/Sit-in-bracket-3.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"Sit-in-bracket-3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"Sit-in-bracket-3-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"Sit-in-bracket-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"Sit-in-bracket-3-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"Canon EOS 6D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1584300563\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"24\";s:3:\"iso\";s:3:\"640\";s:13:\"shutter_speed\";s:17:\"0.066666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(937, 179, '_wp_attached_file', '2022/05/Opening-night-band-scaled.jpg'),
(938, 179, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1920;s:4:\"file\";s:37:\"2022/05/Opening-night-band-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Opening-night-band-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"Opening-night-band-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Opening-night-band-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"Opening-night-band-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:32:\"Opening-night-band-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:32:\"Opening-night-band-2048x1536.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:8:\"SM-G970F\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1581275213\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"4.32\";s:3:\"iso\";s:3:\"640\";s:13:\"shutter_speed\";s:4:\"0.04\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:22:\"Opening-night-band.jpg\";}'),
(939, 180, '_wp_attached_file', '2022/05/Gentlemen-of-Jazz-scaled.jpg'),
(940, 180, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:36:\"2022/05/Gentlemen-of-Jazz-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"Gentlemen-of-Jazz-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"Gentlemen-of-Jazz-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"Gentlemen-of-Jazz-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"Gentlemen-of-Jazz-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:31:\"Gentlemen-of-Jazz-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:31:\"Gentlemen-of-Jazz-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"Canon EOS 6D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1584297793\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"28\";s:3:\"iso\";s:3:\"640\";s:13:\"shutter_speed\";s:18:\"0.0055555555555556\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:21:\"Gentlemen-of-Jazz.jpg\";}'),
(941, 181, '_wp_attached_file', '2022/05/wp21ffe78f_05_06.jpg'),
(942, 181, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:416;s:6:\"height\";i:224;s:4:\"file\";s:28:\"2022/05/wp21ffe78f_05_06.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"wp21ffe78f_05_06-300x162.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"wp21ffe78f_05_06-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(943, 182, '_wp_attached_file', '2022/05/wp37a0e7f6_05_06.jpg'),
(944, 182, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:911;s:6:\"height\";i:392;s:4:\"file\";s:28:\"2022/05/wp37a0e7f6_05_06.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"wp37a0e7f6_05_06-300x129.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:129;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"wp37a0e7f6_05_06-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"wp37a0e7f6_05_06-768x330.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:330;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(945, 183, '_wp_attached_file', '2022/05/wp326e5d43_05_06.jpg'),
(946, 183, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:610;s:6:\"height\";i:403;s:4:\"file\";s:28:\"2022/05/wp326e5d43_05_06.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"wp326e5d43_05_06-300x198.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"wp326e5d43_05_06-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(947, 184, '_wp_attached_file', '2022/05/wp9e125d82_05_06.jpg'),
(948, 184, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:896;s:6:\"height\";i:495;s:4:\"file\";s:28:\"2022/05/wp9e125d82_05_06.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"wp9e125d82_05_06-300x166.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:166;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"wp9e125d82_05_06-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"wp9e125d82_05_06-768x424.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:424;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(949, 185, '_wp_attached_file', '2022/05/wp6c5de4ed_05_06.jpg'),
(950, 185, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:922;s:6:\"height\";i:483;s:4:\"file\";s:28:\"2022/05/wp6c5de4ed_05_06.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"wp6c5de4ed_05_06-300x157.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"wp6c5de4ed_05_06-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"wp6c5de4ed_05_06-768x402.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:402;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(951, 186, '_wp_attached_file', '2022/05/wp9c68b804_05_06.jpg'),
(952, 186, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:219;s:6:\"height\";i:286;s:4:\"file\";s:28:\"2022/05/wp9c68b804_05_06.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"wp9c68b804_05_06-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(953, 187, '_wp_attached_file', '2022/05/wp25f7a282_05_06.jpg'),
(954, 187, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:286;s:6:\"height\";i:321;s:4:\"file\";s:28:\"2022/05/wp25f7a282_05_06.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"wp25f7a282_05_06-267x300.jpg\";s:5:\"width\";i:267;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"wp25f7a282_05_06-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(955, 188, '_wp_attached_file', '2022/05/wp29b6641d_05_06.jpg'),
(956, 188, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:143;s:6:\"height\";i:162;s:4:\"file\";s:28:\"2022/05/wp29b6641d_05_06.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"wp29b6641d_05_06-143x150.jpg\";s:5:\"width\";i:143;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(957, 189, '_wp_attached_file', '2022/05/wp48fd89be_05_06.jpg'),
(958, 189, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:343;s:4:\"file\";s:28:\"2022/05/wp48fd89be_05_06.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"wp48fd89be_05_06-262x300.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"wp48fd89be_05_06-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(959, 190, '_wp_attached_file', '2022/05/wp73ae0984_05_06.jpg'),
(960, 190, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:405;s:6:\"height\";i:306;s:4:\"file\";s:28:\"2022/05/wp73ae0984_05_06.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"wp73ae0984_05_06-300x227.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:227;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"wp73ae0984_05_06-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(961, 191, '_wp_attached_file', '2022/05/wp71c5eafc_05_06.jpg'),
(962, 191, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:562;s:6:\"height\";i:437;s:4:\"file\";s:28:\"2022/05/wp71c5eafc_05_06.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"wp71c5eafc_05_06-300x233.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:233;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"wp71c5eafc_05_06-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(963, 192, '_wp_attached_file', '2022/05/wp11e037dd_05_06.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(964, 192, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:540;s:6:\"height\";i:376;s:4:\"file\";s:28:\"2022/05/wp11e037dd_05_06.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"wp11e037dd_05_06-300x209.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:209;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"wp11e037dd_05_06-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(965, 27, '_wp_page_template', 'page-templates/fullwidthpage.php'),
(966, 29, '_wp_page_template', ''),
(967, 195, '_wp_attached_file', '2022/05/wp71c5eafc_05_06-1.jpg'),
(968, 195, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:562;s:6:\"height\";i:437;s:4:\"file\";s:30:\"2022/05/wp71c5eafc_05_06-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"wp71c5eafc_05_06-1-300x233.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:233;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"wp71c5eafc_05_06-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(969, 198, '_menu_item_type', 'post_type'),
(970, 198, '_menu_item_menu_item_parent', '33'),
(971, 198, '_menu_item_object_id', '25'),
(972, 198, '_menu_item_object', 'page'),
(973, 198, '_menu_item_target', ''),
(974, 198, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(975, 198, '_menu_item_xfn', ''),
(976, 198, '_menu_item_url', ''),
(978, 201, '_wp_attached_file', '2022/05/wp7952cc09_05_06.jpg'),
(979, 201, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:922;s:6:\"height\";i:364;s:4:\"file\";s:28:\"2022/05/wp7952cc09_05_06.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"wp7952cc09_05_06-300x118.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:118;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"wp7952cc09_05_06-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"wp7952cc09_05_06-768x303.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:303;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(980, 203, '_wp_attached_file', '2022/05/wp6538cd08_05_06.jpg'),
(981, 203, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:483;s:6:\"height\";i:351;s:4:\"file\";s:28:\"2022/05/wp6538cd08_05_06.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"wp6538cd08_05_06-300x218.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:218;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"wp6538cd08_05_06-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(982, 204, '_wp_attached_file', '2022/05/wpcaa8c393_05_06.jpg'),
(983, 204, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:299;s:6:\"height\";i:428;s:4:\"file\";s:28:\"2022/05/wpcaa8c393_05_06.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"wpcaa8c393_05_06-210x300.jpg\";s:5:\"width\";i:210;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"wpcaa8c393_05_06-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(986, 1, '_thumbnail_id', '201'),
(989, 1, '_wp_old_slug', 'hello-world'),
(995, 209, '_wp_attached_file', '2022/05/radio-banner2.jpg'),
(996, 209, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:438;s:6:\"height\";i:55;s:4:\"file\";s:25:\"2022/05/radio-banner2.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"radio-banner2-300x38.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:38;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"radio-banner2-150x55.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:55;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(997, 82, '_customize_restore_dismissed', '1'),
(998, 210, '_menu_item_type', 'post_type'),
(999, 210, '_menu_item_menu_item_parent', '0'),
(1000, 210, '_menu_item_object_id', '5'),
(1001, 210, '_menu_item_object', 'page'),
(1002, 210, '_menu_item_target', ''),
(1003, 210, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1004, 210, '_menu_item_xfn', ''),
(1005, 210, '_menu_item_url', ''),
(1007, 211, '_menu_item_type', 'post_type'),
(1008, 211, '_menu_item_menu_item_parent', '0'),
(1009, 211, '_menu_item_object_id', '23'),
(1010, 211, '_menu_item_object', 'page'),
(1011, 211, '_menu_item_target', ''),
(1012, 211, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1013, 211, '_menu_item_xfn', ''),
(1014, 211, '_menu_item_url', ''),
(1016, 212, '_menu_item_type', 'post_type'),
(1017, 212, '_menu_item_menu_item_parent', '0'),
(1018, 212, '_menu_item_object_id', '29'),
(1019, 212, '_menu_item_object', 'page'),
(1020, 212, '_menu_item_target', ''),
(1021, 212, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1022, 212, '_menu_item_xfn', ''),
(1023, 212, '_menu_item_url', ''),
(1025, 213, '_menu_item_type', 'post_type'),
(1026, 213, '_menu_item_menu_item_parent', '0'),
(1027, 213, '_menu_item_object_id', '27'),
(1028, 213, '_menu_item_object', 'page'),
(1029, 213, '_menu_item_target', ''),
(1030, 213, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1031, 213, '_menu_item_xfn', ''),
(1032, 213, '_menu_item_url', ''),
(1034, 214, '_menu_item_type', 'custom'),
(1035, 214, '_menu_item_menu_item_parent', '0'),
(1036, 214, '_menu_item_object_id', '214'),
(1037, 214, '_menu_item_object', 'custom'),
(1038, 214, '_menu_item_target', ''),
(1039, 214, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1040, 214, '_menu_item_xfn', ''),
(1041, 214, '_menu_item_url', '/staging-tjc/events-calendar'),
(1043, 215, '_wp_attached_file', '2022/05/radio-banner3.jpg'),
(1044, 215, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:438;s:6:\"height\";i:55;s:4:\"file\";s:25:\"2022/05/radio-banner3.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"radio-banner3-300x38.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:38;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"radio-banner3-150x55.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:55;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1045, 216, '_EventOrigin', 'events-calendar'),
(1046, 216, '_tribe_modified_fields', 'a:1:{s:12:\"_EventOrigin\";i:1653333429;}'),
(1048, 218, '_EventOrigin', 'events-calendar'),
(1049, 218, '_tribe_modified_fields', 'a:1:{s:12:\"_EventOrigin\";i:1653333590;}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-05-14 02:39:13', '2022-05-14 02:39:13', '<!-- wp:paragraph -->\n<p>This was it for 2021. &nbsp;&nbsp;&nbsp;We will be back next year. Watch this space.  More photo’s on the <a href=\"https://boyds.sgedu.site/staging-tjc/gallery/\" data-type=\"page\" data-id=\"27\">Gallery</a> page.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped\"><!-- wp:image {\"id\":204,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wpcaa8c393_05_06.jpg\" alt=\"\" class=\"wp-image-204\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":203,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp6538cd08_05_06.jpg\" alt=\"\" class=\"wp-image-203\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->', 'Jazz Festival 2021', '', 'publish', 'open', 'open', '', 'jazz-festival-2021', '', '', '2022-05-23 01:11:24', '2022-05-22 15:11:24', '', 0, 'http://127.0.0.1/cp3402-2022-1-site-team07/Website/?p=1', 0, 'post', '', 0),
(3, 1, '2022-05-14 02:39:13', '2022-05-14 02:39:13', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://127.0.0.1/cp3402-2022-1-site-team07/Website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymised string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognise and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2022-05-14 04:31:23', '2022-05-14 04:31:23', '', 0, 'http://127.0.0.1/cp3402-2022-1-site-team07/Website/?page_id=3', 0, 'page', '', 0),
(5, 1, '2022-05-14 02:54:44', '2022-05-14 02:54:44', '<h2><img class=\"alignleft wp-image-42\" src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Anthony-and-the-Gentlemen-of-Jazz-.jpg\" alt=\"Anthony-and-the-Gentlemen-of-Jazz--1\" width=\"540\" height=\"360\">Come &amp; enjoy our regular jazz nights</h2>\nOur friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\n\nWe feature a range of very talented local bands playing great jazz music in a relaxed yet vibrant environment. The regular jazz nights feature a sit-in bracket and dancers are most welcome. Meals and bar facility available. No need to book.', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2022-05-23 00:02:30', '2022-05-22 14:02:30', '', 0, 'http://127.0.0.1/cp3402-2022-1-site-team07/Website/?page_id=5', 0, 'page', '', 0),
(6, 1, '2022-05-14 02:54:34', '2022-05-14 02:54:34', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-team-07-theme', '', '', '2022-05-14 02:54:34', '2022-05-14 02:54:34', '', 0, 'http://127.0.0.1/cp3402-2022-1-site-team07/Website/2022/05/14/wp-global-styles-team-07-theme/', 0, 'wp_global_styles', '', 0),
(7, 1, '2022-05-14 02:54:44', '2022-05-14 02:54:44', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-05-14 02:54:44', '2022-05-14 02:54:44', '', 5, 'http://127.0.0.1/cp3402-2022-1-site-team07/Website/?p=7', 0, 'revision', '', 0),
(8, 1, '2022-05-14 02:55:22', '2022-05-14 02:55:22', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-14 02:55:22\"\n    },\n    \"page_on_front\": {\n        \"value\": \"5\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-14 02:55:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd2ae8108-e2fb-4f3b-8e63-658d85157d89', '', '', '2022-05-14 02:55:22', '2022-05-14 02:55:22', '', 0, 'http://127.0.0.1/cp3402-2022-1-site-team07/Website/2022/05/14/d2ae8108-e2fb-4f3b-8e63-658d85157d89/', 0, 'customize_changeset', '', 0),
(10, 1, '2022-05-14 02:56:02', '2022-05-14 02:56:02', '{\n    \"site_icon\": {\n        \"value\": 9,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-14 02:56:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd8b38ed7-8024-4c02-804b-05a5cb85983e', '', '', '2022-05-14 02:56:02', '2022-05-14 02:56:02', '', 0, 'http://127.0.0.1/cp3402-2022-1-site-team07/Website/2022/05/14/d8b38ed7-8024-4c02-804b-05a5cb85983e/', 0, 'customize_changeset', '', 0),
(11, 1, '2022-05-14 02:59:34', '2022-05-14 02:59:34', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"5\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Front Page', 'front-page', 'publish', 'closed', 'closed', '', 'group_627f1a4a88d64', '', '', '2022-05-22 23:51:43', '2022-05-22 13:51:43', '', 0, 'http://127.0.0.1/cp3402-2022-1-site-team07/Website/?post_type=acf-field-group&#038;p=11', 0, 'acf-field-group', '', 0),
(12, 1, '2022-05-14 02:59:34', '2022-05-14 02:59:34', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:31:\"Welcome To Townsville Jazz Club\";s:11:\"placeholder\";s:31:\"Welcome To Townsville Jazz Club\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Homepage Banner Heading', 'homepage_banner_heading', 'publish', 'closed', 'closed', '', 'field_627f1a697bd15', '', '', '2022-05-22 23:32:12', '2022-05-22 13:32:12', '', 11, 'http://127.0.0.1/cp3402-2022-1-site-team07/Website/?post_type=acf-field&#038;p=12', 1, 'acf-field', '', 0),
(13, 1, '2022-05-14 02:59:34', '2022-05-14 02:59:34', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:274:\"Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\";s:11:\"placeholder\";s:274:\"Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Homepage Banner Paragraph', 'homepage_banner_paragraph', 'publish', 'closed', 'closed', '', 'field_627f1a8a7bd16', '', '', '2022-05-22 23:36:46', '2022-05-22 13:36:46', '', 11, 'http://127.0.0.1/cp3402-2022-1-site-team07/Website/?post_type=acf-field&#038;p=13', 2, 'acf-field', '', 0),
(14, 1, '2022-05-14 02:59:34', '2022-05-14 02:59:34', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:45:\"The Fish Inn on The Stran (near the Rockpool)\";s:11:\"placeholder\";s:45:\"The Fish Inn on The Stran (near the Rockpool)\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Where?', 'underspotlight_where', 'publish', 'closed', 'closed', '', 'field_627f1aa67bd17', '', '', '2022-05-22 23:36:46', '2022-05-22 13:36:46', '', 11, 'http://127.0.0.1/cp3402-2022-1-site-team07/Website/?post_type=acf-field&#038;p=14', 5, 'acf-field', '', 0),
(15, 1, '2022-05-14 02:59:34', '2022-05-14 02:59:34', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:25:\"Sunday 5.00pm till 8.00pm\";s:11:\"placeholder\";s:25:\"Sunday 5.00pm till 8.00pm\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Time?', 'underspotlight_time', 'publish', 'closed', 'closed', '', 'field_627f1ae47bd18', '', '', '2022-05-22 23:36:46', '2022-05-22 13:36:46', '', 11, 'http://127.0.0.1/cp3402-2022-1-site-team07/Website/?post_type=acf-field&#038;p=15', 6, 'acf-field', '', 0),
(16, 1, '2022-05-14 02:59:34', '2022-05-14 02:59:34', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:32:\"Check the Program page for dates\";s:11:\"placeholder\";s:32:\"Check the Program page for dates\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Date?', 'underspotlight_date', 'publish', 'closed', 'closed', '', 'field_627f1b007bd19', '', '', '2022-05-22 23:36:46', '2022-05-22 13:36:46', '', 11, 'http://127.0.0.1/cp3402-2022-1-site-team07/Website/?post_type=acf-field&#038;p=16', 7, 'acf-field', '', 0),
(17, 1, '2022-05-14 03:00:03', '2022-05-14 03:00:03', '<!-- wp:heading -->\n<h2>Come &amp; enjoy our regular jazz nights</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We feature a range of very talented local bands playing great jazz music in a relaxed yet vibrant environment. The regular jazz nights feature a sit-in bracket and dancers are most welcome. Meals and bar&nbsp;<a href=\"#\">facility available</a>. No need to book.</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-05-14 03:00:03', '2022-05-14 03:00:03', '', 5, 'http://127.0.0.1/cp3402-2022-1-site-team07/Website/?p=17', 0, 'revision', '', 0),
(18, 1, '2022-05-14 03:04:41', '2022-05-14 03:04:41', '<!-- wp:heading -->\n<h2>Come &amp; enjoy our regular jazz nights</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We feature a range of very talented local bands playing great jazz music in a relaxed yet vibrant environment. The regular jazz nights feature a sit-in bracket and dancers are most welcome. Meals and bar&nbsp;<a href=\"#\">facility available</a>. No need to book.</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-05-14 03:04:41', '2022-05-14 03:04:41', '', 5, 'http://127.0.0.1/cp3402-2022-1-site-team07/Website/?p=18', 0, 'revision', '', 0),
(19, 1, '2022-05-14 03:04:47', '2022-05-14 03:04:47', '<!-- wp:heading -->\n<h2>Come &amp; enjoy our regular jazz nights</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We feature a range of very talented local bands playing great jazz music in a relaxed yet vibrant environment. The regular jazz nights feature a sit-in bracket and dancers are most welcome. Meals and bar&nbsp;<a href=\"#\">facility available</a>. No need to book.</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-05-14 03:04:47', '2022-05-14 03:04:47', '', 5, 'http://127.0.0.1/cp3402-2022-1-site-team07/Website/?p=19', 0, 'revision', '', 0),
(20, 1, '2022-05-14 03:04:58', '2022-05-14 03:04:58', '<!-- wp:heading -->\n<h2>Come &amp; enjoy our regular jazz nights</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We feature a range of very talented local bands playing great jazz music in a relaxed yet vibrant environment. The regular jazz nights feature a sit-in bracket and dancers are most welcome. Meals and bar&nbsp;<a href=\"#\">facility available</a>. No need to book.</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-05-14 03:04:58', '2022-05-14 03:04:58', '', 5, 'http://127.0.0.1/cp3402-2022-1-site-team07/Website/?p=20', 0, 'revision', '', 0),
(22, 1, '2022-05-14 04:31:23', '2022-05-14 04:31:23', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://127.0.0.1/cp3402-2022-1-site-team07/Website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymised string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognise and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2022-05-14 04:31:23', '2022-05-14 04:31:23', '', 3, 'http://127.0.0.1/cp3402-2022-1-site-team07/Website/?p=22', 0, 'revision', '', 0),
(23, 1, '2022-05-14 04:31:48', '2022-05-13 18:31:48', '<!-- wp:paragraph -->\n<p>Test</p>\n<!-- /wp:paragraph -->', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2022-05-20 22:41:53', '2022-05-20 12:41:53', '', 0, 'http://127.0.0.1/cp3402-2022-1-site-team07/Website/?page_id=23', 0, 'page', '', 0),
(24, 1, '2022-05-14 04:31:48', '2022-05-14 04:31:48', '', 'Events', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2022-05-14 04:31:48', '2022-05-14 04:31:48', '', 23, 'http://127.0.0.1/cp3402-2022-1-site-team07/Website/?p=24', 0, 'revision', '', 0),
(25, 1, '2022-05-14 04:31:57', '2022-05-14 04:31:57', '<!-- wp:paragraph -->\n<p>The founders of Nth Qld Junior Jazz Inc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Brian Lane<br>Peter Martin<br>Bob Passmore<br>Les Nicholson</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":195,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp71c5eafc_05_06-1.jpg\" alt=\"\" class=\"wp-image-195\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><strong>1997 – 2008 North Queensland Junior Jazz Inc.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Although North Queensland Junior Jazz Inc. was a not a NQ Jazz Club program and operated independently, there was a positive rapport between the two organizations and a willingness by the NQ Jazz Club’s committee to support the aim of Junior Jazz. It is therefore appropriate that Junior Jazz be given the recognition it deserves on the NQ Jazz Club website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The Junior Jazz concept was initiated by Brian Lane who was then ably supported by jazz musicians<br>Les Nicholson, Peter Martin and Bob Passmore.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>From 1997 to 2007 Junior Jazz provided an annual opportunity for high school jazz bands to perform before an audience, including a panel of professional jazz musicians, and to be adjudicated on their performance. This was not a competition but an assessment of each band’s performance against several criteria with feedback given personally to each band leader.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When Junior Jazz started this was perhaps the only opportunity for school bands to demonstrate their interest, understanding and competence in the jazz genre and enthusiasm to take part was very high. One year a record 17 schools took part including bands travelling from Mackay, Charters Towers, Ayr and Ingham as well as several from Townsville. This fantastic participation rate was in no doubt due to the concerted liaison with schools conducted by Junior Jazz President, Brian Lane. &nbsp;As the school music programs gained momentum, students had multiple performance options and Junior Jazz numbers declined until the organisers decided to wind up the North Queensland Junior Jazz Festival Organisation Inc. in 2008. The Directors of Junior Jazz unanimously voted to disperse the remaining Junior Jazz funds to &nbsp;the NQ Jazz Club Inc. subject to the terms and conditions listed in a Memorandum of Understanding signed on 25th July 2008. The sum of $2,412.50 was transferred to the NQ Jazz Club on 28th July 2008 and has been used in accordance with the Memorandum and reported in the Treasurer’s Reports each year since that time.</p>\n<!-- /wp:paragraph -->', 'History', '', 'publish', 'closed', 'closed', '', 'history', '', '', '2022-05-23 00:57:17', '2022-05-22 14:57:17', '', 0, 'http://127.0.0.1/cp3402-2022-1-site-team07/Website/?page_id=25', 0, 'page', '', 0),
(26, 1, '2022-05-14 04:31:57', '2022-05-14 04:31:57', '', 'About', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2022-05-14 04:31:57', '2022-05-14 04:31:57', '', 25, 'http://127.0.0.1/cp3402-2022-1-site-team07/Website/?p=26', 0, 'revision', '', 0),
(27, 1, '2022-05-14 04:32:07', '2022-05-14 04:32:07', '<!-- wp:gallery {\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped\"><!-- wp:image {\"id\":192,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp11e037dd_05_06.jpg\" alt=\"\" class=\"wp-image-192\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":176,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/173485030_292458865619274_1885454902808024696_n-1024x602.jpeg\" alt=\"\" class=\"wp-image-176\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":183,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp326e5d43_05_06.jpg\" alt=\"\" class=\"wp-image-183\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":179,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Opening-night-band-1024x768.jpg\" alt=\"\" class=\"wp-image-179\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":177,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Sit-in-bracket-4-1024x683.jpg\" alt=\"\" class=\"wp-image-177\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":191,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp71c5eafc_05_06.jpg\" alt=\"\" class=\"wp-image-191\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":184,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp9e125d82_05_06.jpg\" alt=\"\" class=\"wp-image-184\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":190,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp73ae0984_05_06.jpg\" alt=\"\" class=\"wp-image-190\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":185,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp6c5de4ed_05_06.jpg\" alt=\"\" class=\"wp-image-185\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":182,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp37a0e7f6_05_06.jpg\" alt=\"\" class=\"wp-image-182\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":187,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp25f7a282_05_06.jpg\" alt=\"\" class=\"wp-image-187\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":186,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp9c68b804_05_06.jpg\" alt=\"\" class=\"wp-image-186\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":178,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Sit-in-bracket-3-1024x683.jpg\" alt=\"\" class=\"wp-image-178\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":189,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp48fd89be_05_06.jpg\" alt=\"\" class=\"wp-image-189\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":188,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp29b6641d_05_06.jpg\" alt=\"\" class=\"wp-image-188\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":181,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp21ffe78f_05_06.jpg\" alt=\"\" class=\"wp-image-181\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":180,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Gentlemen-of-Jazz-1024x683.jpg\" alt=\"\" class=\"wp-image-180\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->', 'Gallery', '', 'publish', 'closed', 'closed', '', 'gallery', '', '', '2022-05-23 00:49:58', '2022-05-22 14:49:58', '', 0, 'http://127.0.0.1/cp3402-2022-1-site-team07/Website/?page_id=27', 0, 'page', '', 0),
(28, 1, '2022-05-14 04:32:07', '2022-05-14 04:32:07', '', 'Gallery', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2022-05-14 04:32:07', '2022-05-14 04:32:07', '', 27, 'http://127.0.0.1/cp3402-2022-1-site-team07/Website/?p=28', 0, 'revision', '', 0),
(29, 1, '2022-05-14 04:32:15', '2022-05-14 04:32:15', '<!-- wp:html -->\n<div class=\"alert alert-secondary\">To avoid disappointment book early.  Every previous session has booked out early.</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>For booking please call: Coralie Costigan, Club Secretary <strong>0431 618 618</strong> or fill in the <a href=\"#contact-form\" data-type=\"internal\" data-id=\"#contact-form\">contact form</a> and we\'ll get back to you as soon as possible.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Location</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>334 Flinders St, Townsville QLD 4810<br>Hotel Grand Chancellor - First floor Pandora Room - The Sugar Shaker (Lounge Bar)<br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<div class=\"row\">\n<div class=\"col-sm-6\">\n<img class=\"w-100 img-fluid\" src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/our-location-1-1024x491.jpg\" alt=\"location\">\n</div>\n<div class=\"col-sm-6\">\n<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"167\" style=\"margin-bottom:20px; border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\n</div>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p><br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 id=\"contact-form\">Contact us</h2>\n<!-- /wp:heading -->\n\n<!-- wp:wpforms/form-selector {\"formId\":\"94\"} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2022-05-23 01:06:41', '2022-05-22 15:06:41', '', 0, 'http://127.0.0.1/cp3402-2022-1-site-team07/Website/?page_id=29', 0, 'page', '', 0),
(30, 1, '2022-05-14 04:32:15', '2022-05-14 04:32:15', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-05-14 04:32:15', '2022-05-14 04:32:15', '', 29, 'http://127.0.0.1/cp3402-2022-1-site-team07/Website/?p=30', 0, 'revision', '', 0),
(31, 1, '2022-05-14 05:04:34', '2022-05-14 05:04:34', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2022-05-14 05:04:34', '2022-05-14 05:04:34', '', 1, 'http://127.0.0.1/cp3402-2022-1-site-team07/Website/?p=31', 0, 'revision', '', 0),
(32, 1, '2022-05-23 01:44:03', '2022-05-17 09:09:06', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2022-05-23 01:44:03', '2022-05-22 15:44:03', '', 0, 'http://127.0.0.1/cp3402-2022-1-site-team07/Website/?p=32', 1, 'nav_menu_item', '', 0),
(33, 1, '2022-05-23 01:44:03', '2022-05-17 09:09:06', '', 'About', '', 'publish', 'closed', 'closed', '', '33', '', '', '2022-05-23 01:44:03', '2022-05-22 15:44:03', '', 0, 'http://127.0.0.1/cp3402-2022-1-site-team07/Website/?p=33', 3, 'nav_menu_item', '', 0),
(34, 1, '2022-05-23 01:44:03', '2022-05-17 09:09:06', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2022-05-23 01:44:03', '2022-05-22 15:44:03', '', 0, 'http://127.0.0.1/cp3402-2022-1-site-team07/Website/?p=34', 9, 'nav_menu_item', '', 0),
(35, 1, '2022-05-23 01:44:03', '2022-05-17 09:09:06', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2022-05-23 01:44:03', '2022-05-22 15:44:03', '', 0, 'http://127.0.0.1/cp3402-2022-1-site-team07/Website/?p=35', 8, 'nav_menu_item', '', 0),
(36, 1, '2022-05-23 01:44:03', '2022-05-17 09:09:06', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2022-05-23 01:44:03', '2022-05-22 15:44:03', '', 0, 'http://127.0.0.1/cp3402-2022-1-site-team07/Website/?p=36', 7, 'nav_menu_item', '', 0),
(37, 1, '2022-05-20 10:08:05', '2022-05-20 10:08:05', '{\n    \"cnfp_settings[colorlib_404_customizer_select_template]\": {\n        \"value\": \"template_08\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-20 10:08:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '029952e6-c3e0-4a67-bcd9-7b3ecc17ab14', '', '', '2022-05-20 10:08:05', '2022-05-20 10:08:05', '', 0, 'https://boyds.sgedu.site/staging-tjc/2022/05/20/029952e6-c3e0-4a67-bcd9-7b3ecc17ab14/', 0, 'customize_changeset', '', 0),
(39, 1, '2022-05-20 21:48:44', '2022-05-20 11:48:44', '', 'Summertime quintet', '', 'publish', 'open', 'closed', '', 'summertime-quintet', '', '', '2022-05-20 21:48:44', '2022-05-20 11:48:44', '', 0, 'https://boyds.sgedu.site/staging-tjc/?post_type=tribe_events&#038;p=39', 0, 'tribe_events', '', 0),
(40, 1, '2022-05-20 21:46:47', '0000-00-00 00:00:00', '{\n    \"tribe_customizer[global_elements][font_size]\": {\n        \"value\": 0,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-20 11:46:47\"\n    },\n    \"tribe_customizer[global_elements][font_size_base]\": {\n        \"value\": 16,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-20 11:46:47\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'e44ed2fd-383b-4570-8d80-eadd80e714df', '', '', '2022-05-20 21:46:47', '0000-00-00 00:00:00', '', 0, 'https://boyds.sgedu.site/staging-tjc/?p=40', 0, 'customize_changeset', '', 0),
(41, 1, '2022-05-20 21:48:44', '2022-05-20 11:48:44', '', 'Summertime quintet', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2022-05-20 21:48:44', '2022-05-20 11:48:44', '', 39, 'https://boyds.sgedu.site/staging-tjc/?p=41', 0, 'revision', '', 0),
(42, 1, '2022-05-20 21:48:44', '2022-05-20 11:48:44', '', 'Hotel Grand Chancellor', '', 'publish', 'closed', 'closed', '', 'hotel-grand-chancellor', '', '', '2022-05-21 06:18:35', '2022-05-20 20:18:35', '', 0, 'https://boyds.sgedu.site/staging-tjc/venue/hotel-grand-chancellor/', 0, 'tribe_venue', '', 0),
(43, 1, '2022-05-20 21:50:19', '2022-05-20 11:50:19', '', 'News', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2022-05-20 21:50:19', '2022-05-20 11:50:19', '', 23, 'https://boyds.sgedu.site/staging-tjc/?p=43', 0, 'revision', '', 0),
(46, 1, '2022-05-20 22:41:53', '2022-05-20 12:41:53', '<!-- wp:paragraph -->\n<p>Test</p>\n<!-- /wp:paragraph -->', 'News', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2022-05-20 22:41:53', '2022-05-20 12:41:53', '', 23, 'https://boyds.sgedu.site/staging-tjc/?p=46', 0, 'revision', '', 0),
(48, 1, '2022-05-21 04:32:18', '2022-05-20 18:32:18', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-understrap', '', '', '2022-05-21 04:32:18', '2022-05-20 18:32:18', '', 0, 'https://boyds.sgedu.site/staging-tjc/wp-global-styles-understrap/', 0, 'wp_global_styles', '', 0),
(49, 1, '2022-05-21 05:19:06', '2022-05-20 19:19:06', '', 'the-crowd-at-fish-inn', '', 'inherit', 'open', 'closed', '', 'the-crowd-at-fish-inn', '', '', '2022-05-21 05:24:15', '2022-05-20 19:24:15', '', 5, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/the-crowd-at-fish-inn.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2022-05-21 05:19:56', '2022-05-20 19:19:56', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2022-05-21 05:46:52', '2022-05-20 19:46:52', '', 0, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/logo.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2022-05-21 05:20:04', '2022-05-20 19:20:04', '', 'Anthony-and-the-Gentlemen-of-Jazz-', '', 'inherit', 'open', 'closed', '', 'anthony-and-the-gentlemen-of-jazz', '', '', '2022-05-21 05:46:39', '2022-05-20 19:46:39', '', 0, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Anthony-and-the-Gentlemen-of-Jazz-.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2022-05-21 05:20:39', '2022-05-20 19:20:39', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-team-07-theme2', '', '', '2022-05-21 05:20:39', '2022-05-20 19:20:39', '', 0, 'https://boyds.sgedu.site/staging-tjc/wp-global-styles-team-07-theme2/', 0, 'wp_global_styles', '', 0),
(54, 1, '2022-05-21 05:21:58', '2022-05-20 19:21:58', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Homepage Banner', 'homepage_banner', 'publish', 'closed', 'closed', '', 'field_6287c6c12086d', '', '', '2022-05-21 05:21:58', '2022-05-20 19:21:58', '', 11, 'https://boyds.sgedu.site/staging-tjc/?post_type=acf-field&p=54', 0, 'acf-field', '', 0),
(55, 1, '2022-05-21 05:21:58', '2022-05-20 19:21:58', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:439:\"<ol>\r\n<li>Open&nbsp;<a href=\"https://www.google.com/maps\" target=\"_blank\" rel=\"noopener\">Google Maps</a>.</li>\r\n<li>Search for your address.</li>\r\n<li>Click&nbsp;<strong>Share or embed map</strong>.</li>\r\n<li>Click&nbsp;<strong>Embed map</strong>.</li>\r\n<li>To the left of the text box, pick the size you want by clicking the Down arrow&nbsp;.</li>\r\n<li>Copy the text in the box. Paste it into the HTML of your website or blog.</li>\r\n</ol>\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Map', 'map', 'publish', 'closed', 'closed', '', 'field_6287b64b5f899', '', '', '2022-05-22 23:36:46', '2022-05-22 13:36:46', '', 11, 'https://boyds.sgedu.site/staging-tjc/?post_type=acf-field&#038;p=55', 8, 'acf-field', '', 0),
(56, 1, '2022-05-21 05:24:15', '2022-05-20 19:24:15', '<!-- wp:heading -->\n<h2>Come &amp; enjoy our regular jazz nights</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We feature a range of very talented local bands playing great jazz music in a relaxed yet vibrant environment. The regular jazz nights feature a sit-in bracket and dancers are most welcome. Meals and bar&nbsp;<a href=\"#\">facility available</a>. No need to book.</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-05-21 05:24:15', '2022-05-20 19:24:15', '', 5, 'https://boyds.sgedu.site/staging-tjc/?p=56', 0, 'revision', '', 0),
(58, 1, '2022-05-21 05:46:26', '2022-05-20 19:46:26', '', 'band-1', '', 'inherit', 'open', 'closed', '', 'band-1', '', '', '2022-05-21 05:46:49', '2022-05-20 19:46:49', '', 0, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/band-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2022-05-21 05:46:26', '2022-05-20 19:46:26', '', 'band-2', '', 'inherit', 'open', 'closed', '', 'band-2', '', '', '2022-05-21 05:46:46', '2022-05-20 19:46:46', '', 0, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/band-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2022-05-21 05:46:26', '2022-05-20 19:46:26', '', 'band-3', '', 'inherit', 'open', 'closed', '', 'band-3', '', '', '2022-05-21 05:46:43', '2022-05-20 19:46:43', '', 0, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/band-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2022-05-21 05:46:27', '2022-05-20 19:46:27', '', 'Juhl-Atkinson-1', '', 'inherit', 'open', 'closed', '', 'juhl-atkinson-1', '', '', '2022-05-21 05:46:27', '2022-05-20 19:46:27', '', 0, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Juhl-Atkinson-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2022-05-21 05:52:59', '2022-05-20 19:52:59', '<h2><img class=\"alignleft wp-image-42\" src=\"/wp-content/uploads/2022/05/Anthony-and-the-Gentlemen-of-Jazz-1.jpg\" alt=\"Anthony-and-the-Gentlemen-of-Jazz--1\" width=\"540\" height=\"360\">Come &amp; enjoy our regular jazz nights</h2>\nOur friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\n\nWe feature a range of very talented local bands playing great jazz music in a relaxed yet vibrant environment. The regular jazz nights feature a sit-in bracket and dancers are most welcome. Meals and bar <a href=\"#\">facility available</a>. No need to book.', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-05-21 05:52:59', '2022-05-20 19:52:59', '', 5, 'https://boyds.sgedu.site/staging-tjc/?p=62', 0, 'revision', '', 0),
(64, 1, '2022-05-21 05:54:42', '2022-05-20 19:54:42', '<h2><img class=\"alignleft wp-image-42\" src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Anthony-and-the-Gentlemen-of-Jazz-.jpg\" alt=\"Anthony-and-the-Gentlemen-of-Jazz--1\" width=\"540\" height=\"360\">Come &amp; enjoy our regular jazz nights</h2>\nOur friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\n\nWe feature a range of very talented local bands playing great jazz music in a relaxed yet vibrant environment. The regular jazz nights feature a sit-in bracket and dancers are most welcome. Meals and bar <a href=\"#\">facility available</a>. No need to book.', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-05-21 05:54:42', '2022-05-20 19:54:42', '', 5, 'https://boyds.sgedu.site/staging-tjc/?p=64', 0, 'revision', '', 0),
(65, 1, '2022-05-21 05:55:23', '2022-05-20 19:55:23', '{\n    \"team-07-theme2::custom_logo\": {\n        \"value\": 51,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-20 19:55:23\"\n    },\n    \"tribe_customizer[global_elements][font_size]\": {\n        \"value\": 0,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-20 19:55:23\"\n    },\n    \"tribe_customizer[global_elements][font_size_base]\": {\n        \"value\": 16,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-20 19:55:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '15deb28c-a83f-4164-b1fa-57772702c18d', '', '', '2022-05-21 05:55:23', '2022-05-20 19:55:23', '', 0, 'https://boyds.sgedu.site/staging-tjc/15deb28c-a83f-4164-b1fa-57772702c18d/', 0, 'customize_changeset', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(66, 1, '2022-05-23 01:44:03', '2022-05-20 19:58:55', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2022-05-23 01:44:03', '2022-05-22 15:44:03', '', 0, 'https://boyds.sgedu.site/staging-tjc/?p=66', 2, 'nav_menu_item', '', 0),
(67, 1, '2022-05-21 06:19:05', '2022-05-20 20:19:05', '', 'Doug Lye 80th Birthday Bash', '', 'publish', 'open', 'closed', '', 'doug-lye-80th-birthday-bash', '', '', '2022-05-21 06:19:05', '2022-05-20 20:19:05', '', 0, 'https://boyds.sgedu.site/staging-tjc/?post_type=tribe_events&#038;p=67', 0, 'tribe_events', '', 0),
(68, 1, '2022-05-21 06:18:35', '2022-05-20 20:18:35', '', 'Hotel Grand Chancellor', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2022-05-21 06:18:35', '2022-05-20 20:18:35', '', 42, 'https://boyds.sgedu.site/staging-tjc/?p=68', 0, 'revision', '', 0),
(69, 1, '2022-05-21 06:19:05', '2022-05-20 20:19:05', '', 'Doug Lye 80th Birthday Bash', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2022-05-21 06:19:05', '2022-05-20 20:19:05', '', 67, 'https://boyds.sgedu.site/staging-tjc/?p=69', 0, 'revision', '', 0),
(70, 1, '2022-05-21 06:26:25', '2022-05-20 20:26:25', '', 'JUNIOR JAMMERS  Lounde Bar Sugar Shaker', '', 'publish', 'open', 'closed', '', 'junior-jammers-lounde-bar-sugar-shaker', '', '', '2022-05-21 06:26:25', '2022-05-20 20:26:25', '', 0, 'https://boyds.sgedu.site/staging-tjc/?post_type=tribe_events&#038;p=70', 0, 'tribe_events', '', 0),
(71, 1, '2022-05-21 06:26:25', '2022-05-20 20:26:25', '', 'JUNIOR JAMMERS  Lounde Bar Sugar Shaker', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2022-05-21 06:26:25', '2022-05-20 20:26:25', '', 70, 'https://boyds.sgedu.site/staging-tjc/?p=71', 0, 'revision', '', 0),
(72, 1, '2022-05-21 06:26:25', '2022-05-20 20:26:25', '', 'Townsville Jazz Club', '', 'publish', 'closed', 'closed', '', 'townsville-jazz-club', '', '', '2022-05-21 06:26:25', '2022-05-20 20:26:25', '', 0, 'https://boyds.sgedu.site/staging-tjc/organiser/townsville-jazz-club/', 0, 'tribe_organizer', '', 0),
(73, 1, '2022-05-21 14:07:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-05-21 14:07:22', '0000-00-00 00:00:00', '', 0, 'https://boyds.sgedu.site/staging-tjc/?p=73', 0, 'post', '', 0),
(75, 1, '2022-05-21 15:34:18', '2022-05-21 05:34:18', '<!-- wp:heading -->\n<h2>Come &amp; enjoy our regular jazz nights</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We feature a range of very talented local bands playing great jazz music in a relaxed yet vibrant environment. The regular jazz nights feature a sit-in bracket and dancers are most welcome. Meals and bar&nbsp;<a href=\"#\">facility available</a>. No need to book.</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-05-21 15:34:18', '2022-05-21 05:34:18', '', 5, 'https://boyds.sgedu.site/staging-tjc/?p=75', 0, 'revision', '', 0),
(76, 1, '2022-05-21 15:34:18', '2022-05-21 05:34:18', '<!-- wp:heading -->\n<h2>Come &amp; enjoy our regular jazz nights</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We feature a range of very talented local bands playing great jazz music in a relaxed yet vibrant environment. The regular jazz nights feature a sit-in bracket and dancers are most welcome. Meals and bar&nbsp;<a href=\"#\">facility available</a>. No need to book.</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-05-21 15:34:18', '2022-05-21 05:34:18', '', 5, 'https://boyds.sgedu.site/staging-tjc/?p=76', 0, 'revision', '', 0),
(77, 1, '2022-05-21 16:11:18', '2022-05-21 06:11:18', '<h2><img class=\"alignleft wp-image-42\" src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Anthony-and-the-Gentlemen-of-Jazz-.jpg\" alt=\"Anthony-and-the-Gentlemen-of-Jazz--1\" width=\"540\" height=\"360\" />Come &amp; enjoy our regular jazz nights</h2>\nOur friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\n\nWe feature a range of very talented local bands playing great jazz music in a relaxed yet vibrant environment. The regular jazz nights feature a sit-in bracket and dancers are most welcome. Meals and bar <a href=\"#\">facility available</a>. No need to book.', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-05-21 16:11:18', '2022-05-21 06:11:18', '', 5, 'https://boyds.sgedu.site/staging-tjc/?p=77', 0, 'revision', '', 0),
(78, 1, '2022-05-21 16:11:18', '2022-05-21 06:11:18', '<h2><img class=\"alignleft wp-image-42\" src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Anthony-and-the-Gentlemen-of-Jazz-.jpg\" alt=\"Anthony-and-the-Gentlemen-of-Jazz--1\" width=\"540\" height=\"360\" />Come &amp; enjoy our regular jazz nights</h2>\nOur friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\n\nWe feature a range of very talented local bands playing great jazz music in a relaxed yet vibrant environment. The regular jazz nights feature a sit-in bracket and dancers are most welcome. Meals and bar <a href=\"#\">facility available</a>. No need to book.', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-05-21 16:11:18', '2022-05-21 06:11:18', '', 5, 'https://boyds.sgedu.site/staging-tjc/?p=78', 0, 'revision', '', 0),
(79, 1, '2022-05-21 17:37:49', '2022-05-21 07:37:49', '<!-- wp:paragraph -->\n<p>PMJB is to the best of our knowledge Queensland\'s longest running jazz band and was founded in February 1974.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Original members of the band were:<br>Jan Aleman – Guitar<br>Larry Thomson – Trombone<br>Paul Waters – Clarinet<br>Ivan Hauri – Clarinet<br>Luke Portier – Bass<br>Bob Hebden – Drums<br>Les Nicholson – Trumpet</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In 1975 not long after starting John Ruffle and Nev Minon joined the band and Bob Passmore and Red Huxley joined around 1985.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In 1978 PMJB recorded the first ever locally recorded and produced vinyl album engineered by Eric Ball. PMJB has recorded on ABC radio with Gospel singer Shereen Malamoo and in 1982 had its own three-show jazz series on Channel 7 Television titled Front Line Jazz.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>PMJB has appeared at Festivals all over Queensland and appeared at the Australian Jazz Festival in</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1978.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The band\'s music style supports its name and the music ranges from early Trad, to mainstream, to swing with a hint of modern.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The band’s motto is take the music seriously but not yourself.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>John, Nev, Red, Bob (Passmore) and Les are still in the band which plays on the 4th Sunday of each month as the house band for the Townsville Jazz Club.</p>\n<!-- /wp:paragraph -->', 'The new Pacific Mainstream Jazz Band', '', 'publish', 'closed', 'closed', '', 'the-new-pacific-mainstream-jazz-band', '', '', '2022-05-21 17:37:49', '2022-05-21 07:37:49', '', 0, 'https://boyds.sgedu.site/staging-tjc/?post_type=band&#038;p=79', 0, 'band', '', 0),
(80, 1, '2022-05-21 17:37:24', '2022-05-21 07:37:24', '', 'The new Pacific Mainstream Jazz Band 2014', '', 'inherit', 'open', 'closed', '', 'wpa296f048_05_06', '', '', '2022-05-21 17:37:31', '2022-05-21 07:37:31', '', 79, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wpa296f048_05_06.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2022-05-22 00:02:20', '0000-00-00 00:00:00', '{\n    \"tribe_customizer[global_elements][font_size]\": {\n        \"value\": 0,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-21 14:02:20\"\n    },\n    \"tribe_customizer[global_elements][font_size_base]\": {\n        \"value\": 16,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-21 14:02:20\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '70629074-bdbc-44cf-94eb-601d76f406cf', '', '', '2022-05-22 00:02:20', '0000-00-00 00:00:00', '', 0, 'https://boyds.sgedu.site/staging-tjc/?p=81', 0, 'customize_changeset', '', 0),
(82, 1, '2022-05-22 13:03:30', '0000-00-00 00:00:00', '{\n    \"tribe_customizer[global_elements][font_size]\": {\n        \"value\": 0,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-22 03:03:30\"\n    },\n    \"tribe_customizer[global_elements][font_size_base]\": {\n        \"value\": 16,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-22 03:03:30\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '9030eb36-ff58-4281-9159-f2a6e9099da8', '', '', '2022-05-22 13:03:30', '0000-00-00 00:00:00', '', 0, 'https://boyds.sgedu.site/staging-tjc/?p=82', 0, 'customize_changeset', '', 0),
(83, 1, '2022-05-22 14:03:02', '2022-05-22 04:03:02', '<!-- wp:paragraph -->\n<p>s</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"400\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\n<!-- /wp:html -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-05-22 14:03:02', '2022-05-22 04:03:02', '', 29, 'https://boyds.sgedu.site/staging-tjc/?p=83', 0, 'revision', '', 0),
(86, 1, '2022-05-22 14:12:29', '2022-05-22 04:12:29', '', 'our-location', '', 'inherit', 'open', 'closed', '', 'our-location', '', '', '2022-05-22 14:12:29', '2022-05-22 04:12:29', '', 0, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/our-location.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2022-05-22 14:12:48', '2022-05-22 04:12:48', '', 'our-location-1', '', 'inherit', 'open', 'closed', '', 'our-location-1', '', '', '2022-05-22 14:12:48', '2022-05-22 04:12:48', '', 29, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/our-location-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2022-05-22 14:12:53', '2022-05-22 04:12:53', '<!-- wp:paragraph -->\n<p>Feel free to contact us regarding bookings: </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Phone Coralie Costigan, Club Secretary 0431 618 618</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We are located at:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":87,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/our-location-1-1024x491.jpg\" alt=\"\" class=\"wp-image-87\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:html -->\n<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"400\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\n<!-- /wp:html -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-05-22 14:12:53', '2022-05-22 04:12:53', '', 29, 'https://boyds.sgedu.site/staging-tjc/?p=88', 0, 'revision', '', 0),
(89, 1, '2022-05-22 14:18:09', '2022-05-22 04:18:09', '<!-- wp:paragraph -->\n<p>Feel free to contact us regarding bookings: </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Phone Coralie Costigan, Club Secretary <strong>0431 618 618</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<div class=\"alert alert-warning\">To avoid disappointment book early.  Every previous session has booked out early.</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We are located at:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>334 Flinders St, Townsville QLD 4810</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":87,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/our-location-1-1024x491.jpg\" alt=\"\" class=\"wp-image-87\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:html -->\n<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"400\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\n<!-- /wp:html -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-05-22 14:18:09', '2022-05-22 04:18:09', '', 29, 'https://boyds.sgedu.site/staging-tjc/?p=89', 0, 'revision', '', 0),
(91, 1, '2022-05-22 21:57:16', '2022-05-22 11:57:16', '<!-- wp:html -->\n<div class=\"alert alert-warning\">To avoid disappointment book early.  Every previous session has booked out early.</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>Feel free to contact us regarding bookings: </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Phone Coralie Costigan, Club Secretary <strong>0431 618 618</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We are located at:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>334 Flinders St, Townsville QLD 4810</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":87,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/our-location-1-1024x491.jpg\" alt=\"\" class=\"wp-image-87\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:html -->\n<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"400\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\n<!-- /wp:html -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-05-22 21:57:16', '2022-05-22 11:57:16', '', 29, 'https://boyds.sgedu.site/staging-tjc/?p=91', 0, 'revision', '', 0),
(92, 1, '2022-05-22 21:58:18', '2022-05-22 11:58:18', '<!-- wp:html -->\n<div class=\"alert alert-warning\">To avoid disappointment book early.  Every previous session has booked out early.</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>Feel free to contact us regarding bookings: </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Phone Coralie Costigan, Club Secretary <strong>0431 618 618</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Location</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>334 Flinders St, Townsville QLD 4810</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":87,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/our-location-1-1024x491.jpg\" alt=\"\" class=\"wp-image-87\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:html -->\n<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"400\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\n<!-- /wp:html -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-05-22 21:58:18', '2022-05-22 11:58:18', '', 29, 'https://boyds.sgedu.site/staging-tjc/?p=92', 0, 'revision', '', 0),
(93, 1, '2022-05-22 21:59:33', '2022-05-22 11:59:33', '<!-- wp:html -->\n<div class=\"alert alert-warning\">To avoid disappointment book early.  Every previous session has booked out early.</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>Feel free to contact us regarding bookings: </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Phone Coralie Costigan, Club Secretary <strong>0431 618 618</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Location</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>334 Flinders St, Townsville QLD 4810</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":87,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/our-location-1-1024x491.jpg\" alt=\"\" class=\"wp-image-87\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:html -->\n<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"200\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\n<!-- /wp:html -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-05-22 21:59:33', '2022-05-22 11:59:33', '', 29, 'https://boyds.sgedu.site/staging-tjc/?p=93', 0, 'revision', '', 0),
(94, 1, '2022-05-22 22:06:03', '2022-05-22 12:06:03', '{\"fields\":{\"0\":{\"id\":\"0\",\"type\":\"name\",\"label\":\"Name\",\"format\":\"first-last\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},\"1\":{\"id\":\"1\",\"type\":\"email\",\"label\":\"Email\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":\"\",\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\",\"css\":\"\"},\"3\":{\"id\":\"3\",\"type\":\"select\",\"label\":\"Reason for contact\",\"choices\":{\"1\":{\"default\":\"1\",\"label\":\"General enquiry\",\"value\":\"\",\"image\":\"\"},\"2\":{\"label\":\"Booking\",\"value\":\"\",\"image\":\"\"},\"3\":{\"label\":\"Feedback\",\"value\":\"\",\"image\":\"\"}},\"description\":\"\",\"style\":\"classic\",\"size\":\"medium\",\"placeholder\":\"\",\"dynamic_choices\":\"\",\"css\":\"\"},\"2\":{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"Comment or Message\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"css\":\"\"}},\"id\":\"94\",\"field_id\":4,\"settings\":{\"form_title\":\"Simple Contact Form\",\"form_desc\":\"\",\"submit_text\":\"Submit\",\"submit_text_processing\":\"Sending...\",\"antispam\":\"1\",\"form_class\":\"\",\"submit_class\":\"\",\"ajax_submit\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Entry: Simple Contact Form\",\"sender_name\":\"Townsville Jazz Club\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"25\",\"redirect\":\"\"}}},\"meta\":{\"template\":\"4dbf022985a4fe4bda4a80365011a3a0\"}}', 'Simple Contact Form', '', 'publish', 'closed', 'closed', '', 'simple-contact-form', '', '', '2022-05-22 22:09:23', '2022-05-22 12:09:23', '', 0, 'https://boyds.sgedu.site/staging-tjc/?post_type=wpforms&#038;p=94', 0, 'wpforms', '', 0),
(95, 1, '2022-05-22 22:06:05', '2022-05-22 12:06:05', '{\"fields\":[{\"id\":\"0\",\"type\":\"name\",\"label\":\"Name\",\"format\":\"first-last\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},{\"id\":\"1\",\"type\":\"email\",\"label\":\"Email\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":\"\",\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\",\"css\":\"\"},{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"Comment or Message\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"css\":\"\"}],\"id\":\"94\",\"field_id\":3,\"settings\":{\"form_title\":\"Simple Contact Form\",\"form_desc\":\"\",\"submit_text\":\"Submit\",\"submit_text_processing\":\"Sending...\",\"antispam\":\"1\",\"form_class\":\"\",\"submit_class\":\"\",\"ajax_submit\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Entry: Simple Contact Form\",\"sender_name\":\"Townsville Jazz Club\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"25\",\"redirect\":\"\"}}},\"meta\":{\"template\":\"4dbf022985a4fe4bda4a80365011a3a0\"}}', 'Simple Contact Form', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2022-05-22 22:06:05', '2022-05-22 12:06:05', '', 94, 'https://boyds.sgedu.site/staging-tjc/?p=95', 0, 'revision', '', 0),
(96, 1, '2022-05-22 22:09:23', '2022-05-22 12:09:23', '{\"fields\":{\"0\":{\"id\":\"0\",\"type\":\"name\",\"label\":\"Name\",\"format\":\"first-last\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},\"1\":{\"id\":\"1\",\"type\":\"email\",\"label\":\"Email\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":\"\",\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\",\"css\":\"\"},\"3\":{\"id\":\"3\",\"type\":\"select\",\"label\":\"Reason for contact\",\"choices\":{\"1\":{\"default\":\"1\",\"label\":\"General enquiry\",\"value\":\"\",\"image\":\"\"},\"2\":{\"label\":\"Booking\",\"value\":\"\",\"image\":\"\"},\"3\":{\"label\":\"Feedback\",\"value\":\"\",\"image\":\"\"}},\"description\":\"\",\"style\":\"classic\",\"size\":\"medium\",\"placeholder\":\"\",\"dynamic_choices\":\"\",\"css\":\"\"},\"2\":{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"Comment or Message\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"css\":\"\"}},\"id\":\"94\",\"field_id\":4,\"settings\":{\"form_title\":\"Simple Contact Form\",\"form_desc\":\"\",\"submit_text\":\"Submit\",\"submit_text_processing\":\"Sending...\",\"antispam\":\"1\",\"form_class\":\"\",\"submit_class\":\"\",\"ajax_submit\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Entry: Simple Contact Form\",\"sender_name\":\"Townsville Jazz Club\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"25\",\"redirect\":\"\"}}},\"meta\":{\"template\":\"4dbf022985a4fe4bda4a80365011a3a0\"}}', 'Simple Contact Form', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2022-05-22 22:09:23', '2022-05-22 12:09:23', '', 94, 'https://boyds.sgedu.site/staging-tjc/?p=96', 0, 'revision', '', 0),
(97, 1, '2022-05-22 22:09:58', '2022-05-22 12:09:58', '<!-- wp:html -->\n<div class=\"alert alert-warning\">To avoid disappointment book early.  Every previous session has booked out early.</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>Feel free to contact us regarding bookings: </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Phone Coralie Costigan, Club Secretary <strong>0431 618 618</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Location</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>334 Flinders St, Townsville QLD 4810</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":87,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/our-location-1-1024x491.jpg\" alt=\"\" class=\"wp-image-87\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:html -->\n<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"200\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\n<!-- /wp:html -->\n\n<!-- wp:wpforms/form-selector {\"formId\":\"94\"} /-->', 'Contact', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-05-22 22:09:58', '2022-05-22 12:09:58', '', 29, 'https://boyds.sgedu.site/staging-tjc/?p=97', 0, 'revision', '', 0),
(99, 1, '2022-05-22 22:12:57', '2022-05-22 12:12:57', '<!-- wp:html -->\n<div class=\"alert alert-warning\">To avoid disappointment book early.  Every previous session has booked out early.</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>Feel free to contact us regarding bookings: </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Phone Coralie Costigan, Club Secretary <strong>0431 618 618</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Location</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>334 Flinders St, Townsville QLD 4810</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":87,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/our-location-1-1024x491.jpg\" alt=\"\" class=\"wp-image-87\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:html -->\n<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"200\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\n<!-- /wp:html -->\n\n<!-- wp:heading -->\n<h2>Contact us</h2>\n<!-- /wp:heading -->\n\n<!-- wp:wpforms/form-selector {\"formId\":\"94\"} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-05-22 22:12:57', '2022-05-22 12:12:57', '', 29, 'https://boyds.sgedu.site/staging-tjc/?p=99', 0, 'revision', '', 0),
(100, 1, '2022-05-22 22:14:06', '2022-05-22 12:14:06', '<!-- wp:html -->\n<div class=\"alert alert-warning\">To avoid disappointment book early.  Every previous session has booked out early.</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>Feel free to contact us regarding bookings: </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Phone Coralie Costigan, Club Secretary <strong>0431 618 618</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Location</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>334 Flinders St, Townsville QLD 4810</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":87,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/our-location-1-1024x491.jpg\" alt=\"\" class=\"wp-image-87\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:html -->\n<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"200\" style=\"margin-bottom:20px; border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\n<!-- /wp:html -->\n\n<!-- wp:heading -->\n<h2>Contact us</h2>\n<!-- /wp:heading -->\n\n<!-- wp:wpforms/form-selector {\"formId\":\"94\"} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-05-22 22:14:06', '2022-05-22 12:14:06', '', 29, 'https://boyds.sgedu.site/staging-tjc/?p=100', 0, 'revision', '', 0),
(102, 1, '2022-05-22 22:18:14', '2022-05-22 12:18:14', '<!-- wp:html -->\n<div class=\"alert alert-warning\">To avoid disappointment book early.  Every previous session has booked out early.</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>Feel free to contact us regarding bookings: </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Call: Coralie Costigan, Club Secretary <strong>0431 618 618</strong> or fill in the <a href=\"#contact-form\" data-type=\"internal\" data-id=\"#contact-form\">contact form</a> and we\'ll get back to you as soon as possible.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Location</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>334 Flinders St, Townsville QLD 4810</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":87,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/our-location-1-1024x491.jpg\" alt=\"\" class=\"wp-image-87\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:html -->\n<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"200\" style=\"margin-bottom:20px; border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\n<!-- /wp:html -->\n\n<!-- wp:heading -->\n<h2 id=\"contact-form\">Contact us</h2>\n<!-- /wp:heading -->\n\n<!-- wp:wpforms/form-selector {\"formId\":\"94\"} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-05-22 22:18:14', '2022-05-22 12:18:14', '', 29, 'https://boyds.sgedu.site/staging-tjc/?p=102', 0, 'revision', '', 0),
(103, 1, '2022-05-22 22:18:42', '2022-05-22 12:18:42', '<!-- wp:html -->\n<div class=\"alert alert-info\">To avoid disappointment book early.  Every previous session has booked out early.</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>Feel free to contact us regarding bookings: </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Call: Coralie Costigan, Club Secretary <strong>0431 618 618</strong> or fill in the <a href=\"#contact-form\" data-type=\"internal\" data-id=\"#contact-form\">contact form</a> and we\'ll get back to you as soon as possible.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Location</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>334 Flinders St, Townsville QLD 4810</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":87,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/our-location-1-1024x491.jpg\" alt=\"\" class=\"wp-image-87\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:html -->\n<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"200\" style=\"margin-bottom:20px; border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\n<!-- /wp:html -->\n\n<!-- wp:heading -->\n<h2 id=\"contact-form\">Contact us</h2>\n<!-- /wp:heading -->\n\n<!-- wp:wpforms/form-selector {\"formId\":\"94\"} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-05-22 22:18:42', '2022-05-22 12:18:42', '', 29, 'https://boyds.sgedu.site/staging-tjc/?p=103', 0, 'revision', '', 0),
(104, 1, '2022-05-22 22:19:46', '2022-05-22 12:19:46', '<!-- wp:html -->\n<div class=\"alert alert-info\">To avoid disappointment book early.  Every previous session has booked out early.</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>For booking please call: Coralie Costigan, Club Secretary <strong>0431 618 618</strong> or fill in the <a href=\"#contact-form\" data-type=\"internal\" data-id=\"#contact-form\">contact form</a> and we\'ll get back to you as soon as possible.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Location</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>334 Flinders St, Townsville QLD 4810</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":87,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/our-location-1-1024x491.jpg\" alt=\"\" class=\"wp-image-87\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:html -->\n<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"200\" style=\"margin-bottom:20px; border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\n<!-- /wp:html -->\n\n<!-- wp:heading -->\n<h2 id=\"contact-form\">Contact us</h2>\n<!-- /wp:heading -->\n\n<!-- wp:wpforms/form-selector {\"formId\":\"94\"} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-05-22 22:19:46', '2022-05-22 12:19:46', '', 29, 'https://boyds.sgedu.site/staging-tjc/?p=104', 0, 'revision', '', 0),
(105, 1, '2022-05-22 22:22:53', '2022-05-22 12:22:53', '<!-- wp:html -->\n<div class=\"alert alert-info\">To avoid disappointment book early.  Every previous session has booked out early.</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>For booking please call: Coralie Costigan, Club Secretary <strong>0431 618 618</strong> or fill in the <a href=\"#contact-form\" data-type=\"internal\" data-id=\"#contact-form\">contact form</a> and we\'ll get back to you as soon as possible.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Location</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>334 Flinders St, Townsville QLD 4810</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":87,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/our-location-1-1024x491.jpg\" alt=\"\" class=\"wp-image-87\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:html -->\n<div class=\"col-md-6\">\n<img class=\"w-100 img-fluid\" src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/our-location-1-1024x491.jpg\" alt=\"location\"/>\n</div>\n<div class=\"col-md-6\">\n<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"200\" style=\"margin-bottom:20px; border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:heading -->\n<h2 id=\"contact-form\">Contact us</h2>\n<!-- /wp:heading -->\n\n<!-- wp:wpforms/form-selector {\"formId\":\"94\"} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-05-22 22:22:53', '2022-05-22 12:22:53', '', 29, 'https://boyds.sgedu.site/staging-tjc/?p=105', 0, 'revision', '', 0),
(106, 1, '2022-05-22 22:23:15', '2022-05-22 12:23:15', '<!-- wp:html -->\n<div class=\"alert alert-info\">To avoid disappointment book early.  Every previous session has booked out early.</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>For booking please call: Coralie Costigan, Club Secretary <strong>0431 618 618</strong> or fill in the <a href=\"#contact-form\" data-type=\"internal\" data-id=\"#contact-form\">contact form</a> and we\'ll get back to you as soon as possible.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Location</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>334 Flinders St, Townsville QLD 4810</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":87,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/our-location-1-1024x491.jpg\" alt=\"\" class=\"wp-image-87\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:html -->\n<div class=\"col-sm-6\">\n<img class=\"w-100 img-fluid\" src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/our-location-1-1024x491.jpg\" alt=\"location\"/>\n</div>\n<div class=\"col-sm-6\">\n<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"200\" style=\"margin-bottom:20px; border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:heading -->\n<h2 id=\"contact-form\">Contact us</h2>\n<!-- /wp:heading -->\n\n<!-- wp:wpforms/form-selector {\"formId\":\"94\"} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-05-22 22:23:15', '2022-05-22 12:23:15', '', 29, 'https://boyds.sgedu.site/staging-tjc/?p=106', 0, 'revision', '', 0),
(107, 1, '2022-05-22 22:24:44', '2022-05-22 12:24:44', '<!-- wp:html -->\n<div class=\"alert alert-info\">To avoid disappointment book early.  Every previous session has booked out early.</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>For booking please call: Coralie Costigan, Club Secretary <strong>0431 618 618</strong> or fill in the <a href=\"#contact-form\" data-type=\"internal\" data-id=\"#contact-form\">contact form</a> and we\'ll get back to you as soon as possible.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Location</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>334 Flinders St, Townsville QLD 4810</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":87,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/our-location-1-1024x491.jpg\" alt=\"\" class=\"wp-image-87\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:html -->\n<div class=\"row\">\n<div class=\"col-sm-6\">\n<img class=\"w-100 img-fluid\" src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/our-location-1-1024x491.jpg\" alt=\"location\"/>\n</div>\n<div class=\"col-sm-6\">\n<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"200\" style=\"margin-bottom:20px; border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\n</div>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:heading -->\n<h2 id=\"contact-form\">Contact us</h2>\n<!-- /wp:heading -->\n\n<!-- wp:wpforms/form-selector {\"formId\":\"94\"} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-05-22 22:24:44', '2022-05-22 12:24:44', '', 29, 'https://boyds.sgedu.site/staging-tjc/?p=107', 0, 'revision', '', 0),
(108, 1, '2022-05-22 22:35:57', '2022-05-22 12:35:57', '<!-- wp:html -->\n<div class=\"alert alert-info\">To avoid disappointment book early.  Every previous session has booked out early.</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>For booking please call: Coralie Costigan, Club Secretary <strong>0431 618 618</strong> or fill in the <a href=\"#contact-form\" data-type=\"internal\" data-id=\"#contact-form\">contact form</a> and we\'ll get back to you as soon as possible.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Location</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>334 Flinders St, Townsville QLD 4810</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":87,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/our-location-1-1024x491.jpg\" alt=\"\" class=\"wp-image-87\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:html -->\n<div class=\"row\">\n<div class=\"col-sm-6\">\n<img class=\"w-100 img-fluid\" src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/our-location-1-1024x491.jpg\" alt=\"location\"/>\n</div>\n<div class=\"col-sm-6\">\n<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"167\" style=\"margin-bottom:20px; border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\n</div>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:heading -->\n<h2 id=\"contact-form\">Contact us</h2>\n<!-- /wp:heading -->\n\n<!-- wp:wpforms/form-selector {\"formId\":\"94\"} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-05-22 22:35:57', '2022-05-22 12:35:57', '', 29, 'https://boyds.sgedu.site/staging-tjc/?p=108', 0, 'revision', '', 0),
(109, 1, '2022-05-22 22:36:12', '2022-05-22 12:36:12', '<!-- wp:html -->\n<div class=\"alert alert-info\">To avoid disappointment book early.  Every previous session has booked out early.</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>For booking please call: Coralie Costigan, Club Secretary <strong>0431 618 618</strong> or fill in the <a href=\"#contact-form\" data-type=\"internal\" data-id=\"#contact-form\">contact form</a> and we\'ll get back to you as soon as possible.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Location</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>334 Flinders St, Townsville QLD 4810</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<div class=\"row\">\n<div class=\"col-sm-6\">\n<img class=\"w-100 img-fluid\" src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/our-location-1-1024x491.jpg\" alt=\"location\"/>\n</div>\n<div class=\"col-sm-6\">\n<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"167\" style=\"margin-bottom:20px; border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\n</div>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:heading -->\n<h2 id=\"contact-form\">Contact us</h2>\n<!-- /wp:heading -->\n\n<!-- wp:wpforms/form-selector {\"formId\":\"94\"} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-05-22 22:36:12', '2022-05-22 12:36:12', '', 29, 'https://boyds.sgedu.site/staging-tjc/?p=109', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(110, 1, '2022-05-22 22:37:37', '2022-05-22 12:37:37', '<!-- wp:html -->\n<div class=\"alert alert-secondary\">To avoid disappointment book early.  Every previous session has booked out early.</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>For booking please call: Coralie Costigan, Club Secretary <strong>0431 618 618</strong> or fill in the <a href=\"#contact-form\" data-type=\"internal\" data-id=\"#contact-form\">contact form</a> and we\'ll get back to you as soon as possible.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Location</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>334 Flinders St, Townsville QLD 4810</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<div class=\"row\">\n<div class=\"col-sm-6\">\n<img class=\"w-100 img-fluid\" src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/our-location-1-1024x491.jpg\" alt=\"location\"/>\n</div>\n<div class=\"col-sm-6\">\n<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"167\" style=\"margin-bottom:20px; border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\n</div>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:heading -->\n<h2 id=\"contact-form\">Contact us</h2>\n<!-- /wp:heading -->\n\n<!-- wp:wpforms/form-selector {\"formId\":\"94\"} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-05-22 22:37:37', '2022-05-22 12:37:37', '', 29, 'https://boyds.sgedu.site/staging-tjc/?p=110', 0, 'revision', '', 0),
(111, 1, '2022-05-22 22:45:33', '2022-05-22 12:45:33', '<!-- wp:image {\"id\":112,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/membership.jpg\" alt=\"\" class=\"wp-image-112\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>The current Townsville Jazz Club committee members are:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table {\"className\":\"is-style-stripes\"} -->\n<figure class=\"wp-block-table is-style-stripes\"><table><tbody><tr><td><strong>Member name</strong></td><td><strong>Role</strong></td><td><strong>Phone</strong></td></tr><tr><td>Bob Passmore</td><td>President</td><td>0438 093 503</td></tr><tr><td>Jeremy Hawker</td><td>Vice President</td><td>0408 959 979</td></tr><tr><td>Coralien &nbsp;Costigan</td><td>Secretary</td><td>0431 618 618</td></tr><tr><td>Phil McIntyre</td><td>Treasurer</td><td>0412 408 061</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Committee Members:</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Rob Bray – Bob Spillane - Julie McIntyre – Reg Braun - Sarah Lane - Cecilia Rocha and Leonie Dunne</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In 2020, the Club presents a wide variety of jazz styles at the new venue The Fish Inn on The Strand, on the second and fourth Sundays of each month from 5 to 8 pm. Refer to Program Page for current information on bands.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>This venue is well located overlooking the Rockpool with magnificent views of Townsville Strand and Harbour.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":117,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Rock_pool_in_the_strand_Townsville_Queensland-1024x387.jpg\" alt=\"\" class=\"wp-image-117\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading -->\n<h2>Meals &amp; Bar</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Meals and Bar facilities are available – payment by card is preferred.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cover charge for regular sessions:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td>Members</td><td>$15</td></tr><tr><td>Non members</td><td>$10</td></tr><tr><td>Students 19 to 25 yrs.</td><td>$5</td></tr><tr><td>Children 12-18 yrs.</td><td>$5</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:heading -->\n<h2>Become a member</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Membership runs from<strong> 1st July</strong> to <strong>30th June</strong> each year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To become a member please fill in the <a href=\"#membership-form\" data-type=\"internal\" data-id=\"#membership-form\">membership form</a>. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Payment can be made by direct deposit or please pay to a committee member.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Payments</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Pay your subscription to:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>BSB 484799 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Account No. 101868841 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Include your surname please.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td>Single Membership</td><td>$30</td></tr><tr><td>Double Membership</td><td>$40</td></tr><tr><td>Single Pensioner</td><td>$25</td></tr><tr><td>Double Pensioner</td><td>$35</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:heading -->\n<h2 id=\"membership-form\">Membership Form</h2>\n<!-- /wp:heading -->\n\n<!-- wp:wpforms/form-selector {\"formId\":\"118\"} /-->', 'Membership', '', 'publish', 'closed', 'closed', '', 'membership', '', '', '2022-05-22 23:17:56', '2022-05-22 13:17:56', '', 0, 'https://boyds.sgedu.site/staging-tjc/?page_id=111', 0, 'page', '', 0),
(112, 1, '2022-05-22 22:41:16', '2022-05-22 12:41:16', '', 'membership', '', 'inherit', 'open', 'closed', '', 'membership', '', '', '2022-05-22 22:41:16', '2022-05-22 12:41:16', '', 111, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/membership.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2022-05-23 01:44:03', '2022-05-22 12:45:33', ' ', '', '', 'publish', 'closed', 'closed', '', '113', '', '', '2022-05-23 01:44:03', '2022-05-22 15:44:03', '', 0, 'https://boyds.sgedu.site/staging-tjc/113/', 4, 'nav_menu_item', '', 0),
(114, 1, '2022-05-22 22:45:33', '2022-05-22 12:45:33', '<!-- wp:image {\"id\":112,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/membership.jpg\" alt=\"\" class=\"wp-image-112\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>The current Townsville Jazz Club committee members are:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table {\"className\":\"is-style-stripes\"} -->\n<figure class=\"wp-block-table is-style-stripes\"><table><tbody><tr><td><strong>Member name</strong></td><td><strong>Role</strong></td><td><strong>Phone</strong></td></tr><tr><td>Bob Passmore</td><td>President</td><td>0438 093 503</td></tr><tr><td>Jeremy Hawker</td><td>Vice President</td><td>0408 959 979</td></tr><tr><td>Coralien  Costigan</td><td>Secretary</td><td>0431 618 618</td></tr><tr><td>Phil McIntyre</td><td>Treasurer</td><td>0412 408 061</td></tr></tbody></table></figure>\n<!-- /wp:table -->', 'Membership', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2022-05-22 22:45:33', '2022-05-22 12:45:33', '', 111, 'https://boyds.sgedu.site/staging-tjc/?p=114', 0, 'revision', '', 0),
(116, 1, '2022-05-22 22:49:46', '2022-05-22 12:49:46', '<!-- wp:image {\"id\":112,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/membership.jpg\" alt=\"\" class=\"wp-image-112\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>The current Townsville Jazz Club committee members are:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table {\"className\":\"is-style-stripes\"} -->\n<figure class=\"wp-block-table is-style-stripes\"><table><tbody><tr><td><strong>Member name</strong></td><td><strong>Role</strong></td><td><strong>Phone</strong></td></tr><tr><td>Bob Passmore</td><td>President</td><td>0438 093 503</td></tr><tr><td>Jeremy Hawker</td><td>Vice President</td><td>0408 959 979</td></tr><tr><td>Coralien  Costigan</td><td>Secretary</td><td>0431 618 618</td></tr><tr><td>Phil McIntyre</td><td>Treasurer</td><td>0412 408 061</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Committee Members:</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Rob Bray – Bob Spillane - Julie McIntyre – Reg Braun - Sarah Lane - Cecilia Rocha and Leonie Dunne</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In 2020, the Club presents a wide variety of jazz styles at the new venue The Fish Inn on The Strand, on the second and fourth Sundays of each month from 5 to 8 pm. Refer to Program Page for current information on bands.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>This venue is well located overlooking the Rockpool with magnificent views of Townsville Strand and Harbour.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Meals and Bar facilities are available – payment by card is preferred.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cover charge for regular sessions:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td>Members</td><td>$15</td></tr><tr><td>Non members</td><td>$10</td></tr><tr><td>Students 19 to 25 yrs.</td><td>$5</td></tr><tr><td>Children 12-18 yrs.</td><td>$5</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p>$15 members, $20 non members $10<br>Students - 19 to 25 yrs $5 Children 12-18 yrs.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Membership runs from 1st July to 30th June each year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To become a member click on the application form button and download, fill in the details, save and print the form. Please hand the membership form to a committee member.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Payment can be made by direct deposit or please pay to a committee member.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pay your subscription to:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>BSB 484799 Account No. 101868841 Include your surname please.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Single Membership $30 Double Membership $40</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Single Pensioner $25 Double Pensioner $35</p>\n<!-- /wp:paragraph -->', 'Membership', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2022-05-22 22:49:46', '2022-05-22 12:49:46', '', 111, 'https://boyds.sgedu.site/staging-tjc/?p=116', 0, 'revision', '', 0),
(117, 1, '2022-05-22 22:57:19', '2022-05-22 12:57:19', '', 'Rock_pool_in_the_strand_Townsville_Queensland', '', 'inherit', 'open', 'closed', '', 'rock_pool_in_the_strand_townsville_queensland', '', '', '2022-05-22 22:57:19', '2022-05-22 12:57:19', '', 111, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Rock_pool_in_the_strand_Townsville_Queensland.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2022-05-22 22:59:16', '2022-05-22 12:59:16', '{\"fields\":{\"0\":{\"id\":\"0\",\"type\":\"name\",\"label\":\"Name\",\"format\":\"first-last\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},\"1\":{\"id\":\"1\",\"type\":\"email\",\"label\":\"Email\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":\"\",\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\",\"css\":\"\"},\"4\":{\"id\":\"4\",\"type\":\"text\",\"label\":\"Address\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"input_mask\":\"\",\"css\":\"\"},\"5\":{\"id\":\"5\",\"type\":\"select\",\"label\":\"State\",\"choices\":{\"2\":{\"label\":\"QLD\",\"value\":\"\",\"image\":\"\"},\"7\":{\"label\":\"ACT\",\"value\":\"\",\"image\":\"\"},\"1\":{\"label\":\"NSW\",\"value\":\"\",\"image\":\"\"},\"8\":{\"label\":\"NT\",\"value\":\"\",\"image\":\"\"},\"3\":{\"label\":\"SA\",\"value\":\"\",\"image\":\"\"},\"6\":{\"label\":\"TAS\",\"value\":\"\",\"image\":\"\"},\"5\":{\"label\":\"VIC\",\"value\":\"\",\"image\":\"\"},\"4\":{\"label\":\"WA\",\"value\":\"\",\"image\":\"\"}},\"description\":\"\",\"style\":\"classic\",\"size\":\"medium\",\"placeholder\":\"\",\"dynamic_choices\":\"\",\"css\":\"\"},\"6\":{\"id\":\"6\",\"type\":\"number\",\"label\":\"Postcode\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\",\"default_value\":\"\",\"css\":\"\"},\"3\":{\"id\":\"3\",\"type\":\"select\",\"label\":\"Membership\",\"choices\":{\"1\":{\"label\":\"Single Membership $30\",\"value\":\"\",\"image\":\"\"},\"2\":{\"label\":\"Double Membership $40\",\"value\":\"\",\"image\":\"\"},\"3\":{\"label\":\"Single Pensioner     $25\",\"value\":\"\",\"image\":\"\"},\"4\":{\"label\":\"Double Pensioner     $35\",\"value\":\"\",\"image\":\"\"}},\"description\":\"<br><strong>Payment Details:<\\/strong><br><br>\\r\\n<p>BSB 484799  <br>Account No. 101868841  <br><br><em>Include your surname please.<\\/em><\\/p>\",\"style\":\"classic\",\"size\":\"medium\",\"placeholder\":\"\",\"dynamic_choices\":\"\",\"css\":\"\"},\"2\":{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"Comment or Message\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"css\":\"\"}},\"id\":\"118\",\"field_id\":7,\"settings\":{\"form_title\":\"Membership Form\",\"form_desc\":\"The Townsville Jazz Club Inc. is a not for profit organization dedicated to supporting, promoting and presenting a high standard of live jazz music.\\r\\nMembership includes a copy of the club\'s monthly newsletter, discounted entry to most events, special members-only prize draws and the opportunity to participate in the running of the club.\\r\\n\\r\\nMembership Period: 1st July to 30th June\",\"submit_text\":\"Submit\",\"submit_text_processing\":\"Sending...\",\"antispam\":\"1\",\"form_class\":\"\",\"submit_class\":\"\",\"ajax_submit\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Entry: Simple Contact Form (ID #118)\",\"sender_name\":\"Townsville Jazz Club\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"25\",\"redirect\":\"\"}}},\"meta\":{\"template\":\"4dbf022985a4fe4bda4a80365011a3a0\"}}', 'Membership Form', 'The Townsville Jazz Club Inc. is a not for profit organization dedicated to supporting, promoting and presenting a high standard of live jazz music.\r\nMembership includes a copy of the club\'s monthly newsletter, discounted entry to most events, special members-only prize draws and the opportunity to participate in the running of the club.\r\n\r\nMembership Period: 1st July to 30th June', 'publish', 'closed', 'closed', '', 'simple-contact-form-2', '', '', '2022-05-22 23:19:38', '2022-05-22 13:19:38', '', 0, 'https://boyds.sgedu.site/staging-tjc/?post_type=wpforms&#038;p=118', 0, 'wpforms', '', 0),
(119, 1, '2022-05-22 22:59:18', '2022-05-22 12:59:18', '{\"fields\":[{\"id\":\"0\",\"type\":\"name\",\"label\":\"Name\",\"format\":\"first-last\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},{\"id\":\"1\",\"type\":\"email\",\"label\":\"Email\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":\"\",\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\",\"css\":\"\"},{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"Comment or Message\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"css\":\"\"}],\"id\":\"118\",\"field_id\":3,\"settings\":{\"form_title\":\"Simple Contact Form\",\"form_desc\":\"\",\"submit_text\":\"Submit\",\"submit_text_processing\":\"Sending...\",\"antispam\":\"1\",\"form_class\":\"\",\"submit_class\":\"\",\"ajax_submit\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Entry: Simple Contact Form (ID #118)\",\"sender_name\":\"Townsville Jazz Club\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"25\",\"redirect\":\"\"}}},\"meta\":{\"template\":\"4dbf022985a4fe4bda4a80365011a3a0\"}}', 'Simple Contact Form', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2022-05-22 22:59:18', '2022-05-22 12:59:18', '', 118, 'https://boyds.sgedu.site/staging-tjc/?p=119', 0, 'revision', '', 0),
(120, 1, '2022-05-22 23:05:53', '2022-05-22 13:05:53', '{\"fields\":{\"0\":{\"id\":\"0\",\"type\":\"name\",\"label\":\"Name\",\"format\":\"first-last\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},\"1\":{\"id\":\"1\",\"type\":\"email\",\"label\":\"Email\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":\"\",\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\",\"css\":\"\"},\"4\":{\"id\":\"4\",\"type\":\"text\",\"label\":\"Address\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"input_mask\":\"\",\"css\":\"\"},\"5\":{\"id\":\"5\",\"type\":\"select\",\"label\":\"State\",\"choices\":{\"2\":{\"label\":\"QLD\",\"value\":\"\",\"image\":\"\"},\"7\":{\"label\":\"ACT\",\"value\":\"\",\"image\":\"\"},\"1\":{\"label\":\"NSW\",\"value\":\"\",\"image\":\"\"},\"8\":{\"label\":\"NT\",\"value\":\"\",\"image\":\"\"},\"3\":{\"label\":\"SA\",\"value\":\"\",\"image\":\"\"},\"6\":{\"label\":\"TAS\",\"value\":\"\",\"image\":\"\"},\"5\":{\"label\":\"VIC\",\"value\":\"\",\"image\":\"\"},\"4\":{\"label\":\"WA\",\"value\":\"\",\"image\":\"\"}},\"description\":\"\",\"style\":\"classic\",\"size\":\"medium\",\"placeholder\":\"\",\"dynamic_choices\":\"\",\"css\":\"\"},\"6\":{\"id\":\"6\",\"type\":\"number\",\"label\":\"Postcode\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\",\"default_value\":\"\",\"css\":\"\"},\"3\":{\"id\":\"3\",\"type\":\"select\",\"label\":\"Membership\",\"choices\":{\"1\":{\"label\":\"Single Membership $30\",\"value\":\"\",\"image\":\"\"},\"2\":{\"label\":\"Double Membership $40\",\"value\":\"\",\"image\":\"\"},\"3\":{\"label\":\"Single Pensioner     $25\",\"value\":\"\",\"image\":\"\"},\"4\":{\"label\":\"Double Pensioner     $35\",\"value\":\"\",\"image\":\"\"}},\"description\":\"\",\"style\":\"classic\",\"size\":\"medium\",\"placeholder\":\"\",\"dynamic_choices\":\"\",\"css\":\"\"},\"2\":{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"Comment or Message\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"css\":\"\"}},\"id\":\"118\",\"field_id\":7,\"settings\":{\"form_title\":\"Membership Form\",\"form_desc\":\"The Townsville Jazz Club Inc. is a not for profit organization dedicated to supporting, promoting and presenting a high standard of live jazz music.\\r\\nMembership includes a copy of the club\'s monthly newsletter, discounted entry to most events, special members-only prize draws and the opportunity to participate in the running of the club.\",\"submit_text\":\"Submit\",\"submit_text_processing\":\"Sending...\",\"antispam\":\"1\",\"form_class\":\"\",\"submit_class\":\"\",\"ajax_submit\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Entry: Simple Contact Form (ID #118)\",\"sender_name\":\"Townsville Jazz Club\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"25\",\"redirect\":\"\"}}},\"meta\":{\"template\":\"4dbf022985a4fe4bda4a80365011a3a0\"}}', 'Membership Form', 'The Townsville Jazz Club Inc. is a not for profit organization dedicated to supporting, promoting and presenting a high standard of live jazz music.\r\nMembership includes a copy of the club\'s monthly newsletter, discounted entry to most events, special members-only prize draws and the opportunity to participate in the running of the club.', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2022-05-22 23:05:53', '2022-05-22 13:05:53', '', 118, 'https://boyds.sgedu.site/staging-tjc/?p=120', 0, 'revision', '', 0),
(121, 1, '2022-05-22 23:07:00', '2022-05-22 13:07:00', '{\"fields\":{\"0\":{\"id\":\"0\",\"type\":\"name\",\"label\":\"Name\",\"format\":\"first-last\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},\"1\":{\"id\":\"1\",\"type\":\"email\",\"label\":\"Email\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":\"\",\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\",\"css\":\"\"},\"4\":{\"id\":\"4\",\"type\":\"text\",\"label\":\"Address\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"input_mask\":\"\",\"css\":\"\"},\"5\":{\"id\":\"5\",\"type\":\"select\",\"label\":\"State\",\"choices\":{\"2\":{\"label\":\"QLD\",\"value\":\"\",\"image\":\"\"},\"7\":{\"label\":\"ACT\",\"value\":\"\",\"image\":\"\"},\"1\":{\"label\":\"NSW\",\"value\":\"\",\"image\":\"\"},\"8\":{\"label\":\"NT\",\"value\":\"\",\"image\":\"\"},\"3\":{\"label\":\"SA\",\"value\":\"\",\"image\":\"\"},\"6\":{\"label\":\"TAS\",\"value\":\"\",\"image\":\"\"},\"5\":{\"label\":\"VIC\",\"value\":\"\",\"image\":\"\"},\"4\":{\"label\":\"WA\",\"value\":\"\",\"image\":\"\"}},\"description\":\"\",\"style\":\"classic\",\"size\":\"medium\",\"placeholder\":\"\",\"dynamic_choices\":\"\",\"css\":\"\"},\"6\":{\"id\":\"6\",\"type\":\"number\",\"label\":\"Postcode\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\",\"default_value\":\"\",\"css\":\"\"},\"3\":{\"id\":\"3\",\"type\":\"select\",\"label\":\"Membership\",\"choices\":{\"1\":{\"label\":\"Single Membership $30\",\"value\":\"\",\"image\":\"\"},\"2\":{\"label\":\"Double Membership $40\",\"value\":\"\",\"image\":\"\"},\"3\":{\"label\":\"Single Pensioner     $25\",\"value\":\"\",\"image\":\"\"},\"4\":{\"label\":\"Double Pensioner     $35\",\"value\":\"\",\"image\":\"\"}},\"description\":\"\",\"style\":\"classic\",\"size\":\"medium\",\"placeholder\":\"\",\"dynamic_choices\":\"\",\"css\":\"\"},\"2\":{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"Comment or Message\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"css\":\"\"}},\"id\":\"118\",\"field_id\":7,\"settings\":{\"form_title\":\"Membership Form\",\"form_desc\":\"The Townsville Jazz Club Inc. is a not for profit organization dedicated to supporting, promoting and presenting a high standard of live jazz music.\\r\\nMembership includes a copy of the club\'s monthly newsletter, discounted entry to most events, special members-only prize draws and the opportunity to participate in the running of the club.\\r\\n\\r\\nMembership Period: 1st July to 30th June\",\"submit_text\":\"Submit\",\"submit_text_processing\":\"Sending...\",\"antispam\":\"1\",\"form_class\":\"\",\"submit_class\":\"\",\"ajax_submit\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Entry: Simple Contact Form (ID #118)\",\"sender_name\":\"Townsville Jazz Club\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"25\",\"redirect\":\"\"}}},\"meta\":{\"template\":\"4dbf022985a4fe4bda4a80365011a3a0\"}}', 'Membership Form', 'The Townsville Jazz Club Inc. is a not for profit organization dedicated to supporting, promoting and presenting a high standard of live jazz music.\r\nMembership includes a copy of the club\'s monthly newsletter, discounted entry to most events, special members-only prize draws and the opportunity to participate in the running of the club.\r\n\r\nMembership Period: 1st July to 30th June', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2022-05-22 23:07:00', '2022-05-22 13:07:00', '', 118, 'https://boyds.sgedu.site/staging-tjc/?p=121', 0, 'revision', '', 0),
(122, 1, '2022-05-22 23:08:12', '2022-05-22 13:08:12', '<!-- wp:image {\"id\":112,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/membership.jpg\" alt=\"\" class=\"wp-image-112\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>The current Townsville Jazz Club committee members are:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table {\"className\":\"is-style-stripes\"} -->\n<figure class=\"wp-block-table is-style-stripes\"><table><tbody><tr><td><strong>Member name</strong></td><td><strong>Role</strong></td><td><strong>Phone</strong></td></tr><tr><td>Bob Passmore</td><td>President</td><td>0438 093 503</td></tr><tr><td>Jeremy Hawker</td><td>Vice President</td><td>0408 959 979</td></tr><tr><td>Coralien  Costigan</td><td>Secretary</td><td>0431 618 618</td></tr><tr><td>Phil McIntyre</td><td>Treasurer</td><td>0412 408 061</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Committee Members:</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Rob Bray – Bob Spillane - Julie McIntyre – Reg Braun - Sarah Lane - Cecilia Rocha and Leonie Dunne</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In 2020, the Club presents a wide variety of jazz styles at the new venue The Fish Inn on The Strand, on the second and fourth Sundays of each month from 5 to 8 pm. Refer to Program Page for current information on bands.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>This venue is well located overlooking the Rockpool with magnificent views of Townsville Strand and Harbour.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":117,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Rock_pool_in_the_strand_Townsville_Queensland-1024x387.jpg\" alt=\"\" class=\"wp-image-117\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Meals and Bar facilities are available – payment by card is preferred.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cover charge for regular sessions:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td>Members</td><td>$15</td></tr><tr><td>Non members</td><td>$10</td></tr><tr><td>Students 19 to 25 yrs.</td><td>$5</td></tr><tr><td>Children 12-18 yrs.</td><td>$5</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p>Membership runs from 1st July to 30th June each year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To become a member click on the application form button and download, fill in the details, save and print the form. Please hand the membership form to a committee member.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Payment can be made by direct deposit or please pay to a committee member.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pay your subscription to:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>BSB 484799 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Account No. 101868841 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Include your surname please.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td>Single Membership</td><td>$30</td></tr><tr><td>Double Membership</td><td>$40</td></tr><tr><td>Single Pensioner</td><td>$25</td></tr><tr><td>Double Pensioner</td><td>$35</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:wpforms/form-selector /-->', 'Membership', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2022-05-22 23:08:12', '2022-05-22 13:08:12', '', 111, 'https://boyds.sgedu.site/staging-tjc/?p=122', 0, 'revision', '', 0),
(123, 1, '2022-05-22 23:08:22', '2022-05-22 13:08:22', '<!-- wp:image {\"id\":112,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/membership.jpg\" alt=\"\" class=\"wp-image-112\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>The current Townsville Jazz Club committee members are:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table {\"className\":\"is-style-stripes\"} -->\n<figure class=\"wp-block-table is-style-stripes\"><table><tbody><tr><td><strong>Member name</strong></td><td><strong>Role</strong></td><td><strong>Phone</strong></td></tr><tr><td>Bob Passmore</td><td>President</td><td>0438 093 503</td></tr><tr><td>Jeremy Hawker</td><td>Vice President</td><td>0408 959 979</td></tr><tr><td>Coralien &nbsp;Costigan</td><td>Secretary</td><td>0431 618 618</td></tr><tr><td>Phil McIntyre</td><td>Treasurer</td><td>0412 408 061</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Committee Members:</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Rob Bray – Bob Spillane - Julie McIntyre – Reg Braun - Sarah Lane - Cecilia Rocha and Leonie Dunne</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In 2020, the Club presents a wide variety of jazz styles at the new venue The Fish Inn on The Strand, on the second and fourth Sundays of each month from 5 to 8 pm. Refer to Program Page for current information on bands.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>This venue is well located overlooking the Rockpool with magnificent views of Townsville Strand and Harbour.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":117,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Rock_pool_in_the_strand_Townsville_Queensland-1024x387.jpg\" alt=\"\" class=\"wp-image-117\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Meals and Bar facilities are available – payment by card is preferred.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cover charge for regular sessions:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td>Members</td><td>$15</td></tr><tr><td>Non members</td><td>$10</td></tr><tr><td>Students 19 to 25 yrs.</td><td>$5</td></tr><tr><td>Children 12-18 yrs.</td><td>$5</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p>Membership runs from 1st July to 30th June each year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To become a member click on the application form button and download, fill in the details, save and print the form. Please hand the membership form to a committee member.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Payment can be made by direct deposit or please pay to a committee member.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pay your subscription to:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>BSB 484799 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Account No. 101868841 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Include your surname please.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td>Single Membership</td><td>$30</td></tr><tr><td>Double Membership</td><td>$40</td></tr><tr><td>Single Pensioner</td><td>$25</td></tr><tr><td>Double Pensioner</td><td>$35</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:wpforms/form-selector {\"formId\":\"118\"} /-->', 'Membership', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2022-05-22 23:08:22', '2022-05-22 13:08:22', '', 111, 'https://boyds.sgedu.site/staging-tjc/?p=123', 0, 'revision', '', 0),
(124, 1, '2022-05-22 23:14:19', '2022-05-22 13:14:19', '<!-- wp:image {\"id\":112,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/membership.jpg\" alt=\"\" class=\"wp-image-112\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>The current Townsville Jazz Club committee members are:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table {\"className\":\"is-style-stripes\"} -->\n<figure class=\"wp-block-table is-style-stripes\"><table><tbody><tr><td><strong>Member name</strong></td><td><strong>Role</strong></td><td><strong>Phone</strong></td></tr><tr><td>Bob Passmore</td><td>President</td><td>0438 093 503</td></tr><tr><td>Jeremy Hawker</td><td>Vice President</td><td>0408 959 979</td></tr><tr><td>Coralien &nbsp;Costigan</td><td>Secretary</td><td>0431 618 618</td></tr><tr><td>Phil McIntyre</td><td>Treasurer</td><td>0412 408 061</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Committee Members:</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Rob Bray – Bob Spillane - Julie McIntyre – Reg Braun - Sarah Lane - Cecilia Rocha and Leonie Dunne</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In 2020, the Club presents a wide variety of jazz styles at the new venue The Fish Inn on The Strand, on the second and fourth Sundays of each month from 5 to 8 pm. Refer to Program Page for current information on bands.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>This venue is well located overlooking the Rockpool with magnificent views of Townsville Strand and Harbour.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":117,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Rock_pool_in_the_strand_Townsville_Queensland-1024x387.jpg\" alt=\"\" class=\"wp-image-117\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading -->\n<h2>Meals &amp; Bar</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Meals and Bar facilities are available – payment by card is preferred.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cover charge for regular sessions:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td>Members</td><td>$15</td></tr><tr><td>Non members</td><td>$10</td></tr><tr><td>Students 19 to 25 yrs.</td><td>$5</td></tr><tr><td>Children 12-18 yrs.</td><td>$5</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:heading -->\n<h2>Become a member</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Membership runs from<strong> 1st July</strong> to <strong>30th June</strong> each year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To become a member please fill in the <a href=\"#membership-form\" data-type=\"internal\" data-id=\"#membership-form\">membership form</a>. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Payment can be made by direct deposit or please pay to a committee member.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pay your subscription to:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>BSB 484799 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Account No. 101868841 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Include your surname please.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td>Single Membership</td><td>$30</td></tr><tr><td>Double Membership</td><td>$40</td></tr><tr><td>Single Pensioner</td><td>$25</td></tr><tr><td>Double Pensioner</td><td>$35</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:heading -->\n<h2 id=\"membership-form\">Membership Form</h2>\n<!-- /wp:heading -->\n\n<!-- wp:wpforms/form-selector {\"formId\":\"118\"} /-->', 'Membership', '', 'inherit', 'closed', 'closed', '', '111-autosave-v1', '', '', '2022-05-22 23:14:19', '2022-05-22 13:14:19', '', 111, 'https://boyds.sgedu.site/staging-tjc/?p=124', 0, 'revision', '', 0),
(125, 1, '2022-05-22 23:09:22', '2022-05-22 13:09:22', '<!-- wp:image {\"id\":112,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/membership.jpg\" alt=\"\" class=\"wp-image-112\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>The current Townsville Jazz Club committee members are:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table {\"className\":\"is-style-stripes\"} -->\n<figure class=\"wp-block-table is-style-stripes\"><table><tbody><tr><td><strong>Member name</strong></td><td><strong>Role</strong></td><td><strong>Phone</strong></td></tr><tr><td>Bob Passmore</td><td>President</td><td>0438 093 503</td></tr><tr><td>Jeremy Hawker</td><td>Vice President</td><td>0408 959 979</td></tr><tr><td>Coralien &nbsp;Costigan</td><td>Secretary</td><td>0431 618 618</td></tr><tr><td>Phil McIntyre</td><td>Treasurer</td><td>0412 408 061</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Committee Members:</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Rob Bray – Bob Spillane - Julie McIntyre – Reg Braun - Sarah Lane - Cecilia Rocha and Leonie Dunne</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In 2020, the Club presents a wide variety of jazz styles at the new venue The Fish Inn on The Strand, on the second and fourth Sundays of each month from 5 to 8 pm. Refer to Program Page for current information on bands.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>This venue is well located overlooking the Rockpool with magnificent views of Townsville Strand and Harbour.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":117,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Rock_pool_in_the_strand_Townsville_Queensland-1024x387.jpg\" alt=\"\" class=\"wp-image-117\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Meals and Bar facilities are available – payment by card is preferred.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cover charge for regular sessions:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td>Members</td><td>$15</td></tr><tr><td>Non members</td><td>$10</td></tr><tr><td>Students 19 to 25 yrs.</td><td>$5</td></tr><tr><td>Children 12-18 yrs.</td><td>$5</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p>Membership runs from 1st July to 30th June each year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To become a member click on the application form button and download, fill in the details, save and print the form. Please hand the membership form to a committee member.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Payment can be made by direct deposit or please pay to a committee member.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pay your subscription to:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>BSB 484799 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Account No. 101868841 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Include your surname please.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td>Single Membership</td><td>$30</td></tr><tr><td>Double Membership</td><td>$40</td></tr><tr><td>Single Pensioner</td><td>$25</td></tr><tr><td>Double Pensioner</td><td>$35</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:heading -->\n<h2>Membership Form</h2>\n<!-- /wp:heading -->\n\n<!-- wp:wpforms/form-selector {\"formId\":\"118\"} /-->', 'Membership', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2022-05-22 23:09:22', '2022-05-22 13:09:22', '', 111, 'https://boyds.sgedu.site/staging-tjc/?p=125', 0, 'revision', '', 0),
(126, 1, '2022-05-22 23:10:00', '2022-05-22 13:10:00', '<!-- wp:image {\"id\":112,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/membership.jpg\" alt=\"\" class=\"wp-image-112\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>The current Townsville Jazz Club committee members are:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table {\"className\":\"is-style-stripes\"} -->\n<figure class=\"wp-block-table is-style-stripes\"><table><tbody><tr><td><strong>Member name</strong></td><td><strong>Role</strong></td><td><strong>Phone</strong></td></tr><tr><td>Bob Passmore</td><td>President</td><td>0438 093 503</td></tr><tr><td>Jeremy Hawker</td><td>Vice President</td><td>0408 959 979</td></tr><tr><td>Coralien &nbsp;Costigan</td><td>Secretary</td><td>0431 618 618</td></tr><tr><td>Phil McIntyre</td><td>Treasurer</td><td>0412 408 061</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Committee Members:</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Rob Bray – Bob Spillane - Julie McIntyre – Reg Braun - Sarah Lane - Cecilia Rocha and Leonie Dunne</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In 2020, the Club presents a wide variety of jazz styles at the new venue The Fish Inn on The Strand, on the second and fourth Sundays of each month from 5 to 8 pm. Refer to Program Page for current information on bands.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>This venue is well located overlooking the Rockpool with magnificent views of Townsville Strand and Harbour.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":117,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Rock_pool_in_the_strand_Townsville_Queensland-1024x387.jpg\" alt=\"\" class=\"wp-image-117\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Meals and Bar facilities are available – payment by card is preferred.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cover charge for regular sessions:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td>Members</td><td>$15</td></tr><tr><td>Non members</td><td>$10</td></tr><tr><td>Students 19 to 25 yrs.</td><td>$5</td></tr><tr><td>Children 12-18 yrs.</td><td>$5</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p>Membership runs from<strong> 1st July</strong> to <strong>30th June</strong> each year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To become a member click on the application form button and download, fill in the details, save and print the form. Please hand the membership form to a committee member.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Payment can be made by direct deposit or please pay to a committee member.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pay your subscription to:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>BSB 484799 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Account No. 101868841 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Include your surname please.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td>Single Membership</td><td>$30</td></tr><tr><td>Double Membership</td><td>$40</td></tr><tr><td>Single Pensioner</td><td>$25</td></tr><tr><td>Double Pensioner</td><td>$35</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:heading -->\n<h2>Membership Form</h2>\n<!-- /wp:heading -->\n\n<!-- wp:wpforms/form-selector {\"formId\":\"118\"} /-->', 'Membership', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2022-05-22 23:10:00', '2022-05-22 13:10:00', '', 111, 'https://boyds.sgedu.site/staging-tjc/?p=126', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(127, 1, '2022-05-22 23:17:20', '2022-05-22 13:17:20', '{\"fields\":{\"0\":{\"id\":\"0\",\"type\":\"name\",\"label\":\"Name\",\"format\":\"first-last\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},\"1\":{\"id\":\"1\",\"type\":\"email\",\"label\":\"Email\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":\"\",\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\",\"css\":\"\"},\"4\":{\"id\":\"4\",\"type\":\"text\",\"label\":\"Address\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"input_mask\":\"\",\"css\":\"\"},\"5\":{\"id\":\"5\",\"type\":\"select\",\"label\":\"State\",\"choices\":{\"2\":{\"label\":\"QLD\",\"value\":\"\",\"image\":\"\"},\"7\":{\"label\":\"ACT\",\"value\":\"\",\"image\":\"\"},\"1\":{\"label\":\"NSW\",\"value\":\"\",\"image\":\"\"},\"8\":{\"label\":\"NT\",\"value\":\"\",\"image\":\"\"},\"3\":{\"label\":\"SA\",\"value\":\"\",\"image\":\"\"},\"6\":{\"label\":\"TAS\",\"value\":\"\",\"image\":\"\"},\"5\":{\"label\":\"VIC\",\"value\":\"\",\"image\":\"\"},\"4\":{\"label\":\"WA\",\"value\":\"\",\"image\":\"\"}},\"description\":\"\",\"style\":\"classic\",\"size\":\"medium\",\"placeholder\":\"\",\"dynamic_choices\":\"\",\"css\":\"\"},\"6\":{\"id\":\"6\",\"type\":\"number\",\"label\":\"Postcode\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\",\"default_value\":\"\",\"css\":\"\"},\"3\":{\"id\":\"3\",\"type\":\"select\",\"label\":\"Membership\",\"choices\":{\"1\":{\"label\":\"Single Membership $30\",\"value\":\"\",\"image\":\"\"},\"2\":{\"label\":\"Double Membership $40\",\"value\":\"\",\"image\":\"\"},\"3\":{\"label\":\"Single Pensioner     $25\",\"value\":\"\",\"image\":\"\"},\"4\":{\"label\":\"Double Pensioner     $35\",\"value\":\"\",\"image\":\"\"}},\"description\":\"<h4>Payment Details:<\\/h4>\\r\\n<p>BSB 484799  <br>Account No. 101868841  <br><em>Include your surname please.<\\/em><\\/p>\",\"style\":\"classic\",\"size\":\"medium\",\"placeholder\":\"\",\"dynamic_choices\":\"\",\"css\":\"\"},\"2\":{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"Comment or Message\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"css\":\"\"}},\"id\":\"118\",\"field_id\":7,\"settings\":{\"form_title\":\"Membership Form\",\"form_desc\":\"The Townsville Jazz Club Inc. is a not for profit organization dedicated to supporting, promoting and presenting a high standard of live jazz music.\\r\\nMembership includes a copy of the club\'s monthly newsletter, discounted entry to most events, special members-only prize draws and the opportunity to participate in the running of the club.\\r\\n\\r\\nMembership Period: 1st July to 30th June\",\"submit_text\":\"Submit\",\"submit_text_processing\":\"Sending...\",\"antispam\":\"1\",\"form_class\":\"\",\"submit_class\":\"\",\"ajax_submit\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Entry: Simple Contact Form (ID #118)\",\"sender_name\":\"Townsville Jazz Club\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"25\",\"redirect\":\"\"}}},\"meta\":{\"template\":\"4dbf022985a4fe4bda4a80365011a3a0\"}}', 'Membership Form', 'The Townsville Jazz Club Inc. is a not for profit organization dedicated to supporting, promoting and presenting a high standard of live jazz music.\r\nMembership includes a copy of the club\'s monthly newsletter, discounted entry to most events, special members-only prize draws and the opportunity to participate in the running of the club.\r\n\r\nMembership Period: 1st July to 30th June', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2022-05-22 23:17:20', '2022-05-22 13:17:20', '', 118, 'https://boyds.sgedu.site/staging-tjc/?p=127', 0, 'revision', '', 0),
(128, 1, '2022-05-22 23:17:56', '2022-05-22 13:17:56', '<!-- wp:image {\"id\":112,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/membership.jpg\" alt=\"\" class=\"wp-image-112\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>The current Townsville Jazz Club committee members are:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table {\"className\":\"is-style-stripes\"} -->\n<figure class=\"wp-block-table is-style-stripes\"><table><tbody><tr><td><strong>Member name</strong></td><td><strong>Role</strong></td><td><strong>Phone</strong></td></tr><tr><td>Bob Passmore</td><td>President</td><td>0438 093 503</td></tr><tr><td>Jeremy Hawker</td><td>Vice President</td><td>0408 959 979</td></tr><tr><td>Coralien &nbsp;Costigan</td><td>Secretary</td><td>0431 618 618</td></tr><tr><td>Phil McIntyre</td><td>Treasurer</td><td>0412 408 061</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Committee Members:</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Rob Bray – Bob Spillane - Julie McIntyre – Reg Braun - Sarah Lane - Cecilia Rocha and Leonie Dunne</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In 2020, the Club presents a wide variety of jazz styles at the new venue The Fish Inn on The Strand, on the second and fourth Sundays of each month from 5 to 8 pm. Refer to Program Page for current information on bands.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>This venue is well located overlooking the Rockpool with magnificent views of Townsville Strand and Harbour.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":117,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Rock_pool_in_the_strand_Townsville_Queensland-1024x387.jpg\" alt=\"\" class=\"wp-image-117\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading -->\n<h2>Meals &amp; Bar</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Meals and Bar facilities are available – payment by card is preferred.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cover charge for regular sessions:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td>Members</td><td>$15</td></tr><tr><td>Non members</td><td>$10</td></tr><tr><td>Students 19 to 25 yrs.</td><td>$5</td></tr><tr><td>Children 12-18 yrs.</td><td>$5</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:heading -->\n<h2>Become a member</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Membership runs from<strong> 1st July</strong> to <strong>30th June</strong> each year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To become a member please fill in the <a href=\"#membership-form\" data-type=\"internal\" data-id=\"#membership-form\">membership form</a>. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Payment can be made by direct deposit or please pay to a committee member.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Payments</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Pay your subscription to:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>BSB 484799 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Account No. 101868841 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Include your surname please.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td>Single Membership</td><td>$30</td></tr><tr><td>Double Membership</td><td>$40</td></tr><tr><td>Single Pensioner</td><td>$25</td></tr><tr><td>Double Pensioner</td><td>$35</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:heading -->\n<h2 id=\"membership-form\">Membership Form</h2>\n<!-- /wp:heading -->\n\n<!-- wp:wpforms/form-selector {\"formId\":\"118\"} /-->', 'Membership', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2022-05-22 23:17:56', '2022-05-22 13:17:56', '', 111, 'https://boyds.sgedu.site/staging-tjc/?p=128', 0, 'revision', '', 0),
(129, 1, '2022-05-22 23:19:19', '2022-05-22 13:19:19', '{\"fields\":{\"0\":{\"id\":\"0\",\"type\":\"name\",\"label\":\"Name\",\"format\":\"first-last\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},\"1\":{\"id\":\"1\",\"type\":\"email\",\"label\":\"Email\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":\"\",\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\",\"css\":\"\"},\"4\":{\"id\":\"4\",\"type\":\"text\",\"label\":\"Address\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"input_mask\":\"\",\"css\":\"\"},\"5\":{\"id\":\"5\",\"type\":\"select\",\"label\":\"State\",\"choices\":{\"2\":{\"label\":\"QLD\",\"value\":\"\",\"image\":\"\"},\"7\":{\"label\":\"ACT\",\"value\":\"\",\"image\":\"\"},\"1\":{\"label\":\"NSW\",\"value\":\"\",\"image\":\"\"},\"8\":{\"label\":\"NT\",\"value\":\"\",\"image\":\"\"},\"3\":{\"label\":\"SA\",\"value\":\"\",\"image\":\"\"},\"6\":{\"label\":\"TAS\",\"value\":\"\",\"image\":\"\"},\"5\":{\"label\":\"VIC\",\"value\":\"\",\"image\":\"\"},\"4\":{\"label\":\"WA\",\"value\":\"\",\"image\":\"\"}},\"description\":\"\",\"style\":\"classic\",\"size\":\"medium\",\"placeholder\":\"\",\"dynamic_choices\":\"\",\"css\":\"\"},\"6\":{\"id\":\"6\",\"type\":\"number\",\"label\":\"Postcode\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\",\"default_value\":\"\",\"css\":\"\"},\"3\":{\"id\":\"3\",\"type\":\"select\",\"label\":\"Membership\",\"choices\":{\"1\":{\"label\":\"Single Membership $30\",\"value\":\"\",\"image\":\"\"},\"2\":{\"label\":\"Double Membership $40\",\"value\":\"\",\"image\":\"\"},\"3\":{\"label\":\"Single Pensioner     $25\",\"value\":\"\",\"image\":\"\"},\"4\":{\"label\":\"Double Pensioner     $35\",\"value\":\"\",\"image\":\"\"}},\"description\":\"<br><strong>Payment Details:<\\/strong><br><br>\\r\\n<p>BSB 484799  <br><br>Account No. 101868841  <br><br><em>Include your surname please.<\\/em><\\/p>\",\"style\":\"classic\",\"size\":\"medium\",\"placeholder\":\"\",\"dynamic_choices\":\"\",\"css\":\"\"},\"2\":{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"Comment or Message\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"css\":\"\"}},\"id\":\"118\",\"field_id\":7,\"settings\":{\"form_title\":\"Membership Form\",\"form_desc\":\"The Townsville Jazz Club Inc. is a not for profit organization dedicated to supporting, promoting and presenting a high standard of live jazz music.\\r\\nMembership includes a copy of the club\'s monthly newsletter, discounted entry to most events, special members-only prize draws and the opportunity to participate in the running of the club.\\r\\n\\r\\nMembership Period: 1st July to 30th June\",\"submit_text\":\"Submit\",\"submit_text_processing\":\"Sending...\",\"antispam\":\"1\",\"form_class\":\"\",\"submit_class\":\"\",\"ajax_submit\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Entry: Simple Contact Form (ID #118)\",\"sender_name\":\"Townsville Jazz Club\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"25\",\"redirect\":\"\"}}},\"meta\":{\"template\":\"4dbf022985a4fe4bda4a80365011a3a0\"}}', 'Membership Form', 'The Townsville Jazz Club Inc. is a not for profit organization dedicated to supporting, promoting and presenting a high standard of live jazz music.\r\nMembership includes a copy of the club\'s monthly newsletter, discounted entry to most events, special members-only prize draws and the opportunity to participate in the running of the club.\r\n\r\nMembership Period: 1st July to 30th June', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2022-05-22 23:19:19', '2022-05-22 13:19:19', '', 118, 'https://boyds.sgedu.site/staging-tjc/?p=129', 0, 'revision', '', 0),
(130, 1, '2022-05-22 23:19:38', '2022-05-22 13:19:38', '{\"fields\":{\"0\":{\"id\":\"0\",\"type\":\"name\",\"label\":\"Name\",\"format\":\"first-last\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},\"1\":{\"id\":\"1\",\"type\":\"email\",\"label\":\"Email\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":\"\",\"filter_type\":\"\",\"allowlist\":\"\",\"denylist\":\"\",\"css\":\"\"},\"4\":{\"id\":\"4\",\"type\":\"text\",\"label\":\"Address\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"input_mask\":\"\",\"css\":\"\"},\"5\":{\"id\":\"5\",\"type\":\"select\",\"label\":\"State\",\"choices\":{\"2\":{\"label\":\"QLD\",\"value\":\"\",\"image\":\"\"},\"7\":{\"label\":\"ACT\",\"value\":\"\",\"image\":\"\"},\"1\":{\"label\":\"NSW\",\"value\":\"\",\"image\":\"\"},\"8\":{\"label\":\"NT\",\"value\":\"\",\"image\":\"\"},\"3\":{\"label\":\"SA\",\"value\":\"\",\"image\":\"\"},\"6\":{\"label\":\"TAS\",\"value\":\"\",\"image\":\"\"},\"5\":{\"label\":\"VIC\",\"value\":\"\",\"image\":\"\"},\"4\":{\"label\":\"WA\",\"value\":\"\",\"image\":\"\"}},\"description\":\"\",\"style\":\"classic\",\"size\":\"medium\",\"placeholder\":\"\",\"dynamic_choices\":\"\",\"css\":\"\"},\"6\":{\"id\":\"6\",\"type\":\"number\",\"label\":\"Postcode\",\"description\":\"\",\"size\":\"medium\",\"placeholder\":\"\",\"default_value\":\"\",\"css\":\"\"},\"3\":{\"id\":\"3\",\"type\":\"select\",\"label\":\"Membership\",\"choices\":{\"1\":{\"label\":\"Single Membership $30\",\"value\":\"\",\"image\":\"\"},\"2\":{\"label\":\"Double Membership $40\",\"value\":\"\",\"image\":\"\"},\"3\":{\"label\":\"Single Pensioner     $25\",\"value\":\"\",\"image\":\"\"},\"4\":{\"label\":\"Double Pensioner     $35\",\"value\":\"\",\"image\":\"\"}},\"description\":\"<br><strong>Payment Details:<\\/strong><br><br>\\r\\n<p>BSB 484799  <br>Account No. 101868841  <br><br><em>Include your surname please.<\\/em><\\/p>\",\"style\":\"classic\",\"size\":\"medium\",\"placeholder\":\"\",\"dynamic_choices\":\"\",\"css\":\"\"},\"2\":{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"Comment or Message\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"limit_count\":\"1\",\"limit_mode\":\"characters\",\"default_value\":\"\",\"css\":\"\"}},\"id\":\"118\",\"field_id\":7,\"settings\":{\"form_title\":\"Membership Form\",\"form_desc\":\"The Townsville Jazz Club Inc. is a not for profit organization dedicated to supporting, promoting and presenting a high standard of live jazz music.\\r\\nMembership includes a copy of the club\'s monthly newsletter, discounted entry to most events, special members-only prize draws and the opportunity to participate in the running of the club.\\r\\n\\r\\nMembership Period: 1st July to 30th June\",\"submit_text\":\"Submit\",\"submit_text_processing\":\"Sending...\",\"antispam\":\"1\",\"form_class\":\"\",\"submit_class\":\"\",\"ajax_submit\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"{admin_email}\",\"subject\":\"New Entry: Simple Contact Form (ID #118)\",\"sender_name\":\"Townsville Jazz Club\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for contacting us! We will be in touch with you shortly.<\\/p>\",\"message_scroll\":\"1\",\"page\":\"25\",\"redirect\":\"\"}}},\"meta\":{\"template\":\"4dbf022985a4fe4bda4a80365011a3a0\"}}', 'Membership Form', 'The Townsville Jazz Club Inc. is a not for profit organization dedicated to supporting, promoting and presenting a high standard of live jazz music.\r\nMembership includes a copy of the club\'s monthly newsletter, discounted entry to most events, special members-only prize draws and the opportunity to participate in the running of the club.\r\n\r\nMembership Period: 1st July to 30th June', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2022-05-22 23:19:38', '2022-05-22 13:19:38', '', 118, 'https://boyds.sgedu.site/staging-tjc/?p=130', 0, 'revision', '', 0),
(132, 1, '2022-05-22 23:22:44', '2022-05-22 13:22:44', '<!-- wp:html -->\n<div class=\"alert alert-secondary\">To avoid disappointment book early.  Every previous session has booked out early.</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>For booking please call: Coralie Costigan, Club Secretary <strong>0431 618 618</strong> or fill in the <a href=\"#contact-form\" data-type=\"internal\" data-id=\"#contact-form\">contact form</a> and we\'ll get back to you as soon as possible.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Location</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Hotel Grand Chancellor - First floor Pandora Room<br>334 Flinders St, Townsville QLD 4810</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<div class=\"row\">\n<div class=\"col-sm-6\">\n<img class=\"w-100 img-fluid\" src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/our-location-1-1024x491.jpg\" alt=\"location\">\n</div>\n<div class=\"col-sm-6\">\n<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"167\" style=\"margin-bottom:20px; border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\n</div>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:heading -->\n<h2 id=\"contact-form\">Contact us</h2>\n<!-- /wp:heading -->\n\n<!-- wp:wpforms/form-selector {\"formId\":\"94\"} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-05-22 23:22:44', '2022-05-22 13:22:44', '', 29, 'https://boyds.sgedu.site/staging-tjc/?p=132', 0, 'revision', '', 0),
(133, 1, '2022-05-22 23:25:51', '2022-05-22 13:25:51', '<h2><img class=\"alignleft wp-image-42\" src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Anthony-and-the-Gentlemen-of-Jazz-.jpg\" alt=\"Anthony-and-the-Gentlemen-of-Jazz--1\" width=\"540\" height=\"360\">Come &amp; enjoy our regular jazz nights</h2>\nOur friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\n\nWe feature a range of very talented local bands playing great jazz music in a relaxed yet vibrant environment. The regular jazz nights feature a sit-in bracket and dancers are most welcome. Meals and bar <a href=\"#\">facility available</a>. No need to book.', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-05-22 23:25:51', '2022-05-22 13:25:51', '', 5, 'https://boyds.sgedu.site/staging-tjc/?p=133', 0, 'revision', '', 0),
(134, 1, '2022-05-22 23:25:51', '2022-05-22 13:25:51', '<h2><img class=\"alignleft wp-image-42\" src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Anthony-and-the-Gentlemen-of-Jazz-.jpg\" alt=\"Anthony-and-the-Gentlemen-of-Jazz--1\" width=\"540\" height=\"360\">Come &amp; enjoy our regular jazz nights</h2>\nOur friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\n\nWe feature a range of very talented local bands playing great jazz music in a relaxed yet vibrant environment. The regular jazz nights feature a sit-in bracket and dancers are most welcome. Meals and bar <a href=\"#\">facility available</a>. No need to book.', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-05-22 23:25:51', '2022-05-22 13:25:51', '', 5, 'https://boyds.sgedu.site/staging-tjc/?p=134', 0, 'revision', '', 0),
(135, 1, '2022-05-22 23:32:12', '2022-05-22 13:32:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Homepage Banner Button Text', 'homepage_banner_button_text', 'publish', 'closed', 'closed', '', 'field_628a3b081c590', '', '', '2022-05-22 23:36:46', '2022-05-22 13:36:46', '', 11, 'https://boyds.sgedu.site/staging-tjc/?post_type=acf-field&#038;p=135', 3, 'acf-field', '', 0),
(136, 1, '2022-05-22 23:36:46', '2022-05-22 13:36:46', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Homepage Banner Button URL', 'homepage_banner_button_text_url', 'publish', 'closed', 'closed', '', 'field_628a3c2ee7f9a', '', '', '2022-05-22 23:36:46', '2022-05-22 13:36:46', '', 11, 'https://boyds.sgedu.site/staging-tjc/?post_type=acf-field&p=136', 4, 'acf-field', '', 0),
(137, 1, '2022-05-22 23:43:18', '2022-05-22 13:43:18', '<h2><img class=\"alignleft wp-image-42\" src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Anthony-and-the-Gentlemen-of-Jazz-.jpg\" alt=\"Anthony-and-the-Gentlemen-of-Jazz--1\" width=\"540\" height=\"360\">Come &amp; enjoy our regular jazz nights</h2>\nOur friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\n\nWe feature a range of very talented local bands playing great jazz music in a relaxed yet vibrant environment. The regular jazz nights feature a sit-in bracket and dancers are most welcome. Meals and bar <a href=\"#\">facility available</a>. No need to book.', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-05-22 23:43:18', '2022-05-22 13:43:18', '', 5, 'https://boyds.sgedu.site/staging-tjc/?p=137', 0, 'revision', '', 0),
(138, 1, '2022-05-22 23:43:40', '2022-05-22 13:43:40', '<h2><img class=\"alignleft wp-image-42\" src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Anthony-and-the-Gentlemen-of-Jazz-.jpg\" alt=\"Anthony-and-the-Gentlemen-of-Jazz--1\" width=\"540\" height=\"360\">Come &amp; enjoy our regular jazz nights</h2>\nOur friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\n\nWe feature a range of very talented local bands playing great jazz music in a relaxed yet vibrant environment. The regular jazz nights feature a sit-in bracket and dancers are most welcome. Meals and bar <a href=\"#\">facility available</a>. No need to book.', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-05-22 23:43:40', '2022-05-22 13:43:40', '', 5, 'https://boyds.sgedu.site/staging-tjc/?p=138', 0, 'revision', '', 0),
(139, 1, '2022-05-22 23:49:25', '2022-05-22 13:49:25', '<h2><img class=\"alignleft wp-image-42\" src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Anthony-and-the-Gentlemen-of-Jazz-.jpg\" alt=\"Anthony-and-the-Gentlemen-of-Jazz--1\" width=\"540\" height=\"360\">Come &amp; enjoy our regular jazz nights</h2>\nOur friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\n\nWe feature a range of very talented local bands playing great jazz music in a relaxed yet vibrant environment. The regular jazz nights feature a sit-in bracket and dancers are most welcome. Meals and bar <a href=\"#\">facility available</a>. No need to book.', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-05-22 23:49:25', '2022-05-22 13:49:25', '', 5, 'https://boyds.sgedu.site/staging-tjc/?p=139', 0, 'revision', '', 0),
(140, 1, '2022-05-22 23:51:56', '2022-05-22 13:51:56', '<h2><img class=\"alignleft wp-image-42\" src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Anthony-and-the-Gentlemen-of-Jazz-.jpg\" alt=\"Anthony-and-the-Gentlemen-of-Jazz--1\" width=\"540\" height=\"360\">Come &amp; enjoy our regular jazz nights</h2>\nOur friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\n\nWe feature a range of very talented local bands playing great jazz music in a relaxed yet vibrant environment. The regular jazz nights feature a sit-in bracket and dancers are most welcome. Meals and bar <a href=\"#\">facility available</a>. No need to book.', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-05-22 23:51:56', '2022-05-22 13:51:56', '', 5, 'https://boyds.sgedu.site/staging-tjc/?p=140', 0, 'revision', '', 0),
(141, 1, '2022-05-22 23:55:02', '2022-05-22 13:55:02', '<h2><img class=\"alignleft wp-image-42\" src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Anthony-and-the-Gentlemen-of-Jazz-.jpg\" alt=\"Anthony-and-the-Gentlemen-of-Jazz--1\" width=\"540\" height=\"360\" />Come &amp; enjoy our regular jazz nights</h2>\nOur friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\n\nWe feature a range of very talented local bands playing great jazz music in a relaxed yet vibrant environment. The regular jazz nights feature a sit-in bracket and dancers are most welcome. Meals and bar facility available. No need to book.', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-05-22 23:55:02', '2022-05-22 13:55:02', '', 5, 'https://boyds.sgedu.site/staging-tjc/?p=141', 0, 'revision', '', 0),
(142, 1, '2022-05-22 23:55:02', '2022-05-22 13:55:02', '<h2><img class=\"alignleft wp-image-42\" src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Anthony-and-the-Gentlemen-of-Jazz-.jpg\" alt=\"Anthony-and-the-Gentlemen-of-Jazz--1\" width=\"540\" height=\"360\" />Come &amp; enjoy our regular jazz nights</h2>\nOur friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\n\nWe feature a range of very talented local bands playing great jazz music in a relaxed yet vibrant environment. The regular jazz nights feature a sit-in bracket and dancers are most welcome. Meals and bar facility available. No need to book.', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-05-22 23:55:02', '2022-05-22 13:55:02', '', 5, 'https://boyds.sgedu.site/staging-tjc/?p=142', 0, 'revision', '', 0),
(143, 1, '2022-05-23 00:06:52', '2022-05-22 14:06:52', '', 'Love 4 Swing', '', 'publish', 'open', 'closed', '', 'love-4-swing', '', '', '2022-05-23 00:06:52', '2022-05-22 14:06:52', '', 0, 'https://boyds.sgedu.site/staging-tjc/?post_type=tribe_events&#038;p=143', 0, 'tribe_events', '', 0),
(144, 1, '2022-05-23 00:01:38', '2022-05-22 14:01:38', '<h2><img class=\"alignleft wp-image-42\" src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Anthony-and-the-Gentlemen-of-Jazz-.jpg\" alt=\"Anthony-and-the-Gentlemen-of-Jazz--1\" width=\"540\" height=\"360\">Come &amp; enjoy our regular jazz nights</h2>\nOur friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\n\nWe feature a range of very talented local bands playing great jazz music in a relaxed yet vibrant environment. The regular jazz nights feature a sit-in bracket and dancers are most welcome. Meals and bar facility available. No need to book.', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-05-23 00:01:38', '2022-05-22 14:01:38', '', 5, 'https://boyds.sgedu.site/staging-tjc/?p=144', 0, 'revision', '', 0),
(145, 1, '2022-05-23 00:01:38', '2022-05-22 14:01:38', '<h2><img class=\"alignleft wp-image-42\" src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Anthony-and-the-Gentlemen-of-Jazz-.jpg\" alt=\"Anthony-and-the-Gentlemen-of-Jazz--1\" width=\"540\" height=\"360\">Come &amp; enjoy our regular jazz nights</h2>\nOur friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\n\nWe feature a range of very talented local bands playing great jazz music in a relaxed yet vibrant environment. The regular jazz nights feature a sit-in bracket and dancers are most welcome. Meals and bar facility available. No need to book.', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-05-23 00:01:38', '2022-05-22 14:01:38', '', 5, 'https://boyds.sgedu.site/staging-tjc/?p=145', 0, 'revision', '', 0),
(146, 1, '2022-05-23 00:02:06', '2022-05-22 14:02:06', '<h2><img class=\"alignleft wp-image-42\" src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Anthony-and-the-Gentlemen-of-Jazz-.jpg\" alt=\"Anthony-and-the-Gentlemen-of-Jazz--1\" width=\"540\" height=\"360\">Come &amp; enjoy our regular jazz nights</h2>\nOur friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\n\nWe feature a range of very talented local bands playing great jazz music in a relaxed yet vibrant environment. The regular jazz nights feature a sit-in bracket and dancers are most welcome. Meals and bar facility available. No need to book.', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-05-23 00:02:06', '2022-05-22 14:02:06', '', 5, 'https://boyds.sgedu.site/staging-tjc/?p=146', 0, 'revision', '', 0),
(147, 1, '2022-05-23 00:02:30', '2022-05-22 14:02:30', '<h2><img class=\"alignleft wp-image-42\" src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Anthony-and-the-Gentlemen-of-Jazz-.jpg\" alt=\"Anthony-and-the-Gentlemen-of-Jazz--1\" width=\"540\" height=\"360\">Come &amp; enjoy our regular jazz nights</h2>\nOur friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years. We encourage new guests to become members and to actively participate in the club’s functions.\n\nWe feature a range of very talented local bands playing great jazz music in a relaxed yet vibrant environment. The regular jazz nights feature a sit-in bracket and dancers are most welcome. Meals and bar facility available. No need to book.', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-05-23 00:02:30', '2022-05-22 14:02:30', '', 5, 'https://boyds.sgedu.site/staging-tjc/?p=147', 0, 'revision', '', 0),
(149, 1, '2022-05-23 00:05:03', '2022-05-22 14:05:03', '<!-- wp:html -->\n<div class=\"alert alert-secondary\">To avoid disappointment book early.  Every previous session has booked out early.</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>For booking please call: Coralie Costigan, Club Secretary <strong>0431 618 618</strong> or fill in the <a href=\"#contact-form\" data-type=\"internal\" data-id=\"#contact-form\">contact form</a> and we\'ll get back to you as soon as possible.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Location</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>334 Flinders St, Townsville QLD 4810<br>Hotel Grand Chancellor - First floor Pandora Room - The Sugar Shaker (Lounge Bar)<br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<div class=\"row\">\n<div class=\"col-sm-6\">\n<img class=\"w-100 img-fluid\" src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/our-location-1-1024x491.jpg\" alt=\"location\">\n</div>\n<div class=\"col-sm-6\">\n<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"167\" style=\"margin-bottom:20px; border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\n</div>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:heading -->\n<h2 id=\"contact-form\">Contact us</h2>\n<!-- /wp:heading -->\n\n<!-- wp:wpforms/form-selector {\"formId\":\"94\"} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-05-23 00:05:03', '2022-05-22 14:05:03', '', 29, 'https://boyds.sgedu.site/staging-tjc/?p=149', 0, 'revision', '', 0),
(150, 1, '2022-05-23 00:06:52', '2022-05-22 14:06:52', '', 'Love 4 Swing', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2022-05-23 00:06:52', '2022-05-22 14:06:52', '', 143, 'https://boyds.sgedu.site/staging-tjc/?p=150', 0, 'revision', '', 0),
(151, 1, '2022-05-23 00:07:25', '2022-05-22 14:07:25', '', 'Pacific Mainstream Jazz Band', '', 'publish', 'open', 'closed', '', 'peter-uppman', '', '', '2022-05-23 00:08:09', '2022-05-22 14:08:09', '', 0, 'https://boyds.sgedu.site/staging-tjc/?post_type=tribe_events&#038;p=151', 0, 'tribe_events', '', 0),
(152, 1, '2022-05-23 00:07:25', '2022-05-22 14:07:25', '', 'Peter Uppman', '', 'inherit', 'closed', 'closed', '', '151-revision-v1', '', '', '2022-05-23 00:07:25', '2022-05-22 14:07:25', '', 151, 'https://boyds.sgedu.site/staging-tjc/?p=152', 0, 'revision', '', 0),
(153, 1, '2022-05-23 00:08:09', '2022-05-22 14:08:09', '', 'Pacific Mainstream Jazz Band', '', 'inherit', 'closed', 'closed', '', '151-revision-v1', '', '', '2022-05-23 00:08:09', '2022-05-22 14:08:09', '', 151, 'https://boyds.sgedu.site/staging-tjc/?p=153', 0, 'revision', '', 0),
(154, 1, '2022-05-23 00:09:11', '2022-05-22 14:09:11', '', 'Sara Shaw will feature with the Steve Martin Quartet', '', 'publish', 'open', 'closed', '', 'sara-shaw-will-feature-with-the-steve-martin-quartet', '', '', '2022-05-23 00:09:11', '2022-05-22 14:09:11', '', 0, 'https://boyds.sgedu.site/staging-tjc/?post_type=tribe_events&#038;p=154', 0, 'tribe_events', '', 0),
(155, 1, '2022-05-23 00:09:11', '2022-05-22 14:09:11', '', 'Sara Shaw will feature with the Steve Martin Quartet', '', 'inherit', 'closed', 'closed', '', '154-revision-v1', '', '', '2022-05-23 00:09:11', '2022-05-22 14:09:11', '', 154, 'https://boyds.sgedu.site/staging-tjc/?p=155', 0, 'revision', '', 0),
(156, 1, '2022-05-23 00:09:39', '2022-05-22 14:09:39', '', 'Roger Clarke and friends', '', 'publish', 'open', 'closed', '', 'roger-clarke-and-friends', '', '', '2022-05-23 00:09:39', '2022-05-22 14:09:39', '', 0, 'https://boyds.sgedu.site/staging-tjc/?post_type=tribe_events&#038;p=156', 0, 'tribe_events', '', 0),
(157, 1, '2022-05-23 00:09:39', '2022-05-22 14:09:39', '', 'Roger Clarke and friends', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2022-05-23 00:09:39', '2022-05-22 14:09:39', '', 156, 'https://boyds.sgedu.site/staging-tjc/?p=157', 0, 'revision', '', 0),
(158, 1, '2022-05-23 00:10:11', '2022-05-22 14:10:11', '', 'Andrew Dajski & friends', '', 'publish', 'open', 'closed', '', 'andrew-dajski-friends', '', '', '2022-05-23 00:10:11', '2022-05-22 14:10:11', '', 0, 'https://boyds.sgedu.site/staging-tjc/?post_type=tribe_events&#038;p=158', 0, 'tribe_events', '', 0),
(159, 1, '2022-05-23 00:10:11', '2022-05-22 14:10:11', '', 'Andrew Dajski & friends', '', 'inherit', 'closed', 'closed', '', '158-revision-v1', '', '', '2022-05-23 00:10:11', '2022-05-22 14:10:11', '', 158, 'https://boyds.sgedu.site/staging-tjc/?p=159', 0, 'revision', '', 0),
(160, 1, '2022-05-23 00:10:44', '2022-05-22 14:10:44', '', 'Larry Thomson & friends', '', 'publish', 'open', 'closed', '', 'larry-thomson-friends', '', '', '2022-05-23 00:10:44', '2022-05-22 14:10:44', '', 0, 'https://boyds.sgedu.site/staging-tjc/?post_type=tribe_events&#038;p=160', 0, 'tribe_events', '', 0),
(161, 1, '2022-05-23 00:10:44', '2022-05-22 14:10:44', '', 'Larry Thomson & friends', '', 'inherit', 'closed', 'closed', '', '160-revision-v1', '', '', '2022-05-23 00:10:44', '2022-05-22 14:10:44', '', 160, 'https://boyds.sgedu.site/staging-tjc/?p=161', 0, 'revision', '', 0),
(162, 1, '2022-05-23 00:11:15', '2022-05-22 14:11:15', '', 'Jeremy Hawker and the Juniors', '', 'publish', 'open', 'closed', '', 'jeremy-hawker-and-the-juniors', '', '', '2022-05-23 00:11:15', '2022-05-22 14:11:15', '', 0, 'https://boyds.sgedu.site/staging-tjc/?post_type=tribe_events&#038;p=162', 0, 'tribe_events', '', 0),
(163, 1, '2022-05-23 00:11:15', '2022-05-22 14:11:15', '', 'Jeremy Hawker and the Juniors', '', 'inherit', 'closed', 'closed', '', '162-revision-v1', '', '', '2022-05-23 00:11:15', '2022-05-22 14:11:15', '', 162, 'https://boyds.sgedu.site/staging-tjc/?p=163', 0, 'revision', '', 0),
(164, 1, '2022-05-23 00:11:52', '2022-05-22 14:11:52', '', 'Major Feelgood  (John Trigg Quintet)', '', 'publish', 'open', 'closed', '', 'major-feelgood-john-trigg-quintet', '', '', '2022-05-23 00:11:52', '2022-05-22 14:11:52', '', 0, 'https://boyds.sgedu.site/staging-tjc/?post_type=tribe_events&#038;p=164', 0, 'tribe_events', '', 0),
(165, 1, '2022-05-23 00:11:52', '2022-05-22 14:11:52', '', 'Major Feelgood  (John Trigg Quintet)', '', 'inherit', 'closed', 'closed', '', '164-revision-v1', '', '', '2022-05-23 00:11:52', '2022-05-22 14:11:52', '', 164, 'https://boyds.sgedu.site/staging-tjc/?p=165', 0, 'revision', '', 0),
(166, 1, '2022-05-23 01:44:03', '2022-05-22 14:14:12', '', 'Bands', '', 'publish', 'closed', 'closed', '', 'bands', '', '', '2022-05-23 01:44:03', '2022-05-22 15:44:03', '', 0, 'https://boyds.sgedu.site/staging-tjc/?p=166', 5, 'nav_menu_item', '', 0),
(167, 1, '2022-05-23 00:33:40', '2022-05-22 14:33:40', '<!-- wp:paragraph -->\n<p>The Stokes Nicholson Big Band (SNBB) was formed in 1991 through collaboration between the late Roy Stokes and Les Nicholson. Each man had his own individual reasons for wanting a Big Band, perhaps influenced by the difference in their ages with Roy being 17 years older than Les. Roy wanted to create an opportunity to keep experienced musicians playing challenging music so their talents didn\'t go rusty. Les came from a different perspective and wanted to provide an opportunity for music students of all ages to sit beside experienced jazz musicians to absorb the musical synergy that classroom teaching alone cannot develop.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A number of experienced musicians were invited to join the various sections of the new Big Band with most sections being led by a member of Les\' already well-established Pacific Mainstream Jazz Band. The original Principals were Roy Stokes (not a member of PMJB), saxophone; Les Nicholson, trumpet; Neville Minon, trombone; and Bob Hebden, rhythm. Roy, Neville and Peter Alloway were all still private music teachers at this time and some of their pupils were the first students to be part of this adventure.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The Stokes Nicholson Big Band was up and running, meeting once a month for rehearsals with an expectation that each section would practice individually or as a group in between these rehearsals.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sadly Roy passed away on 1st January 1993 after a period of illness. Les continued to manage the band and conduct rehearsals, as well as playing first trumpet. In 1997 he enlisted the help of John Ruffle who took on the role of Musical Director, allowing Les to relax a little and enjoy his playing more. Roy would no doubt be very proud to see how much his beloved Big Band has developed since its formation as it is now a very accomplished band with a diverse repertoire and the technical expertise capable of backing great Jazz singers.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The band today demonstrates it has achieved the aims of both Roy and Les with experienced musicians arriving in town and feeling very proud to join such a powerful Big Band. A number of the original student members from 1991 are still in the band and have now joined the ranks of the experienced musicians and new students are still progressing from school bands to the Stokes Nicholson Big Band.</p>\n<!-- /wp:paragraph -->', 'The Stokes Nicholson Big Band', '', 'publish', 'closed', 'closed', '', 'the-stokes-nicholson-big-band', '', '', '2022-05-23 00:33:40', '2022-05-22 14:33:40', '', 0, 'https://boyds.sgedu.site/staging-tjc/?post_type=band&#038;p=167', 0, 'band', '', 0),
(168, 1, '2022-05-23 00:33:24', '2022-05-22 14:33:24', '', 'HOMEBANDSJAZZ RADIOPHOTOSJAZZ FESTIVALMEMBER INFO HISTORYPROGRAMLOCATION  The Stokes Nicholson Big Band', '', 'inherit', 'open', 'closed', '', 'wpb0fb622b_05_06-1', '', '', '2022-05-23 00:33:35', '2022-05-22 14:33:35', '', 167, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wpb0fb622b_05_06-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(169, 1, '2022-05-23 00:36:00', '2022-05-22 14:36:00', '<!-- wp:paragraph -->\n<p>Bob Passmore formed Counterpoint around 1991 when he first became involved with the NQ Jazz Club at the Rugby League Club in Redpath Street, North Ward. The band’s name is from the musical term counterpoint – a melody added as accompaniment to an existing melody – somewhat like jazz...<br><br>Since those early days Counterpoint basically operates as a vehicle to showcase visiting (or local) musicians because of its fluid membership.<br><br>Current basic trio line-up is<br>Piano &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;John Ruffle or Steve Martin<br>Drums &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;Reg Braun or Doug Lye<br>Bass &amp; sax &nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;Bob Passmore<br><br><br>Additional members<br>Vocals -&nbsp;Vicki Salisbury or Sara Shaw</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Horns &nbsp;-&nbsp;Les Nicholson, David Salisbury<br>Guitar &nbsp;-&nbsp;Larry Thomson<br><br>Counterpoint plays Swing, Modern Jazz (generally not bop or fusion) and Latin styles.<br><br>Musical Biography&nbsp;– Bob Passmore</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Had three months of piano lessons when about 10 years of age, first started saxophone (alto) at age 14, played country dance bands from about 15 to 19 years old. From age 20 to 38 years mainly played in pub bands, show bands (very little jazz) in both Brisbane and Townsville.<br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Around 1974/75 Bob played with the Battersby Big Band Sweet Inspiration on a regular TV show and at the Musos Ball at the beautiful old Cloudland Ballroom in Brisbane which had the best dance floor imaginable.<br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A couple of years later, just before he came to Townsville, Bob was offered an opportunity to play in the Lotus Room (which was Brisbane’s most well-known jazz club) and the spot was for a bass player. “So I had to learn overnight! I was awful for a long while!” recalls Bob.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In about 1985 Bob started working with Larry Thomson and developing his knowledge of jazz – which had been a passion since a very early age. Muggsy Spanier, Louis Jordan, Ray Charles and Freddy Gardiner were his earliest influences. Around this time Bob joined Les Nicholson’s Pacific Mainstream Jazz Band and is still playing sax in this band.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When Brian Lane raised the idea in 1997 of starting an activity to encourage young jazz musicians Bob became one of the Directors of Nth Qld Junior Jazz Festival Inc. which ran for seven years. He has also been heavily involved in all of the Palmer Street Jazz Festivals since it commenced in 1997.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bob’s association with NQ Jazz Club has continued since the early 1990s and in 2011 he joined the committee with the primary role of co-ordinating the jazz bands for the club’s annual program of bi-monthly gigs. In addition to this role, Bob co-ordinates bands for a variety of venues throughout the year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In the words of Steve martin, a fellow Townsville jazz musician “Bob is probably the current father of jazz in Townsville. It would not be what it is today without his constant input and enthusiasm driving it along... finding gigs... talking to management etc., etc.”</p>\n<!-- /wp:paragraph -->', 'Counterpoint ', '', 'publish', 'closed', 'closed', '', 'counterpoint', '', '', '2022-05-23 00:36:00', '2022-05-22 14:36:00', '', 0, 'https://boyds.sgedu.site/staging-tjc/?post_type=band&#038;p=169', 0, 'band', '', 0),
(170, 1, '2022-05-23 00:35:19', '2022-05-22 14:35:19', '', 'Counterpoint', '', 'inherit', 'open', 'closed', '', 'counterpoint', '', '', '2022-05-23 00:35:23', '2022-05-22 14:35:23', '', 169, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Counterpoint.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(171, 1, '2022-05-23 00:40:20', '2022-05-22 14:40:20', '<!-- wp:paragraph -->\n<p>The story so far by Reg Braun...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>TRB4 formed in early 2010. My old mate, Bob Passmore, suspected that Gavin Forno (bass guitar), Rebecca McHutchison (saxophone &amp; vocals), Mark Wyer (piano) and myself (drums) might sound good together. Our first gig confirmed the wisdom of Bob’s discerning ears. We ‘clicked’ right from the start. We’d thrown around all sorts of names for our ensemble and finally settled on TRB4, in time for the 2010 Palmer Street Jazz Festival.<br><br>We all play with many other groups and bring those experiences with us to TRB4. This synthesises into unique musical performances using all the colours on the palette as we collaborate for the greater good of the music.<br><br>Rebecca’s smouldering ballads can stand the hair up on the back of your neck. Mark’s piano has a glorious elegance. His technical brilliance is balanced with spaciousness and nuance. Gavin’s bass can lure us into funkier territory. There’s always new ways to interpret the old standards. As well as foot stomping swing we like to explore playing softly and slowly, exploring the nuance of the song. We all particularly enjoy Latin rhythms. On brushes mallets or sticks, I play with both the lyric and the music in mind as I create a rhythmic framework under the other musicians. As American jazz drummer Shelly Manne once said: “we never play a tune the same way once”</p>\n<!-- /wp:paragraph -->', 'TRB4 (The Reg Braun Four)', '', 'publish', 'closed', 'closed', '', 'trb4-the-reg-braun-four', '', '', '2022-05-23 00:40:20', '2022-05-22 14:40:20', '', 0, 'https://boyds.sgedu.site/staging-tjc/?post_type=band&#038;p=171', 0, 'band', '', 0),
(172, 1, '2022-05-23 00:39:28', '2022-05-22 14:39:28', '', 'TRB4 (The Reg Braun Four)', '', 'inherit', 'open', 'closed', '', 'trb4-the-reg-braun-four', '', '', '2022-05-23 00:39:31', '2022-05-22 14:39:31', '', 171, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/TRB4-The-Reg-Braun-Four.jpg', 0, 'attachment', 'image/jpeg', 0),
(173, 1, '2022-05-23 00:42:08', '2022-05-22 14:42:08', '<!-- wp:paragraph -->\n<p><em>Type A Personality Jazz&nbsp;describes a musical ensemble comprised of confident band leaders with big personalities (no one here mentioned egos did they?). &nbsp;</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The original group consisted of Larry Thomson on keyboard, Les Nicholson on trumpet, Bob Passmore on bass, Justin Cataldo on drums, David Salisbury on sax and vocalist Vicki Salisbury. &nbsp;Each of these players heads up their own musical group from Cataldo\'s&nbsp;<em>The Kitchen</em>&nbsp;to the&nbsp;<em>Stokes Nicholson Big Band</em>&nbsp;founded by Les; &nbsp;Vicki and the Captain in&nbsp;<em>Captain Nemo</em>&nbsp;and Bob\'s&nbsp;<em>Counterpoint</em>,&nbsp;<em>Magnetic Views</em>&nbsp;for Larry as well as the various other bands many of us have been involved with. &nbsp;Obviously the A-Type brand was the perfect fit for this crew! &nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The group was formed in 2011 and has performed at the Townsville Jazz Club, Magnetic Island\'s Tropical Jazz Party, Townsville JazzFest, the Jezzine Barracks launch and various gigs here and there.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The composition of&nbsp;<em>Type A Personality Jazz</em>&nbsp;changes with availability of players, however what does not change is the ethos the group was founded on, &nbsp;our mutual passion for jazz and loving the spotlight.</p>\n<!-- /wp:paragraph -->', 'Type a Personality Jazz Ensemble', '', 'publish', 'closed', 'closed', '', 'type-a-personality-jazz-ensemble', '', '', '2022-05-23 00:42:08', '2022-05-22 14:42:08', '', 0, 'https://boyds.sgedu.site/staging-tjc/?post_type=band&#038;p=173', 0, 'band', '', 0),
(174, 1, '2022-05-23 00:41:40', '2022-05-22 14:41:40', '', 'Type a Personality Jazz Ensemble', '', 'inherit', 'open', 'closed', '', 'type-a-personality-jazz-ensemble', '', '', '2022-05-23 00:41:43', '2022-05-22 14:41:43', '', 173, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Type-a-Personality-Jazz-Ensemble.jpg', 0, 'attachment', 'image/jpeg', 0),
(176, 1, '2022-05-23 00:45:11', '2022-05-22 14:45:11', '', '173485030_292458865619274_1885454902808024696_n', '', 'inherit', 'open', 'closed', '', '173485030_292458865619274_1885454902808024696_n', '', '', '2022-05-23 00:45:11', '2022-05-22 14:45:11', '', 27, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/173485030_292458865619274_1885454902808024696_n.jpeg', 0, 'attachment', 'image/jpeg', 0),
(177, 1, '2022-05-23 00:45:13', '2022-05-22 14:45:13', '', 'Sit-in-bracket-4', '', 'inherit', 'open', 'closed', '', 'sit-in-bracket-4', '', '', '2022-05-23 00:45:13', '2022-05-22 14:45:13', '', 27, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Sit-in-bracket-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(178, 1, '2022-05-23 00:45:14', '2022-05-22 14:45:14', '', 'Sit-in-bracket-3', '', 'inherit', 'open', 'closed', '', 'sit-in-bracket-3', '', '', '2022-05-23 00:45:14', '2022-05-22 14:45:14', '', 27, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Sit-in-bracket-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(179, 1, '2022-05-23 00:45:17', '2022-05-22 14:45:17', '', 'Opening-night-band', '', 'inherit', 'open', 'closed', '', 'opening-night-band', '', '', '2022-05-23 00:45:17', '2022-05-22 14:45:17', '', 27, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Opening-night-band.jpg', 0, 'attachment', 'image/jpeg', 0),
(180, 1, '2022-05-23 00:45:25', '2022-05-22 14:45:25', '', 'Gentlemen-of-Jazz', '', 'inherit', 'open', 'closed', '', 'gentlemen-of-jazz', '', '', '2022-05-23 00:45:25', '2022-05-22 14:45:25', '', 27, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Gentlemen-of-Jazz.jpg', 0, 'attachment', 'image/jpeg', 0),
(181, 1, '2022-05-23 00:47:04', '2022-05-22 14:47:04', '', 'wp21ffe78f_05_06', '', 'inherit', 'open', 'closed', '', 'wp21ffe78f_05_06', '', '', '2022-05-23 00:47:04', '2022-05-22 14:47:04', '', 27, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp21ffe78f_05_06.jpg', 0, 'attachment', 'image/jpeg', 0),
(182, 1, '2022-05-23 00:47:13', '2022-05-22 14:47:13', '', 'wp37a0e7f6_05_06', '', 'inherit', 'open', 'closed', '', 'wp37a0e7f6_05_06', '', '', '2022-05-23 00:47:13', '2022-05-22 14:47:13', '', 27, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp37a0e7f6_05_06.jpg', 0, 'attachment', 'image/jpeg', 0),
(183, 1, '2022-05-23 00:47:25', '2022-05-22 14:47:25', '', 'wp326e5d43_05_06', '', 'inherit', 'open', 'closed', '', 'wp326e5d43_05_06', '', '', '2022-05-23 00:47:25', '2022-05-22 14:47:25', '', 27, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp326e5d43_05_06.jpg', 0, 'attachment', 'image/jpeg', 0),
(184, 1, '2022-05-23 00:47:39', '2022-05-22 14:47:39', '', 'wp9e125d82_05_06', '', 'inherit', 'open', 'closed', '', 'wp9e125d82_05_06', '', '', '2022-05-23 00:47:39', '2022-05-22 14:47:39', '', 27, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp9e125d82_05_06.jpg', 0, 'attachment', 'image/jpeg', 0),
(185, 1, '2022-05-23 00:47:47', '2022-05-22 14:47:47', '', 'wp6c5de4ed_05_06', '', 'inherit', 'open', 'closed', '', 'wp6c5de4ed_05_06', '', '', '2022-05-23 00:47:47', '2022-05-22 14:47:47', '', 27, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp6c5de4ed_05_06.jpg', 0, 'attachment', 'image/jpeg', 0),
(186, 1, '2022-05-23 00:47:55', '2022-05-22 14:47:55', '', 'wp9c68b804_05_06', '', 'inherit', 'open', 'closed', '', 'wp9c68b804_05_06', '', '', '2022-05-23 00:47:55', '2022-05-22 14:47:55', '', 27, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp9c68b804_05_06.jpg', 0, 'attachment', 'image/jpeg', 0),
(187, 1, '2022-05-23 00:48:02', '2022-05-22 14:48:02', '', 'wp25f7a282_05_06', '', 'inherit', 'open', 'closed', '', 'wp25f7a282_05_06', '', '', '2022-05-23 00:48:02', '2022-05-22 14:48:02', '', 27, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp25f7a282_05_06.jpg', 0, 'attachment', 'image/jpeg', 0),
(188, 1, '2022-05-23 00:48:07', '2022-05-22 14:48:07', '', 'wp29b6641d_05_06', '', 'inherit', 'open', 'closed', '', 'wp29b6641d_05_06', '', '', '2022-05-23 00:48:07', '2022-05-22 14:48:07', '', 27, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp29b6641d_05_06.jpg', 0, 'attachment', 'image/jpeg', 0),
(189, 1, '2022-05-23 00:48:15', '2022-05-22 14:48:15', '', 'wp48fd89be_05_06', '', 'inherit', 'open', 'closed', '', 'wp48fd89be_05_06', '', '', '2022-05-23 00:48:15', '2022-05-22 14:48:15', '', 27, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp48fd89be_05_06.jpg', 0, 'attachment', 'image/jpeg', 0),
(190, 1, '2022-05-23 00:48:23', '2022-05-22 14:48:23', '', 'wp73ae0984_05_06', '', 'inherit', 'open', 'closed', '', 'wp73ae0984_05_06', '', '', '2022-05-23 00:48:23', '2022-05-22 14:48:23', '', 27, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp73ae0984_05_06.jpg', 0, 'attachment', 'image/jpeg', 0),
(191, 1, '2022-05-23 00:48:28', '2022-05-22 14:48:28', '', 'wp71c5eafc_05_06', '', 'inherit', 'open', 'closed', '', 'wp71c5eafc_05_06', '', '', '2022-05-23 00:48:28', '2022-05-22 14:48:28', '', 27, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp71c5eafc_05_06.jpg', 0, 'attachment', 'image/jpeg', 0),
(192, 1, '2022-05-23 00:48:55', '2022-05-22 14:48:55', '', 'wp11e037dd_05_06', '', 'inherit', 'open', 'closed', '', 'wp11e037dd_05_06', '', '', '2022-05-23 00:48:55', '2022-05-22 14:48:55', '', 27, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp11e037dd_05_06.jpg', 0, 'attachment', 'image/jpeg', 0),
(193, 1, '2022-05-23 00:49:28', '2022-05-22 14:49:28', '<!-- wp:gallery {\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped\"><!-- wp:image {\"id\":192,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp11e037dd_05_06.jpg\" alt=\"\" class=\"wp-image-192\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":176,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/173485030_292458865619274_1885454902808024696_n-1024x602.jpeg\" alt=\"\" class=\"wp-image-176\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":183,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp326e5d43_05_06.jpg\" alt=\"\" class=\"wp-image-183\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":179,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Opening-night-band-1024x768.jpg\" alt=\"\" class=\"wp-image-179\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":177,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Sit-in-bracket-4-1024x683.jpg\" alt=\"\" class=\"wp-image-177\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":191,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp71c5eafc_05_06.jpg\" alt=\"\" class=\"wp-image-191\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":184,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp9e125d82_05_06.jpg\" alt=\"\" class=\"wp-image-184\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":190,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp73ae0984_05_06.jpg\" alt=\"\" class=\"wp-image-190\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":185,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp6c5de4ed_05_06.jpg\" alt=\"\" class=\"wp-image-185\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":182,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp37a0e7f6_05_06.jpg\" alt=\"\" class=\"wp-image-182\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":187,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp25f7a282_05_06.jpg\" alt=\"\" class=\"wp-image-187\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":186,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp9c68b804_05_06.jpg\" alt=\"\" class=\"wp-image-186\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":178,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Sit-in-bracket-3-1024x683.jpg\" alt=\"\" class=\"wp-image-178\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":189,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp48fd89be_05_06.jpg\" alt=\"\" class=\"wp-image-189\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":188,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp29b6641d_05_06.jpg\" alt=\"\" class=\"wp-image-188\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":181,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp21ffe78f_05_06.jpg\" alt=\"\" class=\"wp-image-181\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":180,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/Gentlemen-of-Jazz-1024x683.jpg\" alt=\"\" class=\"wp-image-180\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->', 'Gallery', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2022-05-23 00:49:28', '2022-05-22 14:49:28', '', 27, 'https://boyds.sgedu.site/staging-tjc/?p=193', 0, 'revision', '', 0),
(195, 1, '2022-05-23 00:55:24', '2022-05-22 14:55:24', '', 'wp71c5eafc_05_06-1', '', 'inherit', 'open', 'closed', '', 'wp71c5eafc_05_06-1', '', '', '2022-05-23 00:55:24', '2022-05-22 14:55:24', '', 25, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp71c5eafc_05_06-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(196, 1, '2022-05-23 00:55:40', '2022-05-22 14:55:40', '<!-- wp:paragraph -->\n<p>The founders of Nth Qld Junior Jazz Inc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Brian Lane<br>Peter Martin<br>Bob Passmore<br>Les Nicholson</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":195,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp71c5eafc_05_06-1.jpg\" alt=\"\" class=\"wp-image-195\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><strong>1997 – 2008 North Queensland Junior Jazz Inc.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Although North Queensland Junior Jazz Inc. was a not a NQ Jazz Club program and operated independently, there was a positive rapport between the two organizations and a willingness by the NQ Jazz Club’s committee to support the aim of Junior Jazz. It is therefore appropriate that Junior Jazz be given the recognition it deserves on the NQ Jazz Club website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The Junior Jazz concept was initiated by Brian Lane who was then ably supported by jazz musicians<br>Les Nicholson, Peter Martin and Bob Passmore.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>From 1997 to 2007 Junior Jazz provided an annual opportunity for high school jazz bands to perform before an audience, including a panel of professional jazz musicians, and to be adjudicated on their performance. This was not a competition but an assessment of each band’s performance against several criteria with feedback given personally to each band leader.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When Junior Jazz started this was perhaps the only opportunity for school bands to demonstrate their interest, understanding and competence in the jazz genre and enthusiasm to take part was very high. One year a record 17 schools took part including bands travelling from Mackay, Charters Towers, Ayr and Ingham as well as several from Townsville. This fantastic participation rate was in no doubt due to the concerted liaison with schools conducted by Junior Jazz President, Brian Lane.  As the school music programs gained momentum, students had multiple performance options and Junior Jazz numbers declined until the organisers decided to wind up the North Queensland Junior Jazz Festival Organisation Inc. in 2008. The Directors of Junior Jazz unanimously voted to disperse the remaining Junior Jazz funds to  the NQ Jazz Club Inc. subject to the terms and conditions listed in a Memorandum of Understanding signed on 25th July 2008. The sum of $2,412.50 was transferred to the NQ Jazz Club on 28th July 2008 and has been used in accordance with the Memorandum and reported in the Treasurer’s Reports each year since that time.</p>\n<!-- /wp:paragraph -->', 'About', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2022-05-23 00:55:40', '2022-05-22 14:55:40', '', 25, 'https://boyds.sgedu.site/staging-tjc/?p=196', 0, 'revision', '', 0),
(197, 1, '2022-05-23 00:57:17', '2022-05-22 14:57:17', '<!-- wp:paragraph -->\n<p>The founders of Nth Qld Junior Jazz Inc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Brian Lane<br>Peter Martin<br>Bob Passmore<br>Les Nicholson</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":195,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp71c5eafc_05_06-1.jpg\" alt=\"\" class=\"wp-image-195\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><strong>1997 – 2008 North Queensland Junior Jazz Inc.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Although North Queensland Junior Jazz Inc. was a not a NQ Jazz Club program and operated independently, there was a positive rapport between the two organizations and a willingness by the NQ Jazz Club’s committee to support the aim of Junior Jazz. It is therefore appropriate that Junior Jazz be given the recognition it deserves on the NQ Jazz Club website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The Junior Jazz concept was initiated by Brian Lane who was then ably supported by jazz musicians<br>Les Nicholson, Peter Martin and Bob Passmore.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>From 1997 to 2007 Junior Jazz provided an annual opportunity for high school jazz bands to perform before an audience, including a panel of professional jazz musicians, and to be adjudicated on their performance. This was not a competition but an assessment of each band’s performance against several criteria with feedback given personally to each band leader.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When Junior Jazz started this was perhaps the only opportunity for school bands to demonstrate their interest, understanding and competence in the jazz genre and enthusiasm to take part was very high. One year a record 17 schools took part including bands travelling from Mackay, Charters Towers, Ayr and Ingham as well as several from Townsville. This fantastic participation rate was in no doubt due to the concerted liaison with schools conducted by Junior Jazz President, Brian Lane. &nbsp;As the school music programs gained momentum, students had multiple performance options and Junior Jazz numbers declined until the organisers decided to wind up the North Queensland Junior Jazz Festival Organisation Inc. in 2008. The Directors of Junior Jazz unanimously voted to disperse the remaining Junior Jazz funds to &nbsp;the NQ Jazz Club Inc. subject to the terms and conditions listed in a Memorandum of Understanding signed on 25th July 2008. The sum of $2,412.50 was transferred to the NQ Jazz Club on 28th July 2008 and has been used in accordance with the Memorandum and reported in the Treasurer’s Reports each year since that time.</p>\n<!-- /wp:paragraph -->', 'History', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2022-05-23 00:57:17', '2022-05-22 14:57:17', '', 25, 'https://boyds.sgedu.site/staging-tjc/?p=197', 0, 'revision', '', 0),
(198, 1, '2022-05-23 01:44:03', '2022-05-22 14:58:11', ' ', '', '', 'publish', 'closed', 'closed', '', '198', '', '', '2022-05-23 01:44:03', '2022-05-22 15:44:03', '', 0, 'https://boyds.sgedu.site/staging-tjc/?p=198', 6, 'nav_menu_item', '', 0),
(199, 1, '2022-05-23 01:06:19', '2022-05-22 15:06:19', '<!-- wp:html -->\n<div class=\"alert alert-secondary\">To avoid disappointment book early.  Every previous session has booked out early.</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>For booking please call: Coralie Costigan, Club Secretary <strong>0431 618 618</strong> or fill in the <a href=\"#contact-form\" data-type=\"internal\" data-id=\"#contact-form\">contact form</a> and we\'ll get back to you as soon as possible.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Location</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>334 Flinders St, Townsville QLD 4810<br>Hotel Grand Chancellor - First floor Pandora Room - The Sugar Shaker (Lounge Bar)<br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<div class=\"row\">\n<div class=\"col-sm-6\">\n<img class=\"w-100 img-fluid\" src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/our-location-1-1024x491.jpg\" alt=\"location\">\n</div>\n<div class=\"col-sm-6\">\n<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"167\" style=\"margin-bottom:20px; border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\n</div>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 id=\"contact-form\">Contact us</h2>\n<!-- /wp:heading -->\n\n<!-- wp:wpforms/form-selector {\"formId\":\"94\"} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-05-23 01:06:19', '2022-05-22 15:06:19', '', 29, 'https://boyds.sgedu.site/staging-tjc/?p=199', 0, 'revision', '', 0),
(200, 1, '2022-05-23 01:06:41', '2022-05-22 15:06:41', '<!-- wp:html -->\n<div class=\"alert alert-secondary\">To avoid disappointment book early.  Every previous session has booked out early.</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>For booking please call: Coralie Costigan, Club Secretary <strong>0431 618 618</strong> or fill in the <a href=\"#contact-form\" data-type=\"internal\" data-id=\"#contact-form\">contact form</a> and we\'ll get back to you as soon as possible.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Location</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>334 Flinders St, Townsville QLD 4810<br>Hotel Grand Chancellor - First floor Pandora Room - The Sugar Shaker (Lounge Bar)<br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<div class=\"row\">\n<div class=\"col-sm-6\">\n<img class=\"w-100 img-fluid\" src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/our-location-1-1024x491.jpg\" alt=\"location\">\n</div>\n<div class=\"col-sm-6\">\n<iframe class=\"map\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau\" width=\"100%\" height=\"167\" style=\"margin-bottom:20px; border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\n</div>\n</div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p><br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 id=\"contact-form\">Contact us</h2>\n<!-- /wp:heading -->\n\n<!-- wp:wpforms/form-selector {\"formId\":\"94\"} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2022-05-23 01:06:41', '2022-05-22 15:06:41', '', 29, 'https://boyds.sgedu.site/staging-tjc/?p=200', 0, 'revision', '', 0),
(201, 1, '2022-05-23 01:08:03', '2022-05-22 15:08:03', '', 'wp7952cc09_05_06', '', 'inherit', 'open', 'closed', '', 'wp7952cc09_05_06', '', '', '2022-05-23 01:08:03', '2022-05-22 15:08:03', '', 1, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp7952cc09_05_06.jpg', 0, 'attachment', 'image/jpeg', 0),
(203, 1, '2022-05-23 01:09:08', '2022-05-22 15:09:08', '', 'wp6538cd08_05_06', '', 'inherit', 'open', 'closed', '', 'wp6538cd08_05_06', '', '', '2022-05-23 01:09:08', '2022-05-22 15:09:08', '', 1, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp6538cd08_05_06.jpg', 0, 'attachment', 'image/jpeg', 0),
(204, 1, '2022-05-23 01:09:14', '2022-05-22 15:09:14', '', 'wpcaa8c393_05_06', '', 'inherit', 'open', 'closed', '', 'wpcaa8c393_05_06', '', '', '2022-05-23 01:09:14', '2022-05-22 15:09:14', '', 1, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wpcaa8c393_05_06.jpg', 0, 'attachment', 'image/jpeg', 0),
(205, 1, '2022-05-23 01:09:41', '2022-05-22 15:09:41', '<!-- wp:paragraph -->\n<p>This was it for 2021.    We will be back next year. Watch this space.  More photo’s on the <a href=\"https://boyds.sgedu.site/staging-tjc/gallery/\" data-type=\"page\" data-id=\"27\">Gallery</a> page.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped\"><!-- wp:image {\"id\":204,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wpcaa8c393_05_06.jpg\" alt=\"\" class=\"wp-image-204\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":203,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp6538cd08_05_06.jpg\" alt=\"\" class=\"wp-image-203\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->', 'Jazz Festival 2021', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2022-05-23 01:09:41', '2022-05-22 15:09:41', '', 1, 'https://boyds.sgedu.site/staging-tjc/?p=205', 0, 'revision', '', 0),
(206, 1, '2022-05-23 01:11:24', '2022-05-22 15:11:24', '<!-- wp:paragraph -->\n<p>This was it for 2021. &nbsp;&nbsp;&nbsp;We will be back next year. Watch this space.  More photo’s on the <a href=\"https://boyds.sgedu.site/staging-tjc/gallery/\" data-type=\"page\" data-id=\"27\">Gallery</a> page.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped\"><!-- wp:image {\"id\":204,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wpcaa8c393_05_06.jpg\" alt=\"\" class=\"wp-image-204\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":203,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/wp6538cd08_05_06.jpg\" alt=\"\" class=\"wp-image-203\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->', 'Jazz Festival 2021', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2022-05-23 01:11:24', '2022-05-22 15:11:24', '', 1, 'https://boyds.sgedu.site/staging-tjc/?p=206', 0, 'revision', '', 0),
(209, 1, '2022-05-23 01:37:20', '2022-05-22 15:37:20', '', 'radio-banner2', '', 'inherit', 'open', 'closed', '', 'radio-banner2', '', '', '2022-05-23 01:37:20', '2022-05-22 15:37:20', '', 0, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/radio-banner2.jpg', 0, 'attachment', 'image/jpeg', 0),
(210, 1, '2022-05-23 01:43:25', '2022-05-22 15:42:15', ' ', '', '', 'publish', 'closed', 'closed', '', '210', '', '', '2022-05-23 01:43:25', '2022-05-22 15:43:25', '', 0, 'https://boyds.sgedu.site/staging-tjc/?p=210', 1, 'nav_menu_item', '', 0),
(211, 1, '2022-05-23 01:43:25', '2022-05-22 15:42:15', ' ', '', '', 'publish', 'closed', 'closed', '', '211', '', '', '2022-05-23 01:43:25', '2022-05-22 15:43:25', '', 0, 'https://boyds.sgedu.site/staging-tjc/?p=211', 4, 'nav_menu_item', '', 0),
(212, 1, '2022-05-23 01:43:25', '2022-05-22 15:42:15', ' ', '', '', 'publish', 'closed', 'closed', '', '212', '', '', '2022-05-23 01:43:25', '2022-05-22 15:43:25', '', 0, 'https://boyds.sgedu.site/staging-tjc/?p=212', 5, 'nav_menu_item', '', 0),
(213, 1, '2022-05-23 01:43:25', '2022-05-22 15:42:15', ' ', '', '', 'publish', 'closed', 'closed', '', '213', '', '', '2022-05-23 01:43:25', '2022-05-22 15:43:25', '', 0, 'https://boyds.sgedu.site/staging-tjc/?p=213', 3, 'nav_menu_item', '', 0),
(214, 1, '2022-05-23 01:43:25', '2022-05-22 15:42:15', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2022-05-23 01:43:25', '2022-05-22 15:43:25', '', 0, 'https://boyds.sgedu.site/staging-tjc/?p=214', 2, 'nav_menu_item', '', 0),
(215, 1, '2022-05-23 01:49:57', '2022-05-22 15:49:57', '', 'radio-banner3', '', 'inherit', 'open', 'closed', '', 'radio-banner3', '', '', '2022-05-23 01:49:57', '2022-05-22 15:49:57', '', 0, 'https://boyds.sgedu.site/staging-tjc/wp-content/uploads/2022/05/radio-banner3.jpg', 0, 'attachment', 'image/jpeg', 0),
(216, 1, '2022-05-23 19:17:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2022-05-23 19:17:09', '0000-00-00 00:00:00', '', 0, 'https://boyds.sgedu.site/staging-tjc/?post_type=tribe_events&p=216', 0, 'tribe_events', '', 0),
(217, 1, '2022-05-23 19:18:50', '0000-00-00 00:00:00', '{\n    \"tribe_customizer[global_elements][font_size]\": {\n        \"value\": 0,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-23 09:18:50\"\n    },\n    \"tribe_customizer[global_elements][font_size_base]\": {\n        \"value\": 16,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-23 09:18:50\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '36b6b09f-3fe9-4ef7-adb5-3d4aaa21805d', '', '', '2022-05-23 19:18:50', '0000-00-00 00:00:00', '', 0, 'https://boyds.sgedu.site/staging-tjc/?p=217', 0, 'customize_changeset', '', 0),
(218, 1, '2022-05-23 19:19:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2022-05-23 19:19:50', '0000-00-00 00:00:00', '', 0, 'https://boyds.sgedu.site/staging-tjc/?post_type=tribe_events&p=218', 0, 'tribe_events', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorised', 'uncategorised', 0),
(2, 'team-07-theme', 'team-07-theme', 0),
(3, 'Main Nav Menu', 'main-nav-menu', 0),
(4, 'understrap', 'understrap', 0),
(5, 'team-07-theme2', 'team-07-theme2', 0),
(6, 'Jan Aleman – Guitar Larry Thomson – Trombone Paul Waters – Clarinet Ivan Hauri – Clarinet Luke Portier – Bass Bob Hebden – Drums Les Nicholson – Trumpet', 'jan-aleman-guitar-larry-thomson-trombone-paul-waters-clarinet-ivan-hauri-clarinet-luke-portier-bass-bob-hebden-drums-les-nicholson', 0),
(7, 'Jan Aleman', 'jan-aleman', 0),
(8, 'Larry Thomson', 'larry-thomson', 0),
(9, 'Paul Waters', 'paul-waters', 0),
(10, 'Ivan Hauri', 'ivan-hauri', 0),
(11, 'Luke Portier', 'luke-portier', 0),
(12, 'Luke Portier – Bass Bob Hebden', 'luke-portier-bass-bob-hebden', 0),
(13, 'Bob Hebden', 'bob-hebden', 0),
(14, 'Les Nicholson', 'les-nicholson', 0),
(15, 'Footer menu', 'footer-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 2, 0),
(32, 3, 0),
(33, 3, 0),
(34, 3, 0),
(35, 3, 0),
(36, 3, 0),
(48, 4, 0),
(53, 5, 0),
(66, 3, 0),
(79, 7, 0),
(79, 8, 0),
(79, 9, 0),
(79, 10, 0),
(79, 11, 0),
(79, 13, 0),
(79, 14, 0),
(113, 3, 0),
(166, 3, 0),
(198, 3, 0),
(210, 15, 0),
(211, 15, 0),
(212, 15, 0),
(213, 15, 0),
(214, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 9),
(4, 4, 'wp_theme', '', 0, 1),
(5, 5, 'wp_theme', '', 0, 1),
(6, 6, 'members', '', 0, 0),
(7, 7, 'members', '', 0, 1),
(8, 8, 'members', '', 0, 1),
(9, 9, 'members', '', 0, 1),
(10, 10, 'members', '', 0, 1),
(11, 11, 'members', '', 0, 1),
(12, 12, 'members', '', 0, 0),
(13, 13, 'members', '', 0, 1),
(14, 14, 'members', '', 0, 1),
(15, 15, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Administrator'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:5:{s:64:\"cdc79655e4d388ad28a0ef15d3745589ef2c117eec32ff5fb338284260d33ec5\";a:4:{s:10:\"expiration\";i:1653705564;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36\";s:5:\"login\";i:1652495964;}s:64:\"83a175401512d5c33152b1ccb1a5a4408735c7dbfc6bb45596414677ec52d23c\";a:4:{s:10:\"expiration\";i:1653361435;s:2:\"ip\";s:15:\"220.253.238.233\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36\";s:5:\"login\";i:1653188635;}s:64:\"33f7dd6cd40bd985c6d99d7f87f371b430d43abbc4e6f0c08b1eb0fd30a58f73\";a:4:{s:10:\"expiration\";i:1653393370;s:2:\"ip\";s:15:\"220.253.238.233\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36\";s:5:\"login\";i:1653220570;}s:64:\"8f6ad754af50e12e3ebca53d7e17a91dbc77aa0fcd50810c228dea1f7c7d12d8\";a:4:{s:10:\"expiration\";i:1653466742;s:2:\"ip\";s:13:\"211.27.172.69\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36\";s:5:\"login\";i:1653293942;}s:64:\"733d364a4071970c93bf8f4f211f64dd2463ca803cc003fe16f2f0d8370d55ec\";a:4:{s:10:\"expiration\";i:1653472292;s:2:\"ip\";s:15:\"167.179.186.243\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36\";s:5:\"login\";i:1653299492;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '73'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"211.27.172.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&advImgDetails=hide'),
(20, 1, 'wp_user-settings-time', '1653076478'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '3'),
(24, 1, 'tribe_setDefaultNavMenuBoxes', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Administrator', '$P$B8PUXT/yUiO.wA9dRGBU/7IZzU2ICn/', 'administrator', 'admin@tsvjazzclub.com.au', 'http://127.0.0.1/cp3402-2022-1-site-team07/Website', '2022-05-14 02:39:13', '', 0, 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpfm_backup`
--

CREATE TABLE `wp_wpfm_backup` (
  `id` int(11) NOT NULL,
  `backup_name` text COLLATE utf8mb4_unicode_520_ci,
  `backup_date` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpforms_tasks_meta`
--

CREATE TABLE `wp_wpforms_tasks_meta` (
  `id` bigint(20) NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wpforms_tasks_meta`
--

INSERT INTO `wp_wpforms_tasks_meta` (`id`, `action`, `data`, `date`) VALUES
(1, 'wpforms_process_forms_locator_scan', 'W10=', '2022-05-22 12:07:41'),
(2, 'wpforms_admin_addons_cache_update', 'W10=', '2022-05-22 12:07:41'),
(3, 'wpforms_admin_builder_templates_cache_update', 'W10=', '2022-05-22 12:07:41'),
(4, 'wpforms_admin_notifications_update', 'W10=', '2022-05-22 12:09:35'),
(5, 'wpforms_process_forms_locator_save', 'W3siMTE4IjpbeyJ0eXBlIjoicGFnZSIsInRpdGxlIjoiTWVtYmVyc2hpcCIsImZvcm1faWQiOjExOCwiaWQiOjExMSwic3RhdHVzIjoicHVibGlzaCIsInVybCI6IlwvbWVtYmVyc2hpcFwvIn1dLCI5NCI6W3sidHlwZSI6InBhZ2UiLCJ0aXRsZSI6IkNvbnRhY3QiLCJmb3JtX2lkIjo5NCwiaWQiOjI5LCJzdGF0dXMiOiJwdWJsaXNoIiwidXJsIjoiXC9jb250YWN0XC8ifSx7InR5cGUiOiJ3aWRnZXQiLCJ0aXRsZSI6IkJsb2NrIFdpZGdldCIsImZvcm1faWQiOjk0LCJpZCI6ImJsb2NrLTExIn0seyJ0eXBlIjoid2lkZ2V0IiwidGl0bGUiOiJCbG9jayBXaWRnZXQiLCJmb3JtX2lkIjo5NCwiaWQiOiJibG9jay0xMiJ9XX0sMCwxXQ==', '2022-05-23 12:07:55'),
(6, 'wpforms_admin_notifications_update', 'W10=', '2022-05-23 17:37:05');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wppusher_packages`
--

CREATE TABLE `wp_wppusher_packages` (
  `id` mediumint(9) NOT NULL,
  `package` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `repository` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `branch` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'master',
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `ptd` int(11) NOT NULL,
  `host` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `private` int(11) NOT NULL,
  `subdirectory` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wppusher_packages`
--

INSERT INTO `wp_wppusher_packages` (`id`, `package`, `repository`, `branch`, `type`, `status`, `ptd`, `host`, `private`, `subdirectory`) VALUES
(3, 'team-07-theme2', 'cp3402-students/cp3402-2022-1-site-team07', 'main', 2, 1, 1, 'gh', 0, 'Website/wp-content/themes/team-07-theme2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oit_commentmeta`
--
ALTER TABLE `oit_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `oit_comments`
--
ALTER TABLE `oit_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `oit_links`
--
ALTER TABLE `oit_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `oit_options`
--
ALTER TABLE `oit_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `oit_postmeta`
--
ALTER TABLE `oit_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `oit_posts`
--
ALTER TABLE `oit_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `oit_termmeta`
--
ALTER TABLE `oit_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `oit_terms`
--
ALTER TABLE `oit_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `oit_term_relationships`
--
ALTER TABLE `oit_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `oit_term_taxonomy`
--
ALTER TABLE `oit_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `oit_usermeta`
--
ALTER TABLE `oit_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `oit_users`
--
ALTER TABLE `oit_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `oit_wpfm_backup`
--
ALTER TABLE `oit_wpfm_backup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oit_wppusher_packages`
--
ALTER TABLE `oit_wppusher_packages`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`);

--
-- Indexes for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wpfm_backup`
--
ALTER TABLE `wp_wpfm_backup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpforms_tasks_meta`
--
ALTER TABLE `wp_wpforms_tasks_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wppusher_packages`
--
ALTER TABLE `wp_wppusher_packages`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oit_commentmeta`
--
ALTER TABLE `oit_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oit_comments`
--
ALTER TABLE `oit_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oit_links`
--
ALTER TABLE `oit_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oit_options`
--
ALTER TABLE `oit_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=354;

--
-- AUTO_INCREMENT for table `oit_postmeta`
--
ALTER TABLE `oit_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oit_posts`
--
ALTER TABLE `oit_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oit_termmeta`
--
ALTER TABLE `oit_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oit_terms`
--
ALTER TABLE `oit_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oit_term_taxonomy`
--
ALTER TABLE `oit_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oit_usermeta`
--
ALTER TABLE `oit_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `oit_users`
--
ALTER TABLE `oit_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `oit_wpfm_backup`
--
ALTER TABLE `oit_wpfm_backup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oit_wppusher_packages`
--
ALTER TABLE `oit_wppusher_packages`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=480;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2552;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1050;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wpfm_backup`
--
ALTER TABLE `wp_wpfm_backup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpforms_tasks_meta`
--
ALTER TABLE `wp_wpforms_tasks_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_wppusher_packages`
--
ALTER TABLE `wp_wppusher_packages`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
