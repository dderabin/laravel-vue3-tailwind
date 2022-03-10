/*
 Navicat MySQL Data Transfer

 Source Server         : lokal
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : 127.0.0.1:3306
 Source Schema         : laravel-vue-crud-sample

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 10/03/2022 11:53:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for client_company_vehicle_fuel_types
-- ----------------------------
DROP TABLE IF EXISTS `client_company_vehicle_fuel_types`;
CREATE TABLE `client_company_vehicle_fuel_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` decimal(8,2) unsigned NOT NULL,
  `vk` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `client_company_vehicle_fuel_types_company_id_foreign` (`company_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of client_company_vehicle_fuel_types
-- ----------------------------
BEGIN;
INSERT INTO `client_company_vehicle_fuel_types` (`id`, `company_id`, `name`, `unit_price`, `vk`, `created_at`, `updated_at`) VALUES (1, 1, 'Super Plus', 2.49, 2.80, '2021-11-13 07:57:11', '2021-11-13 07:57:11');
INSERT INTO `client_company_vehicle_fuel_types` (`id`, `company_id`, `name`, `unit_price`, `vk`, `created_at`, `updated_at`) VALUES (2, 1, 'Diesel', 1.52, 0.00, '2021-11-13 07:03:00', '2021-11-13 07:03:00');
INSERT INTO `client_company_vehicle_fuel_types` (`id`, `company_id`, `name`, `unit_price`, `vk`, `created_at`, `updated_at`) VALUES (3, 1, 'Super E10', 1.66, 0.00, '2021-11-13 07:03:00', '2021-11-13 07:03:00');
INSERT INTO `client_company_vehicle_fuel_types` (`id`, `company_id`, `name`, `unit_price`, `vk`, `created_at`, `updated_at`) VALUES (4, 1, 'Super E5', 1.72, 0.00, '2021-11-13 07:03:00', '2021-11-13 07:03:00');
COMMIT;

-- ----------------------------
-- Table structure for client_vehicles
-- ----------------------------
DROP TABLE IF EXISTS `client_vehicles`;
CREATE TABLE `client_vehicles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` bigint unsigned NOT NULL,
  `group_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `license_plate_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fuel_type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `max_battery_capacity` double(5,1) DEFAULT NULL,
  `max_fuel_capacity` double DEFAULT NULL,
  `created_user` bigint unsigned DEFAULT NULL,
  `updated_user` bigint unsigned DEFAULT NULL,
  `deleted_user` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `client_vehicles_company_id_index` (`company_id`) USING BTREE,
  KEY `client_vehicles_group_id_index` (`group_id`) USING BTREE,
  KEY `client_vehicles_license_plate_number_index` (`license_plate_number`) USING BTREE,
  KEY `client_vehicles_vin_index` (`vin`) USING BTREE,
  KEY `client_vehicles_created_at_index` (`created_at`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of client_vehicles
-- ----------------------------
BEGIN;
INSERT INTO `client_vehicles` (`id`, `company_id`, `group_id`, `name`, `license_plate_number`, `vin`, `fuel_type`, `max_battery_capacity`, `max_fuel_capacity`, `created_user`, `updated_user`, `deleted_user`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, 1, 1, 'Car 1', 'BN-EG-001', 'W1N2533111G', '3', 13.5, 60, NULL, NULL, NULL, '2022-02-19 13:49:29', '2022-02-28 15:50:32', NULL);
INSERT INTO `client_vehicles` (`id`, `company_id`, `group_id`, `name`, `license_plate_number`, `vin`, `fuel_type`, `max_battery_capacity`, `max_fuel_capacity`, `created_user`, `updated_user`, `deleted_user`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, 1, 2, 'Car 2', 'BN-EG-002', 'W1N2539111V3', '3', 13.5, 60, NULL, NULL, NULL, '2022-02-19 13:49:29', '2022-02-28 15:50:40', NULL);
INSERT INTO `client_vehicles` (`id`, `company_id`, `group_id`, `name`, `license_plate_number`, `vin`, `fuel_type`, `max_battery_capacity`, `max_fuel_capacity`, `created_user`, `updated_user`, `deleted_user`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, 1, 1, 'Car 3', 'BN-EG-325', 'W1N2437011J', '1', 66.5, NULL, NULL, NULL, NULL, '2022-02-19 13:49:29', '2022-02-28 16:25:10', NULL);
INSERT INTO `client_vehicles` (`id`, `company_id`, `group_id`, `name`, `license_plate_number`, `vin`, `fuel_type`, `max_battery_capacity`, `max_fuel_capacity`, `created_user`, `updated_user`, `deleted_user`, `created_at`, `updated_at`, `deleted_at`) VALUES (4, 1, 2, 'Car 4', 'BN-EG-234', 'W1K2938901F0', '1', 80.0, NULL, NULL, NULL, NULL, '2022-02-19 13:49:29', '2022-02-28 16:25:56', NULL);
INSERT INTO `client_vehicles` (`id`, `company_id`, `group_id`, `name`, `license_plate_number`, `vin`, `fuel_type`, `max_battery_capacity`, `max_fuel_capacity`, `created_user`, `updated_user`, `deleted_user`, `created_at`, `updated_at`, `deleted_at`) VALUES (5, 1, 1, 'Car 5', 'K-AB 221', 'WVW4242DF34234242', NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-19 13:49:29', '2022-02-19 13:49:29', NULL);
INSERT INTO `client_vehicles` (`id`, `company_id`, `group_id`, `name`, `license_plate_number`, `vin`, `fuel_type`, `max_battery_capacity`, `max_fuel_capacity`, `created_user`, `updated_user`, `deleted_user`, `created_at`, `updated_at`, `deleted_at`) VALUES (6, 1, 1, 'Car 6', 'SU-BB 301E', 'WVW78056845SU06845', NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-19 13:49:29', '2022-02-19 13:49:29', NULL);
INSERT INTO `client_vehicles` (`id`, `company_id`, `group_id`, `name`, `license_plate_number`, `vin`, `fuel_type`, `max_battery_capacity`, `max_fuel_capacity`, `created_user`, `updated_user`, `deleted_user`, `created_at`, `updated_at`, `deleted_at`) VALUES (7, 1, 1, 'Car 7', 'SU-AB 2201E', 'WVW42423SU4234242', NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-19 13:49:29', '2022-02-19 13:49:29', NULL);
INSERT INTO `client_vehicles` (`id`, `company_id`, `group_id`, `name`, `license_plate_number`, `vin`, `fuel_type`, `max_battery_capacity`, `max_fuel_capacity`, `created_user`, `updated_user`, `deleted_user`, `created_at`, `updated_at`, `deleted_at`) VALUES (8, 1, 2, 'Car 8', 'SU-AB 301E', 'WVW780568S450SU6845', NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-19 13:49:29', '2022-02-19 13:49:29', NULL);
INSERT INTO `client_vehicles` (`id`, `company_id`, `group_id`, `name`, `license_plate_number`, `vin`, `fuel_type`, `max_battery_capacity`, `max_fuel_capacity`, `created_user`, `updated_user`, `deleted_user`, `created_at`, `updated_at`, `deleted_at`) VALUES (9, 1, 1, 'Car 9', 'GL-AB 2201E', 'WVW424GGL9L234234242', NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-19 13:49:29', '2022-02-19 13:49:29', NULL);
INSERT INTO `client_vehicles` (`id`, `company_id`, `group_id`, `name`, `license_plate_number`, `vin`, `fuel_type`, `max_battery_capacity`, `max_fuel_capacity`, `created_user`, `updated_user`, `deleted_user`, `created_at`, `updated_at`, `deleted_at`) VALUES (10, 1, 2, 'Car 10', 'GL-AB 301E', 'WVW7805684GL8506845', NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-19 13:49:29', '2022-02-19 13:49:29', NULL);
INSERT INTO `client_vehicles` (`id`, `company_id`, `group_id`, `name`, `license_plate_number`, `vin`, `fuel_type`, `max_battery_capacity`, `max_fuel_capacity`, `created_user`, `updated_user`, `deleted_user`, `created_at`, `updated_at`, `deleted_at`) VALUES (11, 1, 1, 'Car 11', 'GL-AB 21', 'WVW42423BN24234242GL23', NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-19 13:49:29', '2022-02-19 13:49:29', NULL);
INSERT INTO `client_vehicles` (`id`, `company_id`, `group_id`, `name`, `license_plate_number`, `vin`, `fuel_type`, `max_battery_capacity`, `max_fuel_capacity`, `created_user`, `updated_user`, `deleted_user`, `created_at`, `updated_at`, `deleted_at`) VALUES (12, 1, 2, 'Car 12', 'BN-AB 301E', 'WVW7805684506BN3845', NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-19 13:49:29', '2022-02-19 13:49:29', NULL);
INSERT INTO `client_vehicles` (`id`, `company_id`, `group_id`, `name`, `license_plate_number`, `vin`, `fuel_type`, `max_battery_capacity`, `max_fuel_capacity`, `created_user`, `updated_user`, `deleted_user`, `created_at`, `updated_at`, `deleted_at`) VALUES (13, 1, 1, 'Car 13', 'BN-AB 2201E', 'WVW424234234242BN5345235', NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-19 13:49:29', '2022-02-19 13:49:29', NULL);
INSERT INTO `client_vehicles` (`id`, `company_id`, `group_id`, `name`, `license_plate_number`, `vin`, `fuel_type`, `max_battery_capacity`, `max_fuel_capacity`, `created_user`, `updated_user`, `deleted_user`, `created_at`, `updated_at`, `deleted_at`) VALUES (14, 1, 2, 'Car 14', 'BN-AB 301', 'WVW7805684BND506845', NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-19 13:49:29', '2022-02-19 13:49:29', NULL);
INSERT INTO `client_vehicles` (`id`, `company_id`, `group_id`, `name`, `license_plate_number`, `vin`, `fuel_type`, `max_battery_capacity`, `max_fuel_capacity`, `created_user`, `updated_user`, `deleted_user`, `created_at`, `updated_at`, `deleted_at`) VALUES (15, 1, 1, 'Car 15', 'BM-AB 2201E', 'WVW42423423424BM3442', NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-19 13:49:29', '2022-02-19 13:49:29', NULL);
INSERT INTO `client_vehicles` (`id`, `company_id`, `group_id`, `name`, `license_plate_number`, `vin`, `fuel_type`, `max_battery_capacity`, `max_fuel_capacity`, `created_user`, `updated_user`, `deleted_user`, `created_at`, `updated_at`, `deleted_at`) VALUES (16, 1, 2, 'Car 16', 'BM-AB 301E', 'WVW7805684506BM23S845', NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-19 13:49:29', '2022-02-19 13:49:29', NULL);
INSERT INTO `client_vehicles` (`id`, `company_id`, `group_id`, `name`, `license_plate_number`, `vin`, `fuel_type`, `max_battery_capacity`, `max_fuel_capacity`, `created_user`, `updated_user`, `deleted_user`, `created_at`, `updated_at`, `deleted_at`) VALUES (17, 1, 1, 'Car 17', 'BM-AB 220', 'WVW424234234BM42423242', NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-19 13:49:29', '2022-02-19 13:49:29', NULL);
INSERT INTO `client_vehicles` (`id`, `company_id`, `group_id`, `name`, `license_plate_number`, `vin`, `fuel_type`, `max_battery_capacity`, `max_fuel_capacity`, `created_user`, `updated_user`, `deleted_user`, `created_at`, `updated_at`, `deleted_at`) VALUES (18, 1, 2, 'Car 18', 'BM-AB 301E', 'WVW780568BM4234S4506845', NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-19 13:49:29', '2022-02-19 13:49:29', NULL);
COMMIT;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (4, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (5, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (6, '2020_05_21_100000_create_teams_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (7, '2020_05_21_200000_create_team_user_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (8, '2020_05_21_300000_create_team_invitations_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (9, '2022_02_17_113502_create_sessions_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (10, '2022_02_17_115737_create_client_vehicles_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (11, '2022_02_18_161911_create_vehicle_groups_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (12, '2022_02_19_160110_create_telematik_requests_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (13, '2022_02_25_054710_create_telematic_details_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (14, '2022_02_28_060001_add_fueltype_to_vehicles_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (15, '2022_02_28_070001_add_column_device_key', 1);
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sessions
-- ----------------------------
BEGIN;
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES ('4DHBAZeTXhKU7K5FAAWQd6QOiu5MMIisbHCphLjT', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.2 Safari/605.1.15', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoianhYV2ZQczhFVkRycVB1WUp5eWV6dlVkT1g1d3FZeWczWmc5bWxraiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1646908235);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES ('4jIT2vOkIMp2GdDDYkoNtUy0CMAkgikps67oY5PA', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVMzdEs4bVZaU1ZVaGRnODl3RjZiekQ2d0xSRk92QVJCaHZQdlRFViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1646908936);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES ('skLjnD7An5HrB6W2qUsujUcHPW6ddq7rmEliwJZs', 1, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.2 Safari/605.1.15', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiN2QxWk4za1l5YlFYVU5jYk9tM1JORGFRcFFjVkI0aUU5VDFZMUpHWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCQ5MklYVU5wa2pPMHJPUTVieU1pLlllNG9Lb0VhM1JvOWxsQy8ub2cvYXQyLnVoZVdHL2lnaSI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkOTJJWFVOcGtqTzByT1E1YnlNaS5ZZTRvS29FYTNSbzlsbEMvLm9nL2F0Mi51aGVXRy9pZ2kiO30=', 1646909450);
COMMIT;

-- ----------------------------
-- Table structure for team_invitations
-- ----------------------------
DROP TABLE IF EXISTS `team_invitations`;
CREATE TABLE `team_invitations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `team_id` bigint unsigned NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`) USING BTREE,
  CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of team_invitations
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for team_user
-- ----------------------------
DROP TABLE IF EXISTS `team_user`;
CREATE TABLE `team_user` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `team_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of team_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for teams
-- ----------------------------
DROP TABLE IF EXISTS `teams`;
CREATE TABLE `teams` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `teams_user_id_index` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of teams
-- ----------------------------
BEGIN;
INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES (1, 2, 'Dr. Clare Carroll\'s Team', 1, '2022-02-19 13:49:00', '2022-02-19 13:49:00');
INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES (2, 3, 'Neva Friesen\'s Team', 1, '2022-02-19 13:49:00', '2022-02-19 13:49:00');
INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES (3, 4, 'Elfrieda Kessler\'s Team', 1, '2022-02-19 13:49:00', '2022-02-19 13:49:00');
INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES (4, 5, 'Prof. William Collins V\'s Team', 1, '2022-02-19 13:49:00', '2022-02-19 13:49:00');
INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES (5, 6, 'Phyllis Rohan\'s Team', 1, '2022-02-19 13:49:00', '2022-02-19 13:49:00');
INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES (6, 7, 'Shanel Windler PhD\'s Team', 1, '2022-02-19 13:49:00', '2022-02-19 13:49:00');
INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES (7, 8, 'Keeley Eichmann\'s Team', 1, '2022-02-19 13:49:00', '2022-02-19 13:49:00');
INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES (8, 9, 'Delmer Gislason Jr.\'s Team', 1, '2022-02-19 13:49:00', '2022-02-19 13:49:00');
INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES (9, 10, 'Maxime Heidenreich\'s Team', 1, '2022-02-19 13:49:00', '2022-02-19 13:49:00');
INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES (10, 11, 'Ms. Elise Corkery\'s Team', 1, '2022-02-19 13:49:00', '2022-02-19 13:49:00');
INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES (11, 1, 'Verwaltung', 0, '2022-02-19 21:13:24', '2022-02-19 21:13:24');
COMMIT;

-- ----------------------------
-- Table structure for telematic_details
-- ----------------------------
DROP TABLE IF EXISTS `telematic_details`;
CREATE TABLE `telematic_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `vin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint unsigned NOT NULL,
  `req_group_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telematic_id` bigint unsigned NOT NULL,
  `telematic_type` bigint unsigned NOT NULL,
  `charge_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adBlueLevel` double DEFAULT NULL,
  `adBlueLevelWarning` tinyint(1) DEFAULT NULL,
  `batteryState` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batteryVoltage` double DEFAULT NULL,
  `brakeFluidWarning` tinyint(1) DEFAULT NULL,
  `breakPreWartingLiningWear` tinyint(1) DEFAULT NULL,
  `chargeActive` tinyint(1) DEFAULT NULL,
  `chargeEndOfChargeTime` int unsigned DEFAULT NULL,
  `chargeEndOfTimeWeekday` int unsigned DEFAULT NULL,
  `chargePower` double(10,2) DEFAULT NULL,
  `chargeSmart` int unsigned DEFAULT NULL,
  `chargeStatus` int unsigned DEFAULT NULL,
  `chargeTimeFullHour` int unsigned DEFAULT NULL,
  `chargeTimeFullMinute` int unsigned DEFAULT NULL,
  `coolantLevelWarning` tinyint(1) DEFAULT NULL,
  `decklidStatus` tinyint(1) DEFAULT NULL,
  `departureTimeSoc` double(10,1) DEFAULT NULL,
  `distanceReset` double DEFAULT NULL,
  `distanceStart` double DEFAULT NULL,
  `distanceStartZE` double DEFAULT NULL,
  `distanceToService` double DEFAULT NULL,
  `distanzResetZE` double DEFAULT NULL,
  `doorStatusFrontLeft` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doorStatusFrontRight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doorStatusLockDeckLid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doorStatusLockFrontLeft` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doorStatusLockFrontRight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doorStatusLockGas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doorStatusLockRearLeft` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doorStatusLockRearRight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doorStatusLockVehicle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doorStatusRearLeft` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doorStatusRearRight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drivenTimeReset` double DEFAULT NULL,
  `drivenTimeResetZE` double DEFAULT NULL,
  `drivenTimeStart` double DEFAULT NULL,
  `drivenTimeStartZE` double DEFAULT NULL,
  `ecoScoreAccel` double(10,1) DEFAULT NULL,
  `ecoScoreBonusRange` double DEFAULT NULL,
  `ecoScoreConst` double DEFAULT NULL,
  `ecoScoreFreewhl` double DEFAULT NULL,
  `ecoScoreTotal` double DEFAULT NULL,
  `electricConsumptionReset` double(10,1) DEFAULT NULL,
  `electricConsumptionStart` double(10,1) DEFAULT NULL,
  `electricDistanceReset` double DEFAULT NULL,
  `electricDistanceStart` double DEFAULT NULL,
  `electricRangeSkipIndication` tinyint(1) DEFAULT NULL,
  `engineCoolantTemperature` double(4,1) DEFAULT NULL,
  `engineOilTemperature` double(4,1) DEFAULT NULL,
  `fuelLevel` double(5,1) DEFAULT NULL,
  `fuelLevelWarning` tinyint(1) DEFAULT NULL,
  `huLanguage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `huTimeFormat` tinyint(1) DEFAULT NULL,
  `ignitionState` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ignitionStateTimeStamp` timestamp NULL DEFAULT NULL,
  `interiorLightsFront` tinyint(1) DEFAULT NULL,
  `interiorLightsRear` tinyint(1) DEFAULT NULL,
  `lightStatus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `liquidConsumptionReset` double(4,1) DEFAULT NULL,
  `liquidConsumptionStart` double(4,1) DEFAULT NULL,
  `lovVehicleDistance` double DEFAULT NULL,
  `parkbreakStatus` tinyint(1) DEFAULT NULL,
  `positionHeading` double DEFAULT NULL,
  `positionLatitude` double(15,10) DEFAULT NULL,
  `positionLongitude` double(15,10) DEFAULT NULL,
  `positionSpeed` double DEFAULT NULL,
  `positionTimestamp` timestamp NULL DEFAULT NULL,
  `precondAtDeparture` tinyint(1) DEFAULT NULL,
  `precondAtDepartureDisable` tinyint(1) DEFAULT NULL,
  `precondError` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precondImmediate` tinyint(1) DEFAULT NULL,
  `rangeElectric` double DEFAULT NULL,
  `rangeMax` double DEFAULT NULL,
  `readingLampFrontLeft` tinyint(1) DEFAULT NULL,
  `readingLampFrontRight` tinyint(1) DEFAULT NULL,
  `roofSunEvent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roofSunStatus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roofTopStatus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `soc` double(5,1) DEFAULT NULL,
  `socProfile1` double(5,1) DEFAULT NULL,
  `socProfile1TimeStamp` timestamp NULL DEFAULT NULL,
  `socProfile2` double(5,1) DEFAULT NULL,
  `socProfile2TimeStamp` timestamp NULL DEFAULT NULL,
  `socProfile3` double(5,1) DEFAULT NULL,
  `socProfile3TimeStamp` timestamp NULL DEFAULT NULL,
  `socProfile4` double(5,1) DEFAULT NULL,
  `socProfile4TimeStamp` timestamp NULL DEFAULT NULL,
  `socProfile5` double(5,1) DEFAULT NULL,
  `socProfile5TimeStamp` timestamp NULL DEFAULT NULL,
  `speedAverage` double(5,1) DEFAULT NULL,
  `speedAverageReset` double(5,1) DEFAULT NULL,
  `speedCurrentFormIC` double(5,1) DEFAULT NULL,
  `timeToService` double DEFAULT NULL,
  `tyrePressureFrontLeft` double DEFAULT NULL,
  `tyrePressureFrontRight` double DEFAULT NULL,
  `tyrePressureRearLeft` double DEFAULT NULL,
  `tyrePressureRearRight` double DEFAULT NULL,
  `tyrePressureWarning` tinyint(1) DEFAULT NULL,
  `tyreStatusFrontLeft` tinyint(1) DEFAULT NULL,
  `tyreStatusFrontRight` tinyint(1) DEFAULT NULL,
  `tyreStatusRearLeft` tinyint(1) DEFAULT NULL,
  `tyreStatusRearRight` tinyint(1) DEFAULT NULL,
  `tyreWarningSystemError` tinyint(1) DEFAULT NULL,
  `warningBrakeLiningWear` tinyint(1) DEFAULT NULL,
  `warningLowBattery` tinyint(1) DEFAULT NULL,
  `washerFluidWarning` tinyint(1) DEFAULT NULL,
  `windowStatusFrontLeft` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `windowStatusFrontRight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `windowStatusRearLeft` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `windowStatusRearRight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_user` bigint unsigned DEFAULT NULL,
  `updated_user` bigint unsigned DEFAULT NULL,
  `deleted_user` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `telematic_details_company_id_index` (`company_id`),
  KEY `telematic_details_req_group_id_index` (`req_group_id`),
  KEY `telematic_details_telematic_id_index` (`telematic_id`),
  KEY `telematic_details_telematic_type_index` (`telematic_type`),
  KEY `telematic_details_charge_id_index` (`charge_id`),
  KEY `telematic_details_vin_index` (`vin`),
  KEY `telematic_details_created_at_index` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of telematic_details
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for telematik_requests
-- ----------------------------
DROP TABLE IF EXISTS `telematik_requests`;
CREATE TABLE `telematik_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` bigint unsigned NOT NULL,
  `req_group_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telematic_id` bigint unsigned NOT NULL,
  `charge_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `response_details` json DEFAULT NULL,
  `created_user` bigint unsigned DEFAULT NULL,
  `updated_user` bigint unsigned DEFAULT NULL,
  `deleted_user` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `telematik_requests_company_id_index` (`company_id`),
  KEY `telematik_requests_req_group_id_index` (`req_group_id`),
  KEY `telematik_requests_telematic_id_index` (`telematic_id`),
  KEY `telematik_requests_charge_id_index` (`charge_id`),
  KEY `telematik_requests_vin_index` (`vin`),
  KEY `telematik_requests_created_at_index` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of telematik_requests
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` (`id`, `company_id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES (1, 1, 'Max Mustermann', 'max@test.de', '2022-02-19 13:49:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'Vc8g3XZhUp', 11, NULL, '2022-02-19 13:49:00', '2022-02-19 21:13:24');
INSERT INTO `users` (`id`, `company_id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES (2, NULL, 'Dr. Clare Carroll', 'hstokes@example.net', '2022-02-19 13:49:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'WNkNSp5pDs', NULL, NULL, '2022-02-19 13:49:00', '2022-02-19 13:49:00');
INSERT INTO `users` (`id`, `company_id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES (3, NULL, 'Neva Friesen', 'conroy.sheldon@example.net', '2022-02-19 13:49:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'tJEUnc9FQ1', NULL, NULL, '2022-02-19 13:49:00', '2022-02-19 13:49:00');
INSERT INTO `users` (`id`, `company_id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES (4, NULL, 'Elfrieda Kessler', 'hwest@example.org', '2022-02-19 13:49:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'XvYeu74zIG', NULL, NULL, '2022-02-19 13:49:00', '2022-02-19 13:49:00');
INSERT INTO `users` (`id`, `company_id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES (5, NULL, 'Prof. William Collins V', 'alejandrin.corkery@example.com', '2022-02-19 13:49:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'eKtEsHHFBV', NULL, NULL, '2022-02-19 13:49:00', '2022-02-19 13:49:00');
INSERT INTO `users` (`id`, `company_id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES (6, NULL, 'Phyllis Rohan', 'bethany56@example.com', '2022-02-19 13:49:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'ahEkNOgzPh', NULL, NULL, '2022-02-19 13:49:00', '2022-02-19 13:49:00');
INSERT INTO `users` (`id`, `company_id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES (7, NULL, 'Shanel Windler PhD', 'ktreutel@example.net', '2022-02-19 13:49:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'l7BnUNNwJM', NULL, NULL, '2022-02-19 13:49:00', '2022-02-19 13:49:00');
INSERT INTO `users` (`id`, `company_id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES (8, NULL, 'Keeley Eichmann', 'anastasia.nienow@example.org', '2022-02-19 13:49:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'CHUHBMCO3q', NULL, NULL, '2022-02-19 13:49:00', '2022-02-19 13:49:00');
INSERT INTO `users` (`id`, `company_id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES (9, NULL, 'Delmer Gislason Jr.', 'oconner.shanelle@example.com', '2022-02-19 13:49:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'dDiGdHjCal', NULL, NULL, '2022-02-19 13:49:00', '2022-02-19 13:49:00');
INSERT INTO `users` (`id`, `company_id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES (10, NULL, 'Maxime Heidenreich', 'hand.breanna@example.org', '2022-02-19 13:49:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'wh9Xh0B16O', NULL, NULL, '2022-02-19 13:49:00', '2022-02-19 13:49:00');
INSERT INTO `users` (`id`, `company_id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES (11, NULL, 'Ms. Elise Corkery', 'uhuel@example.com', '2022-02-19 13:49:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'EgrCwxgb49', NULL, NULL, '2022-02-19 13:49:00', '2022-02-19 13:49:00');
COMMIT;

-- ----------------------------
-- Table structure for vehicle_groups
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_groups`;
CREATE TABLE `vehicle_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_user` bigint unsigned DEFAULT NULL,
  `updated_user` bigint unsigned DEFAULT NULL,
  `deleted_user` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `vehicle_groups_company_id_index` (`company_id`) USING BTREE,
  KEY `vehicle_groups_name_index` (`name`) USING BTREE,
  KEY `vehicle_groups_created_at_index` (`created_at`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of vehicle_groups
-- ----------------------------
BEGIN;
INSERT INTO `vehicle_groups` (`id`, `company_id`, `name`, `created_user`, `updated_user`, `deleted_user`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, 1, 'Group 1', 1, NULL, NULL, '2022-02-10 10:00:00', '2022-02-19 13:49:19', NULL);
INSERT INTO `vehicle_groups` (`id`, `company_id`, `name`, `created_user`, `updated_user`, `deleted_user`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, 1, 'Group 2', 1, NULL, NULL, '2022-02-10 10:00:00', '2022-02-19 13:49:19', NULL);
INSERT INTO `vehicle_groups` (`id`, `company_id`, `name`, `created_user`, `updated_user`, `deleted_user`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, 1, 'Group 3', 1, NULL, NULL, '2022-02-10 10:00:00', '2022-02-19 13:49:19', NULL);
INSERT INTO `vehicle_groups` (`id`, `company_id`, `name`, `created_user`, `updated_user`, `deleted_user`, `created_at`, `updated_at`, `deleted_at`) VALUES (4, 1, 'Group 4', 1, NULL, NULL, '2022-02-10 10:00:00', '2022-02-19 13:49:19', NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
