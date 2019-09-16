-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 16 sep. 2019 à 15:23
-- Version du serveur :  5.7.19
-- Version de PHP :  7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `notes`
--

-- --------------------------------------------------------

--
-- Structure de la table `html`
--

DROP TABLE IF EXISTS `html`;
CREATE TABLE IF NOT EXISTS `html` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_student` decimal(9,2) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `html`
--

INSERT INTO `html` (`id`, `id_student`, `note`) VALUES
(1, '1.00', '9'),
(2, '2.00', '11'),
(3, '3.00', '0'),
(4, '4.00', '11'),
(5, '5.00', '8'),
(6, '7.00', '16'),
(7, '8.00', '12'),
(8, '9.00', '14');

-- --------------------------------------------------------

--
-- Structure de la table `math`
--

DROP TABLE IF EXISTS `math`;
CREATE TABLE IF NOT EXISTS `math` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_student` decimal(9,2) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `math`
--

INSERT INTO `math` (`id`, `id_student`, `note`) VALUES
(1, '2.00', '14'),
(2, '3.00', '7'),
(3, '4.00', '3'),
(4, '5.00', '11'),
(5, '7.00', '12'),
(6, '8.00', '10'),
(7, '8.00', '10'),
(8, '9.00', '9'),
(11, '1.00', '17');

-- --------------------------------------------------------

--
-- Structure de la table `php`
--

DROP TABLE IF EXISTS `php`;
CREATE TABLE IF NOT EXISTS `php` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_student` decimal(9,2) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `php`
--

INSERT INTO `php` (`id`, `id_student`, `note`) VALUES
(1, '1.00', '3'),
(2, '2.00', '7'),
(3, '3.00', '11'),
(4, '4.00', '10'),
(5, '5.00', '16'),
(6, '7.00', '12'),
(7, '8.00', '11'),
(8, '9.00', '15');

-- --------------------------------------------------------

--
-- Structure de la table `plannification_projet`
--

DROP TABLE IF EXISTS `plannification_projet`;
CREATE TABLE IF NOT EXISTS `plannification_projet` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_student` decimal(9,2) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `plannification_projet`
--

INSERT INTO `plannification_projet` (`id`, `id_student`, `note`) VALUES
(1, '1.00', '9'),
(2, '2.00', '7'),
(3, '3.00', '10'),
(4, '4.00', '8'),
(5, '5.00', '12'),
(6, '7.00', '15'),
(7, '8.00', '2'),
(8, '9.00', '9');

-- --------------------------------------------------------

--
-- Structure de la table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `student`
--

INSERT INTO `student` (`id`, `name`, `sname`, `class`) VALUES
(1, 'Wilfried', 'Dupont', 'LDS B1'),
(2, 'Corentin', 'Paul', 'EPSI B1 '),
(3, 'Aiden', 'Smith', 'LDS B1'),
(7, 'Baolan', 'Ryujin', 'LDS B2'),
(8, 'Fiona', 'Durandalle', 'EPSI B1'),
(9, 'Iroh', 'Nemure', 'EPSI B1');

-- --------------------------------------------------------

--
-- Structure de la table `uml`
--

DROP TABLE IF EXISTS `uml`;
CREATE TABLE IF NOT EXISTS `uml` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_student` decimal(9,2) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `uml`
--

INSERT INTO `uml` (`id`, `id_student`, `note`) VALUES
(1, '3.00', '8'),
(2, '2.00', '5'),
(3, '4.00', '6'),
(4, '5.00', '17'),
(5, '7.00', '7'),
(6, '8.00', '2'),
(7, '9.00', '13'),
(8, '1.00', '15');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
