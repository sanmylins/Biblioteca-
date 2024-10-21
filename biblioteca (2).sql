-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Out-2024 às 22:50
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `emprestimos`
--

CREATE TABLE `emprestimos` (
  `CodEmprestimo` int(11) NOT NULL,
  `Data_Emprestimo` date DEFAULT NULL,
  `Data_Devolucao` date DEFAULT NULL,
  `CodLivro` int(11) DEFAULT NULL,
  `CodLeitor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `emprestimos`
--

INSERT INTO `emprestimos` (`CodEmprestimo`, `Data_Emprestimo`, `Data_Devolucao`, `CodLivro`, `CodLeitor`) VALUES
(1, '1999-07-13', '2000-01-02', 3, 2),
(2, '2006-07-14', '0000-00-00', 4, 1),
(3, '2014-08-18', '2015-01-05', 5, 5),
(4, '2012-02-02', '2022-02-12', 2, 2),
(5, '2023-11-18', '2023-11-18', 2, 6),
(6, '2014-05-30', '2018-08-26', 3, 2),
(7, '2001-09-27', '2002-08-26', 6, 5),
(8, '2018-04-17', '2018-05-17', 5, 2),
(9, '2014-12-30', '2015-01-30', 1, 3),
(10, '2024-10-08', '0000-00-00', 6, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `leitores`
--

CREATE TABLE `leitores` (
  `CodLeitor` int(11) NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `DtNasc` date DEFAULT NULL,
  `Celular` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `RA` int(11) DEFAULT NULL,
  `Endereco` varchar(255) DEFAULT NULL,
  `NumEnd` varchar(255) DEFAULT NULL,
  `Bairro` varchar(255) DEFAULT NULL,
  `CidadeUF` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `leitores`
--

INSERT INTO `leitores` (`CodLeitor`, `Nome`, `DtNasc`, `Celular`, `Email`, `RA`, `Endereco`, `NumEnd`, `Bairro`, `CidadeUF`) VALUES
(1, 'João Silva Sauro', '2001-04-01', '(11)98788-2311', 'joao@hotmail.com', 631113101, 'Rua Boa Esperança', '201', 'Janga', 'Paulista/PE'),
(2, 'Maria Silva Nascimento', '2011-07-21', '(11)98788-2311', 'maria@hotmail.com', 631113102, 'Rua da Vovó', '101', 'MAranguape I', 'Paulista/PE'),
(3, 'José bezerra Pinto', '1930-08-14', '(81)913177108', 'josebp@hotmail.com', 956512347, 'Rua Boa nova', '777', 'Uberlandia', 'Paulista/PE'),
(4, 'Daniel Orivaldo Da Silva', '1957-01-31', '(82)934572263', 'Orivaldo@hotmail.com', 655579908, 'Rua das Orquídeas', '775', 'Ibirapuera', 'Paulista/PE'),
(5, 'Antonio Carlos da Silva Moreira', '1942-06-12', '(81)975622892', 'tonhaodabanana@gmail.com', 400289220, 'Rua das Lamentações', '6666', 'Abreu e Lima', 'Paulista/PE'),
(6, 'Adalberto Da Silva Costa', '1982-12-07', '(81)944072243', 'Adalcavaloberto@gmail.com', 314151617, 'Rua Amarela', '2', 'Pedra de fogo', 'Paulista/PE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `CodLivro` int(11) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `Autor` varchar(255) DEFAULT NULL,
  `Editora` varchar(255) DEFAULT NULL,
  `Sinopse` varchar(255) DEFAULT NULL,
  `AnoPublicacao` int(11) DEFAULT NULL,
  `Genero` varchar(255) DEFAULT NULL,
  `Paginas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`CodLivro`, `Titulo`, `Autor`, `Editora`, `Sinopse`, `AnoPublicacao`, `Genero`, `Paginas`) VALUES
(1, 'Um Amor Para Esperar', 'Claudia Canção', 'Independente', '', 2021, 'Romance', 211),
(2, 'A moreninha', 'Joaquim Manuel de Macedo', 'B. L. Garnier', '', 1844, 'Romance', 299),
(3, 'Memórias Póstumas de Brás Cubas', 'Machado de Assis', 'Tipografia Nacional', '', 1881, 'Literatura experimental, humor', 318),
(4, 'Senhora', 'José de Alencar', 'B. L. Garnier', '', 1875, 'Romance', 299),
(5, 'O Cortiço', 'Aluísio Azevedo', 'Editora Todavia', '', 1890, 'Romance, Ficção', 304),
(6, 'Livro dos abraços', 'Eduardo Galeano', 'L&PM pocket', '', 1989, 'ficção', 271);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  ADD PRIMARY KEY (`CodEmprestimo`),
  ADD KEY `CodLivro` (`CodLivro`),
  ADD KEY `CodLeitor` (`CodLeitor`);

--
-- Índices para tabela `leitores`
--
ALTER TABLE `leitores`
  ADD PRIMARY KEY (`CodLeitor`);

--
-- Índices para tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`CodLivro`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  MODIFY `CodEmprestimo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `leitores`
--
ALTER TABLE `leitores`
  MODIFY `CodLeitor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `CodLivro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  ADD CONSTRAINT `emprestimos_ibfk_1` FOREIGN KEY (`CodLivro`) REFERENCES `livros` (`CodLivro`),
  ADD CONSTRAINT `emprestimos_ibfk_2` FOREIGN KEY (`CodLeitor`) REFERENCES `leitores` (`CodLeitor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
