-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Fev-2021 às 09:52
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `store_db`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(1, 'tobias', 'lasthomenagem@gmail.com', '$2y$10$44O7JYxJEHrZ2K6NinOut.Xju0TWhdaSfhf4WPzM6ezYNKmE1yNwa', '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Continental'),
(2, 'Bridgestone'),
(3, 'Good Year'),
(4, 'Pirelli'),
(5, 'Michelin'),
(6, 'Firestone'),
(7, 'Diamond'),
(8, 'XCENT'),
(9, 'Keter'),
(10, 'APTANY');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(1, 2, '::1', 1, 1),
(2, 5, '::1', 1, 1),
(3, 7, '::1', 1, 5),
(4, 6, '::1', 1, 1),
(5, 9, '::1', -1, 1),
(10, 30, '::1', 1, 1),
(11, 29, '::1', 1, 20),
(12, 36, '::1', 1, 147),
(15, 262, '::1', -1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(2, 'ARO 13'),
(3, 'ARO 14'),
(4, 'ARO 15'),
(5, 'ARO 16'),
(6, 'ARO 17'),
(12, 'ARO 18'),
(13, 'ARO 19'),
(14, 'ARO 20'),
(15, 'ARO 21'),
(16, 'ARO 22'),
(17, 'ARO 24'),
(18, 'ARO 17.5');

-- --------------------------------------------------------

--
-- Estrutura da tabela `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `product_keywords`) VALUES
(29, 2, 1, 'PNEU 175/70R13 82T VIKING CITYTECH II BY CONTINENTAL', 205, 242, 'Pneu Aro 13', '1613452046_PromoPneuSlider2-27.jpg', 'Pneu aro 13, aro 13, continental, 175,70, pneu, carro, viking'),
(30, 3, 1, 'PNEU 175/65R14 BARUM BRAVURIS 5HM 82T BY CONTINENTAL', 195, 235, 'PNEU ARO 14', '1613452615_1.png', 'promoção, aro 14, pneu, top de linha, continental, barum, 175'),
(31, 3, 1, 'PNEU 165/70R14 CONTIECOCONTACT 3 CONTINENTAL 85T', 219, 100, 'Pneu Aro 14', '1613454117_2.jpg', 'aro 14, pneu, continental, desconto, barato, 165/70, pneu'),
(32, 3, 3, 'PNEU 175/65R14 GOODYEAR KELLY EDGE TOURING 82T', 229, 200, 'Pneu Aro 14 da Good Year', '1613454233_3.jpg', 'aro 14, pneu, good year, barato, qualidade, 175/65, '),
(33, 3, 1, 'PNEU 185/60R14 BARUM BRAVURIS 5 82H BY CONTINENTAL', 219, 200, 'Pneu Aro 14 da continental, Barum', '1613454331_4.png', 'pneu aro 14, continental, barum, qualidade, 185/60,  PNEU 185/60R14 BARUM BRAVURIS 5 82H BY CONTINENTAL'),
(34, 3, 4, 'PNEU 185/65R14 PIRELLI FORMULA ENERGY 86T', 244, 98, 'PNEU 185/65R14 PIRELLI FORMULA ENERGY 86T', '1613454445_5.png', 'PNEU 185/65R14 PIRELLI FORMULA ENERGY 86T, pneu aro 14, aro 14, pirelli, 185, 65, 185/65'),
(35, 3, 3, 'PNEU 165/70R14 GOODYEAR ASSURANCE 81T', 259, 198, 'PNEU 165/70R14 GOODYEAR ASSURANCE 81T', '1613454537_6.jpg', 'PNEU 165/70R14 GOODYEAR ASSURANCE 81T, pneu aro 14, aro 14, good year, 165, 70, 165/70'),
(36, 3, 4, 'PNEU 175/65R14 PIRELLI CINTURATO P1 82T', 274, 106, 'PNEU 175/65R14 PIRELLI CINTURATO P1 82T', '1613454647_7.jpg', 'PNEU 175/65R14 PIRELLI CINTURATO P1 82T, pneu aro 14, aro 14, pirelli, 175, 65, 175/65'),
(37, 3, 5, 'PNEU 175/65R14 MICHELIN ENERGY XM2 82H', 270, 70, 'PNEU 175/65R14 MICHELIN ENERGY XM2 82H', '1613454739_8.jpg', 'Pneu aro 14, aro 14, 175/65, 175, michelin, PNEU 175/65R14 MICHELIN ENERGY XM2 82H'),
(38, 3, 6, 'PNEU 165/70R14 FIRESTONE MULTIHAWK 81T', 269, 56, 'PNEU 165/70R14 FIRESTONE MULTIHAWK 81T', '1613455193_9.jpg', 'pneu aro 14, aro 14, firestone, 165, 70, r14,PNEU 165/70R14 FIRESTONE MULTIHAWK 81T'),
(39, 3, 6, 'PNEU 185/65R14 FIRESTONE F600 86T', 274, 56, 'PNEU 185/65R14 FIRESTONE F600 86T', '1613455281_10.png', 'pneu aro 14, aro 14, firestone, 185, 65, 86t, PNEU 185/65R14 FIRESTONE F600 86T'),
(40, 3, 1, 'PNEU 185/60R14 CONTINENTAL POWERCONTACT 2 82H', 290, 100, 'PNEU 185/60R14 CONTINENTAL POWERCONTACT 2 82H', '1613455378_11.jpg', 'pneu aro 14, continental, 82h, 185, 60, PNEU 185/60R14 CONTINENTAL POWERCONTACT 2 82H'),
(41, 3, 1, 'PNEU 175/70R14 CONTINENTAL CONTIECOCONTACT 5 88T', 320, 100, 'PNEU 175/70R14 CONTINENTAL CONTIECOCONTACT 5 88T', '1613455443_12.png', 'pneu aro 14, continental, r14, 170, 70, PNEU 175/70R14 CONTINENTAL CONTIECOCONTACT 5 88T'),
(42, 3, 3, 'PNEU 185/60R14 GOODYEAR KELLY EDGE SPORT 82H', 289, 100, 'PNEU 185/60R14 GOODYEAR KELLY EDGE SPORT 82H\r\n', '1613455510_13.jpg', 'PNEU 185/60R14 GOODYEAR KELLY EDGE SPORT 82H, aro 14, 185,60,r14, good year'),
(43, 3, 5, 'PNEU 175/70R14 MICHELIN ENERGY XM2 88T', 289, 100, 'PNEU 175/70R14 MICHELIN ENERGY XM2 88T', '1613455582_14.jpg', 'PNEU 175/70R14 MICHELIN ENERGY XM2 88T, aro 14, 175, 70,r14, michelin'),
(44, 3, 4, 'PNEU 185/70R14 PIRELLI CINTURATO P1 88H', 289, 100, 'PNEU 185/70R14 PIRELLI CINTURATO P1 88H\r\n', '1613455635_15.jpg', 'PNEU 185/70R14 PIRELLI CINTURATO P1 88H, aro 14, 185, 70, r14, pirelli'),
(45, 3, 3, 'PNEU 175/70R14 GOODYEAR EFFICIENTGRIP PERFORMANCE 84T', 309, 100, 'PNEU 175/70R14 GOODYEAR EFFICIENTGRIP PERFORMANCE 84T', '1613455709_16.jpg', 'PNEU 175/70R14 GOODYEAR EFFICIENTGRIP PERFORMANCE 84T, aro 14, 175, 70, r14, Good year'),
(46, 3, 3, 'PNEU 185/70R14 GOODYEAR EFFICIENTGRIP PERFORMANCE 88H', 314, 100, 'PNEU 185/70R14 GOODYEAR EFFICIENTGRIP PERFORMANCE 88H', '1613455767_17.jpg', 'PNEU 185/70R14 GOODYEAR EFFICIENTGRIP PERFORMANCE 88H, aro 14, 185, 70, r14, Good year'),
(47, 3, 4, 'PNEU 175/70R14 PIRELLI CINTURATO P1 84T', 304, 100, 'PNEU 175/70R14 PIRELLI CINTURATO P1 84T\r\n', '1613455850_18.jpg', 'PNEU 175/70R14 PIRELLI CINTURATO P1 84T, aro 14, 175, 70, r14, Pirelli'),
(48, 3, 4, 'PNEU 6.45-14 PIRELLI TORNADO ALFA 4 LONAS', 304, 100, 'PNEU 6.45-14 PIRELLI TORNADO ALFA 4 LONAS\r\n', '1613455909_19.jpg', 'PNEU 6.45-14 PIRELLI TORNADO ALFA 4 LONAS, aro 14, 175, 70, r14, Pirelli'),
(49, 3, 1, 'PNEU 175/70R14 CROSSCONTACT AT CONTINENTAL 88H', 389, 100, 'PNEU 175/70R14 CROSSCONTACT AT CONTINENTAL 88H\r\n', '1613455961_20.jpg', 'PNEU 175/70R14 CROSSCONTACT AT CONTINENTAL 88H, aro 14, 175, 70, r14, continental'),
(50, 3, 3, 'PNEU 185R14 GOODYEAR CARGO MARATHON II 102/100R', 399, 200, 'PNEU 185R14 GOODYEAR CARGO MARATHON II 102/100R\r\n', '1613456012_21.jpg', 'PNEU 185R14 GOODYEAR CARGO MARATHON II 102/100R 88H, aro 14, 175, 70, r14, continental'),
(51, 3, 4, 'PNEU 5.90-14 PIRELLI TORNADO ALFA 4PR 5.0/5', 389, 200, 'PNEU 5.90-14 PIRELLI TORNADO ALFA 4PR 5.0/5 para fusca e brasilia', '1613456103_22.jpg', 'PNEU 5.90-14 PIRELLI TORNADO ALFA 4PR 5.0/5, aro 14, 175, 70, r14, pirelli, fusca, brasilia'),
(52, 3, 4, 'PNEU 175/70R14 SCORPION ATR 88H PIRELLI', 409, 200, 'ORIGINAL PALIO, UNO, STRADA ADVENTURE, SAVEIRO,\r\n', '1613456181_23.jpg', 'PNEU 175/70R14 SCORPION ATR 88H PIRELLI, aro 14, 175, 70, 88h, r14, pirelli, ORIGINAL PALIO, UNO, STRADA ADVENTURE, SAVEIRO,'),
(53, 3, 4, 'PNEU 185R14 PIRELLI CHRONO 102R', 434, 200, 'PNEU 185R14 PIRELLI CHRONO 102R\r\n', '1613456233_24.jpg', 'PNEU 185R14 PIRELLI CHRONO 102R, aro 14, 175, 70, 88h, r14, pirelli,'),
(54, 3, 1, 'PNEU 175/70R14C CONTINENTAL VANCOCONTACT 2 95/93T', 499, 200, 'PNEU 175/70R14C CONTINENTAL VANCOCONTACT 2 95/93T\r\n', '1613456285_25.png', 'PNEU 175/70R14C CONTINENTAL VANCOCONTACT 2 95/93T, aro 14, 175, 70, 88h, r14, continental'),
(55, 3, 1, 'PNEU 195R14 CONTINENTAL CONTIVANCONTACT 100 106/104H', 529, 200, 'PNEU 195R14 CONTINENTAL CONTIVANCONTACT 100 106/104H', '1613456328_26.jpg', 'PNEU 195R14 CONTINENTAL CONTIVANCONTACT 100 106/104H, aro 14, 175, 70, 88h, r14, continental'),
(56, 3, 5, 'PNEU 195/70R14 MICHELIN ENERGY XM2 91H', 549, 200, 'PNEU 195/70R14 MICHELIN ENERGY XM2 91H\r\n', '1613456375_27.jpg', 'PNEU 195/70R14 MICHELIN ENERGY XM2 91H, aro 14, 175, 70, 88h, r14, michelin'),
(57, 3, 4, 'PNEU 195R14C PIRELLI CHRONO 106R', 689, 200, 'PNEU 195R14C PIRELLI CHRONO 106R\r\n', '1613456419_28.jpg', 'PNEU 195R14C PIRELLI CHRONO 106R, aro 14, 175, 70, 88h, r14, pirelli'),
(58, 4, 1, 'PNEU 175/65R15 BRILLANTIS 2 BARUM 84T BY CONTINENTAL', 199, 500, 'PNEU 175/65R15 BRILLANTIS 2 BARUM 84T BY CONTINENTAL', '1613940600_1.jpg', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(59, 4, 1, 'PNEU 185/60R15 CONTINENTAL BARUM BRILLANTIS 2 88H', 204, 500, 'PNEU 185/60R15 CONTINENTAL BARUM BRILLANTIS 2 88H', '1613940625_2.jpg', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(60, 4, 1, 'PNEU 195/65R15 CONTINENTAL BARUM BRILLANTIS 2 91H', 204, 500, 'PNEU 195/65R15 CONTINENTAL BARUM BRILLANTIS 2 91H\r\n', '1613940650_3.jpg', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(61, 4, 1, 'PNEU 195/60R15 BRILLANTIS 2 BARUM 88H BY CONTINENTAL', 204, 500, 'PNEU 195/60R15 BRILLANTIS 2 BARUM 88H BY CONTINENTAL', '1613940671_4.jpg', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(62, 4, 1, 'PNEU 185/65R15 CONTIPOWERCONTACT CONTINENTAL 88H', 279, 500, 'PNEU 185/65R15 CONTIPOWERCONTACT CONTINENTAL 88H', '1613941479_6.jpg', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(63, 4, 1, 'PNEU 185/65R15 CONTINENTAL POWERCONTACT 2 88H', 279, 500, 'PNEU 185/65R15 CONTINENTAL POWERCONTACT 2 88H', '1613941512_7.jpg', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(64, 4, 3, 'PNEU 195/60R15 GOODYEAR KELLY EDGE SPORT 88V', 289, 500, 'PNEU 195/60R15 GOODYEAR KELLY EDGE SPORT 88V', '1613941559_8.jpg', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(65, 4, 1, 'PNEU 195/65R15 CONTINENTAL POWERCONTACT 2 91H', 299, 500, 'PNEU 195/65R15 CONTINENTAL POWERCONTACT 2 91H', '1613941586_9.jpg', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(66, 4, 3, 'PNEU 195/50R15 GOODYEAR KELLY EDGE SPORT 82V', 284, 500, 'PNEU 195/50R15 GOODYEAR KELLY EDGE SPORT 82V', '1613941694_11.jpg', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(67, 4, 1, 'PNEU 185/60R15 CONTIPOWERCONTACT CONTINENTAL 88H', 289, 500, 'PNEU 185/60R15 CONTIPOWERCONTACT CONTINENTAL 88H', '1613941726_12.jpg', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(68, 4, 1, 'PNEU 185/60R15 CONTINENTAL POWERCONTACT 2 84H', 289, 500, 'PNEU 185/60R15 CONTINENTAL POWERCONTACT 2 84H', '1613941781_13.jpg', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(69, 4, 1, 'PNEU 195/65R15 CONTINENTAL PREMIUMCONTACT 6 91H', 349, 500, 'PNEU 195/65R15 CONTINENTAL PREMIUMCONTACT 6 91H', '1613941826_14.png', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(70, 4, 1, 'PNEU 185/60R15 CONTINENTAL EXTREMECONTACT DW 88H', 329, 500, 'PNEU 185/60R15 CONTINENTAL EXTREMECONTACT DW 88H', '1613941856_15.png', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(71, 4, 1, 'PNEU 205/60R15 CONTINENTAL BARUM BRILLANTIS 2 91H', 294, 500, 'PNEU 205/60R15 CONTINENTAL BARUM BRILLANTIS 2 91H', '1613941885_16.jpg', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(72, 4, 1, 'PNEU 195/50R15 BFGOODRICH G GRIP 82V', 294, 500, 'PNEU 195/50R15 BFGOODRICH G GRIP 82V', '1613941907_17.jpg', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(73, 4, 5, 'PNEU 195/55R15 MICHELIN ENERGY XM2 85V', 309, 500, 'PNEU 195/55R15 MICHELIN ENERGY XM2 85V', '1613941944_18.jpg', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(74, 4, 2, 'PNEU 195/65R15 BRIDGESTONE EP150 ECOPIA 91H', 319, 500, 'PNEU 195/65R15 BRIDGESTONE EP150 ECOPIA 91H', '1613941984_19.png', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(75, 4, 1, 'PNEU 185/65R15 CONTINENTAL CONTIPREMIUMCONTACT 5 88H', 314, 500, 'PNEU 185/65R15 CONTINENTAL CONTIPREMIUMCONTACT 5 88H', '1613942008_20.jpg', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(76, 4, 5, 'PNEU 185/65R15 MICHELIN ENERGY XM2+ 88H', 349, 500, 'PNEU 185/65R15 MICHELIN ENERGY XM2+ 88H', '1613942035_21.jpg', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(77, 4, 4, 'PNEU 195/55R15 PIRELLI CINTURATO P1 PLUS 85V', 354, 500, 'PNEU 195/55R15 PIRELLI CINTURATO P1 PLUS 85V', '1613942064_22.jpg', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(78, 4, 1, 'PNEU 155/60R15 CONTINENTAL CONTIECOCONTACT 3 74T', 359, 500, 'PNEU 155/60R15 CONTINENTAL CONTIECOCONTACT 3 74T', '1613942091_23.jpg', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(79, 4, 4, 'PNEU 185/60R15 PIRELLI CINTURATO P1 88H', 349, 500, 'PNEU 185/60R15 PIRELLI CINTURATO P1 88H', '1613942118_24.jpg', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(80, 4, 4, 'PNEU 185/65R15 PIRELLI CINTURATO P1 92H', 349, 500, 'PNEU 185/65R15 PIRELLI CINTURATO P1 92H', '1613942138_25.jpg', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(81, 4, 4, 'PNEU 195/50R15 PIRELLI CINTURATO P1 PLUS 82V', 349, 500, 'PNEU 195/50R15 PIRELLI CINTURATO P1 PLUS 82V', '1613942158_26.jpg', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(82, 4, 5, 'PNEU 185/60R15 MICHELIN PRIMACY 4 88H', 349, 500, 'PNEU 185/60R15 MICHELIN PRIMACY 4 88H', '1613942228_27.jpg', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(83, 4, 1, 'PNEU 195/70R15C 8 LONAS EUROVAN 2 GENERAL TIRE 104/102R', 359, 500, 'PNEU 195/70R15C 8 LONAS EUROVAN 2 GENERAL TIRE 104/102R', '1613942362_28.jpg', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(84, 4, 5, 'PNEU 175/65R15 MICHELIN ENERGY XM2 84H', 364, 500, 'PNEU 175/65R15 MICHELIN ENERGY XM2 84H', '1613942392_29.jpg', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(85, 4, 3, 'PNEU 205/65R15 GOODYEAR WRANGLER SUV 94H', 364, 500, 'PNEU 205/65R15 GOODYEAR WRANGLER SUV 94H', '1613942552_123123.jpg', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(86, 4, 1, 'PNEU 205/65R15 CONTINENTAL CROSSCONTACT AT 94H', 379, 500, 'PNEU 205/65R15 CONTINENTAL CROSSCONTACT AT 94H', '1613942607_30.jpg', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(87, 4, 4, 'PNEU 195/60R15 PIRELLI CINTURATO P1 88H', 374, 500, 'PNEU 195/60R15 PIRELLI CINTURATO P1 88H', '1613942645_31.jpg', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(88, 4, 4, 'PNEU 195/65R15 PIRELLI CINTURATO P1 91H', 379, 500, 'PNEU 195/65R15 PIRELLI CINTURATO P1 91H', '1613942667_32.jpg', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(89, 4, 4, 'PNEU 205/60R15 GOODYEAR EFFICIENTGRIP PERFORMANCE 91H', 389, 500, 'PNEU 205/60R15 GOODYEAR EFFICIENTGRIP PERFORMANCE 91H', '1613942715_33.jpg', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(90, 4, 5, 'PNEU 205/60R15 GOODYEAR EFFICIENTGRIP PERFORMANCE 91H', 389, 500, 'PNEU 205/60R15 GOODYEAR EFFICIENTGRIP PERFORMANCE 91H', '1613942733_33.jpg', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(91, 4, 3, 'PNEU 205/60R15 GOODYEAR EFFICIENTGRIP PERFORMANCE 91H', 389, 500, 'PNEU 205/60R15 GOODYEAR EFFICIENTGRIP PERFORMANCE 91H', '1613942746_33.jpg', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(92, 4, 1, 'PNEU 205/60R15 BRIDGESTONE DUELER AT REVO 2 91H', 399, 500, 'PNEU 205/60R15 BRIDGESTONE DUELER AT REVO 2 91H', '1613942829_36.jpg', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(93, 4, 4, 'PNEU 205/70R15 CONTINENTAL 4X4CONTACT 96T', 479, 500, 'PNEU 205/70R15 CONTINENTAL 4X4CONTACT 96T', '1613942888_38.png', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(94, 4, 1, 'PNEU 205/70R15 CONTINENTAL 4X4CONTACT 96T', 479, 500, 'PNEU 205/70R15 CONTINENTAL 4X4CONTACT 96T', '1613942898_38.png', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(95, 4, 4, 'PNEU 5.60-15 TORNADO ALFA 4PR PIRELLI', 434, 500, 'PNEU 5.60-15 TORNADO ALFA 4PR PIRELLI', '1613942921_39.jpg', 'Pneu, Aro 15, carros, continental, michellin, marcas, barato, desconto, estoque'),
(96, 5, 1, 'PNEU 195/45R16 BARUM BRAVURIS 5 84V BY CONTINENTAL', 200, 500, 'PNEU 195/45R16 BARUM BRAVURIS 5 84V BY CONTINENTAL', '1613943175_1.jpg', 'Pneu, Aro 16, carros, continental, michellin, marcas, barato, desconto, estoque'),
(97, 5, 7, 'PNEU 195/50R16 88V DIAMOND DP203', 249, 500, 'PNEU 195/50R16 88V DIAMOND DP203', '1613947196_2.png', 'Pneu aro 13, aro 13, continental, 175,70, pneu, carro, viking'),
(98, 5, 1, 'PNEU 205/55R16 CONTINENTAL POWERCONTACT 2 91V', 279, 500, 'PNEU 205/55R16 CONTINENTAL POWERCONTACT 2 91V', '1613947290_4.jpg', 'Pneu aro 13, aro 13, continental, 175,70, pneu, carro, viking'),
(99, 5, 1, 'PNEU 205/55R16 CONTINENTAL EXTREMECONTACT DW 91W', 299, 500, 'PNEU 205/55R16 CONTINENTAL EXTREMECONTACT DW 91W', '1613947318_5.png', 'Pneu aro 13, aro 13, continental, 175,70, pneu, carro, viking'),
(100, 5, 2, 'PNEU 205/55R16 BRIDGESTONE EP150 ECOPIA 91V', 289, 500, 'PNEU 205/55R16 BRIDGESTONE EP150 ECOPIA 91V', '1613947345_6.png', 'Pneu aro 13, aro 13, continental, 175,70, pneu, carro, viking'),
(101, 5, 1, 'PNEU 205/60R16 BARUM BRAVURIS 4X4 92H BY CONTINENTAL', 279, 500, 'PNEU 205/60R16 BARUM BRAVURIS 4X4 92H BY CONTINENTAL', '1613947387_7.png', 'Pneu aro 13, aro 13, continental, 175,70, pneu, carro, viking'),
(102, 5, 1, 'PNEU 215/55R16 SEMPERIT SPEED LIFE 2 93V BY CONTINENTAL', 299, 500, 'PNEU 215/55R16 SEMPERIT SPEED LIFE 2 93V BY CONTINENTAL', '1613947435_8.jpg', 'Pneu aro 13, aro 13, continental, 175,70, pneu, carro, viking'),
(103, 5, 5, 'PNEU 205/55R16 91V MICHELIN PRIMACY 4', 319, 500, 'PNEU 205/55R16 91V MICHELIN PRIMACY 4\r\n', '1613947483_9.jpg', 'Pneu aro 13, aro 13, continental, 175,70, pneu, carro, viking'),
(104, 5, 3, 'PNEU 205/65R16 GOODYEAR EFFICIENTGRIP SUV 95H', 359, 500, 'PNEU 205/65R16 GOODYEAR EFFICIENTGRIP SUV 95H', '1613947533_10.jpg', 'Pneu aro 13, aro 13, continental, 175,70, pneu, carro, viking'),
(105, 5, 4, 'PNEU 205/55R16 PIRELLI CINTURATO P1 PLUS 91V', 339, 500, 'PNEU 205/55R16 PIRELLI CINTURATO P1 PLUS 91V', '1613947580_11.jpg', 'Pneu aro 13, aro 13, continental, 175,70, pneu, carro, viking'),
(106, 5, 4, 'PNEU 185/55R16 PIRELLI CINTURATO P1 83V', 339, 500, 'PNEU 185/55R16 PIRELLI CINTURATO P1 83V', '1613947611_12.jpg', 'Pneu aro 13, aro 13, continental, 175,70, pneu, carro, viking'),
(107, 5, 1, 'PNEU 205/60R16 CONTINENTAL CONTIPOWERCONTACT 92H', 359, 500, 'PNEU 205/60R16 CONTINENTAL CONTIPOWERCONTACT 92H', '1613947652_13.jpg', 'Pneu aro 13, aro 13, continental, 175,70, pneu, carro, viking'),
(108, 5, 1, 'PNEU 205/60R16 CONTINENTAL POWERCONTACT 2 92H', 359, 500, 'PNEU 205/60R16 CONTINENTAL POWERCONTACT 2 92H\r\n', '1613947716_14.jpg', 'Pneu aro 13, aro 13, continental, 175,70, pneu, carro, viking'),
(109, 5, 1, 'PNEU 195/50R16 CONTINENTAL POWERCONTACT 2 84H', 379, 500, 'PNEU 195/50R16 CONTINENTAL POWERCONTACT 2 84H\r\n', '1613947778_15.jpg', 'Pneu aro 13, aro 13, continental, 175,70, pneu, carro, viking'),
(110, 5, 1, 'PNEU 195/55R16 CONTINENTAL CONTIPOWERCONTACT 87V', 399, 500, 'PNEU 195/55R16 CONTINENTAL CONTIPOWERCONTACT 87V', '1613947821_16.jpg', 'Pneu aro 13, aro 13, continental, 175,70, pneu, carro, viking'),
(111, 5, 4, 'PNEU 205/55R16 PIRELLI CINTURATO P7 91W', 379, 500, 'PNEU 205/55R16 PIRELLI CINTURATO P7 91W\r\n', '1613947873_17.jpg', 'Pneu aro 13, aro 13, continental, 175,70, pneu, carro, viking'),
(112, 5, 1, 'PNEU 205/60R16 GENERAL TIRE GRABBER AT3 92H', 449, 500, 'PNEU 205/60R16 GENERAL TIRE GRABBER AT3 92H\r\n', '1613947921_18.jpg', 'Pneu aro 13, aro 13, continental, 175,70, pneu, carro, viking'),
(113, 5, 1, 'PNEU 215/65R16 CROSSCONTACT AT CONTINENTAL 98T', 389, 500, 'PNEU 215/65R16 CROSSCONTACT AT CONTINENTAL 98T', '1613947992_19.jpg', 'Pneu aro 13, aro 13, continental, 175,70, pneu, carro, viking'),
(114, 5, 1, 'PNEU 195/55R16 CONTINENTAL POWERCONTACT 2 87H', 399, 500, 'PNEU 195/55R16 CONTINENTAL POWERCONTACT 2 87H\r\n', '1613948036_20.jpg', 'Pneu aro 13, aro 13, continental, 175,70, pneu, carro, viking'),
(115, 5, 1, 'PNEU 195/75R16C 8 LONAS EUROVAN 2 GENERAL TIRE 107/105R', 439, 500, 'PNEU 195/75R16C 8 LONAS EUROVAN 2 GENERAL TIRE 107/105R', '1613948087_21.jpg', 'Pneu aro 13, aro 13, continental, 175,70, pneu, carro, viking'),
(116, 5, 1, 'PNEU 195/55R16 CONTIPOWERCONTACT CONTINENTAL 87H', 429, 500, 'PNEU 195/55R16 CONTIPOWERCONTACT CONTINENTAL 87H', '1613948136_22.jpg', 'Pneu aro 13, aro 13, continental, 175,70, pneu, carro, viking'),
(117, 5, 1, 'PNEU 195/45R16 CONTINENTAL CONTIPROCONTACT 84H', 459, 500, 'PNEU 195/45R16 CONTINENTAL CONTIPROCONTACT 84H\r\n', '1613948176_23.png', 'Pneu aro 13, aro 13, continental, 175,70, pneu, carro, viking'),
(118, 5, 1, 'PNEU 195/50R16 84V CONTINENTAL CONTIPREMIUMCONTACT 2', 479, 500, 'PNEU 195/50R16 84V CONTINENTAL CONTIPREMIUMCONTACT 2', '1613948224_24.jpg', 'Pneu aro 13, aro 13, continental, 175,70, pneu, carro, viking'),
(119, 5, 3, 'PNEU 215/65R16 GOODYEAR WRANGLER SUV 98H', 439, 500, 'PNEU 215/65R16 GOODYEAR WRANGLER SUV 98H', '1613948284_25.jpg', 'Pneu aro 13, aro 13, continental, 175,70, pneu, carro, viking'),
(120, 5, 4, 'PNEU 195/50R16 PIRELLI CINTURATO P7 84H', 409, 500, 'PNEU 195/50R16 PIRELLI CINTURATO P7 84H\r\n', '1613948322_26.jpg', 'Pneu aro 13, aro 13, continental, 175,70, pneu, carro, viking'),
(121, 5, 1, 'PNEU 195/55R16 CONTINENTAL ECOCONTACT 5 91H', 499, 500, 'PNEU 195/55R16 CONTINENTAL ECOCONTACT 5 91H', '1613948368_27.png', 'Pneu aro 13, aro 13, continental, 175,70, pneu, carro, viking'),
(122, 5, 1, 'PNEU 215/65R16 GENERAL TIRE GRABBER AT3 98T', 489, 500, 'PNEU 215/65R16 GENERAL TIRE GRABBER AT3 98T\r\n', '1613948437_28.png', 'Pneu aro 16, aro 16, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(123, 5, 1, 'PNEU 205/55R16 CONTINENTAL PREMIUMCONTACT 6 91V', 514, 500, 'PNEU 205/55R16 CONTINENTAL PREMIUMCONTACT 6 91V\r\n', '1613948473_29.jpg', 'Pneu aro 16, aro 16, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(124, 5, 1, 'PNEU 205/70R16 CONTINENTAL CONTIPREMIUMCONTACT 2 97H', 519, 500, 'PNEU 205/70R16 CONTINENTAL CONTIPREMIUMCONTACT 2 97H', '1613948509_30.jpg', 'Pneu aro 16, aro 16, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(125, 5, 1, 'PNEU 205/60R16 CONTINENTAL CONTIPREMIUMCONTACT 5 92H', 519, 500, 'PNEU 205/60R16 CONTINENTAL CONTIPREMIUMCONTACT 5 92H', '1613948551_31.jpg', 'Pneu aro 16, aro 16, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(126, 5, 3, 'PNEU 205/60R16 CONTINENTAL CONTIPREMIUMCONTACT 5 92H', 519, 500, 'PNEU 205/60R16 CONTINENTAL CONTIPREMIUMCONTACT 5 92H', '1613948580_32.jpg', 'Pneu aro 16, aro 16, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(127, 5, 5, 'PNEU 185/55R16 MICHELIN ENERGY XM2 83V', 449, 500, 'PNEU 185/55R16 MICHELIN ENERGY XM2 83V\r\n', '1613948622_33.jpg', 'Pneu aro 16, aro 16, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(128, 5, 5, 'PNEU 235/60R16 FIRESTONE DESTINATION LE2 100V', 439, 500, 'PNEU 235/60R16 FIRESTONE DESTINATION LE2 100V\r\n', '1613948669_34.jpg', 'Pneu aro 16, aro 16, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(129, 5, 5, 'PNEU 195/60R16 MICHELIN LTX FORCE 89H', 459, 500, 'PNEU 195/60R16 MICHELIN LTX FORCE 89H\r\n', '1613948728_35.jpg', 'Pneu aro 16, aro 16, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(130, 5, 5, 'PNEU 195/45R16 PIRELLI CINTURATO P7 ALL SEASON 84V', 459, 500, 'PNEU 195/45R16 PIRELLI CINTURATO P7 ALL SEASON 84V\r\n', '1613948769_36.jpg', 'Pneu aro 16, aro 16, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(131, 5, 4, 'PNEU 195/45R16 PIRELLI CINTURATO P7 ALL SEASON 84V', 459, 500, 'PNEU 195/45R16 PIRELLI CINTURATO P7 ALL SEASON 84V\r\n', '1613948777_36.jpg', 'Pneu aro 16, aro 16, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(132, 5, 1, 'PNEU 215/75R16C SEMPERIT VAN LIFE 2 113/111R', 459, 500, 'PNEU 215/75R16C SEMPERIT VAN LIFE 2 113/111R\r\n', '1613948813_37.jpg', 'Pneu aro 16, aro 16, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(133, 5, 1, 'PNEU 195/45R16 CONTIECOCONTACT 5 CONTINENTAL 84H', 459, 500, 'PNEU 195/45R16 CONTIECOCONTACT 5 CONTINENTAL 84H\r\n', '1613948857_38.jpg', 'Pneu aro 16, aro 16, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(134, 5, 1, 'PNEU 205/70R16 CONTINENTAL CONTIPROCONTACT 96H', 519, 500, 'PNEU 205/70R16 CONTINENTAL CONTIPROCONTACT 96H\r\n', '1613948899_39.png', 'Pneu aro 16, aro 16, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(135, 6, 1, 'PNEU 225/45R17 BRAVURIS 3HM BARUM 94Y BY CONTINENTAL', 289, 500, 'PNEU 225/45R17 BRAVURIS 3HM BARUM 94Y BY CONTINENTAL', '1613971740_987557_pneu-22545r17-bravuris-3hm-barum-94y-by-continental_m1_636680284658347307.jpg', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(136, 6, 3, 'PNEU 225/45R17 GOODYEAR EDGE SPORT 91W', 299, 500, 'PNEU 225/45R17 GOODYEAR EDGE SPORT 91W\r\n', '1613971800_2.jpg', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(137, 6, 3, 'PNEU 225/45R17 GOODYEAR EFFICIENTGRIP PERFORMANCE 94W', 349, 500, 'PNEU 225/45R17 GOODYEAR EFFICIENTGRIP PERFORMANCE 94W', '1613971831_3.jpg', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(138, 6, 1, 'PNEU 225/45R17 CONTINENTAL EXTREMECONTACT DW 91W', 359, 500, 'PNEU 225/45R17 CONTINENTAL EXTREMECONTACT DW 91W', '1613971970_4.png', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(139, 6, 1, 'PNEU 215/50R17 EXTREMECONTACT DW CONTINENTAL 95W', 389, 500, 'PNEU 215/50R17 EXTREMECONTACT DW CONTINENTAL 95W', '1613972003_5.png', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(140, 6, 1, 'PNEU 205/50R17 CONTIPREMIUMCONTACT 2 CONTINENTAL 89V', 499, 500, 'PNEU 205/50R17 CONTIPREMIUMCONTACT 2 CONTINENTAL 89V', '1613972053_6.jpg', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(141, 6, 1, 'PNEU 225/45R17 CONTINENTAL CONTIECOCONTACT 5 94V', 439, 500, 'PNEU 225/45R17 CONTINENTAL CONTIECOCONTACT 5 94V', '1613972095_7.png', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(142, 6, 4, 'PNEU 215/45R17 PIRELLI CINTURATO P1 PLUS 91V', 449, 500, 'PNEU 215/45R17 PIRELLI CINTURATO P1 PLUS 91V', '1613972133_8.jpg', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(143, 6, 4, 'PNEU 225/45R17 PIRELLI CINTURATO P7 91W', 459, 500, 'PNEU 225/45R17 PIRELLI CINTURATO P7 91W', '1613972170_9.jpg', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(144, 6, 1, 'PNEU 215/60R17 GRABBER AT3 GENERAL TIRE 96H', 599, 500, 'PNEU 215/60R17 GRABBER AT3 GENERAL TIRE 96H', '1613972226_10.png', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(145, 6, 1, 'PNEU 225/45R17 CONTISPORTCONTACT 5 CONTINENTAL 91W', 539, 500, 'PNEU 225/45R17 CONTISPORTCONTACT 5 CONTINENTAL 91W', '1613972265_11.png', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(146, 6, 2, 'PNEU 215/55R17 BRIDGESTONE TURANZA ER370 94V', 449, 500, 'PNEU 215/55R17 BRIDGESTONE TURANZA ER370 94V\r\n', '1613972301_12.jpg', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(147, 6, 1, 'PNEU 215/55R17 CONTINENTAL EXTREMECONTACT DW 94V', 499, 500, 'PNEU 215/55R17 CONTINENTAL EXTREMECONTACT DW 94V', '1613972502_13.png', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(148, 6, 1, 'PNEU 215/45R17 CONTINENTAL PREMIUMCONTACT 6 91Y', 509, 500, 'PNEU 215/45R17 CONTINENTAL PREMIUMCONTACT 6 91Y', '1613972555_14.jpg', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(149, 6, 1, 'PNEU 205/40R17 CONTINENTAL CONTISPORTCONTACT 5 84V', 529, 500, 'PNEU 205/40R17 CONTINENTAL CONTISPORTCONTACT 5 84V', '1613972594_15.png', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(150, 6, 3, 'PNEU 215/55R17 GOODYEAR EFFICIENTGRIP SUV 94V', 519, 500, 'PNEU 215/55R17 GOODYEAR EFFICIENTGRIP SUV 94V\r\n', '1613972634_16.jpg', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(151, 6, 1, 'PNEU 205/50R17 CONTINENTAL CONTIECOCONTACT 5 93V', 599, 500, 'PNEU 205/50R17 CONTINENTAL CONTIECOCONTACT 5 93V', '1613972679_17.png', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(152, 6, 1, 'PNEU 225/65R17 GENERAL TIRE GRABBER AT3 102H', 599, 500, 'PNEU 225/65R17 GENERAL TIRE GRABBER AT3 102H\r\n', '1613972723_18.png', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(153, 6, 1, 'PNEU 205/45R17 MICHELIN PRIMACY 3 EXTRA LOAD 88W', 519, 500, 'PNEU 205/45R17 MICHELIN PRIMACY 3 EXTRA LOAD 88W\r\n', '1613972771_19.jpg', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(154, 6, 5, 'PNEU 205/45R17 MICHELIN PRIMACY 3 EXTRA LOAD 88W', 519, 500, 'PNEU 205/45R17 MICHELIN PRIMACY 3 EXTRA LOAD 88W\r\n', '1613972786_19.jpg', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(155, 6, 4, 'PNEU 215/50R17 PIRELLI CINTURATO P7 91V', 519, 500, 'PNEU 215/50R17 PIRELLI CINTURATO P7 91V\r\n', '1613972819_20.jpg', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(156, 6, 1, 'PNEU 205/55R17 CONTINENTAL CONTIPREMIUMCONTACT 5 95Y', 529, 500, 'PNEU 205/55R17 CONTINENTAL CONTIPREMIUMCONTACT 5 95Y', '1613972863_21.jpg', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(157, 6, 1, 'PNEU 205/55R17 CONTINENTAL CONTIPOWERCONTACT 91V', 589, 500, 'PNEU 205/55R17 CONTINENTAL CONTIPOWERCONTACT 91V', '1613972906_22.jpg', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(158, 6, 4, 'PNEU 225/65R17 PIRELLI FORMULA ST 102H', 549, 500, 'PNEU 225/65R17 PIRELLI FORMULA ST 102H', '1613972948_23.png', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(159, 6, 2, 'PNEU 205/55R17 BRIDGESTONE TURANZA T005 91V', 549, 500, 'PNEU 205/55R17 BRIDGESTONE TURANZA T005 91V\r\n', '1613972982_24.png', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(160, 6, 1, 'PNEU 235/55R17 CONTIPREMIUMCONTACT 5 CONTINENTAL 99V', 699, 500, 'PNEU 235/55R17 CONTIPREMIUMCONTACT 5 CONTINENTAL 99V', '1613973020_25.jpg', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(161, 6, 1, 'PNEU 215/55R17 CONTINENTAL CONTIPREMIUMCONTACT 5 94W', 499, 500, 'PNEU 215/55R17 CONTINENTAL CONTIPREMIUMCONTACT 5 94W', '1613973057_26.jpg', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(162, 6, 4, 'PNEU 205/45R17 PIRELLI CINTURATO P7 88V', 549, 500, 'PNEU 205/45R17 PIRELLI CINTURATO P7 88V', '1613973097_27.jpg', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(163, 6, 1, 'PNEU 215/60R17 CONTINENTAL CONTIECOCONTACT 5 96H', 689, 500, 'PNEU 215/60R17 CONTINENTAL CONTIECOCONTACT 5 96H\r\n', '1613973147_28.png', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(164, 6, 1, 'PNEU 225/60R17 CONTICROSSCONTACT LX 2 CONTINENTAL 103H', 589, 500, 'PNEU 225/60R17 CONTICROSSCONTACT LX 2 CONTINENTAL 103H', '1613973182_29.jpg', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(165, 6, 5, 'PNEU 205/50R17 MICHELIN PRIMACY 3 93W', 579, 500, 'PNEU 205/50R17 MICHELIN PRIMACY 3 93W\r\n', '1613973218_30.jpg', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(166, 6, 5, 'PNEU 205/50R17 MICHELIN PRIMACY 3 93W', 579, 500, 'PNEU 205/50R17 MICHELIN PRIMACY 3 93W\r\n', '1613973241_31.png', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(167, 6, 1, 'PNEU 225/50R17 CONTINENTAL CONTISPORTCONTACT 5 98Y', 649, 500, 'PNEU 225/50R17 CONTINENTAL CONTISPORTCONTACT 5 98Y', '1613973283_32.png', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(168, 6, 3, 'PNEU 225/65R17 GOODYEAR WRANGLER SUV 102H', 599, 500, 'PNEU 225/65R17 GOODYEAR WRANGLER SUV 102H\r\n', '1613973318_33.jpg', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(169, 6, 3, 'PNEU 225/60R17 GOODYEAR WRANGLER SUV 99H', 599, 500, 'PNEU 225/60R17 GOODYEAR WRANGLER SUV 99H\r\n', '1613973353_34.jpg', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(170, 6, 3, 'PNEU 225/50R17 CONTINENTAL PREMIUMCONTACT 6 98Y', 619, 500, 'PNEU 225/50R17 CONTINENTAL PREMIUMCONTACT 6 98Y\r\n', '1613973382_35.jpg', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(171, 6, 1, 'PNEU 225/50R17 CONTINENTAL PREMIUMCONTACT 6 98Y', 619, 500, 'PNEU 225/50R17 CONTINENTAL PREMIUMCONTACT 6 98Y\r\n', '1613973393_35.jpg', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(172, 6, 2, 'PNEU 225/65R17 BRIDGESTONE DUELER AT REVO2 102T', 619, 500, 'PNEU 225/65R17 BRIDGESTONE DUELER AT REVO2 102T\r\n', '1613973425_36.jpg', 'Pneu aro 17, aro 17, continental, 175,70, pneu, carro, continental, barato, caro, qualidade'),
(173, 6, 3, 'PNEU 205/45R17 GOODYEAR RUN FLAT EAGLE RSA 84V', 629, 500, 'PNEU 205/45R17 GOODYEAR RUN FLAT EAGLE RSA 84V\r\n', '1613973461_37.jpg', 'Pneu aro 17, aro 17, continental, 15,70, pneu, carro, continental, barato, caro, qualidade'),
(174, 6, 1, 'PNEU 205/55R17 CONTINENTAL RUN FLAT CONTIPREMIUMCONTACT 2 91V', 749, 500, 'PNEU 205/55R17 CONTINENTAL RUN FLAT CONTIPREMIUMCONTACT 2 91V\r\n', '1613973494_38.jpg', 'Pneu aro 17, aro 17, continental, 15,70, pneu, carro, continental, barato, caro, qualidade'),
(175, 6, 1, 'PNEU 225/70R17 GENERAL TIRE GRABBER AT3 108T', 709, 500, 'PNEU 225/70R17 GENERAL TIRE GRABBER AT3 108T\r\n', '1613973652_39.jpg', 'Pneu aro 17, aro 17, continental, 15,70, pneu, carro, continental, barato, caro, qualidade'),
(176, 6, 5, 'PNEU 225/65R17 MICHELIN PRIMACY SUV 102H', 619, 500, 'PNEU 225/65R17 MICHELIN PRIMACY SUV 102H\r\n', '1613973692_40.jpg', 'Pneu aro 17, aro 17, continental, 15,70, pneu, carro, continental, barato, caro, qualidade'),
(177, 12, 8, 'PNEU 235/40R18 95W XCENT EL601', 279, 200, 'PNEU 235/40R18 95W XCENT EL601', '1614019360_1.jpg', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(178, 12, 1, 'PNEU 225/55R18 CONTINENTAL BARUM BRAVURIS 4X4 98V', 389, 200, 'PNEU 225/55R18 CONTINENTAL BARUM BRAVURIS 4X4 98V', '1614019525_2.png', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(179, 12, 9, 'PNEU 225/60R18 104V KETER KT616', 409, 233, 'PNEU 225/60R18 104V KETER KT616\r\n', '1614019612_3.jpg', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(180, 12, 1, 'PNEU 265/60R18 CONTINENTAL SEMPERIT TRAIL LIFE AT 110T', 439, 233, 'PNEU 265/60R18 CONTINENTAL SEMPERIT TRAIL LIFE AT 110T\r\n', '1614019665_4.png', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(181, 12, 4, 'PNEU 235/60R18 PIRELLI FORMULA ST 107V', 439, 233, 'PNEU 235/60R18 PIRELLI FORMULA ST 107V\r\n', '1614019690_5.jpg', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(182, 12, 1, 'PNEU 225/55R18 CONTINENTAL CONTICROSSCONTACT LX 2 98V', 599, 233, 'PNEU 225/55R18 CONTINENTAL CONTICROSSCONTACT LX 2 98V', '1614019722_6.jpg', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(183, 12, 2, 'PNEU 225/45R18 BRIDGESTONE TURANZA T005 95Y', 499, 233, 'PNEU 225/45R18 BRIDGESTONE TURANZA T005 95Y\r\n', '1614019755_7.jpg', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(184, 12, 3, 'PNEU 205/45R18 GOODYEAR EAGLE TOURING 86V', 549, 233, 'PNEU 205/45R18 GOODYEAR EAGLE TOURING 86V\r\n', '1614019793_8.jpg', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(185, 12, 3, 'PNEU 255/60R18 CONTINENTAL CONTICROSSCONTACT UHP 112H', 729, 233, 'PNEU 255/60R18 CONTINENTAL CONTICROSSCONTACT UHP 112H', '1614019824_9.jpg', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(186, 12, 1, 'PNEU 255/60R18 CONTINENTAL CONTICROSSCONTACT UHP 112H', 729, 233, 'PNEU 255/60R18 CONTINENTAL CONTICROSSCONTACT UHP 112H', '1614019831_9.jpg', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(187, 12, 3, 'PNEU 225/55R18 GOODYEAR EFFICIENTGRIP SUV 98H IX35', 569, 233, 'PNEU 225/55R18 GOODYEAR EFFICIENTGRIP SUV 98H IX35', '1614019869_10.jpg', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(188, 12, 1, 'PNEU 255/60R18 CONTICROSSCONTACT LX CONTINENTAL 112T', 629, 233, 'PNEU 255/60R18 CONTICROSSCONTACT LX CONTINENTAL 112T', '1614019907_11.png', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(189, 12, 5, 'PNEU 225/55R18 MICHELIN PRIMACY 3 98V', 589, 233, 'PNEU 225/55R18 MICHELIN PRIMACY 3 98V\r\n', '1614019938_12.png', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(190, 12, 1, 'PNEU 235/55R18 CONTINENTAL CONTISPORTCONTACT 5 SUV 100V', 799, 233, 'PNEU 235/55R18 CONTINENTAL CONTISPORTCONTACT 5 SUV 100V', '1614019974_13.png', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(191, 12, 1, 'PNEU 225/55R18 CONTINENTAL PREMIUMCONTACT 6 98V', 649, 233, 'PNEU 225/55R18 CONTINENTAL PREMIUMCONTACT 6 98V\r\n', '1614020003_14.jpg', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(192, 12, 1, 'PNEU 235/60R18 CONTINENTAL CONTICROSSCONTACT UHP 107W', 689, 233, 'PNEU 235/60R18 CONTINENTAL CONTICROSSCONTACT UHP 107W\r\n', '1614020038_15.jpg', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(193, 12, 1, 'PNEU 235/45R18 CONTINENTAL CONTISPORTCONTACT 5 98Y', 699, 233, 'PNEU 235/45R18 CONTINENTAL CONTISPORTCONTACT 5 98Y\r\n', '1614020067_16.png', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(194, 12, 4, 'PNEU 215/45R18 PIRELLI CINTURATO P7 89W', 629, 233, 'PNEU 215/45R18 PIRELLI CINTURATO P7 89W\r\n', '1614020103_17.jpg', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(195, 12, 4, 'PNEU 265/60R18 CONTINENTAL CROSSCONTACT ATR 110T', 689, 233, 'PNEU 265/60R18 CONTINENTAL CROSSCONTACT ATR 110T\r\n', '1614020133_18.png', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(196, 12, 1, 'PNEU 265/60R18 CONTINENTAL CROSSCONTACT ATR 110T', 689, 233, 'PNEU 265/60R18 CONTINENTAL CROSSCONTACT ATR 110T\r\n', '1614020140_18.png', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(197, 12, 1, 'PNEU 265/60R18 BRIDGESTONE DUELER HT 684 II ECOPIA 110T', 659, 233, 'PNEU 265/60R18 BRIDGESTONE DUELER HT 684 II ECOPIA 110T\r\n', '1614020168_19.png', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(198, 12, 2, 'PNEU 235/60R18 BRIDGESTONE DUELER HP SPORT 103W', 659, 233, 'PNEU 235/60R18 BRIDGESTONE DUELER HP SPORT 103W\r\n', '1614020191_20.png', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(199, 12, 4, 'PNEU 225/55R18 PIRELLI SCORPION VERDE ALL SEASON 98V', 689, 233, 'PNEU 225/55R18 PIRELLI SCORPION VERDE ALL SEASON 98V', '1614020224_21.jpg', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(200, 12, 5, 'PNEU 235/60R18 MICHELIN PRIMACY SUV 103V', 709, 233, 'PNEU 235/60R18 MICHELIN PRIMACY SUV 103V\r\n', '1614020259_22.jpg', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(201, 12, 5, 'PNEU 235/55R18 CONTINENTAL CONTISEAL CONTISPORTCONTACT 5 SUV 100V', 889, 233, 'PNEU 235/55R18 CONTINENTAL CONTISEAL CONTISPORTCONTACT 5 SUV 100V\r\n', '1614020318_23.png', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(202, 12, 3, 'PNEU 235/45R18 GOODYEAR EAGLE LS2 94V', 779, 233, 'PNEU 235/45R18 GOODYEAR EAGLE LS2 94V\r\n', '1614020347_24.jpg', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(203, 12, 1, 'PNEU 235/40R18 CONTINENTAL PREMIUMCONTACT 6 95Y', 889, 233, 'PNEU 235/40R18 CONTINENTAL PREMIUMCONTACT 6 95Y\r\n', '1614020393_25.jpg', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(204, 12, 1, 'PNEU 215/55R18 GOODYEAR EFFICIENTGRIP SUV 99V', 759, 233, 'PNEU 215/55R18 GOODYEAR EFFICIENTGRIP SUV 99V\r\n', '1614020422_26.jpg', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(205, 12, 1, 'PNEU 265/60R18 GOODYEAR WRANGLER AT ADVENTURE 110T', 759, 233, 'PNEU 265/60R18 GOODYEAR WRANGLER AT ADVENTURE 110T', '1614020457_27.jpg', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(206, 12, 3, 'PNEU 265/60R18 GOODYEAR WRANGLER AT ADVENTURE 110T', 759, 233, 'PNEU 265/60R18 GOODYEAR WRANGLER AT ADVENTURE 110T', '1614020482_28.jpg', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(207, 12, 3, 'PNEU 235/45R18 GOODYEAR EFFICIENTGRIP 94Y', 779, 233, 'PNEU 235/45R18 GOODYEAR EFFICIENTGRIP 94Y\r\n', '1614020514_29.jpg', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(208, 12, 3, 'PNEU 255/60R18 GOODYEAR EAGLE F1 ASYMMETRIC SUV AT 112W', 799, 233, 'PNEU 255/60R18 GOODYEAR EAGLE F1 ASYMMETRIC SUV AT 112W', '1614020545_30.png', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(209, 12, 8, 'PNEU 33X12.50R18 118Q XCENT EL523 MT', 789, 233, 'PNEU 33X12.50R18 118Q XCENT EL523 MT\r\n', '1614020574_31.jpg', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(210, 12, 1, 'PNEU 245/45R18 CONTINENTAL CONTISPORTCONTACT 5 96W', 999, 233, 'PNEU 245/45R18 CONTINENTAL CONTISPORTCONTACT 5 96W\r\n', '1614020611_32.png', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(211, 12, 1, 'PNEU 255/55R18 CONTINENTAL CROSSCONTACT UHP 109Y', 999, 233, 'PNEU 255/55R18 CONTINENTAL CROSSCONTACT UHP 109Y', '1614020643_33.jpg', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(212, 12, 1, 'PNEU 255/55R18 CONTINENTAL CROSSCONTACT UHP 109Y', 989, 233, 'PNEU 235/45R18 CONTINENTAL CONTISPORTCONTACT 5 94W CONTISEAL\r\n', '1614020685_34.png', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(213, 12, 1, 'PNEU 235/50R18 CONTISPORTCONTACT 5 SUV CONTINENTAL 97V', 1009, 233, 'PNEU 235/50R18 CONTISPORTCONTACT 5 SUV CONTINENTAL 97V\r\n', '1614020717_35.png', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(214, 12, 4, 'PNEU 235/45R18 PIRELLI CINTURATO P1 PLUS 98W 4.8/5 - 13 Opiniões', 799, 233, 'PNEU 235/45R18 PIRELLI CINTURATO P1 PLUS 98W\r\n4.8/5 - 13 Opiniões\r\n', '1614020752_36.jpg', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(215, 12, 5, 'PNEU 245/45R18 MICHELIN PRIMACY 4 100W', 799, 233, 'PNEU 245/45R18 MICHELIN PRIMACY 4 100W\r\n\r\n', '1614020793_37.jpg', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(216, 12, 5, 'PNEU 245/60R18 MICHELIN XLT A/S 105H', 799, 233, 'PNEU 245/60R18 MICHELIN XLT A/S 105H\r\n', '1614020822_38.jpg', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(217, 12, 5, 'PNEU 235/45R18 MICHELIN PRIMACY 4 98Y', 809, 233, 'PNEU 235/45R18 MICHELIN PRIMACY 4 98Y\r\n', '1614020899_39.jpg', 'aro 18, 18, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(218, 13, 8, 'PNEU 245/35R19 93W XCENT EL601', 309, 300, 'PNEU 245/35R19 93W XCENT EL601\r\n', '1614021571_1.jpg', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(219, 13, 10, 'PNEU 245/40R19 98W APTANY RA301', 489, 300, 'PNEU 245/40R19 98W APTANY RA301\r\n', '1614021601_2.png', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(220, 13, 1, 'PNEU 225/35R19 CONTISPORTCONTACT 5 CONTINENTAL 88Y', 999, 300, 'PNEU 225/35R19 CONTISPORTCONTACT 5 CONTINENTAL 88Y\r\n', '1614021698_3.png', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(221, 13, 1, 'PNEU 225/35R19 CONTISPORTCONTACT 5 CONTINENTAL 88Y', 999, 300, 'PNEU 225/35R19 CONTISPORTCONTACT 5 CONTINENTAL 88Y\r\n', '1614021710_3.png', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(222, 13, 1, 'PNEU 235/55R19 CONTINENTAL CONTISPORTCONTACT 5 SUV 101W', 959, 300, 'PNEU 235/55R19 CONTINENTAL CONTISPORTCONTACT 5 SUV 101W\r\n', '1614022296_4.png', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(223, 13, 2, 'PNEU 245/35R19 BRIDGESTONE POTENZA S001 93Y', 829, 300, 'PNEU 245/35R19 BRIDGESTONE POTENZA S001 93Y\r\n', '1614022342_5.jpg', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(224, 13, 2, 'PNEU 235/55R19 CONTINENTAL CONTICROSSCONTACT UHP 105W', 959, 300, 'PNEU 235/55R19 CONTINENTAL CONTICROSSCONTACT UHP 105W\r\n', '1614022385_6.png', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(225, 13, 1, 'PNEU 235/55R19 CONTINENTAL CONTICROSSCONTACT UHP 105W', 959, 300, 'PNEU 235/55R19 CONTINENTAL CONTICROSSCONTACT UHP 105W\r\n', '1614022397_6.png', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(226, 13, 3, 'PNEU 245/35R19 GOODYEAR EAGLE F1 ASYMMETRIC 3 93Y', 869, 300, 'PNEU 245/35R19 GOODYEAR EAGLE F1 ASYMMETRIC 3 93Y\r\n', '1614022421_7.jpg', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(227, 13, 3, 'PNEU 255/55R19 GOODYEAR EFFICIENTGRIP SUV 111V', 875, 300, 'PNEU 255/55R19 GOODYEAR EFFICIENTGRIP SUV 111V\r\n', '1614022461_8.jpg', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(228, 13, 1, 'PNEU 235/35R19 CONTINENTAL CONTISPORTCONTACT 5 91Y MB', 1099, 300, 'PNEU 235/35R19 CONTINENTAL CONTISPORTCONTACT 5 91Y MB\r\n', '1614022543_9.jpg', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(229, 13, 1, 'PNEU 235/40R19 CONTINENTAL CONTISPORTCONTACT 5 92V', 1079, 300, 'PNEU 235/40R19 CONTINENTAL CONTISPORTCONTACT 5 92V\r\n', '1614022583_10.png', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(230, 13, 1, 'PNEU 255/50R19 CONTINENTAL CONTISPORTCONTACT 5 103W', 1179, 300, 'PNEU 255/50R19 CONTINENTAL CONTISPORTCONTACT 5 103W\r\n', '1614022615_11.png', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(231, 13, 1, 'PNEU 255/55R19 CONTINENTAL CONTISPORTCONTACT 5 SUV 111W', 979, 300, 'PNEU 255/55R19 CONTINENTAL CONTISPORTCONTACT 5 SUV 111W\r\n', '1614022656_12.png', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(232, 13, 1, 'PNEU 245/45R19 PIRELLI PZERO NERO ALL SEASON 98W', 999, 300, 'PNEU 245/45R19 PIRELLI PZERO NERO ALL SEASON 98W\r\n', '1614022693_13.png', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(233, 13, 4, 'PNEU 245/45R19 PIRELLI PZERO NERO ALL SEASON 98W', 999, 300, 'PNEU 245/45R19 PIRELLI PZERO NERO ALL SEASON 98W\r\n', '1614022700_13.png', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(234, 13, 3, 'PNEU 235/35R19 GOODYEAR EAGLE F1 ASYMMETRIC 3 91Y', 989, 300, 'PNEU 235/35R19 GOODYEAR EAGLE F1 ASYMMETRIC 3 91Y\r\n', '1614022738_14.jpg', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(235, 13, 5, 'PNEU 245/45R19 MICHELIN PRIMACY 3 102Y', 979, 300, 'PNEU 245/45R19 MICHELIN PRIMACY 3 102Y\r\n', '1614022771_15.jpg', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(236, 13, 1, 'PNEU 235/40R19 CONTINENTAL CONTISPORTCONTACT 5 96Y', 1099, 300, 'PNEU 235/40R19 CONTINENTAL CONTISPORTCONTACT 5 96Y\r\n', '1614022800_16.png', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(237, 13, 4, 'PNEU 245/40R19 PIRELLI PZERO NERO GT XL 98Y', 989, 300, 'PNEU 245/40R19 PIRELLI PZERO NERO GT XL 98Y\r\n', '1614022836_17.jpg', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(238, 13, 3, 'PNEU 235/40R19 GOODYEAR EAGLE F1 ASYMMETRIC 2 92Y ', 1019, 300, 'PNEU 235/40R19 GOODYEAR EAGLE F1 ASYMMETRIC 2 92Y', '1614022875_18.jpg', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(239, 13, 4, 'PNEU 255/55R19 PIRELLI SCORPION VERDE ALL SEASON 111H', 999, 300, 'PNEU 255/55R19 PIRELLI SCORPION VERDE ALL SEASON 111H\r\n', '1614022904_19.jpg', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(240, 13, 4, 'PNEU 255/50R19 CONTINENTAL CONTISPORTCONTACT 5 103Y', 1249, 300, 'PNEU 255/50R19 CONTINENTAL CONTISPORTCONTACT 5 103Y\r\n', '1614022935_20.png', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro');
INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `product_keywords`) VALUES
(241, 13, 3, 'PNEU 245/40R19 GOODYEAR EAGLE F1 ASYMMETRIC 3 98Y', 1055, 300, 'PNEU 245/40R19 GOODYEAR EAGLE F1 ASYMMETRIC 3 98Y\r\n', '1614022971_21.jpg', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(242, 13, 3, 'PNEU 255/55R19 GOODYEAR WRANGLER HP ALL WEATHER 111V', 1069, 300, 'PNEU 255/55R19 GOODYEAR WRANGLER HP ALL WEATHER 111V\r\n', '1614023006_22.jpg', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(243, 13, 3, 'PNEU 235/55R19 GOODYEAR EXCELLENCE 101W', 1069, 300, 'PNEU 235/55R19 GOODYEAR EXCELLENCE 101W\r\n', '1614023041_23.jpg', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(244, 13, 5, 'PNEU 235/55R19 MICHELIN LATITUDE SPORT 3 105V', 1069, 300, 'PNEU 235/55R19 MICHELIN LATITUDE SPORT 3 105V\r\n', '1614023066_24.png', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(245, 13, 5, 'PNEU 235/40R19 MICHELIN PILOT SPORT 4 EXTRA LOAD 96Y', 1069, 300, 'PNEU 235/40R19 MICHELIN PILOT SPORT 4 EXTRA LOAD 96Y', '1614023090_25.jpg', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(246, 13, 3, 'PNEU 255/55R19 GOODYEAR EAGLE F1 ASYMMETRIC 2 SUV 111Y', 1109, 300, 'PNEU 255/55R19 GOODYEAR EAGLE F1 ASYMMETRIC 2 SUV 111Y', '1614023125_26.jpg', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(247, 13, 1, 'PNEU 225/40R19 CONTINENTAL CONTISPORTCONTACT 5 93Y', 1209, 300, 'PNEU 225/40R19 CONTINENTAL CONTISPORTCONTACT 5 93Y\r\n', '1614023151_27.jpg', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(248, 13, 2, 'PNEU 245/40R19 BRIDGESTONE POTENZA RE050A 94W', 1179, 300, 'PNEU 245/40R19 BRIDGESTONE POTENZA RE050A 94W\r\n', '1614023177_28.jpg', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(249, 13, 1, 'PNEU 245/35R19 CONTINENTAL SPORTCONTACT 6 93Y', 1379, 300, 'PNEU 245/35R19 CONTINENTAL SPORTCONTACT 6 93Y\r\n', '1614023203_29.jpg', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(250, 13, 5, 'PNEU 255/55R19 MICHELIN LATITUDE TOUR HP 111W', 1079, 300, 'PNEU 255/55R19 MICHELIN LATITUDE TOUR HP 111W\r\n', '1614023239_30.jpg', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(251, 13, 4, 'PNEU 235/55R19 PIRELLI SCORPION VERDE ALL SEASON 105W', 1109, 300, 'PNEU 235/55R19 PIRELLI SCORPION VERDE ALL SEASON 105W', '1614023269_31.jpg', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(252, 13, 3, 'PNEU 275/30R19 GOODYEAR EAGLE F1 ASYMMETRIC 96Y', 1109, 300, 'PNEU 275/30R19 GOODYEAR EAGLE F1 ASYMMETRIC 96Y\r\n', '1614023291_32.jpg', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(253, 13, 3, 'PNEU 255/40R19 CONTINENTAL CONTISPORTCONTACT 2 100Y', 1499, 300, 'PNEU 255/40R19 CONTINENTAL CONTISPORTCONTACT 2 100Y\r\n', '1614023319_33.png', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(254, 13, 1, 'PNEU 255/40R19 CONTINENTAL SPORTCONTACT 6 100Y', 1529, 300, 'PNEU 255/40R19 CONTINENTAL SPORTCONTACT 6 100Y\r\n', '1614023353_34.png', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(255, 13, 1, 'PNEU 225/40R19 CONTINENTAL SPORTCONTACT 6 93Y', 1429, 3000, 'PNEU 225/40R19 CONTINENTAL SPORTCONTACT 6 93Y\r\n', '1614023393_35.jpg', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(256, 13, 1, 'PNEU 235/35R19 CONTINENTAL CONTISPORTCONTACT 5 91Y AO', 1119, 3000, 'PNEU 235/35R19 CONTINENTAL CONTISPORTCONTACT 5 91Y AO\r\n', '1614023430_367.jpg', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(257, 13, 1, 'PNEU 235/35R19 MICHELIN PILOT SPORT 4 EXTRA LOAD 91Y', 1174, 3000, 'PNEU 235/35R19 MICHELIN PILOT SPORT 4 EXTRA LOAD 91Y\r\n', '1614023463_38.jpg', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(258, 13, 5, 'PNEU 235/35R19 MICHELIN PILOT SPORT 4 EXTRA LOAD 91Y', 1174, 3000, 'PNEU 235/35R19 MICHELIN PILOT SPORT 4 EXTRA LOAD 91Y\r\n', '1614023470_38.jpg', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(259, 13, 1, 'PNEU 255/45R19 CONTINENTAL CONTISPORTCONTACT 5 SUV 100V', 1469, 3000, 'PNEU 255/45R19 CONTINENTAL CONTISPORTCONTACT 5 SUV 100V\r\n', '1614023501_39.png', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(260, 13, 1, 'PNEU 235/45R19 PIRELLI SCORPION VERDE ALL SEASON 95H', 1179, 3000, 'PNEU 235/45R19 PIRELLI SCORPION VERDE ALL SEASON 95H\r\n\r\n', '1614023536_40.jpg', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(261, 13, 4, 'PNEU 235/45R19 PIRELLI SCORPION VERDE ALL SEASON 95H', 1179, 3000, 'PNEU 235/45R19 PIRELLI SCORPION VERDE ALL SEASON 95H\r\n\r\n', '1614023543_40.jpg', 'aro 19, 19, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(262, 2, 10, 'teste', 3, 1, 'testandoproduto', '1614150859_1.jpg', '123'),
(263, 14, 2, 'PNEU 155/60R20 BRIDGESTONE ECOPIA EP500 80Q', 399, 1655, 'PNEU 155/60R20 BRIDGESTONE ECOPIA EP500 80Q', '1614152669_1.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(264, 14, 3, 'PNEU 225/35R20 GOODYEAR KELLY EDGE SPORT 90V', 437, 1655, 'PNEU 225/35R20 GOODYEAR KELLY EDGE SPORT 90V', '1614152701_2.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(265, 14, 8, 'PNEU 265/50R20 ADERENZA ADZA99 114V', 423, 1655, 'PNEU 265/50R20 ADERENZA ADZA99 114V', '1614152748_3.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(266, 14, 2, 'PNEU 175/55R20 BRIDGESTONE ECOPIA EP500 85Q', 487, 1655, 'PNEU 175/55R20 BRIDGESTONE ECOPIA EP500 85Q', '1614152783_4.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(267, 14, 2, 'PNEU 33X12.50R20 114Q XCENT EL523 MT', 780, 1655, 'PNEU 33X12.50R20 114Q XCENT EL523 MT', '1614152840_5.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(268, 14, 8, 'PNEU 315/35R20 DELINTE DS8 110W', 795, 1655, 'PNEU 315/35R20 DELINTE DS8 110W', '1614152913_7 delinte.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(269, 14, 1, 'PNEU 265/50R20 CONTICROSSCONTACT UHP CONTINENTAL 111V', 1039, 1655, 'PNEU 265/50R20 CONTICROSSCONTACT UHP CONTINENTAL 111V', '1614152952_8.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(270, 14, 3, 'PNEU 245/35R20 GOODYEAR EAGLE SPORT ALL SEASON 95W', 945, 1655, 'PNEU 245/35R20 GOODYEAR EAGLE SPORT ALL SEASON 95W', '1614152988_9.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(271, 14, 3, 'PNEU 245/45R20 GOODYEAR EAGLE F1 ASYMMETRIC SUV AT 103W', 955, 1655, 'PNEU 245/45R20 GOODYEAR EAGLE F1 ASYMMETRIC SUV AT 103W', '1614153029_10.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(272, 14, 2, 'PNEU 245/45R20 BRIDGESTONE RUN FLAT ALENZA 001 103W', 955, 1655, 'PNEU 245/45R20 BRIDGESTONE RUN FLAT ALENZA 001 103W', '1614153057_11.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(273, 14, 2, 'PNEU 225/35R20 MICHELIN PILOT SPORT 4 90Y', 959, 1655, 'PNEU 225/35R20 MICHELIN PILOT SPORT 4 90Y', '1614153082_12 michelin.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(274, 14, 8, 'PNEU 35X12.50R20 121Q XCENT EL523 MT', 975, 1655, 'PNEU 35X12.50R20 121Q XCENT EL523 MT', '1614153115_13.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(275, 14, 5, 'PNEU 265/45R20 MICHELIN LATITUDE TOUR HP 104V', 1031, 1655, 'PNEU 265/45R20 MICHELIN LATITUDE TOUR HP 104V', '1614153148_14.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(276, 14, 3, 'PNEU 245/50R20 GOODYEAR EAGLE F1 ASYMMETRIC 3 SUV 105V', 1113, 1655, 'PNEU 245/50R20 GOODYEAR EAGLE F1 ASYMMETRIC 3 SUV 105V\r\n', '1614153186_15.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(277, 14, 4, 'PNEU 245/45R20 PIRELLI SCORPION VERDE ALL SEASON 103W', 1089, 1655, 'PNEU 245/45R20 PIRELLI SCORPION VERDE ALL SEASON 103W', '1614153221_16.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(278, 14, 3, 'PNEU 245/45R20 GOODYEAR EAGLE RS-A2 99Y', 1141, 1655, 'PNEU 245/45R20 GOODYEAR EAGLE RS-A2 99Y', '1614153252_17.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(279, 14, 4, 'PNEU 265/50R20 PIRELLI SCORPION STR 107V', 1111, 1655, 'PNEU 265/50R20 PIRELLI SCORPION STR 107V', '1614153285_18.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(280, 14, 2, 'PNEU 245/40R20 BRIDGESTONE POTENZA S001 99W', 1114, 1655, 'PNEU 245/40R20 BRIDGESTONE POTENZA S001 99W', '1614153307_19.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(281, 14, 5, 'PNEU 245/45R20 MICHELIN LATITUDE TOUR HP 103W', 1119, 1655, 'PNEU 245/45R20 MICHELIN LATITUDE TOUR HP 103W', '1614153351_20.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(282, 14, 1, 'PNEU 255/50R20 CONTICROSSCONTACT UHP CONTINENTAL 109Y', 1335, 1655, 'PNEU 255/50R20 CONTICROSSCONTACT UHP CONTINENTAL 109Y', '1614153381_21.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(283, 14, 1, 'PNEU 275/40R20 CROSSCONTACT UHP CONTINENTAL 106Y', 1335, 1655, 'PNEU 275/40R20 CROSSCONTACT UHP CONTINENTAL 106Y', '1614153406_22.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(284, 14, 1, 'PNEU 245/45R20 CONTINENTAL CONTICROSSCONTACT UHP 103W', 1325, 1655, 'PNEU 245/45R20 CONTINENTAL CONTICROSSCONTACT UHP 103W', '1614153454_23.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(285, 14, 1, 'PNEU 265/45R20 CONTISPORTCONTACT 2 MO CONTINENTAL 104Y', 1519, 1655, 'PNEU 265/45R20 CONTISPORTCONTACT 2 MO CONTINENTAL 104Y', '1614153483_24.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(286, 14, 1, 'PNEU 245/45R20 CONTINENTAL CROSSCONTACT LX SPORT 103W', 1399, 1655, 'PNEU 245/45R20 CONTINENTAL CROSSCONTACT LX SPORT 103W', '1614153513_25.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(287, 14, 5, 'PNEU 245/50R20 MICHELIN PRIMACY SUV 102V', 1199, 1655, 'PNEU 245/50R20 MICHELIN PRIMACY SUV 102V', '1614153549_26.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(288, 14, 1, 'PNEU 255/50R20 109W CONTINENTAL CONTISPORTCONTACT 5', 1359, 1655, 'PNEU 255/50R20 109W CONTINENTAL CONTISPORTCONTACT 5', '1614153584_27.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(289, 14, 3, 'PNEU 255/60R20 GOODYEAR WRANGLER AT ADVENTURE 113Q', 1247, 1655, 'PNEU 255/60R20 GOODYEAR WRANGLER AT ADVENTURE 113Q', '1614153616_28.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(290, 14, 3, 'PNEU 255/60R20 GOODYEAR WRANGLER DURATRAC 113Q', 1247, 1655, 'PNEU 255/60R20 GOODYEAR WRANGLER DURATRAC 113Q', '1614153637_29.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(291, 14, 4, 'PNEU 275/55R20 PIRELLI SCORPION AT PLUS 113T', 1247, 1655, 'PNEU 275/55R20 PIRELLI SCORPION AT PLUS 113T', '1614153656_30.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(292, 14, 2, 'PNEU 275/40R20 BRIDGESTONE DUELER HP SPORT 106Y', 1279, 1655, 'PNEU 275/40R20 BRIDGESTONE DUELER HP SPORT 106Y', '1614153696_31.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(293, 14, 1, 'PNEU 275/45R20 GENERAL TIRE GRABBER AT3 110V', 1615, 1655, 'PNEU 275/45R20 GENERAL TIRE GRABBER AT3 110V', '1614153730_32 general.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(294, 14, 1, 'PNEU 275/45R20 CONTINENTAL CROSSCONTACT UHP 110W', 1550, 1655, 'PNEU 275/45R20 CONTINENTAL CROSSCONTACT UHP 110W', '1614153764_33.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(295, 14, 3, 'PNEU 255/45R20 GOODYEAR EXCELLENCE 101W', 1357, 1655, 'PNEU 255/45R20 GOODYEAR EXCELLENCE 101W', '1614153797_34.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(296, 14, 2, 'PNEU 255/45R20 BRIDGESTONE RUN FLAT DUELER HP SPORT 101W', 1345, 1655, 'PNEU 255/45R20 BRIDGESTONE RUN FLAT DUELER HP SPORT 101W', '1614153819_35.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(297, 14, 1, 'PNEU 245/40R20 CONTINENTAL CONTISPORTCONTACT 5 99Y', 1535, 1655, 'PNEU 245/40R20 CONTINENTAL CONTISPORTCONTACT 5 99Y', '1614153852_36.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(298, 14, 5, 'PNEU 255/45R20 MICHELIN LATITUDE SPORT 3 105V', 1359, 1655, 'PNEU 255/45R20 MICHELIN LATITUDE SPORT 3 105V', '1614153888_37.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(299, 14, 5, 'PNEU 255/45R20 MICHELIN LATITUDE SPORT 3 105V', 1359, 1655, 'PNEU 255/45R20 MICHELIN LATITUDE SPORT 3 105V', '1614153907_38 michelin.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(300, 14, 5, 'PNEU 255/50R20 MICHELIN LATITUDE TOUR HP 109W', 1359, 1655, 'PNEU 255/50R20 MICHELIN LATITUDE TOUR HP 109W', '1614153924_39.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(301, 14, 1, 'PNEU 265/45R20 CONTISPORTCONTACT 5 SUV CONTINENTAL 108Y', 1569, 1655, 'PNEU 265/45R20 CONTISPORTCONTACT 5 SUV CONTINENTAL 108Y', '1614153960_40.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(302, 15, 1, 'PNEU 265/40R21 CONTINENTAL SPORTCONTACT 6 105Y', 1779, 1655, 'PNEU 265/40R21 CONTINENTAL SPORTCONTACT 6 105Y', '1614154712_1.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(303, 15, 1, 'PNEU 295/35R21 CONTINENTAL CROSSCONTACT UHP 107Y', 1850, 1655, 'PNEU 295/35R21 CONTINENTAL CROSSCONTACT UHP 107Y', '1614154745_2.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(304, 15, 1, 'PNEU 295/35R21 CONTINENTAL CONTISPORTCONTACT 5 103Y', 1607, 1655, 'PNEU 295/35R21 CONTINENTAL CONTISPORTCONTACT 5 103Y', '1614154774_3.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(305, 15, 1, 'PNEU 295/35R21 CONTINENTAL CROSSCONTACT UHP MO 107Y', 1815, 1655, 'PNEU 295/35R21 CONTINENTAL CROSSCONTACT UHP MO 107Y', '1614154805_4.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(306, 15, 1, 'PNEU 285/45R21 CONTINENTAL SPORTCONTACT 6 113Y', 1999, 1655, 'PNEU 285/45R21 CONTINENTAL SPORTCONTACT 6 113Y', '1614154833_5.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(307, 15, 1, 'PNEU 265/40R21 CONTINENTAL CONTISILENT CROSSCONTACT LX SPORT 101V', 1699, 1655, 'PNEU 265/40R21 CONTINENTAL CONTISILENT CROSSCONTACT LX SPORT 101V', '1614154889_6.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(308, 15, 1, 'PNEU 295/40R21 CONTISPORTCONTACT 5 CONTINENTAL 111Y', 1879, 1655, 'PNEU 295/40R21 CONTISPORTCONTACT 5 CONTINENTAL 111Y', '1614154916_7.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(309, 15, 1, 'PNEU 295/40R21 CROSSCONTACT UHP CONTINENTAL 111W', 1879, 1655, 'PNEU 295/40R21 CROSSCONTACT UHP CONTINENTAL 111W', '1614154933_8.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(310, 15, 1, 'PNEU 265/45R21 CONTINENTAL CROSSCONTACT LX SPORT 108W', 1585, 1655, 'PNEU 265/45R21 CONTINENTAL CROSSCONTACT LX SPORT 108W\r\n', '1614154961_9.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(311, 15, 1, 'PNEU 285/45R21 CONTINENTAL CONTISPORTCONTACT 5 109Y', 1879, 1655, 'PNEU 285/45R21 CONTINENTAL CONTISPORTCONTACT 5 109Y', '1614154992_10.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(312, 15, 1, 'PNEU 315/40R21 CONTINENTAL CONTISPORTCONTACT 5 SUV 111Y', 1735, 1655, 'PNEU 315/40R21 CONTINENTAL CONTISPORTCONTACT 5 SUV 111Y', '1614155018_11.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(313, 15, 1, 'PNEU 275/45R21 CONTINENTAL SPORTCONTACT 6 107Y', 1769, 1655, 'PNEU 275/45R21 CONTINENTAL SPORTCONTACT 6 107Y', '1614155040_12.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(314, 15, 5, 'PNEU 265/40R21 MICHELIN LATITUDE SPORT 3 101Y', 1689, 1655, 'PNEU 265/40R21 MICHELIN LATITUDE SPORT 3 101Y', '1614155070_13.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(315, 15, 1, 'PNEU 255/40R21 CONTINENTAL SPORTCONTACT 6 102Y', 2345, 1655, 'PNEU 255/40R21 CONTINENTAL SPORTCONTACT 6 102Y', '1614155101_14.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(316, 15, 5, 'PNEU 255/40R21 MICHELIN PILOT SPORT 4 SUV 102Y', 1759, 1655, 'PNEU 255/40R21 MICHELIN PILOT SPORT 4 SUV 102Y', '1614155130_15.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(317, 15, 1, 'PNEU 315/40R21 CONTINENTAL SPORTCONTACT 6 111Y', 1929, 1655, 'PNEU 315/40R21 CONTINENTAL SPORTCONTACT 6 111Y', '1614155159_16.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(318, 15, 1, 'PNEU 255/40R21 CONTINENTAL CONTISPORTCONTACT 5P 102Y', 2295, 1655, 'PNEU 255/40R21 CONTINENTAL CONTISPORTCONTACT 5P 102Y', '1614155198_17.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(319, 15, 1, 'PNEU 245/35R21 MICHELIN RUN FLAT PILOT SUPER SPORT 96Y', 1839, 1655, 'PNEU 245/35R21 MICHELIN RUN FLAT PILOT SUPER SPORT 96Y', '1614155227_18.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(320, 15, 5, 'PNEU 295/35R21 MICHELIN PILOT SPORT 4 107Y', 1999, 1655, 'PNEU 295/35R21 MICHELIN PILOT SPORT 4 107Y', '1614155259_19.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(321, 15, 5, 'PNEU 295/40R21 MICHELIN PILOT SPORT 4 SUV 111Y', 1919, 1655, 'PNEU 295/40R21 MICHELIN PILOT SPORT 4 SUV 111Y', '1614155285_20.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(322, 15, 5, 'PNEU 295/35R21 MICHELIN LATITUDE SPORT 3 103Y', 1999, 1655, 'PNEU 295/35R21 MICHELIN LATITUDE SPORT 3 103Y', '1614155348_22.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(323, 15, 5, 'PNEU 315/40R21 MICHELIN LATITUDE SPORT 3 111Y', 1008, 1655, 'PNEU 315/40R21 MICHELIN LATITUDE SPORT 3 111Y', '1614155365_23.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(324, 15, 1, 'PNEU 315/35R21 RUN FLAT CONTINENTAL PREMIUMCONTACT 6 111Y', 2399, 1655, 'PNEU 315/35R21 RUN FLAT CONTINENTAL PREMIUMCONTACT 6 111Y', '1614155393_24.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(325, 15, 5, 'PNEU 275/45R21 MICHELIN LATITUDE SPORT 110Y', 2135, 1655, 'PNEU 275/45R21 MICHELIN LATITUDE SPORT 110Y', '1614155425_25.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(326, 15, 1, 'PNEU 325/40R21 CONTINENTAL CONTISPORTCONTACT 5 113Y', 2591, 1655, 'PNEU 325/40R21 CONTINENTAL CONTISPORTCONTACT 5 113Y', '1614155453_26.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(327, 15, 5, 'PNEU 285/40R21 MICHELIN PILOT SPORT 4 SUV 109Y', 2240, 1655, 'PNEU 285/40R21 MICHELIN PILOT SPORT 4 SUV 109Y', '1614155482_27.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(328, 15, 5, 'PNEU 315/30R21 MICHELIN PILOT SPORT 4 105Y', 2240, 1655, 'PNEU 315/30R21 MICHELIN PILOT SPORT 4 105Y', '1614155498_28.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(329, 15, 3, 'PNEU 305/30R21 GOODYEAR EAGLE F1 ASYMMETRIC 3 104Y', 2269, 1655, 'PNEU 305/30R21 GOODYEAR EAGLE F1 ASYMMETRIC 3 104Y', '1614155523_29.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(330, 15, 4, 'PNEU 265/40R21 PIRELLI PZERO 105Y', 2375, 1655, 'PNEU 265/40R21 PIRELLI PZERO 105Y', '1614155553_30.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(331, 15, 5, 'PNEU 285/35R21 MICHELIN PILOT SUPER SPORT EXTRA LOAD 105Y', 2399, 1655, 'PNEU 285/35R21 MICHELIN PILOT SUPER SPORT EXTRA LOAD 105Y', '1614155576_31.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(332, 15, 2, 'PNEU 275/35R21 RUN FLAT BRIDGESTONE ALENZA 001 103Y', 2399, 1655, 'PNEU 275/35R21 RUN FLAT BRIDGESTONE ALENZA 001 103Y', '1614155632_32.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(333, 15, 4, 'PNEU 245/40R21 PIRELLI PZERO 100V', 2539, 1655, 'PNEU 245/40R21 PIRELLI PZERO 100V', '1614155736_33.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(334, 15, 4, 'PNEU 265/40R21 PIRELLI PZERO 101Y', 2639, 1655, 'PNEU 265/40R21 PIRELLI PZERO 101Y', '1614155759_34.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(335, 15, 5, 'PNEU 275/35R21 MICHELIN PILOT SPORT 4 103Y', 2729, 1655, 'PNEU 275/35R21 MICHELIN PILOT SPORT 4 103Y', '1614155789_35.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(336, 15, 4, 'PNEU 255/40R21 PIRELLI PZERO 102Y', 2759, 1655, 'PNEU 255/40R21 PIRELLI PZERO 102Y', '1614155817_36.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(337, 15, 1, 'PNEU 325/30R21 CONTINENTAL SPORTCONTACT 6 108Y', 2949, 1655, 'PNEU 325/30R21 CONTINENTAL SPORTCONTACT 6 108Y', '1614155847_37.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(338, 15, 4, 'PNEU 245/40R21 RUN FLAT PIRELLI PZERO 100Y', 3039, 1655, 'PNEU 245/40R21 RUN FLAT PIRELLI PZERO 100Y', '1614155880_38.jpg', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(339, 15, 5, 'PNEU 325/30R21 MICHELIN PILOT SUPER SPORT EXTRA LOAD 108Y', 3239, 1655, 'PNEU 325/30R21 MICHELIN PILOT SUPER SPORT EXTRA LOAD 108Y\r\n', '1614155900_39.png', 'aro 20, 20, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(340, 16, 8, 'PNEU 305/40R22 HU905 114W HEADWAY', 559, 1655, 'PNEU 305/40R22 HU905 114W HEADWAY', '1614156129_1.jpg', 'aro 22, 22, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(341, 16, 8, 'PNEU 33X12.50R22 109Q XCENT EL523 MT', 1199, 1655, 'PNEU 33X12.50R22 109Q XCENT EL523 MT', '1614156155_2.jpg', 'aro 22, 22, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(342, 16, 1, 'PNEU 255/40R22 CONTINENTAL PREMIUMCONTACT 6 103V', 1589, 1655, 'PNEU 255/40R22 CONTINENTAL PREMIUMCONTACT 6 103V', '1614156193_3.jpg', 'aro 22, 22, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(343, 16, 1, 'PNEU 265/40R22 CONTINENTAL CROSSCONTACT LX SPORT 106Y', 1729, 1655, 'PNEU 265/40R22 CONTINENTAL CROSSCONTACT LX SPORT 106Y', '1614156223_4.png', 'aro 22, 22, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(344, 16, 1, 'PNEU 295/40R22 CONTINENTAL CONTISPORTCONTACT 5 112Y', 2059, 1655, 'PNEU 295/40R22 CONTINENTAL CONTISPORTCONTACT 5 112Y', '1614156255_5.png', 'aro 22, 22, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(345, 16, 4, 'PNEU 275/45R22 PIRELLI SCORPION ZERO ASIMMETRICO 112V', 1775, 1655, 'PNEU 275/45R22 PIRELLI SCORPION ZERO ASIMMETRICO 112V', '1614156311_6.jpg', 'aro 22, 22, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(346, 16, 1, 'PNEU 275/40R22 CONTINENTAL CONTISILENT CROSSCONTACT LX SPORT 108Y', 2655, 1655, 'PNEU 275/40R22 CONTINENTAL CONTISILENT CROSSCONTACT LX SPORT 108Y', '1614156344_7.png', 'aro 22, 22, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(347, 16, 1, 'PNEU 275/40R22 CONTINENTAL CROSSCONTACT LX SPORT 108Y', 2249, 1655, 'PNEU 275/40R22 CONTINENTAL CROSSCONTACT LX SPORT 108Y', '1614156376_8.png', 'aro 22, 22, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(348, 16, 4, 'PNEU 265/35R22 PIRELLI SCORPION ZERO ALL SEASON PLUS 102Y', 2249, 1655, 'PNEU 265/35R22 PIRELLI SCORPION ZERO ALL SEASON PLUS 102Y', '1614156399_9.jpg', 'aro 22, 22, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro'),
(349, 17, 4, 'PNEU 325/45R24 PIRELLI SCORPION ATR 120S', 1859, 1655, 'PNEU 325/45R24 PIRELLI SCORPION ATR 120S', '1614156480_1111.jpg', 'aro 22, 22, pneu, xcent, continental, pirelli, qualidade, barato, promoção, estoque, carro, pneu de carro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'lucas', 'lucas', 'lucas100castellani@gmail.com', 'b5cbdbc52100132b8b6181a11317491b', '1198786509', 'casdasj dsdsi 11', 'sadmskdmasd');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices para tabela `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Índices para tabela `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Índices para tabela `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Índices para tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_cat` (`product_cat`),
  ADD KEY `fk_product_brand` (`product_brand`);

--
-- Índices para tabela `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=350;

--
-- AUTO_INCREMENT de tabela `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`product_brand`) REFERENCES `brands` (`brand_id`),
  ADD CONSTRAINT `fk_product_cat` FOREIGN KEY (`product_cat`) REFERENCES `categories` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
