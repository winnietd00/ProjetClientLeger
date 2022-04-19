-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 19 avr. 2022 à 15:01
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ns`
--

-- --------------------------------------------------------

--
-- Structure de la table `activitée`
--

CREATE TABLE `activitée` (
  `idactivitée` int(20) NOT NULL,
  `nomActivitée` varchar(20) NOT NULL,
  `durée` varchar(20) NOT NULL,
  `prixActivitée` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `idCli` int(15) NOT NULL,
  `nomc` varchar(30) NOT NULL,
  `prenomc` varchar(30) NOT NULL,
  `telc` int(10) NOT NULL,
  `date_nais` int(7) NOT NULL,
  `emailc` varchar(50) NOT NULL,
  `mdpc` int(11) NOT NULL,
  `niveau` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `idCom` int(15) NOT NULL,
  `avis` varchar(500) NOT NULL,
  `titAvi` varchar(50) NOT NULL,
  `identi` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `contratsloc`
--

CREATE TABLE `contratsloc` (
  `idConloc` int(15) NOT NULL,
  `numl` int(20) NOT NULL,
  `debutl` datetime(6) NOT NULL,
  `finl` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `contratsproprio`
--

CREATE TABLE `contratsproprio` (
  `idCon` int(10) NOT NULL,
  `num_contrat` int(10) NOT NULL,
  `close_contrat` varchar(500) NOT NULL,
  `debut_contrat` int(30) NOT NULL,
  `fin_contrat` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `destination`
--

CREATE TABLE `destination` (
  `idDesti` int(15) NOT NULL,
  `villesd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `locataire`
--

CREATE TABLE `locataire` (
  `noml` varchar(20) NOT NULL,
  `prenoml` varchar(20) NOT NULL,
  `datenaisl` date NOT NULL,
  `telephonel` int(15) NOT NULL,
  `idl` int(11) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `pseudol` varchar(20) NOT NULL,
  `mdpl` varchar(20) NOT NULL,
  `niveau` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `logements`
--

CREATE TABLE `logements` (
  `idLog` int(20) NOT NULL,
  `typelogl` varchar(50) NOT NULL,
  `adressel` varchar(50) NOT NULL,
  `cpl` char(5) NOT NULL,
  `villel` varchar(50) NOT NULL,
  `paysl` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `proprietaire`
--

CREATE TABLE `proprietaire` (
  `idPro` int(10) NOT NULL,
  `prenomp` varchar(20) NOT NULL,
  `nomp` varchar(20) NOT NULL,
  `date_naissance` date NOT NULL,
  `numpro` int(10) NOT NULL,
  `adressep` varchar(50) NOT NULL,
  `paysp` varchar(50) NOT NULL,
  `villep` varchar(50) NOT NULL,
  `cpp` char(5) NOT NULL,
  `mdp` text NOT NULL,
  `niveau` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `proprietaire`
--

INSERT INTO `proprietaire` (`idPro`, `prenomp`, `nomp`, `date_naissance`, `numpro`, `adressep`, `paysp`, `villep`, `cpp`, `mdp`, `niveau`) VALUES
(1, 'toto', 'toto', '2022-01-05', 0, 'toto', 'Bac', 'toto', 'toto', 'toto', 1),
(2, 'tata', 'tata', '2022-01-05', 0, 'tata', 'BTS1', 'tata', 'tata', 'tata', 1),
(3, 'winnie', 'tapi', '2000-01-03', 0, '2 rue des cousins', 'Belgique', 'paris', '75017', 'winnie2022', 1),
(4, 'dodo', 'dodo', '2022-01-05', 0, '2 rue des cousins', 'Angleterre', 'paris', '75000', 'dodo', 1);

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `idRese` int(15) NOT NULL,
  `dateArr` datetime(6) NOT NULL,
  `dateRet` datetime(6) NOT NULL,
  `etat_rese` varchar(10) NOT NULL,
  `typePai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `saison`
--

CREATE TABLE `saison` (
  `idsai` int(15) NOT NULL,
  `numsai` int(20) NOT NULL,
  `pours` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `activitée`
--
ALTER TABLE `activitée`
  ADD PRIMARY KEY (`idactivitée`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`idCli`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`idCom`);

--
-- Index pour la table `contratsloc`
--
ALTER TABLE `contratsloc`
  ADD PRIMARY KEY (`idConloc`);

--
-- Index pour la table `contratsproprio`
--
ALTER TABLE `contratsproprio`
  ADD PRIMARY KEY (`idCon`);

--
-- Index pour la table `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`idDesti`);

--
-- Index pour la table `locataire`
--
ALTER TABLE `locataire`
  ADD PRIMARY KEY (`idl`);

--
-- Index pour la table `logements`
--
ALTER TABLE `logements`
  ADD PRIMARY KEY (`idLog`);

--
-- Index pour la table `proprietaire`
--
ALTER TABLE `proprietaire`
  ADD PRIMARY KEY (`idPro`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`idRese`);

--
-- Index pour la table `saison`
--
ALTER TABLE `saison`
  ADD PRIMARY KEY (`idsai`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `activitée`
--
ALTER TABLE `activitée`
  MODIFY `idactivitée` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `idCli` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `contratsproprio`
--
ALTER TABLE `contratsproprio`
  MODIFY `idCon` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `destination`
--
ALTER TABLE `destination`
  MODIFY `idDesti` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `locataire`
--
ALTER TABLE `locataire`
  MODIFY `idl` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `logements`
--
ALTER TABLE `logements`
  MODIFY `idLog` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `proprietaire`
--
ALTER TABLE `proprietaire`
  MODIFY `idPro` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `idRese` int(15) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
