-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 10-Fev-2020 às 20:08
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `financeiro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `lancamento`
--

CREATE TABLE `lancamento` (
  `classificacao` varchar(200) NOT NULL,
  `planoContas` varchar(200) NOT NULL,
  `item` varchar(200) NOT NULL,
  `formaPagamento` varchar(100) NOT NULL,
  `banco` varchar(100) NOT NULL,
  `centroCusto` varchar(100) NOT NULL,
  `cliente` varchar(200) DEFAULT NULL,
  `valor` float NOT NULL,
  `dataPagamento` date NOT NULL,
  `resultado` float DEFAULT NULL,
  `mes` varchar(100) NOT NULL,
  `id` int(11) NOT NULL,
  `ano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `lancamento`
--

INSERT INTO `lancamento` (`classificacao`, `planoContas`, `item`, `formaPagamento`, `banco`, `centroCusto`, `cliente`, `valor`, `dataPagamento`, `resultado`, `mes`, `id`, `ano`) VALUES
('RECEITA COM PRODUTOS', 'teste', 'teste', 'Dinheiro', 'teste', 'Rio Grande', 'teste', 1000, '2019-10-18', NULL, 'Fevereiro', 14, 2019),
('RECEITA COM PRODUTOS', 'teste', 'llll', 'Dinheiro', 'Banco Do Brasil', 'Rio Grande', 'Lorrana', 1000, '2019-10-23', NULL, 'Fevereiro', 15, 2019),
('RECEITA COM PRODUTOS', 'contasteste', 'itemteste', 'Dinheiro', 'bancoitrm', 'Rio Grande', '', 0, '2019-01-02', NULL, 'Fevereiro', 16, 2019),
('RECEITA COM PRODUTOS', 'novo', 'novo', 'Dinheiro', 'banconovo', 'Rio Grande', 'novo', 5000, '2019-02-01', NULL, 'Fevereiro', 26, 2019),
('RECEITA COM PRODUTOS', 'novo', 'novo', 'Dinheiro', 'banconovo', 'Rio Grande', 'novo', 5000, '2019-02-01', NULL, 'Fevereiro', 27, 2019),
('RECEITA COM PRODUTOS', 'uihuih', 'uhiuh', 'Dinheiro', 'uyhgiu', 'Rio Grande', 'iuhiuh', 400, '2018-02-01', NULL, 'Fevereiro', 47, 2018),
('RECEITA COM PRODUTOS', 'uihuih', 'uhiuh', 'Dinheiro', 'uyhgiu', 'Rio Grande', 'iuhiuh', 400, '2018-02-01', NULL, 'Fevereiro', 48, 2018),
('RECEITA COM PRODUTOS', 'knuh', 'ihuihiuh', 'Dinheiro', 'uihiuh', 'Rio Grande', 'hiuhiuh', 2200, '2018-01-01', NULL, 'Janeiro', 49, 2018),
('RECEITA COM PRODUTOS', 'teste9', 'teste10', 'Dinheiro', 'Banco Do Brasil', 'Rio Grande', 'teste11', 50000, '2020-01-01', NULL, 'Janeiro', 50, 2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `email`, `senha`) VALUES
(1, 'admin@gxinvestimentos.com', 'd51f4d9c781f39f2de065a06df8c5073');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lancamento`
--
ALTER TABLE `lancamento`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lancamento`
--
ALTER TABLE `lancamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
