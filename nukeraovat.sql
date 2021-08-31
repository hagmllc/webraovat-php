-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2016 at 08:08 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nukeraovat`
--

-- --------------------------------------------------------

--
-- Table structure for table `nv4_authors`
--

CREATE TABLE `nv4_authors` (
  `admin_id` mediumint(8) UNSIGNED NOT NULL,
  `editor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `lev` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `files_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  `edittime` int(11) NOT NULL DEFAULT '0',
  `is_suspend` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `susp_reason` text COLLATE utf8mb4_unicode_ci,
  `check_num` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_authors`
--

INSERT INTO `nv4_authors` (`admin_id`, `editor`, `lev`, `files_level`, `position`, `addtime`, `edittime`, `is_suspend`, `susp_reason`, `check_num`, `last_login`, `last_ip`, `last_agent`) VALUES
(1, 'ckeditor', 1, 'adobe,documents,flash,images|1|1|1', 'Administrator', 0, 0, 0, '', 'eaa6eb7c483edf5f3f8aedca6f9c9a96', 1465538721, '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_authors_config`
--

CREATE TABLE `nv4_authors_config` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `keyname` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mask` tinyint(4) NOT NULL DEFAULT '0',
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_authors_module`
--

CREATE TABLE `nv4_authors_module` (
  `mid` mediumint(8) NOT NULL,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) NOT NULL DEFAULT '0',
  `act_1` tinyint(4) NOT NULL DEFAULT '0',
  `act_2` tinyint(4) NOT NULL DEFAULT '1',
  `act_3` tinyint(4) NOT NULL DEFAULT '1',
  `checksum` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_authors_module`
--

INSERT INTO `nv4_authors_module` (`mid`, `module`, `lang_key`, `weight`, `act_1`, `act_2`, `act_3`, `checksum`) VALUES
(1, 'siteinfo', 'mod_siteinfo', 1, 1, 1, 1, 'd6b7d5dfc4019be0fa1009ede624598e'),
(2, 'authors', 'mod_authors', 2, 1, 1, 1, '7fb559ec204952d18d841cdeeccf9d44'),
(3, 'settings', 'mod_settings', 3, 1, 1, 0, '56e035fd998f54c7cdfe88abacf7f399'),
(4, 'database', 'mod_database', 4, 1, 0, 0, 'd6b49aaac0a9ac636238f88f1dbf588e'),
(5, 'webtools', 'mod_webtools', 5, 1, 0, 0, 'cfefd21c5a3dfbd5647196fcdf1e2f85'),
(6, 'seotools', 'mod_seotools', 6, 1, 0, 0, '0128369f9d743f0cf2f71704347ee6da'),
(7, 'language', 'mod_language', 7, 1, 1, 0, '1f835cd3a7c67d469844fa2f8750a3dd'),
(8, 'modules', 'mod_modules', 8, 1, 1, 0, 'b1919f030f26275d5e6efca00772910d'),
(9, 'themes', 'mod_themes', 9, 1, 1, 0, '1255ff7a1f14de78fa2fb3337d44550c'),
(10, 'extensions', 'mod_extensions', 10, 1, 0, 0, '53a234c1dad1245f475ce66b9155ecd7'),
(11, 'upload', 'mod_upload', 11, 1, 1, 1, '6476edec20e6ea0949206e7934ed1c32');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_banip`
--

CREATE TABLE `nv4_banip` (
  `id` mediumint(8) NOT NULL,
  `ip` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mask` tinyint(4) NOT NULL DEFAULT '0',
  `area` tinyint(3) NOT NULL,
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_banners_click`
--

CREATE TABLE `nv4_banners_click` (
  `bid` mediumint(8) NOT NULL DEFAULT '0',
  `click_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `click_day` int(2) NOT NULL,
  `click_ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_country` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_banners_click`
--

INSERT INTO `nv4_banners_click` (`bid`, `click_time`, `click_day`, `click_ip`, `click_country`, `click_browse_key`, `click_browse_name`, `click_os_key`, `click_os_name`, `click_ref`) VALUES
(2, 1464422513, 0, '::1', 'ZZ', '', 'chrome', '', 'Windows 7', 'http://localhost/nukeviet/');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_banners_clients`
--

CREATE TABLE `nv4_banners_clients` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `full_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yim` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `check_num` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `last_ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploadtype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_banners_plans`
--

CREATE TABLE `nv4_banners_plans` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `blang` char(2) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `form` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `height` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_banners_plans`
--

INSERT INTO `nv4_banners_plans` (`id`, `blang`, `title`, `description`, `form`, `width`, `height`, `act`) VALUES
(1, '', 'Quang cao giua trang', '', 'sequential', 575, 72, 1),
(2, '', 'Quang cao trai', '', 'sequential', 212, 800, 1),
(3, '', 'Quang cao Phai', '', 'random', 250, 500, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_banners_rows`
--

CREATE TABLE `nv4_banners_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `clid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_ext` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_mime` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` int(4) UNSIGNED NOT NULL DEFAULT '0',
  `height` int(4) UNSIGNED NOT NULL DEFAULT '0',
  `file_alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageforswf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `click_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_blank',
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `publ_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exp_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `hits_total` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_banners_rows`
--

INSERT INTO `nv4_banners_rows` (`id`, `title`, `pid`, `clid`, `file_name`, `file_ext`, `file_mime`, `width`, `height`, `file_alt`, `imageforswf`, `click_url`, `target`, `add_time`, `publ_time`, `exp_time`, `hits_total`, `act`, `weight`) VALUES
(2, 'vinades', 2, 0, 'vinades.jpg', 'jpg', 'image/jpeg', 212, 400, '', '', 'http://vinades.vn', '_blank', 1464421307, 1464421307, 0, 1, 1, 2),
(3, 'Quang cao giua trang', 1, 0, 'rao-vat-net-2014-d1.jpg', 'jpg', 'image/jpeg', 600, 60, '', '', '', '_blank', 1464421307, 1464421307, 0, 0, 1, 1),
(4, '123host_Nukeviet', 3, 0, '123host_nukeviet.jpg', 'jpg', 'image/jpeg', 250, 250, '', '', 'http://event.123host.vn/link/out/338', '_blank', 1453194858, 1453194858, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_config`
--

CREATE TABLE `nv4_config` (
  `lang` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sys',
  `module` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'global',
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `config_value` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_config`
--

INSERT INTO `nv4_config` (`lang`, `module`, `config_name`, `config_value`) VALUES
('sys', 'site', 'closed_site', '0'),
('sys', 'site', 'admin_theme', 'admin_default'),
('sys', 'site', 'date_pattern', 'l, d/m/Y'),
('sys', 'site', 'time_pattern', 'H:i'),
('sys', 'site', 'online_upd', '1'),
('sys', 'site', 'statistic', '1'),
('sys', 'site', 'mailer_mode', ''),
('sys', 'site', 'smtp_host', 'smtp.gmail.com'),
('sys', 'site', 'smtp_ssl', '1'),
('sys', 'site', 'smtp_port', '465'),
('sys', 'site', 'smtp_username', 'user@gmail.com'),
('sys', 'site', 'smtp_password', ''),
('sys', 'site', 'googleAnalyticsID', ''),
('sys', 'site', 'googleAnalyticsSetDomainName', '0'),
('sys', 'site', 'googleAnalyticsMethod', 'classic'),
('sys', 'site', 'searchEngineUniqueID', ''),
('sys', 'site', 'metaTagsOgp', '1'),
('sys', 'site', 'pageTitleMode', 'pagetitle'),
('sys', 'site', 'description_length', '170'),
('sys', 'global', 'ssl_https', '0'),
('sys', 'global', 'notification_active', '1'),
('sys', 'global', 'notification_autodel', '15'),
('sys', 'global', 'site_keywords', 'NukeViet, portal, mysql, php'),
('sys', 'global', 'site_phone', ''),
('sys', 'global', 'block_admin_ip', '0'),
('sys', 'global', 'admfirewall', '0'),
('sys', 'global', 'dump_autobackup', '1'),
('sys', 'global', 'dump_backup_ext', 'gz'),
('sys', 'global', 'dump_backup_day', '30'),
('sys', 'global', 'gfx_chk', '0'),
('sys', 'global', 'file_allowed_ext', 'adobe,documents,flash,images'),
('sys', 'global', 'forbid_extensions', 'php,php3,php4,php5,phtml,inc'),
('sys', 'global', 'forbid_mimes', ''),
('sys', 'global', 'nv_max_size', '2097152'),
('sys', 'global', 'upload_checking_mode', 'strong'),
('sys', 'global', 'upload_alt_require', '1'),
('sys', 'global', 'upload_auto_alt', '1'),
('sys', 'global', 'allowuserreg', '1'),
('sys', 'global', 'allowuserlogin', '1'),
('sys', 'global', 'allowuserloginmulti', '0'),
('sys', 'global', 'allowloginchange', '0'),
('sys', 'global', 'allowquestion', '0'),
('sys', 'global', 'allowuserpublic', '1'),
('sys', 'global', 'useactivate', '2'),
('sys', 'global', 'allowmailchange', '1'),
('sys', 'global', 'allow_sitelangs', 'vi'),
('sys', 'global', 'read_type', '0'),
('sys', 'global', 'rewrite_optional', '1'),
('sys', 'global', 'rewrite_endurl', '/'),
('sys', 'global', 'rewrite_exturl', '.html'),
('sys', 'global', 'rewrite_op_mod', 'news'),
('sys', 'global', 'autocheckupdate', '1'),
('sys', 'global', 'autoupdatetime', '24'),
('sys', 'global', 'gzip_method', '1'),
('sys', 'global', 'is_user_forum', '0'),
('sys', 'global', 'authors_detail_main', '0'),
('sys', 'global', 'spadmin_add_admin', '1'),
('sys', 'global', 'openid_servers', ''),
('sys', 'global', 'timestamp', '28'),
('sys', 'global', 'openid_processing', '0'),
('sys', 'global', 'captcha_type', '1'),
('sys', 'global', 'version', '4.0.29'),
('sys', 'global', 'whoviewuser', '2'),
('sys', 'global', 'facebook_client_id', ''),
('sys', 'global', 'facebook_client_secret', ''),
('sys', 'global', 'google_client_id', ''),
('sys', 'global', 'google_client_secret', ''),
('sys', 'global', 'cookie_httponly', '1'),
('sys', 'global', 'admin_check_pass_time', '1800'),
('sys', 'global', 'user_check_pass_time', '1800'),
('sys', 'global', 'auto_login_after_reg', '1'),
('sys', 'global', 'cookie_secure', '0'),
('sys', 'global', 'nv_unick_type', '0'),
('sys', 'global', 'nv_upass_type', '0'),
('sys', 'global', 'is_flood_blocker', '1'),
('sys', 'global', 'max_requests_60', '40'),
('sys', 'global', 'max_requests_300', '150'),
('sys', 'global', 'nv_display_errors_list', '1'),
('sys', 'global', 'display_errors_list', '1'),
('sys', 'global', 'nv_auto_resize', '1'),
('sys', 'global', 'dump_interval', '1'),
('sys', 'global', 'cdn_url', ''),
('sys', 'define', 'nv_unickmin', '4'),
('sys', 'define', 'nv_unickmax', '20'),
('sys', 'define', 'nv_upassmin', '8'),
('sys', 'define', 'nv_upassmax', '20'),
('sys', 'define', 'nv_gfx_num', '6'),
('sys', 'define', 'nv_gfx_width', '150'),
('sys', 'define', 'nv_gfx_height', '40'),
('sys', 'define', 'nv_max_width', '1500'),
('sys', 'define', 'nv_max_height', '1500'),
('sys', 'define', 'nv_live_cookie_time', '31104000'),
('sys', 'define', 'nv_live_session_time', '0'),
('sys', 'define', 'nv_anti_iframe', '0'),
('sys', 'define', 'nv_anti_agent', '0'),
('sys', 'define', 'nv_allowed_html_tags', 'embed, object, param, a, b, blockquote, br, caption, col, colgroup, div, em, h1, h2, h3, h4, h5, h6, hr, i, img, li, p, span, strong, s, sub, sup, table, tbody, td, th, tr, u, ul, ol, iframe, figure, figcaption, video, audio, source, track, code, pre'),
('sys', 'define', 'dir_forum', ''),
('vi', 'global', 'site_domain', ''),
('vi', 'global', 'site_name', 'Rao Vặt Việt Nam'),
('vi', 'global', 'site_logo', 'uploads/logo.png'),
('vi', 'global', 'site_banner', ''),
('vi', 'global', 'site_favicon', ''),
('vi', 'global', 'site_description', 'Mạng Rao Vặt Việt Nam'),
('vi', 'global', 'site_keywords', ''),
('vi', 'global', 'theme_type', 'r,d,m'),
('vi', 'global', 'site_theme', 'default'),
('vi', 'global', 'mobile_theme', 'mobile_default'),
('vi', 'global', 'site_home_module', 'news'),
('vi', 'global', 'switch_mobi_des', '1'),
('vi', 'global', 'upload_logo', ''),
('vi', 'global', 'upload_logo_pos', 'bottomRight'),
('vi', 'global', 'autologosize1', '50'),
('vi', 'global', 'autologosize2', '40'),
('vi', 'global', 'autologosize3', '30'),
('vi', 'global', 'autologomod', ''),
('vi', 'global', 'name_show', '0'),
('vi', 'global', 'cronjobs_next_time', '1465538987'),
('vi', 'global', 'disable_site_content', 'Vì lý do kỹ thuật website tạm ngưng hoạt động. Thành thật xin lỗi các bạn vì sự bất tiện này!'),
('vi', 'global', 'ssl_https_modules', ''),
('vi', 'seotools', 'prcservice', ''),
('vi', 'about', 'auto_postcomm', '1'),
('vi', 'about', 'allowed_comm', '-1'),
('vi', 'about', 'view_comm', '6'),
('vi', 'about', 'setcomm', '4'),
('vi', 'about', 'activecomm', '0'),
('vi', 'about', 'emailcomm', '0'),
('vi', 'about', 'adminscomm', ''),
('vi', 'about', 'sortcomm', '0'),
('vi', 'about', 'captcha', '1'),
('vi', 'news', 'indexfile', 'viewcat_page_new'),
('vi', 'news', 'per_page', '20'),
('vi', 'news', 'st_links', '10'),
('vi', 'news', 'homewidth', '100'),
('vi', 'news', 'homeheight', '150'),
('vi', 'news', 'blockwidth', '70'),
('vi', 'news', 'blockheight', '75'),
('vi', 'news', 'imagefull', '460'),
('vi', 'news', 'copyright', 'Chú ý: Việc đăng lại bài viết trên ở website hoặc các phương tiện truyền thông khác mà không ghi rõ nguồn http://nukeviet.vn là vi phạm bản quyền'),
('vi', 'news', 'showtooltip', '1'),
('vi', 'news', 'tooltip_position', 'bottom'),
('vi', 'news', 'tooltip_length', '150'),
('vi', 'news', 'showhometext', '0'),
('vi', 'news', 'timecheckstatus', '0'),
('vi', 'news', 'config_source', '0'),
('vi', 'news', 'show_no_image', ''),
('vi', 'news', 'allowed_rating_point', '1'),
('vi', 'news', 'facebookappid', ''),
('vi', 'news', 'socialbutton', '1'),
('vi', 'news', 'alias_lower', '1'),
('vi', 'news', 'tags_alias', '0'),
('vi', 'news', 'auto_tags', '1'),
('vi', 'news', 'tags_remind', '1'),
('vi', 'news', 'structure_upload', 'Ym'),
('vi', 'news', 'imgposition', '2'),
('vi', 'news', 'auto_postcomm', '1'),
('vi', 'news', 'allowed_comm', '-1'),
('vi', 'news', 'view_comm', '6'),
('vi', 'news', 'setcomm', '4'),
('vi', 'news', 'activecomm', '1'),
('vi', 'news', 'emailcomm', '0'),
('vi', 'news', 'adminscomm', ''),
('vi', 'news', 'sortcomm', '0'),
('vi', 'news', 'captcha', '1'),
('vi', 'page', 'auto_postcomm', '1'),
('vi', 'page', 'allowed_comm', '-1'),
('vi', 'page', 'view_comm', '6'),
('vi', 'page', 'setcomm', '4'),
('vi', 'page', 'activecomm', '0'),
('vi', 'page', 'emailcomm', '0'),
('vi', 'page', 'adminscomm', ''),
('vi', 'page', 'sortcomm', '0'),
('vi', 'page', 'captcha', '1'),
('vi', 'siteterms', 'auto_postcomm', '1'),
('vi', 'siteterms', 'allowed_comm', '-1'),
('vi', 'siteterms', 'view_comm', '6'),
('vi', 'siteterms', 'setcomm', '4'),
('vi', 'siteterms', 'activecomm', '0'),
('vi', 'siteterms', 'emailcomm', '0'),
('vi', 'siteterms', 'adminscomm', ''),
('vi', 'siteterms', 'sortcomm', '0'),
('vi', 'siteterms', 'captcha', '1'),
('vi', 'freecontent', 'next_execute', '0'),
('vi', 'contact', 'bodytext', 'Để không ngừng nâng cao chất lượng dịch vụ và đáp ứng tốt hơn nữa các yêu cầu của Quý khách, chúng tôi mong muốn nhận được các thông tin phản hồi. Nếu Quý khách có bất kỳ thắc mắc hoặc đóng góp nào, xin vui lòng liên hệ với chúng tôi theo thông tin dưới đây. Chúng tôi sẽ phản hồi lại Quý khách trong thời gian sớm nhất.'),
('sys', 'site', 'statistics_timezone', 'Asia/Bangkok'),
('sys', 'site', 'site_email', 'xmailvn@gmail.com'),
('sys', 'global', 'error_set_logs', '1'),
('sys', 'global', 'error_send_email', 'xmailvn@gmail.com'),
('sys', 'global', 'site_lang', 'vi'),
('sys', 'global', 'my_domains', 'localhost,azvnn.com'),
('sys', 'global', 'cookie_prefix', 'nv4c_l05Cv'),
('sys', 'global', 'session_prefix', 'nv4s_g9sVuy'),
('sys', 'global', 'site_timezone', 'byCountry'),
('sys', 'global', 'proxy_blocker', '0'),
('sys', 'global', 'str_referer_blocker', '0'),
('sys', 'global', 'lang_multi', '0'),
('sys', 'global', 'lang_geo', '0'),
('sys', 'global', 'ftp_server', 'localhost'),
('sys', 'global', 'ftp_port', '21'),
('sys', 'global', 'ftp_user_name', ''),
('sys', 'global', 'ftp_user_pass', 'jc2joMxXl8IcJhV5PrMUF43No6DMV5fCHCYVeT6zFBc,'),
('sys', 'global', 'ftp_path', '/'),
('sys', 'global', 'ftp_check_login', '0');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_cookies`
--

CREATE TABLE `nv4_cookies` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(11) NOT NULL DEFAULT '0',
  `secure` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_counter`
--

CREATE TABLE `nv4_counter` (
  `c_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_val` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_update` int(11) NOT NULL DEFAULT '0',
  `c_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `vi_count` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_counter`
--

INSERT INTO `nv4_counter` (`c_type`, `c_val`, `last_update`, `c_count`, `vi_count`) VALUES
('c_time', 'start', 0, 0, 0),
('c_time', 'last', 0, 1465538676, 0),
('total', 'hits', 1465538676, 55, 55),
('year', '2016', 1465538676, 55, 55),
('year', '2017', 0, 0, 0),
('year', '2018', 0, 0, 0),
('year', '2019', 0, 0, 0),
('year', '2020', 0, 0, 0),
('year', '2021', 0, 0, 0),
('year', '2022', 0, 0, 0),
('year', '2023', 0, 0, 0),
('year', '2024', 0, 0, 0),
('month', 'Jan', 0, 0, 0),
('month', 'Feb', 0, 0, 0),
('month', 'Mar', 0, 0, 0),
('month', 'Apr', 0, 0, 0),
('month', 'May', 1464704489, 31, 31),
('month', 'Jun', 1465538676, 24, 24),
('month', 'Jul', 0, 0, 0),
('month', 'Aug', 0, 0, 0),
('month', 'Sep', 0, 0, 0),
('month', 'Oct', 0, 0, 0),
('month', 'Nov', 0, 0, 0),
('month', 'Dec', 0, 0, 0),
('day', '01', 1464768336, 4, 4),
('day', '02', 1464876112, 9, 9),
('day', '03', 1464960837, 3, 3),
('day', '04', 1465019939, 5, 5),
('day', '05', 0, 0, 0),
('day', '06', 1465189838, 2, 2),
('day', '07', 0, 0, 0),
('day', '08', 0, 0, 0),
('day', '09', 0, 0, 0),
('day', '10', 1465538676, 1, 1),
('day', '11', 0, 0, 0),
('day', '12', 0, 0, 0),
('day', '13', 0, 0, 0),
('day', '14', 0, 0, 0),
('day', '15', 0, 0, 0),
('day', '16', 0, 0, 0),
('day', '17', 0, 0, 0),
('day', '18', 0, 0, 0),
('day', '19', 0, 0, 0),
('day', '20', 0, 0, 0),
('day', '21', 0, 0, 0),
('day', '22', 0, 0, 0),
('day', '23', 0, 0, 0),
('day', '24', 0, 0, 0),
('day', '25', 0, 0, 0),
('day', '26', 0, 0, 0),
('day', '27', 0, 0, 0),
('day', '28', 1464450990, 0, 0),
('day', '29', 1464511145, 0, 0),
('day', '30', 1464618473, 0, 0),
('day', '31', 1464704489, 0, 0),
('dayofweek', 'Sunday', 1464511145, 6, 6),
('dayofweek', 'Monday', 1465189838, 12, 12),
('dayofweek', 'Tuesday', 1464704489, 3, 3),
('dayofweek', 'Wednesday', 1464768336, 4, 4),
('dayofweek', 'Thursday', 1464876112, 9, 9),
('dayofweek', 'Friday', 1465538676, 4, 4),
('dayofweek', 'Saturday', 1465019939, 17, 17),
('hour', '00', 0, 0, 0),
('hour', '01', 0, 0, 0),
('hour', '02', 0, 0, 0),
('hour', '03', 0, 0, 0),
('hour', '04', 0, 0, 0),
('hour', '05', 0, 0, 0),
('hour', '06', 0, 0, 0),
('hour', '07', 0, 0, 0),
('hour', '08', 0, 0, 0),
('hour', '09', 0, 0, 0),
('hour', '10', 1465011379, 0, 0),
('hour', '11', 1465187999, 0, 0),
('hour', '12', 1465189838, 0, 0),
('hour', '13', 1465538676, 1, 1),
('hour', '14', 1464853567, 0, 0),
('hour', '15', 1464855370, 0, 0),
('hour', '16', 1464860336, 0, 0),
('hour', '17', 1464863920, 0, 0),
('hour', '18', 1464866990, 0, 0),
('hour', '19', 1464957722, 0, 0),
('hour', '20', 1464960837, 0, 0),
('hour', '21', 1464876112, 0, 0),
('hour', '22', 1464450990, 0, 0),
('hour', '23', 0, 0, 0),
('bot', 'googlebot', 0, 0, 0),
('bot', 'msnbot', 0, 0, 0),
('bot', 'bingbot', 0, 0, 0),
('bot', 'yahooslurp', 0, 0, 0),
('bot', 'w3cvalidator', 0, 0, 0),
('browser', 'opera', 0, 0, 0),
('browser', 'operamini', 0, 0, 0),
('browser', 'webtv', 0, 0, 0),
('browser', 'explorer', 0, 0, 0),
('browser', 'edge', 0, 0, 0),
('browser', 'pocket', 0, 0, 0),
('browser', 'konqueror', 0, 0, 0),
('browser', 'icab', 0, 0, 0),
('browser', 'omniweb', 0, 0, 0),
('browser', 'firebird', 0, 0, 0),
('browser', 'firefox', 0, 0, 0),
('browser', 'iceweasel', 0, 0, 0),
('browser', 'shiretoko', 0, 0, 0),
('browser', 'mozilla', 0, 0, 0),
('browser', 'amaya', 0, 0, 0),
('browser', 'lynx', 0, 0, 0),
('browser', 'safari', 0, 0, 0),
('browser', 'iphone', 0, 0, 0),
('browser', 'ipod', 0, 0, 0),
('browser', 'ipad', 0, 0, 0),
('browser', 'chrome', 1465538676, 55, 55),
('browser', 'cococ', 0, 0, 0),
('browser', 'android', 0, 0, 0),
('browser', 'googlebot', 0, 0, 0),
('browser', 'yahooslurp', 0, 0, 0),
('browser', 'w3cvalidator', 0, 0, 0),
('browser', 'blackberry', 0, 0, 0),
('browser', 'icecat', 0, 0, 0),
('browser', 'nokias60', 0, 0, 0),
('browser', 'nokia', 0, 0, 0),
('browser', 'msn', 0, 0, 0),
('browser', 'msnbot', 0, 0, 0),
('browser', 'bingbot', 0, 0, 0),
('browser', 'netscape', 0, 0, 0),
('browser', 'galeon', 0, 0, 0),
('browser', 'netpositive', 0, 0, 0),
('browser', 'phoenix', 0, 0, 0),
('browser', 'Mobile', 0, 0, 0),
('browser', 'bots', 0, 0, 0),
('browser', 'Unknown', 0, 0, 0),
('os', 'unknown', 0, 0, 0),
('os', 'win', 0, 0, 0),
('os', 'win10', 0, 0, 0),
('os', 'win8', 0, 0, 0),
('os', 'win7', 1465538676, 55, 55),
('os', 'win2003', 0, 0, 0),
('os', 'winvista', 0, 0, 0),
('os', 'wince', 0, 0, 0),
('os', 'winxp', 0, 0, 0),
('os', 'win2000', 0, 0, 0),
('os', 'apple', 0, 0, 0),
('os', 'linux', 0, 0, 0),
('os', 'os2', 0, 0, 0),
('os', 'beos', 0, 0, 0),
('os', 'iphone', 0, 0, 0),
('os', 'ipod', 0, 0, 0),
('os', 'ipad', 0, 0, 0),
('os', 'blackberry', 0, 0, 0),
('os', 'nokia', 0, 0, 0),
('os', 'freebsd', 0, 0, 0),
('os', 'openbsd', 0, 0, 0),
('os', 'netbsd', 0, 0, 0),
('os', 'sunos', 0, 0, 0),
('os', 'opensolaris', 0, 0, 0),
('os', 'android', 0, 0, 0),
('os', 'irix', 0, 0, 0),
('os', 'palm', 0, 0, 0),
('country', 'AD', 0, 0, 0),
('country', 'AE', 0, 0, 0),
('country', 'AF', 0, 0, 0),
('country', 'AG', 0, 0, 0),
('country', 'AI', 0, 0, 0),
('country', 'AL', 0, 0, 0),
('country', 'AM', 0, 0, 0),
('country', 'AN', 0, 0, 0),
('country', 'AO', 0, 0, 0),
('country', 'AQ', 0, 0, 0),
('country', 'AR', 0, 0, 0),
('country', 'AS', 0, 0, 0),
('country', 'AT', 0, 0, 0),
('country', 'AU', 0, 0, 0),
('country', 'AW', 0, 0, 0),
('country', 'AZ', 0, 0, 0),
('country', 'BA', 0, 0, 0),
('country', 'BB', 0, 0, 0),
('country', 'BD', 0, 0, 0),
('country', 'BE', 0, 0, 0),
('country', 'BF', 0, 0, 0),
('country', 'BG', 0, 0, 0),
('country', 'BH', 0, 0, 0),
('country', 'BI', 0, 0, 0),
('country', 'BJ', 0, 0, 0),
('country', 'BM', 0, 0, 0),
('country', 'BN', 0, 0, 0),
('country', 'BO', 0, 0, 0),
('country', 'BR', 0, 0, 0),
('country', 'BS', 0, 0, 0),
('country', 'BT', 0, 0, 0),
('country', 'BW', 0, 0, 0),
('country', 'BY', 0, 0, 0),
('country', 'BZ', 0, 0, 0),
('country', 'CA', 0, 0, 0),
('country', 'CD', 0, 0, 0),
('country', 'CF', 0, 0, 0),
('country', 'CG', 0, 0, 0),
('country', 'CH', 0, 0, 0),
('country', 'CI', 0, 0, 0),
('country', 'CK', 0, 0, 0),
('country', 'CL', 0, 0, 0),
('country', 'CM', 0, 0, 0),
('country', 'CN', 0, 0, 0),
('country', 'CO', 0, 0, 0),
('country', 'CR', 0, 0, 0),
('country', 'CS', 0, 0, 0),
('country', 'CU', 0, 0, 0),
('country', 'CV', 0, 0, 0),
('country', 'CY', 0, 0, 0),
('country', 'CZ', 0, 0, 0),
('country', 'DE', 0, 0, 0),
('country', 'DJ', 0, 0, 0),
('country', 'DK', 0, 0, 0),
('country', 'DM', 0, 0, 0),
('country', 'DO', 0, 0, 0),
('country', 'DZ', 0, 0, 0),
('country', 'EC', 0, 0, 0),
('country', 'EE', 0, 0, 0),
('country', 'EG', 0, 0, 0),
('country', 'ER', 0, 0, 0),
('country', 'ES', 0, 0, 0),
('country', 'ET', 0, 0, 0),
('country', 'EU', 0, 0, 0),
('country', 'FI', 0, 0, 0),
('country', 'FJ', 0, 0, 0),
('country', 'FK', 0, 0, 0),
('country', 'FM', 0, 0, 0),
('country', 'FO', 0, 0, 0),
('country', 'FR', 0, 0, 0),
('country', 'GA', 0, 0, 0),
('country', 'GB', 0, 0, 0),
('country', 'GD', 0, 0, 0),
('country', 'GE', 0, 0, 0),
('country', 'GF', 0, 0, 0),
('country', 'GH', 0, 0, 0),
('country', 'GI', 0, 0, 0),
('country', 'GL', 0, 0, 0),
('country', 'GM', 0, 0, 0),
('country', 'GN', 0, 0, 0),
('country', 'GP', 0, 0, 0),
('country', 'GQ', 0, 0, 0),
('country', 'GR', 0, 0, 0),
('country', 'GS', 0, 0, 0),
('country', 'GT', 0, 0, 0),
('country', 'GU', 0, 0, 0),
('country', 'GW', 0, 0, 0),
('country', 'GY', 0, 0, 0),
('country', 'HK', 0, 0, 0),
('country', 'HN', 0, 0, 0),
('country', 'HR', 0, 0, 0),
('country', 'HT', 0, 0, 0),
('country', 'HU', 0, 0, 0),
('country', 'ID', 0, 0, 0),
('country', 'IE', 0, 0, 0),
('country', 'IL', 0, 0, 0),
('country', 'IN', 0, 0, 0),
('country', 'IO', 0, 0, 0),
('country', 'IQ', 0, 0, 0),
('country', 'IR', 0, 0, 0),
('country', 'IS', 0, 0, 0),
('country', 'IT', 0, 0, 0),
('country', 'JM', 0, 0, 0),
('country', 'JO', 0, 0, 0),
('country', 'JP', 0, 0, 0),
('country', 'KE', 0, 0, 0),
('country', 'KG', 0, 0, 0),
('country', 'KH', 0, 0, 0),
('country', 'KI', 0, 0, 0),
('country', 'KM', 0, 0, 0),
('country', 'KN', 0, 0, 0),
('country', 'KR', 0, 0, 0),
('country', 'KW', 0, 0, 0),
('country', 'KY', 0, 0, 0),
('country', 'KZ', 0, 0, 0),
('country', 'LA', 0, 0, 0),
('country', 'LB', 0, 0, 0),
('country', 'LC', 0, 0, 0),
('country', 'LI', 0, 0, 0),
('country', 'LK', 0, 0, 0),
('country', 'LR', 0, 0, 0),
('country', 'LS', 0, 0, 0),
('country', 'LT', 0, 0, 0),
('country', 'LU', 0, 0, 0),
('country', 'LV', 0, 0, 0),
('country', 'LY', 0, 0, 0),
('country', 'MA', 0, 0, 0),
('country', 'MC', 0, 0, 0),
('country', 'MD', 0, 0, 0),
('country', 'MG', 0, 0, 0),
('country', 'MH', 0, 0, 0),
('country', 'MK', 0, 0, 0),
('country', 'ML', 0, 0, 0),
('country', 'MM', 0, 0, 0),
('country', 'MN', 0, 0, 0),
('country', 'MO', 0, 0, 0),
('country', 'MP', 0, 0, 0),
('country', 'MQ', 0, 0, 0),
('country', 'MR', 0, 0, 0),
('country', 'MT', 0, 0, 0),
('country', 'MU', 0, 0, 0),
('country', 'MV', 0, 0, 0),
('country', 'MW', 0, 0, 0),
('country', 'MX', 0, 0, 0),
('country', 'MY', 0, 0, 0),
('country', 'MZ', 0, 0, 0),
('country', 'NA', 0, 0, 0),
('country', 'NC', 0, 0, 0),
('country', 'NE', 0, 0, 0),
('country', 'NF', 0, 0, 0),
('country', 'NG', 0, 0, 0),
('country', 'NI', 0, 0, 0),
('country', 'NL', 0, 0, 0),
('country', 'NO', 0, 0, 0),
('country', 'NP', 0, 0, 0),
('country', 'NR', 0, 0, 0),
('country', 'NU', 0, 0, 0),
('country', 'NZ', 0, 0, 0),
('country', 'OM', 0, 0, 0),
('country', 'PA', 0, 0, 0),
('country', 'PE', 0, 0, 0),
('country', 'PF', 0, 0, 0),
('country', 'PG', 0, 0, 0),
('country', 'PH', 0, 0, 0),
('country', 'PK', 0, 0, 0),
('country', 'PL', 0, 0, 0),
('country', 'PR', 0, 0, 0),
('country', 'PS', 0, 0, 0),
('country', 'PT', 0, 0, 0),
('country', 'PW', 0, 0, 0),
('country', 'PY', 0, 0, 0),
('country', 'QA', 0, 0, 0),
('country', 'RE', 0, 0, 0),
('country', 'RO', 0, 0, 0),
('country', 'RU', 0, 0, 0),
('country', 'RW', 0, 0, 0),
('country', 'SA', 0, 0, 0),
('country', 'SB', 0, 0, 0),
('country', 'SC', 0, 0, 0),
('country', 'SD', 0, 0, 0),
('country', 'SE', 0, 0, 0),
('country', 'SG', 0, 0, 0),
('country', 'SI', 0, 0, 0),
('country', 'SK', 0, 0, 0),
('country', 'SL', 0, 0, 0),
('country', 'SM', 0, 0, 0),
('country', 'SN', 0, 0, 0),
('country', 'SO', 0, 0, 0),
('country', 'SR', 0, 0, 0),
('country', 'ST', 0, 0, 0),
('country', 'SV', 0, 0, 0),
('country', 'SY', 0, 0, 0),
('country', 'SZ', 0, 0, 0),
('country', 'TD', 0, 0, 0),
('country', 'TF', 0, 0, 0),
('country', 'TG', 0, 0, 0),
('country', 'TH', 0, 0, 0),
('country', 'TJ', 0, 0, 0),
('country', 'TK', 0, 0, 0),
('country', 'TL', 0, 0, 0),
('country', 'TM', 0, 0, 0),
('country', 'TN', 0, 0, 0),
('country', 'TO', 0, 0, 0),
('country', 'TR', 0, 0, 0),
('country', 'TT', 0, 0, 0),
('country', 'TV', 0, 0, 0),
('country', 'TW', 0, 0, 0),
('country', 'TZ', 0, 0, 0),
('country', 'UA', 0, 0, 0),
('country', 'UG', 0, 0, 0),
('country', 'US', 0, 0, 0),
('country', 'UY', 0, 0, 0),
('country', 'UZ', 0, 0, 0),
('country', 'VA', 0, 0, 0),
('country', 'VC', 0, 0, 0),
('country', 'VE', 0, 0, 0),
('country', 'VG', 0, 0, 0),
('country', 'VI', 0, 0, 0),
('country', 'VN', 0, 0, 0),
('country', 'VU', 0, 0, 0),
('country', 'WS', 0, 0, 0),
('country', 'YE', 0, 0, 0),
('country', 'YT', 0, 0, 0),
('country', 'YU', 0, 0, 0),
('country', 'ZA', 0, 0, 0),
('country', 'ZM', 0, 0, 0),
('country', 'ZW', 0, 0, 0),
('country', 'ZZ', 1465538676, 55, 55),
('country', 'unkown', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_cronjobs`
--

CREATE TABLE `nv4_cronjobs` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `start_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `inter_val` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `run_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `run_func` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `del` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_sys` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `last_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `last_result` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `vi_cron_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_cronjobs`
--

INSERT INTO `nv4_cronjobs` (`id`, `start_time`, `inter_val`, `run_file`, `run_func`, `params`, `del`, `is_sys`, `act`, `last_time`, `last_result`, `vi_cron_name`) VALUES
(1, 1464421307, 5, 'online_expired_del.php', 'cron_online_expired_del', '', 0, 1, 1, 1465538687, 1, 'Xóa các dòng ghi trạng thái online đã cũ trong CSDL'),
(2, 1464421307, 1440, 'dump_autobackup.php', 'cron_dump_autobackup', '', 0, 1, 1, 1465538687, 1, 'Tự động lưu CSDL'),
(3, 1464421307, 60, 'temp_download_destroy.php', 'cron_auto_del_temp_download', '', 0, 1, 1, 1465538687, 1, 'Xóa các file tạm trong thư mục tmp'),
(4, 1464421307, 30, 'ip_logs_destroy.php', 'cron_del_ip_logs', '', 0, 1, 1, 1465538687, 1, 'Xóa IP log files, Xóa các file nhật ký truy cập'),
(5, 1464421307, 1440, 'error_log_destroy.php', 'cron_auto_del_error_log', '', 0, 1, 1, 1465538687, 1, 'Xóa các file error_log quá hạn'),
(6, 1464421307, 360, 'error_log_sendmail.php', 'cron_auto_sendmail_error_log', '', 0, 1, 0, 0, 0, 'Gửi email các thông báo lỗi cho admin'),
(7, 1464421307, 60, 'ref_expired_del.php', 'cron_ref_expired_del', '', 0, 1, 1, 1465538687, 1, 'Xóa các referer quá hạn'),
(8, 1464421307, 60, 'check_version.php', 'cron_auto_check_version', '', 0, 1, 1, 1465538687, 1, 'Kiểm tra phiên bản NukeViet'),
(9, 1464421307, 1440, 'notification_autodel.php', 'cron_notification_autodel', '', 0, 1, 1, 1465538687, 1, 'Xóa thông báo cũ'),
(10, 1464452100, 1440, 'auto_del_news.php', 'cron_auto_del_news', 'news,news,1,155520000,', 1, 0, 1, 0, 0, 'Xóa Tin Đăng Quá Hạn');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_extension_files`
--

CREATE TABLE `nv4_extension_files` (
  `idfile` mediumint(8) UNSIGNED NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastmodified` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `duplicate` smallint(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_googleplus`
--

CREATE TABLE `nv4_googleplus` (
  `gid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `idprofile` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_language`
--

CREATE TABLE `nv4_language` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `idfile` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `lang_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_language_file`
--

CREATE TABLE `nv4_language_file` (
  `idfile` mediumint(8) UNSIGNED NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_file` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `langtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_logs`
--

CREATE TABLE `nv4_logs` (
  `id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note_action` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_acess` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `log_time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_logs`
--

INSERT INTO `nv4_logs` (`id`, `lang`, `module_name`, `name_key`, `note_action`, `link_acess`, `userid`, `log_time`) VALUES
(1, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1464421382),
(2, 'vi', 'themes', 'Sửa block', 'Name : Quảng cáo giữa trang', '', 1, 1464421889),
(3, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464422165),
(4, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464423188),
(5, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1464429564),
(6, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1464430006),
(7, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464430013),
(8, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464430051),
(9, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464430068),
(10, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464430099),
(11, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464430265),
(12, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464431009),
(13, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464431073),
(14, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464431188),
(15, 'vi', 'upload', 'Upload file', 'uploads/logo-rao-vat.png', '', 1, 1464431391),
(16, 'vi', 'themes', 'Sửa block', 'Name : Chủ đề', '', 1, 1464431726),
(17, 'vi', 'themes', 'Sửa block', 'Name : Chủ đề', '', 1, 1464431784),
(18, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1464431834),
(19, 'vi', 'users', 'Thay đổi cấu hình module', '', '', 1, 1464432139),
(20, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1464432145),
(21, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1464435937),
(22, 'vi', 'users', 'Thay đổi cấu hình module', '', '', 1, 1464436025),
(23, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1464437825),
(24, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1464438277),
(25, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1464438516),
(26, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1464438737),
(27, 'vi', 'news', 'Đăng bài viết', 'Bán gấp nhà mặt phố Mã Mây 130m mặt tiền 5 | ::1 | vnwsxu', '', 0, 1464448831),
(28, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1464449168),
(29, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464449188),
(30, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1464449277),
(31, 'vi', 'news', 'Đăng bài viết', 'cung cấp cửa nhựa lõi thép, cầu thang rẻ | ::1 | vnwsxu', '', 0, 1464449414),
(32, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1464449457),
(33, 'vi', 'upload', 'Upload file', 'uploads/ra0-la-ban.jpg', '', 1, 1464449686),
(34, 'vi', 'themes', 'Thêm block', 'Name : global html', '', 1, 1464449700),
(35, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1464449750),
(36, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1464449783),
(37, 'vi', 'upload', 'Upload file', 'uploads/dang-tin-top.png', '', 1, 1464450225),
(38, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1464450232),
(39, 'vi', 'upload', 'Upload file', 'uploads/icon_post.gif', '', 1, 1464450279),
(40, 'vi', 'themes', 'Sửa block', 'Name : Quảng cáo cột trái', '', 1, 1464450295),
(41, 'vi', 'themes', 'Sửa block', 'Name : Quảng cáo cột trái', '', 1, 1464450311),
(42, 'vi', 'themes', 'Sửa block', 'Name : Quảng cáo cột trái', '', 1, 1464450352),
(43, 'vi', 'themes', 'Sửa block', 'Name : Quảng cáo cột trái', '', 1, 1464450377),
(44, 'vi', 'upload', 'Upload file', 'uploads/dangtin640x224.jpg', '', 1, 1464450500),
(45, 'vi', 'themes', 'Thêm block', 'Name : global html', '', 1, 1464450514),
(46, 'vi', 'upload', 'Upload file', 'uploads/quangcaotructuyen.jpg', '', 1, 1464450630),
(47, 'vi', 'themes', 'Thêm block', 'Name : global html', '', 1, 1464450652),
(48, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1464450680),
(49, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1464450697),
(50, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1464451134),
(51, 'vi', 'upload', 'Upload file', 'uploads/logo.png', '', 1, 1464451157),
(52, 'vi', 'news', 'Thêm chuyên mục', 'Thuê và Cho thuê nhà', '', 1, 1464451254),
(53, 'vi', 'news', 'Thêm chuyên mục', 'Thời trang, Làm đẹp', '', 1, 1464451264),
(54, 'vi', 'news', 'Thêm chuyên mục', 'Chợ Sim số', '', 1, 1464451273),
(55, 'vi', 'news', 'Thêm chuyên mục', 'Xe máy - Xe đạp', '', 1, 1464451283),
(56, 'vi', 'news', 'Thêm chuyên mục', 'Máy tính xách tay', '', 1, 1464451295),
(57, 'vi', 'news', 'Thêm chuyên mục', 'Điện tử - Kỹ thuật số', '', 1, 1464451312),
(58, 'vi', 'news', 'Thêm chuyên mục', 'Mạng - Phần mềm', '', 1, 1464451323),
(59, 'vi', 'news', 'Thêm chuyên mục', 'Mua sắm', '', 1, 1464451334),
(60, 'vi', 'news', 'Thêm chuyên mục', 'Điện lạnh - Điện máy', '', 1, 1464451343),
(61, 'vi', 'news', 'Thêm chuyên mục', 'Việc làm', '', 1, 1464451353),
(62, 'vi', 'news', 'Thêm chuyên mục', 'dịch vụ', '', 1, 1464451364),
(63, 'vi', 'news', 'Thêm chuyên mục', 'Du lịch', '', 1, 1464451373),
(64, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1464451811),
(65, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1464452067),
(66, 'vi', 'settings', 'log_cronjob_add', 'id 10', '', 1, 1464452437),
(67, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1464452518),
(68, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1464501853),
(69, 'vi', 'themes', 'Sửa block', 'Name : Quảng cáo cột trái', '', 1, 1464501949),
(70, 'vi', 'contact', 'log_edit_row', 'id: 1 Phòng Chăm sóc khách hàng', '', 1, 1464502609),
(71, 'vi', 'themes', 'Sửa block', 'Name : Tin tiêu điểm', '', 1, 1464502704),
(72, 'vi', 'themes', 'Sửa block', 'Name : Tin tiêu điểm', '', 1, 1464502751),
(73, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1464503069),
(74, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1464503455),
(75, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464503463),
(76, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1464503475),
(77, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1464503531),
(78, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464503537),
(79, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1464504089),
(80, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1464504118),
(81, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1464505920),
(82, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1464505982),
(83, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464505987),
(84, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464506068),
(85, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1464507093),
(86, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1464507717),
(87, 'vi', 'news', 'Sửa bài viết', 'cung cấp cửa nhựa lõi thép, cầu thang rẻ', '', 1, 1464509092),
(88, 'vi', 'news', 'Sửa bài viết', 'Bán gấp nhà mặt phố Mã Mây 130m mặt tiền 5', '', 1, 1464509314),
(89, 'vi', 'upload', 'Upload file', 'uploads/banner-top_3.png', '', 1, 1464510713),
(90, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1464510722),
(91, 'vi', 'extensions', 'Cài đặt ứng dụng', 'module-shops-4-official.zip', '', 1, 1464512404),
(92, 'vi', 'modules', 'Thiết lập module mới shops', '', '', 1, 1464512428),
(93, 'vi', 'modules', 'Sửa module &ldquo;shops&rdquo;', '', '', 1, 1464512450),
(94, 'vi', 'news', 'Đăng bài viết', 'Bán buôn, bán lẻ nước cất 1 lần, 2 lần, nước | ::1 | admin', '', 0, 1464512747),
(95, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1464596852),
(96, 'vi', 'extensions', 'Cài đặt ứng dụng', 'plugin-sticky-navbar.zip', '', 1, 1464596881),
(97, 'vi', 'themes', 'Thêm block', 'Name : global plugin sticky navbar', '', 1, 1464597027),
(98, 'vi', 'themes', 'Sửa block', 'Name : global plugin sticky navbar', '', 1, 1464597075),
(99, 'vi', 'extensions', 'Cài đặt ứng dụng', 'module-search-news.zip', '', 1, 1464597706),
(100, 'vi', 'modules', 'Thiết lập module mới search-news', '', '', 1, 1464597719),
(101, 'vi', 'modules', 'Sửa module &ldquo;search-news&rdquo;', '', '', 1, 1464597757),
(102, 'vi', 'themes', 'Thêm block', 'Name : global search', '', 1, 1464597782),
(103, 'vi', 'modules', 'Sửa module &ldquo;search-news&rdquo;', '', '', 1, 1464597803),
(104, 'vi', 'modules', 'Sửa module &ldquo;search-news&rdquo;', '', '', 1, 1464597915),
(105, 'vi', 'modules', 'Cài lại module "search-news"', '', '', 1, 1464597950),
(106, 'vi', 'modules', 'Kích hoạt module "search-news"', 'Không', '', 1, 1464598929),
(107, 'vi', 'modules', 'Kích hoạt module "search-news"', 'Có', '', 1, 1464598935),
(108, 'vi', 'modules', 'Kích hoạt module "search-news"', 'Không', '', 1, 1464598946),
(109, 'vi', 'modules', 'Xóa module "search-news"', '', '', 1, 1464599004),
(110, 'vi', 'news', 'Đăng bài viết', 'AzVNN Chuyên Trang Xe Hoi | ::1 | admin', '', 0, 1464599835),
(111, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464599880),
(112, 'vi', 'news', 'Đăng bài viết', '11 ứng cử viên cho danh hiệu Vua phá lưới EURO năm nay | ::1 | admin', '', 0, 1464600702),
(113, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1464601681),
(114, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1464603022),
(115, 'vi', 'news', 'log_add_source', ' ', '', 1, 1464603355),
(116, 'vi', 'themes', 'Thêm block', 'Name : global login', '', 1, 1464603652),
(117, 'vi', 'themes', 'Sửa block', 'Name : Tài Khoản', '', 1, 1464603697),
(118, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1464603712),
(119, 'vi', 'news', 'Đăng bài viết', 'BÁN MÁY KHOAN GIẾNG - ĐOÀN VẬT TƯ &#40;Đoàn 805&#41; | ::1 | vnwsxu', '', 0, 1464604126),
(120, 'vi', 'news', 'Đăng bài viết', 'Máy hút ẩm công nghiệp Harison HD 504B | ::1 | vnwsxu', '', 0, 1464604220),
(121, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1464604589),
(122, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464604598),
(123, 'vi', 'news', 'Xóa bài viêt', 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam, Hãy trở thành nhà cung cấp dịch vụ của NukeViet&#33;, Tuyển dụng lập trình viên PHP phát triển NukeViet, Tuyển dụng chuyên viên đồ hoạ phát triển NukeViet, Tuyển dụng lập trình viên front-end (HTML/CSS/JS) phát triển NukeViet, Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011, NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước, Công ty VINADES tuyển dụng nhân viên kinh doanh, Chương trình thực tập sinh tại công ty VINADES, Học việc tại công ty VINADES, NukeViet được Bộ GD&amp;ĐT đưa vào Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016, Hỗ trợ tập huấn và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT, NukeViet 4.0 có gì mới?, Chọn nhà cung cấp Hosting nào tốt cho NukeViet?, AzVNN Chuyên Trang Xe Hoi, 11 ứng cử viên cho danh hiệu Vua phá lưới EURO năm nay', '', 1, 1464604792),
(124, 'vi', 'news', 'Sửa bài viết', 'Bán buôn, bán lẻ nước cất 1 lần, 2 lần, nước', '', 1, 1464604819),
(125, 'vi', 'news', 'Sửa bài viết', 'Bán gấp nhà mặt phố Mã Mây 130m mặt tiền 5', '', 1, 1464604843),
(126, 'vi', 'news', 'Sửa bài viết', 'cung cấp cửa nhựa lõi thép, cầu thang rẻ', '', 1, 1464604925),
(127, 'vi', 'news', 'Sửa bài viết', 'Bán buôn, bán lẻ nước cất 1 lần, 2 lần, nước', '', 1, 1464604964),
(128, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1464606593),
(129, 'vi', 'news', 'Đăng bài viết', 'Đất 1000m2 cạnh Khu DL B Quới I giá 10tr&#x002F;th | ::1 | admin', '', 0, 1464607413),
(130, 'vi', 'news', 'Đăng bài viết', 'Dịch vụ cho thuê xe 45 tại tphcm | ::1 | admin', '', 0, 1464607503),
(131, 'vi', 'news', 'Đăng bài viết', 'Trang trí nội thất, Sửa chữa Xây Dựng | ::1 | admin', '', 0, 1464607661),
(132, 'vi', 'news', 'Đăng bài viết', 'Bán căn 2PN tầng 16 Seasons Avenue | ::1 | admin', '', 0, 1464607725),
(133, 'vi', 'news', 'Đăng bài viết', 'Lenovo Thinkpad T450 Broadwell I5 5300U 2.3Gh | ::1 | admin', '', 0, 1464607784),
(134, 'vi', 'news', 'Đăng bài viết', 'Xe 4 chỗ camry màu đen tại tphcm | ::1 | admin', '', 0, 1464607937),
(135, 'vi', 'news', 'Đăng bài viết', 'đại lÝ vé máy bay tại tphcm - du lịch nét việt | ::1 | admin', '', 0, 1464607981),
(136, 'vi', 'news', 'Đăng bài viết', 'Dịch vụ sửa chữa nhà giá rẻ nhất tại Hà Nội 1 | ::1 | admin', '', 0, 1464608075),
(137, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1464608100),
(138, 'vi', 'banners', 'log_edit_banner', 'bannerid 3', '', 1, 1464608278),
(139, 'vi', 'themes', 'Thêm block', 'Name : global banners', '', 1, 1464608307),
(140, 'vi', 'news', 'Đăng bài viết', 'Đầu thu Kỹ thuật số DVB-T2 chỉ với 550k | ::1 | admin', '', 0, 1464608636),
(141, 'vi', 'news', 'Đăng bài viết', 'Bán máy làm mát không khí. | ::1 | admin', '', 0, 1464608708),
(142, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1464609104),
(143, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1464615385),
(144, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464615926),
(145, 'vi', 'users', 'Xóa nhóm', 'group_id: 12', '', 1, 1464618219),
(146, 'vi', 'users', 'Xóa nhóm', 'group_id: 11', '', 1, 1464618224),
(147, 'vi', 'users', 'Xóa nhóm', 'group_id: 10', '', 1, 1464618228),
(148, 'vi', 'users', 'Thêm nhóm', 'Id: 13', '', 1, 1464618850),
(149, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1464677040),
(150, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1464679447),
(151, 'vi', 'modules', 'Xóa module "shops"', '', '', 1, 1464679524),
(152, 'vi', 'news', 'Đăng bài viết', 'Cáp tín hiệu AWG Hosiwell 2x1.5mm2 | ::1 | admin', '', 0, 1464679758),
(153, 'vi', 'news', 'Đăng bài viết', 'In tại xưởng offset namecard, catalogue | ::1 | admin', '', 0, 1464679929),
(154, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1464681338),
(155, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1464758004),
(156, 'vi', 'users', 'log_edit_user', 'userid 1', '', 1, 1464758049),
(157, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1464758551),
(158, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1464758574),
(159, 'vi', 'themes', 'Sửa block', 'Name : Tài Khoản', '', 1, 1464758601),
(160, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1464758632),
(161, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1464758774),
(162, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1464758912),
(163, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1464759003),
(164, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1464759246),
(165, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1464759908),
(166, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1464759982),
(167, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1464760480),
(168, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1464760513),
(169, 'vi', 'news', 'Đăng bài viết', 'Cho Vay Góp Ngày Không Thế Chấp | ::1 | admin', '', 0, 1464760606),
(170, 'vi', 'news', 'Đăng bài viết', 'Cần tuyển gấp lao động tại Nhật Bản 2 | ::1 | admin', '', 0, 1464760714),
(171, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1464760722),
(172, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1464761508),
(173, 'vi', 'extensions', 'Cài đặt ứng dụng', 'global-block-groups-marquee-php.zip', '', 1, 1464761534),
(174, 'vi', 'themes', 'Thêm block', 'Name : global block groups marquee', '', 1, 1464761593),
(175, 'vi', 'about', 'Delete', 'ID: 8', '', 1, 1464761911),
(176, 'vi', 'about', 'Delete', 'ID: 7', '', 1, 1464761913),
(177, 'vi', 'about', 'Delete', 'ID: 6', '', 1, 1464761916),
(178, 'vi', 'about', 'Delete', 'ID: 5', '', 1, 1464761918),
(179, 'vi', 'about', 'Delete', 'ID: 4', '', 1, 1464761920),
(180, 'vi', 'about', 'Delete', 'ID: 3', '', 1, 1464761923),
(181, 'vi', 'about', 'Delete', 'ID: 2', '', 1, 1464761925),
(182, 'vi', 'page', 'Add', ' ', '', 1, 1464762034),
(183, 'vi', 'about', 'Edit', 'ID: 1', '', 1, 1464762264),
(184, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1464763297),
(185, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1464770988),
(186, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1464772799),
(187, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1464853942),
(188, 'vi', 'news', 'log_add_blockcat', ' ', '', 1, 1464853956),
(189, 'vi', 'themes', 'Thêm block', 'Name : Tin VIP', '', 1, 1464854015),
(190, 'vi', 'themes', 'Sửa block', 'Name : Tin VIP', '', 1, 1464854167),
(191, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464854425),
(192, 'vi', 'themes', 'Sửa block', 'Name : Tin VIP', '', 1, 1464854630),
(193, 'vi', 'themes', 'Thêm block', 'Name : module block headline', '', 1, 1464855284),
(194, 'vi', 'themes', 'Sửa block', 'Name : module block headline', '', 1, 1464855305),
(195, 'vi', 'themes', 'Sửa block', 'Name : module block headline', '', 1, 1464855316),
(196, 'vi', 'themes', 'Sửa block', 'Name : module block headline', '', 1, 1464855354),
(197, 'vi', 'themes', 'Sửa block', 'Name : module block headline', '', 1, 1464855369),
(198, 'vi', 'themes', 'Sửa block', 'Name : module block headline', '', 1, 1464855395),
(199, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464855503),
(200, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1464858363),
(201, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1464861879),
(202, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464861888),
(203, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464861914),
(204, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1464864535),
(205, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1464869795),
(206, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464870038),
(207, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464870670),
(208, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1464872471),
(209, 'vi', 'news', 'Đăng bài viết', 'test test test | ::1 | vnwsxu', '', 0, 1464876446),
(210, 'vi', 'news', 'Đăng bài viết', '123 test test test | ::1 | vnwsxu', '', 0, 1464876777),
(211, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1464956314),
(212, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464958979),
(213, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1465009329),
(214, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1465010548),
(215, 'vi', 'news', 'Sửa bài viết', 'Bán gấp nhà mặt phố Mã Mây 130m mặt tiền 5 | ::1 | vnwsxu', '', 0, 1465010671),
(216, 'vi', 'news', 'Sửa bài viết', 'cung cấp cửa nhựa lõi thép, cầu thang rẻ | ::1 | vnwsxu', '', 0, 1465010717),
(217, 'vi', 'news', 'Sửa bài viết', 'BÁN MÁY KHOAN GIẾNG - ĐOÀN VẬT TƯ &#40;Đoàn 805&#41; | ::1 | vnwsxu', '', 0, 1465011481),
(218, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1465189073),
(219, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1465189080),
(220, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1465189748),
(221, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1465190720),
(222, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1465538721),
(223, 'vi', 'about', 'Edit', 'ID: 1', '', 1, 1465538761),
(224, 'vi', 'users', 'log_edit_user', 'userid 2', '', 1, 1465538854),
(225, 'vi', 'users', 'log_edit_user', 'userid 1', '', 1, 1465538869);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_notification`
--

CREATE TABLE `nv4_notification` (
  `id` int(11) UNSIGNED NOT NULL,
  `send_to` mediumint(8) UNSIGNED NOT NULL,
  `send_from` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `area` tinyint(1) UNSIGNED NOT NULL,
  `language` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `obid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) UNSIGNED NOT NULL,
  `view` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_plugin`
--

CREATE TABLE `nv4_plugin` (
  `pid` tinyint(4) NOT NULL,
  `plugin_file` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plugin_area` tinyint(4) NOT NULL,
  `weight` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_plugin`
--

INSERT INTO `nv4_plugin` (`pid`, `plugin_file`, `plugin_area`, `weight`) VALUES
(1, 'qrcode.php', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_sessions`
--

CREATE TABLE `nv4_sessions` (
  `session_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `onl_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_sessions`
--

INSERT INTO `nv4_sessions` (`session_id`, `userid`, `username`, `onl_time`) VALUES
('hprtr38fud1tqn4jdla73oasq2', 1, 'admin', 1465538878);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_setup`
--

CREATE TABLE `nv4_setup` (
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tables` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setup_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_setup_extensions`
--

CREATE TABLE `nv4_setup_extensions` (
  `id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_sys` tinyint(1) NOT NULL DEFAULT '0',
  `is_virtual` tinyint(1) NOT NULL DEFAULT '0',
  `basename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_prefix` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  `author` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_setup_extensions`
--

INSERT INTO `nv4_setup_extensions` (`id`, `type`, `title`, `is_sys`, `is_virtual`, `basename`, `table_prefix`, `version`, `addtime`, `author`, `note`) VALUES
(0, 'module', 'about', 0, 0, 'page', 'about', '4.0.29 1463652000', 1464421307, 'VINADES (contact@vinades.vn)', ''),
(0, 'module', 'siteterms', 0, 0, 'page', 'siteterms', '4.0.29 1463652000', 1464421307, 'VINADES (contact@vinades.vn)', ''),
(19, 'module', 'banners', 1, 0, 'banners', 'banners', '4.0.29 1463652000', 1464421307, 'VINADES (contact@vinades.vn)', ''),
(20, 'module', 'contact', 0, 1, 'contact', 'contact', '4.0.29 1463652000', 1464421307, 'VINADES (contact@vinades.vn)', ''),
(1, 'module', 'news', 0, 1, 'news', 'news', '4.0.29 1463652000', 1464421307, 'VINADES (contact@vinades.vn)', ''),
(21, 'module', 'voting', 0, 0, 'voting', 'voting', '4.0.29 1463652000', 1464421307, 'VINADES (contact@vinades.vn)', ''),
(284, 'module', 'seek', 1, 0, 'seek', 'seek', '4.0.29 1463652000', 1464421307, 'VINADES (contact@vinades.vn)', ''),
(24, 'module', 'users', 1, 1, 'users', 'users', '4.0.29 1463652000', 1464421307, 'VINADES (contact@vinades.vn)', ''),
(27, 'module', 'statistics', 0, 0, 'statistics', 'statistics', '4.0.29 1463652000', 1464421307, 'VINADES (contact@vinades.vn)', ''),
(29, 'module', 'menu', 0, 0, 'menu', 'menu', '4.0.29 1463652000', 1464421307, 'VINADES (contact@vinades.vn)', ''),
(283, 'module', 'feeds', 1, 0, 'feeds', 'feeds', '4.0.29 1463652000', 1464421307, 'VINADES (contact@vinades.vn)', ''),
(282, 'module', 'page', 1, 1, 'page', 'page', '4.0.29 1463652000', 1464421307, 'VINADES (contact@vinades.vn)', ''),
(281, 'module', 'comment', 1, 0, 'comment', 'comment', '4.0.29 1463652000', 1464421307, 'VINADES (contact@vinades.vn)', ''),
(312, 'module', 'freecontent', 0, 0, 'freecontent', 'freecontent', '4.0.29 1463652000', 1464421307, 'VINADES (contact@vinades.vn)', ''),
(307, 'theme', 'default', 0, 0, 'default', 'default', '4.0.29 1463652000', 1464421307, 'VINADES (contact@vinades.vn)', ''),
(311, 'theme', 'mobile_default', 0, 0, 'mobile_default', 'mobile_default', '4.0.29 1463652000', 1464421307, 'VINADES (contact@vinades.vn)', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_setup_language`
--

CREATE TABLE `nv4_setup_language` (
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setup` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_setup_language`
--

INSERT INTO `nv4_setup_language` (`lang`, `setup`) VALUES
('vi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_field_value_vi`
--

CREATE TABLE `nv4_shops_field_value_vi` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `rows_id` int(11) UNSIGNED NOT NULL,
  `field_id` mediumint(8) NOT NULL,
  `field_value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_upload_dir`
--

CREATE TABLE `nv4_upload_dir` (
  `did` mediumint(8) NOT NULL,
  `dirname` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `thumb_type` tinyint(4) NOT NULL DEFAULT '0',
  `thumb_width` smallint(6) NOT NULL DEFAULT '0',
  `thumb_height` smallint(6) NOT NULL DEFAULT '0',
  `thumb_quality` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_upload_dir`
--

INSERT INTO `nv4_upload_dir` (`did`, `dirname`, `time`, `thumb_type`, `thumb_width`, `thumb_height`, `thumb_quality`) VALUES
(0, '', 0, 3, 100, 150, 90),
(1, 'uploads', 1464431380, 0, 0, 0, 0),
(2, 'uploads/about', 0, 0, 0, 0, 0),
(3, 'uploads/banners', 0, 0, 0, 0, 0),
(4, 'uploads/contact', 0, 0, 0, 0, 0),
(5, 'uploads/freecontent', 0, 0, 0, 0, 0),
(6, 'uploads/menu', 0, 0, 0, 0, 0),
(7, 'uploads/news', 0, 0, 0, 0, 0),
(8, 'uploads/news/2016_01', 0, 0, 0, 0, 0),
(9, 'uploads/news/source', 0, 0, 0, 0, 0),
(10, 'uploads/news/temp_pic', 0, 0, 0, 0, 0),
(11, 'uploads/news/topics', 0, 0, 0, 0, 0),
(12, 'uploads/page', 0, 0, 0, 0, 0),
(13, 'uploads/siteterms', 0, 0, 0, 0, 0),
(14, 'uploads/users', 0, 0, 0, 0, 0),
(15, 'uploads/users/groups', 0, 0, 0, 0, 0),
(16, 'uploads/news/2016_05', 0, 0, 0, 0, 0),
(20, 'uploads/news/2016_06', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_upload_file`
--

CREATE TABLE `nv4_upload_file` (
  `name` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `srcwidth` int(11) NOT NULL DEFAULT '0',
  `srcheight` int(11) NOT NULL DEFAULT '0',
  `sizes` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `mtime` int(11) NOT NULL DEFAULT '0',
  `did` int(11) NOT NULL DEFAULT '0',
  `title` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_upload_file`
--

INSERT INTO `nv4_upload_file` (`name`, `ext`, `type`, `filesize`, `src`, `srcwidth`, `srcheight`, `sizes`, `userid`, `mtime`, `did`, `title`, `alt`) VALUES
('logo-rao-vat.png', 'png', 'image', 3464, 'assets/logo-rao-vat.png', 80, 36, '200|90', 1, 1464431392, 1, 'logo-rao-vat.png', 'logo rao vat'),
('ra0-la-ban.jpg', 'jpg', 'image', 9186, 'assets/ra0-la-ban.jpg', 80, 10, '549|62', 1, 1464449686, 1, 'ra0-la-ban.jpg', 'ra0 la ban'),
('dang-tin-top.png', 'png', 'image', 66067, 'assets/dang-tin-top.png', 80, 8, '696|69', 1, 1464450225, 1, 'dang-tin-top.png', 'dang tin top'),
('icon_post.gif', 'gif', 'image', 14453, 'assets/icon_post.gif', 80, 27, '240|80', 1, 1464450279, 1, 'icon_post.gif', 'icon post'),
('dangtin640...jpg', 'jpg', 'image', 44319, 'assets/dangtin640x224.jpg', 80, 28, '640|224', 1, 1464450501, 1, 'dangtin640x224.jpg', 'dangtin640x224'),
('quangcaotr...jpg', 'jpg', 'image', 45001, 'assets/quangcaotructuyen.jpg', 80, 62, '300|234', 1, 1464450631, 1, 'quangcaotructuyen.jpg', 'quangcaotructuyen'),
('logo.png', 'png', 'image', 5884, 'assets/logo.png', 80, 28, '202|70', 1, 1464451157, 1, 'logo.png', 'logo'),
('banner-top_3.png', 'png', 'image', 75669, 'assets/banner-top_3.png', 80, 10, '776|99', 1, 1464510714, 1, 'banner-top_3.png', 'banner top 3');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users`
--

CREATE TABLE `nv4_users` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text COLLATE utf8mb4_unicode_ci,
  `regdate` int(11) NOT NULL DEFAULT '0',
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `passlostkey` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `view_mail` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `remember` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `in_groups` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `checknum` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_openid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `idsite` int(11) NOT NULL DEFAULT '0',
  `safemode` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `safekey` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users`
--

INSERT INTO `nv4_users` (`userid`, `group_id`, `username`, `md5username`, `password`, `email`, `first_name`, `last_name`, `gender`, `photo`, `birthday`, `sig`, `regdate`, `question`, `answer`, `passlostkey`, `view_mail`, `remember`, `in_groups`, `active`, `checknum`, `last_login`, `last_ip`, `last_agent`, `last_openid`, `idsite`, `safemode`, `safekey`) VALUES
(1, 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '{SSHA}6g6n1oNP3zVnqLi2Utkrbry2vD9aazd6', 'xmailvn@gmail.com', 'admin', '', '', '', 0, '', 1464421345, 'hocodau', 'banmethuot', '', 0, 1, '1', 1, '5459fde5d35df79d379ac9a44303ca73', 1464607330, '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '', 0, 0, ''),
(2, 0, 'vnwsxu', '7cd506d6e2683a234da1975a9591fc93', '{SSHA}mTlYamumgmnn+f+K6gFrHn1xO0FyQ0Nv', 'vnwsxu@yahoo.com', 'xuan', 'thanh', '', '', 0, '', 1464448511, 'Ngày lễ mà bạn luôn mong đợi', 'banmethuot', '', 0, 1, '', 1, 'd40d163ab77f479d2e679f7abcca51ea', 1465010556, '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_config`
--

CREATE TABLE `nv4_users_config` (
  `config` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_config`
--

INSERT INTO `nv4_users_config` (`config`, `content`, `edit_time`) VALUES
('access_admin', 'a:6:{s:12:"access_addus";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:14:"access_waiting";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:"access_editus";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:12:"access_delus";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:"access_passus";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:"access_groups";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}}', 1464436025),
('password_simple', '000000|1234|2000|12345|111111|123123|123456|654321|696969|1234567|1234569|11223344|12345678|12345679|23456789|66666666|66668888|68686868|87654321|88888888|99999999|123456789|999999999|1234567890|aaaaaa|abc123|abc123@|abc@123|admin123|admin123@|admin@123|adobe1|adobe123|azerty|baseball|dragon|football|harley|hoilamgi|iloveyou|jennifer|jordan|khongbiet|khongco|khongcopass|letmein|macromedia|master|michael|monkey|mustang|nuke123|nuke123@|nuke@123|password|photoshop|pussy|qwerty|shadow|superman', 1464436025),
('deny_email', 'yoursite.com|mysite.com|localhost|xxx', 1464436025),
('deny_name', 'anonimo|anonymous|god|linux|nobody|operator|root', 1464436025),
('avatar_width', '80', 1464436025),
('avatar_height', '80', 1464436025),
('active_group_newusers', '0', 1464436025),
('siteterms_vi', '<p>Để trở thành thành viên, bạn phải cam kết đồng ý với các điều khoản dưới đây. Chúng tôi có thể thay đổi lại những điều khoản này vào bất cứ lúc nào và chúng tôi sẽ cố gắng thông báo đến bạn kịp thời.<br  />\r\n<br  />\r\nBạn cam kết không gửi bất cứ bài viết có nội dung lừa đảo, thô tục, thiếu văn hoá; vu khống, khiêu khích, đe doạ người khác; liên quan đến các vấn đề tình dục hay bất cứ nội dung nào vi phạm luật pháp của quốc gia mà bạn đang sống, luật pháp của quốc gia nơi đặt máy chủ của website này hay luật pháp quốc tế. Nếu vẫn cố tình vi phạm, ngay lập tức bạn sẽ bị cấm tham gia vào website. Địa chỉ IP của tất cả các bài viết đều được ghi nhận lại để bảo vệ các điều khoản cam kết này trong trường hợp bạn không tuân thủ.<br  />\r\n<br  />\r\nBạn đồng ý rằng <a href="http://azvnn.com">azvnn</a> có quyền gỡ bỏ, sửa, di chuyển hoặc khoá bất kỳ bài viết nào trong <a href="http://azvnn">azvnn</a> vào bất cứ lúc nào tuỳ theo nhu cầu công việc.<br  />\r\n<br  />\r\nĐăng ký làm thành viên của chúng tôi, bạn cũng phải đồng ý rằng, bất kỳ thông tin cá nhân nào mà bạn cung cấp đều được lưu trữ trong cơ sở dữ liệu của hệ thống. Mặc dù những thông tin này sẽ không được cung cấp cho bất kỳ người thứ ba nào khác mà không được sự đồng ý của bạn, chúng tôi không chịu trách nhiệm về việc những thông tin cá nhân này của bạn bị lộ ra bên ngoài từ những kẻ phá hoại có ý đồ xấu tấn công vào cơ sở dữ liệu của hệ thống.</p>', 1465538822);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_field`
--

CREATE TABLE `nv4_users_field` (
  `fid` mediumint(8) NOT NULL,
  `field` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `field_type` enum('number','date','textbox','textarea','editor','select','radio','checkbox','multiselect') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'textbox',
  `field_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sql_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `match_type` enum('none','alphanumeric','email','url','regex','callback') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `match_regex` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_callback` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT '0',
  `max_length` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `required` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `show_register` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `user_editable` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `show_profile` tinyint(4) NOT NULL DEFAULT '1',
  `class` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_field`
--

INSERT INTO `nv4_users_field` (`fid`, `field`, `weight`, `field_type`, `field_choices`, `sql_choices`, `match_type`, `match_regex`, `func_callback`, `min_length`, `max_length`, `required`, `show_register`, `user_editable`, `show_profile`, `class`, `language`, `default_value`) VALUES
(1, 'Ning', 1, 'radio', 'a:0:{}', '', 'none', '', '', 0, 255, 0, 0, 1, 1, 'input', 'a:1:{s:2:"vi";a:2:{i:0;s:11:"Nơi Đăng";i:1;s:15:"Nơi đăng tin";}}', '0');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_groups`
--

CREATE TABLE `nv4_users_groups` (
  `group_id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `group_type` tinyint(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0:Sys, 1:approval, 2:public',
  `group_color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL,
  `exp_time` int(11) NOT NULL,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint(1) UNSIGNED NOT NULL,
  `idsite` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `numbers` mediumint(9) UNSIGNED NOT NULL DEFAULT '0',
  `siteus` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `config` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_groups`
--

INSERT INTO `nv4_users_groups` (`group_id`, `title`, `email`, `description`, `content`, `group_type`, `group_color`, `group_avatar`, `is_default`, `add_time`, `exp_time`, `weight`, `act`, `idsite`, `numbers`, `siteus`, `config`) VALUES
(1, 'Super admin', '', 'Super Admin', '', 0, '', '', 0, 1464421307, 0, 1, 1, 0, 1, 0, 'a:7:{s:17:"access_groups_add";i:1;s:17:"access_groups_del";i:1;s:12:"access_addus";i:0;s:14:"access_waiting";i:0;s:13:"access_editus";i:0;s:12:"access_delus";i:0;s:13:"access_passus";i:0;}'),
(2, 'General admin', '', 'General Admin', '', 0, '', '', 0, 1464421307, 0, 2, 1, 0, 0, 0, 'a:7:{s:17:"access_groups_add";i:1;s:17:"access_groups_del";i:1;s:12:"access_addus";i:0;s:14:"access_waiting";i:0;s:13:"access_editus";i:0;s:12:"access_delus";i:0;s:13:"access_passus";i:0;}'),
(3, 'Module admin', '', 'Module Admin', '', 0, '', '', 0, 1464421307, 0, 3, 1, 0, 0, 0, 'a:7:{s:17:"access_groups_add";i:1;s:17:"access_groups_del";i:1;s:12:"access_addus";i:0;s:14:"access_waiting";i:0;s:13:"access_editus";i:0;s:12:"access_delus";i:0;s:13:"access_passus";i:0;}'),
(4, 'Users', '', 'Users', '', 0, '', '', 0, 1464421307, 0, 4, 1, 0, 2, 0, 'a:7:{s:17:"access_groups_add";i:1;s:17:"access_groups_del";i:1;s:12:"access_addus";i:0;s:14:"access_waiting";i:0;s:13:"access_editus";i:0;s:12:"access_delus";i:0;s:13:"access_passus";i:0;}'),
(7, 'New Users', '', 'New Users', '', 0, '', '', 0, 1464421307, 0, 5, 1, 0, 0, 0, 'a:7:{s:17:"access_groups_add";i:1;s:17:"access_groups_del";i:1;s:12:"access_addus";i:0;s:14:"access_waiting";i:0;s:13:"access_editus";i:0;s:12:"access_delus";i:0;s:13:"access_passus";i:0;}'),
(5, 'Guest', '', 'Guest', '', 0, '', '', 0, 1464421307, 0, 6, 1, 0, 0, 0, 'a:7:{s:17:"access_groups_add";i:1;s:17:"access_groups_del";i:1;s:12:"access_addus";i:0;s:14:"access_waiting";i:0;s:13:"access_editus";i:0;s:12:"access_delus";i:0;s:13:"access_passus";i:0;}'),
(6, 'All', '', 'All', '', 0, '', '', 0, 1464421307, 0, 7, 1, 0, 0, 0, 'a:7:{s:17:"access_groups_add";i:1;s:17:"access_groups_del";i:1;s:12:"access_addus";i:0;s:14:"access_waiting";i:0;s:13:"access_editus";i:0;s:12:"access_delus";i:0;s:13:"access_passus";i:0;}'),
(13, 'VIP', '', 'Tài Khoản VIP', '', 1, '', '', 0, 1464618850, 0, 8, 1, 0, 0, 0, 'a:7:{s:17:"access_groups_add";i:1;s:17:"access_groups_del";i:1;s:12:"access_addus";i:1;s:14:"access_waiting";i:1;s:13:"access_editus";i:1;s:12:"access_delus";i:1;s:13:"access_passus";i:1;}');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_groups_users`
--

CREATE TABLE `nv4_users_groups_users` (
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `is_leader` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `approved` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_groups_users`
--

INSERT INTO `nv4_users_groups_users` (`group_id`, `userid`, `is_leader`, `approved`, `data`) VALUES
(1, 1, 1, 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_info`
--

CREATE TABLE `nv4_users_info` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `Ning` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_info`
--

INSERT INTO `nv4_users_info` (`userid`, `Ning`) VALUES
(1, ''),
(2, '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_openid`
--

CREATE TABLE `nv4_users_openid` (
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `openid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `opid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_question`
--

CREATE TABLE `nv4_users_question` (
  `qid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_question`
--

INSERT INTO `nv4_users_question` (`qid`, `title`, `lang`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Bạn thích môn thể thao nào nhất', 'vi', 1, 1274840238, 1274840238),
(2, 'Món ăn mà bạn yêu thích', 'vi', 2, 1274840250, 1274840250),
(3, 'Thần tượng điện ảnh của bạn', 'vi', 3, 1274840257, 1274840257),
(4, 'Bạn thích nhạc sỹ nào nhất', 'vi', 4, 1274840264, 1274840264),
(5, 'Quê ngoại của bạn ở đâu', 'vi', 5, 1274840270, 1274840270),
(6, 'Tên cuốn sách &quot;gối đầu giường&quot;', 'vi', 6, 1274840278, 1274840278),
(7, 'Ngày lễ mà bạn luôn mong đợi', 'vi', 7, 1274840285, 1274840285);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_reg`
--

CREATE TABLE `nv4_users_reg` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `regdate` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checknum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `users_info` text COLLATE utf8mb4_unicode_ci,
  `openid_info` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_about`
--

CREATE TABLE `nv4_vi_about` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_about`
--

INSERT INTO `nv4_vi_about` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `gid`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`) VALUES
(1, 'Giới thiệu về AzVNN', 'Gioi-thieu-ve-AzVNN', '', '', 0, '', '<h2>Trang Rao Vặt Lớn Nhất <a href="http://azvnn.com">Việt Nam</a></h2>', 'giới thiệu', 0, '4', '', 0, 1, 1, 1464421307, 1465538761, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_about_config`
--

CREATE TABLE `nv4_vi_about_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_about_config`
--

INSERT INTO `nv4_vi_about_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_blocks_groups`
--

CREATE TABLE `nv4_vi_blocks_groups` (
  `bid` mediumint(8) UNSIGNED NOT NULL,
  `theme` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exp_time` int(11) DEFAULT '0',
  `active` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `all_func` tinyint(4) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `config` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_blocks_groups`
--

INSERT INTO `nv4_vi_blocks_groups` (`bid`, `theme`, `module`, `file_name`, `title`, `link`, `template`, `position`, `exp_time`, `active`, `act`, `groups_view`, `all_func`, `weight`, `config`) VALUES
(3, 'default', 'news', 'global.block_category.php', 'Chủ đề', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 1, 'a:2:{s:5:"catid";i:0;s:12:"title_length";i:22;}'),
(4, 'default', 'theme', 'global.module_menu.php', 'Module Menu', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 2, ''),
(5, 'default', 'page', 'global.html.php', 'Quảng cáo cột trái', '', 'border', '[LEFT]', 0, '1', 1, '6', 1, 3, 'a:1:{s:11:"htmlcontent";s:162:"<div style="text-align:center"><a href="http://localhost/nukeviet/content/"><img alt="" height="65" src="/nukeviet/uploads/icon_post.gif" width="200" /></a></div>";}'),
(6, 'default', 'statistics', 'global.counter.php', 'Thống kê', '', 'primary', '[LEFT]', 0, '1', 1, '6', 1, 4, ''),
(7, 'default', 'users', 'global.login.php', 'Tài Khoản', '', 'border', '[RIGHT]', 0, '1', 1, '6', 1, 1, 'a:2:{s:12:"display_mode";i:0;s:14:"popup_register";i:1;}'),
(9, 'default', 'voting', 'global.voting_random.php', 'Thăm dò ý kiến', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 2, ''),
(10, 'default', 'news', 'global.block_tophits.php', 'Tin xem nhiều', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 3, 'a:6:{s:10:"number_day";i:3650;s:6:"numrow";i:10;s:11:"showtooltip";i:1;s:16:"tooltip_position";s:6:"bottom";s:14:"tooltip_length";s:3:"150";s:7:"nocatid";a:2:{i:0;i:10;i:1;i:11;}}'),
(11, 'default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:"copyright_by";s:0:"";s:13:"copyright_url";s:0:"";s:9:"design_by";s:12:"VINADES.,JSC";s:10:"design_url";s:18:"http://vinades.vn/";s:13:"siteterms_url";s:48:"/nukeviet/index.php?language=vi&amp;nv=siteterms";}'),
(12, 'default', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 2, ''),
(13, 'default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 1, 'a:3:{s:5:"level";s:1:"M";s:15:"pixel_per_point";i:4;s:11:"outer_frame";i:1;}'),
(14, 'default', 'statistics', 'global.counter_button.php', 'Online button', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 2, ''),
(15, 'default', 'users', 'global.user_button.php', 'Đăng nhập thành viên', '', 'no_title', '[PERSONALAREA]', 0, '1', 1, '6', 1, 1, ''),
(17, 'default', 'menu', 'global.bootstrap.php', 'Menu Site', '', 'no_title', '[CONTACT_DEFAULT]', 0, '1', 1, '6', 1, 2, 'a:2:{s:6:"menuid";i:1;s:12:"title_length";i:0;}'),
(18, 'default', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[CONTACT_DEFAULT]', 0, '1', 0, '6', 1, 1, ''),
(19, 'default', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, 'a:4:{s:8:"facebook";s:32:"http://www.facebook.com/nukeviet";s:11:"google_plus";s:32:"https://www.google.com/+nukeviet";s:7:"youtube";s:37:"https://www.youtube.com/user/nukeviet";s:7:"twitter";s:28:"https://twitter.com/nukeviet";}'),
(22, 'mobile_default', 'menu', 'global.metismenu.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:"menuid";i:1;s:12:"title_length";i:0;}'),
(23, 'mobile_default', 'users', 'global.user_button.php', 'Sign In', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 2, ''),
(24, 'mobile_default', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, ''),
(25, 'mobile_default', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 2, ''),
(26, 'mobile_default', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 3, 'a:4:{s:8:"facebook";s:32:"http://www.facebook.com/nukeviet";s:11:"google_plus";s:32:"https://www.google.com/+nukeviet";s:7:"youtube";s:37:"https://www.youtube.com/user/nukeviet";s:7:"twitter";s:28:"https://twitter.com/nukeviet";}'),
(27, 'mobile_default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 4, 'a:3:{s:5:"level";s:1:"L";s:15:"pixel_per_point";i:4;s:11:"outer_frame";i:1;}'),
(28, 'mobile_default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:"copyright_by";s:0:"";s:13:"copyright_url";s:0:"";s:9:"design_by";s:12:"VINADES.,JSC";s:10:"design_url";s:18:"http://vinades.vn/";s:13:"siteterms_url";s:48:"/nukeviet/index.php?language=vi&amp;nv=siteterms";}'),
(29, 'mobile_default', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'primary', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:"module_in_menu";a:9:{i:0;s:5:"about";i:1;s:4:"news";i:2;s:5:"users";i:3;s:7:"contact";i:4;s:6:"voting";i:5;s:7:"banners";i:6;s:4:"seek";i:7;s:5:"feeds";i:8;s:9:"siteterms";}}'),
(30, 'mobile_default', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'primary', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:17:{s:12:"company_name";s:58:"Công ty cổ phần phát triển nguồn mở Việt Nam";s:15:"company_address";s:72:"Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội";s:16:"company_sortname";s:12:"VINADES.,JSC";s:15:"company_regcode";s:0:"";s:16:"company_regplace";s:0:"";s:21:"company_licensenumber";s:0:"";s:22:"company_responsibility";s:0:"";s:15:"company_showmap";i:1;s:20:"company_mapcenterlat";d:20.984516000000013;s:20:"company_mapcenterlng";d:105.795475;s:14:"company_maplat";d:20.984515999999999;s:14:"company_maplng";d:105.79547500000001;s:15:"company_mapzoom";i:17;s:13:"company_phone";s:56:"+84-4-85872007[+84485872007]|+84-904762534[+84904762534]";s:11:"company_fax";s:14:"+84-4-35500914";s:13:"company_email";s:18:"contact@vinades.vn";s:15:"company_website";s:17:"http://vinades.vn";}'),
(31, 'default', 'page', 'global.html.php', 'global html', '', 'border', '[HEAD_RIGHT]', 0, '1', 1, '6', 0, 1, 'a:1:{s:11:"htmlcontent";s:79:"<img alt="" height="69" src="/nukeviet/uploads/dang-tin-top.png" width="696" />";}'),
(32, 'default', 'page', 'global.html.php', 'global html', '', 'border', '[BOTTOM]', 0, '1', 1, '6', 0, 1, 'a:1:{s:11:"htmlcontent";s:139:"<div><div style="text-align:center"><img alt="banner top 3" height="99" src="/nukeviet/uploads/banner-top_3.png" width="776" /></div></div>";}'),
(33, 'default', 'page', 'global.html.php', 'global html', '', 'border', '[LEFT]', 0, '1', 1, '6', 0, 5, 'a:1:{s:11:"htmlcontent";s:85:"<img alt="" height="234" src="/nukeviet/uploads/quangcaotructuyen.jpg" width="203" />";}'),
(37, 'default', 'banners', 'global.banners.php', 'global banners', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 1, 'a:1:{s:12:"idplanbanner";i:1;}'),
(39, 'default', 'news', 'global.block_groups.php', 'Tin VIP', '/nukeviet/groups/Tin-VIP/', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 2, 'a:5:{s:7:"blockid";i:3;s:6:"numrow";i:5;s:11:"showtooltip";i:0;s:16:"tooltip_position";s:6:"bottom";s:14:"tooltip_length";s:3:"150";}');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_blocks_weight`
--

CREATE TABLE `nv4_vi_blocks_weight` (
  `bid` mediumint(8) NOT NULL DEFAULT '0',
  `func_id` mediumint(8) NOT NULL DEFAULT '0',
  `weight` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_blocks_weight`
--

INSERT INTO `nv4_vi_blocks_weight` (`bid`, `func_id`, `weight`) VALUES
(18, 1, 1),
(18, 37, 1),
(18, 38, 1),
(18, 39, 1),
(18, 40, 1),
(18, 46, 1),
(18, 47, 1),
(18, 48, 1),
(18, 49, 1),
(18, 56, 1),
(18, 59, 1),
(18, 4, 1),
(18, 5, 1),
(18, 6, 1),
(18, 7, 1),
(18, 8, 1),
(18, 9, 1),
(18, 10, 1),
(18, 11, 1),
(18, 12, 1),
(18, 50, 1),
(18, 58, 1),
(18, 53, 1),
(18, 54, 1),
(18, 30, 1),
(18, 31, 1),
(18, 32, 1),
(18, 33, 1),
(18, 34, 1),
(18, 35, 1),
(18, 36, 1),
(18, 18, 1),
(18, 19, 1),
(18, 20, 1),
(18, 21, 1),
(18, 22, 1),
(18, 23, 1),
(18, 24, 1),
(18, 25, 1),
(18, 26, 1),
(18, 27, 1),
(18, 28, 1),
(18, 57, 1),
(11, 1, 1),
(11, 37, 1),
(11, 38, 1),
(11, 39, 1),
(11, 40, 1),
(11, 46, 1),
(11, 47, 1),
(11, 48, 1),
(11, 49, 1),
(11, 56, 1),
(11, 59, 1),
(11, 4, 1),
(11, 5, 1),
(11, 6, 1),
(11, 7, 1),
(11, 8, 1),
(11, 9, 1),
(11, 10, 1),
(11, 11, 1),
(11, 12, 1),
(11, 50, 1),
(11, 58, 1),
(11, 53, 1),
(11, 54, 1),
(11, 30, 1),
(11, 31, 1),
(11, 32, 1),
(11, 33, 1),
(11, 34, 1),
(11, 35, 1),
(11, 36, 1),
(11, 18, 1),
(11, 19, 1),
(11, 20, 1),
(11, 21, 1),
(11, 22, 1),
(11, 23, 1),
(11, 24, 1),
(11, 25, 1),
(11, 26, 1),
(11, 27, 1),
(11, 28, 1),
(11, 57, 1),
(12, 1, 2),
(12, 37, 2),
(12, 38, 2),
(12, 39, 2),
(12, 40, 2),
(12, 46, 2),
(12, 47, 2),
(12, 48, 2),
(12, 49, 2),
(12, 56, 2),
(12, 59, 2),
(12, 4, 2),
(12, 5, 2),
(12, 6, 2),
(12, 7, 2),
(12, 8, 2),
(12, 9, 2),
(12, 10, 2),
(12, 11, 2),
(12, 12, 2),
(12, 50, 2),
(12, 58, 2),
(12, 53, 2),
(12, 54, 2),
(12, 30, 2),
(12, 31, 2),
(12, 32, 2),
(12, 33, 2),
(12, 34, 2),
(12, 35, 2),
(12, 36, 2),
(12, 18, 2),
(12, 19, 2),
(12, 20, 2),
(12, 21, 2),
(12, 22, 2),
(12, 23, 2),
(12, 24, 2),
(12, 25, 2),
(12, 26, 2),
(12, 27, 2),
(12, 28, 2),
(12, 57, 2),
(3, 4, 2),
(3, 5, 1),
(3, 6, 1),
(3, 7, 1),
(3, 8, 1),
(3, 9, 1),
(3, 10, 1),
(3, 11, 1),
(3, 12, 1),
(4, 18, 1),
(4, 19, 1),
(4, 20, 1),
(4, 21, 1),
(4, 22, 1),
(4, 23, 1),
(4, 24, 1),
(4, 25, 1),
(4, 26, 1),
(4, 27, 1),
(4, 30, 1),
(4, 31, 1),
(4, 32, 1),
(4, 33, 1),
(4, 34, 1),
(4, 35, 1),
(4, 36, 1),
(5, 1, 1),
(5, 37, 1),
(5, 38, 1),
(5, 39, 1),
(5, 40, 1),
(5, 46, 1),
(5, 47, 1),
(5, 48, 1),
(5, 49, 1),
(5, 56, 1),
(5, 59, 1),
(5, 4, 1),
(5, 5, 2),
(5, 6, 2),
(5, 7, 2),
(5, 8, 2),
(5, 9, 2),
(5, 10, 2),
(5, 11, 2),
(5, 12, 2),
(5, 50, 1),
(5, 58, 1),
(5, 53, 1),
(5, 54, 1),
(5, 30, 2),
(5, 31, 2),
(5, 32, 2),
(5, 33, 2),
(5, 34, 2),
(5, 35, 2),
(5, 36, 2),
(5, 18, 2),
(5, 19, 2),
(5, 20, 2),
(5, 21, 2),
(5, 22, 2),
(5, 23, 2),
(5, 24, 2),
(5, 25, 2),
(5, 26, 2),
(5, 27, 2),
(5, 28, 1),
(5, 57, 1),
(6, 1, 2),
(6, 37, 2),
(6, 38, 2),
(6, 39, 2),
(6, 40, 2),
(6, 46, 2),
(6, 47, 2),
(6, 48, 2),
(6, 49, 2),
(6, 56, 2),
(6, 59, 2),
(6, 4, 4),
(6, 5, 3),
(6, 6, 3),
(6, 7, 3),
(6, 8, 3),
(6, 9, 3),
(6, 10, 3),
(6, 11, 3),
(6, 12, 3),
(6, 50, 2),
(6, 58, 2),
(6, 53, 2),
(6, 54, 2),
(6, 30, 3),
(6, 31, 3),
(6, 32, 3),
(6, 33, 3),
(6, 34, 3),
(6, 35, 3),
(6, 36, 3),
(6, 18, 3),
(6, 19, 3),
(6, 20, 3),
(6, 21, 3),
(6, 22, 3),
(6, 23, 3),
(6, 24, 3),
(6, 25, 3),
(6, 26, 3),
(6, 27, 3),
(6, 28, 2),
(6, 57, 2),
(17, 1, 2),
(17, 37, 2),
(17, 38, 2),
(17, 39, 2),
(17, 40, 2),
(17, 46, 2),
(17, 47, 2),
(17, 48, 2),
(17, 49, 2),
(17, 56, 2),
(17, 59, 2),
(17, 4, 2),
(17, 5, 2),
(17, 6, 2),
(17, 7, 2),
(17, 8, 2),
(17, 9, 2),
(17, 10, 2),
(17, 11, 2),
(17, 12, 2),
(17, 50, 2),
(17, 58, 2),
(17, 53, 2),
(17, 54, 2),
(17, 30, 2),
(17, 31, 2),
(17, 32, 2),
(17, 33, 2),
(17, 34, 2),
(17, 35, 2),
(17, 36, 2),
(17, 18, 2),
(17, 19, 2),
(17, 20, 2),
(17, 21, 2),
(17, 22, 2),
(17, 23, 2),
(17, 24, 2),
(17, 25, 2),
(17, 26, 2),
(17, 27, 2),
(17, 28, 2),
(17, 57, 2),
(15, 1, 1),
(15, 37, 1),
(15, 38, 1),
(15, 39, 1),
(15, 40, 1),
(15, 46, 1),
(15, 47, 1),
(15, 48, 1),
(15, 49, 1),
(15, 56, 1),
(15, 59, 1),
(15, 4, 1),
(15, 5, 1),
(15, 6, 1),
(15, 7, 1),
(15, 8, 1),
(15, 9, 1),
(15, 10, 1),
(15, 11, 1),
(15, 12, 1),
(15, 50, 1),
(15, 58, 1),
(15, 53, 1),
(15, 54, 1),
(15, 30, 1),
(15, 31, 1),
(15, 32, 1),
(15, 33, 1),
(15, 34, 1),
(15, 35, 1),
(15, 36, 1),
(15, 18, 1),
(15, 19, 1),
(15, 20, 1),
(15, 21, 1),
(15, 22, 1),
(15, 23, 1),
(15, 24, 1),
(15, 25, 1),
(15, 26, 1),
(15, 27, 1),
(15, 28, 1),
(15, 57, 1),
(13, 1, 1),
(13, 37, 1),
(13, 38, 1),
(13, 39, 1),
(13, 40, 1),
(13, 46, 1),
(13, 47, 1),
(13, 48, 1),
(13, 49, 1),
(13, 56, 1),
(13, 59, 1),
(13, 4, 1),
(13, 5, 1),
(13, 6, 1),
(13, 7, 1),
(13, 8, 1),
(13, 9, 1),
(13, 10, 1),
(13, 11, 1),
(13, 12, 1),
(13, 50, 1),
(13, 58, 1),
(13, 53, 1),
(13, 54, 1),
(13, 30, 1),
(13, 31, 1),
(13, 32, 1),
(13, 33, 1),
(13, 34, 1),
(13, 35, 1),
(13, 36, 1),
(13, 18, 1),
(13, 19, 1),
(13, 20, 1),
(13, 21, 1),
(13, 22, 1),
(13, 23, 1),
(13, 24, 1),
(13, 25, 1),
(13, 26, 1),
(13, 27, 1),
(13, 28, 1),
(13, 57, 1),
(14, 1, 2),
(14, 37, 2),
(14, 38, 2),
(14, 39, 2),
(14, 40, 2),
(14, 46, 2),
(14, 47, 2),
(14, 48, 2),
(14, 49, 2),
(14, 56, 2),
(14, 59, 2),
(14, 4, 2),
(14, 5, 2),
(14, 6, 2),
(14, 7, 2),
(14, 8, 2),
(14, 9, 2),
(14, 10, 2),
(14, 11, 2),
(14, 12, 2),
(14, 50, 2),
(14, 58, 2),
(14, 53, 2),
(14, 54, 2),
(14, 30, 2),
(14, 31, 2),
(14, 32, 2),
(14, 33, 2),
(14, 34, 2),
(14, 35, 2),
(14, 36, 2),
(14, 18, 2),
(14, 19, 2),
(14, 20, 2),
(14, 21, 2),
(14, 22, 2),
(14, 23, 2),
(14, 24, 2),
(14, 25, 2),
(14, 26, 2),
(14, 27, 2),
(14, 28, 2),
(14, 57, 2),
(7, 1, 1),
(7, 37, 1),
(7, 38, 1),
(7, 39, 1),
(7, 40, 1),
(7, 46, 1),
(7, 47, 1),
(7, 48, 1),
(7, 49, 1),
(7, 56, 1),
(7, 59, 1),
(7, 4, 1),
(7, 5, 1),
(7, 6, 1),
(7, 7, 1),
(7, 8, 1),
(7, 9, 1),
(7, 10, 1),
(7, 11, 1),
(7, 12, 1),
(7, 50, 1),
(7, 58, 1),
(7, 53, 1),
(7, 54, 1),
(7, 30, 1),
(7, 31, 1),
(7, 32, 1),
(7, 33, 1),
(7, 34, 1),
(7, 35, 1),
(7, 36, 1),
(7, 18, 1),
(7, 19, 1),
(7, 20, 1),
(7, 21, 1),
(7, 22, 1),
(7, 23, 1),
(7, 24, 1),
(7, 25, 1),
(7, 26, 1),
(7, 27, 1),
(7, 28, 1),
(7, 57, 1),
(9, 1, 2),
(9, 37, 2),
(9, 38, 2),
(9, 39, 2),
(9, 40, 2),
(9, 46, 2),
(9, 47, 2),
(9, 48, 2),
(9, 49, 2),
(9, 56, 2),
(9, 59, 2),
(9, 4, 2),
(9, 5, 2),
(9, 6, 2),
(9, 7, 3),
(9, 8, 2),
(9, 9, 2),
(9, 10, 2),
(9, 11, 2),
(9, 12, 2),
(9, 50, 2),
(9, 58, 2),
(9, 53, 2),
(9, 54, 2),
(9, 30, 2),
(9, 31, 2),
(9, 32, 2),
(9, 33, 2),
(9, 34, 2),
(9, 35, 2),
(9, 36, 2),
(9, 18, 2),
(9, 19, 2),
(9, 20, 2),
(9, 21, 2),
(9, 22, 2),
(9, 23, 2),
(9, 24, 2),
(9, 25, 2),
(9, 26, 2),
(9, 27, 2),
(9, 28, 2),
(9, 57, 2),
(10, 1, 3),
(10, 37, 3),
(10, 38, 3),
(10, 39, 3),
(10, 40, 3),
(10, 46, 3),
(10, 47, 3),
(10, 48, 3),
(10, 49, 3),
(10, 56, 3),
(10, 59, 3),
(10, 4, 3),
(10, 5, 3),
(10, 6, 3),
(10, 7, 2),
(10, 8, 3),
(10, 9, 3),
(10, 10, 3),
(10, 11, 3),
(10, 12, 3),
(10, 50, 3),
(10, 58, 3),
(10, 53, 3),
(10, 54, 3),
(10, 30, 3),
(10, 31, 3),
(10, 32, 3),
(10, 33, 3),
(10, 34, 3),
(10, 35, 3),
(10, 36, 3),
(10, 18, 3),
(10, 19, 3),
(10, 20, 3),
(10, 21, 3),
(10, 22, 3),
(10, 23, 3),
(10, 24, 3),
(10, 25, 3),
(10, 26, 3),
(10, 27, 3),
(10, 28, 3),
(10, 57, 3),
(19, 1, 1),
(19, 37, 1),
(19, 38, 1),
(19, 39, 1),
(19, 40, 1),
(19, 46, 1),
(19, 47, 1),
(19, 48, 1),
(19, 49, 1),
(19, 56, 1),
(19, 59, 1),
(19, 4, 1),
(19, 5, 1),
(19, 6, 1),
(19, 7, 1),
(19, 8, 1),
(19, 9, 1),
(19, 10, 1),
(19, 11, 1),
(19, 12, 1),
(19, 50, 1),
(19, 58, 1),
(19, 53, 1),
(19, 54, 1),
(19, 30, 1),
(19, 31, 1),
(19, 32, 1),
(19, 33, 1),
(19, 34, 1),
(19, 35, 1),
(19, 36, 1),
(19, 18, 1),
(19, 19, 1),
(19, 20, 1),
(19, 21, 1),
(19, 22, 1),
(19, 23, 1),
(19, 24, 1),
(19, 25, 1),
(19, 26, 1),
(19, 27, 1),
(19, 28, 1),
(19, 57, 1),
(30, 1, 1),
(30, 37, 1),
(30, 38, 1),
(30, 39, 1),
(30, 40, 1),
(30, 46, 1),
(30, 47, 1),
(30, 48, 1),
(30, 49, 1),
(30, 56, 1),
(30, 59, 1),
(30, 4, 1),
(30, 5, 1),
(30, 6, 1),
(30, 7, 1),
(30, 8, 1),
(30, 9, 1),
(30, 10, 1),
(30, 11, 1),
(30, 12, 1),
(30, 50, 1),
(30, 58, 1),
(30, 53, 1),
(30, 54, 1),
(30, 30, 1),
(30, 31, 1),
(30, 32, 1),
(30, 33, 1),
(30, 34, 1),
(30, 35, 1),
(30, 36, 1),
(30, 18, 1),
(30, 19, 1),
(30, 20, 1),
(30, 21, 1),
(30, 22, 1),
(30, 23, 1),
(30, 24, 1),
(30, 25, 1),
(30, 26, 1),
(30, 27, 1),
(30, 28, 1),
(30, 57, 1),
(28, 1, 1),
(28, 37, 1),
(28, 38, 1),
(28, 39, 1),
(28, 40, 1),
(28, 46, 1),
(28, 47, 1),
(28, 48, 1),
(28, 49, 1),
(28, 56, 1),
(28, 59, 1),
(28, 4, 1),
(28, 5, 1),
(28, 6, 1),
(28, 7, 1),
(28, 8, 1),
(28, 9, 1),
(28, 10, 1),
(28, 11, 1),
(28, 12, 1),
(28, 50, 1),
(28, 58, 1),
(28, 53, 1),
(28, 54, 1),
(28, 30, 1),
(28, 31, 1),
(28, 32, 1),
(28, 33, 1),
(28, 34, 1),
(28, 35, 1),
(28, 36, 1),
(28, 18, 1),
(28, 19, 1),
(28, 20, 1),
(28, 21, 1),
(28, 22, 1),
(28, 23, 1),
(28, 24, 1),
(28, 25, 1),
(28, 26, 1),
(28, 27, 1),
(28, 28, 1),
(28, 57, 1),
(29, 1, 1),
(29, 37, 1),
(29, 38, 1),
(29, 39, 1),
(29, 40, 1),
(29, 46, 1),
(29, 47, 1),
(29, 48, 1),
(29, 49, 1),
(29, 56, 1),
(29, 59, 1),
(29, 4, 1),
(29, 5, 1),
(29, 6, 1),
(29, 7, 1),
(29, 8, 1),
(29, 9, 1),
(29, 10, 1),
(29, 11, 1),
(29, 12, 1),
(29, 50, 1),
(29, 58, 1),
(29, 53, 1),
(29, 54, 1),
(29, 30, 1),
(29, 31, 1),
(29, 32, 1),
(29, 33, 1),
(29, 34, 1),
(29, 35, 1),
(29, 36, 1),
(29, 18, 1),
(29, 19, 1),
(29, 20, 1),
(29, 21, 1),
(29, 22, 1),
(29, 23, 1),
(29, 24, 1),
(29, 25, 1),
(29, 26, 1),
(29, 27, 1),
(29, 28, 1),
(29, 57, 1),
(22, 1, 1),
(22, 37, 1),
(22, 38, 1),
(22, 39, 1),
(22, 40, 1),
(22, 46, 1),
(22, 47, 1),
(22, 48, 1),
(22, 49, 1),
(22, 56, 1),
(22, 59, 1),
(22, 4, 1),
(22, 5, 1),
(22, 6, 1),
(22, 7, 1),
(22, 8, 1),
(22, 9, 1),
(22, 10, 1),
(22, 11, 1),
(22, 12, 1),
(22, 50, 1),
(22, 58, 1),
(22, 53, 1),
(22, 54, 1),
(22, 30, 1),
(22, 31, 1),
(22, 32, 1),
(22, 33, 1),
(22, 34, 1),
(22, 35, 1),
(22, 36, 1),
(22, 18, 1),
(22, 19, 1),
(22, 20, 1),
(22, 21, 1),
(22, 22, 1),
(22, 23, 1),
(22, 24, 1),
(22, 25, 1),
(22, 26, 1),
(22, 27, 1),
(22, 28, 1),
(22, 57, 1),
(23, 1, 2),
(23, 37, 2),
(23, 38, 2),
(23, 39, 2),
(23, 40, 2),
(23, 46, 2),
(23, 47, 2),
(23, 48, 2),
(23, 49, 2),
(23, 56, 2),
(23, 59, 2),
(23, 4, 2),
(23, 5, 2),
(23, 6, 2),
(23, 7, 2),
(23, 8, 2),
(23, 9, 2),
(23, 10, 2),
(23, 11, 2),
(23, 12, 2),
(23, 50, 2),
(23, 58, 2),
(23, 53, 2),
(23, 54, 2),
(23, 30, 2),
(23, 31, 2),
(23, 32, 2),
(23, 33, 2),
(23, 34, 2),
(23, 35, 2),
(23, 36, 2),
(23, 18, 2),
(23, 19, 2),
(23, 20, 2),
(23, 21, 2),
(23, 22, 2),
(23, 23, 2),
(23, 24, 2),
(23, 25, 2),
(23, 26, 2),
(23, 27, 2),
(23, 28, 2),
(23, 57, 2),
(24, 1, 1),
(24, 37, 1),
(24, 38, 1),
(24, 39, 1),
(24, 40, 1),
(24, 46, 1),
(24, 47, 1),
(24, 48, 1),
(24, 49, 1),
(24, 56, 1),
(24, 59, 1),
(24, 4, 1),
(24, 5, 1),
(24, 6, 1),
(24, 7, 1),
(24, 8, 1),
(24, 9, 1),
(24, 10, 1),
(24, 11, 1),
(24, 12, 1),
(24, 50, 1),
(24, 58, 1),
(24, 53, 1),
(24, 54, 1),
(24, 30, 1),
(24, 31, 1),
(24, 32, 1),
(24, 33, 1),
(24, 34, 1),
(24, 35, 1),
(24, 36, 1),
(24, 18, 1),
(24, 19, 1),
(24, 20, 1),
(24, 21, 1),
(24, 22, 1),
(24, 23, 1),
(24, 24, 1),
(24, 25, 1),
(24, 26, 1),
(24, 27, 1),
(24, 28, 1),
(24, 57, 1),
(25, 1, 2),
(25, 37, 2),
(25, 38, 2),
(25, 39, 2),
(25, 40, 2),
(25, 46, 2),
(25, 47, 2),
(25, 48, 2),
(25, 49, 2),
(25, 56, 2),
(25, 59, 2),
(25, 4, 2),
(25, 5, 2),
(25, 6, 2),
(25, 7, 2),
(25, 8, 2),
(25, 9, 2),
(25, 10, 2),
(25, 11, 2),
(25, 12, 2),
(25, 50, 2),
(25, 58, 2),
(25, 53, 2),
(25, 54, 2),
(25, 30, 2),
(25, 31, 2),
(25, 32, 2),
(25, 33, 2),
(25, 34, 2),
(25, 35, 2),
(25, 36, 2),
(25, 18, 2),
(25, 19, 2),
(25, 20, 2),
(25, 21, 2),
(25, 22, 2),
(25, 23, 2),
(25, 24, 2),
(25, 25, 2),
(25, 26, 2),
(25, 27, 2),
(25, 28, 2),
(25, 57, 2),
(26, 1, 3),
(26, 37, 3),
(26, 38, 3),
(26, 39, 3),
(26, 40, 3),
(26, 46, 3),
(26, 47, 3),
(26, 48, 3),
(26, 49, 3),
(26, 56, 3),
(26, 59, 3),
(26, 4, 3),
(26, 5, 3),
(26, 6, 3),
(26, 7, 3),
(26, 8, 3),
(26, 9, 3),
(26, 10, 3),
(26, 11, 3),
(26, 12, 3),
(26, 50, 3),
(26, 58, 3),
(26, 53, 3),
(26, 54, 3),
(26, 30, 3),
(26, 31, 3),
(26, 32, 3),
(26, 33, 3),
(26, 34, 3),
(26, 35, 3),
(26, 36, 3),
(26, 18, 3),
(26, 19, 3),
(26, 20, 3),
(26, 21, 3),
(26, 22, 3),
(26, 23, 3),
(26, 24, 3),
(26, 25, 3),
(26, 26, 3),
(26, 27, 3),
(26, 28, 3),
(26, 57, 3),
(27, 1, 4),
(27, 37, 4),
(27, 38, 4),
(27, 39, 4),
(27, 40, 4),
(27, 46, 4),
(27, 47, 4),
(27, 48, 4),
(27, 49, 4),
(27, 56, 4),
(27, 59, 4),
(27, 4, 4),
(27, 5, 4),
(27, 6, 4),
(27, 7, 4),
(27, 8, 4),
(27, 9, 4),
(27, 10, 4),
(27, 11, 4),
(27, 12, 4),
(27, 50, 4),
(27, 58, 4),
(27, 53, 4),
(27, 54, 4),
(27, 30, 4),
(27, 31, 4),
(27, 32, 4),
(27, 33, 4),
(27, 34, 4),
(27, 35, 4),
(27, 36, 4),
(27, 18, 4),
(27, 19, 4),
(27, 20, 4),
(27, 21, 4),
(27, 22, 4),
(27, 23, 4),
(27, 24, 4),
(27, 25, 4),
(27, 26, 4),
(27, 27, 4),
(27, 28, 4),
(27, 57, 4),
(3, 1, 3),
(3, 18, 4),
(3, 19, 4),
(3, 20, 4),
(3, 21, 4),
(3, 22, 4),
(3, 23, 4),
(3, 24, 4),
(3, 25, 4),
(3, 26, 4),
(3, 27, 4),
(3, 28, 3),
(3, 56, 3),
(3, 30, 4),
(3, 31, 4),
(3, 32, 4),
(3, 33, 4),
(3, 34, 4),
(3, 35, 4),
(3, 36, 4),
(3, 57, 3),
(3, 37, 3),
(3, 38, 3),
(3, 39, 3),
(3, 40, 3),
(3, 58, 3),
(3, 59, 3),
(3, 50, 3),
(3, 46, 3),
(3, 47, 3),
(3, 48, 3),
(3, 49, 3),
(3, 53, 3),
(3, 54, 3),
(31, 1, 1),
(31, 4, 1),
(31, 5, 1),
(31, 6, 1),
(31, 7, 1),
(31, 8, 1),
(31, 9, 1),
(31, 10, 1),
(31, 11, 1),
(31, 12, 1),
(31, 18, 1),
(31, 19, 1),
(31, 20, 1),
(31, 21, 1),
(31, 22, 1),
(31, 23, 1),
(31, 24, 1),
(31, 25, 1),
(31, 26, 1),
(31, 27, 1),
(31, 28, 1),
(31, 56, 1),
(31, 30, 1),
(31, 31, 1),
(31, 32, 1),
(31, 33, 1),
(31, 34, 1),
(31, 35, 1),
(31, 36, 1),
(31, 57, 1),
(31, 37, 1),
(31, 38, 1),
(31, 39, 1),
(31, 40, 1),
(31, 58, 1),
(31, 59, 1),
(31, 50, 1),
(31, 46, 1),
(31, 47, 1),
(31, 48, 1),
(31, 49, 1),
(31, 53, 1),
(31, 54, 1),
(32, 1, 1),
(32, 4, 1),
(32, 5, 1),
(32, 6, 1),
(32, 7, 1),
(32, 8, 1),
(32, 9, 1),
(32, 10, 1),
(32, 11, 1),
(32, 12, 1),
(32, 18, 1),
(32, 19, 1),
(32, 20, 1),
(32, 21, 1),
(32, 22, 1),
(32, 23, 1),
(32, 24, 1),
(32, 25, 1),
(32, 26, 1),
(32, 27, 1),
(32, 28, 1),
(32, 56, 1),
(32, 30, 1),
(32, 31, 1),
(32, 32, 1),
(32, 33, 1),
(32, 34, 1),
(32, 35, 1),
(32, 36, 1),
(32, 57, 1),
(32, 37, 1),
(32, 38, 1),
(32, 39, 1),
(32, 40, 1),
(32, 58, 1),
(32, 59, 1),
(32, 50, 1),
(32, 46, 1),
(32, 47, 1),
(32, 48, 1),
(32, 49, 1),
(32, 53, 1),
(32, 54, 1),
(33, 1, 4),
(33, 4, 3),
(33, 5, 4),
(33, 6, 4),
(33, 7, 4),
(33, 8, 4),
(33, 9, 4),
(33, 10, 4),
(33, 11, 4),
(33, 12, 4),
(33, 18, 5),
(33, 19, 5),
(33, 20, 5),
(33, 21, 5),
(33, 22, 5),
(33, 23, 5),
(33, 24, 5),
(33, 25, 5),
(33, 26, 5),
(33, 27, 5),
(33, 28, 4),
(33, 56, 4),
(33, 30, 5),
(33, 31, 5),
(33, 32, 5),
(33, 33, 5),
(33, 34, 5),
(33, 35, 5),
(33, 36, 5),
(33, 57, 4),
(33, 37, 4),
(33, 38, 4),
(33, 39, 4),
(33, 40, 4),
(33, 58, 4),
(33, 59, 4),
(33, 50, 4),
(33, 46, 4),
(33, 47, 4),
(33, 48, 4),
(33, 49, 4),
(33, 53, 4),
(33, 54, 4),
(18, 71, 1),
(18, 87, 1),
(18, 66, 1),
(18, 80, 1),
(18, 61, 1),
(18, 72, 1),
(18, 73, 1),
(18, 64, 1),
(18, 69, 1),
(18, 68, 1),
(18, 81, 1),
(18, 63, 1),
(18, 88, 1),
(18, 86, 1),
(18, 74, 1),
(18, 84, 1),
(18, 67, 1),
(18, 60, 1),
(11, 71, 1),
(11, 87, 1),
(11, 66, 1),
(11, 80, 1),
(11, 61, 1),
(11, 72, 1),
(11, 73, 1),
(11, 64, 1),
(11, 69, 1),
(11, 68, 1),
(11, 81, 1),
(11, 63, 1),
(11, 88, 1),
(11, 86, 1),
(11, 74, 1),
(11, 84, 1),
(11, 67, 1),
(11, 60, 1),
(12, 71, 2),
(12, 87, 2),
(12, 66, 2),
(12, 80, 2),
(12, 61, 2),
(12, 72, 2),
(12, 73, 2),
(12, 64, 2),
(12, 69, 2),
(12, 68, 2),
(12, 81, 2),
(12, 63, 2),
(12, 88, 2),
(12, 86, 2),
(12, 74, 2),
(12, 84, 2),
(12, 67, 2),
(12, 60, 2),
(5, 71, 1),
(5, 87, 1),
(5, 66, 1),
(5, 80, 1),
(5, 61, 1),
(5, 72, 1),
(5, 73, 1),
(5, 64, 1),
(5, 69, 1),
(5, 68, 1),
(5, 81, 1),
(5, 63, 1),
(5, 88, 1),
(5, 86, 1),
(5, 74, 1),
(5, 84, 1),
(5, 67, 1),
(5, 60, 1),
(6, 71, 2),
(6, 87, 2),
(6, 66, 2),
(6, 80, 2),
(6, 61, 2),
(6, 72, 2),
(6, 73, 2),
(6, 64, 2),
(6, 69, 2),
(6, 68, 2),
(6, 81, 2),
(6, 63, 2),
(6, 88, 2),
(6, 86, 2),
(6, 74, 2),
(6, 84, 2),
(6, 67, 2),
(6, 60, 2),
(17, 71, 2),
(17, 87, 2),
(17, 66, 2),
(17, 80, 2),
(17, 61, 2),
(17, 72, 2),
(17, 73, 2),
(17, 64, 2),
(17, 69, 2),
(17, 68, 2),
(17, 81, 2),
(17, 63, 2),
(17, 88, 2),
(17, 86, 2),
(17, 74, 2),
(17, 84, 2),
(17, 67, 2),
(17, 60, 2),
(15, 71, 1),
(15, 87, 1),
(15, 66, 1),
(15, 80, 1),
(15, 61, 1),
(15, 72, 1),
(15, 73, 1),
(15, 64, 1),
(15, 69, 1),
(15, 68, 1),
(15, 81, 1),
(15, 63, 1),
(15, 88, 1),
(15, 86, 1),
(15, 74, 1),
(15, 84, 1),
(15, 67, 1),
(15, 60, 1),
(13, 71, 1),
(13, 87, 1),
(13, 66, 1),
(13, 80, 1),
(13, 61, 1),
(13, 72, 1),
(13, 73, 1),
(13, 64, 1),
(13, 69, 1),
(13, 68, 1),
(13, 81, 1),
(13, 63, 1),
(13, 88, 1),
(13, 86, 1),
(13, 74, 1),
(13, 84, 1),
(13, 67, 1),
(13, 60, 1),
(14, 71, 2),
(14, 87, 2),
(14, 66, 2),
(14, 80, 2),
(14, 61, 2),
(14, 72, 2),
(14, 73, 2),
(14, 64, 2),
(14, 69, 2),
(14, 68, 2),
(14, 81, 2),
(14, 63, 2),
(14, 88, 2),
(14, 86, 2),
(14, 74, 2),
(14, 84, 2),
(14, 67, 2),
(14, 60, 2),
(9, 71, 1),
(9, 87, 1),
(9, 66, 1),
(9, 80, 1),
(9, 61, 1),
(9, 72, 1),
(9, 73, 1),
(9, 64, 1),
(9, 69, 1),
(9, 68, 1),
(9, 81, 1),
(9, 63, 1),
(9, 88, 1),
(9, 86, 1),
(9, 74, 1),
(9, 84, 1),
(9, 67, 1),
(9, 60, 1),
(10, 71, 2),
(10, 87, 2),
(10, 66, 2),
(10, 80, 2),
(10, 61, 2),
(10, 72, 2),
(10, 73, 2),
(10, 64, 2),
(10, 69, 2),
(10, 68, 2),
(10, 81, 2),
(10, 63, 2),
(10, 88, 2),
(10, 86, 2),
(10, 74, 2),
(10, 84, 2),
(10, 67, 2),
(10, 60, 2),
(19, 71, 1),
(19, 87, 1),
(19, 66, 1),
(19, 80, 1),
(19, 61, 1),
(19, 72, 1),
(19, 73, 1),
(19, 64, 1),
(19, 69, 1),
(19, 68, 1),
(19, 81, 1),
(19, 63, 1),
(19, 88, 1),
(19, 86, 1),
(19, 74, 1),
(19, 84, 1),
(19, 67, 1),
(19, 60, 1),
(30, 71, 1),
(30, 87, 1),
(30, 66, 1),
(30, 80, 1),
(30, 61, 1),
(30, 72, 1),
(30, 73, 1),
(30, 64, 1),
(30, 69, 1),
(30, 68, 1),
(30, 81, 1),
(30, 63, 1),
(30, 88, 1),
(30, 86, 1),
(30, 74, 1),
(30, 84, 1),
(30, 67, 1),
(30, 60, 1),
(28, 71, 1),
(28, 87, 1),
(28, 66, 1),
(28, 80, 1),
(28, 61, 1),
(28, 72, 1),
(28, 73, 1),
(28, 64, 1),
(28, 69, 1),
(28, 68, 1),
(28, 81, 1),
(28, 63, 1),
(28, 88, 1),
(28, 86, 1),
(28, 74, 1),
(28, 84, 1),
(28, 67, 1),
(28, 60, 1),
(29, 71, 1),
(29, 87, 1),
(29, 66, 1),
(29, 80, 1),
(29, 61, 1),
(29, 72, 1),
(29, 73, 1),
(29, 64, 1),
(29, 69, 1),
(29, 68, 1),
(29, 81, 1),
(29, 63, 1),
(29, 88, 1),
(29, 86, 1),
(29, 74, 1),
(29, 84, 1),
(29, 67, 1),
(29, 60, 1),
(22, 71, 1),
(22, 87, 1),
(22, 66, 1),
(22, 80, 1),
(22, 61, 1),
(22, 72, 1),
(22, 73, 1),
(22, 64, 1),
(22, 69, 1),
(22, 68, 1),
(22, 81, 1),
(22, 63, 1),
(22, 88, 1),
(22, 86, 1),
(22, 74, 1),
(22, 84, 1),
(22, 67, 1),
(22, 60, 1),
(23, 71, 2),
(23, 87, 2),
(23, 66, 2),
(23, 80, 2),
(23, 61, 2),
(23, 72, 2),
(23, 73, 2),
(23, 64, 2),
(23, 69, 2),
(23, 68, 2),
(23, 81, 2),
(23, 63, 2),
(23, 88, 2),
(23, 86, 2),
(23, 74, 2),
(23, 84, 2),
(23, 67, 2),
(23, 60, 2),
(24, 71, 1),
(24, 87, 1),
(24, 66, 1),
(24, 80, 1),
(24, 61, 1),
(24, 72, 1),
(24, 73, 1),
(24, 64, 1),
(24, 69, 1),
(24, 68, 1),
(24, 81, 1),
(24, 63, 1),
(24, 88, 1),
(24, 86, 1),
(24, 74, 1),
(24, 84, 1),
(24, 67, 1),
(24, 60, 1),
(25, 71, 2),
(25, 87, 2),
(25, 66, 2),
(25, 80, 2),
(25, 61, 2),
(25, 72, 2),
(25, 73, 2),
(25, 64, 2),
(25, 69, 2),
(25, 68, 2),
(25, 81, 2),
(25, 63, 2),
(25, 88, 2),
(25, 86, 2),
(25, 74, 2),
(25, 84, 2),
(25, 67, 2),
(25, 60, 2),
(26, 71, 3),
(26, 87, 3),
(26, 66, 3),
(26, 80, 3),
(26, 61, 3),
(26, 72, 3),
(26, 73, 3),
(26, 64, 3),
(26, 69, 3),
(26, 68, 3),
(26, 81, 3),
(26, 63, 3),
(26, 88, 3),
(26, 86, 3),
(26, 74, 3),
(26, 84, 3),
(26, 67, 3),
(26, 60, 3),
(27, 71, 4),
(27, 87, 4),
(27, 66, 4),
(27, 80, 4),
(27, 61, 4),
(27, 72, 4),
(27, 73, 4),
(27, 64, 4),
(27, 69, 4),
(27, 68, 4),
(27, 81, 4),
(27, 63, 4),
(27, 88, 4),
(27, 86, 4),
(27, 74, 4),
(27, 84, 4),
(27, 67, 4),
(27, 60, 4),
(18, 90, 1),
(11, 90, 1),
(12, 90, 2),
(5, 90, 1),
(6, 90, 2),
(17, 90, 2),
(15, 90, 1),
(13, 90, 1),
(14, 90, 2),
(9, 90, 1),
(10, 90, 2),
(19, 90, 1),
(30, 90, 1),
(28, 90, 1),
(29, 90, 1),
(22, 90, 1),
(23, 90, 2),
(24, 90, 1),
(25, 90, 2),
(26, 90, 3),
(27, 90, 4),
(37, 1, 1),
(37, 4, 2),
(37, 5, 1),
(37, 6, 1),
(37, 7, 1),
(37, 8, 2),
(37, 9, 1),
(37, 10, 1),
(37, 11, 1),
(37, 12, 1),
(37, 18, 1),
(37, 19, 1),
(37, 20, 1),
(37, 21, 1),
(37, 22, 1),
(37, 23, 1),
(37, 24, 1),
(37, 25, 1),
(37, 26, 1),
(37, 27, 1),
(37, 28, 1),
(37, 56, 1),
(37, 30, 1),
(37, 31, 1),
(37, 32, 1),
(37, 33, 1),
(37, 34, 1),
(37, 35, 1),
(37, 36, 1),
(37, 57, 1),
(37, 37, 1),
(37, 38, 1),
(37, 39, 1),
(37, 40, 1),
(37, 58, 1),
(37, 59, 1),
(37, 50, 1),
(37, 46, 1),
(37, 47, 1),
(37, 48, 1),
(37, 49, 1),
(37, 53, 1),
(37, 54, 1),
(37, 71, 1),
(37, 87, 1),
(37, 66, 1),
(37, 80, 1),
(37, 61, 1),
(37, 72, 1),
(37, 73, 1),
(37, 64, 1),
(37, 69, 1),
(37, 68, 1),
(37, 81, 1),
(37, 63, 1),
(37, 88, 1),
(37, 86, 1),
(37, 74, 1),
(37, 84, 1),
(37, 67, 1),
(37, 60, 1),
(39, 4, 1),
(39, 8, 1),
(39, 9, 2),
(39, 10, 2),
(39, 11, 2),
(39, 12, 2);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_comment`
--

CREATE TABLE `nv4_vi_comment` (
  `cid` mediumint(8) UNSIGNED NOT NULL,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` int(11) NOT NULL DEFAULT '0',
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `pid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `post_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `likes` mediumint(9) NOT NULL DEFAULT '0',
  `dislikes` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_comment`
--

INSERT INTO `nv4_vi_comment` (`cid`, `module`, `area`, `id`, `pid`, `content`, `post_time`, `userid`, `post_name`, `post_email`, `post_ip`, `status`, `likes`, `dislikes`) VALUES
(1, 'news', 8, 27, 0, 'up news', 1464679281, 2, 'vnwsxu', 'vnwsxu@yahoo.com', '::1', 1, 0, 0),
(2, 'news', 8, 27, 0, 'top', 1464955729, 2, 'vnwsxu', 'vnwsxu@yahoo.com', '::1', 1, 0, 0),
(3, 'news', 8, 29, 0, 'test', 1464962214, 1, 'admin', 'xmailvn@gmail.com', '::1', 1, 0, 0),
(4, 'news', 8, 29, 0, 'up', 1464962312, 1, 'admin', 'xmailvn@gmail.com', '::1', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_contact_department`
--

CREATE TABLE `nv4_vi_contact_department` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `full_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cats` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admins` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` smallint(5) NOT NULL,
  `is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_contact_department`
--

INSERT INTO `nv4_vi_contact_department` (`id`, `full_name`, `alias`, `image`, `phone`, `fax`, `email`, `address`, `note`, `others`, `cats`, `admins`, `act`, `weight`, `is_default`) VALUES
(1, 'Phòng Chăm sóc khách hàng', 'Cham-soc-khach-hang', '', '0933.092.093&#91;+84933092093&#93;', '', 'homthu@msn.com', '', 'Bộ phận tiếp nhận và giải quyết các yêu cầu, đề nghị, ý kiến liên quan đến hoạt động chính của doanh nghiệp', '{"viber":"myViber","skype":"mySkype","yahoo":"myYahoo"}', 'Tư vấn|Khiếu nại, phản ánh|Đề nghị hợp tác', '1/1/1/0', 1, 1, 1),
(2, 'Phòng Kỹ thuật', 'Ky-thuat', '', '(08) 38.000.002[+84838000002]', '08 38.000.003', 'technical@mysite.com', '', 'Bộ phận tiếp nhận và giải quyết các câu hỏi liên quan đến kỹ thuật', '{"viber":"myViber2","skype":"mySkype2","yahoo":"myYahoo2"}', 'Thông báo lỗi|Góp ý cải tiến', '1/1/1/0;', 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_contact_reply`
--

CREATE TABLE `nv4_vi_contact_reply` (
  `rid` mediumint(8) UNSIGNED NOT NULL,
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `reply_content` text COLLATE utf8mb4_unicode_ci,
  `reply_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `reply_aid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_contact_send`
--

CREATE TABLE `nv4_vi_contact_send` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `cid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `sender_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `sender_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sender_ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_reply` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_freecontent_blocks`
--

CREATE TABLE `nv4_vi_freecontent_blocks` (
  `bid` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_freecontent_blocks`
--

INSERT INTO `nv4_vi_freecontent_blocks` (`bid`, `title`, `description`) VALUES
(1, 'Sản phẩm', 'Sản phẩm của công ty cổ phần phát triển nguồn mở Việt Nam - VINADES.,JSC');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_freecontent_rows`
--

CREATE TABLE `nv4_vi_freecontent_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `bid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '_blank|_self|_parent|_top',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: In-Active, 1: Active, 2: Expired'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_freecontent_rows`
--

INSERT INTO `nv4_vi_freecontent_rows` (`id`, `bid`, `title`, `description`, `link`, `target`, `image`, `start_time`, `end_time`, `status`) VALUES
(1, 1, 'Hệ quản trị nội dung NukeViet', '<ul>\n	<li>Giải thưởng Nhân tài đất Việt 2011, 10.000+ website đang sử dụng</li>\n	<li>Được Bộ GD&amp;ĐT khuyến khích sử dụng trong các cơ sở giáo dục</li>\n	<li>Bộ TT&amp;TT quy định ưu tiên sử dụng trong cơ quan nhà nước</li>\n</ul>', 'http://vinades.vn/vi/san-pham/nukeviet/', '_blank', 'cms.jpg', 1464421307, 0, 1),
(2, 1, 'Cổng thông tin doanh nghiệp', '<ul>\n	<li>Tích hợp bán hàng trực tuyến</li>\n	<li>Tích hợp các nghiệp vụ quản lý (quản lý khách hàng, quản lý nhân sự, quản lý tài liệu)</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Cong-thong-tin-doanh-nghiep-NukeViet-portal/', '_blank', 'portal.jpg', 1464421307, 0, 1),
(3, 1, 'Cổng thông tin Phòng giáo dục, Sở giáo dục', '<ul>\n	<li>Tích hợp chung website hàng trăm trường</li>\n	<li>Tích hợp các ứng dụng trực tuyến (Tra điểm SMS, Tra cứu văn bằng, Học bạ điện tử ...)</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Cong-thong-tin-giao-duc-NukeViet-Edugate/', '_blank', 'edugate.jpg', 1464421307, 0, 1),
(4, 1, 'Tòa soạn báo điện tử chuyên nghiệp', '<ul>\n	<li>Bảo mật đa tầng, phân quyền linh hoạt</li>\n	<li>Hệ thống bóc tin tự động, đăng bài tự động, cùng nhiều chức năng tiên tiến khác...</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Toa-soan-bao-dien-tu/', '_blank', 'toa-soan-dien-tu.jpg', 1464421307, 0, 1),
(5, 1, 'Giải pháp bán hàng trực tuyến', '<ul><li>Tích hợp các tính năng cơ bản bán hàng trực tuyến</li><li>Tích hợp với các cổng thanh toán, ví điện tử trên toàn quốc</li></ul>', 'http://vinades.vn', '_blank', 'shop.jpg', 1464421307, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_menu`
--

CREATE TABLE `nv4_vi_menu` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_menu`
--

INSERT INTO `nv4_vi_menu` (`id`, `title`) VALUES
(1, 'Top Menu');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_menu_rows`
--

CREATE TABLE `nv4_vi_menu_rows` (
  `id` mediumint(5) NOT NULL,
  `parentid` mediumint(5) UNSIGNED NOT NULL,
  `mid` smallint(5) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `lev` int(11) NOT NULL DEFAULT '0',
  `subitem` text COLLATE utf8mb4_unicode_ci,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `module_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `op` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` tinyint(4) DEFAULT '0',
  `css` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_menu_rows`
--

INSERT INTO `nv4_vi_menu_rows` (`id`, `parentid`, `mid`, `title`, `link`, `icon`, `note`, `weight`, `sort`, `lev`, `subitem`, `groups_view`, `module_name`, `op`, `target`, `css`, `active_type`, `status`) VALUES
(1, 0, 1, 'Hướng dẫn', '/nukeviet/index.php?language=vi&nv=about', '', '', 1, 1, 0, '8,9', '6', 'about', '', 1, '', 0, 1),
(2, 0, 1, 'Tin Tức', '/nukeviet/index.php?language=vi&nv=news', '', '', 2, 4, 0, '18,19,20', '6', 'news', '', 1, '', 0, 1),
(3, 0, 1, 'Thành viên', '/nukeviet/index.php?language=vi&nv=users', '', '', 3, 8, 0, '', '6', 'users', '', 1, '', 0, 1),
(4, 0, 1, 'Thống kê', '/nukeviet/index.php?language=vi&nv=statistics', '', '', 4, 9, 0, '', '2', 'statistics', '', 1, '', 0, 1),
(6, 0, 1, 'Tìm kiếm', '/nukeviet/index.php?language=vi&nv=seek', '', '', 5, 10, 0, '', '6', 'seek', '', 1, '', 0, 1),
(7, 0, 1, 'Liên hệ', '/nukeviet/index.php?language=vi&nv=contact', '', '', 6, 11, 0, '', '6', 'contact', '', 1, '', 0, 1),
(8, 1, 1, 'Giới thiệu về AzVNN', '/nukeviet/index.php?language=vi&nv=about&op=gioi-thieu-ve-nukeviet.html', '', '', 1, 2, 1, '', '6', 'about', '', 1, '', 0, 1),
(9, 1, 1, 'QUY ĐỊNH SỬ DỤNG', '/nukeviet/QUY-DINH-SU-DUNG.html', '', '', 2, 3, 1, '', '6', 'about', '', 1, '', 0, 1),
(18, 2, 1, 'Rss', '/nukeviet/index.php?language=vi&nv=news&op=rss', '', '', 1, 5, 1, '', '6', 'news', 'rss', 1, '', 0, 1),
(19, 2, 1, 'Đăng bài viết', '/nukeviet/index.php?language=vi&nv=news&op=content', '', '', 2, 6, 1, '', '6', 'news', 'content', 1, '', 0, 1),
(20, 2, 1, 'Tìm kiếm', '/nukeviet/index.php?language=vi&nv=news&op=search', '', '', 3, 7, 1, '', '6', 'news', 'search', 1, '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_modfuncs`
--

CREATE TABLE `nv4_vi_modfuncs` (
  `func_id` mediumint(8) UNSIGNED NOT NULL,
  `func_name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_custom_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_func` tinyint(4) NOT NULL DEFAULT '0',
  `in_submenu` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subweight` smallint(2) UNSIGNED NOT NULL DEFAULT '1',
  `setting` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_modfuncs`
--

INSERT INTO `nv4_vi_modfuncs` (`func_id`, `func_name`, `alias`, `func_custom_name`, `in_module`, `show_func`, `in_submenu`, `subweight`, `setting`) VALUES
(1, 'main', 'main', 'Main', 'about', 1, 0, 1, ''),
(2, 'sitemap', 'sitemap', 'Sitemap', 'about', 0, 0, 0, ''),
(3, 'rss', 'rss', 'Rss', 'about', 0, 0, 0, ''),
(4, 'main', 'main', 'Main', 'news', 1, 0, 1, ''),
(5, 'viewcat', 'viewcat', 'Viewcat', 'news', 1, 0, 2, ''),
(6, 'topic', 'topic', 'Topic', 'news', 1, 0, 3, ''),
(7, 'content', 'content', 'Content', 'news', 1, 1, 4, ''),
(8, 'detail', 'detail', 'Detail', 'news', 1, 0, 5, ''),
(9, 'tag', 'tag', 'Tag', 'news', 1, 0, 6, ''),
(10, 'rss', 'rss', 'Rss', 'news', 1, 1, 7, ''),
(11, 'search', 'search', 'Search', 'news', 1, 1, 8, ''),
(12, 'groups', 'groups', 'Groups', 'news', 1, 0, 9, ''),
(13, 'sitemap', 'sitemap', 'Sitemap', 'news', 0, 0, 0, ''),
(14, 'print', 'print', 'Print', 'news', 0, 0, 0, ''),
(15, 'rating', 'rating', 'Rating', 'news', 0, 0, 0, ''),
(16, 'savefile', 'savefile', 'Savefile', 'news', 0, 0, 0, ''),
(17, 'sendmail', 'sendmail', 'Sendmail', 'news', 0, 0, 0, ''),
(18, 'main', 'main', 'Main', 'users', 1, 0, 1, ''),
(19, 'login', 'login', 'Đăng nhập', 'users', 1, 1, 2, ''),
(20, 'register', 'register', 'Đăng ký', 'users', 1, 1, 3, ''),
(21, 'lostpass', 'lostpass', 'Khôi phục mật khẩu', 'users', 1, 1, 4, ''),
(22, 'active', 'active', 'Kích hoạt tài khoản', 'users', 1, 0, 5, ''),
(23, 'lostactivelink', 'lostactivelink', 'Lostactivelink', 'users', 1, 0, 6, ''),
(24, 'editinfo', 'editinfo', 'Thiếp lập tài khoản', 'users', 1, 1, 7, ''),
(25, 'memberlist', 'memberlist', 'Danh sách thành viên', 'users', 1, 1, 8, ''),
(26, 'avatar', 'avatar', 'Avatar', 'users', 1, 0, 9, ''),
(27, 'logout', 'logout', 'Thoát', 'users', 1, 1, 10, ''),
(28, 'groups', 'groups', 'Quản lý nhóm', 'users', 1, 0, 11, ''),
(29, 'oauth', 'oauth', 'Oauth', 'users', 0, 0, 0, ''),
(30, 'main', 'main', 'Main', 'statistics', 1, 0, 1, ''),
(31, 'allreferers', 'allreferers', 'Theo đường dẫn đến site', 'statistics', 1, 1, 2, ''),
(32, 'allcountries', 'allcountries', 'Theo quốc gia', 'statistics', 1, 1, 3, ''),
(33, 'allbrowsers', 'allbrowsers', 'Theo trình duyệt', 'statistics', 1, 1, 4, ''),
(34, 'allos', 'allos', 'Theo hệ điều hành', 'statistics', 1, 1, 5, ''),
(35, 'allbots', 'allbots', 'Theo máy chủ tìm kiếm', 'statistics', 1, 1, 6, ''),
(36, 'referer', 'referer', 'Đường dẫn đến site theo tháng', 'statistics', 1, 0, 7, ''),
(37, 'main', 'main', 'Main', 'banners', 1, 0, 1, ''),
(38, 'addads', 'addads', 'Addads', 'banners', 1, 0, 2, ''),
(39, 'clientinfo', 'clientinfo', 'Clientinfo', 'banners', 1, 0, 3, ''),
(40, 'stats', 'stats', 'Stats', 'banners', 1, 0, 4, ''),
(41, 'cledit', 'cledit', 'Cledit', 'banners', 0, 0, 0, ''),
(42, 'click', 'click', 'Click', 'banners', 0, 0, 0, ''),
(43, 'clinfo', 'clinfo', 'Clinfo', 'banners', 0, 0, 0, ''),
(44, 'logininfo', 'logininfo', 'Logininfo', 'banners', 0, 0, 0, ''),
(45, 'viewmap', 'viewmap', 'Viewmap', 'banners', 0, 0, 0, ''),
(46, 'main', 'main', 'main', 'comment', 1, 0, 1, ''),
(47, 'post', 'post', 'post', 'comment', 1, 0, 2, ''),
(48, 'like', 'like', 'Like', 'comment', 1, 0, 3, ''),
(49, 'delete', 'delete', 'Delete', 'comment', 1, 0, 4, ''),
(50, 'main', 'main', 'Main', 'page', 1, 0, 1, ''),
(51, 'sitemap', 'sitemap', 'Sitemap', 'page', 0, 0, 0, ''),
(52, 'rss', 'rss', 'Rss', 'page', 0, 0, 0, ''),
(53, 'main', 'main', 'Main', 'siteterms', 1, 0, 1, ''),
(54, 'rss', 'rss', 'Rss', 'siteterms', 1, 0, 2, ''),
(55, 'sitemap', 'sitemap', 'Sitemap', 'siteterms', 0, 0, 0, ''),
(56, 'main', 'main', 'Main', 'contact', 1, 0, 1, ''),
(57, 'main', 'main', 'Main', 'voting', 1, 0, 1, ''),
(58, 'main', 'main', 'Main', 'seek', 1, 0, 1, ''),
(59, 'main', 'main', 'Main', 'feeds', 1, 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_modthemes`
--

CREATE TABLE `nv4_vi_modthemes` (
  `func_id` mediumint(8) DEFAULT NULL,
  `layout` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_modthemes`
--

INSERT INTO `nv4_vi_modthemes` (`func_id`, `layout`, `theme`) VALUES
(0, 'left-main-right', 'default'),
(0, 'main', 'mobile_default'),
(1, 'left-main', 'default'),
(1, 'main', 'mobile_default'),
(4, 'left-main', 'default'),
(4, 'main', 'mobile_default'),
(5, 'left-main', 'default'),
(5, 'main', 'mobile_default'),
(6, 'left-main', 'default'),
(6, 'main', 'mobile_default'),
(7, 'left-main', 'default'),
(7, 'main', 'mobile_default'),
(8, 'left-main', 'default'),
(8, 'main', 'mobile_default'),
(9, 'left-main', 'default'),
(9, 'main', 'mobile_default'),
(10, 'left-main', 'default'),
(11, 'left-main', 'default'),
(11, 'main', 'mobile_default'),
(12, 'left-main', 'default'),
(12, 'main', 'mobile_default'),
(18, 'left-main', 'default'),
(18, 'main', 'mobile_default'),
(19, 'left-main', 'default'),
(19, 'main', 'mobile_default'),
(20, 'left-main', 'default'),
(20, 'main', 'mobile_default'),
(21, 'left-main', 'default'),
(21, 'main', 'mobile_default'),
(22, 'left-main', 'default'),
(22, 'main', 'mobile_default'),
(23, 'left-main', 'default'),
(23, 'main', 'mobile_default'),
(24, 'left-main', 'default'),
(24, 'main', 'mobile_default'),
(25, 'left-main', 'default'),
(25, 'main', 'mobile_default'),
(26, 'left-main', 'default'),
(27, 'left-main', 'default'),
(27, 'main', 'mobile_default'),
(28, 'left-main', 'default'),
(28, 'main', 'mobile_default'),
(30, 'left-main', 'default'),
(30, 'main', 'mobile_default'),
(31, 'left-main', 'default'),
(31, 'main', 'mobile_default'),
(32, 'left-main', 'default'),
(32, 'main', 'mobile_default'),
(33, 'left-main', 'default'),
(33, 'main', 'mobile_default'),
(34, 'left-main', 'default'),
(34, 'main', 'mobile_default'),
(35, 'left-main', 'default'),
(35, 'main', 'mobile_default'),
(36, 'left-main', 'default'),
(36, 'main', 'mobile_default'),
(37, 'left-main', 'default'),
(37, 'main', 'mobile_default'),
(38, 'left-main', 'default'),
(38, 'main', 'mobile_default'),
(39, 'left-main', 'default'),
(39, 'main', 'mobile_default'),
(40, 'left-main', 'default'),
(40, 'main', 'mobile_default'),
(46, 'left-main', 'default'),
(46, 'main', 'mobile_default'),
(47, 'left-main', 'default'),
(47, 'main', 'mobile_default'),
(48, 'left-main', 'default'),
(48, 'main', 'mobile_default'),
(49, 'left-main', 'default'),
(49, 'main', 'mobile_default'),
(50, 'left-main', 'default'),
(50, 'main', 'mobile_default'),
(53, 'left-main', 'default'),
(53, 'main', 'mobile_default'),
(54, 'left-main', 'default'),
(54, 'main', 'mobile_default'),
(56, 'left-main', 'default'),
(56, 'main', 'mobile_default'),
(57, 'left-main', 'default'),
(57, 'main', 'mobile_default'),
(58, 'left-main', 'default'),
(58, 'main', 'mobile_default'),
(59, 'left-main', 'default'),
(59, 'main', 'mobile_default');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_modules`
--

CREATE TABLE `nv4_vi_modules` (
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_file` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_data` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_upload` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `set_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `main_file` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `admin_file` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `admins` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `rss` tinyint(4) NOT NULL DEFAULT '1',
  `gid` smallint(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_modules`
--

INSERT INTO `nv4_vi_modules` (`title`, `module_file`, `module_data`, `module_upload`, `custom_title`, `admin_title`, `set_time`, `main_file`, `admin_file`, `theme`, `mobile`, `description`, `keywords`, `groups_view`, `weight`, `act`, `admins`, `rss`, `gid`) VALUES
('about', 'page', 'about', 'about', 'Giới thiệu', '', 1464421307, 1, 1, '', '', '', '', '6', 1, 1, '', 1, 0),
('news', 'news', 'news', 'news', 'Tin Tức', '', 1464421307, 1, 1, '', '', '', '', '6', 2, 1, '', 1, 0),
('users', 'users', 'users', 'users', 'Thành viên', 'Tài khoản', 1464421307, 1, 1, '', '', '', '', '6', 3, 1, '', 0, 0),
('contact', 'contact', 'contact', 'contact', 'Liên hệ', '', 1464421307, 1, 1, '', '', '', '', '6', 4, 1, '', 0, 0),
('statistics', 'statistics', 'statistics', 'statistics', 'Thống kê', '', 1464421307, 1, 1, '', '', '', 'online, statistics', '6', 5, 1, '', 0, 0),
('voting', 'voting', 'voting', 'voting', 'Thăm dò ý kiến', '', 1464421307, 1, 1, '', '', '', '', '6', 6, 1, '', 1, 0),
('banners', 'banners', 'banners', 'banners', 'Quảng cáo', '', 1464421307, 1, 1, '', '', '', '', '6', 7, 1, '', 0, 0),
('seek', 'seek', 'seek', 'seek', 'Tìm kiếm', '', 1464421307, 1, 0, '', '', '', '', '6', 8, 1, '', 0, 0),
('menu', 'menu', 'menu', 'menu', 'Menu Site', '', 1464421307, 0, 1, '', '', '', '', '6', 9, 1, '', 0, 0),
('feeds', 'feeds', 'feeds', 'feeds', 'RSS-feeds', 'RSS-feeds', 1464421307, 1, 1, '', '', '', '', '6', 10, 1, '', 0, 0),
('page', 'page', 'page', 'page', 'Page', '', 1464421307, 1, 1, '', '', '', '', '6', 11, 1, '', 1, 0),
('comment', 'comment', 'comment', 'comment', 'Bình luận', 'Quản lý bình luận', 1464421307, 0, 1, '', '', '', '', '6', 12, 1, '', 0, 0),
('siteterms', 'page', 'siteterms', 'siteterms', 'Điều khoản sử dụng', '', 1464421307, 1, 1, '', '', '', '', '6', 13, 1, '', 1, 0),
('freecontent', 'freecontent', 'freecontent', 'freecontent', 'Giới thiệu sản phẩm', '', 1464421307, 0, 1, '', '', '', '', '6', 14, 1, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_1`
--

CREATE TABLE `nv4_vi_news_1` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_2`
--

CREATE TABLE `nv4_vi_news_2` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_2`
--

INSERT INTO `nv4_vi_news_2` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(20, 2, '2', 0, 2, 'Hoàng Mai, Hà Nội', 0, 1464448831, 1465010671, 1, 1465010671, 0, 1, 'Bán gấp nhà mặt phố Mã Mây 130m mặt tiền 5', 'Ban-gap-nha-mat-pho-Ma-May-130m-mat-tien-5', '', '', '', 0, 1, '4', 1, 7, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_8`
--

CREATE TABLE `nv4_vi_news_8` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_9`
--

CREATE TABLE `nv4_vi_news_9` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_10`
--

CREATE TABLE `nv4_vi_news_10` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_10`
--

INSERT INTO `nv4_vi_news_10` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(27, 10, '10', 0, 1, 'HCM', 0, 1464607413, 1464607413, 1, 1464607413, 0, 1, 'Đất 1000m2 cạnh Khu DL B Quới I giá 10tr&#x002F;th', 'Dat-1000m2-canh-Khu-DL-B-Quoi-I-gia-10tr-th', '', '', '', 0, 1, '4', 1, 3, 2, 0, 0),
(29, 10, '10', 0, 1, 'HCM', 0, 1464607661, 1464607661, 1, 1464607661, 0, 1, 'Trang trí nội thất, Sửa chữa Xây Dựng', 'Trang-tri-noi-that-Sua-chua-Xay-Dung', '', '', '', 0, 1, '4', 1, 1, 2, 0, 0),
(30, 10, '10', 0, 1, '', 0, 1464607725, 1464607725, 1, 1464607725, 0, 1, 'Bán căn 2PN tầng 16 Seasons Avenue', 'Ban-can-2PN-tang-16-Seasons-Avenue', '', '', '', 0, 1, '4', 1, 2, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_11`
--

CREATE TABLE `nv4_vi_news_11` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_11`
--

INSERT INTO `nv4_vi_news_11` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(32, 11, '11', 0, 1, 'HCM', 0, 1464607937, 1464607937, 1, 1464607937, 0, 1, 'Xe 4 chỗ camry màu đen tại tphcm', 'Xe-4-cho-camry-mau-den-tai-tphcm', '', '', '', 0, 1, '4', 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_12`
--

CREATE TABLE `nv4_vi_news_12` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_13`
--

CREATE TABLE `nv4_vi_news_13` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_14`
--

CREATE TABLE `nv4_vi_news_14` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_15`
--

CREATE TABLE `nv4_vi_news_15` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_16`
--

CREATE TABLE `nv4_vi_news_16` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_17`
--

CREATE TABLE `nv4_vi_news_17` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_17`
--

INSERT INTO `nv4_vi_news_17` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(31, 17, '17', 0, 1, 'HCM', 0, 1464607784, 1464607784, 1, 1464607784, 0, 1, 'Lenovo Thinkpad T450 Broadwell I5 5300U 2.3Gh', 'Lenovo-Thinkpad-T450-Broadwell-I5-5300U-2-3Gh', '', '', '', 0, 1, '4', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_18`
--

CREATE TABLE `nv4_vi_news_18` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_18`
--

INSERT INTO `nv4_vi_news_18` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(35, 18, '18', 0, 1, '', 0, 1464608636, 1464608636, 1, 1464608636, 0, 1, 'Đầu thu Kỹ thuật số DVB-T2 chỉ với 550k', 'Dau-thu-Ky-thuat-so-DVB-T2-chi-voi-550k', '', '', '', 0, 1, '4', 1, 2, 0, 0, 0),
(38, 18, '18', 0, 1, 'TP Huế', 0, 1464679929, 1464679929, 1, 1464679929, 0, 1, 'In tại xưởng offset namecard, catalogue', 'In-tai-xuong-offset-namecard-catalogue', '', '', '', 0, 1, '4', 1, 4, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_19`
--

CREATE TABLE `nv4_vi_news_19` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_20`
--

CREATE TABLE `nv4_vi_news_20` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_20`
--

INSERT INTO `nv4_vi_news_20` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(22, 20, '20', 0, 1, 'Hà Nội', 8, 1464512747, 1464604964, 1, 1464512700, 0, 2, 'Bán buôn, bán lẻ nước cất 1 lần, 2 lần, nước', 'Ban-buon-ban-le-nuoc-cat-1-lan-2-lan-nuoc', '', '', '', 0, 1, '4', 1, 2, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_21`
--

CREATE TABLE `nv4_vi_news_21` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_21`
--

INSERT INTO `nv4_vi_news_21` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(26, 21, '21', 0, 2, 'Thanh Xuân, Hà Nội', 0, 1464604220, 1464604220, 1, 1464604220, 0, 1, 'Máy hút ẩm công nghiệp Harison HD 504B', 'May-hut-am-cong-nghiep-Harison-HD-504B', '', '', '', 0, 1, '4', 1, 4, 0, 0, 0),
(25, 21, '21', 0, 2, 'Sài Gòn', 0, 1464604126, 1465011481, 1, 1465011481, 0, 1, 'BÁN MÁY KHOAN GIẾNG - ĐOÀN VẬT TƯ &#40;Đoàn 805&#41;', 'BAN-MAY-KHOAN-GIENG-DOAN-VAT-TU-Doan-805', '', '', '', 0, 1, '4', 1, 2, 0, 0, 0),
(36, 21, '21', 0, 1, 'HCM', 0, 1464608708, 1464608708, 1, 1464608708, 0, 1, 'Bán máy làm mát không khí.', 'Ban-may-lam-mat-khong-khi', '', '', '', 0, 1, '4', 1, 0, 0, 0, 0),
(37, 21, '21', 0, 1, 'HCM', 0, 1464679758, 1464679758, 1, 1464679758, 0, 1, 'Cáp tín hiệu AWG Hosiwell 2x1.5mm2', 'Cap-tin-hieu-AWG-Hosiwell-2x1-5mm2', '', '', '', 0, 1, '4', 1, 4, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_22`
--

CREATE TABLE `nv4_vi_news_22` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_22`
--

INSERT INTO `nv4_vi_news_22` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(21, 22, '22', 0, 2, 'Đắc Lắc', 0, 1464449414, 1465010717, 1, 1465010717, 0, 1, 'cung cấp cửa nhựa lõi thép, cầu thang rẻ', 'cung-cap-cua-nhua-loi-thep-cau-thang-re', '', '', '', 0, 1, '4', 1, 7, 0, 0, 0),
(40, 22, '22', 0, 1, 'Hà Nội', 0, 1464760714, 1464760714, 1, 1464760714, 0, 1, 'Cần tuyển gấp lao động tại Nhật Bản 2', 'Can-tuyen-gap-lao-dong-tai-Nhat-Ban-2', '', '', '', 0, 1, '4', 1, 6, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_23`
--

CREATE TABLE `nv4_vi_news_23` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_23`
--

INSERT INTO `nv4_vi_news_23` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(34, 23, '23', 0, 1, 'Hà Nội', 0, 1464608075, 1464608075, 1, 1464608075, 0, 1, 'Dịch vụ sửa chữa nhà giá rẻ nhất tại Hà Nội 1', 'Dich-vu-sua-chua-nha-gia-re-nhat-tai-Ha-Noi-1', '', '', '', 0, 1, '4', 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_24`
--

CREATE TABLE `nv4_vi_news_24` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_24`
--

INSERT INTO `nv4_vi_news_24` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(28, 24, '24', 0, 1, 'HCM', 0, 1464607503, 1464607503, 1, 1464607503, 0, 1, 'Dịch vụ cho thuê xe 45 tại tphcm', 'Dich-vu-cho-thue-xe-45-tai-tphcm', '', '', '', 0, 1, '4', 1, 1, 0, 0, 0),
(33, 24, '24', 0, 1, 'HCM', 0, 1464607981, 1464607981, 1, 1464607981, 0, 1, 'đại lÝ vé máy bay tại tphcm - du lịch nét việt', 'dai-lY-ve-may-bay-tai-tphcm-du-lich-net-viet', '', '', '', 0, 1, '4', 1, 1, 0, 0, 0),
(39, 24, '24', 0, 1, 'HCM', 0, 1464760606, 1464760606, 1, 1464760606, 0, 1, 'Cho Vay Góp Ngày Không Thế Chấp', 'Cho-Vay-Gop-Ngay-Khong-The-Chap', '', '', '', 0, 1, '4', 1, 1, 0, 0, 0),
(41, 24, '24', 0, 2, '', 0, 1464876446, 1464876446, 1, 1464876446, 0, 1, 'test test test', 'test-test-test', '', '', '', 0, 1, '4', 1, 0, 0, 0, 0),
(42, 24, '24', 0, 2, 'Ban Mê Thuột', 0, 1464876777, 1464876777, 1, 1464876777, 0, 1, '123 test test test', '123-test-test-test', '', '', '', 0, 1, '4', 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_admins`
--

CREATE TABLE `nv4_vi_news_admins` (
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `catid` smallint(5) NOT NULL DEFAULT '0',
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `add_content` tinyint(4) NOT NULL DEFAULT '0',
  `pub_content` tinyint(4) NOT NULL DEFAULT '0',
  `edit_content` tinyint(4) NOT NULL DEFAULT '0',
  `del_content` tinyint(4) NOT NULL DEFAULT '0',
  `app_content` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_block`
--

CREATE TABLE `nv4_vi_news_block` (
  `bid` smallint(5) UNSIGNED NOT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `weight` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_block`
--

INSERT INTO `nv4_vi_news_block` (`bid`, `id`, `weight`) VALUES
(3, 40, 1),
(3, 39, 2),
(3, 38, 3),
(3, 37, 4),
(3, 36, 5);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_block_cat`
--

CREATE TABLE `nv4_vi_news_block_cat` (
  `bid` smallint(5) UNSIGNED NOT NULL,
  `adddefault` tinyint(4) NOT NULL DEFAULT '0',
  `numbers` smallint(5) NOT NULL DEFAULT '10',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_block_cat`
--

INSERT INTO `nv4_vi_news_block_cat` (`bid`, `adddefault`, `numbers`, `title`, `alias`, `image`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(1, 0, 4, 'Tin tiêu điểm', 'Tin-tieu-diem', '', 'Tin tiêu điểm', 1, '', 1279945710, 1279956943),
(2, 1, 4, 'Tin mới nhất', 'Tin-moi-nhat', '', 'Tin mới nhất', 2, '', 1279945725, 1279956445),
(3, 0, 4, 'Tin VIP', 'Tin-VIP', '', '', 3, '', 1464853956, 1464853956);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_cat`
--

CREATE TABLE `nv4_vi_news_cat` (
  `catid` smallint(5) UNSIGNED NOT NULL,
  `parentid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titlesite` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `descriptionhtml` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `viewdescription` tinyint(2) NOT NULL DEFAULT '0',
  `weight` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `sort` smallint(5) NOT NULL DEFAULT '0',
  `lev` smallint(5) NOT NULL DEFAULT '0',
  `viewcat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` smallint(5) NOT NULL DEFAULT '0',
  `subcatid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `numlinks` tinyint(2) UNSIGNED NOT NULL DEFAULT '3',
  `newday` tinyint(2) UNSIGNED NOT NULL DEFAULT '2',
  `featured` int(11) NOT NULL DEFAULT '0',
  `ad_block_cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `admins` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_cat`
--

INSERT INTO `nv4_vi_news_cat` (`catid`, `parentid`, `title`, `titlesite`, `alias`, `description`, `descriptionhtml`, `image`, `viewdescription`, `weight`, `sort`, `lev`, `viewcat`, `numsubcat`, `subcatid`, `inhome`, `numlinks`, `newday`, `featured`, `ad_block_cat`, `keywords`, `admins`, `add_time`, `edit_time`, `groups_view`) VALUES
(1, 0, 'Tin tức', '', 'Tin-tuc', '', '', '', 0, 1, 1, 0, 'viewcat_main_right', 3, '8,12,9', 1, 4, 2, 0, '', '', '', 1274986690, 1274986690, '6'),
(2, 0, 'Điện thoại', '', 'dien-thoai', '', '', '', 0, 2, 5, 0, 'viewcat_page_new', 0, '', 1, 4, 2, 0, 'Array', '', '', 1274986705, 1464451204, '6'),
(8, 1, 'Thông cáo báo chí', '', 'thong-cao-bao-chi', '', '', '', 0, 1, 2, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', '', 1274987105, 1274987244, '6'),
(9, 1, 'Tin công nghệ', '', 'Tin-cong-nghe', '', '', '', 0, 3, 4, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', '', 1274987212, 1274987212, '6'),
(10, 0, 'Bất động sản', '', 'bat-dong-san', '', '', '', 0, 3, 6, 0, 'viewcat_page_new', 0, '', 1, 4, 2, 0, 'Array', '', '', 1274987460, 1464451222, '6'),
(11, 0, 'Ôtô', '', 'oto', '', '', '', 0, 4, 7, 0, 'viewcat_page_new', 0, '', 1, 4, 2, 0, 'Array', '', '', 1274987538, 1464451237, '6'),
(12, 1, 'Bản tin nội bộ', '', 'Ban-tin-noi-bo', '', '', '', 0, 2, 3, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', '', 1274987902, 1274987902, '6'),
(13, 0, 'Thuê và Cho thuê nhà', '', 'thue-va-cho-thue-nha', '', '', '', 0, 5, 8, 0, 'viewcat_page_new', 0, '', 1, 3, 2, 0, 'Array', '', '', 1464451254, 1464451254, '6'),
(14, 0, 'Thời trang, Làm đẹp', '', 'thoi-trang-lam-dep', '', '', '', 0, 6, 9, 0, 'viewcat_page_new', 0, '', 1, 3, 2, 0, 'Array', '', '', 1464451264, 1464451264, '6'),
(15, 0, 'Chợ Sim số', '', 'cho-sim-so', '', '', '', 0, 7, 10, 0, 'viewcat_page_new', 0, '', 1, 3, 2, 0, 'Array', '', '', 1464451273, 1464451273, '6'),
(16, 0, 'Xe máy - Xe đạp', '', 'xe-may-xe-dap', '', '', '', 0, 8, 11, 0, 'viewcat_page_new', 0, '', 1, 3, 2, 0, 'Array', '', '', 1464451283, 1464451283, '6'),
(17, 0, 'Máy tính xách tay', '', 'may-tinh-xach-tay', '', '', '', 0, 9, 12, 0, 'viewcat_page_new', 0, '', 1, 3, 2, 0, 'Array', '', '', 1464451295, 1464451295, '6'),
(18, 0, 'Điện tử - Kỹ thuật số', '', 'dien-tu-ky-thuat-so', '', '', '', 0, 10, 13, 0, 'viewcat_page_new', 0, '', 1, 3, 2, 0, 'Array', '', '', 1464451312, 1464451312, '6'),
(19, 0, 'Mạng - Phần mềm', '', 'mang-phan-mem', '', '', '', 0, 11, 14, 0, 'viewcat_page_new', 0, '', 1, 3, 2, 0, 'Array', '', '', 1464451323, 1464451323, '6'),
(20, 0, 'Mua sắm', '', 'mua-sam', '', '', '', 0, 12, 15, 0, 'viewcat_page_new', 0, '', 1, 3, 2, 0, 'Array', '', '', 1464451334, 1464451334, '6'),
(21, 0, 'Điện lạnh - Điện máy', '', 'dien-lanh-dien-may', '', '', '', 0, 13, 16, 0, 'viewcat_page_new', 0, '', 1, 3, 2, 0, 'Array', '', '', 1464451343, 1464451343, '6'),
(22, 0, 'Việc làm', '', 'viec-lam', '', '', '', 0, 14, 17, 0, 'viewcat_page_new', 0, '', 1, 3, 2, 0, 'Array', '', '', 1464451353, 1464451353, '6'),
(23, 0, 'dịch vụ', '', 'dich-vu', '', '', '', 0, 15, 18, 0, 'viewcat_page_new', 0, '', 1, 3, 2, 0, 'Array', '', '', 1464451364, 1464451364, '6'),
(24, 0, 'Du lịch', '', 'du-lich', '', '', '', 0, 16, 19, 0, 'viewcat_page_new', 0, '', 1, 3, 2, 0, 'Array', '', '', 1464451373, 1464451373, '6');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_config_post`
--

CREATE TABLE `nv4_vi_news_config_post` (
  `group_id` smallint(5) NOT NULL,
  `addcontent` tinyint(4) NOT NULL,
  `postcontent` tinyint(4) NOT NULL,
  `editcontent` tinyint(4) NOT NULL,
  `delcontent` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_config_post`
--

INSERT INTO `nv4_vi_news_config_post` (`group_id`, `addcontent`, `postcontent`, `editcontent`, `delcontent`) VALUES
(1, 1, 1, 1, 1),
(2, 1, 1, 1, 1),
(3, 1, 1, 1, 1),
(4, 1, 1, 1, 1),
(7, 1, 1, 1, 1),
(5, 1, 0, 0, 0),
(13, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_detail`
--

CREATE TABLE `nv4_vi_news_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `bodyhtml` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sourcetext` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imgposition` tinyint(1) NOT NULL DEFAULT '1',
  `copyright` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_send` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_print` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_save` tinyint(1) NOT NULL DEFAULT '0',
  `gid` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_detail`
--

INSERT INTO `nv4_vi_news_detail` (`id`, `bodyhtml`, `sourcetext`, `imgposition`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`, `gid`) VALUES
(37, 'Cáp tín hiệu vặn xoắn chống nhiễu chậm cháy chống cháy lan 1 Pair 16AWG Hosiwell được sản&nbsp;<br  />xuất tại Thái Lan và phân phối chính thức bởi Công ty TNHH Huỳnh Chấn Duy.<br  />Cáp tín hiệu 1Pair 16AWG được sử dụng cho:<br  />- Hệ thông báo trộm<br  />- Hệ thống âm thanh<br  />- Hệ thống báo cháy<br  />- Hệ thống kiểm soát cửa ra vào<br  />- Hệ thống giữ xe tự động,…<br  />Thông số kỹ thuật:<br  />Số cặp: 1 cặp (2 dây dẫn vặn xoắn lại với nhau)<br  />Lõi dẫn là đồng tráng thiếc<br  />Đường kính lõi: 16AWG – 2x1.5mm2<br  />Cách điện bằng lõi nhựa PE<br  />Dây thoát nhiễu có đường kính 18AWG, làm bằng dây đồng tráng thiếc<br  />Vỏ nhựa PVC chậm cháy chống cháy lan, màu xám<br  />Ngoài sản phẩm cáp tín hiệu 16AWG, công ty TNHH Huỳnh Chấn Duy còn cung cấp các sản&nbsp;<br  />phẩm khác như:<br  />- Cáp tín hiệu chống nhiễu âm thanh – ánh sáng chuẩn Hosiwell 18AWG, 20AWG, 22AWG<br  />- Cáp tín hiệu chống nhiễu truyền thông công nghiệp Hosiwell RS485 (chống nhiễu 2 lớp)&nbsp;<br  />chuẩn 24AWG và 22AWG<br  />- Cáp mạng Hosiwell Cat.5e UTP, Cat.6 UTP<br  />- Cáp mạng chống cháy Cat.5e UTP và Cat.6 UTP LSZH Hosiwell<br  />- Cáp mạng chống nhiễu Hosiwell Cat.5e SFTP (chống nhiễu 2 lớp: màng + kim loại)<br  />- Cáp mạng mềm dùng cho camera thang máy Hosiwell Patch Cable Cat.5e UTP Hosiwell<br  />- Cáp mạng chống cháy cho camera thang máy Hosiwell Cat.6 Patch Cable LSZH<br  />- Cáp đồng trục chống nhiễu Hosiwell RG6 và RG11<br  />- Cáp đồng trục mềm dùng cho camera thang máy Hosiwell RG59<br  />- Cáp tín hiệu chống nhiễu EIB 20AWG dùng cho hệ thống nhà thông minh Smarthome.<br  />- Cáp điều khiển Kabeltec<br  />- Cáp tàu biển TMC<br  />Quý khách có nhu cầu về các loại dây cáp tín hiệu chống nhiễu Hosiwell xin vui lòng liên hệ:<br  />Phòng kinh doanh: 08.6660.8282<br  />Hotline: Ms. Hoài Thương – 0948.794.138<br  />Skype: hoai_thuong1818<br  />Email: kinhdoanh01@huynhchanduy.com<br  />Web: huynhchanduy.com ; hosiwellcable.com<br  />Công ty TNHH Huỳnh Chấn Duy rất hân hạnh được phục vụ Quý khách.<br  />&nbsp;', '', 0, 0, 1, 1, 1, 0),
(38, 'Chương trình khuyến mãi giảm giá tháng 06<br  />Công ty TNHH Quảng Cáo Thạch Nguyễn<br  />4/5 Hậu Giang, P.4, Quận Tân Bình<br  />Email: thachnguyen.ad@gmail.com<br  />CALL : 08.39487007- 79487484<br  />Hotline: 0988 860 787 – 0903 077 058&nbsp;<br  />CHUYÊN NHẬN IN TỜ RƠI TRONG NGÀY<br  />ĐẢM BẢO DỊCH VỤ IN NHANH GIÁ RẺ<br  />TỜ RƠI&nbsp;<br  />Loại giấy Couche 150gsm, in 2 mặt không cán màng&nbsp;<br  />Khổ 10 x 15 10 x 20 A5 21 x 29,7 A3<br  />1.000 tờ 780.000đ 830.000đ 870.000đ 1.280.000đ<br  />Khuyến mãi:870.000đ 1.880.000đ<br  />2.000 tờ 990.000<br  />Khuyến mãi:880.000đ 1.050.000đ<br  />Khuyến mãi:880.000đ 1.200.000đ<br  />Khuyến mãi:940.000 1.560.000đ<br  />Khuyến mãi:1.350.000đ 2.300.000đ<br  />4.000 tờ 1.250.000đ<br  />Khuyến mãi:1.080.000đ 1.350.000đ<br  />Khuyến mãi:1.180.000đ 1.650.000đ<br  />Khuyến mãi:1.360.000đ 2.300.000đ 3.930.000<br  />5.000 tờ 2.930.000đ 4.680.000đ<br  /><br  /><br  /><br  />- In name card 5 hộp giá 21.000 vnđ/hộp<br  />- In name card 10 hộp giá 12.000 vnđ/hộp<br  />- Từ 50 hộp trở lên giá 11.500đ/hộp<br  />Công ty Thạch Nguyễn chuyên :&nbsp;<br  />• In name card, danh thiếp, bao thư, catalouge, brochure, poster, bìa sơ mi, folder…….<br  />• Lịch tết , thiệp Giáng Sinh, thiệp tết, … tất cả các sản phẩm trên chất liệu giấy đều in.<br  />Xin chân thành cám ơn quý khách đã dành chút ít thời gian quý báu xem qua tin này.', '', 0, 0, 1, 1, 1, 0),
(39, '* CHO VAY TIỀN GÓP HÀNG NGÀY KHÔNG GÓP THÁNG KHÔNG CẦN THẾ CHẤP TÀI SẢN TẠI&nbsp;<br  />SÀI GÒN *<br  />Hồ Sơ Cần:<br  />- HỘ KHẨU TP.HCM GIỮ SỔ HỘ KHẨU ( BẢN GỐC)<br  />- GIỮ CMND ( BẢN GỐC )<br  />* MỨC VAY: TỬ 20 TRIỆU ĐẾN 50 TRIỆU<br  />- Ưu tiên người có thu nhập hàng ngày<br  />- Hiện tại bên mình sẽ KHÔNG làm khu vực Thủ đức, Bình Chánh, Hóc Môn, Củ Chi và các vùng&nbsp;<br  />xa trung tâm Thành Phố<br  />- Ưu tiên khu vực Q1,Q3,Q4,,Q5,Q6,Q7, Phú Nhuận, Bình Thạnh, Tân Bình , riêng Gò Vấp thì số&nbsp;<br  />tiền tối thiểu để làm là 30tr &gt; nhé<br  />Lưu ý vay nóng là vay tư nhân ở ngoài không phải vay ngân hàng nhé ( nên tiền xuống trong&nbsp;<br  />ngày tận nhà luôn , nên nhu cầu cần vay kiểu này rất cao , xuống tiền liền trong ngày ).&nbsp;<br  />- Khi vay số tiền thấp nhất để bên mình làm là 10Tr nhé<br  />Liên hệ 0902.562.719&nbsp;', '', 0, 0, 1, 1, 1, 0),
(40, 'Công ty cổ phần tiên phong Thái Sơn cần tuyển 20 nam và 50 nữ tuổi từ 18 – 32 tuổi lao động&nbsp;<br  />(XKLĐ) tại Nhật Bản cho các ngành nghề: điện tử, may mặc, cơ khí, chế biến thủy sản, đóng gói&nbsp;<br  />hàng hóa, làm việc trong nhà xưởng - lương cao, cơ hội làm thêm nhiều.<br  />Liên hệ: Công ty cổ phần tiên phong Thái Sơn – Số 11 BT3 Tiểu khu đô thị Vạn Phúc, Hà Đông, Hà&nbsp;<br  />Nội. Đt 04 66 72 73 74 – 0975 83 4444<br  />&nbsp;', '', 0, 0, 1, 1, 1, 0),
(41, 'test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test', '', 0, 0, 1, 1, 1, 0),
(42, '123 test test test&nbsp;123 test test test&nbsp;123 test test test', '', 0, 0, 1, 1, 1, 0),
(35, 'ẦU THU KTS DVB-T2 : 550K - SÔI ĐỘNG MÙA HÈ CÙNG EURO2016 !!!<br  />HOTLINE: 0963 90 88 11 - Mr Xuân<br  />website: http://giamsat360.net<br  /><br  />CHI TIẾT SẢN PHẨM<br  />DVB – T2 là chuẩn thu truyền hình kỹ thuật số mặt đất được xem là công nghệ chuyển đổi từ&nbsp;<br  />analog sang digital.<br  />LTP Việt Nam là công ty chuyên cung cấp sản phẩm đầu kỹ thuật số DVB-T2 phục vụ lộ trình số&nbsp;<br  />hóa truyền hình của Chính Phủ tới năm 2020. Với mục tiêu rất đơn giản và rõ ràng: Chất lượng&nbsp;<br  />làm nên thành công.<br  />Giới thiệu đầu thu kỹ thuật số DVB-T2<br  />Theo đề án số hóa truyền hình được phó thủ tướng chính phủ phê duyệt thì đến năm 2020,&nbsp;<br  />truyền hình cáp analog sẽ ngừng phát sóng và thay thế bằng truyền hình kỹ thuật số theo chuẩn&nbsp;<br  />DVB T2.<br  />Từ 1/1/2016 có 5 thành phố lớn tiên phong thực hiện số hóa: Hà Nội (cũ), thành phố Hồ Chí&nbsp;<br  />Minh, Đà Nẵng, Cần Thơ và Hải Phòng. Đến năm 2020 toàn bộ các tỉnh thành trên cả nước số&nbsp;<br  />hóa hoàn toàn.<br  />Tới thời điểm quy định theo lộ trình, tất cả hộ gia đình không thể tiếp tục thu các kênh truyền&nbsp;<br  />hình tương tự (analog) nữa. Để tiếp tục xem các kênh truyền hình, người dân buộc phải mua tivi&nbsp;<br  />có tích hợp sẵn đầu thu DVB T2 hoặc mua đầu thu kỹ thuật số DVB T2 rời.<br  />&#91;img&#93;http://tienichsong.com/wp-content/uploads/2016/04/%C4%91%E1%BA%A7u-thu-<br  />k%E1%BB%B9-thu%E1%BA%ADt-s%E1%BB%91-DVB-T2.png&#91;img&#93;<br  />Chức năng và ưu điểm<br  />Đầu thu kỹ thuật số DVB T2 là loại đầu thu kỹ thuật số mặt đất thế hệ mới nhất tại Việt Nam,&nbsp;<br  />áp dụng theo công nghệ tiên tiến thế giới chuẩn DVB T2 / MPEG4 cho hình ảnh sắc nét, thu&nbsp;<br  />nhiều kênh HD hơn, tín hiệu truyền từ mặt đất ổn định hơn, dùng đầu thu kỹ thuật số DVB T2&nbsp;<br  />không bị ảnh hưởng bởi thời tiết.<br  />• Tính năng không phụ thuộc dây kéo từ ngoài vào nên quý khách có thể di chuyển đầu thu&nbsp;<br  />DVB T2 dễ dàng từ nơi này sang nơi khác, mọi tỉnh thành.<br  />• Đầu thu kỹ thuật số DVB-T2 sử dụng truyền dẫn kỹ thuật số mặt đất – tín hiệu từ vệ tinh&nbsp;<br  />truyền xuống các trạm dưới mặt đất rồi truyền vào TV ổn định hơn – nên trời mưa hoặc thời tiết&nbsp;<br  />xấu vẫn xem bình thường.<br  />• Đầu thu có cổng USB để kết nối USB hoặc ổ cứng&nbsp;di động&nbsp;<img alt="" border="0" src="http://raovat.net/images/AdPro/external.png" />&nbsp;để xem phim, nghe nhạc thỏa&nbsp;<br  />thích ! Hỗ trợ các định dạng MP4, MKV, AVI, ISO, FLV….(tải trực tiếp từ YOUTUBE về là xem&nbsp;<br  />được ngay)<br  />• Chức năng ghi lại giúp quý khách không bỏ lỡ bất kỳ chượng trình truyền hình nào !<br  />Đầu thu kỹ thuật số DVB-T2 phù hợp cho tất cả người dân, rất tiện lợi cho những hộ dân ở trọ,&nbsp;<br  />cũng rất tiện lợi cho người ở chung cư, căn hộ cao cấp, nhà đẹp, biệt thự,… vì hình ảnh sắc nét&nbsp;<br  />chuẩn SD &amp; HD, thiết bị nhỏ gọn, thẩm mỹ trong lòng bàn tay, di dời tùy ý, không sợ thời tiết,….', '', 0, 0, 1, 1, 1, 0),
(36, 'Bán máy làm mát không khí.<br  />MÁY LÀM MÁT KHÔNG KHÍ là công nghệ của Úc. Máy làm mát không khí, dựa trên nguyên tắc &quot;bay hơi nước&quot; để làm giảm nhiệt độ không khí(làm mát môi trường hở). Với công nghệ tiên tiến đã tạo ra thiết bị đặc biệt tách 1 phần H2O thành các Ion +O2 cùng với nước đã biến không khí nóng khô thành luồng gió sạch sẽ, trong lành, mát lạnh như gió sông, gió biển. Xem chi tiết TAI ĐÂY&nbsp;<br  />- Bạn có lo lắng đến việc ngồi điều hòa nhiêu sẽ ảnh hưởng gì ???<br  />+ Tác hại cho da: Điều hòa làm khô da và niêm mạc, làm gia tăng khả năng mắc các bệnh về da của cơ thể..&nbsp;<br  />+ Nguy cơ các bệnh về phổi: Đây là một trong những nguy cơ lớn nhất. Điều hòa làm thay đổi đột ngột nhiệt độ và độ ẩm trong phòng, ảnh hưởng nghiêm trọng tới hệ thống hô hấp.<br  />+ Ô nhiễm tiếng ồn: Một số máy điều hòa tạo ra những tiếng ồn vô cùng khó chịu cho người sử dụng, gây ra bệnh đau đầu cả ngày<br  />+ Bệnh truyền nhiễm đường hô hấp: Một trong số nguy cơ sức khỏe là việc lan truyền các bệnh truyền nhiễm đường hô hấp, vốn do khả năng lưu thông không khí trong phòng điều hòa rất kém.<br  />+ Dị ứng: Bụi và nấm di chuyển trong bầu không khí kém lưu thông của phòng sử dụng điều hòa dễ gây ra các bệnh dị ứng.<br  />+ Kích ứng: Cả da và cổ họng đều dễ bị kích ứng hơn khi ngồi trong phòng bật điều hòa.<br  />+ Cảm cúm: Trong phòng điều hòa, virus gây bệnh cúm dễ lan truyền từ người bệnh sang mọi người xung quanh.<br  />+ Các vấn đề về mắt: Người ngồi trong phòng bật điều hòa dễ mắc các bệnh về mắt như viêm mí mắt và viêm màng kết<br  />+ Giảm khả năng chịu nhiệt: Với những người đã quá quen với môi trường mát mẻ trong phòng điều hòa, cơ thể giảm hẳn khả năng chịu đựng với nhiệt độ ngoài trời và do đó hay đổ mồ hôi hơn.<br  />+ Mệt mỏi và đau đầu: Là một trong những tác hại dễ gặp ở những người thường xuyên dùng điều hòa.<br  />+Chi phí tiền điện khá cao .<br  />Máy làm mát không khí là sản phẩm làm mát&nbsp;di động&nbsp;<img alt="" border="0" src="http://raovat.net/images/AdPro/external.png" />, có khả năng làm mát với không gian rộng, vừa nhỏ, thỏa mãn cho các hoạt động, sự kiện chỗ đông người, mang đến sự mát mẻ của thiên nhiên với chi phí vận hành thấp nhất. Các đặc điểm của máy như sau:&nbsp;<br  />* Có được sự mát lạnh như đứng trước gió sông, biển. Không khí nóng được máy lọc bụi và làm lạnh(nhiệt độ giảm 5°c - 7°c so với nhiệt độ môi trường và độ ẩm 60%). Máy phải hoạt động trong môi trường hở và bán hở(có gió vào gió ra)<br  />* Loại bỏ mọi mùi khó chịu thay bằng không khí trong lành mát mẻ giàu oxy, Mang lại sự thoải mái dễ chịu có lợi cho sức khỏe người sử dụng.<br  />* Dễ sử dụng, an toàn cho tất cả mọi người.(Đã được kiểm định chất lượng nhập khẩu theo tiêu chuẩn của Tổng cục tiêu chuẩn đo lường chất lượng).<br  />* Điện năng tiêu thụ thấp, sử dụng được trong trường hợp dùng máy phát điện.<br  />* Hoạt động bền bỉ, chi phí bảo trì thấp.<br  />* Hài hòa với thiên nhiên, thân thiện với môi trường (không có môi chất làm lạnh)<br  />Tính cơ động cao, đáp ứng được các yêu cầu làm mát cục bộ hay toàn bộ. Sử dụng làm mát cho phòng khách hộ gia đình, Hội trường, Nhà hàng, Cửa hàng, khu vui chơi, các sự kiện đông người trong nhà hay ngoài trời.&nbsp;<br  />Mọi chi tiết xin liên hệ:<br  />Mr. Học – NVKD<br  />Mail : phamhoc83@gmail.com&nbsp;<br  />Mobile: 0983.85.87.83', '', 0, 0, 1, 1, 1, 0),
(28, 'Công ty du lịch NÉT VIỆT chuyên cho thuê xe du lịch 4-7-16-29-35-45 chỗ đời mới 2009 - 2015 giá cả phải chăng. Chuyên phục vụ đưa đón sân&nbsp;<br  />bay, tham quan, công tác, cưới hỏi, tổ chức sự kiện, event,...đưa rước&nbsp;<br  />CBCNV, học sinh, sinh viên (CHO THUÊ THÁNG).&nbsp;<br  />- Xe 4 chỗ: Vios, Altis, Camry, Chevrolet Cruze.<br  />- Xe 7 chỗ: Innova, Fortuner.<br  />- Xe 16 chỗ: Mercedes Ben, Mercedes Sprinter, Toyota Hiace.<br  />- Xe 29 chỗ: Huyndai County nhập.<br  />- Xe 35 chỗ: Aero Town, Isuzu, Samco.<br  />- Xe 45 chỗ: Aero Space Hiclass, Univer.<br  />Qúy Khách có nhu cầu vui lòng liên hệ:<br  />CÔNG TY TNHH ĐẦU TƯ VÀ DU LỊCH NÉT VIỆT<br  />Địa Chỉ: 316/48 Nguyễn Văn Nghi - P.7 - Q. Gò Vấp - Tp.HCM<br  />Điện Thoại: 08.38957456 - 0938440456 ( Mr Dư ).<br  />Email: Netviettour@yahoo.com<br  />Nick yahoo: netviettour<br  />Nick Skype: netviettour<br  />Rất hân hạnh được phục vụ quý khách !', '', 0, 0, 1, 1, 1, 0),
(29, 'Công ty TNHH Xây Dựng LONG VŨ thành lập ngày 21/10/2007. Công ty đã tư vấn thiết kế thi&nbsp;<br  />công giám sát nhiều công trình xây dựng dân dụng và công nghiệp. Thiết kế thi công các loại&nbsp;<br  />nhà văn phòng, nhà xưởng, biệt thự, khách sạn, nhà mặt phố ...&nbsp;<br  />Với phương châm “Mỗi căn nhà là một tổ ấm”, toàn thể cán bộ công nhân viên công ty TNHH Xây&nbsp;<br  />Dựng LONG VŨ đã ra sức sáng tạo trong thiết kế, cải tiến kỹ thuật thi công để tạo ra những sản&nbsp;<br  />phẩm có nét đặc thù riêng và đạt chất lượng cao. Công ty chúng tôi luôn mang phương châm&nbsp;<br  />này đến tất cả các dự án đã và đang thực hiện để cùng mọi người hoàn thiện tổ ấm riêng của&nbsp;<br  />mình.<br  />Đội ngũ cán bộ công nhân viên công ty làm công tác tư vấn thiết kế thi công giám sát là kiến&nbsp;<br  />trúc sư, kỹ sư, họa viên, công nhân có nhiều năm kinh nghiệm từng làm việc gắn bó với nhau&nbsp;<br  />qua các công ty xây dựng khác nhau, nhưng nay tập trung tại Công ty TNHH Xây Dựng LONG VŨ&nbsp;<br  />nên mọi hoạt động của công ty được vận hành rất nhịp nhàng và đồng bộ.&nbsp;<br  />Cuối cùng, Công ty TNHH Xây Dựng LONG VŨ xin gửi lời chào trân trọng đến quý cơ quan,&nbsp;<br  />doanh nghiệp và khách hàng đã truy cập Website của công ty. Công ty chúng tôi nguyện làm&nbsp;<br  />thoả mãn và đáp ứng tốt nhất sự tín nhiệm cũng như những yêu cầu của quý cơ quan, doanh&nbsp;<br  />nghiệp và khách hàng đã đặt ra cho chúng tôi.<br  />HÃY ĐẾN VỚI CHÚNG TÔI, CÁC BẠN, TỪNG CÁ NHÂN CHÍNH LÀ NHỮNG VIÊN GẠCH XÂY&nbsp;<br  />NÊN NGÔI NHÀ CHO CÁC BẠN, CHÍNH BẠN SẼ LÀ CHỦ NHÂN TỔ ẤM ĐÍCH THỰC XỨNG TẦM CỦA&nbsp;<br  />CÁC BẠN.<br  /><br  />=============================<br  />Cty TNHH XD LONG VŨ<br  />11 NGUYỄN DU, P. BẾN NGHÉ, Q.1, TPHCM.<br  />MST: 03 09 46 55 79<br  /><br  />KS. PHÍ XUÂN VŨ<br  />(090) 944 3212<br  /><br  />phixuanvu@longvucons.com.vn<br  />http://longvucons.com.vn&nbsp;', '', 0, 0, 1, 1, 1, 0),
(30, 'Tôi bán căn hộ cao cấp ở chung cư Seasons Avenue, giai đoạn 2 của Mulberry Lane&nbsp;<br  />( thuộc chủ đầu tư Singapore ) tầng 16<br  />Thiết kế 80m2, căn 2PN , 2 wc, ban công rộng thoáng. Hướng ĐN rất mát.<br  />Cần bán gấp giá chỉ 2tỷ. LH chính chủ : ANH MINH - 0972.092.862', '', 0, 0, 1, 1, 1, 0),
(31, 'CTY TNHH Thương Mại Tin Học CICI<br  />CT4 .Tam Đảo P15 Q10 Tp.HCM<br  />Website: www.laptopusa.com.vn<br  />Call để được giá tốt nhất<br  />SHIP TOÀN QUỐC<br  /><br  />Chuyên các dòng máy tính xách tay dành cho doanh nhân và văn phòng (hay còn gọi là Business Laptops) của hãng HP, đó là dòng HP EliteBook (trong dòng này bao gồm hai dòng nhánh là HP EliteBookNotebook&nbsp;<img alt="" border="0" src="http://raovat.net/images/AdPro/external.png" />&nbsp;&amp; Mobile Workstation);hãng DELL (DELL Latitude E-Series &amp; DELL Precision M-Series) và kế tiếp là IBM (IBM ThinkPad X-Series, T-Series &amp; W-Series).<br  />​<br  /><br  />Lenovo ThinkPad T450 Broadwell 2015 nặng 1.6Kg new 100% Fullbox nguyên SEAL<br  /><br  />- CPU:Intel® Broadwell Core™ I5 5300U 2.3GHz ( 4x2.3GHz) Turbo Boost Upto 2.9Ghz (Cache 3 MB - Bus 1600Mhz) -<br  />- Memory: 8Gb PC3L -DDR3 Bus 1600hz<br  />- HDD: 256Gb SSD SATA 3<br  />- VGA: Intel Graphic HD 5500<br  />- Display: 14&quot; Wide XGA TFT độ phân giải cao 1600*900<br  />- OS: Win 8 Pro 64bit bản quyền<br  />- Battery: 6 cell<br  />- Option :Webcam,Bluetooth,Đèn bàn phím,USB 3.0,DisplayPort,Support WWAN 3G,eSATA<br  />Hàng mới 100% Fullbox nguyên Seal<br  />Bảo hành 12 tháng (BH Toàn cầu 12-2018)<br  />Giá bán : 19.000.000 VNĐ - Quà tặng túi chuột<br  />Mọi chi tiết xin liên hệ : 0937.88.89.90<br  /><br  /><br  /><br  /><br  /><br  />CTY TNHH Thương Mại Tin Học CICI<br  />CT4 .Tam Đảo P15 Q10 Tp.HCM<br  />Website: www.laptopusa.com.vn<br  />Call để được giá tốt nhất<br  />SHIP TOÀN QUỐC<br  />&nbsp;', '', 0, 0, 1, 1, 1, 0),
(32, 'Công ty du lịch NÉT VIỆT chuyên cho thuê xe du lịch 29 chỗ đời mới 2009 - 2015 giá cả phải&nbsp;<br  />chăng. Chuyên phục vụ đưa đón sân bay, tham quan, công tác, cưới hỏi, tổ chức sự kiện,&nbsp;<br  />event,...đưa rước CBCNV, học sinh, sinh viên (CHO THUÊ THÁNG).<br  /><br  />- Xe 4 chỗ: Vios, Altis, Camry màu đen VIP, Chevrolet Cruze<br  /><br  />- Xe 7 chỗ: Innova, Fortuner.<br  /><br  />- Xe 16 chỗ: Mercedes Ben, Sprinter, Toyota Hiace.<br  /><br  />- Xe 29 chỗ: Huyndai County nhập.<br  /><br  />- Xe 35 chỗ: Aero Town, Isuzu, Samco.<br  /><br  />- Xe 45 chỗ: Aero Space Hiclass, Univer.<br  /><br  />Qúy Khách có nhu cầu vui lòng liên hệ:<br  /><br  />CÔNG TY TNHH ĐẦU TƯ VÀ DU LỊCH NÉT VIỆT<br  />Địa Chỉ: 316/48 Nguyễn Văn Nghi - P.7 - Q. Gò Vấp - Tp.HCM<br  />Điện Thoại: 08.38957456 - 0938440456 ( Mr Dư ).<br  /><br  />Email: Netviettour@yahoo.com<br  /><br  />Nick yahoo: netviettour<br  /><br  />Nick Skype: netviettour<br  /><br  />Rất hân hạnh được phục vụ quý khách !&nbsp;<br  />&nbsp;', '', 0, 0, 1, 1, 1, 0),
(33, 'Công ty Du Lịch Nét Việt xin gửi đến Anh Chị cùng Quý Công Ty lời chúc sức khỏe và thành đạt trong kinh doanh. Du Lịch Nét Việt chuyên phục vụ Quý Khách với những dịch vụ sau đây:Cho thuê xe du lịch ( từ 4 –&gt; 45 chỗ ) – Tổ chức Tour Du Lịch - Gia hạn visa - Bán Vé Máy bay.&nbsp;<br  />CHO THUÊ XE DU LỊCH ĐỜI MỚI&nbsp;<br  />Liên Hệ: Mr Dư : 08.38957456 – 0938440456.<br  />- Cho Thuê xe du lịch đời mới từ 4 -&gt; 45 chỗ. Chuyên phục vụ : đưa đón sân bay, tham&nbsp;<br  />quan, công tác, cưới hỏi, ma chay, hành hương ... Đưa rước CBCNV, học sinh, sinh viên ( cho&nbsp;<br  />thuê tháng ).<br  />- Giá cả phải chăng, đội ngũ tài xế vui vẻ, nhiều năm kinh nghiệm phục vụ 24/24<br  />TỔ CHỨC TOUR DU LỊCH TRỌN GÓI:&nbsp;<br  />Tư vấn, thiết kế tour du lịch trọn gói theo yêu cầu của Quý Khách. Để đáp ứng nhu cầu&nbsp;<br  />tham quan du lịch của từng cá nhân, gia đình và cơ quan đơn vị phù hợp với thời gian, tuyến&nbsp;<br  />tham quan, số lượng khách tham gia và kinh phí. Công ty du lịch Nét Việt sẵn sàng thiết kế&nbsp;<br  />các chương trình tour và giá cả phù hợp theo yêu cầu của từng đơn vị.&nbsp;<br  />- Giá cả cạnh tranh.&nbsp;<br  />- Dịch vụ cao cấp, chất lượng.&nbsp;<br  />- Đội ngũ MC , Hướng dẫn viên và Tài xế nhiều năm kinh nghiệm, năng động , tận tâm&nbsp;<br  />với nghề nghiệp thực sự đem đến cho Quý khách cảm giác thoải mái và ấn tượng sau mỗi&nbsp;<br  />chuyến tham quan.&nbsp;<br  />GIA HẠN VISA :<br  />- Nhận gia hạn visa và làm mới hoặc gia hạn thẻ tạm trú cho người nước ngoài đang học tập,&nbsp;<br  />làm việc tại Việt Nam, ( trong thời gian nhanh nhất, giá rẻ nhất ).<br  />ĐẠI LÝ VÉ MÁY BAY<br  />- Trong nước : Việt Nam Airline , Jetstar, Air MeKong.&nbsp;<br  />- Nước ngoài : Cathay, Singapore, Lion, China Airline, Thai.&nbsp;<br  />Giao vé tận nơi theo yêu cầu của Quý Khách !<br  />Quý khách có nhu cầu xin vui lòng liên hệ:<br  />CÔNG TY TNHH ĐẦU TƯ VÀ DU LỊCH NÉT VIỆT&nbsp;<br  />Địa Chỉ: 316/48 Nguyễn Văn Nghi - F.7 - Q.Gò Vấp - Tp.HCM<br  />Điện Thoại : 08.38957456 – 0938440456 ( Mr Dư ).<br  />Email: netviettour@yahoo.com,&nbsp;<br  />Nick yahoo: netviettour<br  />Nick skype: netviettour<br  /><br  />RẤT HÂN HẠNH ĐƯỢC PHỤC VỤ QUÝ KHÁCH', '', 0, 0, 1, 1, 1, 0),
(34, 'Sửa chữa nhà giá rẻ: Mỗi công trình Sửa chữa nhà đều có thời gian sử dụng nhất định, thời gian&nbsp;<br  />này dài hay ngắn phụ thuộc vào kỹ thuật thi công, chất lượng các vật liệu và một số yếu tố khách&nbsp;<br  />quan khác. Vì vậy đến một lúc nào đó ngôi nhà của bạn sẽ không còn giữ được chất lượng như&nbsp;<br  />ban đầu, một số hạng mục trong căn nhà sẽ xuống cấp, không đảm bảo an toàn, gây khó chịu&nbsp;<br  />trong sinh hoạt, lúc này bạn sẽ cần đến dịch vụ sửa chữa nhà giá rẻ để giải quyết được tận gốc&nbsp;<br  />mọi vấn đề.<br  />Hãy gọi ngay cho chúng tôi, công ty bảo trì nhà 365 để được tư vấn dịch vụ sửa chữa nhà nhanh,&nbsp;<br  />chất lượng, giá hấp dẫn.<br  /><br  /><br  />Dịch vụ sửa chữa nhà giá rẻ nhất tại Hà Nội<br  /><br  />Bạn hãy liên hệ ngay 0916.89.8181 để được giá ưu đãi trong hôm nay<br  />(Dành cho 5 khách đầu tiên)<br  />Bạn mong muốn một dịch vụ sửa nhà trọn gói nhanh gọn mà vẫn đảm bảo chất lượng, tiết kiệm&nbsp;<br  />chi phí. Tuy nhiên không phải công ty nào cũng đáp ứng được những yêu cầu của bạn, vì hiện&nbsp;<br  />nay có quá nhiều các công ty hoạt động trong lĩnh vực xây dựng, sửa chữa nhà có năng lực kém,&nbsp;<br  />làm ăn không uy tín.<br  />Nhưng bạn cũng không cần phải quá lo lắng vì điều này, hãy đến với chúng tôi, công ty xây dựng&nbsp;<br  />Phương Đông có đội ngũ kỹ sư xây dựng, đội ngũ công nhân đông đảo, tay nghề cao với nhiều&nbsp;<br  />năm kinh nghiệm trong lĩnh vực xây dựng, sửa chữa nhà nhanh tại Hà Nội.<br  />Với kinh nghiệm cùng uy tín của mình, công ty xây dựng Phương Đông luôn nắm bắt được nhu&nbsp;<br  />cầu của khách hàng và nhanh chóng đưa ra những phương án, biện pháp thi công hiệu quả nhất&nbsp;<br  />vừa đảm bảo nhanh chóng, chất lượng, vừa đảm bảo được chi phí rẻ nhất cho khách hàng.<br  /><br  />Dịch vụ sửa chữa nhà giá rẻ nhất ở Hà Nội<br  />Cuộc sống hiện đại ngày càng vội vã, tất bật, thời gian trở nên đáng quý hơn bao giờ hết. Hiểu&nbsp;<br  />được điều này, để phục vụ quý khách, công ty xây dựng sửa chữa nhà Phương Đông đã đưa ra&nbsp;<br  />một quy trình làm việc chuyên nghiệp, nhanh nhất, hiệu quả nhất.<br  />1. Khách hàng gọi điện có nhu cầu tư vấn sửa chữa nhà nhanh &gt;&gt;&gt; chúng tôi tiếp nhận yêu cầu&nbsp;<br  />một cách chi tiết nhất.<br  />2. Dựa trên thông tin của khách hàng, chúng tôi phân tích và cử kỹ sư trực tiếp tại công trình của&nbsp;<br  />khách hàng để khảo sát và đưa ra hướng sửa chữa theo nhu cầu của khách hàng.<br  />3. Thống nhất phương án sửa chữa với khách hàng và bảng giá &gt;&gt;&gt; ký kết hợp đồng.<br  />4. Tiến hành thi công công trình một cách nhanh nhất theo bản kế hoạch hướng dẫn của kỹ sư&nbsp;<br  />xây dựng thiết kế.<br  />5. Nghiệm thu và bàn giao công trình cho người sử dụng dịch vụ sửa chữa nhà&nbsp;<br  /><br  />Dịch vụ sửa chữa nhà giá rẻ nhất Hà Nội<br  /><br  />Trong cuộc sống hiện đại ngày nay, để tiết kiệm thời gian và công sức thì các gia đình thường&nbsp;<br  />tìm đến các gói dịch vụ sửa chữa nhà nhanh, chất lượng. Với kinh nghiệm và năng lực của mình,&nbsp;<br  />công ty xây dựng Phương Đông luôn mang đến cho quý khách những gói dịch vụ sửa chữa nhà&nbsp;<br  />với chất lượng tốt nhất và chi phí rẻ nhất.<br  />Chúng tôi cam kết, thi công công trình một cách nhanh nhất, đáp ứng yêu cầu kỹ thuật trên từng&nbsp;<br  />hạng mục, đảm bảo chất lượng theo yêu cầu, độ bền song hành cùng thời gian.<br  />Công ty xây dựng Phương Đông sửa chữa nhà chất lượng uy tín hàng đầu tại Hà Nội.<br  />Bạn hãy liên hệ ngay để được giá ưu đãi trong hôm nay (dành cho 5 khách đầu tiên)<br  />Mọi chi tiết bạn vui lòng liên hệ theo:<br  />CÔNG TY BẢO TRÌ TÒA NHÀ NSC<br  />Hotline: (04)6295803 . 0916.89.8181<br  />Trụ sở chính: NGÕ 295 Bạch Mai Hai Bà Trung, Hà nội<br  />SĐT : 0916.89.8181 Mr.Long<br  />&nbsp;', '', 0, 0, 1, 1, 1, 0),
(20, 'Gia đình cần bán gấp nhà mặt phố Mã Mây diện tích bìa đỏ 124m thực tế 130m nhà 2 tầng cũ xác&nbsp;<br  />định mua đất, mặt tiền rộng 5,25m.<br  />Nhà có mặt tiền rộng, kinh doanh hiệu quả phù hợp để đầu tư khách sạn, nhà hàng…….Sổ đỏ&nbsp;<br  />chính chủ, 1 sổ giao dịch nhanh gọn thuận tiện.<br  />Giá bán 51 tỷ thương lượng.<br  />Liên hệ: Anh Lịch 0985861908', '', 0, 0, 1, 1, 1, 0),
(21, 'GQ-Windows Cung cấp các dòng sản phẩm cửa nhựa lõi&nbsp;<br  />thép, cầu thang kính, cửa nhôm kính, mặt dựng&nbsp;<br  />kính, cửa cuốn, cửa kéo,&nbsp;vách kính, bồn tắm kính,&nbsp;<br  />lan can kính nội ngoại thất&nbsp;các loại,… Với mẫu mã đa dạng&nbsp;<br  />phù hợp với mọi công trình kiến trúc từ truyền thống đến hiện đại&nbsp;<br  />mang tầm võ quốc tế,…&nbsp;', '', 0, 0, 1, 1, 1, 0),
(22, 'Công ty TNHH Công nghệ môi trường và Tự động hóa Minh Tân chuyên sản xuất và cung cấp&nbsp;<br  />\r\nnước cất 1 lần, nước cất 2 lần đạt tiêu chuẩn chất lượng cao giá rẻ nhất. Nước cất được trưng&nbsp;<br  />\r\ncất khép kín theo công nghệ Nhật Bản<br  />\r\n<br  />\r\nhttp://minhtaneta.com.vn/vn/san-pham/51-nuoc-cat.html<br  />\r\n<br  />\r\nNước cất 2 lần được dùng để làm thí nghiệm, rửa dụng cụ y tế, làm mát máy, đổ máy sản xuất&nbsp;<br  />\r\ncông nghiệp, pha chế hóa chất, được sử dụng rộng rãi trong các bệnh viện, cơ sở y tế, phòng&nbsp;<br  />\r\nkhám, phòng mổ, phòng xét nghiệm, dược phẩm, ... Ngoài ra, nước cất 1 lần, nước cất 2 lần còn&nbsp;<br  />\r\nđược dùng trong công nghiệp như đổ ắc quy điện, nồi hơi, và đặc biệt hiệu quả trong các thiết bị&nbsp;<br  />\r\ncơ khí chính xác (máy CNC, máy tiện, máy cắt, ...); ngành sản xuất vi mạch điện tử…<br  />\r\nhttp://minhtaneta.com.vn/vn/san-pham/57-nuoc-cat-1-lan.html<br  />\r\nNước cất 2 lần được sản xuất trên dây chuyền công nghệ hiện đại của Nhật Bản. Chất lượng sản&nbsp;<br  />\r\nphẩm luôn luôn được đảm bảo theo tiêu chuẩn Cục đo lường Việt Nam.<br  />\r\nhttp://minhtaneta.com.vn/vn/san-pham/52-nuoc-cat-2-lan.html<br  />\r\nCông ty chúng tôi sẽ cung cấp đầy đủ tài liệu về tiêu chuẩn chất lượng sản phẩm cho quý khách&nbsp;<br  />\r\nhàng.<br  />\r\n<br  />\r\nChỉ tiêu kỹ thuật&nbsp;<br  />\r\n1. Hàm lượng cặn SiO2, mg/l ≤ 0.02&nbsp;<br  />\r\n2. Amoniac và muối amoni (NH4), mg/l ≤ 0,00&nbsp;<br  />\r\n3. Sunfat (SO4), mg/l ≤ 0,4&nbsp;<br  />\r\n4. Clrua (Cl), mg/l ≤ 0,02&nbsp;<br  />\r\n5. Sắt (Fe), mg/l ≤ 0,01&nbsp;<br  />\r\n6. Đồng (Cu), mg/l ≤ 0,0001&nbsp;<br  />\r\n7. Nhôm (Al), mg/l ≤ 0,001&nbsp;<br  />\r\n8. Độ cứng (Ca + Mg), mg/l ≤ 0,00&nbsp;<br  />\r\n9. pH 5,5-6,5&nbsp;<br  />\r\n10. Độ dẫn điện riêng, MS.cm-1 ≤ 1&nbsp;<br  />\r\n11. Tổng chất rắn hoà tan (TDS) ≤ 0,5&nbsp;<br  />\r\n<br  />\r\nNước cất 2 lần có chất lượng tương đương với nước dùng trong phòng thí nghiệm để phân tích&nbsp;<br  />\r\nloại 2 theo TCVN 4851-89 (ISO 3696-1987)<br  />\r\n<br  />\r\nBên cạnh đó chúng tôi còn kinh doanh trên nhiều lĩnh vực khác:&nbsp;<br  />\r\n<br  />\r\n• Hệ thống xử lý nước bệnh viện, máy chạy thận nhân tạo, máy lọc nước xét nghiệm y tế<br  />\r\nhttp://minhtaneta.com.vn/vn/san-pham/49-xu-ly-nuoc-phuc-vu-y-te.html<br  />\r\n<br  />\r\nChúng tôi luôn sẵn sàng đáp ứng mọi yêu cầu của Qúy khách hàng trên toàn quốc. Nếu bạn có&nbsp;<br  />\r\nnhu cầu hãy liên hệ tới chúng tôi để nhận được sự tư vấn và báo giá tốt nhất.<br  />\r\n<br  />\r\nMọi chi tiết xin vui lòng liên hệ:<br  />\r\n<br  />\r\nĐinh Văn Cơ – Sales Manager<br  />\r\nCông ty TNHH Công nghệ MT và Tự động hóa Minh Tân<br  />\r\nTrụ sở: Số 2, ngách 250/16, Đường Kim Giang, Đại Kim, Hoàng Mai, Hà Nội.<br  />\r\nTel: 043.5592807 – Fax: 043.5592806<br  />\r\n<br  />\r\nHotline 0975.293.246&nbsp;<br  />\r\nEmail : dinhcoeta@gmail.com<br  />\r\nWebsite: http://www.minhtaneta.com.vn', 'Hoàng Mai, Hà Nội', 0, 0, 1, 1, 1, 0),
(27, 'Đất 1000m2 cạnh khu du lịch Bình Quới 1 giá 10tr/th<br  />Hiện nay tôi có 1000m2 đất ngay cạnh khu du lịch Bình Quới 1 cho thuê làm nhà hàng, kho xưởng.&nbsp;<br  />Hiện đất nên được đổ cao không không ngập nước. Cách mặt đường 30m2 thuận tiện xe tải vào&nbsp;<br  />nhận trả hàng. Đất cũng có thể thuê làm quá cà phê, nhà hàng...<br  />Đất có thể thuê lâu dài.<br  />Ai có nhu cầu liên hệ chính chủ: 0909350299 (A Tiệp)<br  />&nbsp;', '0909350299', 0, 0, 1, 1, 1, 0),
(25, '<font color="rgb(51, 204, 0);"><b><font size="3">BỘ TÀI NGUYÊN VÀ MÔI TRƯỜNG</font></b></font><br  /><b><font size="3">LIÊN ĐOÀN QUY HOẠCH VÀ ĐIỀU TRA TÀI NGUYÊN NƯỚC MIỀN NAM</font></b><br  /><font color="rgb(0, 0, 255);"><b><font size="3">ĐOÀN VẬT TƯ NGÀNH NƯỚC MIỀN NAM</font></b></font><br  /><font color="rgb(255, 0, 0);"><b><font size="3">Tel: 083 7408370&nbsp;&nbsp; Hotline: 0913 682156&nbsp; Fax: 08 6296 0179</font></b></font><br  /><br  /><font size="3"><i><b>Kính chào Quý khách&nbsp;</b></i></font><br  /><br  /><b><font size="3"><font color="rgb(255, 0, 0);">ĐOÀN VẬT TƯ NGÀNH NƯỚC MIỀN NAM (ĐOÀN 805)</font>&nbsp;xin gởi đến quý khách lời chúc sức khỏe và lời chào trân trọng nhất.</font></b><br  /><br  /><font size="3"><font color="rgb(0, 0, 255);"><b>ĐOÀN VẬT TƯ NGÀNH NƯỚC MIỀN NAM (ĐOÀN 805)</b></font>&nbsp;là đơn vị trược thuộc&nbsp;<font color="rgb(0, 153, 0);"><b>BỘ TÀI NGUYÊN VÀ MÔI TRƯỜNG</b></font>, với nhiều năm trong ngành kinh doanh và mua bán&nbsp;<b><font color="rgb(255, 0, 0);">MÁY KHOAN GIẾNG</font></b>&nbsp;và&nbsp;<b><font color="rgb(255, 0, 0);">VẬT TƯ KHOAN</font></b>&nbsp;địa chất Đến với&nbsp;<font color="rgb(0, 0, 255);"><b>ĐOÀN VẬT TƯ NGÀNH NƯỚC MIỀN NAM</b></font>, quý khách hàng sẽ luôn&nbsp;<font color="rgb(0, 102, 255);"><b>an tâm</b></font>&nbsp;và&nbsp;<font color="rgb(0, 102, 255);"><b>hài lòng</b></font>&nbsp;bởi các dịch vụ như: Tư vấn chọn vật tư, thiết bị, sản phẩm, vận hành, lắp đặt, bảo dưỡng bảo trì các thiết bị và dụng cụ khoan phù hợp, báo giá chào hàng cạnh tranh, hồ sơ hợp lệ để dự thầu, thanh quyết toán, giải ngân các dự án..</font><br  /><br  /><i><b><font size="3">Nhập khẩu và cung ứng vật tư, thiết bị</font></b></i><br  /><font size="3">là đơn vị trực tiếp nhập khẩu và phân phối các loại thiết bị vật tư đến chân công trình:</font><br  /><br  /><font color="rgb(255, 0, 0);"><i><b><font size="3">1/Thiết bị:</font></b></i></font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp;<font color="rgb(255, 0, 0);">&nbsp;- MÁY KHOAN XY-1 (3 SỐ),</font>&nbsp;khoan được độ sâu 100m (hãng Stonewell, Kinh Địa, Kinh Thám…)</font><br  /><font size="3">&nbsp;&nbsp;&nbsp; -&nbsp;<font color="rgb(255, 0, 0);">MÁY KHOAN XY-1A-4 (5 SỐ)</font>, khoan được độ sâu 150m (hãng Stonewell, Kinh Địa, Kinh Thám…)</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;<font color="rgb(255, 0, 0);">MÁY KHOAN GK 50, GK 180, GK 250</font></font><br  /><font size="3">&nbsp;&nbsp;&nbsp; -&nbsp;<font color="rgb(255, 0, 0);">MÁY KHOAN GJ 200, GJ 250 (4 SỐ), MÁY GJ200 4 TY LỚN</font>, khoan được độ sâu 200-250m (hãng Stonewell, Kinh Địa, Kinh Thám…)</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; - Máy khoan đập..</font><br  /><font size="3">&nbsp;&nbsp;&nbsp; - Máy khoan kiểm tra bê tông: Z1Z CF 130 (160.180) Trung Quốc, DK-16 (218,24) Hàn Quốc</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; - Máy cắt cánh hiện trường: ZSZ-1.2.3.4</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; - Máy bơm nước (bê tông) BW 250-BW320, thùng trộn bê tông</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; Các loại thiết bị khảo sát khác theo nhu cầu khách hàng.</font><br  /><br  /><i><font color="rgb(255, 0, 0);"><b><font size="3">2/ Bộ dụng cụ lấy mẫu chuyên dụng:</font></b></font></i><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; - Bộ ống mẫu chuyên dụng, tự đóng gói mẫu Nhật Bản</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;<font color="rgb(255, 0, 0);">Bộ ống mẫu T286</font>&nbsp;(Atlas Copco Thụy Điển, Nam Phi)</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;<font color="rgb(255, 0, 0);">Bộ ống mẫu pít tông Hà Lan</font>&nbsp;(lấy mẫu bùn)</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; - Bộ ống mẫu 2 nòng Trung Quốc</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; - Bộ ống mẫu SPT kiểu Trung Quốc, Hà Nội và Đoàn 805</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; - Bộ ống mẫu nguyên dạng Ø 73.91.108</font><br  /><br  /><font color="rgb(255, 0, 0);"><i><b><font size="3">&nbsp;3/ Các loại lưỡi khoan:</font></b></i></font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;<font color="rgb(255, 0, 0);">Lưỡi khoan Kim cương</font>, hợp kim các loại: Ø 44, 54, 63, 76, 89, 93, 108, 127, 146, 178, 189, 219….360, 540 (có chủng loại khác theo yêu cầu)</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; - Lưỡi khoan bê tông (răng phải, răng trái)</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;<font color="rgb(255, 0, 0);">Lưỡi khoan T286</font>, mở rộng thành, hom, cốc, ống đón mẫu (Nam Phi)</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; - Lưỡi xoắn ruột gà Ø 60, 76, 91, 108, 127</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; - Cây xoắn neo tàu, neo máy: Ø 146, 180</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; - Mũi khoan 3 chóp, Mũi khoan đập (Hammer)</font><br  /><br  /><font size="3">&nbsp;<font color="rgb(255, 0, 0);"><i><b>4/ Dụng cụ, phụ tùng khảo sát:</b></i></font></font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; - Khóa tháo mở cần ống: vinca, gọng ô, khóa xích, khơ mút, cá sấu, quang treo, êlêvatơ, bộ đồ nghề thi công khoan</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; - Cần khoan, ống khoan, ống chống (thành mỏng, thành dày)</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; - Phụ tùng thay thế sửa chữa: Xi lanh, pit tông, vỏ máy, vỏ bơm, các loại bánh răng, trục hộp số, vòng bi, phe, chốt, phớt</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; Các loại phụ tùng khác theo yêu cầu của khách hàng.</font><br  /><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="rgb(255, 0, 0);"><b>XƯỞNG CƠ KHÍ</b></font>&nbsp;chuyên phục vụ Gia Công, chế tạo hàng chuyên dụng Khoan, có máy tiện được các loại Ống có đường kính lớn.</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; Ngoài ra còn nhận sản xuất gia công theo yêu cầu khách hàng các sản phẩm khảo sát địa chất, khoan giếng nước, khoan bê tông.</font><br  /><br  /><font color="rgb(255, 0, 0);"><i><b><font size="3">&nbsp;5/ Dung dịch khoan:</font></b></i></font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; - Sét nước ngọt, nước mặn (Sodium-API), phụ gia của Việt Nam, Ấn Độ, Úc</font><br  /><font size="3">Tất cả các sản phẩm dịch vụ của đơn vị đều được bảo hành miễn phí theo kỹ thuật sản xuất và chế tạo.</font><br  /><br  /><b><font size="3">MỌI CHI TIẾT XIN VUI LÒNG LIÊN HỆ</font></b><br  /><b><font color="rgb(0, 0, 255);" size="3">ĐOÀN VẬT TƯ NGÀNH NƯỚC MIỀN NAM (ĐOÀN 805)</font></b><br  /><font size="3">Địa chỉ: Số 59 đường số 2, phường Bình An, Quận 2 TP Hồ Chí Minh (gần chân cầu Sài Gòn)</font><br  /><font size="3">Hotline:&nbsp;<font color="rgb(255, 0, 0);"><b>0913 682 156 (Mr Nhân)</b></font>&nbsp; –&nbsp;&nbsp;<font color="rgb(255, 0, 0);"><b>08 37408370</b></font>&nbsp;&nbsp;&nbsp; Fax:&nbsp;<font color="rgb(255, 0, 0);"><b>086 296 0179</b></font></font>', '', 0, 0, 1, 1, 1, 0),
(26, 'Máy hút ẩm công nghiệp Harison HD 504B<br  />Giá bán : 88.000.000 Đ<br  />Máy hút ẩm Harison được sử dụng hút ẩm cho các loại kho bảo quản,phòng sản xuất, phòng&nbsp;<br  />sấy khô sản phẩm…có độ ẩm yêu cầu từ 40% trở lên, có nguồn điện 3 pha, yêu cầu công suất&nbsp;<br  />lớn và độ bền cao.&nbsp;<br  /><br  />* Đặc điểm Harison HD 504B<br  />÷ Nguyên lý hút ẩm: ngưng tụ lạnh nhờ sử dụng máy nén lạnh<br  />÷ Vận hành tự động hoàn toàn<br  />÷ Nút nhấn cảm ứng (mạch điều khiển ẩm tự động)<br  />÷ Xả nước liên tục qua ống dẫn<br  />÷ Lọc khí bằng nylon (Rửa được)<br  /><br  />* Thông số kỹ thuật HD 504B<br  />÷ Công suất hút ẩm: 21 lít/giờ (ở điều kiện 30oC, 80%)<br  />÷ Lưu lượng gió danh định: 4500 m3/giờ.<br  />÷ Công suất điện tiêu thụ: 8,5kW<br  />÷ Dòng danh định: 15,4A<br  />÷ Độ ồn: 65dB<br  />÷ Nguồn điện: 380V/50Hz/3 pha<br  />÷ Kích thước: 1225 (Ngang) x 520 (dày) x 1761 (cao), mm<br  />÷ Khối lượng: 235 kg<br  /><br  />Quý khách hàng mua sản phẩm Máy hút ẩm cho kho sản xuất của chúng tôi sẽ được hưởng&nbsp;<br  />những quyền lợi sau:<br  />- Bán đúng giá<br  />- Giao hàng miễn phí tại nhà ( 6 quận nội thành Hà Nội cũ)<br  />- Hàng không đúng quy cách chủng loại sẽ được đổi mới<br  />- Mua nhiều triết khấu cao,giá rẻ<br  /><br  />------------------------------------------<br  />Mọi thông tin chi tiết vui lòng liên hệ<br  />CÔNG TY TNHH ĐẦU TƯ PHÁT TRIỂN PROBUY<br  />Văn phòng giao dịch: Số 141 Hoàng Văn Thái, Thanh Xuân, Hà Nội<br  />Tel : 84.4.62857580/82 - Fax : 84.4.35667485<br  />Kinh doanh: Ms. Thảo 0966.896.588 - 0926.865.409<br  />Ms. Hương092.762.0000 - 0904.22.44.53<br  />Website: wwww.probuy.com.vn<br  />&nbsp;', '', 0, 0, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_logs`
--

CREATE TABLE `nv4_vi_news_logs` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `sid` mediumint(8) NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `set_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_rows`
--

CREATE TABLE `nv4_vi_news_rows` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_rows`
--

INSERT INTO `nv4_vi_news_rows` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(37, 21, '21', 0, 1, 'HCM', 0, 1464679758, 1464679758, 1, 1464679758, 0, 1, 'Cáp tín hiệu AWG Hosiwell 2x1.5mm2', 'Cap-tin-hieu-AWG-Hosiwell-2x1-5mm2', '', '', '', 0, 1, '4', 1, 4, 0, 0, 0),
(38, 18, '18', 0, 1, 'TP Huế', 0, 1464679929, 1464679929, 1, 1464679929, 0, 1, 'In tại xưởng offset namecard, catalogue', 'In-tai-xuong-offset-namecard-catalogue', '', '', '', 0, 1, '4', 1, 4, 0, 0, 0),
(39, 24, '24', 0, 1, 'HCM', 0, 1464760606, 1464760606, 1, 1464760606, 0, 1, 'Cho Vay Góp Ngày Không Thế Chấp', 'Cho-Vay-Gop-Ngay-Khong-The-Chap', '', '', '', 0, 1, '4', 1, 1, 0, 0, 0),
(40, 22, '22', 0, 1, 'Hà Nội', 0, 1464760714, 1464760714, 1, 1464760714, 0, 1, 'Cần tuyển gấp lao động tại Nhật Bản 2', 'Can-tuyen-gap-lao-dong-tai-Nhat-Ban-2', '', '', '', 0, 1, '4', 1, 6, 0, 0, 0),
(41, 24, '24', 0, 2, '', 0, 1464876446, 1464876446, 1, 1464876446, 0, 1, 'test test test', 'test-test-test', '', '', '', 0, 1, '4', 1, 0, 0, 0, 0),
(42, 24, '24', 0, 2, 'Ban Mê Thuột', 0, 1464876777, 1464876777, 1, 1464876777, 0, 1, '123 test test test', '123-test-test-test', '', '', '', 0, 1, '4', 1, 0, 0, 0, 0),
(34, 23, '23', 0, 1, 'Hà Nội', 0, 1464608075, 1464608075, 1, 1464608075, 0, 1, 'Dịch vụ sửa chữa nhà giá rẻ nhất tại Hà Nội 1', 'Dich-vu-sua-chua-nha-gia-re-nhat-tai-Ha-Noi-1', '', '', '', 0, 1, '4', 1, 0, 0, 0, 0),
(35, 18, '18', 0, 1, '', 0, 1464608636, 1464608636, 1, 1464608636, 0, 1, 'Đầu thu Kỹ thuật số DVB-T2 chỉ với 550k', 'Dau-thu-Ky-thuat-so-DVB-T2-chi-voi-550k', '', '', '', 0, 1, '4', 1, 2, 0, 0, 0),
(36, 21, '21', 0, 1, 'HCM', 0, 1464608708, 1464608708, 1, 1464608708, 0, 1, 'Bán máy làm mát không khí.', 'Ban-may-lam-mat-khong-khi', '', '', '', 0, 1, '4', 1, 0, 0, 0, 0),
(29, 10, '10', 0, 1, 'HCM', 0, 1464607661, 1464607661, 1, 1464607661, 0, 1, 'Trang trí nội thất, Sửa chữa Xây Dựng', 'Trang-tri-noi-that-Sua-chua-Xay-Dung', '', '', '', 0, 1, '4', 1, 1, 2, 0, 0),
(30, 10, '10', 0, 1, '', 0, 1464607725, 1464607725, 1, 1464607725, 0, 1, 'Bán căn 2PN tầng 16 Seasons Avenue', 'Ban-can-2PN-tang-16-Seasons-Avenue', '', '', '', 0, 1, '4', 1, 2, 0, 0, 0),
(31, 17, '17', 0, 1, 'HCM', 0, 1464607784, 1464607784, 1, 1464607784, 0, 1, 'Lenovo Thinkpad T450 Broadwell I5 5300U 2.3Gh', 'Lenovo-Thinkpad-T450-Broadwell-I5-5300U-2-3Gh', '', '', '', 0, 1, '4', 1, 1, 0, 0, 0),
(32, 11, '11', 0, 1, 'HCM', 0, 1464607937, 1464607937, 1, 1464607937, 0, 1, 'Xe 4 chỗ camry màu đen tại tphcm', 'Xe-4-cho-camry-mau-den-tai-tphcm', '', '', '', 0, 1, '4', 1, 0, 0, 0, 0),
(33, 24, '24', 0, 1, 'HCM', 0, 1464607981, 1464607981, 1, 1464607981, 0, 1, 'đại lÝ vé máy bay tại tphcm - du lịch nét việt', 'dai-lY-ve-may-bay-tai-tphcm-du-lich-net-viet', '', '', '', 0, 1, '4', 1, 1, 0, 0, 0),
(20, 2, '2', 0, 2, 'Hoàng Mai, Hà Nội', 0, 1464448831, 1465010671, 1, 1465010671, 0, 1, 'Bán gấp nhà mặt phố Mã Mây 130m mặt tiền 5', 'Ban-gap-nha-mat-pho-Ma-May-130m-mat-tien-5', '', '', '', 0, 1, '4', 1, 7, 0, 0, 0),
(21, 22, '22', 0, 2, 'Đắc Lắc', 0, 1464449414, 1465010717, 1, 1465010717, 0, 1, 'cung cấp cửa nhựa lõi thép, cầu thang rẻ', 'cung-cap-cua-nhua-loi-thep-cau-thang-re', '', '', '', 0, 1, '4', 1, 7, 0, 0, 0),
(22, 20, '20', 0, 1, 'Hà Nội', 8, 1464512747, 1464604964, 1, 1464512700, 0, 2, 'Bán buôn, bán lẻ nước cất 1 lần, 2 lần, nước', 'Ban-buon-ban-le-nuoc-cat-1-lan-2-lan-nuoc', '', '', '', 0, 1, '4', 1, 2, 0, 0, 0),
(28, 24, '24', 0, 1, 'HCM', 0, 1464607503, 1464607503, 1, 1464607503, 0, 1, 'Dịch vụ cho thuê xe 45 tại tphcm', 'Dich-vu-cho-thue-xe-45-tai-tphcm', '', '', '', 0, 1, '4', 1, 1, 0, 0, 0),
(27, 10, '10', 0, 1, 'HCM', 0, 1464607413, 1464607413, 1, 1464607413, 0, 1, 'Đất 1000m2 cạnh Khu DL B Quới I giá 10tr&#x002F;th', 'Dat-1000m2-canh-Khu-DL-B-Quoi-I-gia-10tr-th', '', '', '', 0, 1, '4', 1, 3, 2, 0, 0),
(25, 21, '21', 0, 2, 'Sài Gòn', 0, 1464604126, 1465011481, 1, 1465011481, 0, 1, 'BÁN MÁY KHOAN GIẾNG - ĐOÀN VẬT TƯ &#40;Đoàn 805&#41;', 'BAN-MAY-KHOAN-GIENG-DOAN-VAT-TU-Doan-805', '', '', '', 0, 1, '4', 1, 2, 0, 0, 0),
(26, 21, '21', 0, 2, 'Thanh Xuân, Hà Nội', 0, 1464604220, 1464604220, 1, 1464604220, 0, 1, 'Máy hút ẩm công nghiệp Harison HD 504B', 'May-hut-am-cong-nghiep-Harison-HD-504B', '', '', '', 0, 1, '4', 1, 4, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_sources`
--

CREATE TABLE `nv4_vi_news_sources` (
  `sourceid` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) UNSIGNED NOT NULL,
  `edit_time` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_sources`
--

INSERT INTO `nv4_vi_news_sources` (`sourceid`, `title`, `link`, `logo`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Báo Hà Nội Mới', 'http://hanoimoi.com.vn', '', 1, 1274989177, 1274989177),
(2, 'VINADES.,JSC', 'http://vinades.vn', '', 2, 1274989787, 1274989787),
(3, 'Báo điện tử Dân Trí', 'http://dantri.com.vn', '', 3, 1322685396, 1322685396),
(4, 'Bộ Thông tin và Truyền thông', 'http://http://mic.gov.vn', '', 4, 1445309676, 1445309676),
(5, 'Xu xu', '', '', 5, 1464509092, 1464509092),
(6, 'Hà Nội', '', '', 6, 1464509314, 1464509314),
(7, 'HCM', '', '', 7, 1464603355, 1464603355),
(8, 'Hoàng Mai, Hà Nội', '', '', 8, 1464604819, 1464604819);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_tags`
--

CREATE TABLE `nv4_vi_news_tags` (
  `tid` mediumint(8) UNSIGNED NOT NULL,
  `numnews` mediumint(8) NOT NULL DEFAULT '0',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_tags`
--

INSERT INTO `nv4_vi_news_tags` (`tid`, `numnews`, `alias`, `image`, `description`, `keywords`) VALUES
(1, 0, 'nguồn-mở', '', '', 'nguồn mở'),
(2, 0, 'quen-thuộc', '', '', 'quen thuộc'),
(3, 0, 'cộng-đồng', '', '', 'cộng đồng'),
(4, 0, 'việt-nam', '', '', 'việt nam'),
(5, 0, 'hoạt-động', '', '', 'hoạt động'),
(6, 0, 'tin-tức', '', '', 'tin tức'),
(7, 0, 'thương-mại-điện', '', '', 'thương mại điện'),
(8, 0, 'điện-tử', '', '', 'điện tử'),
(9, 0, 'nukeviet', '', '', 'nukeviet'),
(10, 0, 'vinades', '', '', 'vinades'),
(11, 0, 'lập-trình-viên', '', '', 'lập trình viên'),
(12, 0, 'chuyên-viên-đồ-họa', '', '', 'chuyên viên đồ họa'),
(13, 0, 'php', '', '', 'php'),
(14, 0, 'mysql', '', '', 'mysql'),
(15, 0, 'nhân-tài-đất-việt-2011', '', '', 'nhân tài đất việt 2011'),
(16, 0, 'mã-nguồn-mở', '', '', 'mã nguồn mở'),
(17, 0, 'nukeviet4', '', '', 'nukeviet4'),
(18, 0, 'mail', '', '', 'mail'),
(19, 0, 'fpt', '', '', 'fpt'),
(20, 0, 'smtp', '', '', 'smtp'),
(21, 0, 'bootstrap', '', '', 'bootstrap'),
(22, 0, 'block', '', '', 'block'),
(23, 0, 'modules', '', '', 'modules'),
(24, 0, 'banner', '', '', 'banner'),
(25, 0, 'liên-kết', '', '', 'liên kết'),
(26, 0, 'hosting', '', '', 'hosting'),
(27, 0, 'hỗ-trợ', '', '', 'hỗ trợ'),
(28, 0, 'hợp-tác', '', '', 'hợp tác'),
(29, 0, 'tốc-độ', '', '', 'tốc độ'),
(30, 0, 'website', '', '', 'website'),
(31, 0, 'bảo-mật', '', '', 'bảo mật'),
(32, 0, 'giáo-dục', '', '', 'giáo dục'),
(33, 0, 'edu-gate', '', '', 'edu gate'),
(34, 0, 'lập-trình', '', '', 'lập trình'),
(35, 0, 'logo', '', '', 'logo'),
(36, 0, 'code', '', '', 'code'),
(37, 0, 'thực-tập', '', '', 'thực tập'),
(38, 0, 'kinh-doanh', '', '', 'kinh doanh'),
(39, 0, 'nhân-viên', '', '', 'nhân viên'),
(40, 0, 'bộ-gd&đt', '', '', 'Bộ GD&ĐT'),
(41, 0, 'module', '', '', 'module'),
(42, 0, 'php-nuke', '', '', 'php-nuke');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_tags_id`
--

CREATE TABLE `nv4_vi_news_tags_id` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_topics`
--

CREATE TABLE `nv4_vi_news_topics` (
  `topicid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_topics`
--

INSERT INTO `nv4_vi_news_topics` (`topicid`, `title`, `alias`, `image`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(1, 'NukeViet 4', 'NukeViet-4', '', 'NukeViet 4', 1, 'NukeViet 4', 1445396011, 1445396011);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_page`
--

CREATE TABLE `nv4_vi_page` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_page`
--

INSERT INTO `nv4_vi_page` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `gid`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`) VALUES
(1, 'QUY ĐỊNH SỬ DỤNG', 'QUY-DINH-SU-DUNG', '', '', 0, '', '<p align="left">1. Bạn phải chấp nhận và tuân thủ các quy định dưới đây.<br  />\r\n<br  />\r\n2. Không được phép đăng tải các thông tin mà Nhà Nước Việt Nam cấm, các vấn đề nhạy cảm, cũng như các thông tin trái với đạo đức xã hội Việt Nam, cụ thể:&nbsp;&nbsp;</p>\r\n\r\n<p align="left"><b>&nbsp;&nbsp;&nbsp; A. Hàng hóa&nbsp;&nbsp;&nbsp;</b></p>\r\n\r\n<ul>\r\n	<li>Vũ khí quân dụng, trang thiết bị, kỹ thuật, khí tài, phương tiện chuyện dùng quân sự, công an; quân trang (bao gồm cả phù hiệu, cấp hiệu, quân hiệu của quân đội, công an), quân dụng cho lực lượng vũ trang; linh kiện, bộ phận, phụ tùng, vật tư và trang thiết bị đặc chủng, công nghệ chuyên dùng chế tạo chúng Nghị định số 47/CP ngày 12/8/1996; Nghị định số 100/2005/NĐ-CP Bộ Quốc phòng, Bộ Công an</li>\r\n	<li>Các chất ma túy Luật Phòng, chống ma tuý năm 2000; 67/2001/NĐ-CP; Nghị định số 133/2003/NĐ-CP Bộ Công an</li>\r\n	<li>Hóa chất bảng 1 (theo Công ước quốc tế) Nghi định CP số 100/2005/NĐ-CP Bộ Công nghiệp</li>\r\n	<li>Các sản phẩm văn hóa phản động, đồi trụy, mê tín dị đoan hoặc có hại tới giáo dục thẩm mỹ, nhân cách Luật Xuất bản năm 2004; Nghị định số 03/2000/NĐ-CP Bộ Văn hóa – Thông tin, Bộ Công an</li>\r\n	<li>Các loại pháo Nghị định số 03/2000/NĐ-CP Bộ Công an</li>\r\n	<li>Đồ chơi nguy hiểm, đồ chơi có hại tới giáo dục nhân cách và sức khỏe của trẻ em hoặc tới an ninh, trật tự, an toàn xã hội (bao gồm các chương trình trò chơi điện tử) Nghị định 03/2000/NĐ-CP Bộ Công an</li>\r\n	<li>Thuốc thú y, thuốc bảo vệ thực vật cấm hoặc chưa được phép sử dụng tại Việt Nam theo quy định tại Pháp lệnh Thú y, Pháp lệnh Bảo vệ và kiểm dịch thực vật Pháp lệnh thú năm 2004; Pháp lệnh Bảo vệ và kiểm dịch thực vật năm 2001 Bộ Nông nghiệp và Phát triển Nông thôn, Bộ Thủy sản</li>\r\n	<li>Thực vật, động vật hoang dã (bao gồm cả vật sống và các bộ phận của chúng đã được chế biến) thuộc danh mục điều ước quốc tế mà Việt Nam là thành viên quy định và các loại thực vật, động vật quý hiếm thuộc danh mục cấm khai thác và sử dụng Công ước CITTES; Nghị định số 32/2006/NĐ-CP Bộ Nông nghiệp và Phát triển Nông thôn, Bộ Thủy sản</li>\r\n	<li>Thủy sản cấm khai thác, thủy sản có dư lượng chất độc hại vượt quá giới hạn cho phép, thủy sản có độc tố tự nhiên gây nguy hiểm đến tính mạng của con người Luật Thủy sản năm 2003 Bộ Thủy sản</li>\r\n	<li>Phân bón không có trong danh mục được phép sản xuất, kinh doanh và sử dụng tại Việt Nam Nghị định số 113/2003/NĐ-CP Bộ Nông nghiệp và Phát triển Nông thôn</li>\r\n	<li>Giống cây trồng không có trong danh mục được phép sản xuất, kinh doanh; giống cây trồng gây hại đến sản xuất và sức khỏe con người, môi trường, hệ sinh thái Pháp lệnh Giống cây trồng năm 2004</li>\r\n	<li>Giống vật nuôi không có trong danh mục được phép sản xuất, kinh doanh; giống vật nuôi gây hại cho sức khỏe con người, nguồn gen vật nuôi, môi trường, hệ sinh thái Pháp lệnh Giống vật nuôi năm 2004 Bộ Nông nghiệp và Phát triển Nông thôn, Bộ Thủy sản</li>\r\n	<li>Khoáng sản đặc biệt, độc hại Luật Khoáng sản năm 1996; Nghị định 160/2005/NĐ-CP Bộ Tài nguyên và Môi trường</li>\r\n	<li>Phế liệu nhập khẩu gây ô nhiễm cho môi trường Nghị định 175/CP ngày 18/10/1994 Bộ Tài nguyên và Môi trường</li>\r\n	<li>Các loại thuốc chữa bệnh cho người, các loại vắc xin, sinh phẩm y tế, mỹ phẩm, hóa chất và chế phẩm diệt côn trùng, diệt khuẩn trong lĩnh vực gia dụng và y tế chưa được phép sử dụng tại Việt Nam Luật Dược năm 2005; Pháp lệnh Hành nghề y dược tư nhân năm 2003 Bộ Y tế</li>\r\n	<li>Các loại trang thiết bị y tế chưa được phép sử dụng tại Việt Nam Pháp lệnh Hành nghề y dược tư nhân năm 2003 Bộ Y tế</li>\r\n	<li>Phụ gia thực phẩm, chất hỗ trợ chế biến thực phẩm, vi chất dinh dưỡng, thực phẩm chức năng, thực phẩm có nguy cơ cao, thực phẩm được bảo quản bằng phương pháp chiếu xạ, thực phẩm có gen đã bị biến đổi chưa được cơ quan nhà nước có thẩm quyền cho phép Pháp lệnh Vệ sinh an toàn thực phẩm năm 2003 Bộ Y tế</li>\r\n	<li>Sản phẩm, vật liệu có chứa amilăng thuộc nhóm amfibole Nghị định 12/2006/NĐ-CP Bộ Xây dựng</li>\r\n	<li>Thuốc lá điếu, xì gà và các dạng thuốc lá thành phẩm khác nhập lậu Nghị định này Bộ Công Thương</li>\r\n</ul>\r\n\r\n<p align="left"><b>&nbsp;&nbsp; B. Dịch vụ&nbsp;&nbsp;&nbsp;</b></p>\r\n\r\n<p align="left">&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Kinh doanh mại dâm, tổ chức mại dâm, buôn bán phụ nữ, trẻ em Nghị định 03/2000/NĐ-CP Bộ Công an</li>\r\n	<li>Tổ chức đánh bạc, gá bạc dưới mọi hình thức Nghị định 03/2000/NĐ-CP Bộ Công an</li>\r\n	<li>Dịch vụ điều tra bí mật xâm phạm lợi ích của nhà nước, quyền và lợi ích hợp pháp của tổ chức, cá nhân Nghị định 14/2001/NĐ-CP Bộ Công an</li>\r\n	<li>Hoạt động kinh doanh môi giới kết hôn có yếu tố nước ngoài nhằm mục đích kiếm lời Nghị định 68/2002/NĐ-CP Bộ Tư pháp</li>\r\n	<li>Hoạt động kinh doanh môi giới nhận cha, mẹ, con, nuôi con nuôi có yếu tố nước ngoài nhằm mục đích kiếm lời Nghị định 68/2002/NĐ-CP Bộ Tư pháp</li>\r\n</ul>\r\n<b>&nbsp;&nbsp; C. Thông tin khác</b>\r\n\r\n<ul>\r\n	<li>Không dùng từ ngữ thiếu văn hóa, không thách thức, nói xấu lẫn nhau.</li>\r\n	<li>Không được phép cố tình truy cập vào tài khoản của người khác.</li>\r\n	<li>Các website có nội dung tương tự raovat.net không được mượn website này để đăng quảng cáo.</li>\r\n</ul>\r\n3. Các tin đăng không phù hợp với mục tin sẽ bị xoá.\r\n\r\n<p align="left"><br  />\r\n4. Chúng tôi giữ quyền quyết định về việc lưu giữ hay loại bỏ tin đã đăng trên trang web này mà không cần báo trước, tất cả mọi sự vi phạm của bạn vào một hay nhiều điều khoản đã được ghi trong quy định này đều sẽ dẫn đến việc tin đăng, tài khoản, tư cách thành viên của bạn sẽ bị hủy bỏ. Bạn bị cấm tham gia vào mọi hoạt động của hệ thống.<br  />\r\n<br  />\r\n5. Tất cả tin đăng trên website này đều thuộc về chính người đăng tin, chúng tôi không chịu trách nhiệm và không bảo đảm về tính chính xác của những thông tin từ các thành viên gởi tin đăng mua bán, rao vặt, và cũng không chịu bất cứ trách nhiệm pháp lý hoặc bồi thường thiệt hại nào về việc mất mát hay hư hỏng đối với những tin đã đăng cũng như các vấn đề phát sinh khác.<br  />\r\n<br  />\r\n6. Website raovat.net hay bất kỳ website nào tương tự hoạt động ổn định và lâu dài đều cần phải có sự hỗ trợ, tương tác, đóng góp của các thành viên và các nhà tài trợ. Vì vậy chúng tôi rất mong sự cảm thông của các thành viên đối với việc xuất hiện các thông tin quảng cáo của các nhà tài trợ khác trong khuôn khổ hiển thị bản tin của mình.<br  />\r\n<br  />\r\n*&nbsp;Chúng tôi có toàn quyền thay đổi một hay nhiều điều khoản có trong quy định này mà không cần giải thích lý do và cũng không cần phải thông báo trước.<br  />\r\n<br  />\r\nBQT,<br  />\r\nAzvnn.com</p>', 'quy định sử dụng', 1, '4', '', 0, 1, 1, 1464762034, 1464762034, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_page_config`
--

CREATE TABLE `nv4_vi_page_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_page_config`
--

INSERT INTO `nv4_vi_page_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_referer_stats`
--

CREATE TABLE `nv4_vi_referer_stats` (
  `host` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `month01` int(11) NOT NULL DEFAULT '0',
  `month02` int(11) NOT NULL DEFAULT '0',
  `month03` int(11) NOT NULL DEFAULT '0',
  `month04` int(11) NOT NULL DEFAULT '0',
  `month05` int(11) NOT NULL DEFAULT '0',
  `month06` int(11) NOT NULL DEFAULT '0',
  `month07` int(11) NOT NULL DEFAULT '0',
  `month08` int(11) NOT NULL DEFAULT '0',
  `month09` int(11) NOT NULL DEFAULT '0',
  `month10` int(11) NOT NULL DEFAULT '0',
  `month11` int(11) NOT NULL DEFAULT '0',
  `month12` int(11) NOT NULL DEFAULT '0',
  `last_update` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_searchkeys`
--

CREATE TABLE `nv4_vi_searchkeys` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `skey` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `search_engine` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_siteterms`
--

CREATE TABLE `nv4_vi_siteterms` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_siteterms`
--

INSERT INTO `nv4_vi_siteterms` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `gid`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`) VALUES
(1, 'Chính sách bảo mật (Quyền riêng tư)', 'privacy', '', '', 0, 'Tài liệu này cung cấp cho bạn (người truy cập và sử dụng website) chính sách liên quan đến bảo mật và quyền riêng tư của bạn', '<strong><a id="index" name="index"></a>Danh mục</strong><br /> <a href="#1">Điều 1: Thu thập thông tin</a><br /> <a href="#2">Điều 2: Lưu trữ &amp; Bảo vệ thông tin</a><br /> <a href="#3">Điều 3: Sử dụng thông tin </a><br /> <a href="#4">Điều 4: Tiếp nhận thông tin từ các đối tác </a><br /> <a href="#5">Điều 5: Chia sẻ thông tin với bên thứ ba</a><br /> <a href="#6">Điều 6: Thay đổi chính sách bảo mật</a>  <hr  /> <h2 style="text-align: justify;"><a id="1" name="1"></a>Điều 1: Thu thập thông tin</h2>  <h3 style="text-align: justify;">1.1. Thu thập tự động:</h3>  <div style="text-align: justify;">Hệ thống này được xây dựng bằng mã nguồn NukeViet. Như mọi website hiện đại khác, chúng tôi sẽ thu thập địa chỉ IP và các thông tin web tiêu chuẩn khác của bạn như: loại trình duyệt, các trang bạn truy cập trong quá trình sử dụng dịch vụ, thông tin về máy tính &amp; thiết bị mạng v.v… cho mục đích phân tích thông tin phục vụ việc bảo mật và giữ an toàn cho hệ thống.</div>  <h3 style="text-align: justify;">1.2. Thu thập từ các khai báo của chính bạn:</h3>  <div style="text-align: justify;">Các thông tin do bạn khai báo cho chúng tôi trong quá trình làm việc như: đăng ký tài khoản, liên hệ với chúng tôi... cũng sẽ được chúng tôi lưu trữ phục vụ công việc chăm sóc khách hàng sau này.</div>  <h3 style="text-align: justify;">1.3. Thu thập thông tin thông qua việc đặt cookies:</h3>  <p style="text-align: justify;">Như mọi website hiện đại khác, khi bạn truy cập website, chúng tôi (hoặc các công cụ theo dõi hoặc thống kê hoạt động của website do các đối tác cung cấp) sẽ đặt một số File dữ liệu gọi là Cookies lên đĩa cứng hoặc bộ nhớ máy tính của bạn.</p>  <p style="text-align: justify;">Một trong số những Cookies này có thể tồn tại lâu để thuận tiện cho bạn trong quá trình sử dụng, ví dụ như: lưu Email của bạn trong trang đăng nhập để bạn không phải nhập lại v.v…</p>  <h3 style="text-align: justify;">1.4. Thu thập và lưu trữ thông tin trong quá khứ:</h3>  <p style="text-align: justify;">Bạn có thể thay đổi thông tin cá nhân của mình bất kỳ lúc nào bằng cách sử dụng chức năng tương ứng. Tuy nhiên chúng tôi sẽ lưu lại những thông tin bị thay đổi để chống các hành vi xóa dấu vết gian lận.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="2" name="2"></a>Điều 2: Lưu trữ &amp; Bảo vệ thông tin</h2>  <div style="text-align: justify;">Hầu hết các thông tin được thu thập sẽ được lưu trữ tại cơ sở dữ liệu của chúng tôi.<br /> <br /> Chúng tôi bảo vệ dữ liệu cá nhân của các bạn bằng các hình thức như: mật khẩu, tường lửa, mã hóa cùng các hình thức thích hợp khác và chỉ cấp phép việc truy cập và xử lý dữ liệu cho các đối tượng phù hợp, ví dụ chính bạn hoặc các nhân viên có trách nhiệm xử thông tin với bạn thông qua các bước xác định danh tính phù hợp.<br /> <br /> Mật khẩu của bạn được lưu trữ và bảo vệ bằng phương pháp mã hoá trong cơ sở dữ liệu của hệ thống, vì thế nó rất an toàn. Tuy nhiên, chúng tôi khuyên bạn không nên dùng lại mật khẩu này trên các website khác. Mật khẩu của bạn là cách duy nhất để bạn đăng nhập vào tài khoản thành viên của mình trong website này, vì thế hãy cất giữ nó cẩn thận. Trong mọi trường hợp bạn không nên cung cấp thông tin mật khẩu cho bất kỳ người nào dù là người của chúng tôi, người của NukeViet hay bất kỳ người thứ ba nào khác trừ khi bạn hiểu rõ các rủi ro khi để lộ mật khẩu. Nếu quên mật khẩu, bạn có thể sử dụng chức năng “<a href="/users/lostpass/">Quên mật khẩu</a>” trên website. Để thực hiện việc này, bạn cần phải cung cấp cho hệ thống biết tên thành viên hoặc địa chỉ Email đang sử dụng của mình trong tài khoản, sau đó hệ thống sẽ tạo ra cho bạn mật khẩu mới và gửi đến cho bạn để bạn vẫn có thể đăng nhập vào tài khoản thành viên của mình.  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p> </div>  <h2 style="text-align: justify;"><a id="3" name="3"></a>Điều 3: Sử dụng thông tin</h2>  <p style="text-align: justify;">Thông tin thu thập được sẽ được chúng tôi sử dụng để:</p>  <div style="text-align: justify;">- Cung cấp các dịch vụ hỗ trợ &amp; chăm sóc khách hàng.</div>  <div style="text-align: justify;">- Thực hiện giao dịch thanh toán &amp; gửi các thông báo trong quá trình giao dịch.</div>  <div style="text-align: justify;">- Xử lý khiếu nại, thu phí &amp; giải quyết sự cố.</div>  <div style="text-align: justify;">- Ngăn chặn các hành vi có nguy cơ rủi ro, bị cấm hoặc bất hợp pháp và đảm bảo tuân thủ đúng chính sách “Thỏa thuận người dùng”.</div>  <div style="text-align: justify;">- Đo đạc, tùy biến &amp; cải tiến dịch vụ, nội dung và hình thức của website.</div>  <div style="text-align: justify;">- Gửi bạn các thông tin về chương trình Marketing, các thông báo &amp; chương trình khuyến mại.</div>  <div style="text-align: justify;">- So sánh độ chính xác của thông tin cá nhân của bạn trong quá trình kiểm tra với bên thứ ba.</div>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="4" name="4"></a>Điều 4: Tiếp nhận thông tin từ các đối tác</h2>  <div style="text-align: justify;">Khi sử dụng các công cụ giao dịch và thanh toán thông qua internet, chúng tôi có thể tiếp nhận thêm các thông tin về bạn như địa chỉ username, Email, số tài khoản ngân hàng... Chúng tôi kiểm tra những thông tin này với cơ sở dữ liệu người dùng của mình nhằm xác nhận rằng bạn có phải là khách hàng của chúng tôi hay không nhằm giúp việc thực hiện các dịch vụ cho bạn được thuận lợi.<br /> <br /> Các thông tin tiếp nhận được sẽ được chúng tôi bảo mật như những thông tin mà chúng tôi thu thập được trực tiếp từ bạn.</div>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2><a id="5" name="5"></a>Điều 5: Chia sẻ thông tin với bên thứ ba</h2>  <p style="text-align: justify;">Chúng tôi sẽ không chia sẻ thông tin cá nhân, thông tin tài chính... của bạn cho các bên thứ 3 trừ khi được sự đồng ý của chính bạn hoặc khi chúng tôi buộc phải tuân thủ theo các quy định pháp luật hoặc khi có yêu cầu từ cơ quan công quyền có thẩm quyền.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2><a id="6" name="6"></a>Điều 6: Thay đổi chính sách bảo mật</h2>  <p style="text-align: justify;">Chính sách Bảo mật này có thể thay đổi theo thời gian. Chúng tôi sẽ không giảm quyền của bạn theo Chính sách Bảo mật này mà không có sự đồng ý rõ ràng của bạn. Chúng tôi sẽ đăng bất kỳ thay đổi Chính sách Bảo mật nào trên trang này và, nếu những thay đổi này quan trọng, chúng tôi sẽ cung cấp thông báo nổi bật hơn (bao gồm, đối với một số dịch vụ nhất định, thông báo bằng email về các thay đổi của Chính sách Bảo mật).</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <p style="text-align: right;">Chính sách bảo mật mặc định này được xây dựng cho <a href="http://nukeviet.vn" target="_blank">NukeViet CMS</a>, được tham khảo từ website <a href="http://webnhanh.vn/vi/thiet-ke-web/detail/Chinh-sach-bao-mat-Quyen-rieng-tu-Privacy-Policy-2147/">webnhanh.vn</a></p>', '', 0, '4', '', 0, 1, 1, 1464421307, 1464421307, 1),
(2, 'Điều khoản và điều kiện sử dụng', 'terms-and-conditions', '', '', 0, 'Đây là các điều khoản và điều kiện áp dụng cho website này. Truy cập và sử dụng website tức là bạn đã đồng ý với các quy định này.', '<div style="text-align: justify;">Cảm ơn bạn đã sử dụng. Xin vui lòng đọc các Điều khoản một cách cẩn thận, và <a href="/contact/">liên hệ</a> với chúng tôi nếu bạn có bất kỳ câu hỏi. Bằng việc truy cập hoặc sử dụng website của chúng tôi, bạn đồng ý bị ràng buộc bởi các <a href="/siteterms/terms-and-conditions.html">Điều khoản và điều kiện</a> sử dụng cũng như <a href="/siteterms/privacy.html">Chính sách bảo mật</a> của chúng tôi. Nếu không đồng ý với các quy định này, bạn vui lòng ngưng sử dụng website.<br /> <br /> <strong><a id="index" name="index"></a>Danh mục</strong><br /> <a href="#1">Điều 1: Điều khoản liên quan đến phần mềm vận hành website</a><br /> <a href="#2">Điều 2: Giới hạn cho việc sử dụng Website và các tài liệu trên website</a><br /> <a href="#3">Điều 3: Sử dụng thương hiệu</a><br /> <a href="#4">Điều 4: Các hành vi bị nghiêm cấm</a><br /> <a href="#5">Điều 5: Các đường liên kết đến các website khác</a><br /> <a href="#6">Điều 6: Từ chối bảo đảm</a><br /> <a href="#7">Điều 7: Luật áp dụng và cơ quan giải quyết tranh chấp</a><br /> <a href="#8">Điều 8: Thay đổi điều khoản và điều kiện sử dụng</a></div>  <hr  /> <h2 style="text-align: justify;"><a id="1" name="1"></a>Điều khoản liên quan đến phần mềm vận hành website</h2>  <p style="text-align: justify;">- Website của chúng tôi sử dụng hệ thống NukeViet, là giải pháp về website/ cổng thông tin nguồn mở được phát hành theo giấy phép bản quyền phần mềm tự do nguồn mở “<a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html" target="_blank">GNU General Public License</a>” (viết tắt là GNU/GPL hay GPL) và có thể tải về miễn phí tại trang web <a href="http://www.nukeviet.vn" target="_blank">www.nukeviet.vn</a>.<br /> - Website này do chúng tôi sở hữu, điều hành và duy trì. NukeViet (hiểu ở đây là “hệ thống NukeViet” (bao gồm nhân hệ thống NukeViet và các sản phẩm phái sinh như NukeViet CMS, NukeViet Portal, <a href="http://edu.nukeviet.vn" target="_blank">NukeViet Edu Gate</a>...), “www.nukeviet.vn”, “tổ chức NukeViet”, “ban điều hành NukeViet”, &quot;Ban Quản Trị NukeViet&quot; và nói chung là những gì liên quan đến NukeViet...) không liên quan gì đến việc chúng tôi điều hành website cũng như quy định bạn được phép làm và không được phép làm gì trên website này.<br /> - Hệ thống NukeViet là bộ mã nguồn được phát triển để xây dựng các website/ cổng thông tin trên mạng. Chúng tôi (chủ sở hữu, điều hành và duy trì website này) không hỗ trợ và khẳng định hay ngụ ý về việc có liên quan đến NukeViet. Để biết thêm nhiều thông tin về NukeViet, hãy ghé thăm website của NukeViet tại địa chỉ: <a href="http://nukeviet.vn" target="_blank">http://nukeviet.vn</a>.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="2" name="2"></a>Giới hạn cho việc sử dụng Website và các tài liệu trên website</h2>  <p style="text-align: justify;">- Tất cả các quyền liên quan đến tất cả tài liệu và thông tin được hiển thị và/ hoặc được tạo ra sẵn cho Website này (ví dụ như những tài liệu được cung cấp để tải về) được quản lý, sở hữu hoặc được cho phép sử dụng bởi chúng tôi hoặc chủ sở hữu tương ứng với giấy phép tương ứng. Việc sử dụng các tài liệu và thông tin phải được tuân thủ theo giấy phép tương ứng được áp dụng cho chúng.<br /> - Ngoại trừ các tài liệu được cấp phép rõ ràng dưới dạng giấy phép tư liệu mở&nbsp;Creative Commons (gọi là giấy phép CC) cho phép bạn khai thác và chia sẻ theo quy định của giấy phép tư liệu mở, đối với các loại tài liệu không ghi giấy phép rõ ràng thì bạn không được phép sử dụng (bao gồm nhưng không giới hạn việc sao chép, chỉnh sửa toàn bộ hay một phần, đăng tải, phân phối, cấp phép, bán và xuất bản) bất cứ tài liệu nào mà không có sự cho phép trước bằng văn bản của chúng tôi ngoại trừ việc sử dụng cho mục đích cá nhân, nội bộ, phi thương mại.<br /> - Một số tài liệu hoặc thông tin có những điều khoản và điều kiện áp dụng riêng cho chúng không phải là giấy phép tư liệu mở, trong trường hợp như vậy, bạn được yêu cầu phải chấp nhận các điều khoản và điều kiện đó khi truy cập vào các tài liệu và thông tin này.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="3" name="3"></a>Sử dụng thương hiệu</h2>  <p style="text-align: justify;">- VINADES.,JSC, NukeViet và thương hiệu gắn với NukeViet (ví dụ NukeViet CMS, NukeViet Portal, NukeViet Edu Gate...), logo công ty VINADES thuộc sở hữu của Công ty cổ phần phát triển nguồn mở Việt Nam.<br /> - Những tên sản phẩm, tên dịch vụ khác, logo và/ hoặc những tên công ty được sử dụng trong Website này là những tài sản đã được đăng ký độc quyền và được giữ bản quyền bởi những người sở hữu và/ hoặc người cấp phép tương ứng.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="4" name="4"></a>Các hành vi bị nghiêm cấm</h2>  <p style="text-align: justify;">Người truy cập website này không được thực hiện những hành vi dưới đây khi sử dụng website:<br /> - Xâm phạm các quyền hợp pháp (bao gồm nhưng không giới hạn đối với các quyền riêng tư và chung) của người khác.<br /> - Gây ra sự thiệt hại hoặc bất lợi cho người khác.<br /> - Làm xáo trộn trật tự công cộng.<br /> - Hành vi liên quan đến tội phạm.<br /> - Tải lên hoặc phát tán thông tin riêng tư của tổ chức, cá nhân khác mà không được sự chấp thuận của họ.<br /> - Sử dụng Website này vào mục đích thương mại mà chưa được sự cho phép của chúng tôi.<br /> - Nói xấu, làm nhục, phỉ báng người khác.<br /> - Tải lên các tập tin chứa virus hoặc các tập tin bị hư mà có thể gây thiệt hại đến sự vận hành của máy tính khác.<br /> - Những hoạt động có khả năng ảnh hưởng đến hoạt động bình thường của website.<br /> - Những hoạt động mà chúng tôi cho là không thích hợp.<br /> - Những hoạt động bất hợp pháp hoặc bị cấm bởi pháp luật hiện hành.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="5" name="5"></a>Các đường liên kết đến các website khác</h2>  <p style="text-align: justify;">- Các website của các bên thứ ba (không phải các trang do chúng tôi quản lý) được liên kết đến hoặc từ website này (&quot;Các website khác&quot;) được điều hành và duy trì hoàn toàn độc lập bởi các bên thứ ba đó và không nằm trong quyền điều khiển và/hoặc giám sát của chúng tôi. Việc truy cập các website khác phải được tuân thủ theo các điều khoản và điều kiện quy định bởi ban điều hành của website đó.<br /> - Chúng tôi không chịu trách nhiệm cho sự mất mát hoặc thiệt hại do việc truy cập và sử dụng các website bên ngoài, và bạn phải chịu mọi rủi ro khi truy cập các website đó.<br /> - Không có nội dung nào trong Website này thể hiện như một sự đảm bảo của chúng tôi về nội dung của các website khác và các sản phẩm và/ hoặc các dịch vụ xuất hiện và/ hoặc được cung cấp tại các website khác.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="6" name="6"></a>Từ chối bảo đảm</h2>  <p style="text-align: justify;">NGOẠI TRỪ PHẠM VI BỊ CẤM THEO LUẬT PHÁP HIỆN HÀNH, CHÚNG TÔI SẼ:<br /> - KHÔNG CHỊU TRÁCH NHIỆM HAY BẢO ĐẢM, MỘT CÁCH RÕ RÀNG HAY NGỤ Ý, BAO GỒM SỰ BẢO ĐẢM VỀ TÍNH CHÍNH XÁC, MỨC ĐỘ TIN CẬY, HOÀN THIỆN, PHÙ HỢP CHO MỤC ĐÍCH CỤ THỂ, SỰ KHÔNG XÂM PHẠM QUYỀN CỦA BÊN THỨ 3 VÀ/HOẶC TÍNH AN TOÀN CỦA NỘI DỤNG WEBSITE NÀY, VÀ NHỮNG TUYÊN BỐ, ĐẢM BẢO CÓ LIÊN QUAN.<br /> - KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT KỲ SỰ THIỆT HẠI HAY MẤT MÁT PHÁT SINH TỪ VIỆC TRUY CẬP VÀ SỬ DỤNG WEBSITE HAY VIỆC KHÔNG THỂ SỬ DỤNG WEBSITE.<br /> - CHÚNG TÔI CÓ THỂ THAY ĐỔI VÀ/HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE NÀY, HOẶC TẠM HOÃN HOẶC NGƯNG CUNG CẤP CÁC DỊCH VỤ QUA WEBSITE NÀY VÀO BẤT KỲ THỜI ĐIỂM NÀO MÀ KHÔNG CẦN THÔNG BÁO TRƯỚC. CHÚNG TÔI SẼ KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT CỨ THIỆT HẠI NÀO PHÁT SINH DO SỰ THAY ĐỔI HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="7" name="7"></a>Luật áp dụng và cơ quan giải quyết tranh chấp</h2>  <p style="text-align: justify;">- Các Điều Khoản và Điều Kiện này được điều chỉnh và giải thích theo luật của Việt Nam trừ khi có điều khoản khác được cung cấp thêm. Tất cả tranh chấp phát sinh liên quan đến website này và các Điều Khoản và Điều Kiện sử dụng này sẽ được giải quyết tại các tòa án ở Việt Nam.<br /> - Nếu một phần nào đó của các Điều Khoản và Điều Kiện bị xem là không có giá trị, vô hiệu, hoặc không áp dụng được vì lý do nào đó, phần đó được xem như là phần riêng biệt và không ảnh hưởng đến tính hiệu lực của phần còn lại.<br /> - Trong trường hợp có sự mâu thuẫn giữa bản Tiếng Anh và bản Tiếng Việt của bản Điều Khoản và Điều Kiện này, bản Tiếng Việt sẽ được ưu tiên áp dụng.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="8" name="8"></a>Thay đổi điều khoản và điều kiện sử dụng</h2>  <div style="text-align: justify;">Điều khoản và điều kiện sử dụng có thể thay đổi theo thời gian. Chúng tôi bảo lưu quyền thay đổi hoặc sửa đổi bất kỳ điều khoản và điều kiện cũng như các quy định khác, bất cứ lúc nào và theo ý mình. Chúng tôi sẽ có thông báo trên website khi có sự thay đổi. Tiếp tục sử dụng trang web này sau khi đăng các thay đổi tức là bạn đã chấp nhận các thay đổi đó. <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p> </div>', '', 0, '4', '', 0, 2, 1, 1464421307, 1464421307, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_siteterms_config`
--

CREATE TABLE `nv4_vi_siteterms_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_siteterms_config`
--

INSERT INTO `nv4_vi_siteterms_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_voting`
--

CREATE TABLE `nv4_vi_voting` (
  `vid` smallint(5) UNSIGNED NOT NULL,
  `question` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `acceptcm` int(2) NOT NULL DEFAULT '1',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `publ_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exp_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_voting`
--

INSERT INTO `nv4_vi_voting` (`vid`, `question`, `link`, `acceptcm`, `admin_id`, `groups_view`, `publ_time`, `exp_time`, `act`) VALUES
(2, 'Bạn biết gì về NukeViet 4?', '', 1, 1, '6', 1275318563, 0, 1),
(3, 'Lợi ích của phần mềm nguồn mở là gì?', '', 1, 1, '6', 1275318563, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_voting_rows`
--

CREATE TABLE `nv4_vi_voting_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `vid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `hitstotal` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_voting_rows`
--

INSERT INTO `nv4_vi_voting_rows` (`id`, `vid`, `title`, `url`, `hitstotal`) VALUES
(5, 2, 'Một bộ sourcecode cho web hoàn toàn mới.', '', 0),
(6, 2, 'Mã nguồn mở, sử dụng miễn phí.', '', 0),
(7, 2, 'Sử dụng HTML5, CSS3 và hỗ trợ Ajax', '', 0),
(8, 2, 'Tất cả các ý kiến trên', '', 0),
(9, 3, 'Liên tục được cải tiến, sửa đổi bởi cả thế giới.', '', 0),
(10, 3, 'Được sử dụng miễn phí không mất tiền.', '', 0),
(11, 3, 'Được tự do khám phá, sửa đổi theo ý thích.', '', 0),
(12, 3, 'Phù hợp để học tập, nghiên cứu vì được tự do sửa đổi theo ý thích.', '', 0),
(13, 3, 'Tất cả các ý kiến trên', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nv4_authors`
--
ALTER TABLE `nv4_authors`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `nv4_authors_config`
--
ALTER TABLE `nv4_authors_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keyname` (`keyname`);

--
-- Indexes for table `nv4_authors_module`
--
ALTER TABLE `nv4_authors_module`
  ADD PRIMARY KEY (`mid`),
  ADD UNIQUE KEY `module` (`module`);

--
-- Indexes for table `nv4_banip`
--
ALTER TABLE `nv4_banip`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip` (`ip`);

--
-- Indexes for table `nv4_banners_click`
--
ALTER TABLE `nv4_banners_click`
  ADD KEY `bid` (`bid`),
  ADD KEY `click_day` (`click_day`),
  ADD KEY `click_ip` (`click_ip`),
  ADD KEY `click_country` (`click_country`),
  ADD KEY `click_browse_key` (`click_browse_key`),
  ADD KEY `click_os_key` (`click_os_key`);

--
-- Indexes for table `nv4_banners_clients`
--
ALTER TABLE `nv4_banners_clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `full_name` (`full_name`);

--
-- Indexes for table `nv4_banners_plans`
--
ALTER TABLE `nv4_banners_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `nv4_banners_rows`
--
ALTER TABLE `nv4_banners_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `clid` (`clid`);

--
-- Indexes for table `nv4_config`
--
ALTER TABLE `nv4_config`
  ADD UNIQUE KEY `lang` (`lang`,`module`,`config_name`);

--
-- Indexes for table `nv4_cookies`
--
ALTER TABLE `nv4_cookies`
  ADD UNIQUE KEY `cookiename` (`name`,`domain`,`path`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `nv4_counter`
--
ALTER TABLE `nv4_counter`
  ADD UNIQUE KEY `c_type` (`c_type`,`c_val`);

--
-- Indexes for table `nv4_cronjobs`
--
ALTER TABLE `nv4_cronjobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_sys` (`is_sys`);

--
-- Indexes for table `nv4_extension_files`
--
ALTER TABLE `nv4_extension_files`
  ADD PRIMARY KEY (`idfile`);

--
-- Indexes for table `nv4_googleplus`
--
ALTER TABLE `nv4_googleplus`
  ADD PRIMARY KEY (`gid`),
  ADD UNIQUE KEY `idprofile` (`idprofile`);

--
-- Indexes for table `nv4_language`
--
ALTER TABLE `nv4_language`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filelang` (`idfile`,`lang_key`);

--
-- Indexes for table `nv4_language_file`
--
ALTER TABLE `nv4_language_file`
  ADD PRIMARY KEY (`idfile`),
  ADD UNIQUE KEY `module` (`module`,`admin_file`);

--
-- Indexes for table `nv4_logs`
--
ALTER TABLE `nv4_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_notification`
--
ALTER TABLE `nv4_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_plugin`
--
ALTER TABLE `nv4_plugin`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `plugin_file` (`plugin_file`);

--
-- Indexes for table `nv4_sessions`
--
ALTER TABLE `nv4_sessions`
  ADD UNIQUE KEY `session_id` (`session_id`),
  ADD KEY `onl_time` (`onl_time`);

--
-- Indexes for table `nv4_setup`
--
ALTER TABLE `nv4_setup`
  ADD UNIQUE KEY `lang` (`lang`,`module`);

--
-- Indexes for table `nv4_setup_extensions`
--
ALTER TABLE `nv4_setup_extensions`
  ADD UNIQUE KEY `title` (`type`,`title`),
  ADD KEY `id` (`id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `nv4_setup_language`
--
ALTER TABLE `nv4_setup_language`
  ADD PRIMARY KEY (`lang`);

--
-- Indexes for table `nv4_shops_field_value_vi`
--
ALTER TABLE `nv4_shops_field_value_vi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rows_id` (`rows_id`,`field_id`);

--
-- Indexes for table `nv4_upload_dir`
--
ALTER TABLE `nv4_upload_dir`
  ADD PRIMARY KEY (`did`),
  ADD UNIQUE KEY `name` (`dirname`);

--
-- Indexes for table `nv4_upload_file`
--
ALTER TABLE `nv4_upload_file`
  ADD UNIQUE KEY `did` (`did`,`title`),
  ADD KEY `userid` (`userid`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `nv4_users`
--
ALTER TABLE `nv4_users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `md5username` (`md5username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idsite` (`idsite`);

--
-- Indexes for table `nv4_users_config`
--
ALTER TABLE `nv4_users_config`
  ADD PRIMARY KEY (`config`);

--
-- Indexes for table `nv4_users_field`
--
ALTER TABLE `nv4_users_field`
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `field` (`field`);

--
-- Indexes for table `nv4_users_groups`
--
ALTER TABLE `nv4_users_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `ktitle` (`title`,`idsite`),
  ADD KEY `exp_time` (`exp_time`);

--
-- Indexes for table `nv4_users_groups_users`
--
ALTER TABLE `nv4_users_groups_users`
  ADD PRIMARY KEY (`group_id`,`userid`);

--
-- Indexes for table `nv4_users_info`
--
ALTER TABLE `nv4_users_info`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `nv4_users_openid`
--
ALTER TABLE `nv4_users_openid`
  ADD PRIMARY KEY (`opid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `nv4_users_question`
--
ALTER TABLE `nv4_users_question`
  ADD PRIMARY KEY (`qid`),
  ADD UNIQUE KEY `title` (`title`,`lang`);

--
-- Indexes for table `nv4_users_reg`
--
ALTER TABLE `nv4_users_reg`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `login` (`username`),
  ADD UNIQUE KEY `md5username` (`md5username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `nv4_vi_about`
--
ALTER TABLE `nv4_vi_about`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_about_config`
--
ALTER TABLE `nv4_vi_about_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `nv4_vi_blocks_groups`
--
ALTER TABLE `nv4_vi_blocks_groups`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `theme` (`theme`),
  ADD KEY `module` (`module`),
  ADD KEY `position` (`position`),
  ADD KEY `exp_time` (`exp_time`);

--
-- Indexes for table `nv4_vi_blocks_weight`
--
ALTER TABLE `nv4_vi_blocks_weight`
  ADD UNIQUE KEY `bid` (`bid`,`func_id`);

--
-- Indexes for table `nv4_vi_comment`
--
ALTER TABLE `nv4_vi_comment`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `mod_id` (`module`,`area`,`id`),
  ADD KEY `post_time` (`post_time`);

--
-- Indexes for table `nv4_vi_contact_department`
--
ALTER TABLE `nv4_vi_contact_department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `full_name` (`full_name`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_contact_reply`
--
ALTER TABLE `nv4_vi_contact_reply`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `nv4_vi_contact_send`
--
ALTER TABLE `nv4_vi_contact_send`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_name` (`sender_name`);

--
-- Indexes for table `nv4_vi_freecontent_blocks`
--
ALTER TABLE `nv4_vi_freecontent_blocks`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `nv4_vi_freecontent_rows`
--
ALTER TABLE `nv4_vi_freecontent_rows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_menu`
--
ALTER TABLE `nv4_vi_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `nv4_vi_menu_rows`
--
ALTER TABLE `nv4_vi_menu_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parentid` (`parentid`,`mid`);

--
-- Indexes for table `nv4_vi_modfuncs`
--
ALTER TABLE `nv4_vi_modfuncs`
  ADD PRIMARY KEY (`func_id`),
  ADD UNIQUE KEY `func_name` (`func_name`,`in_module`),
  ADD UNIQUE KEY `alias` (`alias`,`in_module`);

--
-- Indexes for table `nv4_vi_modthemes`
--
ALTER TABLE `nv4_vi_modthemes`
  ADD UNIQUE KEY `func_id` (`func_id`,`layout`,`theme`);

--
-- Indexes for table `nv4_vi_modules`
--
ALTER TABLE `nv4_vi_modules`
  ADD PRIMARY KEY (`title`);

--
-- Indexes for table `nv4_vi_news_1`
--
ALTER TABLE `nv4_vi_news_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_2`
--
ALTER TABLE `nv4_vi_news_2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_8`
--
ALTER TABLE `nv4_vi_news_8`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_9`
--
ALTER TABLE `nv4_vi_news_9`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_10`
--
ALTER TABLE `nv4_vi_news_10`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_11`
--
ALTER TABLE `nv4_vi_news_11`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_12`
--
ALTER TABLE `nv4_vi_news_12`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_13`
--
ALTER TABLE `nv4_vi_news_13`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_14`
--
ALTER TABLE `nv4_vi_news_14`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_15`
--
ALTER TABLE `nv4_vi_news_15`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_16`
--
ALTER TABLE `nv4_vi_news_16`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_17`
--
ALTER TABLE `nv4_vi_news_17`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_18`
--
ALTER TABLE `nv4_vi_news_18`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_19`
--
ALTER TABLE `nv4_vi_news_19`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_20`
--
ALTER TABLE `nv4_vi_news_20`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_21`
--
ALTER TABLE `nv4_vi_news_21`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_22`
--
ALTER TABLE `nv4_vi_news_22`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_23`
--
ALTER TABLE `nv4_vi_news_23`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_24`
--
ALTER TABLE `nv4_vi_news_24`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_admins`
--
ALTER TABLE `nv4_vi_news_admins`
  ADD UNIQUE KEY `userid` (`userid`,`catid`);

--
-- Indexes for table `nv4_vi_news_block`
--
ALTER TABLE `nv4_vi_news_block`
  ADD UNIQUE KEY `bid` (`bid`,`id`);

--
-- Indexes for table `nv4_vi_news_block_cat`
--
ALTER TABLE `nv4_vi_news_block_cat`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_news_cat`
--
ALTER TABLE `nv4_vi_news_cat`
  ADD PRIMARY KEY (`catid`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `nv4_vi_news_config_post`
--
ALTER TABLE `nv4_vi_news_config_post`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `nv4_vi_news_detail`
--
ALTER TABLE `nv4_vi_news_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_news_logs`
--
ALTER TABLE `nv4_vi_news_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sid` (`sid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `nv4_vi_news_rows`
--
ALTER TABLE `nv4_vi_news_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_sources`
--
ALTER TABLE `nv4_vi_news_sources`
  ADD PRIMARY KEY (`sourceid`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `nv4_vi_news_tags`
--
ALTER TABLE `nv4_vi_news_tags`
  ADD PRIMARY KEY (`tid`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_news_tags_id`
--
ALTER TABLE `nv4_vi_news_tags_id`
  ADD UNIQUE KEY `id_tid` (`id`,`tid`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `nv4_vi_news_topics`
--
ALTER TABLE `nv4_vi_news_topics`
  ADD PRIMARY KEY (`topicid`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_page`
--
ALTER TABLE `nv4_vi_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_page_config`
--
ALTER TABLE `nv4_vi_page_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `nv4_vi_referer_stats`
--
ALTER TABLE `nv4_vi_referer_stats`
  ADD UNIQUE KEY `host` (`host`),
  ADD KEY `total` (`total`);

--
-- Indexes for table `nv4_vi_searchkeys`
--
ALTER TABLE `nv4_vi_searchkeys`
  ADD KEY `id` (`id`),
  ADD KEY `skey` (`skey`),
  ADD KEY `search_engine` (`search_engine`);

--
-- Indexes for table `nv4_vi_siteterms`
--
ALTER TABLE `nv4_vi_siteterms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_siteterms_config`
--
ALTER TABLE `nv4_vi_siteterms_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `nv4_vi_voting`
--
ALTER TABLE `nv4_vi_voting`
  ADD PRIMARY KEY (`vid`),
  ADD UNIQUE KEY `question` (`question`);

--
-- Indexes for table `nv4_vi_voting_rows`
--
ALTER TABLE `nv4_vi_voting_rows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vid` (`vid`,`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nv4_authors_config`
--
ALTER TABLE `nv4_authors_config`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_authors_module`
--
ALTER TABLE `nv4_authors_module`
  MODIFY `mid` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `nv4_banip`
--
ALTER TABLE `nv4_banip`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_banners_clients`
--
ALTER TABLE `nv4_banners_clients`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_banners_plans`
--
ALTER TABLE `nv4_banners_plans`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `nv4_banners_rows`
--
ALTER TABLE `nv4_banners_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `nv4_cronjobs`
--
ALTER TABLE `nv4_cronjobs`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `nv4_extension_files`
--
ALTER TABLE `nv4_extension_files`
  MODIFY `idfile` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=330;
--
-- AUTO_INCREMENT for table `nv4_googleplus`
--
ALTER TABLE `nv4_googleplus`
  MODIFY `gid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_language`
--
ALTER TABLE `nv4_language`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_language_file`
--
ALTER TABLE `nv4_language_file`
  MODIFY `idfile` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_logs`
--
ALTER TABLE `nv4_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;
--
-- AUTO_INCREMENT for table `nv4_notification`
--
ALTER TABLE `nv4_notification`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_plugin`
--
ALTER TABLE `nv4_plugin`
  MODIFY `pid` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nv4_shops_field_value_vi`
--
ALTER TABLE `nv4_shops_field_value_vi`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_upload_dir`
--
ALTER TABLE `nv4_upload_dir`
  MODIFY `did` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `nv4_users`
--
ALTER TABLE `nv4_users`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nv4_users_field`
--
ALTER TABLE `nv4_users_field`
  MODIFY `fid` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nv4_users_groups`
--
ALTER TABLE `nv4_users_groups`
  MODIFY `group_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `nv4_users_question`
--
ALTER TABLE `nv4_users_question`
  MODIFY `qid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `nv4_users_reg`
--
ALTER TABLE `nv4_users_reg`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_vi_about`
--
ALTER TABLE `nv4_vi_about`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `nv4_vi_blocks_groups`
--
ALTER TABLE `nv4_vi_blocks_groups`
  MODIFY `bid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `nv4_vi_comment`
--
ALTER TABLE `nv4_vi_comment`
  MODIFY `cid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `nv4_vi_contact_department`
--
ALTER TABLE `nv4_vi_contact_department`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nv4_vi_contact_reply`
--
ALTER TABLE `nv4_vi_contact_reply`
  MODIFY `rid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_vi_contact_send`
--
ALTER TABLE `nv4_vi_contact_send`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_vi_freecontent_blocks`
--
ALTER TABLE `nv4_vi_freecontent_blocks`
  MODIFY `bid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nv4_vi_freecontent_rows`
--
ALTER TABLE `nv4_vi_freecontent_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `nv4_vi_menu`
--
ALTER TABLE `nv4_vi_menu`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nv4_vi_menu_rows`
--
ALTER TABLE `nv4_vi_menu_rows`
  MODIFY `id` mediumint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `nv4_vi_modfuncs`
--
ALTER TABLE `nv4_vi_modfuncs`
  MODIFY `func_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `nv4_vi_news_1`
--
ALTER TABLE `nv4_vi_news_1`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `nv4_vi_news_2`
--
ALTER TABLE `nv4_vi_news_2`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `nv4_vi_news_8`
--
ALTER TABLE `nv4_vi_news_8`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `nv4_vi_news_9`
--
ALTER TABLE `nv4_vi_news_9`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `nv4_vi_news_10`
--
ALTER TABLE `nv4_vi_news_10`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `nv4_vi_news_11`
--
ALTER TABLE `nv4_vi_news_11`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `nv4_vi_news_12`
--
ALTER TABLE `nv4_vi_news_12`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `nv4_vi_news_13`
--
ALTER TABLE `nv4_vi_news_13`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_vi_news_14`
--
ALTER TABLE `nv4_vi_news_14`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_vi_news_15`
--
ALTER TABLE `nv4_vi_news_15`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_vi_news_16`
--
ALTER TABLE `nv4_vi_news_16`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_vi_news_17`
--
ALTER TABLE `nv4_vi_news_17`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `nv4_vi_news_18`
--
ALTER TABLE `nv4_vi_news_18`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `nv4_vi_news_19`
--
ALTER TABLE `nv4_vi_news_19`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_vi_news_20`
--
ALTER TABLE `nv4_vi_news_20`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `nv4_vi_news_21`
--
ALTER TABLE `nv4_vi_news_21`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `nv4_vi_news_22`
--
ALTER TABLE `nv4_vi_news_22`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `nv4_vi_news_23`
--
ALTER TABLE `nv4_vi_news_23`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `nv4_vi_news_24`
--
ALTER TABLE `nv4_vi_news_24`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `nv4_vi_news_block_cat`
--
ALTER TABLE `nv4_vi_news_block_cat`
  MODIFY `bid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `nv4_vi_news_cat`
--
ALTER TABLE `nv4_vi_news_cat`
  MODIFY `catid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `nv4_vi_news_logs`
--
ALTER TABLE `nv4_vi_news_logs`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_vi_news_rows`
--
ALTER TABLE `nv4_vi_news_rows`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `nv4_vi_news_sources`
--
ALTER TABLE `nv4_vi_news_sources`
  MODIFY `sourceid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `nv4_vi_news_tags`
--
ALTER TABLE `nv4_vi_news_tags`
  MODIFY `tid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `nv4_vi_news_topics`
--
ALTER TABLE `nv4_vi_news_topics`
  MODIFY `topicid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nv4_vi_page`
--
ALTER TABLE `nv4_vi_page`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nv4_vi_siteterms`
--
ALTER TABLE `nv4_vi_siteterms`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nv4_vi_voting`
--
ALTER TABLE `nv4_vi_voting`
  MODIFY `vid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `nv4_vi_voting_rows`
--
ALTER TABLE `nv4_vi_voting_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
