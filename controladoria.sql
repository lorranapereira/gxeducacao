-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 10-Fev-2020 às 18:24
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
-- Database: `controladoria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `assessor`
--

CREATE TABLE `assessor` (
  `nome` varchar(200) NOT NULL,
  `id` int(5) NOT NULL,
  `senha` varchar(200) NOT NULL DEFAULT 'fbb097446d3b39c9e8c9b983ed37f3a5',
  `usuario` varchar(100) NOT NULL,
  `admin` enum('true','false','','') NOT NULL DEFAULT 'false',
  `cidade` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `assessor`
--

INSERT INTO `assessor` (`nome`, `id`, `senha`, `usuario`, `admin`, `cidade`) VALUES
('BRUNO SOARES DA SILVA', 21069, 'fbb097446d3b39c9e8c9b983ed37f3a5', 'bruno', 'false', 'Florianópolis'),
('LUCIANO TAUBNER MARREIRO', 21241, 'fbb097446d3b39c9e8c9b983ed37f3a5', 'luciano', 'false', 'Rio Grande'),
('RAFAEL BAPTISTON TANAKA', 21807, 'fbb097446d3b39c9e8c9b983ed37f3a5', 'rafael', 'false', 'Pelotas'),
('LUIZ FERNANDO RODRIGUES FILHO', 21831, 'fbb097446d3b39c9e8c9b983ed37f3a5', 'fernando', 'false', 'Rio Grande'),
('GUSTAVO DA SILVA CONTINI', 22288, 'fbb097446d3b39c9e8c9b983ed37f3a5', 'gustavo', 'false', 'Pelotas'),
('FREDERICO', 23032, 'fbb097446d3b39c9e8c9b983ed37f3a5', 'fred', 'false', 'Rio Grande'),
('VINICIUS PEREIRA TEIXEIRA', 67114, 'eaa05accf4ecd40266ea8f188a2db078', 'vinicius', 'true', 'Rio Grande'),
('DIEGO DE CARVALHO CAVALHEIRO', 68934, 'fbb097446d3b39c9e8c9b983ed37f3a5', 'diego', 'false', 'Pelotas'),
('NORTON FABRIZIO FARIA SANDRI', 69152, 'fbb097446d3b39c9e8c9b983ed37f3a5', 'norton', 'false', 'Florianópolis'),
('GUILHERME GOMES', 69505, 'fbb097446d3b39c9e8c9b983ed37f3a5', 'guilherme', 'false', 'Rio Grande'),
('THALES VENTURA NÓBREGA', 69512, 'fbb097446d3b39c9e8c9b983ed37f3a5', 'thales', 'false', 'Pelotas'),
('WEFWE', 98798, 'fbb097446d3b39c9e8c9b983ed37f3a5', 'wfew', 'false', 'Rio Grande');

-- --------------------------------------------------------

--
-- Estrutura da tabela `assessorCliente`
--

CREATE TABLE `assessorCliente` (
  `Assessor` varchar(100) NOT NULL,
  `Cliente` varchar(100) NOT NULL,
  `Profissao` varchar(56) DEFAULT NULL,
  `Sexo` varchar(1) DEFAULT NULL,
  `Segmento` varchar(7) DEFAULT NULL,
  `DatadeCadastro` varchar(10) DEFAULT NULL,
  `FezSegundoAporte` varchar(3) DEFAULT NULL,
  `DatadeNascimento` varchar(10) DEFAULT NULL,
  `Status` varchar(7) DEFAULT NULL,
  `AtivouemM` varchar(3) DEFAULT NULL,
  `EvadiuemM` varchar(3) DEFAULT NULL,
  `OperouBolsa` varchar(3) DEFAULT NULL,
  `OperouFundo` varchar(3) DEFAULT NULL,
  `OperouRendaFixas` varchar(3) DEFAULT NULL,
  `AplicaçãoFinanceiraDeclarada` varchar(13) DEFAULT NULL,
  `ReceitanoMes` varchar(9) DEFAULT NULL,
  `ReceitaBovespa` varchar(9) DEFAULT NULL,
  `ReceitaFuturos` varchar(9) DEFAULT NULL,
  `ReceitaRFBancários` varchar(8) DEFAULT NULL,
  `ReceitaRFPrivados` decimal(3,2) DEFAULT NULL,
  `ReceitaRFPublicos` decimal(3,2) DEFAULT NULL,
  `CaptacaoBrutaemM` varchar(12) DEFAULT NULL,
  `ResgateemM` varchar(11) DEFAULT NULL,
  `CaptacaoLiquidaemM` varchar(12) DEFAULT NULL,
  `CaptacaoTED` varchar(12) DEFAULT NULL,
  `CaptacaoST` varchar(9) DEFAULT NULL,
  `CaptacaoOTA` decimal(3,2) DEFAULT NULL,
  `CaptacaoRF` varchar(9) DEFAULT NULL,
  `CaptacaoTD` varchar(10) DEFAULT NULL,
  `CaptacaoPREV` varchar(10) DEFAULT NULL,
  `NetemM-1` varchar(12) DEFAULT NULL,
  `NetEmM` varchar(12) DEFAULT NULL,
  `NetRendaFixa` varchar(12) DEFAULT NULL,
  `NetFundosImobiliarios` varchar(10) DEFAULT NULL,
  `NetRendaVariavel` varchar(12) DEFAULT NULL,
  `NetFundos` varchar(12) DEFAULT NULL,
  `NetFinanceiro` varchar(10) DEFAULT NULL,
  `NetPrevidencia` varchar(12) DEFAULT NULL,
  `NetOutros` varchar(10) DEFAULT NULL,
  `ReceitaAluguel` decimal(5,2) DEFAULT NULL,
  `ReceitaComplemento/PacoteCorretagem` decimal(3,2) DEFAULT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comissao`
