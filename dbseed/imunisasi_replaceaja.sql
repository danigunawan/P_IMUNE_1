-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.2.3-MariaDB-log - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for imunisasi
CREATE DATABASE IF NOT EXISTS `imunisasi` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `imunisasi`;

-- Dumping structure for table imunisasi.access_levels
CREATE TABLE IF NOT EXISTS `access_levels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resource` varchar(64) NOT NULL,
  `description` varchar(128) NOT NULL,
  `mask_a` tinyint(1) NOT NULL,
  `mask_o` tinyint(1) NOT NULL,
  `mask_u` tinyint(1) NOT NULL,
  `mask_g` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `resource` (`resource`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- Dumping data for table imunisasi.access_levels: ~60 rows (approximately)
/*!40000 ALTER TABLE `access_levels` DISABLE KEYS */;
REPLACE INTO `access_levels` (`id`, `resource`, `description`, `mask_a`, `mask_o`, `mask_u`, `mask_g`) VALUES
	(1, 'get_menu', 'Memuat halaman menu utama', 1, 1, 1, 1),
	(2, 'get_submenu', 'Memuat menu konteks untuk halaman', 1, 1, 1, 1),
	(3, 'get_pages_public', 'Dapatkan daftar halaman untuk akses publik', 1, 1, 1, 1),
	(4, 'get_page_public', 'Halaman informasi kartu kredit untuk akses publik', 1, 1, 1, 1),
	(5, 'get_page_index', 'Download halaman rumah untuk akses publik', 1, 1, 1, 1),
	(6, 'get_page_contact', 'Halaman tunai Hubungi untuk akses publik', 1, 1, 1, 1),
	(7, 'get_admin_statistics', 'Membaca statistik untuk panel admin', 1, 1, 0, 0),
	(8, 'get_settings_list', 'pengaturan daftar', 1, 0, 0, 0),
	(9, 'get_setting', 'Informasi tentang pengaturan', 1, 0, 0, 0),
	(10, 'add_setting', 'menambahkan pengaturan', 1, 0, 0, 0),
	(11, 'update_setting', 'memodifikasi', 1, 0, 0, 0),
	(12, 'delete_setting', 'menghapus pengaturan', 1, 0, 0, 0),
	(13, 'get_users_list', 'daftar anggota', 1, 1, 0, 0),
	(14, 'get_user', 'Informasi pengguna', 1, 1, 1, 0),
	(15, 'add_user', 'menambahkan pengguna', 1, 0, 0, 0),
	(16, 'update_user', 'pengguna memodifikasi', 1, 0, 0, 0),
	(17, 'delete_user', 'pengguna menghapus', 1, 1, 0, 0),
	(18, 'change_password', 'Password Change', 1, 1, 1, 0),
	(19, 'logout_user', 'Logout User', 1, 1, 0, 0),
	(20, 'get_acl_list', 'Daftar Access Control', 1, 1, 0, 0),
	(21, 'get_acl', 'Informasi tentang hak akses', 1, 0, 0, 0),
	(22, 'add_acl', 'Menambahkan hak akses', 1, 0, 0, 0),
	(23, 'update_acl', 'Memodifikasi hak akses', 1, 0, 0, 0),
	(24, 'delete_acl', 'Penghapusan hak akses', 1, 0, 0, 0),
	(25, 'get_user_rights', 'Informasi tentang hak akses pengguna', 1, 0, 0, 0),
	(26, 'update_user_rights', 'Catatan hak akses pengguna', 1, 0, 0, 0),
	(27, 'get_messages_list', 'daftar berita', 1, 0, 0, 0),
	(28, 'get_message', 'Pesan informasi', 1, 1, 0, 0),
	(29, 'update_message', 'berita modifikasi', 1, 1, 0, 0),
	(30, 'delete_message', 'menghapus pesan', 1, 0, 0, 0),
	(31, 'get_images_list', 'Gambar daftar gallery', 1, 1, 0, 0),
	(32, 'get_image', 'Men-download gambar dari galeri', 1, 1, 1, 1),
	(33, 'get_image_details', 'Mendapatkan informasi tentang gambar dalam galeri', 1, 1, 1, 1),
	(34, 'add_image', 'Menambahkan gambar ke galeri', 1, 1, 0, 0),
	(35, 'update_image', 'Mengubah gambar dalam galeri', 1, 1, 0, 0),
	(36, 'delete_image', 'Menghapus gambar dari galeri', 1, 1, 0, 0),
	(37, 'get_categories_list', 'daftar kategori', 1, 1, 0, 0),
	(38, 'get_category', 'Membaca kategori rincian', 1, 1, 0, 0),
	(39, 'add_category', 'menambahkan kategori', 1, 1, 0, 0),
	(40, 'update_category', 'kategori modifikasi', 1, 1, 0, 0),
	(41, 'delete_category', 'Hapus kategori', 1, 0, 0, 0),
	(42, 'move_category', 'Mengubah urutan kategori', 1, 0, 0, 0),
	(43, 'get_pages_list', 'Daftar subpages', 1, 1, 0, 0),
	(44, 'get_page', 'Download halaman data', 1, 1, 0, 0),
	(45, 'add_page', 'menambahkan halaman', 1, 1, 0, 0),
	(46, 'update_page', 'memodifikasi halaman', 1, 1, 0, 0),
	(47, 'delete_page', 'menghapus halaman', 1, 0, 0, 0),
	(48, 'get_archives_list', 'Mendapatkan halaman daftar arsip', 1, 1, 0, 0),
	(49, 'get_archive', 'Download versi arsip halaman', 1, 1, 0, 0),
	(50, 'archive_page', 'halaman pengarsipan', 1, 1, 0, 0),
	(51, 'restore_page', 'Memulihkan halaman arsip', 1, 1, 0, 0),
	(52, 'get_visitors_list', 'daftar kunjungan', 1, 1, 0, 0),
	(53, 'get_visitor', 'Informasi tentang kunjungan', 1, 1, 0, 0),
	(54, 'get_style', 'Gaya konten Download file', 1, 0, 0, 0),
	(55, 'update_style', 'Gaya penulisan konten untuk mengajukan', 1, 0, 0, 0),
	(56, 'get_script', 'Skrip konten Download file', 1, 0, 0, 0),
	(57, 'update_script', 'Menulis isi dari file script', 1, 0, 0, 0),
	(58, 'get_found_list', 'Mendapatkan daftar halaman ditemukan layanan pencarian', 0, 0, 0, 1),
	(59, 'get_searches_list', 'Mendapatkan daftar frasa pencarian pengguna', 1, 1, 0, 0),
	(60, 'delete_search', 'Menghapus frase pencarian pengguna', 1, 0, 0, 0);
/*!40000 ALTER TABLE `access_levels` ENABLE KEYS */;

-- Dumping structure for table imunisasi.access_rights
CREATE TABLE IF NOT EXISTS `access_rights` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `resource_id` int(11) unsigned NOT NULL,
  `access` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_resource` (`user_id`,`resource_id`),
  KEY `fk_rights_resources` (`resource_id`),
  KEY `fk_rights_users` (`user_id`),
  CONSTRAINT `fk_rights_resources` FOREIGN KEY (`resource_id`) REFERENCES `access_levels` (`id`),
  CONSTRAINT `fk_rights_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- Dumping data for table imunisasi.access_rights: ~60 rows (approximately)
/*!40000 ALTER TABLE `access_rights` DISABLE KEYS */;
REPLACE INTO `access_rights` (`id`, `user_id`, `resource_id`, `access`) VALUES
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
	(15, 1, 15, 1),
	(16, 1, 16, 1),
	(17, 1, 17, 1),
	(18, 1, 18, 1),
	(19, 1, 19, 1),
	(20, 1, 20, 1),
	(21, 1, 21, 1),
	(22, 1, 22, 1),
	(23, 1, 23, 1),
	(24, 1, 24, 1),
	(25, 1, 25, 1),
	(26, 1, 26, 1),
	(27, 1, 27, 1),
	(28, 1, 28, 1),
	(29, 1, 29, 1),
	(30, 1, 30, 1),
	(31, 1, 31, 1),
	(32, 1, 32, 1),
	(33, 1, 33, 1),
	(34, 1, 34, 1),
	(35, 1, 35, 1),
	(36, 1, 36, 1),
	(37, 1, 37, 1),
	(38, 1, 38, 1),
	(39, 1, 39, 1),
	(40, 1, 40, 1),
	(41, 1, 41, 1),
	(42, 1, 42, 1),
	(43, 1, 43, 1),
	(44, 1, 44, 1),
	(45, 1, 45, 1),
	(46, 1, 46, 1),
	(47, 1, 47, 1),
	(48, 1, 48, 1),
	(49, 1, 49, 1),
	(50, 1, 50, 1),
	(51, 1, 51, 1),
	(52, 1, 52, 1),
	(53, 1, 53, 1),
	(54, 1, 54, 1),
	(55, 1, 55, 1),
	(56, 1, 56, 1),
	(57, 1, 57, 1),
	(58, 1, 58, 1),
	(59, 1, 59, 1),
	(60, 1, 60, 1);
/*!40000 ALTER TABLE `access_rights` ENABLE KEYS */;

-- Dumping structure for table imunisasi.archives
CREATE TABLE IF NOT EXISTS `archives` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) unsigned NOT NULL,
  `main_page` tinyint(1) NOT NULL,
  `contact_page` tinyint(1) NOT NULL,
  `category_id` int(11) unsigned NOT NULL,
  `title` varchar(512) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `contents` longtext CHARACTER SET utf8 DEFAULT NULL,
  `author_id` int(11) unsigned NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`),
  KEY `category_id` (`category_id`),
  KEY `fk_archives_pages` (`page_id`),
  KEY `fk_archives_users` (`author_id`),
  CONSTRAINT `fk_archives_pages` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`),
  CONSTRAINT `fk_archives_users` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- Dumping data for table imunisasi.archives: ~3 rows (approximately)
