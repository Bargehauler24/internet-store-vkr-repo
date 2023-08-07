-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 19 2020 г., 08:46
-- Версия сервера: 8.0.15
-- Версия PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ishop2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `attribute_group`
--

CREATE TABLE `attribute_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `attribute_group`
--

INSERT INTO `attribute_group` (`id`, `title`) VALUES
(1, 'Бренд'),
(2, 'Операционная система'),
(3, 'Доступ в интернет'),
(4, 'Объем встроенной памяти'),
(5, 'Поддержка карт памяти');

-- --------------------------------------------------------

--
-- Структура таблицы `attribute_product`
--

CREATE TABLE `attribute_product` (
  `attr_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `attribute_product`
--

INSERT INTO `attribute_product` (`attr_id`, `product_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 40),
(1, 45),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 58),
(1, 59),
(1, 60),
(2, 4),
(2, 42),
(2, 43),
(2, 44),
(2, 54),
(2, 55),
(2, 56),
(2, 57),
(2, 61),
(2, 62),
(3, 41),
(3, 52),
(3, 63),
(3, 64),
(3, 65),
(3, 66),
(4, 53),
(4, 67),
(4, 68),
(4, 69),
(4, 70),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 44),
(5, 50),
(5, 51),
(5, 52),
(5, 53),
(5, 54),
(5, 55),
(5, 56),
(5, 57),
(5, 58),
(5, 59),
(5, 60),
(5, 61),
(5, 62),
(5, 63),
(5, 64),
(5, 65),
(5, 66),
(5, 67),
(5, 68),
(5, 69),
(5, 70),
(5, 71),
(5, 72),
(5, 73),
(5, 74),
(5, 75),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(9, 42),
(9, 44),
(9, 45),
(10, 49),
(10, 50),
(10, 51),
(10, 52),
(10, 53),
(10, 54),
(10, 61),
(10, 63),
(12, 1),
(12, 2),
(12, 3),
(12, 4),
(12, 56),
(12, 72),
(13, 42),
(13, 55),
(13, 61),
(14, 44),
(14, 45),
(14, 50),
(14, 51),
(14, 52),
(14, 67),
(14, 68),
(14, 69),
(14, 70),
(14, 73),
(14, 75),
(15, 54),
(15, 58),
(15, 59),
(15, 60),
(15, 62),
(15, 63),
(15, 64),
(15, 65),
(15, 66),
(15, 71),
(15, 74),
(16, 53),
(18, 1),
(18, 2),
(18, 4),
(18, 45),
(18, 55),
(19, 3),
(19, 42),
(19, 44),
(19, 50),
(19, 51),
(19, 54),
(19, 72),
(19, 73),
(19, 74),
(19, 75),
(20, 71),
(20, 72),
(20, 73),
(20, 74),
(20, 75);

-- --------------------------------------------------------

--
-- Структура таблицы `attribute_value`
--

CREATE TABLE `attribute_value` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) NOT NULL,
  `attr_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `attribute_value`
--

INSERT INTO `attribute_value` (`id`, `value`, `attr_group_id`) VALUES
(1, 'Huawei', 1),
(2, 'ZTE', 1),
(3, 'Samsung', 1),
(4, 'Honor', 1),
(5, 'Android', 2),
(8, 'нет', 3),
(9, 'WAP', 3),
(10, 'GPRS', 3),
(12, '1 Гб', 4),
(13, '2 Гб', 4),
(14, '3 Гб', 4),
(15, '4 Гб', 4),
(16, '6 Гб', 4),
(18, 'microSD (TransFlash), объемом до 8 Гб', 5),
(19, 'microSD (TransFlash), объемом до 512 Гб', 5),
(20, 'Xiaomi', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `brand`
--

CREATE TABLE `brand` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'brand_no_image.jpg',
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `brand`
--

INSERT INTO `brand` (`id`, `title`, `alias`, `img`, `description`) VALUES
(1, 'Желаем Вам', 'casio', 'abt-1.jpg', NULL),
(2, ' приятных', 'citizen', 'abt-2.jpg', NULL),
(3, '  покупок!', 'royal-london', 'abt-3.jpg', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `parent_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `title`, `alias`, `parent_id`, `keywords`, `description`) VALUES
(19, 'Смартфоны', 'smartfony', 0, '', ''),
(21, 'Смартфоны', 'smartfony-21', 19, '', ''),
(22, 'Huawei', 'huawei', 21, 'Смартфоны', 'Huawei'),
(23, 'ZTE', 'zte', 21, 'Смартфоны', 'ZTE'),
(24, 'Samsung', 'samsung', 21, 'Смартфоны', 'Samsung'),
(25, 'Honor', 'honor', 21, 'Смартфоны', 'Honor'),
(27, 'Xiaomi', 'xiaomi', 21, 'Смартфоны', 'Xiaomi'),
(33, 'Аксессуары для телефонов и портативной техники', 'aksessuary-dlya-telefonov-i-portativnoy-tehniki', 0, 'Аксессуары для телефонов и портативной техники', 'Аксессуары для телефонов и портативной техники'),
(34, 'АКБ', 'akb', 33, 'Аксессуары для телефонов и портативной техники', 'АКБ'),
(36, 'Наушники', 'naushniki', 33, 'Аксессуары для телефонов и портативной техники', 'Наушники'),
(37, 'Защитные пленки', 'zaschitnye-plenki', 33, 'Аксессуары для телефонов и портативной техники', 'Защитные пленки'),
(38, 'Чехлы для телефонов', 'chehly-dlya-telefonov', 33, 'Аксессуары для телефонов и портативной техники', 'Чехлы для телефонов'),
(39, 'Компьютерная периферия', 'komp-yuternaya-periferiya', 0, 'Компьютерная периферия', 'Компьютерная периферия'),
(40, 'Мыши', 'myshi', 39, 'Компьютерная периферия', 'Мыши'),
(41, 'Клавиатуры', 'klaviatury', 39, 'Компьютерная периферия', 'Клавиатуры');

-- --------------------------------------------------------

--
-- Структура таблицы `currency`
--

CREATE TABLE `currency` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(10) NOT NULL,
  `symbol_right` varchar(10) NOT NULL,
  `value` float(15,2) NOT NULL,
  `base` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `currency`
--

INSERT INTO `currency` (`id`, `title`, `code`, `symbol_left`, `symbol_right`, `value`, `base`) VALUES
(2, 'доллар', 'USD', '$ ', '', 1.00, '1'),
(3, 'Рубль', 'RUB', '₽ ', '', 76.00, '0');

-- --------------------------------------------------------

--
-- Структура таблицы `gallery`
--

CREATE TABLE `gallery` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gallery`
--

INSERT INTO `gallery` (`id`, `product_id`, `img`) VALUES
(1, 2, 's-1.jpg'),
(2, 2, 's-2.jpg'),
(3, 2, 's-3.jpg'),
(5, 46, 'fdda2610c392dc1705d1e4f8eebcb85a.jpg'),
(6, 48, '0b15794b6db2877faaeada818e7d5513.jpg'),
(7, 48, '148d90e8f2b2a00f050674a6485503f2.jpg'),
(8, 48, '435f60ee251b198e121b9025194d479e.jpg'),
(9, 48, '0b41643aaf352a9987ae44f2631065df.jpg'),
(10, 49, '9e17080cc57c2dae60033b388f98fedb.jpg'),
(11, 49, 'adc10011564a3a4bb39d020c21d78e42.jpg'),
(12, 50, '570f70e93870d1eb32ca9b4cbc3e8e10.jpg'),
(13, 50, '6c589884a26a48ebd8f921c1940173ca.jpg'),
(14, 51, 'dbcdc043e7940610f54e89806bba1fcf.jpg'),
(15, 51, '52eed99e9701d13ea959c98428d5261d.jpg'),
(16, 52, '54dc9d65b639f1060daf54dab18f81d5.jpg'),
(17, 52, '6216edf1e9bd51c84aa90e656e81c44f.jpg'),
(18, 53, 'a0f15d9b40f92e6c02c81617cb315650.jpg'),
(19, 53, 'dc728b979f771be50f056c1879b4df07.jpg'),
(20, 54, 'd12c7a71a7752b1bb151c35a0439c5f7.jpg'),
(21, 54, '2290abc39c9ddd2a4c49c00ee4c55028.jpg'),
(22, 55, 'd49c32b95de50ea7a7f4f501557b7e7c.jpg'),
(23, 55, '7d88310faa151cf4f20cd71595165c56.jpg'),
(24, 56, '4c37a3911eb19977b375115b84ab130e.jpg'),
(25, 56, '6bd03aae5752ffdf1b0e30f08f019d48.jpg'),
(26, 57, 'f0ce2c029789f277ca7e8ca58271832a.jpg'),
(27, 57, 'ba9fbad74d7e9badc0cb1bfd2795cc3c.jpg'),
(28, 58, '1e804dd69e9f274a50d3a71244b70721.jpg'),
(29, 59, '49efdaf890bfcf0dde79e6de7697d432.jpg'),
(30, 59, 'f82a9fcf1b30749fb7a6207621cb2dff.jpg'),
(31, 60, '44b5fc8a2c842ca0d9ef6b84ab8b9845.jpg'),
(32, 60, '76b621b1cec1d6ab5d2ce013ed6d48aa.jpg'),
(33, 61, '2271133a8b50cdc8149f192db4ca368d.jpg'),
(34, 61, '8fe8b86e836be2412fbd8824c7df3018.jpg'),
(35, 62, '17b14d0d49cc1025937eb5b45a28838c.jpg'),
(36, 62, '0b5fa5b848b3b574bcefe2f1da858d7d.jpg'),
(37, 63, 'cb31977ee58ea2b186ae6a995117cfe6.jpg'),
(38, 63, 'bce25be19fb79249b8cbc3d751f6dd96.jpg'),
(39, 64, 'f1a2dde45dc1c9d74eaec21613d8faff.jpg'),
(40, 64, 'bb7fe099f65e07ece6dd9683d2cbabdd.jpg'),
(41, 65, '14353147759e7f6e8f969b59027b8f51.jpg'),
(42, 65, '795bf6c6a5591cdb3b95fa9058fb6e0b.jpg'),
(43, 66, '77ae3aa47944a52980d3557b0212acba.jpg'),
(44, 66, 'a833842f23f4d76f4984458388e6ea54.jpg'),
(45, 67, '21c3fa75446a5f053b0e4a0b667e1f13.jpg'),
(46, 67, '6edefce8d521b67d4d4775198df54e17.jpg'),
(47, 68, 'f215ed688091f885250764cdfeccd0d0.jpg'),
(48, 68, '8d3004fa6be4ef594f6461ab43b840af.jpg'),
(49, 69, 'f2a58cf84bb4e2deaddaa7d205771e7c.jpg'),
(50, 69, 'f1dddd35262995e335c6afcadc17db71.jpg'),
(51, 70, '3f237379cc343626e2f6bcc01d6a295c.jpg'),
(52, 70, '20034f843759b45afd9beffad7bd0e99.jpg'),
(53, 71, '4098d7c0709ec6ae8d519887ccc6d398.jpg'),
(54, 72, '30c102cc2d1e64230111ae2459a1a340.jpg'),
(55, 73, 'dfdc6941f461640cca2ec95f96fdc9cb.jpg'),
(56, 74, '4fcd079d1cb7e2067572a1f6b0302b11.jpg'),
(57, 75, '7a11cbb1c7a01171ea6b575bfa7437b1.jpg'),
(58, 76, 'c8cec0c4b72170469393397906703082.jpg'),
(59, 77, '200e6571e3bdbf7b3da4b839b7fed28b.jpg'),
(60, 78, 'ef83a1a1587ce3437361378c98ce8082.png'),
(61, 79, '1a0ed2402b3d2bdef7e95c1c7aadae50.jpg'),
(62, 80, 'a7fbf30946af0e84a05adb682245e482.jpg'),
(63, 81, '3c5911ade3ecf6a31cf864f96b78f0d7.jpg'),
(64, 82, '767080fbd7892a77db160686269811b4.jpg'),
(65, 83, 'b4ab97c688fb84f60b5c2cbfbb58e32a.jpg'),
(66, 84, 'ec373ec9a1432da8b2ac9eff85488284.jpg'),
(67, 85, 'f752f51ab4f1ff687fb6099a496a80c3.jpg'),
(68, 86, '723dac54822d1e68cf583c00765e7fba.jpg'),
(69, 87, 'd4900cb3b66f9cb0aa8cea3d02a73314.jpg'),
(70, 88, 'dc49bab9c0d372f683f1e3f809d470b9.jpg'),
(71, 89, 'c00cf9cc6189a886d9438e942e9cb796.jpg'),
(72, 90, 'e0d351bebd3b6f0eabd25d2dc7d79771.jpg'),
(73, 91, '535dca897fcdd573a45c810274f8793d.jpg'),
(74, 92, '17983d3f711611beaaaef9f8e02b618f.jpg'),
(75, 93, '47c5227e30601b2efa766484a8deef46.jpg'),
(76, 94, 'a28b5791faf3fb2f199cdc6e5f6c4a45.jpg'),
(77, 95, '227ad998c946373bc79ab6f860ca93d2.jpg'),
(78, 96, 'ba5b5a06f264846db54cbd0249848a73.jpg'),
(79, 97, '25c0d618d4aa6f05f0284d0a475af102.jpg'),
(80, 98, 'd74488e97b8f9c0f816308a2d807760e.jpg'),
(81, 99, '1067b18d7ab70812df9cc7453b27788a.jpg'),
(82, 100, 'ac82d76fb6f5fb83f3f449c5eb008184.png'),
(83, 100, '322e299817e1bdda7d813bea668a3e2c.png'),
(84, 101, '34ded7c991f60baae1ed03764dbf2b1c.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `modification`
--

CREATE TABLE `modification` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modification`
--

INSERT INTO `modification` (`id`, `product_id`, `title`, `price`) VALUES
(1, 1, 'Silver', 300),
(2, 1, 'Black', 300),
(3, 1, 'Dark Black', 305),
(4, 1, 'Red', 310),
(5, 2, 'Silver', 80),
(6, 2, 'Red', 70);

-- --------------------------------------------------------

--
-- Структура таблицы `order`
--

CREATE TABLE `order` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT NULL,
  `currency` varchar(10) NOT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order`
--

INSERT INTO `order` (`id`, `user_id`, `status`, `update_at`, `currency`, `note`) VALUES
(6, 4, '0', '2020-12-13 05:20:59', 'USD', ''),
(9, 4, '0', '2020-12-13 07:41:27', 'RUB', ''),
(10, 10, '0', NULL, 'RUB', ''),
(11, 4, '0', NULL, 'RUB', ''),
(12, 10, '0', NULL, 'RUB', ''),
(13, 10, '0', NULL, 'RUB', ''),
(14, 4, '0', NULL, 'RUB', ''),
(15, 4, '0', NULL, 'RUB', ''),
(16, 11, '0', NULL, 'RUB', ''),
(17, 10, '0', '2020-12-13 07:41:41', 'RUB', ''),
(18, 4, '0', NULL, 'RUB', ''),
(19, 4, '0', NULL, 'RUB', '');

-- --------------------------------------------------------

--
-- Структура таблицы `order_product`
--

CREATE TABLE `order_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `qty`, `title`, `price`) VALUES
(7, 6, 48, 1, 'Смартфон Huawei Y5 Lite Black', 1000),
(10, 9, 76, 1, 'АКБ Partner Nokia 1100/N70/3650 1020 mAh (BL-5C)', 380),
(11, 9, 78, 1, 'АКБ Maverick Nokia 8800arte/5530xm/E66/E75 1000 mAh (BL-4U)', 456),
(12, 9, 49, 1, 'Смартфон Huawei Y5 Lite Black', 5928),
(13, 10, 51, 2, 'Смартфон Huawei Y6S Orchid Blue', 9880),
(14, 11, 51, 2, 'Смартфон Huawei Y6S Orchid Blue', 9880),
(15, 11, 56, 1, 'Смартфон ZTE Blade A3 черный', 3952),
(16, 12, 49, 1, 'Смартфон Huawei Y5 Lite Black', 5928),
(17, 13, 49, 1, 'Смартфон Huawei Y5 Lite Black', 5928),
(18, 14, 49, 1, 'Смартфон Huawei Y5 Lite Black', 5928),
(19, 15, 77, 1, 'АКБ Partner Samsung S5830/S5660 1400 mAh', 456),
(20, 16, 77, 1, 'АКБ Partner Samsung S5830/S5660 1400 mAh', 456),
(21, 17, 86, 1, 'Стекло защитное RedLine 4\"', 380),
(22, 18, 55, 1, 'Смартфон ZTE Blade A5 черный', 5928),
(23, 18, 88, 1, 'Накладка HOCO Paris iPhone 6 Plus кожа черная', 760),
(24, 19, 86, 1, 'Стекло защитное RedLine 4\"', 380),
(25, 19, 80, 1, 'Наушники с оголовьем Philips SHL3160WT/00 белые', 1368),
(26, 19, 51, 1, 'Смартфон Huawei Y6S Orchid Blue', 9880);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` tinyint(3) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `content` text,
  `price` float NOT NULL DEFAULT '0',
  `old_price` float NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'no_image.jpg',
  `hit` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `category_id`, `title`, `alias`, `content`, `price`, `old_price`, `status`, `keywords`, `description`, `img`, `hit`) VALUES
(49, 22, 'Смартфон Huawei Y5 Lite Black', 'smartfon-huawei-y5-lite-black', '', 78, 0, 1, 'Huawei Y5 Lite Black', 'Смартфон Huawei Y5 Lite Black', '71e68f247a368dc9960979d157a61818.jpg', 1),
(50, 22, 'Смартфон Huawei P Smart 2019 32Gb Aurora Blue', 'smartfon-huawei-p-smart-2019-32gb-aurora-blue', '<p>Краткое описание:</p>\r\n\r\n<ul>\r\n	<li>количество sim-карт: 2</li>\r\n	<li>диагональ: 6.2 дюйм.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>объем встроенной памяти: 32 Гб</li>\r\n	<li>интерфейсы: Wi-Fi 802.11n, Wi-Fi Direct, Bluetooth 4.2, USB</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>операционная система: Android</li>\r\n</ul>\r\n', 131, 0, 1, 'Huawei P Smart 2019 32Gb Aurora Blue', 'Смартфон Huawei P Smart 2019 32Gb Aurora Blue', '642f02278445d1def6364480a55c9fd9.jpg', 1),
(51, 22, 'Смартфон Huawei Y6S Orchid Blue', 'smartfon-huawei-y6s-orchid-blue', '<p>Краткое описание:</p>\r\n\r\n<ul>\r\n	<li>количество sim-карт: 2</li>\r\n	<li>диагональ: 6.09 дюйм.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>объем встроенной памяти: 64 Гб</li>\r\n	<li>интерфейсы: Wi-Fi 802.11n, Wi-Fi Direct, Bluetooth 4.2, USB</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>операционная система: Android</li>\r\n</ul>\r\n', 130, 0, 1, 'Смартфоны', 'Сотовый телефон Huawei Y6S Orchid Blue', 'cf8b31fff3a4b88eef77f4630e0190f2.jpg', 1),
(52, 24, 'Смартфон Samsung SM-A305FN/DS 32Gb bllue', 'smartfon-samsung-sm-a305fn-ds-32gb-bllue', '<ul>\r\n	<li>количество sim-карт: 2</li>\r\n	<li>диагональ: 6.4 дюйм.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>объем встроенной памяти: 32 Гб</li>\r\n	<li>интерфейсы: Wi-Fi 802.11ac, Bluetooth 5.0, USB, ANT+, NFC</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>операционная система: Android</li>\r\n</ul>\r\n', 170, 0, 1, 'Смартфоны', 'Смартфон Samsung SM-A305FN/DS 32Gb bllue', '31e0df2bc070ada277afdf0c48d3bd3c.jpg', 0),
(53, 25, 'Смартфон Honor View Blue', 'smartfon-honor-view-blue', '<p>Краткое описание:</p>\r\n\r\n<ul>\r\n	<li>количество sim-карт: 2</li>\r\n	<li>диагональ: 6.4 дюйм.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>объем встроенной памяти: 128 Гб</li>\r\n	<li>интерфейсы: Wi-Fi 802.11ac, Bluetooth 5.0, USB, ANT+, NFC</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>операционная система: Android</li>\r\n</ul>\r\n', 321, 0, 1, 'Смартфоны', 'Honor View Blue', 'e7efd3825235e39a92c764e28f80655a.jpg', 1),
(54, 23, 'Смартфон ZTE Blade L20 Smart зеленый', 'smartfon-zte-blade-l20-smart-zelenyy', '<p>Краткое описание:</p>\r\n\r\n<ul>\r\n	<li>количество sim-карт: 2</li>\r\n	<li>диагональ: 6.53 дюйм.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>объем встроенной памяти: 64 Гб</li>\r\n	<li>интерфейсы: Wi-Fi 802.11ac, Wi-Fi Direct, Bluetooth 5.0, IRDA, USB</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>операционная система: Android</li>\r\n</ul>\r\n', 150, 0, 1, 'Смартфоны', 'ZTE Blade L20 Smart зеленый', '5c0f6fb095ff24bfeed0235cc46364fc.jpg', 1),
(55, 23, 'Смартфон ZTE Blade A5 черный', 'smartfon-zte-blade-a5-chernyy', '<p>Краткое описание:</p>\r\n\r\n<ul>\r\n	<li>количество sim-карт: 2</li>\r\n	<li>диагональ: 5.45 дюйм.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>объем встроенной памяти: 16 Гб</li>\r\n	<li>интерфейсы: Wi-Fi 802.11n, Wi-Fi Direct, Bluetooth 4.2, USB</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>операционная система: Android</li>\r\n</ul>\r\n', 78, 0, 1, 'Смартфоны', 'ZTE Blade A5 черный', '143bd3170d0d7541584548d37501d850.jpg', 1),
(56, 23, 'Смартфон ZTE Blade A3 черный', 'smartfon-zte-blade-a3-chernyy', '<p>Краткое описание:</p>\r\n\r\n<ul>\r\n	<li>количество sim-карт: 2</li>\r\n	<li>диагональ: 5 дюйм.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>объем встроенной памяти: 16 Гб</li>\r\n	<li>интерфейсы: Wi-Fi 802.11n, Wi-Fi Direct, Bluetooth 4.2, USB</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>операционная система: Android</li>\r\n</ul>\r\n', 52, 0, 1, 'Смартфоны', 'ZTE Blade A3 черный', 'a6741caa29a16a45531b5e508bdd43ef.jpg', 1),
(57, 23, 'Смартфон ZTE Blade A7 2020 голубой', 'smartfon-zte-blade-a7-2020-goluboy', '<p>Краткое описание:</p>\r\n\r\n<ul>\r\n	<li>количество sim-карт: 2</li>\r\n	<li>диагональ: 6.09 дюйм.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>объем встроенной памяти: 32 Гб</li>\r\n	<li>интерфейсы: Wi-Fi 802.11n, Wi-Fi Direct, Bluetooth 4.2, USB</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>операционная система: Android</li>\r\n</ul>\r\n', 98, 100, 1, 'Смартфоны', 'ZTE Blade A7 2020 голубой', 'a080fd4c22856d02fb3aae604517a3c1.jpg', 1),
(58, 22, 'Смартфон Huawei P40 Lite E Aurora Blue', 'smartfon-huawei-p40-lite-e-aurora-blue', '<p>Краткое описание:</p>\r\n\r\n<ul>\r\n	<li>количество sim-карт: 1</li>\r\n	<li>объем встроенной памяти: 64 Гб</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>интерфейсы: Wi-Fi 802.11ac, Wi-Fi Direct, Bluetooth 5.0, IRDA, USB</li>\r\n	<li>операционная система: Android</li>\r\n</ul>\r\n', 150, 200, 1, 'Смартфоны', 'Huawei P40 Lite E Aurora Blue', '016005bfb11aed17cb377378bf383b7c.jpg', 1),
(59, 22, 'Смартфон Huawei Y8Р black', 'smartfon-huawei-y8r-black', '<p>Краткое описание:</p>\r\n\r\n<ul>\r\n	<li>количество sim-карт: 2</li>\r\n	<li>диагональ: 6.3 дюйм.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>объем встроенной памяти: 128 Гб</li>\r\n	<li>интерфейсы: Wi-Fi 802.11ac, Wi-Fi Direct, Bluetooth 5.0, IRDA, USB</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>операционная система: Android</li>\r\n</ul>\r\n', 183, 0, 1, 'Смартфоны', 'Huawei Y8Р black', '851e2ebfca2a4b730e05f4569710f3af.jpg', 1),
(60, 22, 'Смартфон Huawei Y8Р breathing сrystal', 'smartfon-huawei-y8r-breathing-srystal', '<h2>Общие характеристики</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип:</td>\r\n			<td>смартфон</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система:</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Версия операционной системы:</td>\r\n			<td>Android 10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество SIM-карт:</td>\r\n			<td>2</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Экран</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип экрана:</td>\r\n			<td>цветной AMOLED, 16.78 млн цветов, сенсорный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ:</td>\r\n			<td>6.3 дюйм.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размер изображения:</td>\r\n			<td>2400x1080</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автоматический поворот экрана:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Звонки</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип мелодий:</td>\r\n			<td>полифонические, MP3-мелодии</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Виброзвонок:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Мультимедийные возможности</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Фотокамера:</td>\r\n			<td>48/8/2 Мп</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Функции камеры:</td>\r\n			<td>автофокус</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Запись видеороликов:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера:</td>\r\n			<td>16 Мп</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аудио:</td>\r\n			<td>MP3, AAC, WAV, WMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников:</td>\r\n			<td>3.5 мм</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Связь</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Стандарт:</td>\r\n			<td>GSM 900/1800/1900, 3G, 4G LTE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Интерфейсы:</td>\r\n			<td>Wi-Fi 802.11ac, Wi-Fi Direct, Bluetooth 5.0, IRDA, USB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация:</td>\r\n			<td>GPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cистема A-GPS:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Синхронизация с компьютером:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Память и процессор</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Процессор:</td>\r\n			<td>HiSilicon Kirin 710</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер процессора:</td>\r\n			<td>8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Видеопроцессор:</td>\r\n			<td>Mali-G51 MP4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти:</td>\r\n			<td>128 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти:</td>\r\n			<td>4 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка карт памяти:</td>\r\n			<td>microSD (TransFlash), объемом до 256 Гб</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Питание</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Емкость аккумулятора:</td>\r\n			<td>4000 мАч</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Другие функции</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Фонарик:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Датчики:</td>\r\n			<td>освещенности, приближения, компас, считывание отпечатка пальца</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 183, 0, 1, 'Смартфоны', 'Huawei Y8Р breathing сrystal', 'b1ad78382bfacaba93c5aa41861cc064.jpg', 1),
(61, 23, 'Смартфон ZTE Blade A5 2020 синий', 'smartfon-zte-blade-a5-2020-siniy', '<h2>Общие характеристики</h2>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип:</td>\r\n			<td>смартфон</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система:</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Версия операционной системы:</td>\r\n			<td>Android 9.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество SIM-карт:</td>\r\n			<td>2</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Экран</h2>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип экрана:</td>\r\n			<td>цветной IPS, 16.78 млн цветов, сенсорный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ:</td>\r\n			<td>6.09 дюйм.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размер изображения:</td>\r\n			<td>1560x720</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автоматический поворот экрана:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Звонки</h2>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип мелодий:</td>\r\n			<td>полифонические, MP3-мелодии</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Виброзвонок:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Мультимедийные возможности</h2>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Фотокамера:</td>\r\n			<td>13/2 Мп</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Запись видеороликов:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера:</td>\r\n			<td>8 Мп</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аудио:</td>\r\n			<td>MP3, AAC, WAV, WMA, FM-радио</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников:</td>\r\n			<td>3.5 мм</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Связь</h2>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Стандарт:</td>\r\n			<td>GSM 900/1800/1900, 3G, 4G LTE, LTE-A, VoLTE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Интерфейсы:</td>\r\n			<td>Wi-Fi 802.11n, Wi-Fi Direct, Bluetooth 4.2, USB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация:</td>\r\n			<td>GPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cистема A-GPS:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Синхронизация с компьютером:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Память и процессор</h2>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Процессор:</td>\r\n			<td>Unisoc SC9863A</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер процессора:</td>\r\n			<td>8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти:</td>\r\n			<td>32 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти:</td>\r\n			<td>2 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка карт памяти:</td>\r\n			<td>есть, объемом до 512 Гб</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Питание</h2>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Емкость аккумулятора:</td>\r\n			<td>3200 мАч</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Другие функции</h2>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Фонарик:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Датчики:</td>\r\n			<td>освещенности, приближения</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 89, 100, 1, 'Смартфоны', 'ZTE Blade A5 2020 синий', 'be2b9c00e039bdf9e4ae5dbd6d55b43b.jpg', 0),
(62, 23, 'Смартфон  ZTE Blade L20 Smart красный', 'smartfon-zte-blade-l20-smart-krasnyy', '<h2>Общие характеристики</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип:</td>\r\n			<td>смартфон</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система:</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Версия операционной системы:</td>\r\n			<td>Android 9.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество SIM-карт:</td>\r\n			<td>2</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Экран</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип экрана:</td>\r\n			<td>цветной TFT, 16.78 млн. цветов, сенсорный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ:</td>\r\n			<td>6.49 дюйм.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размер изображения:</td>\r\n			<td>1560x720</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автоматический поворот экрана:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Звонки</h2>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип мелодий:</td>\r\n			<td>полифонические, MP3-мелодии</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Виброзвонок:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Мультимедийные возможности</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Фотокамера:</td>\r\n			<td>16/8/2 Мп</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Запись видеороликов:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера:</td>\r\n			<td>8 Мп</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аудио:</td>\r\n			<td>MP3, AAC, WAV, WMA, FM-радио</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников:</td>\r\n			<td>3.5 мм</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Связь</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Стандарт:</td>\r\n			<td>GSM 900/1800/1900, 3G, 4G LTE, LTE-A Cat. 7</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Интерфейсы:</td>\r\n			<td>Wi-Fi 802.11ac, Bluetooth 4.2, NFC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация:</td>\r\n			<td>GPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Синхронизация с компьютером:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Память и процессор</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Процессор:</td>\r\n			<td>GPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер процессора:</td>\r\n			<td>8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Видеопроцессор:</td>\r\n			<td>Mali-G72 MP3</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти:</td>\r\n			<td>128 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти:</td>\r\n			<td>4 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка карт памяти:</td>\r\n			<td>есть, объемом до 512 Гб</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Питание</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Емкость аккумулятора:</td>\r\n			<td>5000 мАч</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Другие функции</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Датчики:</td>\r\n			<td>освещенности, приближения, компас, считывание отпечатка пальца</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 150, 155, 1, 'Смартфоны', ' ZTE Blade L20 Smart красный', '2915748c56bf8372a284481dc901c338.jpg', 0),
(63, 24, 'Смартфон Samsung SM-A405FN/DS 64Gb black', 'smartfon-samsung-sm-a405fn-ds-64gb-black', '<h2>Общие характеристики</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип:</td>\r\n			<td>смартфон</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система:</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество SIM-карт:</td>\r\n			<td>2</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Экран</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип экрана:</td>\r\n			<td>цветной AMOLED, 16.78 млн цветов, сенсорный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ:</td>\r\n			<td>5.9 дюйм.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размер изображения:</td>\r\n			<td>2340x1080</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автоматический поворот экрана:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Звонки</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип мелодий:</td>\r\n			<td>полифонические, MP3-мелодии</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Виброзвонок:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Мультимедийные возможности</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Фотокамера:</td>\r\n			<td>16/5 Мп</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера:</td>\r\n			<td>25 Мп</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аудио:</td>\r\n			<td>MP3, AAC, WAV, WMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников:</td>\r\n			<td>3.5 мм</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Связь</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Стандарт:</td>\r\n			<td>GSM 900/1800/1900, 3G, 4G LTE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Интерфейсы:</td>\r\n			<td>Wi-Fi 802.11ac, Bluetooth 5.0, USB, ANT+, NFC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация:</td>\r\n			<td>GPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cистема A-GPS:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Синхронизация с компьютером:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Память и процессор</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Количество ядер процессора:</td>\r\n			<td>8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти:</td>\r\n			<td>64 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти:</td>\r\n			<td>4 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка карт памяти:</td>\r\n			<td>есть, объемом до 512 Гб</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Питание</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Емкость аккумулятора:</td>\r\n			<td>3100 мАч</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Другие функции</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Датчики:</td>\r\n			<td>освещенности, приближения, компас, считывание отпечатка пальца</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 209, 210, 1, 'Смартфоны', 'Samsung SM-A405FN/DS 64Gb black', '2328a8b00fb1ba43950a8cb546295903.jpg', 0),
(64, 24, 'Смартфон Samsung SM-A505FN/DS 64Gb white', 'smartfon-samsung-sm-a505fn-ds-64gb-white', '<h2>Общие характеристики</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип:</td>\r\n			<td>смартфон</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система:</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Версия операционной системы:</td>\r\n			<td>Android 9.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество SIM-карт:</td>\r\n			<td>2</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Экран</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип экрана:</td>\r\n			<td>цветной AMOLED, 16.78 млн цветов, сенсорный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ:</td>\r\n			<td>6.4 дюйм.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размер изображения:</td>\r\n			<td>2340x1080</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автоматический поворот экрана:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Звонки</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип мелодий:</td>\r\n			<td>полифонические, MP3-мелодии</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Виброзвонок:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Мультимедийные возможности</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Фотокамера:</td>\r\n			<td>25/8/5 Мп</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Запись видеороликов:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера:</td>\r\n			<td>25 Мп</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аудио:</td>\r\n			<td>MP3, AAC, WAV, WMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников:</td>\r\n			<td>3.5 мм</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Связь</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Стандарт:</td>\r\n			<td>GSM 900/1800/1900, 3G, 4G LTE, LTE-A Cat. 6</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Интерфейсы:</td>\r\n			<td>Wi-Fi 802.11ac, Bluetooth 5.0, USB, ANT+, NFC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация:</td>\r\n			<td>GPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cистема A-GPS:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Синхронизация с компьютером:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Память и процессор</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Процессор:</td>\r\n			<td>Samsung Exynos 9610</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер процессора:</td>\r\n			<td>8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Видеопроцессор:</td>\r\n			<td>Mali-G72 MP3</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти:</td>\r\n			<td>64 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти:</td>\r\n			<td>4 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка карт памяти:</td>\r\n			<td>есть, объемом до 512 Гб</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Питание</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Емкость аккумулятора:</td>\r\n			<td>4000 мАч</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Другие функции</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Датчики:</td>\r\n			<td>освещенности, приближения, компас, считывание отпечатка пальца</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 216, 220, 1, 'Смартфоны', 'Samsung SM-A505FN/DS 64Gb white', 'b56c13bf9ee50485313a7bf277ab64e6.jpg', 0),
(65, 24, 'Смартфон Samsung SM-A515F/DMS 64Gb black', 'smartfon-samsung-sm-a515f-dms-64gb-black', '<h2>Общие характеристики</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип:</td>\r\n			<td>смартфон</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система:</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Версия операционной системы:</td>\r\n			<td>Android 10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество SIM-карт:</td>\r\n			<td>2</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Экран</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип экрана:</td>\r\n			<td>цветной AMOLED, 16.78 млн цветов, сенсорный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ:</td>\r\n			<td>6.5 дюйм.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размер изображения:</td>\r\n			<td>2400x1080</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автоматический поворот экрана:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Звонки</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип мелодий:</td>\r\n			<td>полифонические, MP3-мелодии</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Виброзвонок:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Мультимедийные возможности</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Фотокамера:</td>\r\n			<td>48/12/5/5 Мп</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера:</td>\r\n			<td>32 Мп</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аудио:</td>\r\n			<td>MP3, AAC, WAV, WMA</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Связь</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Стандарт:</td>\r\n			<td>GSM 900/1800/1900, 3G, 4G LTE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Интерфейсы:</td>\r\n			<td>Wi-Fi 802.11ac, Bluetooth 5.0, USB, ANT+, NFC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация:</td>\r\n			<td>GPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cистема A-GPS:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Синхронизация с компьютером:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Память и процессор</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Количество ядер процессора:</td>\r\n			<td>8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти:</td>\r\n			<td>64 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти:</td>\r\n			<td>4 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка карт памяти:</td>\r\n			<td>есть, объемом до 512 Гб</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Питание</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Емкость аккумулятора:</td>\r\n			<td>4000 мАч</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Другие функции</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Фонарик:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Датчики:</td>\r\n			<td>освещенности, приближения, компас, считывание отпечатка пальца</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 255, 260, 1, 'Смартфоны', 'Samsung SM-A515F/DMS 64Gb black', '2ccfc15a1188e3ce07251ef2ecf5c1e8.jpg', 1),
(66, 24, 'Смартфон Samsung SM-A315F 64Gb white', 'smartfon-samsung-sm-a315f-64gb-white', '<h2>Общие характеристики</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип:</td>\r\n			<td>смартфон</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система:</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Версия операционной системы:</td>\r\n			<td>Android 10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество SIM-карт:</td>\r\n			<td>2</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Экран</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип экрана:</td>\r\n			<td>цветной AMOLED, 16.78 млн цветов, сенсорный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ:</td>\r\n			<td>6.4 дюйм.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размер изображения:</td>\r\n			<td>2400x1080</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автоматический поворот экрана:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Звонки</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип мелодий:</td>\r\n			<td>полифонические, MP3-мелодии</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Виброзвонок:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Мультимедийные возможности</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Фотокамера:</td>\r\n			<td>48/5/8/5 Мп</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Функции камеры:</td>\r\n			<td>автофокус</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Запись видеороликов:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера:</td>\r\n			<td>20 Мп</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аудио:</td>\r\n			<td>MP3, AAC, WAV, WMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников:</td>\r\n			<td>3.5 мм</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Связь</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Стандарт:</td>\r\n			<td>GSM 900/1800/1900, 3G, 4G LTE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Интерфейсы:</td>\r\n			<td>Wi-Fi 802.11ac, Wi-Fi Direct, Bluetooth 5.0, IRDA, USB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация:</td>\r\n			<td>GPS</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Память и процессор</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Процессор:</td>\r\n			<td>MediaTek Helio P65</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер процессора:</td>\r\n			<td>8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Видеопроцессор:</td>\r\n			<td>Mali-G52</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти:</td>\r\n			<td>64 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти:</td>\r\n			<td>4 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка карт памяти:</td>\r\n			<td>есть, объемом до 512 Гб</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Питание</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Емкость аккумулятора:</td>\r\n			<td>5000 мАч</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Другие функции</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Фонарик:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Датчики:</td>\r\n			<td>освещенности, приближения, компас, считывание отпечатка пальца</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 222, 0, 1, 'Смартфоны', 'Samsung SM-A315F 64Gb white', '7d2fce7d0d710e17a482cdafc4644fad.jpg', 1),
(67, 25, 'Смартфон Honor 10 Lite 64Gb Blue', 'smartfon-honor-10-lite-64gb-blue', '<h2>Общие характеристики</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип:</td>\r\n			<td>смартфон</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система:</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Версия операционной системы:</td>\r\n			<td>Android 9.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество SIM-карт:</td>\r\n			<td>2</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Экран</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип экрана:</td>\r\n			<td>цветной IPS, сенсорный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ:</td>\r\n			<td>6.26 дюйм</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размер изображения:</td>\r\n			<td>2340x1080</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автоматический поворот экрана:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Звонки</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип мелодий:</td>\r\n			<td>полифонические, MP3-мелодии</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Виброзвонок:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Мультимедийные возможности</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Фотокамера:</td>\r\n			<td>13/2 Мп</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Запись видеороликов:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера:</td>\r\n			<td>24 Мп</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аудио:</td>\r\n			<td>MP3, AAC, WAV, WMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников:</td>\r\n			<td>3.5 мм</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Связь</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Стандарт:</td>\r\n			<td>GSM 900/1800/1900, 3G, 4G LTE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Интерфейсы:</td>\r\n			<td>Wi-Fi 802.11n, Wi-Fi Direct, Bluetooth 4.2, USB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация:</td>\r\n			<td>GPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Синхронизация с компьютером:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Память и процессор</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Процессор:</td>\r\n			<td>HiSilicon Kirin 710</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер процессора:</td>\r\n			<td>8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Видеопроцессор:</td>\r\n			<td>Mali-G51 MP4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти:</td>\r\n			<td>64 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти:</td>\r\n			<td>3 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка карт памяти:</td>\r\n			<td>есть, объемом до 512 Гб</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Питание</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Емкость аккумулятора:</td>\r\n			<td>3400 мАч</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Другие функции</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Фонарик:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Датчики:</td>\r\n			<td>освещенности, приближения, компас, считывание отпечатка пальца</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 170, 0, 1, 'Смартфоны', 'Honor 10 Lite 64Gb Blue', 'fa66afb44ebfa6d3aea6514ec30f818a.jpg', 1),
(68, 25, 'Смартфон Honor 9A 64Gb Black', 'smartfon-honor-9a-64gb-black', '<h2>Общие характеристики</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип:</td>\r\n			<td>смартфон</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система:</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Версия операционной системы:</td>\r\n			<td>Android 10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество SIM-карт:</td>\r\n			<td>2</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Экран</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип экрана:</td>\r\n			<td>цветной IPS, сенсорный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ:</td>\r\n			<td>6.3 дюйм.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автоматический поворот экрана:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Звонки</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип мелодий:</td>\r\n			<td>полифонические, MP3-мелодии</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Виброзвонок:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Мультимедийные возможности</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Фотокамера:</td>\r\n			<td>13/5/2 Мп</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Функции камеры:</td>\r\n			<td>автофокус</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Запись видеороликов:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера:</td>\r\n			<td>8 Мп</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аудио:</td>\r\n			<td>MP3, AAC, WAV, WMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников:</td>\r\n			<td>3.5 мм</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Связь</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Стандарт:</td>\r\n			<td>GSM 900/1800/1900, 3G, 4G LTE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Интерфейсы:</td>\r\n			<td>Wi-Fi 802.11ac, Wi-Fi Direct, Bluetooth 5.0, IRDA, USB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация:</td>\r\n			<td>GPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Синхронизация с компьютером:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Память и процессор</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Процессор:</td>\r\n			<td>MediaTek МТ6762R</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер процессора:</td>\r\n			<td>8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти:</td>\r\n			<td>64 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти:</td>\r\n			<td>3 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка карт памяти:</td>\r\n			<td>есть, объемом до 512 Гб</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Питание</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип аккумулятора:</td>\r\n			<td>5000 мAч</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Другие функции</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Фонарик:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Датчики:</td>\r\n			<td>считывание отпечатка пальца</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 143, 150, 1, 'Смартфоны', 'Honor 9A 64Gb Black', '9860ad4e28aaffeeaf6d189b39611aab.jpg', 1),
(69, 25, 'Смартфон Honor 8A Prime Navy Blue', 'smartfon-honor-8a-prime-navy-blue', '<h2>Общие характеристики</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип:</td>\r\n			<td>смартфон</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система:</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Версия операционной системы:</td>\r\n			<td>Android 9.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество SIM-карт:</td>\r\n			<td>2</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Экран</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип экрана:</td>\r\n			<td>цветной, сенсорный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ:</td>\r\n			<td>6.09 дюйм.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размер изображения:</td>\r\n			<td>1560x720</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автоматический поворот экрана:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Звонки</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип мелодий:</td>\r\n			<td>полифонические, MP3-мелодии</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Виброзвонок:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Мультимедийные возможности</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Фотокамера:</td>\r\n			<td>13 Мп</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Запись видеороликов:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера:</td>\r\n			<td>8 Мп</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аудио:</td>\r\n			<td>MP3, AAC, WAV, WMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников:</td>\r\n			<td>3.5 мм</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Связь</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Стандарт:</td>\r\n			<td>GSM 900/1800/1900, 3G, 4G LTE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Интерфейсы:</td>\r\n			<td>Wi-Fi 802.11n, Wi-Fi Direct, Bluetooth 4.2, USB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация:</td>\r\n			<td>GPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cистема A-GPS:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Память и процессор</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Процессор:</td>\r\n			<td>MediaTek Helio P35</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер процессора:</td>\r\n			<td>8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Видеопроцессор:</td>\r\n			<td>PowerVR GE8320</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти:</td>\r\n			<td>64 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти:</td>\r\n			<td>3 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка карт памяти:</td>\r\n			<td>есть, объемом до 512 Гб</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Питание</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Емкость аккумулятора:</td>\r\n			<td>3020 мАч</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Другие функции</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Фонарик:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Датчики:</td>\r\n			<td>освещенности, приближения, компас, считывание отпечатка пальца</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 131, 135, 1, 'Смартфоны', 'Honor 8A Prime Navy Blue', '6665c97ed0621d2948d00ba269e89532.jpg', 1),
(70, 25, 'Смартфон Honor 8A Prime Midnight Black', 'smartfon-honor-8a-prime-midnight-black', '<h2>Общие характеристики</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип:</td>\r\n			<td>смартфон</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система:</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество SIM-карт:</td>\r\n			<td>2</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Экран</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип экрана:</td>\r\n			<td>цветной, сенсорный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ:</td>\r\n			<td>6.09 дюйм.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размер изображения:</td>\r\n			<td>1560x720</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автоматический поворот экрана:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Звонки</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип мелодий:</td>\r\n			<td>полифонические, MP3-мелодии</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Виброзвонок:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Мультимедийные возможности</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Фотокамера:</td>\r\n			<td>13 Мп</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Запись видеороликов:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера:</td>\r\n			<td>8 Мп</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аудио:</td>\r\n			<td>MP3, AAC, WAV, WMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников:</td>\r\n			<td>3.5 мм</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Связь</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Стандарт:</td>\r\n			<td>GSM 900/1800/1900, 3G, 4G LTE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Интерфейсы:</td>\r\n			<td>Wi-Fi 802.11n, Wi-Fi Direct, Bluetooth 4.2, USB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация:</td>\r\n			<td>GPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cистема A-GPS:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Синхронизация с компьютером:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Память и процессор</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Процессор:</td>\r\n			<td>MediaTek Helio P35</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер процессора:</td>\r\n			<td>8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Видеопроцессор:</td>\r\n			<td>PowerVR GE8320</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти:</td>\r\n			<td>64 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти:</td>\r\n			<td>3 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка карт памяти:</td>\r\n			<td>есть, объемом до 512 Гб</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Питание</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Емкость аккумулятора:</td>\r\n			<td>3020 мАч</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Другие функции</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Фонарик:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Датчики:</td>\r\n			<td>освещенности, приближения, компас, считывание отпечатка пальца</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 131, 0, 1, 'Смартфоны', 'Honor 8A Prime Midnight Black', 'e5ea490beec1b09d204e12d0d0eb25cd.jpg', 0),
(71, 27, 'Смартфон Xiaomi MI Play 64GB Space Black', 'smartfon-xiaomi-mi-play-64gb-space-black', '<h2>Общие характеристики</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип:</td>\r\n			<td>смартфон</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система:</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Версия операционной системы:</td>\r\n			<td>Android 9.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество SIM-карт:</td>\r\n			<td>2</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Экран</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип экрана:</td>\r\n			<td>цветной IPS, сенсорный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ:</td>\r\n			<td>5.84 дюйм.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размер изображения:</td>\r\n			<td>2280x1080</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автоматический поворот экрана:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Звонки</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип мелодий:</td>\r\n			<td>полифонические, MP3-мелодии</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Виброзвонок:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Мультимедийные возможности</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Фотокамера:</td>\r\n			<td>12/2 Мп</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Функции камеры:</td>\r\n			<td>автофокус</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Запись видеороликов:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера:</td>\r\n			<td>8 Мп</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аудио:</td>\r\n			<td>MP3, AAC, WAV, WMA, FM-радио</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников:</td>\r\n			<td>3.5 мм</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Связь</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Стандарт:</td>\r\n			<td>GSM 900/1800/1900, 3G, 4G LTE, LTE-A Cat. 4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Интерфейсы:</td>\r\n			<td>Wi-Fi 802.11n, Wi-Fi Direct, Bluetooth 4.2, USB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация:</td>\r\n			<td>GPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cистема A-GPS:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Синхронизация с компьютером:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Память и процессор</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Процессор:</td>\r\n			<td>MediaTek Helio P35</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер процессора:</td>\r\n			<td>8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Видеопроцессор:</td>\r\n			<td>PowerVR GE8320</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти:</td>\r\n			<td>64 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти:</td>\r\n			<td>4 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка карт памяти:</td>\r\n			<td>microSD (TransFlash),объемом до 400 Гб (совмещен со слотом для второй SIM-карты)</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Питание</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Емкость аккумулятора:</td>\r\n			<td>3000 мАч</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Другие функции</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Датчики:</td>\r\n			<td>освещенности, приближения, компас, считывание отпечатка пальца</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 104, 105, 1, 'Смартфоны', 'Xiaomi MI Play 64GB Space Black', '79862b7de3b811f92ff13fe0c4307b72.jpg', 1),
(72, 27, 'Смартфон Xiaomi Redmi Go Black', 'smartfon-xiaomi-redmi-go-black', '<h2>Общие характеристики</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип:</td>\r\n			<td>смартфон</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система:</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Версия операционной системы:</td>\r\n			<td>Android 8.1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество SIM-карт:</td>\r\n			<td>2</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Экран</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип экрана:</td>\r\n			<td>цветной, сенсорный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ:</td>\r\n			<td>5 дюйм.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размер изображения:</td>\r\n			<td>1920x1080</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автоматический поворот экрана:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Звонки</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип мелодий:</td>\r\n			<td>полифонические, MP3-мелодии</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Виброзвонок:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Мультимедийные возможности</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Фотокамера:</td>\r\n			<td>8 Мп</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Запись видеороликов:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера:</td>\r\n			<td>5 Мп</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аудио:</td>\r\n			<td>MP3, AAC, WAV, WMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников:</td>\r\n			<td>3.5 мм</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Связь</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Стандарт:</td>\r\n			<td>GSM 900/1800/1900, 3G, 4G LTE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Интерфейсы:</td>\r\n			<td>Wi-Fi 802.11n, Bluetooth 4.1, USB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация:</td>\r\n			<td>GPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cистема A-GPS:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Синхронизация с компьютером:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Память и процессор</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Процессор:</td>\r\n			<td>Qualcomm Snapdragon 425 MSM8917</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер процессора:</td>\r\n			<td>4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Видеопроцессор:</td>\r\n			<td>Adreno 308</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти:</td>\r\n			<td>8 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти:</td>\r\n			<td>1 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2><br />\r\nПитание</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Емкость аккумулятора:</td>\r\n			<td>3000 мАч</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Другие функции</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Датчики:</td>\r\n			<td>освещенности, приближения</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 66, 0, 1, 'Смартфоны', 'Xiaomi Redmi Go Black', 'f8e347aac61476a4c1fcf450b68ffcb6.jpg', 0);
INSERT INTO `product` (`id`, `category_id`, `title`, `alias`, `content`, `price`, `old_price`, `status`, `keywords`, `description`, `img`, `hit`) VALUES
(73, 27, 'Смартфон Xiaomi Redmi 9С 64GB Sunrise Orange', 'smartfon-xiaomi-redmi-9s-64gb-sunrise-orange', '<h2>Общие характеристики</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип:</td>\r\n			<td>смартфон</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система:</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Версия операционной системы:</td>\r\n			<td>Android 10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество SIM-карт:</td>\r\n			<td>2</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Экран</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип экрана:</td>\r\n			<td>цветной, сенсорный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ:</td>\r\n			<td>6.53 дюйм.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размер изображения:</td>\r\n			<td>1600x720</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автоматический поворот экрана:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Звонки</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип мелодий:</td>\r\n			<td>полифонические, MP3-мелодии</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Виброзвонок:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Мультимедийные возможности</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Фотокамера:</td>\r\n			<td>13/2/2 Мп</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Функции камеры:</td>\r\n			<td>автофокус, режим макросъемки</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера:</td>\r\n			<td>5 Мп</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аудио:</td>\r\n			<td>MP3, AAC, WAV, WMA, FM-радио</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников:</td>\r\n			<td>3.5 мм</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Связь</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Стандарт:</td>\r\n			<td>GSM 900/1800/1900, 3G, 4G LTE, LTE-A, VoLTE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Интерфейсы:</td>\r\n			<td>Wi-Fi 802.11ac, Wi-Fi Direct, Bluetooth 5.0, IRDA, USB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация:</td>\r\n			<td>GPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Синхронизация с компьютером:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Память и процессор</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Процессор:</td>\r\n			<td>MediaTek Helio G35</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер процессора:</td>\r\n			<td>8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Видеопроцессор:</td>\r\n			<td>PowerVR GE8320</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти:</td>\r\n			<td>64 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти:</td>\r\n			<td>3 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка карт памяти:</td>\r\n			<td>есть, объемом до 512 Гб</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Питание</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Емкость аккумулятора:</td>\r\n			<td>5000 мАч</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Другие функции</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Фонарик:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Датчики:</td>\r\n			<td>освещенности, приближения, компас, считывание отпечатка пальца</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 131, 0, 1, 'Смартфоны', 'Xiaomi Redmi 9С 64GB Sunrise Orange', '7151b2b28bb9f1251eeb1c9b61dc1de6.jpg', 1),
(74, 27, 'Смартфон Xiaomi Redmi Note 8Т 4/64GB Sapphire Blue', 'smartfon-xiaomi-redmi-note-8t-4-64gb-sapphire-blue', '<h2>Общие характеристики</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип:</td>\r\n			<td>смартфон</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система:</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Версия операционной системы:</td>\r\n			<td>Android 9.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество SIM-карт:</td>\r\n			<td>2</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Экран</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип экрана:</td>\r\n			<td>цветной IPS, сенсорный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ:</td>\r\n			<td>6.3 дюйм.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размер изображения:</td>\r\n			<td>2340x1080</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автоматический поворот экрана:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Звонки</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип мелодий:</td>\r\n			<td>полифонические, MP3-мелодии</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Виброзвонок:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Мультимедийные возможности</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Фотокамера:</td>\r\n			<td>48/8/2/2 Мп</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Запись видеороликов:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера:</td>\r\n			<td>13 Мп</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аудио:</td>\r\n			<td>MP3, AAC, WAV, WMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников:</td>\r\n			<td>3.5 мм</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Связь</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Стандарт:</td>\r\n			<td>GSM 900/1800/1900, 3G, 4G LTE, LTE-A, VoLTE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Интерфейсы:</td>\r\n			<td>Wi-Fi 802.11n, Wi-Fi Direct, Bluetooth 4.2, USB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация:</td>\r\n			<td>GPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cистема A-GPS:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Синхронизация с компьютером:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Память и процессор</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Процессор:</td>\r\n			<td>Qualcomm Snapdragon 665</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер процессора:</td>\r\n			<td>8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Видеопроцессор:</td>\r\n			<td>Adreno 610</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти:</td>\r\n			<td>64 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти:</td>\r\n			<td>4 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка карт памяти:</td>\r\n			<td>microSD (TransFlash)</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Питание</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Емкость аккумулятора:</td>\r\n			<td>4000 мАч</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Другие функции</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Датчики:</td>\r\n			<td>освещенности, приближения, компас, считывание отпечатка пальца</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 196, 200, 1, 'Смартфоны', 'Xiaomi Redmi Note 8Т 4/64GB Sapphire Blue', 'd6a2dc6075a53b342af0e3b09e5aa81a.jpg', 1),
(75, 27, 'Смартфон Xiaomi Redmi 8 3/32GB Red', 'smartfon-xiaomi-redmi-8-3-32gb-red', '<h2>Общие характеристики</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип:</td>\r\n			<td>смартфон</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Операционная система:</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Версия операционной системы:</td>\r\n			<td>Android 9.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество SIM-карт:</td>\r\n			<td>2</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Экран</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип экрана:</td>\r\n			<td>цветной IPS, сенсорный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Диагональ:</td>\r\n			<td>6.22 дюйм.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Размер изображения:</td>\r\n			<td>1520x720</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Автоматический поворот экрана:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Звонки</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Тип мелодий:</td>\r\n			<td>полифонические, MP3-мелодии</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Виброзвонок:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Мультимедийные возможности</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Фотокамера:</td>\r\n			<td>12/2 Мп</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Функции камеры:</td>\r\n			<td>автофокус</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Запись видеороликов:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Фронтальная камера:</td>\r\n			<td>8 Мп</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Аудио:</td>\r\n			<td>MP3, AAC, WAV, WMA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Разъем для наушников:</td>\r\n			<td>3.5 мм</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Связь</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Стандарт:</td>\r\n			<td>GSM 900/1800/1900, 3G, 4G LTE, LTE-A, VoLTE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Интерфейсы:</td>\r\n			<td>Wi-Fi 802.11n, Wi-Fi Direct, Bluetooth 4.2, USB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Спутниковая навигация:</td>\r\n			<td>GPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cистема A-GPS:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Синхронизация с компьютером:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Память и процессор</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Процессор:</td>\r\n			<td>Qualcomm Snapdragon 439</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Количество ядер процессора:</td>\r\n			<td>8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Видеопроцессор:</td>\r\n			<td>Adreno 505</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем встроенной памяти:</td>\r\n			<td>32 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Объем оперативной памяти:</td>\r\n			<td>3 Гб</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Поддержка карт памяти:</td>\r\n			<td>есть, объемом до 512 Гб</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Питание</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Емкость аккумулятора:</td>\r\n			<td>5000 мАч</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>Другие функции</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Фонарик:</td>\r\n			<td>есть</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Датчики:</td>\r\n			<td>освещенности, приближения, компас, считывание отпечатка пальца</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 130, 0, 1, 'Смартфоны', 'Xiaomi Redmi 8 3/32GB Red', 'd2649e40abb44ae22d9c9caed34166b1.jpg', 1),
(76, 34, 'АКБ Partner Nokia 1100/N70/3650 1020 mAh (BL-5C)', 'akb-partner-nokia-1100-n70-3650-1020-mah-bl-5c', '', 5, 0, 1, 'АКБ', 'АКБ Partner Nokia 1100/N70/3650 1020 mAh (BL-5C)', 'b851d8388bd44409fc6692acf3d5a4ef.jpg', 0),
(77, 34, 'АКБ Partner Samsung S5830/S5660 1400 mAh', 'akb-partner-samsung-s5830-s5660-1400-mah', '', 6, 0, 1, 'АКБ', 'АКБ Partner Samsung S5830/S5660 1400 mAh', '7f80a95c6f525f861b334305b9b1329c.jpg', 0),
(78, 34, 'АКБ Maverick Nokia 8800arte/5530xm/E66/E75 1000 mAh (BL-4U)', 'akb-maverick-nokia-8800arte-5530xm-e66-e75-1000-mah-bl-4u', '', 6, 0, 1, 'АКБ Maverick Nokia 8800arte/5530xm/E66/E75 1000 mAh (BL-4U)', 'АКБ Maverick Nokia 8800arte/5530xm/E66/E75 1000 mAh (BL-4U)', '8da256e13156fe773e9c594d6720c455.png', 0),
(79, 36, 'Наушники Philips SHE1450BK/51 черные', 'naushniki-philips-she1450bk-51-chernye', '', 7, 0, 1, 'Наушники Philips SHE1450BK/51 черные', 'Наушники Philips SHE1450BK/51 черные', 'f27137c7f9d29dd157b0c9d150cdbc7a.jpg', 0),
(80, 36, 'Наушники с оголовьем Philips SHL3160WT/00 белые', 'naushniki-s-ogolov-em-philips-shl3160wt-00-belye', '', 18, 0, 1, 'Наушники с оголовьем Philips SHL3160WT/00 белые', 'Наушники с оголовьем Philips SHL3160WT/00 белые', '575f0f1c98f2c3f2760c4024429b547c.jpg', 0),
(81, 36, 'Наушники Partner \"Monster\" металл', 'naushniki-partner-monster-metall', '', 14, 0, 1, 'Наушники Partner \"Monster\" металл', 'Наушники Partner \"Monster\" металл', '5c97405f6136c1caa6543ce5c5869bf7.jpg', 0),
(82, 36, 'Наушники Smartbuy JAZZ розовые 1', 'naushniki-smartbuy-jazz-rozovye-1', '', 3, 0, 1, 'Наушники Smartbuy JAZZ розовые', 'Наушники Smartbuy JAZZ розовые', '6a4e337fae9ee43e891933ca175089f9.jpg', 0),
(83, 36, 'Наушники полноразмерные Partner \"Black\"', 'naushniki-polnorazmernye-partner-black', '', 12, 0, 1, 'Наушники полноразмерные Partner \"Black\"', 'Наушники полноразмерные Partner \"Black\"', '37aaf5839b169e5f2f52434f3daa1e08.jpg', 0),
(84, 37, 'Защитная пленка на телефон Prolife 5\"', 'zaschitnaya-plenka-na-telefon-prolife-5', '', 2, 0, 1, 'Защитная пленка на телефон Prolife 5\"', 'Защитная пленка на телефон Prolife 5\"', '540e63564c78235eb81332aa273ca73d.jpg', 0),
(85, 37, 'Защитная пленка LuxCase iPhone 5/5S экран+задняя часть суперпрозрачная', 'zaschitnaya-plenka-luxcase-iphone-5-5s-ekran-zadnyaya-chast-superprozrachnaya', '', 0.5, 0, 1, 'Защитная пленка LuxCase iPhone 5/5S экран+задняя часть суперпрозрачная', 'Защитная пленка LuxCase iPhone 5/5S экран+задняя часть суперпрозрачная', 'e6aa2b3715b6dfba1270b536b7db8096.jpg', 0),
(86, 37, 'Стекло защитное RedLine 4\"', 'steklo-zaschitnoe-redline-4', '', 5, 0, 1, 'Стекло защитное RedLine 4\"', 'Стекло защитное RedLine 4\"', 'b0fb8bd085b7e51cc6a30d23f9d6ed27.jpg', 0),
(87, 38, 'Чехол Samsung N920/Note 5 Flip Cover черный (EF-CN920PBEGRU) (S-View) оригинал', 'chehol-samsung-n920-note-5-flip-cover-chernyy-ef-cn920pbegru-s-view-original', '', 3, 0, 1, 'Чехол Samsung N920/Note 5 Flip Cover черный (EF-CN920PBEGRU) (S-View) оригинал', 'Чехол Samsung N920/Note 5 Flip Cover черный (EF-CN920PBEGRU) (S-View) оригинал', '9f35d6ae9f285cb02cd51622b57610a8.jpg', 0),
(88, 38, 'Накладка HOCO Paris iPhone 6 Plus кожа черная', 'nakladka-hoco-paris-iphone-6-plus-kozha-chernaya', '', 10, 0, 1, 'Накладка HOCO Paris iPhone 6 Plus кожа черная', 'Накладка HOCO Paris iPhone 6 Plus кожа черная', 'ca368981c5800921ec414428094ba29d.jpg', 0),
(89, 38, 'Накладка iPhone 5 Рисунки со стразами', 'nakladka-iphone-5-risunki-so-strazami', '', 5, 0, 1, 'Накладка iPhone 5 Рисунки со стразами', 'Накладка iPhone 5 Рисунки со стразами', '2adacc7eef0d0412c941d7c20a516b9a.jpg', 0),
(90, 38, 'Сумка-книжка Gresso Карамель Универсальная 7\" желтая', 'sumka-knizhka-gresso-karamel-universal-naya-7-zheltaya', '', 13, 0, 1, 'Сумка-книжка Gresso Карамель Универсальная 7\" желтая', 'Сумка-книжка Gresso Карамель Универсальная 7\" желтая', '389adf170f2e2e9319fede660ba51dc7.jpg', 0),
(91, 38, 'Чехол Samsung A500 Protective Cover серый (EF-PA500BSEGRU) оригинал', 'chehol-samsung-a500-protective-cover-seryy-ef-pa500bsegru-original', '', 3, 0, 1, 'Чехол Samsung A500 Protective Cover серый (EF-PA500BSEGRU) оригинал', 'Чехол Samsung A500 Protective Cover серый (EF-PA500BSEGRU) оригинал', '3a6ea456d74cf4f6a8630bf0873b5ee7.jpg', 0),
(92, 41, 'Клавиатура DEFENDER Nova SM-680L RU TouchOn технология USB черная', 'klaviatura-defender-nova-sm-680l-ru-touchon-tehnologiya-usb-chernaya', '', 19, 0, 1, 'DEFENDER Nova SM-680L RU TouchOn технология USB черная', 'DEFENDER Nova SM-680L RU TouchOn технология USB черная', '81226a9b75a2c98b4ee976c7bd7f504b.jpg', 0),
(93, 41, 'Клавиатура CANYON Keyboard CNS-HKB5 USB Black', 'klaviatura-canyon-keyboard-cns-hkb5-usb-black', '', 20, 0, 1, 'Клавиатура CANYON Keyboard CNS-HKB5 USB Black', 'Клавиатура CANYON Keyboard CNS-HKB5 USB Black', 'e69d192af2db5510323b8b8c6e02f3dd.jpg', 0),
(94, 41, 'Клавиатура проводная игровая DEFENDER Legion GK-010DL, RGB подсветка', 'klaviatura-provodnaya-igrovaya-defender-legion-gk-010dl-rgb-podsvetka', '', 18, 0, 1, 'Клавиатура проводная игровая DEFENDER Legion GK-010DL, RGB подсветка', 'Клавиатура проводная игровая DEFENDER Legion GK-010DL, RGB подсветка', 'd761bbaa35389e17023f512d6876bdd3.jpg', 0),
(95, 41, 'Клавиатура проводная игровая DEFENDER Legion GK-010DL, RGB подсветка', 'klaviatura-provodnaya-igrovaya-defender-legion-gk-010dl-rgb-podsvetka-95', '', 7, 0, 1, 'Клавиатура проводная игровая DEFENDER Legion GK-010DL, RGB подсветка', 'Клавиатура проводная игровая DEFENDER Legion GK-010DL, RGB подсветка', '21616e6681255d6de9b0f8e7ca8f2fec.jpg', 0),
(96, 41, 'Клавиатура проводная игровая DEFENDER Metal Hunter GK-140L, RGB подсветка', 'klaviatura-provodnaya-igrovaya-defender-metal-hunter-gk-140l-rgb-podsvetka', '', 13, 0, 1, 'Клавиатура проводная игровая DEFENDER Metal Hunter GK-140L, RGB подсветка', 'Клавиатура проводная игровая DEFENDER Metal Hunter GK-140L, RGB подсветка', 'b2d846602df9a4c4f58ca851b29d848a.jpg', 0),
(97, 40, 'Компьютерная мышь беспроводная оптическая DEFENDER Ayashi MS-325 красная', 'komp-yuternaya-mysh-besprovodnaya-opticheskaya-defender-ayashi-ms-325-krasnaya', '', 10, 0, 1, 'Компьютерная мышь беспроводная оптическая DEFENDER Ayashi MS-325 красная', 'Компьютерная мышь беспроводная оптическая DEFENDER Ayashi MS-325 красная', 'da96b1d3be63b404eae72ff9b660bcb5.jpg', 0),
(98, 40, 'Компьютерная мышь беспроводная оптическая DEFENDER Ayashi MS-325 белая', 'komp-yuternaya-mysh-besprovodnaya-opticheskaya-defender-ayashi-ms-325-belaya', '', 10, 0, 1, 'Компьютерная мышь беспроводная оптическая DEFENDER Ayashi MS-325 белая', 'Компьютерная мышь беспроводная оптическая DEFENDER Ayashi MS-325 белая', '8c409f1889ab92a2214bccda9e2fd9d1.jpg', 0),
(99, 40, 'Компьютерная мышь беспроводная оптическая DEFENDER Ayashi MS-325 серая', 'komp-yuternaya-mysh-besprovodnaya-opticheskaya-defender-ayashi-ms-325-seraya', '', 10, 0, 1, 'Компьютерная мышь беспроводная оптическая DEFENDER Ayashi MS-325 серая', 'Компьютерная мышь беспроводная оптическая DEFENDER Ayashi MS-325 серая', '417d4a4d083e2193e78ccb7de4df5e69.jpg', 0),
(100, 40, 'Компьютерная мышь беспроводная оптическая DEFENDER Laguna MS-245 синяя', 'komp-yuternaya-mysh-besprovodnaya-opticheskaya-defender-laguna-ms-245-sinyaya', '', 8, 0, 1, 'Компьютерная мышь беспроводная оптическая DEFENDER Laguna MS-245 синяя', 'Компьютерная мышь беспроводная оптическая DEFENDER Laguna MS-245 синяя', 'e1ce6d470c1242a02b74f12363d2bd99.png', 0),
(101, 40, 'Компьютерная мышь беспроводная Smartbuy 327G White', 'komp-yuternaya-mysh-besprovodnaya-smartbuy-327g-white', '', 11, 0, 1, 'Компьютерная мышь беспроводная Smartbuy 327G White', 'Компьютерная мышь беспроводная Smartbuy 327G White', '906db7dcf5d55057a83a7a8e06d997ba.jpg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `related_product`
--

CREATE TABLE `related_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `related_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `related_product`
--

INSERT INTO `related_product` (`product_id`, `related_id`) VALUES
(1, 2),
(1, 5),
(2, 5),
(2, 10),
(5, 1),
(5, 7),
(5, 8),
(42, 6),
(44, 2),
(44, 3),
(44, 13),
(55, 54),
(56, 54),
(58, 49),
(58, 50),
(58, 51),
(61, 54),
(61, 55),
(61, 56),
(61, 57),
(62, 54),
(62, 55),
(62, 57),
(64, 50),
(64, 52),
(64, 53),
(65, 50),
(65, 52),
(65, 54),
(67, 51),
(67, 53),
(68, 53),
(69, 52),
(73, 71),
(75, 71),
(80, 79),
(89, 87);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `email`, `name`, `role`) VALUES
(4, 'admin', '$2y$10$o40XZWCSndEgsr2ONygdCe9CCkHhtmYec3p4x2FHQ1HpnGPDqkyL.', 'i.burlachenkov@mail.ru', 'Илья Бурлаченков', 'admin'),
(7, 'user4', '$2y$10$UW.nOgxDs9Lft6dcgDvSV.KjsTcmU9n0prq3u7mNVxxI.mx.QVaRe', 'test@mail.ru', 'Жорик', 'user'),
(10, 'User24', '$2y$10$JktPkCiI8y9Mr95VDMBvLuL8THeOYU6LgaZGI6YAotaMlGYzwYwAu', 'mister-pafos@yandex.ru', 'Гриша', 'user'),
(11, 'User', '$2y$10$Tu.Zha9CEG0ciZSBvpayWu3ikol1l8Wg2ZcCa/JAkhgw80bKlFZQe', 'test_shop7s@mail.ru', 'Павлик', 'user');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `attribute_group`
--
ALTER TABLE `attribute_group`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `attribute_product`
--
ALTER TABLE `attribute_product`
  ADD PRIMARY KEY (`attr_id`,`product_id`);

--
-- Индексы таблицы `attribute_value`
--
ALTER TABLE `attribute_value`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `value` (`value`),
  ADD KEY `attr_group_id` (`attr_group_id`);

--
-- Индексы таблицы `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Индексы таблицы `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modification`
--
ALTER TABLE `modification`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `hit` (`hit`),
  ADD KEY `alias` (`alias`);

--
-- Индексы таблицы `related_product`
--
ALTER TABLE `related_product`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `attribute_group`
--
ALTER TABLE `attribute_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `attribute_value`
--
ALTER TABLE `attribute_value`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT для таблицы `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT для таблицы `modification`
--
ALTER TABLE `modification`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
