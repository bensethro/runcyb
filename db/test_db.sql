{\rtf1\ansi\ansicpg1252\cocoartf1265\cocoasubrtf210
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural

\f0\fs24 \cf0 -- phpMyAdmin SQL Dump\
-- version 4.1.9\
-- http://www.phpmyadmin.net\
--\
-- Host: localhost:8889\
-- Generation Time: Sep 18, 2014 at 12:27 PM\
-- Server version: 5.5.34\
-- PHP Version: 5.5.10\
\
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";\
SET time_zone = "+00:00";\
\
--\
-- Database: `test_db`\
--\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `test_dbcommentmeta`\
--\
\
CREATE TABLE `test_dbcommentmeta` (\
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,\
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',\
  `meta_key` varchar(255) DEFAULT NULL,\
  `meta_value` longtext,\
  PRIMARY KEY (`meta_id`),\
  KEY `comment_id` (`comment_id`),\
  KEY `meta_key` (`meta_key`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `test_dbcomments`\
--\
\
CREATE TABLE `test_dbcomments` (\
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,\
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',\
  `comment_author` tinytext NOT NULL,\
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',\
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',\
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',\
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `comment_content` text NOT NULL,\
  `comment_karma` int(11) NOT NULL DEFAULT '0',\
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',\
  `comment_agent` varchar(255) NOT NULL DEFAULT '',\
  `comment_type` varchar(20) NOT NULL DEFAULT '',\
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',\
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',\
  PRIMARY KEY (`comment_ID`),\
  KEY `comment_post_ID` (`comment_post_ID`),\
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),\
  KEY `comment_date_gmt` (`comment_date_gmt`),\
  KEY `comment_parent` (`comment_parent`),\
  KEY `comment_author_email` (`comment_author_email`(10))\
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;\
\
--\
-- Dumping data for table `test_dbcomments`\
--\
\
INSERT INTO `test_dbcomments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES\
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2014-09-04 08:04:21', '2014-09-04 08:04:21', 'Hi, this is a comment.\\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, 'post-trashed', '', '', 0, 0);\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `test_dblinks`\
--\
\
CREATE TABLE `test_dblinks` (\
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,\
  `link_url` varchar(255) NOT NULL DEFAULT '',\
  `link_name` varchar(255) NOT NULL DEFAULT '',\
  `link_image` varchar(255) NOT NULL DEFAULT '',\
  `link_target` varchar(25) NOT NULL DEFAULT '',\
  `link_description` varchar(255) NOT NULL DEFAULT '',\
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',\
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',\
  `link_rating` int(11) NOT NULL DEFAULT '0',\
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `link_rel` varchar(255) NOT NULL DEFAULT '',\
  `link_notes` mediumtext NOT NULL,\
  `link_rss` varchar(255) NOT NULL DEFAULT '',\
  PRIMARY KEY (`link_id`),\
  KEY `link_visible` (`link_visible`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `test_dboptions`\
--\
\
CREATE TABLE `test_dboptions` (\
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,\
  `option_name` varchar(64) NOT NULL DEFAULT '',\
  `option_value` longtext NOT NULL,\
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',\
  PRIMARY KEY (`option_id`),\
  UNIQUE KEY `option_name` (`option_name`)\
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=313 ;\
\
--\
-- Dumping data for table `test_dboptions`\
--\
\
INSERT INTO `test_dboptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES\
(1, 'siteurl', 'http://localhost:8888', 'yes'),\
(2, 'blogname', 'run cyb', 'yes'),\
(3, 'blogdescription', 'Just another WordPress site', 'yes'),\
(4, 'users_can_register', '0', 'yes'),\
(5, 'admin_email', 'ben@thirtytwotrees.com', 'yes'),\
(6, 'start_of_week', '1', 'yes'),\
(7, 'use_balanceTags', '0', 'yes'),\
(8, 'use_smilies', '1', 'yes'),\
(9, 'require_name_email', '1', 'yes'),\
(10, 'comments_notify', '1', 'yes'),\
(11, 'posts_per_rss', '10', 'yes'),\
(12, 'rss_use_excerpt', '0', 'yes'),\
(13, 'mailserver_url', 'mail.example.com', 'yes'),\
(14, 'mailserver_login', 'login@example.com', 'yes'),\
(15, 'mailserver_pass', 'password', 'yes'),\
(16, 'mailserver_port', '110', 'yes'),\
(17, 'default_category', '1', 'yes'),\
(18, 'default_comment_status', 'open', 'yes'),\
(19, 'default_ping_status', 'open', 'yes'),\
(20, 'default_pingback_flag', '0', 'yes'),\
(21, 'posts_per_page', '10', 'yes'),\
(22, 'date_format', 'F j, Y', 'yes'),\
(23, 'time_format', 'g:i a', 'yes'),\
(24, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),\
(25, 'comment_moderation', '0', 'yes'),\
(26, 'moderation_notify', '1', 'yes'),\
(27, 'permalink_structure', '', 'yes'),\
(28, 'gzipcompression', '0', 'yes'),\
(29, 'hack_file', '0', 'yes'),\
(30, 'blog_charset', 'UTF-8', 'yes'),\
(31, 'moderation_keys', '', 'no'),\
(32, 'active_plugins', 'a:3:\{i:0;s:31:"flexslider-hg/flexslider-hg.php";i:1;s:30:"pagely-multiedit/multiedit.php";i:2;s:52:"testimonials-by-woothemes/woothemes-testimonials.php";\}', 'yes'),\
(33, 'home', 'http://localhost:8888', 'yes'),\
(34, 'category_base', '', 'yes'),\
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),\
(36, 'advanced_edit', '0', 'yes'),\
(37, 'comment_max_links', '2', 'yes'),\
(38, 'gmt_offset', '0', 'yes'),\
(39, 'default_email_category', '1', 'yes'),\
(40, 'recently_edited', '', 'no'),\
(41, 'template', 'runcyb_theme', 'yes'),\
(42, 'stylesheet', 'runcyb_theme', 'yes'),\
(43, 'comment_whitelist', '1', 'yes'),\
(44, 'blacklist_keys', '', 'no'),\
(45, 'comment_registration', '0', 'yes'),\
(46, 'html_type', 'text/html', 'yes'),\
(47, 'use_trackback', '0', 'yes'),\
(48, 'default_role', 'subscriber', 'yes'),\
(49, 'db_version', '29630', 'yes'),\
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),\
(51, 'upload_path', '', 'yes'),\
(52, 'blog_public', '0', 'yes'),\
(53, 'default_link_category', '2', 'yes'),\
(54, 'show_on_front', 'page', 'yes'),\
(55, 'tag_base', '', 'yes'),\
(56, 'show_avatars', '1', 'yes'),\
(57, 'avatar_rating', 'G', 'yes'),\
(58, 'upload_url_path', '', 'yes'),\
(59, 'thumbnail_size_w', '150', 'yes'),\
(60, 'thumbnail_size_h', '150', 'yes'),\
(61, 'thumbnail_crop', '1', 'yes'),\
(62, 'medium_size_w', '300', 'yes'),\
(63, 'medium_size_h', '200', 'yes'),\
(64, 'avatar_default', 'mystery', 'yes'),\
(65, 'large_size_w', '1024', 'yes'),\
(66, 'large_size_h', '1024', 'yes'),\
(67, 'image_default_link_type', '', 'yes'),\
(68, 'image_default_size', '', 'yes'),\
(69, 'image_default_align', '', 'yes'),\
(70, 'close_comments_for_old_posts', '0', 'yes'),\
(71, 'close_comments_days_old', '14', 'yes'),\
(72, 'thread_comments', '1', 'yes'),\
(73, 'thread_comments_depth', '5', 'yes'),\
(74, 'page_comments', '0', 'yes'),\
(75, 'comments_per_page', '50', 'yes'),\
(76, 'default_comments_page', 'newest', 'yes'),\
(77, 'comment_order', 'asc', 'yes'),\
(78, 'sticky_posts', 'a:0:\{\}', 'yes'),\
(79, 'widget_categories', 'a:2:\{i:2;a:4:\{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;\}s:12:"_multiwidget";i:1;\}', 'yes'),\
(80, 'widget_text', 'a:0:\{\}', 'yes'),\
(81, 'widget_rss', 'a:0:\{\}', 'yes'),\
(82, 'uninstall_plugins', 'a:0:\{\}', 'no'),\
(83, 'timezone_string', '', 'yes'),\
(84, 'page_for_posts', '11', 'yes'),\
(85, 'page_on_front', '4', 'yes'),\
(86, 'default_post_format', '0', 'yes'),\
(87, 'link_manager_enabled', '0', 'yes'),\
(88, 'initial_db_version', '27916', 'yes'),\
(89, 'test_dbuser_roles', 'a:5:\{s:13:"administrator";a:2:\{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:\{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;\}\}s:6:"editor";a:2:\{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:\{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;\}\}s:6:"author";a:2:\{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:\{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;\}\}s:11:"contributor";a:2:\{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:\{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;\}\}s:10:"subscriber";a:2:\{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:\{s:4:"read";b:1;s:7:"level_0";b:1;\}\}\}', 'yes'),\
(90, 'widget_search', 'a:2:\{i:2;a:1:\{s:5:"title";s:0:"";\}s:12:"_multiwidget";i:1;\}', 'yes'),\
(91, 'widget_recent-posts', 'a:2:\{i:2;a:2:\{s:5:"title";s:0:"";s:6:"number";i:5;\}s:12:"_multiwidget";i:1;\}', 'yes'),\
(92, 'widget_recent-comments', 'a:2:\{i:2;a:2:\{s:5:"title";s:0:"";s:6:"number";i:5;\}s:12:"_multiwidget";i:1;\}', 'yes'),\
(93, 'widget_archives', 'a:2:\{i:2;a:3:\{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;\}s:12:"_multiwidget";i:1;\}', 'yes'),\
(94, 'widget_meta', 'a:2:\{i:2;a:1:\{s:5:"title";s:0:"";\}s:12:"_multiwidget";i:1;\}', 'yes'),\
(95, 'sidebars_widgets', 'a:7:\{s:19:"wp_inactive_widgets";a:0:\{\}s:5:"posts";a:6:\{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";\}s:11:"top_sidebar";a:0:\{\}s:11:"bottom_left";a:0:\{\}s:11:"bottom_lmid";N;s:12:"bottom_right";N;s:13:"array_version";i:3;\}', 'yes'),\
(96, 'cron', 'a:5:\{i:1410983760;a:1:\{s:20:"wp_maybe_auto_update";a:1:\{s:32:"40cd750bba9870f18aada2478b24840a";a:3:\{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:\{\}s:8:"interval";i:43200;\}\}\}i:1410984271;a:3:\{s:16:"wp_version_check";a:1:\{s:32:"40cd750bba9870f18aada2478b24840a";a:3:\{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:\{\}s:8:"interval";i:43200;\}\}s:17:"wp_update_plugins";a:1:\{s:32:"40cd750bba9870f18aada2478b24840a";a:3:\{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:\{\}s:8:"interval";i:43200;\}\}s:16:"wp_update_themes";a:1:\{s:32:"40cd750bba9870f18aada2478b24840a";a:3:\{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:\{\}s:8:"interval";i:43200;\}\}\}i:1411027718;a:1:\{s:19:"wp_scheduled_delete";a:1:\{s:32:"40cd750bba9870f18aada2478b24840a";a:3:\{s:8:"schedule";s:5:"daily";s:4:"args";a:0:\{\}s:8:"interval";i:86400;\}\}\}i:1411027883;a:1:\{s:30:"wp_scheduled_auto_draft_delete";a:1:\{s:32:"40cd750bba9870f18aada2478b24840a";a:3:\{s:8:"schedule";s:5:"daily";s:4:"args";a:0:\{\}s:8:"interval";i:86400;\}\}\}s:7:"version";i:2;\}', 'yes'),\
(104, '_site_transient_timeout_browser_e031bbc6802ffa5eb9cf57849f48e69b', '1410422695', 'yes'),\
(105, '_site_transient_browser_e031bbc6802ffa5eb9cf57849f48e69b', 'a:9:\{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"36.0.1985.125";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;\}', 'yes'),\
(125, 'theme_mods_twentyfourteen', 'a:1:\{s:16:"sidebars_widgets";a:2:\{s:4:"time";i:1409818137;s:4:"data";a:4:\{s:19:"wp_inactive_widgets";a:0:\{\}s:9:"sidebar-1";a:6:\{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";\}s:9:"sidebar-2";a:0:\{\}s:9:"sidebar-3";a:0:\{\}\}\}\}', 'yes'),\
(126, 'current_theme', 'run CYB', 'yes'),\
(127, 'theme_mods_runcyb_theme', 'a:2:\{i:0;b:0;s:18:"nav_menu_locations";a:1:\{s:11:"header-menu";i:2;\}\}', 'yes'),\
(128, 'theme_switched', '', 'yes'),\
(130, 'nav_menu_options', 'a:2:\{i:0;b:0;s:8:"auto_add";a:0:\{\}\}', 'yes'),\
(139, 'recently_activated', 'a:0:\{\}', 'yes'),\
(152, 'woothemes-testimonials-version', '1.5.3', 'yes'),\
(157, 'testimonial-category_children', 'a:0:\{\}', 'yes'),\
(160, 'category_children', 'a:0:\{\}', 'yes'),\
(248, 'WPLANG', '', 'yes'),\
(249, 'db_upgraded', '', 'yes'),\
(251, '_site_transient_update_core', 'O:8:"stdClass":4:\{s:7:"updates";a:1:\{i:0;O:8:"stdClass":10:\{s:8:"response";s:6:"latest";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.0.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:\{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.0.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.0-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.0-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;\}s:7:"current";s:3:"4.0";s:7:"version";s:3:"4.0";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";\}\}s:12:"last_checked";i:1410946732;s:15:"version_checked";s:3:"4.0";s:12:"translations";a:0:\{\}\}', 'yes'),\
(252, '_transient_random_seed', '4d38eeee8904965cdbd0df22f4194ed9', 'yes'),\
(253, 'can_compress_scripts', '1', 'yes'),\
(309, '_site_transient_timeout_theme_roots', '1410948526', 'yes'),\
(310, '_site_transient_theme_roots', 'a:4:\{s:12:"runcyb_theme";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";\}', 'yes'),\
(311, '_site_transient_update_themes', 'O:8:"stdClass":4:\{s:12:"last_checked";i:1410946746;s:7:"checked";a:4:\{s:12:"runcyb_theme";s:3:"1.2";s:14:"twentyfourteen";s:3:"1.1";s:14:"twentythirteen";s:3:"1.2";s:12:"twentytwelve";s:3:"1.4";\}s:8:"response";a:3:\{s:14:"twentyfourteen";a:4:\{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.2";s:3:"url";s:43:"https://wordpress.org/themes/twentyfourteen";s:7:"package";s:60:"https://wordpress.org/themes/download/twentyfourteen.1.2.zip";\}s:14:"twentythirteen";a:4:\{s:5:"theme";s:14:"twentythirteen";s:11:"new_version";s:3:"1.3";s:3:"url";s:43:"https://wordpress.org/themes/twentythirteen";s:7:"package";s:60:"https://wordpress.org/themes/download/twentythirteen.1.3.zip";\}s:12:"twentytwelve";a:4:\{s:5:"theme";s:12:"twentytwelve";s:11:"new_version";s:3:"1.5";s:3:"url";s:41:"https://wordpress.org/themes/twentytwelve";s:7:"package";s:58:"https://wordpress.org/themes/download/twentytwelve.1.5.zip";\}\}s:12:"translations";a:0:\{\}\}', 'yes'),\
(312, '_site_transient_update_plugins', 'O:8:"stdClass":4:\{s:12:"last_checked";i:1410946740;s:8:"response";a:1:\{s:19:"akismet/akismet.php";O:8:"stdClass":6:\{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.0.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.0.2.zip";\}\}s:12:"translations";a:0:\{\}s:9:"no_update";a:4:\{s:9:"hello.php";O:8:"stdClass":6:\{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";\}s:31:"flexslider-hg/flexslider-hg.php";O:8:"stdClass":6:\{s:2:"id";s:5:"37155";s:4:"slug";s:13:"flexslider-hg";s:6:"plugin";s:31:"flexslider-hg/flexslider-hg.php";s:11:"new_version";s:3:"2.0";s:3:"url";s:44:"https://wordpress.org/plugins/flexslider-hg/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/flexslider-hg.zip";\}s:30:"pagely-multiedit/multiedit.php";O:8:"stdClass":6:\{s:2:"id";s:5:"12983";s:4:"slug";s:16:"pagely-multiedit";s:6:"plugin";s:30:"pagely-multiedit/multiedit.php";s:11:"new_version";s:7:"0.9.8.4";s:3:"url";s:47:"https://wordpress.org/plugins/pagely-multiedit/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/pagely-multiedit.zip";\}s:52:"testimonials-by-woothemes/woothemes-testimonials.php";O:8:"stdClass":6:\{s:2:"id";s:5:"35636";s:4:"slug";s:25:"testimonials-by-woothemes";s:6:"plugin";s:52:"testimonials-by-woothemes/woothemes-testimonials.php";s:11:"new_version";s:5:"1.5.3";s:3:"url";s:56:"https://wordpress.org/plugins/testimonials-by-woothemes/";s:7:"package";s:74:"https://downloads.wordpress.org/plugin/testimonials-by-woothemes.1.5.3.zip";\}\}\}', 'yes');\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `test_dbpostmeta`\
--\
\
CREATE TABLE `test_dbpostmeta` (\
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,\
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',\
  `meta_key` varchar(255) DEFAULT NULL,\
  `meta_value` longtext,\
  PRIMARY KEY (`meta_id`),\
  KEY `post_id` (`post_id`),\
  KEY `meta_key` (`meta_key`)\
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=226 ;\
\
--\
-- Dumping data for table `test_dbpostmeta`\
--\
\
INSERT INTO `test_dbpostmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES\
(1, 2, '_wp_page_template', 'template-demo.php'),\
(2, 4, '_edit_last', '1'),\
(3, 4, '_edit_lock', '1410434529:1'),\
(4, 4, '_wp_page_template', 'template-home.php'),\
(5, 2, '_edit_lock', '1410434680:1'),\
(6, 2, '_edit_last', '1'),\
(7, 7, '_edit_last', '1'),\
(8, 7, '_edit_lock', '1409818180:1'),\
(9, 7, '_wp_page_template', 'template-trails.php'),\
(10, 9, '_edit_last', '1'),\
(11, 9, '_edit_lock', '1409818192:1'),\
(12, 9, '_wp_page_template', 'default'),\
(13, 11, '_edit_last', '1'),\
(14, 11, '_edit_lock', '1409818207:1'),\
(15, 11, '_wp_page_template', 'index.php'),\
(16, 13, '_edit_last', '1'),\
(17, 13, '_edit_lock', '1410443266:1'),\
(18, 13, '_wp_page_template', 'template-events.php'),\
(19, 15, '_edit_last', '1'),\
(20, 15, '_edit_lock', '1409825644:1'),\
(21, 15, '_wp_page_template', 'template-shop.php'),\
(22, 17, '_menu_item_type', 'post_type'),\
(23, 17, '_menu_item_menu_item_parent', '0'),\
(24, 17, '_menu_item_object_id', '15'),\
(25, 17, '_menu_item_object', 'page'),\
(26, 17, '_menu_item_target', ''),\
(27, 17, '_menu_item_classes', 'a:1:\{i:0;s:0:"";\}'),\
(28, 17, '_menu_item_xfn', ''),\
(29, 17, '_menu_item_url', ''),\
(31, 18, '_menu_item_type', 'post_type'),\
(32, 18, '_menu_item_menu_item_parent', '0'),\
(33, 18, '_menu_item_object_id', '13'),\
(34, 18, '_menu_item_object', 'page'),\
(35, 18, '_menu_item_target', ''),\
(36, 18, '_menu_item_classes', 'a:1:\{i:0;s:0:"";\}'),\
(37, 18, '_menu_item_xfn', ''),\
(38, 18, '_menu_item_url', ''),\
(40, 19, '_menu_item_type', 'post_type'),\
(41, 19, '_menu_item_menu_item_parent', '0'),\
(42, 19, '_menu_item_object_id', '11'),\
(43, 19, '_menu_item_object', 'page'),\
(44, 19, '_menu_item_target', ''),\
(45, 19, '_menu_item_classes', 'a:1:\{i:0;s:0:"";\}'),\
(46, 19, '_menu_item_xfn', ''),\
(47, 19, '_menu_item_url', ''),\
(49, 20, '_menu_item_type', 'post_type'),\
(50, 20, '_menu_item_menu_item_parent', '0'),\
(51, 20, '_menu_item_object_id', '9'),\
(52, 20, '_menu_item_object', 'page'),\
(53, 20, '_menu_item_target', ''),\
(54, 20, '_menu_item_classes', 'a:1:\{i:0;s:0:"";\}'),\
(55, 20, '_menu_item_xfn', ''),\
(56, 20, '_menu_item_url', ''),\
(58, 21, '_menu_item_type', 'post_type'),\
(59, 21, '_menu_item_menu_item_parent', '0'),\
(60, 21, '_menu_item_object_id', '7'),\
(61, 21, '_menu_item_object', 'page'),\
(62, 21, '_menu_item_target', ''),\
(63, 21, '_menu_item_classes', 'a:1:\{i:0;s:0:"";\}'),\
(64, 21, '_menu_item_xfn', ''),\
(65, 21, '_menu_item_url', ''),\
(76, 23, '_menu_item_type', 'post_type'),\
(77, 23, '_menu_item_menu_item_parent', '0'),\
(78, 23, '_menu_item_object_id', '2'),\
(79, 23, '_menu_item_object', 'page'),\
(80, 23, '_menu_item_target', ''),\
(81, 23, '_menu_item_classes', 'a:1:\{i:0;s:0:"";\}'),\
(82, 23, '_menu_item_xfn', ''),\
(83, 23, '_menu_item_url', ''),\
(85, 24, '_edit_last', '1'),\
(86, 24, '_edit_lock', '1410365796:1'),\
(88, 26, '_edit_last', '1'),\
(89, 26, '_edit_lock', '1409830004:1'),\
(91, 1, '_wp_trash_meta_status', 'publish'),\
(92, 1, '_wp_trash_meta_time', '1409818723'),\
(93, 1, '_wp_trash_meta_comments_status', 'a:1:\{i:1;s:1:"1";\}'),\
(95, 29, '_edit_last', '1'),\
(96, 29, '_edit_lock', '1410422214:1'),\
(100, 32, '_wp_attached_file', '2014/09/IMG_20140428_161708.jpg'),\
(101, 32, '_wp_attachment_metadata', 'a:5:\{s:5:"width";i:768;s:6:"height";i:1024;s:4:"file";s:31:"2014/09/IMG_20140428_161708.jpg";s:5:"sizes";a:4:\{s:9:"thumbnail";a:4:\{s:4:"file";s:31:"IMG_20140428_161708-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";\}s:6:"medium";a:4:\{s:4:"file";s:31:"IMG_20140428_161708-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";\}s:14:"post-thumbnail";a:4:\{s:4:"file";s:31:"IMG_20140428_161708-600x800.jpg";s:5:"width";i:600;s:6:"height";i:800;s:9:"mime-type";s:10:"image/jpeg";\}s:12:"listingthumb";a:4:\{s:4:"file";s:31:"IMG_20140428_161708-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";\}\}s:10:"image_meta";a:10:\{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";\}\}'),\
(104, 33, '_wp_attached_file', '2014/09/IMG_20140426_095602.jpg'),\
(105, 33, '_wp_attachment_metadata', 'a:5:\{s:5:"width";i:3264;s:6:"height";i:2448;s:4:"file";s:31:"2014/09/IMG_20140426_095602.jpg";s:5:"sizes";a:6:\{s:9:"thumbnail";a:4:\{s:4:"file";s:31:"IMG_20140426_095602-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";\}s:6:"medium";a:4:\{s:4:"file";s:31:"IMG_20140426_095602-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";\}s:5:"large";a:4:\{s:4:"file";s:32:"IMG_20140426_095602-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";\}s:14:"post-thumbnail";a:4:\{s:4:"file";s:31:"IMG_20140426_095602-800x600.jpg";s:5:"width";i:800;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";\}s:12:"featureimage";a:4:\{s:4:"file";s:32:"IMG_20140426_095602-1000x750.jpg";s:5:"width";i:1000;s:6:"height";i:750;s:9:"mime-type";s:10:"image/jpeg";\}s:12:"listingthumb";a:4:\{s:4:"file";s:31:"IMG_20140426_095602-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";\}\}s:10:"image_meta";a:10:\{s:8:"aperture";d:2.649999999999999911182158029987476766109466552734375;s:6:"credit";s:0:"";s:6:"camera";s:7:"Nexus 4";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1398506053;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"4.6";s:3:"iso";s:3:"300";s:13:"shutter_speed";s:4:"0.05";s:5:"title";s:0:"";\}\}'),\
(106, 26, '_thumbnail_id', '33'),\
(107, 34, '_wp_attached_file', '2014/09/IMG_20140425_131044.jpg'),\
(108, 34, '_wp_attachment_metadata', 'a:5:\{s:5:"width";i:3264;s:6:"height";i:2448;s:4:"file";s:31:"2014/09/IMG_20140425_131044.jpg";s:5:"sizes";a:6:\{s:9:"thumbnail";a:4:\{s:4:"file";s:31:"IMG_20140425_131044-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";\}s:6:"medium";a:4:\{s:4:"file";s:31:"IMG_20140425_131044-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";\}s:5:"large";a:4:\{s:4:"file";s:32:"IMG_20140425_131044-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";\}s:14:"post-thumbnail";a:4:\{s:4:"file";s:31:"IMG_20140425_131044-800x600.jpg";s:5:"width";i:800;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";\}s:12:"featureimage";a:4:\{s:4:"file";s:32:"IMG_20140425_131044-1000x750.jpg";s:5:"width";i:1000;s:6:"height";i:750;s:9:"mime-type";s:10:"image/jpeg";\}s:12:"listingthumb";a:4:\{s:4:"file";s:31:"IMG_20140425_131044-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";\}\}s:10:"image_meta";a:10:\{s:8:"aperture";d:2.649999999999999911182158029987476766109466552734375;s:6:"credit";s:0:"";s:6:"camera";s:7:"Nexus 4";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1398431444;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"4.6";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:16:"0.00113122171946";s:5:"title";s:0:"";\}\}'),\
(109, 24, '_thumbnail_id', '34'),\
(110, 35, '_edit_last', '1'),\
(111, 35, '_edit_lock', '1409821878:1'),\
(112, 36, '_wp_attached_file', '2014/09/IMG_20140425_131026.jpg'),\
(113, 36, '_wp_attachment_metadata', 'a:5:\{s:5:"width";i:2048;s:6:"height";i:1536;s:4:"file";s:31:"2014/09/IMG_20140425_131026.jpg";s:5:"sizes";a:6:\{s:9:"thumbnail";a:4:\{s:4:"file";s:31:"IMG_20140425_131026-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";\}s:6:"medium";a:4:\{s:4:"file";s:31:"IMG_20140425_131026-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";\}s:5:"large";a:4:\{s:4:"file";s:32:"IMG_20140425_131026-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";\}s:14:"post-thumbnail";a:4:\{s:4:"file";s:31:"IMG_20140425_131026-800x600.jpg";s:5:"width";i:800;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";\}s:12:"featureimage";a:4:\{s:4:"file";s:32:"IMG_20140425_131026-1000x750.jpg";s:5:"width";i:1000;s:6:"height";i:750;s:9:"mime-type";s:10:"image/jpeg";\}s:12:"listingthumb";a:4:\{s:4:"file";s:31:"IMG_20140425_131026-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";\}\}s:10:"image_meta";a:10:\{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";\}\}'),\
(114, 35, '_thumbnail_id', '36'),\
(116, 38, '_edit_last', '1'),\
(117, 38, '_edit_lock', '1409827174:1'),\
(118, 38, '_wp_page_template', 'template-event-winter.php'),\
(119, 38, 'multiedit_Shopinfo', ''),\
(120, 38, 'multiedit_Promo', '<p>the winter event is</p>'),\
(126, 38, 'multiedit_intro', '<p>blurb here</p>'),\
(127, 15, 'multiedit_intro', '<p>shop intro</p>'),\
(128, 15, 'multiedit_Promo', ''),\
(129, 15, 'multiedit_brands', ''),\
(130, 45, '_edit_last', '1'),\
(131, 45, '_edit_lock', '1410444081:1'),\
(132, 45, '_wp_page_template', 'template-event-night.php'),\
(133, 45, 'multiedit_intro', '<p><strong>Night trail intro</strong></p><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.&nbsp;Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>'),\
(134, 45, 'multiedit_Promo', '<p>blurby</p>'),\
(136, 38, '_thumbnail_id', '34'),\
(137, 47, '_edit_last', '1'),\
(138, 47, '_edit_lock', '1410365784:1'),\
(140, 49, '_edit_last', '1'),\
(141, 49, '_edit_lock', '1410365774:1'),\
(143, 51, '_wp_attached_file', '2014/09/IMG_20140107_154723.jpg'),\
(144, 51, '_wp_attachment_metadata', 'a:5:\{s:5:"width";i:3264;s:6:"height";i:2448;s:4:"file";s:31:"2014/09/IMG_20140107_154723.jpg";s:5:"sizes";a:6:\{s:9:"thumbnail";a:4:\{s:4:"file";s:31:"IMG_20140107_154723-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";\}s:6:"medium";a:4:\{s:4:"file";s:31:"IMG_20140107_154723-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";\}s:5:"large";a:4:\{s:4:"file";s:32:"IMG_20140107_154723-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";\}s:14:"post-thumbnail";a:4:\{s:4:"file";s:31:"IMG_20140107_154723-800x600.jpg";s:5:"width";i:800;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";\}s:12:"featureimage";a:4:\{s:4:"file";s:32:"IMG_20140107_154723-1000x750.jpg";s:5:"width";i:1000;s:6:"height";i:750;s:9:"mime-type";s:10:"image/jpeg";\}s:12:"listingthumb";a:4:\{s:4:"file";s:31:"IMG_20140107_154723-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";\}\}s:10:"image_meta";a:10:\{s:8:"aperture";d:2.649999999999999911182158029987476766109466552734375;s:6:"credit";s:0:"";s:6:"camera";s:7:"Nexus 4";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1389109643;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"4.6";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:16:"0.00124069478908";s:5:"title";s:0:"";\}\}'),\
(145, 49, '_thumbnail_id', '51'),\
(147, 52, '_edit_last', '1'),\
(148, 52, '_edit_lock', '1409827465:1'),\
(149, 53, '_edit_last', '1'),\
(150, 53, '_edit_lock', '1409827509:1'),\
(151, 54, '_edit_last', '1'),\
(152, 54, '_edit_lock', '1409827553:1'),\
(153, 57, '_edit_last', '1'),\
(154, 57, '_edit_lock', '1410365766:1'),\
(155, 58, '_wp_attached_file', '2014/09/IMG_20140328_153540.jpg'),\
(156, 58, '_wp_attachment_metadata', 'a:5:\{s:5:"width";i:1280;s:6:"height";i:960;s:4:"file";s:31:"2014/09/IMG_20140328_153540.jpg";s:5:"sizes";a:6:\{s:9:"thumbnail";a:4:\{s:4:"file";s:31:"IMG_20140328_153540-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";\}s:6:"medium";a:4:\{s:4:"file";s:31:"IMG_20140328_153540-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";\}s:5:"large";a:4:\{s:4:"file";s:32:"IMG_20140328_153540-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";\}s:14:"post-thumbnail";a:4:\{s:4:"file";s:31:"IMG_20140328_153540-800x600.jpg";s:5:"width";i:800;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";\}s:12:"featureimage";a:4:\{s:4:"file";s:32:"IMG_20140328_153540-1000x750.jpg";s:5:"width";i:1000;s:6:"height";i:750;s:9:"mime-type";s:10:"image/jpeg";\}s:12:"listingthumb";a:4:\{s:4:"file";s:31:"IMG_20140328_153540-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";\}\}s:10:"image_meta";a:10:\{s:8:"aperture";d:2.649999999999999911182158029987476766109466552734375;s:6:"credit";s:0:"";s:6:"camera";s:7:"Nexus 4";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1396020940;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"4.6";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:17:"0.000270051309749";s:5:"title";s:0:"";\}\}'),\
(157, 57, '_thumbnail_id', '58'),\
(159, 60, '_edit_last', '1'),\
(160, 60, '_edit_lock', '1410365747:1'),\
(161, 61, '_wp_attached_file', '2014/09/IMG_20131110_171656.jpg'),\
(162, 61, '_wp_attachment_metadata', 'a:5:\{s:5:"width";i:3264;s:6:"height";i:2448;s:4:"file";s:31:"2014/09/IMG_20131110_171656.jpg";s:5:"sizes";a:6:\{s:9:"thumbnail";a:4:\{s:4:"file";s:31:"IMG_20131110_171656-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";\}s:6:"medium";a:4:\{s:4:"file";s:31:"IMG_20131110_171656-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";\}s:5:"large";a:4:\{s:4:"file";s:32:"IMG_20131110_171656-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";\}s:14:"post-thumbnail";a:4:\{s:4:"file";s:31:"IMG_20131110_171656-800x600.jpg";s:5:"width";i:800;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";\}s:12:"featureimage";a:4:\{s:4:"file";s:32:"IMG_20131110_171656-1000x750.jpg";s:5:"width";i:1000;s:6:"height";i:750;s:9:"mime-type";s:10:"image/jpeg";\}s:12:"listingthumb";a:4:\{s:4:"file";s:31:"IMG_20131110_171656-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";\}\}s:10:"image_meta";a:10:\{s:8:"aperture";d:2.649999999999999911182158029987476766109466552734375;s:6:"credit";s:0:"";s:6:"camera";s:7:"Nexus 4";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1384103816;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"4.6";s:3:"iso";s:4:"1000";s:13:"shutter_speed";s:4:"0.05";s:5:"title";s:0:"";\}\}'),\
(163, 60, '_thumbnail_id', '61'),\
(169, 63, '_edit_last', '1'),\
(170, 63, '_edit_lock', '1410365757:1'),\
(172, 66, '_edit_last', '1'),\
(173, 66, '_slide_link_url', ''),\
(174, 66, '_slider_id', '|homepage|'),\
(175, 66, '_edit_lock', '1410346059:1'),\
(176, 67, '_edit_last', '1'),\
(177, 67, '_edit_lock', '1409831090:1'),\
(178, 67, '_image_size', 'featureimage'),\
(179, 67, '_heading_tag', 'h2'),\
(180, 67, '_order_by', 'date'),\
(181, 67, '_order', 'ASC'),\
(182, 67, '_limit', '0'),\
(183, 67, '_hide_slide_data', '0'),\
(184, 67, '_randomize', '0'),\
(185, 67, '_slideshow_speed', '7'),\
(186, 67, '_animation_speed', '0.5'),\
(187, 67, '_animation', 'fade'),\
(188, 67, '_animation_direction', 'horizontal'),\
(189, 67, '_style', 'default'),\
(190, 67, '_corners', 'rounded'),\
(191, 68, '_menu_item_type', 'post_type'),\
(192, 68, '_menu_item_menu_item_parent', '18'),\
(193, 68, '_menu_item_object_id', '45'),\
(194, 68, '_menu_item_object', 'page'),\
(195, 68, '_menu_item_target', ''),\
(196, 68, '_menu_item_classes', 'a:1:\{i:0;s:0:"";\}'),\
(197, 68, '_menu_item_xfn', ''),\
(198, 68, '_menu_item_url', ''),\
(200, 69, '_menu_item_type', 'post_type'),\
(201, 69, '_menu_item_menu_item_parent', '18'),\
(202, 69, '_menu_item_object_id', '38'),\
(203, 69, '_menu_item_object', 'page'),\
(204, 69, '_menu_item_target', ''),\
(205, 69, '_menu_item_classes', 'a:1:\{i:0;s:0:"";\}'),\
(206, 69, '_menu_item_xfn', ''),\
(207, 69, '_menu_item_url', ''),\
(209, 4, 'multiedit_intro', '<p><strong>Run. Coed y Brein is the UK''s first bespoke trail running centre.</strong><br></p><p>We are almost unique in the UK by having a brand new <a data-mce-href="/?page_id=15" href="/?page_id=15">trail running shop</a>, footwear and pack <a data-mce-href="/?page_id=2" href="/?page_id=2">demo centre</a>, a network of four running routes,&nbsp;and some fantastic race events - all in one location.<br></p><p>With trail guides service, as bookable sessions on technique, kit and general advice Run. Coed y Brenin has something for every ability of trail runner.</p>'),\
(210, 4, 'multiedit_promo', ''),\
(211, 63, '_thumbnail_id', '33'),\
(213, 29, '_thumbnail_id', '36'),\
(223, 81, '_wp_attached_file', '2014/09/logo_nighttrail.png'),\
(224, 81, '_wp_attachment_metadata', 'a:5:\{s:5:"width";i:419;s:6:"height";i:124;s:4:"file";s:27:"2014/09/logo_nighttrail.png";s:5:"sizes";a:4:\{s:9:"thumbnail";a:4:\{s:4:"file";s:27:"logo_nighttrail-150x124.png";s:5:"width";i:150;s:6:"height";i:124;s:9:"mime-type";s:9:"image/png";\}s:6:"medium";a:4:\{s:4:"file";s:26:"logo_nighttrail-300x88.png";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:9:"image/png";\}s:12:"listingthumb";a:4:\{s:4:"file";s:27:"logo_nighttrail-300x124.png";s:5:"width";i:300;s:6:"height";i:124;s:9:"mime-type";s:9:"image/png";\}s:10:"event-logo";a:4:\{s:4:"file";s:27:"logo_nighttrail-300x100.png";s:5:"width";i:300;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";\}\}s:10:"image_meta";a:11:\{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;\}\}'),\
(225, 45, '_thumbnail_id', '81');\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `test_dbposts`\
--\
\
CREATE TABLE `test_dbposts` (\
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,\
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',\
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `post_content` longtext NOT NULL,\
  `post_title` text NOT NULL,\
  `post_excerpt` text NOT NULL,\
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',\
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',\
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',\
  `post_password` varchar(20) NOT NULL DEFAULT '',\
  `post_name` varchar(200) NOT NULL DEFAULT '',\
  `to_ping` text NOT NULL,\
  `pinged` text NOT NULL,\
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `post_content_filtered` longtext NOT NULL,\
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',\
  `guid` varchar(255) NOT NULL DEFAULT '',\
  `menu_order` int(11) NOT NULL DEFAULT '0',\
  `post_type` varchar(20) NOT NULL DEFAULT 'post',\
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',\
  `comment_count` bigint(20) NOT NULL DEFAULT '0',\
  PRIMARY KEY (`ID`),\
  KEY `post_name` (`post_name`),\
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),\
  KEY `post_parent` (`post_parent`),\
  KEY `post_author` (`post_author`)\
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=82 ;\
\
--\
-- Dumping data for table `test_dbposts`\
--\
\
INSERT INTO `test_dbposts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES\
(1, 1, '2014-09-04 08:04:21', '2014-09-04 08:04:21', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world', '', '', '2014-09-04 08:18:43', '2014-09-04 08:18:43', '', 0, 'http://localhost:8888/?p=1', 0, 'post', '', 1),\
(2, 1, '2014-09-04 08:04:21', '2014-09-04 08:04:21', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\\r\\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi\'f1a coladas. (And gettin'' caught in the rain.)</blockquote>\\r\\n...or something like this:\\r\\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\\r\\nAs a new WordPress user, you should go to <a href="http://localhost:8888/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Demo', '', 'publish', 'open', 'closed', '', 'sample-page', '', '', '2014-09-11 11:24:40', '2014-09-11 11:24:40', '', 0, 'http://localhost:8888/?page_id=2', 0, 'page', '', 0),\
(4, 1, '2014-09-04 08:11:33', '2014-09-04 08:11:33', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.', 'Homepage', '', 'publish', 'open', 'open', '', 'homepage', '', '', '2014-09-11 10:05:27', '2014-09-11 10:05:27', '', 0, 'http://localhost:8888/?page_id=4', 0, 'page', '', 0),\
(5, 1, '2014-09-04 08:11:33', '2014-09-04 08:11:33', '', 'Homepage', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2014-09-04 08:11:33', '2014-09-04 08:11:33', '', 4, 'http://localhost:8888/?p=5', 0, 'revision', '', 0),\
(6, 1, '2014-09-04 08:11:51', '2014-09-04 08:11:51', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\\r\\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi\'f1a coladas. (And gettin'' caught in the rain.)</blockquote>\\r\\n...or something like this:\\r\\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\\r\\nAs a new WordPress user, you should go to <a href="http://localhost:8888/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Demo', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2014-09-04 08:11:51', '2014-09-04 08:11:51', '', 2, 'http://localhost:8888/?p=6', 0, 'revision', '', 0),\
(7, 1, '2014-09-04 08:12:02', '2014-09-04 08:12:02', '', 'Trails', '', 'publish', 'open', 'open', '', 'trails', '', '', '2014-09-04 08:12:02', '2014-09-04 08:12:02', '', 0, 'http://localhost:8888/?page_id=7', 0, 'page', '', 0),\
(8, 1, '2014-09-04 08:12:02', '2014-09-04 08:12:02', '', 'Trails', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2014-09-04 08:12:02', '2014-09-04 08:12:02', '', 7, 'http://localhost:8888/?p=8', 0, 'revision', '', 0),\
(9, 1, '2014-09-04 08:12:14', '2014-09-04 08:12:14', '', 'Contact', '', 'publish', 'open', 'open', '', 'contact', '', '', '2014-09-04 08:12:14', '2014-09-04 08:12:14', '', 0, 'http://localhost:8888/?page_id=9', 0, 'page', '', 0),\
(10, 1, '2014-09-04 08:12:14', '2014-09-04 08:12:14', '', 'Contact', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2014-09-04 08:12:14', '2014-09-04 08:12:14', '', 9, 'http://localhost:8888/?p=10', 0, 'revision', '', 0),\
(11, 1, '2014-09-04 08:12:27', '2014-09-04 08:12:27', '', 'Latest', '', 'publish', 'open', 'open', '', 'latest', '', '', '2014-09-04 08:12:27', '2014-09-04 08:12:27', '', 0, 'http://localhost:8888/?page_id=11', 0, 'page', '', 0),\
(12, 1, '2014-09-04 08:12:27', '2014-09-04 08:12:27', '', 'Latest', '', 'inherit', 'open', 'open', '', '11-revision-v1', '', '', '2014-09-04 08:12:27', '2014-09-04 08:12:27', '', 11, 'http://localhost:8888/?p=12', 0, 'revision', '', 0),\
(13, 1, '2014-09-04 08:12:58', '2014-09-04 08:12:58', '<strong>exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit</strong>\\r\\n\\r\\npraesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.', 'Events', '', 'publish', 'open', 'open', '', 'events', '', '', '2014-09-11 13:48:45', '2014-09-11 13:48:45', '', 0, 'http://localhost:8888/?page_id=13', 0, 'page', '', 0),\
(14, 1, '2014-09-04 08:12:58', '2014-09-04 08:12:58', '', 'Events', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2014-09-04 08:12:58', '2014-09-04 08:12:58', '', 13, 'http://localhost:8888/?p=14', 0, 'revision', '', 0),\
(15, 1, '2014-09-04 08:13:22', '2014-09-04 08:13:22', '', 'Shop', '', 'publish', 'open', 'open', '', 'shop', '', '', '2014-09-04 09:47:18', '2014-09-04 09:47:18', '', 0, 'http://localhost:8888/?page_id=15', 0, 'page', '', 0),\
(16, 1, '2014-09-04 08:13:22', '2014-09-04 08:13:22', '', 'Shop', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2014-09-04 08:13:22', '2014-09-04 08:13:22', '', 15, 'http://localhost:8888/?p=16', 0, 'revision', '', 0),\
(17, 1, '2014-09-04 08:14:17', '2014-09-04 08:14:17', ' ', '', '', 'publish', 'open', 'open', '', '17', '', '', '2014-09-04 12:01:55', '2014-09-04 12:01:55', '', 0, 'http://localhost:8888/?p=17', 1, 'nav_menu_item', '', 0),\
(18, 1, '2014-09-04 08:14:17', '2014-09-04 08:14:17', ' ', '', '', 'publish', 'open', 'open', '', '18', '', '', '2014-09-04 12:01:55', '2014-09-04 12:01:55', '', 0, 'http://localhost:8888/?p=18', 2, 'nav_menu_item', '', 0),\
(19, 1, '2014-09-04 08:14:17', '2014-09-04 08:14:17', ' ', '', '', 'publish', 'open', 'open', '', '19', '', '', '2014-09-04 12:01:55', '2014-09-04 12:01:55', '', 0, 'http://localhost:8888/?p=19', 5, 'nav_menu_item', '', 0),\
(20, 1, '2014-09-04 08:14:17', '2014-09-04 08:14:17', ' ', '', '', 'publish', 'open', 'open', '', '20', '', '', '2014-09-04 12:01:55', '2014-09-04 12:01:55', '', 0, 'http://localhost:8888/?p=20', 8, 'nav_menu_item', '', 0),\
(21, 1, '2014-09-04 08:14:17', '2014-09-04 08:14:17', ' ', '', '', 'publish', 'open', 'open', '', '21', '', '', '2014-09-04 12:01:55', '2014-09-04 12:01:55', '', 0, 'http://localhost:8888/?p=21', 6, 'nav_menu_item', '', 0),\
(23, 1, '2014-09-04 08:14:17', '2014-09-04 08:14:17', ' ', '', '', 'publish', 'open', 'open', '', '23', '', '', '2014-09-04 12:01:55', '2014-09-04 12:01:55', '', 0, 'http://localhost:8888/?p=23', 7, 'nav_menu_item', '', 0),\
(24, 1, '2014-09-04 08:17:25', '2014-09-04 08:17:25', 'testexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan', 'Shop post', '', 'publish', 'open', 'open', '', 'shop-post', '', '', '2014-09-10 16:18:58', '2014-09-10 16:18:58', '', 0, 'http://localhost:8888/?p=24', 0, 'post', '', 0),\
(25, 1, '2014-09-04 08:17:25', '2014-09-04 08:17:25', 'test', 'Shop post', '', 'inherit', 'open', 'open', '', '24-revision-v1', '', '', '2014-09-04 08:17:25', '2014-09-04 08:17:25', '', 24, 'http://localhost:8888/?p=25', 0, 'revision', '', 0),\
(26, 1, '2014-09-04 08:18:16', '2014-09-04 08:18:16', 'test', 'winter event post', '', 'publish', 'open', 'open', '', 'winter-event-post', '', '', '2014-09-04 11:29:05', '2014-09-04 11:29:05', '', 0, 'http://localhost:8888/?p=26', 0, 'post', '', 0),\
(27, 1, '2014-09-04 08:18:16', '2014-09-04 08:18:16', 'test', 'winter event post', '', 'inherit', 'open', 'open', '', '26-revision-v1', '', '', '2014-09-04 08:18:16', '2014-09-04 08:18:16', '', 26, 'http://localhost:8888/?p=27', 0, 'revision', '', 0),\
(28, 1, '2014-09-04 08:18:43', '2014-09-04 08:18:43', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2014-09-04 08:18:43', '2014-09-04 08:18:43', '', 1, 'http://localhost:8888/?p=28', 0, 'revision', '', 0),\
(29, 1, '2014-09-04 08:19:44', '2014-09-04 08:19:44', 'testexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan', 'winter event post 2', '', 'publish', 'open', 'open', '', 'winter-event-post-2', '', '', '2014-09-10 16:19:07', '2014-09-10 16:19:07', '', 0, 'http://localhost:8888/?p=29', 0, 'post', '', 0),\
(30, 1, '2014-09-04 08:19:44', '2014-09-04 08:19:44', 'test', 'winter event post 2', '', 'inherit', 'open', 'open', '', '29-revision-v1', '', '', '2014-09-04 08:19:44', '2014-09-04 08:19:44', '', 29, 'http://localhost:8888/?p=30', 0, 'revision', '', 0),\
(31, 1, '2014-09-04 08:24:26', '2014-09-04 08:24:26', 'asdasdasdadasdasdasd as', 'Homepage', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2014-09-04 08:24:26', '2014-09-04 08:24:26', '', 4, 'http://localhost:8888/?p=31', 0, 'revision', '', 0),\
(32, 1, '2014-09-04 08:55:01', '2014-09-04 08:55:01', '', 'IMG_20140428_161708', '', 'inherit', 'open', 'open', '', 'img_20140428_161708', '', '', '2014-09-04 08:55:01', '2014-09-04 08:55:01', '', 29, 'http://localhost:8888/wp-content/uploads/2014/09/IMG_20140428_161708.jpg', 0, 'attachment', 'image/jpeg', 0),\
(33, 1, '2014-09-04 08:55:24', '2014-09-04 08:55:24', '', 'IMG_20140426_095602', '', 'inherit', 'open', 'open', '', 'img_20140426_095602', '', '', '2014-09-04 08:55:24', '2014-09-04 08:55:24', '', 26, 'http://localhost:8888/wp-content/uploads/2014/09/IMG_20140426_095602.jpg', 0, 'attachment', 'image/jpeg', 0),\
(34, 1, '2014-09-04 08:55:43', '2014-09-04 08:55:43', '', 'IMG_20140425_131044', '', 'inherit', 'open', 'open', '', 'img_20140425_131044', '', '', '2014-09-04 08:55:43', '2014-09-04 08:55:43', '', 24, 'http://localhost:8888/wp-content/uploads/2014/09/IMG_20140425_131044.jpg', 0, 'attachment', 'image/jpeg', 0),\
(35, 1, '2014-09-04 09:11:25', '2014-09-04 09:11:25', 'rtrt rt', 'test post', '', 'publish', 'open', 'open', '', 'test-post', '', '', '2014-09-04 09:11:25', '2014-09-04 09:11:25', '', 0, 'http://localhost:8888/?p=35', 0, 'post', '', 0),\
(36, 1, '2014-09-04 09:11:14', '2014-09-04 09:11:14', '', 'IMG_20140425_131026', '', 'inherit', 'open', 'open', '', 'img_20140425_131026', '', '', '2014-09-04 09:11:14', '2014-09-04 09:11:14', '', 35, 'http://localhost:8888/wp-content/uploads/2014/09/IMG_20140425_131026.jpg', 0, 'attachment', 'image/jpeg', 0),\
(37, 1, '2014-09-04 09:11:25', '2014-09-04 09:11:25', 'rtrt rt', 'test post', '', 'inherit', 'open', 'open', '', '35-revision-v1', '', '', '2014-09-04 09:11:25', '2014-09-04 09:11:25', '', 35, 'http://localhost:8888/?p=37', 0, 'revision', '', 0),\
(38, 1, '2014-09-04 09:14:04', '2014-09-04 09:14:04', '', 'Winter Trail', '', 'publish', 'open', 'open', '', 'winter-event', '', '', '2014-09-04 10:34:40', '2014-09-04 10:34:40', '', 13, 'http://localhost:8888/?page_id=38', 0, 'page', '', 0),\
(39, 1, '2014-09-04 09:14:04', '2014-09-04 09:14:04', '', 'winter event', '', 'inherit', 'open', 'open', '', '38-revision-v1', '', '', '2014-09-04 09:14:04', '2014-09-04 09:14:04', '', 38, 'http://localhost:8888/?p=39', 0, 'revision', '', 0),\
(40, 1, '2014-09-04 09:20:08', '2014-09-04 09:20:08', 'sdfsdfsdf', 'Events', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2014-09-04 09:20:08', '2014-09-04 09:20:08', '', 13, 'http://localhost:8888/?p=40', 0, 'revision', '', 0),\
(41, 1, '2014-09-04 09:34:34', '2014-09-04 09:34:34', 'the winter event is', 'winter event', '', 'inherit', 'open', 'open', '', '38-revision-v1', '', '', '2014-09-04 09:34:34', '2014-09-04 09:34:34', '', 38, 'http://localhost:8888/?p=41', 0, 'revision', '', 0),\
(42, 1, '2014-09-04 09:34:58', '2014-09-04 09:34:58', '', 'winter event', '', 'inherit', 'open', 'open', '', '38-revision-v1', '', '', '2014-09-04 09:34:58', '2014-09-04 09:34:58', '', 38, 'http://localhost:8888/?p=42', 0, 'revision', '', 0),\
(43, 1, '2014-09-04 09:37:03', '2014-09-04 09:37:03', 'blurb here', 'winter event', '', 'inherit', 'open', 'open', '', '38-autosave-v1', '', '', '2014-09-04 09:37:03', '2014-09-04 09:37:03', '', 38, 'http://localhost:8888/?p=43', 0, 'revision', '', 0),\
(44, 1, '2014-09-04 10:16:52', '2014-09-04 10:16:52', '', 'Winter Trail', '', 'inherit', 'open', 'open', '', '38-revision-v1', '', '', '2014-09-04 10:16:52', '2014-09-04 10:16:52', '', 38, 'http://localhost:8888/?p=44', 0, 'revision', '', 0),\
(45, 1, '2014-09-04 10:17:24', '2014-09-04 10:17:24', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.', 'Night Trail', '', 'publish', 'open', 'open', '', 'night-trail', '', '', '2014-09-11 14:00:41', '2014-09-11 14:00:41', '', 13, 'http://localhost:8888/?page_id=45', 0, 'page', '', 0),\
(46, 1, '2014-09-04 10:17:24', '2014-09-04 10:17:24', '', 'Night Trail', '', 'inherit', 'open', 'open', '', '45-revision-v1', '', '', '2014-09-04 10:17:24', '2014-09-04 10:17:24', '', 45, 'http://localhost:8888/?p=46', 0, 'revision', '', 0),\
(47, 1, '2014-09-04 10:43:00', '2014-09-04 10:43:00', 'sdfsdf sdfexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan', 'Night trail post', '', 'publish', 'open', 'open', '', 'night-trail-post', '', '', '2014-09-10 16:18:45', '2014-09-10 16:18:45', '', 0, 'http://localhost:8888/?p=47', 0, 'post', '', 0),\
(48, 1, '2014-09-04 10:43:00', '2014-09-04 10:43:00', 'sdfsdf sdf', 'Night trail post', '', 'inherit', 'open', 'open', '', '47-revision-v1', '', '', '2014-09-04 10:43:00', '2014-09-04 10:43:00', '', 47, 'http://localhost:8888/?p=48', 0, 'revision', '', 0),\
(49, 1, '2014-09-04 10:43:12', '2014-09-04 10:43:12', 'exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan', 'night trail thing 2', '', 'publish', 'open', 'open', '', 'night-trail-thing-2', '', '', '2014-09-10 16:18:36', '2014-09-10 16:18:36', '', 0, 'http://localhost:8888/?p=49', 0, 'post', '', 0),\
(50, 1, '2014-09-04 10:43:12', '2014-09-04 10:43:12', '', 'night trail thing 2', '', 'inherit', 'open', 'open', '', '49-revision-v1', '', '', '2014-09-04 10:43:12', '2014-09-04 10:43:12', '', 49, 'http://localhost:8888/?p=50', 0, 'revision', '', 0),\
(51, 1, '2014-09-04 10:43:28', '2014-09-04 10:43:28', '', 'IMG_20140107_154723', '', 'inherit', 'open', 'open', '', 'img_20140107_154723', '', '', '2014-09-04 10:43:28', '2014-09-04 10:43:28', '', 49, 'http://localhost:8888/wp-content/uploads/2014/09/IMG_20140107_154723.jpg', 0, 'attachment', 'image/jpeg', 0),\
(52, 1, '2014-09-04 10:46:13', '2014-09-04 10:46:13', 'liked the winter run best', 'tony tiger', '', 'publish', 'closed', 'closed', '', 'tony-tiger', '', '', '2014-09-04 10:46:13', '2014-09-04 10:46:13', '', 0, 'http://localhost:8888/?post_type=testimonial&#038;p=52', 0, 'testimonial', '', 0),\
(53, 1, '2014-09-04 10:47:18', '2014-09-04 10:47:18', 'nice service in shop', 'colin customer', '', 'publish', 'closed', 'closed', '', 'colin-customer', '', '', '2014-09-04 10:47:18', '2014-09-04 10:47:18', '', 0, 'http://localhost:8888/?post_type=testimonial&#038;p=53', 0, 'testimonial', '', 0),\
(54, 1, '2014-09-04 10:48:12', '2014-09-04 10:48:12', 'nice night run was had by all', 'night runner', '', 'publish', 'closed', 'closed', '', 'night-runner', '', '', '2014-09-04 10:48:12', '2014-09-04 10:48:12', '', 0, 'http://localhost:8888/?post_type=testimonial&#038;p=54', 0, 'testimonial', '', 0),\
(55, 1, '2014-09-11 14:00:35', '2014-09-11 14:00:35', '<strong>Night trail intro</strong>\\n\\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\'a0Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.', 'Night Trail', '', 'inherit', 'open', 'open', '', '45-autosave-v1', '', '', '2014-09-11 14:00:35', '2014-09-11 14:00:35', '', 45, 'http://localhost:8888/?p=55', 0, 'revision', '', 0),\
(56, 1, '2014-09-04 11:14:37', '2014-09-04 11:14:37', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.', 'Night Trail', '', 'inherit', 'open', 'open', '', '45-revision-v1', '', '', '2014-09-04 11:14:37', '2014-09-04 11:14:37', '', 45, 'http://localhost:8888/?p=56', 0, 'revision', '', 0),\
(57, 1, '2014-09-04 11:15:41', '2014-09-04 11:15:41', 'exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan', 'Night trail 5', '', 'publish', 'open', 'open', '', 'night-trail-5', '', '', '2014-09-10 16:18:28', '2014-09-10 16:18:28', '', 0, 'http://localhost:8888/?p=57', 0, 'post', '', 0),\
(58, 1, '2014-09-04 11:15:31', '2014-09-04 11:15:31', '', 'IMG_20140328_153540', '', 'inherit', 'open', 'open', '', 'img_20140328_153540', '', '', '2014-09-04 11:15:31', '2014-09-04 11:15:31', '', 57, 'http://localhost:8888/wp-content/uploads/2014/09/IMG_20140328_153540.jpg', 0, 'attachment', 'image/jpeg', 0),\
(59, 1, '2014-09-04 11:15:41', '2014-09-04 11:15:41', 'sfas dfsd fasdf adf aef wef eadf sd fasdf sd', 'Night trail 5', '', 'inherit', 'open', 'open', '', '57-revision-v1', '', '', '2014-09-04 11:15:41', '2014-09-04 11:15:41', '', 57, 'http://localhost:8888/?p=59', 0, 'revision', '', 0),\
(60, 1, '2014-09-04 11:16:25', '2014-09-04 11:16:25', 'exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan', 'asdfasf sadf asdfasdf', '', 'publish', 'open', 'open', '', 'asdfasf-sadf-asdfasdf', '', '', '2014-09-10 16:18:02', '2014-09-10 16:18:02', '', 0, 'http://localhost:8888/?p=60', 0, 'post', '', 0),\
(61, 1, '2014-09-04 11:16:14', '2014-09-04 11:16:14', '', 'IMG_20131110_171656', '', 'inherit', 'open', 'open', '', 'img_20131110_171656', '', '', '2014-09-04 11:16:14', '2014-09-04 11:16:14', '', 60, 'http://localhost:8888/wp-content/uploads/2014/09/IMG_20131110_171656.jpg', 0, 'attachment', 'image/jpeg', 0),\
(62, 1, '2014-09-04 11:16:25', '2014-09-04 11:16:25', '', 'asdfasf sadf asdfasdf', '', 'inherit', 'open', 'open', '', '60-revision-v1', '', '', '2014-09-04 11:16:25', '2014-09-04 11:16:25', '', 60, 'http://localhost:8888/?p=62', 0, 'revision', '', 0),\
(63, 1, '2014-09-04 11:29:39', '2014-09-04 11:29:39', 'sdfsdfdfexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan', 'Post to appear on all', '', 'publish', 'open', 'open', '', 'post-to-appear-on-all', '', '', '2014-09-10 16:18:19', '2014-09-10 16:18:19', '', 0, 'http://localhost:8888/?p=63', 0, 'post', '', 0),\
(64, 1, '2014-09-04 11:29:27', '2014-09-04 11:29:27', '', 'Post to appear a', '', 'inherit', 'open', 'open', '', '63-revision-v1', '', '', '2014-09-04 11:29:27', '2014-09-04 11:29:27', '', 63, 'http://localhost:8888/?p=64', 0, 'revision', '', 0),\
(65, 1, '2014-09-04 11:29:39', '2014-09-04 11:29:39', 'sdfsdfdf', 'Post to appear on all', '', 'inherit', 'open', 'open', '', '63-revision-v1', '', '', '2014-09-04 11:29:39', '2014-09-04 11:29:39', '', 63, 'http://localhost:8888/?p=65', 0, 'revision', '', 0),\
(66, 1, '2014-09-04 11:44:19', '2014-09-04 11:44:19', '', 'homepage slider', '', 'publish', 'closed', 'closed', '', 'homepage-slider', '', '', '2014-09-04 11:44:19', '2014-09-04 11:44:19', '', 0, 'http://localhost:8888/?post_type=slides&#038;p=66', 0, 'slides', '', 0),\
(67, 1, '2014-09-04 11:44:04', '2014-09-04 11:44:04', '', 'homepage', '', 'draft', 'closed', 'closed', '', 'test', '', '', '2014-09-04 11:44:50', '2014-09-04 11:44:50', '', 0, 'http://localhost:8888/?post_type=sliders&#038;p=67', 0, 'sliders', '', 0),\
(68, 1, '2014-09-04 11:53:44', '2014-09-04 11:53:44', ' ', '', '', 'publish', 'open', 'open', '', '68', '', '', '2014-09-04 12:01:55', '2014-09-04 12:01:55', '', 13, 'http://localhost:8888/?p=68', 3, 'nav_menu_item', '', 0),\
(69, 1, '2014-09-04 11:53:44', '2014-09-04 11:53:44', ' ', '', '', 'publish', 'open', 'open', '', '69', '', '', '2014-09-04 12:01:55', '2014-09-04 12:01:55', '', 13, 'http://localhost:8888/?p=69', 4, 'nav_menu_item', '', 0),\
(70, 1, '2014-09-04 13:03:17', '2014-09-04 13:03:17', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.', 'Homepage', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2014-09-04 13:03:17', '2014-09-04 13:03:17', '', 4, 'http://localhost:8888/?p=70', 0, 'revision', '', 0),\
(71, 1, '2014-09-10 16:17:03', '2014-09-10 16:17:03', 'testexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan', 'winter event post 2', '', 'inherit', 'open', 'open', '', '29-revision-v1', '', '', '2014-09-10 16:17:03', '2014-09-10 16:17:03', '', 29, 'http://localhost:8888/?p=71', 0, 'revision', '', 0),\
(72, 1, '2014-09-10 16:18:02', '2014-09-10 16:18:02', 'exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan', 'asdfasf sadf asdfasdf', '', 'inherit', 'open', 'open', '', '60-revision-v1', '', '', '2014-09-10 16:18:02', '2014-09-10 16:18:02', '', 60, 'http://localhost:8888/?p=72', 0, 'revision', '', 0),\
(73, 1, '2014-09-10 16:18:19', '2014-09-10 16:18:19', 'sdfsdfdfexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan', 'Post to appear on all', '', 'inherit', 'open', 'open', '', '63-revision-v1', '', '', '2014-09-10 16:18:19', '2014-09-10 16:18:19', '', 63, 'http://localhost:8888/?p=73', 0, 'revision', '', 0),\
(74, 1, '2014-09-10 16:18:28', '2014-09-10 16:18:28', 'exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan', 'Night trail 5', '', 'inherit', 'open', 'open', '', '57-revision-v1', '', '', '2014-09-10 16:18:28', '2014-09-10 16:18:28', '', 57, 'http://localhost:8888/?p=74', 0, 'revision', '', 0),\
(75, 1, '2014-09-10 16:18:36', '2014-09-10 16:18:36', 'exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan', 'night trail thing 2', '', 'inherit', 'open', 'open', '', '49-revision-v1', '', '', '2014-09-10 16:18:36', '2014-09-10 16:18:36', '', 49, 'http://localhost:8888/?p=75', 0, 'revision', '', 0),\
(76, 1, '2014-09-10 16:18:45', '2014-09-10 16:18:45', 'sdfsdf sdfexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan', 'Night trail post', '', 'inherit', 'open', 'open', '', '47-revision-v1', '', '', '2014-09-10 16:18:45', '2014-09-10 16:18:45', '', 47, 'http://localhost:8888/?p=76', 0, 'revision', '', 0),\
(77, 1, '2014-09-10 16:18:58', '2014-09-10 16:18:58', 'testexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsanexerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan', 'Shop post', '', 'inherit', 'open', 'open', '', '24-revision-v1', '', '', '2014-09-10 16:18:58', '2014-09-10 16:18:58', '', 24, 'http://localhost:8888/?p=77', 0, 'revision', '', 0),\
(78, 1, '2014-09-11 10:03:31', '2014-09-11 10:03:31', 'Run. Coed y Brein is teh UK''s first bespoke trail running centre.\\n\\nWE are almost unique in the UK by having a brand new trail running shop, footwear and pack demo centre, a network of four running routes,\'a0and some fantastic race events - all in one location.\\n\\nWith trail guides service, as bookable sessions on technique, kit and general advice Run. Coed y Brenin has somthing', 'Homepage', '', 'inherit', 'open', 'open', '', '4-autosave-v1', '', '', '2014-09-11 10:03:31', '2014-09-11 10:03:31', '', 4, 'http://localhost:8888/?p=78', 0, 'revision', '', 0),\
(79, 1, '2014-09-11 13:39:44', '2014-09-11 13:39:44', 'exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.', 'Events', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2014-09-11 13:39:44', '2014-09-11 13:39:44', '', 13, 'http://localhost:8888/?p=79', 0, 'revision', '', 0),\
(80, 1, '2014-09-11 13:48:20', '2014-09-11 13:48:20', '<strong>exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit</strong>\\r\\n\\r\\npraesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.', 'Events', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2014-09-11 13:48:20', '2014-09-11 13:48:20', '', 13, 'http://localhost:8888/?p=80', 0, 'revision', '', 0),\
(81, 1, '2014-09-11 13:51:09', '2014-09-11 13:51:09', '', 'logo_nighttrail', '', 'inherit', 'open', 'open', '', 'logo_nighttrail', '', '', '2014-09-11 13:51:09', '2014-09-11 13:51:09', '', 45, 'http://localhost:8888/wp-content/uploads/2014/09/logo_nighttrail.png', 0, 'attachment', 'image/png', 0);\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `test_dbterms`\
--\
\
CREATE TABLE `test_dbterms` (\
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,\
  `name` varchar(200) NOT NULL DEFAULT '',\
  `slug` varchar(200) NOT NULL DEFAULT '',\
  `term_group` bigint(10) NOT NULL DEFAULT '0',\
  PRIMARY KEY (`term_id`),\
  UNIQUE KEY `slug` (`slug`),\
  KEY `name` (`name`)\
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;\
\
--\
-- Dumping data for table `test_dbterms`\
--\
\
INSERT INTO `test_dbterms` (`term_id`, `name`, `slug`, `term_group`) VALUES\
(1, 'Uncategorized', 'uncategorized', 0),\
(2, 'Top menu', 'top-menu', 0),\
(4, 'Shop', 'shop', 0),\
(5, 'Winter trail', 'winter-trail', 0),\
(6, 'Night trail', 'night-trail', 0),\
(7, 'Night Trail', 'night-trail-quote', 0);\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `test_dbterm_relationships`\
--\
\
CREATE TABLE `test_dbterm_relationships` (\
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',\
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',\
  `term_order` int(11) NOT NULL DEFAULT '0',\
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),\
  KEY `term_taxonomy_id` (`term_taxonomy_id`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
--\
-- Dumping data for table `test_dbterm_relationships`\
--\
\
INSERT INTO `test_dbterm_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES\
(1, 1, 0),\
(17, 2, 0),\
(18, 2, 0),\
(19, 2, 0),\
(20, 2, 0),\
(21, 2, 0),\
(23, 2, 0),\
(24, 1, 0),\
(24, 4, 0),\
(26, 5, 0),\
(29, 5, 0),\
(35, 4, 0),\
(47, 6, 0),\
(49, 6, 0),\
(52, 7, 0),\
(53, 8, 0),\
(54, 9, 0),\
(57, 6, 0),\
(60, 6, 0),\
(63, 4, 0),\
(63, 5, 0),\
(63, 6, 0),\
(68, 2, 0),\
(69, 2, 0);\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `test_dbterm_taxonomy`\
--\
\
CREATE TABLE `test_dbterm_taxonomy` (\
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,\
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',\
  `taxonomy` varchar(32) NOT NULL DEFAULT '',\
  `description` longtext NOT NULL,\
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',\
  `count` bigint(20) NOT NULL DEFAULT '0',\
  PRIMARY KEY (`term_taxonomy_id`),\
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),\
  KEY `taxonomy` (`taxonomy`)\
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;\
\
--\
-- Dumping data for table `test_dbterm_taxonomy`\
--\
\
INSERT INTO `test_dbterm_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES\
(1, 1, 'category', '', 0, 1),\
(2, 2, 'nav_menu', '', 0, 8),\
(4, 4, 'category', '', 0, 3),\
(5, 5, 'category', '', 0, 3),\
(6, 6, 'category', '', 0, 5),\
(7, 5, 'testimonial-category', '', 0, 1),\
(8, 4, 'testimonial-category', '', 0, 1),\
(9, 7, 'testimonial-category', '', 0, 1);\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `test_dbusermeta`\
--\
\
CREATE TABLE `test_dbusermeta` (\
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,\
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',\
  `meta_key` varchar(255) DEFAULT NULL,\
  `meta_value` longtext,\
  PRIMARY KEY (`umeta_id`),\
  KEY `user_id` (`user_id`),\
  KEY `meta_key` (`meta_key`)\
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;\
\
--\
-- Dumping data for table `test_dbusermeta`\
--\
\
INSERT INTO `test_dbusermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES\
(1, 1, 'first_name', ''),\
(2, 1, 'last_name', ''),\
(3, 1, 'nickname', 'runcyb'),\
(4, 1, 'description', ''),\
(5, 1, 'rich_editing', 'true'),\
(6, 1, 'comment_shortcuts', 'false'),\
(7, 1, 'admin_color', 'fresh'),\
(8, 1, 'use_ssl', '0'),\
(9, 1, 'show_admin_bar_front', 'true'),\
(10, 1, 'test_dbcapabilities', 'a:1:\{s:13:"administrator";b:1;\}'),\
(11, 1, 'test_dbuser_level', '10'),\
(12, 1, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets'),\
(13, 1, 'show_welcome_panel', '1'),\
(14, 1, 'test_dbdashboard_quick_press_last_post_id', '3'),\
(15, 1, 'managenav-menuscolumnshidden', 'a:4:\{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";\}'),\
(16, 1, 'metaboxhidden_nav-menus', 'a:2:\{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";\}'),\
(17, 1, 'test_dbuser-settings', 'libraryContent=browse'),\
(18, 1, 'test_dbuser-settings-time', '1409820904'),\
(19, 1, 'nav_menu_recently_edited', '2'),\
(20, 1, 'closedpostboxes_page', 'a:0:\{\}'),\
(21, 1, 'metaboxhidden_page', 'a:4:\{i:0;s:12:"revisionsdiv";i:1;s:16:"commentstatusdiv";i:2;s:11:"commentsdiv";i:3;s:9:"authordiv";\}'),\
(22, 1, 'session_tokens', 'a:1:\{s:64:"78b3ad15353b9fefe7826f15ee7016f80b51af95099fa227c655c2e74e14e626";i:1410519203;\}');\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `test_dbusers`\
--\
\
CREATE TABLE `test_dbusers` (\
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,\
  `user_login` varchar(60) NOT NULL DEFAULT '',\
  `user_pass` varchar(64) NOT NULL DEFAULT '',\
  `user_nicename` varchar(50) NOT NULL DEFAULT '',\
  `user_email` varchar(100) NOT NULL DEFAULT '',\
  `user_url` varchar(100) NOT NULL DEFAULT '',\
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',\
  `user_status` int(11) NOT NULL DEFAULT '0',\
  `display_name` varchar(250) NOT NULL DEFAULT '',\
  PRIMARY KEY (`ID`),\
  KEY `user_login_key` (`user_login`),\
  KEY `user_nicename` (`user_nicename`)\
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;\
\
--\
-- Dumping data for table `test_dbusers`\
--\
\
INSERT INTO `test_dbusers` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES\
(1, 'runcyb', '$P$BIFZ5qZfePYb3c37fX/kZE4xYdc8Zt/', 'runcyb', 'ben@thirtytwotrees.com', '', '2014-09-04 08:04:21', '', 0, 'runcyb');\
}