-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 13/06/2023 às 19:56
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dblojaderoupas`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_cliente`
--

CREATE TABLE `tbl_cliente` (
  `pk_id_cliente` bigint(20) NOT NULL,
  `cli_nome` varchar(300) NOT NULL,
  `cli_endereco` varchar(350) NOT NULL,
  `cli_bairro` varchar(300) NOT NULL,
  `cli_cidade` varchar(200) NOT NULL,
  `cli_uf` varchar(2) NOT NULL,
  `cli_cep` varchar(9) NOT NULL,
  `cli_telefone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tbl_cliente`
--

INSERT INTO `tbl_cliente` (`pk_id_cliente`, `cli_nome`, `cli_endereco`, `cli_bairro`, `cli_cidade`, `cli_uf`, `cli_cep`, `cli_telefone`) VALUES
(1, 'Ian Lohan', 'Rua', 'Bairro', 'Cidade', 'PE', '36500-000', '81935310000'),
(3, 'Gabriel Ricardo', 'Rua', 'Bairro', 'Cidade', 'PE', '11111-111', '81000000000'),
(5, 'Gustavo Vinicius', 'Rua', 'Bairro', 'Cidade', 'PE', '00000-000', '81999999999'),
(7, 'Luiz Phillipe', 'Aqui', 'Ali', 'Algum lugar', 'PE', '88888-888', '81333333333'),
(9, 'Superman', 'Krypton', 'DC Comics', 'Alguma lá', 'AC', 'nao sei', '9102836475156'),
(10, 'Douglas Chalegre', 'desconhecido', 'desconhecido', 'desconhecida', 'PE', 'nao sei', 'algum lá'),
(11, 'Batman', 'Casa dos Wayne em Gotham', 'O nome dele é Bruce Wayne!!!!', 'Gotham', 'SP', 'legal', 'o do batman'),
(12, 'Jailson Mendes', 'Rua do Oco', 'Ai que delicia', 'Deliciaville', 'RO', 'laranja', 'peça'),
(13, 'Ben 10', 'Trailer do Vô dele', 'Estrada', 'alguma ai', 'MA', 'alien', 'o curso'),
(14, 'Irineu', 'Você não sabe nem eu', 'Eu não sei', 'Você não sabe nem eu', 'AC', 'brabo', 'Você não sabe'),
(16, 'orivaldo', 'pereira', 'da', 'silva', 'AC', '11111-111', '11111111111');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_produto`
--

CREATE TABLE `tbl_produto` (
  `pk_id_produto` bigint(20) NOT NULL,
  `pro_nome` varchar(300) NOT NULL,
  `pro_valor` double NOT NULL,
  `pro_estoque` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tbl_produto`
--

INSERT INTO `tbl_produto` (`pk_id_produto`, `pro_nome`, `pro_valor`, `pro_estoque`) VALUES
(1, 'camisa vermelha', 20, 7),
(3, 'camisa amarela', 20, 5),
(4, 'camisa azul', 20, 6),
(6, 'camisa preta', 20, 1),
(9, 'camisa rosa', 20, 17),
(10, 'calça jeans', 40, 10),
(11, 'tenis nike preto', 100, 38),
(12, 'chinelo rosa pink havainas', 30, 2),
(13, 'tenis nike azul', 100, 5),
(14, 'camisa roxa', 20.5, 5),
(16, 'bolsa homem-aranha', 25, 3),
(17, 'camisa transparente', 0.99, 3),
(18, 'omnitrix', 1000000, 0),
(19, 'calcinha masculina', 9.9, 52),
(20, 'calça formal preta', 50.5, 4),
(21, 'camisa ednaldo pereira', 5.5, 2),
(22, 'camisa manoel gomes', 5.5, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_usuario`
--

CREATE TABLE `tbl_usuario` (
  `pk_id_usuario` bigint(20) NOT NULL,
  `usu_nome` varchar(150) NOT NULL,
  `usu_login` varchar(100) NOT NULL,
  `usu_senha` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tbl_usuario`
--

INSERT INTO `tbl_usuario` (`pk_id_usuario`, `usu_nome`, `usu_login`, `usu_senha`) VALUES
(1, 'Administrador', 'admin', 'admin'),
(2, 'Ian', 'ianlohan.acc', 'nuncanavida1'),
(3, 'Deus', 'god', 'heaven'),
(4, 'Diabo', 'devil', 'hell'),
(5, 'Goku', 'oi_eu_sou_o_goku', 'kamehameha'),
(6, 'Naruto', 'kurama', 'rasengan'),
(7, 'Luffy', 'joyboy', 'gomugomunopassword'),
(8, 'Ichigo', 'hollow', 'BANKAI!'),
(9, 'Yusuke', 'hakusho', 'spirit_gun'),
(10, 'Yugi', 'horadoduelo', 'exodia'),
(11, 'Jotaro', 'yareyaredaze', 'STARPASSWORD'),
(12, 'Bo-BoBo', 'bobobo-bo', 'bo-bobo'),
(13, 'Yoh', 'shamanking', 'amidamaru'),
(14, 'Gon', '405', 'jajanken'),
(15, 'Usuario', 'user', 'password');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_vendas`
--

CREATE TABLE `tbl_vendas` (
  `pk_id_vendas` bigint(20) NOT NULL,
  `fk_cliente` bigint(20) NOT NULL,
  `ven_data_venda` date DEFAULT NULL,
  `ven_valor_liquido` double DEFAULT NULL,
  `ven_valor_bruto` double DEFAULT NULL,
  `desconto` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tbl_vendas`
--

INSERT INTO `tbl_vendas` (`pk_id_vendas`, `fk_cliente`, `ven_data_venda`, `ven_valor_liquido`, `ven_valor_bruto`, `desconto`) VALUES
(2, 1, '2023-06-11', 100, 120, 20),
(3, 9, '2023-06-11', 9.8, 9.9, 0.1),
(4, 3, '2023-06-11', 120, 120, 0),
(5, 12, '2023-06-11', 8.9, 9.9, 1),
(6, 12, '2023-06-11', 58, 60, 2),
(7, 5, '2023-06-11', 55, 80, 25),
(8, 11, '2023-06-11', 60, 75, 15),
(9, 13, '2023-06-11', 999999.9, 1000000, 0.1),
(10, 3, '2023-06-11', 710, 1010, 300),
(11, 14, '2023-06-11', 10, 20, 10),
(12, 16, '2023-06-11', 629, 656, 27),
(13, 9, '2023-06-11', 141.57999999999998, 171.57999999999998, 30),
(14, 7, '2023-06-11', 2500, 3000, 500),
(15, 1, '2023-06-12', 115, 120, 5),
(16, 7, '2023-06-12', 80, 80, 0),
(17, 10, '2023-06-12', 101, 101, 0),
(21, 1, '2023-06-13', 60, 60, 0),
(22, 11, '2023-06-13', 30, 60, 30),
(23, 7, '2023-06-13', 60, 60, 0),
(24, 1, '2023-06-13', 672.5, 672.5, 0),
(25, 10, '2023-06-13', 80, 80, 0),
(26, 1, '2023-06-13', 80, 80, 0),
(27, 1, '2023-06-13', 80, 80, 0),
(28, 1, '2023-06-13', 80, 80, 0),
(29, 1, '2023-06-13', 80, 80, 0),
(30, 1, '2023-06-13', 180, 180, 0),
(31, 1, '2023-06-13', 80, 80, 0),
(32, 1, '2023-06-13', 80, 80, 0),
(33, 1, '2023-06-13', 80, 80, 0),
(34, 1, '2023-06-13', 160, 160, 0),
(35, 1, '2023-06-13', 50.5, 60.5, 10),
(36, 5, '2023-06-13', 27.5, 27.5, 0),
(37, 1, '2023-06-13', 62, 62, 0),
(38, 9, '2023-06-13', 10, 11, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_vendas_produtos`
--

CREATE TABLE `tbl_vendas_produtos` (
  `pk_id_venda_produto` bigint(20) NOT NULL,
  `fk_produto` bigint(20) NOT NULL,
  `fk_vendas` bigint(20) NOT NULL,
  `ven_pro_valor` double NOT NULL,
  `ven_pro_quantidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tbl_vendas_produtos`
--

INSERT INTO `tbl_vendas_produtos` (`pk_id_venda_produto`, `fk_produto`, `fk_vendas`, `ven_pro_valor`, `ven_pro_quantidade`) VALUES
(1, 14, 12, 20.5, 32),
(15, 9, 21, 20, 3),
(16, 6, 22, 20, 3),
(17, 12, 23, 30, 2),
(24, 1, 35, 20, 1),
(25, 4, 35, 20, 1),
(26, 14, 35, 20.5, 1),
(29, 21, 37, 5.5, 2),
(30, 22, 37, 5.5, 2),
(31, 9, 37, 20, 2),
(32, 22, 36, 5.5, 3),
(33, 21, 36, 5.5, 2),
(35, 22, 38, 5.5, 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  ADD PRIMARY KEY (`pk_id_cliente`);

--
-- Índices de tabela `tbl_produto`
--
ALTER TABLE `tbl_produto`
  ADD PRIMARY KEY (`pk_id_produto`);

--
-- Índices de tabela `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  ADD PRIMARY KEY (`pk_id_usuario`);

--
-- Índices de tabela `tbl_vendas`
--
ALTER TABLE `tbl_vendas`
  ADD PRIMARY KEY (`pk_id_vendas`),
  ADD KEY `fk_cliente` (`fk_cliente`);

--
-- Índices de tabela `tbl_vendas_produtos`
--
ALTER TABLE `tbl_vendas_produtos`
  ADD PRIMARY KEY (`pk_id_venda_produto`),
  ADD KEY `fk_produto` (`fk_produto`),
  ADD KEY `fk_vendas` (`fk_vendas`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
  MODIFY `pk_id_cliente` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `tbl_produto`
--
ALTER TABLE `tbl_produto`
  MODIFY `pk_id_produto` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  MODIFY `pk_id_usuario` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `tbl_vendas`
--
ALTER TABLE `tbl_vendas`
  MODIFY `pk_id_vendas` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de tabela `tbl_vendas_produtos`
--
ALTER TABLE `tbl_vendas_produtos`
  MODIFY `pk_id_venda_produto` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tbl_vendas`
--
ALTER TABLE `tbl_vendas`
  ADD CONSTRAINT `tbl_vendas_ibfk_1` FOREIGN KEY (`fk_cliente`) REFERENCES `tbl_cliente` (`pk_id_cliente`);

--
-- Restrições para tabelas `tbl_vendas_produtos`
--
ALTER TABLE `tbl_vendas_produtos`
  ADD CONSTRAINT `tbl_vendas_produtos_ibfk_1` FOREIGN KEY (`fk_produto`) REFERENCES `tbl_produto` (`pk_id_produto`),
  ADD CONSTRAINT `tbl_vendas_produtos_ibfk_2` FOREIGN KEY (`fk_vendas`) REFERENCES `tbl_vendas` (`pk_id_vendas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;