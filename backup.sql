-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 11/09/2026 às 11:42
-- Versão do servidor: 8.4.8
-- Versão do PHP: 8.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `microbloh`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`) VALUES
(1, 'Tecnologia'),
(3, 'Entretenimento');

-- --------------------------------------------------------

--
-- Estrutura para tabela `noticias`
--

CREATE TABLE `noticias` (
  `id` int NOT NULL,
  `destaque` enum('sim','nao') DEFAULT NULL,
  `data` datetime DEFAULT CURRENT_TIMESTAMP,
  `imagem` varchar(100) NOT NULL,
  `texto` varchar(300) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `resumo` text NOT NULL,
  `usuario_id` int NOT NULL,
  `categoria_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `noticias`
--

INSERT INTO `noticias` (`id`, `destaque`, `data`, `imagem`, `texto`, `titulo`, `resumo`, `usuario_id`, `categoria_id`) VALUES
(1, 'sim', '2026-09-08 09:22:56', 'tecnologia-educacao.jpg', 'A inteligência artificial vem se tornando cada vez mais presente na rotina das pessoas. Ferramentas de IA podem ajudar em pesquisas, estudos, organização de tarefas e criação de conteúdos. Com o avanço da tecnologia, novos recursos devem continuar surgindo e facilitando diversas atividades.', 'Inteligência artificial obteve espaço no dia a dia', 'Ferramentas de inteligência artificial estão sendo utilizadas em atividades cotidianas.', 2, 1),
(2, 'sim', '2026-09-08 09:31:10', 'jogos-eletronicos.jpg', 'Os jogos eletrônicos fazem parte do entretenimento de milhões de pessoas. Atualmente, é possível jogar em computadores, consoles e celulares. Além dos grandes lançamentos, jogos independentes também vêm ganhando destaque entre os jogadores. ', 'Jogos eletrônicos continuam conquistando novos jogadores', 'O mercado de games continua crescendo e atraindo pessoas de diferentes idades. ', 1, 3),
(4, 'nao', '2026-09-08 09:35:42', 'filmes-streaming.jpg', 'Os serviços de streaming mudaram a forma como muitas pessoas assistem a filmes e séries. Com diferentes opções de gêneros e produções, o público pode escolher o que assistir diretamente pela internet. As plataformas também estão investindo em produções próprias para conquistar novos espectadores', 'Filmes e séries ganham cada vez mais espaço no streaming', 'Plataformas de streaming continuam investindo em novos filmes e séries para atrair o público.', 2, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `email` varchar(100) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `tipo_usuario` enum('admin','editor') NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `nome`, `tipo_usuario`, `senha`) VALUES
(1, 'ana@email.com', 'Ana silva', 'admin', '123abc'),
(2, 'bruno@email.com', 'Bruno Souza', 'admin', 'abc456');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `noticias`
--
ALTER TABLE `noticias`
  ADD CONSTRAINT `noticias_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `noticias_ibfk_2` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
