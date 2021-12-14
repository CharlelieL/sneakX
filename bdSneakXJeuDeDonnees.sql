-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 14 déc. 2021 à 14:13
-- Version du serveur :  8.0.21
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bdsneakx`
--

-- --------------------------------------------------------

--
-- Structure de la table `chaussure`
--

DROP TABLE IF EXISTS `chaussure`;
CREATE TABLE IF NOT EXISTS `chaussure` (
  `IDCHAUSSURE` int NOT NULL AUTO_INCREMENT,
  `IDMARQUEP` int DEFAULT NULL,
  `IDMARQUEC` int DEFAULT NULL,
  `IDMODELE` int DEFAULT NULL,
  `IDSAISON` int NOT NULL,
  `IDTYPE` int NOT NULL,
  `SKU` char(20) NOT NULL,
  `PRIXRETAI` double(5,2) NOT NULL,
  `PRIXRESELLE` double(5,2) NOT NULL,
  `DATESORTIE` date NOT NULL,
  `NOM` char(32) NOT NULL,
  PRIMARY KEY (`IDCHAUSSURE`),
  KEY `I_FK_CHAUSSURE_MODELE` (`IDMODELE`),
  KEY `I_FK_CHAUSSURE_SAISON` (`IDSAISON`),
  KEY `I_FK_CHAUSSURE_TYPECHAUSSURE` (`IDTYPE`),
  KEY `I_FK_CHAUSSURE_MARQUEP` (`IDMARQUEP`),
  KEY `I_FK_CHAUSSURE_MARQUEC` (`IDMARQUEC`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `chaussure`
--

INSERT INTO `chaussure` (`IDCHAUSSURE`, `IDMARQUEP`, `IDMARQUEC`, `IDMODELE`, `IDSAISON`, `IDTYPE`, `SKU`, `PRIXRETAI`, `PRIXRESELLE`, `DATESORTIE`, `NOM`) VALUES
(1, 1, NULL, 1, 3, 3, 'CT8527-700', 220.00, 258.00, '2021-08-28', 'Jordan 4 Retro Lightning (2021)'),
(2, 1, NULL, 1, 3, 3, 'CT8527-100', 190.00, 428.00, '2021-07-03', 'Jordan 4 Retro White Oreo (2021)'),
(3, 1, NULL, 1, 3, 3, '136013-101', 100.00, 337.00, '1999-06-02', 'Jordan 4 Retro White Cement (199'),
(4, 1, NULL, 1, 3, 3, '136013-001', 100.00, 313.00, '1999-05-05', 'Jordan 4 Retro Black Cement (199'),
(5, 1, NULL, 1, 3, 3, '136030-141', 100.00, 310.00, '1999-09-01', 'Jordan 4 Retro Columbia (1999)'),
(6, 1, NULL, 1, 3, 3, 'AJ4A61426 LN4', 0.00, 999.99, '2018-01-01', 'Jordan 4 Retro Wahlburgers'),
(7, 1, NULL, 1, 3, 3, 'CT8527-400', 200.00, 373.00, '2021-04-28', 'Jordan 4 Retro University Blue'),
(8, 1, NULL, 2, 3, 3, 'DD1391-100', 110.00, 323.00, '2021-03-10', 'Nike Dunk Low Retro White Black'),
(9, 1, NULL, 2, 3, 3, 'DD1391-102', 100.00, 350.00, '2021-06-24', 'Nike Dunk Low UNC (2021)'),
(10, 1, NULL, 2, 3, 3, 'DD1391-700', 100.00, 205.00, '2021-06-03', 'Nike Dunk Low Michigan (2021)'),
(11, 1, NULL, 2, 3, 3, 'DD1391-101', 100.00, 315.00, '2021-06-03', 'Nike Dunk Low Michigan State'),
(12, 1, NULL, 3, 3, 3, '555088-134', 170.00, 355.00, '2021-03-06', 'Jordan 1 Retro High White Univer'),
(13, 1, NULL, 3, 3, 3, '555088-118', 170.00, 164.00, '2021-01-09', 'Jordan 1 Retro High White Black'),
(14, 1, NULL, 3, 3, 3, '555088-611', 170.00, 173.00, '2021-11-20', 'Jordan 1 Retro High OG Bordeaux'),
(15, 1, NULL, 3, 3, 3, 'DA9089-401/DO5047-40', 140.00, 130.00, '2021-09-29', 'Jordan 1 Retro AJKO Storm Blue');

-- --------------------------------------------------------

--
-- Structure de la table `favoris`
--

DROP TABLE IF EXISTS `favoris`;
CREATE TABLE IF NOT EXISTS `favoris` (
  `IDUTILISATEUR` int NOT NULL,
  `IDCHAUSSURE` int NOT NULL,
  `CHAUSSUREFAVORITE` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`IDUTILISATEUR`,`IDCHAUSSURE`),
  KEY `I_FK_FAVORIS_UTILISATEUR` (`IDUTILISATEUR`),
  KEY `I_FK_FAVORIS_CHAUSSURE` (`IDCHAUSSURE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `identification`
