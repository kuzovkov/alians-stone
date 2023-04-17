-- phpMyAdmin SQL Dump
-- version 3.5.7
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Дек 14 2014 г., 13:59
-- Версия сервера: 5.6.15
-- Версия PHP: 5.3.28

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `alians_stone`
--

-- --------------------------------------------------------

--
-- Структура таблицы `arris`
--

DROP TABLE IF EXISTS `arris`;
CREATE TABLE IF NOT EXISTS `arris` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `gallery1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gallery2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gallery3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `text1` longtext COLLATE utf8_unicode_ci,
  `text2` longtext COLLATE utf8_unicode_ci,
  `text3` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `arris`
--

INSERT INTO `arris` (`id`, `title`, `content`, `gallery1`, `gallery2`, `gallery3`, `img`, `created_at`, `updated_at`, `text1`, `text2`, `text3`) VALUES
(4, 'кромки натурального камня', '<p>Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст</p>', 'galereya-kromok-nat-kamnya', NULL, NULL, '1b219b2d34a0b7d8c4461ffa99e60633.jpg', '2014-08-31 19:37:27', '2014-08-31 19:57:48', 'Виды кромок натурального камня', NULL, NULL),
(5, 'Кромки Искусственнго камня', '<p>Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст</p>', 'galereya-kromok-issk-kamnya', NULL, NULL, 'e10df950d6a9b68d1de2ad0c42530966.png', '2014-08-31 19:37:55', '2014-08-31 19:51:10', 'Виды кромок искусственного камня', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `html_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `html_title`, `meta_keywords`, `meta_description`, `type`, `slug`, `created_at`, `updated_at`, `img`) VALUES
(6, 'Статья 1', '<p>Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст</p>', NULL, NULL, NULL, 'SHOW', 'statya-1', '2014-08-31 21:47:44', NULL, '842fd14939a621373ad2c3f265c36360.jpg'),
(7, 'Статья 3', '<p>Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст</p>', NULL, NULL, NULL, 'SHOW', 'statya-3', '2014-08-31 21:48:04', NULL, '8cd98cae2b120a2c5ed317243b30d24f.jpg'),
(8, 'Стаья 3', '<p>Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст</p>', NULL, NULL, NULL, 'SHOW', 'staya-3', '2014-08-31 21:48:20', NULL, 'b99af90d56c6bf6253d7122d8d6e7853.JPG');

-- --------------------------------------------------------

--
-- Структура таблицы `brand`
--

DROP TABLE IF EXISTS `brand`;
CREATE TABLE IF NOT EXISTS `brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `gallery1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gallery2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gallery3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text1` longtext COLLATE utf8_unicode_ci,
  `text2` longtext COLLATE utf8_unicode_ci,
  `text3` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `brand`
--

INSERT INTO `brand` (`id`, `title`, `content`, `brand`, `img`, `created_at`, `updated_at`, `gallery1`, `gallery2`, `gallery3`, `text1`, `text2`, `text3`) VALUES
(6, 'Corian', '<p>Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст</p>', 'orian', '0d8dbd1331be3979e4763a9b93c448c7.png', '2014-08-31 21:59:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Staron', '<p>Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст</p>', 'staron', 'b04c1af2c931b6ccf78a1e72dbafd0f3.png', '2014-08-31 21:59:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Montelli', '<p>Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст</p>', 'montelli', '30e1dcbf4cd03150af2dad70c4289493.png', '2014-08-31 22:00:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Dupont', '<p>Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст</p>', 'dupont', '8b6ecbf7f3658c773e483987c92fc10e.png', '2014-08-31 22:00:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `gallery`
--

DROP TABLE IF EXISTS `gallery`;
CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=42 ;

--
-- Дамп данных таблицы `gallery`
--

INSERT INTO `gallery` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(4, 'Галерея кварцевого агломерата №1', 'galereya-kvarcha-1', NULL, '2014-08-25 12:18:08', '2014-08-31 22:29:59'),
(5, 'Галерея кварцевого агломерата №2', 'galereya-kvarcha-2', NULL, '2014-08-25 12:18:21', '2014-08-31 22:30:25'),
(6, 'Галерея кварцевого агломерата  №3', 'galereya-kvarcha-3', NULL, '2014-08-25 12:18:36', '2014-08-31 22:30:57'),
(10, 'Галерея мрамора №1', 'galereya-mramora-1', NULL, '2014-08-25 12:19:58', NULL),
(11, 'Галерея мрамора №2', 'galereya-mramora-2', NULL, '2014-08-25 12:20:11', NULL),
(12, 'Галерея мрамора №3', 'galereya-mramora-3', NULL, '2014-08-25 12:20:21', NULL),
(13, 'Галерея акрилового камня №1', 'galereya-akrilovogo-kamnya-1', NULL, '2014-08-25 12:20:55', NULL),
(14, 'Галерея акрилового камня №2', 'galereya-akrilovogo-kamnya-2', NULL, '2014-08-25 12:21:02', NULL),
(15, 'Галерея акрилового камня №3', 'galereya-akrilovogo-kamnya-3', NULL, '2014-08-25 12:21:10', NULL),
(16, 'Галерея столешниц на кухню', 'galereya-stoleshnich-na-kuhnyu', NULL, '2014-08-25 12:21:35', NULL),
(17, 'Галерея барных стоек и ресепшн', 'galereya-polov', NULL, '2014-08-25 12:21:55', '2014-08-31 20:29:45'),
(18, 'Галерея Эстерьера', 'galereya-esterera', NULL, '2014-08-25 12:22:31', NULL),
(19, 'Галерея подоконников', 'galereya-podokonnikov', NULL, '2014-08-25 12:23:10', NULL),
(20, 'Галерея лестниц', 'galereya-lestnich', NULL, '2014-08-25 12:23:20', NULL),
(22, 'галерея кромок нат. камня', 'galereya-kromok-nat-kamnya', 'галерея кромок нат. камня', '2014-08-31 19:41:54', NULL),
(23, 'галерея кромок исск. камня', 'galereya-kromok-issk-kamnya', 'галерея кромок исск. камня', '2014-08-31 19:42:17', NULL),
(24, 'Галерея моек', 'galereya-moek', NULL, '2014-08-31 20:27:19', NULL),
(25, 'Галерея каминов', 'galereya-kaminov', NULL, '2014-08-31 20:30:25', NULL),
(26, 'Облицовка цоколя', 'oblichovka-chokolya', NULL, '2014-08-31 20:30:43', NULL),
(27, 'Входные группы', 'vhodnie-gruppi', NULL, '2014-08-31 20:30:53', NULL),
(28, 'Плитка', 'plitka', NULL, '2014-08-31 20:31:01', NULL),
(29, 'Сувениры', 'suveniri', NULL, '2014-08-31 20:31:11', NULL),
(30, 'Меню', 'menyu', 'Галерея главного меню', '2014-08-31 21:42:29', NULL),
(31, 'Галерея гранита №1', 'galereya-granita-1', NULL, '2014-08-31 22:31:45', NULL),
(32, 'Галерея гранита № 2', 'galereya-granita--2', NULL, '2014-08-31 22:31:58', NULL),
(33, 'Галерея гранита № 3', 'galereya-granita--3', NULL, '2014-08-31 22:32:09', NULL),
(34, 'Галерея травертина №1', 'galereya-travertina-1', NULL, '2014-08-31 22:32:26', NULL),
(35, 'Галерея травертина №2', 'galereya-travertina-2', NULL, '2014-08-31 22:32:42', NULL),
(36, 'Галерея травертина №3', 'galereya-travertina-3', NULL, '2014-08-31 22:33:03', NULL),
(37, 'Галерея оникса №1', 'galereya-oniksa-1', NULL, '2014-08-31 22:33:27', NULL),
(38, 'Галерея оникса №2', 'galereya-oniksa-2', NULL, '2014-08-31 22:33:36', NULL),
(39, 'Галерея оникса №3', 'galereya-oniksa-3', NULL, '2014-08-31 22:33:49', NULL),
(40, 'new2', 'ne2', NULL, '2014-08-31 23:58:54', '2014-08-31 23:59:50'),
(41, 'new3', 'ne3', NULL, '2014-09-01 00:00:35', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE IF NOT EXISTS `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=165 ;

--
-- Дамп данных таблицы `image`
--

