-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Nov 30. 21:18
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `beadando`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `munkak`
--

CREATE TABLE `munkak` (
  `munkaid` int(11) NOT NULL,
  `mhelyid` int(11) DEFAULT NULL,
  `diakaz` int(11) DEFAULT NULL,
  `allas` varchar(255) DEFAULT NULL,
  `datum` datetime DEFAULT NULL,
  `oradij` int(11) DEFAULT NULL,
  `oraszam` int(11) DEFAULT NULL,
  `kozepiskolas` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `munkak`
--

INSERT INTO `munkak` (`munkaid`, `mhelyid`, `diakaz`, `allas`, `datum`, `oradij`, `oraszam`, `kozepiskolas`) VALUES
(1, 1, 1, 'kézbesítő', '2003-07-02 00:00:00', 400, 4, 0),
(2, 1, 2, 'ügyfélszolgálati munkatárs', '2003-07-03 00:00:00', 300, 4, 0),
(3, 2, 1, 'kisegítő', '2003-07-01 00:00:00', 500, 4, 1),
(4, 2, 2, 'eladó', '2003-07-01 00:00:00', 350, 4, 0),
(5, 1, 1, 'kézbesítő', '2003-07-03 00:00:00', 450, 6, 0),
(6, 1, 2, 'futár', '2003-07-06 00:00:00', 300, 5, 1),
(7, 2, NULL, 'eladó', '2003-07-07 00:00:00', 400, 6, 0),
(8, 9, NULL, 'kisegítő', '2003-06-19 00:00:00', 300, 4, 0),
(9, 9, 6, 'takarító', '2003-06-19 00:00:00', 400, 4, 0),
(10, 9, 6, 'takarító', '2003-06-20 00:00:00', 400, 4, 0),
(11, 9, 8, 'kisegítő', '2003-06-21 00:00:00', 300, 6, 1),
(12, 9, 8, 'kisegítő', '2003-06-22 00:00:00', 300, 6, 1),
(13, 9, 6, 'takarító', '2003-06-23 00:00:00', 400, 4, 0),
(14, 6, 4, 'ruhatáros', '2003-09-11 00:00:00', 400, 4, 0),
(15, 6, 7, 'ruhatáros', '2003-09-11 00:00:00', 400, 4, 0),
(16, 6, 5, 'pincér', '2003-06-11 00:00:00', 450, 6, 0),
(17, 6, 5, 'pincér', '2003-06-12 00:00:00', 450, 6, 0),
(18, 8, 9, 'eladó', '2003-07-21 00:00:00', 500, 4, 0),
(19, 8, 9, 'eladó', '2003-07-22 00:00:00', 500, 4, 0),
(20, 8, 10, 'takarító', '2003-08-10 00:00:00', 350, 6, 1),
(21, 8, 10, 'takarító', '2003-08-11 00:00:00', 350, 6, 1),
(22, 11, 5, 'eladó', '2003-05-10 00:00:00', 400, 4, 0),
(23, 11, 6, 'raktáros', '2003-05-20 00:00:00', 300, 4, 0),
(24, 11, 5, 'eladó', '2003-06-23 00:00:00', 300, 6, 0),
(25, 10, NULL, 'takarító', '2003-07-29 00:00:00', 250, 4, 1),
(26, 10, NULL, 'takarító', '2003-07-30 00:00:00', 250, 4, 1),
(27, 10, 3, 'takarító', '2003-07-31 00:00:00', 300, 4, 1),
(28, 10, 3, 'takarító', '2003-08-01 00:00:00', 300, 4, 1),
(29, 10, 8, 'eladó', '2003-09-12 00:00:00', 300, 6, 1),
(30, 10, 8, 'eladó', '2003-09-13 00:00:00', 300, 6, 1),
(31, 7, 8, 'ruhatáros', '2003-08-20 00:00:00', 200, 4, 1),
(32, 7, 8, 'ruhatáros', '2003-08-21 00:00:00', 200, 4, 1),
(33, 7, NULL, 'ruhatáros', '2003-08-22 00:00:00', 200, 4, 1),
(34, 7, NULL, 'ruhatáros', '2003-08-23 00:00:00', 200, 4, 1),
(35, 4, NULL, 'raktáros', '2003-10-10 00:00:00', 300, 6, 0),
(36, 4, NULL, 'raktáros', '2003-10-11 00:00:00', 300, 6, 0),
(37, 4, NULL, 'raktáros', '2003-10-12 00:00:00', 300, 6, 0),
(38, 5, 7, 'eladó', '2003-06-05 00:00:00', 400, 4, 0),
(39, 5, 7, 'eladó', '2003-06-06 00:00:00', 400, 4, 0),
(40, 5, 7, 'eladó', '2003-06-07 00:00:00', 400, 4, 0),
(41, 11, NULL, 'eladó', '2003-07-07 00:00:00', 400, 6, 0);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `munkak`
--
ALTER TABLE `munkak`
  ADD PRIMARY KEY (`munkaid`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `munkak`
--
ALTER TABLE `munkak`
  MODIFY `munkaid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
