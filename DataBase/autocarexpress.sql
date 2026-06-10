/*
SQLyog Community v13.3.1 (64 bit)
MySQL - 10.4.32-MariaDB : Database - autocarexpress
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`autocarexpress` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `autocarexpress`;

/*Table structure for table `cache` */

DROP TABLE IF EXISTS `cache`;

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cache` */

/*Table structure for table `cache_locks` */

DROP TABLE IF EXISTS `cache_locks`;

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_locks_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cache_locks` */

/*Table structure for table `categorias` */

DROP TABLE IF EXISTS `categorias`;

CREATE TABLE `categorias` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `categorias` */

insert  into `categorias`(`id`,`nombre`,`created_at`,`updated_at`) values 
(1,'SUV',NULL,NULL),
(2,'Sedan',NULL,NULL),
(3,'PickUp',NULL,NULL),
(4,'Deportivo',NULL,NULL),
(5,'Hatchback',NULL,NULL),
(6,'Camioneta',NULL,NULL);

/*Table structure for table `contacto_vehiculos` */

DROP TABLE IF EXISTS `contacto_vehiculos`;

CREATE TABLE `contacto_vehiculos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `vehiculo_id` bigint(20) unsigned NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contacto_vehiculos_vehiculo_id_foreign` (`vehiculo_id`),
  CONSTRAINT `contacto_vehiculos_vehiculo_id_foreign` FOREIGN KEY (`vehiculo_id`) REFERENCES `vehiculos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `contacto_vehiculos` */

insert  into `contacto_vehiculos`(`id`,`vehiculo_id`,`telefono`,`created_at`,`updated_at`) values 
(1,5,'74561321','2026-06-07 21:27:36','2026-06-07 21:27:36'),
(2,5,'71860080','2026-06-07 21:27:36','2026-06-07 21:27:36'),
(3,6,'72881108','2026-06-10 02:24:36','2026-06-10 02:24:36'),
(4,6,'75400186','2026-06-10 02:24:36','2026-06-10 02:24:36'),
(5,7,'77702788','2026-06-10 02:33:11','2026-06-10 02:33:11'),
(6,7,'70015569','2026-06-10 02:33:11','2026-06-10 02:33:11'),
(7,8,'68344946','2026-06-10 02:42:36','2026-06-10 02:42:36'),
(8,8,'71698701','2026-06-10 02:42:36','2026-06-10 02:42:36');

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `favoritos` */

DROP TABLE IF EXISTS `favoritos`;

CREATE TABLE `favoritos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `vehiculo_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `favoritos_user_id_foreign` (`user_id`),
  KEY `favoritos_vehiculo_id_foreign` (`vehiculo_id`),
  CONSTRAINT `favoritos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `favoritos_vehiculo_id_foreign` FOREIGN KEY (`vehiculo_id`) REFERENCES `vehiculos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `favoritos` */

insert  into `favoritos`(`id`,`user_id`,`vehiculo_id`,`created_at`,`updated_at`) values 
(5,1,5,'2026-06-10 01:57:09','2026-06-10 01:57:09'),
(6,2,5,'2026-06-10 02:10:38','2026-06-10 02:10:38');

/*Table structure for table `imagen_vehiculos` */

DROP TABLE IF EXISTS `imagen_vehiculos`;

CREATE TABLE `imagen_vehiculos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `vehiculo_id` bigint(20) unsigned NOT NULL,
  `ruta` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `imagen_vehiculos_vehiculo_id_foreign` (`vehiculo_id`),
  CONSTRAINT `imagen_vehiculos_vehiculo_id_foreign` FOREIGN KEY (`vehiculo_id`) REFERENCES `vehiculos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `imagen_vehiculos` */

insert  into `imagen_vehiculos`(`id`,`vehiculo_id`,`ruta`,`created_at`,`updated_at`) values 
(5,5,'vehiculos/VotJLgfwI2MWOWuQXNB3Y7aLn6FEkrh7Nd5Om4Xt.jpg','2026-06-07 21:27:36','2026-06-07 21:27:36'),
(6,5,'vehiculos/eKI8vfhgcvpdX4gQoc6PQeCucw8d0ho50nVqcda3.jpg','2026-06-07 21:27:36','2026-06-07 21:27:36'),
(7,5,'vehiculos/RFaX6oEvWcOWi0vbhRsAeaas66PpH8kBBg1ha9oT.jpg','2026-06-07 21:27:36','2026-06-07 21:27:36'),
(8,6,'vehiculos/nfznX9a99u4hFB4Hq828n2yS13OmM0ZOcawCeCw4.jpg','2026-06-10 02:24:36','2026-06-10 02:24:36'),
(9,6,'vehiculos/QwuXYQKcIASR8lKDOdYAHfWJG9ouggGCh8cXuNXy.jpg','2026-06-10 02:24:36','2026-06-10 02:24:36'),
(10,6,'vehiculos/h4oj1E4ZTyhb5kaq6cZDp1yGXHWoZbfTeqteDz3r.jpg','2026-06-10 02:24:36','2026-06-10 02:24:36'),
(11,6,'vehiculos/TDO9mc0oleGYf4KxXVHfFlTlLyfcHh01wDohtw3e.jpg','2026-06-10 02:24:36','2026-06-10 02:24:36'),
(12,7,'vehiculos/EHWEcvWPyXradrBZNqrbbzkLGDB1xa00VIxRzVuq.jpg','2026-06-10 02:33:11','2026-06-10 02:33:11'),
(13,7,'vehiculos/4cFVDjPXzQdAeaFlZ8ncd80g3BTxpoIS4BLmCZbf.jpg','2026-06-10 02:33:11','2026-06-10 02:33:11'),
(14,7,'vehiculos/znem8SHe8eGh6HkSfkGc1m0R4D5OJhvb3PAeseNa.jpg','2026-06-10 02:33:11','2026-06-10 02:33:11'),
(15,7,'vehiculos/7SLG9W1jL6bO9mmrNiJSfI38M4p26NSUdKTdCr4F.jpg','2026-06-10 02:33:11','2026-06-10 02:33:11'),
(16,8,'vehiculos/Y39zkURY9RYo7Su69cHoc7YX2rWWR4SMpO0Zzgd7.jpg','2026-06-10 02:42:36','2026-06-10 02:42:36'),
(17,8,'vehiculos/PedvqVol1Df6944X7AnYHNxqlgUrpu8KNWQH8R9O.jpg','2026-06-10 02:42:36','2026-06-10 02:42:36'),
(18,8,'vehiculos/B8Qv1aGgd9ZDj28NIdtlj0gtI88OsCYwh2Rpdjae.jpg','2026-06-10 02:42:36','2026-06-10 02:42:36'),
(19,8,'vehiculos/EKtXXn1VcxXdQX4rGetPgIPn9hjNKmAd9XMEcUqD.jpg','2026-06-10 02:42:36','2026-06-10 02:42:36');

/*Table structure for table `job_batches` */

DROP TABLE IF EXISTS `job_batches`;

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `job_batches` */

/*Table structure for table `jobs` */

DROP TABLE IF EXISTS `jobs`;

CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `jobs` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'0001_01_01_000000_create_users_table',1),
(2,'0001_01_01_000001_create_cache_table',1),
(3,'0001_01_01_000002_create_jobs_table',1),
(4,'2026_06_05_203800_create_categorias_table',1),
(5,'2026_06_05_203822_create_vehiculos_table',1),
(6,'2026_06_05_203848_create_favoritos_table',1),
(7,'2026_06_07_200946_create_imagen_vehiculos_table',2),
(8,'2026_06_07_211359_create_contacto_vehiculos_table',3);

/*Table structure for table `password_reset_tokens` */

DROP TABLE IF EXISTS `password_reset_tokens`;

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_reset_tokens` */