INSERT INTO `image` (`id`, `title`, `description`, `img`, `created_at`, `updated_at`, `gallery`) VALUES
(26, 'Кромка А', 'Кромка А', '614ca66acd2f72fdb2946250eacd9bfd.png', '2014-08-31 19:44:04', NULL, 'galereya-kromok-nat-kamnya'),
(27, 'Кромка В', 'Кромка В', '3f78b0c76525d37e4017acef994a3764.png', '2014-08-31 19:44:29', NULL, 'galereya-kromok-nat-kamnya'),
(28, 'Кромка С', 'Кромка С', 'ed38213c89dd1856c3e03d450ee27cd7.png', '2014-08-31 19:45:01', NULL, 'galereya-kromok-nat-kamnya'),
(29, 'Кромка L', 'Кромка L', 'ba43e4c55769ef3d5a2b1e149bbe881e.png', '2014-08-31 19:45:31', NULL, 'galereya-kromok-nat-kamnya'),
(30, 'Кромка H', NULL, '72c5ab55f41c69e43b75e3ba342f5e0e.png', '2014-08-31 19:46:10', NULL, 'galereya-kromok-nat-kamnya'),
(31, 'Кромка V', NULL, '45c50a669e5a608ba808de1fd7d80214.png', '2014-08-31 19:46:35', NULL, 'galereya-kromok-nat-kamnya'),
(32, 'Кромка Q', NULL, '1f82d3c846eb5d54442411d6b94fe137.png', '2014-08-31 19:47:05', NULL, 'galereya-kromok-nat-kamnya'),
(33, 'Кромка 1', NULL, '9400eef0a33d86d79fa2ca73c25077ba.png', '2014-08-31 19:47:37', NULL, 'galereya-kromok-issk-kamnya'),
(34, 'Кромка 2', NULL, '5968d5c2991d0f6a4926d6fa09f1c154.png', '2014-08-31 19:47:52', NULL, 'galereya-kromok-issk-kamnya'),
(35, 'Кромка 3', NULL, '1b19b15ab033567881e4043f28526f6e.png', '2014-08-31 19:48:08', NULL, 'galereya-kromok-issk-kamnya'),
(36, 'Кромка 4', NULL, 'd42f66f8650df19675cd582303b17884.png', '2014-08-31 19:48:33', NULL, 'galereya-kromok-issk-kamnya'),
(37, 'Кромка 5', NULL, '8a86cc1a13968f4186b26946729787d1.png', '2014-08-31 19:48:56', NULL, 'galereya-kromok-issk-kamnya'),
(38, 'Кромка 6', NULL, '7bf3eace2794cf8b4e51c0635e7c9689.png', '2014-08-31 19:49:18', NULL, 'galereya-kromok-issk-kamnya'),
(39, 'Кромка 7', NULL, 'b6836cc684c0ba3848ce0ba68e7b7701.png', '2014-08-31 19:49:41', NULL, 'galereya-kromok-issk-kamnya'),
(40, 'Кромка 8', NULL, '9f3aab99057f759f75bbb9954ab92c25.png', '2014-08-31 19:49:57', NULL, 'galereya-kromok-issk-kamnya'),
(41, 'сувенир1', NULL, '59876cb7a58639313d262d0336f44af2.JPG', '2014-08-31 20:38:35', NULL, 'suveniri'),
(42, 'сувенир2', NULL, '6f4000c145ee126aead952664c31b61a.JPG', '2014-08-31 20:38:52', NULL, 'suveniri'),
(43, 'сувенир3', NULL, 'ed268e351743be45d9b98ecc236e3cfd.JPG', '2014-08-31 20:39:09', NULL, 'suveniri'),
(44, 'камин1', NULL, '0bf52b057765fc312eb143c9d9218e20.jpg', '2014-08-31 20:39:38', NULL, 'galereya-kaminov'),
(45, 'камин2', NULL, 'b199b92b3890f1044bf552813f604dd6.jpg', '2014-08-31 20:39:55', NULL, 'galereya-kaminov'),
(46, 'камин3', NULL, '74a0b68e8dc719460a6f99725117c9e8.jpg', '2014-08-31 20:40:14', NULL, 'galereya-kaminov'),
(47, 'камин4', NULL, '2e0f02457956dc7af38dbbd9854a952a.jpg', '2014-08-31 20:40:44', NULL, 'galereya-kaminov'),
(48, 'камин5', NULL, '373d8f31e129602a0e1f9e2afd27f2b4.jpg', '2014-08-31 20:41:03', NULL, 'galereya-kaminov'),
(49, 'камин6', NULL, '44577ad58f37bc276b2e6d5565ad8e8c.jpg', '2014-08-31 20:41:21', NULL, 'galereya-kaminov'),
(50, 'кмин7', NULL, 'f9b13d946c630fc887a07ea3785bab20.jpg', '2014-08-31 20:41:38', NULL, 'galereya-kaminov'),
(51, 'стол1', NULL, '1c289f7e793ac8c1dee2c60ec32fb906.jpg', '2014-08-31 20:42:16', NULL, 'galereya-stoleshnich-na-kuhnyu'),
(52, 'стол2', NULL, 'b5cbed0f7f2d5c481113fe45c09eea01.jpg', '2014-08-31 20:42:32', NULL, 'galereya-stoleshnich-na-kuhnyu'),
(53, 'стол3', NULL, 'f2cb83ecfa87c844dc207f16e3a291e5.jpg', '2014-08-31 20:42:48', NULL, 'galereya-stoleshnich-na-kuhnyu'),
(54, 'стол4', NULL, '1732f47bd33d4b14e7ab7401a2483a8a.jpg', '2014-08-31 20:43:05', NULL, 'galereya-stoleshnich-na-kuhnyu'),
(55, 'стол5', NULL, '19f1d3ccb50b930c7b07d8561c4cd075.jpg', '2014-08-31 20:43:58', NULL, 'galereya-stoleshnich-na-kuhnyu'),
(56, 'стол6', NULL, 'ef56e4f6a45b05804f9e9f875aaf80fa.jpg', '2014-08-31 20:44:25', NULL, 'galereya-stoleshnich-na-kuhnyu'),
(57, 'стол7', NULL, 'df27bc177926aff18d007adb7e7a267f.gif', '2014-08-31 20:44:47', NULL, 'galereya-stoleshnich-na-kuhnyu'),
(58, 'мойка1', NULL, 'ad9ce929199727db1c87b5ba97a95096.jpg', '2014-08-31 20:45:34', NULL, ''),
(59, 'мойка2', NULL, '40d368c39639b84a5b1f0c1dc57b57da.JPG', '2014-08-31 20:46:13', NULL, 'galereya-moek'),
(60, 'мойка2', NULL, '15cf2a0e433531c4a5bbc207f5cfbc98.JPG', '2014-08-31 20:46:15', NULL, 'galereya-moek'),
(61, 'мойка3', NULL, 'be270b7aea7415726adad831d5eed721.JPG', '2014-08-31 20:46:41', NULL, 'galereya-moek'),
(62, 'мойка4', NULL, 'f06ae52cac0ae4ea6add30d06e0cd85e.JPG', '2014-08-31 20:47:08', NULL, 'galereya-moek'),
(63, 'подокон1', NULL, 'a1b5839608f62b5fe5b0488bfeb0ba96.jpg', '2014-08-31 20:47:36', NULL, 'galereya-podokonnikov'),
(64, 'подокон2', NULL, '3756ce14c5d34480a2e9f4540121989f.jpg', '2014-08-31 20:47:49', NULL, 'galereya-podokonnikov'),
(65, 'подокон3', NULL, '5793fbf1dc65b62bfffe517a0f3761e0.jpg', '2014-08-31 20:48:03', NULL, 'galereya-podokonnikov'),
(66, 'подокон4', NULL, 'c9ea448a0500e68ba5a4e3ba8eab29e4.jpg', '2014-08-31 20:48:18', NULL, 'galereya-podokonnikov'),
(67, 'подокон5', NULL, '7782fc51d56ca5b0410d55c4c9e507eb.jpg', '2014-08-31 20:48:39', NULL, 'galereya-podokonnikov'),
(68, 'подокон6', NULL, 'd9141fd03734187c5b335a488d2613e9.jpg', '2014-08-31 20:48:54', NULL, 'galereya-podokonnikov'),
(69, 'бар1', NULL, 'f488db7d60029db0bf164eec7a1c52cf.jpg', '2014-08-31 20:49:37', NULL, 'galereya-polov'),
(70, 'бар2', NULL, '6cc144f0acb94b129d98e1c2aa4b7e8c.JPG', '2014-08-31 20:49:55', NULL, 'galereya-polov'),
(71, 'бар3', NULL, 'bcc6bff99c874c42800977bd1f59a690.jpg', '2014-08-31 20:50:13', NULL, 'galereya-polov'),
(72, 'бар4', NULL, '9a7e445f3af4c51a9d0d41818f5147d9.jpg', '2014-08-31 20:50:27', NULL, 'galereya-polov'),
(73, 'бар5', NULL, 'c897e18026bea37756cc34eabb7f2177.jpg', '2014-08-31 20:50:40', NULL, 'galereya-polov'),
(74, 'бар6', NULL, '2912c2063e47957d33a41cf0e2459948.jpg', '2014-08-31 20:50:53', NULL, 'galereya-polov'),
(75, 'облиц1', NULL, 'ae3a14774327abe625b1a2994075fe19.JPG', '2014-08-31 20:51:22', NULL, 'oblichovka-chokolya'),
(76, 'облиц2', NULL, '244e8af327208a53d84759e86ab3f557.JPG', '2014-08-31 20:51:35', NULL, 'oblichovka-chokolya'),
(77, 'облиц3', NULL, '4959369dbac5e9aa42f8b34414b48306.JPG', '2014-08-31 20:51:53', NULL, 'oblichovka-chokolya'),
(78, 'облиц4', NULL, 'a8788e3b744fe858841f9ff52fb17e28.JPG', '2014-08-31 20:52:10', NULL, 'oblichovka-chokolya'),
(79, 'облиц5', NULL, '878272bdc7807ab627f968427c6f074f.JPG', '2014-08-31 20:52:30', NULL, 'oblichovka-chokolya'),
(80, 'вход1', NULL, '265f046f6f6731a240c7fd693d0f8809.jpg', '2014-08-31 20:53:01', NULL, 'vhodnie-gruppi'),
(81, 'вход2', NULL, '6a946476334c6a0cfd5fb658cc93d667.jpg', '2014-08-31 20:53:26', NULL, 'vhodnie-gruppi'),
(82, 'вход3', NULL, '3770a03c0938686a974f87c280aa79fd.jpg', '2014-08-31 20:53:52', NULL, 'vhodnie-gruppi'),
(83, 'вход4', NULL, '4607d4c1ee19ef000a27fb7189791160.jpg', '2014-08-31 20:54:10', NULL, 'vhodnie-gruppi'),
(84, 'вход5', NULL, '427fb51bf075a557c943bbd169bcfbfc.jpg', '2014-08-31 20:54:38', NULL, 'vhodnie-gruppi'),
(85, 'плит1', NULL, '995275768810f1e2ff5c63f759e0fed2.jpg', '2014-08-31 20:55:01', NULL, 'plitka'),
(86, 'плит2', NULL, 'c479c9096df6141b5e27dbb119a5fa15.jpg', '2014-08-31 20:55:30', NULL, 'plitka'),
(87, 'плит3', NULL, '57261f0457b2ec54c5028563db85b7aa.jpg', '2014-08-31 20:55:56', NULL, 'plitka'),
(88, 'плит4', NULL, '6a5f0c366a43a6d2ec45f104f110e85d.jpg', '2014-08-31 20:56:24', NULL, 'plitka'),
(89, 'плит5', NULL, '281309150352485fdba1df8960d98d30.jpg', '2014-08-31 20:56:55', NULL, 'plitka'),
(90, 'photogal', 'Картинка в меню фотогалерея', '7aa97965f06b54994a545a940a118a84.jpg', '2014-08-31 21:33:36', '2014-08-31 21:44:10', 'menyu'),
(91, 'articles', 'Картинка в меню статьи', '0e5f59f8437662d36b43035730c6cacf.JPG', '2014-08-31 21:34:25', '2014-08-31 21:43:59', 'menyu'),
(92, 'order', 'картинка в меню оформить заказ', '570574abbb2ea75309c3c2fc701fc7c3.jpg', '2014-08-31 21:35:01', '2014-08-31 21:43:48', 'menyu'),
(93, 'гранит1', NULL, '1dc519d33ac7db21bbaaead2fbab5631.jpg', '2014-08-31 22:41:42', '2014-08-31 22:42:17', 'galereya-granita-1'),
(94, 'гранит2', NULL, '7975598d3cbf36e725dcb82e5c235950.jpg', '2014-08-31 22:42:39', NULL, 'galereya-granita--2'),
(95, 'гранит3', NULL, 'a585586c86bc4bd839c4738d6b7ed80c.jpg', '2014-08-31 22:43:03', NULL, 'galereya-granita-1'),
(96, 'гранит4', NULL, '38f0ec005c075da7fac3cc93e5c1ee6a.jpg', '2014-08-31 22:43:19', NULL, 'galereya-granita--2'),
(97, 'гранит5', NULL, '75b798cc387785e910f718ffe432666c.jpg', '2014-08-31 22:43:39', NULL, 'galereya-granita--2'),
(98, 'гранит5', NULL, 'cf74e0dbf1ea8982d02d4493c74afd84.jpg', '2014-08-31 22:44:00', NULL, 'galereya-granita--2'),
(99, 'гранит6', NULL, '6135ac6c02f2accb3d4bf160a1b0fb1c.jpg', '2014-08-31 22:44:20', NULL, 'galereya-granita--3'),
(100, 'гранит7', NULL, '784eabca4502250d86fbcb7216b2ebed.jpg', '2014-08-31 22:44:34', NULL, 'galereya-granita--3'),
(101, 'гранит8', NULL, 'c94923fd96c95194fc2290aa08204c04.jpg', '2014-08-31 22:44:50', NULL, 'galereya-granita--3'),
(102, 'гранит9', NULL, '51dfb513a8a15237610ce417c0065787.jpg', '2014-08-31 22:45:10', NULL, 'galereya-granita--3'),
(103, 'кварц.агломерат1', NULL, 'b871b511a9311fb576312c804e961b76.gif', '2014-08-31 22:48:23', NULL, 'galereya-kvarcha-1'),
(104, 'кварц.агломерат1', NULL, '4b7f30ffa8e8f0bcd552fae40a905175.gif', '2014-08-31 22:48:36', NULL, 'galereya-kvarcha-1'),
(105, 'кварц.агломерат2', NULL, 'ef63a15c8e4290229da71aacd84cec9b.gif', '2014-08-31 22:48:50', NULL, 'galereya-kvarcha-1'),
(106, 'кварц.агломерат4', NULL, 'fe5169407cef65107c14ee6dd017351a.gif', '2014-08-31 22:49:06', NULL, 'galereya-kvarcha-1'),
(107, 'кварц.агломерат5', NULL, '876560ae5a2ded2d1edbf16b64016161.gif', '2014-08-31 22:49:22', NULL, 'galereya-kvarcha-2'),
(108, 'кварц.агломерат6', NULL, 'ae8b08a7d18f0e9c270579b5f1490d52.gif', '2014-08-31 22:49:34', NULL, 'galereya-kvarcha-2'),
(109, 'кварц.агломерат7', NULL, '01c70aa1136fde96a073b8b0347f3de1.gif', '2014-08-31 22:49:49', NULL, 'galereya-kvarcha-2'),
(110, 'кварц.агломерат8', NULL, '90912902fc9ade5cbf6fff528a4031e5.gif', '2014-08-31 22:50:01', NULL, 'galereya-kvarcha-3'),
(111, 'кварц.агломерат9', NULL, 'e9f470986219cf0cee7d66fda8a31a93.gif', '2014-08-31 22:50:17', NULL, 'galereya-kvarcha-3'),
(112, 'кварц.агломерат10', NULL, '955270c83657395254f142222836499e.gif', '2014-08-31 22:50:30', NULL, 'galereya-kvarcha-3'),
(113, 'кварц.агломерат11', NULL, '3816bcebafe62b473795215843bce97b.gif', '2014-08-31 22:50:45', NULL, 'galereya-kvarcha-3'),
(114, 'кварц.агломерат12', NULL, '665b058e8ddc24f75dbecad0e32a0637.gif', '2014-08-31 22:51:01', NULL, 'galereya-kvarcha-3'),
(115, 'Мрамор1', NULL, 'e504a67bb64ad5234d1215a95db6049e.JPG', '2014-08-31 22:51:38', NULL, 'galereya-mramora-1'),
(116, 'Мрамор2', NULL, '3ad1d2d1adedf07e35f37c637df7d510.jpg', '2014-08-31 22:51:53', NULL, 'galereya-mramora-1'),
(117, 'Мрамор1', NULL, 'b012dfcbbbf3ecd9b89a0d0e14f929c7.jpg', '2014-08-31 22:52:18', NULL, 'galereya-mramora-1'),
(118, 'Мрамор3', NULL, '1d28fb1df7548d0889c48384e47c1c5f.jpg', '2014-08-31 22:52:32', NULL, 'galereya-mramora-1'),
(119, 'Мрамор4', NULL, '8c4ad4909e9c34f5777aec3c775ef439.jpg', '2014-08-31 22:52:46', NULL, 'galereya-mramora-2'),
(120, 'Мрамор5', NULL, 'd9b40f2f160fcc75e6505804508b0c5b.jpg', '2014-08-31 22:53:11', NULL, 'galereya-mramora-2'),
(121, 'Мрамор6', NULL, '01921ffe5e552ef82f6796b6df9f008a.JPG', '2014-08-31 22:53:24', NULL, 'galereya-kvarcha-2'),
(122, 'Мрамор7', NULL, '83467dbea88eb00c2467468e1c068137.jpg', '2014-08-31 22:53:38', NULL, 'galereya-mramora-2'),
(123, 'Мрамор8', NULL, 'bfea589e81a78ed8530137a0d4cf5b2c.jpg', '2014-08-31 22:53:53', NULL, 'galereya-mramora-3'),
(124, 'Мрамор9', NULL, '09ac72d48cbf34757f43f32eff034350.jpg', '2014-08-31 22:54:07', NULL, 'galereya-mramora-3'),
(125, 'Мрамор10', NULL, '2ce9cc4fef7dc9daed3482973f80fe1a.JPG', '2014-08-31 22:54:20', NULL, 'galereya-mramora-3'),
(126, 'Мрамор11', NULL, 'bee3d2285a426845941cc3a4194d272d.jpg', '2014-08-31 22:54:32', NULL, 'galereya-mramora-3'),
(127, 'Мрамор12', NULL, '9a71eb014a65b850ecc964ffb0696a47.jpeg', '2014-08-31 22:54:45', NULL, 'galereya-mramora-3'),
(128, 'акриловый камень1', NULL, '041891376e1f1ecb1748d361a868774b.jpg', '2014-08-31 22:55:20', NULL, 'galereya-akrilovogo-kamnya-1'),
(129, 'Акриловый камень2', NULL, '03c3f55b48e4b939baab8ba797da94be.jpg', '2014-08-31 22:55:48', NULL, 'galereya-akrilovogo-kamnya-1'),
(130, 'Акриловый камень3', NULL, 'dcd8540a7211602840a93453d8a4ba92.jpg', '2014-08-31 22:56:02', NULL, 'galereya-akrilovogo-kamnya-1'),
(131, 'Акриловый камень4', NULL, '12cd9b2eecb98cd66ca867c70152b2dd.jpg', '2014-08-31 22:56:16', NULL, 'galereya-akrilovogo-kamnya-1'),
(132, 'Акриловый камень5', NULL, 'a54e0ba338d02e0984a0af1fce450d6c.jpg', '2014-08-31 22:56:29', NULL, 'galereya-akrilovogo-kamnya-2'),
(133, 'Акриловый камень2', NULL, 'bd03d4b550af9a653dd86f2bbf7ac087.jpg', '2014-08-31 22:56:41', NULL, 'galereya-akrilovogo-kamnya-2'),
(134, 'Акриловый камень7', NULL, '41e5445f291f86e73935bcdc9d1c748c.jpg', '2014-08-31 22:56:55', NULL, 'galereya-akrilovogo-kamnya-2'),
(135, 'Акриловый камень8', NULL, '094f64291ebb6dfb1519809347756804.jpg', '2014-08-31 22:57:10', NULL, 'galereya-akrilovogo-kamnya-2'),
(136, 'Акриловый камень8', NULL, '3772c4ff6765c80c7553004ca27a1a24.jpg', '2014-08-31 22:57:26', NULL, 'galereya-akrilovogo-kamnya-2'),
(137, 'Акриловый камень9', NULL, '594c4babc91d25846c3082c396a4f4ca.jpg', '2014-08-31 22:57:40', NULL, 'galereya-akrilovogo-kamnya-3'),
(138, 'Акриловый камень10', NULL, '3ddd72f31c2c01726cab66d7fe98e676.jpg', '2014-08-31 22:57:55', NULL, 'galereya-akrilovogo-kamnya-3'),
(139, 'Акриловый камень11', NULL, '89d315807afee1941434f19915099382.jpg', '2014-08-31 22:58:09', NULL, 'galereya-akrilovogo-kamnya-3'),
(140, 'Акриловый камень12', NULL, 'd0a7d73e7c5c54cdc71518cf1039d4a1.jpg', '2014-08-31 22:58:25', NULL, 'galereya-akrilovogo-kamnya-3'),
(141, 'Травертин1', NULL, 'fc5281464ce3ec8998895899b017ee26.gif', '2014-08-31 22:59:53', NULL, 'galereya-travertina-1'),
(142, 'Травертин2', NULL, 'e28df31a54c9641ef2dc0669d543be8c.gif', '2014-08-31 23:00:09', NULL, 'galereya-travertina-1'),
(143, 'Травертин3', NULL, '7d5036613ee0ef399ac166b553ff9bcc.gif', '2014-08-31 23:00:26', NULL, 'galereya-travertina-2'),
(144, 'Травертин4', NULL, '158bdf409e4ca15a086722151d13988f.jpg', '2014-08-31 23:00:44', NULL, 'galereya-travertina-1'),
(145, 'Травертин6', NULL, '241d57e7fc0a94675c32996dd93ac4a4.jpg', '2014-08-31 23:01:01', NULL, 'galereya-travertina-2'),
(146, 'Травертин7', NULL, '4f5fc236aeaf16e10943a71911b5e36a.gif', '2014-08-31 23:01:14', NULL, 'galereya-travertina-2'),
(147, 'Травертин1', NULL, 'dc177ed6630bf281810168e14698d4f5.gif', '2014-08-31 23:01:35', NULL, 'galereya-travertina-2'),
(148, 'Травертин8', NULL, 'f0d42888d644e390a8ca49f891570729.gif', '2014-08-31 23:01:55', NULL, 'galereya-travertina-3'),
(149, 'Травертин9', NULL, '749b0255b822ff51e22a897bf13a6b3f.gif', '2014-08-31 23:02:11', NULL, 'galereya-travertina-3'),
(150, 'Травертин10', NULL, 'bf7163e58e87406a711bdb812daffa75.gif', '2014-08-31 23:02:25', NULL, 'galereya-travertina-3'),
(151, 'Травертин11', NULL, '4033c6d986865bee99c0d1d62e31bb25.gif', '2014-08-31 23:02:40', NULL, 'galereya-travertina-3'),
(152, 'Травертин12', NULL, '52a284cc434ffd45ea2ad5629aa4c5dd.jpg', '2014-08-31 23:02:59', NULL, 'galereya-travertina-3'),
(153, 'Оникс1', NULL, 'c82243879edb66fa61c35a96236fddf0.jpg', '2014-08-31 23:03:24', NULL, 'galereya-oniksa-1'),
(154, 'Оникс2', NULL, 'e772b8566430155126cfe2647d92c2a3.jpg', '2014-08-31 23:03:40', NULL, 'galereya-oniksa-1'),
(155, 'Оникс3', NULL, '20bd604af9934d269eb4193f96e9689c.gif', '2014-08-31 23:03:54', NULL, 'galereya-oniksa-1'),
(156, 'Оникс4', NULL, '1d3962e6ec1b3bfcef9ae0d08563fc85.jpg', '2014-08-31 23:04:10', NULL, 'galereya-oniksa-1'),
(157, 'Оникс5', NULL, '7783ccef43f76edfa0bf652068889afb.gif', '2014-08-31 23:04:24', NULL, 'galereya-oniksa-2'),
(158, 'Оникс6', NULL, 'd0077627b8a557d3e358583d9fe475c2.gif', '2014-08-31 23:04:50', NULL, 'galereya-oniksa-2'),
(159, 'Оникс7', NULL, 'b4b68acf35dbf86ab90af675f2f9333b.gif', '2014-08-31 23:05:10', NULL, 'galereya-oniksa-3'),
(160, 'Оникс8', NULL, '6f5edb41b96ee4f181f4eb6d7857feac.gif', '2014-08-31 23:05:24', NULL, 'galereya-oniksa-3'),
(161, 'Оникс9', NULL, '307748ad7161e58ed9afd03a2ccd49f7.gif', '2014-08-31 23:05:39', NULL, 'galereya-oniksa-3'),
(162, 'Оникс10', NULL, '6e912fd43a29c7cc09a2b5d39a9ea1fe.jpg', '2014-08-31 23:05:55', NULL, 'galereya-oniksa-3'),
(163, 'logo_top', 'Верхний логотип', 'c82fcb32d44dc5caf33a255a29b155af.png', '2014-12-12 17:11:27', NULL, ''),
(164, 'logo_bottom', 'Нижний логотип', 'e3aabc907c815b83376d2a50bbca0e3b.png', '2014-12-12 17:12:09', NULL, '');