/*!40000 ALTER TABLE `archives` DISABLE KEYS */;
REPLACE INTO `archives` (`id`, `page_id`, `main_page`, `contact_page`, `category_id`, `title`, `description`, `contents`, `author_id`, `visible`, `modified`) VALUES
	(1, 1, 1, 0, 0, 'rumah', 'Rumah dari aplikasi kita', '<div class="row">\n<div class="col-lg-3">\n<img src="public/img/AngularJS_logo_bordered.png" class="img-responsive" alt="angular js logo">\n</div>\n<div class="col-lg-9">\n<h2>Witaj w systemie Angular CMS!</h2>\n<h4>Wstęp</h4>\n<p>\nJest to projekt aplikacji typu Single Page Application, która działa w ten sposób, że zmiana treści odbywa się bez konieczności przeładowania całej strony. Wygląda to tak, że mamy szablon strony, na którym zmieniają się tylko fragmenty, pewne elementy, w zależności od kontekstu. Na przykład po wywołaniu strony głównej ładowana jest jedynie treść, nagłówek i stopka pozostają nie zmienione. Podobnie jest po otwarciu strony kontaktowej, gdzie jako treść pojawia się mapka, informacje kontaktowe i formularz kontaktowy. To samo ma miejsce po otwarciu dowolnej podstrony - ładowana jest tylko jej treść, reszta się nie zmienia. System jest oparty na frameworku AngularJS, który jest przeznaczony do tworzenia tego typu aplikacji. \n</p>\n<h4>Demo</h4>\n<p>Aby pokazać, jak wygląda zarządzanie stroną, przygotowane zostały następujące filmy demo:</p>\n<p>\n<a href="https://youtu.be/x92qVUeWr9k" target="_blank" class="btn btn-primary">Tworzenie strony głównej</a>\n<a href="https://youtu.be/yl4FjIGSYYU" target="_blank" class="btn btn-primary">Tworzenie strony kontaktowej</a>\n<a href="https://youtu.be/3wvaLt5X-V4" target="_blank" class="btn btn-primary">Nawigacja, podstrony, obrazki i slidery</a>\n</p>\n</div>\n</div>', 1, 1, '2017-03-24 21:10:50'),
	(2, 2, 0, 1, 0, 'Halaman kontak', 'Kontak halaman aplikasi kita', '<style type="text/css">\ndiv.map { padding: 0px; }\ndiv.adr { padding: 7px 0px; }\ndiv.adr span.glyphicon { padding-right: 10px; }\n</style>\n\n<div class="map">\n<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4867.701649478604!2d16.91226795315743!3d52.40937977092189!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0000000000000000%3A0x6201d17fe9c37f41!2sDZ+Bank+Polska+S.A.+Centrum+Bankowo%C5%9Bci+Korporacyjnej!5e0!3m2!1spl!2sus!4v1417506974043" width="100%" height="450" frameborder="0" style="border: #aaa 1px solid;"></iframe>\n</div>\n\n<div class="adr"><span class="glyphicon glyphicon-envelope"></span><a href="mailto:andrzuk@tlen.pl" class="social-link">andrzuk@tlen.pl</a></div>\n<div class="adr"><span class="glyphicon glyphicon-cloud"></span><a href="https://twitter.com/andy_zukowski" class="social-link" target="_blank">@andy_zukowski</a></div>\n<div class="adr"><span class="glyphicon glyphicon-user"></span><a href="https://www.facebook.com/zukowski.andrzej" class="social-link" target="_blank">/zukowski.andrzej</a></div>', 1, 1, '2017-03-24 21:10:50'),
	(3, 3, 0, 0, 1, 'DEMO - Snake game', 'Game tes aja', '<style>\ndiv#game-container { display: inline-flex; width: 1140px; }\ncanvas#game-canvas { width: 900px; height: 420px; background: #eee; border: 1px solid #999; }\nspan#game-panel { display: inline-block; width: 230px; height: 420px; border: 1px solid #999; background: #ddd; margin-left: 5px; }\nbutton.move-buttons { width: 50px; height: 50px; position: relative; font-size: 1.5em; margin: 5px 0; }\nbutton.play-buttons { width: 80px; position: relative; margin: 20px 0; }\nspan#score { font-weight: bold; font-size: 2.5em; margin-right: 15px; }\nspan#time-period { margin-right: 15px; }\np.separator { line-height: 20px; text-align: center; font-size: 0.95em; }\np.separator a#show-scores { line-height: 10px; }\ntable#scores-list { width: 100%; }\ntable#scores-list tbody tr th { padding: 0 10px 15px 10px; border-bottom: 1px solid #999; }\ntable#scores-list tbody tr td { padding: 0 10px; border-bottom: 1px dotted #ccc; }\ntable#scores-list tbody tr td.scores-saved { text-align: center; }\ntable#scores-list tbody tr td.scores-score { text-align: right; font-weight: bold; font-size: 1.2em; color: blue; }\n</style>\n\n<div id="game-container">\n<canvas id="game-canvas">Canvas nie jest obsługiwany przez tą przeglądarkę.</canvas>\n<span id="game-panel">\n<table width="100%">\n<tr>\n<td colspan="2" style="text-align: center; font-size: 1.2em; font-weight: bold; color: #c00;">\n<div id="player-caption"></div>\n</td>\n</tr>\n<tr>\n<td style="text-align: left; padding-left: 15px;"><b>Score:</b></td>\n<td style="text-align: right;"><span id="score">0</span></td>\n</tr>\n</table>\n<p class="separator"><a id="show-scores" href="#">Scores List</a><hr style="margin: 0;"></p>\n<table width="100%">\n<tr>\n<td style="text-align: left; padding-left: 15px;"><b>Speed:</b></td>\n<td style="text-align: right; padding-right: 15px;">\n<span id="time-period">\n<select id="period" class="form-control">\n<option value="100">Super fast (20x)</option>\n<option value="200">Very fast (10x)</option>\n<option value="300" selected>Faster (5x)</option>\n<option value="400">Little faster (4x)</option>\n<option value="500">Medium (3x)</option>\n<option value="750">Slow (2x)</option>\n<option value="1000">Very slow (1x)</option>\n</select>\n</span>\n</td>\n</tr>\n</table>\n<table width="100%">\n<tr>\n<td width="50%" style="text-align: center;"><button id="play-start" class="play-buttons btn btn-success">Play</button></td>\n<td width="50%" style="text-align: center;"><button id="play-pause" class="play-buttons btn btn-danger">Pause</button></td>\n</tr>\n</table>\n<table width="100%">\n<tr>\n<td colspan="3" style="text-align: center;"><button id="move-up" class="move-buttons btn btn-primary">&#9650;</button></td>\n</tr>\n<tr>\n<td width="33%" style="text-align: right;"><button id="move-left" class="move-buttons btn btn-primary">&#9668;</button></td>\n<td width="34%" style="text-align: center;"><button id="move-down" class="move-buttons btn btn-primary">&#9660;</button></td>\n<td width="33%" style="text-align: left;"><button id="move-right" class="move-buttons btn btn-primary">&#9658;</button></td>\n</tr>\n</table>\n</span>\n</div>\n\n<div class="modal fade screen-centered" id="player-modal" role="dialog">\n<div class="modal-dialog" style="max-width: 300px;">\n<div class="modal-content">\n<div class="modal-header">\n<button type="button" class="close" data-dismiss="modal">&times;</button>\n<h4 class="modal-title">Witaj!</h4>\n</div>\n<div class="modal-body">\n<p>Podaj swoje imię:</p>\n<input type="text" class="form-control" id="player-name">\n</div>\n<div class="modal-footer">\n<button type="button" id="save-player-name" class="btn btn-success" data-dismiss="modal">Zapisz</button>\n<button type="button" id="cancel-player-name" class="btn btn-warning" data-dismiss="modal">Anuluj</button>\n</div>\n</div>\n</div>\n</div>\n\n<div class="modal fade" id="scores-modal" role="dialog">\n<div class="modal-dialog">\n<div class="modal-content">\n<div class="modal-header">\n<button type="button" class="close" data-dismiss="modal">&times;</button>\n<h4 class="modal-title">Najlepsze wyniki (Top 20)</h4>\n</div>\n<div class="modal-body">\n<table id="scores-list" align="center">\n<tbody>\n<tr><td style="text-align: center;"><img src="public/img/loader.gif"></td></tr>\n</tbody>\n</table>\n</div>\n<div class="modal-footer">\n<button type="button" class="btn btn-warning" data-dismiss="modal">Zamknij</button>\n</div>\n</div>\n</div>\n</div>\n\n<script src="public/js/snake.js"></script>\n<script>\ngameInterval = null;\n</script>', 1, 1, '2017-03-24 21:10:50');
