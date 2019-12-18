-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 17 2019 г., 22:44
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
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `login`, `email`, `password`, `first_name`, `last_name`, `gender`, `created_at`) VALUES
(1, 'Елизавета30733', 'SCtHGXgAS@bintime.com', '$2y$13$zu7s3QZ55mt0D4RWdSkDhu6NhjQKB9SlgjuNBlWEyeNCsrwX3uFIi', 'Елизавета', 'Мельник', 'Female', '2019-12-18T08:36:55+0200'),
(2, 'Максим50883', 'pQLxuSaWjY@bintime.com', '$2y$13$PnF8h5cS8KKBBRwLIg.MxuW2Yy7KfAWy0jm79ue29Vfu1GnXKj/ye', 'Максим', 'Полищук', 'Male', '2019-12-18T08:36:56+0200'),
(3, 'Михаил57758', 'kHpGR@bintime.com', '$2y$13$Yj6qhH9yl/Bc3JXsnftrjurv05mhxHuTcfX4TrJfUtJBcomKjxNCa', 'Михаил', 'Харченко', 'Male', '2019-12-18T08:36:57+0200'),
(4, 'Алексей24306', 'NvuLcMmFg@bintime.com', '$2y$13$PGjTGUKYHWnR7UrhVTS86.eGSU7NDs6MdMcimK75LpCP6SmxUYiuW', 'Алексей', 'Руденко', 'Male', '2019-12-18T08:36:59+0200'),
(5, 'Валентина48454', 'FatAeL@bintime.com', '$2y$13$iAMfQB6OSKXNv6rHFgw3cORldbwc/J5sdQCsyQDzLNJWj1TlwkSqe', 'Валентина', 'Мороз', 'Female', '2019-12-18T08:37:00+0200'),
(6, 'Вера27710', 'xWclwcJz@bintime.com', '$2y$13$mgt7lU5THHalXfqyyy7Cy.CvncXQ3ZMGDRjaIlfHRxGnM2qg1RTiW', 'Вера', 'Мороз', 'Female', '2019-12-18T08:37:01+0200'),
(7, 'Любовь77014', 'QorYAuOas@bintime.com', '$2y$13$e.thvMWrcEl99I8vep8sjejb/VGL6kj/JFI/RtXKxPAwTE2q/NJRi', 'Любовь', 'Ткачук', 'Female', '2019-12-18T08:37:02+0200'),
(8, 'Борис16551', 'ZVYaCYvYw@bintime.com', '$2y$13$mKKsy0fYba7QR0ThnFda9.SPMCzhHP.Ko0hwdKxdLlmWB1FWJ0L.2', 'Борис', 'Савчук', 'Male', '2019-12-18T08:37:03+0200'),
(9, 'Виталий42637', 'drxqOdfWHKWt@bintime.com', '$2y$13$YDoLnK8yAzpwtOCAVgElIutkd6vhxcVLJTBbgp5V5xOosB94gTrS.', 'Виталий', 'Шевчук', 'Male', '2019-12-18T08:37:04+0200'),
(10, 'Ксения57309', 'gifwsKxjS@bintime.com', '$2y$13$tp3/vvcAD/M/tnxZgJ1UFOnf4ukuGq3GVu82f.jY59bF2qQ86zpYa', 'Ксения', 'Шевченко', NULL, '2019-12-18T08:37:05+0200'),
(11, 'Артём68797', 'JXDZtcLato@bintime.com', '$2y$13$iRnv/2zK2kvViX4PjO2uje7V3t7.knnVjRCcr8CCisgENk36GC0D6', 'Артём', 'Пономаренко', 'Male', '2019-12-18T08:37:05+0200'),
(12, 'Вероника10705', 'CAOxsjlIEx@bintime.com', '$2y$13$4CDh5EKV1gZFQeKndG/9JO3cqrXC8lyGSdRrR4ynO89pHMB23sUcq', 'Вероника', 'Ткаченко', 'Female', '2019-12-18T08:37:07+0200'),
(13, 'Нина83154', 'QtakTzHJaT@bintime.com', '$2y$13$AdteOPU1zuhoBGKDsVLP/u0J9GRI/VWIsstCQiW4au3C8eC2ezR36', 'Нина', 'Ткачук', 'Female', '2019-12-18T08:37:08+0200'),
(14, 'Артур85193', 'zyiHInik@bintime.com', '$2y$13$oO3/swMgZqjrLfEXYeqlpuZU8P.L6Z5KiNadZBqiPeIxXZ71HakSK', 'Артур', 'Полищук', 'Male', '2019-12-18T08:37:09+0200'),
(15, 'Иван27435', 'CdpCCBpLm@bintime.com', '$2y$13$3wgqJnodRNTGHzOH9qW/5.f63C9p01rwCV6djJr0dX0KBMNEwcUu2', 'Иван', 'Марченко', 'Male', '2019-12-18T08:37:10+0200'),
(16, 'Иван69785', 'ePHKKhN@bintime.com', '$2y$13$GInF8eyYb.yfOBHrPxZazeMPlbkdcGWHthhOfNl23gZn1glb/xIQW', 'Иван', 'Шевчук', 'Male', '2019-12-18T08:37:11+0200'),
(17, 'Яна92336', 'tYBaZFCc@bintime.com', '$2y$13$OdvglnBkbE7s/uY2q6t.WuGubIhjyUuF.t5s/wAu3m2K6qx6JB4eu', 'Яна', 'Савченко', NULL, '2019-12-18T08:37:12+0200'),
(18, 'Антон30515', 'mXIAKwy@bintime.com', '$2y$13$F9dk.TBPgiE.bwnyhzPME.gpXrqzfYJn1D9AWj1Z5rFQHMVELE5jO', 'Антон', 'Савчук', NULL, '2019-12-18T08:37:13+0200'),
(19, 'Полина24514', 'zlCWnDKS@bintime.com', '$2y$13$d86.P0BTF.r9X50Pi/AlNOL0sLxrPNW6li5VGBXVpfG1TVTdVZl5i', 'Полина', 'Гаврилюк', 'Female', '2019-12-18T08:37:14+0200'),
(20, 'Инна62187', 'KyDWAAS@bintime.com', '$2y$13$tcOFRUi04dxXuKqO.f15y.GepY//Jk.vOEBwxsUhb34qg4QLEjRqO', 'Инна', 'Савчук', 'Female', '2019-12-18T08:37:15+0200'),
(21, 'Валерий51295', 'sOIsPJS@bintime.com', '$2y$13$aPm7L8k/ZW4dNntylGK/P.GUmo5L4vCTPBD.BOpsh2yTu6EHHcspG', 'Валерий', 'Савчук', 'Male', '2019-12-18T08:37:16+0200'),
(22, 'Инна76224', 'taRuTYuKK@bintime.com', '$2y$13$cWbkEj4mRCHb/5zLWZ3FluDEP09PH43O5GJbe/s.iBSv8Yuve/wBO', 'Инна', 'Кравченко', 'Female', '2019-12-18T08:37:17+0200'),
(23, 'Любовь24451', 'qUkbqid@bintime.com', '$2y$13$frNEA1Db.L82x4dELfMLk.wWTHRuRsQYo4Au9.61/QbuvqSvj9Qh2', 'Любовь', 'Мельник', 'Female', '2019-12-18T08:37:17+0200'),
(24, 'Александр88953', 'iIoZIYyRfV@bintime.com', '$2y$13$7q2VnPJKreuq8heRhgjFZumkbRR5cfGMVD4Yjlele81MRf0BkO0NO', 'Александр', 'Харченко', NULL, '2019-12-18T08:37:18+0200'),
(25, 'Светлана38268', 'QbrmNVDs@bintime.com', '$2y$13$8FvXIUZ9lrXNlt3hKYuqwOZthubulYw9igAmo2yl/AJ8LI1EaIxuu', 'Светлана', 'Мороз', 'Female', '2019-12-18T08:37:19+0200'),
(26, 'Ева34515', 'SdeRh@bintime.com', '$2y$13$QMF6K0yPdKsJoH7/LIF.yee8s7XhN7lHqUIppYzhmZU4RK5YDoCmu', 'Ева', 'Лысенко', 'Female', '2019-12-18T08:37:20+0200'),
(27, 'Светлана43783', 'YbzEGx@bintime.com', '$2y$13$RPYdo2CXk65O93wN6aluleddE50PNiPwMrZqcdyL8J4ngM1cQffTu', 'Светлана', 'Кузьменко', 'Female', '2019-12-18T08:37:21+0200'),
(28, 'Юлия63155', 'tBJXhykf@bintime.com', '$2y$13$hOGRWLIvZRNVNDC8Bb0Wj./6sCHkChnwvej2yxXx.czSF21smL3N.', 'Юлия', 'Петренко', NULL, '2019-12-18T08:37:23+0200'),
(29, 'Кристина34032', 'bklialg@bintime.com', '$2y$13$sB/z1k6C6/6WGGxC49xcReFVwAe.1Y62mjwQw9NjaF/vH0WQJToYq', 'Кристина', 'Руденко', 'Female', '2019-12-18T08:37:24+0200'),
(30, 'Никита72690', 'aCoDBXWgDa@bintime.com', '$2y$13$0xEn1O67vxjznAo1OrE3yeVXue64QtwxAheZMBnal/9LokQh2we0C', 'Никита', 'Руденко', 'Male', '2019-12-18T08:37:25+0200'),
(31, 'Елизавета81016', 'gDwhLni@bintime.com', '$2y$13$20qv.czovSFAwXClnXDW6evzumMnoyhMvjWunKvTVzOp4kqoUjxJO', 'Елизавета', 'Мороз', 'Female', '2019-12-18T08:37:26+0200'),
(32, 'Алиса11593', 'LOYythXOftZ@bintime.com', '$2y$13$gykMICiuvz5y41S3Ridx3umkLEFOGPHSmR08eYBBvAsCLdINFFKuC', 'Алиса', 'Кравченко', NULL, '2019-12-18T08:37:27+0200'),
(33, 'Владимир70812', 'eizWdbM@bintime.com', '$2y$13$oGKGJIAU/ZsMYSr0EhTXs.4VIlEy7iAjojHzuNw2xxcP8/L/Y4WPi', 'Владимир', 'Савченко', 'Male', '2019-12-18T08:37:28+0200'),
(34, 'Денис45025', 'DDnCtl@bintime.com', '$2y$13$O30zhlNEGii.f69mAY3q3.o.IpUUQ.LatBKy6I3TRADEtqp6rYckS', 'Денис', 'Савчук', 'Male', '2019-12-18T08:37:29+0200'),
(35, 'Андрей40896', 'ePIqQf@bintime.com', '$2y$13$QNmGjLc7AYYdwk4kZ0ijgu39mUQrN80NDY8Em8Dr4PS9q6Z470Cq6', 'Андрей', 'Коваль', 'Male', '2019-12-18T08:37:30+0200'),
(36, 'Марк7787', 'dqCSXL@bintime.com', '$2y$13$IqFwb6XSUlaERU8SCVDIi.0K91odt.TRJfS0VJX/1tXlytPCY4HvS', 'Марк', 'Петренко', NULL, '2019-12-18T08:37:31+0200'),
(37, 'Егор77753', 'zuSoWuU@bintime.com', '$2y$13$vNJuj1cNWNqcXyi7pZ0wE.TUthqIig9Ua0a6DW3tV.2.w2.UfQLoi', 'Егор', 'Гаврилюк', 'Male', '2019-12-18T08:37:32+0200'),
(38, 'Максим83954', 'oqynpZMH@bintime.com', '$2y$13$Vvjyuw8NruxUp3TiiCFPYu.SY.4nmqrhZWhKzkIymfB3jUbTgcEIa', 'Максим', 'Коваленко', NULL, '2019-12-18T08:37:33+0200'),
(39, 'Инна83634', 'NEbvbQ@bintime.com', '$2y$13$ClyOKOMjkarvxMjHcZg7K.76MLyTFz1aMETKfIfgscOAYzvcLwVry', 'Инна', 'Швец', 'Female', '2019-12-18T08:37:34+0200'),
(40, 'Егор26024', 'QHCVNR@bintime.com', '$2y$13$3QRe39qZSHxfpo6hfIDtE.gOhmb4RwRaUyqOYJOGXrGp9NYDNCMDy', 'Егор', 'Шевчук', 'Male', '2019-12-18T08:37:35+0200'),
(41, 'Алексей77410', 'cvkMZVsFY@bintime.com', '$2y$13$VbqMxgvoT0OWuwg.7QpTIO4iVYHB2oIr9Qz/9KmKg0kUAqzTO5cbG', 'Алексей', 'Коваленко', 'Male', '2019-12-18T08:37:36+0200'),
(42, 'Алина41082', 'psFnbjt@bintime.com', '$2y$13$C6gv.3VPP.Uhp.LZ4IYlHeDjl3SI5as.Qijo4XacN4BJtwnF.0nz2', 'Алина', 'Ткачук', 'Female', '2019-12-18T08:37:37+0200'),
(43, 'Алла36495', 'LUbSiHPnx@bintime.com', '$2y$13$dL409SotF3HIbQjhUDHpYe5da4h2mX/UzTvez9SmX2EFwbZeEy6oy', 'Алла', 'Лысенко', 'Female', '2019-12-18T08:37:38+0200'),
(44, 'Мария36504', 'UdKaPaU@bintime.com', '$2y$13$S7VeYDgoWbLZN/r5M1cxvuMr/B7UNgAlA8pMR8fRDBM6C6PvgMzZe', 'Мария', 'Швец', 'Female', '2019-12-18T08:37:39+0200'),
(45, 'Иван3885', 'VhZyGQHdN@bintime.com', '$2y$13$/g6s4BzZBFKqxWvWdymNvuGranVqVh/4W.0jQpNcKUEgMDB9/V.yS', 'Иван', 'Шевченко', 'Male', '2019-12-18T08:37:40+0200'),
(46, 'Анастасия81158', 'MJSnFM@bintime.com', '$2y$13$/bc/s7nVKp6DAA90jNpL6uhUpZwM61wOtYu3DsCFvr8tbS9BYpeWS', 'Анастасия', 'Кравчук', 'Female', '2019-12-18T08:37:41+0200'),
(47, 'Татьяна45506', 'mAWxyJLD@bintime.com', '$2y$13$7C5L3Ndu/yeCmT05gfKrgu4iAq9rH7H30J2uNABnKmkcIWsZR2rpe', 'Татьяна', 'Ткаченко', NULL, '2019-12-18T08:37:42+0200'),
(48, 'Денис45205', 'IKNqNqXs@bintime.com', '$2y$13$yeYChF8qUA.rbpVEfEsLz..wRf8jjpD9C.ifUDZ3TQwCuQpeAeSya', 'Денис', 'Коваль', 'Male', '2019-12-18T08:37:43+0200'),
(49, 'Илья63178', 'anCjuIDpBV@bintime.com', '$2y$13$.ZX99TbuLe8oDgzP8B4kGuvcEUewvF.frv2spraI9DNIezPN03Aq2', 'Илья', 'Швец', 'Male', '2019-12-18T08:37:44+0200'),
(50, 'Евгения93258', 'QHQRMQTwe@bintime.com', '$2y$13$OEGS5ZFNg5i.oYQfD7gYceyLk/kfvAh5o1B2eamEwLSonj7qpnCUS', 'Евгения', 'Шевченко', 'Female', '2019-12-18T08:37:45+0200'),
(51, 'Валентин61961', 'NjRuiidg@bintime.com', '$2y$13$EPefcV6IyOK2ikbm3zDZgOLyz/0FqOIgeR/HZh.peXSYYQzdzkRru', 'Валентин', 'Бондаренко', NULL, '2019-12-18T08:37:46+0200'),
(52, 'Вероника19192', 'kRvAaC@bintime.com', '$2y$13$0csX2HMolOhRYf.u9iikqOnC/ltA2pvi9M8FrXt6GqsH1bqdawzS.', 'Вероника', 'Бойко', 'Female', '2019-12-18T08:37:47+0200'),
(53, 'Софья60914', 'LshaCyzy@bintime.com', '$2y$13$4t0LJECZJfOeUwtgJTVM7uwD.weEreIN7PxL4REnxBm.C432Nzxfe', 'Софья', 'Марченко', NULL, '2019-12-18T08:37:47+0200'),
(54, 'Кристина43101', 'POmjkKKELe@bintime.com', '$2y$13$YxVzBV86ci3gukXEJlRsguy.GB9T0pbaD2/ZCvihKwgey42Q8KiE2', 'Кристина', 'Гаврилюк', 'Female', '2019-12-18T08:37:48+0200'),
(55, 'Борис63950', 'HiwDWjFA@bintime.com', '$2y$13$9zyVbzmzd0q2QKAMcZsBT.vgvNGK24OIy4yX5EJCEtOATRxyOPuTm', 'Борис', 'Мороз', 'Male', '2019-12-18T08:37:49+0200'),
(56, 'Александр26787', 'DLeTRX@bintime.com', '$2y$13$CYu2xQiZaU/vvEQBzmByEefGBrbPBZwTR9WazC6W4EBpR5kU/JUOq', 'Александр', 'Савчук', 'Male', '2019-12-18T08:37:50+0200'),
(57, 'Артём18998', 'ougdVAWX@bintime.com', '$2y$13$id8kg/TETgOmrB2SR2TK9OKXQ1EgrcOdYxiNFfxm71NW0vKnsAKfq', 'Артём', 'Харченко', 'Male', '2019-12-18T08:37:51+0200'),
(58, 'Алексей84600', 'ImqMe@bintime.com', '$2y$13$iHDojSO848k0rNOdJ00KpuolqHev2mxMenbxHTDWaH3VIbIss7PI.', 'Алексей', 'Кузьменко', 'Male', '2019-12-18T08:37:52+0200'),
(59, 'Светлана52224', 'BEEhvwj@bintime.com', '$2y$13$p9/bxsPPUC9No7c6xv19feKhqG5FhacXfGwwQeZR4ViWxcryCD4V2', 'Светлана', 'Шевченко', NULL, '2019-12-18T08:37:53+0200'),
(60, 'Игорь86918', 'PcOvvy@bintime.com', '$2y$13$8fbO/cbXcQQ/QjlkGmMY0eF5Km2.T//YUMe7IiNik2cZWd/OVCU3W', 'Игорь', 'Бондар', 'Male', '2019-12-18T08:37:55+0200'),
(61, 'Ирина45190', 'HmairXl@bintime.com', '$2y$13$1DQd4VQPObELPXTrYVwL9e3s3pQ3UHJ3UfB9ecY1Sg8VlrYbJZyP6', 'Ирина', 'Коваль', 'Female', '2019-12-18T08:37:56+0200'),
(62, 'Руслан43335', 'lmixjpWgyB@bintime.com', '$2y$13$ykVaZJqFynTBUhcSpOgEp.oEF/rGrWdfcv3RF/Uhuu.5i5syL068a', 'Руслан', 'Ткаченко', 'Male', '2019-12-18T08:37:57+0200'),
(63, 'Лариса4291', 'mcUgbjZD@bintime.com', '$2y$13$VnAkUp89j0Ag/mPYe3wQGOjR.GB4x9.MYOk/0kt5B24p8sGJGQjki', 'Лариса', 'Гаврилюк', NULL, '2019-12-18T08:37:58+0200'),
(64, 'Александр28344', 'tQZRTxok@bintime.com', '$2y$13$Mcppeifp4qG/JJdKosTE7Opi114M83Rse3OMnDSgh5q1rlpJZD2AW', 'Александр', 'Коваль', NULL, '2019-12-18T08:37:59+0200'),
(65, 'Анна37903', 'Rbmxd@bintime.com', '$2y$13$abIxVgDqmoFedi6YEwHWMusX7lIEjwwkaQojrtXNCjhoi/Htj6sn.', 'Анна', 'Полищук', NULL, '2019-12-18T08:38:00+0200'),
(66, 'Ярослав32119', 'AqdUcsB@bintime.com', '$2y$13$hPsXVRefo3eY0F2N8iziLOxkrz1SK.t4tqhCPDW1MjVCB9kI1rUIq', 'Ярослав', 'Шевченко', NULL, '2019-12-18T08:38:01+0200'),
(67, 'Ева4779', 'HmrQUG@bintime.com', '$2y$13$cH4H5e4bWY2NWXCJrDaQAuxyaSAlGnJy/DtgLnMfFen/htciNWKea', 'Ева', 'Кузьменко', 'Female', '2019-12-18T08:38:02+0200'),
(68, 'Андрей13870', 'OSpGq@bintime.com', '$2y$13$iPGxlEs59C4wxUsZAqtmXeqBUR2l9OIYpdc5Oyu4U/ZspCcP6wF5G', 'Андрей', 'Полищук', 'Male', '2019-12-18T08:38:03+0200'),
(69, 'Юрий17573', 'XrkZsZe@bintime.com', '$2y$13$/SEftHISq2L8hhnzJkwFG.nDfIT32fBSRvB4x4006IM/ReNL5r4d.', 'Юрий', 'Кравченко', 'Male', '2019-12-18T08:38:05+0200'),
(70, 'Александр53058', 'yLnruRc@bintime.com', '$2y$13$czOI6CeRx.f4z5LsOmjYoO0hLnSriumss3aSCo9pOh/YhEsw120lS', 'Александр', 'Руденко', 'Male', '2019-12-18T08:38:06+0200');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
