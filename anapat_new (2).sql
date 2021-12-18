-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2021 at 03:32 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anapat_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `subject`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'PT. Purdimen Vanjava', 'let\'s build your dream building with us', '<div style=\"text-align: justify;\"><span style=\"font-family: Poppins; font-size: 1rem; background-color: rgb(255, 255, 255);\"><font color=\"#000000\">Why do we use it?\r\n</font></span></div><div style=\"text-align: justify;\"><span style=\"font-family: Poppins; font-size: 1rem; background-color: rgb(255, 255, 255);\"><font color=\"#000000\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</font></span></div>', NULL, '2020-12-03 03:52:54');

-- --------------------------------------------------------

--
-- Table structure for table `asistent`
--

CREATE TABLE `asistent` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `curso` int(10) UNSIGNED NOT NULL,
  `orden` int(11) DEFAULT NULL,
  `operador` int(10) UNSIGNED NOT NULL,
  `tipo_carnet` int(10) UNSIGNED NOT NULL,
  `nota_t` int(11) DEFAULT NULL,
  `nota_p` int(11) NOT NULL,
  `examen_t_pdf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `examen_p_pdf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo_1` int(10) UNSIGNED NOT NULL,
  `tipo_2` int(10) UNSIGNED NOT NULL,
  `tipo_3` int(10) UNSIGNED NOT NULL,
  `tipo_4` int(10) UNSIGNED NOT NULL,
  `emision` date DEFAULT NULL,
  `vencimiento` date DEFAULT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rememberToken` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `asistent`
--

