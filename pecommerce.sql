-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 30-Maio-2018 às 19:12
-- Versão do servidor: 5.6.37
-- PHP Version: 7.1.8

SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pecommerce`
--
CREATE DATABASE IF NOT EXISTS `pecommerce` DEFAULT CHARACTER SET utf32 COLLATE utf32_general_ci;
USE pecommerce;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE IF NOT EXISTS "pedidos" (
  "id" int(11) NOT NULL,
  "id_cliente" int(11) NOT NULL,
  "nome_cliente" varchar(255) NOT NULL,
  "id_produtos" text CHARACTER SET utf8 NOT NULL,
  "nome_produtos" text NOT NULL,
  "preco" int(11) NOT NULL,
  "parcelas" int(11) NOT NULL,
  "status" varchar(255) CHARACTER SET utf8 NOT NULL,
  "data" date NOT NULL
);

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`id`, `id_cliente`, `nome_cliente`, `id_produtos`, `nome_produtos`, `preco`, `parcelas`, `status`, `data`) VALUES
(2, 2, 'Derek', '7, 8, 9', 'Smart TV 32'', Home Theater HT-12, Caixa de Som JBL', 1708, 2, 'Nota emitida', '2018-05-24'),
(3, 2, 'Derek', '14, 15', 'Liquidificador Smart Gourmet, Torradeira Smart', 3169, 7, 'Nota emitida', '2018-05-24'),
(4, 2, 'Derek', '11, 10', 'Lavadora de Roupas, Geladeira/Refrigerador', 3881, 11, 'Pagamento aprovado', '2018-05-24'),
(5, 2, 'Derek', '14', 'Liquidificador Smart Gourmet', 2118, 7, 'Pedido enviado', '2018-05-24'),
(6, 3, 'juca', '19, 18', 'God of War, Guarda Roupa Casal', 1298, 7, 'Em Processamento', '0000-00-00'),
(7, 3, 'juca', '19, 18, 16, 17', 'God of War, Guarda Roupa Casal, Mesa Olímpia, Armário p/ Cozinha', 1942, 10, 'Em Processamento', '0000-00-00'),
(8, 4, 'edu', '14, 13, 15', 'Liquidificador Smart Gourmet, Batedeira Mix Pro, Torradeira Smart', 6998, 1, 'Pagamento aprovado', '0000-00-00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE IF NOT EXISTS "produtos" (
  "id" int(11) NOT NULL,
  "nome" varchar(255) NOT NULL,
  "marca" varchar(255) NOT NULL,
  "descricao" varchar(255) NOT NULL,
  "categoria" varchar(255) NOT NULL,
  "preco" decimal(11,2) NOT NULL,
  "imagem" varchar(255) NOT NULL
);

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `marca`, `descricao`, `categoria`, `preco`, `imagem`) VALUES
(1, 'Galaxy J7', 'Samsung', 'Smartphone Samsung Galaxy J7 Metal Dual Chip Android 6.0 Tela 5.5'' 16GB 4G Câmera 13MP - Dourado', 'Celulares', '679.00', 'produto1.png'),
(2, 'Moto G5S', 'Motorola', 'Smartphone Motorola Moto G 5S Dual Chip Android 7.1.1 Nougat Tela 5.2'' Snapdragon 430 32GB 4G Câmera 16MP - Platinum', 'Celulares', '877.00', 'produto2.png'),
(3, 'iPhone 7 Plus', 'Apple', 'iPhone 7 Plus 32GB Ouro Rosa Tela Retina HD 5,5'' 3D Touch Câmera Dupla de 12MP - Apple', 'Celulares', '3147.00', 'produto3.png'),
(4, 'Teclado Gamer BK-152C', 'Exbom', 'Teclado USB Gamer Semi Mecanico Iluminado Bk-152c', 'Informática', '43.00', 'produto4.png'),
(5, 'Monitor LED 19.5''', 'LG', 'Monitor LED 19,5'' LG 20M37AA-B.AWZ', 'Informática', '370.00', 'produto5.png'),
(6, 'Mouse Wireless', 'Dell', 'Mouse Wireless WM126 Preto - Dell', 'Informática', '59.00', 'produto6.png'),
(7, 'Smart TV 32''', 'Samsung', 'Smart TV LED 32'' Samsung 32J4300 HD com Conversor Digital 2 HDMI 1 USB Wi-Fi 120Hz', 'TVs, Áudio e Home Theaters', '1080.00', 'produto7.png'),
(8, 'Home Theater HT-12', 'Mondial', 'Home Theater HT-12 Subwoofer, 5.1 Canais, USB, 75W RMS - Mondial', 'TVs, Áudio e Home Theaters', '249.00', 'produto8.png'),
(9, 'Caixa de Som JBL', 'JBL', 'Caixa de Som Portátil JBL Flip 4 Conexão Bluetooth à Prova Dágua - 16W Original', 'TVs, Áudio e Home Theaters', '379.00', 'produto9.png'),
(10, 'Geladeira/Refrigerador', 'Electrolux', 'Geladeira/ Refrigerador Electrolux Frost Free DW42X 380L Inox', 'Eletrodomésticos e Split', '2108.51', 'produto10.png'),
(11, 'Lavadora de Roupas', 'Brastemp', 'Lavadora de Roupas Brastemp 11kg BWS11 Cesto Smart Wave - Branco', 'Eletrodomésticos e Split', '1419.78', 'produto11.png'),
(12, 'Ar Condicionado Split', 'Springer', 'Ar Condicionado Split Hi-Wall Springer Midea 12.000 BTUs Frio 220V', 'Eletrodomésticos e Split', '1248.71', 'produto12.png'),
(13, 'Batedeira Mix Pro', 'Tramontina', 'Batedeira Mix Pro 127V Eletroportáteis Vermelho - Tramontina', 'Eletroportáteis', '3828.90', 'produto13.png'),
(14, 'Liquidificador Smart Gourmet', 'Tramontina', 'Liquidificador Smart Gourmet 127V Eletroportáteis Vermelho - Tramontina', 'Eletroportáteis', '2117.90', 'produto14.png'),
(15, 'Torradeira Smart', 'Tramontina', 'Torradeira Smart 220V Eletroportáteis - Tramontina', 'Eletroportáteis', '1050.90', 'produto15.png'),
(16, 'Mesa Olímpia', 'Leifer', 'Mesa Olímpia New 1,60x0,80m Canela - Leifer', 'Móveis e Decoração', '424.99', 'produto16.png'),
(17, 'Armário p/ Cozinha', 'Poquema', 'Armário P/ Cozinha 8 Portas 2 Gavetas - Poquema Kit Manu 8p - Branco/Preto', 'Móveis e Decoração', '219.00', 'produto17.png'),
(18, 'Guarda Roupa Casal', 'Quarta Divisao Moveis', 'Guarda Roupa Casal Sevilha Mdp 3 Portas Correr 6 Gavetas Com Espelho Nevada', 'Móveis e Decoração', '1099.00', 'produto18.png'),
(19, 'God of War', 'Playstation', 'Game God Of War - PS4', 'Games, Livros e Filmes', '199.00', 'produto19.png'),
(20, 'Coleção Bluray Harry Potter', 'Warner', 'Coleção Completa Blu-ray Harry Potter: Anos 1-7B (8 Discos)', 'Games, Livros e Filmes', '149.90', 'produto20.png'),
(31, 'As Crônicas de Gelo e Fogo - A Guerra dos Tronos', 'LeYa', 'Livro - As Crônicas de Gelo e Fogo - A Guerra dos Tronos Livro Um [Edição Comemorativa]', 'Games, Livros e Filmes', '34.95', 'produto21.png'),
(32, 'Samsung Galaxy S9', 'Samsung', 'Smartphone Samsung Galaxy S9 Dual Chip Android 8.0 Tela 5.8" Octa-Core 2.8GHz 128GB 4G Câmera 12MP - Ultravioleta', 'Celulares', '4299.00', 'produto22.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS "usuarios" (
  "id" int(11) NOT NULL,
  "nome" varchar(255) NOT NULL,
  "login" varchar(255) NOT NULL,
  "senha" varchar(255) NOT NULL,
  "email" varchar(255) NOT NULL,
  "cpf" varchar(255) NOT NULL,
  "endereco" varchar(255) NOT NULL,
  "complemento" varchar(255) NOT NULL,
  "cep" int(11) NOT NULL,
  "bairro" varchar(255) NOT NULL,
  "cidade" varchar(255) NOT NULL,
  "estado" varchar(255) NOT NULL,
  "tipo" varchar(255) NOT NULL
);

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `login`, `senha`, `email`, `cpf`, `endereco`, `complemento`, `cep`, `bairro`, `cidade`, `estado`, `tipo`) VALUES
(1, 'vendedor', 'vendedor', 'YWRtaW4=', 'vendedor@gmail.com', '2147483647', 'rua 12', 'casa 1', 11111111, 'borel', 'rio de janeiro', 'RJ', 'vendedor'),
(2, 'Derek', 'derek', 'MTIz', 'derek@gmail.com', '2147483647', 'Rua 123', '204', 1231231, 'Barra', 'Rio de Janeiro', 'RJ', 'usuario'),
(3, 'juca', 'juca', 'MTIz', 'juca@gmail.com', '12312312311', 'rua do juca', '215', 11111111, 'juca da tijuca', 'rio de juqueiro', 'rj', 'usuario'),
(4, 'edu', 'educu', 'MTIz', 'edu@cu.com', '12312432141', 'asdfkjashbd', 'kasjbdnsaj', 12312312, 'adskjfnasjdn', 'kjsbndkjansd', 'as', 'usuario'),
(5, 'Luan', 'luans', 'MjU4', 'luan@2s.com', '89494916513', 'rua 5', 'ap 1', 62898468, 'cdd', 'rj', 'rj', 'usuario');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY ("id");

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY ("id");

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY ("id");

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY "id" int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY "id" int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY "id" int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
