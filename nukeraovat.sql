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
('vi', 'global', 'site_name', 'Rao V???t Vi???t Nam'),
('vi', 'global', 'site_logo', 'uploads/logo.png'),
('vi', 'global', 'site_banner', ''),
('vi', 'global', 'site_favicon', ''),
('vi', 'global', 'site_description', 'M???ng Rao V???t Vi???t Nam'),
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
('vi', 'global', 'disable_site_content', 'V?? l?? do k??? thu???t website t???m ng??ng ho???t ?????ng. Th??nh th???t xin l???i c??c b???n v?? s??? b???t ti???n n??y!'),
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
('vi', 'news', 'copyright', 'Ch?? ??: Vi???c ????ng l???i b??i vi???t tr??n ??? website ho???c c??c ph????ng ti???n truy???n th??ng kh??c m?? kh??ng ghi r?? ngu???n http://nukeviet.vn l?? vi ph???m b???n quy???n'),
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
('vi', 'contact', 'bodytext', '????? kh??ng ng???ng n??ng cao ch???t l?????ng d???ch v??? v?? ????p ???ng t???t h??n n???a c??c y??u c???u c???a Qu?? kh??ch, ch??ng t??i mong mu???n nh???n ???????c c??c th??ng tin ph???n h???i. N???u Qu?? kh??ch c?? b???t k??? th???c m???c ho???c ????ng g??p n??o, xin vui l??ng li??n h??? v???i ch??ng t??i theo th??ng tin d?????i ????y. Ch??ng t??i s??? ph???n h???i l???i Qu?? kh??ch trong th???i gian s???m nh???t.'),
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
(1, 1464421307, 5, 'online_expired_del.php', 'cron_online_expired_del', '', 0, 1, 1, 1465538687, 1, 'X??a c??c d??ng ghi tr???ng th??i online ???? c?? trong CSDL'),
(2, 1464421307, 1440, 'dump_autobackup.php', 'cron_dump_autobackup', '', 0, 1, 1, 1465538687, 1, 'T??? ?????ng l??u CSDL'),
(3, 1464421307, 60, 'temp_download_destroy.php', 'cron_auto_del_temp_download', '', 0, 1, 1, 1465538687, 1, 'X??a c??c file t???m trong th?? m???c tmp'),
(4, 1464421307, 30, 'ip_logs_destroy.php', 'cron_del_ip_logs', '', 0, 1, 1, 1465538687, 1, 'X??a IP log files, X??a c??c file nh???t k?? truy c???p'),
(5, 1464421307, 1440, 'error_log_destroy.php', 'cron_auto_del_error_log', '', 0, 1, 1, 1465538687, 1, 'X??a c??c file error_log qu?? h???n'),
(6, 1464421307, 360, 'error_log_sendmail.php', 'cron_auto_sendmail_error_log', '', 0, 1, 0, 0, 0, 'G???i email c??c th??ng b??o l???i cho admin'),
(7, 1464421307, 60, 'ref_expired_del.php', 'cron_ref_expired_del', '', 0, 1, 1, 1465538687, 1, 'X??a c??c referer qu?? h???n'),
(8, 1464421307, 60, 'check_version.php', 'cron_auto_check_version', '', 0, 1, 1, 1465538687, 1, 'Ki???m tra phi??n b???n NukeViet'),
(9, 1464421307, 1440, 'notification_autodel.php', 'cron_notification_autodel', '', 0, 1, 1, 1465538687, 1, 'X??a th??ng b??o c??'),
(10, 1464452100, 1440, 'auto_del_news.php', 'cron_auto_del_news', 'news,news,1,155520000,', 1, 0, 1, 0, 0, 'X??a Tin ????ng Qu?? H???n');

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
(1, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1464421382),
(2, 'vi', 'themes', 'S???a block', 'Name : Qu???ng c??o gi???a trang', '', 1, 1464421889),
(3, 'vi', 'webtools', 'D???n d???p h??? th???ng', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464422165),
(4, 'vi', 'webtools', 'D???n d???p h??? th???ng', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464423188),
(5, 'vi', 'login', '[admin] Tho??t kh???i t??i kho???n Qu???n tr???', ' Client IP:::1', '', 0, 1464429564),
(6, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1464430006),
(7, 'vi', 'webtools', 'D???n d???p h??? th???ng', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464430013),
(8, 'vi', 'webtools', 'D???n d???p h??? th???ng', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464430051),
(9, 'vi', 'webtools', 'D???n d???p h??? th???ng', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464430068),
(10, 'vi', 'webtools', 'D???n d???p h??? th???ng', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464430099),
(11, 'vi', 'webtools', 'D???n d???p h??? th???ng', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464430265),
(12, 'vi', 'webtools', 'D???n d???p h??? th???ng', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464431009),
(13, 'vi', 'webtools', 'D???n d???p h??? th???ng', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464431073),
(14, 'vi', 'webtools', 'D???n d???p h??? th???ng', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464431188),
(15, 'vi', 'upload', 'Upload file', 'uploads/logo-rao-vat.png', '', 1, 1464431391),
(16, 'vi', 'themes', 'S???a block', 'Name : Ch??? ?????', '', 1, 1464431726),
(17, 'vi', 'themes', 'S???a block', 'Name : Ch??? ?????', '', 1, 1464431784),
(18, 'vi', 'login', '[admin] Tho??t kh???i t??i kho???n Qu???n tr???', ' Client IP:::1', '', 0, 1464431834),
(19, 'vi', 'users', 'Thay ?????i c???u h??nh module', '', '', 1, 1464432139),
(20, 'vi', 'login', '[admin] Tho??t kh???i t??i kho???n Qu???n tr???', ' Client IP:::1', '', 0, 1464432145),
(21, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1464435937),
(22, 'vi', 'users', 'Thay ?????i c???u h??nh module', '', '', 1, 1464436025),
(23, 'vi', 'login', '[admin] Tho??t kh???i t??i kho???n Qu???n tr???', ' Client IP:::1', '', 0, 1464437825),
(24, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1464438277),
(25, 'vi', 'login', '[admin] Tho??t kh???i t??i kho???n Qu???n tr???', ' Client IP:::1', '', 0, 1464438516),
(26, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1464438737),
(27, 'vi', 'news', '????ng b??i vi???t', 'B??n g???p nh?? m???t ph??? M?? M??y 130m m???t ti???n 5 | ::1 | vnwsxu', '', 0, 1464448831),
(28, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1464449168),
(29, 'vi', 'webtools', 'D???n d???p h??? th???ng', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464449188),
(30, 'vi', 'login', '[admin] Tho??t kh???i t??i kho???n Qu???n tr???', ' Client IP:::1', '', 0, 1464449277),
(31, 'vi', 'news', '????ng b??i vi???t', 'cung c???p c???a nh???a l??i th??p, c???u thang r??? | ::1 | vnwsxu', '', 0, 1464449414),
(32, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1464449457),
(33, 'vi', 'upload', 'Upload file', 'uploads/ra0-la-ban.jpg', '', 1, 1464449686),
(34, 'vi', 'themes', 'Th??m block', 'Name : global html', '', 1, 1464449700),
(35, 'vi', 'themes', 'S???a block', 'Name : global html', '', 1, 1464449750),
(36, 'vi', 'themes', 'S???a block', 'Name : global html', '', 1, 1464449783),
(37, 'vi', 'upload', 'Upload file', 'uploads/dang-tin-top.png', '', 1, 1464450225),
(38, 'vi', 'themes', 'S???a block', 'Name : global html', '', 1, 1464450232),
(39, 'vi', 'upload', 'Upload file', 'uploads/icon_post.gif', '', 1, 1464450279),
(40, 'vi', 'themes', 'S???a block', 'Name : Qu???ng c??o c???t tr??i', '', 1, 1464450295),
(41, 'vi', 'themes', 'S???a block', 'Name : Qu???ng c??o c???t tr??i', '', 1, 1464450311),
(42, 'vi', 'themes', 'S???a block', 'Name : Qu???ng c??o c???t tr??i', '', 1, 1464450352),
(43, 'vi', 'themes', 'S???a block', 'Name : Qu???ng c??o c???t tr??i', '', 1, 1464450377),
(44, 'vi', 'upload', 'Upload file', 'uploads/dangtin640x224.jpg', '', 1, 1464450500),
(45, 'vi', 'themes', 'Th??m block', 'Name : global html', '', 1, 1464450514),
(46, 'vi', 'upload', 'Upload file', 'uploads/quangcaotructuyen.jpg', '', 1, 1464450630),
(47, 'vi', 'themes', 'Th??m block', 'Name : global html', '', 1, 1464450652),
(48, 'vi', 'themes', 'S???a block', 'Name : global html', '', 1, 1464450680),
(49, 'vi', 'login', '[admin] Tho??t kh???i t??i kho???n Qu???n tr???', ' Client IP:::1', '', 0, 1464450697),
(50, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1464451134),
(51, 'vi', 'upload', 'Upload file', 'uploads/logo.png', '', 1, 1464451157),
(52, 'vi', 'news', 'Th??m chuy??n m???c', 'Thu?? v?? Cho thu?? nh??', '', 1, 1464451254),
(53, 'vi', 'news', 'Th??m chuy??n m???c', 'Th???i trang, L??m ?????p', '', 1, 1464451264),
(54, 'vi', 'news', 'Th??m chuy??n m???c', 'Ch??? Sim s???', '', 1, 1464451273),
(55, 'vi', 'news', 'Th??m chuy??n m???c', 'Xe m??y - Xe ?????p', '', 1, 1464451283),
(56, 'vi', 'news', 'Th??m chuy??n m???c', 'M??y t??nh x??ch tay', '', 1, 1464451295),
(57, 'vi', 'news', 'Th??m chuy??n m???c', '??i???n t??? - K??? thu???t s???', '', 1, 1464451312),
(58, 'vi', 'news', 'Th??m chuy??n m???c', 'M???ng - Ph???n m???m', '', 1, 1464451323),
(59, 'vi', 'news', 'Th??m chuy??n m???c', 'Mua s???m', '', 1, 1464451334),
(60, 'vi', 'news', 'Th??m chuy??n m???c', '??i???n l???nh - ??i???n m??y', '', 1, 1464451343),
(61, 'vi', 'news', 'Th??m chuy??n m???c', 'Vi???c l??m', '', 1, 1464451353),
(62, 'vi', 'news', 'Th??m chuy??n m???c', 'd???ch v???', '', 1, 1464451364),
(63, 'vi', 'news', 'Th??m chuy??n m???c', 'Du l???ch', '', 1, 1464451373),
(64, 'vi', 'login', '[admin] Tho??t kh???i t??i kho???n Qu???n tr???', ' Client IP:::1', '', 0, 1464451811),
(65, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1464452067),
(66, 'vi', 'settings', 'log_cronjob_add', 'id 10', '', 1, 1464452437),
(67, 'vi', 'login', '[admin] Tho??t kh???i t??i kho???n Qu???n tr???', ' Client IP:::1', '', 0, 1464452518),
(68, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1464501853),
(69, 'vi', 'themes', 'S???a block', 'Name : Qu???ng c??o c???t tr??i', '', 1, 1464501949),
(70, 'vi', 'contact', 'log_edit_row', 'id: 1 Ph??ng Ch??m s??c kh??ch h??ng', '', 1, 1464502609),
(71, 'vi', 'themes', 'S???a block', 'Name : Tin ti??u ??i???m', '', 1, 1464502704),
(72, 'vi', 'themes', 'S???a block', 'Name : Tin ti??u ??i???m', '', 1, 1464502751),
(73, 'vi', 'login', '[admin] Tho??t kh???i t??i kho???n Qu???n tr???', ' Client IP:::1', '', 0, 1464503069),
(74, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1464503455),
(75, 'vi', 'webtools', 'D???n d???p h??? th???ng', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464503463),
(76, 'vi', 'login', '[admin] Tho??t kh???i t??i kho???n Qu???n tr???', ' Client IP:::1', '', 0, 1464503475),
(77, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1464503531),
(78, 'vi', 'webtools', 'D???n d???p h??? th???ng', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464503537),
(79, 'vi', 'login', '[admin] Tho??t kh???i t??i kho???n Qu???n tr???', ' Client IP:::1', '', 0, 1464504089),
(80, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1464504118),
(81, 'vi', 'login', '[admin] Tho??t kh???i t??i kho???n Qu???n tr???', ' Client IP:::1', '', 0, 1464505920),
(82, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1464505982),
(83, 'vi', 'webtools', 'D???n d???p h??? th???ng', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464505987),
(84, 'vi', 'webtools', 'D???n d???p h??? th???ng', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464506068),
(85, 'vi', 'login', '[admin] Tho??t kh???i t??i kho???n Qu???n tr???', ' Client IP:::1', '', 0, 1464507093),
(86, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1464507717),
(87, 'vi', 'news', 'S???a b??i vi???t', 'cung c???p c???a nh???a l??i th??p, c???u thang r???', '', 1, 1464509092),
(88, 'vi', 'news', 'S???a b??i vi???t', 'B??n g???p nh?? m???t ph??? M?? M??y 130m m???t ti???n 5', '', 1, 1464509314),
(89, 'vi', 'upload', 'Upload file', 'uploads/banner-top_3.png', '', 1, 1464510713),
(90, 'vi', 'themes', 'S???a block', 'Name : global html', '', 1, 1464510722),
(91, 'vi', 'extensions', 'C??i ?????t ???ng d???ng', 'module-shops-4-official.zip', '', 1, 1464512404),
(92, 'vi', 'modules', 'Thi???t l???p module m???i shops', '', '', 1, 1464512428),
(93, 'vi', 'modules', 'S???a module &ldquo;shops&rdquo;', '', '', 1, 1464512450),
(94, 'vi', 'news', '????ng b??i vi???t', 'B??n bu??n, b??n l??? n?????c c???t 1 l???n, 2 l???n, n?????c | ::1 | admin', '', 0, 1464512747),
(95, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1464596852),
(96, 'vi', 'extensions', 'C??i ?????t ???ng d???ng', 'plugin-sticky-navbar.zip', '', 1, 1464596881),
(97, 'vi', 'themes', 'Th??m block', 'Name : global plugin sticky navbar', '', 1, 1464597027),
(98, 'vi', 'themes', 'S???a block', 'Name : global plugin sticky navbar', '', 1, 1464597075),
(99, 'vi', 'extensions', 'C??i ?????t ???ng d???ng', 'module-search-news.zip', '', 1, 1464597706),
(100, 'vi', 'modules', 'Thi???t l???p module m???i search-news', '', '', 1, 1464597719),
(101, 'vi', 'modules', 'S???a module &ldquo;search-news&rdquo;', '', '', 1, 1464597757),
(102, 'vi', 'themes', 'Th??m block', 'Name : global search', '', 1, 1464597782),
(103, 'vi', 'modules', 'S???a module &ldquo;search-news&rdquo;', '', '', 1, 1464597803),
(104, 'vi', 'modules', 'S???a module &ldquo;search-news&rdquo;', '', '', 1, 1464597915),
(105, 'vi', 'modules', 'C??i l???i module "search-news"', '', '', 1, 1464597950),
(106, 'vi', 'modules', 'K??ch ho???t module "search-news"', 'Kh??ng', '', 1, 1464598929),
(107, 'vi', 'modules', 'K??ch ho???t module "search-news"', 'C??', '', 1, 1464598935),
(108, 'vi', 'modules', 'K??ch ho???t module "search-news"', 'Kh??ng', '', 1, 1464598946),
(109, 'vi', 'modules', 'X??a module "search-news"', '', '', 1, 1464599004),
(110, 'vi', 'news', '????ng b??i vi???t', 'AzVNN Chuy??n Trang Xe Hoi | ::1 | admin', '', 0, 1464599835),
(111, 'vi', 'webtools', 'D???n d???p h??? th???ng', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464599880),
(112, 'vi', 'news', '????ng b??i vi???t', '11 ???ng c??? vi??n cho danh hi???u Vua ph?? l?????i EURO n??m nay | ::1 | admin', '', 0, 1464600702),
(113, 'vi', 'login', '[admin] Tho??t kh???i t??i kho???n Qu???n tr???', ' Client IP:::1', '', 0, 1464601681),
(114, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1464603022),
(115, 'vi', 'news', 'log_add_source', ' ', '', 1, 1464603355),
(116, 'vi', 'themes', 'Th??m block', 'Name : global login', '', 1, 1464603652),
(117, 'vi', 'themes', 'S???a block', 'Name : T??i Kho???n', '', 1, 1464603697),
(118, 'vi', 'login', '[admin] Tho??t kh???i t??i kho???n Qu???n tr???', ' Client IP:::1', '', 0, 1464603712),
(119, 'vi', 'news', '????ng b??i vi???t', 'B??N M??Y KHOAN GI???NG - ??O??N V???T T?? &#40;??o??n 805&#41; | ::1 | vnwsxu', '', 0, 1464604126),
(120, 'vi', 'news', '????ng b??i vi???t', 'M??y h??t ???m c??ng nghi???p Harison HD 504B | ::1 | vnwsxu', '', 0, 1464604220),
(121, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1464604589),
(122, 'vi', 'webtools', 'D???n d???p h??? th???ng', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464604598),
(123, 'vi', 'news', 'X??a b??i vi??t', 'Ra m???t c??ng ty m?? ngu???n m??? ?????u ti??n t???i Vi???t Nam, H??y tr??? th??nh nh?? cung c???p d???ch v??? c???a NukeViet&#33;, Tuy???n d???ng l???p tr??nh vi??n PHP ph??t tri???n NukeViet, Tuy???n d???ng chuy??n vi??n ????? ho??? ph??t tri???n NukeViet, Tuy???n d???ng l???p tr??nh vi??n front-end (HTML/CSS/JS) ph??t tri???n NukeViet, M?? ngu???n m??? NukeViet gi??nh gi???i ba Nh??n t??i ?????t Vi???t 2011, NukeViet ???????c ??u ti??n mua s???m, s??? d???ng trong c?? quan, t??? ch???c nh?? n?????c, C??ng ty VINADES tuy???n d???ng nh??n vi??n kinh doanh, Ch????ng tr??nh th???c t???p sinh t???i c??ng ty VINADES, H???c vi???c t???i c??ng ty VINADES, NukeViet ???????c B??? GD&amp;??T ????a v??o H?????ng d???n th???c hi???n nhi???m v??? CNTT n??m h???c 2015 - 2016, H??? tr??? t???p hu???n v?? tri???n khai NukeViet cho c??c Ph??ng, S??? GD&amp;??T, NukeViet 4.0 c?? g?? m???i?, Ch???n nh?? cung c???p Hosting n??o t???t cho NukeViet?, AzVNN Chuy??n Trang Xe Hoi, 11 ???ng c??? vi??n cho danh hi???u Vua ph?? l?????i EURO n??m nay', '', 1, 1464604792),
(124, 'vi', 'news', 'S???a b??i vi???t', 'B??n bu??n, b??n l??? n?????c c???t 1 l???n, 2 l???n, n?????c', '', 1, 1464604819),
(125, 'vi', 'news', 'S???a b??i vi???t', 'B??n g???p nh?? m???t ph??? M?? M??y 130m m???t ti???n 5', '', 1, 1464604843),
(126, 'vi', 'news', 'S???a b??i vi???t', 'cung c???p c???a nh???a l??i th??p, c???u thang r???', '', 1, 1464604925),
(127, 'vi', 'news', 'S???a b??i vi???t', 'B??n bu??n, b??n l??? n?????c c???t 1 l???n, 2 l???n, n?????c', '', 1, 1464604964),
(128, 'vi', 'login', '[admin] Tho??t kh???i t??i kho???n Qu???n tr???', ' Client IP:::1', '', 0, 1464606593),
(129, 'vi', 'news', '????ng b??i vi???t', '?????t 1000m2 c???nh Khu DL B Qu???i I gi?? 10tr&#x002F;th | ::1 | admin', '', 0, 1464607413),
(130, 'vi', 'news', '????ng b??i vi???t', 'D???ch v??? cho thu?? xe 45 t???i tphcm | ::1 | admin', '', 0, 1464607503),
(131, 'vi', 'news', '????ng b??i vi???t', 'Trang tr?? n???i th???t, S???a ch???a X??y D???ng | ::1 | admin', '', 0, 1464607661),
(132, 'vi', 'news', '????ng b??i vi???t', 'B??n c??n 2PN t???ng 16 Seasons Avenue | ::1 | admin', '', 0, 1464607725),
(133, 'vi', 'news', '????ng b??i vi???t', 'Lenovo Thinkpad T450 Broadwell I5 5300U 2.3Gh | ::1 | admin', '', 0, 1464607784),
(134, 'vi', 'news', '????ng b??i vi???t', 'Xe 4 ch??? camry m??u ??en t???i tphcm | ::1 | admin', '', 0, 1464607937),
(135, 'vi', 'news', '????ng b??i vi???t', '?????i l?? v?? m??y bay t???i tphcm - du l???ch n??t vi???t | ::1 | admin', '', 0, 1464607981),
(136, 'vi', 'news', '????ng b??i vi???t', 'D???ch v??? s???a ch???a nh?? gi?? r??? nh???t t???i H?? N???i 1 | ::1 | admin', '', 0, 1464608075),
(137, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1464608100),
(138, 'vi', 'banners', 'log_edit_banner', 'bannerid 3', '', 1, 1464608278),
(139, 'vi', 'themes', 'Th??m block', 'Name : global banners', '', 1, 1464608307),
(140, 'vi', 'news', '????ng b??i vi???t', '?????u thu K??? thu???t s??? DVB-T2 ch??? v???i 550k | ::1 | admin', '', 0, 1464608636),
(141, 'vi', 'news', '????ng b??i vi???t', 'B??n m??y l??m m??t kh??ng kh??. | ::1 | admin', '', 0, 1464608708),
(142, 'vi', 'login', '[admin] Tho??t kh???i t??i kho???n Qu???n tr???', ' Client IP:::1', '', 0, 1464609104),
(143, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1464615385),
(144, 'vi', 'webtools', 'D???n d???p h??? th???ng', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464615926),
(145, 'vi', 'users', 'X??a nh??m', 'group_id: 12', '', 1, 1464618219),
(146, 'vi', 'users', 'X??a nh??m', 'group_id: 11', '', 1, 1464618224),
(147, 'vi', 'users', 'X??a nh??m', 'group_id: 10', '', 1, 1464618228),
(148, 'vi', 'users', 'Th??m nh??m', 'Id: 13', '', 1, 1464618850),
(149, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1464677040),
(150, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1464679447),
(151, 'vi', 'modules', 'X??a module "shops"', '', '', 1, 1464679524),
(152, 'vi', 'news', '????ng b??i vi???t', 'C??p t??n hi???u AWG Hosiwell 2x1.5mm2 | ::1 | admin', '', 0, 1464679758),
(153, 'vi', 'news', '????ng b??i vi???t', 'In t???i x?????ng offset namecard, catalogue | ::1 | admin', '', 0, 1464679929),
(154, 'vi', 'login', '[admin] Tho??t kh???i t??i kho???n Qu???n tr???', ' Client IP:::1', '', 0, 1464681338),
(155, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1464758004),
(156, 'vi', 'users', 'log_edit_user', 'userid 1', '', 1, 1464758049),
(157, 'vi', 'themes', 'S???a block', 'Name : global html', '', 1, 1464758551),
(158, 'vi', 'themes', 'S???a block', 'Name : global html', '', 1, 1464758574),
(159, 'vi', 'themes', 'S???a block', 'Name : T??i Kho???n', '', 1, 1464758601),
(160, 'vi', 'themes', 'S???a block', 'Name : global html', '', 1, 1464758632),
(161, 'vi', 'login', '[admin] Tho??t kh???i t??i kho???n Qu???n tr???', ' Client IP:::1', '', 0, 1464758774),
(162, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1464758912),
(163, 'vi', 'login', '[admin] Tho??t kh???i t??i kho???n Qu???n tr???', ' Client IP:::1', '', 0, 1464759003),
(164, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1464759246),
(165, 'vi', 'login', '[admin] Tho??t kh???i t??i kho???n Qu???n tr???', ' Client IP:::1', '', 0, 1464759908),
(166, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1464759982),
(167, 'vi', 'themes', 'S???a block', 'Name : global html', '', 1, 1464760480),
(168, 'vi', 'themes', 'S???a block', 'Name : global html', '', 1, 1464760513),
(169, 'vi', 'news', '????ng b??i vi???t', 'Cho Vay G??p Ng??y Kh??ng Th??? Ch???p | ::1 | admin', '', 0, 1464760606),
(170, 'vi', 'news', '????ng b??i vi???t', 'C???n tuy???n g???p lao ?????ng t???i Nh???t B???n 2 | ::1 | admin', '', 0, 1464760714),
(171, 'vi', 'login', '[admin] Tho??t kh???i t??i kho???n Qu???n tr???', ' Client IP:::1', '', 0, 1464760722),
(172, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1464761508),
(173, 'vi', 'extensions', 'C??i ?????t ???ng d???ng', 'global-block-groups-marquee-php.zip', '', 1, 1464761534),
(174, 'vi', 'themes', 'Th??m block', 'Name : global block groups marquee', '', 1, 1464761593),
(175, 'vi', 'about', 'Delete', 'ID: 8', '', 1, 1464761911),
(176, 'vi', 'about', 'Delete', 'ID: 7', '', 1, 1464761913),
(177, 'vi', 'about', 'Delete', 'ID: 6', '', 1, 1464761916),
(178, 'vi', 'about', 'Delete', 'ID: 5', '', 1, 1464761918),
(179, 'vi', 'about', 'Delete', 'ID: 4', '', 1, 1464761920),
(180, 'vi', 'about', 'Delete', 'ID: 3', '', 1, 1464761923),
(181, 'vi', 'about', 'Delete', 'ID: 2', '', 1, 1464761925),
(182, 'vi', 'page', 'Add', ' ', '', 1, 1464762034),
(183, 'vi', 'about', 'Edit', 'ID: 1', '', 1, 1464762264),
(184, 'vi', 'login', '[admin] Tho??t kh???i t??i kho???n Qu???n tr???', ' Client IP:::1', '', 0, 1464763297),
(185, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1464770988),
(186, 'vi', 'login', '[admin] Tho??t kh???i t??i kho???n Qu???n tr???', ' Client IP:::1', '', 0, 1464772799),
(187, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1464853942),
(188, 'vi', 'news', 'log_add_blockcat', ' ', '', 1, 1464853956),
(189, 'vi', 'themes', 'Th??m block', 'Name : Tin VIP', '', 1, 1464854015),
(190, 'vi', 'themes', 'S???a block', 'Name : Tin VIP', '', 1, 1464854167),
(191, 'vi', 'webtools', 'D???n d???p h??? th???ng', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464854425),
(192, 'vi', 'themes', 'S???a block', 'Name : Tin VIP', '', 1, 1464854630),
(193, 'vi', 'themes', 'Th??m block', 'Name : module block headline', '', 1, 1464855284),
(194, 'vi', 'themes', 'S???a block', 'Name : module block headline', '', 1, 1464855305),
(195, 'vi', 'themes', 'S???a block', 'Name : module block headline', '', 1, 1464855316),
(196, 'vi', 'themes', 'S???a block', 'Name : module block headline', '', 1, 1464855354),
(197, 'vi', 'themes', 'S???a block', 'Name : module block headline', '', 1, 1464855369),
(198, 'vi', 'themes', 'S???a block', 'Name : module block headline', '', 1, 1464855395),
(199, 'vi', 'webtools', 'D???n d???p h??? th???ng', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464855503),
(200, 'vi', 'login', '[admin] Tho??t kh???i t??i kho???n Qu???n tr???', ' Client IP:::1', '', 0, 1464858363),
(201, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1464861879),
(202, 'vi', 'webtools', 'D???n d???p h??? th???ng', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464861888),
(203, 'vi', 'webtools', 'D???n d???p h??? th???ng', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464861914),
(204, 'vi', 'login', '[admin] Tho??t kh???i t??i kho???n Qu???n tr???', ' Client IP:::1', '', 0, 1464864535),
(205, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1464869795),
(206, 'vi', 'webtools', 'D???n d???p h??? th???ng', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464870038),
(207, 'vi', 'webtools', 'D???n d???p h??? th???ng', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464870670),
(208, 'vi', 'login', '[admin] Tho??t kh???i t??i kho???n Qu???n tr???', ' Client IP:::1', '', 0, 1464872471),
(209, 'vi', 'news', '????ng b??i vi???t', 'test test test | ::1 | vnwsxu', '', 0, 1464876446),
(210, 'vi', 'news', '????ng b??i vi???t', '123 test test test | ::1 | vnwsxu', '', 0, 1464876777),
(211, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1464956314),
(212, 'vi', 'webtools', 'D???n d???p h??? th???ng', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1464958979),
(213, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1465009329),
(214, 'vi', 'login', '[admin] Tho??t kh???i t??i kho???n Qu???n tr???', ' Client IP:::1', '', 0, 1465010548),
(215, 'vi', 'news', 'S???a b??i vi???t', 'B??n g???p nh?? m???t ph??? M?? M??y 130m m???t ti???n 5 | ::1 | vnwsxu', '', 0, 1465010671),
(216, 'vi', 'news', 'S???a b??i vi???t', 'cung c???p c???a nh???a l??i th??p, c???u thang r??? | ::1 | vnwsxu', '', 0, 1465010717),
(217, 'vi', 'news', 'S???a b??i vi???t', 'B??N M??Y KHOAN GI???NG - ??O??N V???T T?? &#40;??o??n 805&#41; | ::1 | vnwsxu', '', 0, 1465011481),
(218, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1465189073),
(219, 'vi', 'webtools', 'D???n d???p h??? th???ng', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1465189080),
(220, 'vi', 'webtools', 'D???n d???p h??? th???ng', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1465189748),
(221, 'vi', 'login', '[admin] Tho??t kh???i t??i kho???n Qu???n tr???', ' Client IP:::1', '', 0, 1465190720),
(222, 'vi', 'login', '[admin] ????ng nh???p', ' Client IP:::1', '', 0, 1465538721),
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
(2, 0, 'vnwsxu', '7cd506d6e2683a234da1975a9591fc93', '{SSHA}mTlYamumgmnn+f+K6gFrHn1xO0FyQ0Nv', 'vnwsxu@yahoo.com', 'xuan', 'thanh', '', '', 0, '', 1464448511, 'Ng??y l??? m?? b???n lu??n mong ?????i', 'banmethuot', '', 0, 1, '', 1, 'd40d163ab77f479d2e679f7abcca51ea', 1465010556, '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '', 0, 0, '');

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
('siteterms_vi', '<p>????? tr??? th??nh th??nh vi??n, b???n ph???i cam k???t ?????ng ?? v???i c??c ??i???u kho???n d?????i ????y. Ch??ng t??i c?? th??? thay ?????i l???i nh???ng ??i???u kho???n n??y v??o b???t c??? l??c n??o v?? ch??ng t??i s??? c??? g???ng th??ng b??o ?????n b???n k???p th???i.<br  />\r\n<br  />\r\nB???n cam k???t kh??ng g???i b???t c??? b??i vi???t c?? n???i dung l???a ?????o, th?? t???c, thi???u v??n ho??; vu kh???ng, khi??u kh??ch, ??e do??? ng?????i kh??c; li??n quan ?????n c??c v???n ????? t??nh d???c hay b???t c??? n???i dung n??o vi ph???m lu???t ph??p c???a qu???c gia m?? b???n ??ang s???ng, lu???t ph??p c???a qu???c gia n??i ?????t m??y ch??? c???a website n??y hay lu???t ph??p qu???c t???. N???u v???n c??? t??nh vi ph???m, ngay l???p t???c b???n s??? b??? c???m tham gia v??o website. ?????a ch??? IP c???a t???t c??? c??c b??i vi???t ?????u ???????c ghi nh???n l???i ????? b???o v??? c??c ??i???u kho???n cam k???t n??y trong tr?????ng h???p b???n kh??ng tu??n th???.<br  />\r\n<br  />\r\nB???n ?????ng ?? r???ng <a href="http://azvnn.com">azvnn</a> c?? quy???n g??? b???, s???a, di chuy???n ho???c kho?? b???t k??? b??i vi???t n??o trong <a href="http://azvnn">azvnn</a> v??o b???t c??? l??c n??o tu??? theo nhu c???u c??ng vi???c.<br  />\r\n<br  />\r\n????ng k?? l??m th??nh vi??n c???a ch??ng t??i, b???n c??ng ph???i ?????ng ?? r???ng, b???t k??? th??ng tin c?? nh??n n??o m?? b???n cung c???p ?????u ???????c l??u tr??? trong c?? s??? d??? li???u c???a h??? th???ng. M???c d?? nh???ng th??ng tin n??y s??? kh??ng ???????c cung c???p cho b???t k??? ng?????i th??? ba n??o kh??c m?? kh??ng ???????c s??? ?????ng ?? c???a b???n, ch??ng t??i kh??ng ch???u tr??ch nhi???m v??? vi???c nh???ng th??ng tin c?? nh??n n??y c???a b???n b??? l??? ra b??n ngo??i t??? nh???ng k??? ph?? ho???i c?? ?? ????? x???u t???n c??ng v??o c?? s??? d??? li???u c???a h??? th???ng.</p>', 1465538822);

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
(1, 'Ning', 1, 'radio', 'a:0:{}', '', 'none', '', '', 0, 255, 0, 0, 1, 1, 'input', 'a:1:{s:2:"vi";a:2:{i:0;s:11:"N??i ????ng";i:1;s:15:"N??i ????ng tin";}}', '0');

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
(13, 'VIP', '', 'T??i Kho???n VIP', '', 1, '', '', 0, 1464618850, 0, 8, 1, 0, 0, 0, 'a:7:{s:17:"access_groups_add";i:1;s:17:"access_groups_del";i:1;s:12:"access_addus";i:1;s:14:"access_waiting";i:1;s:13:"access_editus";i:1;s:12:"access_delus";i:1;s:13:"access_passus";i:1;}');

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
(1, 'B???n th??ch m??n th??? thao n??o nh???t', 'vi', 1, 1274840238, 1274840238),
(2, 'M??n ??n m?? b???n y??u th??ch', 'vi', 2, 1274840250, 1274840250),
(3, 'Th???n t?????ng ??i???n ???nh c???a b???n', 'vi', 3, 1274840257, 1274840257),
(4, 'B???n th??ch nh???c s??? n??o nh???t', 'vi', 4, 1274840264, 1274840264),
(5, 'Qu?? ngo???i c???a b???n ??? ????u', 'vi', 5, 1274840270, 1274840270),
(6, 'T??n cu???n s??ch &quot;g???i ?????u gi?????ng&quot;', 'vi', 6, 1274840278, 1274840278),
(7, 'Ng??y l??? m?? b???n lu??n mong ?????i', 'vi', 7, 1274840285, 1274840285);

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
(1, 'Gi???i thi???u v??? AzVNN', 'Gioi-thieu-ve-AzVNN', '', '', 0, '', '<h2>Trang Rao V???t L???n Nh???t <a href="http://azvnn.com">Vi???t Nam</a></h2>', 'gi???i thi???u', 0, '4', '', 0, 1, 1, 1464421307, 1465538761, 1);

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
(3, 'default', 'news', 'global.block_category.php', 'Ch??? ?????', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 1, 'a:2:{s:5:"catid";i:0;s:12:"title_length";i:22;}'),
(4, 'default', 'theme', 'global.module_menu.php', 'Module Menu', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 2, ''),
(5, 'default', 'page', 'global.html.php', 'Qu???ng c??o c???t tr??i', '', 'border', '[LEFT]', 0, '1', 1, '6', 1, 3, 'a:1:{s:11:"htmlcontent";s:162:"<div style="text-align:center"><a href="http://localhost/nukeviet/content/"><img alt="" height="65" src="/nukeviet/uploads/icon_post.gif" width="200" /></a></div>";}'),
(6, 'default', 'statistics', 'global.counter.php', 'Th???ng k??', '', 'primary', '[LEFT]', 0, '1', 1, '6', 1, 4, ''),
(7, 'default', 'users', 'global.login.php', 'T??i Kho???n', '', 'border', '[RIGHT]', 0, '1', 1, '6', 1, 1, 'a:2:{s:12:"display_mode";i:0;s:14:"popup_register";i:1;}'),
(9, 'default', 'voting', 'global.voting_random.php', 'Th??m d?? ?? ki???n', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 2, ''),
(10, 'default', 'news', 'global.block_tophits.php', 'Tin xem nhi???u', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 3, 'a:6:{s:10:"number_day";i:3650;s:6:"numrow";i:10;s:11:"showtooltip";i:1;s:16:"tooltip_position";s:6:"bottom";s:14:"tooltip_length";s:3:"150";s:7:"nocatid";a:2:{i:0;i:10;i:1;i:11;}}'),
(11, 'default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:"copyright_by";s:0:"";s:13:"copyright_url";s:0:"";s:9:"design_by";s:12:"VINADES.,JSC";s:10:"design_url";s:18:"http://vinades.vn/";s:13:"siteterms_url";s:48:"/nukeviet/index.php?language=vi&amp;nv=siteterms";}'),
(12, 'default', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 2, ''),
(13, 'default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 1, 'a:3:{s:5:"level";s:1:"M";s:15:"pixel_per_point";i:4;s:11:"outer_frame";i:1;}'),
(14, 'default', 'statistics', 'global.counter_button.php', 'Online button', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 2, ''),
(15, 'default', 'users', 'global.user_button.php', '????ng nh???p th??nh vi??n', '', 'no_title', '[PERSONALAREA]', 0, '1', 1, '6', 1, 1, ''),
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
(29, 'mobile_default', 'theme', 'global.menu_footer.php', 'C??c chuy??n m???c ch??nh', '', 'primary', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:"module_in_menu";a:9:{i:0;s:5:"about";i:1;s:4:"news";i:2;s:5:"users";i:3;s:7:"contact";i:4;s:6:"voting";i:5;s:7:"banners";i:6;s:4:"seek";i:7;s:5:"feeds";i:8;s:9:"siteterms";}}'),
(30, 'mobile_default', 'theme', 'global.company_info.php', 'C??ng ty ch??? qu???n', '', 'primary', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:17:{s:12:"company_name";s:58:"C??ng ty c??? ph???n ph??t tri???n ngu???n m??? Vi???t Nam";s:15:"company_address";s:72:"Ph??ng 2004 - T??a nh?? CT2 N??ng H????ng, 583 Nguy???n Tr??i, H?? N???i";s:16:"company_sortname";s:12:"VINADES.,JSC";s:15:"company_regcode";s:0:"";s:16:"company_regplace";s:0:"";s:21:"company_licensenumber";s:0:"";s:22:"company_responsibility";s:0:"";s:15:"company_showmap";i:1;s:20:"company_mapcenterlat";d:20.984516000000013;s:20:"company_mapcenterlng";d:105.795475;s:14:"company_maplat";d:20.984515999999999;s:14:"company_maplng";d:105.79547500000001;s:15:"company_mapzoom";i:17;s:13:"company_phone";s:56:"+84-4-85872007[+84485872007]|+84-904762534[+84904762534]";s:11:"company_fax";s:14:"+84-4-35500914";s:13:"company_email";s:18:"contact@vinades.vn";s:15:"company_website";s:17:"http://vinades.vn";}'),
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
(1, 'Ph??ng Ch??m s??c kh??ch h??ng', 'Cham-soc-khach-hang', '', '0933.092.093&#91;+84933092093&#93;', '', 'homthu@msn.com', '', 'B??? ph???n ti???p nh???n v?? gi???i quy???t c??c y??u c???u, ????? ngh???, ?? ki???n li??n quan ?????n ho???t ?????ng ch??nh c???a doanh nghi???p', '{"viber":"myViber","skype":"mySkype","yahoo":"myYahoo"}', 'T?? v???n|Khi???u n???i, ph???n ??nh|????? ngh??? h???p t??c', '1/1/1/0', 1, 1, 1),
(2, 'Ph??ng K??? thu???t', 'Ky-thuat', '', '(08) 38.000.002[+84838000002]', '08 38.000.003', 'technical@mysite.com', '', 'B??? ph???n ti???p nh???n v?? gi???i quy???t c??c c??u h???i li??n quan ?????n k??? thu???t', '{"viber":"myViber2","skype":"mySkype2","yahoo":"myYahoo2"}', 'Th??ng b??o l???i|G??p ?? c???i ti???n', '1/1/1/0;', 1, 2, 0);

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
(1, 'S???n ph???m', 'S???n ph???m c???a c??ng ty c??? ph???n ph??t tri???n ngu???n m??? Vi???t Nam - VINADES.,JSC');

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
(1, 1, 'H??? qu???n tr??? n???i dung NukeViet', '<ul>\n	<li>Gi???i th?????ng Nh??n t??i ?????t Vi???t 2011, 10.000+ website ??ang s??? d???ng</li>\n	<li>???????c B??? GD&amp;??T khuy???n kh??ch s??? d???ng trong c??c c?? s??? gi??o d???c</li>\n	<li>B??? TT&amp;TT quy ?????nh ??u ti??n s??? d???ng trong c?? quan nh?? n?????c</li>\n</ul>', 'http://vinades.vn/vi/san-pham/nukeviet/', '_blank', 'cms.jpg', 1464421307, 0, 1),
(2, 1, 'C???ng th??ng tin doanh nghi???p', '<ul>\n	<li>T??ch h???p b??n h??ng tr???c tuy???n</li>\n	<li>T??ch h???p c??c nghi???p v??? qu???n l?? (qu???n l?? kh??ch h??ng, qu???n l?? nh??n s???, qu???n l?? t??i li???u)</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Cong-thong-tin-doanh-nghiep-NukeViet-portal/', '_blank', 'portal.jpg', 1464421307, 0, 1),
(3, 1, 'C???ng th??ng tin Ph??ng gi??o d???c, S??? gi??o d???c', '<ul>\n	<li>T??ch h???p chung website h??ng tr??m tr?????ng</li>\n	<li>T??ch h???p c??c ???ng d???ng tr???c tuy???n (Tra ??i???m SMS, Tra c???u v??n b???ng, H???c b??? ??i???n t??? ...)</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Cong-thong-tin-giao-duc-NukeViet-Edugate/', '_blank', 'edugate.jpg', 1464421307, 0, 1),
(4, 1, 'T??a so???n b??o ??i???n t??? chuy??n nghi???p', '<ul>\n	<li>B???o m???t ??a t???ng, ph??n quy???n linh ho???t</li>\n	<li>H??? th???ng b??c tin t??? ?????ng, ????ng b??i t??? ?????ng, c??ng nhi???u ch???c n??ng ti??n ti???n kh??c...</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Toa-soan-bao-dien-tu/', '_blank', 'toa-soan-dien-tu.jpg', 1464421307, 0, 1),
(5, 1, 'Gi???i ph??p b??n h??ng tr???c tuy???n', '<ul><li>T??ch h???p c??c t??nh n??ng c?? b???n b??n h??ng tr???c tuy???n</li><li>T??ch h???p v???i c??c c???ng thanh to??n, v?? ??i???n t??? tr??n to??n qu???c</li></ul>', 'http://vinades.vn', '_blank', 'shop.jpg', 1464421307, 0, 1);

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
(1, 0, 1, 'H?????ng d???n', '/nukeviet/index.php?language=vi&nv=about', '', '', 1, 1, 0, '8,9', '6', 'about', '', 1, '', 0, 1),
(2, 0, 1, 'Tin T???c', '/nukeviet/index.php?language=vi&nv=news', '', '', 2, 4, 0, '18,19,20', '6', 'news', '', 1, '', 0, 1),
(3, 0, 1, 'Th??nh vi??n', '/nukeviet/index.php?language=vi&nv=users', '', '', 3, 8, 0, '', '6', 'users', '', 1, '', 0, 1),
(4, 0, 1, 'Th???ng k??', '/nukeviet/index.php?language=vi&nv=statistics', '', '', 4, 9, 0, '', '2', 'statistics', '', 1, '', 0, 1),
(6, 0, 1, 'T??m ki???m', '/nukeviet/index.php?language=vi&nv=seek', '', '', 5, 10, 0, '', '6', 'seek', '', 1, '', 0, 1),
(7, 0, 1, 'Li??n h???', '/nukeviet/index.php?language=vi&nv=contact', '', '', 6, 11, 0, '', '6', 'contact', '', 1, '', 0, 1),
(8, 1, 1, 'Gi???i thi???u v??? AzVNN', '/nukeviet/index.php?language=vi&nv=about&op=gioi-thieu-ve-nukeviet.html', '', '', 1, 2, 1, '', '6', 'about', '', 1, '', 0, 1),
(9, 1, 1, 'QUY ?????NH S??? D???NG', '/nukeviet/QUY-DINH-SU-DUNG.html', '', '', 2, 3, 1, '', '6', 'about', '', 1, '', 0, 1),
(18, 2, 1, 'Rss', '/nukeviet/index.php?language=vi&nv=news&op=rss', '', '', 1, 5, 1, '', '6', 'news', 'rss', 1, '', 0, 1),
(19, 2, 1, '????ng b??i vi???t', '/nukeviet/index.php?language=vi&nv=news&op=content', '', '', 2, 6, 1, '', '6', 'news', 'content', 1, '', 0, 1),
(20, 2, 1, 'T??m ki???m', '/nukeviet/index.php?language=vi&nv=news&op=search', '', '', 3, 7, 1, '', '6', 'news', 'search', 1, '', 0, 1);

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
(19, 'login', 'login', '????ng nh???p', 'users', 1, 1, 2, ''),
(20, 'register', 'register', '????ng k??', 'users', 1, 1, 3, ''),
(21, 'lostpass', 'lostpass', 'Kh??i ph???c m???t kh???u', 'users', 1, 1, 4, ''),
(22, 'active', 'active', 'K??ch ho???t t??i kho???n', 'users', 1, 0, 5, ''),
(23, 'lostactivelink', 'lostactivelink', 'Lostactivelink', 'users', 1, 0, 6, ''),
(24, 'editinfo', 'editinfo', 'Thi???p l???p t??i kho???n', 'users', 1, 1, 7, ''),
(25, 'memberlist', 'memberlist', 'Danh s??ch th??nh vi??n', 'users', 1, 1, 8, ''),
(26, 'avatar', 'avatar', 'Avatar', 'users', 1, 0, 9, ''),
(27, 'logout', 'logout', 'Tho??t', 'users', 1, 1, 10, ''),
(28, 'groups', 'groups', 'Qu???n l?? nh??m', 'users', 1, 0, 11, ''),
(29, 'oauth', 'oauth', 'Oauth', 'users', 0, 0, 0, ''),
(30, 'main', 'main', 'Main', 'statistics', 1, 0, 1, ''),
(31, 'allreferers', 'allreferers', 'Theo ???????ng d???n ?????n site', 'statistics', 1, 1, 2, ''),
(32, 'allcountries', 'allcountries', 'Theo qu???c gia', 'statistics', 1, 1, 3, ''),
(33, 'allbrowsers', 'allbrowsers', 'Theo tr??nh duy???t', 'statistics', 1, 1, 4, ''),
(34, 'allos', 'allos', 'Theo h??? ??i???u h??nh', 'statistics', 1, 1, 5, ''),
(35, 'allbots', 'allbots', 'Theo m??y ch??? t??m ki???m', 'statistics', 1, 1, 6, ''),
(36, 'referer', 'referer', '???????ng d???n ?????n site theo th??ng', 'statistics', 1, 0, 7, ''),
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
('about', 'page', 'about', 'about', 'Gi???i thi???u', '', 1464421307, 1, 1, '', '', '', '', '6', 1, 1, '', 1, 0),
('news', 'news', 'news', 'news', 'Tin T???c', '', 1464421307, 1, 1, '', '', '', '', '6', 2, 1, '', 1, 0),
('users', 'users', 'users', 'users', 'Th??nh vi??n', 'T??i kho???n', 1464421307, 1, 1, '', '', '', '', '6', 3, 1, '', 0, 0),
('contact', 'contact', 'contact', 'contact', 'Li??n h???', '', 1464421307, 1, 1, '', '', '', '', '6', 4, 1, '', 0, 0),
('statistics', 'statistics', 'statistics', 'statistics', 'Th???ng k??', '', 1464421307, 1, 1, '', '', '', 'online, statistics', '6', 5, 1, '', 0, 0),
('voting', 'voting', 'voting', 'voting', 'Th??m d?? ?? ki???n', '', 1464421307, 1, 1, '', '', '', '', '6', 6, 1, '', 1, 0),
('banners', 'banners', 'banners', 'banners', 'Qu???ng c??o', '', 1464421307, 1, 1, '', '', '', '', '6', 7, 1, '', 0, 0),
('seek', 'seek', 'seek', 'seek', 'T??m ki???m', '', 1464421307, 1, 0, '', '', '', '', '6', 8, 1, '', 0, 0),
('menu', 'menu', 'menu', 'menu', 'Menu Site', '', 1464421307, 0, 1, '', '', '', '', '6', 9, 1, '', 0, 0),
('feeds', 'feeds', 'feeds', 'feeds', 'RSS-feeds', 'RSS-feeds', 1464421307, 1, 1, '', '', '', '', '6', 10, 1, '', 0, 0),
('page', 'page', 'page', 'page', 'Page', '', 1464421307, 1, 1, '', '', '', '', '6', 11, 1, '', 1, 0),
('comment', 'comment', 'comment', 'comment', 'B??nh lu???n', 'Qu???n l?? b??nh lu???n', 1464421307, 0, 1, '', '', '', '', '6', 12, 1, '', 0, 0),
('siteterms', 'page', 'siteterms', 'siteterms', '??i???u kho???n s??? d???ng', '', 1464421307, 1, 1, '', '', '', '', '6', 13, 1, '', 1, 0),
('freecontent', 'freecontent', 'freecontent', 'freecontent', 'Gi???i thi???u s???n ph???m', '', 1464421307, 0, 1, '', '', '', '', '6', 14, 1, '', 0, 0);

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
(20, 2, '2', 0, 2, 'Ho??ng Mai, H?? N???i', 0, 1464448831, 1465010671, 1, 1465010671, 0, 1, 'B??n g???p nh?? m???t ph??? M?? M??y 130m m???t ti???n 5', 'Ban-gap-nha-mat-pho-Ma-May-130m-mat-tien-5', '', '', '', 0, 1, '4', 1, 7, 0, 0, 0);

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
(27, 10, '10', 0, 1, 'HCM', 0, 1464607413, 1464607413, 1, 1464607413, 0, 1, '?????t 1000m2 c???nh Khu DL B Qu???i I gi?? 10tr&#x002F;th', 'Dat-1000m2-canh-Khu-DL-B-Quoi-I-gia-10tr-th', '', '', '', 0, 1, '4', 1, 3, 2, 0, 0),
(29, 10, '10', 0, 1, 'HCM', 0, 1464607661, 1464607661, 1, 1464607661, 0, 1, 'Trang tr?? n???i th???t, S???a ch???a X??y D???ng', 'Trang-tri-noi-that-Sua-chua-Xay-Dung', '', '', '', 0, 1, '4', 1, 1, 2, 0, 0),
(30, 10, '10', 0, 1, '', 0, 1464607725, 1464607725, 1, 1464607725, 0, 1, 'B??n c??n 2PN t???ng 16 Seasons Avenue', 'Ban-can-2PN-tang-16-Seasons-Avenue', '', '', '', 0, 1, '4', 1, 2, 0, 0, 0);

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
(32, 11, '11', 0, 1, 'HCM', 0, 1464607937, 1464607937, 1, 1464607937, 0, 1, 'Xe 4 ch??? camry m??u ??en t???i tphcm', 'Xe-4-cho-camry-mau-den-tai-tphcm', '', '', '', 0, 1, '4', 1, 0, 0, 0, 0);

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
(35, 18, '18', 0, 1, '', 0, 1464608636, 1464608636, 1, 1464608636, 0, 1, '?????u thu K??? thu???t s??? DVB-T2 ch??? v???i 550k', 'Dau-thu-Ky-thuat-so-DVB-T2-chi-voi-550k', '', '', '', 0, 1, '4', 1, 2, 0, 0, 0),
(38, 18, '18', 0, 1, 'TP Hu???', 0, 1464679929, 1464679929, 1, 1464679929, 0, 1, 'In t???i x?????ng offset namecard, catalogue', 'In-tai-xuong-offset-namecard-catalogue', '', '', '', 0, 1, '4', 1, 4, 0, 0, 0);

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
(22, 20, '20', 0, 1, 'H?? N???i', 8, 1464512747, 1464604964, 1, 1464512700, 0, 2, 'B??n bu??n, b??n l??? n?????c c???t 1 l???n, 2 l???n, n?????c', 'Ban-buon-ban-le-nuoc-cat-1-lan-2-lan-nuoc', '', '', '', 0, 1, '4', 1, 2, 0, 0, 0);

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
(26, 21, '21', 0, 2, 'Thanh Xu??n, H?? N???i', 0, 1464604220, 1464604220, 1, 1464604220, 0, 1, 'M??y h??t ???m c??ng nghi???p Harison HD 504B', 'May-hut-am-cong-nghiep-Harison-HD-504B', '', '', '', 0, 1, '4', 1, 4, 0, 0, 0),
(25, 21, '21', 0, 2, 'S??i G??n', 0, 1464604126, 1465011481, 1, 1465011481, 0, 1, 'B??N M??Y KHOAN GI???NG - ??O??N V???T T?? &#40;??o??n 805&#41;', 'BAN-MAY-KHOAN-GIENG-DOAN-VAT-TU-Doan-805', '', '', '', 0, 1, '4', 1, 2, 0, 0, 0),
(36, 21, '21', 0, 1, 'HCM', 0, 1464608708, 1464608708, 1, 1464608708, 0, 1, 'B??n m??y l??m m??t kh??ng kh??.', 'Ban-may-lam-mat-khong-khi', '', '', '', 0, 1, '4', 1, 0, 0, 0, 0),
(37, 21, '21', 0, 1, 'HCM', 0, 1464679758, 1464679758, 1, 1464679758, 0, 1, 'C??p t??n hi???u AWG Hosiwell 2x1.5mm2', 'Cap-tin-hieu-AWG-Hosiwell-2x1-5mm2', '', '', '', 0, 1, '4', 1, 4, 0, 0, 0);

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
(21, 22, '22', 0, 2, '?????c L???c', 0, 1464449414, 1465010717, 1, 1465010717, 0, 1, 'cung c???p c???a nh???a l??i th??p, c???u thang r???', 'cung-cap-cua-nhua-loi-thep-cau-thang-re', '', '', '', 0, 1, '4', 1, 7, 0, 0, 0),
(40, 22, '22', 0, 1, 'H?? N???i', 0, 1464760714, 1464760714, 1, 1464760714, 0, 1, 'C???n tuy???n g???p lao ?????ng t???i Nh???t B???n 2', 'Can-tuyen-gap-lao-dong-tai-Nhat-Ban-2', '', '', '', 0, 1, '4', 1, 6, 0, 0, 0);

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
(34, 23, '23', 0, 1, 'H?? N???i', 0, 1464608075, 1464608075, 1, 1464608075, 0, 1, 'D???ch v??? s???a ch???a nh?? gi?? r??? nh???t t???i H?? N???i 1', 'Dich-vu-sua-chua-nha-gia-re-nhat-tai-Ha-Noi-1', '', '', '', 0, 1, '4', 1, 0, 0, 0, 0);

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
(28, 24, '24', 0, 1, 'HCM', 0, 1464607503, 1464607503, 1, 1464607503, 0, 1, 'D???ch v??? cho thu?? xe 45 t???i tphcm', 'Dich-vu-cho-thue-xe-45-tai-tphcm', '', '', '', 0, 1, '4', 1, 1, 0, 0, 0),
(33, 24, '24', 0, 1, 'HCM', 0, 1464607981, 1464607981, 1, 1464607981, 0, 1, '?????i l?? v?? m??y bay t???i tphcm - du l???ch n??t vi???t', 'dai-lY-ve-may-bay-tai-tphcm-du-lich-net-viet', '', '', '', 0, 1, '4', 1, 1, 0, 0, 0),
(39, 24, '24', 0, 1, 'HCM', 0, 1464760606, 1464760606, 1, 1464760606, 0, 1, 'Cho Vay G??p Ng??y Kh??ng Th??? Ch???p', 'Cho-Vay-Gop-Ngay-Khong-The-Chap', '', '', '', 0, 1, '4', 1, 1, 0, 0, 0),
(41, 24, '24', 0, 2, '', 0, 1464876446, 1464876446, 1, 1464876446, 0, 1, 'test test test', 'test-test-test', '', '', '', 0, 1, '4', 1, 0, 0, 0, 0),
(42, 24, '24', 0, 2, 'Ban M?? Thu???t', 0, 1464876777, 1464876777, 1, 1464876777, 0, 1, '123 test test test', '123-test-test-test', '', '', '', 0, 1, '4', 1, 0, 0, 0, 0);

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
(1, 0, 4, 'Tin ti??u ??i???m', 'Tin-tieu-diem', '', 'Tin ti??u ??i???m', 1, '', 1279945710, 1279956943),
(2, 1, 4, 'Tin m???i nh???t', 'Tin-moi-nhat', '', 'Tin m???i nh???t', 2, '', 1279945725, 1279956445),
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
(1, 0, 'Tin t???c', '', 'Tin-tuc', '', '', '', 0, 1, 1, 0, 'viewcat_main_right', 3, '8,12,9', 1, 4, 2, 0, '', '', '', 1274986690, 1274986690, '6'),
(2, 0, '??i???n tho???i', '', 'dien-thoai', '', '', '', 0, 2, 5, 0, 'viewcat_page_new', 0, '', 1, 4, 2, 0, 'Array', '', '', 1274986705, 1464451204, '6'),
(8, 1, 'Th??ng c??o b??o ch??', '', 'thong-cao-bao-chi', '', '', '', 0, 1, 2, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', '', 1274987105, 1274987244, '6'),
(9, 1, 'Tin c??ng ngh???', '', 'Tin-cong-nghe', '', '', '', 0, 3, 4, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', '', 1274987212, 1274987212, '6'),
(10, 0, 'B???t ?????ng s???n', '', 'bat-dong-san', '', '', '', 0, 3, 6, 0, 'viewcat_page_new', 0, '', 1, 4, 2, 0, 'Array', '', '', 1274987460, 1464451222, '6'),
(11, 0, '??t??', '', 'oto', '', '', '', 0, 4, 7, 0, 'viewcat_page_new', 0, '', 1, 4, 2, 0, 'Array', '', '', 1274987538, 1464451237, '6'),
(12, 1, 'B???n tin n???i b???', '', 'Ban-tin-noi-bo', '', '', '', 0, 2, 3, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', '', 1274987902, 1274987902, '6'),
(13, 0, 'Thu?? v?? Cho thu?? nh??', '', 'thue-va-cho-thue-nha', '', '', '', 0, 5, 8, 0, 'viewcat_page_new', 0, '', 1, 3, 2, 0, 'Array', '', '', 1464451254, 1464451254, '6'),
(14, 0, 'Th???i trang, L??m ?????p', '', 'thoi-trang-lam-dep', '', '', '', 0, 6, 9, 0, 'viewcat_page_new', 0, '', 1, 3, 2, 0, 'Array', '', '', 1464451264, 1464451264, '6'),
(15, 0, 'Ch??? Sim s???', '', 'cho-sim-so', '', '', '', 0, 7, 10, 0, 'viewcat_page_new', 0, '', 1, 3, 2, 0, 'Array', '', '', 1464451273, 1464451273, '6'),
(16, 0, 'Xe m??y - Xe ?????p', '', 'xe-may-xe-dap', '', '', '', 0, 8, 11, 0, 'viewcat_page_new', 0, '', 1, 3, 2, 0, 'Array', '', '', 1464451283, 1464451283, '6'),
(17, 0, 'M??y t??nh x??ch tay', '', 'may-tinh-xach-tay', '', '', '', 0, 9, 12, 0, 'viewcat_page_new', 0, '', 1, 3, 2, 0, 'Array', '', '', 1464451295, 1464451295, '6'),
(18, 0, '??i???n t??? - K??? thu???t s???', '', 'dien-tu-ky-thuat-so', '', '', '', 0, 10, 13, 0, 'viewcat_page_new', 0, '', 1, 3, 2, 0, 'Array', '', '', 1464451312, 1464451312, '6'),
(19, 0, 'M???ng - Ph???n m???m', '', 'mang-phan-mem', '', '', '', 0, 11, 14, 0, 'viewcat_page_new', 0, '', 1, 3, 2, 0, 'Array', '', '', 1464451323, 1464451323, '6'),
(20, 0, 'Mua s???m', '', 'mua-sam', '', '', '', 0, 12, 15, 0, 'viewcat_page_new', 0, '', 1, 3, 2, 0, 'Array', '', '', 1464451334, 1464451334, '6'),
(21, 0, '??i???n l???nh - ??i???n m??y', '', 'dien-lanh-dien-may', '', '', '', 0, 13, 16, 0, 'viewcat_page_new', 0, '', 1, 3, 2, 0, 'Array', '', '', 1464451343, 1464451343, '6'),
(22, 0, 'Vi???c l??m', '', 'viec-lam', '', '', '', 0, 14, 17, 0, 'viewcat_page_new', 0, '', 1, 3, 2, 0, 'Array', '', '', 1464451353, 1464451353, '6'),
(23, 0, 'd???ch v???', '', 'dich-vu', '', '', '', 0, 15, 18, 0, 'viewcat_page_new', 0, '', 1, 3, 2, 0, 'Array', '', '', 1464451364, 1464451364, '6'),
(24, 0, 'Du l???ch', '', 'du-lich', '', '', '', 0, 16, 19, 0, 'viewcat_page_new', 0, '', 1, 3, 2, 0, 'Array', '', '', 1464451373, 1464451373, '6');

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
(37, 'C??p t??n hi???u v???n xo???n ch???ng nhi???u ch???m ch??y ch???ng ch??y lan 1 Pair 16AWG Hosiwell ???????c s???n&nbsp;<br  />xu???t t???i Th??i Lan v?? ph??n ph???i ch??nh th???c b???i C??ng ty TNHH Hu???nh Ch???n Duy.<br  />C??p t??n hi???u 1Pair 16AWG ???????c s??? d???ng cho:<br  />- H??? th??ng b??o tr???m<br  />- H??? th???ng ??m thanh<br  />- H??? th???ng b??o ch??y<br  />- H??? th???ng ki???m so??t c???a ra v??o<br  />- H??? th???ng gi??? xe t??? ?????ng,???<br  />Th??ng s??? k??? thu???t:<br  />S??? c???p: 1 c???p (2 d??y d???n v???n xo???n l???i v???i nhau)<br  />L??i d???n l?? ?????ng tr??ng thi???c<br  />???????ng k??nh l??i: 16AWG ??? 2x1.5mm2<br  />C??ch ??i???n b???ng l??i nh???a PE<br  />D??y tho??t nhi???u c?? ???????ng k??nh 18AWG, l??m b???ng d??y ?????ng tr??ng thi???c<br  />V??? nh???a PVC ch???m ch??y ch???ng ch??y lan, m??u x??m<br  />Ngo??i s???n ph???m c??p t??n hi???u 16AWG, c??ng ty TNHH Hu???nh Ch???n Duy c??n cung c???p c??c s???n&nbsp;<br  />ph???m kh??c nh??:<br  />- C??p t??n hi???u ch???ng nhi???u ??m thanh ??? ??nh s??ng chu???n Hosiwell 18AWG, 20AWG, 22AWG<br  />- C??p t??n hi???u ch???ng nhi???u truy???n th??ng c??ng nghi???p Hosiwell RS485 (ch???ng nhi???u 2 l???p)&nbsp;<br  />chu???n 24AWG v?? 22AWG<br  />- C??p m???ng Hosiwell Cat.5e UTP, Cat.6 UTP<br  />- C??p m???ng ch???ng ch??y Cat.5e UTP v?? Cat.6 UTP LSZH Hosiwell<br  />- C??p m???ng ch???ng nhi???u Hosiwell Cat.5e SFTP (ch???ng nhi???u 2 l???p: m??ng + kim lo???i)<br  />- C??p m???ng m???m d??ng cho camera thang m??y Hosiwell Patch Cable Cat.5e UTP Hosiwell<br  />- C??p m???ng ch???ng ch??y cho camera thang m??y Hosiwell Cat.6 Patch Cable LSZH<br  />- C??p ?????ng tr???c ch???ng nhi???u Hosiwell RG6 v?? RG11<br  />- C??p ?????ng tr???c m???m d??ng cho camera thang m??y Hosiwell RG59<br  />- C??p t??n hi???u ch???ng nhi???u EIB 20AWG d??ng cho h??? th???ng nh?? th??ng minh Smarthome.<br  />- C??p ??i???u khi???n Kabeltec<br  />- C??p t??u bi???n TMC<br  />Qu?? kh??ch c?? nhu c???u v??? c??c lo???i d??y c??p t??n hi???u ch???ng nhi???u Hosiwell xin vui l??ng li??n h???:<br  />Ph??ng kinh doanh: 08.6660.8282<br  />Hotline: Ms. Ho??i Th????ng ??? 0948.794.138<br  />Skype: hoai_thuong1818<br  />Email: kinhdoanh01@huynhchanduy.com<br  />Web: huynhchanduy.com ; hosiwellcable.com<br  />C??ng ty TNHH Hu???nh Ch???n Duy r???t h??n h???nh ???????c ph???c v??? Qu?? kh??ch.<br  />&nbsp;', '', 0, 0, 1, 1, 1, 0),
(38, 'Ch????ng tr??nh khuy???n m??i gi???m gi?? th??ng 06<br  />C??ng ty TNHH Qu???ng C??o Th???ch Nguy???n<br  />4/5 H???u Giang, P.4, Qu???n T??n B??nh<br  />Email: thachnguyen.ad@gmail.com<br  />CALL : 08.39487007- 79487484<br  />Hotline: 0988 860 787 ??? 0903 077 058&nbsp;<br  />CHUY??N NH???N IN T??? R??I TRONG NG??Y<br  />?????M B???O D???CH V??? IN NHANH GI?? R???<br  />T??? R??I&nbsp;<br  />Lo???i gi???y Couche 150gsm, in 2 m???t kh??ng c??n m??ng&nbsp;<br  />Kh??? 10 x 15 10 x 20 A5 21 x 29,7 A3<br  />1.000 t??? 780.000?? 830.000?? 870.000?? 1.280.000??<br  />Khuy???n m??i:870.000?? 1.880.000??<br  />2.000 t??? 990.000<br  />Khuy???n m??i:880.000?? 1.050.000??<br  />Khuy???n m??i:880.000?? 1.200.000??<br  />Khuy???n m??i:940.000 1.560.000??<br  />Khuy???n m??i:1.350.000?? 2.300.000??<br  />4.000 t??? 1.250.000??<br  />Khuy???n m??i:1.080.000?? 1.350.000??<br  />Khuy???n m??i:1.180.000?? 1.650.000??<br  />Khuy???n m??i:1.360.000?? 2.300.000?? 3.930.000<br  />5.000 t??? 2.930.000?? 4.680.000??<br  /><br  /><br  /><br  />- In name card 5 h???p gi?? 21.000 vn??/h???p<br  />- In name card 10 h???p gi?? 12.000 vn??/h???p<br  />- T??? 50 h???p tr??? l??n gi?? 11.500??/h???p<br  />C??ng ty Th???ch Nguy???n chuy??n :&nbsp;<br  />??? In name card, danh thi???p, bao th??, catalouge, brochure, poster, b??a s?? mi, folder??????.<br  />??? L???ch t???t , thi???p Gi??ng Sinh, thi???p t???t, ??? t???t c??? c??c s???n ph???m tr??n ch???t li???u gi???y ?????u in.<br  />Xin ch??n th??nh c??m ??n qu?? kh??ch ???? d??nh ch??t ??t th???i gian qu?? b??u xem qua tin n??y.', '', 0, 0, 1, 1, 1, 0),
(39, '* CHO VAY TI???N G??P H??NG NG??Y KH??NG G??P TH??NG KH??NG C???N TH??? CH???P T??I S???N T???I&nbsp;<br  />S??I G??N *<br  />H??? S?? C???n:<br  />- H??? KH???U TP.HCM GI??? S??? H??? KH???U ( B???N G???C)<br  />- GI??? CMND ( B???N G???C )<br  />* M???C VAY: T??? 20 TRI???U ?????N 50 TRI???U<br  />- ??u ti??n ng?????i c?? thu nh???p h??ng ng??y<br  />- Hi???n t???i b??n m??nh s??? KH??NG l??m khu v???c Th??? ?????c, B??nh Ch??nh, H??c M??n, C??? Chi v?? c??c v??ng&nbsp;<br  />xa trung t??m Th??nh Ph???<br  />- ??u ti??n khu v???c Q1,Q3,Q4,,Q5,Q6,Q7, Ph?? Nhu???n, B??nh Th???nh, T??n B??nh , ri??ng G?? V???p th?? s???&nbsp;<br  />ti???n t???i thi???u ????? l??m l?? 30tr &gt; nh??<br  />L??u ?? vay n??ng l?? vay t?? nh??n ??? ngo??i kh??ng ph???i vay ng??n h??ng nh?? ( n??n ti???n xu???ng trong&nbsp;<br  />ng??y t???n nh?? lu??n , n??n nhu c???u c???n vay ki???u n??y r???t cao , xu???ng ti???n li???n trong ng??y ).&nbsp;<br  />- Khi vay s??? ti???n th???p nh???t ????? b??n m??nh l??m l?? 10Tr nh??<br  />Li??n h??? 0902.562.719&nbsp;', '', 0, 0, 1, 1, 1, 0),
(40, 'C??ng ty c??? ph???n ti??n phong Th??i S??n c???n tuy???n 20 nam v?? 50 n??? tu???i t??? 18 ??? 32 tu???i lao ?????ng&nbsp;<br  />(XKL??) t???i Nh???t B???n cho c??c ng??nh ngh???: ??i???n t???, may m???c, c?? kh??, ch??? bi???n th???y s???n, ????ng g??i&nbsp;<br  />h??ng h??a, l??m vi???c trong nh?? x?????ng - l????ng cao, c?? h???i l??m th??m nhi???u.<br  />Li??n h???: C??ng ty c??? ph???n ti??n phong Th??i S??n ??? S??? 11 BT3 Ti???u khu ???? th??? V???n Ph??c, H?? ????ng, H??&nbsp;<br  />N???i. ??t 04 66 72 73 74 ??? 0975 83 4444<br  />&nbsp;', '', 0, 0, 1, 1, 1, 0),
(41, 'test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test&nbsp;test test test', '', 0, 0, 1, 1, 1, 0),
(42, '123 test test test&nbsp;123 test test test&nbsp;123 test test test', '', 0, 0, 1, 1, 1, 0),
(35, '???U THU KTS DVB-T2 : 550K - S??I ?????NG M??A H?? C??NG EURO2016 !!!<br  />HOTLINE: 0963 90 88 11 - Mr Xu??n<br  />website: http://giamsat360.net<br  /><br  />CHI TI???T S???N PH???M<br  />DVB ??? T2 l?? chu???n thu truy???n h??nh k??? thu???t s??? m???t ?????t ???????c xem l?? c??ng ngh??? chuy???n ?????i t???&nbsp;<br  />analog sang digital.<br  />LTP Vi???t Nam l?? c??ng ty chuy??n cung c???p s???n ph???m ?????u k??? thu???t s??? DVB-T2 ph???c v??? l??? tr??nh s???&nbsp;<br  />h??a truy???n h??nh c???a Ch??nh Ph??? t???i n??m 2020. V???i m???c ti??u r???t ????n gi???n v?? r?? r??ng: Ch???t l?????ng&nbsp;<br  />l??m n??n th??nh c??ng.<br  />Gi???i thi???u ?????u thu k??? thu???t s??? DVB-T2<br  />Theo ????? ??n s??? h??a truy???n h??nh ???????c ph?? th??? t?????ng ch??nh ph??? ph?? duy???t th?? ?????n n??m 2020,&nbsp;<br  />truy???n h??nh c??p analog s??? ng???ng ph??t s??ng v?? thay th??? b???ng truy???n h??nh k??? thu???t s??? theo chu???n&nbsp;<br  />DVB T2.<br  />T??? 1/1/2016 c?? 5 th??nh ph??? l???n ti??n phong th???c hi???n s??? h??a: H?? N???i (c??), th??nh ph??? H??? Ch??&nbsp;<br  />Minh, ???? N???ng, C???n Th?? v?? H???i Ph??ng. ?????n n??m 2020 to??n b??? c??c t???nh th??nh tr??n c??? n?????c s???&nbsp;<br  />h??a ho??n to??n.<br  />T???i th???i ??i???m quy ?????nh theo l??? tr??nh, t???t c??? h??? gia ????nh kh??ng th??? ti???p t???c thu c??c k??nh truy???n&nbsp;<br  />h??nh t????ng t??? (analog) n???a. ????? ti???p t???c xem c??c k??nh truy???n h??nh, ng?????i d??n bu???c ph???i mua tivi&nbsp;<br  />c?? t??ch h???p s???n ?????u thu DVB T2 ho???c mua ?????u thu k??? thu???t s??? DVB T2 r???i.<br  />&#91;img&#93;http://tienichsong.com/wp-content/uploads/2016/04/%C4%91%E1%BA%A7u-thu-<br  />k%E1%BB%B9-thu%E1%BA%ADt-s%E1%BB%91-DVB-T2.png&#91;img&#93;<br  />Ch???c n??ng v?? ??u ??i???m<br  />?????u thu k??? thu???t s??? DVB T2 l?? lo???i ?????u thu k??? thu???t s??? m???t ?????t th??? h??? m???i nh???t t???i Vi???t Nam,&nbsp;<br  />??p d???ng theo c??ng ngh??? ti??n ti???n th??? gi???i chu???n DVB T2 / MPEG4 cho h??nh ???nh s???c n??t, thu&nbsp;<br  />nhi???u k??nh HD h??n, t??n hi???u truy???n t??? m???t ?????t ???n ?????nh h??n, d??ng ?????u thu k??? thu???t s??? DVB T2&nbsp;<br  />kh??ng b??? ???nh h?????ng b???i th???i ti???t.<br  />??? T??nh n??ng kh??ng ph??? thu???c d??y k??o t??? ngo??i v??o n??n qu?? kh??ch c?? th??? di chuy???n ?????u thu&nbsp;<br  />DVB T2 d??? d??ng t??? n??i n??y sang n??i kh??c, m???i t???nh th??nh.<br  />??? ?????u thu k??? thu???t s??? DVB-T2 s??? d???ng truy???n d???n k??? thu???t s??? m???t ?????t ??? t??n hi???u t??? v??? tinh&nbsp;<br  />truy???n xu???ng c??c tr???m d?????i m???t ?????t r???i truy???n v??o TV ???n ?????nh h??n ??? n??n tr???i m??a ho???c th???i ti???t&nbsp;<br  />x???u v???n xem b??nh th?????ng.<br  />??? ?????u thu c?? c???ng USB ????? k???t n???i USB ho???c ??? c???ng&nbsp;di ?????ng&nbsp;<img alt="" border="0" src="http://raovat.net/images/AdPro/external.png" />&nbsp;????? xem phim, nghe nh???c th???a&nbsp;<br  />th??ch ! H??? tr??? c??c ?????nh d???ng MP4, MKV, AVI, ISO, FLV???.(t???i tr???c ti???p t??? YOUTUBE v??? l?? xem&nbsp;<br  />???????c ngay)<br  />??? Ch???c n??ng ghi l???i gi??p qu?? kh??ch kh??ng b??? l??? b???t k??? ch?????ng tr??nh truy???n h??nh n??o !<br  />?????u thu k??? thu???t s??? DVB-T2 ph?? h???p cho t???t c??? ng?????i d??n, r???t ti???n l???i cho nh???ng h??? d??n ??? tr???,&nbsp;<br  />c??ng r???t ti???n l???i cho ng?????i ??? chung c??, c??n h??? cao c???p, nh?? ?????p, bi???t th???,??? v?? h??nh ???nh s???c n??t&nbsp;<br  />chu???n SD &amp; HD, thi???t b??? nh??? g???n, th???m m??? trong l??ng b??n tay, di d???i t??y ??, kh??ng s??? th???i ti???t,???.', '', 0, 0, 1, 1, 1, 0),
(36, 'B??n m??y l??m m??t kh??ng kh??.<br  />M??Y L??M M??T KH??NG KH?? l?? c??ng ngh??? c???a ??c. M??y l??m m??t kh??ng kh??, d???a tr??n nguy??n t???c &quot;bay h??i n?????c&quot; ????? l??m gi???m nhi???t ????? kh??ng kh??(l??m m??t m??i tr?????ng h???). V???i c??ng ngh??? ti??n ti???n ???? t???o ra thi???t b??? ?????c bi???t t??ch 1 ph???n H2O th??nh c??c Ion +O2 c??ng v???i n?????c ???? bi???n kh??ng kh?? n??ng kh?? th??nh lu???ng gi?? s???ch s???, trong l??nh, m??t l???nh nh?? gi?? s??ng, gi?? bi???n. Xem chi ti???t TAI ????Y&nbsp;<br  />- B???n c?? lo l???ng ?????n vi???c ng???i ??i???u h??a nhi??u s??? ???nh h?????ng g?? ???<br  />+ T??c h???i cho da: ??i???u h??a l??m kh?? da v?? ni??m m???c, l??m gia t??ng kh??? n??ng m???c c??c b???nh v??? da c???a c?? th???..&nbsp;<br  />+ Nguy c?? c??c b???nh v??? ph???i: ????y l?? m???t trong nh???ng nguy c?? l???n nh???t. ??i???u h??a l??m thay ?????i ?????t ng???t nhi???t ????? v?? ????? ???m trong ph??ng, ???nh h?????ng nghi??m tr???ng t???i h??? th???ng h?? h???p.<br  />+ ?? nhi???m ti???ng ???n: M???t s??? m??y ??i???u h??a t???o ra nh???ng ti???ng ???n v?? c??ng kh?? ch???u cho ng?????i s??? d???ng, g??y ra b???nh ??au ?????u c??? ng??y<br  />+ B???nh truy???n nhi???m ???????ng h?? h???p: M???t trong s??? nguy c?? s???c kh???e l?? vi???c lan truy???n c??c b???nh truy???n nhi???m ???????ng h?? h???p, v???n do kh??? n??ng l??u th??ng kh??ng kh?? trong ph??ng ??i???u h??a r???t k??m.<br  />+ D??? ???ng: B???i v?? n???m di chuy???n trong b???u kh??ng kh?? k??m l??u th??ng c???a ph??ng s??? d???ng ??i???u h??a d??? g??y ra c??c b???nh d??? ???ng.<br  />+ K??ch ???ng: C??? da v?? c??? h???ng ?????u d??? b??? k??ch ???ng h??n khi ng???i trong ph??ng b???t ??i???u h??a.<br  />+ C???m c??m: Trong ph??ng ??i???u h??a, virus g??y b???nh c??m d??? lan truy???n t??? ng?????i b???nh sang m???i ng?????i xung quanh.<br  />+ C??c v???n ????? v??? m???t: Ng?????i ng???i trong ph??ng b???t ??i???u h??a d??? m???c c??c b???nh v??? m???t nh?? vi??m m?? m???t v?? vi??m m??ng k???t<br  />+ Gi???m kh??? n??ng ch???u nhi???t: V???i nh???ng ng?????i ???? qu?? quen v???i m??i tr?????ng m??t m??? trong ph??ng ??i???u h??a, c?? th??? gi???m h???n kh??? n??ng ch???u ?????ng v???i nhi???t ????? ngo??i tr???i v?? do ???? hay ????? m??? h??i h??n.<br  />+ M???t m???i v?? ??au ?????u: L?? m???t trong nh???ng t??c h???i d??? g???p ??? nh???ng ng?????i th?????ng xuy??n d??ng ??i???u h??a.<br  />+Chi ph?? ti???n ??i???n kh?? cao .<br  />M??y l??m m??t kh??ng kh?? l?? s???n ph???m l??m m??t&nbsp;di ?????ng&nbsp;<img alt="" border="0" src="http://raovat.net/images/AdPro/external.png" />, c?? kh??? n??ng l??m m??t v???i kh??ng gian r???ng, v???a nh???, th???a m??n cho c??c ho???t ?????ng, s??? ki???n ch??? ????ng ng?????i, mang ?????n s??? m??t m??? c???a thi??n nhi??n v???i chi ph?? v???n h??nh th???p nh???t. C??c ?????c ??i???m c???a m??y nh?? sau:&nbsp;<br  />* C?? ???????c s??? m??t l???nh nh?? ?????ng tr?????c gi?? s??ng, bi???n. Kh??ng kh?? n??ng ???????c m??y l???c b???i v?? l??m l???nh(nhi???t ????? gi???m 5??c - 7??c so v???i nhi???t ????? m??i tr?????ng v?? ????? ???m 60%). M??y ph???i ho???t ?????ng trong m??i tr?????ng h??? v?? b??n h???(c?? gi?? v??o gi?? ra)<br  />* Lo???i b??? m???i m??i kh?? ch???u thay b???ng kh??ng kh?? trong l??nh m??t m??? gi??u oxy, Mang l???i s??? tho???i m??i d??? ch???u c?? l???i cho s???c kh???e ng?????i s??? d???ng.<br  />* D??? s??? d???ng, an to??n cho t???t c??? m???i ng?????i.(???? ???????c ki???m ?????nh ch???t l?????ng nh???p kh???u theo ti??u chu???n c???a T???ng c???c ti??u chu???n ??o l?????ng ch???t l?????ng).<br  />* ??i???n n??ng ti??u th??? th???p, s??? d???ng ???????c trong tr?????ng h???p d??ng m??y ph??t ??i???n.<br  />* Ho???t ?????ng b???n b???, chi ph?? b???o tr?? th???p.<br  />* H??i h??a v???i thi??n nhi??n, th??n thi???n v???i m??i tr?????ng (kh??ng c?? m??i ch???t l??m l???nh)<br  />T??nh c?? ?????ng cao, ????p ???ng ???????c c??c y??u c???u l??m m??t c???c b??? hay to??n b???. S??? d???ng l??m m??t cho ph??ng kh??ch h??? gia ????nh, H???i tr?????ng, Nh?? h??ng, C???a h??ng, khu vui ch??i, c??c s??? ki???n ????ng ng?????i trong nh?? hay ngo??i tr???i.&nbsp;<br  />M???i chi ti???t xin li??n h???:<br  />Mr. H???c ??? NVKD<br  />Mail : phamhoc83@gmail.com&nbsp;<br  />Mobile: 0983.85.87.83', '', 0, 0, 1, 1, 1, 0),
(28, 'C??ng ty du l???ch N??T VI???T chuy??n cho thu?? xe du l???ch 4-7-16-29-35-45 ch??? ?????i m???i 2009 - 2015 gi?? c??? ph???i ch??ng. Chuy??n ph???c v??? ????a ????n s??n&nbsp;<br  />bay, tham quan, c??ng t??c, c?????i h???i, t??? ch???c s??? ki???n, event,...????a r?????c&nbsp;<br  />CBCNV, h???c sinh, sinh vi??n (CHO THU?? TH??NG).&nbsp;<br  />- Xe 4 ch???: Vios, Altis, Camry, Chevrolet Cruze.<br  />- Xe 7 ch???: Innova, Fortuner.<br  />- Xe 16 ch???: Mercedes Ben, Mercedes Sprinter, Toyota Hiace.<br  />- Xe 29 ch???: Huyndai County nh???p.<br  />- Xe 35 ch???: Aero Town, Isuzu, Samco.<br  />- Xe 45 ch???: Aero Space Hiclass, Univer.<br  />Q??y Kh??ch c?? nhu c???u vui l??ng li??n h???:<br  />C??NG TY TNHH ?????U T?? V?? DU L???CH N??T VI???T<br  />?????a Ch???: 316/48 Nguy???n V??n Nghi - P.7 - Q. G?? V???p - Tp.HCM<br  />??i???n Tho???i: 08.38957456 - 0938440456 ( Mr D?? ).<br  />Email: Netviettour@yahoo.com<br  />Nick yahoo: netviettour<br  />Nick Skype: netviettour<br  />R???t h??n h???nh ???????c ph???c v??? qu?? kh??ch !', '', 0, 0, 1, 1, 1, 0),
(29, 'C??ng ty TNHH X??y D???ng LONG V?? th??nh l???p ng??y 21/10/2007. C??ng ty ???? t?? v???n thi???t k??? thi&nbsp;<br  />c??ng gi??m s??t nhi???u c??ng tr??nh x??y d???ng d??n d???ng v?? c??ng nghi???p. Thi???t k??? thi c??ng c??c lo???i&nbsp;<br  />nh?? v??n ph??ng, nh?? x?????ng, bi???t th???, kh??ch s???n, nh?? m???t ph??? ...&nbsp;<br  />V???i ph????ng ch??m ???M???i c??n nh?? l?? m???t t??? ???m???, to??n th??? c??n b??? c??ng nh??n vi??n c??ng ty TNHH X??y&nbsp;<br  />D???ng LONG V?? ???? ra s???c s??ng t???o trong thi???t k???, c???i ti???n k??? thu???t thi c??ng ????? t???o ra nh???ng s???n&nbsp;<br  />ph???m c?? n??t ?????c th?? ri??ng v?? ?????t ch???t l?????ng cao. C??ng ty ch??ng t??i lu??n mang ph????ng ch??m&nbsp;<br  />n??y ?????n t???t c??? c??c d??? ??n ???? v?? ??ang th???c hi???n ????? c??ng m???i ng?????i ho??n thi???n t??? ???m ri??ng c???a&nbsp;<br  />m??nh.<br  />?????i ng?? c??n b??? c??ng nh??n vi??n c??ng ty l??m c??ng t??c t?? v???n thi???t k??? thi c??ng gi??m s??t l?? ki???n&nbsp;<br  />tr??c s??, k??? s??, h???a vi??n, c??ng nh??n c?? nhi???u n??m kinh nghi???m t???ng l??m vi???c g???n b?? v???i nhau&nbsp;<br  />qua c??c c??ng ty x??y d???ng kh??c nhau, nh??ng nay t???p trung t???i C??ng ty TNHH X??y D???ng LONG V??&nbsp;<br  />n??n m???i ho???t ?????ng c???a c??ng ty ???????c v???n h??nh r???t nh???p nh??ng v?? ?????ng b???.&nbsp;<br  />Cu???i c??ng, C??ng ty TNHH X??y D???ng LONG V?? xin g???i l???i ch??o tr??n tr???ng ?????n qu?? c?? quan,&nbsp;<br  />doanh nghi???p v?? kh??ch h??ng ???? truy c???p Website c???a c??ng ty. C??ng ty ch??ng t??i nguy???n l??m&nbsp;<br  />tho??? m??n v?? ????p ???ng t???t nh???t s??? t??n nhi???m c??ng nh?? nh???ng y??u c???u c???a qu?? c?? quan, doanh&nbsp;<br  />nghi???p v?? kh??ch h??ng ???? ?????t ra cho ch??ng t??i.<br  />H??Y ?????N V???I CH??NG T??I, C??C B???N, T???NG C?? NH??N CH??NH L?? NH???NG VI??N G???CH X??Y&nbsp;<br  />N??N NG??I NH?? CHO C??C B???N, CH??NH B???N S??? L?? CH??? NH??N T??? ???M ????CH TH???C X???NG T???M C???A&nbsp;<br  />C??C B???N.<br  /><br  />=============================<br  />Cty TNHH XD LONG V??<br  />11 NGUY???N DU, P. B???N NGH??, Q.1, TPHCM.<br  />MST: 03 09 46 55 79<br  /><br  />KS. PH?? XU??N V??<br  />(090) 944 3212<br  /><br  />phixuanvu@longvucons.com.vn<br  />http://longvucons.com.vn&nbsp;', '', 0, 0, 1, 1, 1, 0),
(30, 'T??i b??n c??n h??? cao c???p ??? chung c?? Seasons Avenue, giai ??o???n 2 c???a Mulberry Lane&nbsp;<br  />( thu???c ch??? ?????u t?? Singapore ) t???ng 16<br  />Thi???t k??? 80m2, c??n 2PN , 2 wc, ban c??ng r???ng tho??ng. H?????ng ??N r???t m??t.<br  />C???n b??n g???p gi?? ch??? 2t???. LH ch??nh ch??? : ANH MINH - 0972.092.862', '', 0, 0, 1, 1, 1, 0),
(31, 'CTY TNHH Th????ng M???i Tin H???c CICI<br  />CT4 .Tam ?????o P15 Q10 Tp.HCM<br  />Website: www.laptopusa.com.vn<br  />Call ????? ???????c gi?? t???t nh???t<br  />SHIP TO??N QU???C<br  /><br  />Chuy??n c??c d??ng m??y t??nh x??ch tay d??nh cho doanh nh??n v?? v??n ph??ng (hay c??n g???i l?? Business Laptops) c???a h??ng HP, ???? l?? d??ng HP EliteBook (trong d??ng n??y bao g???m hai d??ng nh??nh l?? HP EliteBookNotebook&nbsp;<img alt="" border="0" src="http://raovat.net/images/AdPro/external.png" />&nbsp;&amp; Mobile Workstation);h??ng DELL (DELL Latitude E-Series &amp; DELL Precision M-Series) v?? k??? ti???p l?? IBM (IBM ThinkPad X-Series, T-Series &amp; W-Series).<br  />???<br  /><br  />Lenovo ThinkPad T450 Broadwell 2015 n???ng 1.6Kg new 100% Fullbox nguy??n SEAL<br  /><br  />- CPU:Intel?? Broadwell Core??? I5 5300U 2.3GHz ( 4x2.3GHz) Turbo Boost Upto 2.9Ghz (Cache 3 MB - Bus 1600Mhz) -<br  />- Memory: 8Gb PC3L -DDR3 Bus 1600hz<br  />- HDD: 256Gb SSD SATA 3<br  />- VGA: Intel Graphic HD 5500<br  />- Display: 14&quot; Wide XGA TFT ????? ph??n gi???i cao 1600*900<br  />- OS: Win 8 Pro 64bit b???n quy???n<br  />- Battery: 6 cell<br  />- Option :Webcam,Bluetooth,????n b??n ph??m,USB 3.0,DisplayPort,Support WWAN 3G,eSATA<br  />H??ng m???i 100% Fullbox nguy??n Seal<br  />B???o h??nh 12 th??ng (BH To??n c???u 12-2018)<br  />Gi?? b??n : 19.000.000 VN?? - Qu?? t???ng t??i chu???t<br  />M???i chi ti???t xin li??n h??? : 0937.88.89.90<br  /><br  /><br  /><br  /><br  /><br  />CTY TNHH Th????ng M???i Tin H???c CICI<br  />CT4 .Tam ?????o P15 Q10 Tp.HCM<br  />Website: www.laptopusa.com.vn<br  />Call ????? ???????c gi?? t???t nh???t<br  />SHIP TO??N QU???C<br  />&nbsp;', '', 0, 0, 1, 1, 1, 0),
(32, 'C??ng ty du l???ch N??T VI???T chuy??n cho thu?? xe du l???ch 29 ch??? ?????i m???i 2009 - 2015 gi?? c??? ph???i&nbsp;<br  />ch??ng. Chuy??n ph???c v??? ????a ????n s??n bay, tham quan, c??ng t??c, c?????i h???i, t??? ch???c s??? ki???n,&nbsp;<br  />event,...????a r?????c CBCNV, h???c sinh, sinh vi??n (CHO THU?? TH??NG).<br  /><br  />- Xe 4 ch???: Vios, Altis, Camry m??u ??en VIP, Chevrolet Cruze<br  /><br  />- Xe 7 ch???: Innova, Fortuner.<br  /><br  />- Xe 16 ch???: Mercedes Ben, Sprinter, Toyota Hiace.<br  /><br  />- Xe 29 ch???: Huyndai County nh???p.<br  /><br  />- Xe 35 ch???: Aero Town, Isuzu, Samco.<br  /><br  />- Xe 45 ch???: Aero Space Hiclass, Univer.<br  /><br  />Q??y Kh??ch c?? nhu c???u vui l??ng li??n h???:<br  /><br  />C??NG TY TNHH ?????U T?? V?? DU L???CH N??T VI???T<br  />?????a Ch???: 316/48 Nguy???n V??n Nghi - P.7 - Q. G?? V???p - Tp.HCM<br  />??i???n Tho???i: 08.38957456 - 0938440456 ( Mr D?? ).<br  /><br  />Email: Netviettour@yahoo.com<br  /><br  />Nick yahoo: netviettour<br  /><br  />Nick Skype: netviettour<br  /><br  />R???t h??n h???nh ???????c ph???c v??? qu?? kh??ch !&nbsp;<br  />&nbsp;', '', 0, 0, 1, 1, 1, 0),
(33, 'C??ng ty Du L???ch N??t Vi???t xin g???i ?????n Anh Ch??? c??ng Qu?? C??ng Ty l???i ch??c s???c kh???e v?? th??nh ?????t trong kinh doanh. Du L???ch N??t Vi???t chuy??n ph???c v??? Qu?? Kh??ch v???i nh???ng d???ch v??? sau ????y:Cho thu?? xe du l???ch ( t??? 4 ???&gt; 45 ch??? ) ??? T??? ch???c Tour Du L???ch - Gia h???n visa - B??n V?? M??y bay.&nbsp;<br  />CHO THU?? XE DU L???CH ?????I M???I&nbsp;<br  />Li??n H???: Mr D?? : 08.38957456 ??? 0938440456.<br  />- Cho Thu?? xe du l???ch ?????i m???i t??? 4 -&gt; 45 ch???. Chuy??n ph???c v??? : ????a ????n s??n bay, tham&nbsp;<br  />quan, c??ng t??c, c?????i h???i, ma chay, h??nh h????ng ... ????a r?????c CBCNV, h???c sinh, sinh vi??n ( cho&nbsp;<br  />thu?? th??ng ).<br  />- Gi?? c??? ph???i ch??ng, ?????i ng?? t??i x??? vui v???, nhi???u n??m kinh nghi???m ph???c v??? 24/24<br  />T??? CH???C TOUR DU L???CH TR???N G??I:&nbsp;<br  />T?? v???n, thi???t k??? tour du l???ch tr???n g??i theo y??u c???u c???a Qu?? Kh??ch. ????? ????p ???ng nhu c???u&nbsp;<br  />tham quan du l???ch c???a t???ng c?? nh??n, gia ????nh v?? c?? quan ????n v??? ph?? h???p v???i th???i gian, tuy???n&nbsp;<br  />tham quan, s??? l?????ng kh??ch tham gia v?? kinh ph??. C??ng ty du l???ch N??t Vi???t s???n s??ng thi???t k???&nbsp;<br  />c??c ch????ng tr??nh tour v?? gi?? c??? ph?? h???p theo y??u c???u c???a t???ng ????n v???.&nbsp;<br  />- Gi?? c??? c???nh tranh.&nbsp;<br  />- D???ch v??? cao c???p, ch???t l?????ng.&nbsp;<br  />- ?????i ng?? MC , H?????ng d???n vi??n v?? T??i x??? nhi???u n??m kinh nghi???m, n??ng ?????ng , t???n t??m&nbsp;<br  />v???i ngh??? nghi???p th???c s??? ??em ?????n cho Qu?? kh??ch c???m gi??c tho???i m??i v?? ???n t?????ng sau m???i&nbsp;<br  />chuy???n tham quan.&nbsp;<br  />GIA H???N VISA :<br  />- Nh???n gia h???n visa v?? l??m m???i ho???c gia h???n th??? t???m tr?? cho ng?????i n?????c ngo??i ??ang h???c t???p,&nbsp;<br  />l??m vi???c t???i Vi???t Nam, ( trong th???i gian nhanh nh???t, gi?? r??? nh???t ).<br  />?????I L?? V?? M??Y BAY<br  />- Trong n?????c : Vi???t Nam Airline , Jetstar, Air MeKong.&nbsp;<br  />- N?????c ngo??i : Cathay, Singapore, Lion, China Airline, Thai.&nbsp;<br  />Giao v?? t???n n??i theo y??u c???u c???a Qu?? Kh??ch !<br  />Qu?? kh??ch c?? nhu c???u xin vui l??ng li??n h???:<br  />C??NG TY TNHH ?????U T?? V?? DU L???CH N??T VI???T&nbsp;<br  />?????a Ch???: 316/48 Nguy???n V??n Nghi - F.7 - Q.G?? V???p - Tp.HCM<br  />??i???n Tho???i : 08.38957456 ??? 0938440456 ( Mr D?? ).<br  />Email: netviettour@yahoo.com,&nbsp;<br  />Nick yahoo: netviettour<br  />Nick skype: netviettour<br  /><br  />R???T H??N H???NH ???????C PH???C V??? QU?? KH??CH', '', 0, 0, 1, 1, 1, 0),
(34, 'S???a ch???a nh?? gi?? r???: M???i c??ng tr??nh S???a ch???a nh?? ?????u c?? th???i gian s??? d???ng nh???t ?????nh, th???i gian&nbsp;<br  />n??y d??i hay ng???n ph??? thu???c v??o k??? thu???t thi c??ng, ch???t l?????ng c??c v???t li???u v?? m???t s??? y???u t??? kh??ch&nbsp;<br  />quan kh??c. V?? v???y ?????n m???t l??c n??o ???? ng??i nh?? c???a b???n s??? kh??ng c??n gi??? ???????c ch???t l?????ng nh??&nbsp;<br  />ban ?????u, m???t s??? h???ng m???c trong c??n nh?? s??? xu???ng c???p, kh??ng ?????m b???o an to??n, g??y kh?? ch???u&nbsp;<br  />trong sinh ho???t, l??c n??y b???n s??? c???n ?????n d???ch v??? s???a ch???a nh?? gi?? r??? ????? gi???i quy???t ???????c t???n g???c&nbsp;<br  />m???i v???n ?????.<br  />H??y g???i ngay cho ch??ng t??i, c??ng ty b???o tr?? nh?? 365 ????? ???????c t?? v???n d???ch v??? s???a ch???a nh?? nhanh,&nbsp;<br  />ch???t l?????ng, gi?? h???p d???n.<br  /><br  /><br  />D???ch v??? s???a ch???a nh?? gi?? r??? nh???t t???i H?? N???i<br  /><br  />B???n h??y li??n h??? ngay 0916.89.8181 ????? ???????c gi?? ??u ????i trong h??m nay<br  />(D??nh cho 5 kh??ch ?????u ti??n)<br  />B???n mong mu???n m???t d???ch v??? s???a nh?? tr???n g??i nhanh g???n m?? v???n ?????m b???o ch???t l?????ng, ti???t ki???m&nbsp;<br  />chi ph??. Tuy nhi??n kh??ng ph???i c??ng ty n??o c??ng ????p ???ng ???????c nh???ng y??u c???u c???a b???n, v?? hi???n&nbsp;<br  />nay c?? qu?? nhi???u c??c c??ng ty ho???t ?????ng trong l??nh v???c x??y d???ng, s???a ch???a nh?? c?? n??ng l???c k??m,&nbsp;<br  />l??m ??n kh??ng uy t??n.<br  />Nh??ng b???n c??ng kh??ng c???n ph???i qu?? lo l???ng v?? ??i???u n??y, h??y ?????n v???i ch??ng t??i, c??ng ty x??y d???ng&nbsp;<br  />Ph????ng ????ng c?? ?????i ng?? k??? s?? x??y d???ng, ?????i ng?? c??ng nh??n ????ng ?????o, tay ngh??? cao v???i nhi???u&nbsp;<br  />n??m kinh nghi???m trong l??nh v???c x??y d???ng, s???a ch???a nh?? nhanh t???i H?? N???i.<br  />V???i kinh nghi???m c??ng uy t??n c???a m??nh, c??ng ty x??y d???ng Ph????ng ????ng lu??n n???m b???t ???????c nhu&nbsp;<br  />c???u c???a kh??ch h??ng v?? nhanh ch??ng ????a ra nh???ng ph????ng ??n, bi???n ph??p thi c??ng hi???u qu??? nh???t&nbsp;<br  />v???a ?????m b???o nhanh ch??ng, ch???t l?????ng, v???a ?????m b???o ???????c chi ph?? r??? nh???t cho kh??ch h??ng.<br  /><br  />D???ch v??? s???a ch???a nh?? gi?? r??? nh???t ??? H?? N???i<br  />Cu???c s???ng hi???n ?????i ng??y c??ng v???i v??, t???t b???t, th???i gian tr??? n??n ????ng qu?? h??n bao gi??? h???t. Hi???u&nbsp;<br  />???????c ??i???u n??y, ????? ph???c v??? qu?? kh??ch, c??ng ty x??y d???ng s???a ch???a nh?? Ph????ng ????ng ???? ????a ra&nbsp;<br  />m???t quy tr??nh l??m vi???c chuy??n nghi???p, nhanh nh???t, hi???u qu??? nh???t.<br  />1. Kh??ch h??ng g???i ??i???n c?? nhu c???u t?? v???n s???a ch???a nh?? nhanh &gt;&gt;&gt; ch??ng t??i ti???p nh???n y??u c???u&nbsp;<br  />m???t c??ch chi ti???t nh???t.<br  />2. D???a tr??n th??ng tin c???a kh??ch h??ng, ch??ng t??i ph??n t??ch v?? c??? k??? s?? tr???c ti???p t???i c??ng tr??nh c???a&nbsp;<br  />kh??ch h??ng ????? kh???o s??t v?? ????a ra h?????ng s???a ch???a theo nhu c???u c???a kh??ch h??ng.<br  />3. Th???ng nh???t ph????ng ??n s???a ch???a v???i kh??ch h??ng v?? b???ng gi?? &gt;&gt;&gt; k?? k???t h???p ?????ng.<br  />4. Ti???n h??nh thi c??ng c??ng tr??nh m???t c??ch nhanh nh???t theo b???n k??? ho???ch h?????ng d???n c???a k??? s??&nbsp;<br  />x??y d???ng thi???t k???.<br  />5. Nghi???m thu v?? b??n giao c??ng tr??nh cho ng?????i s??? d???ng d???ch v??? s???a ch???a nh??&nbsp;<br  /><br  />D???ch v??? s???a ch???a nh?? gi?? r??? nh???t H?? N???i<br  /><br  />Trong cu???c s???ng hi???n ?????i ng??y nay, ????? ti???t ki???m th???i gian v?? c??ng s???c th?? c??c gia ????nh th?????ng&nbsp;<br  />t??m ?????n c??c g??i d???ch v??? s???a ch???a nh?? nhanh, ch???t l?????ng. V???i kinh nghi???m v?? n??ng l???c c???a m??nh,&nbsp;<br  />c??ng ty x??y d???ng Ph????ng ????ng lu??n mang ?????n cho qu?? kh??ch nh???ng g??i d???ch v??? s???a ch???a nh??&nbsp;<br  />v???i ch???t l?????ng t???t nh???t v?? chi ph?? r??? nh???t.<br  />Ch??ng t??i cam k???t, thi c??ng c??ng tr??nh m???t c??ch nhanh nh???t, ????p ???ng y??u c???u k??? thu???t tr??n t???ng&nbsp;<br  />h???ng m???c, ?????m b???o ch???t l?????ng theo y??u c???u, ????? b???n song h??nh c??ng th???i gian.<br  />C??ng ty x??y d???ng Ph????ng ????ng s???a ch???a nh?? ch???t l?????ng uy t??n h??ng ?????u t???i H?? N???i.<br  />B???n h??y li??n h??? ngay ????? ???????c gi?? ??u ????i trong h??m nay (d??nh cho 5 kh??ch ?????u ti??n)<br  />M???i chi ti???t b???n vui l??ng li??n h??? theo:<br  />C??NG TY B???O TR?? T??A NH?? NSC<br  />Hotline: (04)6295803 . 0916.89.8181<br  />Tr??? s??? ch??nh: NG?? 295 B???ch Mai Hai B?? Trung, H?? n???i<br  />S??T : 0916.89.8181 Mr.Long<br  />&nbsp;', '', 0, 0, 1, 1, 1, 0),
(20, 'Gia ????nh c???n b??n g???p nh?? m???t ph??? M?? M??y di???n t??ch b??a ????? 124m th???c t??? 130m nh?? 2 t???ng c?? x??c&nbsp;<br  />?????nh mua ?????t, m???t ti???n r???ng 5,25m.<br  />Nh?? c?? m???t ti???n r???ng, kinh doanh hi???u qu??? ph?? h???p ????? ?????u t?? kh??ch s???n, nh?? h??ng??????.S??? ?????&nbsp;<br  />ch??nh ch???, 1 s??? giao d???ch nhanh g???n thu???n ti???n.<br  />Gi?? b??n 51 t??? th????ng l?????ng.<br  />Li??n h???: Anh L???ch 0985861908', '', 0, 0, 1, 1, 1, 0),
(21, 'GQ-Windows Cung c???p c??c d??ng s???n ph???m c???a nh???a l??i&nbsp;<br  />th??p, c???u thang k??nh, c???a nh??m k??nh, m???t d???ng&nbsp;<br  />k??nh, c???a cu???n, c???a k??o,&nbsp;v??ch k??nh, b???n t???m k??nh,&nbsp;<br  />lan can k??nh n???i ngo???i th???t&nbsp;c??c lo???i,??? V???i m???u m?? ??a d???ng&nbsp;<br  />ph?? h???p v???i m???i c??ng tr??nh ki???n tr??c t??? truy???n th???ng ?????n hi???n ?????i&nbsp;<br  />mang t???m v?? qu???c t???,???&nbsp;', '', 0, 0, 1, 1, 1, 0),
(22, 'C??ng ty TNHH C??ng ngh??? m??i tr?????ng v?? T??? ?????ng h??a Minh T??n chuy??n s???n xu???t v?? cung c???p&nbsp;<br  />\r\nn?????c c???t 1 l???n, n?????c c???t 2 l???n ?????t ti??u chu???n ch???t l?????ng cao gi?? r??? nh???t. N?????c c???t ???????c tr??ng&nbsp;<br  />\r\nc???t kh??p k??n theo c??ng ngh??? Nh???t B???n<br  />\r\n<br  />\r\nhttp://minhtaneta.com.vn/vn/san-pham/51-nuoc-cat.html<br  />\r\n<br  />\r\nN?????c c???t 2 l???n ???????c d??ng ????? l??m th?? nghi???m, r???a d???ng c??? y t???, l??m m??t m??y, ????? m??y s???n xu???t&nbsp;<br  />\r\nc??ng nghi???p, pha ch??? h??a ch???t, ???????c s??? d???ng r???ng r??i trong c??c b???nh vi???n, c?? s??? y t???, ph??ng&nbsp;<br  />\r\nkh??m, ph??ng m???, ph??ng x??t nghi???m, d?????c ph???m, ... Ngo??i ra, n?????c c???t 1 l???n, n?????c c???t 2 l???n c??n&nbsp;<br  />\r\n???????c d??ng trong c??ng nghi???p nh?? ????? ???c quy ??i???n, n???i h??i, v?? ?????c bi???t hi???u qu??? trong c??c thi???t b???&nbsp;<br  />\r\nc?? kh?? ch??nh x??c (m??y CNC, m??y ti???n, m??y c???t, ...); ng??nh s???n xu???t vi m???ch ??i???n t??????<br  />\r\nhttp://minhtaneta.com.vn/vn/san-pham/57-nuoc-cat-1-lan.html<br  />\r\nN?????c c???t 2 l???n ???????c s???n xu???t tr??n d??y chuy???n c??ng ngh??? hi???n ?????i c???a Nh???t B???n. Ch???t l?????ng s???n&nbsp;<br  />\r\nph???m lu??n lu??n ???????c ?????m b???o theo ti??u chu???n C???c ??o l?????ng Vi???t Nam.<br  />\r\nhttp://minhtaneta.com.vn/vn/san-pham/52-nuoc-cat-2-lan.html<br  />\r\nC??ng ty ch??ng t??i s??? cung c???p ?????y ????? t??i li???u v??? ti??u chu???n ch???t l?????ng s???n ph???m cho qu?? kh??ch&nbsp;<br  />\r\nh??ng.<br  />\r\n<br  />\r\nCh??? ti??u k??? thu???t&nbsp;<br  />\r\n1. H??m l?????ng c???n SiO2, mg/l ??? 0.02&nbsp;<br  />\r\n2. Amoniac v?? mu???i amoni (NH4), mg/l ??? 0,00&nbsp;<br  />\r\n3. Sunfat (SO4), mg/l ??? 0,4&nbsp;<br  />\r\n4. Clrua (Cl), mg/l ??? 0,02&nbsp;<br  />\r\n5. S???t (Fe), mg/l ??? 0,01&nbsp;<br  />\r\n6. ?????ng (Cu), mg/l ??? 0,0001&nbsp;<br  />\r\n7. Nh??m (Al), mg/l ??? 0,001&nbsp;<br  />\r\n8. ????? c???ng (Ca + Mg), mg/l ??? 0,00&nbsp;<br  />\r\n9. pH 5,5-6,5&nbsp;<br  />\r\n10. ????? d???n ??i???n ri??ng, MS.cm-1 ??? 1&nbsp;<br  />\r\n11. T???ng ch???t r???n ho?? tan (TDS) ??? 0,5&nbsp;<br  />\r\n<br  />\r\nN?????c c???t 2 l???n c?? ch???t l?????ng t????ng ??????ng v???i n?????c d??ng trong ph??ng th?? nghi???m ????? ph??n t??ch&nbsp;<br  />\r\nlo???i 2 theo TCVN 4851-89 (ISO 3696-1987)<br  />\r\n<br  />\r\nB??n c???nh ???? ch??ng t??i c??n kinh doanh tr??n nhi???u l??nh v???c kh??c:&nbsp;<br  />\r\n<br  />\r\n??? H??? th???ng x??? l?? n?????c b???nh vi???n, m??y ch???y th???n nh??n t???o, m??y l???c n?????c x??t nghi???m y t???<br  />\r\nhttp://minhtaneta.com.vn/vn/san-pham/49-xu-ly-nuoc-phuc-vu-y-te.html<br  />\r\n<br  />\r\nCh??ng t??i lu??n s???n s??ng ????p ???ng m???i y??u c???u c???a Q??y kh??ch h??ng tr??n to??n qu???c. N???u b???n c??&nbsp;<br  />\r\nnhu c???u h??y li??n h??? t???i ch??ng t??i ????? nh???n ???????c s??? t?? v???n v?? b??o gi?? t???t nh???t.<br  />\r\n<br  />\r\nM???i chi ti???t xin vui l??ng li??n h???:<br  />\r\n<br  />\r\n??inh V??n C?? ??? Sales Manager<br  />\r\nC??ng ty TNHH C??ng ngh??? MT v?? T??? ?????ng h??a Minh T??n<br  />\r\nTr??? s???: S??? 2, ng??ch 250/16, ???????ng Kim Giang, ?????i Kim, Ho??ng Mai, H?? N???i.<br  />\r\nTel: 043.5592807 ??? Fax: 043.5592806<br  />\r\n<br  />\r\nHotline 0975.293.246&nbsp;<br  />\r\nEmail : dinhcoeta@gmail.com<br  />\r\nWebsite: http://www.minhtaneta.com.vn', 'Ho??ng Mai, H?? N???i', 0, 0, 1, 1, 1, 0),
(27, '?????t 1000m2 c???nh khu du l???ch B??nh Qu???i 1 gi?? 10tr/th<br  />Hi???n nay t??i c?? 1000m2 ?????t ngay c???nh khu du l???ch B??nh Qu???i 1 cho thu?? l??m nh?? h??ng, kho x?????ng.&nbsp;<br  />Hi???n ?????t n??n ???????c ????? cao kh??ng kh??ng ng???p n?????c. C??ch m???t ???????ng 30m2 thu???n ti???n xe t???i v??o&nbsp;<br  />nh???n tr??? h??ng. ?????t c??ng c?? th??? thu?? l??m qu?? c?? ph??, nh?? h??ng...<br  />?????t c?? th??? thu?? l??u d??i.<br  />Ai c?? nhu c???u li??n h??? ch??nh ch???: 0909350299 (A Ti???p)<br  />&nbsp;', '0909350299', 0, 0, 1, 1, 1, 0),
(25, '<font color="rgb(51, 204, 0);"><b><font size="3">B??? T??I NGUY??N V?? M??I TR?????NG</font></b></font><br  /><b><font size="3">LI??N ??O??N QUY HO???CH V?? ??I???U TRA T??I NGUY??N N?????C MI???N NAM</font></b><br  /><font color="rgb(0, 0, 255);"><b><font size="3">??O??N V???T T?? NG??NH N?????C MI???N NAM</font></b></font><br  /><font color="rgb(255, 0, 0);"><b><font size="3">Tel: 083 7408370&nbsp;&nbsp; Hotline: 0913 682156&nbsp; Fax: 08 6296 0179</font></b></font><br  /><br  /><font size="3"><i><b>K??nh ch??o Qu?? kh??ch&nbsp;</b></i></font><br  /><br  /><b><font size="3"><font color="rgb(255, 0, 0);">??O??N V???T T?? NG??NH N?????C MI???N NAM (??O??N 805)</font>&nbsp;xin g???i ?????n qu?? kh??ch l???i ch??c s???c kh???e v?? l???i ch??o tr??n tr???ng nh???t.</font></b><br  /><br  /><font size="3"><font color="rgb(0, 0, 255);"><b>??O??N V???T T?? NG??NH N?????C MI???N NAM (??O??N 805)</b></font>&nbsp;l?? ????n v??? tr?????c thu???c&nbsp;<font color="rgb(0, 153, 0);"><b>B??? T??I NGUY??N V?? M??I TR?????NG</b></font>, v???i nhi???u n??m trong ng??nh kinh doanh v?? mua b??n&nbsp;<b><font color="rgb(255, 0, 0);">M??Y KHOAN GI???NG</font></b>&nbsp;v??&nbsp;<b><font color="rgb(255, 0, 0);">V???T T?? KHOAN</font></b>&nbsp;?????a ch???t ?????n v???i&nbsp;<font color="rgb(0, 0, 255);"><b>??O??N V???T T?? NG??NH N?????C MI???N NAM</b></font>, qu?? kh??ch h??ng s??? lu??n&nbsp;<font color="rgb(0, 102, 255);"><b>an t??m</b></font>&nbsp;v??&nbsp;<font color="rgb(0, 102, 255);"><b>h??i l??ng</b></font>&nbsp;b???i c??c d???ch v??? nh??: T?? v???n ch???n v???t t??, thi???t b???, s???n ph???m, v???n h??nh, l???p ?????t, b???o d?????ng b???o tr?? c??c thi???t b??? v?? d???ng c??? khoan ph?? h???p, b??o gi?? ch??o h??ng c???nh tranh, h??? s?? h???p l??? ????? d??? th???u, thanh quy???t to??n, gi???i ng??n c??c d??? ??n..</font><br  /><br  /><i><b><font size="3">Nh???p kh???u v?? cung ???ng v???t t??, thi???t b???</font></b></i><br  /><font size="3">l?? ????n v??? tr???c ti???p nh???p kh???u v?? ph??n ph???i c??c lo???i thi???t b??? v???t t?? ?????n ch??n c??ng tr??nh:</font><br  /><br  /><font color="rgb(255, 0, 0);"><i><b><font size="3">1/Thi???t b???:</font></b></i></font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp;<font color="rgb(255, 0, 0);">&nbsp;- M??Y KHOAN XY-1 (3 S???),</font>&nbsp;khoan ???????c ????? s??u 100m (h??ng Stonewell, Kinh ?????a, Kinh Th??m???)</font><br  /><font size="3">&nbsp;&nbsp;&nbsp; -&nbsp;<font color="rgb(255, 0, 0);">M??Y KHOAN XY-1A-4 (5 S???)</font>, khoan ???????c ????? s??u 150m (h??ng Stonewell, Kinh ?????a, Kinh Th??m???)</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;<font color="rgb(255, 0, 0);">M??Y KHOAN GK 50, GK 180, GK 250</font></font><br  /><font size="3">&nbsp;&nbsp;&nbsp; -&nbsp;<font color="rgb(255, 0, 0);">M??Y KHOAN GJ 200, GJ 250 (4 S???), M??Y GJ200 4 TY L???N</font>, khoan ???????c ????? s??u 200-250m (h??ng Stonewell, Kinh ?????a, Kinh Th??m???)</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; - M??y khoan ?????p..</font><br  /><font size="3">&nbsp;&nbsp;&nbsp; - M??y khoan ki???m tra b?? t??ng: Z1Z CF 130 (160.180) Trung Qu???c, DK-16 (218,24) H??n Qu???c</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; - M??y c???t c??nh hi???n tr?????ng: ZSZ-1.2.3.4</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; - M??y b??m n?????c (b?? t??ng) BW 250-BW320, th??ng tr???n b?? t??ng</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; C??c lo???i thi???t b??? kh???o s??t kh??c theo nhu c???u kh??ch h??ng.</font><br  /><br  /><i><font color="rgb(255, 0, 0);"><b><font size="3">2/ B??? d???ng c??? l???y m???u chuy??n d???ng:</font></b></font></i><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; - B??? ???ng m???u chuy??n d???ng, t??? ????ng g??i m???u Nh???t B???n</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;<font color="rgb(255, 0, 0);">B??? ???ng m???u T286</font>&nbsp;(Atlas Copco Th???y ??i???n, Nam Phi)</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;<font color="rgb(255, 0, 0);">B??? ???ng m???u p??t t??ng H?? Lan</font>&nbsp;(l???y m???u b??n)</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; - B??? ???ng m???u 2 n??ng Trung Qu???c</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; - B??? ???ng m???u SPT ki???u Trung Qu???c, H?? N???i v?? ??o??n 805</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; - B??? ???ng m???u nguy??n d???ng ?? 73.91.108</font><br  /><br  /><font color="rgb(255, 0, 0);"><i><b><font size="3">&nbsp;3/ C??c lo???i l?????i khoan:</font></b></i></font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;<font color="rgb(255, 0, 0);">L?????i khoan Kim c????ng</font>, h???p kim c??c lo???i: ?? 44, 54, 63, 76, 89, 93, 108, 127, 146, 178, 189, 219???.360, 540 (c?? ch???ng lo???i kh??c theo y??u c???u)</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; - L?????i khoan b?? t??ng (r??ng ph???i, r??ng tr??i)</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;<font color="rgb(255, 0, 0);">L?????i khoan T286</font>, m??? r???ng th??nh, hom, c???c, ???ng ????n m???u (Nam Phi)</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; - L?????i xo???n ru???t g?? ?? 60, 76, 91, 108, 127</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; - C??y xo???n neo t??u, neo m??y: ?? 146, 180</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; - M??i khoan 3 ch??p, M??i khoan ?????p (Hammer)</font><br  /><br  /><font size="3">&nbsp;<font color="rgb(255, 0, 0);"><i><b>4/ D???ng c???, ph??? t??ng kh???o s??t:</b></i></font></font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; - Kh??a th??o m??? c???n ???ng: vinca, g???ng ??, kh??a x??ch, kh?? m??t, c?? s???u, quang treo, ??l??vat??, b??? ????? ngh??? thi c??ng khoan</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; - C???n khoan, ???ng khoan, ???ng ch???ng (th??nh m???ng, th??nh d??y)</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; - Ph??? t??ng thay th??? s???a ch???a: Xi lanh, pit t??ng, v??? m??y, v??? b??m, c??c lo???i b??nh r??ng, tr???c h???p s???, v??ng bi, phe, ch???t, ph???t</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; C??c lo???i ph??? t??ng kh??c theo y??u c???u c???a kh??ch h??ng.</font><br  /><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="rgb(255, 0, 0);"><b>X?????NG C?? KH??</b></font>&nbsp;chuy??n ph???c v??? Gia C??ng, ch??? t???o h??ng chuy??n d???ng Khoan, c?? m??y ti???n ???????c c??c lo???i ???ng c?? ???????ng k??nh l???n.</font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; Ngo??i ra c??n nh???n s???n xu???t gia c??ng theo y??u c???u kh??ch h??ng c??c s???n ph???m kh???o s??t ?????a ch???t, khoan gi???ng n?????c, khoan b?? t??ng.</font><br  /><br  /><font color="rgb(255, 0, 0);"><i><b><font size="3">&nbsp;5/ Dung d???ch khoan:</font></b></i></font><br  /><font size="3">&nbsp;&nbsp;&nbsp;&nbsp; - S??t n?????c ng???t, n?????c m???n (Sodium-API), ph??? gia c???a Vi???t Nam, ???n ?????, ??c</font><br  /><font size="3">T???t c??? c??c s???n ph???m d???ch v??? c???a ????n v??? ?????u ???????c b???o h??nh mi???n ph?? theo k??? thu???t s???n xu???t v?? ch??? t???o.</font><br  /><br  /><b><font size="3">M???I CHI TI???T XIN VUI L??NG LI??N H???</font></b><br  /><b><font color="rgb(0, 0, 255);" size="3">??O??N V???T T?? NG??NH N?????C MI???N NAM (??O??N 805)</font></b><br  /><font size="3">?????a ch???: S??? 59 ???????ng s??? 2, ph?????ng B??nh An, Qu???n 2 TP H??? Ch?? Minh (g???n ch??n c???u S??i G??n)</font><br  /><font size="3">Hotline:&nbsp;<font color="rgb(255, 0, 0);"><b>0913 682 156 (Mr Nh??n)</b></font>&nbsp; ???&nbsp;&nbsp;<font color="rgb(255, 0, 0);"><b>08 37408370</b></font>&nbsp;&nbsp;&nbsp; Fax:&nbsp;<font color="rgb(255, 0, 0);"><b>086 296 0179</b></font></font>', '', 0, 0, 1, 1, 1, 0),
(26, 'M??y h??t ???m c??ng nghi???p Harison HD 504B<br  />Gia?? ba??n : 88.000.000 ??<br  />M??y h??t ???m Harison ???????c s??? d???ng h??t ???m cho c??c lo???i kho b???o qu???n,ph??ng s???n xu???t, ph??ng&nbsp;<br  />s???y kh?? s???n ph???m???c?? ????? ???m y??u c???u t??? 40% tr??? l??n, c?? ngu???n ??i???n 3 pha, y??u c???u c??ng su???t&nbsp;<br  />l???n v?? ????? b???n cao.&nbsp;<br  /><br  />* ?????c ??i???m Harison HD 504B<br  />?? Nguy??n l?? h??t ???m: ng??ng t??? l???nh nh??? s??? d???ng m??y n??n l???nh<br  />?? V???n h??nh t??? ?????ng ho??n to??n<br  />?? N??t nh???n c???m ???ng (m???ch ??i???u khi???n ???m t??? ?????ng)<br  />?? X??? n?????c li??n t???c qua ???ng d???n<br  />?? L???c kh?? b???ng nylon (R???a ???????c)<br  /><br  />* Th??ng s??? k??? thu???t HD 504B<br  />?? C??ng su???t h??t ???m: 21 l??t/gi??? (??? ??i???u ki???n 30oC, 80%)<br  />?? L??u l?????ng gi?? danh ?????nh: 4500 m3/gi???.<br  />?? C??ng su???t ??i???n ti??u th???: 8,5kW<br  />?? D??ng danh ?????nh: 15,4A<br  />?? ????? ???n: 65dB<br  />?? Ngu???n ??i???n: 380V/50Hz/3 pha<br  />?? K??ch th?????c: 1225 (Ngang) x 520 (d??y) x 1761 (cao), mm<br  />?? Kh???i l?????ng: 235 kg<br  /><br  />Qu?? kh??ch h??ng mua s???n ph???m Ma??y hu??t ????m cho kho sa??n xu????t c???a ch??ng t??i s??? ???????c h?????ng&nbsp;<br  />nh???ng quy???n l???i sau:<br  />- B??n ????ng gi??<br  />- Giao h??ng mi???n ph?? t???i nh?? ( 6 qu???n n???i th??nh H?? N???i c??)<br  />- H??ng kh??ng ????ng quy c??ch ch???ng lo???i s??? ???????c ?????i m???i<br  />- Mua nhi???u tri???t kh???u cao,gi?? r???<br  /><br  />------------------------------------------<br  />M???i th??ng tin chi ti???t vui l??ng li??n h???<br  />C??NG TY TNHH ?????U T?? PH??T TRI???N PROBUY<br  />V??n ph??ng giao d???ch: S??? 141 Ho??ng V??n Th??i, Thanh Xu??n, H?? N???i<br  />Tel : 84.4.62857580/82 - Fax : 84.4.35667485<br  />Kinh doanh: Ms. Th???o 0966.896.588 - 0926.865.409<br  />Ms. H????ng092.762.0000 - 0904.22.44.53<br  />Website: wwww.probuy.com.vn<br  />&nbsp;', '', 0, 0, 1, 1, 1, 0);

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
(37, 21, '21', 0, 1, 'HCM', 0, 1464679758, 1464679758, 1, 1464679758, 0, 1, 'C??p t??n hi???u AWG Hosiwell 2x1.5mm2', 'Cap-tin-hieu-AWG-Hosiwell-2x1-5mm2', '', '', '', 0, 1, '4', 1, 4, 0, 0, 0),
(38, 18, '18', 0, 1, 'TP Hu???', 0, 1464679929, 1464679929, 1, 1464679929, 0, 1, 'In t???i x?????ng offset namecard, catalogue', 'In-tai-xuong-offset-namecard-catalogue', '', '', '', 0, 1, '4', 1, 4, 0, 0, 0),
(39, 24, '24', 0, 1, 'HCM', 0, 1464760606, 1464760606, 1, 1464760606, 0, 1, 'Cho Vay G??p Ng??y Kh??ng Th??? Ch???p', 'Cho-Vay-Gop-Ngay-Khong-The-Chap', '', '', '', 0, 1, '4', 1, 1, 0, 0, 0),
(40, 22, '22', 0, 1, 'H?? N???i', 0, 1464760714, 1464760714, 1, 1464760714, 0, 1, 'C???n tuy???n g???p lao ?????ng t???i Nh???t B???n 2', 'Can-tuyen-gap-lao-dong-tai-Nhat-Ban-2', '', '', '', 0, 1, '4', 1, 6, 0, 0, 0),
(41, 24, '24', 0, 2, '', 0, 1464876446, 1464876446, 1, 1464876446, 0, 1, 'test test test', 'test-test-test', '', '', '', 0, 1, '4', 1, 0, 0, 0, 0),
(42, 24, '24', 0, 2, 'Ban M?? Thu???t', 0, 1464876777, 1464876777, 1, 1464876777, 0, 1, '123 test test test', '123-test-test-test', '', '', '', 0, 1, '4', 1, 0, 0, 0, 0),
(34, 23, '23', 0, 1, 'H?? N???i', 0, 1464608075, 1464608075, 1, 1464608075, 0, 1, 'D???ch v??? s???a ch???a nh?? gi?? r??? nh???t t???i H?? N???i 1', 'Dich-vu-sua-chua-nha-gia-re-nhat-tai-Ha-Noi-1', '', '', '', 0, 1, '4', 1, 0, 0, 0, 0),
(35, 18, '18', 0, 1, '', 0, 1464608636, 1464608636, 1, 1464608636, 0, 1, '?????u thu K??? thu???t s??? DVB-T2 ch??? v???i 550k', 'Dau-thu-Ky-thuat-so-DVB-T2-chi-voi-550k', '', '', '', 0, 1, '4', 1, 2, 0, 0, 0),
(36, 21, '21', 0, 1, 'HCM', 0, 1464608708, 1464608708, 1, 1464608708, 0, 1, 'B??n m??y l??m m??t kh??ng kh??.', 'Ban-may-lam-mat-khong-khi', '', '', '', 0, 1, '4', 1, 0, 0, 0, 0),
(29, 10, '10', 0, 1, 'HCM', 0, 1464607661, 1464607661, 1, 1464607661, 0, 1, 'Trang tr?? n???i th???t, S???a ch???a X??y D???ng', 'Trang-tri-noi-that-Sua-chua-Xay-Dung', '', '', '', 0, 1, '4', 1, 1, 2, 0, 0),
(30, 10, '10', 0, 1, '', 0, 1464607725, 1464607725, 1, 1464607725, 0, 1, 'B??n c??n 2PN t???ng 16 Seasons Avenue', 'Ban-can-2PN-tang-16-Seasons-Avenue', '', '', '', 0, 1, '4', 1, 2, 0, 0, 0),
(31, 17, '17', 0, 1, 'HCM', 0, 1464607784, 1464607784, 1, 1464607784, 0, 1, 'Lenovo Thinkpad T450 Broadwell I5 5300U 2.3Gh', 'Lenovo-Thinkpad-T450-Broadwell-I5-5300U-2-3Gh', '', '', '', 0, 1, '4', 1, 1, 0, 0, 0),
(32, 11, '11', 0, 1, 'HCM', 0, 1464607937, 1464607937, 1, 1464607937, 0, 1, 'Xe 4 ch??? camry m??u ??en t???i tphcm', 'Xe-4-cho-camry-mau-den-tai-tphcm', '', '', '', 0, 1, '4', 1, 0, 0, 0, 0),
(33, 24, '24', 0, 1, 'HCM', 0, 1464607981, 1464607981, 1, 1464607981, 0, 1, '?????i l?? v?? m??y bay t???i tphcm - du l???ch n??t vi???t', 'dai-lY-ve-may-bay-tai-tphcm-du-lich-net-viet', '', '', '', 0, 1, '4', 1, 1, 0, 0, 0),
(20, 2, '2', 0, 2, 'Ho??ng Mai, H?? N???i', 0, 1464448831, 1465010671, 1, 1465010671, 0, 1, 'B??n g???p nh?? m???t ph??? M?? M??y 130m m???t ti???n 5', 'Ban-gap-nha-mat-pho-Ma-May-130m-mat-tien-5', '', '', '', 0, 1, '4', 1, 7, 0, 0, 0),
(21, 22, '22', 0, 2, '?????c L???c', 0, 1464449414, 1465010717, 1, 1465010717, 0, 1, 'cung c???p c???a nh???a l??i th??p, c???u thang r???', 'cung-cap-cua-nhua-loi-thep-cau-thang-re', '', '', '', 0, 1, '4', 1, 7, 0, 0, 0),
(22, 20, '20', 0, 1, 'H?? N???i', 8, 1464512747, 1464604964, 1, 1464512700, 0, 2, 'B??n bu??n, b??n l??? n?????c c???t 1 l???n, 2 l???n, n?????c', 'Ban-buon-ban-le-nuoc-cat-1-lan-2-lan-nuoc', '', '', '', 0, 1, '4', 1, 2, 0, 0, 0),
(28, 24, '24', 0, 1, 'HCM', 0, 1464607503, 1464607503, 1, 1464607503, 0, 1, 'D???ch v??? cho thu?? xe 45 t???i tphcm', 'Dich-vu-cho-thue-xe-45-tai-tphcm', '', '', '', 0, 1, '4', 1, 1, 0, 0, 0),
(27, 10, '10', 0, 1, 'HCM', 0, 1464607413, 1464607413, 1, 1464607413, 0, 1, '?????t 1000m2 c???nh Khu DL B Qu???i I gi?? 10tr&#x002F;th', 'Dat-1000m2-canh-Khu-DL-B-Quoi-I-gia-10tr-th', '', '', '', 0, 1, '4', 1, 3, 2, 0, 0),
(25, 21, '21', 0, 2, 'S??i G??n', 0, 1464604126, 1465011481, 1, 1465011481, 0, 1, 'B??N M??Y KHOAN GI???NG - ??O??N V???T T?? &#40;??o??n 805&#41;', 'BAN-MAY-KHOAN-GIENG-DOAN-VAT-TU-Doan-805', '', '', '', 0, 1, '4', 1, 2, 0, 0, 0),
(26, 21, '21', 0, 2, 'Thanh Xu??n, H?? N???i', 0, 1464604220, 1464604220, 1, 1464604220, 0, 1, 'M??y h??t ???m c??ng nghi???p Harison HD 504B', 'May-hut-am-cong-nghiep-Harison-HD-504B', '', '', '', 0, 1, '4', 1, 4, 0, 0, 0);

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
(1, 'B??o H?? N???i M???i', 'http://hanoimoi.com.vn', '', 1, 1274989177, 1274989177),
(2, 'VINADES.,JSC', 'http://vinades.vn', '', 2, 1274989787, 1274989787),
(3, 'B??o ??i???n t??? D??n Tr??', 'http://dantri.com.vn', '', 3, 1322685396, 1322685396),
(4, 'B??? Th??ng tin v?? Truy???n th??ng', 'http://http://mic.gov.vn', '', 4, 1445309676, 1445309676),
(5, 'Xu xu', '', '', 5, 1464509092, 1464509092),
(6, 'H?? N???i', '', '', 6, 1464509314, 1464509314),
(7, 'HCM', '', '', 7, 1464603355, 1464603355),
(8, 'Ho??ng Mai, H?? N???i', '', '', 8, 1464604819, 1464604819);

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
(1, 0, 'ngu???n-m???', '', '', 'ngu???n m???'),
(2, 0, 'quen-thu???c', '', '', 'quen thu???c'),
(3, 0, 'c???ng-?????ng', '', '', 'c???ng ?????ng'),
(4, 0, 'vi???t-nam', '', '', 'vi???t nam'),
(5, 0, 'ho???t-?????ng', '', '', 'ho???t ?????ng'),
(6, 0, 'tin-t???c', '', '', 'tin t???c'),
(7, 0, 'th????ng-m???i-??i???n', '', '', 'th????ng m???i ??i???n'),
(8, 0, '??i???n-t???', '', '', '??i???n t???'),
(9, 0, 'nukeviet', '', '', 'nukeviet'),
(10, 0, 'vinades', '', '', 'vinades'),
(11, 0, 'l???p-tr??nh-vi??n', '', '', 'l???p tr??nh vi??n'),
(12, 0, 'chuy??n-vi??n-?????-h???a', '', '', 'chuy??n vi??n ????? h???a'),
(13, 0, 'php', '', '', 'php'),
(14, 0, 'mysql', '', '', 'mysql'),
(15, 0, 'nh??n-t??i-?????t-vi???t-2011', '', '', 'nh??n t??i ?????t vi???t 2011'),
(16, 0, 'm??-ngu???n-m???', '', '', 'm?? ngu???n m???'),
(17, 0, 'nukeviet4', '', '', 'nukeviet4'),
(18, 0, 'mail', '', '', 'mail'),
(19, 0, 'fpt', '', '', 'fpt'),
(20, 0, 'smtp', '', '', 'smtp'),
(21, 0, 'bootstrap', '', '', 'bootstrap'),
(22, 0, 'block', '', '', 'block'),
(23, 0, 'modules', '', '', 'modules'),
(24, 0, 'banner', '', '', 'banner'),
(25, 0, 'li??n-k???t', '', '', 'li??n k???t'),
(26, 0, 'hosting', '', '', 'hosting'),
(27, 0, 'h???-tr???', '', '', 'h??? tr???'),
(28, 0, 'h???p-t??c', '', '', 'h???p t??c'),
(29, 0, 't???c-?????', '', '', 't???c ?????'),
(30, 0, 'website', '', '', 'website'),
(31, 0, 'b???o-m???t', '', '', 'b???o m???t'),
(32, 0, 'gi??o-d???c', '', '', 'gi??o d???c'),
(33, 0, 'edu-gate', '', '', 'edu gate'),
(34, 0, 'l???p-tr??nh', '', '', 'l???p tr??nh'),
(35, 0, 'logo', '', '', 'logo'),
(36, 0, 'code', '', '', 'code'),
(37, 0, 'th???c-t???p', '', '', 'th???c t???p'),
(38, 0, 'kinh-doanh', '', '', 'kinh doanh'),
(39, 0, 'nh??n-vi??n', '', '', 'nh??n vi??n'),
(40, 0, 'b???-gd&??t', '', '', 'B??? GD&??T'),
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
(1, 'QUY ?????NH S??? D???NG', 'QUY-DINH-SU-DUNG', '', '', 0, '', '<p align="left">1. B???n ph???i ch???p nh???n v?? tu??n th??? c??c quy ?????nh d?????i ????y.<br  />\r\n<br  />\r\n2. Kh??ng ???????c ph??p ????ng t???i c??c th??ng tin m?? Nh?? N?????c Vi???t Nam c???m, c??c v???n ????? nh???y c???m, c??ng nh?? c??c th??ng tin tr??i v???i ?????o ?????c x?? h???i Vi???t Nam, c??? th???:&nbsp;&nbsp;</p>\r\n\r\n<p align="left"><b>&nbsp;&nbsp;&nbsp; A. H??ng h??a&nbsp;&nbsp;&nbsp;</b></p>\r\n\r\n<ul>\r\n	<li>V?? kh?? qu??n d???ng, trang thi???t b???, k??? thu???t, kh?? t??i, ph????ng ti???n chuy???n d??ng qu??n s???, c??ng an; qu??n trang (bao g???m c??? ph?? hi???u, c???p hi???u, qu??n hi???u c???a qu??n ?????i, c??ng an), qu??n d???ng cho l???c l?????ng v?? trang; linh ki???n, b??? ph???n, ph??? t??ng, v???t t?? v?? trang thi???t b??? ?????c ch???ng, c??ng ngh??? chuy??n d??ng ch??? t???o ch??ng Ngh??? ?????nh s??? 47/CP ng??y 12/8/1996; Ngh??? ?????nh s??? 100/2005/N??-CP B??? Qu???c ph??ng, B??? C??ng an</li>\r\n	<li>C??c ch???t ma t??y Lu???t Ph??ng, ch???ng ma tu?? n??m 2000; 67/2001/N??-CP; Ngh??? ?????nh s??? 133/2003/N??-CP B??? C??ng an</li>\r\n	<li>H??a ch???t b???ng 1 (theo C??ng ?????c qu???c t???) Nghi ?????nh CP s??? 100/2005/N??-CP B??? C??ng nghi???p</li>\r\n	<li>C??c s???n ph???m v??n h??a ph???n ?????ng, ?????i tr???y, m?? t??n d??? ??oan ho???c c?? h???i t???i gi??o d???c th???m m???, nh??n c??ch Lu???t Xu???t b???n n??m 2004; Ngh??? ?????nh s??? 03/2000/N??-CP B??? V??n h??a ??? Th??ng tin, B??? C??ng an</li>\r\n	<li>C??c lo???i ph??o Ngh??? ?????nh s??? 03/2000/N??-CP B??? C??ng an</li>\r\n	<li>????? ch??i nguy hi???m, ????? ch??i c?? h???i t???i gi??o d???c nh??n c??ch v?? s???c kh???e c???a tr??? em ho???c t???i an ninh, tr???t t???, an to??n x?? h???i (bao g???m c??c ch????ng tr??nh tr?? ch??i ??i???n t???) Ngh??? ?????nh 03/2000/N??-CP B??? C??ng an</li>\r\n	<li>Thu???c th?? y, thu???c b???o v??? th???c v???t c???m ho???c ch??a ???????c ph??p s??? d???ng t???i Vi???t Nam theo quy ?????nh t???i Ph??p l???nh Th?? y, Ph??p l???nh B???o v??? v?? ki???m d???ch th???c v???t Ph??p l???nh th?? n??m 2004; Ph??p l???nh B???o v??? v?? ki???m d???ch th???c v???t n??m 2001 B??? N??ng nghi???p v?? Ph??t tri???n N??ng th??n, B??? Th???y s???n</li>\r\n	<li>Th???c v???t, ?????ng v???t hoang d?? (bao g???m c??? v???t s???ng v?? c??c b??? ph???n c???a ch??ng ???? ???????c ch??? bi???n) thu???c danh m???c ??i???u ?????c qu???c t??? m?? Vi???t Nam l?? th??nh vi??n quy ?????nh v?? c??c lo???i th???c v???t, ?????ng v???t qu?? hi???m thu???c danh m???c c???m khai th??c v?? s??? d???ng C??ng ?????c CITTES; Ngh??? ?????nh s??? 32/2006/N??-CP B??? N??ng nghi???p v?? Ph??t tri???n N??ng th??n, B??? Th???y s???n</li>\r\n	<li>Th???y s???n c???m khai th??c, th???y s???n c?? d?? l?????ng ch???t ?????c h???i v?????t qu?? gi???i h???n cho ph??p, th???y s???n c?? ?????c t??? t??? nhi??n g??y nguy hi???m ?????n t??nh m???ng c???a con ng?????i Lu???t Th???y s???n n??m 2003 B??? Th???y s???n</li>\r\n	<li>Ph??n b??n kh??ng c?? trong danh m???c ???????c ph??p s???n xu???t, kinh doanh v?? s??? d???ng t???i Vi???t Nam Ngh??? ?????nh s??? 113/2003/N??-CP B??? N??ng nghi???p v?? Ph??t tri???n N??ng th??n</li>\r\n	<li>Gi???ng c??y tr???ng kh??ng c?? trong danh m???c ???????c ph??p s???n xu???t, kinh doanh; gi???ng c??y tr???ng g??y h???i ?????n s???n xu???t v?? s???c kh???e con ng?????i, m??i tr?????ng, h??? sinh th??i Ph??p l???nh Gi???ng c??y tr???ng n??m 2004</li>\r\n	<li>Gi???ng v???t nu??i kh??ng c?? trong danh m???c ???????c ph??p s???n xu???t, kinh doanh; gi???ng v???t nu??i g??y h???i cho s???c kh???e con ng?????i, ngu???n gen v???t nu??i, m??i tr?????ng, h??? sinh th??i Ph??p l???nh Gi???ng v???t nu??i n??m 2004 B??? N??ng nghi???p v?? Ph??t tri???n N??ng th??n, B??? Th???y s???n</li>\r\n	<li>Kho??ng s???n ?????c bi???t, ?????c h???i Lu???t Kho??ng s???n n??m 1996; Ngh??? ?????nh 160/2005/N??-CP B??? T??i nguy??n v?? M??i tr?????ng</li>\r\n	<li>Ph??? li???u nh???p kh???u g??y ?? nhi???m cho m??i tr?????ng Ngh??? ?????nh 175/CP ng??y 18/10/1994 B??? T??i nguy??n v?? M??i tr?????ng</li>\r\n	<li>C??c lo???i thu???c ch???a b???nh cho ng?????i, c??c lo???i v???c xin, sinh ph???m y t???, m??? ph???m, h??a ch???t v?? ch??? ph???m di???t c??n tr??ng, di???t khu???n trong l??nh v???c gia d???ng v?? y t??? ch??a ???????c ph??p s??? d???ng t???i Vi???t Nam Lu???t D?????c n??m 2005; Ph??p l???nh H??nh ngh??? y d?????c t?? nh??n n??m 2003 B??? Y t???</li>\r\n	<li>C??c lo???i trang thi???t b??? y t??? ch??a ???????c ph??p s??? d???ng t???i Vi???t Nam Ph??p l???nh H??nh ngh??? y d?????c t?? nh??n n??m 2003 B??? Y t???</li>\r\n	<li>Ph??? gia th???c ph???m, ch???t h??? tr??? ch??? bi???n th???c ph???m, vi ch???t dinh d?????ng, th???c ph???m ch???c n??ng, th???c ph???m c?? nguy c?? cao, th???c ph???m ???????c b???o qu???n b???ng ph????ng ph??p chi???u x???, th???c ph???m c?? gen ???? b??? bi???n ?????i ch??a ???????c c?? quan nh?? n?????c c?? th???m quy???n cho ph??p Ph??p l???nh V??? sinh an to??n th???c ph???m n??m 2003 B??? Y t???</li>\r\n	<li>S???n ph???m, v???t li???u c?? ch???a amil??ng thu???c nh??m amfibole Ngh??? ?????nh 12/2006/N??-CP B??? X??y d???ng</li>\r\n	<li>Thu???c l?? ??i???u, x?? g?? v?? c??c d???ng thu???c l?? th??nh ph???m kh??c nh???p l???u Ngh??? ?????nh n??y B??? C??ng Th????ng</li>\r\n</ul>\r\n\r\n<p align="left"><b>&nbsp;&nbsp; B. D???ch v???&nbsp;&nbsp;&nbsp;</b></p>\r\n\r\n<p align="left">&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Kinh doanh m???i d??m, t??? ch???c m???i d??m, bu??n b??n ph??? n???, tr??? em Ngh??? ?????nh 03/2000/N??-CP B??? C??ng an</li>\r\n	<li>T??? ch???c ????nh b???c, g?? b???c d?????i m???i h??nh th???c Ngh??? ?????nh 03/2000/N??-CP B??? C??ng an</li>\r\n	<li>D???ch v??? ??i???u tra b?? m???t x??m ph???m l???i ??ch c???a nh?? n?????c, quy???n v?? l???i ??ch h???p ph??p c???a t??? ch???c, c?? nh??n Ngh??? ?????nh 14/2001/N??-CP B??? C??ng an</li>\r\n	<li>Ho???t ?????ng kinh doanh m??i gi???i k???t h??n c?? y???u t??? n?????c ngo??i nh???m m???c ????ch ki???m l???i Ngh??? ?????nh 68/2002/N??-CP B??? T?? ph??p</li>\r\n	<li>Ho???t ?????ng kinh doanh m??i gi???i nh???n cha, m???, con, nu??i con nu??i c?? y???u t??? n?????c ngo??i nh???m m???c ????ch ki???m l???i Ngh??? ?????nh 68/2002/N??-CP B??? T?? ph??p</li>\r\n</ul>\r\n<b>&nbsp;&nbsp; C. Th??ng tin kh??c</b>\r\n\r\n<ul>\r\n	<li>Kh??ng du??ng t???? ng???? thi????u v??n ho??a, kh??ng tha??ch th????c, no??i x????u l????n nhau.</li>\r\n	<li>Kh??ng ???????c ph??p c??? t??nh truy c???p v??o t??i kho???n c???a ng?????i kh??c.</li>\r\n	<li>C??c website c?? n???i dung t????ng t??? raovat.net kh??ng ???????c m?????n website n??y ????? ????ng qu???ng c??o.</li>\r\n</ul>\r\n3. C??c tin ????ng kh??ng ph?? h???p v???i m???c tin s??? b??? xo??.\r\n\r\n<p align="left"><br  />\r\n4. Ch??ng t??i gi??? quy???n quy???t ?????nh v??? vi???c l??u gi??? hay lo???i b??? tin ???? ????ng tr??n trang web n??y m?? kh??ng c???n b??o tr?????c, t???t c??? mo??i s???? vi pha??m c???a ba??n va??o m????t hay nhi???u ??i???u kho???n ???? ????????c ghi trong quy ??i??nh na??y ?????u s??? d????n ?????n vi????c tin ????ng, t??i kho???n, t?? ca??ch th??nh vi??n c???a ba??n s??? b??? h???y b???. B???n b??? c???m tham gia v??o m???i ho???t ?????ng c???a h??? th???ng.<br  />\r\n<br  />\r\n5. T???t c??? tin ????ng tr??n website n??y ?????u thu???c v??? ch??nh ng?????i ????ng tin, ch??ng t??i kh??ng ch???u tr??ch nhi???m v?? kh??ng b???o ?????m v??? t??nh ch??nh x??c c???a nh???ng th??ng tin t??? c??c th??nh vi??n g???i tin ????ng mua b??n, rao v???t, v?? c??ng kh??ng ch???u b???t c??? tr??ch nhi???m ph??p l?? ho???c b???i th?????ng thi???t h???i n??o v??? vi???c m???t m??t hay h?? h???ng ?????i v???i nh???ng tin ???? ????ng c??ng nh?? c??c v???n ????? ph??t sinh kh??c.<br  />\r\n<br  />\r\n6. Website raovat.net hay b???t k??? website n??o t????ng t??? ho???t ?????ng ???n ?????nh v?? l??u d??i ?????u c???n ph???i c?? s??? h??? tr???, t????ng t??c, ????ng g??p c???a c??c th??nh vi??n v?? c??c nh?? t??i tr???. V?? v???y ch??ng t??i r???t mong s??? c???m th??ng c???a c??c th??nh vi??n ?????i v???i vi???c xu???t hi???n c??c th??ng tin qu???ng c??o c???a c??c nh?? t??i tr??? kh??c trong khu??n kh??? hi???n th??? b???n tin c???a m??nh.<br  />\r\n<br  />\r\n*&nbsp;Ch??ng t??i c?? to??n quy???n thay ?????i m???t hay nhi???u ??i???u kho???n co?? trong quy ??i??nh n??y m?? kh??ng c???n gi???i th??ch l?? do v?? c??ng kh??ng c???n ph???i th??ng b??o tr?????c.<br  />\r\n<br  />\r\nBQT,<br  />\r\nAzvnn.com</p>', 'quy ?????nh s??? d???ng', 1, '4', '', 0, 1, 1, 1464762034, 1464762034, 1);

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
(1, 'Ch??nh s??ch b???o m???t (Quy???n ri??ng t??)', 'privacy', '', '', 0, 'T??i li???u n??y cung c???p cho b???n (ng?????i truy c???p v?? s??? d???ng website) ch??nh s??ch li??n quan ?????n b???o m???t v?? quy???n ri??ng t?? c???a b???n', '<strong><a id="index" name="index"></a>Danh m???c</strong><br /> <a href="#1">??i???u 1: Thu th???p th??ng tin</a><br /> <a href="#2">??i???u 2: L??u tr??? &amp; B???o v??? th??ng tin</a><br /> <a href="#3">??i???u 3: S??? d???ng th??ng tin </a><br /> <a href="#4">??i???u 4: Ti???p nh???n th??ng tin t??? c??c ?????i t??c </a><br /> <a href="#5">??i???u 5: Chia s??? th??ng tin v???i b??n th??? ba</a><br /> <a href="#6">??i???u 6: Thay ?????i ch??nh s??ch b???o m???t</a>  <hr  /> <h2 style="text-align: justify;"><a id="1" name="1"></a>??i???u 1: Thu th???p th??ng tin</h2>  <h3 style="text-align: justify;">1.1. Thu th???p t??? ?????ng:</h3>  <div style="text-align: justify;">H??? th???ng n??y ???????c x??y d???ng b???ng m?? ngu???n NukeViet. Nh?? m???i website hi???n ?????i kh??c, ch??ng t??i s??? thu th???p ?????a ch??? IP v?? c??c th??ng tin web ti??u chu???n kh??c c???a b???n nh??: lo???i tr??nh duy???t, c??c trang b???n truy c???p trong qu?? tr??nh s??? d???ng d???ch v???, th??ng tin v??? m??y t??nh &amp; thi???t b??? m???ng v.v??? cho m???c ????ch ph??n t??ch th??ng tin ph???c v??? vi???c b???o m???t v?? gi??? an to??n cho h??? th???ng.</div>  <h3 style="text-align: justify;">1.2. Thu th???p t??? c??c khai b??o c???a ch??nh b???n:</h3>  <div style="text-align: justify;">C??c th??ng tin do b???n khai b??o cho ch??ng t??i trong qu?? tr??nh l??m vi???c nh??: ????ng k?? t??i kho???n, li??n h??? v???i ch??ng t??i... c??ng s??? ???????c ch??ng t??i l??u tr??? ph???c v??? c??ng vi???c ch??m s??c kh??ch h??ng sau n??y.</div>  <h3 style="text-align: justify;">1.3. Thu th???p th??ng tin th??ng qua vi???c ?????t cookies:</h3>  <p style="text-align: justify;">Nh?? m???i website hi???n ?????i kh??c, khi b???n truy c???p website, ch??ng t??i (ho???c c??c c??ng c??? theo d??i ho???c th???ng k?? ho???t ?????ng c???a website do c??c ?????i t??c cung c???p) s??? ?????t m???t s??? File d??? li???u g???i l?? Cookies l??n ????a c???ng ho???c b??? nh??? m??y t??nh c???a b???n.</p>  <p style="text-align: justify;">M???t trong s??? nh???ng Cookies n??y c?? th??? t???n t???i l??u ????? thu???n ti???n cho b???n trong qu?? tr??nh s??? d???ng, v?? d??? nh??: l??u Email c???a b???n trong trang ????ng nh???p ????? b???n kh??ng ph???i nh???p l???i v.v???</p>  <h3 style="text-align: justify;">1.4. Thu th???p v?? l??u tr??? th??ng tin trong qu?? kh???:</h3>  <p style="text-align: justify;">B???n c?? th??? thay ?????i th??ng tin c?? nh??n c???a m??nh b???t k??? l??c n??o b???ng c??ch s??? d???ng ch???c n??ng t????ng ???ng. Tuy nhi??n ch??ng t??i s??? l??u l???i nh???ng th??ng tin b??? thay ?????i ????? ch???ng c??c h??nh vi x??a d???u v???t gian l???n.</p>  <p style="text-align: right;"><a href="#index">Tr??? l???i danh m???c</a></p>  <h2 style="text-align: justify;"><a id="2" name="2"></a>??i???u 2: L??u tr??? &amp; B???o v??? th??ng tin</h2>  <div style="text-align: justify;">H???u h???t c??c th??ng tin ???????c thu th???p s??? ???????c l??u tr??? t???i c?? s??? d??? li???u c???a ch??ng t??i.<br /> <br /> Ch??ng t??i b???o v??? d??? li???u c?? nh??n c???a c??c b???n b???ng c??c h??nh th???c nh??: m???t kh???u, t?????ng l???a, m?? h??a c??ng c??c h??nh th???c th??ch h???p kh??c v?? ch??? c???p ph??p vi???c truy c???p v?? x??? l?? d??? li???u cho c??c ?????i t?????ng ph?? h???p, v?? d??? ch??nh b???n ho???c c??c nh??n vi??n c?? tr??ch nhi???m x??? th??ng tin v???i b???n th??ng qua c??c b?????c x??c ?????nh danh t??nh ph?? h???p.<br /> <br /> M???t kh???u c???a b???n ???????c l??u tr??? v?? b???o v??? b???ng ph????ng ph??p m?? ho?? trong c?? s??? d??? li???u c???a h??? th???ng, v?? th??? n?? r???t an to??n. Tuy nhi??n, ch??ng t??i khuy??n b???n kh??ng n??n d??ng l???i m???t kh???u n??y tr??n c??c website kh??c. M???t kh???u c???a b???n l?? c??ch duy nh???t ????? b???n ????ng nh???p v??o t??i kho???n th??nh vi??n c???a m??nh trong website n??y, v?? th??? h??y c???t gi??? n?? c???n th???n. Trong m???i tr?????ng h???p b???n kh??ng n??n cung c???p th??ng tin m???t kh???u cho b???t k??? ng?????i n??o d?? l?? ng?????i c???a ch??ng t??i, ng?????i c???a NukeViet hay b???t k??? ng?????i th??? ba n??o kh??c tr??? khi b???n hi???u r?? c??c r???i ro khi ????? l??? m???t kh???u. N???u qu??n m???t kh???u, b???n c?? th??? s??? d???ng ch???c n??ng ???<a href="/users/lostpass/">Qu??n m???t kh???u</a>??? tr??n website. ????? th???c hi???n vi???c n??y, b???n c???n ph???i cung c???p cho h??? th???ng bi???t t??n th??nh vi??n ho???c ?????a ch??? Email ??ang s??? d???ng c???a m??nh trong t??i kho???n, sau ???? h??? th???ng s??? t???o ra cho b???n m???t kh???u m???i v?? g???i ?????n cho b???n ????? b???n v???n c?? th??? ????ng nh???p v??o t??i kho???n th??nh vi??n c???a m??nh.  <p style="text-align: right;"><a href="#index">Tr??? l???i danh m???c</a></p> </div>  <h2 style="text-align: justify;"><a id="3" name="3"></a>??i???u 3: S??? d???ng th??ng tin</h2>  <p style="text-align: justify;">Th??ng tin thu th???p ???????c s??? ???????c ch??ng t??i s??? d???ng ?????:</p>  <div style="text-align: justify;">- Cung c???p c??c d???ch v??? h??? tr??? &amp; ch??m s??c kh??ch h??ng.</div>  <div style="text-align: justify;">- Th???c hi???n giao d???ch thanh to??n &amp; g???i c??c th??ng b??o trong qu?? tr??nh giao d???ch.</div>  <div style="text-align: justify;">- X??? l?? khi???u n???i, thu ph?? &amp; gi???i quy???t s??? c???.</div>  <div style="text-align: justify;">- Ng??n ch???n c??c h??nh vi c?? nguy c?? r???i ro, b??? c???m ho???c b???t h???p ph??p v?? ?????m b???o tu??n th??? ????ng ch??nh s??ch ???Th???a thu???n ng?????i d??ng???.</div>  <div style="text-align: justify;">- ??o ?????c, t??y bi???n &amp; c???i ti???n d???ch v???, n???i dung v?? h??nh th???c c???a website.</div>  <div style="text-align: justify;">- G???i b???n c??c th??ng tin v??? ch????ng tr??nh Marketing, c??c th??ng b??o &amp; ch????ng tr??nh khuy???n m???i.</div>  <div style="text-align: justify;">- So s??nh ????? ch??nh x??c c???a th??ng tin c?? nh??n c???a b???n trong qu?? tr??nh ki???m tra v???i b??n th??? ba.</div>  <p style="text-align: right;"><a href="#index">Tr??? l???i danh m???c</a></p>  <h2 style="text-align: justify;"><a id="4" name="4"></a>??i???u 4: Ti???p nh???n th??ng tin t??? c??c ?????i t??c</h2>  <div style="text-align: justify;">Khi s??? d???ng c??c c??ng c??? giao d???ch v?? thanh to??n th??ng qua internet, ch??ng t??i c?? th??? ti???p nh???n th??m c??c th??ng tin v??? b???n nh?? ?????a ch??? username, Email, s??? t??i kho???n ng??n h??ng... Ch??ng t??i ki???m tra nh???ng th??ng tin n??y v???i c?? s??? d??? li???u ng?????i d??ng c???a m??nh nh???m x??c nh???n r???ng b???n c?? ph???i l?? kh??ch h??ng c???a ch??ng t??i hay kh??ng nh???m gi??p vi???c th???c hi???n c??c d???ch v??? cho b???n ???????c thu???n l???i.<br /> <br /> C??c th??ng tin ti???p nh???n ???????c s??? ???????c ch??ng t??i b???o m???t nh?? nh???ng th??ng tin m?? ch??ng t??i thu th???p ???????c tr???c ti???p t??? b???n.</div>  <p style="text-align: right;"><a href="#index">Tr??? l???i danh m???c</a></p>  <h2><a id="5" name="5"></a>??i???u 5: Chia s??? th??ng tin v???i b??n th??? ba</h2>  <p style="text-align: justify;">Ch??ng t??i s??? kh??ng chia s??? th??ng tin c?? nh??n, th??ng tin t??i ch??nh... c???a b???n cho c??c b??n th??? 3 tr??? khi ???????c s??? ?????ng ?? c???a ch??nh b???n ho???c khi ch??ng t??i bu???c ph???i tu??n th??? theo c??c quy ?????nh ph??p lu???t ho???c khi c?? y??u c???u t??? c?? quan c??ng quy???n c?? th???m quy???n.</p>  <p style="text-align: right;"><a href="#index">Tr??? l???i danh m???c</a></p>  <h2><a id="6" name="6"></a>??i???u 6: Thay ?????i ch??nh s??ch b???o m???t</h2>  <p style="text-align: justify;">Ch??nh s??ch B???o m???t n??y c?? th??? thay ?????i theo th???i gian. Ch??ng t??i s??? kh??ng gi???m quy???n c???a b???n theo Ch??nh s??ch B???o m???t n??y m?? kh??ng c?? s??? ?????ng ?? r?? r??ng c???a b???n. Ch??ng t??i s??? ????ng b???t k??? thay ?????i Ch??nh s??ch B???o m???t n??o tr??n trang n??y v??, n???u nh???ng thay ?????i n??y quan tr???ng, ch??ng t??i s??? cung c???p th??ng b??o n???i b???t h??n (bao g???m, ?????i v???i m???t s??? d???ch v??? nh???t ?????nh, th??ng b??o b???ng email v??? c??c thay ?????i c???a Ch??nh s??ch B???o m???t).</p>  <p style="text-align: right;"><a href="#index">Tr??? l???i danh m???c</a></p>  <p style="text-align: right;">Ch??nh s??ch b???o m???t m???c ?????nh n??y ???????c x??y d???ng cho <a href="http://nukeviet.vn" target="_blank">NukeViet CMS</a>, ???????c tham kh???o t??? website <a href="http://webnhanh.vn/vi/thiet-ke-web/detail/Chinh-sach-bao-mat-Quyen-rieng-tu-Privacy-Policy-2147/">webnhanh.vn</a></p>', '', 0, '4', '', 0, 1, 1, 1464421307, 1464421307, 1),
(2, '??i???u kho???n v?? ??i???u ki???n s??? d???ng', 'terms-and-conditions', '', '', 0, '????y l?? c??c ??i???u kho???n v?? ??i???u ki???n ??p d???ng cho website n??y. Truy c???p v?? s??? d???ng website t???c l?? b???n ???? ?????ng ?? v???i c??c quy ?????nh n??y.', '<div style="text-align: justify;">C???m ??n b???n ???? s??? d???ng. Xin vui l??ng ?????c c??c ??i???u kho???n m???t c??ch c???n th???n, v?? <a href="/contact/">li??n h???</a> v???i ch??ng t??i n???u b???n c?? b???t k??? c??u h???i. B???ng vi???c truy c???p ho???c s??? d???ng website c???a ch??ng t??i, b???n ?????ng ?? b??? r??ng bu???c b???i c??c <a href="/siteterms/terms-and-conditions.html">??i???u kho???n v?? ??i???u ki???n</a> s??? d???ng c??ng nh?? <a href="/siteterms/privacy.html">Ch??nh s??ch b???o m???t</a> c???a ch??ng t??i. N???u kh??ng ?????ng ?? v???i c??c quy ?????nh n??y, b???n vui l??ng ng??ng s??? d???ng website.<br /> <br /> <strong><a id="index" name="index"></a>Danh m???c</strong><br /> <a href="#1">??i???u 1: ??i???u kho???n li??n quan ?????n ph???n m???m v???n h??nh website</a><br /> <a href="#2">??i???u 2: Gi???i h???n cho vi???c s??? d???ng Website v?? c??c t??i li???u tr??n website</a><br /> <a href="#3">??i???u 3: S??? d???ng th????ng hi???u</a><br /> <a href="#4">??i???u 4: C??c h??nh vi b??? nghi??m c???m</a><br /> <a href="#5">??i???u 5: C??c ???????ng li??n k???t ?????n c??c website kh??c</a><br /> <a href="#6">??i???u 6: T??? ch???i b???o ?????m</a><br /> <a href="#7">??i???u 7: Lu???t ??p d???ng v?? c?? quan gi???i quy???t tranh ch???p</a><br /> <a href="#8">??i???u 8: Thay ?????i ??i???u kho???n v?? ??i???u ki???n s??? d???ng</a></div>  <hr  /> <h2 style="text-align: justify;"><a id="1" name="1"></a>??i???u kho???n li??n quan ?????n ph???n m???m v???n h??nh website</h2>  <p style="text-align: justify;">- Website c???a ch??ng t??i s??? d???ng h??? th???ng NukeViet, l?? gi???i ph??p v??? website/ c???ng th??ng tin ngu???n m??? ???????c ph??t h??nh theo gi???y ph??p b???n quy???n ph???n m???m t??? do ngu???n m??? ???<a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html" target="_blank">GNU General Public License</a>??? (vi???t t???t l?? GNU/GPL hay GPL) v?? c?? th??? t???i v??? mi???n ph?? t???i trang web <a href="http://www.nukeviet.vn" target="_blank">www.nukeviet.vn</a>.<br /> - Website n??y do ch??ng t??i s??? h???u, ??i???u h??nh v?? duy tr??. NukeViet (hi???u ??? ????y l?? ???h??? th???ng NukeViet??? (bao g???m nh??n h??? th???ng NukeViet v?? c??c s???n ph???m ph??i sinh nh?? NukeViet CMS, NukeViet Portal, <a href="http://edu.nukeviet.vn" target="_blank">NukeViet Edu Gate</a>...), ???www.nukeviet.vn???, ???t??? ch???c NukeViet???, ???ban ??i???u h??nh NukeViet???, &quot;Ban Qu???n Tr??? NukeViet&quot; v?? n??i chung l?? nh???ng g?? li??n quan ?????n NukeViet...) kh??ng li??n quan g?? ?????n vi???c ch??ng t??i ??i???u h??nh website c??ng nh?? quy ?????nh b???n ???????c ph??p l??m v?? kh??ng ???????c ph??p l??m g?? tr??n website n??y.<br /> - H??? th???ng NukeViet l?? b??? m?? ngu???n ???????c ph??t tri???n ????? x??y d???ng c??c website/ c???ng th??ng tin tr??n m???ng. Ch??ng t??i (ch??? s??? h???u, ??i???u h??nh v?? duy tr?? website n??y) kh??ng h??? tr??? v?? kh???ng ?????nh hay ng??? ?? v??? vi???c c?? li??n quan ?????n NukeViet. ????? bi???t th??m nhi???u th??ng tin v??? NukeViet, h??y gh?? th??m website c???a NukeViet t???i ?????a ch???: <a href="http://nukeviet.vn" target="_blank">http://nukeviet.vn</a>.</p>  <p style="text-align: right;"><a href="#index">Tr??? l???i danh m???c</a></p>  <h2 style="text-align: justify;"><a id="2" name="2"></a>Gi???i h???n cho vi???c s??? d???ng Website v?? c??c t??i li???u tr??n website</h2>  <p style="text-align: justify;">- T???t c??? c??c quy???n li??n quan ?????n t???t c??? t??i li???u v?? th??ng tin ???????c hi???n th??? v??/ ho???c ???????c t???o ra s???n cho Website n??y (v?? d??? nh?? nh???ng t??i li???u ???????c cung c???p ????? t???i v???) ???????c qu???n l??, s??? h???u ho???c ???????c cho ph??p s??? d???ng b???i ch??ng t??i ho???c ch??? s??? h???u t????ng ???ng v???i gi???y ph??p t????ng ???ng. Vi???c s??? d???ng c??c t??i li???u v?? th??ng tin ph???i ???????c tu??n th??? theo gi???y ph??p t????ng ???ng ???????c ??p d???ng cho ch??ng.<br /> - Ngo???i tr??? c??c t??i li???u ???????c c???p ph??p r?? r??ng d?????i d???ng gi???y ph??p t?? li???u m???&nbsp;Creative Commons (g???i l?? gi???y ph??p CC) cho ph??p b???n khai th??c v?? chia s??? theo quy ?????nh c???a gi???y ph??p t?? li???u m???, ?????i v???i c??c lo???i t??i li???u kh??ng ghi gi???y ph??p r?? r??ng th?? b???n kh??ng ???????c ph??p s??? d???ng (bao g???m nh??ng kh??ng gi???i h???n vi???c sao ch??p, ch???nh s???a to??n b??? hay m???t ph???n, ????ng t???i, ph??n ph???i, c???p ph??p, b??n v?? xu???t b???n) b???t c??? t??i li???u n??o m?? kh??ng c?? s??? cho ph??p tr?????c b???ng v??n b???n c???a ch??ng t??i ngo???i tr??? vi???c s??? d???ng cho m???c ????ch c?? nh??n, n???i b???, phi th????ng m???i.<br /> - M???t s??? t??i li???u ho???c th??ng tin c?? nh???ng ??i???u kho???n v?? ??i???u ki???n ??p d???ng ri??ng cho ch??ng kh??ng ph???i l?? gi???y ph??p t?? li???u m???, trong tr?????ng h???p nh?? v???y, b???n ???????c y??u c???u ph???i ch???p nh???n c??c ??i???u kho???n v?? ??i???u ki???n ???? khi truy c???p v??o c??c t??i li???u v?? th??ng tin n??y.</p>  <p style="text-align: right;"><a href="#index">Tr??? l???i danh m???c</a></p>  <h2 style="text-align: justify;"><a id="3" name="3"></a>S??? d???ng th????ng hi???u</h2>  <p style="text-align: justify;">- VINADES.,JSC, NukeViet v?? th????ng hi???u g???n v???i NukeViet (v?? d??? NukeViet CMS, NukeViet Portal, NukeViet Edu Gate...), logo c??ng ty VINADES thu???c s??? h???u c???a C??ng ty c??? ph???n ph??t tri???n ngu???n m??? Vi???t Nam.<br /> - Nh???ng t??n s???n ph???m, t??n d???ch v??? kh??c, logo v??/ ho???c nh???ng t??n c??ng ty ???????c s??? d???ng trong Website n??y l?? nh???ng t??i s???n ???? ???????c ????ng k?? ?????c quy???n v?? ???????c gi??? b???n quy???n b???i nh???ng ng?????i s??? h???u v??/ ho???c ng?????i c???p ph??p t????ng ???ng.</p>  <p style="text-align: right;"><a href="#index">Tr??? l???i danh m???c</a></p>  <h2 style="text-align: justify;"><a id="4" name="4"></a>C??c h??nh vi b??? nghi??m c???m</h2>  <p style="text-align: justify;">Ng?????i truy c???p website n??y kh??ng ???????c th???c hi???n nh???ng h??nh vi d?????i ????y khi s??? d???ng website:<br /> - X??m ph???m c??c quy???n h???p ph??p (bao g???m nh??ng kh??ng gi???i h???n ?????i v???i c??c quy???n ri??ng t?? v?? chung) c???a ng?????i kh??c.<br /> - G??y ra s??? thi???t h???i ho???c b???t l???i cho ng?????i kh??c.<br /> - L??m x??o tr???n tr???t t??? c??ng c???ng.<br /> - H??nh vi li??n quan ?????n t???i ph???m.<br /> - T???i l??n ho???c ph??t t??n th??ng tin ri??ng t?? c???a t??? ch???c, c?? nh??n kh??c m?? kh??ng ???????c s??? ch???p thu???n c???a h???.<br /> - S??? d???ng Website n??y v??o m???c ????ch th????ng m???i m?? ch??a ???????c s??? cho ph??p c???a ch??ng t??i.<br /> - N??i x???u, l??m nh???c, ph??? b??ng ng?????i kh??c.<br /> - T???i l??n c??c t???p tin ch???a virus ho???c c??c t???p tin b??? h?? m?? c?? th??? g??y thi???t h???i ?????n s??? v???n h??nh c???a m??y t??nh kh??c.<br /> - Nh???ng ho???t ?????ng c?? kh??? n??ng ???nh h?????ng ?????n ho???t ?????ng b??nh th?????ng c???a website.<br /> - Nh???ng ho???t ?????ng m?? ch??ng t??i cho l?? kh??ng th??ch h???p.<br /> - Nh???ng ho???t ?????ng b???t h???p ph??p ho???c b??? c???m b???i ph??p lu???t hi???n h??nh.</p>  <p style="text-align: right;"><a href="#index">Tr??? l???i danh m???c</a></p>  <h2 style="text-align: justify;"><a id="5" name="5"></a>C??c ???????ng li??n k???t ?????n c??c website kh??c</h2>  <p style="text-align: justify;">- C??c website c???a c??c b??n th??? ba (kh??ng ph???i c??c trang do ch??ng t??i qu???n l??) ???????c li??n k???t ?????n ho???c t??? website n??y (&quot;C??c website kh??c&quot;) ???????c ??i???u h??nh v?? duy tr?? ho??n to??n ?????c l???p b???i c??c b??n th??? ba ???? v?? kh??ng n???m trong quy???n ??i???u khi???n v??/ho???c gi??m s??t c???a ch??ng t??i. Vi???c truy c???p c??c website kh??c ph???i ???????c tu??n th??? theo c??c ??i???u kho???n v?? ??i???u ki???n quy ?????nh b???i ban ??i???u h??nh c???a website ????.<br /> - Ch??ng t??i kh??ng ch???u tr??ch nhi???m cho s??? m???t m??t ho???c thi???t h???i do vi???c truy c???p v?? s??? d???ng c??c website b??n ngo??i, v?? b???n ph???i ch???u m???i r???i ro khi truy c???p c??c website ????.<br /> - Kh??ng c?? n???i dung n??o trong Website n??y th??? hi???n nh?? m???t s??? ?????m b???o c???a ch??ng t??i v??? n???i dung c???a c??c website kh??c v?? c??c s???n ph???m v??/ ho???c c??c d???ch v??? xu???t hi???n v??/ ho???c ???????c cung c???p t???i c??c website kh??c.</p>  <p style="text-align: right;"><a href="#index">Tr??? l???i danh m???c</a></p>  <h2 style="text-align: justify;"><a id="6" name="6"></a>T??? ch???i b???o ?????m</h2>  <p style="text-align: justify;">NGO???I TR??? PH???M VI B??? C???M THEO LU???T PH??P HI???N H??NH, CH??NG T??I S???:<br /> - KH??NG CH???U TR??CH NHI???M HAY B???O ?????M, M???T C??CH R?? R??NG HAY NG??? ??, BAO G???M S??? B???O ?????M V??? T??NH CH??NH X??C, M???C ????? TIN C???Y, HO??N THI???N, PH?? H???P CHO M???C ????CH C??? TH???, S??? KH??NG X??M PH???M QUY???N C???A B??N TH??? 3 V??/HO???C T??NH AN TO??N C???A N???I D???NG WEBSITE N??Y, V?? NH???NG TUY??N B???, ?????M B???O C?? LI??N QUAN.<br /> - KH??NG CH???U TR??CH NHI???M CHO B???T K??? S??? THI???T H???I HAY M???T M??T PH??T SINH T??? VI???C TRUY C???P V?? S??? D???NG WEBSITE HAY VI???C KH??NG TH??? S??? D???NG WEBSITE.<br /> - CH??NG T??I C?? TH??? THAY ?????I V??/HO???C THAY TH??? N???I DUNG C???A WEBSITE N??Y, HO???C T???M HO??N HO???C NG??NG CUNG C???P C??C D???CH V??? QUA WEBSITE N??Y V??O B???T K??? TH???I ??I???M N??O M?? KH??NG C???N TH??NG B??O TR?????C. CH??NG T??I S??? KH??NG CH???U TR??CH NHI???M CHO B???T C??? THI???T H???I N??O PH??T SINH DO S??? THAY ?????I HO???C THAY TH??? N???I DUNG C???A WEBSITE.</p>  <p style="text-align: right;"><a href="#index">Tr??? l???i danh m???c</a></p>  <h2 style="text-align: justify;"><a id="7" name="7"></a>Lu???t ??p d???ng v?? c?? quan gi???i quy???t tranh ch???p</h2>  <p style="text-align: justify;">- C??c ??i???u Kho???n v?? ??i???u Ki???n n??y ???????c ??i???u ch???nh v?? gi???i th??ch theo lu???t c???a Vi???t Nam tr??? khi c?? ??i???u kho???n kh??c ???????c cung c???p th??m. T???t c??? tranh ch???p ph??t sinh li??n quan ?????n website n??y v?? c??c ??i???u Kho???n v?? ??i???u Ki???n s??? d???ng n??y s??? ???????c gi???i quy???t t???i c??c t??a ??n ??? Vi???t Nam.<br /> - N???u m???t ph???n n??o ???? c???a c??c ??i???u Kho???n v?? ??i???u Ki???n b??? xem l?? kh??ng c?? gi?? tr???, v?? hi???u, ho???c kh??ng ??p d???ng ???????c v?? l?? do n??o ????, ph???n ???? ???????c xem nh?? l?? ph???n ri??ng bi???t v?? kh??ng ???nh h?????ng ?????n t??nh hi???u l???c c???a ph???n c??n l???i.<br /> - Trong tr?????ng h???p c?? s??? m??u thu???n gi???a b???n Ti???ng Anh v?? b???n Ti???ng Vi???t c???a b???n ??i???u Kho???n v?? ??i???u Ki???n n??y, b???n Ti???ng Vi???t s??? ???????c ??u ti??n ??p d???ng.</p>  <p style="text-align: right;"><a href="#index">Tr??? l???i danh m???c</a></p>  <h2 style="text-align: justify;"><a id="8" name="8"></a>Thay ?????i ??i???u kho???n v?? ??i???u ki???n s??? d???ng</h2>  <div style="text-align: justify;">??i???u kho???n v?? ??i???u ki???n s??? d???ng c?? th??? thay ?????i theo th???i gian. Ch??ng t??i b???o l??u quy???n thay ?????i ho???c s???a ?????i b???t k??? ??i???u kho???n v?? ??i???u ki???n c??ng nh?? c??c quy ?????nh kh??c, b???t c??? l??c n??o v?? theo ?? m??nh. Ch??ng t??i s??? c?? th??ng b??o tr??n website khi c?? s??? thay ?????i. Ti???p t???c s??? d???ng trang web n??y sau khi ????ng c??c thay ?????i t???c l?? b???n ???? ch???p nh???n c??c thay ?????i ????. <p style="text-align: right;"><a href="#index">Tr??? l???i danh m???c</a></p> </div>', '', 0, '4', '', 0, 2, 1, 1464421307, 1464421307, 1);

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
(2, 'B???n bi???t g?? v??? NukeViet 4?', '', 1, 1, '6', 1275318563, 0, 1),
(3, 'L???i ??ch c???a ph???n m???m ngu???n m??? l?? g???', '', 1, 1, '6', 1275318563, 0, 1);

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
(5, 2, 'M???t b??? sourcecode cho web ho??n to??n m???i.', '', 0),
(6, 2, 'M?? ngu???n m???, s??? d???ng mi???n ph??.', '', 0),
(7, 2, 'S??? d???ng HTML5, CSS3 v?? h??? tr??? Ajax', '', 0),
(8, 2, 'T???t c??? c??c ?? ki???n tr??n', '', 0),
(9, 3, 'Li??n t???c ???????c c???i ti???n, s???a ?????i b???i c??? th??? gi???i.', '', 0),
(10, 3, '???????c s??? d???ng mi???n ph?? kh??ng m???t ti???n.', '', 0),
(11, 3, '???????c t??? do kh??m ph??, s???a ?????i theo ?? th??ch.', '', 0),
(12, 3, 'Ph?? h???p ????? h???c t???p, nghi??n c???u v?? ???????c t??? do s???a ?????i theo ?? th??ch.', '', 0),
(13, 3, 'T???t c??? c??c ?? ki???n tr??n', '', 0);

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
