-- MariaDB dump 10.19  Distrib 10.11.5-MariaDB, for Linux (x86_64)
--
-- Host: mysql    Database: wordpress
-- ------------------------------------------------------
-- Server version	11.2.2-MariaDB-1:11.2.2+maria~ubu2204

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) DEFAULT NULL,
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES
(3,'siteurl','http://localhost:8888','yes'),
(4,'home','http://localhost:8888','yes'),
(5,'blogname','jobs.wordpressnet.test','yes'),
(6,'blogdescription','Just another WordPress site','yes'),
(7,'users_can_register','0','yes'),
(8,'admin_email','foo@example.org','yes'),
(9,'start_of_week','1','yes'),
(10,'use_balanceTags','0','yes'),
(11,'use_smilies','1','yes'),
(12,'require_name_email','1','yes'),
(13,'comments_notify','1','yes'),
(14,'posts_per_rss','10','yes'),
(15,'rss_use_excerpt','0','yes'),
(16,'mailserver_url','mail.example.com','yes'),
(17,'mailserver_login','login@example.com','yes'),
(18,'mailserver_pass','password','yes'),
(19,'mailserver_port','110','yes'),
(20,'default_category','1','yes'),
(21,'default_comment_status','open','yes'),
(22,'default_ping_status','open','yes'),
(23,'default_pingback_flag','1','yes'),
(24,'posts_per_page','10','yes'),
(25,'date_format','F j, Y','yes'),
(26,'time_format','g:i a','yes'),
(27,'links_updated_date_format','F j, Y g:i a','yes'),
(28,'comment_moderation','0','yes'),
(29,'moderation_notify','1','yes'),
(30,'permalink_structure','/%postname%/','yes'),
(32,'hack_file','0','yes'),
(33,'blog_charset','UTF-8','yes'),
(34,'moderation_keys','','no'),
(35,'active_plugins','a:2:{i:0;s:17:\"jobswp/jobswp.php\";i:1;s:35:\"si-contact-form/si-contact-form.php\";}','yes'),
(36,'category_base','','yes'),
(37,'ping_sites','http://rpc.pingomatic.com/','yes'),
(39,'comment_max_links','2','yes'),
(40,'gmt_offset','0','yes'),
(41,'default_email_category','1','yes'),
(42,'recently_edited','','no'),
(43,'template','jobswp','yes'),
(44,'stylesheet','jobswp','yes'),
(47,'comment_registration','0','yes'),
(48,'html_type','text/html','yes'),
(49,'use_trackback','0','yes'),
(50,'default_role','subscriber','yes'),
(51,'db_version','57155','yes'),
(52,'uploads_use_yearmonth_folders','1','yes'),
(53,'upload_path','','yes'),
(54,'blog_public','1','yes'),
(55,'default_link_category','2','yes'),
(56,'show_on_front','posts','yes'),
(57,'tag_base','','yes'),
(58,'show_avatars','1','yes'),
(59,'avatar_rating','G','yes'),
(60,'upload_url_path','','yes'),
(61,'thumbnail_size_w','150','yes'),
(62,'thumbnail_size_h','150','yes'),
(63,'thumbnail_crop','1','yes'),
(64,'medium_size_w','300','yes'),
(65,'medium_size_h','300','yes'),
(66,'avatar_default','mystery','yes'),
(67,'large_size_w','1024','yes'),
(68,'large_size_h','1024','yes'),
(69,'image_default_link_type','file','yes'),
(70,'image_default_size','','yes'),
(71,'image_default_align','','yes'),
(72,'close_comments_for_old_posts','0','yes'),
(73,'close_comments_days_old','14','yes'),
(74,'thread_comments','1','yes'),
(75,'thread_comments_depth','5','yes'),
(76,'page_comments','0','yes'),
(77,'comments_per_page','50','yes'),
(78,'default_comments_page','newest','yes'),
(79,'comment_order','asc','yes'),
(80,'sticky_posts','a:0:{}','yes'),
(81,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
(82,'widget_text','a:0:{}','yes'),
(83,'widget_rss','a:0:{}','yes'),
(84,'uninstall_plugins','a:0:{}','no'),
(85,'timezone_string','','yes'),
(86,'page_for_posts','0','yes'),
(87,'page_on_front','0','yes'),
(88,'default_post_format','0','yes'),
(89,'link_manager_enabled','0','yes'),
(90,'initial_db_version','27916','yes'),
(91,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),
(92,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
(93,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
(94,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
(95,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
(96,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
(97,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}s:13:\"array_version\";i:3;}','yes'),
(98,'cron','a:9:{i:1418160697;a:1:{s:28:\"jobswp_scheduled_job_pruning\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1418196641;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1418196652;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1418196929;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1705088706;a:2:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1705088728;a:2:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1705088786;a:2:{s:26:\"wp_split_shared_term_batch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}s:28:\"wp_update_comment_type_batch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1705175106;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes'),
(103,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1705088730;s:7:\"checked\";a:1:{s:6:\"jobswp\";s:5:\"1.0.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no'),
(104,'_transient_random_seed','5ff220a75d9a20dfd98649c14bdda5b5','yes'),
(105,'auth_key','yAGk}N]{P&-KNv#C$?g^chW=vg>U=YcM/lW{(}^VLt.2*z5Ub G/*uCStU_lRJ^v','yes'),
(106,'auth_salt','KhdRr0G$)OzL@4}hZ#b~j%UH>mEin[S}Y>|RK9aSee&RmCX%1?$ut[d[+M!WjNZR','yes'),
(107,'logged_in_key','l~HAUmMH00o43(uu@>,U+:E +NzH~5xDt<I.Ty)8Gk:GE>8L(|%4Gk=G,4/LO8y$','yes'),
(108,'logged_in_salt','>CZw3=yu&K6Eg8M;uw(YhWZ1AcBEhi?mb,N}gL`Yh%4Ls#y+!Y|74]|PaP}@%Z29','yes'),
(109,'nonce_key','eoV(%o2Fe7C5c`kK:gEF&W/gA/ :jj;3hRqSB[q&nWKGBBZ]bz$bi/U}scK~&:$o','yes'),
(110,'nonce_salt','<sF]e-l;eqhTHn*!2|+=,ME{l)m9>j$T%SlLAK8wnMrSx{;Z4/LUYcbyy=0UPirS','yes'),
(133,'recently_activated','a:0:{}','yes'),
(135,'theme_mods_twentyfourteen','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1403595086;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}','no'),
(136,'template_root','/themes','yes'),
(137,'stylesheet_root','/themes','yes'),
(138,'current_theme','jobswp','yes'),
(139,'theme_mods_jobswp','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:10;}s:18:\"custom_css_post_id\";i:-1;}','yes'),
(140,'theme_switched','','yes'),
(150,'fs_contact_global','a:11:{s:12:\"fscf_version\";s:6:\"4.0.30\";s:7:\"donated\";s:5:\"false\";s:18:\"vcita_auto_install\";s:5:\"false\";s:13:\"vcita_dismiss\";s:5:\"false\";s:17:\"vcita_initialized\";s:5:\"false\";s:22:\"vcita_show_disable_msg\";s:5:\"false\";s:10:\"vcita_site\";s:13:\"www.vcita.com\";s:19:\"enable_php_sessions\";s:5:\"false\";s:19:\"num_standard_fields\";s:1:\"4\";s:12:\"max_form_num\";s:1:\"2\";s:9:\"form_list\";a:2:{i:1;s:8:\"Feedback\";i:2;s:8:\"New Form\";}}','yes'),
(151,'fs_contact_form1','a:170:{s:9:\"form_name\";s:8:\"Feedback\";s:7:\"welcome\";s:41:\"<p>Comments or questions are welcome.</p>\";s:15:\"after_form_note\";s:0:\"\";s:8:\"email_to\";s:25:\"Webmaster,foo@example.org\";s:17:\"php_mailer_enable\";s:9:\"wordpress\";s:10:\"email_from\";s:0:\"\";s:19:\"email_from_enforced\";s:5:\"false\";s:14:\"email_reply_to\";s:0:\"\";s:9:\"email_bcc\";s:0:\"\";s:13:\"email_subject\";s:31:\"jobs.wordpressnet.test Contact:\";s:18:\"email_subject_list\";s:0:\"\";s:11:\"name_format\";s:4:\"name\";s:21:\"preserve_space_enable\";s:5:\"false\";s:12:\"double_email\";s:5:\"false\";s:16:\"name_case_enable\";s:5:\"false\";s:18:\"sender_info_enable\";s:5:\"false\";s:14:\"domain_protect\";s:4:\"true\";s:20:\"domain_protect_names\";s:0:\"\";s:13:\"anchor_enable\";s:5:\"false\";s:15:\"email_check_dns\";s:5:\"false\";s:10:\"email_html\";s:5:\"false\";s:18:\"email_inline_label\";s:5:\"false\";s:16:\"email_hide_empty\";s:5:\"false\";s:17:\"print_form_enable\";s:5:\"false\";s:22:\"email_keep_attachments\";s:5:\"false\";s:15:\"akismet_disable\";s:5:\"false\";s:19:\"akismet_send_anyway\";s:4:\"true\";s:14:\"captcha_enable\";s:4:\"true\";s:13:\"captcha_small\";s:5:\"false\";s:12:\"captcha_perm\";s:5:\"false\";s:18:\"captcha_perm_level\";s:4:\"read\";s:15:\"honeypot_enable\";s:5:\"false\";s:15:\"redirect_enable\";s:4:\"true\";s:16:\"redirect_seconds\";i:3;s:12:\"redirect_url\";s:21:\"http://localhost:8888\";s:14:\"redirect_query\";s:5:\"false\";s:15:\"redirect_ignore\";s:0:\"\";s:15:\"redirect_rename\";s:0:\"\";s:12:\"redirect_add\";s:0:\"\";s:18:\"redirect_email_off\";s:5:\"false\";s:11:\"silent_send\";s:3:\"off\";s:10:\"silent_url\";s:0:\"\";s:13:\"silent_ignore\";s:0:\"\";s:13:\"silent_rename\";s:0:\"\";s:10:\"silent_add\";s:0:\"\";s:24:\"silent_conditional_field\";s:0:\"\";s:24:\"silent_conditional_value\";s:0:\"\";s:16:\"silent_email_off\";s:5:\"false\";s:13:\"export_ignore\";s:0:\"\";s:13:\"export_rename\";s:0:\"\";s:10:\"export_add\";s:0:\"\";s:16:\"export_email_off\";s:5:\"false\";s:11:\"date_format\";s:10:\"mm/dd/yyyy\";s:13:\"cal_start_day\";s:1:\"0\";s:11:\"time_format\";s:2:\"12\";s:12:\"attach_types\";s:33:\"doc,docx,pdf,txt,gif,jpg,jpeg,png\";s:11:\"attach_size\";s:3:\"1mb\";s:19:\"textarea_html_allow\";s:5:\"false\";s:17:\"enable_areyousure\";s:5:\"false\";s:22:\"enable_submit_oneclick\";s:4:\"true\";s:19:\"auto_respond_enable\";s:5:\"false\";s:17:\"auto_respond_html\";s:5:\"false\";s:22:\"auto_respond_from_name\";s:22:\"jobs.wordpressnet.test\";s:23:\"auto_respond_from_email\";s:15:\"foo@example.org\";s:21:\"auto_respond_reply_to\";s:15:\"foo@example.org\";s:20:\"auto_respond_subject\";s:0:\"\";s:20:\"auto_respond_message\";s:0:\"\";s:26:\"req_field_indicator_enable\";s:4:\"true\";s:22:\"req_field_label_enable\";s:4:\"true\";s:19:\"req_field_indicator\";s:1:\"*\";s:13:\"border_enable\";s:5:\"false\";s:14:\"external_style\";s:5:\"false\";s:13:\"aria_required\";s:5:\"false\";s:16:\"auto_fill_enable\";s:4:\"true\";s:15:\"form_attributes\";s:0:\"\";s:17:\"submit_attributes\";s:0:\"\";s:17:\"success_page_html\";s:0:\"\";s:12:\"title_border\";s:12:\"Contact Form\";s:10:\"title_dept\";s:0:\"\";s:12:\"title_select\";s:0:\"\";s:10:\"title_name\";s:0:\"\";s:11:\"title_fname\";s:0:\"\";s:11:\"title_mname\";s:0:\"\";s:12:\"title_miname\";s:0:\"\";s:11:\"title_lname\";s:0:\"\";s:11:\"title_email\";s:0:\"\";s:12:\"title_email2\";s:0:\"\";s:10:\"title_subj\";s:0:\"\";s:10:\"title_mess\";s:0:\"\";s:10:\"title_capt\";s:0:\"\";s:12:\"title_submit\";s:0:\"\";s:16:\"title_submitting\";s:0:\"\";s:11:\"title_reset\";s:0:\"\";s:16:\"title_areyousure\";s:0:\"\";s:17:\"text_message_sent\";s:0:\"\";s:17:\"text_print_button\";s:0:\"\";s:16:\"tooltip_required\";s:0:\"\";s:15:\"tooltip_captcha\";s:0:\"\";s:15:\"tooltip_refresh\";s:0:\"\";s:17:\"tooltip_filetypes\";s:0:\"\";s:16:\"tooltip_filesize\";s:0:\"\";s:12:\"enable_reset\";s:5:\"false\";s:18:\"enable_credit_link\";s:5:\"false\";s:20:\"error_contact_select\";s:0:\"\";s:10:\"error_name\";s:0:\"\";s:11:\"error_email\";s:0:\"\";s:17:\"error_email_check\";s:0:\"\";s:12:\"error_email2\";s:0:\"\";s:9:\"error_url\";s:0:\"\";s:10:\"error_date\";s:0:\"\";s:10:\"error_time\";s:0:\"\";s:12:\"error_maxlen\";s:0:\"\";s:11:\"error_field\";s:0:\"\";s:13:\"error_subject\";s:0:\"\";s:12:\"error_select\";s:0:\"\";s:11:\"error_input\";s:0:\"\";s:19:\"error_captcha_blank\";s:0:\"\";s:19:\"error_captcha_wrong\";s:0:\"\";s:13:\"error_correct\";s:0:\"\";s:13:\"error_spambot\";s:0:\"\";s:6:\"fields\";a:4:{i:0;a:21:{s:8:\"standard\";s:1:\"1\";s:7:\"options\";s:0:\"\";s:7:\"default\";s:0:\"\";s:6:\"inline\";s:5:\"false\";s:3:\"req\";s:4:\"true\";s:7:\"disable\";s:5:\"false\";s:6:\"follow\";s:5:\"false\";s:10:\"hide_label\";s:5:\"false\";s:11:\"placeholder\";s:5:\"false\";s:5:\"label\";s:5:\"Name:\";s:4:\"slug\";s:9:\"full_name\";s:4:\"type\";s:4:\"text\";s:7:\"max_len\";s:0:\"\";s:9:\"label_css\";s:0:\"\";s:9:\"input_css\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:11:\"regex_error\";s:0:\"\";s:5:\"notes\";s:0:\"\";s:11:\"notes_after\";s:0:\"\";s:6:\"delete\";s:5:\"false\";}i:1;a:21:{s:8:\"standard\";s:1:\"2\";s:7:\"options\";s:0:\"\";s:7:\"default\";s:0:\"\";s:6:\"inline\";s:5:\"false\";s:3:\"req\";s:4:\"true\";s:7:\"disable\";s:5:\"false\";s:6:\"follow\";s:5:\"false\";s:10:\"hide_label\";s:5:\"false\";s:11:\"placeholder\";s:5:\"false\";s:5:\"label\";s:6:\"Email:\";s:4:\"slug\";s:5:\"email\";s:4:\"type\";s:4:\"text\";s:7:\"max_len\";s:0:\"\";s:9:\"label_css\";s:0:\"\";s:9:\"input_css\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:11:\"regex_error\";s:0:\"\";s:5:\"notes\";s:0:\"\";s:11:\"notes_after\";s:0:\"\";s:6:\"delete\";s:5:\"false\";}i:2;a:21:{s:8:\"standard\";s:1:\"3\";s:7:\"options\";s:0:\"\";s:7:\"default\";s:0:\"\";s:6:\"inline\";s:5:\"false\";s:3:\"req\";s:4:\"true\";s:7:\"disable\";s:5:\"false\";s:6:\"follow\";s:5:\"false\";s:10:\"hide_label\";s:5:\"false\";s:11:\"placeholder\";s:5:\"false\";s:5:\"label\";s:8:\"Subject:\";s:4:\"slug\";s:7:\"subject\";s:4:\"type\";s:4:\"text\";s:7:\"max_len\";s:0:\"\";s:9:\"label_css\";s:0:\"\";s:9:\"input_css\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:11:\"regex_error\";s:0:\"\";s:5:\"notes\";s:0:\"\";s:11:\"notes_after\";s:0:\"\";s:6:\"delete\";s:5:\"false\";}i:3;a:21:{s:8:\"standard\";s:1:\"4\";s:7:\"options\";s:0:\"\";s:7:\"default\";s:0:\"\";s:6:\"inline\";s:5:\"false\";s:3:\"req\";s:4:\"true\";s:7:\"disable\";s:5:\"false\";s:6:\"follow\";s:5:\"false\";s:10:\"hide_label\";s:5:\"false\";s:11:\"placeholder\";s:5:\"false\";s:5:\"label\";s:8:\"Message:\";s:4:\"slug\";s:7:\"message\";s:4:\"type\";s:8:\"textarea\";s:7:\"max_len\";s:0:\"\";s:9:\"label_css\";s:0:\"\";s:9:\"input_css\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:11:\"regex_error\";s:0:\"\";s:5:\"notes\";s:0:\"\";s:11:\"notes_after\";s:0:\"\";s:6:\"delete\";s:5:\"false\";}}s:23:\"vcita_scheduling_button\";s:5:\"false\";s:29:\"vcita_scheduling_button_label\";s:23:\"Schedule an Appointment\";s:14:\"vcita_approved\";s:5:\"false\";s:9:\"vcita_uid\";s:0:\"\";s:11:\"vcita_email\";s:0:\"\";s:15:\"vcita_email_new\";s:15:\"foo@example.org\";s:19:\"vcita_confirm_token\";s:0:\"\";s:20:\"vcita_confirm_tokens\";s:0:\"\";s:17:\"vcita_initialized\";s:5:\"false\";s:10:\"vcita_link\";s:5:\"false\";s:16:\"vcita_first_name\";s:0:\"\";s:15:\"vcita_last_name\";s:0:\"\";s:26:\"vcita_scheduling_link_text\";s:68:\"Click above to schedule an appointment using vCita Online Scheduling\";s:10:\"form_style\";s:27:\"width:99%; max-width:555px;\";s:14:\"left_box_style\";s:39:\"float:left; width:55%; max-width:270px;\";s:15:\"right_box_style\";s:24:\"float:left; width:235px;\";s:11:\"clear_style\";s:11:\"clear:both;\";s:16:\"field_left_style\";s:70:\"clear:left; float:left; width:99%; max-width:550px; margin-right:10px;\";s:21:\"field_prefollow_style\";s:70:\"clear:left; float:left; width:99%; max-width:250px; margin-right:10px;\";s:18:\"field_follow_style\";s:58:\"float:left; padding-left:10px; width:99%; max-width:250px;\";s:11:\"title_style\";s:33:\"text-align:left; padding-top:5px;\";s:15:\"field_div_style\";s:16:\"text-align:left;\";s:20:\"captcha_div_style_sm\";s:42:\"width:175px; height:50px; padding-top:2px;\";s:19:\"captcha_div_style_m\";s:42:\"width:250px; height:65px; padding-top:2px;\";s:19:\"captcha_image_style\";s:72:\"border-style:none; margin:0; padding:0px; padding-right:5px; float:left;\";s:26:\"captcha_reload_image_style\";s:64:\"border-style:none; margin:0; padding:0px; vertical-align:bottom;\";s:16:\"submit_div_style\";s:46:\"text-align:left; clear:both; padding-top:15px;\";s:12:\"border_style\";s:65:\"border:1px solid black; width:99%; max-width:550px; padding:10px;\";s:14:\"required_style\";s:16:\"text-align:left;\";s:19:\"required_text_style\";s:16:\"text-align:left;\";s:10:\"hint_style\";s:38:\"font-size:x-small; font-weight:normal;\";s:11:\"error_style\";s:27:\"text-align:left; color:red;\";s:14:\"redirect_style\";s:16:\"text-align:left;\";s:14:\"fieldset_style\";s:65:\"border:1px solid black; width:97%; max-width:500px; padding:10px;\";s:11:\"label_style\";s:16:\"text-align:left;\";s:18:\"option_label_style\";s:15:\"display:inline;\";s:11:\"field_style\";s:54:\"text-align:left; margin:0; width:99%; max-width:250px;\";s:19:\"captcha_input_style\";s:38:\"text-align:left; margin:0; width:50px;\";s:14:\"textarea_style\";s:68:\"text-align:left; margin:0; width:99%; max-width:250px; height:120px;\";s:12:\"select_style\";s:16:\"text-align:left;\";s:14:\"checkbox_style\";s:11:\"width:13px;\";s:11:\"radio_style\";s:11:\"width:13px;\";s:17:\"placeholder_style\";s:27:\"opacity:0.6; color:#333333;\";s:12:\"button_style\";s:25:\"cursor:pointer; margin:0;\";s:11:\"reset_style\";s:25:\"cursor:pointer; margin:0;\";s:18:\"vcita_button_style\";s:156:\"text-decoration:none; display:block; text-align:center; background:linear-gradient(to bottom, #ed6a31 0%, #e55627 100%); color:#fff !important; padding:8px;\";s:22:\"vcita_div_button_style\";s:63:\"border-left:1px dashed #ccc; margin-top:25px; padding:8px 20px;\";s:16:\"powered_by_style\";s:74:\"font-size:x-small; font-weight:normal; padding-top:5px; text-align:center;\";s:19:\"ex_fields_after_msg\";s:5:\"false\";}','yes'),
(160,'fs_contact_form2','a:170:{s:9:\"form_name\";s:8:\"New Form\";s:7:\"welcome\";s:41:\"<p>Comments or questions are welcome.</p>\";s:15:\"after_form_note\";s:0:\"\";s:8:\"email_to\";s:25:\"Webmaster,foo@example.org\";s:17:\"php_mailer_enable\";s:9:\"wordpress\";s:10:\"email_from\";s:0:\"\";s:19:\"email_from_enforced\";s:5:\"false\";s:14:\"email_reply_to\";s:0:\"\";s:9:\"email_bcc\";s:0:\"\";s:13:\"email_subject\";s:31:\"jobs.wordpressnet.test Contact:\";s:18:\"email_subject_list\";s:0:\"\";s:11:\"name_format\";s:4:\"name\";s:21:\"preserve_space_enable\";s:5:\"false\";s:12:\"double_email\";s:5:\"false\";s:16:\"name_case_enable\";s:5:\"false\";s:18:\"sender_info_enable\";s:4:\"true\";s:14:\"domain_protect\";s:4:\"true\";s:20:\"domain_protect_names\";s:0:\"\";s:13:\"anchor_enable\";s:4:\"true\";s:15:\"email_check_dns\";s:5:\"false\";s:10:\"email_html\";s:5:\"false\";s:18:\"email_inline_label\";s:5:\"false\";s:16:\"email_hide_empty\";s:5:\"false\";s:17:\"print_form_enable\";s:5:\"false\";s:22:\"email_keep_attachments\";s:5:\"false\";s:15:\"akismet_disable\";s:5:\"false\";s:19:\"akismet_send_anyway\";s:4:\"true\";s:14:\"captcha_enable\";s:4:\"true\";s:13:\"captcha_small\";s:5:\"false\";s:12:\"captcha_perm\";s:5:\"false\";s:18:\"captcha_perm_level\";s:4:\"read\";s:15:\"honeypot_enable\";s:5:\"false\";s:15:\"redirect_enable\";s:4:\"true\";s:16:\"redirect_seconds\";i:3;s:12:\"redirect_url\";s:21:\"http://localhost:8888\";s:14:\"redirect_query\";s:5:\"false\";s:15:\"redirect_ignore\";s:0:\"\";s:15:\"redirect_rename\";s:0:\"\";s:12:\"redirect_add\";s:0:\"\";s:18:\"redirect_email_off\";s:5:\"false\";s:11:\"silent_send\";s:3:\"off\";s:10:\"silent_url\";s:0:\"\";s:13:\"silent_ignore\";s:0:\"\";s:13:\"silent_rename\";s:0:\"\";s:10:\"silent_add\";s:0:\"\";s:24:\"silent_conditional_field\";s:0:\"\";s:24:\"silent_conditional_value\";s:0:\"\";s:16:\"silent_email_off\";s:5:\"false\";s:13:\"export_ignore\";s:0:\"\";s:13:\"export_rename\";s:0:\"\";s:10:\"export_add\";s:0:\"\";s:16:\"export_email_off\";s:5:\"false\";s:11:\"date_format\";s:10:\"mm/dd/yyyy\";s:13:\"cal_start_day\";s:1:\"0\";s:11:\"time_format\";s:2:\"12\";s:12:\"attach_types\";s:33:\"doc,docx,pdf,txt,gif,jpg,jpeg,png\";s:11:\"attach_size\";s:3:\"1mb\";s:19:\"textarea_html_allow\";s:5:\"false\";s:17:\"enable_areyousure\";s:5:\"false\";s:22:\"enable_submit_oneclick\";s:4:\"true\";s:19:\"auto_respond_enable\";s:5:\"false\";s:17:\"auto_respond_html\";s:5:\"false\";s:22:\"auto_respond_from_name\";s:22:\"jobs.wordpressnet.test\";s:23:\"auto_respond_from_email\";s:15:\"foo@example.org\";s:21:\"auto_respond_reply_to\";s:15:\"foo@example.org\";s:20:\"auto_respond_subject\";s:0:\"\";s:20:\"auto_respond_message\";s:0:\"\";s:26:\"req_field_indicator_enable\";s:4:\"true\";s:22:\"req_field_label_enable\";s:4:\"true\";s:19:\"req_field_indicator\";s:1:\"*\";s:13:\"border_enable\";s:5:\"false\";s:14:\"external_style\";s:5:\"false\";s:13:\"aria_required\";s:5:\"false\";s:16:\"auto_fill_enable\";s:4:\"true\";s:15:\"form_attributes\";s:0:\"\";s:17:\"submit_attributes\";s:0:\"\";s:17:\"success_page_html\";s:0:\"\";s:12:\"title_border\";s:12:\"Contact Form\";s:10:\"title_dept\";s:0:\"\";s:12:\"title_select\";s:0:\"\";s:10:\"title_name\";s:0:\"\";s:11:\"title_fname\";s:0:\"\";s:11:\"title_mname\";s:0:\"\";s:12:\"title_miname\";s:0:\"\";s:11:\"title_lname\";s:0:\"\";s:11:\"title_email\";s:0:\"\";s:12:\"title_email2\";s:0:\"\";s:10:\"title_subj\";s:0:\"\";s:10:\"title_mess\";s:0:\"\";s:10:\"title_capt\";s:0:\"\";s:12:\"title_submit\";s:0:\"\";s:16:\"title_submitting\";s:0:\"\";s:11:\"title_reset\";s:0:\"\";s:16:\"title_areyousure\";s:0:\"\";s:17:\"text_message_sent\";s:0:\"\";s:17:\"text_print_button\";s:0:\"\";s:16:\"tooltip_required\";s:0:\"\";s:15:\"tooltip_captcha\";s:0:\"\";s:15:\"tooltip_refresh\";s:0:\"\";s:17:\"tooltip_filetypes\";s:0:\"\";s:16:\"tooltip_filesize\";s:0:\"\";s:12:\"enable_reset\";s:5:\"false\";s:18:\"enable_credit_link\";s:5:\"false\";s:20:\"error_contact_select\";s:0:\"\";s:10:\"error_name\";s:0:\"\";s:11:\"error_email\";s:0:\"\";s:17:\"error_email_check\";s:0:\"\";s:12:\"error_email2\";s:0:\"\";s:9:\"error_url\";s:0:\"\";s:10:\"error_date\";s:0:\"\";s:10:\"error_time\";s:0:\"\";s:12:\"error_maxlen\";s:0:\"\";s:11:\"error_field\";s:0:\"\";s:13:\"error_subject\";s:0:\"\";s:12:\"error_select\";s:0:\"\";s:11:\"error_input\";s:0:\"\";s:19:\"error_captcha_blank\";s:0:\"\";s:19:\"error_captcha_wrong\";s:0:\"\";s:13:\"error_correct\";s:0:\"\";s:13:\"error_spambot\";s:0:\"\";s:6:\"fields\";a:4:{i:0;a:20:{s:8:\"standard\";s:1:\"1\";s:7:\"options\";s:0:\"\";s:7:\"default\";s:0:\"\";s:6:\"inline\";s:5:\"false\";s:3:\"req\";s:4:\"true\";s:7:\"disable\";s:5:\"false\";s:6:\"follow\";s:5:\"false\";s:10:\"hide_label\";s:5:\"false\";s:11:\"placeholder\";s:5:\"false\";s:5:\"label\";s:5:\"Name:\";s:4:\"slug\";s:9:\"full_name\";s:4:\"type\";s:4:\"text\";s:7:\"max_len\";s:0:\"\";s:9:\"label_css\";s:0:\"\";s:9:\"input_css\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:11:\"regex_error\";s:0:\"\";s:5:\"notes\";s:0:\"\";s:11:\"notes_after\";s:0:\"\";}i:1;a:20:{s:8:\"standard\";s:1:\"2\";s:7:\"options\";s:0:\"\";s:7:\"default\";s:0:\"\";s:6:\"inline\";s:5:\"false\";s:3:\"req\";s:4:\"true\";s:7:\"disable\";s:5:\"false\";s:6:\"follow\";s:5:\"false\";s:10:\"hide_label\";s:5:\"false\";s:11:\"placeholder\";s:5:\"false\";s:5:\"label\";s:6:\"Email:\";s:4:\"slug\";s:5:\"email\";s:4:\"type\";s:4:\"text\";s:7:\"max_len\";s:0:\"\";s:9:\"label_css\";s:0:\"\";s:9:\"input_css\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:11:\"regex_error\";s:0:\"\";s:5:\"notes\";s:0:\"\";s:11:\"notes_after\";s:0:\"\";}i:2;a:20:{s:8:\"standard\";s:1:\"3\";s:7:\"options\";s:0:\"\";s:7:\"default\";s:0:\"\";s:6:\"inline\";s:5:\"false\";s:3:\"req\";s:4:\"true\";s:7:\"disable\";s:5:\"false\";s:6:\"follow\";s:5:\"false\";s:10:\"hide_label\";s:5:\"false\";s:11:\"placeholder\";s:5:\"false\";s:5:\"label\";s:8:\"Subject:\";s:4:\"slug\";s:7:\"subject\";s:4:\"type\";s:4:\"text\";s:7:\"max_len\";s:0:\"\";s:9:\"label_css\";s:0:\"\";s:9:\"input_css\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:11:\"regex_error\";s:0:\"\";s:5:\"notes\";s:0:\"\";s:11:\"notes_after\";s:0:\"\";}i:3;a:20:{s:8:\"standard\";s:1:\"4\";s:7:\"options\";s:0:\"\";s:7:\"default\";s:0:\"\";s:6:\"inline\";s:5:\"false\";s:3:\"req\";s:4:\"true\";s:7:\"disable\";s:5:\"false\";s:6:\"follow\";s:5:\"false\";s:10:\"hide_label\";s:5:\"false\";s:11:\"placeholder\";s:5:\"false\";s:5:\"label\";s:8:\"Message:\";s:4:\"slug\";s:7:\"message\";s:4:\"type\";s:8:\"textarea\";s:7:\"max_len\";s:0:\"\";s:9:\"label_css\";s:0:\"\";s:9:\"input_css\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:11:\"regex_error\";s:0:\"\";s:5:\"notes\";s:0:\"\";s:11:\"notes_after\";s:0:\"\";}}s:23:\"vcita_scheduling_button\";s:5:\"false\";s:29:\"vcita_scheduling_button_label\";s:23:\"Schedule an Appointment\";s:14:\"vcita_approved\";s:5:\"false\";s:9:\"vcita_uid\";s:0:\"\";s:11:\"vcita_email\";s:0:\"\";s:15:\"vcita_email_new\";s:15:\"foo@example.org\";s:19:\"vcita_confirm_token\";s:0:\"\";s:20:\"vcita_confirm_tokens\";s:0:\"\";s:17:\"vcita_initialized\";s:5:\"false\";s:10:\"vcita_link\";s:5:\"false\";s:16:\"vcita_first_name\";s:0:\"\";s:15:\"vcita_last_name\";s:0:\"\";s:26:\"vcita_scheduling_link_text\";s:68:\"Click above to schedule an appointment using vCita Online Scheduling\";s:10:\"form_style\";s:27:\"width:99%; max-width:555px;\";s:14:\"left_box_style\";s:39:\"float:left; width:55%; max-width:270px;\";s:15:\"right_box_style\";s:24:\"float:left; width:235px;\";s:11:\"clear_style\";s:11:\"clear:both;\";s:16:\"field_left_style\";s:70:\"clear:left; float:left; width:99%; max-width:550px; margin-right:10px;\";s:21:\"field_prefollow_style\";s:70:\"clear:left; float:left; width:99%; max-width:250px; margin-right:10px;\";s:18:\"field_follow_style\";s:58:\"float:left; padding-left:10px; width:99%; max-width:250px;\";s:11:\"title_style\";s:33:\"text-align:left; padding-top:5px;\";s:15:\"field_div_style\";s:16:\"text-align:left;\";s:20:\"captcha_div_style_sm\";s:42:\"width:175px; height:50px; padding-top:2px;\";s:19:\"captcha_div_style_m\";s:42:\"width:250px; height:65px; padding-top:2px;\";s:19:\"captcha_image_style\";s:72:\"border-style:none; margin:0; padding:0px; padding-right:5px; float:left;\";s:26:\"captcha_reload_image_style\";s:64:\"border-style:none; margin:0; padding:0px; vertical-align:bottom;\";s:16:\"submit_div_style\";s:46:\"text-align:left; clear:both; padding-top:15px;\";s:12:\"border_style\";s:65:\"border:1px solid black; width:99%; max-width:550px; padding:10px;\";s:14:\"required_style\";s:16:\"text-align:left;\";s:19:\"required_text_style\";s:16:\"text-align:left;\";s:10:\"hint_style\";s:38:\"font-size:x-small; font-weight:normal;\";s:11:\"error_style\";s:27:\"text-align:left; color:red;\";s:14:\"redirect_style\";s:16:\"text-align:left;\";s:14:\"fieldset_style\";s:65:\"border:1px solid black; width:97%; max-width:500px; padding:10px;\";s:11:\"label_style\";s:16:\"text-align:left;\";s:18:\"option_label_style\";s:15:\"display:inline;\";s:11:\"field_style\";s:54:\"text-align:left; margin:0; width:99%; max-width:250px;\";s:19:\"captcha_input_style\";s:38:\"text-align:left; margin:0; width:50px;\";s:14:\"textarea_style\";s:68:\"text-align:left; margin:0; width:99%; max-width:250px; height:120px;\";s:12:\"select_style\";s:16:\"text-align:left;\";s:14:\"checkbox_style\";s:11:\"width:13px;\";s:11:\"radio_style\";s:11:\"width:13px;\";s:17:\"placeholder_style\";s:27:\"opacity:0.6; color:#333333;\";s:12:\"button_style\";s:25:\"cursor:pointer; margin:0;\";s:11:\"reset_style\";s:25:\"cursor:pointer; margin:0;\";s:18:\"vcita_button_style\";s:156:\"text-decoration:none; display:block; text-align:center; background:linear-gradient(to bottom, #ed6a31 0%, #e55627 100%); color:#fff !important; padding:8px;\";s:22:\"vcita_div_button_style\";s:63:\"border-left:1px dashed #ccc; margin-top:25px; padding:8px 20px;\";s:16:\"powered_by_style\";s:74:\"font-size:x-small; font-weight:normal; padding-top:5px; text-align:center;\";s:19:\"ex_fields_after_msg\";s:5:\"false\";}','yes'),
(165,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes'),
(176,'WPLANG','','yes'),
(177,'db_upgraded','','yes'),
(178,'rewrite_rules','a:121:{s:6:\"job/?$\";s:23:\"index.php?post_type=job\";s:36:\"job/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?post_type=job&feed=$matches[1]\";s:31:\"job/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?post_type=job&feed=$matches[1]\";s:23:\"job/page/([0-9]{1,})/?$\";s:41:\"index.php?post_type=job&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:31:\"job/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"job/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"job/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"job/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"job/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"job/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:20:\"job/([^/]+)/embed/?$\";s:36:\"index.php?job=$matches[1]&embed=true\";s:24:\"job/([^/]+)/trackback/?$\";s:30:\"index.php?job=$matches[1]&tb=1\";s:44:\"job/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?job=$matches[1]&feed=$matches[2]\";s:39:\"job/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?job=$matches[1]&feed=$matches[2]\";s:32:\"job/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?job=$matches[1]&paged=$matches[2]\";s:39:\"job/([^/]+)/comment-page-([0-9]{1,})/?$\";s:43:\"index.php?job=$matches[1]&cpage=$matches[2]\";s:28:\"job/([^/]+)(?:/([0-9]+))?/?$\";s:42:\"index.php?job=$matches[1]&page=$matches[2]\";s:20:\"job/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\"job/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\"job/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"job/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"job/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\"job/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"job_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?job_category=$matches[1]&feed=$matches[2]\";s:48:\"job_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?job_category=$matches[1]&feed=$matches[2]\";s:29:\"job_category/([^/]+)/embed/?$\";s:45:\"index.php?job_category=$matches[1]&embed=true\";s:41:\"job_category/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?job_category=$matches[1]&paged=$matches[2]\";s:23:\"job_category/([^/]+)/?$\";s:34:\"index.php?job_category=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes'),
(199,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1705088729;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}','no'),
(202,'_transient_is_multi_author','0','yes'),
(215,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(216,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(217,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(218,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(219,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(220,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(221,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(222,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(223,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(224,'_transient_doing_cron','1705088791.0686628818511962890625','yes'),
(229,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:11:\"development\";s:8:\"download\";s:57:\"https://wordpress.org/nightly-builds/wordpress-latest.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://wordpress.org/nightly-builds/wordpress-latest.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:15:\"6.5-alpha-57272\";s:7:\"version\";s:15:\"6.5-alpha-57272\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.4.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.4.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.4.2\";s:7:\"version\";s:5:\"6.4.2\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://wordpress.org/nightly-builds/wordpress-latest.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://wordpress.org/nightly-builds/wordpress-latest.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:15:\"6.5-alpha-57272\";s:7:\"version\";s:15:\"6.5-alpha-57272\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1705088729;s:15:\"version_checked\";s:15:\"6.5-alpha-57277\";s:12:\"translations\";a:0:{}}','no'),
(230,'widget_block','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(231,'finished_splitting_shared_terms','0','yes'),
(232,'site_icon','0','yes'),
(233,'medium_large_size_w','768','yes'),
(234,'medium_large_size_h','0','yes'),
(235,'wp_page_for_privacy_policy','0','yes'),
(236,'show_comments_cookies_opt_in','1','yes'),
(237,'admin_email_lifespan','1720640726','yes'),
(238,'disallowed_keys','','no'),
(239,'comment_previously_approved','1','yes'),
(240,'auto_plugin_theme_update_emails','a:0:{}','no'),
(241,'auto_update_core_dev','enabled','yes'),
(242,'auto_update_core_minor','enabled','yes'),
(243,'auto_update_core_major','unset','yes'),
(244,'wp_force_deactivated_plugins','a:0:{}','yes'),
(245,'wp_attachment_pages_enabled','1','yes'),
(246,'finished_updating_comment_type','0','yes'),
(247,'user_count','2','no'),
(248,'_site_transient_timeout_theme_roots','1705090529','no'),
(249,'_site_transient_theme_roots','a:1:{s:6:\"jobswp\";s:7:\"/themes\";}','no'),
(250,'can_compress_scripts','0','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES
(7,6,'_edit_last','1'),
(8,6,'_edit_lock','1403595385:1'),
(9,9,'_edit_last','1'),
(10,9,'_edit_lock','1403595459:1'),
(11,11,'_edit_last','1'),
(12,11,'_edit_lock','1403597038:1'),
(13,16,'first_name','John'),
(14,16,'last_name','Doe'),
(15,16,'email','john.doe@example.org'),
(16,16,'phone','+1 206.555.1212'),
(17,16,'company','Greensky Ltd'),
(18,16,'howtoapply_method','web'),
(19,16,'howtoapply','http://weare.gs/careers/php-developer/'),
(20,16,'budget','PHP Developer (PHP, MySQL, jQuery, OOP, Titanium)'),
(21,16,'jobtype','ft'),
(22,16,'location','London'),
(23,16,'_edit_lock','1403596952:1'),
(24,16,'_edit_last','1'),
(25,18,'_menu_item_type','custom'),
(26,18,'_menu_item_menu_item_parent','0'),
(27,18,'_menu_item_object_id','18'),
(28,18,'_menu_item_object','custom'),
(29,18,'_menu_item_target',''),
(30,18,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
(31,18,'_menu_item_xfn',''),
(32,18,'_menu_item_url','http://localhost:8888/'),
(34,19,'_menu_item_type','post_type'),
(35,19,'_menu_item_menu_item_parent','0'),
(36,19,'_menu_item_object_id','6'),
(37,19,'_menu_item_object','page'),
(38,19,'_menu_item_target',''),
(39,19,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
(40,19,'_menu_item_xfn',''),
(41,19,'_menu_item_url',''),
(43,20,'_menu_item_type','post_type'),
(44,20,'_menu_item_menu_item_parent','0'),
(45,20,'_menu_item_object_id','11'),
(46,20,'_menu_item_object','page'),
(47,20,'_menu_item_target',''),
(48,20,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
(49,20,'_menu_item_xfn',''),
(50,20,'_menu_item_url',''),
(52,21,'_menu_item_type','post_type'),
(53,21,'_menu_item_menu_item_parent','0'),
(54,21,'_menu_item_object_id','9'),
(55,21,'_menu_item_object','page'),
(56,21,'_menu_item_target',''),
(57,21,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
(58,21,'_menu_item_xfn',''),
(59,21,'_menu_item_url',''),
(61,22,'first_name','Jane'),
(62,22,'last_name','Doe'),
(63,22,'email','jane.doe@example.org'),
(64,22,'phone','+1 206.555.1212'),
(65,22,'company','CMS Advertising Group'),
(66,22,'howtoapply_method','web'),
(67,22,'howtoapply','http://cmsadgroup.com/'),
(68,22,'jobtype','ppt'),
(69,22,'location','Alexandria, VA and Austin, TX'),
(70,22,'_edit_lock','1403597356:1'),
(71,22,'_edit_last','1');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `post_name` (`post_name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES
(6,1,'2014-06-24 07:38:38','2014-06-24 07:38:38','<dl><dt>What types of jobs can be posted on this site?</dt><dd>Only WordPress-related jobs will be published, provided they meet the criteria below.</dd><dt>How long will it take for my job posting to appear on the site?</dt><dd>All job postings are moderated prior to appearing on the site. Moderation is performed by a team of volunteers. As such, it may take as long as 24-36 hours before a job posting is approved depending on various factors. Though generally it takes no more than a few hours.</dd><dt>How long will my job posting be displayed?</dt><dd>Your job posting will be displayed for a period of 21 days, unless you request to have it removed earlier than that (by <a href=\"/feedback/\">contacting us</a>).</dd><dt>Who can I contact?</dt><dd>Contact us via our <a href=\"/feedback/\">feedback form</a>.</dd><dt>Can I post my advertisement, site, cool new product?</dt><dd>No, this site is only for posting available jobs.</dd><dt>Can I post my resume?</dt><dd>Not at this time.</dd><dt>How do I contact an employer?</dt><dd>Employers are expected to leave their contact information on each post.</dd><dt>How do I remove a job posting?</dt><dd>Your job will fall off the list after 21 days. If you need to remove it now, please <a href=\"/feedback/\">contact us</a>.</dd><dt>Why does an employer not respond?</dt><dd>It is completely up to the employer to choose to respond or ignore a request for communication.</dd><dt>Why is ‘X’ feature not available?</dt><dd>It could be. Just leave us <a href=\"/feedback/\">feedback</a>.</dd><dt>Why was my job posting not approved?</dt><dd>We moderate job posts on a few criteria, including:\r\n<ul>\r\n	<li>At this time, all job postings must be in English.</li>\r\n	<li>Only actual jobs can be posted to the job board.</li>\r\n	<li>The job board is for WordPress jobs only.</li>\r\n	<li>Your job posting must have adequate information about the listing, including contact information.\r\n<ul>\r\n	<li>For full and part time jobs, please include as many details about the position, including what exactly the applicant will be doing, what salary/hourly range you are expecting to pay, and what skills you require from applicants.</li>\r\n	<li>For projects, please be as specific as possible about the nature of your project as well as your budget. Pro bono projects are allowed, but be up front about this in your job posting.</li>\r\n</ul>\r\n</li>\r\n	<li>Products and businesses listed on this job board must not infringe on the WordPress trademark. (See the <a href=\"http://WordPressfoundation.org/trademark-policy/\">WordPress trademark policy</a>.)</li>\r\n	<li>Any job posting for sites which promote discrimination of any kind or hate speech will not be published.</li>\r\n	<li>Job postings for sites which promote illegal activity – as defined by the laws of the United States – will not be published.</li>\r\n	<li>Similarly, job postings for sites primarily for adult content or merchandise (e.g., pornography) will not be published.</li>\r\n	<li>If your job posting involves a project that will be released publicly, it must embrace the WordPress license. If distributing WordPress-derivative works (themes, plugins, WP distros), any person or business should give their users the same freedoms that WordPress itself provides. Projects must be 100% GPL or compatibly licensed.</li>\r\n</ul>\r\n</dd></dl>','FAQ','','publish','open','open','','faq','','','2014-06-24 07:38:38','2014-06-24 07:38:38','',0,'http://localhost:8888/?page_id=6',0,'page','',0),
(8,1,'2014-06-24 07:37:16','2014-06-24 07:37:16','<dl><dt>What types of jobs can be posted on this site?</dt><dd>Only WordPress-related jobs will be published, provided they meet the criteria below.</dd><dt>How long will it take for my job posting to appear on the site?</dt><dd>All job postings are moderated prior to appearing on the site. Moderation is performed by a team of volunteers. As such, it may take as long as 24-36 hours before a job posting is approved depending on various factors. Though generally it takes no more than a few hours.</dd><dt>How long will my job posting be displayed?</dt><dd>Your job posting will be displayed for a period of 21 days, unless you request to have it removed earlier than that (by <a href=\"/feedback/\">contacting us</a>).</dd><dt>Who can I contact?</dt><dd>Contact us via our <a href=\"/feedback/\">feedback form</a>.</dd><dt>Can I post my advertisement, site, cool new product?</dt><dd>No, this site is only for posting available jobs.</dd><dt>Can I post my resume?</dt><dd>Not at this time.</dd><dt>How do I contact an employer?</dt><dd>Employers are expected to leave their contact information on each post.</dd><dt>How do I remove a job posting?</dt><dd>Your job will fall off the list after 21 days. If you need to remove it now, please <a href=\"/feedback/\">contact us</a>.</dd><dt>Why does an employer not respond?</dt><dd>It is completely up to the employer to choose to respond or ignore a request for communication.</dd><dt>Why is ‘X’ feature not available?</dt><dd>It could be. Just leave us <a href=\"/feedback/\">feedback</a>.</dd><dt>Why was my job posting not approved?</dt><dd>We moderate job posts on a few criteria, including:\r\n<ul>\r\n	<li>At this time, all job postings must be in English.</li>\r\n	<li>Only actual jobs can be posted to the job board.</li>\r\n	<li>The job board is for WordPress jobs only.</li>\r\n	<li>Your job posting must have adequate information about the listing, including contact information.\r\n<ul>\r\n	<li>For full and part time jobs, please include as many details about the position, including what exactly the applicant will be doing, what salary/hourly range you are expecting to pay, and what skills you require from applicants.</li>\r\n	<li>For projects, please be as specific as possible about the nature of your project as well as your budget. Pro bono projects are allowed, but be up front about this in your job posting.</li>\r\n</ul>\r\n</li>\r\n	<li>Products and businesses listed on this job board must not infringe on the WordPress trademark. (See the <a href=\"http://WordPressfoundation.org/trademark-policy/\">WordPress trademark policy</a>.)</li>\r\n	<li>Any job posting for sites which promote discrimination of any kind or hate speech will not be published.</li>\r\n	<li>Job postings for sites which promote illegal activity – as defined by the laws of the United States – will not be published.</li>\r\n	<li>Similarly, job postings for sites primarily for adult content or merchandise (e.g., pornography) will not be published.</li>\r\n	<li>If your job posting involves a project that will be released publicly, it must embrace the WordPress license. If distributing WordPress-derivative works (themes, plugins, WP distros), any person or business should give their users the same freedoms that WordPress itself provides. Projects must be 100% GPL or compatibly licensed.</li>\r\n</ul>\r\n</dd></dl>','FAQ','','inherit','open','open','','6-revision-v1','','','2014-06-24 07:37:16','2014-06-24 07:37:16','',6,'http://localhost:8888/6-revision-v1/',0,'revision','',0),
(9,1,'2014-06-24 07:39:48','2014-06-24 07:39:48','','Post a Job','','publish','open','open','','post-a-job','','','2014-06-24 07:39:48','2014-06-24 07:39:48','',0,'http://localhost:8888/?page_id=9',0,'page','',0),
(10,1,'2014-06-24 07:39:45','2014-06-24 07:39:45','','Post a Job','','inherit','open','open','','9-revision-v1','','','2014-06-24 07:39:45','2014-06-24 07:39:45','',9,'http://localhost:8888/9-revision-v1/',0,'revision','',0),
(11,1,'2014-06-24 07:40:15','2014-06-24 07:40:15','[si-contact-form form=\'1\']\r\n\r\n<em>We’re sorry, but we don’t have any additional information about job postings other than what was posted to the site.</em>\r\n\r\n<em><strong>NOTE:</strong> If you are writing about your already-submitted job posting, please be sure to provide the email address you specified when you filled out the job form so that we can properly associate your request with your job posting.</em>','Feedback','','publish','open','open','','feedback','','','2014-06-24 07:52:46','2014-06-24 07:52:46','',0,'http://localhost:8888/?page_id=11',0,'page','',0),
(12,1,'2014-06-24 07:40:15','2014-06-24 07:40:15','','Feedback','','inherit','open','open','','11-revision-v1','','','2014-06-24 07:40:15','2014-06-24 07:40:15','',11,'http://localhost:8888/11-revision-v1/',0,'revision','',0),
(13,1,'2014-06-24 07:52:08','2014-06-24 07:52:08','[si-contact-form form=\'1\']','Feedback','','inherit','open','open','','11-autosave-v1','','','2014-06-24 07:52:08','2014-06-24 07:52:08','',11,'http://localhost:8888/11-autosave-v1/',0,'revision','',0),
(14,1,'2014-06-24 07:52:05','2014-06-24 07:52:05','[si-contact-form form=\'1\']','Feedback','','inherit','open','open','','11-revision-v1','','','2014-06-24 07:52:05','2014-06-24 07:52:05','',11,'http://localhost:8888/11-revision-v1/',0,'revision','',0),
(15,1,'2014-06-24 07:52:46','2014-06-24 07:52:46','[si-contact-form form=\'1\']\r\n\r\n<em>We’re sorry, but we don’t have any additional information about job postings other than what was posted to the site.</em>\r\n\r\n<em><strong>NOTE:</strong> If you are writing about your already-submitted job posting, please be sure to provide the email address you specified when you filled out the job form so that we can properly associate your request with your job posting.</em>','Feedback','','inherit','open','open','','11-revision-v1','','','2014-06-24 07:52:46','2014-06-24 07:52:46','',11,'http://localhost:8888/11-revision-v1/',0,'revision','',0),
(16,2,'2014-06-24 08:03:33','2014-06-24 08:03:33','We have an exciting position for a web and mobile developer to join our fast-growing agency.\r\n\r\nDay to day, the PHP Developer will be work on a variety of different web and mobile projects. You will be working within a tight-knit team and use your advanced coding practice including OOP to provide fresh ideas within this energetic team.\r\n\r\nRole + Responsibilities\r\n\r\nWork as part of a team to design build and maintain enterprise websites and mobile apps\r\nSupport technical strategy for continued business growth\r\nLiaise with clients as required\r\nDevelop + support internal systems and plugins\r\n\r\nCore Skills Required\r\n\r\nPHP\r\nObject-oriented programming (SOLID/GRASP)\r\nMySQL\r\njQuery + AJAX\r\nExperience with WordPress development including plugins\r\n\r\nSkills that will help your application\r\n\r\n2:1 or higher in Computer Science related degree\r\nHTML/CSS\r\nBDD/TDD (PHPUnit/Codeception)\r\nExperience working with Titanium or similar\r\nMagento development experience\r\niOS/Android Development experience','PHP Developer (PHP, MySQL, jQuery, OOP, Titanium)','','pruned','closed','closed','','php-developer-php-mysql-jquery-oop-titanium','','','2014-06-24 08:03:33','2014-06-24 08:03:33','',0,'http://localhost:8888/?post_type=job&#038;p=16',0,'job','',0),
(17,1,'2014-06-24 08:03:33','2014-06-24 08:03:33','We have an exciting position for a web and mobile developer to join our fast-growing agency.\r\n\r\nDay to day, the PHP Developer will be work on a variety of different web and mobile projects. You will be working within a tight-knit team and use your advanced coding practice including OOP to provide fresh ideas within this energetic team.\r\n\r\nRole + Responsibilities\r\n\r\nWork as part of a team to design build and maintain enterprise websites and mobile apps\r\nSupport technical strategy for continued business growth\r\nLiaise with clients as required\r\nDevelop + support internal systems and plugins\r\n\r\nCore Skills Required\r\n\r\nPHP\r\nObject-oriented programming (SOLID/GRASP)\r\nMySQL\r\njQuery + AJAX\r\nExperience with WordPress development including plugins\r\n\r\nSkills that will help your application\r\n\r\n2:1 or higher in Computer Science related degree\r\nHTML/CSS\r\nBDD/TDD (PHPUnit/Codeception)\r\nExperience working with Titanium or similar\r\nMagento development experience\r\niOS/Android Development experience','PHP Developer (PHP, MySQL, jQuery, OOP, Titanium)','','inherit','open','open','','16-revision-v1','','','2014-06-24 08:03:33','2014-06-24 08:03:33','',16,'http://localhost:8888/16-revision-v1/',0,'revision','',0),
(18,1,'2014-06-24 08:05:52','2014-06-24 08:05:52','','Current Openings','','publish','open','open','','current-openings','','','2014-06-24 08:06:27','2014-06-24 08:06:27','',0,'http://localhost:8888/?p=18',1,'nav_menu_item','',0),
(19,1,'2014-06-24 08:05:52','2014-06-24 08:05:52',' ','','','publish','open','open','','19','','','2014-06-24 08:06:27','2014-06-24 08:06:27','',0,'http://localhost:8888/?p=19',2,'nav_menu_item','',0),
(20,1,'2014-06-24 08:05:52','2014-06-24 08:05:52',' ','','','publish','open','open','','20','','','2014-06-24 08:06:27','2014-06-24 08:06:27','',0,'http://localhost:8888/?p=20',4,'nav_menu_item','',0),
(21,1,'2014-06-24 08:05:52','2014-06-24 08:05:52',' ','','','publish','open','open','','21','','','2014-06-24 08:06:27','2014-06-24 08:06:27','',0,'http://localhost:8888/?p=21',3,'nav_menu_item','',0),
(22,2,'2014-06-24 08:09:00','2014-06-24 08:09:00','Who We Are:\r\n\r\nWe are a creative agency with offices in Alexandria, VA and Austin, TX that specializes in web design and development and brand strategy.\r\nWe need a Project Manager/Web Strategist/Proposal Writer that can complement our current staff.\r\nWe are a 9-person shop; we don’t micro-manage and have a steady stream of interesting projects throughout the year.\r\nWe do all custom work and WordPress is our platform/CMS of choice. We use Basecamp to stay in touch and organize deliverables.\r\nGit versioning and Bitbucket is used to corral our code and WPEngine is our preferred development and production host.\r\nWe are a friendly group and enjoy lively collaboration to come up with the best solutions for our clients.\r\nSkills and Experience:\r\n\r\nExperienced Project Manager w/Web Project Experience\r\nExperienced w/Agile Project Management\r\nExperienced with Evaluating and Communicating Scope Requirements\r\nFamiliar with and Proficient with the WordPress CMS Dashboard\r\nKnowledgeable About Industry Best Practices in Web Design &amp; Development\r\nExpert with Basecamp Software\r\nKnowledgeable w/508 Compliance Guidelines\r\nExperienced Proposal Writer for Web Projects\r\n\r\nWork Ethic:\r\n\r\nStrong Attention to Detail\r\nSelf Motivated and Always Learning\r\nReliable and Honest\r\nProduces High Quality Work on Deadline\r\n\r\nRequirements:\r\n\r\nPreferably located in the Washington, DC or Austin, TX Metro Area, but not a deal breaker.\r\nMust be a U.S. Citizen and located within the Continental U.S. (absolutely no offshore candidates will be considered)\r\nExcellent English Speaking and Writing Skills\r\n\r\nTo Apply:\r\nPlease Visit our Website and apply from our “Careers” page.\r\nCMS Advertising Group | Web Design and Development | Brand Strategy\r\n| Alexandria, Virginia | Austin, TX','Web Project Manager – Strategist – Proposal Writer','','pruned','closed','closed','','web-project-manager-strategist-proposal-writer','','','2014-06-24 08:09:00','2014-06-24 08:09:00','',0,'http://localhost:8888/?post_type=job&#038;p=22',0,'job','',0),
(23,1,'2014-06-24 08:09:00','2014-06-24 08:09:00','Who We Are:\r\n\r\nWe are a creative agency with offices in Alexandria, VA and Austin, TX that specializes in web design and development and brand strategy.\r\nWe need a Project Manager/Web Strategist/Proposal Writer that can complement our current staff.\r\nWe are a 9-person shop; we don’t micro-manage and have a steady stream of interesting projects throughout the year.\r\nWe do all custom work and WordPress is our platform/CMS of choice. We use Basecamp to stay in touch and organize deliverables.\r\nGit versioning and Bitbucket is used to corral our code and WPEngine is our preferred development and production host.\r\nWe are a friendly group and enjoy lively collaboration to come up with the best solutions for our clients.\r\nSkills and Experience:\r\n\r\nExperienced Project Manager w/Web Project Experience\r\nExperienced w/Agile Project Management\r\nExperienced with Evaluating and Communicating Scope Requirements\r\nFamiliar with and Proficient with the WordPress CMS Dashboard\r\nKnowledgeable About Industry Best Practices in Web Design &amp; Development\r\nExpert with Basecamp Software\r\nKnowledgeable w/508 Compliance Guidelines\r\nExperienced Proposal Writer for Web Projects\r\n\r\nWork Ethic:\r\n\r\nStrong Attention to Detail\r\nSelf Motivated and Always Learning\r\nReliable and Honest\r\nProduces High Quality Work on Deadline\r\n\r\nRequirements:\r\n\r\nPreferably located in the Washington, DC or Austin, TX Metro Area, but not a deal breaker.\r\nMust be a U.S. Citizen and located within the Continental U.S. (absolutely no offshore candidates will be considered)\r\nExcellent English Speaking and Writing Skills\r\n\r\nTo Apply:\r\nPlease Visit our Website and apply from our “Careers” page.\r\nCMS Advertising Group | Web Design and Development | Brand Strategy\r\n| Alexandria, Virginia | Austin, TX','Web Project Manager – Strategist – Proposal Writer','','inherit','open','open','','22-revision-v1','','','2014-06-24 08:09:00','2014-06-24 08:09:00','',22,'http://localhost:8888/22-revision-v1/',0,'revision','',0),
(24,1,'2014-12-04 02:37:48','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2014-12-04 02:37:48','0000-00-00 00:00:00','',0,'http://localhost:8888/?p=24',0,'post','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES
(16,3,0),
(18,10,0),
(19,10,0),
(20,10,0),
(21,10,0),
(22,4,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES
(1,1,'category','',0,0),
(2,2,'job_category','',0,0),
(3,3,'job_category','',0,1),
(4,4,'job_category','',0,1),
(5,5,'job_category','',0,0),
(6,6,'job_category','',0,0),
(7,7,'job_category','',0,0),
(8,8,'job_category','',0,0),
(9,9,'job_category','',0,0),
(10,10,'nav_menu','',0,4);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES
(1,'Uncategorized','uncategorized',0),
(2,'Design','design',0),
(3,'Development','development',0),
(4,'General','general',0),
(5,'Migration','migration',0),
(6,'Performance','performance',0),
(7,'Plugin Development','plugin-development',0),
(8,'Theme Customization','theme-customization',0),
(9,'Writing','writing',0),
(10,'Menu 1','menu-1',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES
(1,1,'nickname','admin'),
(2,1,'first_name',''),
(3,1,'last_name',''),
(4,1,'description',''),
(5,1,'rich_editing','true'),
(6,1,'comment_shortcuts','false'),
(7,1,'admin_color','fresh'),
(8,1,'use_ssl','0'),
(9,1,'show_admin_bar_front','true'),
(10,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),
(11,1,'wp_user_level','10'),
(12,1,'dismissed_wp_pointers','wp350_media,wp360_revisions,wp360_locks,wp390_widgets'),
(13,1,'show_welcome_panel','0'),
(14,1,'wp_dashboard_quick_press_last_post_id','24'),
(15,1,'wp_user-settings','libraryContent=browse'),
(16,1,'wp_user-settings-time','1705088725'),
(17,2,'nickname','jobposter'),
(18,2,'first_name',''),
(19,2,'last_name',''),
(20,2,'description',''),
(21,2,'rich_editing','true'),
(22,2,'comment_shortcuts','false'),
(23,2,'admin_color','fresh'),
(24,2,'use_ssl','0'),
(25,2,'show_admin_bar_front','true'),
(26,2,'wp_capabilities','a:1:{s:6:\"author\";b:1;}'),
(27,2,'wp_user_level','2'),
(28,2,'dismissed_wp_pointers','wp350_media,wp360_revisions,wp360_locks,wp390_widgets'),
(29,1,'managenav-menuscolumnshidden','a:4:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(30,1,'metaboxhidden_nav-menus','a:4:{i:0;s:8:\"add-post\";i:1;s:7:\"add-job\";i:2;s:12:\"add-post_tag\";i:3;s:16:\"add-job_category\";}'),
(31,1,'nav_menu_recently_edited','10'),
(32,1,'session_tokens','a:1:{s:64:\"cb27c4aad93762c60d6fd5d4ebda937f956a50607105c561e56a85518d40bd71\";a:4:{s:10:\"expiration\";i:1705261519;s:2:\"ip\";s:11:\"172.30.24.1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36\";s:5:\"login\";i:1705088719;}}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES
(1,'admin','$P$BnbYulz7wZ0dBNkkf9skIuHUH8vDpS.','admin','foo@example.org','','2014-06-24 07:30:36','',0,'admin'),
(2,'jobposter','$P$BSPq6SL8Sife99N/vqzqylwOOhDDju0','jobposter','jobposter@example.org','','2014-06-24 08:02:57','',0,'jobposter');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-12 19:47:16