--

CREATE TABLE `comissao` (
  `assessor` varchar(50) NOT NULL,
  `data` date NOT NULL,
  `produto` varchar(200) NOT NULL,
  `comissao` varchar(500) NOT NULL,
  `repasseAssessor` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `comissao`
--

INSERT INTO `comissao` (`assessor`, `data`, `produto`, `comissao`, `repasseAssessor`) VALUES
('nulo', '2019-11-01', '', '', 0),
('nulo', '2019-11-01', '', '', 0),
('nulo', '2019-11-01', '', '', 0),
('A21241', '2019-11-01', '', '', 0),
('A69152', '2019-11-01', '', '', 9.0576),
('A69505', '2019-11-01', '', '', 6.7932),
('A21831', '2019-11-01', '', '', 0),
('A22288', '2019-11-01', '', '', 0),
('A69512', '2019-11-01', '', '', 590.159),
('A21831', '2019-11-01', '', '', 0),
('A21241', '2019-11-01', '', '', 0),
('A68934', '2019-11-01', '', '', 616.294),
('A69152', '2019-11-01', '', '', 988.976),
('A69505', '2019-11-01', '', '', 782.424),
('A67114', '2019-11-01', '', '', 12407.1),
('A67114', '2019-11-01', '', '', 7.7837),
('A21807', '2019-11-01', '', '', 0),
('A21241', '2019-11-01', '', '', 0),
('A21831', '2019-11-01', '', '', 0),
('A69505', '2019-11-01', '', '', 362.985),
('A69512', '2019-11-01', '', '', 713.332),
('A67114', '2019-11-01', '', '', 10249),
('A69152', '2019-11-01', '', '', 15127.9),
('A68934', '2019-11-01', '', '', 17.643),
('A69512', '2019-11-01', '', '', 27.1923),
('A21069', '2019-11-01', '', '', 0),
('A21807', '2019-11-01', '', '', 0),
('A22288', '2019-11-01', '', '', 0),
('A21241', '2019-11-01', '', '', 0),
('A21831', '2019-11-01', '', '', 0),
('A67114', '2019-11-01', '', '', 679.863),
('A69505', '2019-11-01', '', '', 577.305),
('A69152', '2019-11-01', '', '', 13285.6),
('A21831', '2019-11-01', '', '', 0),
('A21241', '2019-11-01', '', '', 0),
('A22288', '2019-11-01', '', '', 0),
('A69505', '2019-11-01', '', '', 3.4313),
('A68934', '2019-11-01', '', '', 14.5174),
('A67114', '2019-11-01', '', '', 36.9889),
('A69152', '2019-11-01', '', '', 124.424),
('A67114', '2019-11-01', '', '', 833.712),
('A21241', '2019-11-01', '', '', 0),
('A21831', '2019-11-01', '', '', 0),
('A22288', '2019-11-01', '', '', 0),
('A21807', '2019-11-01', '', '', 0),
('A21831', '2019-11-01', '', '', 0),
('A68934', '2019-11-01', '', '', 58.1752),
('A21069', '2019-11-01', '', '', 0),
('A21241', '2019-11-01', '', '', 0),
('A69512', '2019-11-01', '', '', 476.63),
('A69152', '2019-11-01', '', '', 548.931),
('A69505', '2019-11-01', '', '', 218.673),
('A67114', '2019-11-01', '', '', 933.928),
('A68934', '2019-11-01', '', '', 0.0096),
('A69152', '2019-11-01', '', '', 0.036),
('A21241', '2019-11-01', '', '', 0),
('A69505', '2019-11-01', '', '', 0.8774),
('A69512', '2019-11-01', '', '', 10.807),
('A67114', '2019-11-01', '', '', 13.0153),
('A21807', '2019-11-01', '', '', 0),
('A21831', '2019-11-01', '', '', 0),
('A68934', '2019-11-01', '', '', 142.776),
('A22288', '2019-11-01', '', '', 0),
('A69505', '2019-11-01', '', '', 219.214),
('A69512', '2019-11-01', '', '', 427.916),
('A67114', '2019-11-01', '', '', 701.855),
('A69152', '2019-11-01', '', '', 946.017),
('A21241', '2019-11-01', '', '', 0),
('A69505', '2019-11-01', '', '', 4.3598),
('A67114', '2019-11-01', '', '', 56.3302),
('A69512', '2019-11-01', '', '', 80.7279),
('A68934', '2019-11-01', '', '', 219.728),
('A69152', '2019-11-01', '', '', 449.515);

-- --------------------------------------------------------

--
-- Estrutura da tabela `finalcomissao`
--

CREATE TABLE `finalcomissao` (
  `descricao` varchar(200) NOT NULL,
  `valor` float NOT NULL,
  `id_assessor` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  `data` date NOT NULL,
  `operacao` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `finalcomissao`
--

INSERT INTO `finalcomissao` (`descricao`, `valor`, `id_assessor`, `id`, `data`, `operacao`) VALUES
('vale', 45, 'A21241', 76, '2019-11-01', '+'),
('vale', 45, 'A21241', 77, '2019-11-01', '+'),
('vale', 45, 'A21241', 78, '2019-11-01', '-'),
('vale', 55, 'A69152', 79, '2019-11-01', '+'),
('de', 55, 'A21831', 80, '2019-11-01', '+'),
('de', 55, 'A21831', 81, '2019-11-01', '+');

-- --------------------------------------------------------

--
-- Estrutura da tabela `grafico`
--

CREATE TABLE `grafico` (
  `aplicado` int(11) NOT NULL,
  `realizado` int(11) NOT NULL,
  `receitadiaria` int(11) NOT NULL,
  `receitafutura` int(11) NOT NULL,
  `receitapublica` int(11) NOT NULL,
  `receitaprivada` int(11) NOT NULL,
  `receitabancaria` int(11) NOT NULL,
  `receitabovespa` int(11) NOT NULL,
  `captacaoliquida` int(11) NOT NULL,
  `netfinanceiro` int(11) NOT NULL,
  `netfundos` int(11) NOT NULL,
  `netprevidencia` int(11) NOT NULL,
  `netfixa` int(11) NOT NULL,
  `netvariavel` int(11) NOT NULL,
  `netoutros` int(11) NOT NULL,
  `netimobiliario` int(11) NOT NULL,
  `data` datetime NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `grafico`
--

INSERT INTO `grafico` (`aplicado`, `realizado`, `receitadiaria`, `receitafutura`, `receitapublica`, `receitaprivada`, `receitabancaria`, `receitabovespa`, `captacaoliquida`, `netfinanceiro`, `netfundos`, `netprevidencia`, `netfixa`, `netvariavel`, `netoutros`, `netimobiliario`, `data`, `id`) VALUES
(7505812, 5012432, 19, 0, 0, 0, 0, 19, 0, 24289, 2302798, 115056, 272987, 1974235, 0, 323066, '2019-12-01 00:00:00', 21069),
(9229655, 8147224, 133, 26, 0, 0, 75, 32, 34043, 268965, 3771714, 1604488, 713967, 663711, 0, 1124379, '2019-12-01 00:00:00', 21241),
(2263710, 1278103, 331, 0, 0, 0, 331, 0, 400, 156622, 258776, 17762, 70225, 713244, 0, 61474, '2019-12-01 00:00:00', 21807),
(19633213, 1911223, 257, 0, 0, 0, 0, 257, 2110, 117360, 486289, 0, 143456, 921876, 0, 242241, '2019-12-01 00:00:00', 21831),
(1058001, 1202779, 0, 0, 0, 0, 0, 0, 30000, 45724, 139789, 93646, 381216, 396956, 0, 145448, '2019-12-01 00:00:00', 22288),
(163600, 30000, 0, 0, 0, 0, 0, 0, 30000, 30000, 0, 0, 0, 0, 0, 0, '2019-12-01 00:00:00', 23216),
(63440648, 43396516, 160, 30, 0, 0, 0, 119, 50380, 2770453, 8986680, 5030918, 10962129, 14194717, 103646, 1347973, '2019-12-01 00:00:00', 67114),
(16878001, 8058006, 0, 0, 0, 0, 0, 0, 0, 216298, 1304260, 4592312, 806155, 1060301, 0, 78680, '2019-12-01 00:00:00', 68934),
(31679350, 22206030, 507, 2, 0, 0, 89, 416, -13092, 1017436, 4278227, 2931530, 3184978, 10148715, 259116, 386029, '2019-12-01 00:00:00', 69152),
(30998850, 21114817, 575, 17, 0, 0, 0, 558, 30, 204947, 5470942, 7198061, 3134016, 4019060, 0, 1087791, '2019-12-01 00:00:00', 69505),
(19832601, 11770241, 2, 2, 0, 0, 0, 0, 38100, 934296, 4558409, 430967, 2724826, 2462012, 0, 659732, '2019-12-01 00:00:00', 69512),
(7505812, 5036361, 73, 0, 0, 0, 0, 73, -570, 16214, 2306825, 115092, 273022, 1998275, 0, 326932, '2019-12-03 00:00:00', 21069),
(9889656, 8803478, 416, 56, 0, 0, 75, 285, 77543, 464746, 3641436, 1604642, 1046559, 814638, 0, 1231458, '2019-12-03 00:00:00', 21241),
(2625487, 2099936, 331, 0, 0, 0, 331, 0, 1300, 210256, 638800, 61082, 109141, 985436, 0, 95220, '2019-12-03 00:00:00', 21807),
(21145014, 3012605, 461, 0, 0, 0, 0, 461, 17530, 232999, 841753, 0, 538010, 1168576, 0, 231267, '2019-12-03 00:00:00', 21831),
(4931002, 2707377, 10, 10, 0, 0, 0, 0, 130000, 87965, 758212, 93859, 745224, 873450, 0, 148667, '2019-12-03 00:00:00', 22288),
(2209600, 1348692, 46, 8, 0, 0, 0, 38, 30500, 70045, 218840, 29509, 188960, 719116, 0, 122221, '2019-12-03 00:00:00', 23216),
(54982367, 38384685, 5945, 5805, 0, 0, 0, 121, 404980, 2684476, 7519669, 4958134, 9612599, 12297389, 102647, 1209770, '2019-12-03 00:00:00', 67114),
(20878001, 12137793, 0, 0, 0, 0, 0, 0, 10000, 201667, 3324873, 4593009, 2841527, 1066991, 0, 109727, '2019-12-03 00:00:00', 68934),
(31679350, 22275177, 1427, 2, 0, 0, 89, 1336, 34158, 1052498, 4257544, 2932574, 3186437, 10202118, 256618, 387388, '2019-12-03 00:00:00', 69152),
(31043849, 21232402, 630, 21, 0, 0, 0, 610, 5220, 334557, 5442954, 7198380, 3135260, 4021471, 0, 1099779, '2019-12-03 00:00:00', 69505),
(19832601, 11789874, 45, 4, 0, 0, 17, 24, 38100, 809807, 4556887, 431034, 2728383, 2507753, 0, 756010, '2019-12-03 00:00:00', 69512);

-- --------------------------------------------------------

--
-- Estrutura da tabela `plancomissao`
--

CREATE TABLE `plancomissao` (
  `assessor` varchar(50) NOT NULL,
  `data` date NOT NULL,
  `comissao` float DEFAULT NULL,
  `repasseAssessor` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `plancomissao`
--

INSERT INTO `plancomissao` (`assessor`, `data`, `comissao`, `repasseAssessor`) VALUES
('A21241', '2019-11-01', NULL, 0),
('A69152', '2019-11-01', NULL, 31480.4),
('A69505', '2019-11-01', NULL, 2176.06),
('A21831', '2019-11-01', NULL, 0),
('A22288', '2019-11-01', NULL, 0),
('A69512', '2019-11-01', NULL, 2326.76),
('A68934', '2019-11-01', NULL, 1069.14),
('A67114', '2019-11-01', NULL, 25919.5),
('A21807', '2019-11-01', NULL, 0),
('A21069', '2019-11-01', NULL, 0),
('A21241', '2019-11-01', NULL, 0),
('A69152', '2019-11-01', NULL, 31480.4),
('A69505', '2019-11-01', NULL, 2176.06),
('A21831', '2019-11-01', NULL, 0),
('A22288', '2019-11-01', NULL, 0),
('A69512', '2019-11-01', NULL, 2326.76),
('A68934', '2019-11-01', NULL, 1069.14),
('A67114', '2019-11-01', NULL, 25919.5),
('A21807', '2019-11-01', NULL, 0),
('A21069', '2019-11-01', NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assessor`
--
ALTER TABLE `assessor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assessorCliente`
--
ALTER TABLE `assessorCliente`
  ADD KEY `fk_assessor_id` (`Assessor`),
  ADD KEY `fk_cliente_id` (`Cliente`);

--
-- Indexes for table `finalcomissao`
--
ALTER TABLE `finalcomissao`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `finalcomissao`
--
ALTER TABLE `finalcomissao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
