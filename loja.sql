-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 08-Maio-2023 às 23:20
-- Versão do servidor: 10.10.2-MariaDB
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loja`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) DEFAULT NULL,
  `data_nascimento` date NOT NULL,
  `cidade_nasc` int(11) NOT NULL,
  `ativo` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id`, `nome`, `data_nascimento`, `cidade_nasc`, `ativo`) VALUES
(1, 'Pedro Henrique Lopes', '2004-01-15', 1, 1),
(2, 'Marcela Rondon', '2000-10-10', 3, 1),
(3, 'Marcos Munhos', '1999-01-01', 2, 1),
(4, 'Rodrigo da Silva', '1999-06-23', 1, 0),
(5, 'Larissa Menezes', '2001-12-02', 3, 1),
(6, 'Rodrigo da Silva', '2013-04-05', 1, 0),
(7, 'Naiara Azevedo', '2000-11-23', 2, 1),
(8, 'Nata Munhoz Perez', '1978-06-21', 3, 1),
(9, 'Felipe Cabrita', '1998-12-03', 1, 0),
(10, 'Vitor Valim', '2001-04-15', 2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

DROP TABLE IF EXISTS `produto`;
CREATE TABLE IF NOT EXISTS `produto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `preco` float NOT NULL,
  `peso` float NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id`, `nome`, `quantidade`, `preco`, `peso`, `updated_at`, `created_at`) VALUES
(1, 'Produto 1', 10, 19.99, 1.5, NULL, NULL),
(2, 'Produto 2', 21, 49.99, 1.2, NULL, NULL),
(3, 'Produto 3', 20, 9.99, 0.8, NULL, NULL),
(4, 'Produto 4', 15, 29.99, 1.5, NULL, NULL),
(5, 'Produto 5', 7, 99.99, 2.3, NULL, NULL),
(6, 'Produto 6', 30, 7.99, 0.4, NULL, NULL),
(7, 'Produto 7', 3, 149.99, 3, NULL, NULL),
(8, 'Produto 8', 12, 39.99, 1, NULL, NULL),
(9, 'Produto 9', 8, 79.99, 2.1, NULL, NULL),
(10, 'Produto 10', 25, 14.99, 0.7, NULL, NULL),
(11, 'Produto 11', 18, 24.99, 1.3, NULL, NULL),
(12, 'Produto 12', 2, 399.99, 5, NULL, NULL),
(13, 'Produto 13', 6, 149.99, 1.8, NULL, NULL),
(14, 'Produto 14', 17, 29.99, 1.1, NULL, NULL),
(15, 'Produto 15', 9, 89.99, 2.6, NULL, NULL),
(16, 'Produto 16', 22, 12.99, 0.6, NULL, NULL),
(17, 'Produto 17', 14, 34.99, 1.4, NULL, NULL),
(18, 'Produto 18', 11, 69.99, 2, NULL, NULL),
(19, 'Produto 19', 4, 199.99, 4, NULL, NULL),
(20, 'Produto 20', 13, 44.99, 1.2, NULL, NULL),
(21, 'Produto 21', 29, 8.99, 0.3, NULL, NULL),
(22, 'Produto 22', 16, 54.99, 1.7, NULL, NULL),
(23, 'Produto 23', 23, 17.99, 0.8, NULL, NULL),
(24, 'Produto 24', 1, 999.99, 6, NULL, NULL),
(25, 'Produto 25', 10, 129.99, 2.4, NULL, NULL),
(26, 'Produto 26', 19, 19.99, 0.9, NULL, NULL),
(28, 'Produto 28', 27, 10.99, 0.5, NULL, NULL),
(29, 'Produto 29', 21, 27.99, 1.6, NULL, NULL),
(30, 'Produto 30', 16, 49.99, 1.9, NULL, NULL),
(31, 'Produto 31', 8, 119.99, 2.9, NULL, NULL),
(32, 'Produto 32', 3, 499.99, 4.5, NULL, NULL),
(33, 'Produto 33', 12, 64.99, 1.1, NULL, NULL),
(34, 'Produto 34', 14, 39.99, 1.3, NULL, NULL),
(35, 'Produto 35', 5, 10.25, 1.3, NULL, NULL),
(36, 'Calculadora', 2, 12.5, 2.1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `usuario` varchar(60) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `email` varchar(60) NOT NULL,
  `chave` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `usuario`, `senha`, `email`, `chave`) VALUES
(1, 'Teste da Silva', 'teste', '123', 's', NULL),
(2, 'Paulo Posi', 'paoloposi', '5555', 'posi@gmail', NULL),
(3, 'Marco Antonio', 'marcoa', 'as54', 'mamarco@gmail', NULL),
(4, 'Vitor Valim', 'vitoi', 'senha', 'vito@yahoo.com', NULL),
(5, 'Rodriguinho do Gas', 'rodgas', 'senha', 'rodrgio@gamail.com', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