-- --------------------------------------------------------

--
-- Структура таблицы `material`
--

DROP TABLE IF EXISTS `material`;
CREATE TABLE IF NOT EXISTS `material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `gallery1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gallery2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gallery3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text1` longtext COLLATE utf8_unicode_ci,
  `text2` longtext COLLATE utf8_unicode_ci,
  `text3` longtext COLLATE utf8_unicode_ci,
  `showmenu` tinyint(1) DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=29 ;

--
-- Дамп данных таблицы `material`
--

INSERT INTO `material` (`id`, `title`, `content`, `img`, `created_at`, `updated_at`, `gallery1`, `gallery2`, `gallery3`, `brand`, `slug`, `text1`, `text2`, `text3`, `showmenu`, `category`) VALUES
(5, 'КВАРЦЕВЫЙ АГЛОМЕРАТ', '<p>Кварцевый агломерат &mdash; относительно новый декоративно-облицовочный материал. Он представляет из себя соединение природного минерала кварца, высококачественной полиэфирной смолы и цветовых пигментов. Причем, доля природного кварца, одного из самых прочных природных материалов, составляет 95 %. Доля смолы и пигментов составляет 3 и 2 % соответственно. Кварцевый агломерат имеет наиболее высокую твердость, уступая разве что алмазу. К примеру, твердость кварцевого искусственного камня по шкале Мооса составляет 7 баллов, в то время, как твердость гранита составляет 6 баллов.<br /> <br />Поставщиками кварца для производства кварцевого агломерата являются Турция, Индия и Россия. Для получения определенной цветовой гаммы и текстуры поверхности, кварцевая крошка в определенных пропорциях перемешивается с красящими пигментами и между собой. В полученную смесь добавляется ненасыщенная полиэфирная смола, которая представляет собой связующее вещество. Полученный материал выглядит полностью, как натуральный камень, однако при этом он лишен недостатков натуральных материалов, таких как ломкость, пористость, что приводит к проникновению грязи и жидкостей, низкая термостойкость, т.к. способен выдерживать температурные перепады свыше 100 градусов, и других.<br /> <br />Благодаря этим несомненным достоинствам кварцевого агломерата перед натуральными материалами, его сфера применения постоянно расширяется. Так, уже сегодня кварцевый агломерат применяется практически во всех областях ремонта и отделки помещений. Столешницы, подоконники, барные стойки, мойки, камины, облицовка полов и стен &mdash; это только неполный перечень его применения. При этом, стоит отметить, что с равным успехом можно использовать кварцевый агломерат не только в жилых помещениях, но и в некоторых помещениях общественного назначения, будь то кафе или рестораны, сауны или бассейны, а также для облицовки внешних фасадов дома или дачи.<br /> <br />Имея многообразие цветов и вкраплений, редко встречающихся в природе, кварцевый агломерат имеет определенное преимущество перед мрамором и гранитом. А легкость и неприхотливость в уходе за ним, делают кварцевый агломерат непревзойденным отделочным материалом.<br /><br />Вы можете выбрать вид предлагаемого нами кварцевого агломерата. Просим учесть, что передача цветов на картинке может отличаться от реального оттенка. Поэтому для точного подбора материала рекомендуем посетить наш офис.</p>\r\n<p>&nbsp;</p>', '18001de7f1d2c2b432fc7961dea4f96d.jpg', '2014-08-15 11:23:46', '2014-08-31 23:09:46', 'galereya-kvarcha-1', 'galereya-kvarcha-2', 'galereya-kvarcha-3', 'staron', 'kvarcheviiy-aglomerat', 'Категория 1', 'Категория 2', 'Категория 3', 1, '.'),
(6, 'Мрамор', '<p>&nbsp;Мрамор (лат. marmor, от греч. marmaros &mdash; блестящий камень, каменная глыба) - кристаллическая горная порода, образовавшаяся в результате перекристаллизации известняка или доломита. Окраска мрамора зависит от примесей. Большинство цветных мраморов имеет пёструю окраску. Рисунок определяется не только строением мрамора, но и направлением, по которому производится распиливание камня. Цвет и рисунок мрамора проявляются после его полировки.<br /> <br />Мрамор применяется с античности как конструкционный и облицовочный архитектурный материал благодаря своим пластическим и декоративным достоинствам (твёрдость; мелкозернистость, делающая Мрамор податливым в обработке, способным принимать полировку, посредством которой выявляются тональное богатство Мрамора и красота его однородной, пятнистой или слоистой структуры).<br /> <br />Мрамор используется также для создания мозаичных композиций, рельефов и круглых изваяний (преимущественно однотонный мрамор, большей частью белый, реже &mdash; цветной или чёрный).<br /> <br />Благодаря богатству своего рисунка и изяществу мрамор безусловно имеет определенное предпочтение перед гранитом, однако стоит учесть, что к этой красоте необходимо относиться бережно. При должном отношении Мрамор подходит для того, чтобы подчеркнуть Ваш домашний или офисный стиль при незначительных затратах. Вы можете использовать мрамор для своих подоконников, барных стоек, столешниц на кухне, оттделки ванной комнаты или туалета. Мраморный пол не оставит равнодушным никого, переступившего Ваш порог. А сборное панно из различных пород без слов отразит Вашу успешность в жизни.<br /><br /> Камин из этого камня всегда будет очаровывать Вас наравне с горением огня в нем. Плинтуса, ступени и перила - далеко не весь ассортимент наших изделий. А в качестве завершения Вашей мысли мы предлагаем Вам изготовление букв и цифр из мрамора, например для номера Вашей квартиры.<br /> <br />И если Вы считаете, что это дорого, Вы сильно заблуждаетесь. Вы вполне достойны подобной красоты!<br /> <br />Вы можете выбрать вид предлагаемого нами мрамора. Просим учесть, что передача цветов на картинке может отличаться от реального оттенка. Поэтому для точного подбора материала рекомендуем посетить наш офис.</p>\r\n<p>&nbsp;&nbsp;</p>', '0a80b63c57479513a6f766e2080c9d30.JPG', '2014-08-15 11:25:57', '2014-08-31 23:13:58', 'galereya-mramora-1', 'galereya-mramora-2', 'galereya-mramora-3', 'staron,montelli,dupont', 'marble', 'Сорт 1', 'Сорт 2', 'Сорт 3', 0, 'naturalniiy-kamen'),
(7, 'Гранит', '<p>Гранит (итал. granito, от лат. granum &mdash; зерно) &mdash; кислая магматическая интрузивная горная порода.<br /><br /> Состоит из кварца, плагиоклаза, калиевого полевого шпата и слюд &mdash; биотита и/или мусковита. Граниты очень широко распространены в континентальной земной коре.<br /> <br />Гранит является одной из самых плотных, твёрдых и прочных пород. Используется в строительстве в качестве облицовочного материала.<br /><br /> Кроме того, гранит имеет низкое водопоглощение и высокую устойчивость к морозу и загрязнениям. Вот почему он оптимален для мощения как внутри помещения, так и снаружи. В интерьере гранит применяется также для отделки стен, лестниц, создания столешниц и колонн. Используется для изготовления памятников и на гранитный щебень.<br /> <br />Гранит менее капризен в эксплуатации, но несколько более грубоват по рисунку, по сравнению с мрамором. Соответственно при использовании данного камня во внутренней отделке, Вам придется сделать выбор между изяществом и практичностью. Но при проведении внешней отделки дома, благодаря своей устойчивости к внешним температурным и физическим воздействиям, гранит почти незаменим.<br /> <br />Вы можете выбрать вид предлагаемого нами гранита. Просим учесть, что передача цветов на картинке может отличаться от реального оттенка. Поэтому для точного подбора материала рекомендуем посетить наш офис.</p>\r\n<p>&nbsp;&nbsp;</p>', 'b88153fa20b25879ece0a849d3710cad.jpg', '2014-08-15 11:27:42', '2014-08-31 23:09:03', 'galereya-granita-1', 'galereya-granita--2', 'galereya-granita--3', 'orian,montelli', 'granite', 'Сорт 1', 'Сорт 2', 'Сорт 3', 0, 'naturalniiy-kamen'),
(21, 'Натуральный камень', '<p>Натуральный камень</p>', 'fb5bbe8a8c7eb525eedc28d22e4ecb18.png', '2014-08-20 15:33:28', '2014-08-31 23:08:33', NULL, NULL, NULL, 'orian,staron,montelli,dupont', 'naturalniiy-kamen', 'Текст к галерее №1', 'Текст к галерее №2', 'Текст к галерее №3', 1, '..'),
(22, 'Акриловый камень', '<p>Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня Описание акрилового камня</p>', '8338dda0b43f52c2845420b3cc3fd4a6.png', '2014-08-20 15:46:07', '2014-08-31 23:08:14', 'galereya-akrilovogo-kamnya-1', 'galereya-akrilovogo-kamnya-2', 'galereya-akrilovogo-kamnya-3', 'staron,montelli,dupont', 'akriloviiy-kamen', 'Категория А', 'Категория И', 'Категория С', 1, '.'),
(27, 'Оникс', '<p>Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст</p>', '67234049aee85ec27a34aef859893052.jpg', '2014-08-28 21:11:49', '2014-08-31 23:07:55', 'galereya-oniksa-1', 'galereya-oniksa-2', 'galereya-oniksa-3', 'montelli,dupont', 'oniks', 'Категория 1', 'Категория 2', 'Категория 3', 0, 'naturalniiy-kamen'),
(28, 'Травертин', '<p>Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст</p>', 'a1919afca5972ea18285c535fcb87cc2.jpg', '2014-08-28 21:12:32', '2014-08-31 23:07:42', 'galereya-travertina-1', 'galereya-travertina-2', 'galereya-travertina-3', 'orian,staron', 'travertin', 'Категория эконом', 'Категория Эстет', 'Категория Экстра', 0, 'naturalniiy-kamen');

-- --------------------------------------------------------

--
-- Структура таблицы `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `answer` tinyint(1) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27 ;

