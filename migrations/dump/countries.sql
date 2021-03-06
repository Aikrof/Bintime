-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 17 2019 г., 22:05
-- Версия сервера: 5.7.23
-- Версия PHP: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bintime_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso` varchar(2) NOT NULL,
  `iso3` varchar(3) NOT NULL,
  `isoNumeric` int(10) NOT NULL,
  `en_country_name` varchar(255) NOT NULL,
  `ru_country_name` varchar(255) DEFAULT NULL,
  `uk_country_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`id`, `iso`, `iso3`, `isoNumeric`, `en_country_name`, `ru_country_name`, `uk_country_name`) VALUES
(1, 'AF', 'AFG', 4, 'Afghanistan', 'Афганистан', 'Афганістан'),
(2, 'AL', 'ALB', 8, 'Albania', 'Албания', 'Албанія'),
(3, 'DZ', 'DZA', 12, 'Algeria', 'Алжир', 'Алжир'),
(4, 'AS', 'ASM', 16, 'American Samoa', 'Американское Самоа', 'Американське Самоа'),
(5, 'AD', 'AND', 20, 'Andorra', 'Андорра', 'Андорра'),
(6, 'AO', 'AGO', 24, 'Angola', 'Ангола', 'Ангола'),
(7, 'AI', 'AIA', 660, 'Anguilla', 'Ангилья', 'Ангілья'),
(8, 'AG', 'ATG', 28, 'Antigua and Barbuda', 'Антигуа и Барбуда', 'Антигуа і Барбуда'),
(9, 'AR', 'ARG', 32, 'Argentina', 'Аргентина', 'Аргентина'),
(10, 'AM', 'ARM', 51, 'Armenia', 'Армения', 'Вірменія'),
(11, 'AW', 'ABW', 533, 'Aruba', 'Аруба', 'Аруба'),
(12, 'AU', 'AUS', 36, 'Australia', 'Австралия', 'Австралія'),
(13, 'AT', 'AUT', 40, 'Austria', 'Австрия', 'Австрія'),
(14, 'AZ', 'AZE', 31, 'Azerbaijan', 'Азербайджан', 'Азербайджан'),
(15, 'BS', 'BHS', 44, 'Bahamas', 'Багамские острова', 'Багами'),
(16, 'BH', 'BHR', 48, 'Bahrain', 'Бахрейн', 'Бахрейн'),
(17, 'BD', 'BGD', 50, 'Bangladesh', 'Бангладеш', 'Бангладеш'),
(18, 'BB', 'BRB', 52, 'Barbados', 'Барбадос', 'Барбадос'),
(19, 'BY', 'BLR', 112, 'Belarus', 'Беларусь', 'Білорусь'),
(20, 'BE', 'BEL', 56, 'Belgium', 'Бельгия', 'Бельгія'),
(21, 'BZ', 'BLZ', 84, 'Belize', 'Белиз', 'Беліз'),
(22, 'BJ', 'BEN', 204, 'Benin', 'Бенин', 'Бенін'),
(23, 'BM', 'BMU', 60, 'Bermuda', 'Бермудские о-ва', 'Бермуди'),
(24, 'BT', 'BTN', 64, 'Bhutan', 'Бутан', 'Бутан'),
(25, 'BO', 'BOL', 68, 'Bolivia', 'Боливия', 'Болівія'),
(26, 'BA', 'BIH', 70, 'Bosnia and Herzegovina', 'Босния', 'Боснія і Герцоговина'),
(27, 'BW', 'BWA', 72, 'Botswana', 'Ботсвана', 'Ботсвана'),
(28, 'BV', 'BVT', 74, 'Bouvet Island', 'Остров Буве', 'Острів Буве'),
(29, 'BR', 'BRA', 76, 'Brazil', 'Бразилия', 'Бразилія'),
(30, 'IO', 'IOT', 86, 'British Indian Ocean Territory', 'Британская территория в Индийском океане', 'Британські території Індійського океану'),
(31, 'VG', 'VGB', 92, 'British Virgin Islands', 'Британские Виргинские о-ва', 'Віргінські острови Британії'),
(32, 'BN', 'BRN', 96, 'Brunei', 'Бруней Даруссалам', 'Бруней'),
(33, 'BG', 'BGR', 100, 'Bulgaria', 'Болгария', 'Болгарія'),
(34, 'BF', 'BFA', 854, 'Burkina Faso', 'Буркина Фасо', 'Буркіна-Фасо'),
(35, 'BI', 'BDI', 108, 'Burundi', 'Бурунди', 'Бурунді'),
(36, 'CV', 'CPV', 132, 'Cabo Verde', 'Острова Зеленого Мыса', 'Кабо-Верде'),
(37, 'KH', 'KHM', 116, 'Cambodia', 'Камбоджа', 'Камбоджа'),
(38, 'CM', 'CMR', 120, 'Cameroon', 'Камерун', 'Камерун'),
(39, 'CA', 'CAN', 124, 'Canada', 'Канада', 'Канада'),
(40, 'KY', 'CYM', 136, 'Cayman Islands', 'Каймановы Острова', 'Кайманові острови'),
(41, 'CF', 'CAF', 140, 'Central African Republic', 'ЦАР', 'Центральноафриканська Республіка'),
(42, 'TD', 'TCD', 148, 'Chad', 'Чад', 'Чад'),
(43, 'CL', 'CHL', 152, 'Chile', 'Чили', 'Чилі'),
(44, 'CN', 'CHN', 156, 'China', 'Китай', 'Китай'),
(45, 'CX', 'CXR', 162, 'Christmas Island', 'Остров Рождества', 'Острів Різдва'),
(46, 'CC', 'CCK', 166, 'Cocos Islands', 'Кокосовые о-ва', 'Кокосові острови'),
(47, 'CO', 'COL', 170, 'Colombia', 'Колумбия', 'Колумбія'),
(48, 'KM', 'COM', 174, 'Comoros', 'Коморские о-ва', 'Комори'),
(49, 'CK', 'COK', 184, 'Cook Islands', 'Острова Кука', 'Острови Кука'),
(50, 'CR', 'CRI', 188, 'Costa Rica', 'Коста-Рика', 'Коста-Рика'),
(51, 'HR', 'HRV', 191, 'Croatia', 'Хорватия', 'Хорватія'),
(52, 'CU', 'CUB', 192, 'Cuba', 'Куба', 'Куба'),
(53, 'CW', 'CUW', 531, 'Curacao', 'Кюрасао', 'Кюрасао'),
(54, 'CY', 'CYP', 196, 'Cyprus', 'Кипр', 'Кіпр'),
(55, 'CZ', 'CZE', 203, 'Czechia', 'Чешская Республика', 'Чеська республіка'),
(56, 'CD', 'COD', 180, 'Democratic Republic of the Congo', 'Конго, Демократическая Республика', 'Конго, Демократична Республіка'),
(57, 'DK', 'DNK', 208, 'Denmark', 'Дания', 'Данія'),
(58, 'DJ', 'DJI', 262, 'Djibouti', 'Джибути', 'Джібуті'),
(59, 'DM', 'DMA', 212, 'Dominica', 'Остров Доминика', 'Домінік'),
(60, 'DO', 'DOM', 214, 'Dominican Republic', 'Доминиканская Республика', 'Домініканська Республіка'),
(61, 'EC', 'ECU', 218, 'Ecuador', 'Эквадор', 'Еквадор'),
(62, 'EG', 'EGY', 818, 'Egypt', 'Египет', 'Єгипет'),
(63, 'SV', 'SLV', 222, 'El Salvador', 'Сальвадор', 'Сальвадор'),
(64, 'GQ', 'GNQ', 226, 'Equatorial Guinea', 'Экваториальная Гвинея', 'Екваторіальна Гвінея'),
(65, 'ER', 'ERI', 232, 'Eritrea', 'Эритрея', 'Еритрея'),
(66, 'EE', 'EST', 233, 'Estonia', 'Эстония', 'Естонія'),
(67, 'SZ', 'SWZ', 748, 'Eswatini', 'Свазиленд', 'Свазіленд'),
(68, 'ET', 'ETH', 231, 'Ethiopia', 'Эфиопия', 'Ефіопія'),
(69, 'FK', 'FLK', 238, 'Falkland Islands', 'Фолклендские о-ва', 'Фолклендські острови'),
(70, 'FO', 'FRO', 234, 'Faroe Islands', 'Фарерские острова', 'Фарерські острови'),
(71, 'FJ', 'FJI', 242, 'Fiji', 'Фиджи', 'Фіджі'),
(72, 'FI', 'FIN', 246, 'Finland', 'Финляндия', 'Фінляндія'),
(73, 'FR', 'FRA', 250, 'France', 'Франция', 'Франція'),
(74, 'GF', 'GUF', 254, 'French Guiana', 'Французская Гвиана', 'Французька Гвіана'),
(75, 'PF', 'PYF', 258, 'French Polynesia', 'Французская Полинезия', 'Французька Полінезія'),
(76, 'TF', 'ATF', 260, 'French Southern Territories', 'Французские Южные Территории', 'Французькі Південні Території'),
(77, 'GA', 'GAB', 266, 'Gabon', 'Габон', 'Габон'),
(78, 'GM', 'GMB', 270, 'Gambia', 'Гамбия', 'Гамбія'),
(79, 'GE', 'GEO', 268, 'Georgia', 'Грузия', 'Грузія'),
(80, 'DE', 'DEU', 276, 'Germany', 'Германия', 'Німеччина'),
(81, 'GH', 'GHA', 288, 'Ghana', 'Гана', 'Гана'),
(82, 'GI', 'GIB', 292, 'Gibraltar', 'Гибралтар', 'Ґібралтар'),
(83, 'GR', 'GRC', 300, 'Greece', 'Греция', 'Греція'),
(84, 'GL', 'GRL', 304, 'Greenland', 'Гренландия', 'Гренландія'),
(85, 'GD', 'GRD', 308, 'Grenada', 'Гренада', 'Гренада'),
(86, 'GP', 'GLP', 312, 'Guadeloupe', 'Гваделупа', 'Гваделупа'),
(87, 'GU', 'GUM', 316, 'Guam', 'Гуам', 'Гуам'),
(88, 'GT', 'GTM', 320, 'Guatemala', 'Гватемала', 'Гватемала'),
(89, 'GG', 'GGY', 831, 'Guernsey', 'Гернси', 'Гернсі'),
(90, 'GN', 'GIN', 324, 'Guinea', 'Гвинея', 'Гвінея'),
(91, 'GW', 'GNB', 624, 'Guinea-Bissau', 'Гвинея-Биссау', 'Гвінея-Біссау'),
(92, 'GY', 'GUY', 328, 'Guyana', 'Гайана', 'Гайана'),
(93, 'HT', 'HTI', 332, 'Haiti', 'Гаити', 'Гаїті'),
(94, 'HM', 'HMD', 334, 'Heard Island and McDonald Islands', 'Острова Херд и Макдональд', 'Острови Херд і Мак-Дональд'),
(95, 'HN', 'HND', 340, 'Honduras', 'Гондурас', 'Гондурас'),
(96, 'HK', 'HKG', 344, 'Hong Kong', 'Гонконг', 'Гонконґ'),
(97, 'HU', 'HUN', 348, 'Hungary', 'Венгрия', 'Угорщина'),
(98, 'IS', 'ISL', 352, 'Iceland', 'Исландия', 'Ісландія'),
(99, 'IN', 'IND', 356, 'India', 'Индия', 'Індія'),
(100, 'ID', 'IDN', 360, 'Indonesia', 'Индонезия', 'Індонезія'),
(101, 'IR', 'IRN', 364, 'Iran', 'Иран', 'Іран'),
(102, 'IQ', 'IRQ', 368, 'Iraq', 'Ирак', 'Ірак'),
(103, 'IE', 'IRL', 372, 'Ireland', 'Ирландия', 'Ірландія'),
(104, 'IM', 'IMN', 833, 'Isle of Man', 'Остров Мэн', 'Мен'),
(105, 'IL', 'ISR', 376, 'Israel', 'Израиль', 'Ізраїль'),
(106, 'IT', 'ITA', 380, 'Italy', 'Италия', 'Італія'),
(107, 'CI', 'CIV', 384, 'Ivory Coast', 'Кот д’Ивуар', 'Кот д’Івуар'),
(108, 'JM', 'JAM', 388, 'Jamaica', 'Ямайка', 'Ямайка'),
(109, 'JP', 'JPN', 392, 'Japan', 'Япония', 'Японія'),
(110, 'JE', 'JEY', 832, 'Jersey', 'Джерси', 'Джерсі'),
(111, 'JO', 'JOR', 400, 'Jordan', 'Иордания', 'Йорданія'),
(112, 'KZ', 'KAZ', 398, 'Kazakhstan', 'Казахстан', 'Казахстан'),
(113, 'KE', 'KEN', 404, 'Kenya', 'Кения', 'Кенія'),
(114, 'KI', 'KIR', 296, 'Kiribati', 'Кирибати', 'Кірибаті'),
(115, 'XK', 'XKX', 0, 'Kosovo', 'Косово', 'Косово'),
(116, 'KW', 'KWT', 414, 'Kuwait', 'Кувейт', 'Кувейт'),
(117, 'KG', 'KGZ', 417, 'Kyrgyzstan', 'Кыргызстан', 'Киргизстан'),
(118, 'LA', 'LAO', 418, 'Laos', 'Лаос', 'Лаос'),
(119, 'LV', 'LVA', 428, 'Latvia', 'Латвия', 'Латвія'),
(120, 'LB', 'LBN', 422, 'Lebanon', 'Ливан', 'Ліван'),
(121, 'LS', 'LSO', 426, 'Lesotho', 'Лесото', 'Лесото'),
(122, 'LR', 'LBR', 430, 'Liberia', 'Либерия', 'Ліберія'),
(123, 'LY', 'LBY', 434, 'Libya', 'Ливия', 'Лівія'),
(124, 'LI', 'LIE', 438, 'Liechtenstein', 'Лихтенштейн', 'Ліхтенштейн'),
(125, 'LT', 'LTU', 440, 'Lithuania', 'Литва', 'Литва'),
(126, 'LU', 'LUX', 442, 'Luxembourg', 'Люксембург', 'Люксембург'),
(127, 'MO', 'MAC', 446, 'Macao', 'Макао', 'Макао'),
(128, 'MG', 'MDG', 450, 'Madagascar', 'Мадагаскар', 'Мадагаскар'),
(129, 'MW', 'MWI', 454, 'Malawi', 'Малави', 'Малаві'),
(130, 'MY', 'MYS', 458, 'Malaysia', 'Малайзия', 'Малайзія'),
(131, 'MV', 'MDV', 462, 'Maldives', 'Мальдивские о-ва', 'Мальдіви'),
(132, 'ML', 'MLI', 466, 'Mali', 'Мали', 'Малі'),
(133, 'MT', 'MLT', 470, 'Malta', 'Мальта', 'Мальта'),
(134, 'MH', 'MHL', 584, 'Marshall Islands', 'Маршалловы о-ва', 'Маршаллові Острови'),
(135, 'MQ', 'MTQ', 474, 'Martinique', 'Мартиника', 'Мартиніка'),
(136, 'MR', 'MRT', 478, 'Mauritania', 'Мавритания', 'Мавританія'),
(137, 'MU', 'MUS', 480, 'Mauritius', 'Маврикий', 'Маврикій'),
(138, 'YT', 'MYT', 175, 'Mayotte', 'Майотта', 'Майот'),
(139, 'MX', 'MEX', 484, 'Mexico', 'Мексика', 'Мексика'),
(140, 'FM', 'FSM', 583, 'Micronesia', 'Федеративные Штаты Микронезии', 'Федеративні Штати Мікронезії'),
(141, 'MD', 'MDA', 498, 'Moldova', 'Молдова', 'Молдова'),
(142, 'MC', 'MCO', 492, 'Monaco', 'Монако', 'Монако'),
(143, 'MN', 'MNG', 496, 'Mongolia', 'Монголия', 'Монголія'),
(144, 'ME', 'MNE', 499, 'Montenegro', 'Черногория', 'Чорногорія'),
(145, 'MS', 'MSR', 500, 'Montserrat', 'Монтсеррат', 'Монсеррат'),
(146, 'MA', 'MAR', 504, 'Morocco', 'Марокко', 'Марокко'),
(147, 'MZ', 'MOZ', 508, 'Mozambique', 'Мозамбик', 'Мозамбік'),
(148, 'MM', 'MMR', 104, 'Myanmar', 'Мьянма', 'Мʼянма [Бірма]'),
(149, 'NA', 'NAM', 516, 'Namibia', 'Намибия', 'Намібія'),
(150, 'NR', 'NRU', 520, 'Nauru', 'Науру', 'Науру'),
(151, 'NP', 'NPL', 524, 'Nepal', 'Непал', 'Непал'),
(152, 'NL', 'NLD', 528, 'Netherlands', 'Нидерланды', 'Нідерланди'),
(153, 'AN', 'ANT', 530, 'Netherlands Antilles', NULL, 'Нідерландські Антильські острови'),
(154, 'NC', 'NCL', 540, 'New Caledonia', 'Новая Каледония', 'Нова Каледонія'),
(155, 'NZ', 'NZL', 554, 'New Zealand', 'Новая Зеландия', 'Нова Зеландія'),
(156, 'NI', 'NIC', 558, 'Nicaragua', 'Никарагуа', 'Нікарагуа'),
(157, 'NE', 'NER', 562, 'Niger', 'Нигер', 'Нігер'),
(158, 'NG', 'NGA', 566, 'Nigeria', 'Нигерия', 'Нігерія'),
(159, 'NU', 'NIU', 570, 'Niue', 'Ниуэ', 'Нія'),
(160, 'NF', 'NFK', 574, 'Norfolk Island', 'Остров Норфолк', 'Острів Норфолк'),
(161, 'MP', 'MNP', 580, 'Northern Mariana Islands', 'Северные Марианские острова', 'Північні Маріанські острови'),
(162, 'KP', 'PRK', 408, 'North Korea', 'Северная Корея', 'Північна Корея'),
(163, 'MK', 'MKD', 807, 'North Macedonia', 'Республика Македония', 'Республіка Македонія'),
(164, 'NO', 'NOR', 578, 'Norway', 'Норвегия', 'Норвегія'),
(165, 'OM', 'OMN', 512, 'Oman', 'Оман', 'Оман'),
(166, 'PK', 'PAK', 586, 'Pakistan', 'Пакистан', 'Пакистан'),
(167, 'PW', 'PLW', 585, 'Palau', 'Палау', 'Республіка Палау'),
(168, 'PS', 'PSE', 275, 'Palestinian Territory', 'Палестинские территории', 'Палестина'),
(169, 'PA', 'PAN', 591, 'Panama', 'Панама', 'Панама'),
(170, 'PG', 'PNG', 598, 'Papua New Guinea', 'Папуа – Новая Гвинея', 'Папуа Нова Гвінея'),
(171, 'PY', 'PRY', 600, 'Paraguay', 'Парагвай', 'Парагвай'),
(172, 'PE', 'PER', 604, 'Peru', 'Перу', 'Перу'),
(173, 'PH', 'PHL', 608, 'Philippines', 'Филиппины', 'Філіппіни'),
(174, 'PN', 'PCN', 612, 'Pitcairn', 'Питкэрн', 'Острови Піткерн'),
(175, 'PL', 'POL', 616, 'Poland', 'Польша', 'Польща'),
(176, 'PT', 'PRT', 620, 'Portugal', 'Португалия', 'Португалія'),
(177, 'PR', 'PRI', 630, 'Puerto Rico', 'Пуэрто-Рико', 'Пуерто-Ріко'),
(178, 'QA', 'QAT', 634, 'Qatar', 'Катар', 'Катар'),
(179, 'CG', 'COG', 178, 'Republic of the Congo', 'Республика Конго', 'Конго'),
(180, 'RE', 'REU', 638, 'Reunion', 'Реюньон', 'Реюньйон'),
(181, 'RO', 'ROU', 642, 'Romania', 'Румыния', 'Румунія'),
(182, 'RU', 'RUS', 643, 'Russia', 'Россия', 'Росія'),
(183, 'RW', 'RWA', 646, 'Rwanda', 'Руанда', 'Руанда'),
(184, 'BL', 'BLM', 652, 'Saint Barthelemy', 'Сен-Бартельми', 'Сен-Бартельмі'),
(185, 'SH', 'SHN', 654, 'Saint Helena', 'Остров Святой Елены', 'Острів Святої Єлени'),
(186, 'KN', 'KNA', 659, 'Saint Kitts and Nevis', 'Сент-Киттс и Невис', 'Сент-Кітс і Невіс'),
(187, 'LC', 'LCA', 662, 'Saint Lucia', 'Сент-Люсия', 'Сент-Люсія'),
(188, 'MF', 'MAF', 663, 'Saint Martin', 'Сен-Мартен', 'Сен-Мартен'),
(189, 'PM', 'SPM', 666, 'Saint Pierre and Miquelon', 'Сен-Пьер и Микелон', 'Сен-Пʼєр і Мікелон'),
(190, 'VC', 'VCT', 670, 'Saint Vincent and the Grenadines', 'Сент-Винсент и Гренадины', 'Сент-Вінсент і Гренадини'),
(191, 'WS', 'WSM', 882, 'Samoa', 'Самоа', 'Самоа'),
(192, 'SM', 'SMR', 674, 'San Marino', 'Сан-Марино', 'Сан-Маріно'),
(193, 'ST', 'STP', 678, 'Sao Tome and Principe', 'Сан-Томе и Принсипи', 'Сан-Томе і Прінсіпі'),
(194, 'SA', 'SAU', 682, 'Saudi Arabia', 'Саудовская Аравия', 'Саудівська Аравія'),
(195, 'SN', 'SEN', 686, 'Senegal', 'Сенегал', 'Сенегал'),
(196, 'RS', 'SRB', 688, 'Serbia', 'Сербия', 'Сербія'),
(197, 'CS', 'SCG', 891, 'Serbia and Montenegro', NULL, NULL),
(198, 'SC', 'SYC', 690, 'Seychelles', 'Сейшельские о-ва', 'Сейшели'),
(199, 'SL', 'SLE', 694, 'Sierra Leone', 'Сьерра-Леоне', 'Сьєрра-Леоне'),
(200, 'SG', 'SGP', 702, 'Singapore', 'Сингапур', 'Сінгапур'),
(201, 'SX', 'SXM', 534, 'Sint Maarten', 'Синт-Мартен', 'Сінт-Мартен'),
(202, 'SK', 'SVK', 703, 'Slovakia', 'Словакия', 'Словакія'),
(203, 'SI', 'SVN', 705, 'Slovenia', 'Словения', 'Словенія'),
(204, 'SB', 'SLB', 90, 'Solomon Islands', 'Соломоновы Острова', 'Соломонові Острови'),
(205, 'SO', 'SOM', 706, 'Somalia', 'Сомали', 'Сомалі'),
(206, 'ZA', 'ZAF', 710, 'South Africa', 'Юар', 'ПАР'),
(207, 'GS', 'SGS', 239, 'South Georgia and the South Sandwich Islands', 'Южная Джорджия и Южные Сандвичевы Острова', 'Південна Джорджія та Південні Сандвічеві Острови'),
(208, 'KR', 'KOR', 410, 'South Korea', 'Южная Корея', 'Південна Корея'),
(209, 'SS', 'SSD', 728, 'South Sudan', 'Южный Судан', 'Південний Судан'),
(210, 'ES', 'ESP', 724, 'Spain', 'Испания', 'Іспанія'),
(211, 'LK', 'LKA', 144, 'Sri Lanka', 'Шри-Ланка', 'Шрі-Ланка'),
(212, 'SD', 'SDN', 729, 'Sudan', 'Судан', 'Судан'),
(213, 'SR', 'SUR', 740, 'Suriname', 'Суринам', 'Суринам'),
(214, 'SJ', 'SJM', 744, 'Svalbard and Jan Mayen', 'Свальбард и Ян-Майен', 'Острови Свальбард та Ян-Маєн'),
(215, 'SE', 'SWE', 752, 'Sweden', 'Швеция', 'Швеція'),
(216, 'CH', 'CHE', 756, 'Switzerland', 'Швейцария', 'Швейцарія'),
(217, 'SY', 'SYR', 760, 'Syria', 'Сирийская Арабская Республика', 'Сирійська Арабська Республіка'),
(218, 'TW', 'TWN', 158, 'Taiwan', 'Тайвань', 'Тайвань'),
(219, 'TJ', 'TJK', 762, 'Tajikistan', 'Таджикистан', 'Таджикистан'),
(220, 'TZ', 'TZA', 834, 'Tanzania', 'Танзания', 'Танзанія, Обʼєднана Республіка'),
(221, 'TH', 'THA', 764, 'Thailand', 'Таиланд', 'Таїланд'),
(222, 'TL', 'TLS', 626, 'Timor Leste', 'Восточный Тимор', 'Східний Тимор'),
(223, 'TG', 'TGO', 768, 'Togo', 'Того', 'Того'),
(224, 'TK', 'TKL', 772, 'Tokelau', 'Токелау', 'Токелау'),
(225, 'TO', 'TON', 776, 'Tonga', 'Тонга', 'Тонга'),
(226, 'TT', 'TTO', 780, 'Trinidad and Tobago', 'Тринидад и Тобаго', 'Тринідад і Тобаго'),
(227, 'TN', 'TUN', 788, 'Tunisia', 'Тунис', 'Туніс'),
(228, 'TR', 'TUR', 792, 'Turkey', 'Турция', 'Туреччина'),
(229, 'TM', 'TKM', 795, 'Turkmenistan', 'Туркменистан', 'Туркменистан'),
(230, 'TC', 'TCA', 796, 'Turks and Caicos Islands', 'Острова Тёркс и Кайкос', 'Теркс і Кайкос'),
(231, 'TV', 'TUV', 798, 'Tuvalu', 'Тувалу', 'Тувалу'),
(232, 'UG', 'UGA', 800, 'Uganda', 'Уганда', 'Уганда'),
(233, 'UA', 'UKR', 804, 'Ukraine', 'Украина', 'Україна'),
(234, 'AE', 'ARE', 784, 'United Arab Emirates', 'Объединенные Арабские Эмираты', 'Обʼєднані Арабські Емірати'),
(235, 'GB', 'GBR', 826, 'United Kingdom', 'Великобритания', 'Великобританія'),
(236, 'US', 'USA', 840, 'United States', 'Соединенные Штаты', 'США'),
(237, 'UY', 'URY', 858, 'Uruguay', 'Уругвай', 'Уругвай'),
(238, 'VI', 'VIR', 850, 'U.S. Virgin Islands', 'Виргинские о-ва (США)', 'Віргінські острови США'),
(239, 'UZ', 'UZB', 860, 'Uzbekistan', 'Узбекистан', 'Узбекистан'),
(240, 'VU', 'VUT', 548, 'Vanuatu', 'Вануату', 'Вануату'),
(241, 'VA', 'VAT', 336, 'Vatican', 'Ватикан', 'Ватикан'),
(242, 'VE', 'VEN', 862, 'Venezuela', 'Венесуэла', 'Венесуела'),
(243, 'VN', 'VNM', 704, 'Vietnam', 'Вьетнам', 'Вʼєтнам'),
(244, 'WF', 'WLF', 876, 'Wallis and Futuna', 'Острова Уоллис и Футуна', 'Уолліс і Футуна'),
(245, 'EH', 'ESH', 732, 'Western Sahara', 'Западная Сахара', 'Західна Сахара'),
(246, 'YE', 'YEM', 887, 'Yemen', 'Йемен', 'Ємен'),
(247, 'ZM', 'ZMB', 894, 'Zambia', 'Замбия', 'Замбія'),
(248, 'ZW', 'ZWE', 716, 'Zimbabwe', 'Зимбабве', 'Зімбабве');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
