-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 14/02/2020 às 03h41min
-- Versão do Servidor: 5.5.16
-- Versão do PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `banco`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `ordem` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `data_registro` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`, `alias`, `descricao`, `ordem`, `img`, `status`, `data_registro`) VALUES
(1, 'LANCHES', 'lanches', '', 1, 'burguer4.png', 1, '0000-00-00 00:00:00'),
(2, 'BEBIDAS', 'bebidas', '', 5, 'bebidas1.png', 1, '0000-00-00 00:00:00'),
(3, 'PORÇÕES', 'porcoes', '', 3, 'porÃ§Ãµes.png', 1, '0000-00-00 00:00:00'),
(4, 'COMBOS', 'combos', '', 4, 'combo411.png', 1, '0000-00-00 00:00:00'),
(5, 'ADICIONAIS', 'adicionais', '', 2, 'adcionais11.png', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `cep` varchar(20) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `complemento` varchar(50) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `notas` longtext NOT NULL,
  `data_registro` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `texto_guiche` mediumtext NOT NULL,
  `razao_social` varchar(100) NOT NULL,
  `nome_fantasia` varchar(100) NOT NULL,
  `cnpj_cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `cep` varchar(20) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `complemento` varchar(100) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `logo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `config`
--

INSERT INTO `config` (`id`, `texto_guiche`, `razao_social`, `nome_fantasia`, `cnpj_cpf`, `telefone`, `celular`, `email`, `website`, `cep`, `rua`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `logo`) VALUES
(1, 'JrNext', 'JrNext', 'JrNext', '000.000.000/0001-00', '(00) 0000-0000', '(00) 0000-0000', 'meuemail@mail.com', 'www.meusite.com.br', '00000-000', 'Avenida Brasil', '1000', '', 'Centro', 'Ipiranga do Piaui', 'PI', '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `guiche`
--

CREATE TABLE IF NOT EXISTS `guiche` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pedido` varchar(5) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=230 ;

--
-- Extraindo dados da tabela `guiche`
--

