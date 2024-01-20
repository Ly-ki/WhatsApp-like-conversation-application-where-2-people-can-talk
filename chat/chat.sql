-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 20 Oca 2024, 01:25:35
-- Sunucu sürümü: 10.4.21-MariaDB
-- PHP Sürümü: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `chat`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `messagebox`
--

CREATE TABLE `messagebox` (
  `id` int(11) NOT NULL,
  `messages` varchar(255) NOT NULL,
  `message_type` int(55) NOT NULL,
  `message_id` int(11) NOT NULL,
  `deleted` int(11) DEFAULT 0,
  `dates` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `messagebox`
--

INSERT INTO `messagebox` (`id`, `messages`, `message_type`, `message_id`, `deleted`, `dates`) VALUES
(1, 'Selam <3', 0, 1, 0, '06:50'),
(2, 'Merhaba', 0, 0, 0, '06:51'),
(3, 'sfdgdgf', 0, 1, 0, '06:52'),
(4, 'sdfgsdfg', 0, 0, 0, '06:53'),
(5, 'sa', 0, 1, 0, '06:57'),
(6, 'Cevap gelÄ±r mÄ±', 0, 1, 0, '07:09'),
(7, 'Heyyy', 0, 1, 0, '07:11'),
(8, 'helloo', 0, 1, 0, '13:36'),
(9, 'hiii', 0, 0, 0, '13:37'),
(10, 'hellöç', 0, 1, 0, '22:35'),
(11, 'ðŸ¤£', 0, 1, 0, '22:38'),
(12, 'ðŸ¤£', 0, 1, 0, '22:48'),
(13, 'ðŸ¤£', 0, 1, 0, '22:48'),
(14, 'ðŸ¤£', 0, 1, 0, '22:52'),
(15, 'ðŸ¤£', 0, 1, 0, '22:53'),
(16, 'ðŸ¤£', 0, 1, 0, '22:53'),
(17, 'ðŸ¤£', 0, 1, 0, '22:54'),
(18, 'ðŸ¤£', 0, 1, 0, '22:54'),
(19, 'ðŸ¤£', 0, 1, 0, '22:54'),
(20, 'ðŸ¤£', 0, 1, 0, '22:54'),
(21, 'ðŸ¤£', 0, 1, 0, '22:55'),
(22, 'dsf', 0, 1, 0, '23:04'),
(23, 'selammmmm', 0, 0, 0, '23:18'),
(24, 'selam', 0, 1, 0, '03:23');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `names` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL DEFAULT '0',
  `pass` int(255) NOT NULL,
  `types` int(55) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`id`, `names`, `avatar`, `pass`, `types`) VALUES
(1, 'baris', 'avatar-1.jpg', 123, 1),
(2, 'Zehra', 'avatar-2.jpg', 123, 0);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `messagebox`
--
ALTER TABLE `messagebox`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `messagebox`
--
ALTER TABLE `messagebox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
