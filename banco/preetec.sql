-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 07-Set-2018 às 01:37
-- Versão do servidor: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `preetec`
--
CREATE DATABASE IF NOT EXISTS `preetec` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `preetec`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

DROP TABLE IF EXISTS `aluno`;
CREATE TABLE `aluno` (
  `id_aluno` mediumint(8) UNSIGNED NOT NULL,
  `id_inscricao` mediumint(8) UNSIGNED DEFAULT NULL,
  `id_responsavel` mediumint(8) UNSIGNED DEFAULT NULL,
  `data_nascimento_aluno` date NOT NULL,
  `rg_aluno` varchar(14) DEFAULT NULL,
  `cpf` char(11) DEFAULT NULL,
  `logradouro_aluno` varchar(100) NOT NULL,
  `bairro_aluno` varchar(60) NOT NULL,
  `cidade_aluno` varchar(60) NOT NULL,
  `complemento_aluno` varchar(100) DEFAULT NULL,
  `cep_aluno` char(8) DEFAULT NULL,
  `escolaridade` enum('Ensino fundamental cursando','Ensino fundamental concluído','Ensino médio cursando','Ensino médio concluído') NOT NULL,
  `escola` varchar(120) NOT NULL,
  `matriculado` bit(1) NOT NULL DEFAULT b'0',
  `status_aluno` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`id_aluno`, `id_inscricao`, `id_responsavel`, `data_nascimento_aluno`, `rg_aluno`, `cpf`, `logradouro_aluno`, `bairro_aluno`, `cidade_aluno`, `complemento_aluno`, `cep_aluno`, `escolaridade`, `escola`, `matriculado`, `status_aluno`) VALUES