--
-- Дамп данных таблицы `message`
--

INSERT INTO `message` (`id`, `name`, `phone`, `message`, `created_at`, `updated_at`, `answer`, `type`) VALUES
(25, 'Алекс', '212121212', 'привет', '2014-08-31 23:20:09', NULL, NULL, 'callback'),
(26, 'sania', NULL, 'sania@mail.ru', '2014-08-31 23:20:52', NULL, NULL, 'subscribe');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `img`, `created_at`, `updated_at`) VALUES
(2, 'новость1', '<p>Новость1&nbsp; Новость1&nbsp; Новость1&nbsp; Новость1&nbsp; Новость1&nbsp; Новость1&nbsp; Новость1&nbsp; Новость1&nbsp; Новость1&nbsp; Новость1&nbsp; Новость1&nbsp; Новость1&nbsp; Новость1&nbsp; Новость1&nbsp; Новость1&nbsp; Новость1&nbsp; Новость1&nbsp; Новость1&nbsp; Новость1&nbsp; Новость1&nbsp; Новость1&nbsp; Новость1&nbsp; Новость1&nbsp; Новость1&nbsp; Новость1&nbsp; Новость1&nbsp;</p>', '142b7ba6fbbfe04267b8c615cf5fb0d1.jpg', '2014-08-12 12:43:38', '2014-08-31 23:18:33'),
(3, 'Новость2', '<p>Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2 Новость2</p>', 'd020b411e71b2936552fe90cd6d0e8af.jpg', '2014-08-14 00:16:50', '2014-08-31 23:18:54'),
(4, 'Новость3', '<p>Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3 Новость3</p>', 'c8f52a95f0a84e478451eaf5ff86eafb.JPG', '2014-08-14 00:17:20', '2014-08-31 23:19:07');