/*Table structure for table `sessions` */

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sessions` */

insert  into `sessions`(`id`,`user_id`,`ip_address`,`user_agent`,`payload`,`last_activity`) values 
('p5Yp5yVgQdVWzAwLguyWeV0y7c2et5xiLXn42HNL',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.123.0 Chrome/148.0.7778.97 Electron/42.2.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoib2J5Z1MzOVA5Tjk2cGVlZXRNVkZQMkc2ZkRQVjNnUWxraXY4RTdwUCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1781059959),
('qrFDz3SovzsWjiJPViQih2rXWwJb2Aq36aBl64Kh',4,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTG9TNElwc3BpVzExQ3pPOVg4TDRDNzFqbjNCSzJRNHR1dkJEWm1BdiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC92ZWhpY3Vsb3MvNyI7czo1OiJyb3V0ZSI7czoxNDoidmVoaWN1bG9zLnNob3ciO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo0O30=',1781059813);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`) values 
(1,'Emerson Padilla','emer.padilla10@gmail.com',NULL,'$2y$12$vy46JFUG63DaOAFcTnMZGO.kEkfpSwIMENG3L.6T/x13at.Gq8dtu','cCqyduuRQqyKhUcnOAziDX8I0GFVgcSMjPKHYPAgan1xPyk1pVg9rC7cdusD','2026-06-05 22:29:02','2026-06-05 22:29:02'),
(2,'Brayan Vasquez','b.vasquez@gmail.com',NULL,'$2y$12$Y0woCSSWZ8jiKNnQOMetreU7ET8KhoMuPn5AuFDpB/D1CNEvoZo.u',NULL,'2026-06-07 18:01:14','2026-06-07 18:01:14'),
(3,'Roberto Mezquita','robertomezquita@gmail.com',NULL,'$2y$12$TdBpMOP9Z.Cao9s4PcV2YudwG6WNOfY0ni83NZ4dO1R9.vJeb6kjO',NULL,'2026-06-10 02:30:58','2026-06-10 02:30:58'),
(4,'Hector Alvarado','hector.alvarado@gmail.com',NULL,'$2y$12$WAqu2Sj39vfBf9aA8rebieY9l394hnBIqRxbPPk.g.3cMZ5dVWJga',NULL,'2026-06-10 02:37:46','2026-06-10 02:37:46');