/*!40000 ALTER TABLE `archives` ENABLE KEYS */;

-- Dumping structure for table imunisasi.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL,
  `item_order` int(11) NOT NULL,
  `caption` varchar(128) CHARACTER SET utf8 NOT NULL,
  `item_link` varchar(1024) CHARACTER SET utf8 NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `target` tinyint(1) NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- Dumping data for table imunisasi.categories: ~7 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
REPLACE INTO `categories` (`id`, `parent_id`, `item_order`, `caption`, `item_link`, `visible`, `target`, `modified`) VALUES
	(1, 0, 1, 'DEMO', 'http://localhost/imunisasi/category/1', 1, 0, '2017-03-24 21:10:50'),
	(2, 0, 2, 'Penyuntikan yang aman', 'http://localhost/imunisasi/category/2', 1, 0, '2017-03-25 12:35:19'),
	(3, 0, 3, 'Penyelenggaraan pelayanan imunisasi', 'http://localhost/imunisasi/category/3', 1, 0, '2017-03-25 12:35:26'),
	(4, 0, 4, 'Perencanaan Program Imunisasi', 'http://localhost/imunisasi/category/4', 1, 0, '2017-03-25 12:35:32'),
	(5, 0, 5, 'Penyakit yang dapat dicegah dengan imunisasi', 'http://localhost/imunisasi/category/5', 1, 0, '2017-03-25 12:35:36'),
	(6, 0, 6, 'Pencatatan, Pelaporan dan Pemantauan', 'http://localhost/imunisasi/category/6', 1, 0, '2017-03-25 12:35:41'),
	(7, 0, 7, 'Pengelolaan Rental Vaksin dan Vaksin', 'http://localhost/imunisasi/category/7', 1, 0, '2017-03-25 12:35:46');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table imunisasi.images
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) unsigned NOT NULL,
  `file_format` varchar(32) NOT NULL,
  `file_name` varchar(512) NOT NULL,
  `file_size` int(11) NOT NULL,
  `picture_width` int(11) NOT NULL,
  `picture_height` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_images_users` (`owner_id`),
  CONSTRAINT `fk_images_users` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Dumping data for table imunisasi.images: ~13 rows (approximately)
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
REPLACE INTO `images` (`id`, `owner_id`, `file_format`, `file_name`, `file_size`, `picture_width`, `picture_height`, `modified`) VALUES
	(1, 1, 'image/png', 'Animal Tales.png', 35907, 1200, 400, '2017-03-24 21:10:50'),
	(2, 1, 'image/jpeg', 'Blue Ribbon.jpg', 125856, 1200, 400, '2017-03-24 21:10:50'),
	(3, 1, 'image/jpeg', 'chi health.jpg', 47931, 1200, 400, '2017-03-24 21:10:50'),
	(4, 1, 'image/jpeg', 'DA Defence.jpg', 65506, 1200, 400, '2017-03-24 21:10:50'),
	(5, 1, 'image/png', 'IBS.png', 77105, 1200, 400, '2017-03-24 21:10:50'),
	(6, 1, 'image/jpeg', 'LAGB.jpg', 55275, 1200, 400, '2017-03-24 21:10:50'),
	(7, 1, 'image/jpeg', 'logo TANSS.jpg', 58555, 1200, 400, '2017-03-24 21:10:50'),
	(8, 1, 'image/jpeg', 'mike delta aviation.jpg', 85864, 1200, 400, '2017-03-24 21:10:50'),
	(9, 1, 'image/png', 'NALED.png', 65907, 1200, 400, '2017-03-24 21:10:50'),
	(10, 1, 'image/png', 'Oasis4he.png', 18762, 1200, 400, '2017-03-24 21:10:50'),
	(11, 1, 'image/png', 'PEPANZ.png', 44828, 1200, 400, '2017-03-24 21:10:50'),
	(12, 1, 'image/png', 'SprintGround Logo Light.png', 119031, 1200, 400, '2017-03-24 21:10:50'),
	(13, 1, 'image/jpeg', 'support intro.jpg', 32373, 1200, 400, '2017-03-24 21:10:50');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;

-- Dumping structure for table imunisasi.messages
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `client_ip` varchar(20) NOT NULL,
  `client_name` varchar(128) NOT NULL,
  `client_email` varchar(256) NOT NULL,
  `message_content` longtext NOT NULL,
  `requested` tinyint(1) NOT NULL,
  `send_date` datetime NOT NULL,
  `close_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table imunisasi.messages: ~0 rows (approximately)
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;

