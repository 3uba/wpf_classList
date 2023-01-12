-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 12 Sty 2023, 20:56
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `studens`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `common`
--

CREATE TABLE `common` (
  `id` int(11) NOT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `common`
--

INSERT INTO `common` (`id`, `surname`, `name`, `address`, `city`, `phone`, `email`) VALUES
(1, 'kuba', 'kuba', 'ulica', 'miasto', '123123123', 'kuba@gmail.com'),
(2, 'test', 'xyz', 'ulica', 'miasto', '123123123', 'kuba@gmail.com'),
(3, 'test', 'kuba', 'ulica', 'miasto', '123123123', 'kuba@gmail.com'),
(4, 'test', 'kuba', 'ulica', 'miasto', '123123123', 'kuba@gmail.com'),
(5, 'test', 'kuba', 'ulica', 'miasto', '123123123', 'kuba@gmail.com'),
(6, 'test', 'kuba', 'ulica', 'miasto', '123123123', 'kuba@gmail.com'),
(7, '234234234', 'kuba', 'ulica', 'miasto', '123123123', 'kuba@gmail.com'),
(8, 'asd', 'asd', 'addsa', 'asd', 'asda', 'asd'),
(9, '1231231', '12312', '123', '123', '123', '123132'),
(10, 'wy45 eyhrqhweb ry', 'wery bwb23 6', NULL, NULL, NULL, NULL),
(11, 'wy45 eyhrqhweb ry', 'wery bwb23 6', NULL, NULL, NULL, NULL),
(12, '2314213412412AFS', NULL, '2 4124 ', '1 45 4', '2134', NULL),
(13, '13241234121', '213123123', NULL, NULL, NULL, NULL);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `common`
--
ALTER TABLE `common`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `common`
--
ALTER TABLE `common`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
