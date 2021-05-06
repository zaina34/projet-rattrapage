-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 06 mai 2021 à 03:34
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `zineb`
--

-- --------------------------------------------------------

--
-- Structure de la table `connexion`
--

CREATE TABLE `connexion` (
  `id_connexion` int(11) NOT NULL,
  `nom_gare` varchar(50) NOT NULL,
  `transport` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `connexion`
--

INSERT INTO `connexion` (`id_connexion`, `nom_gare`, `transport`) VALUES
(1, 'Bordeaux Saint-Jean', 'Tramway  \r\n'),
(2, 'Lille Frandres', 'Bus Urbains '),
(3, 'Lille Europe', 'Cars\r\n'),
(4, 'Lyon Part Dieu', 'Tramway'),
(5, 'Lyon Perrache', 'Tramway'),
(6, 'Lyon Saint Exupery TGV', '\r\nNavettes aéroport\r\n'),
(7, 'Marseille Saint-Charles', 'Gare routière'),
(8, 'Nice', 'Tramway    '),
(9, 'Paris Nord', 'RER  '),
(10, 'Paris Est', 'Cars Interurbain  '),
(11, 'Paris Bercy', 'Cars  '),
(12, 'Massy TGV', 'Cars Interurbains '),
(13, 'Paris Austerlitz', 'RER  '),
(14, 'Paris St Lazare', 'RER'),
(15, 'Paris Gare de Lyon', 'RER'),
(16, 'Paris Montparnasse 1 et 2 + Vaugirard', 'Cars Interurbains'),
(17, 'Aéroport Charles de Gaulle 2 TGV', 'RER'),
(18, 'Marne la Vallée Chessy', 'RER '),
(19, 'Reims', 'Tramway'),
(20, 'Rennes', 'Gare routière'),
(21, 'Strasbourg', 'Tramway'),
(22, 'Toulouse Matabiau', 'Gare routière\r\n'),
(23, 'Montpellier Saint-Roch', 'Cars Interurbains'),
(24, 'Nantes', 'Tramways'),
(25, 'Toulon', 'Bus Urbains '),
(26, 'Grenoble', 'Tramways'),
(27, 'Valence TGV Rhône-Alpes Sud', 'Cars Interurbains'),
(28, 'Bordeaux Saint-Jean', 'Navettes aéroport  \r\n'),
(29, 'Bordeaux Saint-Jean', 'Cars Interurbains     \r\n'),
(30, 'Bordeaux Saint-Jean', 'Grandes Lignes     '),
(31, 'Bordeaux Saint-Jean', 'Bus Urbains  '),
(32, 'Lille Frandres', 'Métros\r\n'),
(33, 'Lille Frandres', 'Navettes'),
(34, 'Lille Europe', 'Bus Urbains'),
(35, 'Grenoble', 'Cars'),
(36, 'Grenoble', 'Grandes Lignes'),
(37, 'Grenoble', 'Gare routière'),
(38, 'Grenoble', 'Navettes'),
(39, 'Grenoble', 'Bus Urbains'),
(40, 'Toulon', 'Gare routière'),
(41, 'Toulon', 'Cars Interurbains\r\n'),
(42, 'Nantes', 'Bus Urbains'),
(43, 'Montpellier Saint-Roch', 'Bus Urbains '),
(44, 'Toulouse Matabiau', 'Métros  '),
(45, 'Toulouse Matabiau', 'Navettes\r\n'),
(46, 'Toulouse Matabiau', 'Bus Urbains\r\n'),
(47, 'Lyon Perrache', 'Métros'),
(48, 'Lyon Perrache', 'Métros'),
(49, 'Lyon Perrache', 'Cars Interurbains'),
(50, 'Lyon Perrache', 'Grandes Lignes'),
(51, 'Lyon Perrache', 'Bus Urbains'),
(52, 'Lyon Saint Exupery TGV', 'Tramway'),
(53, 'Marseille Saint-Charles', 'Métros'),
(54, 'Marseille Saint-Charles', 'Cars Interurbains'),
(55, 'Marseille Saint-Charles', 'Navettes'),
(56, 'Marseille Saint-Charles', 'Bus Urbains'),
(57, 'Nice', 'Navettes'),
(58, 'Nice', 'Bus Urbains'),
(59, 'Paris Nord', 'Cars Interurbains'),
(60, 'Paris Nord', 'Métros'),
(61, 'Paris Nord', 'Bus Urbains '),
(62, 'Paris Est', 'Métros'),
(63, 'Paris Est', 'Bus Urbains'),
(64, 'Paris Bercy', 'Interurbains'),
(65, 'Paris Bercy', 'Métros'),
(66, 'Paris Bercy', 'Bus Urbains '),
(67, 'Massy TGV', 'RER'),
(68, 'Paris Austerlitz', 'Cars Interurbains'),
(69, 'Paris Austerlitz', 'Métros'),
(70, 'Paris Austerlitz', 'Bus Urbains'),
(71, 'Paris St Lazare', 'Cars Interurbains'),
(72, 'Paris St Lazare', 'Métros'),
(73, 'Paris St Lazare', 'Bus Urbains'),
(74, 'Paris St Lazare', 'Navettes'),
(75, 'Paris Gare de Lyon', 'Cars Interurbains'),
(76, 'Paris Gare de Lyon', 'Métros'),
(77, 'Paris Gare de Lyon', 'Navettes aéroport'),
(78, 'Paris Gare de Lyon', 'Bus Urbains'),
(79, 'Paris Montparnasse 1 et 2 + Vaugirard', 'Métros'),
(80, 'Paris Montparnasse 1 et 2 + Vaugirard', 'Bus Urbains'),
(81, 'Aéroport Charles de Gaulle 2 TGV', 'Cars Interurbains'),
(82, 'Aéroport Charles de Gaulle 2 TGV', 'Navettes'),
(83, 'Aéroport Charles de Gaulle 2 TGV', 'Navettes aéroport'),
(84, 'Aéroport Charles de Gaulle 2 TGV', 'Bus Urbains'),
(85, 'Marne la Vallée Chessy', 'Cars Interurbains'),
(86, 'Marne la Vallée Chessy', '\r\nNavettes'),
(87, 'Marne la Vallée Chessy', 'Bus Urbains '),
(88, 'Reims', 'Bus Urbains dfghjkfgcvhbjk,dtfyhgjhkgtesrfdycgv'),
(89, 'Rennes', 'Cars Interurbains'),
(90, 'Rennes', 'Métros'),
(91, 'Rennes', 'Bus Urbains'),
(92, 'Strasbourg', 'Cars Interurbains'),
(93, 'Strasbourg', 'Navettes'),
(94, 'Strasbourg', 'Bus Urbains'),
(97, 'Lyon Part Dieu', 'Métro'),
(98, 'Lyon Part Dieu', 'Cars Interurbains'),
(99, 'Lyon Part Dieu', 'Bus Urbains');

-- --------------------------------------------------------

--
-- Structure de la table `frequentation`
--

CREATE TABLE `frequentation` (
  `UIC` char(6) NOT NULL,
  `NOM_GARE` varchar(37) DEFAULT NULL,
  `CLASSE_AGE` varchar(15) NOT NULL,
  `POURCENTAGE` varchar(19) DEFAULT NULL,
  `ANNEE` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `frequentation`
--

INSERT INTO `frequentation` (`UIC`, `NOM_GARE`, `CLASSE_AGE`, `POURCENTAGE`, `ANNEE`) VALUES
('111849', 'Marne la Vallée Chessy', '19 ans et moins', '0.38', 2013),
('111849', 'Marne la Vallée Chessy', '20 ans à 29 ans', '2.68', 2013),
('111849', 'Marne la Vallée Chessy', '30 ans à 39 ans', '4.4', 2013),
('111849', 'Marne la Vallée Chessy', '40 ans à 49 ans', '4.02', 2013),
('111849', 'Marne la Vallée Chessy', '50 ans à 59 ans', '2.05', 2013),
('111849', 'Marne la Vallée Chessy', '60 ans et plus', '1.69', 2013),
('111849', 'Marne la Vallée Chessy', 'Non communiqué', '84.8', 2013),
('113001', 'Paris Est', '19 ans et moins', '7.94', 2012),
('113001', 'Paris Est', '20 ans à 29 ans', '23.7', 2012),
('113001', 'Paris Est', '30 ans à 39 ans', '17.5', 2012),
('113001', 'Paris Est', '40 ans à 49 ans', '16.9', 2012),
('113001', 'Paris Est', '50 ans à 59 ans', '14.2', 2012),
('113001', 'Paris Est', '60 ans et plus', '7.7', 2012),
('113001', 'Paris Est', 'Non communiqué', '12.2', 2012),
('145678', 'Paris Bercy', '19 ans et moins', '1.8900000000000001', 2012),
('145678', 'Paris Bercy', '20 ans à 29 ans', '18.7', 2012),
('145678', 'Paris Bercy', '30 ans à 39 ans', '21.1', 2012),
('145678', 'Paris Bercy', '40 ans à 49 ans', '23.8', 2012),
('145678', 'Paris Bercy', '50 ans à 59 ans', '17.6', 2012),
('145678', 'Paris Bercy', '60 ans et plus', '16.9', 2012),
('171009', 'Reims', '19 ans et moins', '23.1', 2016),
('171009', 'Reims', '20 ans à 29 ans', '24.9', 2016),
('171009', 'Reims', '30 ans à 39 ans', '14.3', 2016),
('171009', 'Reims', '40 ans à 49 ans', '14.9', 2016),
('171009', 'Reims', '50 ans à 59 ans', '13.0', 2016),
('171009', 'Reims', '60 ans et plus', '9.75', 2016),
('212027', 'Strasbourg', '19 ans et moins', '8.12', 2010),
('212027', 'Strasbourg', '19 ans et moins', '21.6', 2016),
('212027', 'Strasbourg', '20 ans à 29 ans', '18.0', 2010),
('212027', 'Strasbourg', '20 ans à 29 ans', '26.5', 2016),
('212027', 'Strasbourg', '30 ans à 39 ans', '7.67', 2010),
('212027', 'Strasbourg', '30 ans à 39 ans', '14.8', 2016),
('212027', 'Strasbourg', '40 ans à 49 ans', '8.33', 2010),
('212027', 'Strasbourg', '40 ans à 49 ans', '14.6', 2016),
('212027', 'Strasbourg', '50 ans à 59 ans', '6.72', 2010),
('212027', 'Strasbourg', '50 ans à 59 ans', '13.5', 2016),
('212027', 'Strasbourg', '60 ans et plus', '6.65', 2010),
('212027', 'Strasbourg', '60 ans et plus', '9.0', 2016),
('212027', 'Strasbourg', 'Non communiqué', '44.5', 2010),
('223263', 'Lille Europe', '19 ans et moins', '5.94', 2013),
('223263', 'Lille Europe', '20 ans à 29 ans', '25.7', 2013),
('223263', 'Lille Europe', '30 ans à 39 ans', '20.4', 2013),
('223263', 'Lille Europe', '40 ans à 49 ans', '18.7', 2013),
('223263', 'Lille Europe', '50 ans à 59 ans', '16.3', 2013),
('223263', 'Lille Europe', '60 ans et plus', '12.6', 2013),
('223263', 'Lille Europe', 'Non communiqué', '0.29', 2013),
('271007', 'Paris Nord', '19 ans et moins', '5.44', 2012),
('271007', 'Paris Nord', '20 ans à 29 ans', '26.1', 2012),
('271007', 'Paris Nord', '30 ans à 39 ans', '20.6', 2012),
('271007', 'Paris Nord', '40 ans à 49 ans', '16.6', 2012),
('271007', 'Paris Nord', '50 ans à 59 ans', '11.7', 2012),
('271007', 'Paris Nord', '60 ans et plus', '5.01', 2012),
('271007', 'Paris Nord', 'Non communiqué', '14.6', 2012),
('271494', 'Aéroport Charles de Gaulle 2 TGV', '19 ans et moins', '0.93', 2013),
('271494', 'Aéroport Charles de Gaulle 2 TGV', '20 ans à 29 ans', '6.58', 2013),
('271494', 'Aéroport Charles de Gaulle 2 TGV', '30 ans à 39 ans', '7.55', 2013),
('271494', 'Aéroport Charles de Gaulle 2 TGV', '40 ans à 49 ans', '5.8', 2013),
('271494', 'Aéroport Charles de Gaulle 2 TGV', '50 ans à 59 ans', '4.48', 2013),
('271494', 'Aéroport Charles de Gaulle 2 TGV', '60 ans et plus', '3.9', 2013),
('271494', 'Aéroport Charles de Gaulle 2 TGV', 'Non communiqué', '70.8', 2013),
('286005', 'Lille Flandres', '19 ans et moins', '15.3', 2013),
('286005', 'Lille Flandres', '20 ans à 29 ans', '32.1', 2013),
('286005', 'Lille Flandres', '30 ans à 39 ans', '15.9', 2013),
('286005', 'Lille Flandres', '40 ans à 49 ans', '15.9', 2013),
('286005', 'Lille Flandres', '50 ans à 59 ans', '13.1', 2013),
('286005', 'Lille Flandres', '60 ans et plus', '7.57', 2013),
('286005', 'Lille Flandres', 'Non communiqué', '0.11', 2013),
('384008', 'Paris St Lazare', '19 ans et moins', '7.73', 2013),
('384008', 'Paris St Lazare', '20 ans à 29 ans', '30.1', 2013),
('384008', 'Paris St Lazare', '30 ans à 39 ans', '21.4', 2013),
('384008', 'Paris St Lazare', '40 ans à 49 ans', '17.9', 2013),
('384008', 'Paris St Lazare', '50 ans à 59 ans', '14.7', 2013),
('384008', 'Paris St Lazare', '60 ans et plus', '7.06', 2013),
('384008', 'Paris St Lazare', 'Non communiqué', '1.12', 2013),
('391003', 'Paris Montparnasse 1 et 2 + Vaugirard', '19 ans et moins', '7.28', 2012),
('391003', 'Paris Montparnasse 1 et 2 + Vaugirard', '20 ans à 29 ans', '25.3', 2012),
('391003', 'Paris Montparnasse 1 et 2 + Vaugirard', '30 ans à 39 ans', '18.0', 2012),
('391003', 'Paris Montparnasse 1 et 2 + Vaugirard', '40 ans à 49 ans', '17.5', 2012),
('391003', 'Paris Montparnasse 1 et 2 + Vaugirard', '50 ans à 59 ans', '15.2', 2012),
('391003', 'Paris Montparnasse 1 et 2 + Vaugirard', '60 ans et plus', '11.9', 2012),
('391003', 'Paris Montparnasse 1 et 2 + Vaugirard', 'Non communiqué', '4.84', 2012),
('393702', 'Massy TGV', '19 ans et moins', '5.08', 2013),
('393702', 'Massy TGV', '20 ans à 29 ans', '21.9', 2013),
('393702', 'Massy TGV', '30 ans à 39 ans', '19.3', 2013),
('393702', 'Massy TGV', '40 ans à 49 ans', '21.1', 2013),
('393702', 'Massy TGV', '50 ans à 59 ans', '21.2', 2013),
('393702', 'Massy TGV', '60 ans et plus', '10.1', 2013),
('393702', 'Massy TGV', 'Non communiqué', '1.24', 2013),
('471003', 'Rennes', '19 ans et moins', '12.5', 2014),
('471003', 'Rennes', '20 ans à 29 ans', '25.0', 2014),
('471003', 'Rennes', '30 ans à 39 ans', '14.9', 2014),
('471003', 'Rennes', '40 ans à 49 ans', '16.3', 2014),
('471003', 'Rennes', '50 ans à 59 ans', '16.9', 2014),
('471003', 'Rennes', '60 ans et plus', '13.9', 2014),
('471003', 'Rennes', 'Non communiqué', '0.41000000000000003', 2014),
('481002', 'Nantes', '19 ans et moins', '9.15', 2014),
('481002', 'Nantes', '20 ans à 29 ans', '23.8', 2014),
('481002', 'Nantes', '30 ans à 39 ans', '15.2', 2014),
('481002', 'Nantes', '40 ans à 49 ans', '17.5', 2014),
('481002', 'Nantes', '50 ans à 59 ans', '18.1', 2014),
('481002', 'Nantes', '60 ans et plus', '15.2', 2014),
('481002', 'Nantes', 'Non communiqué', '1.08', 2014),
('547000', 'Paris Austerlitz', '19 ans et moins', '4.6', 2013),
('547000', 'Paris Austerlitz', '20 ans à 29 ans', '25.1', 2013),
('547000', 'Paris Austerlitz', '30 ans à 39 ans', '19.2', 2013),
('547000', 'Paris Austerlitz', '40 ans à 49 ans', '17.5', 2013),
('547000', 'Paris Austerlitz', '50 ans à 59 ans', '17.9', 2013),
('547000', 'Paris Austerlitz', '60 ans et plus', '13.5', 2013),
('547000', 'Paris Austerlitz', 'Non communiqué', '2.2', 2013),
('581009', 'Bordeaux Saint-Jean', '19 ans et moins', '17.2', 2014),
('581009', 'Bordeaux Saint-Jean', '20 ans à 29 ans', '25.4', 2014),
('581009', 'Bordeaux Saint-Jean', '30 ans à 39 ans', '14.9', 2014),
('581009', 'Bordeaux Saint-Jean', '40 ans à 49 ans', '13.6', 2014),
('581009', 'Bordeaux Saint-Jean', '50 ans à 59 ans', '15.2', 2014),
('581009', 'Bordeaux Saint-Jean', '60 ans et plus', '13.7', 2014),
('611004', 'Toulouse Matabiau', '19 ans et moins', '15.1', 2014),
('611004', 'Toulouse Matabiau', '20 ans à 29 ans', '27.7', 2014),
('611004', 'Toulouse Matabiau', '30 ans à 39 ans', '17.2', 2014),
('611004', 'Toulouse Matabiau', '40 ans à 49 ans', '13.6', 2014),
('611004', 'Toulouse Matabiau', '50 ans à 59 ans', '11.8', 2014),
('611004', 'Toulouse Matabiau', '60 ans et plus', '14.7', 2014),
('686006', 'Paris Gare de Lyon', '19 ans et moins', '4.13', 2012),
('686006', 'Paris Gare de Lyon', '20 ans à 29 ans', '25.9', 2012),
('686006', 'Paris Gare de Lyon', '30 ans à 39 ans', '21.0', 2012),
('686006', 'Paris Gare de Lyon', '40 ans à 49 ans', '18.8', 2012),
('686006', 'Paris Gare de Lyon', '50 ans à 59 ans', '15.7', 2012),
('686006', 'Paris Gare de Lyon', '60 ans et plus', '11.1', 2012),
('686006', 'Paris Gare de Lyon', 'Non communiqué', '3.4', 2012),
('722025', 'Lyon Perrache', '19 ans et moins', '11.0', 2011),
('722025', 'Lyon Perrache', '20 ans à 29 ans', '26.6', 2011),
('722025', 'Lyon Perrache', '30 ans à 39 ans', '17.8', 2011),
('722025', 'Lyon Perrache', '40 ans à 49 ans', '18.2', 2011),
('722025', 'Lyon Perrache', '50 ans à 59 ans', '16.0', 2011),
('722025', 'Lyon Perrache', '60 ans et plus', '10.1', 2011),
('722025', 'Lyon Perrache', 'Non communiqué', '0.32', 2011),
('723197', 'Lyon Part Dieu', '19 ans et moins', '10.4', 2011),
('723197', 'Lyon Part Dieu', '20 ans à 29 ans', '34.6', 2011),
('723197', 'Lyon Part Dieu', '30 ans à 39 ans', '17.6', 2011),
('723197', 'Lyon Part Dieu', '40 ans à 49 ans', '15.8', 2011),
('723197', 'Lyon Part Dieu', '50 ans à 59 ans', '13.7', 2011),
('723197', 'Lyon Part Dieu', '60 ans et plus', '7.89', 2011),
('747006', 'Grenoble', '19 ans et moins', '12.9', 2015),
('747006', 'Grenoble', '20 ans à 29 ans', '26.9', 2015),
('747006', 'Grenoble', '30 ans à 39 ans', '16.2', 2015),
('747006', 'Grenoble', '40 ans à 49 ans', '16.7', 2015),
('747006', 'Grenoble', '50 ans à 59 ans', '17.2', 2015),
('747006', 'Grenoble', '60 ans et plus', '10.1', 2015),
('751008', 'Marseille Saint-Charles', '19 ans et moins', '13.7', 2013),
('751008', 'Marseille Saint-Charles', '20 ans à 29 ans', '28.9', 2013),
('751008', 'Marseille Saint-Charles', '30 ans à 39 ans', '17.3', 2013),
('751008', 'Marseille Saint-Charles', '40 ans à 49 ans', '15.3', 2013),
('751008', 'Marseille Saint-Charles', '50 ans à 59 ans', '12.3', 2013),
('751008', 'Marseille Saint-Charles', '60 ans et plus', '12.3', 2013),
('751008', 'Marseille Saint-Charles', 'Non communiqué', '0.24', 2013),
('755009', 'Toulon', '19 ans et moins', '16.2', 2014),
('755009', 'Toulon', '20 ans à 29 ans', '29.0', 2014),
('755009', 'Toulon', '30 ans à 39 ans', '14.0', 2014),
('755009', 'Toulon', '40 ans à 49 ans', '10.9', 2014),
('755009', 'Toulon', '50 ans à 59 ans', '11.1', 2014),
('755009', 'Toulon', '60 ans et plus', '18.8', 2014),
('756056', 'Nice', '19 ans et moins', '14.4', 2014),
('756056', 'Nice', '20 ans à 29 ans', '28.7', 2014),
('756056', 'Nice', '30 ans à 39 ans', '14.0', 2014),
('756056', 'Nice', '40 ans à 49 ans', '13.7', 2014),
('756056', 'Nice', '50 ans à 59 ans', '13.8', 2014),
('756056', 'Nice', '60 ans et plus', '15.4', 2014),
('762906', 'Lyon Saint Exupery TGV', '19 ans et moins', '2.8', 2016),
('762906', 'Lyon Saint Exupery TGV', '20 ans à 29 ans', '28.0', 2016),
('762906', 'Lyon Saint Exupery TGV', '30 ans à 39 ans', '21.5', 2016),
('762906', 'Lyon Saint Exupery TGV', '40 ans à 49 ans', '21.4', 2016),
('762906', 'Lyon Saint Exupery TGV', '50 ans à 59 ans', '16.3', 2016),
('762906', 'Lyon Saint Exupery TGV', '60 ans et plus', '10.0', 2016),
('763029', 'Valence TGV Rhône-Alpes Sud', '19 ans et moins', '3.21', 2015),
('763029', 'Valence TGV Rhône-Alpes Sud', '20 ans à 29 ans', '19.7', 2015),
('763029', 'Valence TGV Rhône-Alpes Sud', '30 ans à 39 ans', '17.8', 2015),
('763029', 'Valence TGV Rhône-Alpes Sud', '40 ans à 49 ans', '20.3', 2015),
('763029', 'Valence TGV Rhône-Alpes Sud', '50 ans à 59 ans', '19.4', 2015),
('763029', 'Valence TGV Rhône-Alpes Sud', '60 ans et plus', '19.6', 2015),
('773002', 'Montpellier Saint-Roch', '19 ans et moins', '14.6', 2015),
('773002', 'Montpellier Saint-Roch', '20 ans à 29 ans', '29.8', 2015),
('773002', 'Montpellier Saint-Roch', '30 ans à 39 ans', '15.4', 2015),
('773002', 'Montpellier Saint-Roch', '40 ans à 49 ans', '11.9', 2015),
('773002', 'Montpellier Saint-Roch', '50 ans à 59 ans', '13.5', 2015),
('773002', 'Montpellier Saint-Roch', '60 ans et plus', '14.6', 2015),
('773002', 'Montpellier Saint-Roch', 'Non communiqué', '0.13', 2015);

-- --------------------------------------------------------

--
-- Structure de la table `frequenter`
--

CREATE TABLE `frequenter` (
  `id_u` int(11) NOT NULL,
  `id_gare` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `gare`
--

CREATE TABLE `gare` (
  `id_gare` int(11) NOT NULL,
  `nom_gare` varchar(37) NOT NULL,
  `ville_gare` varchar(37) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `gare`
--

INSERT INTO `gare` (`id_gare`, `nom_gare`, `ville_gare`, `image`) VALUES
(1, 'Paris Nord', 'Paris', 'images_gare/parisnord.jpeg'),
(2, 'Paris Est', 'Paris', 'images_gare/parisest.jpeg'),
(3, 'Reims', 'Reims', 'images_gare/reims.jpeg'),
(4, 'Paris Bercy', 'Paris', 'images_gare/parisbercy.jpeg'),
(5, 'Lille Europe', 'Lille', 'images_gare/lille.jpeg'),
(6, 'Toulon', 'Toulon', 'images_gare/toulon.jpeg'),
(7, 'Aéroport Charles de Gaulle 2 TGV', 'Paris', 'images_gare/gaulle.jpeg'),
(8, 'Lille Flandres', 'Lille', 'images_gare/flandres.jpeg'),
(9, 'Paris St Lazare', 'Paris', 'images_gare/lazare.jpeg'),
(10, 'Paris Montparnasse 1 et 2 + Vaugirard', 'Paris', 'images_gare/montparnasse.jpeg'),
(11, 'Massy TGV', 'Paris', 'images_gare/massy.jpeg'),
(12, 'Rennes', 'Rennes', 'images_gare/rennes.jpeg'),
(13, 'Paris Austerlitz', 'Paris', 'images_gare/aust.jpeg'),
(14, 'Bordeaux Saint-Jean', 'Bordeaux', 'images_gare/bordeaux.jpeg'),
(15, 'Toulouse Matabiau', 'Toulouse', 'images_gare/toulouse.jpeg'),
(16, 'Paris Gare de Lyon', 'Paris', 'images_gare/parislyon.jpeg'),
(17, 'Lyon Part Dieu', 'Lyon', 'images_gare/partdieu.jpeg'),
(18, 'Lyon Perrache', 'Lyon', 'images_gare/perrache.jpeg'),
(19, 'Marseille Saint-Charles', 'Marseille', 'images_gare/marseille.jpeg'),
(20, 'Nice', 'Nice', 'images_gare/nice.jpeg'),
(21, 'Lyon Saint Exupery TGV', 'Lyon', 'images_gare/exupery.jpeg'),
(22, 'Valence TGV Rhône-Alpes Sud', 'Valence', 'images_gare/valence.jpeg'),
(23, 'Montpellier Saint-Roch', 'Montpellier', 'images_gare/montpellier.jpeg'),
(24, 'Grenoble', 'Grenoble', 'images_gare/grenoble.jpeg'),
(29, 'Nantes', 'Nantes', 'images_gare/nantes.jpeg'),
(44, 'Strasbourg', 'Strasbourg', 'images_gare/strasbourg.jpeg'),
(45, 'Marne la Vallée Chessy', 'Paris', 'images_gare/marne.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_ut` int(11) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `prenom` varchar(200) NOT NULL,
  `adresse` varchar(200) NOT NULL,
  `num` text NOT NULL,
  `mail` varchar(200) NOT NULL,
  `classe` varchar(30) NOT NULL DEFAULT '',
  `mdp` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_ut`, `nom`, `prenom`, `adresse`, `num`, `mail`, `classe`, `mdp`) VALUES
(5, 'Kharfati', 'Zaineb', '949 avenue professeur louis ravaz', '0767035979', 'zaineb_kharfati@outlook.fr', '20 ans a 29 ans', 'mmm'),
(6, 'gueye', 'mame fatou', '19 avenue la comédie', '0767035967', 'mame@outlook.fr', '20 ans a 29 ans', 'monfrèreesttropbeau'),
(7, 'Damour', 'sarah', '1 avenue soleil', '008765444', 'sarah@outlook.fr', '20 ans a 29 ans', 'hh'),
(8, 'fontaine', 'paul', 'hhhhhhhhhhhhh', '0679899876', 'paulll@outlook.fr', '60 ans et plus', 'oo'),
(9, 'DON', 'DIVINE', '196 RUE EMILE ZOLA', '0763452814', 'don@gmail.com', '20 ans a 29 ans', '123'),
(10, 'FAYE', 'OUMAR', '6 RUE AMINA', '0771234567', 'oumar@yahoo.com', '20 ans a 29 ans', 'oumar'),
(11, 'Ndar', 'adama', '196 amel ben', '0763345814', '25 RUE ERNEST MICHEL', '20 ans a 29 ans', 'adama'),
(12, 'Roumani', 'mor', '7rue Camille Bane', '0762456388', 'ada@gmail.com', '20 ans a 29 ans', 'adama'),
(13, 'GUEYE', 'MAME', '25 RUE ERNEST MICHEL', '+33761529428', '25 RUE ERNEST MICHEL', '19 ans et moins', 'dddd'),
(14, 'Roumani', 'Adama', '7rue Camille Bane', '0762456388', 'roumani@gmail.com', '30 ans a 39 ans', 'adama'),
(15, 'damour', 'sarah', '5 rue de soleil', '0767035989', 'sarah@outlook.fr', '20 ans a 29 ans', 'ggg'),
(16, 'khar', 'zain', '5 rue hhhh', '09977654', 's@outlook.fr', '19 ans et moins', 'ooo'),
(17, 'Kharfati', 'Zaineb', '949 avenue professeur louis ravaz', '0767035979', 'zai@outlook.fr', '20 ans a 29 ans', 'ppp'),
(18, 'nour', 'poland', '21 rue les monts', 'hhhhhhhh', 'zai@outlook.fr', '19 ans et moins', 'kkk'),
(19, 'toto', 'tata', '3 toto', 'kkkk', 'toto1@outlook.fr', '20 ans a 29 ans', 'ppp'),
(20, 'tata', 'titi', '2 tutu', 'hhhhhhh', 'ok@outlook.fr', '19 ans et moins', 'nnn'),
(21, 'tostos', 'tistis', '2 rue tiktik', 'hhhhhhhhhhhhhh', 'toctoc@outlook.fr', '19 ans et moins', 'ppp'),
(22, 'taktak', 'toktok', '1 rue toktok', 'hhhajansnjaksnjkz', 'jjj@outlook.fr', '19 ans et moins', 'popo'),
(23, 'tortor', 'forfor', '2 rue horohor', 'hhhbjbvgh', 'ppopo@outlook.fr', '19 ans et moins', 'momo'),
(24, 'toto', 'tata', '2 avenue toto', 'jzhjzj', 'toto23@outlook.fr', '19 ans et moins', 'popo'),
(25, 'tata', 'tata', 'hahjaj', 'jhjj', 'popo@outlook.fr', '19 ans et moins', 'popo'),
(26, 'tata', 'toto', '3 avenue hahah', 'hhhhh', 'toto2@outlook.fr', '19 ans et moins', 'haha'),
(27, 'rara', 'toto', '4 rue haha', 'kajhsnqnqj', 'zji@outlook.fr', '19 ans et moins', 'lol'),
(28, 'h', 'h', 'h', 'h', 'h@outlook.fr', '19 ans et moins', 'hhh'),
(29, 'k', 'k', 'k', 'kk', 'ki@outlook.fr', '19 ans et moins', 'kkk'),
(30, 'titi', 'titi', 'haha', 'hhh', 'haha@outlook.fr', '19 ans et moins', 'haha'),
(31, 'Kharfati', 'Zaineb', '949 avenue professeur louis ravaz', 'hhhh', 'zai@outlook.fr', '19 ans et moins', 'ppp'),
(32, 'tutu', 'toto', '2 tata', 'hahaha', 'tutu@outlook.fr', '19 ans et moins', 'lol'),
(33, 'Kharfati', 'Zaineb', '949 avenue professeur louis ravaz', '0767035979', 'zaineb_kharfati@outlook.fr', '19 ans et moins', 'mm'),
(34, 'Kharfati', 'Zaineb', '949 avenue professeur louis ravaz', '0767035979', 'zai@outlook.fr', '19 ans et moins', 'lol'),
(35, 'tata', 'gogo', '3 rue popo', '', 'z23@outlook.fr', '19 ans et moins', 'pop'),
(36, 'tata', 'toto', '3 toto', '', 'tata4@outlook.fr', '19 ans et moins', 'lol'),
(37, 'tata', 'tata', 'tata3@outlook.fr', '', 'hihi@outlook.fr', '19 ans et moins', 'lol'),
(38, 'tata', 'hihi', 'lol', '777', 'zaineb_kharfati@outlook.fr', '19 ans et moins', 'haha'),
(39, 'tata', 'hihi', 'lol', '', 'zaineb_kharfati@outlook.fr', '19 ans et moins', 'hoho'),
(40, 'tata', 'hihi', 'lol', '', 'zaineb_kharfati@outlook.fr', '20 ans a 29 ans', 'hihi'),
(41, 'tata', 'hihi', 'lol', '', 'zaineb_kharfati@outlook.fr', '19 ans et moins', 'hhh'),
(42, 'Kharfati', 'Zaineb', '949 avenue professeur louis ravaz', '', 'zai@outlook.fr', '19 ans et moins', 'h'),
(43, 'hh', 'hh', 'hh', '7', 'zai@outlook.fr', '19 ans et moins', 'h'),
(44, 'z', 'z', 'z', '', 'z@outlook.fr', '19 ans et moins', 'z'),
(45, 'hh', 'hh', 'hh', '', 'hh@outlook.fr', '19 ans et moins', 'hh'),
(46, 'jjj', 'jjj', 'jjj', '', 'zai@outlook.fr', '19 ans et moins', 'hhhhhhhhh'),
(47, 'Kharfati', 'Zaineb', '949 avenue professeur louis ravaz', '00999', 'zaineb_kharfati@outlook.fr', '19 ans et moins', 'kkkkkkkkk'),
(48, 'Kharfati', 'Zaineb', '949 avenue professeur louis ravaz', '0767035979', 'zainebkharfati@outlook.fr', '19 ans et moins', 'zainebkharfati'),
(49, 'Kharfati', 'Zaineb', 'Lll', '07670359', 'zai@outlook.fr', '19 ans et moins', 'popopopo'),
(50, 'zz', 'kk', 'kk', '0767035979', 'zai@outlook.fr', '19 ans et moins', 'zainebkharfati'),
(51, 'sarah', 'damour', '949 avenue louis ravaz', '0767035989', 'zai@outlook.fr', '19 ans et moins', 'sarahdamour'),
(52, 'mame', 'fatou', '1 fatou', '0767035967', 'zai@outlook.fr', '19 ans et moins', 'mamgaygay'),
(53, 'damour', 'sarah', '1 sarah', '0767035678', 'sarah@outlook.fr', '19 ans et moins', 'zainebkharfati'),
(54, 'Kharfati', 'Zaineb', '949 avenue professeur louis ravaz', '0767035979', 'sarahoutlook', '19 ans et moins', 'zainebkharfati'),
(55, 'hhh', 'hhh', 'hhh', ' jkjhhjqaha ', 'sarah@outlook.fr', '19 ans et moins', 'zainebkharfati'),
(56, 'hhhh', 'hhh', 'hhh', ' jkjhhjqaha   ', 'sh@outlook.fr', '19 ans et moins', 'zainebkharfati'),
(57, 'Kharfati', 'Zaineb', '949 avenue professeur louis ravaz', '076703', 'sarah@outlook.fr', '19 ans et moins', 'zainebkharfati'),
(58, 'Kharfati', 'Zaineb', '949 avenue professeur louis ravaz', '076703599 ', 'zaineb_kharfati@outlook.fr', '19 ans et moins', 'kiki'),
(59, 'Kharfati', 'Zaineb', '949 avenue professeur louis ravaz', '', 'zaineb_kharfati@outlook.fr', '19 ans et moins', 'zainebkharfati'),
(60, 'Kharfati', 'Zaineb', '949 avenue professeur louis ravaz', '', 'zaineb_kharfati@outlook.fr', '19 ans et moins', 'zainebkharfati'),
(61, 'kharfati', 'zaineb', '2 avenue trois', '', 'haha@outlook.fr', '19 ans et moins', 'zainebkharfati'),
(62, 'Kharfati', 'Zaineb', '949 avenue professeur louis ravaz', '0767035979', 'zaineb_kharfati@outlook.fr', '19 ans et moins', 'zainebkharfati'),
(63, 'Kharfati', 'Zaineb', '949 avenue professeur louis ravaz', '0767035979', 'zaineb_kharfati@outlook.fr', '19 ans et moins', 'zainebkharfati'),
(64, 'Kharfati', 'Zaineb', '949 avenue professeur louis ravaz', '0767035979', 'zaineb_kharfati@outlook.fr', '19 ans et moins', 'sousouzizi');

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

CREATE TABLE `ville` (
  `id_v` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `region` varchar(20) NOT NULL DEFAULT '',
  `population` int(11) NOT NULL,
  `chomage` float NOT NULL,
  `slogan` text NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `description` varchar(20000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ville`
--

INSERT INTO `ville` (`id_v`, `nom`, `region`, `population`, `chomage`, `slogan`, `image`, `description`) VALUES
(1, 'Bordeaux', 'Nouvelle-Aquitaine\r\n', 249712, 7.3, 'La côte Est !', 'images/Bordeaux.jpg', ' Bordeaux est une ville stylée, magnifique et très sympa ! proche de la mer ce qui est avantageux, carrefour de 4 autoroutes, la ligne tgv Bordeaux Paris très rapide pour rejoindre la capitale! les grands amateurs de vins trouveront leur bonheur dans la région bordelaise (notamment à saint émilion).'),
(2, 'Grenoble', 'Auvergne RA\r\n       ', 160649, 6.4, 'Le temps d\'un week-end !', 'images/grenoble.jpg', 'Située dans le département de l’Isère, à une centaine de km de Lyon, la ville de Grenoble attire de plus en plus les Français. Ce sont déjà plus de 160 000 habitants qui ont décidé de s’y installer pour profiter de son cadre magnifique, au cœur des Alpes françaises. Zoom sur cette ville aux multiples atouts !La ville de Grenoble est nichée au centre des Alpes françaises, entre le parc naturel du Vercors, le parc naturel du Massif de la Chartreuse et la chaîne de Belledonne. C’est pourquoi Grenoble est parfois appelée la capitale des Alpes. Les stations de ski sont facilement accessibles, puisque les premières sont situées à une quinzaine de km seulement de la ville.\r\n\r\n\r\n\r\nLa ville de Grenoble est nichée au centre des Alpes françaises, entre le parc naturel du Vercors, le parc naturel du Massif de la Chartreuse et la chaîne de Belledonne. C’est pourquoi Grenoble est parfois appelée la capitale des Alpes. Les stations de ski sont facilement accessibles, puisque les premières sont situées à une quinzaine de km seulement de la ville.'),
(3, 'Lille', 'Haut-de-France', 232741, 8, 'Cap vers le Nord !', 'images/Lille.jpg', 'Située dans le département du Nord, Lille est une ville pleine de charme, vivante et attirante, pourvue d\'un riche patrimoine tant sur le plan culturel, qu\'architectural ou historique. Ses nombreux attraits en font la ville idéale pour l\'organisation d\'évènements telles que les réceptionsLes quartiers agréables sont les quartiers nord de la ville, c\'est-à-dire le Vieux Lille, le Centre Ville, Saint Maurice Pellevoisin et Vauban. Tous les autres quartiers sont plutôt à éviter: Fives, Moulins, Wazemmes, Bois Blancs, Faubourg de Béthune et Lille Sud'),
(4, 'Lyon', 'Auvergne RA\r\n       ', 513265, 7, 'Capitale de la province !', 'images/lyon.jpg', 'Lyon, la ville française idéale La ville de Lyon propose un véritable voyage à travers le temps et l’art de vivre à la Française. De la gastronomie au Patrimoine Historique en passant par la lumière et la soie, la ville possède de nombreux atouts qui en font une destination idéale pour une escapade en week-end ! Le meilleur quartier pour un équilibre professionnel et de vie personnelle à Lyon. Quartier élégant, calme et avec une belle architecture. École, parc Tête d\'Or et commerces. Bon choix si on décide d\'habiter en ville. Les points négatifs : Le prix immobilier, en général à Lyon'),
(5, 'Marseille', 'PACA\r\n              ', 861635, 9.9, 'Calanques et Vieux Port !', 'images/marseille.jpg', 'une ville idéale tournée vers la mer Fondée vers -600 par les Grecs de Phocée, Marseille est la plus ancienne ville française. Située au coeur du département des Bouches du Rhône (13), son territoire s\'étend sur plus de 240 km2.'),
(6, 'Montpellier', 'Occitanie\r\n         ', 277639, 10.4, 'Le Sud de la France !', 'images/Montpellier.jpg', 'Montpellier est la ville idéale pour les séjours linguistiques en France. C\'est l\'une des plus anciennes villes universitaires du monde, idéalement située au bord la mer Méditerranée.Montpellier est à la fois une grande ville mais on ne s y sent pas étouffé. Elle dispose de tout ce dont un étudiant a besoin (commerces , études, sorties). Positif: animée, ensoleillée, chaude. Négatif : de plus en plus dinsecurite.'),
(7, 'Nantes', 'Pays de la Loire\r\n  ', 303382, 6.1, 'Bol d\'air frais !', 'images/nantes.jpg', 'Situé au bord de Loire, Nantes ne cesse de se développer ses dernières années. Le patrimoine architectural de la ville et ses paysages à couper le souffle attirent chaque année de nombreux touristes. Sa proximité avec d\'autres grandes villes de France, notamment Paris, est aussi très appréciée par les Français pour prendre un grand bol d\'air.'),
(8, 'Nice', 'PACA\r\n              ', 342522, 8.2, 'L\'incontournable de l\'été !', 'images/nice.jpg', 'Ville très hétérogène et très inégalitaire (c\'est pas plus mal finalement ça évite la mixité sociale comme à Toulouse ou Grenoble qui sont devenues des villes du tiers monde). Très peu d\'espace vert, ville encombrée partout même dans les quartiers chics. Si vous êtes très aisés ou seniors, Nice est une ville idéale.'),
(9, 'Paris', 'Ile de France', 2175601, 6.7, 'Respirez Paris !', 'images/paris.jpg', 'Ville la plus peuplée et capitale de la France, Paris est un incontournable aussi bien pour les citoyens français que pour les touristes du monde entier ! Elle symbolise la culture française et elle est classée la ville la plus élégante du monde. Idéalement desservie, Paris dispose de nombreux moyens de transport, avions, métros, trains,...'),
(10, 'Reims', 'Champagne-Ardenne', 184176, 8.1, 'RA ne pas manquer !', 'images/Reims.jpg', 'Reims se situe dans la région Grand-Est. Il est connue pour son nombre très élevé d\'habitants. La ville est surnommée la cité des Rois de par son patrimoine culturel, historique et ses cathédrales. Reims est aussi renommé, et principalement même, pour le champagne !'),
(11, 'Rennes', 'Bretagne\r\n          ', 215366, 6, 'De toute beauté !', 'images/Rennes.jpg', 'Démographie, histoire, dynamisme,... Rennes séduit chacun des français pour un aspect bien précis ! Il figure parmi les destinations les plus prisées du territoire, notamment pour sa proximité avec la Manche. Rennes est un voyage à lui seul, cap vers l\'Ouest !'),
(12, 'Strasbourg', 'Grand-Est', 277270, 7.8, 'A la frontière du monde !', 'images/Strasbourg.jpg', 'Strasbourg marque aussi bien pour son histoire très riche que l\'inscription de bon nombre de ses sites au patrimoine mondial de l\'UNESCO. Ville très appréciée des étudiants, ses derniers apprécient tout particulièrement sa proximité avec les pays frontaliers. Strasbourg est tourné vers la France, mais aussi l\'international !'),
(13, 'Toulon', 'PACA\r\n              ', 146479, 8.1, 'Le plus connu des inconnus !', 'images/Toulon.jpg', 'La ville de Toulon est chargée d’histoire. Située dans le sud de la France, dans la région Provence-Alpes-Côte d’Azur elle abrite des lieux mythiques et sites historiques comme le Mémorial du Débarquement et de la Libération de la Provence, la Porte d’Italie ou la Place Puget. Vigne balnéaire, on y retrouve également des plages qui accueillent des dizaines de milliers de touristes chaque année. Toulon compte à ce jour 169 634 habitants. Située entre mer et montagnes, capitale économique du Var, Toulon bénéficie de nombreux atouts naturels. La base navale (plus grand port militaire français), le commerce, les administrations (publiques ou privées), le tourisme et la recherche (pôle Mer PACA, Institut français de recherche pour l\'exploitation de la mer (IFREMER), … sont l\'essentiel de l\'activité économique de la ville, qui partage avec Hyères un aéroport par lequel transitent environ 500 000 passagers par an. Le port de commerce de Toulon est le premier port français pour la desserte de la Corse. En 2009, 1 152 054 passagers ont embarqué depuis le Var, ce qui représente près de 40 % du trafic continent-Corse. Ce développement est lié à la présence, depuis 2001, de la compagnie maritime Corsica Ferries. De plus, Toulon est la ville française en Méditerranée qui connaît une des plus fortes progressions en termes d\'accueil des croisières. Toulon a ainsi accueilli 85 000 passagers en 2007, 250 000 en 2010, pour atteindre 320 000 croisiéristes en 20115 ou encore 160 escales en 2015. La ville possède une université (faculté de sciences et techniques, faculté de lettres et sciences humaines, faculté de sciences économiques et de gestion, faculté de sciences de l\'information et de la communication (Ingémédia), faculté de droit, Staps, IUT, IAE), de pôles d’enseignement supérieur : classes préparatoires aux grandes écoles des lycées Dumont-d\'Urville et Rouvière, Institut supérieur de l\'électronique et du numérique (ISEN Toulon), école d\'ingénieurs SeaTech, école de commerce Kedge Business School, etc. Toulon est enfin dotée d\'un opéra, d\'un conservatoire national de région, de plusieurs musées, salles de concert (palais Neptune6 et Zénith-Omega) et d\'un théâtre labellisé « scène nationale » : le théâtre Liberté.'),
(14, 'Toulouse', 'Occitanie\r\n         ', 471941, 7.4, ' dimension contemporaine et future de l’Afrique', 'images/toulouse.jpg', 'Toulouse est un autre centre culturel Français, cette ville compte le Capitole de Toulouse, la Place du Capitole, la Cité de l’espace ou le Musée des Augustins, le jardin botanique ou le Musée Aéronautique comme principaux lieux d’intérêt. Ville à l\'architecture caractéristique des cités du Midi de la France7,8, Toulouse est surnommée la « ville rose » en raison de la couleur du matériau de construction traditionnel local, la brique de terre cuite. Le développement de la culture de la violette de Toulouse au xixe siècle en fait un emblème de la ville et lui vaut le surnom de « cité des violettes ». Elle est aussi, beaucoup plus rarement, surnommée la « cité Mondine » (la Ciutat Mondina en occitan), en référence à la dynastie des comtes de la ville, souvent nommés Raymond9. Reliant Toulouse à Sète, le canal du Midi est inscrit au patrimoine mondial de l\'Unesco depuis 1996. La basilique Saint-Sernin, plus grand édifice roman d\'Europe, y est également inscrite depuis 1998 au titre des chemins de Saint-Jacques de Compostelle. Toulouse est la capitale européenne de l\'industrie aéronautique et spatiale avec les sites d\'Airbus Commercial Aircraft et de sa maison mère Airbus. Elle compte plus de 100 000 étudiants10 et selon L\'Express, il s\'agissait de la ville la plus dynamique de France en 200911. Le magazine économique Challenges renouvelle ce titre en 201212 et 201513. Le sport emblématique de Toulouse est le rugby à XV, son club du Stade toulousain détenant le plus riche palmarès sur le plan national comme sur le plan continental, avec vingt titres de champion de France et quatre titres de champion d\'Europe. Le cassoulet, la saucisse et la violette sont les spécialités emblématiques de la gastronomie toulousaine.'),
(15, 'Valence', 'Auvergne RA\r\n       ', 62479, 7.9, 'Au milieu de la France !', 'images/Valence.jpg', 'Située au cœur du couloir rhodanien et soumise à un climat méditerranéen, Valence est souvent désignée comme étant « la porte du Midi ». Entre Vercors et Provence, sa situation géographique attire de nombreux touristes. Valence possède de beaux monuments tels que la Maison des Têtes (bâtie entre 1528 et 1532 par Antoine de Dorne), la cathédrale Saint-Apollinaire (construite entre 1063 et 1099 sous l\'impulsion de l\'évêque Gontard), ou encore la fontaine monumentale de l\'architecte Eugène Poitoux. La ville compte de nombreux monuments historiques dont la plupart se trouvent dans le Vieux Valence5. La ville offre des parcours de découverte au fil des jardins et des canaux qui la traversent sur plus de 17 km6. Des chemins longent les berges où évolue une faune diversifiée. Inscrite sur la liste des villes et villages fleuris de France, Valence est l\'une des dix-sept communes de l\'ancienne région Rhône-Alpes à être labellisée « Quatre fleurs » par le concours des villes et villages fleuris7.');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `connexion`
--
ALTER TABLE `connexion`
  ADD PRIMARY KEY (`id_connexion`);

--
-- Index pour la table `frequentation`
--
ALTER TABLE `frequentation`
  ADD PRIMARY KEY (`UIC`,`CLASSE_AGE`,`ANNEE`);

--
-- Index pour la table `gare`
--
ALTER TABLE `gare`
  ADD PRIMARY KEY (`id_gare`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_ut`);

--
-- Index pour la table `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`id_v`,`nom`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `connexion`
--
ALTER TABLE `connexion`
  MODIFY `id_connexion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT pour la table `gare`
--
ALTER TABLE `gare`
  MODIFY `id_gare` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id_ut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT pour la table `ville`
--
ALTER TABLE `ville`
  MODIFY `id_v` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