/*Table structure for table `vehiculos` */

DROP TABLE IF EXISTS `vehiculos`;

CREATE TABLE `vehiculos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `categoria_id` bigint(20) unsigned NOT NULL,
  `marca` varchar(255) NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `anio` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `kilometraje` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vehiculos_user_id_foreign` (`user_id`),
  KEY `vehiculos_categoria_id_foreign` (`categoria_id`),
  CONSTRAINT `vehiculos_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE CASCADE,
  CONSTRAINT `vehiculos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `vehiculos` */

insert  into `vehiculos`(`id`,`user_id`,`categoria_id`,`marca`,`modelo`,`anio`,`precio`,`kilometraje`,`descripcion`,`imagen`,`created_at`,`updated_at`) values 
(5,1,4,'Nissan','RX7',1995,105000.00,30000,'Mazda rx7 color rojo usado',NULL,'2026-06-07 21:27:36','2026-06-07 21:27:36'),
(6,2,3,'Mitsubishi','L200 SPORTERO',2024,15000.00,40698,'Pickup Mitsubishi Gris 5 pasajeros 4x4',NULL,'2026-06-10 02:24:35','2026-06-10 02:24:35'),
(7,3,3,'Nissan','FRONTIER P 668866',2015,9500.00,168248,'Nissan Frontier 2015 traccion 4x2 de transmision Manual',NULL,'2026-06-10 02:33:11','2026-06-10 02:33:11'),
(8,4,6,'Hyundai','TUCSON GL P 738665',2017,12500.00,117981,'Hyundai color azul tipo camioneta de transmision automatica',NULL,'2026-06-10 02:42:36','2026-06-10 02:42:36');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