-- Dumping structure for table imunisasi.pages
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `main_page` tinyint(1) NOT NULL,
  `contact_page` tinyint(1) NOT NULL,
  `category_id` int(11) unsigned NOT NULL,
  `title` varchar(512) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `contents` longtext CHARACTER SET utf8 DEFAULT NULL,
  `author_id` int(11) unsigned NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `fk_pages_users` (`author_id`),
  CONSTRAINT `fk_pages_users` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- Dumping data for table imunisasi.pages: ~9 rows (approximately)
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
REPLACE INTO `pages` (`id`, `main_page`, `contact_page`, `category_id`, `title`, `description`, `contents`, `author_id`, `visible`, `modified`) VALUES
	(1, 1, 0, 0, 'IMUNISASI', 'IMUNISASI', '<div class="row">\n<div class="col-lg-3">\n<a href="http://localhost/imunisasi/category/2">\n<span>\n<img src="public/img/depan/Penyuntikan Yang Aman.png" class="img-responsive" alt="angular js logo">\n<span>\n</a>\n</div>\n<div class="col-lg-3">\n<a href="http://localhost/imunisasi/category/3">\n<span>\n<img src="public/img/depan/penyelenggaraan pelayanan imunisasi.png" class="img-responsive" alt="angular js logo">\n<span>\n</a>\n</div>\n<div class="col-lg-3">\n<a href="http://localhost/imunisasi/category/4">\n<span>\n<img src="public/img/depan/Perencanaan Program Imunisasi.png" class="img-responsive" alt="angular js logo">\n<span>\n</a>\n</div>\n<div class="col-lg-3">\n<a href="http://localhost/imunisasi/category/5">\n<span>\n<img src="public/img/depan/PENYAKIT YANG BISA DICEGAH DENGAN IMUNISASI.png" class="img-responsive" alt="angular js logo">\n<span>\n</a>\n</div>\n<div class="col-lg-3">\n<a href="http://localhost/imunisasi/category/6">\n<span>\n<img src="public/img/depan/PENCATATAN PELAPORAN DAN PEMANTAUAN.png" class="img-responsive" alt="angular js logo">\n<span>\n</a>\n</div>\n<div class="col-lg-3">\n<a href="http://localhost/imunisasi/category/7">\n<span>\n<img src="public/img/depan/Pengelolaan Rantai Vaksin dan Vaksin.png" class="img-responsive" alt="angular js logo">\n<span>\n</a>\n</div>\n<div class="col-lg-12">\n<h2>Apa itu imunisasi?</h2>\n<h4>Pengertian imunisasi</h4>\n<p>\nImunisasi adalah suatu proses untuk meningkatkan sistem kekebalan tubuh dengan cara memasukkan vaksin, yakni virus atau bakteri yang sudah dilemahkan, dibunuh, atau bagian-bagian dari bakteri (virus) tersebut telah dimodifikasi.\nVaksin dimasukkan ke dalam tubuh melalui suntikan atau diminum (oral). Setelah vaksin masuk ke dalam tubuh, sistem pertahanan tubuh akan bereaksi membentuk antibodi. Reaksi ini sama seperti jika tubuh kemasukan virus atau bakteri yang sesungguhnya. Antibodi selanjutnya akan membentuk imunitas terhadap jenis virus atau bakteri tersebut.\n</p>\n<h4>Video Pembelajaran Imunisasi?</h4>\n<p>List Video:</p>\n<p>\n<a href="#" target="_blank" class="btn btn-primary">Video 1</a>\n<a href="#" target="_blank" class="btn btn-primary">Video 2</a>\n<a href="#" target="_blank" class="btn btn-primary">Video 3</a>\n</p>\n</div>\n</div>', 1, 1, '2017-03-25 12:43:55'),
	(2, 0, 1, 0, 'Halaman kontak', 'Kontak halaman aplikasi kita', '<style type="text/css">\ndiv.map { padding: 0px; }\ndiv.adr { padding: 7px 0px; }\ndiv.adr span.glyphicon { padding-right: 10px; }\n</style>\n\n<div class="map">\n<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4867.701649478604!2d16.91226795315743!3d52.40937977092189!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0000000000000000%3A0x6201d17fe9c37f41!2sDZ+Bank+Polska+S.A.+Centrum+Bankowo%C5%9Bci+Korporacyjnej!5e0!3m2!1spl!2sus!4v1417506974043" width="100%" height="450" frameborder="0" style="border: #aaa 1px solid;"></iframe>\n</div>\n\n<div class="adr"><span class="glyphicon glyphicon-envelope"></span><a href="mailto:andrzuk@tlen.pl" class="social-link">andrzuk@tlen.pl</a></div>\n<div class="adr"><span class="glyphicon glyphicon-cloud"></span><a href="https://twitter.com/andy_zukowski" class="social-link" target="_blank">@andy_zukowski</a></div>\n<div class="adr"><span class="glyphicon glyphicon-user"></span><a href="https://www.facebook.com/zukowski.andrzej" class="social-link" target="_blank">/zukowski.andrzej</a></div>', 1, 1, '2017-03-24 21:10:51'),
	(3, 0, 0, 1, 'DEMO - Snake game', 'Game', '<style>\ndiv#game-container { display: inline-flex; width: 1140px; }\ncanvas#game-canvas { width: 900px; height: 420px; background: #eee; border: 1px solid #999; }\nspan#game-panel { display: inline-block; width: 230px; height: 420px; border: 1px solid #999; background: #ddd; margin-left: 5px; }\nbutton.move-buttons { width: 50px; height: 50px; position: relative; font-size: 1.5em; margin: 5px 0; }\nbutton.play-buttons { width: 80px; position: relative; margin: 20px 0; }\nspan#score { font-weight: bold; font-size: 2.5em; margin-right: 15px; }\nspan#time-period { margin-right: 15px; }\np.separator { line-height: 20px; text-align: center; font-size: 0.95em; }\np.separator a#show-scores { line-height: 10px; }\ntable#scores-list { width: 100%; }\ntable#scores-list tbody tr th { padding: 0 10px 15px 10px; border-bottom: 1px solid #999; }\ntable#scores-list tbody tr td { padding: 0 10px; border-bottom: 1px dotted #ccc; }\ntable#scores-list tbody tr td.scores-saved { text-align: center; }\ntable#scores-list tbody tr td.scores-score { text-align: right; font-weight: bold; font-size: 1.2em; color: blue; }\n</style>\n\n<div id="game-container">\n<canvas id="game-canvas">Canvas nie jest obsługiwany przez tą przeglądarkę.</canvas>\n<span id="game-panel">\n<table width="100%">\n<tr>\n<td colspan="2" style="text-align: center; font-size: 1.2em; font-weight: bold; color: #c00;">\n<div id="player-caption"></div>\n</td>\n</tr>\n<tr>\n<td style="text-align: left; padding-left: 15px;"><b>Score:</b></td>\n<td style="text-align: right;"><span id="score">0</span></td>\n</tr>\n</table>\n<p class="separator"><a id="show-scores" href="#">Scores List</a><hr style="margin: 0;"></p>\n<table width="100%">\n<tr>\n<td style="text-align: left; padding-left: 15px;"><b>Speed:</b></td>\n<td style="text-align: right; padding-right: 15px;">\n<span id="time-period">\n<select id="period" class="form-control">\n<option value="100">Super fast (20x)</option>\n<option value="200">Very fast (10x)</option>\n<option value="300" selected>Faster (5x)</option>\n<option value="400">Little faster (4x)</option>\n<option value="500">Medium (3x)</option>\n<option value="750">Slow (2x)</option>\n<option value="1000">Very slow (1x)</option>\n</select>\n</span>\n</td>\n</tr>\n</table>\n<table width="100%">\n<tr>\n<td width="50%" style="text-align: center;"><button id="play-start" class="play-buttons btn btn-success">Play</button></td>\n<td width="50%" style="text-align: center;"><button id="play-pause" class="play-buttons btn btn-danger">Pause</button></td>\n</tr>\n</table>\n<table width="100%">\n<tr>\n<td colspan="3" style="text-align: center;"><button id="move-up" class="move-buttons btn btn-primary">&#9650;</button></td>\n</tr>\n<tr>\n<td width="33%" style="text-align: right;"><button id="move-left" class="move-buttons btn btn-primary">&#9668;</button></td>\n<td width="34%" style="text-align: center;"><button id="move-down" class="move-buttons btn btn-primary">&#9660;</button></td>\n<td width="33%" style="text-align: left;"><button id="move-right" class="move-buttons btn btn-primary">&#9658;</button></td>\n</tr>\n</table>\n</span>\n</div>\n\n<div class="modal fade screen-centered" id="player-modal" role="dialog">\n<div class="modal-dialog" style="max-width: 300px;">\n<div class="modal-content">\n<div class="modal-header">\n<button type="button" class="close" data-dismiss="modal">&times;</button>\n<h4 class="modal-title">Witaj!</h4>\n</div>\n<div class="modal-body">\n<p>Podaj swoje imię:</p>\n<input type="text" class="form-control" id="player-name">\n</div>\n<div class="modal-footer">\n<button type="button" id="save-player-name" class="btn btn-success" data-dismiss="modal">Zapisz</button>\n<button type="button" id="cancel-player-name" class="btn btn-warning" data-dismiss="modal">Anuluj</button>\n</div>\n</div>\n</div>\n</div>\n\n<div class="modal fade" id="scores-modal" role="dialog">\n<div class="modal-dialog">\n<div class="modal-content">\n<div class="modal-header">\n<button type="button" class="close" data-dismiss="modal">&times;</button>\n<h4 class="modal-title">Najlepsze wyniki (Top 20)</h4>\n</div>\n<div class="modal-body">\n<table id="scores-list" align="center">\n<tbody>\n<tr><td style="text-align: center;"><img src="public/img/loader.gif"></td></tr>\n</tbody>\n</table>\n</div>\n<div class="modal-footer">\n<button type="button" class="btn btn-warning" data-dismiss="modal">Zamknij</button>\n</div>\n</div>\n</div>\n</div>\n\n<script src="public/js/snake.js"></script>\n<script>\ngameInterval = null;\n</script>', 1, 1, '2017-03-24 21:10:51'),
	(4, 0, 0, 2, 'Penyuntikan yang aman', 'Penyuntikan yang aman', 'Penyuntikan yang aman\n\n<img src="public/img/gallery/4" width="auto" height="auto" class="img-responsive bordered" alt="">', 1, 1, '2017-03-25 12:39:24'),
	(5, 0, 0, 3, 'Penyelenggaraan pelayanan imunisasi', 'Penyelenggaraan pelayanan imunisasi', 'Penyelenggaraan pelayanan imunisasi\n\n<img src="public/img/gallery/3" width="auto" height="auto" class="img-responsive bordered" alt="">', 1, 1, '2017-03-25 12:39:14'),
	(7, 0, 0, 4, 'Perencanaan Program Imunisasi', 'Perencanaan Program Imunisasi', 'Perencanaan Program Imunisasi\n\n<img src="public/img/gallery/1" width="auto" height="auto" class="img-responsive bordered" alt="">', 1, 1, '2017-03-25 12:38:55'),
	(8, 0, 0, 5, 'Penyakit yang dapat dicegah dengan imunisasi', 'Penyakit yang dapat dicegah dengan imunisasi', 'Penyakit yang dapat dicegah dengan imunisasi\n<img src="public/img/gallery/5" width="auto" height="auto" class="img-responsive bordered" alt="">', 1, 1, '2017-03-25 12:38:43'),
	(9, 0, 0, 6, 'Pencatatan Pelaporan dan Pemantauan', 'Pencatatan Pelaporan dan Pemantauan', 'Pencatatan Pelaporan dan Pemantauan', 1, 1, '2017-03-25 12:38:05'),
	(10, 0, 0, 7, 'Pengelolaan Rantai Vaksin dan Vaksin', 'Pengelolaan Rantai Vaksin dan Vaksin', 'Pengelolaan Rantai Vaksin dan Vaksin\n<img src="public/img/gallery/1" width="auto" height="auto" class="img-responsive bordered" alt="">', 1, 1, '2017-03-25 12:38:31');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;

