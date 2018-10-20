-- MySQL dump 10.13  Distrib 5.6.24, for Win32 (x86)
--
-- Host: localhost    Database: wordpress-boilerplate
-- ------------------------------------------------------
-- Server version	5.6.24

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
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_ewwwio_images`
--

DROP TABLE IF EXISTS `wp_ewwwio_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_ewwwio_images` (
  `id` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `attachment_id` bigint(20) unsigned DEFAULT NULL,
  `gallery` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resize` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `converted` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `results` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_size` int(10) unsigned DEFAULT NULL,
  `orig_size` int(10) unsigned DEFAULT NULL,
  `backup` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(5) unsigned DEFAULT NULL,
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `updates` int(5) unsigned DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT '1970-12-31 22:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `trace` blob,
  UNIQUE KEY `id` (`id`),
  KEY `path_image_size` (`path`(191),`image_size`),
  KEY `attachment_info` (`gallery`(3),`attachment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_ewwwio_images`
--

LOCK TABLES `wp_ewwwio_images` WRITE;
/*!40000 ALTER TABLE `wp_ewwwio_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_ewwwio_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1654 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://localhost/wordpress-boilerplate','yes'),(2,'home','http://localhost/wordpress-boilerplate','yes'),(3,'blogname','wordpress-boilerplate','yes'),(4,'blogdescription','Just another WordPress site','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','info@entropiabloc.gr','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','10','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','1','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','F j, Y','yes'),(24,'time_format','g:i a','yes'),(25,'links_updated_date_format','F j, Y g:i a','yes'),(26,'comment_moderation','','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:7:{i:0;s:21:\"polylang/polylang.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:27:\"autoptimize/autoptimize.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:45:\"ewww-image-optimizer/ewww-image-optimizer.php\";i:5;s:25:\"timber-library/timber.php\";i:6;s:27:\"updraftplus/updraftplus.php\";}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','a:3:{i:0;s:74:\"C:\\xampp\\htdocs\\wordpress-boilerplate/wp-content/themes/entropia/style.css\";i:1;s:96:\"C:\\xampp\\htdocs\\wordpress-boilerplate/wp-content/themes/timber-foundation-theme-master/style.css\";i:2;s:0:\"\";}','no'),(40,'template','dwTwig','yes'),(41,'stylesheet','dwTwig','yes'),(42,'comment_whitelist','1','yes'),(43,'blacklist_keys','','no'),(44,'comment_registration','','yes'),(45,'html_type','text/html','yes'),(46,'use_trackback','0','yes'),(47,'default_role','subscriber','yes'),(48,'db_version','38590','yes'),(49,'uploads_use_yearmonth_folders','1','yes'),(50,'upload_path','','yes'),(51,'blog_public','1','yes'),(52,'default_link_category','2','yes'),(53,'show_on_front','page','yes'),(54,'tag_base','','yes'),(55,'show_avatars','1','yes'),(56,'avatar_rating','G','yes'),(57,'upload_url_path','','yes'),(58,'thumbnail_size_w','150','yes'),(59,'thumbnail_size_h','150','yes'),(60,'thumbnail_crop','1','yes'),(61,'medium_size_w','300','yes'),(62,'medium_size_h','300','yes'),(63,'avatar_default','retro','yes'),(64,'large_size_w','1024','yes'),(65,'large_size_h','1024','yes'),(66,'image_default_link_type','none','yes'),(67,'image_default_size','','yes'),(68,'image_default_align','','yes'),(69,'close_comments_for_old_posts','','yes'),(70,'close_comments_days_old','14','yes'),(71,'thread_comments','1','yes'),(72,'thread_comments_depth','5','yes'),(73,'page_comments','','yes'),(74,'comments_per_page','50','yes'),(75,'default_comments_page','newest','yes'),(76,'comment_order','asc','yes'),(77,'sticky_posts','a:0:{}','yes'),(78,'widget_categories','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(81,'uninstall_plugins','a:2:{s:45:\"ewww-image-optimizer/ewww-image-optimizer.php\";s:30:\"ewww_image_optimizer_uninstall\";s:27:\"autoptimize/autoptimize.php\";s:21:\"autoptimize_uninstall\";}','no'),(82,'timezone_string','Europe/Athens','yes'),(83,'page_for_posts','0','yes'),(84,'page_on_front','37','yes'),(85,'default_post_format','0','yes'),(86,'link_manager_enabled','0','yes'),(87,'finished_splitting_shared_terms','1','yes'),(88,'site_icon','0','yes'),(89,'medium_large_size_w','768','yes'),(90,'medium_large_size_h','0','yes'),(91,'initial_db_version','38590','yes'),(92,'wp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:117:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:45:\"slideshow-jquery-image-gallery-add-slideshows\";b:1;s:46:\"slideshow-jquery-image-gallery-edit-slideshows\";b:1;s:48:\"slideshow-jquery-image-gallery-delete-slideshows\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:45:\"slideshow-jquery-image-gallery-add-slideshows\";b:1;s:46:\"slideshow-jquery-image-gallery-edit-slideshows\";b:1;s:48:\"slideshow-jquery-image-gallery-delete-slideshows\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:13:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:45:\"slideshow-jquery-image-gallery-add-slideshows\";b:1;s:46:\"slideshow-jquery-image-gallery-edit-slideshows\";b:1;s:48:\"slideshow-jquery-image-gallery-delete-slideshows\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}','yes'),(93,'fresh_site','0','yes'),(94,'widget_search','a:2:{i:3;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(95,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(96,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(97,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(98,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(99,'sidebars_widgets','a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:6:\"navbar\";a:1:{i:0;s:8:\"search-3\";}s:7:\"footer1\";a:0:{}s:7:\"footer2\";a:0:{}s:7:\"footer3\";a:0:{}s:7:\"footer4\";a:0:{}s:7:\"footer5\";a:0:{}s:7:\"langbar\";a:0:{}s:13:\"array_version\";i:3;}','yes'),(100,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(101,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(102,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(103,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(104,'cron','a:9:{i:1540034997;a:1:{s:21:\"wordfence_hourly_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1540035033;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1540042197;a:1:{s:20:\"wordfence_daily_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1540064678;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1540107899;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1540112901;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1540115311;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1540118433;a:1:{s:15:\"ao_cachechecker\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),(105,'theme_mods_twentyseventeen','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1490089405;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}','yes'),(118,'can_compress_scripts','1','no'),(136,'recently_activated','a:1:{s:27:\"woocommerce/woocommerce.php\";i:1537789453;}','yes'),(141,'current_theme','dwTwig','yes'),(142,'theme_mods_entropia','a:4:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:9:\"menu_main\";i:0;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1537787595;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:6:\"navbar\";a:1:{i:0;s:8:\"search-3\";}s:7:\"footer1\";a:0:{}s:7:\"footer2\";a:0:{}s:7:\"footer3\";a:0:{}s:7:\"footer4\";a:0:{}s:7:\"footer5\";a:0:{}s:7:\"langbar\";a:0:{}}}}','yes'),(143,'theme_switched','','yes'),(144,'theme_mods_starter-theme-master','a:3:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1490089395;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:18:\"orphaned_widgets_1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes'),(153,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes'),(185,'slideshow-plugin-updated-from-v1-x-x-to-v2-0-1','updated','no'),(186,'slideshow-plugin-updated-from-v2-to-v2-1-20','updated','no'),(187,'slideshow-jquery-image-gallery-updated-from-v2-1-20-to-v2-1-22','updated','no'),(188,'slideshow-jquery-image-gallery-updated-from-v2-1-20-to-v2-1-23','updated','no'),(189,'slideshow-jquery-image-gallery-updated-from-v2-1-23-to-v2-2-0','updated','no'),(190,'slideshow-jquery-image-gallery-updated-from-v2-2-0-to-v2-2-8','updated','no'),(191,'slideshow-jquery-image-gallery-updated-from-v2-2-8-to-v2-2-12','updated','no'),(192,'slideshow-jquery-image-gallery-updated-from-v2-2-12-to-v2-2-16','updated','no'),(193,'slideshow-jquery-image-gallery-updated-from-v2-2-16-to-v2-2-17','updated','no'),(194,'slideshow-jquery-image-gallery-updated-from-v2-2-17-to-v2-2-20','updated','no'),(195,'slideshow-jquery-image-gallery-plugin-version','2.3.1','yes'),(196,'widget_slideshowwidget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(210,'WPLANG','','yes'),(213,'theme_mods_timber-foundation-theme-master','a:3:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1490271981;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"Sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes'),(222,'acf_version','5.6.2','yes'),(254,'wordfence_version','6.3.5','yes'),(262,'polylang','a:15:{s:7:\"browser\";b:0;s:7:\"rewrite\";i:1;s:12:\"hide_default\";i:0;s:10:\"force_lang\";i:0;s:13:\"redirect_lang\";i:0;s:13:\"media_support\";b:0;s:9:\"uninstall\";i:0;s:4:\"sync\";a:0:{}s:10:\"post_types\";a:0:{}s:10:\"taxonomies\";a:0:{}s:7:\"domains\";a:0:{}s:7:\"version\";s:6:\"2.3.10\";s:16:\"previous_version\";s:5:\"2.3.7\";s:12:\"default_lang\";s:2:\"el\";s:9:\"nav_menus\";a:1:{s:8:\"entropia\";a:1:{s:9:\"menu_main\";a:1:{s:2:\"el\";i:0;}}}}','yes'),(263,'polylang_wpml_strings','a:0:{}','yes'),(264,'widget_polylang','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(418,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(419,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(420,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(421,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(438,'wpcf7','a:2:{s:7:\"version\";s:5:\"5.0.4\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1505135226;s:7:\"version\";s:3:\"4.9\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}','yes'),(560,'widget_wpb_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(595,'ewww_image_optimizer_background_optimization','1','yes'),(599,'ewww_image_optimizer_disable_pngout','1','no'),(600,'ewww_image_optimizer_optipng_level','2','no'),(601,'ewww_image_optimizer_pngout_level','2','no'),(602,'ewww_image_optimizer_jpegtran_copy','1','no'),(603,'ewww_image_optimizer_jpg_level','10','no'),(604,'ewww_image_optimizer_png_level','10','no'),(605,'ewww_image_optimizer_gif_level','10','no'),(606,'ewww_image_optimizer_pdf_level','0','no'),(607,'ewww_image_optimizer_version','432.0','yes'),(608,'ewww_image_optimizer_tracking_notice','1','yes'),(611,'ewww_image_optimizer_enable_help_notice','1','yes'),(612,'ewww_image_optimizer_backup_files','','no'),(613,'ewww_image_optimizer_cloud_key','','yes'),(614,'ewww_image_optimizer_jpg_quality','','yes'),(615,'ewww_image_optimizer_aux_paths','','yes'),(616,'ewww_image_optimizer_exclude_paths','','yes'),(617,'ewww_image_optimizer_maxmediawidth','0','yes'),(618,'ewww_image_optimizer_maxmediaheight','0','yes'),(619,'ewww_image_optimizer_maxotherwidth','0','yes'),(620,'ewww_image_optimizer_maxotherheight','0','yes'),(621,'ewww_image_optimizer_disable_resizes','','yes'),(622,'ewww_image_optimizer_disable_resizes_opt','','yes'),(623,'ewww_image_optimizer_allow_tracking','','yes'),(624,'ewww_image_optimizer_jpg_background','','yes'),(625,'ewww_image_optimizer_webp_paths','','yes'),(806,'rewrite_rules','a:170:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:53:\"(el|en)/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:48:\"(el|en)/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:29:\"(el|en)/type/([^/]+)/embed/?$\";s:61:\"index.php?lang=$matches[1]&post_format=$matches[2]&embed=true\";s:41:\"(el|en)/type/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&post_format=$matches[2]&paged=$matches[3]\";s:23:\"(el|en)/type/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&post_format=$matches[2]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:40:\"(el|en)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:35:\"(el|en)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:16:\"(el|en)/embed/?$\";s:38:\"index.php?lang=$matches[1]&&embed=true\";s:28:\"(el|en)/page/?([0-9]{1,})/?$\";s:45:\"index.php?lang=$matches[1]&&paged=$matches[2]\";s:35:\"(el|en)/comment-page-([0-9]{1,})/?$\";s:56:\"index.php?lang=$matches[1]&&page_id=37&cpage=$matches[2]\";s:25:\"(el|en)/wc-api(/(.*))?/?$\";s:46:\"index.php?lang=$matches[1]&&wc-api=$matches[3]\";s:10:\"(el|en)/?$\";s:26:\"index.php?lang=$matches[1]\";s:49:\"(el|en)/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:44:\"(el|en)/comments/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:25:\"(el|en)/comments/embed/?$\";s:38:\"index.php?lang=$matches[1]&&embed=true\";s:34:\"(el|en)/comments/wc-api(/(.*))?/?$\";s:46:\"index.php?lang=$matches[1]&&wc-api=$matches[3]\";s:52:\"(el|en)/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:47:\"(el|en)/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:28:\"(el|en)/search/(.+)/embed/?$\";s:51:\"index.php?lang=$matches[1]&s=$matches[2]&embed=true\";s:40:\"(el|en)/search/(.+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?lang=$matches[1]&s=$matches[2]&paged=$matches[3]\";s:37:\"(el|en)/search/(.+)/wc-api(/(.*))?/?$\";s:59:\"index.php?lang=$matches[1]&s=$matches[2]&wc-api=$matches[4]\";s:22:\"(el|en)/search/(.+)/?$\";s:40:\"index.php?lang=$matches[1]&s=$matches[2]\";s:55:\"(el|en)/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:50:\"(el|en)/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:31:\"(el|en)/author/([^/]+)/embed/?$\";s:61:\"index.php?lang=$matches[1]&author_name=$matches[2]&embed=true\";s:43:\"(el|en)/author/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&author_name=$matches[2]&paged=$matches[3]\";s:40:\"(el|en)/author/([^/]+)/wc-api(/(.*))?/?$\";s:69:\"index.php?lang=$matches[1]&author_name=$matches[2]&wc-api=$matches[4]\";s:25:\"(el|en)/author/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&author_name=$matches[2]\";s:77:\"(el|en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:72:\"(el|en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:53:\"(el|en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:91:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&embed=true\";s:65:\"(el|en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:98:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&paged=$matches[5]\";s:62:\"(el|en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:99:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&wc-api=$matches[6]\";s:47:\"(el|en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:80:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]\";s:64:\"(el|en)/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:59:\"(el|en)/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:40:\"(el|en)/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:75:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&embed=true\";s:52:\"(el|en)/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:82:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&paged=$matches[4]\";s:49:\"(el|en)/([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:83:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&wc-api=$matches[5]\";s:34:\"(el|en)/([0-9]{4})/([0-9]{1,2})/?$\";s:64:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]\";s:51:\"(el|en)/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:46:\"(el|en)/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:27:\"(el|en)/([0-9]{4})/embed/?$\";s:54:\"index.php?lang=$matches[1]&year=$matches[2]&embed=true\";s:39:\"(el|en)/([0-9]{4})/page/?([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&year=$matches[2]&paged=$matches[3]\";s:36:\"(el|en)/([0-9]{4})/wc-api(/(.*))?/?$\";s:62:\"index.php?lang=$matches[1]&year=$matches[2]&wc-api=$matches[4]\";s:21:\"(el|en)/([0-9]{4})/?$\";s:43:\"index.php?lang=$matches[1]&year=$matches[2]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes'),(910,'autoptimize_version','2.3.0','yes'),(1143,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(1208,'updraftplus_dismissedautobackup','1525698958','yes'),(1260,'updraftplus_dismisseddashnotice','1553333956','yes'),(1275,'exactdn_all_the_things','1','no'),(1345,'category_children','a:0:{}','yes'),(1401,'new_admin_email','info@entropiabloc.gr','yes'),(1462,'theme_mods_dwTwig','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"menu_main\";i:0;}s:18:\"custom_css_post_id\";i:-1;}','yes'),(1471,'ewww_image_optimizer_bulk_attachments','','no'),(1472,'ewww_image_optimizer_flag_attachments','','no'),(1473,'ewww_image_optimizer_ngg_attachments','','no'),(1483,'updraftplus_tour_cancelled_on','intro','yes'),(1491,'woocommerce_store_address','','yes'),(1492,'woocommerce_store_address_2','','yes'),(1493,'woocommerce_store_city','','yes'),(1494,'woocommerce_default_country','GB','yes'),(1495,'woocommerce_store_postcode','','yes'),(1496,'woocommerce_allowed_countries','all','yes'),(1497,'woocommerce_all_except_countries','','yes'),(1498,'woocommerce_specific_allowed_countries','','yes'),(1499,'woocommerce_ship_to_countries','','yes'),(1500,'woocommerce_specific_ship_to_countries','','yes'),(1501,'woocommerce_default_customer_address','geolocation','yes'),(1502,'woocommerce_calc_taxes','no','yes'),(1503,'woocommerce_enable_coupons','yes','yes'),(1504,'woocommerce_calc_discounts_sequentially','no','no'),(1505,'woocommerce_currency','GBP','yes'),(1506,'woocommerce_currency_pos','left','yes'),(1507,'woocommerce_price_thousand_sep',',','yes'),(1508,'woocommerce_price_decimal_sep','.','yes'),(1509,'woocommerce_price_num_decimals','2','yes'),(1510,'woocommerce_shop_page_id','','yes'),(1511,'woocommerce_cart_redirect_after_add','no','yes'),(1512,'woocommerce_enable_ajax_add_to_cart','yes','yes'),(1513,'woocommerce_weight_unit','kg','yes'),(1514,'woocommerce_dimension_unit','cm','yes'),(1515,'woocommerce_enable_reviews','yes','yes'),(1516,'woocommerce_review_rating_verification_label','yes','no'),(1517,'woocommerce_review_rating_verification_required','no','no'),(1518,'woocommerce_enable_review_rating','yes','yes'),(1519,'woocommerce_review_rating_required','yes','no'),(1520,'woocommerce_manage_stock','yes','yes'),(1521,'woocommerce_hold_stock_minutes','60','no'),(1522,'woocommerce_notify_low_stock','yes','no'),(1523,'woocommerce_notify_no_stock','yes','no'),(1524,'woocommerce_stock_email_recipient','info@entropiabloc.gr','no'),(1525,'woocommerce_notify_low_stock_amount','2','no'),(1526,'woocommerce_notify_no_stock_amount','0','yes'),(1527,'woocommerce_hide_out_of_stock_items','no','yes'),(1528,'woocommerce_stock_format','','yes'),(1529,'woocommerce_file_download_method','force','no'),(1530,'woocommerce_downloads_require_login','no','no'),(1531,'woocommerce_downloads_grant_access_after_payment','yes','no'),(1532,'woocommerce_prices_include_tax','no','yes'),(1533,'woocommerce_tax_based_on','shipping','yes'),(1534,'woocommerce_shipping_tax_class','inherit','yes'),(1535,'woocommerce_tax_round_at_subtotal','no','yes'),(1536,'woocommerce_tax_classes','Reduced rate\r\nZero rate','yes'),(1537,'woocommerce_tax_display_shop','excl','yes'),(1538,'woocommerce_tax_display_cart','excl','yes'),(1539,'woocommerce_price_display_suffix','','yes'),(1540,'woocommerce_tax_total_display','itemized','no'),(1541,'woocommerce_enable_shipping_calc','yes','no'),(1542,'woocommerce_shipping_cost_requires_address','no','yes'),(1543,'woocommerce_ship_to_destination','billing','no'),(1544,'woocommerce_shipping_debug_mode','no','yes'),(1545,'woocommerce_enable_guest_checkout','yes','no'),(1546,'woocommerce_enable_checkout_login_reminder','no','no'),(1547,'woocommerce_enable_signup_and_login_from_checkout','no','no'),(1548,'woocommerce_enable_myaccount_registration','no','no'),(1549,'woocommerce_registration_generate_username','yes','no'),(1550,'woocommerce_registration_generate_password','yes','no'),(1551,'woocommerce_erasure_request_removes_order_data','no','no'),(1552,'woocommerce_erasure_request_removes_download_data','no','no'),(1553,'wp_page_for_privacy_policy','','yes'),(1554,'woocommerce_registration_privacy_policy_text','Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].','yes'),(1555,'woocommerce_checkout_privacy_policy_text','Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].','yes'),(1556,'woocommerce_delete_inactive_accounts','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}','no'),(1557,'woocommerce_trash_pending_orders','','no'),(1558,'woocommerce_trash_failed_orders','','no'),(1559,'woocommerce_trash_cancelled_orders','','no'),(1560,'woocommerce_anonymize_completed_orders','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}','no'),(1561,'woocommerce_email_from_name','wordpress-boilerplate','no'),(1562,'woocommerce_email_from_address','info@entropiabloc.gr','no'),(1563,'woocommerce_email_header_image','','no'),(1564,'woocommerce_email_footer_text','{site_title}','no'),(1565,'woocommerce_email_base_color','#96588a','no'),(1566,'woocommerce_email_background_color','#f7f7f7','no'),(1567,'woocommerce_email_body_background_color','#ffffff','no'),(1568,'woocommerce_email_text_color','#3c3c3c','no'),(1569,'woocommerce_cart_page_id','','yes'),(1570,'woocommerce_checkout_page_id','','yes'),(1571,'woocommerce_myaccount_page_id','','yes'),(1572,'woocommerce_terms_page_id','','no'),(1573,'woocommerce_force_ssl_checkout','no','yes'),(1574,'woocommerce_unforce_ssl_checkout','no','yes'),(1575,'woocommerce_checkout_pay_endpoint','order-pay','yes'),(1576,'woocommerce_checkout_order_received_endpoint','order-received','yes'),(1577,'woocommerce_myaccount_add_payment_method_endpoint','add-payment-method','yes'),(1578,'woocommerce_myaccount_delete_payment_method_endpoint','delete-payment-method','yes'),(1579,'woocommerce_myaccount_set_default_payment_method_endpoint','set-default-payment-method','yes'),(1580,'woocommerce_myaccount_orders_endpoint','orders','yes'),(1581,'woocommerce_myaccount_view_order_endpoint','view-order','yes'),(1582,'woocommerce_myaccount_downloads_endpoint','downloads','yes'),(1583,'woocommerce_myaccount_edit_account_endpoint','edit-account','yes'),(1584,'woocommerce_myaccount_edit_address_endpoint','edit-address','yes'),(1585,'woocommerce_myaccount_payment_methods_endpoint','payment-methods','yes'),(1586,'woocommerce_myaccount_lost_password_endpoint','lost-password','yes'),(1587,'woocommerce_logout_endpoint','customer-logout','yes'),(1588,'woocommerce_api_enabled','no','yes'),(1589,'woocommerce_single_image_width','600','yes'),(1590,'woocommerce_thumbnail_image_width','300','yes'),(1591,'woocommerce_checkout_highlight_required_fields','yes','yes'),(1592,'woocommerce_demo_store','no','no'),(1593,'woocommerce_permalinks','a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}','yes'),(1594,'current_theme_supports_woocommerce','no','yes'),(1595,'woocommerce_queue_flush_rewrite_rules','no','yes'),(1596,'_transient_wc_attribute_taxonomies','a:0:{}','yes'),(1597,'product_cat_children','a:0:{}','yes'),(1598,'default_product_cat','49','yes'),(1601,'woocommerce_version','3.4.5','yes'),(1602,'woocommerce_db_version','3.4.5','yes'),(1603,'woocommerce_admin_notices','a:1:{i:0;s:7:\"install\";}','yes'),(1604,'_transient_woocommerce_webhook_ids','a:0:{}','yes'),(1605,'widget_woocommerce_widget_cart','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(1606,'widget_woocommerce_layered_nav_filters','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(1607,'widget_woocommerce_layered_nav','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(1608,'widget_woocommerce_price_filter','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(1609,'widget_woocommerce_product_categories','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(1610,'widget_woocommerce_product_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(1611,'widget_woocommerce_product_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(1612,'widget_woocommerce_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(1613,'widget_woocommerce_recently_viewed_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(1614,'widget_woocommerce_top_rated_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(1615,'widget_woocommerce_recent_reviews','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(1616,'widget_woocommerce_rating_filter','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(1621,'_transient_wc_count_comments','O:8:\"stdClass\":7:{s:14:\"total_comments\";i:0;s:3:\"all\";i:0;s:9:\"moderated\";i:0;s:8:\"approved\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}','yes'),(1629,'woocommerce_meta_box_errors','a:0:{}','yes'),(1635,'_transient_timeout_wc_low_stock_count','1540381359','no'),(1636,'_transient_wc_low_stock_count','0','no'),(1637,'_transient_timeout_wc_outofstock_count','1540381359','no'),(1638,'_transient_wc_outofstock_count','0','no'),(1646,'_site_transient_timeout_theme_roots','1540034853','no'),(1647,'_site_transient_theme_roots','a:1:{s:6:\"dwTwig\";s:7:\"/themes\";}','no'),(1649,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1540033056;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-08 10:19:50\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/el.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-19 05:41:30\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_GB.zip\";s:10:\"autoupdate\";b:1;}}}','no'),(1650,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1540033057;s:7:\"checked\";a:1:{s:6:\"dwTwig\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no'),(1651,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1540033058;s:7:\"checked\";a:11:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.6.2\";s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:27:\"autoptimize/autoptimize.php\";s:5:\"2.3.4\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.4\";s:45:\"ewww-image-optimizer/ewww-image-optimizer.php\";s:5:\"4.3.2\";s:21:\"polylang/polylang.php\";s:6:\"2.3.10\";s:25:\"timber-library/timber.php\";s:5:\"1.7.1\";s:27:\"updraftplus/updraftplus.php\";s:6:\"1.15.2\";s:23:\"wordfence/wordfence.php\";s:6:\"7.1.12\";s:27:\"wp-super-cache/wp-cache.php\";s:5:\"1.6.4\";s:24:\"wordpress-seo/wp-seo.php\";s:5:\"8.2.1\";}s:8:\"response\";a:7:{s:27:\"autoptimize/autoptimize.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/autoptimize\";s:4:\"slug\";s:11:\"autoptimize\";s:6:\"plugin\";s:27:\"autoptimize/autoptimize.php\";s:11:\"new_version\";s:5:\"2.4.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/autoptimize/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/autoptimize.2.4.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:64:\"https://ps.w.org/autoptimize/assets/icon-128x128.png?rev=1864142\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/autoptimize/assets/banner-772x250.jpg?rev=1315920\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";s:3:\"5.3\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:45:\"ewww-image-optimizer/ewww-image-optimizer.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:34:\"w.org/plugins/ewww-image-optimizer\";s:4:\"slug\";s:20:\"ewww-image-optimizer\";s:6:\"plugin\";s:45:\"ewww-image-optimizer/ewww-image-optimizer.php\";s:11:\"new_version\";s:5:\"4.4.2\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/ewww-image-optimizer/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/ewww-image-optimizer.4.4.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/ewww-image-optimizer/assets/icon-256x256.png?rev=1582276\";s:2:\"1x\";s:73:\"https://ps.w.org/ewww-image-optimizer/assets/icon-128x128.png?rev=1582276\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/ewww-image-optimizer/assets/banner-1544x500.jpg?rev=1582276\";s:2:\"1x\";s:75:\"https://ps.w.org/ewww-image-optimizer/assets/banner-772x250.jpg?rev=1582276\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";s:3:\"5.5\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:21:\"polylang/polylang.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:22:\"w.org/plugins/polylang\";s:4:\"slug\";s:8:\"polylang\";s:6:\"plugin\";s:21:\"polylang/polylang.php\";s:11:\"new_version\";s:6:\"2.3.11\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/polylang/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/polylang.2.3.11.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/polylang/assets/icon-256x256.png?rev=1331499\";s:2:\"1x\";s:61:\"https://ps.w.org/polylang/assets/icon-128x128.png?rev=1331499\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/polylang/assets/banner-1544x500.png?rev=1405299\";s:2:\"1x\";s:63:\"https://ps.w.org/polylang/assets/banner-772x250.png?rev=1405299\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:25:\"timber-library/timber.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/timber-library\";s:4:\"slug\";s:14:\"timber-library\";s:6:\"plugin\";s:25:\"timber-library/timber.php\";s:11:\"new_version\";s:5:\"1.8.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/timber-library/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/timber-library.1.8.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/timber-library/assets/icon-256x256.png?rev=1482054\";s:2:\"1x\";s:67:\"https://ps.w.org/timber-library/assets/icon-128x128.png?rev=1482055\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/timber-library/assets/banner-1544x500.jpg?rev=1481635\";s:2:\"1x\";s:69:\"https://ps.w.org/timber-library/assets/banner-772x250.jpg?rev=1481619\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:23:\"wordfence/wordfence.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:23:\"w.org/plugins/wordfence\";s:4:\"slug\";s:9:\"wordfence\";s:6:\"plugin\";s:23:\"wordfence/wordfence.php\";s:11:\"new_version\";s:6:\"7.1.16\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/wordfence/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/wordfence.7.1.16.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/wordfence/assets/icon-256x256.png?rev=1457724\";s:2:\"1x\";s:62:\"https://ps.w.org/wordfence/assets/icon-128x128.png?rev=1457724\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wordfence/assets/banner-1544x500.png?rev=1808795\";s:2:\"1x\";s:64:\"https://ps.w.org/wordfence/assets/banner-772x250.png?rev=1808795\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";s:3:\"5.3\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:3:\"8.4\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/wordpress-seo.8.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.7.7\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:5:\"4.9.9\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"contact-form-7\";s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.0.4\";s:7:\"updated\";s:19:\"2018-10-04 12:56:40\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/translation/plugin/contact-form-7/5.0.4/en_GB.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"wp-super-cache\";s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"1.6.4\";s:7:\"updated\";s:19:\"2018-10-04 13:46:25\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/translation/plugin/wp-super-cache/1.6.4/en_GB.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"updraftplus/updraftplus.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/updraftplus\";s:4:\"slug\";s:11:\"updraftplus\";s:6:\"plugin\";s:27:\"updraftplus/updraftplus.php\";s:11:\"new_version\";s:6:\"1.15.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/updraftplus/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/updraftplus.1.15.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/updraftplus/assets/icon-256x256.jpg?rev=1686200\";s:2:\"1x\";s:64:\"https://ps.w.org/updraftplus/assets/icon-128x128.jpg?rev=1686200\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/updraftplus/assets/banner-1544x500.png?rev=1686200\";s:2:\"1x\";s:66:\"https://ps.w.org/updraftplus/assets/banner-772x250.png?rev=1686200\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"wp-super-cache/wp-cache.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/wp-super-cache\";s:4:\"slug\";s:14:\"wp-super-cache\";s:6:\"plugin\";s:27:\"wp-super-cache/wp-cache.php\";s:11:\"new_version\";s:5:\"1.6.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-super-cache/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wp-super-cache.1.6.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-super-cache/assets/icon-256x256.png?rev=1095422\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-super-cache/assets/icon-128x128.png?rev=1095422\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wp-super-cache/assets/banner-1544x500.png?rev=1082414\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-super-cache/assets/banner-772x250.png?rev=1082414\";}s:11:\"banners_rtl\";a:0:{}}}}','no'),(1653,'_transient_pll_languages_list','a:2:{i:0;a:26:{s:7:\"term_id\";i:8;s:4:\"name\";s:16:\"Ελληνικά\";s:4:\"slug\";s:2:\"el\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:8;s:8:\"taxonomy\";s:8:\"language\";s:11:\"description\";s:2:\"el\";s:6:\"parent\";i:0;s:5:\"count\";i:5;s:10:\"tl_term_id\";i:9;s:19:\"tl_term_taxonomy_id\";i:9;s:8:\"tl_count\";i:3;s:6:\"locale\";R:9;s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:2:\"el\";s:8:\"facebook\";s:5:\"el_GR\";s:8:\"flag_url\";s:79:\"http://localhost/wordpress-boilerplate/wp-content/plugins/polylang/flags/gr.png\";s:4:\"flag\";s:736:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAF5SURBVHjaYuS1P8rAwHBimgCQNMl4x/CP8fuvvwy//oHRHyj5A4jAIv//AAQQC1Cdk4mAlpbW////XUyvM/z/v6ZT4/9/hv9ACRAFwSDw7z/Dg0fPAAKI8dGjR7KysiBxMAAyjp5/D5T7B1TxD6zuH5TNycF0eNcTgABigSiCqwaSF25///vv35+////+BZF//vz/A+T//S8kwFI/5QpAADGyWx92Mxfa2KMJVO2UdQVo0rYJWlBXMECdArGJiYnp1q1HAAHE8ucXzI0QN/z775Zz5R/EJf/+QxFI+D8PJ8uFQ3cBAojxxYs3IiICSAYiM/7BMdC9QBvu3XsIEEAs6w99sdBl/vbz33+YSf8hZsMcA1QMYXBxMB/Z9QUggFgOnnmhJMP74cuvv0Bf/gN5FM74B+ECPfwPJCLEy9q56SZAADHevP9RVIgd5A5I8IGdwwD1KMKFDCC/MJw6ewsggBgZxDdDI/LnPwaGPxjoHxj9AQc7iAQIMADrG2tQp2zGfgAAAABJRU5ErkJggg==\" title=\"Ελληνικά\" alt=\"Ελληνικά\" />\";s:8:\"home_url\";s:76:\"http://localhost/wordpress-boilerplate/%ce%b1%cf%81%cf%87%ce%b9%ce%ba%ce%ae/\";s:10:\"search_url\";s:42:\"http://localhost/wordpress-boilerplate/el/\";s:4:\"host\";N;s:5:\"mo_id\";s:2:\"56\";s:13:\"page_on_front\";i:37;s:14:\"page_for_posts\";b:0;s:6:\"filter\";s:3:\"raw\";s:9:\"flag_code\";s:2:\"gr\";}i:1;a:26:{s:7:\"term_id\";i:31;s:4:\"name\";s:7:\"English\";s:4:\"slug\";s:2:\"en\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:31;s:8:\"taxonomy\";s:8:\"language\";s:11:\"description\";s:5:\"en_GB\";s:6:\"parent\";i:0;s:5:\"count\";i:1;s:10:\"tl_term_id\";i:32;s:19:\"tl_term_taxonomy_id\";i:32;s:8:\"tl_count\";i:1;s:6:\"locale\";R:35;s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:5:\"en-GB\";s:8:\"facebook\";s:5:\"en_GB\";s:8:\"flag_url\";s:79:\"http://localhost/wordpress-boilerplate/wp-content/plugins/polylang/flags/gb.png\";s:4:\"flag\";s:866:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAflJREFUeNpinDRzn5qN3uFDt16+YWBg+Pv339+KGN0rbVP+//2rW5tf0Hfy/2+mr99+yKpyOl3Ydt8njEWIn8f9zj639NC7j78eP//8739GVUUhNUNuhl8//ysKeZrJ/v7z10Zb2PTQTIY1XZO2Xmfad+f7XgkXxuUrVB6cjPVXef78JyMjA8PFuwyX7gAZj97+T2e9o3d4BWNp84K1NzubTjAB3fH0+fv6N3qP/ir9bW6ozNQCijB8/8zw/TuQ7r4/ndvN5mZgkpPXiis3Pv34+ZPh5t23//79Rwehof/9/NDEgMrOXHvJcrllgpoRN8PFOwy/fzP8+gUlgZI/f/5xcPj/69e/37//AUX+/mXRkN555gsOG2xt/5hZQMwF4r9///75++f3nz8nr75gSms82jfvQnT6zqvXPjC8e/srJQHo9P9fvwNtAHmG4f8zZ6dDc3bIyM2LTNlsbtfM9OPHH3FhtqUz3eXX9H+cOy9ZMB2o6t/Pn0DHMPz/b+2wXGTvPlPGFxdcD+mZyjP8+8MUE6sa7a/xo6Pykn1s4zdzIZ6///8zMGpKM2pKAB0jqy4UE7/msKat6Jw5mafrsxNtWZ6/fjvNLW29qv25pQd///n+5+/fxDDVbcc//P/zx/36m5Ub9zL8+7t66yEROcHK7q5bldMBAgwADcRBCuVLfoEAAAAASUVORK5CYII=\" title=\"English\" alt=\"English\" />\";s:8:\"home_url\";s:42:\"http://localhost/wordpress-boilerplate/en/\";s:10:\"search_url\";s:42:\"http://localhost/wordpress-boilerplate/en/\";s:4:\"host\";N;s:5:\"mo_id\";s:3:\"124\";s:13:\"page_on_front\";b:0;s:14:\"page_for_posts\";b:0;s:6:\"filter\";s:3:\"raw\";s:9:\"flag_code\";s:2:\"gb\";}}','yes');
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
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=476 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (65,21,'_edit_last','1'),(66,21,'_edit_lock','1490268216:1'),(67,22,'_wp_attached_file','2017/03/1.png'),(68,22,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:13:\"2017/03/1.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"1-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"1-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(69,23,'_wp_attached_file','2017/03/2.png'),(70,23,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:13:\"2017/03/2.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"2-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"2-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(71,21,'settings','a:26:{s:9:\"animation\";s:5:\"slide\";s:10:\"slideSpeed\";s:1:\"1\";s:16:\"descriptionSpeed\";s:3:\"0.4\";s:13:\"intervalSpeed\";s:1:\"5\";s:13:\"slidesPerView\";s:1:\"1\";s:8:\"maxWidth\";s:1:\"0\";s:11:\"aspectRatio\";s:3:\"3:1\";s:6:\"height\";s:3:\"600\";s:14:\"imageBehaviour\";s:7:\"stretch\";s:15:\"showDescription\";s:4:\"true\";s:15:\"hideDescription\";s:5:\"false\";s:27:\"preserveSlideshowDimensions\";s:5:\"false\";s:20:\"enableResponsiveness\";s:4:\"true\";s:4:\"play\";s:4:\"true\";s:4:\"loop\";s:4:\"true\";s:12:\"pauseOnHover\";s:4:\"true\";s:12:\"controllable\";s:4:\"true\";s:21:\"hideNavigationButtons\";s:4:\"true\";s:14:\"showPagination\";s:5:\"false\";s:14:\"hidePagination\";s:4:\"true\";s:12:\"controlPanel\";s:5:\"false\";s:16:\"hideControlPanel\";s:4:\"true\";s:15:\"waitUntilLoaded\";s:4:\"true\";s:15:\"showLoadingIcon\";s:4:\"true\";s:6:\"random\";s:5:\"false\";s:11:\"avoidFilter\";s:4:\"true\";}'),(72,21,'styleSettings','a:1:{s:5:\"style\";s:15:\"style-light.css\";}'),(73,21,'slides','a:2:{i:1;a:9:{s:17:\"titleElementTagID\";s:1:\"0\";s:5:\"title\";s:1:\"1\";s:23:\"descriptionElementTagID\";s:1:\"0\";s:11:\"description\";s:0:\"\";s:3:\"url\";s:0:\"\";s:9:\"urlTarget\";s:5:\"_self\";s:15:\"alternativeText\";s:0:\"\";s:4:\"type\";s:10:\"attachment\";s:6:\"postId\";s:2:\"22\";}i:2;a:9:{s:17:\"titleElementTagID\";s:1:\"0\";s:5:\"title\";s:1:\"2\";s:23:\"descriptionElementTagID\";s:1:\"0\";s:11:\"description\";s:0:\"\";s:3:\"url\";s:0:\"\";s:9:\"urlTarget\";s:5:\"_self\";s:15:\"alternativeText\";s:0:\"\";s:4:\"type\";s:10:\"attachment\";s:6:\"postId\";s:2:\"23\";}}'),(113,36,'_form','<label> Ονοματεπώνυμο (απαραίτητο)\n    [text* your-name] </label>\n\n<label> Email (απαραίτητο)\n    [email* your-email] </label>\n\n<label> Θέμα\n    [text your-subject] </label>\n\n<label> Μήνυμα\n    [textarea your-message] </label>\n\n[submit \"Αποστολή\"]'),(114,36,'_mail','a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:38:\"wordpress-boilerplate \"[your-subject]\"\";s:6:\"sender\";s:34:\"[your-name] <info@entropiabloc.gr>\";s:9:\"recipient\";s:20:\"info@entropiabloc.gr\";s:4:\"body\";s:198:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on wordpress-boilerplate (http://localhost/wordpress-boilerplate)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),(115,36,'_mail_2','a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:38:\"wordpress-boilerplate \"[your-subject]\"\";s:6:\"sender\";s:46:\"wordpress-boilerplate <entropiabloc@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:140:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on wordpress-boilerplate (http://localhost/wordpress-boilerplate)\";s:18:\"additional_headers\";s:32:\"Reply-To: entropiabloc@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),(116,36,'_messages','a:23:{s:12:\"mail_sent_ok\";s:87:\"Σας ευχαριστούμε για το μήνυμά σας. Έχει σταλεί.\";s:12:\"mail_sent_ng\";s:192:\"Παρουσιάστηκε σφάλμα κατά την προσπάθεια αποστολής του μηνύματός σας. Παρακαλώ δοκιμάστε ξανά αργότερα.\";s:16:\"validation_error\";s:153:\"Ένα ή περισσότερα πεδία έχουν ένα σφάλμα. Παρακαλούμε ελέγξτε και προσπαθήστε ξανά.\";s:4:\"spam\";s:192:\"Παρουσιάστηκε σφάλμα κατά την προσπάθεια αποστολής του μηνύματός σας. Παρακαλώ δοκιμάστε ξανά αργότερα.\";s:12:\"accept_terms\";s:151:\"Πρέπει να αποδεχτείτε τους όρους και τις προϋποθέσεις πριν στείλετε το μήνυμά σας.\";s:16:\"invalid_required\";s:31:\"Απαραίτητο πεδίο\";s:16:\"invalid_too_long\";s:49:\"Το πεδίο είναι πολύ μεγάλο.\";s:17:\"invalid_too_short\";s:47:\"Το πεδίο είναι πολύ μικρό.\";s:12:\"invalid_date\";s:67:\"Η μορφή ημερομηνίας είναι εσφαλμένη.\";s:14:\"date_too_early\";s:99:\"Η ημερομηνία είναι πριν από την πρώτη που επιτρέπεται.\";s:13:\"date_too_late\";s:93:\"Η ημερομηνία είναι μετά την τελευταία επιτρέπεται.\";s:13:\"upload_failed\";s:121:\"Παρουσιάστηκε ένα άγνωστο σφάλμα κατά τη μεταφόρτωση του αρχείου.\";s:24:\"upload_file_type_invalid\";s:100:\"Δεν επιτρέπεται η μεταφόρτωση αρχείων αυτού του τύπου.\";s:21:\"upload_file_too_large\";s:51:\"Το αρχείο είναι πολύ μεγάλο.\";s:23:\"upload_failed_php_error\";s:99:\"Παρουσιάστηκε σφάλμα κατά τη μεταφόρτωση του αρχείου.\";s:14:\"invalid_number\";s:60:\"Η μορφή αριθμού δεν είναι έγκυρη.\";s:16:\"number_too_small\";s:98:\"Ο αριθμός είναι μικρότερος από το ελάχιστο επιτρεπτό.\";s:16:\"number_too_large\";s:98:\"Ο αριθμός είναι μεγαλύτερος από το μέγιστο επιτρεπτό.\";s:23:\"quiz_answer_not_correct\";s:70:\"Η απάντηση στο κουίζ είναι λανθασμένη.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:132:\"Η διεύθυνση ηλεκτρονικού ταχυδρομείου που πληκτρολογήσατε είναι άκυρη.\";s:11:\"invalid_url\";s:57:\"Η διεύθυνση URL δεν είναι έγκυρη.\";s:11:\"invalid_tel\";s:70:\"Ο αριθμός τηλεφώνου δεν είναι έγκυρος.\";}'),(117,36,'_additional_settings',''),(118,36,'_locale','en_US'),(160,37,'_edit_lock','1510566218:1'),(161,37,'_edit_last','1'),(173,56,'_pll_strings_translations','a:7:{i:0;a:2:{i:0;s:7:\"contact\";i:1;s:7:\"contact\";}i:1;a:2:{i:0;s:8:\"view all\";i:1;s:18:\"Όλα τα νέα\";}i:2;a:2:{i:0;s:15:\"contact_details\";i:1;s:15:\"contact_details\";}i:3;a:2:{i:0;s:21:\"wordpress-boilerplate\";i:1;s:21:\"wordpress-boilerplate\";}i:4;a:2:{i:0;s:27:\"Just another WordPress site\";i:1;s:27:\"Just another WordPress site\";}i:5;a:2:{i:0;s:6:\"F j, Y\";i:1;s:6:\"F j, Y\";}i:6;a:2:{i:0;s:5:\"g:i a\";i:1;s:5:\"g:i a\";}}'),(289,37,'_wp_page_template','home.php'),(290,78,'_edit_last','1'),(291,78,'_edit_lock','1509537608:1'),(292,37,'slideshow_0_image','22'),(293,37,'_slideshow_0_image','field_59f9b5fa0e172'),(294,37,'slideshow_0_description',''),(295,37,'_slideshow_0_description','field_59f9b6040e173'),(296,37,'slideshow_1_image','23'),(297,37,'_slideshow_1_image','field_59f9b5fa0e172'),(298,37,'slideshow_1_description',''),(299,37,'_slideshow_1_description','field_59f9b6040e173'),(300,37,'slideshow','2'),(301,37,'_slideshow','field_59f9b5e00e171'),(302,82,'slideshow_0_image','22'),(303,82,'_slideshow_0_image','field_59f9b5fa0e172'),(304,82,'slideshow_0_description',''),(305,82,'_slideshow_0_description','field_59f9b6040e173'),(306,82,'slideshow_1_image','23'),(307,82,'_slideshow_1_image','field_59f9b5fa0e172'),(308,82,'slideshow_1_description',''),(309,82,'_slideshow_1_description','field_59f9b6040e173'),(310,82,'slideshow','2'),(311,82,'_slideshow','field_59f9b5e00e171'),(312,83,'_edit_last','1'),(313,83,'_wp_page_template','contact.php'),(314,83,'_edit_lock','1509545673:1'),(315,85,'_edit_last','1'),(316,85,'_edit_lock','1509540620:1'),(317,83,'map','a:3:{s:7:\"address\";s:33:\"Rigeou 2-8, Larisa 413 36, Greece\";s:3:\"lat\";s:17:\"39.65934697635157\";s:3:\"lng\";s:18:\"22.438910007476807\";}'),(318,83,'_map','field_59f9b8b830d82'),(319,87,'map','a:3:{s:7:\"address\";s:33:\"Rigeou 2-8, Larisa 413 36, Greece\";s:3:\"lat\";s:17:\"39.65934697635157\";s:3:\"lng\";s:18:\"22.438910007476807\";}'),(320,87,'_map','field_59f9b8b830d82'),(321,88,'_menu_item_type','post_type'),(322,88,'_menu_item_menu_item_parent','0'),(323,88,'_menu_item_object_id','83'),(324,88,'_menu_item_object','page'),(325,88,'_menu_item_target',''),(326,88,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(327,88,'_menu_item_xfn',''),(328,88,'_menu_item_url',''),(330,89,'_edit_last','1'),(331,89,'_edit_lock','1518442314:1'),(332,89,'_wp_page_template','news.php'),(333,91,'_menu_item_type','post_type'),(334,91,'_menu_item_menu_item_parent','0'),(335,91,'_menu_item_object_id','89'),(336,91,'_menu_item_object','page'),(337,91,'_menu_item_target',''),(338,91,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(339,91,'_menu_item_xfn',''),(340,91,'_menu_item_url',''),(342,92,'_edit_last','1'),(343,92,'_edit_lock','1518442331:1'),(344,94,'_form','<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),(345,94,'_mail','a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:38:\"wordpress-boilerplate \"[your-subject]\"\";s:6:\"sender\";s:34:\"[your-name] <info@entropiabloc.gr>\";s:9:\"recipient\";s:20:\"info@entropiabloc.gr\";s:4:\"body\";s:198:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on wordpress-boilerplate (http://localhost/wordpress-boilerplate)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),(346,94,'_mail_2','a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:38:\"wordpress-boilerplate \"[your-subject]\"\";s:6:\"sender\";s:46:\"wordpress-boilerplate <entropiabloc@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:140:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on wordpress-boilerplate (http://localhost/wordpress-boilerplate)\";s:18:\"additional_headers\";s:32:\"Reply-To: entropiabloc@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),(347,94,'_messages','a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),(348,94,'_additional_settings',''),(349,94,'_locale','en_US'),(467,121,'_edit_last','1'),(468,121,'_edit_lock','1526983782:1'),(469,121,'_wp_page_template','default'),(470,124,'_pll_strings_translations','a:0:{}'),(471,125,'_wp_page_template','default'),(472,125,'_edit_last','1'),(473,125,'_edit_lock','1526984933:1');
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
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (21,3,'2017-03-23 08:44:27','2017-03-23 08:44:27','','Slideshow','','publish','closed','closed','','slideshow','','','2017-03-23 09:01:10','2017-03-23 09:01:10','',0,'http://localhost/wordpress-boilerplate/?post_type=slideshow&#038;p=21',0,'slideshow','',0),(22,3,'2017-03-23 08:43:47','2017-03-23 08:43:47','','1','','inherit','open','closed','','1','','','2017-11-01 11:57:55','2017-11-01 11:57:55','',37,'http://localhost/wordpress-boilerplate/wp-content/uploads/2017/03/1.png',0,'attachment','image/png',0),(23,3,'2017-03-23 08:43:48','2017-03-23 08:43:48','','2','','inherit','open','closed','','2','','','2017-11-01 11:57:55','2017-11-01 11:57:55','',37,'http://localhost/wordpress-boilerplate/wp-content/uploads/2017/03/2.png',0,'attachment','image/png',0),(36,3,'2017-09-11 13:07:05','2017-09-11 13:07:05','<label> Ονοματεπώνυμο (απαραίτητο)\r\n    [text* your-name] </label>\r\n\r\n<label> Email (απαραίτητο)\r\n    [email* your-email] </label>\r\n\r\n<label> Θέμα\r\n    [text your-subject] </label>\r\n\r\n<label> Μήνυμα\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Αποστολή\"]\n1\nwordpress-boilerplate \"[your-subject]\"\n[your-name] <info@entropiabloc.gr>\ninfo@entropiabloc.gr\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on wordpress-boilerplate (http://localhost/wordpress-boilerplate)\nReply-To: [your-email]\n\n\n\n\nwordpress-boilerplate \"[your-subject]\"\nwordpress-boilerplate <entropiabloc@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on wordpress-boilerplate (http://localhost/wordpress-boilerplate)\nReply-To: entropiabloc@gmail.com\n\n\n\nΣας ευχαριστούμε για το μήνυμά σας. Έχει σταλεί.\nΠαρουσιάστηκε σφάλμα κατά την προσπάθεια αποστολής του μηνύματός σας. Παρακαλώ δοκιμάστε ξανά αργότερα.\nΈνα ή περισσότερα πεδία έχουν ένα σφάλμα. Παρακαλούμε ελέγξτε και προσπαθήστε ξανά.\nΠαρουσιάστηκε σφάλμα κατά την προσπάθεια αποστολής του μηνύματός σας. Παρακαλώ δοκιμάστε ξανά αργότερα.\nΠρέπει να αποδεχτείτε τους όρους και τις προϋποθέσεις πριν στείλετε το μήνυμά σας.\nΑπαραίτητο πεδίο\nΤο πεδίο είναι πολύ μεγάλο.\nΤο πεδίο είναι πολύ μικρό.\nΗ μορφή ημερομηνίας είναι εσφαλμένη.\nΗ ημερομηνία είναι πριν από την πρώτη που επιτρέπεται.\nΗ ημερομηνία είναι μετά την τελευταία επιτρέπεται.\nΠαρουσιάστηκε ένα άγνωστο σφάλμα κατά τη μεταφόρτωση του αρχείου.\nΔεν επιτρέπεται η μεταφόρτωση αρχείων αυτού του τύπου.\nΤο αρχείο είναι πολύ μεγάλο.\nΠαρουσιάστηκε σφάλμα κατά τη μεταφόρτωση του αρχείου.\nΗ μορφή αριθμού δεν είναι έγκυρη.\nΟ αριθμός είναι μικρότερος από το ελάχιστο επιτρεπτό.\nΟ αριθμός είναι μεγαλύτερος από το μέγιστο επιτρεπτό.\nΗ απάντηση στο κουίζ είναι λανθασμένη.\nYour entered code is incorrect.\nΗ διεύθυνση ηλεκτρονικού ταχυδρομείου που πληκτρολογήσατε είναι άκυρη.\nΗ διεύθυνση URL δεν είναι έγκυρη.\nΟ αριθμός τηλεφώνου δεν είναι έγκυρος.','Contact form EL','','publish','closed','closed','','contact-form-1','','','2017-11-02 09:43:24','2017-11-02 09:43:24','',0,'http://localhost/wordpress-boilerplate/?post_type=wpcf7_contact_form&#038;p=36',0,'wpcf7_contact_form','',0),(37,3,'2017-09-12 07:02:17','2017-09-12 07:02:17','','Αρχική','','publish','closed','closed','','%ce%b1%cf%81%cf%87%ce%b9%ce%ba%ce%ae','','','2017-11-01 11:57:54','2017-11-01 11:57:54','',0,'http://localhost/wordpress-boilerplate/?page_id=37',0,'page','',0),(39,3,'2017-09-12 07:02:17','2017-09-12 07:02:17','','home','','inherit','closed','closed','','37-revision-v1','','','2017-09-12 07:02:17','2017-09-12 07:02:17','',37,'http://localhost/wordpress-boilerplate/2017/09/12/37-revision-v1/',0,'revision','',0),(51,3,'2017-10-02 11:39:23','2017-10-02 11:39:23','','Home','','inherit','closed','closed','','37-revision-v1','','','2017-10-02 11:39:23','2017-10-02 11:39:23','',37,'http://localhost/wordpress-boilerplate/2017/10/02/37-revision-v1/',0,'revision','',0),(56,3,'2017-10-06 06:27:30','2017-10-06 06:27:30','','polylang_mo_8','','private','closed','closed','','polylang_mo_8','','','2017-10-06 06:27:30','2017-10-06 06:27:30','',0,'http://localhost/wordpress-boilerplate-multilang/?post_type=polylang_mo&p=56',0,'polylang_mo','',0),(77,3,'2017-11-01 11:46:17','2017-11-01 11:46:17','','Αρχική','','inherit','closed','closed','','37-revision-v1','','','2017-11-01 11:46:17','2017-11-01 11:46:17','',37,'http://localhost/wordpress-boilerplate/2017/11/01/37-revision-v1/',0,'revision','',0),(78,3,'2017-11-01 11:55:10','2017-11-01 11:55:10','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Home Page','home-page','publish','closed','closed','','group_59f9b5d963b3e','','','2017-11-01 11:57:23','2017-11-01 11:57:23','',0,'http://localhost/wordpress-boilerplate/?post_type=acf-field-group&#038;p=78',0,'acf-field-group','',0),(79,3,'2017-11-01 11:55:10','2017-11-01 11:55:10','a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}','Slideshow','slideshow','publish','closed','closed','','field_59f9b5e00e171','','','2017-11-01 11:55:10','2017-11-01 11:55:10','',78,'http://localhost/wordpress-boilerplate/?post_type=acf-field&p=79',0,'acf-field','',0),(80,3,'2017-11-01 11:55:10','2017-11-01 11:55:10','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image','image','publish','closed','closed','','field_59f9b5fa0e172','','','2017-11-01 11:55:10','2017-11-01 11:55:10','',79,'http://localhost/wordpress-boilerplate/?post_type=acf-field&p=80',0,'acf-field','',0),(81,3,'2017-11-01 11:55:11','2017-11-01 11:55:11','a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}','description','description','publish','closed','closed','','field_59f9b6040e173','','','2017-11-01 11:55:11','2017-11-01 11:55:11','',79,'http://localhost/wordpress-boilerplate/?post_type=acf-field&p=81',1,'acf-field','',0),(82,3,'2017-11-01 11:57:54','2017-11-01 11:57:54','','Αρχική','','inherit','closed','closed','','37-revision-v1','','','2017-11-01 11:57:54','2017-11-01 11:57:54','',37,'http://localhost/wordpress-boilerplate/2017/11/01/37-revision-v1/',0,'revision','',0),(83,3,'2017-11-01 12:04:00','2017-11-01 12:04:00','','Επικοινωνία','','publish','closed','closed','','%ce%b5%cf%80%ce%b9%ce%ba%ce%bf%ce%b9%ce%bd%cf%89%ce%bd%ce%af%ce%b1','','','2017-11-01 12:37:14','2017-11-01 12:37:14','',0,'http://localhost/wordpress-boilerplate/?page_id=83',0,'page','',0),(84,3,'2017-11-01 12:04:00','2017-11-01 12:04:00','','Επικοινωνία','','inherit','closed','closed','','83-revision-v1','','','2017-11-01 12:04:00','2017-11-01 12:04:00','',83,'http://localhost/wordpress-boilerplate/2017/11/01/83-revision-v1/',0,'revision','',0),(85,3,'2017-11-01 12:06:55','2017-11-01 12:06:55','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"contact.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Contact Page','contact-page','publish','closed','closed','','group_59f9b8a2c9b4b','','','2017-11-01 12:06:55','2017-11-01 12:06:55','',0,'http://localhost/wordpress-boilerplate/?post_type=acf-field-group&#038;p=85',0,'acf-field-group','',0),(86,3,'2017-11-01 12:06:55','2017-11-01 12:06:55','a:9:{s:4:\"type\";s:10:\"google_map\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"center_lat\";s:0:\"\";s:10:\"center_lng\";s:0:\"\";s:4:\"zoom\";s:0:\"\";s:6:\"height\";s:0:\"\";}','Map','map','publish','closed','closed','','field_59f9b8b830d82','','','2017-11-01 12:06:55','2017-11-01 12:06:55','',85,'http://localhost/wordpress-boilerplate/?post_type=acf-field&p=86',0,'acf-field','',0),(87,3,'2017-11-01 12:37:14','2017-11-01 12:37:14','','Επικοινωνία','','inherit','closed','closed','','83-revision-v1','','','2017-11-01 12:37:14','2017-11-01 12:37:14','',83,'http://localhost/wordpress-boilerplate/2017/11/01/83-revision-v1/',0,'revision','',0),(88,3,'2017-11-01 12:37:44','2017-11-01 12:37:44',' ','','','publish','closed','closed','','88','','','2018-02-12 14:17:03','2018-02-12 14:17:03','',0,'http://localhost/wordpress-boilerplate/?p=88',1,'nav_menu_item','',0),(89,3,'2017-11-01 12:52:58','2017-11-01 12:52:58','','Νεα','','publish','closed','closed','','%ce%bd%ce%b5%ce%b1','','','2017-11-01 12:52:58','2017-11-01 12:52:58','',0,'http://localhost/wordpress-boilerplate/?page_id=89',0,'page','',0),(90,3,'2017-11-01 12:52:58','2017-11-01 12:52:58','','Νεα','','inherit','closed','closed','','89-revision-v1','','','2017-11-01 12:52:58','2017-11-01 12:52:58','',89,'http://localhost/wordpress-boilerplate/2017/11/01/89-revision-v1/',0,'revision','',0),(91,3,'2017-11-01 12:53:13','2017-11-01 12:53:13',' ','','','publish','closed','closed','','91','','','2018-02-12 14:17:03','2018-02-12 14:17:03','',0,'http://localhost/wordpress-boilerplate/?p=91',2,'nav_menu_item','',0),(92,3,'2017-11-01 12:54:16','2017-11-01 12:54:16','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean quam lorem, ultrices sed pulvinar sed, molestie id magna. Phasellus mi purus, egestas finibus tempus eu, lacinia pharetra magna. Donec mattis eleifend dictum. Maecenas et nunc pulvinar, pellentesque neque in, lobortis tortor. Praesent libero dui, facilisis laoreet ex vel, cursus vestibulum massa. Integer et dui sem. Donec eget tellus quis metus tristique suscipit faucibus eu lacus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','Νέο','','publish','open','open','','%ce%bd%ce%ad%ce%bf','','','2017-11-03 10:44:40','2017-11-03 10:44:40','',0,'http://localhost/wordpress-boilerplate/?p=92',0,'post','',0),(93,3,'2017-11-01 12:54:16','2017-11-01 12:54:16','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean quam lorem, ultrices sed pulvinar sed, molestie id magna. Phasellus mi purus, egestas finibus tempus eu, lacinia pharetra magna. Donec mattis eleifend dictum. Maecenas et nunc pulvinar, pellentesque neque in, lobortis tortor. Praesent libero dui, facilisis laoreet ex vel, cursus vestibulum massa. Integer et dui sem. Donec eget tellus quis metus tristique suscipit faucibus eu lacus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.','Νέο','','inherit','closed','closed','','92-revision-v1','','','2017-11-01 12:54:16','2017-11-01 12:54:16','',92,'http://localhost/wordpress-boilerplate/2017/11/01/92-revision-v1/',0,'revision','',0),(94,3,'2017-11-02 09:29:20','2017-11-02 09:29:20','<label> Your Name (required)\r\n    [text* your-name] </label>\r\n\r\n<label> Your Email (required)\r\n    [email* your-email] </label>\r\n\r\n<label> Subject\r\n    [text your-subject] </label>\r\n\r\n<label> Your Message\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Send\"]\n1\nwordpress-boilerplate \"[your-subject]\"\n[your-name] <info@entropiabloc.gr>\ninfo@entropiabloc.gr\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on wordpress-boilerplate (http://localhost/wordpress-boilerplate)\nReply-To: [your-email]\n\n\n\n\nwordpress-boilerplate \"[your-subject]\"\nwordpress-boilerplate <entropiabloc@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on wordpress-boilerplate (http://localhost/wordpress-boilerplate)\nReply-To: entropiabloc@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.','Contact Form EN','','publish','closed','closed','','contact-form-en','','','2017-11-02 09:39:56','2017-11-02 09:39:56','',0,'http://localhost/wordpress-boilerplate/?post_type=wpcf7_contact_form&#038;p=94',0,'wpcf7_contact_form','',0),(121,3,'2018-05-22 08:53:00','2018-05-22 08:53:00','Για να εξασφαλίσουμε τη σωστή λειτουργία του ιστότοπου, μερικές φορές τοποθετούμε μικρά αρχεία δεδομένων στον υπολογιστή σας, τα λεγόμενα «cookies». Οι περισσότεροι μεγάλοι ιστότοποι κάνουν το ίδιο.\r\n<h3>Τι είναι τα cookies;</h3>\r\nΤα cookies είναι μικρά αρχεία κειμένου τα οποία ένας ιστότοπος αποθηκεύει στον υπολογιστή σας ή στην κινητή σας συσκευή όταν επισκέπτεστε αυτόν τον ιστότοπο. Με τον τρόπο αυτό, ο ιστότοπος θυμάται τις ενέργειές σας και τις προτιμήσεις σας (όπως κωδικός σύνδεσης, γλώσσα, μέγεθος γραμματοσειράς και άλλες προτιμήσεις απεικόνισης) για ένα χρονικό διάστημα, κι έτσι δεν χρειάζεται να εισάγετε τις προτιμήσεις αυτές κάθε φορά που επισκέπτεστε τον ιστότοπο ή φυλλομετρείτε τις σελίδες του.\r\n<h3>Πώς χρησιμοποιούμε τα cookies;</h3>\r\nΧρησιμοποιούμε τα cookie για πολλούς λόγους. Τα χρησιμοποιούμε, για παράδειγμα, για την απομνημόνευση των προτιμήσεών σας, για να υπολογίσουμε τον αριθμό των επισκεπτών σε μια σελίδα και για άλλους στατιστικούς λόγους, για να σας διευκολύνουμε να εγγραφείτε και να συνδεθείτε στις υπηρεσίες μας και για να προστατεύσουμε τα δεδομένα σας.\r\n\r\nΑυτός ο ιστότοπος χρησιμοποιεί cookie από την Google για την παροχή των υπηρεσιών του, για την εξατομίκευση διαφημίσεων και για την ανάλυση της επισκεψιμότητας. Η Google κοινοποιεί πληροφορίες σχετικά με την από μέρους σας χρήση αυτού του ιστότοπου. Με τη χρήση αυτού του ιστότοπου, αποδέχεστε τη χρήση των cookie. <a href=\"https://policies.google.com/technologies/cookies?hl=el\" target=\"_blank\" rel=\"noopener\">Μάθετε περισσότερα…</a>\r\n<h3>Πώς να ελέγχετε τα cookies</h3>\r\nΜπορείτε να ελέγχετε και/ή να διαγράφετε τα cookies ανάλογα με τις επιθυμίες σας. Λεπτομέρειες θα βρείτε εδώ: <a href=\"http://www.aboutcookies.org\" target=\"_blank\" rel=\"noopener\">aboutcookies.org</a>. Μπορείτε να διαγράψετε όλα τα cookies που βρίσκονται ήδη στον υπολογιστή σας, όπως και να ρυθμίσετε τους περισσότερους φυλλομετρητές κατά τρόπο που να μην επιτρέπουν την εγκατάσταση cookies. Ωστόσο, στην περίπτωση αυτή, ίσως χρειαστεί να προσαρμόζετε εσείς από μόνοι σας ορισμένες προτιμήσεις κάθε φορά που επισκέπτεστε έναν ιστότοπο, και επίσης ενδέχεται να μην λειτουργούν και μερικές υπηρεσίες.','Cookies','','publish','closed','closed','','cookies','','','2018-05-22 09:23:29','2018-05-22 09:23:29','',0,'http://localhost/wordpress-boilerplate/?page_id=121',0,'page','',0),(122,3,'2018-05-22 08:53:00','2018-05-22 08:53:00','Για να εξασφαλίσουμε τη σωστή λειτουργία του ιστότοπου, μερικές φορές τοποθετούμε μικρά αρχεία δεδομένων στον υπολογιστή σας, τα λεγόμενα «cookies». Οι περισσότεροι μεγάλοι ιστότοποι κάνουν το ίδιο.\r\n<h3>Τι είναι τα cookies;</h3>\r\nΤα cookies είναι μικρά αρχεία κειμένου τα οποία ένας ιστότοπος αποθηκεύει στον υπολογιστή σας ή στην κινητή σας συσκευή όταν επισκέπτεστε αυτόν τον ιστότοπο. Με τον τρόπο αυτό, ο ιστότοπος θυμάται τις ενέργειές σας και τις προτιμήσεις σας (όπως κωδικός σύνδεσης, γλώσσα, μέγεθος γραμματοσειράς και άλλες προτιμήσεις απεικόνισης) για ένα χρονικό διάστημα, κι έτσι δεν χρειάζεται να εισάγετε τις προτιμήσεις αυτές κάθε φορά που επισκέπτεστε τον ιστότοπο ή φυλλομετρείτε τις σελίδες του.\r\n<h3>Πως χρησιμοποιούμε τα cookies;</h3>\r\nΧρησιμοποιούμε τα cookie για πολλούς λόγους. Τα χρησιμοποιούμε, για παράδειγμα, για την απομνημόνευση των προτιμήσεών σας, για να υπολογίσουμε τον αριθμό των επισκεπτών σε μια σελίδα και για άλλους στατιστικούς λόγους, για να σας διευκολύνουμε να εγγραφείτε και να συνδεθείτε στις υπηρεσίες μας και για να προστατεύσουμε τα δεδομένα σας.\r\n\r\nΑυτός ο ιστότοπος χρησιμοποιεί cookie από την Google για την παροχή των υπηρεσιών του, για την εξατομίκευση διαφημίσεων και για την ανάλυση της επισκεψιμότητας. Η Google κοινοποιεί πληροφορίες σχετικά με την από μέρους σας χρήση αυτού του ιστότοπου. Με τη χρήση αυτού του ιστότοπου, αποδέχεστε τη χρήση των cookie. <a href=\"https://policies.google.com/technologies/cookies?hl=el\" target=\"_blank\" rel=\"noopener\">Μάθετε περισσότερα…</a>\r\n<h3>Πώς να ελέγχετε τα cookies</h3>\r\nΜπορείτε να ελέγχετε και/ή να διαγράφετε τα cookies ανάλογα με τις επιθυμίες σας. Λεπτομέρειες θα βρείτε εδώ: <a href=\"http://www.aboutcookies.org\" target=\"_blank\" rel=\"noopener\">aboutcookies.org</a>. Μπορείτε να διαγράψετε όλα τα cookies που βρίσκονται ήδη στον υπολογιστή σας, όπως και να ρυθμίσετε τους περισσότερους φυλλομετρητές κατά τρόπο που να μην επιτρέπουν την εγκατάσταση cookies. Ωστόσο, στην περίπτωση αυτή, ίσως χρειαστεί να προσαρμόζετε εσείς από μόνοι σας ορισμένες προτιμήσεις κάθε φορά που επισκέπτεστε έναν ιστότοπο, και επίσης ενδέχεται να μην λειτουργούν και μερικές υπηρεσίες.','Cookies','','inherit','closed','closed','','121-revision-v1','','','2018-05-22 08:53:00','2018-05-22 08:53:00','',121,'http://localhost/wordpress-boilerplate/2018/05/22/121-revision-v1/',0,'revision','',0),(123,3,'2018-05-22 09:23:29','2018-05-22 09:23:29','Για να εξασφαλίσουμε τη σωστή λειτουργία του ιστότοπου, μερικές φορές τοποθετούμε μικρά αρχεία δεδομένων στον υπολογιστή σας, τα λεγόμενα «cookies». Οι περισσότεροι μεγάλοι ιστότοποι κάνουν το ίδιο.\r\n<h3>Τι είναι τα cookies;</h3>\r\nΤα cookies είναι μικρά αρχεία κειμένου τα οποία ένας ιστότοπος αποθηκεύει στον υπολογιστή σας ή στην κινητή σας συσκευή όταν επισκέπτεστε αυτόν τον ιστότοπο. Με τον τρόπο αυτό, ο ιστότοπος θυμάται τις ενέργειές σας και τις προτιμήσεις σας (όπως κωδικός σύνδεσης, γλώσσα, μέγεθος γραμματοσειράς και άλλες προτιμήσεις απεικόνισης) για ένα χρονικό διάστημα, κι έτσι δεν χρειάζεται να εισάγετε τις προτιμήσεις αυτές κάθε φορά που επισκέπτεστε τον ιστότοπο ή φυλλομετρείτε τις σελίδες του.\r\n<h3>Πώς χρησιμοποιούμε τα cookies;</h3>\r\nΧρησιμοποιούμε τα cookie για πολλούς λόγους. Τα χρησιμοποιούμε, για παράδειγμα, για την απομνημόνευση των προτιμήσεών σας, για να υπολογίσουμε τον αριθμό των επισκεπτών σε μια σελίδα και για άλλους στατιστικούς λόγους, για να σας διευκολύνουμε να εγγραφείτε και να συνδεθείτε στις υπηρεσίες μας και για να προστατεύσουμε τα δεδομένα σας.\r\n\r\nΑυτός ο ιστότοπος χρησιμοποιεί cookie από την Google για την παροχή των υπηρεσιών του, για την εξατομίκευση διαφημίσεων και για την ανάλυση της επισκεψιμότητας. Η Google κοινοποιεί πληροφορίες σχετικά με την από μέρους σας χρήση αυτού του ιστότοπου. Με τη χρήση αυτού του ιστότοπου, αποδέχεστε τη χρήση των cookie. <a href=\"https://policies.google.com/technologies/cookies?hl=el\" target=\"_blank\" rel=\"noopener\">Μάθετε περισσότερα…</a>\r\n<h3>Πώς να ελέγχετε τα cookies</h3>\r\nΜπορείτε να ελέγχετε και/ή να διαγράφετε τα cookies ανάλογα με τις επιθυμίες σας. Λεπτομέρειες θα βρείτε εδώ: <a href=\"http://www.aboutcookies.org\" target=\"_blank\" rel=\"noopener\">aboutcookies.org</a>. Μπορείτε να διαγράψετε όλα τα cookies που βρίσκονται ήδη στον υπολογιστή σας, όπως και να ρυθμίσετε τους περισσότερους φυλλομετρητές κατά τρόπο που να μην επιτρέπουν την εγκατάσταση cookies. Ωστόσο, στην περίπτωση αυτή, ίσως χρειαστεί να προσαρμόζετε εσείς από μόνοι σας ορισμένες προτιμήσεις κάθε φορά που επισκέπτεστε έναν ιστότοπο, και επίσης ενδέχεται να μην λειτουργούν και μερικές υπηρεσίες.','Cookies','','inherit','closed','closed','','121-revision-v1','','','2018-05-22 09:23:29','2018-05-22 09:23:29','',121,'http://localhost/wordpress-boilerplate/2018/05/22/121-revision-v1/',0,'revision','',0),(124,3,'2018-05-22 09:25:17','2018-05-22 09:25:17','','polylang_mo_31','','private','closed','closed','','polylang_mo_31','','','2018-05-22 09:25:17','2018-05-22 09:25:17','',0,'http://localhost/wordpress-boilerplate/?post_type=polylang_mo&p=124',0,'polylang_mo','',0),(125,3,'2018-05-22 09:34:53','2018-05-22 09:34:53','To make this site work properly, we sometimes place small data files called cookies on your device. Most big websites do this too.\r\n<h3>What are cookies?</h3>\r\nA cookie is a small text file that a website saves on your computer or mobile device when you visit the site. It enables the website to remember your actions and preferences (such as login, language, font size and other display preferences) over a period of time, so you don’t have to keep re-entering them whenever you come back to the site or browse from one page to another.\r\n<h3>How do we use cookies?</h3>\r\nWe use cookies for many purposes. We use them, for example, to remember your preferences, to count how many visitors we receive to a page and other statistical reasons, to help you sign up for our services and to protect your data.\r\n\r\nThis website uses cookies from Google to provide its services, to personalise content and ads and to analyse our traffic. Google shares information about your use of our site.  By using this website, you accept the usage of cookies. <a href=\"https://policies.google.com/technologies/cookies\" target=\"_blank\" rel=\"noopener\">Learn more…</a>\r\n<h3>How to control cookies</h3>\r\nYou can <strong>control and/or delete</strong> cookies as you wish – for details, see <a href=\"http://www.aboutcookies.org\" target=\"_blank\" rel=\"noopener\">aboutcookies.org</a>. You can delete all cookies that are already on your computer and you can set most browsers to prevent them from being placed. If you do this, however, you may have to manually adjust some preferences every time you visit a site and some services and functionalities may not work.','Cookies','','publish','closed','closed','','cookies-en','','','2018-05-22 10:12:03','2018-05-22 10:12:03','',0,'http://localhost/wordpress-boilerplate/?page_id=125',0,'page','',0),(126,3,'2018-05-22 09:34:53','2018-05-22 09:34:53','Για να εξασφαλίσουμε τη σωστή λειτουργία του ιστότοπου, μερικές φορές τοποθετούμε μικρά αρχεία δεδομένων στον υπολογιστή σας, τα λεγόμενα «cookies». Οι περισσότεροι μεγάλοι ιστότοποι κάνουν το ίδιο.\r\n<h3>Τι είναι τα cookies;</h3>\r\nΤα cookies είναι μικρά αρχεία κειμένου τα οποία ένας ιστότοπος αποθηκεύει στον υπολογιστή σας ή στην κινητή σας συσκευή όταν επισκέπτεστε αυτόν τον ιστότοπο. Με τον τρόπο αυτό, ο ιστότοπος θυμάται τις ενέργειές σας και τις προτιμήσεις σας (όπως κωδικός σύνδεσης, γλώσσα, μέγεθος γραμματοσειράς και άλλες προτιμήσεις απεικόνισης) για ένα χρονικό διάστημα, κι έτσι δεν χρειάζεται να εισάγετε τις προτιμήσεις αυτές κάθε φορά που επισκέπτεστε τον ιστότοπο ή φυλλομετρείτε τις σελίδες του.\r\n<h3>Πώς χρησιμοποιούμε τα cookies;</h3>\r\nΧρησιμοποιούμε τα cookie για πολλούς λόγους. Τα χρησιμοποιούμε, για παράδειγμα, για την απομνημόνευση των προτιμήσεών σας, για να υπολογίσουμε τον αριθμό των επισκεπτών σε μια σελίδα και για άλλους στατιστικούς λόγους, για να σας διευκολύνουμε να εγγραφείτε και να συνδεθείτε στις υπηρεσίες μας και για να προστατεύσουμε τα δεδομένα σας.\r\n\r\nΑυτός ο ιστότοπος χρησιμοποιεί cookie από την Google για την παροχή των υπηρεσιών του, για την εξατομίκευση διαφημίσεων και για την ανάλυση της επισκεψιμότητας. Η Google κοινοποιεί πληροφορίες σχετικά με την από μέρους σας χρήση αυτού του ιστότοπου. Με τη χρήση αυτού του ιστότοπου, αποδέχεστε τη χρήση των cookie. <a href=\"https://policies.google.com/technologies/cookies?hl=el\" target=\"_blank\" rel=\"noopener\">Μάθετε περισσότερα…</a>\r\n<h3>Πώς να ελέγχετε τα cookies</h3>\r\nΜπορείτε να ελέγχετε και/ή να διαγράφετε τα cookies ανάλογα με τις επιθυμίες σας. Λεπτομέρειες θα βρείτε εδώ: <a href=\"http://www.aboutcookies.org\" target=\"_blank\" rel=\"noopener\">aboutcookies.org</a>. Μπορείτε να διαγράψετε όλα τα cookies που βρίσκονται ήδη στον υπολογιστή σας, όπως και να ρυθμίσετε τους περισσότερους φυλλομετρητές κατά τρόπο που να μην επιτρέπουν την εγκατάσταση cookies. Ωστόσο, στην περίπτωση αυτή, ίσως χρειαστεί να προσαρμόζετε εσείς από μόνοι σας ορισμένες προτιμήσεις κάθε φορά που επισκέπτεστε έναν ιστότοπο, και επίσης ενδέχεται να μην λειτουργούν και μερικές υπηρεσίες.','Cookies','','inherit','closed','closed','','125-revision-v1','','','2018-05-22 09:34:53','2018-05-22 09:34:53','',125,'http://localhost/wordpress-boilerplate/2018/05/22/125-revision-v1/',0,'revision','',0),(127,3,'2018-05-22 10:09:45','2018-05-22 10:09:45','To make this site work properly, we sometimes place small data files called cookies on your device. Most big websites do this too.\n<h3>What are cookies;</h3>\nA cookie is a small text file that a website saves on your computer or mobile device when you visit the site. It enables the website to remember your actions and preferences (such as login, language, font size and other display preferences) over a period of time, so you don’t have to keep re-entering them whenever you come back to the site or browse from one page to another.\n<h3>How do we use cookies?</h3>\nWe use cookies for many purposes. We use them, for example, to remember your preferences, to count how many visitors we receive to a page and other statistical reasons, to help you sign up for our services and to protect your data.\n\nThis website uses cookies from Google to provide its services, to customize ads and analyze visits.  Google\n\nThis website uses cookies from Google to provide its services, to personalise content and ads and to analyse our traffic. Google shares information about your use of our site.  By using this website, you accept the usage of\nwith our social media, advertising and analytics partners. <a href=\"https://www.google.com/policies/technologies/cookies/\" target=\"_blank\" rel=\"noopener\">See details</a>\n\nΑυτός ο ιστότοπος χρησιμοποιεί cookie από την Google για την παροχή των υπηρεσιών του, για την εξατομίκευση διαφημίσεων και για την ανάλυση της επισκεψιμότητας. Η Google κοινοποιεί πληροφορίες σχετικά με την από μέρους σας χρήση αυτού του ιστότοπου. Με τη χρήση αυτού του ιστότοπου, αποδέχεστε τη χρήση των cookie. <a href=\"https://policies.google.com/technologies/cookies\" target=\"_blank\" rel=\"noopener\">Learn more…</a>\n<h3>How to control cookies</h3>\nYou can <strong>control and/or delete</strong> cookies as you wish – for details, see <a href=\"http://www.aboutcookies.org\" target=\"_blank\" rel=\"noopener\">aboutcookies.org</a>. You can delete all cookies that are already on your computer and you can set most browsers to prevent them from being placed. If you do this, however, you may have to manually adjust some preferences every time you visit a site and some services and functionalities may not work.','Cookies','','inherit','closed','closed','','125-autosave-v1','','','2018-05-22 10:09:45','2018-05-22 10:09:45','',125,'http://localhost/wordpress-boilerplate/2018/05/22/125-autosave-v1/',0,'revision','',0),(128,3,'2018-05-22 10:10:04','2018-05-22 10:10:04','To make this site work properly, we sometimes place small data files called cookies on your device. Most big websites do this too.\r\n<h3>What are cookies;</h3>\r\nA cookie is a small text file that a website saves on your computer or mobile device when you visit the site. It enables the website to remember your actions and preferences (such as login, language, font size and other display preferences) over a period of time, so you don’t have to keep re-entering them whenever you come back to the site or browse from one page to another.\r\n<h3>How do we use cookies?</h3>\r\nWe use cookies for many purposes. We use them, for example, to remember your preferences, to count how many visitors we receive to a page and other statistical reasons, to help you sign up for our services and to protect your data.\r\n\r\nThis website uses cookies from Google to provide its services, to personalise content and ads and to analyse our traffic. Google shares information about your use of our site.  By using this website, you accept the usage of cookies. <a href=\"https://policies.google.com/technologies/cookies\" target=\"_blank\" rel=\"noopener\">Learn more…</a>\r\n<h3>How to control cookies</h3>\r\nYou can <strong>control and/or delete</strong> cookies as you wish – for details, see <a href=\"http://www.aboutcookies.org\" target=\"_blank\" rel=\"noopener\">aboutcookies.org</a>. You can delete all cookies that are already on your computer and you can set most browsers to prevent them from being placed. If you do this, however, you may have to manually adjust some preferences every time you visit a site and some services and functionalities may not work.','Cookies','','inherit','closed','closed','','125-revision-v1','','','2018-05-22 10:10:04','2018-05-22 10:10:04','',125,'http://localhost/wordpress-boilerplate/2018/05/22/125-revision-v1/',0,'revision','',0),(129,3,'2018-05-22 10:12:03','2018-05-22 10:12:03','To make this site work properly, we sometimes place small data files called cookies on your device. Most big websites do this too.\r\n<h3>What are cookies?</h3>\r\nA cookie is a small text file that a website saves on your computer or mobile device when you visit the site. It enables the website to remember your actions and preferences (such as login, language, font size and other display preferences) over a period of time, so you don’t have to keep re-entering them whenever you come back to the site or browse from one page to another.\r\n<h3>How do we use cookies?</h3>\r\nWe use cookies for many purposes. We use them, for example, to remember your preferences, to count how many visitors we receive to a page and other statistical reasons, to help you sign up for our services and to protect your data.\r\n\r\nThis website uses cookies from Google to provide its services, to personalise content and ads and to analyse our traffic. Google shares information about your use of our site.  By using this website, you accept the usage of cookies. <a href=\"https://policies.google.com/technologies/cookies\" target=\"_blank\" rel=\"noopener\">Learn more…</a>\r\n<h3>How to control cookies</h3>\r\nYou can <strong>control and/or delete</strong> cookies as you wish – for details, see <a href=\"http://www.aboutcookies.org\" target=\"_blank\" rel=\"noopener\">aboutcookies.org</a>. You can delete all cookies that are already on your computer and you can set most browsers to prevent them from being placed. If you do this, however, you may have to manually adjust some preferences every time you visit a site and some services and functionalities may not work.','Cookies','','inherit','closed','closed','','125-revision-v1','','','2018-05-22 10:12:03','2018-05-22 10:12:03','',125,'http://localhost/wordpress-boilerplate/2018/05/22/125-revision-v1/',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (2,22,0),(3,9,0),(3,12,0),(3,25,0),(10,7,0),(10,9,0),(10,34,0),(16,9,0),(16,26,0),(18,19,0),(22,8,0),(23,8,0),(33,32,0),(33,34,0),(37,8,0),(37,14,0),(61,8,0),(61,13,0),(65,15,0),(73,8,0),(83,8,0),(88,2,0),(89,8,0),(91,2,0),(92,3,0),(92,8,0),(121,8,0),(121,35,0),(125,31,0),(125,35,0);
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
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,2),(3,3,'category','',0,1),(8,8,'language','a:3:{s:6:\"locale\";s:2:\"el\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"gr\";}',0,5),(9,9,'term_language','',0,3),(10,10,'category','',0,0),(16,16,'category','',0,0),(25,25,'term_translations','a:1:{s:2:\"el\";i:3;}',0,1),(26,26,'term_translations','a:1:{s:2:\"el\";i:16;}',0,1),(31,31,'language','a:3:{s:6:\"locale\";s:5:\"en_GB\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"gb\";}',0,1),(32,32,'term_language','',0,1),(33,33,'category','',0,0),(34,34,'term_translations','a:2:{s:2:\"en\";i:33;s:2:\"el\";i:10;}',0,2),(35,35,'post_translations','a:2:{s:2:\"en\";i:125;s:2:\"el\";i:121;}',0,2),(36,36,'product_type','',0,0),(37,37,'product_type','',0,0),(38,38,'product_type','',0,0),(39,39,'product_type','',0,0),(40,40,'product_visibility','',0,0),(41,41,'product_visibility','',0,0),(42,42,'product_visibility','',0,0),(43,43,'product_visibility','',0,0),(44,44,'product_visibility','',0,0),(45,45,'product_visibility','',0,0),(46,46,'product_visibility','',0,0),(47,47,'product_visibility','',0,0),(48,48,'product_visibility','',0,0),(49,49,'product_cat','',0,0);
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
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (2,'Main','main',0),(3,'Νεα','%ce%bd%ce%b5%ce%b1',0),(8,'Ελληνικά','el',0),(9,'Ελληνικά','pll_el',0),(10,'Uncategorized','uncategorized',0),(16,'News','news',0),(25,'pll_59f9c196aaf73','pll_59f9c196aaf73',0),(26,'pll_59f9c1a2a15df','pll_59f9c1a2a15df',0),(31,'English','en',0),(32,'English','pll_en',0),(33,'Uncategorized','uncategorized-en',0),(34,'pll_5b03e1fd6ee44','pll_5b03e1fd6ee44',0),(35,'pll_5b03e43d3d28d','pll_5b03e43d3d28d',0),(36,'simple','simple',0),(37,'grouped','grouped',0),(38,'variable','variable',0),(39,'external','external',0),(40,'exclude-from-search','exclude-from-search',0),(41,'exclude-from-catalog','exclude-from-catalog',0),(42,'featured','featured',0),(43,'outofstock','outofstock',0),(44,'rated-1','rated-1',0),(45,'rated-2','rated-2',0),(46,'rated-3','rated-3',0),(47,'rated-4','rated-4',0),(48,'rated-5','rated-5',0),(49,'Uncategorized','uncategorized',0);
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
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (48,3,'nickname','digitalwise'),(49,3,'first_name','digitalwise'),(50,3,'last_name','digitalwise'),(51,3,'description',''),(52,3,'rich_editing','true'),(53,3,'syntax_highlighting','true'),(54,3,'comment_shortcuts','false'),(55,3,'admin_color','fresh'),(56,3,'use_ssl','0'),(57,3,'show_admin_bar_front','true'),(58,3,'locale',''),(59,3,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(60,3,'wp_user_level','10'),(61,3,'dismissed_wp_pointers','wp496_privacy,pll_lgt'),(62,3,'session_tokens','a:1:{s:64:\"31191911c14f9b730c791ae6a760195a599746da7a9a642081d229c56e8066a0\";a:4:{s:10:\"expiration\";i:1537960185;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1537787385;}}'),(63,3,'wp_dashboard_quick_press_last_post_id','132'),(64,3,'_woocommerce_persistent_cart_1','a:1:{s:4:\"cart\";a:0:{}}'),(65,3,'wc_last_active','1537747200'),(66,3,'dismissed_no_secure_connection_notice','1');
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
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (3,'digitalwise','$P$BWqHMavZetI1BpBjwWhdJmhGAiFfhq1','digitalwise','Konstantinos.agorastidis@digitalwise.gr','','2018-09-24 11:09:32','',0,'digitalwise digitalwise');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_download_log`
--

DROP TABLE IF EXISTS `wp_wc_download_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`download_log_id`),
  KEY `permission_id` (`permission_id`),
  KEY `timestamp` (`timestamp`),
  CONSTRAINT `fk_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_download_log`
--

LOCK TABLES `wp_wc_download_log` WRITE;
/*!40000 ALTER TABLE `wp_wc_download_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_download_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_webhooks`
--

DROP TABLE IF EXISTS `wp_wc_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`webhook_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_webhooks`
--

LOCK TABLES `wp_wc_webhooks` WRITE;
/*!40000 ALTER TABLE `wp_wc_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfbadleechers`
--

DROP TABLE IF EXISTS `wp_wfbadleechers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wfbadleechers` (
  `eMin` int(10) unsigned NOT NULL,
  `IP` int(10) unsigned NOT NULL,
  `hits` int(10) unsigned NOT NULL,
  PRIMARY KEY (`eMin`,`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfbadleechers`
--

LOCK TABLES `wp_wfbadleechers` WRITE;
/*!40000 ALTER TABLE `wp_wfbadleechers` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfbadleechers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfblockediplog`
--

DROP TABLE IF EXISTS `wp_wfblockediplog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wfblockediplog` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `countryCode` varchar(2) NOT NULL,
  `blockCount` int(10) unsigned NOT NULL DEFAULT '0',
  `unixday` int(10) unsigned NOT NULL,
  `blockType` varchar(50) NOT NULL DEFAULT 'generic',
  PRIMARY KEY (`IP`,`unixday`,`blockType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfblockediplog`
--

LOCK TABLES `wp_wfblockediplog` WRITE;
/*!40000 ALTER TABLE `wp_wfblockediplog` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfblockediplog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfblocks`
--

DROP TABLE IF EXISTS `wp_wfblocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wfblocks` (
  `IP` int(10) unsigned NOT NULL,
  `blockedTime` bigint(20) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `lastAttempt` int(10) unsigned DEFAULT '0',
  `blockedHits` int(10) unsigned DEFAULT '0',
  `wfsn` tinyint(3) unsigned DEFAULT '0',
  `permanent` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`IP`),
  KEY `k1` (`wfsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfblocks`
--

LOCK TABLES `wp_wfblocks` WRITE;
/*!40000 ALTER TABLE `wp_wfblocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfblocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfblocksadv`
--

DROP TABLE IF EXISTS `wp_wfblocksadv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wfblocksadv` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `blockType` char(2) NOT NULL,
  `blockString` varchar(255) NOT NULL,
  `ctime` int(10) unsigned NOT NULL,
  `reason` varchar(255) NOT NULL,
  `totalBlocked` int(10) unsigned DEFAULT '0',
  `lastBlocked` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfblocksadv`
--

LOCK TABLES `wp_wfblocksadv` WRITE;
/*!40000 ALTER TABLE `wp_wfblocksadv` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfblocksadv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfconfig`
--

DROP TABLE IF EXISTS `wp_wfconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wfconfig` (
  `name` varchar(100) NOT NULL,
  `val` longblob,
  `autoload` enum('no','yes') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfconfig`
--

LOCK TABLES `wp_wfconfig` WRITE;
/*!40000 ALTER TABLE `wp_wfconfig` DISABLE KEYS */;
INSERT INTO `wp_wfconfig` VALUES ('actUpdateInterval','','yes'),('addCacheComment','0','yes'),('advancedCommentScanning','0','yes'),('ajaxWatcherDisabled_admin','0','yes'),('ajaxWatcherDisabled_front','0','yes'),('alertEmails','','yes'),('alertOn_adminLogin','1','yes'),('alertOn_block','1','yes'),('alertOn_critical','1','yes'),('alertOn_firstAdminLoginOnly','0','yes'),('alertOn_firstNonAdminLoginOnly','0','yes'),('alertOn_loginLockout','1','yes'),('alertOn_lostPasswdForm','1','yes'),('alertOn_nonAdminLogin','0','yes'),('alertOn_throttle','0','yes'),('alertOn_update','0','yes'),('alertOn_warnings','1','yes'),('alertOn_wordfenceDeactivated','1','yes'),('alert_maxHourly','0','yes'),('allowed404s','/favicon.ico\n/apple-touch-icon*.png\n/*@2x.png\n/browserconfig.xml','yes'),('allowHTTPSCaching','0','yes'),('apiKey','995b81d1652488da2ccc6b35db2de051817feaeeb334639a6a90c587ded32753cc64adca8708e6ddef792523380c29737ef2a937806fbf486adaa1cdb6dc13747a8714a6db4c8ad56cc6fc5e1563ec74','yes'),('autoBlockScanners','1','yes'),('autoUpdate','0','yes'),('bannedURLs','','yes'),('blockedTime','300','yes'),('blockFakeBots','0','yes'),('cbl_cookieVal','58d51f51bf7f0','yes'),('cbl_restOfSiteBlocked','1','yes'),('checkSpamIP','0','yes'),('debugOn','0','yes'),('deleteTablesOnDeact','0','yes'),('disableCodeExecutionUploads','0','yes'),('disableConfigCaching','0','yes'),('disableCookies','0','yes'),('disableWAFIPBlocking','0','yes'),('email_summary_dashboard_widget_enabled','1','yes'),('email_summary_enabled','1','yes'),('email_summary_excluded_directories','wp-content/cache,wp-content/plugins/wordfence/tmp','yes'),('email_summary_interval','weekly','yes'),('encKey','501e000070ff0000','yes'),('firewallEnabled','1','yes'),('hasKeyConflict','','yes'),('howGetIPs','','yes'),('howGetIPs_trusted_proxies','','yes'),('liveTrafficEnabled','1','yes'),('liveTraf_ignoreIPs','','yes'),('liveTraf_ignorePublishers','1','yes'),('liveTraf_ignoreUA','','yes'),('liveTraf_ignoreUsers','','yes'),('liveTraf_maxRows','2000','yes'),('loginSecurityEnabled','1','yes'),('loginSec_blockAdminReg','1','yes'),('loginSec_countFailMins','240','yes'),('loginSec_disableAuthorScan','1','yes'),('loginSec_disableOEmbedAuthor','0','yes'),('loginSec_lockInvalidUsers','0','yes'),('loginSec_lockoutMins','240','yes'),('loginSec_maskLoginErrors','1','yes'),('loginSec_maxFailures','20','yes'),('loginSec_maxForgotPasswd','20','yes'),('loginSec_strongPasswds','pubs','yes'),('loginSec_userBlacklist','','yes'),('lowResourceScansEnabled','0','yes'),('max404Crawlers','DISABLED','yes'),('max404Crawlers_action','throttle','yes'),('max404Humans','DISABLED','yes'),('max404Humans_action','throttle','yes'),('maxExecutionTime','','yes'),('maxGlobalRequests','DISABLED','yes'),('maxGlobalRequests_action','throttle','yes'),('maxMem','256','yes'),('maxRequestsCrawlers','DISABLED','yes'),('maxRequestsCrawlers_action','throttle','yes'),('maxRequestsHumans','DISABLED','yes'),('maxRequestsHumans_action','throttle','yes'),('maxScanHits','DISABLED','yes'),('maxScanHits_action','throttle','yes'),('neverBlockBG','neverBlockVerified','yes'),('notification_blogHighlights','1','yes'),('notification_productUpdates','1','yes'),('notification_promotions','1','yes'),('notification_scanStatus','1','yes'),('notification_securityAlerts','1','yes'),('notification_updatesNeeded','1','yes'),('other_blockBadPOST','0','yes'),('other_hideWPVersion','0','yes'),('other_noAnonMemberComments','1','yes'),('other_pwStrengthOnUpdate','1','yes'),('other_scanComments','1','yes'),('other_scanOutside','0','yes'),('other_WFNet','1','yes'),('scansEnabled_checkHowGetIPs','1','yes'),('scansEnabled_checkReadableConfig','1','yes'),('scansEnabled_comments','1','yes'),('scansEnabled_core','1','yes'),('scansEnabled_coreUnknown','1','yes'),('scansEnabled_diskSpace','1','yes'),('scansEnabled_dns','1','yes'),('scansEnabled_fileContents','1','yes'),('scansEnabled_heartbleed','1','yes'),('scansEnabled_highSense','0','yes'),('scansEnabled_malware','1','yes'),('scansEnabled_oldVersions','1','yes'),('scansEnabled_options','1','yes'),('scansEnabled_passwds','1','yes'),('scansEnabled_plugins','0','yes'),('scansEnabled_posts','1','yes'),('scansEnabled_public','0','yes'),('scansEnabled_scanImages','0','yes'),('scansEnabled_suspectedFiles','1','yes'),('scansEnabled_suspiciousAdminUsers','1','yes'),('scansEnabled_themes','0','yes'),('scansEnabled_wpscan_directoryListingEnabled','1','yes'),('scansEnabled_wpscan_fullPathDisclosure','1','yes'),('scan_exclude','','yes'),('scan_include_extra','','yes'),('scan_maxDuration','','yes'),('scan_maxIssues','1000','yes'),('scheduledScansEnabled','1','yes'),('showAdminBarMenu','1','yes'),('spamvertizeCheck','0','yes'),('ssl_verify','1','yes'),('startScansRemotely','0','yes'),('wafAlertInterval','600','yes'),('wafAlertOnAttacks','1','yes'),('wafAlertThreshold','100','yes'),('wafAlertWhitelist','','yes'),('whitelisted','','yes');
/*!40000 ALTER TABLE `wp_wfconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfcrawlers`
--

DROP TABLE IF EXISTS `wp_wfcrawlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wfcrawlers` (
  `IP` binary(16) NOT NULL,
  `patternSig` binary(16) NOT NULL,
  `status` char(8) NOT NULL,
  `lastUpdate` int(10) unsigned NOT NULL,
  `PTR` varchar(255) DEFAULT '',
  PRIMARY KEY (`IP`,`patternSig`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfcrawlers`
--

LOCK TABLES `wp_wfcrawlers` WRITE;
/*!40000 ALTER TABLE `wp_wfcrawlers` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfcrawlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wffilemods`
--

DROP TABLE IF EXISTS `wp_wffilemods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wffilemods` (
  `filenameMD5` binary(16) NOT NULL,
  `filename` varchar(1000) NOT NULL,
  `knownFile` tinyint(3) unsigned NOT NULL,
  `oldMD5` binary(16) NOT NULL,
  `newMD5` binary(16) NOT NULL,
  `stoppedOnSignature` varchar(255) NOT NULL DEFAULT '',
  `stoppedOnPosition` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`filenameMD5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wffilemods`
--

LOCK TABLES `wp_wffilemods` WRITE;
/*!40000 ALTER TABLE `wp_wffilemods` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wffilemods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfhits`
--

DROP TABLE IF EXISTS `wp_wfhits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wfhits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ctime` double(17,6) unsigned NOT NULL,
  `IP` int(10) unsigned NOT NULL,
  `jsRun` tinyint(4) DEFAULT '0',
  `statusCode` int(11) NOT NULL DEFAULT '200',
  `isGoogle` tinyint(4) NOT NULL,
  `userID` int(10) unsigned NOT NULL,
  `newVisit` tinyint(3) unsigned NOT NULL,
  `URL` text,
  `referer` text,
  `UA` text,
  PRIMARY KEY (`id`),
  KEY `k1` (`ctime`),
  KEY `k2` (`IP`,`ctime`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfhits`
--

LOCK TABLES `wp_wfhits` WRITE;
/*!40000 ALTER TABLE `wp_wfhits` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfhits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfhoover`
--

DROP TABLE IF EXISTS `wp_wfhoover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wfhoover` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner` text,
  `host` text,
  `path` text,
  `hostKey` binary(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `k2` (`hostKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfhoover`
--

LOCK TABLES `wp_wfhoover` WRITE;
/*!40000 ALTER TABLE `wp_wfhoover` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfhoover` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfissues`
--

DROP TABLE IF EXISTS `wp_wfissues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wfissues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time` int(10) unsigned NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `severity` tinyint(3) unsigned NOT NULL,
  `ignoreP` char(32) NOT NULL,
  `ignoreC` char(32) NOT NULL,
  `shortMsg` varchar(255) NOT NULL,
  `longMsg` text,
  `data` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfissues`
--

LOCK TABLES `wp_wfissues` WRITE;
/*!40000 ALTER TABLE `wp_wfissues` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfissues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfknownfilelist`
--

DROP TABLE IF EXISTS `wp_wfknownfilelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wfknownfilelist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `path` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfknownfilelist`
--

LOCK TABLES `wp_wfknownfilelist` WRITE;
/*!40000 ALTER TABLE `wp_wfknownfilelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfknownfilelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfleechers`
--

DROP TABLE IF EXISTS `wp_wfleechers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wfleechers` (
  `eMin` int(10) unsigned NOT NULL,
  `IP` int(10) unsigned NOT NULL,
  `hits` int(10) unsigned NOT NULL,
  PRIMARY KEY (`eMin`,`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfleechers`
--

LOCK TABLES `wp_wfleechers` WRITE;
/*!40000 ALTER TABLE `wp_wfleechers` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfleechers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wflockedout`
--

DROP TABLE IF EXISTS `wp_wflockedout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wflockedout` (
  `IP` int(10) unsigned NOT NULL,
  `blockedTime` bigint(20) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `lastAttempt` int(10) unsigned DEFAULT '0',
  `blockedHits` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wflockedout`
--

LOCK TABLES `wp_wflockedout` WRITE;
/*!40000 ALTER TABLE `wp_wflockedout` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wflockedout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wflocs`
--

DROP TABLE IF EXISTS `wp_wflocs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wflocs` (
  `IP` int(10) unsigned NOT NULL,
  `ctime` int(10) unsigned NOT NULL,
  `failed` tinyint(3) unsigned NOT NULL,
  `city` varchar(255) DEFAULT '',
  `region` varchar(255) DEFAULT '',
  `countryName` varchar(255) DEFAULT '',
  `countryCode` char(2) DEFAULT '',
  `lat` float(10,7) DEFAULT '0.0000000',
  `lon` float(10,7) DEFAULT '0.0000000',
  PRIMARY KEY (`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wflocs`
--

LOCK TABLES `wp_wflocs` WRITE;
/*!40000 ALTER TABLE `wp_wflocs` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wflocs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wflogins`
--

DROP TABLE IF EXISTS `wp_wflogins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wflogins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ctime` double(17,6) unsigned NOT NULL,
  `fail` tinyint(3) unsigned NOT NULL,
  `action` varchar(40) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userID` int(10) unsigned NOT NULL,
  `IP` int(10) unsigned NOT NULL,
  `UA` text,
  PRIMARY KEY (`id`),
  KEY `k1` (`IP`,`fail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wflogins`
--

LOCK TABLES `wp_wflogins` WRITE;
/*!40000 ALTER TABLE `wp_wflogins` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wflogins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfnet404s`
--

DROP TABLE IF EXISTS `wp_wfnet404s`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wfnet404s` (
  `sig` binary(16) NOT NULL,
  `ctime` int(10) unsigned NOT NULL,
  `URI` varchar(1000) NOT NULL,
  PRIMARY KEY (`sig`),
  KEY `k1` (`ctime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfnet404s`
--

LOCK TABLES `wp_wfnet404s` WRITE;
/*!40000 ALTER TABLE `wp_wfnet404s` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfnet404s` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfnotifications`
--

DROP TABLE IF EXISTS `wp_wfnotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wfnotifications` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `new` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `category` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '1000',
  `ctime` int(10) unsigned NOT NULL,
  `html` text NOT NULL,
  `links` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfnotifications`
--

LOCK TABLES `wp_wfnotifications` WRITE;
/*!40000 ALTER TABLE `wp_wfnotifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfnotifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfreversecache`
--

DROP TABLE IF EXISTS `wp_wfreversecache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wfreversecache` (
  `IP` int(10) unsigned NOT NULL,
  `host` varchar(255) NOT NULL,
  `lastUpdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfreversecache`
--

LOCK TABLES `wp_wfreversecache` WRITE;
/*!40000 ALTER TABLE `wp_wfreversecache` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfreversecache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfscanners`
--

DROP TABLE IF EXISTS `wp_wfscanners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wfscanners` (
  `eMin` int(10) unsigned NOT NULL,
  `IP` int(10) unsigned NOT NULL,
  `hits` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`eMin`,`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfscanners`
--

LOCK TABLES `wp_wfscanners` WRITE;
/*!40000 ALTER TABLE `wp_wfscanners` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfscanners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfsnipcache`
--

DROP TABLE IF EXISTS `wp_wfsnipcache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wfsnipcache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IP` varchar(45) NOT NULL DEFAULT '',
  `expiration` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `body` varchar(255) NOT NULL DEFAULT '',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `type` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `expiration` (`expiration`),
  KEY `IP` (`IP`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfsnipcache`
--

LOCK TABLES `wp_wfsnipcache` WRITE;
/*!40000 ALTER TABLE `wp_wfsnipcache` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfsnipcache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfstatus`
--

DROP TABLE IF EXISTS `wp_wfstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wfstatus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ctime` double(17,6) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `type` char(5) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `k1` (`ctime`),
  KEY `k2` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfstatus`
--

LOCK TABLES `wp_wfstatus` WRITE;
/*!40000 ALTER TABLE `wp_wfstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfthrottlelog`
--

DROP TABLE IF EXISTS `wp_wfthrottlelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wfthrottlelog` (
  `IP` int(10) unsigned NOT NULL,
  `startTime` int(10) unsigned NOT NULL,
  `endTime` int(10) unsigned NOT NULL,
  `timesThrottled` int(10) unsigned NOT NULL,
  `lastReason` varchar(255) NOT NULL,
  PRIMARY KEY (`IP`),
  KEY `k2` (`endTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfthrottlelog`
--

LOCK TABLES `wp_wfthrottlelog` WRITE;
/*!40000 ALTER TABLE `wp_wfthrottlelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfthrottlelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wfvulnscanners`
--

DROP TABLE IF EXISTS `wp_wfvulnscanners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wfvulnscanners` (
  `IP` int(10) unsigned NOT NULL,
  `ctime` int(10) unsigned NOT NULL,
  `hits` int(10) unsigned NOT NULL,
  PRIMARY KEY (`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wfvulnscanners`
--

LOCK TABLES `wp_wfvulnscanners` WRITE;
/*!40000 ALTER TABLE `wp_wfvulnscanners` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wfvulnscanners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_api_keys`
--

DROP TABLE IF EXISTS `wp_woocommerce_api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_api_keys`
--

LOCK TABLES `wp_woocommerce_api_keys` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

DROP TABLE IF EXISTS `wp_woocommerce_attribute_taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_attribute_taxonomies`
--

LOCK TABLES `wp_woocommerce_attribute_taxonomies` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

DROP TABLE IF EXISTS `wp_woocommerce_downloadable_product_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_downloadable_product_permissions`
--

LOCK TABLES `wp_woocommerce_downloadable_product_permissions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_log`
--

DROP TABLE IF EXISTS `wp_woocommerce_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_log`
--

LOCK TABLES `wp_woocommerce_log` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_itemmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

LOCK TABLES `wp_woocommerce_order_itemmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_order_items`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

LOCK TABLES `wp_woocommerce_order_items` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokenmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_payment_tokenmeta`
--

LOCK TABLES `wp_woocommerce_payment_tokenmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_payment_tokens`
--

LOCK TABLES `wp_woocommerce_payment_tokens` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_sessions`
--

DROP TABLE IF EXISTS `wp_woocommerce_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_key`),
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

LOCK TABLES `wp_woocommerce_sessions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_sessions` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_sessions` VALUES (1,'3','a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:727:\"a:26:{s:2:\"id\";s:1:\"3\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"GB\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"GB\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:39:\"Konstantinos.agorastidis@digitalwise.gr\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}',1537962141);
/*!40000 ALTER TABLE `wp_woocommerce_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

LOCK TABLES `wp_woocommerce_shipping_zone_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

LOCK TABLES `wp_woocommerce_shipping_zone_methods` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

LOCK TABLES `wp_woocommerce_shipping_zones` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rate_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_tax_rate_locations`
--

LOCK TABLES `wp_woocommerce_tax_rate_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_tax_rates`
--

LOCK TABLES `wp_woocommerce_tax_rates` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-20 14:27:00