-- --------------------------------------------------------

--
-- Структура таблицы `orderr`
--

DROP TABLE IF EXISTS `orderr`;
CREATE TABLE IF NOT EXISTS `orderr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `material` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `answer` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `orderr`
--

INSERT INTO `orderr` (`id`, `name`, `email`, `phone`, `skype`, `product`, `material`, `description`, `img`, `created_at`, `updated_at`, `answer`) VALUES
(14, 'sania', '', '2121212121', '', '3', 'kvarcheviiy-aglomerat', 'qsqwqwqwqwq', '41a63fd31552042601a130e4c420561d.jpg', '2014-09-01 00:36:02', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `page`
--

DROP TABLE IF EXISTS `page`;
CREATE TABLE IF NOT EXISTS `page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `html_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `page`
--

INSERT INTO `page` (`id`, `title`, `content`, `html_title`, `meta_keywords`, `meta_description`, `type`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'Page 2', '<p>text page2</p>\r\n<p><img src="../../../../../../upload/images/634ef9c6e339a241abc7f186abebe4b9.JPG" alt="image3" width="100" height="75" /></p>\r\n<p><img src="../../../../../../upload/images/634ef9c6e339a241abc7f186abebe4b9.JPG" alt="image3" width="100" /></p>', NULL, NULL, NULL, 'SHOW', 'page2', '2014-08-14 16:08:04', '2014-08-15 11:09:30'),
(5, 'Page 5', '<p>text page5</p>\r\n<p><img src="../../../../../upload/images/86eddd383cd640c5124d52435f25eafb.jpg" alt="image4" width="100" height="100" /></p>', NULL, NULL, NULL, 'SHOW', 'page5', '2014-08-14 16:10:58', NULL),
(6, 'Page 6', '<p>text page 6</p>\r\n<p><img src="../../../../../../upload/images/35fafcdc53c261bf9bf99a4c440b701d.jpg" alt="image4" width="100" height="100" /></p>', NULL, NULL, NULL, 'SHOW', 'page6', '2014-08-14 16:12:02', '2014-08-16 20:14:33');

-- --------------------------------------------------------

--
-- Структура таблицы `partner`
--

DROP TABLE IF EXISTS `partner`;
CREATE TABLE IF NOT EXISTS `partner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logoshow` tinyint(1) DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `partner`
--

INSERT INTO `partner` (`id`, `name`, `logoshow`, `img`, `logo_url`, `created_at`, `updated_at`, `description`) VALUES
(2, 'Партнер 1', 1, 'd7c8f80cf42a97fdc843453519d663f4.png', 'http://ya.ru', '2014-08-14 00:58:55', '2014-08-31 19:12:31', '<p>Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст</p>'),
(3, 'Партнер2', 1, 'cee6d59b8530ddc6a72cf3bfce00add7.png', 'http://rambler.ru', '2014-08-14 00:59:30', '2014-08-31 19:12:15', '<p>Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст</p>'),
(4, 'Партнер 3', 1, '1e78a6fafebbcf9e889bb40882baea3a.png', 'http://www.google.ru', '2014-08-14 01:00:14', '2014-08-31 19:11:48', '<p>Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст</p>'),
(6, 'парнер4', 1, '89aa9871d55625f79d40c64006117fe5.png', 'ww.google.ru', '2014-08-31 19:09:56', '2014-08-31 19:31:40', '<p>Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый&nbsp;</p>'),
(7, 'парнер5', 1, '6d8836719a50413a592e47552978867d.png', 'http://www.google.ru', '2014-08-31 19:14:37', '2014-08-31 19:31:51', '<p>Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст</p>'),
(9, 'партнер 6', 1, 'ffa72c7c1934cff465dd1635f941ffbb.png', 'http://ya.ru', '2014-08-31 19:25:06', '2014-08-31 19:32:02', '<p>Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст</p>');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `gallery1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gallery2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gallery3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text1` longtext COLLATE utf8_unicode_ci,
  `text2` longtext COLLATE utf8_unicode_ci,
  `text3` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `title`, `content`, `img`, `created_at`, `updated_at`, `gallery1`, `gallery2`, `gallery3`, `text1`, `text2`, `text3`) VALUES
(3, 'Столешницы для кухни и ванной', '<p>Столешницы на кухню Столешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухнюСтолешницы на кухню</p>', 'a51c8b9d5f8b0f0aa961dd011508a5ce.jpg', '2014-08-25 13:24:45', '2014-08-31 20:25:41', 'galereya-stoleshnich-na-kuhnyu', NULL, NULL, NULL, NULL, NULL),
(4, 'Подоконники', '<p>Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники Подоконники Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;Подоконники&nbsp;</p>', '6bb6446054f0ed700b621195ed9bea5d.jpg', '2014-08-25 13:26:10', '2014-08-31 20:32:51', 'galereya-podokonnikov', NULL, NULL, NULL, NULL, NULL),
(5, 'Барные стойки и ресепшн', '<p>Полы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы</p>\r\n<p>Полы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;ПолыПолы Полы Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы&nbsp;Полы</p>', '339911c98be6baf929d212cefae6260c.jpg', '2014-08-25 13:27:04', '2014-08-31 20:32:01', 'galereya-polov', NULL, NULL, NULL, NULL, NULL),
(6, 'Камины', '<p>Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст</p>', '0ec7467ab502d53d14590b110eea87b4.jpg', '2014-08-25 13:30:44', '2014-08-31 20:33:31', 'galereya-kaminov', NULL, NULL, NULL, NULL, NULL),
(10, 'Мойки', '<p>Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст</p>', '80543a587c72d61dd20b0bc7c23566e3.jpg', '2014-08-31 20:26:43', '2014-08-31 20:31:34', 'galereya-moek', NULL, NULL, NULL, NULL, NULL),
(11, 'Облицовка цоколя', '<p>Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст</p>', '23181008e714b4133e1ff0e69acc5f6a.JPG', '2014-08-31 20:34:54', NULL, 'oblichovka-chokolya', NULL, NULL, NULL, NULL, NULL),
(12, 'Входные группы', '<p>Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст</p>', 'c332268822f72597765e608bb69cc86a.jpg', '2014-08-31 20:35:36', NULL, 'vhodnie-gruppi', NULL, NULL, NULL, NULL, NULL),
(13, 'Плитка', '<p>Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст</p>', 'b1ee26d563ebf66adc4bdad622392125.jpg', '2014-08-31 20:36:20', NULL, 'plitka', NULL, NULL, NULL, NULL, NULL),
(14, 'Сувениры', '<p>Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст<br />Некоторый текст Некоторый текст Некоторый текст Некоторый текст Некоторый текст</p>', 'cf75bee514e44ef52033bea24ee36a31.JPG', '2014-08-31 20:37:08', NULL, 'suveniri', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE IF NOT EXISTS `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `gallery1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gallery2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gallery3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `project`
--

INSERT INTO `project` (`id`, `title`, `content`, `img`, `created_at`, `updated_at`, `gallery1`, `gallery2`, `gallery3`) VALUES
(2, 'Проект 1', '<p>Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1 Описание проекта 1</p>', '4bb356e5856a62bf0402f5531ed13cb6.jpg', '2014-08-12 12:55:06', '2014-08-23 17:56:15', NULL, NULL, NULL),
(3, 'Проект 2', '<p>Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2 Описание проекта 2</p>', '52bc236506495fac5a16a1a8e95f8c79.jpg', '2014-08-14 01:09:18', '2014-08-23 17:47:04', NULL, NULL, NULL),
(4, 'Проект 3', '<p>Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3 Описание проекта 3</p>', '06be089f5b19ec09e6be944cd9e8f997.jpg', '2014-08-14 01:09:50', '2014-08-23 17:56:43', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `setting`
--

DROP TABLE IF EXISTS `setting`;
CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `setting`
--

INSERT INTO `setting` (`id`, `name`, `value`, `created_at`, `updated_at`, `description`) VALUES
(5, 'tel_central_office', '8(111)11-222-11', '2014-08-14 17:40:05', '2014-08-28 20:56:16', 'Телефон центрального офиса'),
(6, 'tel_otdel_rachetov', '8(926)81-495-41', '2014-08-14 17:40:37', '2014-08-28 20:55:56', 'Телефон отдела расчетов'),
(7, 'email_zakaz', 'zakaz@aliancestone.ru', '2014-08-14 17:41:26', '2014-08-28 20:55:36', 'Email вверху'),
(8, 'tel', '926 844 93 41', '2014-08-14 17:42:41', '2014-08-28 20:55:12', 'Телефон вверху'),
(9, 'epigraph', 'Тут Ваша фраза об интерьере, которую Вы придумаете...', '2014-08-28 20:20:59', '2014-08-28 20:54:44', 'фраза про интерьер'),
(10, 'about', '<strong>АЛЬЯНС ПРОИЗВОДИТЕЛЕЙ КАМНЯ </strong>это команда профессионалов, умеющих, \r\n    знающих и любящих работу с камнем. Мы хорошо знакомы с рынком \r\n    натурального, искусственного камня и кварцевого агломерата, \r\n    поэтому можем предложить самые востребованные изделия из него \r\n    оперативно, качественно и недорого. С учетом этого, Ваша задача - \r\n    просто понять для себя, что бы Вы хотели. В остальном Вы можете \r\n    положиться на нас!\r\nМы производим столешницы, подоконники, барные стойки и другие изделия \r\nиз искусственного камня, мрамора, гранита и кварцевого агломерата по \r\nВашим заказам. Коллекции ведущих производителей искусственного камня \r\n<em>Corian</em>, <em>Montelli</em> (компания <em>Du Pont</em>) и <em>Staron</em> и \r\n<em>Tempest</em> (компания <em>Samsung</em>)\r\n и кварцевого агломерата Radianz (компания Samsung), Plaza Stone,\r\n  Technistone, HanStone, Silestone (с кварцевыми интегрированными мойками)\r\n   не оставят Вас равнодушными и позволят подобрать именно тот оттенок \r\n   камня, который украсит Ваш интерьер. А наши мраморные камины поразят \r\n   любого Вашего гостя. Выбирая изделие из камня, мы рекомендуем Вам \r\n   ответственно отнестись к выбору цвета и вида искусственного, \r\n   натурального и кварцевого камня. Помочь в этом предназначены \r\n   наши страницы с описанием мрамора, гранита, кварцевого агломерата \r\n   и искусственного камня. Также мы приглашаем Вас посетить наши \r\n   производства, чтобы посмотреть образцы нашей продукции. Вы можете \r\n   рассчитывать на максимально демократичные цены не только на \r\n   материал, но и на производство работ при высококачественном \r\n   их выполнении.\r\nМы предлагаем изготовление изделий из камня «под ключ». Для начала\r\n определяем для себя изделие из кварцевого, искусственного или \r\n натурального камня: подоконник, столешница, барная стойка, \r\n лестница, полка, столик или даже камин! Далее мы выбираем\r\n  материал: искусственный камень (Montelli, Corian, Staron,\r\n   Tempest), натуральный камень (мрамор, гранит) или кварцевый\r\n    агломерат (Radianz, Technistone, Plaza Stone, Silestone,\r\n     HanStone). Производим предварительный расчет, сколько\r\n      будет стоить Ваша столешница, подоконник или барная стойка. \r\n      Определяем дату выезда замерщика. Вы безусловно можете предоставить \r\n      нам свои собственные замеры, но пожалуйста примите во внимание, \r\n      что при неправильном замере искусственный, натуральный или \r\n      кварцевый камень при монтаже будет достаточно трудно подогнать\r\n       под необходимые размеры, что приведет к дополнительным временным \r\n       и денежным затратам.', '2014-08-29 19:57:13', NULL, 'Текст на странице о нас'),
(11, 'reasons', '<p>\r\n				Наша компания АЛЬЯНС ПРОИЗВОДИТЕЛЕЙ КАМНЯ  основана в августе 2009-го года\r\n				</p>\r\n				<p>\r\n				Мы - профессионалы умеющие, знающие и любящие работу с камнем. \r\n                Хорошо знаем  рынок натурального и искусственного камня, \r\n                поэтому можем предложить самые востребованные изделия из него. \r\n				</p>\r\n				<p>\r\n				Мы - оперативно, качественно и недорого выполним Ваш заказ. С учетом этого, Ваша задача - это просто понять для себя, что бы Вы хотели. В остальном Вы можете положиться на Нас!\r\n				</p>', '2014-08-29 20:01:44', NULL, 'Текст Причины выбрать нас');

-- --------------------------------------------------------

--
-- Структура таблицы `slide`
--

DROP TABLE IF EXISTS `slide`;
CREATE TABLE IF NOT EXISTS `slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=76 ;