INSERT INTO `asistent` (`id`, `created_at`, `updated_at`, `deleted_at`, `curso`, `orden`, `operador`, `tipo_carnet`, `nota_t`, `nota_p`, `examen_t_pdf`, `examen_p_pdf`, `tipo_1`, `tipo_2`, `tipo_3`, `tipo_4`, `emision`, `vencimiento`, `observaciones`, `rememberToken`) VALUES
(1, '2021-12-16 08:34:32', '2021-12-16 08:34:32', NULL, 1, 56, 1, 1, 456, 456, '2021-12-15', '456', 1, 1, 1, 1, NULL, NULL, '56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `cover`, `title`, `desc`, `link`, `created_at`, `updated_at`) VALUES
(1, 'images/banner/t0D8Que4RXcJprQ9L8nWdqhyyos8emjt6zvGzJNc.jpg', 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'https://bisabos.com', '2020-12-01 03:39:55', '2021-06-16 15:38:44'),
(2, 'images/banner/xydydcSgEfngz4KBQ9trEaszerbFcjK8NiODojz1.jpg', 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.', 'https://bisabos.com', '2020-12-01 03:47:21', '2021-06-16 15:39:00'),
(3, 'images/banner/y9KTwgGP0rJfmIY2QbSIy5gcEFD6JNPaxsq5myBj.jpg', 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.', 'https://bisabos.com', '2020-12-01 03:47:56', '2021-06-16 15:39:15');

-- --------------------------------------------------------

--
-- Table structure for table `carnet`
--

CREATE TABLE `carnet` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `numero` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operador` int(10) UNSIGNED NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_de_alta` date DEFAULT NULL,
  `fecha_de_emision` date DEFAULT NULL,
  `tipos_de_pemp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `curso` int(10) UNSIGNED NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `examen_teorico_realizado` enum('básico','Extendido') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `keyword`, `meta_desc`, `created_at`, `updated_at`) VALUES
(2, 'Tips Trik', 'tips-trik', 'tips trik', 'tips dan trik seputar bla bla', '2020-12-02 02:44:44', '2020-12-02 02:45:30'),
(3, 'Semen', 'semen', 'test', 'informasi seputar bla bla', '2020-12-02 03:42:33', '2020-12-02 03:42:33');

-- --------------------------------------------------------

--
-- Table structure for table `cursos`
--

CREATE TABLE `cursos` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `curso` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_curso` int(10) UNSIGNED NOT NULL,
  `tipo_maquina_1` int(10) UNSIGNED DEFAULT NULL,
  `tipo_maquina_2` int(10) UNSIGNED DEFAULT NULL,
  `tipo_maquina_3` int(10) UNSIGNED DEFAULT NULL,
  `tipo_maquina_4` int(10) UNSIGNED DEFAULT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entidad` int(10) UNSIGNED NOT NULL,
  `formador` int(10) UNSIGNED NOT NULL,
  `formador_apoyo_1` int(10) UNSIGNED DEFAULT NULL,
  `formador_apoyo_2` int(10) UNSIGNED NOT NULL,
  `formador_apoyo_3` int(10) UNSIGNED DEFAULT NULL,
  `fecha_inicio` datetime DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provincia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codigo_postal` int(11) DEFAULT NULL,
  `examen-t` int(10) UNSIGNED NOT NULL,
  `examen-p` int(10) UNSIGNED NOT NULL,
  `asistentes_pdf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_alta` datetime DEFAULT NULL,
  `publico-privado` tinyint(1) NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cerrado` tinyint(1) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cursos`
--

INSERT INTO `cursos` (`id`, `created_at`, `updated_at`, `deleted_at`, `curso`, `tipo_curso`, `tipo_maquina_1`, `tipo_maquina_2`, `tipo_maquina_3`, `tipo_maquina_4`, `codigo`, `entidad`, `formador`, `formador_apoyo_1`, `formador_apoyo_2`, `formador_apoyo_3`, `fecha_inicio`, `direccion`, `ciudad`, `provincia`, `codigo_postal`, `examen-t`, `examen-p`, `asistentes_pdf`, `fecha_alta`, `publico-privado`, `observaciones`, `cerrado`, `estado`) VALUES
(1, '2021-12-15 10:45:03', '2021-12-15 10:45:03', NULL, '43', 1, 1, NULL, NULL, 4, '34', 1, 1, 2, 1, 1, '2021-12-16 00:00:00', '34', '34', 'rty', NULL, 2, 1, 'ry', '2021-12-07 00:00:00', 2, NULL, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `entidades_formadoreas`
--

CREATE TABLE `entidades_formadoreas` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `socio` bigint(20) NOT NULL,
  `cif` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `razon_social` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo_postal` int(11) DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doc_medios_pdf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `estado` tinyint(1) NOT NULL,
  `certificado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `entidades_formadoreas`
--

INSERT INTO `entidades_formadoreas` (`id`, `created_at`, `updated_at`, `deleted_at`, `socio`, `cif`, `nombre`, `razon_social`, `province`, `ciudad`, `direccion`, `codigo_postal`, `logo`, `web`, `mail`, `doc_medios_pdf`, `fecha`, `estado`, `certificado`) VALUES
(1, NULL, '2021-12-16 04:56:12', NULL, 1, 'dfs', 'sdffds', 'sdfdsf', 'sdfdsf', 'sdfsdf', 'sdfsdf', 2, 'sdffds', 'dsffds', 'sfsd', 'dfsfds', '2021-12-09', 0, 0),
(2, '2021-12-14 19:51:42', '2021-12-14 19:51:42', NULL, 234, '23', '234', '234', '234', '234', '234', NULL, '234', '2342', '234', '23', NULL, 2, 32),
(3, '2021-12-16 05:32:09', '2021-12-16 05:32:09', NULL, 123, '213', '213', '213', '123', '123', '123', 123, 'C:\\xampp\\tmp\\phpEF47.tmp', '213', '213', 'C:\\xampp\\tmp\\phpEF48.tmp', '2021-12-15', 1, 1),
(4, '2021-12-17 13:50:57', '2021-12-17 13:50:57', NULL, 12, 'we', 'ALQUILER DE MAQUINARIA RETAIRE', NULL, NULL, '123', 'Pol. Ind. Európolis C/ París, 6   28232  - Las Rozas, Madrid', 23, 'entidades_formadoreas/ALQUILER DE MAQUINARIA RETAIRE/9SMHfA8XuJTCXLSrBa5IrIfrNgNpRE3fTxd3k2yM.jpg', 'www.rentaire.es', 'we', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `examen`
--

CREATE TABLE `examen` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` enum('T-Theoretical','P-Practical') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `examen`
--

INSERT INTO `examen` (`id`, `created_at`, `updated_at`, `deleted_at`, `codigo`, `tipo`, `nombre`, `url`) VALUES
(1, NULL, NULL, NULL, '23', 'T-Theoretical', '213ws', 'wqe'),
(2, NULL, NULL, NULL, '213', 'P-Practical', 'wq', 'qwe');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-12-02 23:00:43', '2020-12-02 23:00:43'),
(2, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '2020-12-02 23:00:51', '2020-12-02 23:01:07'),
(4, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '2020-12-02 23:01:31', '2020-12-02 23:01:31'),
(5, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '2020-12-02 23:01:47', '2020-12-02 23:01:47');

-- --------------------------------------------------------

--
-- Table structure for table `formadores`
--

CREATE TABLE `formadores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entidad` int(10) UNSIGNED NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dni` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dni_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operador_pdf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cert_empresa_pdf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vida_laboral_pdf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prl_pdf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pemp_pdf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cap_pdf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `formadores`
--

INSERT INTO `formadores` (`id`, `created_at`, `updated_at`, `deleted_at`, `codigo`, `entidad`, `apellidos`, `nombre`, `dni`, `dni_img`, `operador_pdf`, `cert_empresa_pdf`, `vida_laboral_pdf`, `prl_pdf`, `pemp_pdf`, `cap_pdf`, `fecha`, `estado`) VALUES
(1, '2021-12-14 20:45:49', '2021-12-14 20:45:49', NULL, '123', 1, '213', '213', '123', '123', '123', '123', '123', '123', '123', '123', NULL, 123),
(2, '2021-12-14 20:53:32', '2021-12-14 20:53:32', NULL, '123', 2, 'sdf', 'sd', '123', '123', '123', '123', '123', '123', '123', '123', NULL, 123),
(3, '2021-12-17 14:37:00', '2021-12-17 14:37:00', NULL, '324', 2, '234', '234', '234', 'formadores/234/39oTvOV2Dpeg21zQ1yaaHSeCuuvFtqTtKVq8lXtG.jpg', 'formadores/234/vY3iPvu1NZAVmEp363vhquQMIY1JDO4Ezlhq764B.png', '', 'formadores/234/AT9ljfOlQMgv4DSbhx8Crj6yh1iEnmShzffjhXfd.png', 'formadores/234/OTjn27rOa7rLQUojixITtD7BXoDnTZfc886xPKf0.jpg', 'formadores/234/2C2VpHUt0b0cTUz5MZJ5fIPNOleSiMP5WUs5zUnL.jpg', 'formadores/234/cfvbg0q7wwzpeqi7iSIlwqLWhlzC6rzipkleTFyn.jpg', '2021-12-17', 0),
(4, '2021-12-17 16:39:59', '2021-12-17 16:39:59', NULL, '3454', 2, '345', '345', '345', '', '', '', '', '', '', '', '2021-12-15', 0);

-- --------------------------------------------------------

--
-- Table structure for table `generals`
--

CREATE TABLE `generals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gmaps` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tawkto` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disqus` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gverification` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sharethis` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generals`
--

INSERT INTO `generals` (`id`, `title`, `favicon`, `logo`, `address1`, `address2`, `phone`, `email`, `twitter`, `facebook`, `instagram`, `linkedin`, `footer`, `gmaps`, `tawkto`, `disqus`, `gverification`, `sharethis`, `keyword`, `meta_desc`, `created_at`, `updated_at`) VALUES
(1, 'PT. Purdimen Vanjava', 'images/general/Ytht0KREtBBS5GhdeYUSx0XUqssE2DajA5e4boBD.png', 'images/general/RvcrWDTuNWHr18k8fWr6HHhwWw2a5wn6lBijOCW9.png', 'Sambirejo, Bangorejo', 'Kab. Banyuwangi, Jawa Timur', '0821xxxxxx', 'halo@example.com', 'https://twitter.com/bisaboscom', 'https://facebook.com/bisaboscom', 'https://instagram.com/bisabos', 'https://linkedin.com', 'PT. Purdimen Vanjava', 'https://goo.gl/maps/PBqSN7chg75uz69HA', NULL, NULL, 'isi dengan script google verification', NULL, 'purdimen vanjava', 'description', NULL, '2021-06-16 15:42:18');

-- --------------------------------------------------------

--
-- Table structure for table `horario`
--

CREATE TABLE `horario` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `curso` int(10) UNSIGNED NOT NULL,
  `contenido` enum('Teoría','Práctica') COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `final` datetime NOT NULL,
  `alumnos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `horario`
--

INSERT INTO `horario` (`id`, `created_at`, `updated_at`, `deleted_at`, `curso`, `contenido`, `fecha_inicio`, `final`, `alumnos`) VALUES
(1, '2021-12-15 12:13:26', '2021-12-15 12:13:26', NULL, 1, 'Práctica', '2021-12-14 00:00:00', '2021-12-07 00:00:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `name`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Privacy Policy', '/pages/privacy-policy', '2020-12-02 22:41:47', '2020-12-02 22:48:10'),
(2, 'Disclaimer', '/pages/disclaimer', '2020-12-02 22:42:13', '2020-12-02 22:44:43');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_12_01_100143_create_generals_table', 1),
(5, '2020_12_01_114144_create_banners_table', 1),
(6, '2020_12_01_125701_create_abouts_table', 1),
(7, '2020_12_01_133441_create_portfolios_table', 1),
(8, '2020_12_01_134310_create_pcategories_table', 1),
(9, '2020_12_02_113421_create_categories_table', 1),
(10, '2020_12_02_115319_create_tags_table', 1),
(11, '2020_12_02_115935_create_posts_table', 1),
(12, '2020_12_02_120059_create_post_tag_table', 1),
(13, '2020_12_03_065405_create_testimonials_table', 1),
(14, '2020_12_03_072245_create_pages_table', 1),
(15, '2020_12_03_073641_create_links_table', 1),
(16, '2020_12_03_075643_create_faqs_table', 1),
(17, '2020_12_03_080922_create_partners_table', 1),
(18, '2020_12_03_082839_create_services_table', 1),
(19, '2020_12_03_103255_create_teams_table', 1),
(20, '2020_12_03_103405_create_subscribers_table', 1),
(21, '2021_12_14_095257_create_entidades_formadoreas_table', 1),
(22, '2021_12_14_095257_create_formadores_table', 1),
(23, '2021_12_14_095307_create_foreign_keys', 2),
(24, '2021_12_14_123323_create_cursos_table', 2),
(25, '2021_12_14_123323_create_practica_table', 3),
(26, '2021_12_14_123323_create_teoria_table', 3),
(27, '2021_12_14_123323_create_tipo_de_curso_table', 3),
(28, '2021_12_14_123323_create_tipo_maquina_table', 3),
(29, '2021_12_14_123323_create_asistent_table', 4),
(30, '2021_12_14_123323_create_carnet_table', 4),
(31, '2021_12_14_123323_create_examen_table', 4),
(32, '2021_12_14_123323_create_horario_table', 4),
(33, '2021_12_14_123323_create_operadores_table', 4),
(34, '2021_12_14_131438_add_rest_column_to_user_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `operadores`
--

CREATE TABLE `operadores` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `dni` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entidad` int(10) UNSIGNED NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dni_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `provincia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codigo_postal` int(11) DEFAULT NULL,
  `mail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carnet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `operadores`
--

INSERT INTO `operadores` (`id`, `created_at`, `updated_at`, `deleted_at`, `dni`, `apellidos`, `nombre`, `entidad`, `foto`, `dni_img`, `fecha_nacimiento`, `provincia`, `ciudad`, `direccion`, `codigo_postal`, `mail`, `carnet`, `fecha`, `estado`) VALUES
(1, '2021-12-16 07:45:04', '2021-12-16 07:45:04', NULL, '21', '21', '2132', 2, 'C:\\xampp\\tmp\\php9FA1.tmp', 'C:\\xampp\\tmp\\php9FA2.tmp', NULL, '2qw', '324', '234', 234, '234', '324', '2021-12-15', 1),
(2, '2021-12-16 07:47:10', '2021-12-16 07:47:10', NULL, 'dsf', 'sdf', 'sdf', 2, 'C:\\xampp\\tmp\\php8E25.tmp', 'C:\\xampp\\tmp\\php8E26.tmp', '2021-12-15', 'sdf', 'sdf', 'sdf', 4, 'sfd', 'dsf', '2021-12-15', 1),
(3, NULL, NULL, NULL, '42262541H', 'González Manchola', 'Blake Stevens', 0, NULL, 'blake stevens González 42262541h.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0),
(4, NULL, NULL, NULL, '49861892P', 'González Roldán', 'Joseph Kennedy', 0, NULL, 'Joseph Kennedy González Roldán 49861892P.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0),
(5, NULL, NULL, NULL, '11430187S', 'Santamarina González', 'Ubaldo', 0, NULL, 'Ubaldo Santamarina González 11430187S.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0),
(6, NULL, NULL, NULL, '42416445Y', 'Acosta González', 'Dayan', 0, NULL, 'Dayan Acosta González 42416445Y.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0),
(7, NULL, NULL, NULL, '54055036E', 'Acosta González', 'Iván', 0, NULL, 'IVAN ACOSTA.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0),
(8, NULL, NULL, NULL, '78756577T', 'Aguado González', 'Daniel', 0, NULL, 'DNI_78756577T.pdf', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0),
(9, NULL, NULL, NULL, 'Y5309080G', 'Aguilar González', 'Michel', 0, NULL, 'DNI_MICHELAGULARGONZALEZ.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0),
(10, NULL, NULL, NULL, '01178003N', 'Aguirre González', 'Alberto', 0, NULL, 'DNI_Alberto_Aguirre_González.pdf', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0),
(11, NULL, NULL, NULL, '52981883A', 'Alcalde González', 'Sergio', 0, NULL, 'DNI SERGIO ALCALDE GONZALEZ 23 09 2021.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0),
(12, NULL, NULL, NULL, '35557910W', 'Alonso González', 'Gumersindo', 0, NULL, 'DNI_GUMERSINDOALONSOGLEZ.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0),
(13, NULL, NULL, NULL, '52937525N', 'Alonso González', 'Juan Manuel', 0, NULL, 'JUAN MANUEL ALONSO GONZALEZ.jpg', '0000-00-00', '15930 BOIRO', '15930 BOIRO', 'ALDEA VILARIÑO Nº 87', 15930, 'alro@alromaquinaria.es', NULL, '0000-00-00', 0),
(14, NULL, NULL, NULL, '45452870V', 'Alvarado González', 'Domingo', 0, NULL, 'Domingo Alvarado González 45452870 V.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0),
(15, NULL, NULL, NULL, '45535993H', 'Alvarado González', 'Jose Manuel', 0, NULL, 'José Manuel Alvarado González 45535993H.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0),
(16, NULL, NULL, NULL, '44302462T', 'Álvarez González', 'José Ángel', 0, NULL, 'José Ángel Álvarez González 44302462T.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0),
(17, NULL, NULL, NULL, '78700371Y', 'Amaro González', 'Jonathan', 0, NULL, 'Jonathan Amaro González 78700371Y.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0),
(18, NULL, NULL, NULL, '78700370M', 'Amaro González', 'Ángel Andrés', 0, NULL, 'Ángel Andrés Amaro González  78700370M.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0),
(19, NULL, NULL, NULL, '78568474Z', 'Báez González', 'Iván', 0, NULL, 'IVAN BAEZ.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0),
(20, NULL, NULL, NULL, '20444325Q', 'Ballester González', 'Octavio', 0, NULL, 'DNI_OctavioBallesterGonzalez.pdf', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0),
(21, NULL, NULL, NULL, '32691072E', 'Barcia González', 'Borja', 0, NULL, 'DNI BORJABARCIAGONZALEZ.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0),
(22, NULL, NULL, NULL, '49002751D', 'Barras González', 'Cristian', 0, NULL, 'DNI_ChristianBarrasGonzalez.pdf', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0),
(23, NULL, NULL, NULL, '49983488A', 'Barrios González', 'José Manuel', 0, NULL, 'José Manuel Barrios González 49983488A.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0),
(24, NULL, NULL, NULL, '07971017E', 'Becerro González', 'Salvador', 0, NULL, 'Salvador Becerro González 07971017E.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0),
(25, NULL, NULL, NULL, '53481521N', 'Bermúdez González', 'Esteban', 0, NULL, 'ESTEBAN BERMUDEZ GONZALEZ.jpg', '0000-00-00', '15930 BOIRO', '15930 BOIRO', 'ALDEA VILARIÑO Nº 87', 15930, 'alro@alromaquinaria.es', NULL, '0000-00-00', 0),
(26, NULL, NULL, NULL, '76998873W', 'Bouzón González', 'Marcos', 0, NULL, '76998873W_BOUZONGONZALEZMARCOS.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0),
(27, NULL, NULL, NULL, '43279512K', 'Brito González', 'Juan Francisco', 0, NULL, 'Juan Francisco Brito González 43279512K.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0),
(28, NULL, NULL, NULL, '44905314E', 'Buenaposada González', 'César', 0, NULL, '44905314E.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0),
(29, NULL, NULL, NULL, '76907037M', 'Bugarín González', 'José Manuel', 0, NULL, '76907037M_BUGARINGONZALEZJOSEMANUEL.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0),
(30, NULL, NULL, NULL, '47218294F', 'Caballero González', 'Álvaro', 0, NULL, 'DNI_AlvaroCaballeroGonzalez.pdf', '0000-00-00', 'MADRID', 'COSLADA', 'AVDA. SAN PABLO, 12 P01 C', NULL, NULL, NULL, '0000-00-00', 0),
(31, NULL, NULL, NULL, '54088924P', 'Cabrera González', 'Oliverio', 0, NULL, 'Oliverio Cabrera González 54088924P.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0),
(32, NULL, NULL, NULL, '42871463S', 'Cabrera González', 'Rubén', 0, NULL, 'Rubén Cabrera González 42871463S.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0),
(33, NULL, NULL, NULL, '52852700B', 'Calderín González', 'Juan Miguel', 0, NULL, 'DNI JUAN MIGUEL CALDERIN.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0),
(34, NULL, NULL, NULL, '43777856R', 'Camacho González', 'Julián Antonio', 0, NULL, 'Julián Antonio Camacho glez 43777856r.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0),
(35, NULL, NULL, NULL, '52712485G', 'Cambra González', 'Enrique Miguel', 0, NULL, 'DNI_EnriqueMiguelCambraGonzalez.pdf', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0),
(36, NULL, NULL, NULL, '47587060Z', 'Cárdenas González', 'Raúl', 0, NULL, 'DNI_RaulCardenasGonzalez.pdf', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0),
(37, NULL, NULL, NULL, '04584310L', 'Cardo González', 'Benito', 0, NULL, 'DNI_BenitoCardoGonzález.pdf', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0),
(38, NULL, NULL, NULL, '78505026T', 'Castaño González', 'José María', 0, NULL, 'Jose María Castaño González 78505026T.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0),
(39, NULL, NULL, NULL, '52857428R', 'Castellano González', 'Orlando', 0, NULL, 'Orlando Castellano González 52857428R.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0),
(40, NULL, NULL, NULL, '49495089D', 'Castro González', 'Antonio David', 0, NULL, 'Antonio David Castro González 49495089D.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `text`, `created_at`, `updated_at`) VALUES
(2, 'Privacy Policy', 'privacy-policy', '<pre class=\"lang-php s-code-block hljs\" style=\"margin-bottom: 0px; padding: 12px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 1.30769; font-family: Consolas, Menlo, Monaco, &quot;Lucida Console&quot;, &quot;Liberation Mono&quot;, &quot;DejaVu Sans Mono&quot;, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, monospace, sans-serif; font-size: 13px; vertical-align: baseline; box-sizing: inherit; width: auto; max-height: 600px; background-color: var(--highlight-bg); border-radius: 5px; color: var(--highlight-color); overflow-wrap: normal;\"><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0); white-space: normal;\">Where does it come from?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; white-space: normal;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; white-space: normal;\"><br></p><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0); white-space: normal;\">Where does it come from?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; white-space: normal;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; white-space: normal;\"><br></p><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0); white-space: normal;\">Where does it come from?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; white-space: normal;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p></pre>', '2020-12-02 22:31:42', '2020-12-02 22:31:42'),
(3, 'Disclaimer', 'disclaimer', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0);\">Where does it come from?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0);\">Where does it come from?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0);\">Where does it come from?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0);\">Where does it come from?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', '2020-12-02 22:32:00', '2020-12-02 22:32:00');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `cover`, `name`, `link`, `created_at`, `updated_at`) VALUES
(1, 'images/partner/Dnn39uNe1NXmni9vMq4iqzVLZMDZlpJCloveDr0h.png', 'myob', NULL, '2020-12-02 23:16:34', '2021-06-16 15:36:23'),
(2, 'images/partner/GOIIZBNtHma0BR4KbHGpg5rw5ZLOHryNzawPlr6x.png', 'BELIMO', 'https://belimo.com', '2020-12-02 23:17:05', '2021-06-16 15:36:14'),
(3, 'images/partner/qBufqKw74jGPUN81Y6QuiulkXKmHZQs6ioLk910F.png', 'Life Groups', 'https://lifegroups.com', '2020-12-02 23:17:22', '2021-06-16 15:36:04'),
(4, 'images/partner/h6K7bLbgWFt7f2xj31keRiLVceC8lqslONazxdft.png', 'Lilly', NULL, '2020-12-02 23:18:22', '2021-06-16 15:35:54'),
(5, 'images/partner/Q2pq33KpLymuoI7pLN54jUhnCSVTMwOpAlVjSL4F.png', 'Citrus', NULL, '2020-12-02 23:22:30', '2021-06-16 15:35:42'),
(6, 'images/partner/KZBZXlsasXHCqrixVG6F8zppZAzi3muRvmqQyvhA.png', 'Trustly', NULL, '2020-12-02 23:22:47', '2021-06-16 15:35:33'),
(7, 'images/partner/RZymANKMt0K2TbI44mBj3WI1A7eadWRFCilcAgYA.png', 'oldendorff', NULL, '2020-12-02 23:23:16', '2021-06-16 15:35:18'),
(8, 'images/partner/lIy6O6kNJfkv7DqpiUcDBoWy88tUZa9its0TWk6a.png', 'Bisabos', 'https://bisabos.com', '2020-12-02 23:24:11', '2021-06-16 15:35:04');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pcategories`
--

CREATE TABLE `pcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pcategories`
--

INSERT INTO `pcategories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, 'House', '2020-12-01 05:03:00', '2020-12-01 05:04:41'),
(4, 'Bridge', '2020-12-01 05:05:08', '2020-12-01 05:05:15'),
(5, 'Stadium', '2020-12-01 05:05:37', '2020-12-01 05:05:37'),
(6, 'Pool', '2020-12-01 05:05:51', '2020-12-01 05:05:51'),
(10, 'Mosque', '2020-12-01 05:32:18', '2020-12-01 05:32:42');

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pcategory_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `pcategory_id`, `name`, `slug`, `cover`, `client`, `date`, `desc`, `created_at`, `updated_at`) VALUES
(1, 3, 'Contoh Portfolio', 'contoh-portfolio', 'images/portfolio/yztUKUTQbwxIcZNwhFSNNh6HlqzoTS3SUz2StV4L.png', 'Gudang Garam', '2020-11-29', '<p>dsfsdfsdf</p>', '2020-12-01 05:48:15', '2021-06-16 15:33:36'),
(2, 10, 'Contoh Kedua', 'contoh-kedua', 'images/portfolio/tM1sVGKkD3UhuStfIbzktyJ4nADBxjhicRiQB5Yo.png', 'Djarum', '2020-11-29', '<p>ds sdfsdfsdf</p>', '2020-12-01 05:50:35', '2021-06-16 15:33:24');
INSERT INTO `portfolios` (`id`, `pcategory_id`, `name`, `slug`, `cover`, `client`, `date`, `desc`, `created_at`, `updated_at`) VALUES
(3, 4, 'Contoh Ketiga', 'contoh-ketiga', 'images/portfolio/1IDLEfAkub3eIgC5JDzoMR7bfDY8J8G0ptHRa73v.png', 'Maju Makmur', '2020-11-29', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">Where does it come from?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><img src=\"data:image/jpeg;base64,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\" data-filename=\"portfolio-7.jpg\" style=\"width: 737px;\"><br></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', '2020-12-01 05:59:14', '2021-06-16 15:33:11');
INSERT INTO `portfolios` (`id`, `pcategory_id`, `name`, `slug`, `cover`, `client`, `date`, `desc`, `created_at`, `updated_at`) VALUES
(4, 10, 'Masjid Al Vanjava', 'masjid-al-vanjava', 'images/portfolio/eb7jOXM6IUKfmRkVOosVsbv1MIlm0FizyqhUqmZb.png', 'PT. Jaya Makmur', '2020-11-29', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><br></p>', '2020-12-03 04:24:26', '2021-06-16 15:32:55'),
(5, 5, 'San Siro', 'san-siro', 'images/portfolio/KjwOyHAQ48wON535SUimxfySiO3R85z4BTCChfqq.png', 'AC Milan', '2020-11-01', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><br></p>', '2020-12-03 04:24:57', '2021-06-16 15:32:38'),
(6, 4, 'Suramadu', 'suramadu', 'images/portfolio/Qj6DSH6tflavpWUh4XnfLvhw2W1kMO4mweadf30H.png', 'Suramadu Bridge', '2020-07-28', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><br></p>', '2020-12-03 04:25:33', '2021-06-16 15:32:23'),
(7, 6, 'Atlanta Pool', 'atlanta-pool', 'images/portfolio/FsnXzidVCDGZTFLn9vNYhXJNn6VUtIPvyzcLM6Em.png', 'PT. Atlanta', '2020-07-26', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><br></p>', '2020-12-03 04:26:18', '2021-06-16 15:32:12');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` enum('PUBLISH','DRAFT') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `author_id`, `title`, `slug`, `cover`, `body`, `keyword`, `meta_desc`, `views`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 2, 1, 'Where does it come from?', 'where-does-it-come-from', 'images/blog/mJNhLaFhyWlqyuxx2CMOyGS0NLu3hmAi9AGnOjb4.png', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><br></p>', 'test', 'tips dan trik seputar bla bla', 6, 'PUBLISH', '2020-12-02 03:56:39', '2021-06-16 15:31:29', NULL),
(6, 3, 1, 'What is Lorem Ipsum?', 'what-is-lorem-ipsum', 'images/blog/lYLaFZqfEkNIBx8e9FgLJOE3bQeSiIp4ipKo3wcW.png', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><br></p>', 'tips trik', 'tips dan trik seputar bla bla', 6, 'PUBLISH', '2020-12-02 03:57:09', '2021-06-16 15:31:17', NULL),
(7, 2, 1, 'Why do we use it?', 'why-do-we-use-it', 'images/blog/O5tQtrP4jDQE5MCxFnNFY9OwDPsPGmLEq3e0aIak.png', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><br></p>', 'tips trik', 'tips dan trik seputar bla bla', 1, 'PUBLISH', '2020-12-02 03:57:45', '2021-06-16 15:31:05', NULL),
(8, 2, 1, 'Where can I get some?', 'where-can-i-get-some', 'images/blog/oeflTaE25c3c73nrhHgy7EtWTbExliPjWcUno1EU.png', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><br></p>', 'tips trik', 'informasi seputar bla bla', 23, 'PUBLISH', '2020-12-02 03:58:25', '2021-06-16 15:30:51', NULL),
(9, 3, 1, 'Apakah Lorem Ipsum itu?', 'apakah-lorem-ipsum-itu', 'images/blog/E0UpskL8nHvg5KeTTPWrEfLgqkyUt0chIzauzfj3.png', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-family: Poppins;\">Lorem Ipsum</span></strong><span style=\"color: rgb(0, 0, 0); font-family: Poppins; font-size: 14px; text-align: justify;\">&nbsp;adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebuah kumpulan teks dan mengacaknya untuk menjadi sebuah buku contoh huruf. Ia tidak hanya bertahan selama 5 abad, tapi juga telah beralih ke penataan huruf elektronik, tanpa ada perubahan apapun. Ia mulai dipopulerkan pada tahun 1960 dengan diluncurkannya lembaran-lembaran Letraset yang menggunakan kalimat-kalimat dari Lorem Ipsum, dan seiring munculnya perangkat lunak Desktop Publishing seperti Aldus PageMaker juga memiliki versi Lorem Ipsum.</span></p><p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-family: Poppins;\">Lorem Ipsum</span></strong><span style=\"color: rgb(0, 0, 0); font-family: Poppins; font-size: 14px; text-align: justify;\">&nbsp;adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebuah kumpulan teks dan mengacaknya untuk menjadi sebuah buku contoh huruf. Ia tidak hanya bertahan selama 5 abad, tapi juga telah beralih ke penataan huruf elektronik, tanpa ada perubahan apapun. Ia mulai dipopulerkan pada tahun 1960 dengan diluncurkannya lembaran-lembaran Letraset yang menggunakan kalimat-kalimat dari Lorem Ipsum, dan seiring munculnya perangkat lunak Desktop Publishing seperti Aldus PageMaker juga memiliki versi Lorem Ipsum.</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><br></p>', 'tips trik', 'tips dan trik seputar bla bla', 3, 'PUBLISH', '2020-12-03 04:32:49', '2021-06-16 15:30:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`post_id`, `tag_id`) VALUES
(5, 1),
(5, 3),
(6, 1),
(6, 3),
(7, 4),
(8, 3),
(8, 4),
(9, 1),
(9, 3),
(9, 4);

-- --------------------------------------------------------

--
-- Table structure for table `practica`
--

CREATE TABLE `practica` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `practica` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maquina_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maquina_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maquina_3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maquina_4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `examen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `practica`
--

INSERT INTO `practica` (`id`, `created_at`, `updated_at`, `deleted_at`, `practica`, `codigo`, `maquina_1`, `maquina_2`, `maquina_3`, `maquina_4`, `examen`) VALUES
(1, NULL, NULL, NULL, '3425', '345354', '345', '345', '345', '345', '345');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quote` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `icon`, `title`, `slug`, `quote`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'icofont-building', 'Project Supervisor', 'project-supervisor', 'Let\'s build your dream building with us at now', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0);\"><span style=\"font-family: Poppins;\">Where does it come from?</span></h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><span style=\"font-family: Poppins;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><span style=\"font-family: Poppins;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></p><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0);\"><span style=\"font-family: Poppins;\">Where does it come from?</span></h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><span style=\"font-family: Poppins;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><span style=\"font-family: Poppins;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></p><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px; color: rgb(0, 0, 0);\"><span style=\"font-family: Poppins;\">Where does it come from?</span></h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><span style=\"font-family: Poppins;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><span style=\"font-family: Poppins;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></p>', '2020-12-02 23:43:43', '2020-12-03 01:19:44'),
(3, 'icofont-checked', 'Project Supervisor', 'project-supervisor', 'we will supervise your project to completion', '<p><span style=\"color: rgb(0, 0, 0); font-family: Poppins; font-size: 14px; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: Poppins; font-size: 14px; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: Poppins; font-size: 14px; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><br></p>', '2020-12-02 23:45:49', '2020-12-02 23:49:16'),
(4, 'icofont-institution', 'building a campus', 'building-a-campus', 'Let\'s build your dream building with us at now', '<p><span style=\"color: rgb(0, 0, 0); font-family: Poppins; font-size: 14px; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: Poppins; font-size: 14px; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: Poppins; font-size: 14px; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><br></p>', '2020-12-02 23:55:11', '2020-12-03 01:20:10'),
(5, 'icofont-energy-water', 'electrical installation', 'electrical-installation', 'we will make your surroundings full of electricity', '<p><span style=\"color: rgb(0, 0, 0); font-family: Poppins; font-size: 14px; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: Poppins; font-size: 14px; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: Poppins; font-size: 14px; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><br></p>', '2020-12-03 01:13:03', '2020-12-03 01:13:03'),
(6, 'icofont-fork-lift', 'Lorem ipsum', 'lorem-ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-family: Poppins;\">Lorem Ipsum</span></strong><span style=\"color: rgb(0, 0, 0); font-family: Poppins; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-family: Poppins;\">Lorem Ipsum</span></strong><span style=\"color: rgb(0, 0, 0); font-family: Poppins; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"font-family: Poppins;\">Lorem Ipsum</span></strong><span style=\"color: rgb(0, 0, 0); font-family: Poppins; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><br></p>', '2020-12-03 01:21:41', '2020-12-03 01:21:41'),
(7, 'icofont-engineer', 'its Lorem ipsum', 'its-lorem-ipsum', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '<p><span style=\"color: rgb(0, 0, 0); font-family: Poppins; font-size: 14px; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: Poppins; font-size: 14px; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: Poppins; font-size: 14px; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><br></p>', '2020-12-03 01:22:28', '2020-12-03 01:22:28');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'hehe@gmail.com', '2020-12-03 01:41:47', '2020-12-03 01:41:47'),
(2, 'newuser@mail.test', '2020-12-03 01:43:03', '2020-12-03 01:43:03');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `keyword`, `meta_desc`, `created_at`, `updated_at`) VALUES
(1, 'testing', 'testing', 'test', 'ini test', '2020-12-02 02:55:24', '2020-12-02 02:56:52'),
(3, 'vanjava', 'vanjava', 'test', 'informasi seputar bla bla', '2020-12-02 03:22:19', '2020-12-02 03:22:19'),
(4, 'Genteng', 'genteng', 'jual genteng', 'informasi seputar bla bla', '2020-12-02 03:42:06', '2020-12-02 03:42:06');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `position`, `photo`, `facebook`, `twitter`, `instagram`, `linkedin`, `created_at`, `updated_at`) VALUES
(1, 'Hilmi Hidayat', 'Founder', 'images/team/q2r5PFAs28QblXPMg3ZuNnshH2kiB2gbv5OTBjhY.jpg', NULL, NULL, NULL, NULL, '2020-12-03 01:51:28', '2021-06-16 15:37:09'),
(2, 'Susi Similikiti', 'Product Manager', 'images/team/2c3aDYyTuT17MTyDpCLaYxP8dXiqmnPejidZ509p.jpg', NULL, NULL, NULL, NULL, '2020-12-03 01:52:03', '2021-06-16 15:37:02'),
(3, 'Tukul Lukut', 'Head of Engineer', 'images/team/NIR6PrG47nXN1IrF1vKGfsNBvYTOvcKkIdA5us0h.jpg', NULL, NULL, NULL, NULL, '2020-12-03 01:52:34', '2021-06-16 15:36:53'),
(4, 'Sumi Lakosta', 'Lead of Engineer', 'images/team/x3K1HQZgGpBjaWUVQTXS18t2G4Adut53RQMN9Vi3.jpg', NULL, NULL, NULL, NULL, '2020-12-03 01:53:02', '2021-06-16 15:36:46');

-- --------------------------------------------------------

--
-- Table structure for table `teoria`
--

CREATE TABLE `teoria` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `formacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `examen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teoria`
--

INSERT INTO `teoria` (`id`, `created_at`, `updated_at`, `deleted_at`, `formacion`, `codigo`, `examen`, `fecha`) VALUES
(1, NULL, NULL, NULL, '1asd', 'werasd', '1waasd', '2021-12-08');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('PUBLISH','DRAFT') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `photo`, `name`, `profession`, `desc`, `status`, `created_at`, `updated_at`) VALUES
(1, 'images/testi/Lwzxlo6Bg9OoHsFOgIMiIeiZKoebnw5SVFSzn33N.jpg', 'Hilmi Hidayat', 'QA Engineer', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'PUBLISH', '2020-12-02 22:04:18', '2021-06-16 15:38:07'),
(2, 'images/testi/XK4VvlaUbLH1Go16LyHFaPuEe80sIzdg2DxJFB1I.jpg', 'Ricko Bol', 'Web Programmer', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'PUBLISH', '2020-12-02 22:04:43', '2021-06-16 15:37:59'),
(3, 'images/testi/0xBaP1BjtP7Hh1ViCddECKLxcgqSGpvjwlNeohHk.jpg', 'Moecha', 'Owner', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.', 'PUBLISH', '2020-12-02 22:08:43', '2021-06-16 15:37:47'),
(4, 'images/testi/u2C79IIUYb9sgrWZCO0emHQcoewgje3UTbBeAK28.jpg', 'Yanuar Rahmad', 'Fullstack Developer', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.', 'PUBLISH', '2020-12-02 22:09:07', '2021-06-16 15:37:39');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_de_curso`
--

CREATE TABLE `tipo_de_curso` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `tipo_curso` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tipo_de_curso`
--

INSERT INTO `tipo_de_curso` (`id`, `created_at`, `updated_at`, `deleted_at`, `tipo_curso`, `codigo`) VALUES
(1, NULL, NULL, NULL, 'sgdfsg', '234'),
(2, NULL, NULL, NULL, 'wer', '234');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_maquina`
--

CREATE TABLE `tipo_maquina` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `tipo_maquina` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tipo_maquina`
--

INSERT INTO `tipo_maquina` (`id`, `created_at`, `updated_at`, `deleted_at`, `tipo_maquina`) VALUES
(1, NULL, NULL, NULL, 'dsf'),
(2, NULL, NULL, NULL, 'sdf'),
(3, NULL, NULL, NULL, 'dfg'),
(4, NULL, NULL, NULL, 'dfgdfgd');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `perfil` enum('Administrador','Responsable_de_Formacion','Formador','') COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provincia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo_postal` int(11) NOT NULL,
  `entidad` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `perfil`, `alias`, `apellidos`, `nombre`, `provincia`, `ciudad`, `direccion`, `codigo_postal`, `entidad`, `estado`) VALUES
(1, 'Admin', 'admin@mail.test', NULL, '$2y$10$KbPNjKMIYvyE4DwRnfhWPuHXHBu8tu3jM2rbeCQ6nNMIyax/Gtalm', NULL, '2020-11-30 06:48:26', '2020-11-30 06:48:26', 'Administrador', '', '', '', '', '', '', 0, 1, 0),
(2, 'alwan', 'alwan@gmail.com', '2021-12-09 22:26:44', '$2y$10$WEdPChwYWPt/NazLx0RrDOOTE9UQSKDrdqd.7GZ3D9SBxksxR9tym', NULL, NULL, NULL, 'Responsable_de_Formacion', '', '', '', '', '', '', 0, 2, 0),
(3, 'Hammam', 'Hammam@gmail.com', '2021-12-09 22:26:44', '$2y$10$WEdPChwYWPt/NazLx0RrDOOTE9UQSKDrdqd.7GZ3D9SBxksxR9tym', '9pfuRzOvBj6bFz6zZ3s64HEemzFz0SIPNfRJiZcOzHQULdDDpfcm3WT3ugQa', NULL, '2021-12-16 11:23:02', 'Formador', '', '', '', '', '', '', 0, 2, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asistent`
--
ALTER TABLE `asistent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carnet`
--
ALTER TABLE `carnet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entidades_formadoreas`
--
ALTER TABLE `entidades_formadoreas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examen`
--
ALTER TABLE `examen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `formadores`
--
ALTER TABLE `formadores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `formadores_entidad_foreign` (`entidad`);

--
-- Indexes for table `generals`
--
ALTER TABLE `generals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operadores`
--
ALTER TABLE `operadores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pcategories`
--
ALTER TABLE `pcategories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pcategories_name_unique` (`name`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`post_id`,`tag_id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `practica`
--
ALTER TABLE `practica`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teoria`
--
ALTER TABLE `teoria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipo_de_curso`
--
ALTER TABLE `tipo_de_curso`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipo_maquina`
--
ALTER TABLE `tipo_maquina`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `asistent`
--
ALTER TABLE `asistent`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `carnet`
--
ALTER TABLE `carnet`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `entidades_formadoreas`
--
ALTER TABLE `entidades_formadoreas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `examen`
--
ALTER TABLE `examen`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `formadores`
--
ALTER TABLE `formadores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `generals`
--
ALTER TABLE `generals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `horario`
--
ALTER TABLE `horario`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `operadores`
--
ALTER TABLE `operadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pcategories`
--
ALTER TABLE `pcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `practica`
--
ALTER TABLE `practica`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teoria`
--
ALTER TABLE `teoria`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tipo_de_curso`
--
ALTER TABLE `tipo_de_curso`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tipo_maquina`
--
ALTER TABLE `tipo_maquina`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `formadores`
--
ALTER TABLE `formadores`
  ADD CONSTRAINT `formadores_entidad_foreign` FOREIGN KEY (`entidad`) REFERENCES `entidades_formadoreas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
