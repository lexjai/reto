-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-01-2023 a las 06:08:17
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bolsa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dato_empresas`
--

CREATE TABLE `dato_empresas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `Volume` int(11) NOT NULL,
  `AdjClose` decimal(8,2) NOT NULL,
  `Close` decimal(8,2) NOT NULL,
  `Low` decimal(8,2) NOT NULL,
  `High` decimal(8,2) NOT NULL,
  `Open` decimal(8,2) NOT NULL,
  `Date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `dato_empresas`
--

INSERT INTO `dato_empresas` (`id`, `id_empresa`, `Volume`, `AdjClose`, `Close`, `Low`, `High`, `Open`, `Date`, `created_at`, `updated_at`) VALUES
(1, 10, 3884, '637.26', '705.60', '112.74', '238.79', '1190.30', '2022-08-24', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(2, 7, 3474, '868.78', '468.43', '213.48', '854.22', '3478.61', '2022-12-21', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(3, 10, 4866, '891.84', '547.74', '251.00', '130.03', '3958.45', '2022-09-25', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(4, 9, 3088, '634.22', '710.53', '218.66', '485.33', '3138.36', '2022-02-04', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(5, 1, 8205, '841.90', '255.36', '472.46', '681.95', '3062.73', '2022-09-29', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(6, 9, 1617, '524.23', '316.70', '292.13', '686.83', '2612.93', '2022-04-30', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(7, 9, 6011, '193.00', '469.69', '451.53', '686.55', '544.22', '2022-12-12', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(8, 4, 981, '899.37', '271.98', '390.18', '886.70', '2122.67', '2022-11-16', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(9, 7, 7827, '747.98', '344.42', '240.11', '405.34', '2622.89', '2022-08-13', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(10, 2, 1131, '549.61', '111.23', '163.76', '194.57', '2673.70', '2022-07-13', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(11, 2, 135, '851.09', '834.29', '320.50', '530.24', '1174.58', '2022-05-09', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(12, 9, 7090, '843.43', '846.47', '336.95', '768.95', '623.65', '2022-01-23', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(13, 4, 986, '128.55', '637.86', '374.91', '607.61', '425.35', '2022-12-27', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(14, 6, 1333, '172.13', '249.33', '333.48', '482.14', '3346.66', '2022-04-12', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(15, 3, 5517, '114.16', '854.54', '450.02', '674.95', '1933.37', '2022-04-30', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(16, 3, 9993, '473.83', '781.51', '186.25', '833.55', '3982.21', '2022-03-08', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(17, 2, 5590, '936.69', '810.22', '320.65', '338.99', '3058.07', '2022-03-12', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(18, 4, 6222, '650.15', '436.65', '493.41', '313.50', '3377.11', '2022-07-26', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(19, 3, 8783, '827.37', '343.86', '253.72', '189.60', '280.36', '2022-04-28', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(20, 8, 3209, '973.72', '770.64', '258.83', '547.17', '2474.50', '2022-11-19', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(21, 6, 3911, '408.57', '293.59', '481.73', '450.89', '2559.73', '2022-09-07', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(22, 6, 5739, '289.01', '363.07', '252.16', '243.08', '2866.17', '2022-01-28', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(23, 10, 347, '255.95', '681.40', '153.24', '507.59', '3019.29', '2022-08-10', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(24, 8, 1270, '694.84', '426.24', '262.93', '678.45', '1353.28', '2022-12-20', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(25, 9, 5069, '540.39', '271.15', '266.41', '523.99', '3721.33', '2022-06-01', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(26, 1, 5469, '203.23', '183.63', '483.95', '525.04', '292.97', '2022-07-27', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(27, 5, 119, '965.47', '152.77', '279.87', '500.74', '852.88', '2023-01-08', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(28, 2, 4873, '303.41', '239.35', '117.26', '692.78', '3489.14', '2022-08-21', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(29, 6, 5423, '991.61', '732.96', '122.40', '813.63', '3344.60', '2022-07-14', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(30, 5, 3641, '503.56', '847.10', '428.91', '148.24', '2567.00', '2022-11-29', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(31, 1, 7681, '212.84', '493.48', '427.41', '359.35', '1162.20', '2022-09-01', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(32, 3, 8336, '868.85', '606.78', '255.46', '848.51', '2660.16', '2022-05-05', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(33, 10, 4113, '252.24', '397.87', '306.55', '579.62', '1875.22', '2022-04-19', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(34, 5, 5457, '222.79', '157.67', '469.44', '642.96', '2789.66', '2022-07-20', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(35, 1, 3883, '358.23', '394.99', '321.02', '472.58', '3391.01', '2022-04-16', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(36, 2, 7372, '499.24', '277.01', '297.17', '368.29', '1750.74', '2022-01-26', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(37, 2, 7510, '698.55', '333.41', '128.94', '799.95', '647.85', '2022-02-05', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(38, 7, 6081, '983.52', '430.23', '330.46', '854.28', '3843.95', '2022-11-28', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(39, 2, 6163, '265.81', '371.89', '403.41', '768.07', '930.76', '2022-03-28', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(40, 3, 7355, '430.97', '538.17', '330.07', '756.86', '890.07', '2022-11-15', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(41, 8, 7720, '850.75', '771.25', '178.32', '205.48', '622.05', '2022-12-04', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(42, 2, 4071, '423.13', '668.19', '385.70', '816.88', '2459.14', '2022-02-14', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(43, 7, 9153, '741.49', '360.32', '366.44', '833.18', '705.24', '2022-07-28', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(44, 8, 9746, '435.59', '248.65', '488.11', '857.16', '312.52', '2022-07-06', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(45, 10, 7644, '435.60', '428.45', '236.06', '631.10', '2639.62', '2022-10-18', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(46, 3, 7244, '366.68', '643.56', '359.86', '334.01', '1897.25', '2022-09-25', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(47, 1, 4272, '172.81', '584.90', '308.48', '628.00', '1514.35', '2022-07-18', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(48, 5, 7035, '121.56', '346.96', '452.54', '192.38', '1132.85', '2022-09-21', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(49, 9, 1279, '848.14', '171.65', '106.08', '198.69', '2031.68', '2022-04-14', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(50, 5, 4107, '606.01', '630.18', '364.38', '400.33', '2556.52', '2022-09-22', '2023-01-18 10:45:10', '2023-01-18 10:45:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'inditex', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'santander', '2023-01-17 01:37:37', '2023-01-17 01:37:37'),
(3, 'bbva', '2023-01-17 01:38:13', '2023-01-17 01:38:13'),
(4, 'naturgy', '2023-01-17 01:38:13', '2023-01-17 01:38:13'),
(5, 'cellnex', '2023-01-17 01:38:41', '2023-01-17 01:38:41'),
(6, 'caixabank', '2023-01-17 01:38:41', '2023-01-17 01:38:41'),
(7, 'telefonica', '2023-01-17 01:38:41', '2023-01-17 01:38:41'),
(8, 'repsol', '2023-01-17 01:38:41', '2023-01-17 01:38:41'),
(9, 'ferrovial', '2023-01-17 01:38:41', '2023-01-17 01:38:41'),
(10, 'iberdrola', '2023-01-17 01:38:41', '2023-01-17 01:38:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(46, '2014_10_12_000000_create_users_table', 1),
(47, '2014_10_12_100000_create_password_resets_table', 1),
(48, '2019_08_19_000000_create_failed_jobs_table', 1),
(49, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(50, '2023_01_13_124707_create_empresas_table', 1),
(51, '2023_01_17_084655_create_dato_empresas_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'Kiera Luettgen', 'fff041d29febac01e29e8a046fa6b910d0ec1deeb9a3295ff9e6127ff8045cb4', '[\"*\"]', '2023-01-17 02:04:51', NULL, '2023-01-13 14:54:12', '2023-01-17 02:04:51'),
(2, 'App\\Models\\User', 2, 'Kiera Luettgen', '2e4193444b37516111010491aa2ba9cde1593e1aa7a350885f5f5a5b84b703a7', '[\"*\"]', NULL, NULL, '2023-01-17 01:16:47', '2023-01-17 01:16:47'),
(3, 'App\\Models\\User', 11, 'auth_token', '520b9c49b7f1263c1388178d5bb67ac8fed0005d82430b35512f9df758100031', '[\"*\"]', NULL, NULL, '2023-01-17 02:04:14', '2023-01-17 02:04:14'),
(4, 'App\\Models\\User', 2, 'Kiera Luettgen', '2e6717737cfc4e246f4e637ea193445bfbc43947a5d9555921a460b982397deb', '[\"*\"]', NULL, NULL, '2023-01-17 02:05:31', '2023-01-17 02:05:31'),
(5, 'App\\Models\\User', 13, 'auth_token', '6d99506c7a57dea3e203c661778533d7c8d6be7828b9118a93f46e476e0ecdaf', '[\"*\"]', '2023-01-17 02:10:28', NULL, '2023-01-17 02:10:09', '2023-01-17 02:10:28'),
(6, 'App\\Models\\User', 14, 'auth_token', '9e5e55ec0cebccdd18555f9753e26009683e4a052787568bbbf4e4e1479e89f2', '[\"*\"]', '2023-01-18 06:38:35', NULL, '2023-01-17 02:14:21', '2023-01-18 06:38:35'),
(7, 'App\\Models\\User', 2, 'Kiera Luettgen', '0844c52c5635ddb2ae873d74aa2c04bad40e954b48eea8bde3fde633ee6bab57', '[\"*\"]', NULL, NULL, '2023-01-17 02:23:41', '2023-01-17 02:23:41'),
(8, 'App\\Models\\User', 2, 'Kiera Luettgen', '2116ad7635178da9e761f5a7f8e7bee442873453393225aee886d929f505f4e3', '[\"*\"]', NULL, NULL, '2023-01-17 02:23:46', '2023-01-17 02:23:46'),
(9, 'App\\Models\\User', 2, 'Kiera Luettgen', 'bb708a57a8bb6d1913f580e322a9a3e570de3b8b897ecff6ec6975e9fe53c54c', '[\"*\"]', NULL, NULL, '2023-01-17 02:23:48', '2023-01-17 02:23:48'),
(10, 'App\\Models\\User', 2, 'Kiera Luettgen', 'f45df373b58b7e533f74907db832817927e0c71f9a2a26c0831613690cd44449', '[\"*\"]', NULL, NULL, '2023-01-17 02:41:07', '2023-01-17 02:41:07'),
(11, 'App\\Models\\User', 2, 'Kiera Luettgen', '460bae7aa296f1daea1307306a455d16abea4b41ffbda0941ae0b1f4d3a12718', '[\"*\"]', NULL, NULL, '2023-01-17 02:41:10', '2023-01-17 02:41:10'),
(12, 'App\\Models\\User', 2, 'Kiera Luettgen', '2a4fa029c771711cef268854b7292ac815de77ba8f9598e13dc36414ff2f46c9', '[\"*\"]', NULL, NULL, '2023-01-17 02:41:44', '2023-01-17 02:41:44'),
(13, 'App\\Models\\User', 2, 'Kiera Luettgen', '12cf69e6caa94e105c456efee6fb41cfc787896b0d07e4ec6ce914f7a87c8ad6', '[\"*\"]', NULL, NULL, '2023-01-17 02:44:47', '2023-01-17 02:44:47'),
(14, 'App\\Models\\User', 2, 'Kiera Luettgen', '7ae7fbd56912d680bbf3c2de0e393bbc20f9eba149564785b6b5f2b220d8a53e', '[\"*\"]', NULL, NULL, '2023-01-17 02:45:04', '2023-01-17 02:45:04'),
(15, 'App\\Models\\User', 2, 'Kiera Luettgen', '60da52001bb4c68935aa0cabd04f8ac1857ec516458bcd5ad6d89ee5e5026244', '[\"*\"]', NULL, NULL, '2023-01-17 02:45:31', '2023-01-17 02:45:31'),
(16, 'App\\Models\\User', 2, 'Kiera Luettgen', '83b322587de6c440fc856a47cfab3cb1d375e7c961a2ae55cde9a70b265ccdbb', '[\"*\"]', NULL, NULL, '2023-01-17 02:45:46', '2023-01-17 02:45:46'),
(17, 'App\\Models\\User', 2, 'Kiera Luettgen', '415b26881044a2b5ce85e4fcf0946a9ea0ac8b9bc38ade185256406c77f1fb2a', '[\"*\"]', NULL, NULL, '2023-01-17 02:46:49', '2023-01-17 02:46:49'),
(18, 'App\\Models\\User', 2, 'Kiera Luettgen', '2ecfe7ee7357dd884bc8a3fae325b78dbd5672bfef87932bededda18c84a2e27', '[\"*\"]', NULL, NULL, '2023-01-17 02:47:49', '2023-01-17 02:47:49'),
(19, 'App\\Models\\User', 2, 'Kiera Luettgen', '7e487c92f5714057754b1bd60f060c07d3e93fbb5da6c99ef3269543de3aeaef', '[\"*\"]', NULL, NULL, '2023-01-17 02:49:09', '2023-01-17 02:49:09'),
(20, 'App\\Models\\User', 2, 'Kiera Luettgen', '7ce9c24c26d30d932dc7959864bce638df979742280ef8f5f20a900e86865392', '[\"*\"]', NULL, NULL, '2023-01-17 02:53:49', '2023-01-17 02:53:49'),
(21, 'App\\Models\\User', 2, 'Kiera Luettgen', '1b7d8b51d036dfe6387b80d65df3a8c29f66cfb90c80343d71b53ac75b3ad443', '[\"*\"]', NULL, NULL, '2023-01-17 02:58:52', '2023-01-17 02:58:52'),
(22, 'App\\Models\\User', 2, 'Kiera Luettgen', 'a233e5f5f48e93aff2ff43c8cf34fe672ca1dcfb8b3f94302f2c298c28dc38ee', '[\"*\"]', NULL, NULL, '2023-01-17 03:01:46', '2023-01-17 03:01:46'),
(23, 'App\\Models\\User', 2, 'Kiera Luettgen', '5dc186728e3b6c84c70e4b52de50e2a2532a1481d86350ab535dba17fd0e6941', '[\"*\"]', NULL, NULL, '2023-01-17 03:02:21', '2023-01-17 03:02:21'),
(24, 'App\\Models\\User', 2, 'Kiera Luettgen', '51ff49d46eda78f6abed00dbe8907201ee3e01aeec24cb65bd4c1847b75bdd58', '[\"*\"]', NULL, NULL, '2023-01-17 03:04:25', '2023-01-17 03:04:25'),
(25, 'App\\Models\\User', 2, 'Kiera Luettgen', '18130012e96a51cd40bf3932c322128d444ae0f74ff9c8317665df2b8c12a9be', '[\"*\"]', NULL, NULL, '2023-01-17 03:04:38', '2023-01-17 03:04:38'),
(26, 'App\\Models\\User', 2, 'Kiera Luettgen', 'c33f388ecf0724aaea6b070791c79f938ab4f8429b826d184a0194f26870a64e', '[\"*\"]', NULL, NULL, '2023-01-17 03:04:55', '2023-01-17 03:04:55'),
(27, 'App\\Models\\User', 2, 'Kiera Luettgen', '0ec3b2e9ea17624bba8c61c387b8cf08a2658fc893960882cd12aa6ba1b0a6be', '[\"*\"]', NULL, NULL, '2023-01-17 03:06:44', '2023-01-17 03:06:44'),
(28, 'App\\Models\\User', 2, 'Kiera Luettgen', 'fd68a20b9e56dbe412c7df9c7f9df9b19c919bfa69513b1a90c3ec16ea66732f', '[\"*\"]', NULL, NULL, '2023-01-17 03:07:34', '2023-01-17 03:07:34'),
(29, 'App\\Models\\User', 2, 'Kiera Luettgen', '855fd9e17da5273da555e7cb72bc2897dde99d9a48dfbeeabeb55324dcf5cc4b', '[\"*\"]', NULL, NULL, '2023-01-17 03:08:00', '2023-01-17 03:08:00'),
(30, 'App\\Models\\User', 2, 'Kiera Luettgen', '588c8fc0a0f314cd8a51eafa2975fc5afd06056861c3bbe7a5bc4e8be66e9a3e', '[\"*\"]', NULL, NULL, '2023-01-17 03:13:12', '2023-01-17 03:13:12'),
(31, 'App\\Models\\User', 2, 'Kiera Luettgen', '5843e0b627bfa0191ecfc1c8ebe3fe8d3fa354eee3873baee273a52c682d6b65', '[\"*\"]', NULL, NULL, '2023-01-17 03:13:22', '2023-01-17 03:13:22'),
(32, 'App\\Models\\User', 2, 'Kiera Luettgen', '3dc2c5aa052ceb1e839f15f1895ef8efb00a62a17d49f9edf1a96ca7e887d81f', '[\"*\"]', NULL, NULL, '2023-01-17 03:14:12', '2023-01-17 03:14:12'),
(33, 'App\\Models\\User', 2, 'Kiera Luettgen', 'ff15b0b44b98ea095e9e8a2d803f3ddde61c26d0f5e792498f5035d398ef26cd', '[\"*\"]', NULL, NULL, '2023-01-17 03:16:43', '2023-01-17 03:16:43'),
(34, 'App\\Models\\User', 2, 'Kiera Luettgen', '6eb5fdd99ffb78b9d000515f9e566d9fab6e4674e4c83eceddd95718b0844e2d', '[\"*\"]', NULL, NULL, '2023-01-17 03:18:00', '2023-01-17 03:18:00'),
(35, 'App\\Models\\User', 15, 'auth_token', 'fbb3ee55c6f54b5757eecf2cc525c5f620a0fd53c8137ef34ac5e0a5852d7dea', '[\"*\"]', NULL, NULL, '2023-01-17 04:11:27', '2023-01-17 04:11:27'),
(36, 'App\\Models\\User', 16, 'auth_token', '05d08bb89148cf0552b784fbbada236086e5684020663f7118f389c2a74a860f', '[\"*\"]', NULL, NULL, '2023-01-17 04:12:41', '2023-01-17 04:12:41'),
(37, 'App\\Models\\User', 17, 'auth_token', 'a846846918df0103669c2ef4fc1e96dc743108dbfb7943b4fb1c30a9821e01fc', '[\"*\"]', NULL, NULL, '2023-01-17 04:51:40', '2023-01-17 04:51:40'),
(38, 'App\\Models\\User', 25, 'auth_token', '9fb7e0ae746111a470eb20c338bd2f6d63ad5aab3ed8c13952574c10dd4666ab', '[\"*\"]', NULL, NULL, '2023-01-17 04:59:16', '2023-01-17 04:59:16'),
(39, 'App\\Models\\User', 26, 'auth_token', 'c9a40fb127acb607ac7e37e23255d000fe313f2da9451cfc0d308a4d44d28c00', '[\"*\"]', NULL, NULL, '2023-01-17 05:07:01', '2023-01-17 05:07:01'),
(40, 'App\\Models\\User', 140, 'auth_token', '5289acdf6b6cd74a1d6371304de9958ca8d9c4a7e9faa513b9c3d916ef79bf60', '[\"*\"]', NULL, NULL, '2023-01-17 09:16:40', '2023-01-17 09:16:40'),
(41, 'App\\Models\\User', 144, 'auth_token', '9c78a1ab4d53a0cd6bc37d642aac466b32d258488507a6ee32fd2538d73ff257', '[\"*\"]', NULL, NULL, '2023-01-17 09:24:58', '2023-01-17 09:24:58'),
(42, 'App\\Models\\User', 146, 'auth_token', '95e5b2fd9d342809ed66731d68dc5c3935009f983adfa64b510fbf7ba029455c', '[\"*\"]', NULL, NULL, '2023-01-17 09:25:23', '2023-01-17 09:25:23'),
(43, 'App\\Models\\User', 148, 'auth_token', 'a0dfdf2ed3ad0e15afcf8705402544c38b10dd79c72facff217095669c6c22fa', '[\"*\"]', NULL, NULL, '2023-01-17 10:36:32', '2023-01-17 10:36:32'),
(44, 'App\\Models\\User', 148, 'ale', '3b1de13859d1a344c6f5bfaa55cda61a4058e7cde3f99349c60cc5a57a706c9c', '[\"*\"]', NULL, NULL, '2023-01-17 10:37:47', '2023-01-17 10:37:47'),
(45, 'App\\Models\\User', 149, 'auth_token', 'c359541d04edd6a8a79e359bae483b420130fa72cae72a3f759fc7c12da267e6', '[\"*\"]', NULL, NULL, '2023-01-17 10:50:48', '2023-01-17 10:50:48'),
(46, 'App\\Models\\User', 150, 'auth_token', 'e712e772fcb3bb94f7e6d746a1c6b1f43b55acf4d66275e8f54cb5cf965319c5', '[\"*\"]', NULL, NULL, '2023-01-17 10:51:14', '2023-01-17 10:51:14'),
(47, 'App\\Models\\User', 164, 'klm', 'e16866b45f9842990a671cc298c4724b7107966f1bff9a090891f44bc2bae0b5', '[\"*\"]', NULL, NULL, '2023-01-17 11:16:23', '2023-01-17 11:16:23'),
(48, 'App\\Models\\User', 174, 'alexisa', '53db6dd3de6aec6187ed0ff5d3fc75959a08bb056347b5641d2fdb58bd8d470f', '[\"*\"]', NULL, NULL, '2023-01-18 05:59:49', '2023-01-18 05:59:49'),
(49, 'App\\Models\\User', 174, 'alexisa', '11a199ff9aab1a8154981fa702a01a7568f6eda3c01086f4baf0d628c32ce3d3', '[\"*\"]', NULL, NULL, '2023-01-18 05:59:49', '2023-01-18 05:59:49'),
(50, 'App\\Models\\User', 174, 'alexisa', '4da1193b04a872d3df06fb591f6f6718d88328985850366488bf8ef7e6f9fd0e', '[\"*\"]', NULL, NULL, '2023-01-18 06:03:54', '2023-01-18 06:03:54'),
(51, 'App\\Models\\User', 174, 'alexisa', 'd8b5bc2fbb21e117a771164a54d418fc9001df41ece7970e0d8ab929fcf67548', '[\"*\"]', NULL, NULL, '2023-01-18 06:06:22', '2023-01-18 06:06:22'),
(52, 'App\\Models\\User', 174, 'alexisa', 'ed4d784075401fa3cffba1f1aa76ece27a05134fc1d356c01162620865ba8b8f', '[\"*\"]', NULL, NULL, '2023-01-18 06:09:13', '2023-01-18 06:09:13'),
(53, 'App\\Models\\User', 174, 'alexisa', 'bdda73d852c5f6eca518c91581bb54232ec478ada68db3f81819d5f187db5451', '[\"*\"]', NULL, NULL, '2023-01-18 06:10:53', '2023-01-18 06:10:53'),
(54, 'App\\Models\\User', 174, 'alexisa', '415c900d903655d9999f7ceae277c16a7a325908028de4151b4baa51227d7381', '[\"*\"]', NULL, NULL, '2023-01-18 06:11:23', '2023-01-18 06:11:23'),
(55, 'App\\Models\\User', 174, 'alexisa', 'a34d5e4465253714994c404c814686e0d6d688f9a8905b096aac4ffdfa71bcc9', '[\"*\"]', NULL, NULL, '2023-01-18 06:11:47', '2023-01-18 06:11:47'),
(56, 'App\\Models\\User', 174, 'alexisa', 'd39aa6dc6796f5003b15a8bf377a23a661053ecf65569d3dae690aa920da3302', '[\"*\"]', NULL, NULL, '2023-01-18 06:12:49', '2023-01-18 06:12:49'),
(57, 'App\\Models\\User', 174, 'alexisa', 'f8d83a07baef53ec08f0c628d958816453dfc46bf075e7a966376cea118c4d96', '[\"*\"]', NULL, NULL, '2023-01-18 06:13:29', '2023-01-18 06:13:29'),
(58, 'App\\Models\\User', 174, 'alexisa', 'f740766486827a076e0b71ce13536220c911a46a2d6cf2c132933dec3edf0185', '[\"*\"]', NULL, NULL, '2023-01-18 06:14:10', '2023-01-18 06:14:10'),
(59, 'App\\Models\\User', 174, 'alexisa', '1f7c74418f5746ff394af747466bc73d09351973d79a1374f20fb4771f22680e', '[\"*\"]', NULL, NULL, '2023-01-18 06:14:41', '2023-01-18 06:14:41'),
(60, 'App\\Models\\User', 174, 'alexisa', '48615fadf03a69b58b7c080068558cf9422856a4bc955f335e016673579c809a', '[\"*\"]', NULL, NULL, '2023-01-18 06:15:24', '2023-01-18 06:15:24'),
(61, 'App\\Models\\User', 174, 'alexisa', '1762d344f9d51c3e2e9cc0793023505d8a8f69329209297cc3fe2dcf0a22fe6a', '[\"*\"]', NULL, NULL, '2023-01-18 06:15:46', '2023-01-18 06:15:46'),
(62, 'App\\Models\\User', 174, 'alexisa', '3e915658e53acbe65a74e39bf5f8e5713cb9ddfd54fcd157c56a61fecdaed8ca', '[\"*\"]', NULL, NULL, '2023-01-18 06:16:36', '2023-01-18 06:16:36'),
(63, 'App\\Models\\User', 174, 'alexisa', '991d905c608048bf8fad01ebc33f493759bf8957934d2168af35be42c27f836b', '[\"*\"]', NULL, NULL, '2023-01-18 06:17:39', '2023-01-18 06:17:39'),
(64, 'App\\Models\\User', 174, 'alexisa', '9f2baf055689237c573861bcd0f876d9d028916e39c237d66cd3faab4a0c65d3', '[\"*\"]', NULL, NULL, '2023-01-18 06:18:36', '2023-01-18 06:18:36'),
(65, 'App\\Models\\User', 174, 'alexisa', 'c16db365bf3df9f6c90ce4642908bae615af57b95325533480294673e5f243a9', '[\"*\"]', NULL, NULL, '2023-01-18 06:19:02', '2023-01-18 06:19:02'),
(66, 'App\\Models\\User', 174, 'alexisa', '48a987ed553777437b81bb997ed39c7bbb1102b6a62a4b170e8ffe1bba2f86ac', '[\"*\"]', '2023-01-18 08:08:00', NULL, '2023-01-18 06:19:43', '2023-01-18 08:08:00'),
(67, 'App\\Models\\User', 174, 'alexisa', 'ae1036c01d2dd6c81145125d778592079a1e30ee975ae4faf1eec8e3c809003c', '[\"*\"]', NULL, NULL, '2023-01-18 08:17:27', '2023-01-18 08:17:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'alexisa', 'jairoa@gmail.com', NULL, '$2y$10$R6hoc81xyUkztHfFDhbAl.sazPwLPNAkPHjUS69aDQzy1Kiyw9EpG', NULL, '2023-01-18 10:41:38', '2023-01-18 10:41:38'),
(2, 'Ms. Melissa Mraz V', 'medhurst.lorenza@example.org', '2023-01-18 10:45:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ej76KdmR0G', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(3, 'Mary Ebert', 'kgottlieb@example.net', '2023-01-18 10:45:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LKp9wgcKRg', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(4, 'Stephanie Hirthe', 'breitenberg.yesenia@example.org', '2023-01-18 10:45:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hodoeDm5Ev', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(5, 'Ariel Schmitt', 'aheidenreich@example.org', '2023-01-18 10:45:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4TzKumqzV2', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(6, 'Darrick Grant', 'wilfred17@example.com', '2023-01-18 10:45:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xGT95fySVL', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(7, 'Blanca Stehr', 'kmohr@example.org', '2023-01-18 10:45:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ooI2sSJiP9', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(8, 'Cecile Corwin', 'alycia61@example.org', '2023-01-18 10:45:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'miJg9P5eTY', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(9, 'Ms. Genesis Oberbrunner Sr.', 'harvey.sigmund@example.net', '2023-01-18 10:45:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TXfbXaLGp8', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(10, 'Isaias Pfeffer Sr.', 'janice58@example.net', '2023-01-18 10:45:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ly0l2qbm56', '2023-01-18 10:45:10', '2023-01-18 10:45:10'),
(11, 'Kathlyn Dibbert', 'ebeier@example.org', '2023-01-18 10:45:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iS4IRoT1Wq', '2023-01-18 10:45:10', '2023-01-18 10:45:10');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dato_empresas`
--
ALTER TABLE `dato_empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `dato_empresas`
--
ALTER TABLE `dato_empresas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