(3, 1, 2, '2000-10-25', '51635441621461', '16416154747', '', 'pari', 'sp', 'Proximo ao BrÃ¡s', '15248256', '', 'Nossa Senhora da Pari', b'0', b'1'),
(4, 2, 3, '2000-04-25', '', '', '', '00', '00', '00', '00', '', '00', b'0', b'1'),
(7, 5, 4, '2003-09-28', '', '01203123126', '', '00000', '0000000', '0000000', '00000000', '', '00', b'0', b'1'),
(8, 6, 5, '1999-03-14', '', '01453453434', '', '00', '00', '00', '67654634', '', '3245434', b'0', b'1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `chamada`
--

DROP TABLE IF EXISTS `chamada`;
CREATE TABLE `chamada` (
  `id_chamada` int(10) UNSIGNED NOT NULL,
  `id_turma` tinyint(3) UNSIGNED DEFAULT NULL,
  `id_aluno` mediumint(8) UNSIGNED DEFAULT NULL,
  `id_professor` smallint(5) UNSIGNED DEFAULT NULL,
  `data_chamada` date NOT NULL,
  `presenca` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `chamada`
--

INSERT INTO `chamada` (`id_chamada`, `id_turma`, `id_aluno`, `id_professor`, `data_chamada`, `presenca`) VALUES
(29, 1, 3, 1, '2018-08-09', 1),
(30, 1, 3, 1, '2018-08-09', 1),
(31, 1, 3, 1, '2018-08-09', 1),
(32, 1, 3, 1, '2018-08-09', 1),
(33, 1, 4, 1, '2018-08-09', 1),
(34, 1, 4, 1, '2018-08-09', 1),
(35, 1, 4, 1, '2018-08-09', 1),
(36, 1, 4, 1, '2018-08-09', 1),
(37, 1, 7, 1, '2018-08-09', 1),
(38, 1, 7, 1, '2018-08-09', 1),
(39, 1, 7, 1, '2018-08-09', 1),
(40, 1, 7, 1, '2018-08-09', 1),
(41, 1, 8, 1, '2018-08-09', 1),
(42, 1, 8, 1, '2018-08-09', 1),
(43, 1, 8, 1, '2018-08-09', 1),
(44, 1, 8, 1, '2018-08-09', 1),
(49, 1, 3, 1, '2018-08-31', 1),
(50, 1, 3, 1, '2018-08-31', 1),
(51, 1, 3, 1, '2018-08-31', 1),
(52, 1, 3, 1, '2018-08-31', 1),
(53, 1, 3, 1, '2018-08-31', 1),
(54, 1, 3, 1, '2018-08-31', 1),
(55, 1, 3, 1, '2018-08-31', 1),
(56, 1, 3, 1, '2018-08-31', 1),
(57, 1, 3, 1, '2018-08-31', 1),
(58, 1, 3, 1, '2018-08-31', 1),
(59, 1, 3, 1, '2018-08-31', 1),
(60, 1, 3, 1, '2018-08-31', 1),
(61, 1, 3, 1, '2018-08-31', 1),
(62, 1, 3, 1, '2018-08-31', 1),
(63, 1, 3, 1, '2018-08-31', 1),
(64, 1, 3, 1, '2018-08-31', 1),
(68, 1, 3, 1, '2018-08-31', 1),
(69, 1, 3, 1, '2018-08-31', 1),
(70, 1, 3, 1, '2018-08-31', 1),
(71, 1, 3, 1, '2018-08-31', 1),
(72, 1, 3, 1, '2018-08-31', 1),
(73, 1, 3, 1, '2018-08-31', 1),
(74, 1, 4, 1, '2018-08-31', 0),
(75, 1, 7, 1, '2018-08-31', 1),
(76, 1, 8, 1, '2018-08-31', 1),
(77, 1, 3, 1, '2018-08-31', 1),
(78, 1, 4, 1, '2018-08-31', 0),
(79, 1, 7, 1, '2018-08-31', 1),
(80, 1, 8, 1, '2018-08-31', 1),
(81, 1, 3, 1, '2018-08-31', 0),
(82, 1, 4, 1, '2018-08-31', 1),
(83, 1, 7, 1, '2018-08-31', 0),
(84, 1, 8, 1, '2018-08-31', 1),
(85, 1, 3, 1, '2018-08-31', 1),
(86, 1, 4, 1, '2018-08-31', 1),
(87, 1, 7, 1, '2018-08-31', 1),
(88, 1, 8, 1, '2018-08-31', 1),
(89, 1, 3, 1, '2018-08-31', 1),
(90, 1, 4, 1, '2018-08-31', 1),
(91, 1, 7, 1, '2018-08-31', 1),
(92, 1, 8, 1, '2018-08-31', 1),
(93, 1, 3, 1, '2018-08-31', 1),
(94, 1, 4, 1, '2018-08-31', 1),
(95, 1, 7, 1, '2018-08-31', 1),
(96, 1, 8, 1, '2018-08-31', 1),
(97, 1, 3, 1, '2018-08-31', 0),
(98, 1, 4, 1, '2018-08-31', 1),
(99, 1, 7, 1, '2018-08-31', 0),
(100, 1, 8, 1, '2018-08-31', 1),
(101, 1, 3, 1, '2018-08-31', 0),
(102, 1, 4, 1, '2018-08-31', 1),
(103, 1, 7, 1, '2018-08-31', 0),
(104, 1, 8, 1, '2018-08-31', 1),
(105, 1, 3, 1, '2018-08-31', 0),
(106, 1, 4, 1, '2018-08-31', 1),
(107, 1, 7, 1, '2018-08-31', 0),
(108, 1, 8, 1, '2018-08-31', 1),
(109, 1, 3, 1, '2018-08-31', 0),
(110, 1, 4, 1, '2018-08-31', 1),
(111, 1, 7, 1, '2018-08-31', 0),
(112, 1, 8, 1, '2018-08-31', 1),
(113, 1, 3, 1, '2018-08-31', 1),
(114, 1, 4, 1, '2018-08-31', 1),
(115, 1, 7, 1, '2018-08-31', 0),
(116, 1, 8, 1, '2018-08-31', 1),
(117, 1, 3, 1, '2018-09-05', 1),
(118, 1, 4, 1, '2018-09-05', 0),
(119, 1, 7, 1, '2018-09-05', 1),
(120, 1, 8, 1, '2018-09-05', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
CREATE TABLE `disciplina` (
  `id_disciplina` tinyint(3) UNSIGNED NOT NULL,
  `nome_disciplina` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`id_disciplina`, `nome_disciplina`) VALUES
(1, 'PortuguÃªs'),
(2, 'Java');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina_ministrada`
--

DROP TABLE IF EXISTS `disciplina_ministrada`;
CREATE TABLE `disciplina_ministrada` (
  `id_disciplina_ministrada` mediumint(8) UNSIGNED NOT NULL,
  `id_professor` smallint(5) UNSIGNED DEFAULT NULL,
  `id_disciplina` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `disciplina_ministrada`
--

INSERT INTO `disciplina_ministrada` (`id_disciplina_ministrada`, `id_professor`, `id_disciplina`) VALUES
(1, 1, 2),
(2, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `inscricao`
--

DROP TABLE IF EXISTS `inscricao`;
CREATE TABLE `inscricao` (
  `id_inscricao` mediumint(8) UNSIGNED NOT NULL,
  `data_inscricao` datetime NOT NULL,
  `nome_aluno` varchar(120) NOT NULL,
  `sexo_aluno` enum('MASCULINO','FEMININO','OUTRO') NOT NULL,
  `email` varchar(120) DEFAULT NULL,
  `telefone_responsavel` char(10) DEFAULT NULL,
  `celular_responsavel` char(11) DEFAULT NULL,
  `inscrito` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `inscricao`
--

INSERT INTO `inscricao` (`id_inscricao`, `data_inscricao`, `nome_aluno`, `sexo_aluno`, `email`, `telefone_responsavel`, `celular_responsavel`, `inscrito`) VALUES
(1, '2018-07-23 22:27:37', 'Andre Lucas da Silva Souza', 'MASCULINO', 'souza.andr79@gmail.com', '1146092577', '11961596530', b'0'),
(2, '2018-08-09 17:42:08', 'Francisco', 'MASCULINO', '', '', '', b'0'),
(5, '2018-08-09 17:43:41', 'Otavio', 'MASCULINO', '25@25', '', '', b'0'),
(6, '2018-08-09 17:43:54', 'Sergio', 'MASCULINO', 'mn@d', '', '', b'0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `id_login` smallint(5) UNSIGNED NOT NULL,
  `nome_usuario` varchar(24) NOT NULL,
  `senha` varchar(24) NOT NULL,
  `tipo_usuario` enum('PROFESSOR','ADMINISTRADOR') NOT NULL DEFAULT 'PROFESSOR',
  `status_login` enum('ATIVO','INATIVO') NOT NULL DEFAULT 'ATIVO'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`id_login`, `nome_usuario`, `senha`, `tipo_usuario`, `status_login`) VALUES
(1, 'admin', '123', 'ADMINISTRADOR', 'ATIVO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `matricula`
--

DROP TABLE IF EXISTS `matricula`;
CREATE TABLE `matricula` (
  `id_matricula` int(10) UNSIGNED NOT NULL,
  `id_turma` tinyint(3) UNSIGNED DEFAULT NULL,
  `id_aluno` mediumint(8) UNSIGNED DEFAULT NULL,
  `data_matricula` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `matricula`
--

INSERT INTO `matricula` (`id_matricula`, `id_turma`, `id_aluno`, `data_matricula`) VALUES
(7, 3, 3, '2018-07-25'),
(8, 1, 3, '2018-08-09'),
(9, 2, 3, '2018-08-09'),
(10, 1, 7, '2018-08-09'),
(11, 1, 8, '2018-08-09'),
(12, 1, 4, '2018-08-09');

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

DROP TABLE IF EXISTS `professor`;
CREATE TABLE `professor` (
  `id_professor` smallint(5) UNSIGNED NOT NULL,
  `data_nascimento_professor` date NOT NULL,
  `nome_professor` varchar(120) NOT NULL,
  `sexo_professor` enum('MASCULINO','FEMININO','OUTRO') NOT NULL,
  `cpf` char(11) DEFAULT NULL,
  `rg_professor` varchar(14) DEFAULT NULL,
  `logradouro_professor` varchar(100) NOT NULL,
  `bairro_professor` varchar(60) NOT NULL,
  `cidade_professor` varchar(60) NOT NULL,
  `complemento_professor` varchar(100) DEFAULT NULL,
  `cep_professor` char(8) DEFAULT NULL,
  `telefone_professor` char(10) DEFAULT NULL,
  `celular_professor` char(11) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `formacao` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`id_professor`, `data_nascimento_professor`, `nome_professor`, `sexo_professor`, `cpf`, `rg_professor`, `logradouro_professor`, `bairro_professor`, `cidade_professor`, `complemento_professor`, `cep_professor`, `telefone_professor`, `celular_professor`, `email`, `formacao`) VALUES
(1, '0000-00-00', 'Airton Teste', 'MASCULINO', NULL, NULL, 'xcvxc', 'xvxcv', 'xcv', NULL, NULL, NULL, NULL, NULL, 'cvxc');

-- --------------------------------------------------------

--
-- Estrutura da tabela `responsavel`
--

DROP TABLE IF EXISTS `responsavel`;
CREATE TABLE `responsavel` (
  `id_responsavel` mediumint(8) UNSIGNED NOT NULL,
  `nome_responsavel` varchar(120) NOT NULL,
  `sexo_responsavel` enum('MASCULINO','FEMININO','OUTRO') NOT NULL,
  `cpf` char(11) DEFAULT NULL,
  `rg_responsavel` varchar(14) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `responsavel`
--

INSERT INTO `responsavel` (`id_responsavel`, `nome_responsavel`, `sexo_responsavel`, `cpf`, `rg_responsavel`, `email`) VALUES
(2, 'Pai do Ano', 'MASCULINO', '10231313654', '45456564564564', 'souomelhor@gmail.com'),
(3, 'Melhor Pai', 'MASCULINO', '', '', '0@dsd'),
(4, 'Pia de Todos', 'MASCULINO', '53453453453', '', '4345@dgsdf'),
(5, 'Pai da Galaxia', 'MASCULINO', '68543544534', '', 'jfghd@gma.icom');

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

DROP TABLE IF EXISTS `turma`;
CREATE TABLE `turma` (
  `id_turma` tinyint(3) UNSIGNED NOT NULL,
  `nome_turma` varchar(2) NOT NULL,
  `quantidade_alunos` tinyint(3) UNSIGNED NOT NULL,
  `disponivel` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`id_turma`, `nome_turma`, `quantidade_alunos`, `disponivel`) VALUES
(1, 'A', 39, b'1'),
(2, 'B', 38, b'1'),
(3, 'C', 41, b'1'),
(4, 'D', 39, b'1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id_aluno`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD KEY `FK_inscricao_aluno` (`id_inscricao`),
  ADD KEY `FK_responsavel_aluno` (`id_responsavel`);

--
-- Indexes for table `chamada`
--
ALTER TABLE `chamada`
  ADD PRIMARY KEY (`id_chamada`),
  ADD KEY `FK_turma_chamada` (`id_turma`),
  ADD KEY `FK_aluno_chamada` (`id_aluno`),
  ADD KEY `FK_professor_chamada` (`id_professor`),
  ADD KEY `idx_data_chamada` (`data_chamada`);

--
-- Indexes for table `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`id_disciplina`);

--
-- Indexes for table `disciplina_ministrada`
--
ALTER TABLE `disciplina_ministrada`
  ADD PRIMARY KEY (`id_disciplina_ministrada`),
  ADD KEY `FK_professor_disciplina_ministrada` (`id_professor`),
  ADD KEY `FK_disciplina_disciplina_ministrada` (`id_disciplina`);

--
-- Indexes for table `inscricao`
--
ALTER TABLE `inscricao`
  ADD PRIMARY KEY (`id_inscricao`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_data_inscricao` (`data_inscricao`),
  ADD KEY `idx_nome_aluno` (`nome_aluno`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`id_matricula`),
  ADD KEY `FK_turma_matricula` (`id_turma`),
  ADD KEY `FK_aluno_matricula` (`id_aluno`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`id_professor`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_professor_nome` (`nome_professor`);

--
-- Indexes for table `responsavel`
--
ALTER TABLE `responsavel`
  ADD PRIMARY KEY (`id_responsavel`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`id_turma`),
  ADD KEY `idx_nome_turma` (`nome_turma`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aluno`
--
ALTER TABLE `aluno`
  MODIFY `id_aluno` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `chamada`
--
ALTER TABLE `chamada`
  MODIFY `id_chamada` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `id_disciplina` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `disciplina_ministrada`
--
ALTER TABLE `disciplina_ministrada`
  MODIFY `id_disciplina_ministrada` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inscricao`
--
ALTER TABLE `inscricao`
  MODIFY `id_inscricao` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `matricula`
--
ALTER TABLE `matricula`
  MODIFY `id_matricula` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `id_professor` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `responsavel`
--
ALTER TABLE `responsavel`
  MODIFY `id_responsavel` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `turma`
--
ALTER TABLE `turma`
  MODIFY `id_turma` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `aluno`
--
ALTER TABLE `aluno`
  ADD CONSTRAINT `FK_inscricao_aluno` FOREIGN KEY (`id_inscricao`) REFERENCES `inscricao` (`id_inscricao`),
  ADD CONSTRAINT `FK_responsavel_aluno` FOREIGN KEY (`id_responsavel`) REFERENCES `responsavel` (`id_responsavel`);

--
-- Limitadores para a tabela `chamada`
--
ALTER TABLE `chamada`
  ADD CONSTRAINT `FK_aluno_chamada` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id_aluno`),
  ADD CONSTRAINT `FK_professor_chamada` FOREIGN KEY (`id_professor`) REFERENCES `professor` (`id_professor`),
  ADD CONSTRAINT `FK_turma_chamada` FOREIGN KEY (`id_turma`) REFERENCES `turma` (`id_turma`);

--
-- Limitadores para a tabela `disciplina_ministrada`
--
ALTER TABLE `disciplina_ministrada`
  ADD CONSTRAINT `FK_disciplina_disciplina_ministrada` FOREIGN KEY (`id_disciplina`) REFERENCES `disciplina` (`id_disciplina`),
  ADD CONSTRAINT `FK_professor_disciplina_ministrada` FOREIGN KEY (`id_professor`) REFERENCES `professor` (`id_professor`);

--
-- Limitadores para a tabela `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `FK_aluno_matricula` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id_aluno`),
  ADD CONSTRAINT `FK_turma_matricula` FOREIGN KEY (`id_turma`) REFERENCES `turma` (`id_turma`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
