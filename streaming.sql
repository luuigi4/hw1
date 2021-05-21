-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 21, 2021 alle 23:50
-- Versione del server: 10.4.14-MariaDB
-- Versione PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `streaming`
--
CREATE DATABASE IF NOT EXISTS `streaming` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `streaming`;

-- --------------------------------------------------------

--

-- --------------------------------------------------------

--
-- Struttura della tabella `catalogo`
--

CREATE TABLE `catalogo` (
  `Codice` int(11) NOT NULL,
  `NomeStreaming` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `catalogo`
--

INSERT INTO `catalogo` (`Codice`, `NomeStreaming`) VALUES
(1, 'Amazon prime'),
(2, 'Disney'),
(3, 'Infinity'),
(4, 'Netflix'),
(5, 'Now Tv');

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `contenuti`
-- (Vedi sotto per la vista effettiva)
--
CREATE TABLE `contenuti` (
`id` int(10)
,`titolo` varchar(30)
,`regista` varchar(30)
,`streaming` varchar(30)
,`genere` varchar(50)
,`anno` int(11)
,`poster` varchar(300)
);

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `contenuti_serie`
-- (Vedi sotto per la vista effettiva)
--
CREATE TABLE `contenuti_serie` (
`titolo` varchar(30)
,`regista` varchar(30)
,`streaming` varchar(30)
,`genere` varchar(30)
,`N_episodi` int(11)
,`poster` varchar(20)
);

--
-- Struttura della tabella `film`
--

CREATE TABLE `film` (
  `Nome` varchar(30) NOT NULL,
  `Regista` int(11) NOT NULL,
  `Catalogo` int(11) NOT NULL,
  `Genere` varchar(50) DEFAULT NULL,
  `Anno` int(11) DEFAULT NULL,
  `Poster` varchar(300) DEFAULT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `film`
--

INSERT INTO `film` (`Nome`, `Regista`, `Catalogo`, `Genere`, `Anno`, `Poster`, `id`) VALUES
('Birds of Prey', 13, 5, 'Azione', 2020, 'prey.jpg', 1),
('Bohemian', 3, 1, 'Documentario', 2018, 'bohemian.jpg', 2),
('Gemini man', 12, 1, 'Azione', 2019, 'gemini.jpg', 3),
('Il re leone', 15, 2, 'Action', 2019, 're_leone.jpg', 4),
('Joker', 4, 3, 'Drammatico', 2019, 'Joker.jpg', 5),
('Justice League', 7, 5, 'Avventura', 2019, 'justice-league.jpg', 6),
('Pirati dei caraibi', 8, 2, 'Avventura', 2005, 'pdc.jpg', 7),
('Signore degli anelli', 14, 3, 'Fantasy', 2001, 'lotr.jpg', 8),
('Tenet', 5, 1, 'Avventura', 2020, 'tenet.jpg', 9),
('The Avengers', 2, 2, 'Fantastico', 2012, 'avengers.jpg', 10),
('The Hangover', 4, 4, 'Comico', 2008, 'hangover.jpg', 11),
('V per Vendetta', 6, 4, 'Avventura', 2005, 'v-per-vendetta.jpg', 12),
('Breaking Bad', 9, 4, 'Azione', 2008, 'brba.jpg', 13),
('Casa di Carta', 11, 4, 'Azione', 2018, 'papel.jpg', 14),
('Game of Thrones', 1, 5, 'Fantasy', 2014, 'game_of_thrones.jpg', 15),
('Mr Robot', 10, 1, 'Avventura', 2017, 'mr_robot.jpg', 16),
('Interstellar', 5, 3, 'Fantascientifico', 2014, 'interstellar.jpg', 17),
('Limitless', 17, 3, 'Sci-Fi', 2011, 'https://m.media-amazon.com/images/M/MV5BYmViZGM0MGItZTdiYi00ZDU4LWIxNDYtNTc1NWQ5Njc2N2YwXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_SX300.jpg', 18),
('The Big Bang Theory', 18, 5, 'Comedy', 2007, 'https://m.media-amazon.com/images/M/MV5BY2FmZTY5YTktOWRlYy00NmIyLWE0ZmQtZDg2YjlmMzczZDZiXkEyXkFqcGdeQXVyNjg4NzAyOTA@._V1_SX300.jpg', 19),
('Rush', 20, 4, 'Action', 2013, 'https://m.media-amazon.com/images/M/MV5BOWEwODJmZDItYTNmZC00OGM4LThlNDktOTQzZjIzMGQxODA4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg', 20),
('Titanic', 19, 4, 'Drama', 1997, 'https://m.media-amazon.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SX300.jpg', 21),
('Guardians of the Galaxy Vol. 2', 21, 1, 'Action', 2017, 'https://m.media-amazon.com/images/M/MV5BNjM0NTc0NzItM2FlYS00YzEwLWE0YmUtNTA2ZWIzODc2OTgxXkEyXkFqcGdeQXVyNTgwNzIyNzg@._V1_SX300.jpg', 22),
('Gladiator', 16, 4, 'Action', 2000, 'https://m.media-amazon.com/images/M/MV5BMDliMmNhNDEtODUyOS00MjNlLTgxODEtN2U3NzIxMGVkZTA1L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg', 23),
('Rocky', 22, 4, 'Drama', 1976, 'https://m.media-amazon.com/images/M/MV5BMTY5MDMzODUyOF5BMl5BanBnXkFtZTcwMTQ3NTMyNA@@._V1_SX300.jpg', 24);

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `film_per_regista`
-- (Vedi sotto per la vista effettiva)
--
CREATE TABLE `film_per_regista` (
`Nome` varchar(30)
,`Regista` varchar(30)
);

-- --------------------------------------------------------

-

--
-- Struttura della tabella `news`
--

CREATE TABLE `news` (
  `Id` int(11) NOT NULL,
  `Autore` varchar(40) DEFAULT NULL,
  `Data` date DEFAULT NULL,
  `Categoria` varchar(40) DEFAULT NULL,
  `Titolo` varchar(200) DEFAULT NULL,
  `Descrizione` varchar(400) DEFAULT NULL,
  `Immagine` varchar(300) DEFAULT NULL,
  `Url` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `news`
--

INSERT INTO `news` (`Id`, `Autore`, `Data`, `Categoria`, `Titolo`, `Descrizione`, `Immagine`, `Url`) VALUES
(1, 'Redazione ANSA', '2021-05-03', 'Movie', 'Corto de I Simpson per lo Star Wars Day', 'In occasione del 4 maggio anche conosciuto come Star Wars Day, tante le iniziative Disney e non per celebrare la saga creata da George Lucas. Su Disney+ debuttano la nuova serie originale Star Wars: The Bad Batch, ed un cortometraggio de I Simpson a tema Star Wars.', 'simpstars.png', 'https://www.ansa.it/sito/notizie/cultura/cinema/2021/05/03/corto-de-i-simpson-per-lo-star-wars-day_a8a0e6fc-bd8d-4f3e-8923-974708fc3c80.html'),
(2, 'Redazione Web', '2021-05-06', 'Entartainment', 'Diodato, su \'Il Divin Codino\' la storia di Roberto Baggio: «Un\'emozione firmare questa colonna sonora»', 'Diodato firma la main song de Il Divin Codino, disponibile su Netflix dal 26 maggio. L\'uomo dietro il Campione, uscirà il 14 maggio su tutte le piattaforme di streaming, in contemporanea al videoclip ufficiale su YouTube.', 'https://www.leggo.it/photos/MED/86/18/5938618_1537_diodato_luomodietroilcampione.jpg', 'https://www.leggo.it/spettacoli/serie_tv/diodato_emozione_di_cantare_bellissima_storia_di_sport_di_vita_quella_di_roberto_baggio_cantautore_firma_divin_codino_colonna_sonora_film_uomo_dietro_campione-5938618.html'),
(3, 'Luca Carbonaro', '2021-05-17', 'Technology', 'Loki: ecco la nuova clip mostrata agli MTV Movie & TV Awards', 'Mancano ormai poche settimane al debutto su Disney Plus di Loki, serie TV che vedrà Tom Hiddleston riprendere il ruolo del dio asgardiano dell\'inganno.  Tra viaggi temporali, adrenalina, azione e humor, lo show promette scintile ed è una delle produzioni più attesa dai fan.', 'https://www.lascimmiapensa.com/wp-content/uploads/2021/04/Loki.jpg', 'https://www.tomshw.it/culturapop/loki-ecco-la-nuova-clip-mostrata-agli-mtv-movie-tv-awards/'),
(4, 'Redazione ANSA', '2021-04-30', 'Technology', 'Netflix, arriva un tasto per gli indecisi', 'Per tutti gli \'indecisi cronici\' che non sanno scegliere cosa vedere, Netflix sta per aggiungereil tasto \'Play something\' che automaticamente fa partire un contenuto mai visto prima dall\'utente scelto in base alle sua visioni precedenti.', 'https://www.ansa.it/webimages/img_700/2021/4/20/ebdd53ec83990c9e846411c1be6ab394.jpg', 'https://www.ansa.it/sito/notizie/tecnologia/software_app/2021/04/30/netflix-arriva-un-tasto-per-gli-indecisi_ac3eff21-6b0d-46a3-b228-a89cdb2f00a7.html'),
(5, 'Redazione ANSA', '2021-05-08', 'Culture', 'Golden Globe, Netflix e Amazon tagliano i ponti', 'NEW YORK - La bufera sulla Hollywood Foreign Press non accenna a placarsi: prima Netflix e poi a ruota Amazon hanno tagliato i ponti con l\'organizzazione che ogni anno assegna i Golden Globe fino a quando quest\'ultima non avrà adottato \'riforme più significative\'', 'https://www.ansa.it/webimages/img_700/2021/2/26/38367ce8651dd9ed802457e8f071af39.jpg', 'https://www.ansa.it/sito/notizie/cultura/cinema/2021/05/08/golden-globe-netflix-e-amazon-tagliano-i-ponti_24bfa101-a975-40b3-8493-e5db84fbf951.html'),
(6, 'Sole 24 ore', '2021-05-16', 'Economy', 'Usa, AT&T verso la fusione con Discovery per contrastare Netflix e streaming', 'Secondo Bloomberg l\'operazione sancirebbe un deciso cambio di rotta dopo anni di investimenti sempre meno fruttuosi nella tv tradizionale. Accordo da 43 miliardi di dollari tra Discovery e AT&T per gli asset multimediali dei due colossi.', 'https://i2.res.24o.it/images2010/2021/05/AEV41fJ/images/7e6fea04-b670-11eb-adf8-ac12e5a34ec2-fotohome0.jpg', 'https://www.ilsole24ore.com/art/usa-att-la-fusione-discovery-contrastare-netflix-e-streaming-AEV41fJ'),
(7, 'Fatto Quotidiano', '2021-05-14', 'Legal', 'Streaming illegale, 45 sotto inchiesta: oscurati 1,5 milioni di abbonamenti irregolari a Sky, Dazn, Mediaset e Netflix', 'Quarantacinque indagati e 1,5 milioni di abbonamenti illegali a pay-per-view oscurati.Azzerato l\'80% del flusso delle Iptv a nero.', 'https://st.ilfattoquotidiano.it/wp-content/uploads/2020/03/23/streaming-video-51480.jpg', 'https://www.ilfattoquotidiano.it/2021/05/14/streaming-illegale-45-sotto-inchiesta-a-catania-oscurati-15-milioni-di-abbonamenti-irregolari-a-sky-dazn-mediaset-e-netflix/6197514/');

-- --------------------------------------------------------

--
-- Struttura della tabella `preferiti`
--

CREATE TABLE `preferiti` (
  `Id_Utente` int(11) NOT NULL,
  `Nome_Utente` varchar(30) DEFAULT NULL,
  `Titolo` varchar(30) DEFAULT NULL,
  `Id_Film` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------


--
-- Struttura della tabella `regista`
--

CREATE TABLE `regista` (
  `Id` int(11) NOT NULL,
  `Nome` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `regista`
--

INSERT INTO `regista` (`Id`, `Nome`) VALUES
(1, 'Brian Kirk'),
(2, 'Joss Whedon'),
(3, 'Bryan Singer'),
(4, 'Todd Phillips'),
(5, 'Christopher Nolan'),
(6, 'James McTeigue'),
(7, 'Zack Snyder'),
(8, 'Espen Sandberg'),
(9, 'Vince Gilligan'),
(10, 'Sam Esmaili'),
(11, 'Alex Pina'),
(12, 'Ang Lee'),
(13, 'Cathy Yan'),
(14, 'Peter Jackson'),
(15, 'John Favreau'),
(16, 'Ridley Scott'),
(17, 'Neil Burger'),
(18, 'N/A'),
(19, 'James Cameron'),
(20, 'Ron Howard'),
(21, 'James Gunn'),
(22, 'John G. Avildsen');



-- --------------------------------------------------------

--
-- Struttura della tabella `streaming`
--

CREATE TABLE `streaming` (
  `Nome` varchar(30) NOT NULL,
  `N_utenti` int(11) DEFAULT NULL,
  `Fatturato` int(11) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `streaming`
--

INSERT INTO `streaming` (`Nome`, `N_utenti`, `Fatturato`, `Email`) VALUES
('Amazon prime', 3, 9615, 'amazonprimevideo@live.com'),
('Disney+', 3, 6450, 'disney+@outlook.it'),
('Infinity', 2, 6511, 'infinity@mediaset.com'),
('Netflix', 5, 12015, 'netflix@contactus.com'),
('Now tv', 4, 8905, 'nowtv@sky.com');

-- --------------------------------------------------------
--
-- Struttura della tabella `utenti`
--

CREATE TABLE `utenti` (
  `id` int(10) NOT NULL,
  `Nome` varchar(30) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`id`, `Nome`, `Email`, `password`) VALUES
(1, 'Paolo Rossi', 'paolorossi@gmail.com', '123456'),
(2, 'Marco Lombardi', 'marcolom@gmail.com', 'password'),
(3, 'Francesco Luisani', 'cicciolua@live.com', 'qwerty'),
(4, 'Emanuele Adani', 'adanifut@sky.it', 'futbol'),
(5, 'Mirko Genovesi', 'genovesi@outlook.com', 'love01'),
(6, 'Giovanna Guardado', 'guardado7@outlook', '12345678'),
(7, 'Giorgia Difatta', 'giorgia12@live.com', 'abc123'),
(8, 'Piera Sorini', 'sorini@gmail.com', 'ciao01'),
(9, 'Mattia Guerrini', 'mttgue@outlook', 'welcome'),
(10, 'Rosalba Schillaci', 'rosalba34@yahoo.com', 'utente'),
(11, 'Martina Micaeli', 'martmic@outlook.com', 'owner1'),
(12, 'Francesca Diolosà', 'cicciadiolosà32@gmail.com', '111111'),
(13, 'Silvia Longheu', 'silvia34@gmail.com', 'login1'),
(14, 'Claudio Leonardi', 'cla24k@live.com', 'qwertyuiop'),
(15, 'Beatrice Isoarda', 'bea43@outlook.com', 'passw0rd'),
(16, 'Simona Fresu', 'simonafresu21@yahoo.com', 'hello01'),
(17, 'Mario Signori', 'mrsig78@outlook.com', 'pwd101'),
(18, 'Marco Alonso', 'alonso14@gmail.com', 'gp2engine');

-- --------------------------------------------------------



-- Struttura per vista `contenuti`
--
DROP TABLE IF EXISTS `contenuti`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `contenuti`  AS SELECT `f`.`id` AS `id`, `f`.`Nome` AS `titolo`, `r`.`Nome` AS `regista`, `c`.`NomeStreaming` AS `streaming`, `f`.`Genere` AS `genere`, `f`.`Anno` AS `anno`, `f`.`Poster` AS `poster` FROM ((`regista` `r` join `film` `f` on(`f`.`Regista` = `r`.`Id`)) join `catalogo` `c` on(`c`.`Codice` = `f`.`Catalogo`)) ;

-- --------------------------------------------------------

--
-- Struttura per vista `contenuti_serie`
--
DROP TABLE IF EXISTS `contenuti_serie`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `contenuti_serie`  AS SELECT `s`.`Nome` AS `titolo`, `r`.`Nome` AS `regista`, `c`.`NomeStreaming` AS `streaming`, `s`.`Genere` AS `genere`, `s`.`N_episodi` AS `N_episodi`, `s`.`poster` AS `poster` FROM ((`regista` `r` join `serie_tv` `s` on(`s`.`Regista` = `r`.`Id`)) join `catalogo` `c` on(`c`.`Codice` = `s`.`Catalogo`)) ;

-- --------------------------------------------------------

--
-- Struttura per vista `fatt_rep`
--
DROP TABLE IF EXISTS `fatt_rep`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `fatt_rep`  AS SELECT `r`.`NomeStreaming` AS `Streaming`, sum(`r`.`fatturato`) AS `fatturato` FROM `reparto` AS `r` GROUP BY `r`.`NomeStreaming` ;

-- --------------------------------------------------------

--
-- Struttura per vista `film_per_regista`
--
DROP TABLE IF EXISTS `film_per_regista`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `film_per_regista`  AS SELECT `f`.`Nome` AS `Nome`, `r`.`Nome` AS `Regista` FROM (`film` `f` join `regista` `r` on(`f`.`Regista` = `r`.`Id`)) GROUP BY `f`.`Nome` ;

-- --------------------------------------------------------

--
-- Struttura per vista `opere_registe`
--
DROP TABLE IF EXISTS `opere_registe`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `opere_registe`  AS SELECT `r`.`Nome` AS `NOME`, `f`.`Nome` AS `FILM`, `s`.`Nome` AS `SERIE` FROM ((`regista` `r` join `film` `f` on(`f`.`Regista` = `r`.`Id`)) join `serie_tv` `s` on(`s`.`Regista` = `r`.`Id`)) WHERE `r`.`Repertorio` = 'BOTH' ;

-- --------------------------------------------------------


--
-- Struttura per vista `vista_int`
--
DROP TABLE IF EXISTS `vista_int`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_int`  AS SELECT `f`.`Regista` AS `idreg`, `f`.`Nome` AS `film`, `s`.`Nome` AS `serie` FROM (`serie_tv` `s` join `film` `f` on(`f`.`Regista` = `s`.`Regista`)) ;

--
-- Indici per le tabelle scaricate
--
-- Indici per le tabelle `catalogo`
--
ALTER TABLE `catalogo`
  ADD PRIMARY KEY (`Codice`),
  ADD KEY `idx_nomestreaming` (`NomeStreaming`);

--
-- Indici per le tabelle `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_regista` (`Regista`),
  ADD KEY `idx_catalogo` (`Catalogo`);

--
-- Indici per le tabelle `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`Id`);

--
-- Indici per le tabelle `preferiti`
--
ALTER TABLE `preferiti`
  ADD PRIMARY KEY (`Id_Utente`,`Id_Film`),
  ADD KEY `idx_Id_Utente` (`Id_Utente`),
  ADD KEY `idx_Id_Film` (`Id_Film`);

--
-- Indici per le tabelle `regista`
--
ALTER TABLE `regista`
  ADD PRIMARY KEY (`Id`);


--
-- Indici per le tabelle `streaming`
--
ALTER TABLE `streaming`
  ADD PRIMARY KEY (`Nome`);


-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `film`
--
ALTER TABLE `film`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT per la tabella `utenti`
--
ALTER TABLE `utenti`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `dipendenti`

-- Limiti per la tabella `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`Catalogo`) REFERENCES `catalogo` (`Codice`),
  ADD CONSTRAINT `film_ibfk_2` FOREIGN KEY (`Regista`) REFERENCES `regista` (`Id`);

-- Limiti per la tabella `preferiti`
--
ALTER TABLE `preferiti`
  ADD CONSTRAINT `preferiti_ibfk_1` FOREIGN KEY (`Id_Utente`) REFERENCES `utenti` (`id`),
  ADD CONSTRAINT `preferiti_ibfk_2` FOREIGN KEY (`Id_Film`) REFERENCES `film` (`id`);



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
