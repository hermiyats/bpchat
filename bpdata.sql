-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 01 Eyl 2023, 20:20:41
-- Sunucu sürümü: 10.6.11-MariaDB
-- PHP Sürümü: 8.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `bpdata`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bp_chat_history`
--

CREATE TABLE `bp_chat_history` (
  `id` int(11) NOT NULL,
  `sender` varchar(30) NOT NULL,
  `message` varchar(256) NOT NULL,
  `hash` varchar(20) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bp_chat_reports`
--

CREATE TABLE `bp_chat_reports` (
  `id` int(11) NOT NULL,
  `sender` varchar(30) NOT NULL,
  `message` varchar(256) NOT NULL,
  `hash` varchar(20) NOT NULL,
  `reporter` varchar(30) NOT NULL,
  `reviewer` varchar(30) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `is_punishable` tinyint(4) DEFAULT NULL,
  `decision` tinyint(4) DEFAULT NULL,
  `report_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;


--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `bp_chat_history`
--
ALTER TABLE `bp_chat_history`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `bp_chat_reports`
--
ALTER TABLE `bp_chat_reports`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `bp_chat_history`
--
ALTER TABLE `bp_chat_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17546;

--
-- Tablo için AUTO_INCREMENT değeri `bp_chat_reports`
--
ALTER TABLE `bp_chat_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
