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
-- Tábla szerkezet ehhez a táblához `diak`
--

CREATE TABLE `diak` (
  `diakaz` int(11) NOT NULL,
  `nev` varchar(100) DEFAULT NULL,
  `szulido` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_hungarian_ci;

--
-- A tábla adatainak kiíratása `diak`
--

INSERT INTO `diak` (`diakaz`, `nev`, `szulido`) VALUES
(1, 'Kos Péter', '1987-11-05 00:00:00'),
(2, 'Port Imre', '1990-05-05 00:00:00'),
(3, 'Kovács Imre', '1984-03-02 00:00:00'),
(4, 'Horváth Emil', '1988-05-02 00:00:00'),
(5, 'Kapos Petra', '1985-12-23 00:00:00'),
(6, 'Csóka Anna', '1981-11-30 00:00:00'),
(7, 'Nyúl Tamás', '1988-02-16 00:00:00'),
(8, 'Ordasi Emma', '1989-01-03 00:00:00'),
(9, 'Koppány Olga', '1984-02-28 00:00:00'),
(10, 'Kozma Patrícia', '1983-06-01 00:00:00');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `diak`
--
ALTER TABLE `diak`
  ADD PRIMARY KEY (`diakaz`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