--

DROP TABLE IF EXISTS `identification`;
CREATE TABLE IF NOT EXISTS `identification` (
  `IDTAG` int NOT NULL,
  `IDCHAUSSURE` int NOT NULL,
  PRIMARY KEY (`IDTAG`,`IDCHAUSSURE`),
  KEY `I_FK_IDENTIFICATION_TAG` (`IDTAG`),
  KEY `I_FK_IDENTIFICATION_CHAUSSURE` (`IDCHAUSSURE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE IF NOT EXISTS `image` (
  `IDCHAUSSURE` int NOT NULL,
  `IDIMAGE` int NOT NULL AUTO_INCREMENT,
  `PHOTO` longblob NOT NULL,
  PRIMARY KEY (`IDCHAUSSURE`,`IDIMAGE`),
  KEY `I_FK_IMAGE_CHAUSSURE` (`IDCHAUSSURE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

DROP TABLE IF EXISTS `marque`;
CREATE TABLE IF NOT EXISTS `marque` (
  `IDMARQUE` int NOT NULL AUTO_INCREMENT,
  `NOMMARQUE` varchar(128) NOT NULL,
  PRIMARY KEY (`IDMARQUE`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`IDMARQUE`, `NOMMARQUE`) VALUES
(1, 'NIKE'),
(2, 'ADIDAS');

-- --------------------------------------------------------

--
-- Structure de la table `modele`
--

DROP TABLE IF EXISTS `modele`;
CREATE TABLE IF NOT EXISTS `modele` (
  `IDMODELE` int NOT NULL AUTO_INCREMENT,
  `NOM` varchar(128) NOT NULL,
  PRIMARY KEY (`IDMODELE`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `modele`
--

INSERT INTO `modele` (`IDMODELE`, `NOM`) VALUES
(1, 'JORDAN 4'),
(2, 'DUNK LOW'),
(3, 'JORDAN 1'),
(4, 'JORDAN 11');

-- --------------------------------------------------------

--
-- Structure de la table `saison`
--

DROP TABLE IF EXISTS `saison`;
CREATE TABLE IF NOT EXISTS `saison` (
  `IDSAISON` int NOT NULL AUTO_INCREMENT,
  `NOMSAISON` char(32) NOT NULL,
  PRIMARY KEY (`IDSAISON`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `saison`
--

INSERT INTO `saison` (`IDSAISON`, `NOMSAISON`) VALUES
(1, 'Été'),
(2, 'Hiver'),
(3, '4Saison');

-- --------------------------------------------------------

--
-- Structure de la table `tag`
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE IF NOT EXISTS `tag` (
  `IDTAG` int NOT NULL AUTO_INCREMENT,
  `LABEL` char(32) NOT NULL,
  PRIMARY KEY (`IDTAG`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `typechaussure`
--

DROP TABLE IF EXISTS `typechaussure`;
CREATE TABLE IF NOT EXISTS `typechaussure` (
  `IDTYPE` int NOT NULL AUTO_INCREMENT,
  `GENRE` char(32) NOT NULL,
  PRIMARY KEY (`IDTYPE`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `typechaussure`
--

INSERT INTO `typechaussure` (`IDTYPE`, `GENRE`) VALUES
(1, 'Homme'),
(2, 'Femme'),
(3, 'Unisexe'),
(4, 'Enfant');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `IDUTILISATEUR` int NOT NULL AUTO_INCREMENT,
  `NOM` char(32) NOT NULL,
  `PRENOM` char(32) NOT NULL,
  `MOTDEPASSE` varchar(128) NOT NULL,
  PRIMARY KEY (`IDUTILISATEUR`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
