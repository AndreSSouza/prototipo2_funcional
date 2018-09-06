-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 07-Set-2018 às 01:31
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

-- --------------------------------------------------------

--
-- Estrutura da tabela `chamada`
--

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

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chamada`
--
ALTER TABLE `chamada`
  MODIFY `id_chamada` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `chamada`
--
ALTER TABLE `chamada`
  ADD CONSTRAINT `FK_aluno_chamada` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id_aluno`),
  ADD CONSTRAINT `FK_professor_chamada` FOREIGN KEY (`id_professor`) REFERENCES `professor` (`id_professor`),
  ADD CONSTRAINT `FK_turma_chamada` FOREIGN KEY (`id_turma`) REFERENCES `turma` (`id_turma`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