-- Dumping structure for table imunisasi.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  `mask_a` tinyint(1) NOT NULL,
  `mask_o` tinyint(1) NOT NULL,
  `mask_u` tinyint(1) NOT NULL,
  `mask_g` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table imunisasi.roles: ~4 rows (approximately)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
REPLACE INTO `roles` (`id`, `name`, `mask_a`, `mask_o`, `mask_u`, `mask_g`) VALUES
	(1, 'admin', 1, 0, 0, 0),
	(2, 'operator', 0, 1, 0, 0),
	(3, 'user', 0, 0, 1, 0),
	(4, 'guest', 0, 0, 0, 1);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table imunisasi.searches
CREATE TABLE IF NOT EXISTS `searches` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_ip` varchar(20) NOT NULL,
  `search_text` text NOT NULL,
  `results` int(11) NOT NULL,
  `search_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table imunisasi.searches: ~0 rows (approximately)
/*!40000 ALTER TABLE `searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `searches` ENABLE KEYS */;

-- Dumping structure for table imunisasi.settings
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `key_name` varchar(64) NOT NULL,
  `key_value` text NOT NULL,
  `meaning` varchar(128) DEFAULT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key_name` (`key_name`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- Dumping data for table imunisasi.settings: ~34 rows (approximately)
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
REPLACE INTO `settings` (`id`, `key_name`, `key_value`, `meaning`, `modified`) VALUES
	(1, 'app_title', 'IMUNISASI', 'meta judul untuk halaman', '2017-03-24 21:10:52'),
	(2, 'app_suffix', 'IMUNISASI', 'bagian kedua dari meta judul untuk halaman', '2017-03-24 21:10:52'),
	(3, 'app_description', 'IMUNISASI INDONESIA', 'deskripsi meta untuk halaman', '2017-03-24 21:10:52'),
	(4, 'app_logoicon', 'public/img/angularjs-logo.png', 'icon logo di header halaman', '2017-03-24 21:10:52'),
	(5, 'app_brand', 'IMUNISASI', 'judul aplikasi di samping logo di header halaman', '2017-03-24 21:10:52'),
	(6, 'app_keywords', 'imunisasi indo', 'meta keyword untuk halaman', '2017-03-24 21:10:52'),
	(7, 'app_author', 'Crafted & Design by Dani Gunawan &copy; 2017', 'aplikasi web penulis', '2017-03-25 12:30:10'),
	(8, 'app_domain', 'http://localhost/imunisasi/', 'layanan domain internet', '2017-03-24 21:10:52'),
	(9, 'app_footer', '<a href="http://danigunawan.duckdns.org" target="_blank" class="footer-link">&copy; 2017 IMUNISASI PROJECT</a>', 'layanan konten footer', '2017-03-25 12:30:53'),
	(10, 'list_rows_per_page', '[\n{"module": "settings", "lines": 10},\n{"module": "categories", "lines": 13},\n{"module": "pages", "lines": 8},\n{"module": "images", "lines": 6},\n{"module": "gallery", "lines": 21},\n{"module": "users", "lines": 13},\n{"module": "access_levels", "lines": 13},\n{"module": "messages", "lines": 10},\n{"module": "visitors", "lines": 13},\n{"module": "searches", "lines": 15}\n]', 'jumlah baris per halaman daftar Sistem', '2017-03-24 21:10:52'),
	(11, 'paginator_pointer_band', '5', 'berbagai indikator paginator untuk setiap sisi', '2017-03-24 21:10:52'),
	(12, 'visitors_excluded', '\'192.168.0.1\', \'192.168.0.100\'', 'Alamat IP yang dikecualikan dari tampilan dalam laporan kunjungan', '2017-03-24 21:10:52'),
	(13, 'visitors_period', '-180 days', 'Jumlah hari-hari terakhir dimuat melaporkan kunjungan', '2017-03-24 21:10:52'),
	(14, 'visitors_referer', 'http', 'Browser filter HTTP referer pengguna dalam laporan kunjungan', '2017-03-24 21:10:52'),
	(15, 'carousel_images', '[\n{"image": "1", "text": "Angular CMS slider"}, \n{"image": "2", "text": "Angular CMS slider"},\n{"image": "3", "text": "Angular CMS slider"}, \n{"image": "4", "text": "Angular CMS slider"}, \n{"image": "5", "text": "Angular CMS slider"}, \n{"image": "6", "text": "Angular CMS slider"}, \n{"image": "7", "text": "Angular CMS slider"}, \n{"image": "8", "text": "Angular CMS slider"}, \n{"image": "9", "text": "Angular CMS slider"}, \n{"image": "10", "text": "Angular CMS slider"}, \n{"image": "11", "text": "Angular CMS slider"}, \n{"image": "12", "text": "Angular CMS slider"}, \n{"image": "13", "text": "Angular CMS slider"} \n]', 'Indeks gambar dari galeri, yang akan ditampilkan dalam korsel geser', '2017-03-24 21:10:52'),
	(16, 'carousel_interval', '5000', 'menampilkan gambar Interval dalam korsel geser', '2017-03-24 21:10:52'),
	(17, 'carousel_index_enabled', 'true', 'apakah itu di korsel slide di halaman rumah', '2017-03-24 21:10:52'),
	(18, 'carousel_page_enabled', 'true', 'apakah itu pada subhalaman carousel geser', '2017-03-24 21:10:52'),
	(19, 'carousel_category_enabled', 'true', 'apakah itu pada kategori carousel geser', '2017-03-24 21:10:52'),
	(20, 'carousel_contact_enabled', 'true', 'apakah itu pada slide carousel pada halaman kontak', '2017-03-24 21:10:52'),
	(21, 'carousel_search_enabled', 'true', 'apakah itu pada slide carousel di halaman pencarian', '2017-03-24 21:10:52'),
	(22, 'send_new_message_report', 'true', 'mengirim laporan e-mail tentang penampilan pesan baru', '2017-03-24 21:10:52'),
	(23, 'email_host', 'dhanexlab2@gmail.com', 'tuan rumah mengirim email', '2017-03-25 12:31:22'),
	(24, 'email_port', '587', 'port smtp', '2017-03-24 21:10:52'),
	(25, 'email_password', 'dhan29912120', 'password account mailing', '2017-03-25 12:31:29'),
	(26, 'email_sender_name', 'Mail Manager', 'nama layanan e-mail Anda', '2017-03-24 21:10:52'),
	(27, 'email_sender_address', 'sender@domain.pl', 'Alamat layanan e-mail Anda', '2017-03-24 21:10:52'),
	(28, 'email_admin_name', 'dhanexlab', 'nama administrator layanan e-mail Anda', '2017-03-24 21:10:52'),
	(29, 'email_admin_address', 'dhanexlab@gmail.com', 'e-mail administrator layanan', '2017-03-24 21:10:52'),
	(30, 'email_report_address', 'dhanexlab@gmail.com', 'laporan Alamat e-mail', '2017-03-24 21:10:52'),
	(31, 'email_report_subject', 'layanan laporan', 'pelaporan surat tentang acara tersebut', '2017-03-24 21:10:52'),
	(32, 'email_report_body', 'Laporan insiden di situs', 'e-mail rapotującego teks', '2017-03-24 21:10:52'),
	(33, 'email_password_subject', 'Password baru', 'topik yang dihasilkan email dengan password baru', '2017-03-24 21:10:52'),
	(34, 'email_password_body', 'Atas permintaan Anda kami mengirimkan password baru untuk login. Berikut adalah data Anda:', 'konten yang dihasilkan email dengan password baru', '2017-03-24 21:10:52');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Dumping structure for table imunisasi.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(128) NOT NULL,
  `role` smallint(3) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL,
  `logged_in` datetime NOT NULL,
  `token` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table imunisasi.users: ~1 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `login`, `password`, `email`, `role`, `active`, `logged_in`, `token`) VALUES
	(1, 'dhanexlab', '2c614e5cf864ba613d2005c1e9b3589e19c22686', 'dhanexlab@gmail.com', 1, 1, '2017-03-25 12:27:15', '50a20d8556e2fb5d58707081074a7800e89950d15c13e32e6b87c46e071d8386');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table imunisasi.visitors
CREATE TABLE IF NOT EXISTS `visitors` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `visitor_ip` varchar(20) NOT NULL,
  `http_referer` text DEFAULT NULL,
  `request_uri` text NOT NULL,
  `visited` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- Dumping data for table imunisasi.visitors: ~56 rows (approximately)
/*!40000 ALTER TABLE `visitors` DISABLE KEYS */;
REPLACE INTO `visitors` (`id`, `visitor_ip`, `http_referer`, `request_uri`, `visited`) VALUES
	(1, '::1', '', '/', '2017-03-25 04:11:19'),
	(2, '::1', '', '/login', '2017-03-25 04:11:28'),
	(3, '::1', '', '/admin', '2017-03-25 04:11:35'),
	(4, '::1', '', '/settings', '2017-03-25 04:11:42'),
	(5, '::1', '', '/pages', '2017-03-25 04:11:52'),
	(6, '::1', '', '/', '2017-03-25 04:12:08'),
	(7, '::1', '', '/admin', '2017-03-25 04:12:15'),
	(8, '::1', '', '/pages', '2017-03-25 04:12:17'),
	(9, '::1', 'http://localhost/imunisasi/pages', '/', '2017-03-25 04:12:35'),
	(10, '::1', '', '/', '2017-03-25 04:14:49'),
	(11, '::1', '', '/', '2017-03-25 04:16:02'),
	(12, '::1', '', '/admin', '2017-03-25 04:16:49'),
	(13, '::1', '', '/visitors', '2017-03-25 04:32:11'),
	(14, '::1', '', '/settings', '2017-03-25 04:32:13'),
	(15, '::1', '', '/', '2017-03-25 12:26:18'),
	(16, '::1', '', '/login', '2017-03-25 12:26:41'),
	(17, '::1', '', '/register', '2017-03-25 12:26:43'),
	(18, '::1', '', '/login', '2017-03-25 12:26:44'),
	(19, '::1', '', '/admin', '2017-03-25 12:27:16'),
	(20, '::1', '', '/categories', '2017-03-25 12:29:03'),
	(21, '::1', '', '/users', '2017-03-25 12:29:51'),
	(22, '::1', '', '/settings', '2017-03-25 12:29:52'),
	(23, '::1', '', '/settings', '2017-03-25 12:31:34'),
	(24, '::1', '', '/styles', '2017-03-25 12:31:46'),
	(25, '::1', '', '/styles', '2017-03-25 12:32:20'),
	(26, '::1', '', '/users', '2017-03-25 12:32:22'),
	(27, '::1', '', '/settings', '2017-03-25 12:32:23'),
	(28, '::1', '', '/scripts', '2017-03-25 12:32:25'),
	(29, '::1', '', '/settings', '2017-03-25 12:32:26'),
	(30, '::1', '', '/admin', '2017-03-25 12:32:27'),
	(31, '::1', '', '/settings', '2017-03-25 12:32:30'),
	(32, '::1', '', '/acl', '2017-03-25 12:32:32'),
	(33, '::1', '', '/categories', '2017-03-25 12:32:38'),
	(34, '::1', '', '/pages', '2017-03-25 12:32:40'),
	(35, '::1', '', '/images', '2017-03-25 12:32:41'),
	(36, '::1', '', '/', '2017-03-25 12:32:53'),
	(37, '::1', '', '/', '2017-03-25 12:32:53'),
	(38, '::1', '', '/admin', '2017-03-25 12:32:55'),
	(39, '::1', '', '/categories', '2017-03-25 12:32:58'),
	(40, '::1', '', '/pages', '2017-03-25 12:34:36'),
	(41, '::1', '', '/categories', '2017-03-25 12:34:36'),
	(42, '::1', '', '/pages', '2017-03-25 12:35:55'),
	(43, '::1', '', '/categories', '2017-03-25 12:36:23'),
	(44, '::1', '', '/pages', '2017-03-25 12:36:23'),
	(45, '::1', 'http://localhost/imunisasi/pages', '/', '2017-03-25 12:39:31'),
	(46, '::1', 'http://localhost/imunisasi/pages', '/category/2', '2017-03-25 12:39:33'),
	(47, '::1', 'http://localhost/imunisasi/pages', '/category/5', '2017-03-25 12:39:38'),
	(48, '::1', 'http://localhost/imunisasi/pages', '/', '2017-03-25 12:39:41'),
	(49, '::1', '', '/categories', '2017-03-25 12:39:49'),
	(50, '::1', 'http://localhost/imunisasi/pages', '/admin', '2017-03-25 12:39:54'),
	(51, '::1', 'http://localhost/imunisasi/pages', '/pages', '2017-03-25 12:39:59'),
	(52, '::1', 'http://localhost/imunisasi/pages', '/', '2017-03-25 12:44:00'),
	(53, '::1', 'http://localhost/imunisasi/pages', '/category/2', '2017-03-25 12:44:05'),
	(54, '::1', 'http://localhost/imunisasi/pages', '/', '2017-03-25 12:44:07'),
	(55, '::1', 'http://localhost/imunisasi/pages', '/category/4', '2017-03-25 12:44:22'),
	(56, '::1', 'http://localhost/imunisasi/pages', '/', '2017-03-25 12:44:27');
/*!40000 ALTER TABLE `visitors` ENABLE KEYS */;

-- Dumping structure for table imunisasi._game_scores
CREATE TABLE IF NOT EXISTS `_game_scores` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `player` varchar(64) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `score` int(11) NOT NULL,
  `saved` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `player` (`player`,`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table imunisasi._game_scores: ~0 rows (approximately)
/*!40000 ALTER TABLE `_game_scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `_game_scores` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
