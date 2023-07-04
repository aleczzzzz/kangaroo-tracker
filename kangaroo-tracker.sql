-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.31 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table kangaroo_tracker.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table kangaroo_tracker.failed_jobs: 0 rows
DELETE FROM `failed_jobs`;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table kangaroo_tracker.kangaroos
CREATE TABLE IF NOT EXISTS `kangaroos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(8,2) unsigned NOT NULL,
  `height` double(8,2) unsigned NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `friendliness` enum('friendly','not friendly') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kangaroos_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table kangaroo_tracker.kangaroos: 53 rows
DELETE FROM `kangaroos`;
/*!40000 ALTER TABLE `kangaroos` DISABLE KEYS */;
INSERT INTO `kangaroos` (`id`, `name`, `nickname`, `weight`, `height`, `gender`, `color`, `friendliness`, `birthday`, `created_at`, `updated_at`) VALUES
	(1, 'Kangaroo Name', 'Kangaroo 1', 35.50, 5.70, 'male', NULL, 'friendly', '2010-01-01', '2023-07-04 13:49:22', '2023-07-04 13:49:22'),
	(2, 'Tomas Robel', 'Izabella', 341.17, 84.58, 'female', 'purple', 'not friendly', '2013-02-15', '2023-07-04 17:01:50', '2023-07-04 17:01:50'),
	(3, 'Dejuan Bauch', 'Marielle', 9.36, 39.72, 'female', 'aqua', 'not friendly', '1990-05-26', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(4, 'Krystel Stiedemann', 'Joelle', 93.00, 51.09, 'female', 'silver', 'friendly', '1982-09-20', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(5, 'Prof. Shaylee Ratke', 'Jermain', 2.96, 42.32, 'male', 'olive', 'friendly', '1988-06-29', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(6, 'Clementine King DVM', 'Tyler', 91.65, 29.80, 'male', 'yellow', 'not friendly', '2020-10-10', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(7, 'Rhianna Medhurst MD', 'Brennon', 94.83, 3.44, 'male', 'black', 'not friendly', '2004-05-25', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(8, 'Jonatan Senger IV', 'Cale', 16.68, 76.37, 'female', 'green', 'friendly', '1974-02-07', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(9, 'Mr. Lorenz Grant', 'Scotty', 90.98, 35.50, 'male', 'teal', 'friendly', '1978-05-25', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(10, 'Tremaine Kub', 'Lucas', 48.43, 52.08, 'female', 'aqua', 'friendly', '1980-12-25', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(11, 'Arvid Hahn', 'Halle', 99.31, 27.61, 'female', 'lime', 'friendly', '1998-03-27', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(12, 'Miles Casper', 'Abdullah', 54.77, 49.90, 'male', 'silver', 'not friendly', '1992-02-12', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(13, 'Daniela Schoen', 'Zella', 97.19, 40.29, 'male', 'white', 'not friendly', '1973-11-05', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(14, 'Mack Emard DDS', 'Kaycee', 37.45, 98.28, 'male', 'navy', 'not friendly', '1983-11-03', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(15, 'Emily Dickinson', 'Cordie', 65.99, 80.38, 'female', 'yellow', 'friendly', '1978-06-08', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(16, 'Alexander Thompson', 'Everardo', 50.07, 78.11, 'male', 'navy', 'not friendly', '2006-07-22', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(17, 'Mr. Alfonso Jacobs', 'Fredrick', 58.72, 53.45, 'female', 'purple', 'friendly', '2012-09-12', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(18, 'Ms. Odessa Tremblay', 'Katelyn', 82.64, 27.98, 'female', 'white', 'not friendly', '1987-12-17', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(20, 'Una Muller', 'Hilda', 29.03, 23.09, 'female', 'black', 'friendly', '2005-08-12', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(21, 'Izabella Greenfelder', 'Jean', 31.49, 42.45, 'male', 'lime', 'not friendly', '2001-01-01', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(22, 'Prof. Kaylie Blick III', 'Rita', 52.22, 87.36, 'male', 'maroon', 'friendly', '2021-08-18', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(23, 'Erika Schamberger', 'Twila', 64.64, 38.12, 'male', 'white', 'friendly', '2011-09-03', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(24, 'Jessika Bode', 'Abner', 99.21, 59.83, 'male', 'fuchsia', 'friendly', '1986-05-13', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(25, 'Luna Casper', 'Brandy', 92.31, 90.58, 'male', 'teal', 'friendly', '2011-08-07', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(26, 'Leta Harvey', 'Monserrat', 40.80, 77.22, 'female', 'blue', 'not friendly', '2001-06-13', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(27, 'Constantin Streich IV', 'Amparo', 11.87, 67.15, 'female', 'yellow', 'friendly', '1971-07-01', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(28, 'Ms. Lindsay Watsica Sr.', 'Zena', 75.85, 30.60, 'male', 'maroon', 'friendly', '2018-04-12', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(29, 'Wilmer Kling PhD', 'Isaias', 7.14, 42.64, 'female', 'silver', 'friendly', '1988-12-19', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(30, 'Mr. Jerry Spinka', 'D\'angelo', 4.27, 82.02, 'female', 'yellow', 'not friendly', '1970-09-02', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(31, 'Antone Schoen', 'Carson', 92.68, 92.52, 'male', 'olive', 'friendly', '2022-05-08', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(32, 'Chelsie Metz', 'Lamont', 99.01, 48.79, 'male', 'gray', 'not friendly', '1973-05-27', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(33, 'Eugene Smitham DDS', 'Alexandrea', 43.38, 31.78, 'female', 'navy', 'friendly', '1978-01-18', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(34, 'Ethan Sanford', 'Roma', 18.68, 63.71, 'male', 'navy', 'friendly', '2006-06-25', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(35, 'Isabell Armstrong III', 'Chris', 77.18, 24.59, 'female', 'lime', 'friendly', '1975-05-27', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(36, 'Miss Kaycee Turner MD', 'Magnolia', 56.93, 84.15, 'male', 'white', 'friendly', '1993-10-13', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(37, 'Kristofer Spencer', 'Brenna', 84.29, 8.03, 'female', 'maroon', 'not friendly', '1999-04-11', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(38, 'Christiana Botsford', 'Jazlyn', 7.85, 63.29, 'female', 'blue', 'friendly', '2008-12-14', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(39, 'Katelyn Krajcik Sr.', 'Delores', 29.71, 19.79, 'female', 'aqua', 'not friendly', '1984-02-02', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(40, 'Alicia Reinger', 'Jodie', 58.13, 32.37, 'female', 'maroon', 'not friendly', '2016-03-05', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(41, 'Elian Douglas', 'Emelie', 54.42, 35.66, 'male', 'blue', 'friendly', '1988-12-25', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(42, 'Dr. Ocie McGlynn', 'Betsy', 5.09, 3.23, 'male', 'fuchsia', 'not friendly', '2007-02-16', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(43, 'Clotilde Block', 'Jedediah', 67.65, 14.73, 'female', 'teal', 'friendly', '2011-07-24', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(44, 'Mathias Donnelly', 'Arden', 63.66, 17.58, 'male', 'green', 'friendly', '2000-12-11', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(45, 'Kaitlin Kulas', 'Nina', 34.97, 48.44, 'male', 'aqua', 'not friendly', '2003-07-25', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(46, 'Mr. Murray Donnelly', 'Jayce', 60.12, 83.50, 'female', 'black', 'friendly', '2022-01-10', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(47, 'Lelah Prohaska', 'Eriberto', 31.49, 67.61, 'female', 'black', 'not friendly', '2001-07-10', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(48, 'Mr. Leland Cremin', 'Chandler', 91.78, 12.01, 'male', 'navy', 'not friendly', '2001-12-14', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(49, 'Prof. Gordon Baumbach', 'Elisabeth', 40.22, 27.39, 'female', 'navy', 'not friendly', '1988-06-12', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(50, 'Mr. Kyleigh Murazik II', 'Cyrus', 39.22, 63.35, 'male', 'lime', 'friendly', '1979-04-05', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(51, 'Lina Parisian', 'Hilda', 45.62, 14.81, 'female', 'yellow', 'not friendly', '2007-03-01', '2023-07-04 17:02:15', '2023-07-04 17:02:15'),
	(52, 'Jacques Schultz', 'Logan', 63.85, 38.86, 'female', 'white', 'not friendly', '2018-10-27', '2023-07-04 17:02:15', '2023-07-04 17:02:15');
/*!40000 ALTER TABLE `kangaroos` ENABLE KEYS */;

-- Dumping structure for table kangaroo_tracker.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table kangaroo_tracker.migrations: 5 rows
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2023_07_03_154624_create_kangaroos_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table kangaroo_tracker.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table kangaroo_tracker.password_resets: 0 rows
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table kangaroo_tracker.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table kangaroo_tracker.personal_access_tokens: 0 rows
DELETE FROM `personal_access_tokens`;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Dumping structure for table kangaroo_tracker.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table kangaroo_tracker.users: 0 rows
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