--
-- Дамп данных таблицы `slide`
--

INSERT INTO `slide` (`id`, `title`, `content`, `img`, `created_at`, `updated_at`, `category`) VALUES
(6, 'slide2', 'text2', 'd6f3e7e5f78a609bbf358b6f9f37ee3f.jpg', '2014-08-12 11:30:29', '2014-08-16 23:06:02', 0),
(7, 'slide3', 'text3', 'dc98db8ecca27d18b68602390a18f02d.JPG', '2014-08-13 23:53:02', '2014-08-16 23:05:51', 0),
(8, 'slide4', 'text slide4', '687ca555d623ccfeb6bacab06b479016.JPG', '2014-08-13 23:53:22', '2014-08-16 23:05:35', 0),
(21, 'стол1', 'Столешницы на кухню', '9a2fe1674c3ae14b23e8f6e38354fca4.jpg', '2014-08-31 21:10:52', NULL, 3),
(22, 'стол2', NULL, 'eaae882b0c8ba7737cca2ee731c9b561.jpg', '2014-08-31 21:11:05', NULL, 3),
(23, 'стол3', NULL, 'a9e790b577c8ed3f8cc842680f76c4cc.jpg', '2014-08-31 21:11:17', NULL, 3),
(24, 'стол4', NULL, '3a1ad229f0dc391767664edc8b852f46.jpg', '2014-08-31 21:11:35', NULL, 3),
(25, 'стол5', NULL, '30add7c4da92bad676646ace6b5fb539.jpg', '2014-08-31 21:11:47', NULL, 3),
(26, 'стол6', NULL, 'eecce2ce5da5a9741aa7ee661a7a9a3a.jpg', '2014-08-31 21:11:59', NULL, 3),
(27, 'стол7', NULL, '77151cd163ee6a0035dcd2586bcba24d.jpg', '2014-08-31 21:12:08', '2014-08-31 21:12:28', 3),
(28, 'стол8', NULL, '24e76b4eebe80d955e62829f5678e473.gif', '2014-08-31 21:12:47', NULL, 3),
(29, 'подок1', NULL, '426f4cbceb0b4b94a84f61db7292f410.jpg', '2014-08-31 21:14:14', NULL, 4),
(30, 'подок2', NULL, '494ce9324c8499e06ad27b269668eda6.jpg', '2014-08-31 21:14:26', NULL, 4),
(31, 'подок3', NULL, '1ad59d79ea0c0ff68eecc96fd3bafcf8.jpg', '2014-08-31 21:14:38', NULL, 4),
(32, 'подок4', NULL, '94092e350117b5c96c2f7c3414065cd3.jpg', '2014-08-31 21:14:50', NULL, 4),
(33, 'подок5', NULL, '12c332f286a5c479026fa1b666ff488c.jpg', '2014-08-31 21:15:00', NULL, 4),
(34, 'подок6', NULL, 'ce448cf739e9d41f4b1a9546c2cc75f2.jpg', '2014-08-31 21:15:12', NULL, 4),
(35, 'подок7', NULL, 'aaf517d1c7ba57bbf3f175d854760b53.jpg', '2014-08-31 21:15:25', NULL, 4),
(36, 'подок8', NULL, '78e98fc91da46e3ff6da280ab8e00046.jpg', '2014-08-31 21:15:38', NULL, 4),
(37, 'подок9', NULL, '8d358792ff467956fb5804fe984532db.jpg', '2014-08-31 21:15:49', NULL, 4),
(38, 'подок10', NULL, '1581fb7d8eb7af76c24610229eabd6c5.png', '2014-08-31 21:16:05', NULL, 4),
(39, 'мойка1', NULL, 'b936967f69f35ec0b3df3810e2bfb850.jpg', '2014-08-31 21:16:29', NULL, 10),
(40, 'мойка2', NULL, '61a32551c758d169d45abd90157be668.JPG', '2014-08-31 21:17:00', NULL, 10),
(41, 'мойка3', NULL, 'd2e9c7a50c2984baf9781ca3b4b6db99.JPG', '2014-08-31 21:17:16', NULL, 10),
(42, 'мойка4', NULL, 'f249521cda48c13894ee8fa5e3501eb4.JPG', '2014-08-31 21:17:34', NULL, 10),
(43, 'мойка5', NULL, '91695556adf7d0d175961d3f9ca65760.JPG', '2014-08-31 21:17:52', NULL, 10),
(44, 'бар1', NULL, '09894d0c7ff8f4b477fe4abfdc398a3b.JPG', '2014-08-31 21:18:14', NULL, 5),
(45, 'бар2', NULL, 'e5f72b361284ccaa8f201183c84821e4.jpg', '2014-08-31 21:18:27', NULL, 5),
(46, 'бар3', NULL, '0ee941f0f9a918650d7eee96bba9677f.jpg', '2014-08-31 21:18:39', NULL, 5),
(47, 'бар4', NULL, '92905db0a7c423c44a24f750d5969757.jpg', '2014-08-31 21:18:51', NULL, 5),
(48, 'бар5', NULL, 'b7ee1c82a5931fb7ff2ef442b332d7b6.JPG', '2014-08-31 21:19:02', NULL, 5),
(49, 'бар6', NULL, 'db54f4d2a92c77eb2b18287a811c462e.jpg', '2014-08-31 21:19:12', NULL, 5),
(50, 'бар7', NULL, '6d449a572954efd3856a7466c70ba26a.jpg', '2014-08-31 21:19:24', NULL, 5),
(51, 'камин1', NULL, '46625a4eaf35fafe01a7d91b36c98e3f.jpg', '2014-08-31 21:19:39', NULL, 6),
(52, 'камин2', NULL, '1bdcc76a6d1dfda991c4bb597d6b7857.jpg', '2014-08-31 21:19:51', NULL, 6),
(53, 'камин3', NULL, 'ab03de618dc65703c521df440ac5e985.jpg', '2014-08-31 21:20:02', NULL, 6),
(54, 'камин4', NULL, 'G:\\Windows\\Temp\\php400F.tmp', '2014-08-31 21:20:15', NULL, 6),
(55, 'камин5', NULL, 'e9a76e1385b0e5309c2533518672b1f1.jpg', '2014-08-31 21:20:26', NULL, 6),
(56, 'камин6', NULL, 'G:\\Windows\\Temp\\php9793.tmp', '2014-08-31 21:20:38', NULL, 6),
(57, 'камин7', NULL, '90e66ddbebdd4b9c3999ca5e95147c2a.jpg', '2014-08-31 21:20:51', NULL, 6),
(58, 'обл1', NULL, '24a51913cb245350b38dae529fb6f1d2.jpg', '2014-08-31 21:21:28', NULL, 11),
(59, 'обл2', NULL, 'd8b33dee29b7ba879caad210363496b2.jpg', '2014-08-31 21:21:46', NULL, 11),
(60, 'обл3', NULL, 'c11239f2837cc1fa0db2a3a2577ce258.JPG', '2014-08-31 21:22:06', NULL, 11),
(61, 'обл4', NULL, '1ba599d8827cd72f684e2d94407f9365.jpg', '2014-08-31 21:22:25', NULL, 11),
(62, 'обл5', NULL, 'f21ed30420691f4969e2bffeb4fe5cee.JPG', '2014-08-31 21:23:01', NULL, 11),
(63, 'вход1', NULL, '236e3cb31762789cebfeb4e28355853f.jpg', '2014-08-31 21:23:32', NULL, 12),
(64, 'вход2', NULL, 'd899a3fd05031f76582dbce655db8527.jpg', '2014-08-31 21:23:47', NULL, 12),
(65, 'вход3', NULL, 'f3d1edb817193a86dc29476de16dc99f.jpg', '2014-08-31 21:24:05', NULL, 12),
(66, 'вход4', NULL, 'f260248df33351a1d6f31ed31c547301.jpg', '2014-08-31 21:24:26', NULL, 12),
(67, 'вход5', NULL, '1bf8ec483c388ad32e33a33f267f6ade.jpg', '2014-08-31 21:24:39', NULL, 12),
(68, 'плит1', NULL, '191c36c7f980e62e000ecbfc80b47472.JPG', '2014-08-31 21:24:56', NULL, 13),
(69, 'плит2', NULL, '473c6060b62d6f0396a3a691f90de964.jpg', '2014-08-31 21:25:09', NULL, 13),
(70, 'плит3', NULL, 'ffc77f36736b798999ca25fb7a34283c.jpg', '2014-08-31 21:25:31', NULL, 13),
(71, 'плит4', NULL, '77758d21045b2d1d81df5faa09c53ee2.JPG', '2014-08-31 21:26:05', NULL, 13),
(72, 'плит5', NULL, '6f171871afe87f6a00c36636d558ac5a.jpg', '2014-08-31 21:26:32', NULL, 13),
(73, 'сувенир1', NULL, '3488d6d2778757faa570dc6736b76ea0.JPG', '2014-08-31 21:26:51', NULL, 14),
(74, 'сувенир2', NULL, '170d1b392d6064217aa022898e2ce36a.JPG', '2014-08-31 21:27:07', NULL, 14),
(75, 'сувенир3', NULL, 'd8c204e4771d86b5b2debfce56e29d0f.JPG', '2014-08-31 21:27:20', NULL, 14);

