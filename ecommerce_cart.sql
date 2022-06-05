-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3307
-- Généré le : dim. 05 juin 2022 à 19:47
-- Version du serveur : 10.6.5-MariaDB
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecommerce_cart`
--

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `o_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `o_quantity` int(11) NOT NULL,
  `o_date` varchar(450) NOT NULL,
  PRIMARY KEY (`o_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`o_id`, `p_id`, `u_id`, `o_quantity`, `o_date`) VALUES
(25, 3, 1, 3, '2021-05-15'),
(34, 3, 1, 1, '2022-06-04');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(450) NOT NULL,
  `category` varchar(450) NOT NULL,
  `price` double NOT NULL,
  `image` varchar(450) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `image`) VALUES
(1, 'New Arrival Femal Shoes', 'Female Shoes', 120, 'female-shoes.jpg'),
(2, 'Ladies Pure PU Shoulder Bag', 'Ladis Bag', 69.99, 'ladis-bag.jpg'),
(3, 'Stylish Men Office Suits', 'Men Clothes', 169, 'men-suits.jpg'),
(4, 'Jaeger-LeCoultre Men Watch', 'Men Watch', 2500.99, 'men-watch.jpg'),
(5, 'FreeMax e-cigarettes VB-456', 'E-Cigarattes', 310, 'smoking-e-cigarette.jpg'),
(6, 'GeekVapee e-cigarattes MM-632', 'E-Cigarattes', 555.5, 'smoking-e-cigarette-2.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Almamun', 'almamun@mail.com', '123456');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
