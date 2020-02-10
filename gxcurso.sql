-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 10-Fev-2020 às 19:41
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
-- Database: `gxcurso`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentario`
--

CREATE TABLE `comentario` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_publicacao` int(11) NOT NULL,
  `mensagem` mediumtext NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `comentario`
--

INSERT INTO `comentario` (`id`, `id_user`, `id_publicacao`, `mensagem`, `data`) VALUES
(19, 15, 5, 'olá', '2019-10-02 12:58:51'),
(20, 15, 42, 'teste', '2019-11-05 13:04:10'),
(21, 15, 42, 'teste2', '2019-11-07 00:09:05'),
(22, 15, 43, 'naoooo', '2019-11-11 18:29:12'),
(23, 15, 42, 'teste', '2019-11-11 18:29:49'),
(24, 15, 43, 'testettetettet', '2019-11-11 18:49:01');

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `titulo` varchar(100) NOT NULL,
  `preco` float NOT NULL,
  `info` varchar(500) NOT NULL,
  `id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`titulo`, `preco`, `info`, `id`) VALUES
('JORNADA DO INVESTIDOR', 600, 'Aprenda a investir na bolsa de valores com ênfase em análise técnica.', 27);

-- --------------------------------------------------------

--
-- Estrutura da tabela `publicacao`
--

CREATE TABLE `publicacao` (
  `id` int(11) NOT NULL,
  `mensagem` mediumtext NOT NULL,
  `data` datetime NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `publicacao`
--

INSERT INTO `publicacao` (`id`, `mensagem`, `data`, `id_user`) VALUES
(5, 'jjjjjjjjjjjjjjjj', '0000-00-00 00:00:00', 5),
(42, 'oiiiii', '2019-10-03 01:04:22', 33),
(43, 'teste', '2019-11-07 00:07:10', 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usercurso`
--

CREATE TABLE `usercurso` (
  `id_curso` int(20) NOT NULL,
  `id_user` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usercurso`
--

INSERT INTO `usercurso` (`id_curso`, `id_user`) VALUES
(27, 15),
(27, 33);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `nome` varchar(100) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `id` int(20) NOT NULL,
  `bio` varchar(200) NOT NULL,
  `numero` varchar(30) NOT NULL,
  `foto` varchar(9999) NOT NULL DEFAULT '/perfil/person.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`nome`, `sobrenome`, `email`, `senha`, `id`, `bio`, `numero`, `foto`) VALUES
('Vinícius ', 'Teixeira', 'vinicius.teixeira@gxinvestimentos', '202cb962ac59075b964b07152d234b70', 15, '', '533248879', '78ff0a7ccd60d996b43c21be8796bd67.jpg'),
('Rafael', 'Tanaka', 'rb.tanaka@hotmail.com', 'd660323dba714a3c1ae182892e629597', 33, '', '', '99f1ef0d13dd0e91f84eabcd37c47bd0.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `video`
--

CREATE TABLE `video` (
  `nome` text NOT NULL,
  `ep` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_curso` int(11) NOT NULL,
  `descricao` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `video`
--

INSERT INTO `video` (`nome`, `ep`, `titulo`, `id`, `id_curso`, `descricao`) VALUES
('f8f610ab518d81beb42edaee7fd952df.mp4', 25, 'Taxa Selic', 43, 1, '    Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aliquam id dolorem sunt eos deleniti, dicta, dignissimos odio tempore maiores quam nisi explicabo adipisci cumque reprehenderit quo illum facilis voluptas quis?\r\n'),
('f8f610ab518d81beb42edaee7fd952df.mp4', 10, 'Investimento', 44, 1, '    Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aliquam id dolorem sunt eos deleniti, dicta, dignissimos odio tempore maiores quam nisi explicabo adipisci cumque reprehenderit quo illum facilis voluptas quis?\r\n'),
('11938c143f35f8109048c478da2c0740.mp4', 4, 'dwdwdwdwdwd', 45, 17, '    Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aliquam id dolorem sunt eos deleniti, dicta, dignissimos odio tempore maiores quam nisi explicabo adipisci cumque reprehenderit quo illum facilis voluptas quis?'),
('b2d4aca1d67d8267057271fe9e1f0250.', 50, 'Explicando em 10 passos', 51, 21, '    Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aliquam id dolorem sunt eos deleniti, dicta, dignissimos odio tempore maiores quam nisi explicabo adipisci cumque reprehenderit quo illum facilis voluptas quis?'),
('e2d6199cdb8c484d6cedf8b4e6ae557d.mp4', 1, 'slah', 54, 28, ''),
('c2014b8a05ea7796308231d11338ba41.', 12, 'desastre', 56, 25, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `fk_user_id` (`id_user`),
  ADD KEY `id_publicacao` (`id_publicacao`);

--
-- Indexes for table `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `titulo` (`titulo`);

--
-- Indexes for table `publicacao`
--
ALTER TABLE `publicacao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usercurso`
--
ALTER TABLE `usercurso`
  ADD PRIMARY KEY (`id_curso`,`id_user`),
  ADD KEY `fk_user_id` (`id_user`),
  ADD KEY `fk_cs_id` (`id_curso`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comentario`
--
ALTER TABLE `comentario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `curso`
--
ALTER TABLE `curso`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `publicacao`
--
ALTER TABLE `publicacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `usercurso`
--
ALTER TABLE `usercurso`
  MODIFY `id_user` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `fk_public_id` FOREIGN KEY (`id_publicacao`) REFERENCES `publicacao` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`id_user`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `usercurso`
--
ALTER TABLE `usercurso`
  ADD CONSTRAINT `fk_curso_id` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_curso_user` FOREIGN KEY (`id_user`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