INSERT INTO `guiche` (`id`, `pedido`, `status`) VALUES
(229, '117', 0),
(227, '113', 0),
(228, '112', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_pedidos`
--

CREATE TABLE IF NOT EXISTS `itens_pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pedido` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `nome_produto` varchar(40) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valor` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=881 ;

--
-- Extraindo dados da tabela `itens_pedidos`
--

INSERT INTO `itens_pedidos` (`id`, `id_pedido`, `id_produto`, `nome_produto`, `quantidade`, `valor`) VALUES
(1, 1, -10, 'Desconto', 1, 0),
(2, 1, -1, 'Dinheiro', 1, 10),
(3, 1, 1, 'teste ', 1, 5),
(4, 1, 1, 'teste ', 1, 5),
(5, 2, -10, 'Desconto', 1, 0),
(6, 2, -1, 'Dinheiro', 1, 10),
(7, 2, 1, 'teste 2 g', 1, 5),
(8, 2, 1, 'teste 2 g', 1, 5),
(67, 7, -3, 'Cartão de Débito', 1, 8),
(20, 4, 2, 'coca cola 2l 2 l', 1, 8),
(19, 4, 2, 'coca cola 2l 2 l', 1, 8),
(102, 6, 0, 'Troco', 1, 5),
(101, 6, -10, 'Desconto', 1, 0),
(69, 3, -10, 'Desconto', 1, 8),
(43, 10, -10, 'Desconto', 1, 0),
(66, 7, -10, 'Desconto', 1, 0),
(45, 10, -1, 'Dinheiro', 1, 10),
(54, 8, -1, 'Dinheiro', 1, 50),
(53, 8, 0, 'Troco', 1, 37),
(44, 10, 0, 'Troco', 1, 2),
(46, 10, 2, 'coca cola 2l 2 l', 1, 8),
(60, 11, 1, 'teste 2 g', 1, 5),
(59, 11, -1, 'Dinheiro', 1, 20),
(57, 11, -10, 'Desconto', 1, 0),
(58, 11, 0, 'Troco', 1, 7),
(55, 8, 1, 'teste 2 g', 1, 5),
(56, 8, 2, 'coca cola 2l 2 l', 1, 8),
(61, 11, 2, 'coca cola 2l 2 l', 1, 8),
(68, 7, 2, 'coca cola 2l 2 l', 1, 8),
(70, 3, 2, 'coca cola 2l 2 l', 1, 8),
(97, 12, -10, 'Desconto', 1, 0),
(94, 13, -10, 'Desconto', 1, 0),
(90, 14, -10, 'Desconto', 1, 0),
(85, 15, -10, 'Desconto', 1, 0),
(82, 16, -10, 'Desconto', 1, 0),
(83, 16, -1, 'Dinheiro', 1, 8),
(84, 16, 2, 'coca cola 2l 2 l', 1, 8),
(86, 15, 0, 'Troco', 1, 37),
(87, 15, -1, 'Dinheiro', 1, 50),
(88, 15, 1, 'teste 2 g', 1, 5),
(89, 15, 2, 'coca cola 2l 2 l', 1, 8),
(91, 14, 0, 'Troco', 1, 12),
(92, 14, -1, 'Dinheiro', 1, 20),
(93, 14, 2, 'coca cola 2l 2 l', 1, 8),
(95, 13, -3, 'Cartão de Débito', 1, 8),
(96, 13, 2, 'coca cola 2l 2 l', 1, 8),
(98, 12, 0, 'Troco', 1, 5),
(99, 12, -2, 'Cartão de Crédito', 1, 13),
(100, 12, 2, 'coca cola 2l 2 l', 1, 8),
(103, 6, -3, 'Cartão de Débito', 1, 13),
(104, 6, 2, 'coca cola 2l 2 l', 1, 8),
(105, 18, -10, 'Desconto', 1, 0),
(106, 18, 0, 'Troco', 1, 10),
(107, 18, -1, 'Dinheiro', 1, 50),
(108, 18, 3, 'Hamburguer ', 1, 10),
(109, 18, 3, 'Hamburguer ', 1, 10),
(110, 18, 3, 'Hamburguer ', 1, 10),
(111, 18, 3, 'Hamburguer ', 1, 10),
(112, 19, -10, 'Desconto', 1, 0),
(113, 19, 0, 'Troco', 1, 2),
(114, 19, -1, 'Dinheiro', 1, 20),
(115, 19, 2, 'coca cola 2l 2 l', 1, 8),
(116, 19, 3, 'Hamburguer ', 1, 10),
(117, 20, -1, 'Dinheiro', 1, 20),
(118, 20, -1, 'Dinheiro', 1, 0.2),
(119, 20, 2, 'coca cola 2l 2 l', 1, 8),
(120, 20, 2, 'coca cola 2l 2 l', 1, 8),
(128, 21, -10, 'Desconto', 1, 0),
(129, 21, 0, 'Troco', 1, 2),
(145, 22, 3, 'Hamburguer ', 1, 10),
(130, 21, -1, 'Dinheiro', 1, 10),
(131, 21, 2, 'coca cola 2l 2 l', 1, 8),
(388, 63, 2, 'coca cola 2l 2 l', 1, 8),
(144, 22, -3, 'Cartão de Débito', 1, 18),
(143, 22, -10, 'Desconto', 1, 0),
(146, 22, 2, 'coca cola 2l 2 l', 1, 8),
(673, 103, 6, 'ad 1 100 g', 1, 2),
(244, 32, -1, 'Dinheiro', 1, 8),
(246, 35, -10, 'Desconto', 1, 0),
(247, 35, -1, 'Dinheiro', 1, 8),
(656, 97, 5, 'Fanta Laranja 1 un', 1, 10),
(669, 96, 2, 'coca cola 2l 2 l', 1, 8),
(667, 96, 5, 'Fanta Laranja 1 un', 1, 10),
(192, 17, 2, 'coca cola 2l 2 l', 1, 8),
(191, 17, 3, 'Hamburguer 150 g', 1, 10),
(190, 17, 4, 'Xis Povão 200 g', 1, 25),
(544, 89, 3, 'Hamburguer 150 g', 1, 10),
(543, 89, 3, 'Hamburguer 150 g', 1, 10),
(542, 89, 3, 'Hamburguer 150 g', 1, 10),
(541, 89, 3, 'Hamburguer 150 g', 1, 10),
(540, 89, 3, 'Hamburguer 150 g', 1, 10),
(243, 32, -10, 'Desconto', 1, 0),
(385, 63, 3, 'Hamburguer 150 g', 1, 10),
(539, 89, 2, 'coca cola 2l 400 ml', 1, 8),
(538, 89, 5, 'Coca Cola 1 un', 1, 10),
(212, 30, -10, 'Desconto', 1, 0),
(213, 30, -1, 'Dinheiro', 1, 61),
(214, 30, 4, 'Xis Povão 200 g', 1, 25),
(215, 30, 2, 'coca cola 2l 2 l', 1, 8),
(216, 30, 2, 'coca cola 2l 2 l', 1, 8),
(217, 30, 3, 'Hamburguer 150 g', 1, 10),
(218, 30, 3, 'Hamburguer 150 g', 1, 10),
(668, 96, 2, 'Cola Cola 2L 2 l', 1, 8),
(315, 34, 0, 'Troco', 1, 42),
(314, 34, -10, 'Desconto', 1, 0),
(234, 37, 3, 'Hamburguer 150 g', 1, 10),
(235, 38, -10, 'Desconto', 1, 0),
(236, 38, -2, 'Cartão de Crédito', 1, 38),
(237, 38, -1, 'Dinheiro', 1, 5),
(238, 38, 2, 'coca cola 2l 2 l', 1, 8),
(239, 38, 4, 'Xis Povão 200 g', 1, 25),
(240, 38, 3, 'Hamburguer 150 g', 1, 10),
(245, 32, 2, 'coca cola 2l 2 l', 1, 8),
(248, 35, 2, 'coca cola 2l 2 l', 1, 8),
(387, 63, 3, 'Hamburguer 150 g', 1, 10),
(386, 63, 3, 'Hamburguer 150 g', 1, 10),
(586, 84, 2, 'coca cola 2l 2 l', 1, 8),
(537, 89, 2, 'coca cola 2l 400 ml', 1, 8),
(536, 89, 5, 'Coca Cola 1 un', 1, 10),
(585, 84, -1, 'Dinheiro', 1, 8),
(284, 41, 4, 'Xis Povão 200 g', 1, 25),
(283, 41, 4, 'Xis Povão 200 g', 1, 25),
(281, 41, -2, 'Cartão de Crédito', 1, 5),
(282, 41, -1, 'Dinheiro', 1, 28),
(280, 41, -5, 'Outros', 1, 25),
(279, 41, -10, 'Desconto', 1, 0),
(285, 41, 2, 'coca cola 2l 2 l', 1, 8),
(289, 42, -2, 'Cartão de Crédito', 1, 33),
(288, 42, -10, 'Desconto', 1, 0),
(290, 42, 4, 'Xis Povão 200 g', 1, 25),
(291, 42, 2, 'coca cola 2l 2 l', 1, 8),
(666, 96, 2, 'Cola Cola 2L 2 l', 1, 8),
(609, 94, 2, 'coca cola 2l 400 ml', 1, 8),
(295, 44, -10, 'Desconto', 1, 0),
(296, 44, 0, 'Troco', 1, 2),
(297, 44, -1, 'Dinheiro', 1, 50),
(298, 44, 3, 'Hamburguer 150 g', 1, 10),
(299, 44, 3, 'Hamburguer 150 g', 1, 10),
(300, 44, 3, 'Hamburguer 150 g', 1, 10),
(301, 44, 3, 'Hamburguer 150 g', 1, 10),
(302, 44, 2, 'coca cola 2l 2 l', 1, 8),
(303, 45, -10, 'Desconto', 1, 0),
(304, 45, 0, 'Troco', 1, 26),
(305, 45, -1, 'Dinheiro', 1, 60),
(306, 45, 2, 'coca cola 2l 2 l', 1, 8),
(307, 45, 2, 'coca cola 2l 2 l', 1, 8),
(308, 45, 2, 'coca cola 2l 2 l', 1, 8),
(309, 45, 3, 'Hamburguer 150 g', 1, 10),
(569, 88, -10, 'Desconto', 1, 0),
(570, 88, -2, 'Cartão de Crédito', 1, 8),
(571, 88, 2, 'coca cola 2l 2 l', 1, 8),
(316, 34, -1, 'Dinheiro', 1, 50),
(317, 34, 2, 'coca cola 2l 2 l', 1, 8),
(318, 47, -10, 'Desconto', 1, 0),
(319, 47, 0, 'Troco', 1, 40),
(320, 47, -1, 'Dinheiro', 1, 50),
(321, 47, 3, 'Hamburguer 150 g', 1, 10),
(605, 93, 4, 'Xis Povão 200 g', 1, 25),
(604, 93, 3, 'Hamburguer 150 g', 1, 10),
(615, 95, 4, 'Xis Povão 200 g', 1, 25),
(327, 50, -10, 'Desconto', 1, 0),
(328, 50, 0, 'Troco', 1, 7),
(329, 50, -1, 'Dinheiro', 1, 50),
(330, 50, 4, 'Xis Povão 200 g', 1, 25),
(331, 50, 3, 'Hamburguer 150 g', 1, 10),
(332, 50, 2, 'coca cola 2l 2 l', 1, 8),
(603, 93, 2, 'coca cola 2l 400 ml', 1, 8),
(567, 25, 2, 'coca cola 2l 2 l', 1, 8),
(495, 85, -1, 'Dinheiro', 1, 50),
(496, 85, 3, 'Hamburguer 150 g', 1, 10),
(602, 93, 5, 'Coca Cola 1 un', 1, 10),
(580, 87, 2, 'coca cola 2l 2 l', 1, 8),
(498, 85, 2, 'coca cola 2l 400 ml', 1, 8),
(497, 85, 4, 'Xis Povão 200 g', 1, 25),
(565, 25, -10, 'Desconto', 1, 0),
(566, 25, -3, 'Cartão de Débito', 1, 8),
(614, 95, 6, 'ad 1 100 g', 1, 2),
(579, 87, -2, 'Cartão de Crédito', 1, 8),
(584, 84, -10, 'Desconto', 1, 0),
(350, 59, 2, 'coca cola 2l 2 l', 1, 8),
(351, 59, 2, 'coca cola 2l 2 l', 1, 8),
(352, 60, 2, 'coca cola 2l 2 l', 1, 8),
(353, 60, 2, 'coca cola 2l 2 l', 1, 8),
(578, 87, -10, 'Desconto', 1, 0),
(613, 95, 5, 'Fanta Laranja 1 un', 1, 10),
(583, 86, 2, 'coca cola 2l 2 l', 1, 8),
(582, 86, -2, 'Cartão de Crédito', 1, 8),
(581, 86, -10, 'Desconto', 1, 0),
(412, 62, 2, 'coca cola 2l 2 l', 1, 8),
(366, 65, 2, 'coca cola 2l 2 l', 1, 8),
(384, 63, 2, 'coca cola 2l 2 l', 1, 8),
(364, 64, 2, 'coca cola 2l 2 l', 1, 8),
(367, 65, 2, 'coca cola 2l 2 l', 1, 8),
(368, 65, 2, 'coca cola 2l 2 l', 1, 8),
(369, 65, 2, 'coca cola 2l 2 l', 1, 8),
(370, 65, 2, 'coca cola 2l 2 l', 1, 8),
(451, 73, 2, 'coca cola 2l 2 l', 1, 8),
(450, 73, 6, 'ad 1 1 un', 1, 2),
(411, 62, 6, 'ad 1 1 un', 1, 2),
(410, 62, 6, 'ad 1 1 un', 1, 2),
(409, 62, 6, 'ad 1 1 un', 1, 2),
(408, 62, 6, 'ad 1 1 un', 1, 2),
(407, 62, 3, 'Hamburguer 150 g', 1, 10),
(406, 62, -3, 'Cartão de Débito', 1, 26),
(405, 62, -10, 'Desconto', 1, 0),
(449, 73, 4, 'Xis Povão 200 g', 1, 25),
(448, 73, -1, 'Dinheiro', 1, 50),
(446, 73, -10, 'Desconto', 1, 0),
(447, 73, 0, 'Troco', 1, 15),
(485, 83, 2, 'coca cola 2l 400 ml', 1, 8),
(484, 83, 5, 'Coca Cola 1 un', 1, 10),
(574, 82, 2, 'coca cola 2l 2 l', 1, 8),
(482, 83, -10, 'Desconto', 1, 0),
(483, 83, -3, 'Cartão de Débito', 1, 18),
(573, 82, -2, 'Cartão de Crédito', 1, 8),
(572, 82, -10, 'Desconto', 1, 0),
(471, 80, 3, 'Hamburguer 150 g', 1, 10),
(472, 80, 2, 'coca cola 2l 400 ml', 1, 8),
(473, 80, 2, 'coca cola 2l 400 ml', 1, 8),
(474, 80, 2, 'coca cola 2l 400 ml', 1, 8),
(558, 90, 2, 'coca cola 2l 400 ml', 1, 8),
(534, 89, -1, 'Dinheiro', 1, 80),
(535, 89, 6, 'ad 1 100 kg', 1, 2),
(533, 89, -2, 'Cartão de Crédito', 1, 8),
(557, 90, 3, 'Hamburguer 150 g', 1, 10),
(556, 90, 4, 'Xis Povão 200 g', 1, 25),
(555, 90, -3, 'Cartão de Débito', 1, 51),
(563, 91, -2, 'Cartão de Crédito', 1, 8),
(562, 91, -10, 'Desconto', 1, 0),
(559, 90, 2, 'coca cola 2l 400 ml', 1, 8),
(564, 91, 2, 'coca cola 2l 2 l', 1, 8),
(655, 97, 5, 'Fanta Laranja 1 un', 1, 10),
(654, 97, 2, 'Cola Cola 2L 2 l', 1, 8),
(645, 98, 4, 'Xis Povão 200 g', 1, 25),
(644, 98, 3, 'Hamburguer 150 g', 1, 10),
(642, 98, 6, 'ad 1 100 g', 1, 2),
(643, 98, 6, 'ad 1 100 g', 1, 2),
(641, 98, 5, 'Fanta Laranja 1 un', 1, 10),
(653, 99, 5, 'Fanta Laranja 1 un', 1, 10),
(652, 99, 2, 'Cola Cola 2L 2 l', 1, 8),
(651, 99, 2, 'Cola Cola 2L 2 l', 1, 8),
(650, 99, 2, 'Cola Cola 2L 2 l', 1, 8),
(657, 97, 2, 'coca cola 2l 2 l', 1, 8),
(658, 100, 2, 'Cola Cola 2L 2 l', 1, 8),
(659, 100, 4, 'Xis Povão 200 g', 1, 25),
(672, 103, 6, 'ad 1 100 g', 1, 2),
(727, 106, 0, 'Troco', 1, 15),
(726, 102, 2, 'coca cola 2l 2 l', 1, 8),
(674, 103, 6, 'ad 1 100 g', 1, 2),
(675, 103, 6, 'ad 1 100 g', 1, 2),
(676, 103, 6, 'ad 1 100 g', 1, 2),
(677, 103, 6, 'ad 1 100 g', 1, 2),
(678, 103, 6, 'ad 1 100 g', 1, 2),
(679, 103, 6, 'ad 1 100 g', 1, 2),
(680, 103, 6, 'ad 1 100 g', 1, 2),
(716, 104, 6, 'ad 1 100 g', 1, 2),
(715, 104, 6, 'ad 1 100 g', 1, 2),
(714, 104, 6, 'ad 1 100 g', 1, 2),
(713, 104, 6, 'ad 1 100 g', 1, 2),
(712, 104, 6, 'ad 1 100 g', 1, 2),
(711, 104, 6, 'ad 1 100 g', 1, 2),
(710, 104, -1, 'Dinheiro', 1, 50),
(709, 104, 0, 'Troco', 1, 32),
(708, 104, -10, 'Desconto', 1, 0),
(717, 104, 6, 'ad 1 100 g', 1, 2),
(718, 104, 6, 'ad 1 100 g', 1, 2),
(719, 104, 6, 'ad 1 100 g', 1, 2),
(725, 105, 3, 'Hamburguer 150 g', 1, 10),
(724, 105, 4, 'Xis Povão 200 g', 1, 25),
(723, 105, 5, 'Fanta Laranja 1 un', 1, 10),
(728, 106, -1, 'Dinheiro', 1, 50),
(729, 106, 3, 'Hamburguer 150 g', 1, 10),
(730, 106, 4, 'Xis Povão 200 g', 1, 25),
(838, 111, 2, 'Cola Cola 2L 2 l', 1, 8),
(837, 107, 2, 'coca cola 2l 2 l', 1, 8),
(835, 110, 3, 'Hamburguer 150 g', 1, 10),
(834, 110, 6, 'ad 1 100 g', 1, 2),
(833, 110, 5, 'Fanta Laranja 1 un', 1, 10),
(832, 108, 2, 'coca cola 2l 2 l', 1, 8),
(831, 108, -1, 'Dinheiro', 1, 10),
(830, 108, 0, 'Troco', 1, 2),
(829, 108, -10, 'Desconto', 1, 0),
(827, 109, 4, 'Xis Povão 200 g', 1, 25),
(826, 109, 5, 'Fanta Laranja 1 un', 1, 10),
(825, 109, 2, 'Cola Cola 2L 2 l', 1, 8),
(824, 109, 5, 'Fanta Laranja 1 un', 1, 10),
(823, 109, 5, 'Fanta Laranja 1 un', 1, 10),
(822, 109, 5, 'Fanta Laranja 1 un', 1, 10),
(821, 109, -1, 'Dinheiro', 1, 100),
(820, 109, 0, 'Troco', 1, 17),
(819, 109, -10, 'Desconto', 1, 0),
(828, 109, 3, 'Hamburguer 150 g', 1, 10),
(836, 110, 3, 'Hamburguer 150 g', 1, 10),
(839, 112, 4, 'Xis Povão 200 g', 1, 25),
(840, 113, 4, 'Xis Povão 200 g', 1, 25),
(841, 113, 4, 'Xis Povão 200 g', 1, 25),
(842, 113, 2, 'Cola Cola 2L 2 l', 1, 8),
(843, 114, 5, 'Fanta Laranja 1 un', 1, 10),
(844, 114, 3, 'Hamburguer 150 g', 1, 10),
(845, 114, 4, 'Xis Povão 200 g', 1, 25),
(846, 115, 5, 'Fanta Laranja 1 un', 1, 10),
(859, 116, 4, 'Xis Povão 200 g', 1, 25),
(858, 116, 4, 'Xis Povão 200 g', 1, 25),
(856, 116, -10, 'Desconto', 1, 0),
(857, 116, -1, 'Dinheiro', 1, 58),
(860, 116, 2, 'Cola Cola 2L 2 l', 1, 8),
(861, 117, 5, 'Fanta Laranja 1 un', 1, 10),
(862, 118, -10, 'Desconto', 1, 0),
(863, 118, -1, 'Dinheiro', 1, 10),
(864, 118, 5, 'Fanta Laranja 1 un', 1, 10),
(865, 119, -10, 'Desconto', 1, 0),
(866, 119, 0, 'Troco', 1, 1),
(867, 119, -1, 'Dinheiro', 1, 11),
(868, 119, 5, 'Fanta Laranja 1 un', 1, 10),
(869, 120, -10, 'Desconto', 1, 9),
(870, 120, 0, 'Troco', 1, 14),
(871, 120, -1, 'Dinheiro', 1, 50),
(872, 120, 5, 'Fanta Laranja 1 un', 1, 10),
(873, 120, 3, 'Hamburguer 150 g', 1, 10),
(874, 120, 4, 'Xis Povão 200 g', 1, 25),
(875, 121, 6, 'ad 1 100 g', 1, 2),
(876, 121, 6, 'ad 1 100 g', 1, 2),
(877, 121, 6, 'ad 1 100 g', 1, 2),
(878, 121, 6, 'ad 1 100 g', 1, 2),
(879, 121, 6, 'ad 1 100 g', 1, 2),
(880, 121, 6, 'ad 1 100 g', 1, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mesas`
--

CREATE TABLE IF NOT EXISTS `mesas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  `lugares` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Extraindo dados da tabela `mesas`
--

INSERT INTO `mesas` (`id`, `nome`, `lugares`, `status`) VALUES
(1, 'M01', 4, 0),
(2, 'M02', 6, 0),
(3, 'M03', 5, 0),
(4, 'Mesa 4', 6, 0),
(5, 'MESA 5', 4, 0),
(7, 'MESA TOP', 4, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE IF NOT EXISTS `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` varchar(20) NOT NULL,
  `hora` time NOT NULL,
  `id_cliente` int(11) DEFAULT '0',
  `cliente` varchar(50) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `sub_total` double NOT NULL,
  `desconto` double NOT NULL DEFAULT '0',
  `total` double NOT NULL,
  `obs` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=122 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos_espera_html`
--

CREATE TABLE IF NOT EXISTS `pedidos_espera_html` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `html` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=118 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE IF NOT EXISTS `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  `unidade` varchar(5) DEFAULT NULL,
  `quantidade` double DEFAULT NULL,
  `adicional` tinyint(1) NOT NULL DEFAULT '0',
  `imprimir` tinyint(4) NOT NULL,
  `imagem` varchar(40) NOT NULL DEFAULT 'sem_imagem.png',
  `valor` double NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `descricao_completa` longtext NOT NULL,
  `data_registro` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `notas` longtext NOT NULL,
  `data_log` varchar(20) NOT NULL,
  `data_registro` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `usuario`, `telefone`, `celular`, `senha`, `status`, `notas`, `data_log`, `data_registro`) VALUES
(1, 'Administrador', 'admin', '(00) 0000-0000', '(00) 0000-0000', 'c7ad44cbad762a5da0a452f9e854fdc1e0e7a52a38015f23f3eab1d80b931dd472634dfac71cd34ebc35d16ab7fb8a90c81f975113d6c7538dc69dd8de9077ec', 1, '', '21/05/2014 09:56:26', '25/06/2015 10:26:06');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