-- --------------------------------------------------------

--
-- Структура таблицы `sonet`
--

DROP TABLE IF EXISTS `sonet`;
CREATE TABLE IF NOT EXISTS `sonet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `sonet`
--

INSERT INTO `sonet` (`id`, `title`, `link`, `img`, `created_at`, `updated_at`) VALUES
(2, 'google', 'https://plus.google.com/109676671065290506664/posts', 'e4b2c7566167b5ed78e92e83ed45f7d0.png', '2014-12-12 23:39:01', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roles` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `roles`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'nhDr7OyKlXQju+Ge/WKGrPQ9lPBSUFfpK+B1xqx/+8zLZqRNX0+5G1zBQklXUFy86lCpkAofsExlXiorUcKSNQ==', 'admin@mail.ru', 'ROLE_SUPER_ADMIN', '2014-08-10 00:00:00', '2014-08-10 00:00:00'),
(2, 'superadmin', 'nhDr7OyKlXQju+Ge/WKGrPQ9lPBSUFfpK+B1xqx/+8zLZqRNX0+5G1zBQklXUFy86lCpkAofsExlXiorUcKSNQ==', 'admin@yandex.ru', 'ROLE_SUPER_ADMIN,ROLE_ADMIN', '2014-08-10 00:32:02', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
