-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Хост: srv-pleskdb18.ps.kz:3306
-- Время создания: Апр 19 2017 г., 08:30
-- Версия сервера: 5.5.52-MariaDB
-- Версия PHP: 5.6.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `familypi_api_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `role_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=5461 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Администратор', NULL, NULL, NULL),
(2, 'Работодатель', NULL, NULL, NULL),
(3, 'Соискатель', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0G0olSC41fospbfX6IMpVQb3xlwA7PkEf0JcX7ZR', NULL, '52.86.176.3', 'ia_archiver', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiTFF6NzhKUHFNODJSRHVaUksxbDdpWXBnakI3V1U0UXN6TGJCTjBPaCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNDoiaHR0cDovL2N6LmJmYy5rei9wcm9maWxlIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly9jei5iZmMua3ovcHJvZmlsZSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDkxMzM0NzI5O3M6MToiYyI7aToxNDkxMzM0NzI5O3M6MToibCI7czoxOiIwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1491334729),
('1GpES6OjxcTeobbgQQP8uCCwFJ4za504N0D3L36A', NULL, '64.74.215.90', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOWxYUnBGMndMNHN4eERMZEZWeVVYeks3SzJDRjUwUjlCSTh1RWVKZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly9jei5iZmMua3ovcnUiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ5MTMwMTIyNztzOjE6ImMiO2k6MTQ5MTMwMTIyNztzOjE6ImwiO3M6MToiMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1491301227),
('1Ppq0Bg1U8D4lZ54VyUINehQ8kYmEQ26zBE16BVd', NULL, '149.154.167.164', 'TelegramBot (like TwitterBot)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoielNmQ25zY0pnSGQwMll5dmlsb3NrdTIxRHVIUjQzc09xbUliRUYzVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly9jei5iZmMua3oiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ5MTMwMzE2NDtzOjE6ImMiO2k6MTQ5MTMwMzE2NDtzOjE6ImwiO3M6MToiMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1491303164),
('2HwU7PrShVfu5FNJgMWNgI4NQgnsmJI7gDHXoCMO', NULL, '66.102.9.24', 'Mozilla/5.0 (Linux; Android 6.0; LG-K350 Build/MRA58K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicFhWVXBnM2ZWWHliUWZMWDFBSWQyOG4zWnNTYjJQbW9oNmY3UEt3dyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly9jei5iZmMua3oiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ5MDk4MzkyMDtzOjE6ImMiO2k6MTQ5MDk4MzkyMDtzOjE6ImwiO3M6MToiMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1490983920),
('3Yf6rU9UyXpdJVs5hCnZKhwgNrVSYJTyMJCbPLae', NULL, '52.86.176.3', 'ia_archiver', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiblpmTUV6V3lGMklQOTBhWGt6dDhwTmoxclREM29vMVh1VmZianUzaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly9jei5iZmMua3ovdmFjYW5jeSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDkxMzcwMzM3O3M6MToiYyI7aToxNDkxMzcwMDIyO3M6MToibCI7czoxOiIwIjt9fQ==', 1491370337),
('4YAv3IFw2cowosLDeqqoE1xuLVtJsiWSpR8T6WjB', NULL, '52.86.176.3', 'ia_archiver', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiSHFab2hDVHl5eEQ3Q29KemxtcVpKTDdySDR5bmwxZ053OXZDQUFMUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjY6Imh0dHA6Ly9jei5iZmMua3ova3ovdmFjYW5jeS9mb3RvZ3JhZi1udWRnZW4ta2hvcm9zaGl5LWZvdG9ncmFmLXUxNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MzI6Imh0dHA6Ly9jei5iZmMua3ova3ovcmVzcG9uc2Uvb3V0Ijt9czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0OTEyNzAyMzM7czoxOiJjIjtpOjE0OTEyNjk4NDc7czoxOiJsIjtzOjE6IjAiO319', 1491270233),
('8xjIOhm18QFbLoFKXspLPCIFwyzJ7dTHoEeCVUcs', NULL, '52.86.176.3', 'ia_archiver', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicVNIcEtqMWRLeXJ5QXVSc2NDNENFaGZIYW15Qll4MFE4T3NBT3Z6RCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly9jei5iZmMua3ovdmFjYW5jeSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDkxNTE2MDcwO3M6MToiYyI7aToxNDkxNTE2MDcwO3M6MToibCI7czoxOiIwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1491516071),
('aCEmW5W8Ux166sITfzZ4ALJPWSFKaE9gnmWLaU6a', 3, '185.97.115.209', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidVp6clYxTnJQSnR2NWc3Rkxra3RENldNdHhjbFluZTBNdWRlQlIxNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9jei5iZmMua3ovdmFjYW5jeT9zcGVjaWFsaXR5X2lkPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO3M6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDkwOTYzNDcwO3M6MToiYyI7aToxNDg5Mzg2ODg0O3M6MToibCI7czoxOiIwIjt9fQ==', 1490963470),
('Aox17YWUcVzV5bJMiHgdb7CbnrKhNpgdt1VJRV24', NULL, '52.86.176.3', 'ia_archiver', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWDNCbFZMdHZ6SGx0dXVhR3hEQUdaeDZodWV4Y2ZuQ3NsY0d5TkFKVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly9jei5iZmMua3ovcnUvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ5MTQ5MzY2OTtzOjE6ImMiO2k6MTQ5MTQ5MzUxNztzOjE6ImwiO3M6MToiMCI7fX0=', 1491493669),
('B8BtFEzKKsuNAp7JekLXa4gsF9vXjWRsmXhQJ8lz', 3, '185.48.149.149', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoid2xjajJuMWtBV3VQWDJmNW9DNXBWTU1oT3hpS09rNVNXcmlrNUVIdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9jei5iZmMua3ova3ovYWRtaW4vY29tcGFueSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0OTEyODQ5NDM7czoxOiJjIjtpOjE0OTEyODQ4ODE7czoxOiJsIjtzOjE6IjAiO319', 1491284943),
('bOkhC3TwC9FlO57E4O0tZrUJ3XF3kEQfTTtbz7mu', 3, '185.48.149.149', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiS3ptUFg5VDFCb2ZydENJTW9odmpMS2hIMXUyNjBNSzlzZW5DV3oyRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9jei5iZmMua3ova3ovYWRtaW4vY29tcGFueSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0OTEyODUyNjE7czoxOiJjIjtpOjE0OTEyMTc4NzQ7czoxOiJsIjtzOjE6IjAiO319', 1491285261),
('br6opk5F60peXFzlzEBKI4AEbDtt7xIX2fPY9Scn', 3, '213.157.60.56', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiT3ladnVheFc5ZmlEYjVrSDcxUHVEM1hGdW1kSTBtR3JIcERqTFdNTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9jei5iZmMua3ova3ovYWRtaW4vdmFjYW5jeS9jcmVhdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO3M6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDkxNDQ5MzM2O3M6MToiYyI7aToxNDkxMjIwNzAxO3M6MToibCI7czoxOiIwIjt9fQ==', 1491449336),
('CfFINgwfa3WHbAltFE7myiI9HNj2rIVq8QYRdCrY', NULL, '64.74.215.90', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoid2wxNWdsZU9lRm5qZDQ2aGRJbVJmVjlmeGFFb3V4QW56NnNKaGZRdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly9jei5iZmMua3ovbG9naW4iO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ5MTMwMTQ4MDtzOjE6ImMiO2k6MTQ5MTMwMTQ4MDtzOjE6ImwiO3M6MToiMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1491301481),
('CL1KDmdH9DGgK7F4tkMrsbJZPkHAlSvEDwuObdY3', NULL, '64.74.215.90', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTm9JdTNTeWFZbmhnaW43S0lJOGdVcTRJUkdVZzNtYzlQUDVDVFRJRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly9jei5iZmMua3ova3oiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ5MTMwMTUxNztzOjE6ImMiO2k6MTQ5MTMwMTUxNztzOjE6ImwiO3M6MToiMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1491301517),
('dhBvUMSk2Em1dZSNeCzYNbsMw3zWNmdwBsekvLMT', NULL, '195.211.23.206', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieGlPanJiRTZscW1oQ1hQUVN1MGs4QmRNZHNxb1AwU3NrYUVyMDFHMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly9jei5iZmMua3ova3oiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ5MTUzNjIxNjtzOjE6ImMiO2k6MTQ5MTUzNjIxNjtzOjE6ImwiO3M6MToiMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1491536216),
('DM3qfJwuRnNrV1dhJDdupBumgVIsdlTn4jOVctFa', NULL, '64.74.215.90', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRmcyMXp1SFZFeFhVZUpyenJCM3pscDhJNDVKNFpucHd0VU9PeWZtUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9jei5iZmMua3ovYXV0aC9yZWdpc3Rlci9tYXN0ZXIiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ5MTMwMTI5MTtzOjE6ImMiO2k6MTQ5MTMwMTI5MTtzOjE6ImwiO3M6MToiMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1491301292),
('eqytCiFeRVgx6RBeZ1TyYZwi1uUJHgnkYAmcWHS1', 3, '213.157.60.56', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoieGtJR3FRa1UwS1p3Rm5kWTZvc21iWnJYMUhad3ZOcUlPU29OSGtFNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9jei5iZmMua3ovYWRtaW4vbmV3cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0OTEyMjAxMzQ7czoxOiJjIjtpOjE0OTEyMTk3OTg7czoxOiJsIjtzOjE6IjAiO319', 1491220134),
('FccvSaSsYh1OisgLeUtLsfr4QVhsUTWlxR1wqHLF', 53, '185.97.115.209', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_4 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13G35 Safari/601.1', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiV1lxWDZRNWxkNHJCaG5DaXlaRG5OeFFlQTQwSFBIQWVnUzJkVlBGbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9jei5iZmMua3ova3ovcHJvZmlsZS9lZGl0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NTM7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0OTA5NTUxNjY7czoxOiJjIjtpOjE0OTA5NDI4NTc7czoxOiJsIjtzOjE6IjAiO319', 1490955166),
('gcUscVF8IL51KBrZ6ZwekFvCDxJfkibIbRuFu4kS', NULL, '2.72.3.82', 'WhatsApp/2.17.7/i', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNnFQMmVlb29zU0FNcGR0ejRFbUVYdTNvMjYxN2VkdTJ4QkhZZnJraiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly9jei5iZmMua3oiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ5MDk4MzY3ODtzOjE6ImMiO2k6MTQ4OTA2MTIwNDtzOjE6ImwiO3M6MToiMCI7fX0=', 1490983678),
('GsTZYO7xQJ03BnRUTdz3oNSxr2hNP1GvLnvIwik0', 3, '185.97.115.209', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQVI0WDNuMllpMklZaTFQUzA0VlE2M25MejNWam4wUlV4OWVUZG5lNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9jei5iZmMua3ovYWRtaW4vY29tcGFueT9wYWdlPTUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO3M6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDkxNTY3NDU5O3M6MToiYyI7aToxNDkxNTY3Mjc2O3M6MToibCI7czoxOiIwIjt9fQ==', 1491567459),
('HP5dawSePTkNbiM5dsS4wNLuLS36g6l6J2er4F6Q', NULL, '2.72.163.79', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQk93ZXcwbGFQaEMzZFhwbkNHY0RCMnM5Q0M5aWJvN3Z1NmJnYVdsSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly9jei5iZmMua3ova3ovbG9naW4iO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ5MTMzOTU5MjtzOjE6ImMiO2k6MTQ5MTMzOTU5MjtzOjE6ImwiO3M6MToiMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1491339592),
('ISOAtkZufDCZpSvzEOCQjKgjqkgkuNWWSqdiyrvA', NULL, '52.86.176.3', 'ia_archiver', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZDlYVVJnRk9BdVRFSFJmc2ZZQlhRWTJPM3lsZWplTmY3Z1B2b2U3WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9jei5iZmMua3ovcHJvZmlsZS9wc3ljaG8tdTU5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0OTE0MjUwMjE7czoxOiJjIjtpOjE0OTE0MjQ5NTg7czoxOiJsIjtzOjE6IjAiO319', 1491425021),
('jkrITVZ8BaQavpD97pJ8ZEvqq1nyeuQ06EJ2GMaA', 53, '185.97.115.209', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:54.0) Gecko/20100101 Firefox/54.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiTDMyY25ZaVdTSTVEOUE5Qkx5TXB0aHNXdk9mOG5ySHhnVzZZRHFIaCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyODoiaHR0cDovL2N6LmJmYy5rei92YWNhbmN5L2FkZCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vY3ouYmZjLmt6L3ZhY2FuY3kvYWRkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NTM7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0OTA5NTMxMjE7czoxOiJjIjtpOjE0OTA5NDgzNDg7czoxOiJsIjtzOjE6IjAiO319', 1490953121),
('K2xfKzijnysFtsZy9grqSDpeyf2ChB8rLGv7aE8b', NULL, '52.86.176.3', 'ia_archiver', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiU3lDeUptVERJWkhWdDFiVW1sc3RDc1JhNzVuZ3NvQzVLN3Q3R29iRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly9jei5iZmMua3ovdmFjYW5jeSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDkxMjYzMDQyO3M6MToiYyI7aToxNDkxMjYzMDQyO3M6MToibCI7czoxOiIwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1491263042),
('KIUWelSifFon0EAymWZyIvb8MJ3VFFSKSKgUhV4v', NULL, '64.74.215.90', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVDFxa3BKc3UxSXpoUnMyUHIyN0NiakJGSGRlek5KY2JQYUg0R29CWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9jei5iZmMua3ovYXV0aC9yZWdpc3Rlci9lbXBsb3llciI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDkxMzAxMTMwO3M6MToiYyI7aToxNDkxMzAxMTMwO3M6MToibCI7czoxOiIwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1491301130),
('LNEB97WXMK6qalPbcEacU66HgGNuCJ006FfH8DNb', NULL, '176.69.5.186', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_4 like Mac OS X) AppleWebKit/601.1 (KHTML, like Gecko) CriOS/57.0.2987.137 Mobile/13G35 Safari/601.1.46', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieDRkYXJObktzNDdZR0V6d2dxb2Z2MFg2MUVXQ2FqOE84MzBCN3BObyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly9jei5iZmMua3oiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ5MTM1ODAyNTtzOjE6ImMiO2k6MTQ5MDk1MDM0MjtzOjE6ImwiO3M6MToiMCI7fX0=', 1491358025),
('MJAaeAFvqnHolgQS8TDijqZbzVTM2veenty6haaa', 3, '185.48.149.149', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiV3JNV3Y1bzRVZXljcE9ES0xFemhmSmtwWlhUWWIxSEFkcHJKWmRoVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9jei5iZmMua3ova3ovYWRtaW4vbmV3cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0OTEzNjc0ODc7czoxOiJjIjtpOjE0OTEyOTM5Nzk7czoxOiJsIjtzOjE6IjAiO319', 1491367487),
('MTeklek3yGqAFTADtauYKDmsXzN514dktXPhEaNu', NULL, '93.158.152.55', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUGpFZ3RVUTlDb2dBNUR2WU1oZ3cydnJhalNZSnZlSDNvNVRFRWFCQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly9jei5iZmMua3oiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ5MTUzODc4NjtzOjE6ImMiO2k6MTQ5MTUzODc4NjtzOjE6ImwiO3M6MToiMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1491538786),
('MUTPZXuCar3tTjz7CSvigw1t9lAUoRdm2eWiSbLz', NULL, '52.86.176.3', 'ia_archiver', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRGhlM21DRlNzV0w0MUZPNkFsdmd3WGlUTDBHS1p6cnVsVGpZM21ieSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9jei5iZmMua3ovYXV0aC9yZWdpc3Rlci9tYXN0ZXIiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ5MTM3MjUzNjtzOjE6ImMiO2k6MTQ5MTM3MjUzNjtzOjE6ImwiO3M6MToiMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1491372536),
('nbUB1mCRrxA7Ctxgj5a8FHErGUygfHoonDaOD4RW', NULL, '52.86.176.3', 'ia_archiver', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZVF4c0RyUGJEUGJjR01TQTZrQm85aXRvbVlxSTRZSEJCWHNQZ0k4eCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjQ6Imh0dHA6Ly9jei5iZmMua3ovcnUvdmFjYW5jeS9wc2lraG9sb2cta29nbml0aXZub2UtcGVyZWdydXprYS11MTciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ5MTM1MDYyMztzOjE6ImMiO2k6MTQ5MTM1MDU2OTtzOjE6ImwiO3M6MToiMCI7fX0=', 1491350623),
('nDcWwNeVC7brBOvce0maD08LEshr5QkjJgh4BLw2', 3, '185.48.149.149', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZXVDWGJYemJ3ZGxMY2ZkSzFUOElOTWlNME1mMVlVd21IbHNYekJQcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9jei5iZmMua3ova3ovYWRtaW4vY29tcGFueSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0OTE1NDYyOTE7czoxOiJjIjtpOjE0OTE1MzY3MDA7czoxOiJsIjtzOjE6IjAiO319', 1491546291),
('NosWLiKBLugTQjCsTERtbv0s8aWuzhpHb9GST9OP', NULL, '52.86.176.3', 'ia_archiver', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSjBqNUxMTll4QWpVN0psakxUcHN0S0k0c1Z6ZENjcVRHOGRVTmcxNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly9jei5iZmMua3oiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ5MTM2ODc4OTtzOjE6ImMiO2k6MTQ5MTM2ODc4OTtzOjE6ImwiO3M6MToiMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1491368789),
('OAmLiSHAf7KlJLiAitMCDNjPMTIZ7g86MUOoMvj7', NULL, '185.48.149.149', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSTZIOEdhcDdEOW9SdkFCUTRjbUVDcU5MTU96NHRtYkFrR1ZQUThSUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly9jei5iZmMua3ovbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ5MTU0MTI2ODtzOjE6ImMiO2k6MTQ5MTU0MTI1NjtzOjE6ImwiO3M6MToiMCI7fX0=', 1491541268),
('piwy5WtI21oCTWGxcX4HV54Ih8TloAVRcOHxHxgz', 3, '185.97.115.209', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiOTZXVmRaamN2Z3FoNlBnbWEyNk1wd0RCTmh3cGpZa2N6NE5rTXhWSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly9jei5iZmMua3ova3oiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO3M6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDkxMzExNTM1O3M6MToiYyI7aToxNDkxMjgzNTM0O3M6MToibCI7czoxOiIwIjt9fQ==', 1491311535),
('PyvRMSTj1Q7m7JqMMS4DP1u1upqhaLN6ahR3HbNW', 3, '5.34.108.22', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiVGVITTJIZzJ4RG82QktCdndZT3FUTkNjZzZLM0FxTVdDUFNKWXNoWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly9jei5iZmMua3oiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO3M6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDkxNTgyNzk4O3M6MToiYyI7aToxNDkxMDQ2MTYwO3M6MToibCI7czoxOiIwIjt9fQ==', 1491582798),
('QujY83eHcxYJkcFHlLIvNoKgEN7TrEt3fyhP9jTq', NULL, '185.97.115.209', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZjJwUzhUWDRtT1Y3TkowbVIyTDBibXRjSlZwdG9EaHNSaFU2YmNsNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly9jei5iZmMua3oiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ5MTMwMzE3MztzOjE6ImMiO2k6MTQ5MTMwMzE3MztzOjE6ImwiO3M6MToiMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1491303173),
('quWMKDouFn9u33wUse6zXV82VkI8sOAORjZO6ml2', 52, '2.72.3.82', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRmF3Zkt2QXZMY1RXQUtsVHBobGZSa2g0N2JWMUZ0Nnlrd1FTMVozMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9jei5iZmMua3ovdmFjYW5jeS9hZGQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo1MjtzOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ5MDk0ODYwMztzOjE6ImMiO2k6MTQ5MDk0ODM5MDtzOjE6ImwiO3M6MToiMCI7fX0=', 1490948603),
('RmUTDW5GZEnVg4QmQVzIuUBtdeQHNydUXsEtPQUe', NULL, '52.86.176.3', 'ia_archiver', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMFVHdFp2a3FvUGdmN1htSVRVaEVQSTd3UWpUS2xCenhMZFM5ZnZ4UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9jei5iZmMua3ovYXV0aC9yZWdpc3Rlci9tYXN0ZXIiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ5MTI2NTczOTtzOjE6ImMiO2k6MTQ5MTI2NTczOTtzOjE6ImwiO3M6MToiMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1491265739),
('safT9zvrf9Et6zsCRfuTPAw30sjkCeOlRdzPiUUm', NULL, '52.86.176.3', 'ia_archiver', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTER4SmFZY0I3SzNnYnlydURZSG1WTzBSWEtCVjF6Qm5YVUh3dHlWQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9jei5iZmMua3ovcnUvdmFjYW5jeSI7fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDkxMzgzMDA5O3M6MToiYyI7aToxNDkxMzgzMDA5O3M6MToibCI7czoxOiIwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1491383009),
('SOv7dylMGBUTUMrABqaehsbUFCtUdzmsCZ6FjyWO', 76, '2.72.163.79', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiclgxN0FqeXQ3bHY3elJMODZabTZZSXQ2V3Nsb0xYdno2M0pIM3ZpbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly9jei5iZmMua3ova3oiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo3NjtzOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ5MTMzOTQ2MjtzOjE6ImMiO2k6MTQ4OTA2MDg2NjtzOjE6ImwiO3M6MToiMCI7fX0=', 1491339462),
('SSjUMY5tEJWmTY89vdCpNVXTu5NpiNTBqDWwqt27', NULL, '52.86.176.3', 'ia_archiver', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibHY3NFlyZlJYU3dQN1dkU2o0OHZweDFOMU9zR0RQeExZaHg0VmpVOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9jei5iZmMua3ovYXV0aC9yZWdpc3Rlci9tYXN0ZXIiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ5MTUxOTcyNDtzOjE6ImMiO2k6MTQ5MTUxOTcyNDtzOjE6ImwiO3M6MToiMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1491519724),
('stVmaQq9jzjKeAx9wOG2m8LYkK3FHYaLKvBqLLkC', NULL, '66.102.9.24', 'Mozilla/5.0 (Linux; Android 6.0; LG-K350 Build/MRA58K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSEc5a0xIcExNWGxJcmJNYzdKZUZkSzVCeE1iS05WVGl0ZEJjZ2dmSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly9jei5iZmMua3oiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ5MTE0ODEyMztzOjE6ImMiO2k6MTQ5MTE0ODEwMDtzOjE6ImwiO3M6MToiMCI7fX0=', 1491148123),
('U3k3Qk9cXnctiFnkOo19cq8aaP8C41iC1sOVaNBI', 54, '185.97.115.209', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiM2VxM0lmZHFzdmRpQnZrdVJyQXJqMks3MTBQalVvTFhvQkNUR2FtVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9jei5iZmMua3ovcHJvZmlsZS9lZGl0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNDoiaHR0cDovL2N6LmJmYy5rei9wcm9maWxlIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NTQ7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0OTEyNzc2MDI7czoxOiJjIjtpOjE0OTA5NDc2MTg7czoxOiJsIjtzOjE6IjAiO319', 1491277602),
('Up0HAKA9vL3vMlwJ8xCU40nIxMHUial2fn7qlyUN', NULL, '64.74.215.90', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSW9vbkNJdHZrNXNFYXoxS0RkRDV2M283cnNXNEZjNFNUQjhSRlB6WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly9jei5iZmMua3oiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ5MTMwMTA5MztzOjE6ImMiO2k6MTQ5MTMwMTA5MztzOjE6ImwiO3M6MToiMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1491301093),
('UziJMQdXDeq2CEXR9ZPPHYN7LRHOwGtT2xiXr3Rl', 113, '185.48.149.149', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiazZWblhHODZZVXd6VlVqZjdkaDZZR1Q4bUlmVHF4UnBlem5tejdiaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly9jei5iZmMua3ovbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxMTM7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMjoiaHR0cDovL2N6LmJmYy5rei9wcm9maWxlL3ZhY2FuY3kiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ5MTU0MTI0MDtzOjE6ImMiO2k6MTQ5MTUzOTc5MztzOjE6ImwiO3M6MToiMCI7fX0=', 1491541240),
('vG7dYm5siN0pgw8X3Cdx4nROTGS637XYrljQ438F', 3, '2.132.126.32', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/57.0.2987.137 Mobile/14E277 Safari/602.1', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidUhibXFDS3ZQaDdiN1RHSzNWeXRMZW5JcGdLYXFCNDkwNkVyS3kxTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9jei5iZmMua3ova3ovbWVkaWEvZGVmYXVsdC5qcGciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO3M6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDkxMzExNTk4O3M6MToiYyI7aToxNDkwOTQ0ODg2O3M6MToibCI7czoxOiIwIjt9fQ==', 1491311598),
('w0dN6Bnih8o9jn2WIQgIGfK38PT5BLkOT7sjEcAC', NULL, '2.72.117.45', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibWNGTDI3UllZVFlJZmZWTU1TeUxxVjYwY2NUQUpGSzFjNUtpeG5LdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9hcGkuZmFtaWx5cGl6emEua3ovcHJvZmlsZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDkxNjU0MTEzO3M6MToiYyI7aToxNDkxNjUyNDMwO3M6MToibCI7czoxOiIwIjt9fQ==', 1491654113),
('W5SWfcpfF1HRcK6P3t8CTRUtiCAGmEt0osslcMRm', NULL, '185.48.149.149', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicm5zcGhTbENQODZXQ2tFUlZWMzkxeWRGWXVXT3p0SGkwMXk3a3ZjTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly9jei5iZmMua3ovcnUiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ5MTU0MDQ4MjtzOjE6ImMiO2k6MTQ5MTU0MDQ4MjtzOjE6ImwiO3M6MToiMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1491540483),
('WJO6IPRlmJWWCipjX4QSwizQvsp4rA6kxfXBu2MB', NULL, '195.211.23.206', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWUgwZDdwdXpxeEtzTkZFcHVCV0FTM0xTaVpyTXNBc1UzZXAyNFI5NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly9jei5iZmMua3ova3ovbG9naW4iO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ5MTUzNjIxMztzOjE6ImMiO2k6MTQ5MTUzNjIxMztzOjE6ImwiO3M6MToiMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1491536213),
('Ybbgczb0T5FVziGzWlsG5Af35XeCR0G1jF3Aylz5', NULL, '149.154.167.161', 'TelegramBot (like TwitterBot)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUXJERXVleW4ybHAxdWR6SDVaU0hrS011clI0a0ZKa3EzaEMwek5kWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly9jei5iZmMua3oiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ5MDk1NjExOTtzOjE6ImMiO2k6MTQ5MDk1NjExOTtzOjE6ImwiO3M6MToiMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1490956119),
('YK0dLjWJIBN9VfkYTv34erScpExaEY2Lih7jrMIV', 3, '185.48.149.149', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQktacnpib1lzQkpOZk1DM1BORE03NnJtWDB1cEtPelFwSWt0U0ZEaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9jei5iZmMua3ovYWRtaW4vdmFjYW5jeSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE0OTE1NjAwMTk7czoxOiJjIjtpOjE0OTEyMDI5MjQ7czoxOiJsIjtzOjE6IjAiO319', 1491560019),
('z1IAdNYlnpkaYsAslkPUCYVkSmz3yrcsz4AztdG2', NULL, '66.102.9.24', 'Mozilla/5.0 (Linux; Android 6.0; LG-K350 Build/MRA58K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWVRkN2FjdVdzemd6Q0Q4c2psZE9lVGIzOXR1N2w0aHNBSjVjbEtqeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly9jei5iZmMua3oiO31zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTQ5MDk4MzkxMDtzOjE6ImMiO2k6MTQ5MDk4MzkxMDtzOjE6ImwiO3M6MToiMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1490983910),
('zJtR37kNJ6yLfukgLSsjGB8Aei0ugr1sMgWgnROS', 3, '213.157.60.56', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidXNZdXNBY3I3ajNYbWtrQ21zdktPcjhhOG5BamNvWEc4djI0VDlDMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9jei5iZmMua3ovYWRtaW4vY29tcGFueT9wYWdlPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO3M6OToiX3NmMl9tZXRhIjthOjM6e3M6MToidSI7aToxNDkxNTY3NjQ0O3M6MToiYyI7aToxNDkxMjc3MDA1O3M6MToibCI7czoxOiIwIjt9fQ==', 1491567644);

-- --------------------------------------------------------

--
-- Структура таблицы `speciality`
--

CREATE TABLE `speciality` (
  `speciality_id` int(10) UNSIGNED NOT NULL,
  `speciality_name_ru` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `speciality_name_kz` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `speciality_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_show` varchar(1) COLLATE utf8_unicode_ci DEFAULT '1',
  `sort_num` int(11) DEFAULT '10',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=36352 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `speciality`
--

INSERT INTO `speciality` (`speciality_id`, `speciality_name_ru`, `speciality_name_kz`, `speciality_name_en`, `is_show`, `sort_num`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Фотограф', 'Фотограф', 'Фотограф', '1', 10, NULL, '2017-04-06 09:25:29', '2017-04-06 09:25:29'),
(2, 'Психолог', 'Психолог', 'Психолог', '1', 10, NULL, '2017-04-06 09:25:29', '2017-04-06 09:25:29'),
(3, 'Уборщица', 'Тазалықшы', NULL, '1', 11, '2017-04-03 12:02:48', '2017-04-06 09:25:28', '2017-04-06 09:25:28'),
(4, 'Инженер-энергетик', 'Инженер-энергетик', NULL, '1', 12, '2017-04-03 12:03:56', '2017-04-06 06:54:22', '2017-04-06 06:54:22'),
(5, 'Электрик', 'Электрик', NULL, '1', 13, '2017-04-03 12:05:40', '2017-04-06 09:25:28', '2017-04-06 09:25:28'),
(6, 'Садовник', 'Бағбаншы', NULL, '1', 15, '2017-04-03 12:06:50', '2017-04-06 05:59:16', '2017-04-06 05:59:16'),
(7, 'Начальник спортивной базы', 'Спорттық база бастығы ', NULL, '1', 20, '2017-04-04 02:56:19', '2017-04-06 09:25:26', '2017-04-06 09:25:26'),
(8, 'Дефектолог', 'Дефектолог', NULL, '1', 15, '2017-04-04 10:22:40', '2017-04-06 09:21:35', '2017-04-06 09:21:35'),
(9, 'Инженер-энергетик', 'Инженер-энергетик', NULL, '1', 14, '2017-04-04 10:22:59', '2017-04-06 09:08:39', '2017-04-06 09:08:39'),
(10, 'Садовник', 'Бағбаншы', NULL, '1', 16, '2017-04-04 10:25:28', '2017-04-06 09:25:26', '2017-04-06 09:25:26'),
(11, 'Грузчик', 'Жүк тасушы ', NULL, '1', 17, '2017-04-04 10:26:00', '2017-04-06 09:25:25', '2017-04-06 09:25:25'),
(12, 'Художественный руководитель', 'Көркем жетекшісі', NULL, '1', 18, '2017-04-04 10:26:39', '2017-04-06 09:18:49', '2017-04-06 09:18:49'),
(13, 'Учитель английского языка', 'Ағылшын тілі мұғалімі', NULL, '1', 19, '2017-04-04 10:27:11', '2017-04-06 09:18:21', '2017-04-06 09:18:21'),
(14, 'Учитель математики', 'Математика мұғалімі ', NULL, '1', 20, '2017-04-04 10:27:38', '2017-04-06 09:18:24', '2017-04-06 09:18:24'),
(15, 'Медсестра', 'Медбике', NULL, '1', 22, '2017-04-04 10:32:21', '2017-04-06 09:25:25', '2017-04-06 09:25:25'),
(16, 'Повар', 'Аспазшы', NULL, '1', 23, '2017-04-04 10:32:57', '2017-04-06 09:25:24', '2017-04-06 09:25:24'),
(17, 'Воспитатель', 'Тәрбиеші', NULL, '1', 24, '2017-04-04 10:33:36', '2017-04-06 09:25:19', '2017-04-06 09:25:19'),
(18, 'Руководитель музыки', 'Ән-жетекшісі', NULL, '1', 25, '2017-04-04 10:34:07', '2017-04-06 09:18:35', '2017-04-06 09:18:35'),
(19, 'Помощник повара', 'Аспаз көмекшісі ', NULL, '1', 26, '2017-04-04 10:34:38', '2017-04-06 09:25:18', '2017-04-06 09:25:18'),
(20, 'Делопроизводитель', 'Іс-жүргізуші', NULL, '1', 27, '2017-04-04 10:35:13', '2017-04-06 09:25:17', '2017-04-06 09:25:17'),
(21, 'Секретарь', 'Хатшы', NULL, '1', 28, '2017-04-04 10:35:39', '2017-04-06 05:59:34', '2017-04-06 05:59:34'),
(22, 'Дворник ', 'Аула тазалаушы ', NULL, '1', 29, '2017-04-04 10:36:19', '2017-04-06 09:25:16', '2017-04-06 09:25:16'),
(23, 'Плотник ', 'Ағаш ұстасы ', NULL, '1', 30, '2017-04-04 10:36:44', '2017-04-06 09:25:16', '2017-04-06 09:25:16'),
(24, 'Пилот', 'Ұшқыш', NULL, '1', 1000, '2017-04-04 13:12:53', '2017-04-06 09:25:15', '2017-04-06 09:25:15'),
(25, 'Преподаватель', 'Оқытушы', NULL, '1', 31, '2017-04-05 03:01:19', '2017-04-06 09:24:07', '2017-04-06 09:24:07'),
(26, 'Прачка', 'Кір жуушы ', NULL, '1', 32, '2017-04-05 03:01:51', '2017-04-06 09:25:15', '2017-04-06 09:25:15'),
(27, 'Воспитатель', 'Тәрбиеші', NULL, '1', 33, '2017-04-05 03:02:19', '2017-04-06 09:25:14', '2017-04-06 09:25:14'),
(28, 'Художный руководитель', 'Көркемдік жетекші', NULL, '1', 34, '2017-04-05 03:02:47', '2017-04-06 09:18:06', '2017-04-06 09:18:06'),
(29, 'Секретарь', 'Хатшы', NULL, '1', 35, '2017-04-05 03:03:09', '2017-04-06 09:25:13', '2017-04-06 09:25:13'),
(30, 'Помощник воспитателя', 'Тәрбиешінің көмекшісі', NULL, '1', 1000, '2017-04-05 03:03:45', '2017-04-06 09:25:10', '2017-04-06 09:25:10'),
(31, 'Педагог-психолог', 'Педагог-психолог', NULL, '1', 36, '2017-04-05 03:04:04', '2017-04-06 09:18:48', '2017-04-06 09:18:48'),
(32, 'Методист', 'Әдіскер', NULL, '1', 37, '2017-04-05 03:04:34', '2017-04-06 09:25:09', '2017-04-06 09:25:09'),
(33, 'Врач–невропатолог', 'Дәрігер–невропатолог', NULL, '1', 38, '2017-04-05 03:05:03', '2017-04-06 06:54:59', '2017-04-06 06:54:59'),
(34, 'Технолог-провизор', 'Технолог-провизор', NULL, '1', 39, '2017-04-05 03:05:22', '2017-04-06 09:21:26', '2017-04-06 09:21:26'),
(35, 'Юристы', 'Заңгерлер', NULL, '1', 40, '2017-04-05 03:05:42', '2017-04-06 09:25:09', '2017-04-06 09:25:09'),
(36, 'Менеджер по продажам', 'Сату бойынша Менеджер  ', NULL, '1', 41, '2017-04-05 03:06:03', '2017-04-06 09:25:08', '2017-04-06 09:25:08'),
(37, 'Главный бухгалтер ', 'Бас есепші', NULL, '1', 43, '2017-04-05 03:06:24', '2017-04-06 09:19:42', '2017-04-06 09:19:42'),
(38, 'Врач-вирусолог', 'Дәрігер-вирусолог', NULL, '1', 45, '2017-04-05 03:07:20', '2017-04-06 09:19:54', '2017-04-06 09:19:54'),
(39, ' Врач психотерапевт', 'Дәрігер психотерапевт ', NULL, '1', 46, '2017-04-05 03:08:14', '2017-04-06 09:19:51', '2017-04-06 09:19:51'),
(40, 'Медрегистор ', 'Медтіркеуші', NULL, '1', 47, '2017-04-05 03:08:46', '2017-04-06 09:21:01', '2017-04-06 09:21:01'),
(41, 'Врач–дермато-венеролог', 'Дәрігер–дермато-венеролог ', NULL, '1', 48, '2017-04-05 03:09:24', '2017-04-06 09:17:05', '2017-04-06 09:17:05'),
(42, 'Врач лаборант ', 'Дәрігер-зертханашы ', NULL, '1', 49, '2017-04-05 03:10:01', '2017-04-06 09:17:06', '2017-04-06 09:17:06'),
(43, 'Врач реаниматолог', 'Дәрігер реаниматолог ', NULL, '1', 50, '2017-04-05 03:10:27', '2017-04-06 09:17:07', '2017-04-06 09:17:07'),
(44, 'Врач Неонатолог', 'Дәрігер Неонатолог ', NULL, '1', 52, '2017-04-05 03:11:01', '2017-04-06 09:17:09', '2017-04-06 09:17:09'),
(45, 'Врач-невропатолог', 'Дәрігер-невропатолог ', NULL, '1', 53, '2017-04-05 03:11:25', '2017-04-06 09:17:11', '2017-04-06 09:17:11'),
(46, 'Детский кардиолог', 'Балалар кардиологі', NULL, '1', 54, '2017-04-05 03:12:02', '2017-04-06 09:17:15', '2017-04-06 09:17:15'),
(47, 'Врач эксперт', 'Врач эксперт', NULL, '1', 55, '2017-04-05 03:12:20', '2017-04-06 09:17:18', '2017-04-06 09:17:18'),
(48, 'Архивист', 'Мұрағатшы', NULL, '1', 56, '2017-04-05 03:12:52', '2017-04-06 09:25:08', '2017-04-06 09:25:08'),
(49, 'Слесарь-сантехник', 'Слесарь-сантехник', NULL, '1', 57, '2017-04-05 03:13:09', '2017-04-06 09:24:02', '2017-04-06 09:24:02'),
(50, 'Терапевт ', 'Терапевт ', NULL, '1', 58, '2017-04-05 03:13:26', '2017-04-06 09:23:48', '2017-04-06 09:23:48'),
(51, 'Банщица', 'Моншашы', NULL, '1', 59, '2017-04-05 03:14:03', '2017-04-06 09:20:27', '2017-04-06 09:20:27'),
(52, 'Машинист буровой установки ', 'Бұрғылау қондырғысының машинисі ', NULL, '1', 60, '2017-04-05 03:14:26', '2017-04-06 09:20:43', '2017-04-06 09:20:43'),
(53, 'Торговый представитель ', 'Сауда өкілі ', NULL, '1', 61, '2017-04-05 03:14:50', '2017-04-06 09:25:07', '2017-04-06 09:25:07'),
(54, 'Инспектор по кадрам ', 'Кадр инспекторы ', NULL, '1', 63, '2017-04-05 03:15:11', '2017-04-06 09:20:29', '2017-04-06 09:20:29'),
(55, 'Швея ', 'Тігінші', NULL, '1', 65, '2017-04-05 03:15:33', '2017-04-06 09:25:07', '2017-04-06 09:25:07'),
(56, 'Педиатор ', 'Педиатор ', NULL, '1', 66, '2017-04-05 03:15:49', '2017-04-06 09:17:39', '2017-04-06 09:17:39'),
(57, 'Художник', 'Суретші', NULL, '1', 1000, '2017-04-06 05:27:26', '2017-04-06 09:25:08', '2017-04-06 09:25:08'),
(58, 'Мастер', 'Шебер', NULL, '1', 10, '2017-04-06 05:49:33', '2017-04-06 09:25:06', '2017-04-06 09:25:06'),
(59, 'Руководители', 'Басшы', NULL, '1', 1000, '2017-04-06 06:09:59', '2017-04-06 09:25:06', '2017-04-06 09:25:06'),
(60, 'Менеджер', 'Менеджер', NULL, '1', 1000, '2017-04-06 06:49:08', '2017-04-06 09:25:05', '2017-04-06 09:25:05'),
(61, 'Автомобильный бизнес', 'Көлік бизнесі', NULL, '1', 1, '2017-04-06 09:27:04', '2017-04-06 09:27:04', NULL),
(62, 'Административный персонал', 'Әкімшілік қызметкерлер', NULL, '1', 2, '2017-04-06 09:27:38', '2017-04-06 09:33:53', NULL),
(63, 'Банки, инвестиции, лизинг', 'Банктер, инвестициялар, лизинг', NULL, '1', 3, '2017-04-06 09:28:02', '2017-04-06 09:34:27', NULL),
(64, 'Безопасность', 'Қауіпсіздік', NULL, '1', 4, '2017-04-06 09:28:33', '2017-04-06 09:34:08', NULL),
(65, 'Бухгалтерия, управленческий учет, финансы предприятия', 'Бухгалтерлер,Бухгалтерия, басқарушылық есеп, мекеме қаржысы', NULL, '1', 5, '2017-04-06 09:29:10', '2017-04-06 09:35:05', NULL),
(66, 'Высший менеджмент', 'Жоғарғы менеджмент', NULL, '1', 6, '2017-04-06 09:29:37', '2017-04-06 09:29:37', NULL),
(67, 'Государственная служба, некоммерческие организации', 'Мемлекеттік қызмет, коммерциялық емес ұымдар', NULL, '1', 7, '2017-04-06 09:30:30', '2017-04-06 09:35:33', NULL),
(68, 'Добыча сырья', 'Шикізат өндіру', NULL, '1', 8, '2017-04-06 09:31:51', '2017-04-06 09:31:51', NULL),
(69, 'Домашний персонал', 'Үй қызметкерлері құрамы', NULL, '1', 9, '2017-04-06 09:36:02', '2017-04-06 09:36:02', NULL),
(70, 'Закупки', 'Сатып алулар', NULL, '1', 10, '2017-04-06 09:36:48', '2017-04-06 09:36:48', NULL),
(71, 'Инсталляция и сервис', 'Инсталляция және сервис', NULL, '1', 11, '2017-04-06 09:37:20', '2017-04-06 09:37:20', NULL),
(72, 'Информационные технологии, интернет, телеком', 'Ақпараттық технологиялар, интернет, телеком', NULL, '1', 12, '2017-04-06 09:37:49', '2017-04-06 09:37:49', NULL),
(73, 'Искусство, развлечения, масс-медиа', 'Өнер, ойын-сауық, бұқаралық-ақпарат', NULL, '1', 13, '2017-04-06 09:38:33', '2017-04-06 09:38:33', NULL),
(74, 'Консультирование', 'Кеңес беру', NULL, '1', 14, '2017-04-06 09:39:11', '2017-04-06 09:39:11', NULL),
(75, 'Маркетинг, реклама, PR', 'Маркетинг,жарнама, pr', NULL, '1', 15, '2017-04-06 09:39:54', '2017-04-06 09:39:54', NULL),
(76, 'Медицина, фармацевтика', 'Медицина, фармацевтика', NULL, '1', 16, '2017-04-06 09:40:14', '2017-04-06 09:40:14', NULL),
(77, 'Наука, образование', 'Ғылым, білім', NULL, '1', 17, '2017-04-06 09:41:28', '2017-04-06 09:41:28', NULL),
(78, 'Начало карьеры, студенты', 'Мансап басы, студенттер', NULL, '1', 18, '2017-04-06 09:42:08', '2017-04-06 09:42:08', NULL),
(79, 'Продажи', 'Сатылымдар', NULL, '1', 19, '2017-04-06 09:42:55', '2017-04-06 09:42:55', NULL),
(80, 'Производство', 'Өндіріс', NULL, '1', 20, '2017-04-06 09:43:32', '2017-04-06 09:43:32', NULL),
(81, 'Рабочий персонал', 'Қызметкерлер құрамы', NULL, '1', 21, '2017-04-06 09:46:07', '2017-04-06 09:46:07', NULL),
(82, 'Спортивные клубы, фитнес, салоны красоты', 'Спорт клубы, фитнес, сұлулық салоны', NULL, '1', 22, '2017-04-06 09:47:07', '2017-04-06 09:47:07', NULL),
(83, 'Страхование', 'Сақтандыру', NULL, '1', 23, '2017-04-06 09:47:44', '2017-04-06 09:47:44', NULL),
(84, 'Строительство, недвижимость', 'Құрылыс, жылжымайтын мүлік', NULL, '1', 24, '2017-04-06 09:48:13', '2017-04-06 09:48:13', NULL),
(85, 'Транспорт, логистика', 'Транспорт, логистика', NULL, '1', 25, '2017-04-06 09:48:54', '2017-04-06 09:48:54', NULL),
(86, 'Туризм, гостиницы, рестораны', 'Туризм, қонақ үйлер, мейрамханалар', NULL, '1', 26, '2017-04-06 09:49:19', '2017-04-06 09:49:19', NULL),
(87, 'Управление персоналом, тренинги', 'Қызметкерлерді басқару, тренингтер', NULL, '1', 27, '2017-04-06 09:49:46', '2017-04-06 09:49:46', NULL),
(88, 'Юристы', 'Заңгерлер', NULL, '1', 28, '2017-04-06 09:50:05', '2017-04-06 09:50:05', NULL),
(89, 'Менеджер', 'Менеджер', NULL, '1', 17, '2017-04-06 09:58:45', '2017-04-06 10:01:38', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `user_id` int(10) NOT NULL,
  `phone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(755) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `user_desc` text COLLATE utf8_unicode_ci,
  `age` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inn` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `work_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `speciality_id` int(11) UNSIGNED DEFAULT NULL,
  `is_company` varchar(1) COLLATE utf8_unicode_ci DEFAULT '0',
  `sms_activate` int(11) NOT NULL DEFAULT '0',
  `sms_code` int(11) NOT NULL DEFAULT '0',
  `is_ban` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '/media/default.jpg',
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=264 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`user_id`, `phone`, `password`, `user_name`, `user_desc`, `age`, `inn`, `work_type`, `role_id`, `speciality_id`, `is_company`, `sms_activate`, `sms_code`, `is_ban`, `avatar`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, '1111111111', '$2y$10$X5FzXrBxMBR/uQU2/SpPjOm72coAkm09skbF5RoNz4jVaUxfyEw4u', 'Admin', NULL, NULL, NULL, NULL, 1, NULL, '0', 1, 777888, '0', '/media/default.jpg', 'REHBhWyWVj6aykpBCFvCavVP9Zap8FaVkiMow6Uuc4ubio12YLlAiGuNAWko', '2017-03-01 06:31:02', '2017-04-04 20:56:49', NULL),
(51, '7018932362', '$2y$10$PhpCCza9YKf2pjj.9asvQuiV8Gx6sNukkTHEzQGSyzZGPyaoK/sTa', 'Akzhigitov Zhanseit', 'О себе', '25', '123456789', NULL, 3, 2, '0', 1, 524853, '0', '/media/default.jpg', '0cS0OJBsAY9inQEy0hLVbGtYPQwQKZVqLUfJLw12GUsJ53cjz7x62dyVPyD2', '2017-03-31 07:08:51', '2017-04-02 09:12:32', NULL),
(52, '7759556565', '$2y$10$ynnypMWilm2feGe7ycvTCOsSbNZ.yziUMn5/KTLzsRO2n9i68gHHq', 'John Lesson', 'about me', NULL, '111222333444', 'IT сфера', 2, NULL, '1', 1, 493348, '0', '/media/default.jpg', 'E97yu0M3VLkPODnDwFG7A4RQjLyEMWgh7cqkssC4KBXoLVSCIuZlYbfkemcK', '2017-03-31 07:32:23', '2017-04-07 07:29:28', NULL),
(135, NULL, 'new user', 'new user', NULL, NULL, NULL, NULL, 1, NULL, '0', 0, 0, '0', '/media/default.jpg', NULL, '2017-04-08 12:16:33', '2017-04-08 12:16:33', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Индексы таблицы `speciality`
--
ALTER TABLE `speciality`
  ADD PRIMARY KEY (`speciality_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `remember_token` (`remember_token`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `FK_users_speciality_speciality_id` (`speciality_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `speciality`
--
ALTER TABLE `speciality`
  MODIFY `speciality_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_users_speciality_speciality_id` FOREIGN KEY (`speciality_id`) REFERENCES `speciality` (`speciality_id`),
  ADD CONSTRAINT `users_fk2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
