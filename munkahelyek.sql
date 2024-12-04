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
-- Tábla szerkezet ehhez a táblához `munkahelyek`
--

CREATE TABLE `munkahelyek` (
  `mhelyid` int(11) NOT NULL,
  `nev` varchar(255) DEFAULT NULL,
  `telepules` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_hungarian_ci;

--
-- A tábla adatainak kiíratása `munkahelyek`
--

INSERT INTO `munkahelyek` (`mhelyid`, `nev`, `telepules`) VALUES
(1, 'Bicaj Futárszolgálat', 'Csepűfalva'),
(2, 'Soós Pékség', 'Szombati'),
(3, 'Pokol Vagyonvédelem', 'Komád'),
(4, 'Vass Kereskedés', 'Zombrád'),
(5, 'Kati Virágbolt', 'Komád'),
(6, 'Fekete Kávéház', 'Szombati'),
(7, 'Körúti Kávéház', 'Csepűfalva'),
(8, 'Királyi Cukrászat', 'Zombrád'),
(9, 'Konty Fodrászat', 'Szombati'),
(10, 'Falat Pékség', 'Komád'),
(11, 'Korr Vaskereskedés', 'Csepűfalva');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `munkahelyek`
--
ALTER TABLE `munkahelyek`
  ADD PRIMARY KEY (`mhelyid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
