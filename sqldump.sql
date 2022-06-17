-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           5.7.33 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Listage des données de la table ticket.categories : ~3 rows (environ)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Assistance', NULL, NULL),
	(2, 'Problème technique', NULL, NULL),
	(3, 'Panne', NULL, NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Listage des données de la table ticket.comments : ~2 rows (environ)
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` (`id`, `ticket_id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
	(1, 1, 2, 'Ah bah en fait si, j\'avais mal branché le câble mdr désolé monsieur du support', '2022-06-17 10:14:13', '2022-06-17 10:14:13'),
	(2, 1, 1, 'Pas de soucis tqt. Tu feras gaffe, la bouilloire posée sur l\'onduleur c\'est pas une bonne idée.', '2022-06-17 10:15:24', '2022-06-17 10:15:24');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;

-- Listage des données de la table ticket.migrations : ~5 rows (environ)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2022_06_17_083244_create_tickets_table', 1),
	(4, '2022_06_17_083257_create_comments_table', 1),
	(5, '2022_06_17_083307_create_categories_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Listage des données de la table ticket.password_resets : ~0 rows (environ)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Listage des données de la table ticket.tickets : ~1 rows (environ)
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` (`id`, `user_id`, `category_id`, `ticket_id`, `title`, `priority`, `message`, `status`, `created_at`, `updated_at`) VALUES
	(1, 2, 3, 'IRIE0M79QN', 'Panne internet', 'high', 'Bonjour, je n\'ai plus d\'accès à internet', 'Open', '2022-06-17 10:13:03', '2022-06-17 10:13:03');
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;

-- Listage des données de la table ticket.users : ~2 rows (environ)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'admin@gmail.com', '$2y$10$CgxX44JxwsahXhisF.tsEeIDb.uuZR5Pdvx/yuxcLXgVnDpHPDSom', 1, 'W7cn61ytSKiTLMjrY8K9apG2nMST6CXm79A2NdR95c0paPkCEgCgI0nh6dad', '2022-06-17 08:55:06', '2022-06-17 08:55:06'),
	(2, 'demo', 'demo@gmail.com', '$2y$10$q16Mf3mWyrFZ6LITEIkZt.k8TvalO3boFIwPST7mE3y4vN5Z0idbe', 0, 'CKlDb511sb99BPJN4PB9vRHAx5NgJbuty8sG213FSCrANDOyw2ryXSL6sBYy', '2022-06-17 08:55:51', '2022-06-17 08:55:51');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
