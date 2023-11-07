-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 07 Lis 2023, 18:18
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `projekt`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `firma`
--

CREATE TABLE `firma` (
  `firma_id` int(11) NOT NULL,
  `Nazwa` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `Adres` text COLLATE utf8mb4_polish_ci NOT NULL,
  `Kraj` text COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownik`
--

CREATE TABLE `uzytkownik` (
  `uzytkownik_id` int(11) NOT NULL,
  `haslo` text COLLATE utf8mb4_polish_ci NOT NULL,
  `Imie` varchar(25) COLLATE utf8mb4_polish_ci NOT NULL,
  `Nazwisko` varchar(25) COLLATE utf8mb4_polish_ci NOT NULL,
  `data_urodzenia` date NOT NULL,
  `email` varchar(40) COLLATE utf8mb4_polish_ci NOT NULL,
  `Telefon` int(11) NOT NULL,
  `miejsce_zamieszkania` varchar(40) COLLATE utf8mb4_polish_ci NOT NULL,
  `stanowisko_pracy` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `opis_stanowiska` text COLLATE utf8mb4_polish_ci NOT NULL,
  `podsumowanie_zawodowe` text COLLATE utf8mb4_polish_ci NOT NULL,
  `doswiadczenie` text COLLATE utf8mb4_polish_ci NOT NULL,
  `Wyksztalcenie` text COLLATE utf8mb4_polish_ci NOT NULL,
  `jezyki_obce` varchar(9) COLLATE utf8mb4_polish_ci NOT NULL,
  `Umiejetnosci` varchar(9) COLLATE utf8mb4_polish_ci NOT NULL,
  `Linki` varchar(20) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `firma`
--
ALTER TABLE `firma`
  ADD PRIMARY KEY (`firma_id`);

--
-- Indeksy dla tabeli `uzytkownik`
--
ALTER TABLE `uzytkownik`
  ADD PRIMARY KEY (`uzytkownik_id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `firma`
--
ALTER TABLE `firma`
  MODIFY `firma_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `uzytkownik`
--
ALTER TABLE `uzytkownik`
  MODIFY `uzytkownik_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
