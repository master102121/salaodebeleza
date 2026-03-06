-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 11/08/2023 às 12:23
-- Versão do servidor: 8.0.23
-- Versão do PHP: 8.1.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `beautymanager`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `administradores`
--

CREATE TABLE `administradores` (
  `id` int NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `valor` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `deleted_at` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alias` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `administradores`
--

INSERT INTO `administradores` (`id`, `name`, `valor`, `created_by`, `created_at`, `updated_at`, `status`, `deleted_at`, `alias`) VALUES
(1, '1', '1', 1, '2023-05-23 13:16:26', NULL, 1, NULL, 'admin');

-- --------------------------------------------------------

--
-- Estrutura para tabela `agendamentos`
--

CREATE TABLE `agendamentos` (
  `id` int UNSIGNED NOT NULL,
  `id_cliente` int UNSIGNED DEFAULT NULL,
  `id_profissional` int UNSIGNED DEFAULT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valor` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `servico_id` int NOT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('confirmado','cancelado') COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` enum('yellow','green','red','blue','purple') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `agendamentos`
--

INSERT INTO `agendamentos` (`id`, `id_cliente`, `id_profissional`, `descricao`, `valor`, `servico_id`, `start_date`, `end_date`, `status`, `color`, `created_at`, `updated_at`) VALUES
(1, 25, 25, 'Agendado pelo App', '25.00', 1, '1970-01-01 03:00:00', '09:00', 'confirmado', 'yellow', '2023-07-01 20:52:52', '2023-07-01 20:52:52'),
(2, 25, 25, 'Agendado pelo App', '15.00', 6, '2023-08-07 12:00:00', '10:00', 'confirmado', 'yellow', '2023-07-01 20:59:22', '2023-07-01 20:59:22'),
(3, 25, 25, 'Agendado pelo App', '15.00', 12, '2023-08-07 13:00:00', '11:00', 'confirmado', 'yellow', '2023-07-01 21:07:10', '2023-07-01 21:07:10'),
(4, 25, 25, 'Agendado pelo App', '15.00', 6, '2023-01-07 15:00:00', '13:00', 'confirmado', 'yellow', '2023-07-01 21:08:21', '2023-07-01 21:08:21');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ajustes`
--

CREATE TABLE `ajustes` (
  `id` int NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `valor` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alias_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `deleted_at` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `model` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `arquivo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `onlyadmins` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `ajustes`
--

INSERT INTO `ajustes` (`id`, `name`, `valor`, `alias_name`, `created_by`, `created_at`, `updated_at`, `status`, `deleted_at`, `model`, `arquivo`, `onlyadmins`) VALUES
(1, 'Cores do sistema', NULL, NULL, 1, '2023-05-23 12:44:56', NULL, 1, NULL, 'Coresdosistema', 'sistemcolor', 1),
(6, 'Logotipo & Imagens', NULL, NULL, 1, '2023-05-23 12:47:42', NULL, 1, NULL, 'Logotipoeimagem', 'logoeimagens', 1),
(7, 'Aplicativo', '1.25', 'app.version', 1, '2023-05-23 12:47:42', NULL, 1, NULL, 'Android', 'android', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `Android`
--

CREATE TABLE `Android` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `alias_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `valor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `updated_by` int DEFAULT NULL,
  `tipodevalor` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'texto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `Android`
--

INSERT INTO `Android` (`id`, `name`, `alias_name`, `created_at`, `updated_at`, `status`, `valor`, `updated_by`, `tipodevalor`) VALUES
(1, 'appname', 'Nome do App', '2023-06-23 12:12:50', '2023-06-23 17:44:55', 1, 'Gerenciador da Beleza', 25, 'text'),
(2, 'versionname', 'Versão do App', '2023-06-23 12:12:50', NULL, 1, '1.25', 25, 'text'),
(3, 'naoselecionado', 'Cor - Item não selecionado (Loja)', '2023-06-23 12:12:50', NULL, 1, '#69182e', 25, 'color'),
(4, 'selecionado', 'Cor - Item não selecionado (Loja)', '2023-06-23 12:12:50', NULL, 1, '#f2edef', 25, 'color'),
(5, 'firebasekey', 'Chave Firebase Clloud', '2023-06-23 12:12:50', NULL, 1, 'AAAAJqAcuRc:APA91bHnjNlq4B66nuhUyn7Gm6l4OqLP-NXInWaU0J7CzJooZ_zP3eYt9x7O8S2WgNixIkafSHTZct4OTwpOMTkARE3Q9c5kfaemd8URrnDec7bfxAu2R-zR9yvamw2FlYV-GD0_CaZS', 25, 'text'),
(6, 'firebaseid', 'ID Firebase Clloud', '2023-06-23 12:12:50', NULL, 1, '165894994199', 25, 'text'),
(7, 'onesignalkey', 'OneSignal Key', '2023-06-23 12:12:50', NULL, 1, 'd36d1dcb-89ef-4810-b1a9-0d13c69889ad', 25, 'text');

-- --------------------------------------------------------

--
-- Estrutura para tabela `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `appointments`
--

INSERT INTO `appointments` (`id`, `created_at`, `updated_at`, `name`, `description`, `status_id`) VALUES
(1, NULL, NULL, 'Quos deserunt aspernatur ex.', 'Deleniti et quia neque dolore veniam laudantium corrupti.', 3),
(2, NULL, NULL, 'Est nostrum maiores in nesciunt.', 'Sit eos est aut beatae tenetur autem blanditiis.', 4),
(3, NULL, NULL, 'Tenetur a ut.', 'Voluptatibus placeat ut ut sed qui cumque.', 1),
(4, NULL, NULL, 'Quis qui recusandae.', 'Nostrum fuga consequatur qui et delectus hic. Eos deleniti sint praesentium qui.', 4),
(5, NULL, NULL, 'Dolor tenetur praesentium.', 'Quo explicabo et tempore qui maiores adipisci. Dolorem voluptas ut aut ut sapiente harum.', 4),
(6, NULL, NULL, 'Nostrum omnis impedit consequatur.', 'Minus dignissimos sed et.', 3),
(7, NULL, NULL, 'Aliquid delectus pariatur harum delectus.', 'Esse assumenda non itaque et.', 1),
(8, NULL, NULL, 'Provident ex fugiat rerum.', 'Voluptatem rerum quis nostrum aut est non.', 3),
(9, NULL, NULL, 'Pariatur atque adipisci.', 'Odio magni perspiciatis nam quibusdam quaerat et.', 1),
(10, NULL, NULL, 'Repudiandae omnis repellendus.', 'Ea dolorum placeat odio quia sit delectus tempora. Eveniet aspernatur doloremque quasi facilis laudantium minus magni.', 2),
(11, NULL, NULL, 'Voluptates saepe autem id.', 'Expedita dolores maiores aut provident.', 3),
(12, NULL, NULL, 'Et numquam a repudiandae quisquam.', 'Quos in est omnis nulla libero nemo nulla blanditiis. Voluptas nulla vero eum culpa.', 4),
(13, NULL, NULL, 'Beatae quaerat sit nemo.', 'Autem autem eaque sapiente praesentium.', 2),
(14, NULL, NULL, 'Unde libero atque.', 'Inventore sunt quos non in unde.', 3),
(15, NULL, NULL, 'Architecto in est voluptate quibusdam.', 'Quia iure a qui quia quaerat rem.', 1),
(16, NULL, NULL, 'Quam harum tenetur rerum.', 'Suscipit sint unde voluptate possimus voluptatum. Incidunt quisquam doloribus eligendi mollitia.', 3),
(17, NULL, NULL, 'Quibusdam ut sapiente qui.', 'Nihil eum fugit rerum neque iste aliquid ut. A modi error blanditiis aut sint.', 4),
(18, NULL, NULL, 'Molestias qui cum nulla.', 'Nemo ullam perferendis qui aut consequatur incidunt.', 2),
(19, NULL, NULL, 'Itaque tempora eaque necessitatibus placeat qui.', 'Est distinctio harum sapiente earum fugiat eveniet quaerat.', 4),
(20, NULL, NULL, 'A ut voluptatum odio quo.', 'Repudiandae adipisci earum repellat odio.', 4),
(21, NULL, NULL, 'Iusto rerum nisi ex.', 'Officiis sit eos dolores esse enim aliquid perspiciatis omnis.', 2),
(22, NULL, NULL, 'Id aut quaerat nulla.', 'Minima aut ab esse.', 4),
(23, NULL, NULL, 'A vero voluptatem modi in.', 'Odio non sequi dolores est adipisci vel. Architecto ut aspernatur corporis aut voluptatem rem nemo.', 1),
(24, NULL, NULL, 'Reiciendis aut tempore quos sed eos.', 'Soluta voluptates magni eveniet officiis rerum. Blanditiis possimus quaerat culpa excepturi totam error quam sequi.', 4),
(25, NULL, NULL, 'Iste consequuntur velit aliquid.', 'Ex vero et ea ipsa iusto. Est enim earum quis.', 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `areas`
--

CREATE TABLE `areas` (
  `id` int NOT NULL,
  `nome` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int DEFAULT NULL,
  `obs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `areas`
--

INSERT INTO `areas` (`id`, `nome`, `user_id`, `obs`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Cabeleireiro(a)', 1, NULL, '2022-06-10 18:59:39', '2022-06-10 15:59:39', 1),
(2, 'Barbearia', 1, NULL, '2022-06-10 18:59:39', '2022-06-10 15:59:39', 1),
(3, 'Dermatologista', 1, NULL, '2022-06-10 18:59:39', '2022-06-10 15:59:39', 1),
(4, 'Manicure', 1, NULL, '2022-06-10 18:59:39', '2022-06-10 15:59:39', 1),
(5, 'Loja de Produtos', 1, NULL, '2022-06-10 18:59:39', '2022-06-10 15:59:39', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `bookings`
--

CREATE TABLE `bookings` (
  `id` int NOT NULL,
  `nome` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int DEFAULT NULL,
  `dia` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `periodo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cliente` int NOT NULL,
  `servicos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `forma_pag` int NOT NULL DEFAULT '1',
  `obs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'agendado',
  `profissional_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `bookings`
--

INSERT INTO `bookings` (`id`, `nome`, `user_id`, `dia`, `periodo`, `cliente`, `servicos`, `valor`, `forma_pag`, `obs`, `created_at`, `updated_at`, `status`, `profissional_id`) VALUES
(1, 'agenda de teste', 25, '13 de julho de 2023', '10h00 a 11h00', 25, 'Corte de cabelo', '25,00', 1, NULL, '2023-06-12 19:55:55', NULL, 'agendado', 25);

-- --------------------------------------------------------

--
-- Estrutura para tabela `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `alias_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int DEFAULT '1',
  `obs` text COLLATE utf8mb4_general_ci,
  `drawble` int NOT NULL,
  `imagem_url` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categories`
--

INSERT INTO `categories` (`id`, `name`, `alias_name`, `created_at`, `updated_at`, `status`, `obs`, `drawble`, `imagem_url`) VALUES
(1, 'All', 'Todos', '2023-06-09 15:19:05', NULL, 1, NULL, 2131165272, 'https://media.istockphoto.com/id/175507292/pt/foto/red-mundo-asi%C3%A1tica-hemisf%C3%A9rio-oriental.jpg?s=612x612&w=0&k=20&c=eHuopZSfVjBGtsV9bQqidTEjB72uhOZp_e8iu-8cWxk='),
(2, 'Food', 'Cabelo', '2023-06-09 15:19:05', '2023-06-19 14:37:44', 1, NULL, 2131165325, 'https://static8.depositphotos.com/1004449/957/v/450/depositphotos_9578966-stock-illustration-beautiful-girl-in-lines.jpg'),
(3, 'Drinks', 'Pele', '2023-06-09 15:19:05', '2023-06-19 14:41:47', 1, NULL, 2131165321, 'https://w7.pngwing.com/pngs/595/426/png-transparent-businessperson-cartoon-business-suit-s-comics-photography-cartoon.png'),
(4, 'Clothing & Accessories', 'Maquiagem', '2023-06-09 15:19:05', '2023-06-19 14:42:54', 1, NULL, 2131165290, 'https://i.pinimg.com/originals/4c/82/58/4c82582f3ba8def7b3967276b862ea82.jpg'),
(5, 'Technology', 'Masculino', '2023-06-09 15:19:05', '2023-06-19 14:44:35', 1, NULL, 2131165434, 'https://static.vecteezy.com/system/resources/previews/006/046/341/original/barbershop-logo-vintage-classic-style-salon-fashion-haircut-pomade-badge-icon-simple-minimalist-modern-barber-pole-razor-shave-scissor-razor-blade-retro-symbol-luxury-elegant-design-free-vector.jpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `clients`
--

CREATE TABLE `clients` (
  `id` bigint UNSIGNED NOT NULL,
  `file_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `progress` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `clients`
--

INSERT INTO `clients` (`id`, `file_id`, `name`, `city`, `company`, `progress`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Mr. Maxwell Fahey MD', 'East Mauriceside', 'Walter-Stracke', 26, '2022-01-28 17:12:22', '2022-06-01 17:12:22'),
(2, NULL, 'Kara Schoen', 'Lake Braxton', 'Schmitt-Emmerich', 89, '2022-02-09 17:12:22', '2022-06-01 17:12:22'),
(3, NULL, 'Katrina Metz', 'Gerlachland', 'Marquardt-Rempel', 55, '2022-04-15 17:12:22', '2022-06-01 17:12:22'),
(4, NULL, 'Kathryn Kemmer III', 'Port Audreyton', 'Brekke LLC', 90, '2022-03-28 17:12:22', '2022-06-01 17:12:22'),
(5, NULL, 'Michele Douglas', 'North Carrieville', 'Kautzer, Fritsch and Nader', 80, '2022-02-26 17:12:22', '2022-06-01 17:12:22'),
(6, NULL, 'Dixie Hintz', 'Murphyfort', 'Boyer Group', 32, '2022-03-29 17:12:22', '2022-06-01 17:12:22'),
(7, NULL, 'Adeline Schowalter', 'Myastad', 'Emmerich, Vandervort and Koss', 53, '2022-03-19 17:12:22', '2022-06-01 17:12:22'),
(8, NULL, 'Jeramie Cremin', 'Devanview', 'Bode, Wolff and Barrows', 79, '2022-05-07 17:12:22', '2022-06-01 17:12:22'),
(9, NULL, 'Terrell Powlowski', 'Conniebury', 'Kerluke and Sons', 39, '2022-04-02 17:12:22', '2022-06-01 17:12:22'),
(10, NULL, 'Brielle Rosenbaum', 'North Harley', 'Kilback Ltd', 78, '2022-05-13 17:12:22', '2022-06-01 17:12:22'),
(11, NULL, 'Meggie Smith', 'Kaleymouth', 'Treutel, Turner and Willms', 47, '2022-02-04 17:12:22', '2022-06-01 17:12:22'),
(12, NULL, 'Dr. Thurman Schneider MD', 'West Aidenborough', 'Cronin, Lang and Daniel', 56, '2022-01-20 17:12:22', '2022-06-01 17:12:22'),
(13, NULL, 'Alysson Bins', 'East Johnnie', 'Quitzon PLC', 44, '2022-05-21 17:12:22', '2022-06-01 17:12:22'),
(14, NULL, 'Brian Bernhard', 'Port Brandi', 'Kohler, Hickle and O\'Reilly', 45, '2022-05-24 17:12:22', '2022-06-01 17:12:22'),
(15, NULL, 'Zena Corwin Sr.', 'Kacieland', 'Weissnat-Kshlerin', 46, '2022-03-11 17:12:22', '2022-06-01 17:12:22'),
(16, NULL, 'Prof. Jeromy VonRueden', 'Simonisville', 'Hamill, Balistreri and Braun', 43, '2022-03-15 17:12:22', '2022-06-01 17:12:22'),
(17, NULL, 'Prof. Maria Ritchie Jr.', 'Port Mckennahaven', 'Beier, Corkery and Turner', 66, '2021-12-23 17:12:22', '2022-06-01 17:12:22'),
(18, NULL, 'Dr. Leland Bernhard', 'Kacieborough', 'Miller and Sons', 51, '2022-02-13 17:12:22', '2022-06-01 17:12:22'),
(19, NULL, 'Dario Hudson', 'Adrientown', 'Weissnat-Carroll', 53, '2021-12-07 17:12:22', '2022-06-01 17:12:22'),
(20, NULL, 'Agnes Kerluke I', 'Port Claudehaven', 'Block and Sons', 28, '2022-04-10 17:12:22', '2022-06-01 17:12:22'),
(21, NULL, 'Randall Hauck', 'East Robbchester', 'Stokes-Yost', 95, '2022-05-02 17:12:22', '2022-06-01 17:12:22'),
(22, NULL, 'Ms. Janessa Schaden DDS', 'New Bettiefurt', 'Oberbrunner Inc', 63, '2022-05-15 17:12:22', '2022-06-01 17:12:22'),
(23, NULL, 'Mr. Florencio Borer DDS', 'Karleefort', 'Paucek LLC', 70, '2022-05-08 17:12:22', '2022-06-01 17:12:22'),
(24, NULL, 'Guiseppe Labadie', 'Port Christiana', 'White LLC', 93, '2021-12-14 17:12:22', '2022-06-01 17:12:22'),
(25, NULL, 'Dr. Araceli Mueller', 'Port Arelymouth', 'Padberg Ltd', 38, '2021-12-06 17:12:22', '2022-06-01 17:12:22'),
(26, NULL, 'Ashlee Williamson II', 'Cloydtown', 'Heathcote, Lemke and Rodriguez', 85, '2022-01-31 17:12:22', '2022-06-01 17:12:22'),
(27, NULL, 'Mozell Rempel DVM', 'Santiagoside', 'Kerluke-Koss', 33, '2022-03-30 17:12:22', '2022-06-01 17:12:22'),
(28, NULL, 'Miss Carlee Wiegand PhD', 'Ethashire', 'Lehner, Satterfield and Kutch', 73, '2022-04-13 17:12:22', '2022-06-01 17:12:22'),
(29, NULL, 'Rylan Wehner', 'West Bradyport', 'Eichmann, Zemlak and O\'Reilly', 84, '2022-03-26 17:12:22', '2022-06-01 17:12:22'),
(30, NULL, 'Dr. Lawson Bednar', 'Estefanialand', 'Rice, Runolfsdottir and King', 78, '2022-04-14 17:12:22', '2022-06-01 17:12:22'),
(31, NULL, 'Rico Leannon', 'Grahammouth', 'Boyle-King', 48, '2022-03-08 17:12:22', '2022-06-01 17:12:22'),
(32, NULL, 'Cristobal Kohler', 'Kasandraland', 'Paucek Group', 70, '2022-03-24 17:12:22', '2022-06-01 17:12:22'),
(33, NULL, 'Leann Carter', 'New Elliothaven', 'Dooley and Sons', 55, '2022-04-08 17:12:22', '2022-06-01 17:12:22'),
(34, NULL, 'Murphy Homenick', 'Millerview', 'Hegmann, Murazik and Kozey', 27, '2022-04-22 17:12:22', '2022-06-01 17:12:22'),
(35, NULL, 'Kaleb Schroeder', 'East Danikaview', 'Hamill and Sons', 63, '2022-02-23 17:12:22', '2022-06-01 17:12:22'),
(36, NULL, 'Mr. Raymond Fritsch', 'New Idahaven', 'Dickinson-Auer', 41, '2022-01-25 17:12:22', '2022-06-01 17:12:22'),
(37, NULL, 'Nyasia Walker', 'Dockshire', 'Hagenes Inc', 39, '2022-01-29 17:12:22', '2022-06-01 17:12:22'),
(38, NULL, 'Xander Block', 'Lake Lincolnchester', 'Wolff-Collier', 83, '2022-03-21 17:12:22', '2022-06-01 17:12:22'),
(39, NULL, 'Yoshiko Becker MD', 'Brandtchester', 'Nienow-Schimmel', 58, '2022-02-27 17:12:22', '2022-06-01 17:12:22'),
(40, NULL, 'Dr. Yoshiko Reichert', 'Ashlyborough', 'Fisher PLC', 45, '2022-04-05 17:12:22', '2022-06-01 17:12:22'),
(41, NULL, 'Sophia Wunsch', 'East Dusty', 'Fadel and Sons', 77, '2022-02-23 17:12:22', '2022-06-01 17:12:22'),
(42, NULL, 'Rosa Sanford DVM', 'Mrazberg', 'Little, Prohaska and Kessler', 63, '2022-01-25 17:12:22', '2022-06-01 17:12:22'),
(43, NULL, 'Melody Marvin', 'West Jadenstad', 'O\'Hara-Larson', 33, '2022-03-17 17:12:22', '2022-06-01 17:12:22'),
(44, NULL, 'Carley Gorczany', 'Rashawnview', 'Gislason-Larson', 67, '2022-03-19 17:12:22', '2022-06-01 17:12:22'),
(45, NULL, 'Ewald Wisoky', 'Rippinbury', 'Kohler, Kuvalis and Keebler', 85, '2022-03-22 17:12:22', '2022-06-01 17:12:22'),
(46, NULL, 'Wilton Turner Jr.', 'Thompsonview', 'Spinka, Mohr and Purdy', 94, '2022-03-25 17:12:22', '2022-06-01 17:12:22'),
(47, NULL, 'Agustin White Jr.', 'South Rafaela', 'McClure, Feeney and Hodkiewicz', 72, '2022-03-30 17:12:22', '2022-06-01 17:12:22'),
(48, NULL, 'Stephon Hilpert', 'North Amaraton', 'Waelchi, Jacobson and Hill', 74, '2022-03-30 17:12:22', '2022-06-01 17:12:22'),
(49, NULL, 'Mike Lueilwitz Jr.', 'Schinnermouth', 'Cronin, O\'Connell and Kessler', 30, '2022-04-03 17:12:22', '2022-06-01 17:12:22'),
(50, NULL, 'Dominique Dietrich', 'Marksborough', 'Goldner Ltd', 37, '2021-12-13 17:12:22', '2022-06-01 17:12:22');

-- --------------------------------------------------------

--
-- Estrutura para tabela `convenios`
--

CREATE TABLE `convenios` (
  `id` int NOT NULL,
  `nome` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int DEFAULT NULL,
  `obs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `convenios`
--

INSERT INTO `convenios` (`id`, `nome`, `user_id`, `obs`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Unimed', 1, NULL, '2022-06-10 18:59:39', '2022-06-10 15:59:39', 1),
(2, 'Bradesco', 1, NULL, '2022-06-10 18:59:39', '2022-06-10 15:59:39', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `coresdosistemas`
--

CREATE TABLE `coresdosistemas` (
  `id` int NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `color` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `default` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `deleted_at` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alias` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `onlyadmins` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `coresdosistemas`
--

INSERT INTO `coresdosistemas` (`id`, `name`, `color`, `default`, `created_by`, `created_at`, `updated_at`, `status`, `deleted_at`, `alias`, `onlyadmins`) VALUES
(1, 'bg-gradient-primary', '#000000', '#df4e92', 1, '2023-05-23 13:10:32', '2023-05-24 17:30:14', 1, NULL, '', 1),
(2, 'background-color', '#fcb9ed', '#fcb9ed', 1, '2023-05-23 13:10:32', NULL, 1, NULL, '', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `dadoslinks`
--

CREATE TABLE `dadoslinks` (
  `id` int NOT NULL,
  `lnkfacitadores` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkplantonistas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lnkmedicoscooper` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lnkcampanha` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lnkrelatoriocamp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `versao` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `newlink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `dadoslinks`
--

INSERT INTO `dadoslinks` (`id`, `lnkfacitadores`, `linkplantonistas`, `lnkmedicoscooper`, `lnkcampanha`, `lnkrelatoriocamp`, `versao`, `newlink`, `created_at`, `updated_at`) VALUES
(1, 'https://sites.google.com/view/facilitadorescolihitu/in%C3%ADcio/', 'https://sites.google.com/view/facilitadorescolihitu/in%C3%ADcio/', 'https://sites.google.com/view/facilitadorescolihitu/in%C3%ADcio/', 'https://sites.google.com/view/facilitadorescolihitu/in%C3%ADcio/', 'https://sites.google.com/view/facilitadorescolihitu/in%C3%ADcio/', '3.56', 'https://drive.google.com/file/d/1lzCldiQ0cifSPsbFYXlz1xL5lRuNTU0t/view?usp=sharing', '2022-05-27 17:05:10', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `daysons`
--

CREATE TABLE `daysons` (
  `id` int NOT NULL,
  `sunday` text COLLATE utf8mb4_general_ci,
  `monday` text COLLATE utf8mb4_general_ci,
  `tuesday` text COLLATE utf8mb4_general_ci,
  `wednesday` text COLLATE utf8mb4_general_ci,
  `thursday` text COLLATE utf8mb4_general_ci,
  `friday` text COLLATE utf8mb4_general_ci,
  `saturday` text COLLATE utf8mb4_general_ci,
  `holiday` text COLLATE utf8mb4_general_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `updated_by` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `daysons`
--

INSERT INTO `daysons` (`id`, `sunday`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`, `holiday`, `created_at`, `updated_at`, `status`, `updated_by`) VALUES
(1, '59,69,25', NULL, '25', '30,25', '59,69,25', '25', '25,26,30', NULL, '2023-06-21 12:27:42', '2023-06-21 13:56:17', 1, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `disponible_days`
--

CREATE TABLE `disponible_days` (
  `id` int NOT NULL,
  `sunday` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `monday` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `tuesday` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `wednesday` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `thursday` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `friday` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `saturday` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `isHoliday` int DEFAULT '0',
  `profissional_id` int NOT NULL,
  `hours_period` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `updated_by` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `disponible_days`
--

INSERT INTO `disponible_days` (`id`, `sunday`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`, `isHoliday`, `profissional_id`, `hours_period`, `created_at`, `updated_at`, `status`, `updated_by`) VALUES
(1, '5-n,6-n,7-n,8-s,9-s,10-s,11-s,12-n,13-n,14-n,15-n,16-n,17-n,18-n,19-n,20-n,21-n', '5-n,6-n,7-n,8-n,9-n,10-n,11-n,12-n,13-n,14-n,15-n,16-n,17-n,18-n,19-n,20-n,21-n', '5-n,6-n,7-n,8-s,9-s,10-s,11-s,12-s,13-n,14-n,15-n,16-n,17-n,18-n,19-n,20-n,21-n', '5-n,6-n,7-n,8-n,9-n,10-n,11-n,12-n,13-n,14-n,15-n,16-n,17-n,18-n,19-n,20-n,21-n', '5-n,6-n,7-n,8-s,9-s,10-s,11-n,12-n,13-n,14-n,15-n,16-n,17-n,18-n,19-n,20-n,21-n', '5-n,6-n,7-n,8-n,9-s,10-s,11-s,12-s,13-n,14-n,15-n,16-n,17-n,18-n,19-n,20-n,21-n', '5-n,6-n,7-n,8-n,9-n,10-n,11-n,12-n,13-n,14-n,15-n,16-n,17-n,18-n,19-n,20-n,21-n', 0, 25, NULL, '2023-06-21 16:56:17', '2023-06-21 13:56:17', 1, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `email_template`
--

CREATE TABLE `email_template` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `email_template`
--

INSERT INTO `email_template` (`id`, `created_at`, `updated_at`, `content`, `name`, `subject`) VALUES
(1, NULL, NULL, '<!DOCTYPE html>\n                <html lang=\"en\">\n                <head>\n                    <meta charset=\"utf-8\">\n                    <meta name=\"viewport\" content=\"width=device-width\">\n                    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\"> \n                    <meta name=\"x-apple-disable-message-reformatting\">\n                    <title>Example</title>\n                    <style>\n                        body {\n                            background-color:#fff;\n                            color:#222222;\n                            margin: 0px auto;\n                            padding: 0px;\n                            height: 100%;\n                            width: 100%;\n                            font-weight: 400;\n                            font-size: 15px;\n                            line-height: 1.8;\n                        }\n                        .continer{\n                            width:400px;\n                            margin-left:auto;\n                            margin-right:auto;\n                            background-color:#efefef;\n                            padding:30px;\n                        }\n                        .btn{\n                            padding: 5px 15px;\n                            display: inline-block;\n                        }\n                        .btn-primary{\n                            border-radius: 3px;\n                            background: #0b3c7c;\n                            color: #fff;\n                            text-decoration: none;\n                        }\n                        .btn-primary:hover{\n                            border-radius: 3px;\n                            background: #4673ad;\n                            color: #fff;\n                            text-decoration: none;\n                        }\n                    </style>\n                </head>\n                <body>\n                    <div class=\"continer\">\n                        <h1>Lorem ipsum dolor</h1>\n                        <h4>Ipsum dolor cet emit amet</h4>\n                        <p>\n                            Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea <strong>commodo consequat</strong>. \n                            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. \n                            Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n                        </p>\n                        <h4>Ipsum dolor cet emit amet</h4>\n                        <p>\n                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod <a href=\"#\">tempor incididunt ut labore</a> et dolore magna aliqua.\n                            Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \n                        </p>\n                        <h4>Ipsum dolor cet emit amet</h4>\n                        <p>\n                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n                            Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \n                        </p>\n                        <a href=\"#\" class=\"btn btn-primary\">Lorem ipsum dolor</a>\n                        <h4>Ipsum dolor cet emit amet</h4>\n                        <p>\n                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n                            Ut enim ad minim veniam, quis nostrud exercitation <a href=\"#\">ullamco</a> laboris nisi ut aliquip ex ea commodo consequat. \n                            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. \n                            Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n                        </p>\n                    </div>\n                </body>\n                </html>', 'Example E-mail', 'Example E-mail');

-- --------------------------------------------------------

--
-- Estrutura para tabela `especialidades`
--

CREATE TABLE `especialidades` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `imagem` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '/images/medsci-icon.gif',
  `descricao` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `especialidades`
--

INSERT INTO `especialidades` (`id`, `user_id`, `nome`, `created_at`, `updated_at`, `imagem`, `descricao`, `status`) VALUES
(1, 3, 'Anestesiologia', NULL, NULL, '/images/medsci-icon.gif', NULL, 1),
(2, 3, 'Cardiologia', NULL, NULL, '/images/medsci-icon.gif', NULL, 1),
(3, 3, 'Cirurgia de Cabeça e Pescoço (Otorrino)', NULL, NULL, '/images/medsci-icon.gif', NULL, 1),
(4, 3, 'Cirurgia Geral', NULL, NULL, '/images/medsci-icon.gif', NULL, 1),
(5, 1, 'Cirurgião Bucal', NULL, NULL, '/images/medsci-icon.gif', NULL, 1),
(6, 1, 'Infectologia Hospitalar', NULL, NULL, '/images/medsci-icon.gif', NULL, 1),
(7, 3, 'Cirurgia Pediátrica', NULL, NULL, '/images/medsci-icon.gif', NULL, 1),
(8, 3, 'Cirurgia Plástica', NULL, NULL, '/images/medsci-icon.gif', NULL, 1),
(9, 3, 'Cirurgia Vascular', NULL, NULL, '/images/medsci-icon.gif', NULL, 1),
(10, 3, 'Gastroenterologia', NULL, NULL, '/images/medsci-icon.gif', NULL, 1),
(11, 3, 'Ginecologia e Obstetrícia', NULL, NULL, '/images/medsci-icon.gif', NULL, 1),
(12, 3, 'Hematologia e Hemoterapia', NULL, NULL, '/images/medsci-icon.gif', NULL, 1),
(13, 3, 'Infectologia', NULL, NULL, '/images/medsci-icon.gif', NULL, 1),
(14, 3, 'Nefrologia', NULL, NULL, '/images/medsci-icon.gif', NULL, 1),
(15, 3, 'Ginecologista/Mastologista', NULL, NULL, '/images/medsci-icon.gif', NULL, 1),
(16, 3, 'Ortopedia e Traumatologia', NULL, NULL, '/images/medsci-icon.gif', NULL, 1),
(17, 3, 'Urologia', NULL, NULL, '/images/medsci-icon.gif', NULL, 1),
(18, 3, 'Gastroenterologia e Cirurgia de Obesidade', NULL, NULL, '/images/medsci-icon.gif', NULL, 1),
(19, 1, ' Oncologia Cirurgia da Cabeça e Pescoço', '2022-06-11 23:08:44', NULL, '/images/medsci-icon.gif', NULL, 1),
(20, 1, 'Clínico Geral', '2022-06-11 23:08:05', NULL, '/images/medsci-icon.gif', NULL, 1),
(101, 3, 'Alergia e Imunologia', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(103, 3, 'Angiologia', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(104, 3, 'Cancerologia', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(106, 3, 'Cirurgia Cardiovascular', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(107, 3, 'Cirurgia da Mão', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(109, 3, 'Cirurgia do Aparelho Digestivo', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(113, 3, 'Cirurgia Torácica', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(115, 3, 'Clínica Médica', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(116, 3, 'Coloproctologia', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(118, 3, 'Endocrinologia e Metabologia', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(119, 3, 'Endoscopia', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(121, 3, 'Genética Médica', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(122, 3, 'Geriatria', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(125, 3, 'Homeopatia', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(127, 3, 'Mastologia', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(128, 3, 'Medicina de Família e Comunidade', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(129, 3, 'Medicina do Trabalho', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(130, 3, 'Medicina de Tráfego', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(132, 3, 'Medicina Física e Reabilitação', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(133, 3, 'Medicina Intensiva', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(134, 3, 'Medicina Legal e Perícia Médica', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(135, 3, 'Medicina Nuclear', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(136, 3, 'Medicina Preventiva e Social', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(138, 3, 'Neurocirurgia', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(139, 3, 'Neurologia', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(140, 3, 'Nutrologia', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(143, 3, 'Otorrinolaringologia', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(144, 3, 'Patologia', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(145, 3, 'Patologia Clínica/Medicina Laboratorial', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(146, 3, 'Pediatria', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(147, 3, 'Pneumologia', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(148, 3, 'Radiologia e Diagnóstico por Imagem', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(149, 3, 'Radioterapia', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(150, 3, 'Reumatologia', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(152, 3, 'Administração em Saúde', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(153, 3, 'Alergia e Imunologia Pediátrica', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(154, 3, 'Angiorradiologia e Cirurgia Endovascular', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(155, 3, 'Atendimento ao queimado', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(156, 3, 'Cardiologia Pediátrica', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(157, 3, 'Cirurgia Crânio-Maxilo-Facial', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(158, 3, 'Cirurgia do Trauma', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(159, 3, 'Cirurgia Videolaparoscópica', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(160, 3, 'Citopatologia', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(161, 3, 'Densitometria Óssea', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(162, 3, 'Ecocardiografia', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(163, 3, 'Ecografia Vascular com Doppler', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(164, 3, 'Eletrofisiologia Clínica Invasiva', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(165, 3, 'Endocrinologia Pediátrica', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(166, 3, 'Endoscopia Digestiva', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(167, 3, 'Endoscopia Ginecológica', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(168, 3, 'Endoscopia Respiratória', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(169, 3, 'Ergometria', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(170, 3, 'Foniatria', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(171, 3, 'Gastroenterologia Pediátrica', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(172, 3, 'Hansenologia', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(173, 3, 'Hematologia e Hemoterapia Pediátrica', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(174, 3, 'Hemodinâmica e Cardiologia Intervencionista', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(175, 3, 'Hepatologia', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(176, 3, 'Infectologia Hospitalar', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(177, 3, 'Infectologia Pediátrica', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(178, 3, 'Mamografia', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(179, 3, 'Medicina de Urgência', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(180, 3, 'Medicina do Adolescente', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(181, 3, 'Medicina do Sono', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(182, 3, 'Medicina Fetal', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(183, 3, 'Medicina Intensiva Pediátrica', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(184, 3, 'Medicina Paliativa', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(185, 3, 'Medicina Tropical', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(186, 3, 'Nefrologia Pediátrica', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(187, 3, 'Neonatologia', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(188, 3, 'Neurofisiologia Clínica', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(189, 3, 'Neurologia Pediátrica', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(190, 3, 'Neurorradiologia', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(192, 3, 'Nutrição Parenteral e Enteral Pediátrica', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(193, 3, 'Nutrologia Pediátrica', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(194, 3, 'Pneumologia Pediátrica', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(195, 3, 'Psicogeriatria', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(196, 3, 'Radiologia Intervencionista e Angiorradiologia', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(197, 3, 'Reumatologia Pediátrica', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(198, 3, 'Transplante de Medula Óssea', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(199, 3, 'Ultrassonografia em Ginecologia e Obstetrícia', NULL, NULL, '/images/medsci-icon.gif', NULL, 0),
(201, 3, 'Cadeira de rodas', '2021-07-12 22:37:55', '2021-07-12 22:37:55', '/images/medsci-icon.gif', NULL, 0),
(202, 1, 'Acupuntura', '2022-06-03 23:57:44', '2022-06-03 23:57:44', '/images/medsci-icon.gif', NULL, 0),
(203, 1, 'Esmeralda', '2022-06-04 01:29:04', '2022-06-04 01:29:04', '/images/medsci-icon.gif', NULL, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `features`
--

CREATE TABLE `features` (
  `id` int NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `img_url` text COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `expires_at` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_by` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `features`
--

INSERT INTO `features` (`id`, `name`, `img_url`, `created_at`, `updated_at`, `status`, `expires_at`, `updated_by`) VALUES
(1, 'Produtos capilares', 'https://res.cloudinary.com/beleza-na-web/image/upload/w_1500,f_auto,fl_progressive,q_auto:eco,w_210,h_210/v1/imagens/product/78557/59bcf7d7-d6a3-45fb-9cd8-41a3924aa302-kit-kerastase-genesis-antichute-plus-3-produtos.png', '2023-06-12 20:19:39', NULL, 1, NULL, NULL),
(2, 'Produtos capilares com desconto', 'https://www.walgreens.com/images/adaptive/sp1/3161400_061123_T1_M_HairCare_345x165.jpg', '2023-06-12 20:19:39', NULL, 1, NULL, NULL),
(3, 'shampoo na promoção', 'https://cdn3.mydukaan.io/app/image/700x700/?url=https://dukaan-core-file-service.s3.ap-southeast-1.amazonaws.com/upload_file_service/0aaf2f4b-4942-429b-8b0b-2f2fdeeedba4/1024x1024-0127cf98-bb42-404b-af44-d29c10390dec.jpg', '2023-06-12 20:19:39', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `files`
--

CREATE TABLE `files` (
  `id` bigint UNSIGNED NOT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `financeiros`
--

CREATE TABLE `financeiros` (
  `id` int NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `valor` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `deleted_at` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alias` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `folder`
--

CREATE TABLE `folder` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int UNSIGNED DEFAULT NULL,
  `resource` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `folder`
--

INSERT INTO `folder` (`id`, `created_at`, `updated_at`, `name`, `folder_id`, `resource`) VALUES
(1, NULL, NULL, 'root', NULL, NULL),
(2, NULL, NULL, 'resource', 1, 1),
(3, NULL, NULL, 'documents', 1, NULL),
(4, NULL, NULL, 'graphics', 1, NULL),
(5, NULL, NULL, 'other', 1, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `form`
--

CREATE TABLE `form` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read` tinyint(1) NOT NULL,
  `edit` tinyint(1) NOT NULL,
  `add` tinyint(1) NOT NULL,
  `delete` tinyint(1) NOT NULL,
  `pagination` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `form`
--

INSERT INTO `form` (`id`, `created_at`, `updated_at`, `name`, `table_name`, `read`, `edit`, `add`, `delete`, `pagination`) VALUES
(1, NULL, NULL, 'Example', 'example', 1, 1, 1, 1, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `form_field`
--

CREATE TABLE `form_field` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `browse` tinyint(1) NOT NULL,
  `read` tinyint(1) NOT NULL,
  `edit` tinyint(1) NOT NULL,
  `add` tinyint(1) NOT NULL,
  `relation_table` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relation_column` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_id` int UNSIGNED NOT NULL,
  `column_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `form_field`
--

INSERT INTO `form_field` (`id`, `created_at`, `updated_at`, `name`, `type`, `browse`, `read`, `edit`, `add`, `relation_table`, `relation_column`, `form_id`, `column_name`) VALUES
(1, NULL, NULL, 'Title', 'text', 1, 1, 1, 1, NULL, NULL, 1, 'name'),
(2, NULL, NULL, 'Description', 'text_area', 1, 1, 1, 1, NULL, NULL, 1, 'description'),
(3, NULL, NULL, 'Status', 'relation_select', 1, 1, 1, 1, 'status', 'name', 1, 'status_id');

-- --------------------------------------------------------

--
-- Estrutura para tabela `listadeespecialidades`
--

CREATE TABLE `listadeespecialidades` (
  `id` int NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `valor` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `deleted_at` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alias` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `listadeespecialidades`
--

INSERT INTO `listadeespecialidades` (`id`, `name`, `valor`, `created_by`, `created_at`, `updated_at`, `status`, `deleted_at`, `alias`) VALUES
(1, 'Especialidade 1', 'Cabeleireiros', 1, '2023-05-23 13:18:38', NULL, 1, NULL, 'cab'),
(2, 'Especialidade 2', 'Barbeiros', 1, '2023-05-23 13:18:38', NULL, 1, NULL, 'barb'),
(3, 'Especialidade 3', 'Dermatologista', 1, '2023-05-23 13:18:38', NULL, 1, NULL, 'derm'),
(4, 'Especialidade 4', 'Manicure', 1, '2023-05-23 13:18:38', NULL, 1, NULL, 'man'),
(5, 'Especialidade 5', 'Não Especificado', 1, '2023-05-23 13:18:38', NULL, 0, NULL, 'nesp1'),
(6, 'Especialidade 6', 'Não Especificado 2', 1, '2023-05-23 13:18:38', NULL, 0, NULL, 'nesp2'),
(7, 'Especialidade 7', 'Não Especificado 3', 1, '2023-05-23 13:18:38', NULL, 0, NULL, 'nesp3');

-- --------------------------------------------------------

--
-- Estrutura para tabela `logotipoeimagems`
--

CREATE TABLE `logotipoeimagems` (
  `id` int NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `valor` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `deleted_at` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alias` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `meals`
--

CREATE TABLE `meals` (
  `idMeal` int NOT NULL,
  `strMeal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strDrinkAlternate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strCategory` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strArea` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strInstructions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `strMealThumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strTags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strYoutube` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `strIngredient1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strIngredient2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strIngredient3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strIngredient4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strIngredient5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strIngredient6` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strIngredient7` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strIngredient8` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strIngredient9` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strIngredient10` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strIngredient11` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strIngredient12` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strIngredient13` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strIngredient14` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strIngredient15` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strIngredient16` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strIngredient17` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strIngredient18` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strIngredient19` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strIngredient20` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strMeasure1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strMeasure2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strMeasure3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strMeasure4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strMeasure5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strMeasure6` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strMeasure7` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strMeasure8` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strMeasure9` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strMeasure10` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strMeasure11` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strMeasure12` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strMeasure13` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strMeasure14` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strMeasure15` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strMeasure16` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strMeasure17` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strMeasure18` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strMeasure19` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strMeasure20` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strSource` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strImageSource` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `strCreativeCommonsConfirmed` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dateModified` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `idIngredient` int NOT NULL,
  `strIngredient` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `strDescription` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `strType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `meals`
--

INSERT INTO `meals` (`idMeal`, `strMeal`, `strDrinkAlternate`, `strCategory`, `strArea`, `strInstructions`, `strMealThumb`, `strTags`, `strYoutube`, `strIngredient1`, `strIngredient2`, `strIngredient3`, `strIngredient4`, `strIngredient5`, `strIngredient6`, `strIngredient7`, `strIngredient8`, `strIngredient9`, `strIngredient10`, `strIngredient11`, `strIngredient12`, `strIngredient13`, `strIngredient14`, `strIngredient15`, `strIngredient16`, `strIngredient17`, `strIngredient18`, `strIngredient19`, `strIngredient20`, `strMeasure1`, `strMeasure2`, `strMeasure3`, `strMeasure4`, `strMeasure5`, `strMeasure6`, `strMeasure7`, `strMeasure8`, `strMeasure9`, `strMeasure10`, `strMeasure11`, `strMeasure12`, `strMeasure13`, `strMeasure14`, `strMeasure15`, `strMeasure16`, `strMeasure17`, `strMeasure18`, `strMeasure19`, `strMeasure20`, `strSource`, `strImageSource`, `strCreativeCommonsConfirmed`, `dateModified`, `created_at`, `updated_at`, `idIngredient`, `strIngredient`, `strDescription`, `strType`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 1, 'Chicken', 'The chicken is a type of domesticated fowl, a subspecies of the red junglefowl (Gallus gallus). It is one of the most common and widespread domestic animals, with a total population of more than 19 billion as of 2011. There are more chickens in the world than any other bird or domesticated fowl. Humans keep chickens primarily as a source of food (consuming both their meat and eggs) and, less commonly, as pets. Originally raised for cockfighting or for special ceremonies, chickens were not kept for food until the Hellenistic period (4th–2nd centuries BC).\r\n\r\nGenetic studies have pointed to multiple maternal origins in South Asia, Southeast Asia, and East Asia, but with the clade found in the Americas, Europe, the Middle East and Africa originating in the Indian subcontinent. From ancient India, the domesticated chicken spread to Lydia in western Asia Minor, and to Greece by the 5th century BC. Fowl had been known in Egypt since the mid-15th century BC, with the \"bird that gives birth every day\" having come to Egypt from the land between Syria and Shinar, Babylonia, according to the annals of Thutmose III.', ''),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 2, 'Salmon', 'Salmon is the common name for several species of ray-finned fish in the family Salmonidae. Other fish in the same family include trout, char, grayling and whitefish. Salmon are native to tributaries of the North Atlantic (genus Salmo) and Pacific Ocean (genus Oncorhynchus). Many species of salmon have been introduced into non-native environments such as the Great Lakes of North America and Patagonia in South America. Salmon are intensively farmed in many parts of the world.\r\n\r\nTypically, salmon are anadromous: they hatch in fresh water, migrate to the ocean, then return to fresh water to reproduce. However, populations of several species are restricted to fresh water through their lives. Folklore has it that the fish return to the exact spot where they hatched to spawn. Tracking studies have shown this to be mostly true. A portion of a returning salmon run may stray and spawn in different freshwater systems; the percent of straying depends on the species of salmon. Homing behavior has been shown to depend on olfactory memory. Salmon date back to the Neogene.', ''),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 3, 'Beef', 'Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times. Beef is a source of high-quality protein and nutrients.\r\n\r\nMost beef skeletal muscle meat can be used as is by merely cutting into certain parts, such as roasts, short ribs or steak (filet mignon, sirloin steak, rump steak, rib steak, rib eye steak, hanger steak, etc.), while other cuts are processed (corned beef or beef jerky). Trimmings, on the other hand, are usually mixed with meat from older, leaner (therefore tougher) cattle, are ground, minced or used in sausages. The blood is used in some varieties called blood sausage. Other parts that are eaten include other muscles and offal, such as the oxtail, liver, tongue, tripe from the reticulum or rumen, glands (particularly the pancreas and thymus, referred to as sweetbread), the heart, the brain (although forbidden where there is a danger of bovine spongiform encephalopathy, BSE, commonly referred to as mad cow disease), the kidneys, and the tender testicles of the bull (known in the United States as calf fries, prairie oysters, or Rocky Mountain oysters). Some intestines are cooked and eaten as is, but are more often cleaned and used as natural sausage casings. The bones are used for making beef stock.', ''),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 4, 'Pork', 'Pork is the culinary name for the flesh of a domestic pig (Sus scrofa domesticus). It is the most commonly consumed meat worldwide,[1] with evidence of pig husbandry dating back to 5000 BC.\r\n\r\nPork is eaten both freshly cooked and preserved. Curing extends the shelf life of the pork products. Ham, smoked pork, gammon, bacon and sausage are examples of preserved pork. Charcuterie is the branch of cooking devoted to prepared meat products, many from pork.\r\n\r\nPig is the most popular meat in the Eastern and non-Muslim parts of Southeastern Asia (Indochina, Philippines, Singapore, East Timor) and is also very common in the Western world, especially in Central Europe. It is highly prized in Asian cuisines for its fat content and pleasant texture. Consumption of pork is forbidden by Jewish, Muslim and Rastafarian dietary law, for religious reasons, with several suggested possible causes.', ''),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 5, 'Avocado', 'The avocado, a tree with probable origin in South Central Mexico, is classified as a member of the flowering plant family Lauraceae. The fruit of the plant, also called an avocado (or avocado pear or alligator pear), is botanically a large berry containing a single large seed.\r\n\r\nAvocados are commercially valuable and are cultivated in tropical and Mediterranean climates throughout the world. They have a green-skinned, fleshy body that may be pear-shaped, egg-shaped, or spherical. Commercially, they ripen after harvesting. Avocado trees are partially self-pollinating, and are often propagated through grafting to maintain predictable fruit quality and quantity. In 2017, Mexico produced 34% of the world supply of avocados.', ''),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 9, 'Apple Cider Vinegar', 'Apple cider vinegar, or cider vinegar, is a vinegar made from fermented apple juice, and used in salad dressings, marinades, vinaigrettes, food preservatives, and chutneys. It is made by crushing apples, then squeezing out the juice. Bacteria and yeast are added to the liquid to start the alcoholic fermentation process, which converts the sugars to alcohol. In a second fermentation step, the alcohol is converted into vinegar by acetic acid-forming bacteria (Acetobacter species). Acetic acid and malic acid combine to give vinegar its sour taste. Apple cider vinegar has no medicinal or nutritional value. There is no high-quality clinical evidence that regular consumption of apple cider vinegar helps to maintain or lose body weight, or is effective to manage blood glucose and lipid levels.', ''),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 10, 'Asparagus', 'Asparagus, or garden asparagus, folk name sparrow grass, scientific name Asparagus officinalis, is a perennial flowering plant species in the genus Asparagus. Its young shoots are used as a spring vegetable.\r\n\r\nIt was once classified in the lily family, like the related Allium species, onions and garlic. However, genetic research places lilies, Allium, and asparagus in three separate families—the Liliaceae, Amaryllidaceae, and Asparagaceae, respectively—with the Amaryllidaceae and Asparagaceae being grouped together in the order Asparagales. Sources differ as to the native range of Asparagus officinalis, but generally include most of Europe and western temperate Asia. It is widely cultivated as a vegetable crop.', ''),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 11, 'Aubergine', 'Eggplant (US, Australia), aubergine (UK), or brinjal (South Asia and South Africa) is a plant species in the nightshade family Solanaceae. Solanum melongena is grown worldwide for its edible fruit.\r\n\r\nMost commonly purple, the spongy, absorbent fruit is used in various cuisines. Although often considered a vegetable, it is a berry by botanical definition. As a member of the genus Solanum, it is related to tomato and potato. Like the tomato, its skin and seeds can be eaten, but, like the potato, it is usually eaten cooked. Eggplant is nutritionally low in macronutrient and micronutrient content, but the capability of the fruit to absorb oils and flavors into its flesh through cooking expands its use in the culinary arts.\r\n\r\nIt was originally domesticated from the wild nightshade species thorn or bitter apple, S. incanum, probably with two independent domestications: one in South Asia, and one in East Asia.', ''),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 13, 'Baby Plum Tomatoes', 'The tomato is the edible, often red, berry of the plant Solanum lycopersicum, commonly known as a tomato plant. The species originated in western South America and Central America. The Nahuatl (Aztec language) word tomatl gave rise to the Spanish word tomate, from which the English word tomato derived.[3][4] Its domestication and use as a cultivated food may have originated with the indigenous peoples of Mexico. The Aztecs used tomatoes in their cooking at the time of the Spanish conquest of the Aztec Empire, and after the Spanish encountered the tomato for the first time after their contact with the Aztecs, they brought the plant to Europe. From there, the tomato was introduced to other parts of the European-colonized world during the 16th century.', ''),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 14, 'Bacon', 'Bacon is a type of salt-cured pork. Bacon is prepared from several different cuts of meat, typically from the pork belly or from back cuts, which have less fat than the belly. It is eaten on its own, as a side dish (particularly in breakfasts), or used as a minor ingredient to flavour dishes (e.g., the club sandwich). Bacon is also used for barding and larding roasts, especially game, including venison and pheasant. The word is derived from the Old High German bacho, meaning \"buttock\", \"ham\" or \"side of bacon\", and is cognate with the Old French bacon.', ''),
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 15, 'Baking Powder', 'Baking powder is a dry chemical leavening agent, a mixture of a carbonate or bicarbonate and a weak acid. The base and acid are prevented from reacting prematurely by the inclusion of a buffer such as cornstarch. Baking powder is used to increase the volume and lighten the texture of baked goods. It works by releasing carbon dioxide gas into a batter or dough through an acid-base reaction, causing bubbles in the wet mixture to expand and thus leavening the mixture. The first single-acting baking powder was developed by Birmingham based food manufacturer Alfred Bird in England in 1843. The first double-acting baking powder was developed by Eben Norton Horsford in America in the 1860s.', ''),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 16, 'Balsamic Vinegar', 'Balsamic vinegar (Italian: aceto balsamico), occasionally shortened to balsamic, is a very dark, concentrated, and intensely flavoured vinegar originating in Italy, made wholly or partially from grape must. Grape must is freshly crushed grape juice with all the skins, seeds and stems.', ''),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 17, 'Basil', 'Basil, also called great basil, is a culinary herb of the family Lamiaceae (mints).\r\n\r\nBasil is native to tropical regions from central Africa to Southeast Asia. It is a tender plant, and is used in cuisines worldwide. Depending on the species and cultivar, the leaves may taste somewhat like anise, with a strong, pungent, often sweet smell.', ''),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 18, 'Basil Leaves', 'Basil, also called great basil, is a culinary herb of the family Lamiaceae (mints).\r\n', ''),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 19, 'Basmati Rice', 'Basmati is a variety of long, slender-grained aromatic rice which is traditionally from the Indian subcontinent. As of 2018-19, India exported to over 90% of the overseas basmati rice market, while Pakistan accounted for the remainder, according to the Indian state-run Agricultural and Processed Food Products Export Development Authority  and the Pakistan government-run Economic Survey of Pakistan. Many countries use domestically grown basmati rice crops; however, basmati is geographically exclusive to select districts of India, Pakistan, Nepal and Bangladesh.', ''),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 20, 'Bay Leaf', 'The bay leaf is an aromatic leaf commonly used in cooking. It can be used whole, or as dried and ground.', ''),
(17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 21, 'Bay Leaves', 'The bay leaf is an aromatic leaf commonly used in cooking. It can be used whole, or as dried and ground.', ''),
(18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 23, 'Beef Brisket', 'Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times. Beef is a source of high-quality protein and nutrients.\r\n\r\nMost beef skeletal muscle meat can be used as is by merely cutting into certain parts, such as roasts, short ribs or steak (filet mignon, sirloin steak, rump steak, rib steak, rib eye steak, hanger steak, etc.), while other cuts are processed (corned beef or beef jerky). Trimmings, on the other hand, are usually mixed with meat from older, leaner (therefore tougher) cattle, are ground, minced or used in sausages. The blood is used in some varieties called blood sausage. Other parts that are eaten include other muscles and offal, such as the oxtail, liver, tongue, tripe from the reticulum or rumen, glands (particularly the pancreas and thymus, referred to as sweetbread), the heart, the brain (although forbidden where there is a danger of bovine spongiform encephalopathy, BSE, commonly referred to as mad cow disease), the kidneys, and the tender testicles of the bull (known in the United States as calf fries, prairie oysters, or Rocky Mountain oysters). Some intestines are cooked and eaten as is, but are more often cleaned and used as natural sausage casings. The bones are used for making beef stock.', ''),
(19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 24, 'Beef Fillet', 'Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times. Beef is a source of high-quality protein and nutrients.\r\n\r\nMost beef skeletal muscle meat can be used as is by merely cutting into certain parts, such as roasts, short ribs or steak (filet mignon, sirloin steak, rump steak, rib steak, rib eye steak, hanger steak, etc.), while other cuts are processed (corned beef or beef jerky). Trimmings, on the other hand, are usually mixed with meat from older, leaner (therefore tougher) cattle, are ground, minced or used in sausages. The blood is used in some varieties called blood sausage. Other parts that are eaten include other muscles and offal, such as the oxtail, liver, tongue, tripe from the reticulum or rumen, glands (particularly the pancreas and thymus, referred to as sweetbread), the heart, the brain (although forbidden where there is a danger of bovine spongiform encephalopathy, BSE, commonly referred to as mad cow disease), the kidneys, and the tender testicles of the bull (known in the United States as calf fries, prairie oysters, or Rocky Mountain oysters). Some intestines are cooked and eaten as is, but are more often cleaned and used as natural sausage casings. The bones are used for making beef stock.', ''),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 25, 'Beef Gravy', 'Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times. Beef is a source of high-quality protein and nutrients.\r\n\r\nMost beef skeletal muscle meat can be used as is by merely cutting into certain parts, such as roasts, short ribs or steak (filet mignon, sirloin steak, rump steak, rib steak, rib eye steak, hanger steak, etc.), while other cuts are processed (corned beef or beef jerky). Trimmings, on the other hand, are usually mixed with meat from older, leaner (therefore tougher) cattle, are ground, minced or used in sausages. The blood is used in some varieties called blood sausage. Other parts that are eaten include other muscles and offal, such as the oxtail, liver, tongue, tripe from the reticulum or rumen, glands (particularly the pancreas and thymus, referred to as sweetbread), the heart, the brain (although forbidden where there is a danger of bovine spongiform encephalopathy, BSE, commonly referred to as mad cow disease), the kidneys, and the tender testicles of the bull (known in the United States as calf fries, prairie oysters, or Rocky Mountain oysters). Some intestines are cooked and eaten as is, but are more often cleaned and used as natural sausage casings. The bones are used for making beef stock.', ''),
(21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 26, 'Beef Stock', 'Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times. Beef is a source of high-quality protein and nutrients.\r\n\r\nMost beef skeletal muscle meat can be used as is by merely cutting into certain parts, such as roasts, short ribs or steak (filet mignon, sirloin steak, rump steak, rib steak, rib eye steak, hanger steak, etc.), while other cuts are processed (corned beef or beef jerky). Trimmings, on the other hand, are usually mixed with meat from older, leaner (therefore tougher) cattle, are ground, minced or used in sausages. The blood is used in some varieties called blood sausage. Other parts that are eaten include other muscles and offal, such as the oxtail, liver, tongue, tripe from the reticulum or rumen, glands (particularly the pancreas and thymus, referred to as sweetbread), the heart, the brain (although forbidden where there is a danger of bovine spongiform encephalopathy, BSE, commonly referred to as mad cow disease), the kidneys, and the tender testicles of the bull (known in the United States as calf fries, prairie oysters, or Rocky Mountain oysters). Some intestines are cooked and eaten as is, but are more often cleaned and used as natural sausage casings. The bones are used for making beef stock.', ''),
(22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 27, 'Bicarbonate Of Soda', 'Sodium bicarbonate, commonly known as baking soda, is a chemical compound with the formula NaHCO3. It is a salt composed of a sodium cation (Na+) and a bicarbonate anion (HCO3−). Sodium bicarbonate is a white solid that is crystalline, but often appears as a fine powder. It has a slightly salty, alkaline taste resembling that of washing soda (sodium carbonate). The natural mineral form is nahcolite. It is a component of the mineral natron and is found dissolved in many mineral springs.', ''),
(23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 28, 'Biryani Masala', 'Biryani, also known as biriyani, biriani, birani or briyani, is a mixed rice dish with its origins among the Muslims of the Indian subcontinent. It can be compared to mixing a curry, later combining it with semi-cooked rice separately. This dish is especially popular throughout the Indian subcontinent, as well as among the diaspora from the region. It is also prepared in other regions such as Iraqi Kurdistan. It is made with Indian spices, rice, meat (chicken, goat, beef, lamb, prawn, or fish), vegetables or eggs.', ''),
(24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 29, 'Black Pepper', 'Black pepper (Piper nigrum) is a flowering vine in the family Piperaceae, cultivated for its fruit, known as a peppercorn, which is usually dried and used as a spice and seasoning. When fresh and fully mature, it is about 5 mm (0.20 in) in diameter and dark red, and contains a single seed, like all drupes. Peppercorns and the ground pepper derived from them may be described simply as pepper, or more precisely as black pepper (cooked and dried unripe fruit), green pepper (dried unripe fruit), or white pepper (ripe fruit seeds).\r\n\r\nBlack pepper is native to present-day Kerala in Southwestern India, and is extensively cultivated there and elsewhere in tropical regions. Vietnam is the world-s largest producer and exporter of pepper, producing 34% of the world-s crop, as of 2013.', ''),
(25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 30, 'Black Treacle', 'Molasses (American English) or black treacle (British English) is a viscous product resulting from refining sugarcane or sugar beets into sugar. Molasses varies by amount of sugar, method of extraction, and age of plant. Sugarcane molasses is primarily used for sweetening and flavoring foods in the United States, Canada, and elsewhere. Molasses is a defining component of fine commercial brown sugar.\r\n\r\nSweet sorghum syrup may be colloquially called \"sorghum molasses\" in the southern United States.[2][3] Similar products include honey, maple syrup, corn syrup, and invert syrup. Most of these alternative syrups have milder flavors.', ''),
(26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 31, 'Borlotti Beans', '', ''),
(27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 32, 'Bowtie Pasta', '', ''),
(28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 33, 'Bramley Apples', '', ''),
(29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 34, 'Brandy', '', ''),
(30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 35, 'Bread', '', ''),
(31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 36, 'Breadcrumbs', '', ''),
(32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 37, 'Broccoli', '', ''),
(33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 38, 'Brown Lentils', '', ''),
(34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 39, 'Brown Rice', '', ''),
(35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 40, 'Brown Sugar', '', ''),
(36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 41, 'Butter', '', ''),
(37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 43, 'Cacao', '', ''),
(38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 44, 'Cajun', '', ''),
(39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 45, 'Canned Tomatoes', '', ''),
(40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 46, 'Cannellini Beans', '', ''),
(41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 47, 'Cardamom', '', ''),
(42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 49, 'Carrots', '', ''),
(43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 50, 'Cashew Nuts', '', ''),
(44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 51, 'Cashews', '', ''),
(45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 52, 'Caster Sugar', '', ''),
(46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 53, 'Cayenne Pepper', '', ''),
(47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 54, 'Celeriac', '', ''),
(48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 55, 'Celery', '', ''),
(49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 56, 'Celery Salt', '', ''),
(50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 57, 'Challots', '', ''),
(51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 58, 'Charlotte Potatoes', '', ''),
(52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 59, 'Cheddar Cheese', '', ''),
(53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 60, 'Cheese', '', ''),
(54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 61, 'Cheese Curds', '', ''),
(55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 62, 'Cherry Tomatoes', '', ''),
(56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 63, 'Chestnut Mushroom', '', ''),
(57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 65, 'Chicken Breast', '', ''),
(58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 66, 'Chicken Breasts', '', ''),
(59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 67, 'Chicken Legs', '', ''),
(60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 68, 'Chicken Stock', '', ''),
(61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 70, 'Chicken Thighs', '', ''),
(62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 71, 'Chickpeas', '', ''),
(63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 72, 'Chili Powder', '', ''),
(64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 73, 'Chilled Butter', '', ''),
(65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 74, 'Chilli', '', ''),
(66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 75, 'Chilli Powder', '', ''),
(67, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 76, 'Chinese Broccoli', '', ''),
(68, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 77, 'Chocolate Chips', '', ''),
(69, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 78, 'Chopped Onion', '', ''),
(70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 79, 'Chopped Parsley', '', ''),
(71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 80, 'Chopped Tomatoes', '', ''),
(72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 81, 'Chorizo', '', ''),
(73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 82, 'Christmas Pudding', '', ''),
(74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 83, 'Cilantro', '', ''),
(75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 84, 'Cinnamon', '', ''),
(76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 85, 'Cinnamon Stick', '', ''),
(77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 87, 'Cloves', '', ''),
(78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 88, 'Coco Sugar', '', ''),
(79, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 89, 'Cocoa', '', ''),
(80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 90, 'Coconut Cream', '', ''),
(81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 91, 'Coconut Milk', '', '');
INSERT INTO `meals` (`idMeal`, `strMeal`, `strDrinkAlternate`, `strCategory`, `strArea`, `strInstructions`, `strMealThumb`, `strTags`, `strYoutube`, `strIngredient1`, `strIngredient2`, `strIngredient3`, `strIngredient4`, `strIngredient5`, `strIngredient6`, `strIngredient7`, `strIngredient8`, `strIngredient9`, `strIngredient10`, `strIngredient11`, `strIngredient12`, `strIngredient13`, `strIngredient14`, `strIngredient15`, `strIngredient16`, `strIngredient17`, `strIngredient18`, `strIngredient19`, `strIngredient20`, `strMeasure1`, `strMeasure2`, `strMeasure3`, `strMeasure4`, `strMeasure5`, `strMeasure6`, `strMeasure7`, `strMeasure8`, `strMeasure9`, `strMeasure10`, `strMeasure11`, `strMeasure12`, `strMeasure13`, `strMeasure14`, `strMeasure15`, `strMeasure16`, `strMeasure17`, `strMeasure18`, `strMeasure19`, `strMeasure20`, `strSource`, `strImageSource`, `strCreativeCommonsConfirmed`, `dateModified`, `created_at`, `updated_at`, `idIngredient`, `strIngredient`, `strDescription`, `strType`) VALUES
(82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 92, 'Colby Jack Cheese', '', ''),
(83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 93, 'Cold Water', '', ''),
(84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 94, 'Condensed Milk', '', ''),
(85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 95, 'Coriander', '', ''),
(86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 96, 'Coriander Leaves', '', ''),
(87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 97, 'Coriander Seeds', '', ''),
(88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 98, 'Corn Tortillas', '', ''),
(89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 99, 'Cornstarch', '', ''),
(90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 100, 'Cream', '', ''),
(91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 101, 'Creme Fraiche', '', ''),
(92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 102, 'Cubed Feta Cheese', '', ''),
(93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 103, 'Cucumber', '', ''),
(94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 104, 'Cumin', '', ''),
(95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 105, 'Cumin Seeds', '', ''),
(96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 106, 'Curry Powder', '', ''),
(97, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 107, 'Dark Brown Sugar', '', ''),
(98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 108, 'Dark Soft Brown Sugar', '', ''),
(99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 109, 'Dark Soy Sauce', '', ''),
(100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 110, 'Demerara Sugar', '', ''),
(101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 111, 'Diced Tomatoes', '', ''),
(102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 112, 'Digestive Biscuits', '', ''),
(103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 113, 'Dill', '', ''),
(104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 114, 'Doner Meat', '', ''),
(105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 115, 'Double Cream', '', ''),
(106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 116, 'Dried Oregano', '', ''),
(107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 117, 'Dry White Wine', '', ''),
(108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 119, 'Egg Plants', '', ''),
(109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 120, 'Egg Rolls', '', ''),
(110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 121, 'Egg White', '', ''),
(111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 122, 'Egg Yolks', '', ''),
(112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 123, 'Eggs', '', ''),
(113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 124, 'Enchilada Sauce', '', ''),
(114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 125, 'English Mustard', '', ''),
(115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 126, 'Extra Virgin Olive Oil', '', ''),
(116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 127, 'Fajita Seasoning', '', ''),
(117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 128, 'Farfalle', '', ''),
(118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 130, 'Fennel Bulb', '', ''),
(119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 131, 'Fennel Seeds', '', ''),
(120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 132, 'Fenugreek', '', ''),
(121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 133, 'Feta', '', ''),
(122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 134, 'Fish Sauce', '', ''),
(123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 135, 'Flaked Almonds', '', ''),
(124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 136, 'Flax Eggs', '', ''),
(125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 137, 'Flour', '', ''),
(126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 138, 'Flour Tortilla', '', ''),
(127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 139, 'Floury Potatoes', '', ''),
(128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 140, 'Free-range Egg, Beaten', '', ''),
(129, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 141, 'Free-range Eggs, Beaten', '', ''),
(130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 142, 'French Lentils', '', ''),
(131, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 143, 'Fresh Basil', '', ''),
(132, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 144, 'Fresh Thyme', '', ''),
(133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 145, 'Freshly Chopped Parsley', '', ''),
(134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 146, 'Fries', '', ''),
(135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 147, 'Full Fat Yogurt', '', ''),
(136, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 148, 'Garam Masala', '', ''),
(137, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 149, 'Garlic', '', ''),
(138, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 150, 'Garlic Clove', '', ''),
(139, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 151, 'Garlic Powder', '', ''),
(140, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 152, 'Garlic Sauce', '', ''),
(141, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 153, 'Ghee', '', ''),
(142, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 154, 'Ginger', '', ''),
(143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 155, 'Ginger Cordial', '', ''),
(144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 156, 'Ginger Garlic Paste', '', ''),
(145, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 157, 'Ginger Paste', '', ''),
(146, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 158, 'Golden Syrup', '', ''),
(147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 159, 'Gouda Cheese', '', ''),
(148, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 160, 'Granulated Sugar', '', ''),
(149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 161, 'Grape Tomatoes', '', ''),
(150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 162, 'Greek Yogurt', '', ''),
(151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 163, 'Green Beans', '', ''),
(152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 165, 'Green Chilli', '', ''),
(153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 166, 'Green Olives', '', ''),
(154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 167, 'Green Red Lentils', '', ''),
(155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 168, 'Green Salsa', '', ''),
(156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 169, 'Ground Almonds', '', ''),
(157, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 170, 'Ground Cumin', '', ''),
(158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 171, 'Ground Ginger', '', ''),
(159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 172, 'Gruyère', '', ''),
(160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 173, 'Hard Taco Shells', '', ''),
(161, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 175, 'Harissa Spice', '', ''),
(162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 176, 'Heavy Cream', '', ''),
(163, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 177, 'Honey', '', ''),
(164, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 178, 'Horseradish', '', ''),
(165, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 179, 'Hot Beef Stock', '', ''),
(166, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 180, 'Hotsauce', '', ''),
(167, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 181, 'Ice Cream', '', ''),
(168, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 182, 'Italian Fennel Sausages', '', ''),
(169, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 183, 'Italian Seasoning', '', ''),
(170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 184, 'Jalapeno', '', ''),
(171, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 185, 'Jasmine Rice', '', ''),
(172, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 186, 'Jerusalem Artichokes', '', ''),
(173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 187, 'Kale', '', ''),
(174, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 188, 'Khus Khus', '', ''),
(175, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 189, 'King Prawns', '', ''),
(176, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 190, 'Kosher Salt', '', ''),
(177, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 191, 'Lamb', '', ''),
(178, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 192, 'Lamb Loin Chops', '', ''),
(179, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 193, 'Lamb Mince', '', ''),
(180, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 194, 'Lasagne Sheets', '', ''),
(181, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 195, 'Lean Minced Beef', '', ''),
(182, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 196, 'Leek', '', ''),
(183, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 197, 'Lemon', '', ''),
(184, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 198, 'Lemon Juice', '', ''),
(185, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 199, 'Lemon Zest', '', ''),
(186, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 200, 'Lemons', '', ''),
(187, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 201, 'Lettuce', '', ''),
(188, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 202, 'Lime', '', ''),
(189, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 203, 'Little Gem Lettuce', '', ''),
(190, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 204, 'Macaroni', '', ''),
(191, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 205, 'Mackerel', '', ''),
(192, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 206, 'Madras Paste', '', ''),
(193, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 207, 'Marjoram', '', ''),
(194, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 208, 'Massaman Curry Paste', '', ''),
(195, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 209, 'Medjool Dates', '', ''),
(196, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 210, 'Meringue Nests', '', ''),
(197, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 211, 'Milk', '', ''),
(198, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 212, 'Minced Garlic', '', ''),
(199, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 213, 'Miniature Marshmallows', '', ''),
(200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 214, 'Mint', '', ''),
(201, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 215, 'Monterey Jack Cheese', '', ''),
(202, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 216, 'Mozzarella Balls', '', ''),
(203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 217, 'Muscovado Sugar', '', ''),
(204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 218, 'Mushrooms', '', ''),
(205, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 219, 'Mustard', '', ''),
(206, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 220, 'Mustard Powder', '', ''),
(207, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 221, 'Mustard Seeds', '', ''),
(208, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 222, 'Nutmeg', '', ''),
(209, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 223, 'Oil', '', ''),
(210, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 224, 'Olive Oil', '', ''),
(211, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 226, 'Onion Salt', '', '');
INSERT INTO `meals` (`idMeal`, `strMeal`, `strDrinkAlternate`, `strCategory`, `strArea`, `strInstructions`, `strMealThumb`, `strTags`, `strYoutube`, `strIngredient1`, `strIngredient2`, `strIngredient3`, `strIngredient4`, `strIngredient5`, `strIngredient6`, `strIngredient7`, `strIngredient8`, `strIngredient9`, `strIngredient10`, `strIngredient11`, `strIngredient12`, `strIngredient13`, `strIngredient14`, `strIngredient15`, `strIngredient16`, `strIngredient17`, `strIngredient18`, `strIngredient19`, `strIngredient20`, `strMeasure1`, `strMeasure2`, `strMeasure3`, `strMeasure4`, `strMeasure5`, `strMeasure6`, `strMeasure7`, `strMeasure8`, `strMeasure9`, `strMeasure10`, `strMeasure11`, `strMeasure12`, `strMeasure13`, `strMeasure14`, `strMeasure15`, `strMeasure16`, `strMeasure17`, `strMeasure18`, `strMeasure19`, `strMeasure20`, `strSource`, `strImageSource`, `strCreativeCommonsConfirmed`, `dateModified`, `created_at`, `updated_at`, `idIngredient`, `strIngredient`, `strDescription`, `strType`) VALUES
(212, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 227, 'Onions', '', ''),
(213, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 228, 'Orange', '', ''),
(214, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 229, 'Orange Zest', '', ''),
(215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 230, 'Oregano', '', ''),
(216, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 231, 'Oyster Sauce', '', ''),
(217, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 232, 'Paprika', '', ''),
(218, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 233, 'Parma Ham', '', ''),
(219, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 234, 'Parmesan', '', ''),
(220, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 235, 'Parmesan Cheese', '', ''),
(221, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 236, 'Parmigiano-reggiano', '', ''),
(222, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 237, 'Parsley', '', ''),
(223, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 238, 'Peanut Butter', '', ''),
(224, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 239, 'Peanut Oil', '', ''),
(225, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 240, 'Peanuts', '', ''),
(226, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 241, 'Peas', '', ''),
(227, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 242, 'Pecorino', '', ''),
(228, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 243, 'Penne Rigate', '', ''),
(229, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 244, 'Pepper', '', ''),
(230, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 245, 'Pine Nuts', '', ''),
(231, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 246, 'Pitted Black Olives', '', ''),
(232, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 247, 'Plain Chocolate', '', ''),
(233, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 248, 'Plain Flour', '', ''),
(234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 249, 'Plum Tomatoes', '', ''),
(235, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 252, 'Potato Starch', '', ''),
(236, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 253, 'Potatoes', '', ''),
(237, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 254, 'Prawns', '', ''),
(238, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 255, 'Puff Pastry', '', 'Pastry'),
(239, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 256, 'Raspberry Jam', '', ''),
(240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 257, 'Raw King Prawns', '', ''),
(241, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 258, 'Red Chile Flakes', '', ''),
(242, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 259, 'Red Chilli', '', ''),
(243, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 261, 'Red Chilli Powder', '', ''),
(244, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 263, 'Red Onions', '', ''),
(245, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 264, 'Red Pepper', '', ''),
(246, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 265, 'Red Pepper Flakes', '', ''),
(247, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 266, 'Red Wine', '', ''),
(248, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 267, 'Refried Beans', '', ''),
(249, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 268, 'Rice', '', ''),
(250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 269, 'Rice Noodles', '', ''),
(251, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 270, 'Rice Stick Noodles', '', ''),
(252, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 271, 'Rice Vermicelli', '', ''),
(253, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 272, 'Rigatoni', '', ''),
(254, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 273, 'Rocket', '', ''),
(255, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 274, 'Rolled Oats', '', ''),
(256, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 276, 'Saffron', '', ''),
(257, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 277, 'Sage', '', ''),
(258, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 278, 'Sake', '', ''),
(259, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 280, 'Salsa', '', ''),
(260, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 281, 'Salt', '', ''),
(261, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 282, 'Salted Butter', '', ''),
(262, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 283, 'Sausages', '', ''),
(263, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 284, 'Sea Salt', '', ''),
(264, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 286, 'Self-raising Flour', '', ''),
(265, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 287, 'Semi-skimmed Milk', '', ''),
(266, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 288, 'Sesame Seed', '', ''),
(267, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 289, 'Shallots', '', ''),
(268, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 290, 'Shredded Mexican Cheese', '', ''),
(269, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 291, 'Shredded Monterey Jack Cheese', '', ''),
(270, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 292, 'Small Potatoes', '', ''),
(271, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 293, 'Smoked Paprika', '', ''),
(272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 294, 'Smoky Paprika', '', ''),
(273, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 295, 'Sour Cream', '', ''),
(274, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 296, 'Soy Sauce', '', ''),
(275, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 297, 'Soya Milk', '', ''),
(276, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 298, 'Spaghetti', '', ''),
(277, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 299, 'Spinach', '', ''),
(278, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 301, 'Spring Onions', '', ''),
(279, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 302, 'Squash', '', ''),
(280, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 303, 'Stir-fry Vegetables', '', ''),
(281, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 304, 'Strawberries', '', ''),
(282, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 305, 'Sugar', '', ''),
(283, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 306, 'Sultanas', '', ''),
(284, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 307, 'Sunflower Oil', '', ''),
(285, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 308, 'Tamarind Ball', '', ''),
(286, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 309, 'Tamarind Paste', '', ''),
(287, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 310, 'Thai Fish Sauce', '', ''),
(288, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 311, 'Thai Green Curry Paste', '', ''),
(289, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 312, 'Thai Red Curry Paste', '', ''),
(290, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 313, 'Thyme', '', ''),
(291, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 315, 'Tomato Ketchup', '', ''),
(292, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 316, 'Tomato Puree', '', ''),
(293, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 317, 'Tomatoes', '', ''),
(294, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 318, 'Toor Dal', '', ''),
(295, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 319, 'Tuna', '', ''),
(296, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 320, 'Turmeric', '', ''),
(297, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 321, 'Turmeric Powder', '', ''),
(298, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 322, 'Turnips', '', ''),
(299, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 323, 'Vanilla', '', ''),
(300, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 324, 'Vanilla Extract', '', ''),
(301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 325, 'Veal', '', ''),
(302, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 326, 'Vegan Butter', '', ''),
(303, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 327, 'Vegetable Oil', '', ''),
(304, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 328, 'Vegetable Stock', '', ''),
(305, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 329, 'Vegetable Stock Cube', '', ''),
(306, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 330, 'Vinaigrette Dressing', '', ''),
(307, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 331, 'Vine Leaves', '', ''),
(308, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 332, 'Vinegar', '', ''),
(309, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 333, 'Water', '', ''),
(310, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 334, 'White Chocolate Chips', '', ''),
(311, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 335, 'White Fish', '', ''),
(312, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 336, 'White Fish Fillets', '', ''),
(313, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 337, 'White Vinegar', '', ''),
(314, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 338, 'White Wine', '', ''),
(315, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 339, 'Whole Milk', '', ''),
(316, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 340, 'Whole Wheat', '', ''),
(317, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 341, 'Wholegrain Bread', '', ''),
(318, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 342, 'Worcestershire Sauce', '', ''),
(319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 343, 'Yogurt', '', ''),
(320, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 344, 'Zucchini', '', ''),
(321, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 345, 'Pretzels', '', ''),
(322, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 346, 'Cream Cheese', '', ''),
(323, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 347, 'Icing Sugar', '', ''),
(324, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 348, 'Toffee Popcorn', '', ''),
(325, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 349, 'Caramel', '', ''),
(326, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 350, 'Caramel Sauce', '', ''),
(327, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 351, 'Tagliatelle', '', ''),
(328, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 352, 'Fettuccine', '', ''),
(329, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 353, 'Clotted Cream', '', ''),
(330, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 354, 'Corn Flour', '', ''),
(331, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 355, 'Mussels', '', ''),
(332, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 356, 'Fideo', '', ''),
(333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 357, 'Monkfish', '', ''),
(334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 358, 'Vermicelli Pasta', '', ''),
(335, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 359, 'Baby Squid', '', ''),
(336, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 360, 'Squid', '', ''),
(337, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 361, 'Fish Stock', '', ''),
(338, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 362, 'Pilchards', '', ''),
(339, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 363, 'Black Olives', '', ''),
(340, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 364, 'Onion', '', ''),
(341, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 365, 'Tomato', '', '');
INSERT INTO `meals` (`idMeal`, `strMeal`, `strDrinkAlternate`, `strCategory`, `strArea`, `strInstructions`, `strMealThumb`, `strTags`, `strYoutube`, `strIngredient1`, `strIngredient2`, `strIngredient3`, `strIngredient4`, `strIngredient5`, `strIngredient6`, `strIngredient7`, `strIngredient8`, `strIngredient9`, `strIngredient10`, `strIngredient11`, `strIngredient12`, `strIngredient13`, `strIngredient14`, `strIngredient15`, `strIngredient16`, `strIngredient17`, `strIngredient18`, `strIngredient19`, `strIngredient20`, `strMeasure1`, `strMeasure2`, `strMeasure3`, `strMeasure4`, `strMeasure5`, `strMeasure6`, `strMeasure7`, `strMeasure8`, `strMeasure9`, `strMeasure10`, `strMeasure11`, `strMeasure12`, `strMeasure13`, `strMeasure14`, `strMeasure15`, `strMeasure16`, `strMeasure17`, `strMeasure18`, `strMeasure19`, `strMeasure20`, `strSource`, `strImageSource`, `strCreativeCommonsConfirmed`, `dateModified`, `created_at`, `updated_at`, `idIngredient`, `strIngredient`, `strDescription`, `strType`) VALUES
(342, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 366, 'Duck', '', ''),
(343, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 367, 'Duck Legs', '', ''),
(344, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 368, 'Chicken Stock Cube', '', ''),
(345, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 369, 'Pappardelle Pasta', '', ''),
(346, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 370, 'Paccheri Pasta', '', ''),
(347, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 371, 'Linguine Pasta', '', ''),
(348, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 373, 'Sugar Snap Peas', '', ''),
(349, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 374, 'Crusty Bread', '', ''),
(350, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 375, 'Fromage Frais', '', ''),
(351, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 376, 'Clams', '', ''),
(352, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 377, 'Passata', '', ''),
(353, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 378, 'Rapeseed Oil', '', ''),
(354, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 379, 'Stilton Cheese', '', ''),
(355, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 380, 'Lamb Leg', '', ''),
(356, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 381, 'Lamb Shoulder', '', ''),
(357, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 382, 'Apricot', '', ''),
(358, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 383, 'Butternut Squash', '', ''),
(359, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 384, 'Couscous', '', ''),
(360, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 387, 'Minced Beef', '', ''),
(361, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 388, 'Turkey Mince', '', ''),
(362, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 389, 'Barbeque Sauce', '', ''),
(363, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 390, 'Sweetcorn', '', ''),
(364, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 391, 'Goose Fat', '', ''),
(365, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 392, 'Duck Fat', '', ''),
(366, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 393, 'Fennel', '', ''),
(367, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 394, 'Red Wine Vinegar', '', ''),
(368, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 395, 'Haricot Beans', '', ''),
(369, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 396, 'Rosemary', '', ''),
(370, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 397, 'Butter Beans', '', ''),
(371, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 398, 'Pinto Beans', '', ''),
(372, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 399, 'Tomato Sauce', '', ''),
(373, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 401, 'Mascarpone', '', ''),
(374, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 402, 'Mozzarella', '', ''),
(375, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 403, 'Ricotta', '', ''),
(376, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 405, 'Dried Apricots', '', ''),
(377, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 406, 'Capers', '', ''),
(378, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 407, 'Banana', '', ''),
(379, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 408, 'Raspberries', '', ''),
(380, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 409, 'Blueberries', '', ''),
(381, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 410, 'Walnuts', '', ''),
(382, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 411, 'Pecan Nuts', '', ''),
(383, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 412, 'Maple Syrup', '', ''),
(384, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 413, 'Light Brown Soft Sugar', '', ''),
(385, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 414, 'Dark Brown Soft Sugar', '', ''),
(386, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 415, 'Dark Chocolate Chips', '', ''),
(387, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 416, 'Milk Chocolate', '', ''),
(388, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 417, 'Dark Chocolate', '', ''),
(389, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 418, 'Pumpkin', '', ''),
(390, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 419, 'Shortcrust Pastry', '', 'Pastry'),
(391, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 420, 'Peanut Cookies', '', ''),
(392, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 421, 'Gelatine Leafs', '', ''),
(393, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 422, 'Peanut Brittle', '', ''),
(394, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 423, 'Peaches', '', ''),
(395, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 424, 'Yellow Pepper', '', ''),
(396, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 425, 'Green Pepper', '', ''),
(397, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 426, 'Courgettes', '', ''),
(398, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 427, 'Tinned Tomatos', '', ''),
(399, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 428, 'Chestnuts', '', ''),
(400, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 429, 'Wild Mushrooms', '', ''),
(401, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 430, 'Truffle Oil', '', ''),
(402, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 431, 'Paneer', '', ''),
(403, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 432, 'Naan Bread', '', ''),
(404, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 433, 'Lentils', '', ''),
(405, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 434, 'Roasted Vegetables', '', ''),
(406, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 435, 'Kidney Beans', '', ''),
(407, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 436, 'Mixed Grain', '', ''),
(408, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 437, 'Tahini', '', ''),
(409, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 438, 'Tortillas', '', ''),
(410, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 439, 'Udon Noodles', '', ''),
(411, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 440, 'Cabbage', '', ''),
(412, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 441, 'Shiitake Mushrooms', '', ''),
(413, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 442, 'Mirin', '', ''),
(414, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 443, 'Sesame Seed Oil', '', ''),
(415, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 444, 'Baguette', '', ''),
(416, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 445, 'Vine Tomatoes', '', ''),
(417, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 446, 'Suet', '', ''),
(418, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 447, 'Swede', '', ''),
(419, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 448, 'Ham', '', ''),
(420, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 449, 'Oysters', '', ''),
(421, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 450, 'Stout', '', ''),
(422, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 451, 'Lard', '', ''),
(423, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 452, 'Lamb Kidney', '', ''),
(424, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 453, 'Beef Kidney', '', ''),
(425, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 454, 'Haddock', '', ''),
(426, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 455, 'Smoked Haddock', '', ''),
(427, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 456, 'Brussels Sprouts', '', ''),
(428, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 457, 'Raisins', '', ''),
(429, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 458, 'Currants', '', ''),
(430, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 459, 'Custard', '', ''),
(431, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 460, 'Mixed Peel', '', ''),
(432, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 461, 'Redcurrants', '', ''),
(433, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 462, 'Blackberries', '', ''),
(434, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 463, 'Hazlenuts', '', ''),
(435, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 464, 'Braeburn Apples', '', ''),
(436, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 465, 'Red Food Colouring', '', ''),
(437, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 466, 'Pink Food Colouring', '', ''),
(438, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 467, 'Blue Food Colouring', '', ''),
(439, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 468, 'Yellow Food Colouring', '', ''),
(440, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 469, 'Apricot Jam', '', ''),
(441, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 470, 'Marzipan', '', ''),
(442, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 471, 'Almonds', '', ''),
(443, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 472, 'Black Pudding', '', ''),
(444, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 473, 'Baked Beans', '', ''),
(445, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 474, 'White Flour', '', ''),
(446, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 475, 'Yeast', '', ''),
(447, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 476, 'Fruit Mix', '', ''),
(448, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 477, 'Dried Fruit', '', ''),
(449, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 478, 'Cherry', '', ''),
(450, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 479, 'Glace Cherry', '', ''),
(451, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 480, 'Treacle', '', ''),
(452, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 481, 'Oatmeal', '', ''),
(453, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 482, 'Oats', '', ''),
(454, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 483, 'Egg', '', ''),
(455, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 484, 'Beef Shin', '', ''),
(456, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 485, 'Bouquet Garni', '', ''),
(457, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 486, 'Single Cream', '', ''),
(458, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 487, 'Red Wine Jelly', '', ''),
(459, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 488, 'Apples', '', ''),
(460, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 489, 'Goats Cheese', '', ''),
(461, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 490, 'Prosciutto', '', ''),
(462, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 491, 'Unsalted Butter', '', ''),
(463, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 492, 'Brie', '', ''),
(464, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 493, 'Tarragon Leaves', '', ''),
(465, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 494, 'Chives', '', ''),
(466, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 495, 'Pears', '', ''),
(467, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 496, 'White Chocolate', '', ''),
(468, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 497, 'Star Anise', '', ''),
(469, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 498, 'Tiger Prawns', '', ''),
(470, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 499, 'Custard Powder', '', ''),
(471, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 500, 'Desiccated Coconut', '', ''),
(472, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 501, 'Frozen Peas', '', '');
INSERT INTO `meals` (`idMeal`, `strMeal`, `strDrinkAlternate`, `strCategory`, `strArea`, `strInstructions`, `strMealThumb`, `strTags`, `strYoutube`, `strIngredient1`, `strIngredient2`, `strIngredient3`, `strIngredient4`, `strIngredient5`, `strIngredient6`, `strIngredient7`, `strIngredient8`, `strIngredient9`, `strIngredient10`, `strIngredient11`, `strIngredient12`, `strIngredient13`, `strIngredient14`, `strIngredient15`, `strIngredient16`, `strIngredient17`, `strIngredient18`, `strIngredient19`, `strIngredient20`, `strMeasure1`, `strMeasure2`, `strMeasure3`, `strMeasure4`, `strMeasure5`, `strMeasure6`, `strMeasure7`, `strMeasure8`, `strMeasure9`, `strMeasure10`, `strMeasure11`, `strMeasure12`, `strMeasure13`, `strMeasure14`, `strMeasure15`, `strMeasure16`, `strMeasure17`, `strMeasure18`, `strMeasure19`, `strMeasure20`, `strSource`, `strImageSource`, `strCreativeCommonsConfirmed`, `dateModified`, `created_at`, `updated_at`, `idIngredient`, `strIngredient`, `strDescription`, `strType`) VALUES
(473, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 502, 'Minced Pork', '', ''),
(474, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 503, 'Creamed Corn', '', ''),
(475, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 504, 'Sun-Dried Tomatoes', '', ''),
(476, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 505, 'Dijon Mustard', '', ''),
(477, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 506, 'Tabasco Sauce', '', ''),
(478, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 507, 'Canola Oil', '', ''),
(479, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 508, 'Cod', '', ''),
(480, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 509, 'Salt Cod', '', ''),
(481, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 510, 'Ackee', '', ''),
(482, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 511, 'Jerk', '', ''),
(483, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 512, 'Ground Beef', '', ''),
(484, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 513, 'Baby Aubergine', 'Eggplant (Solanum melongena) or aubergine is a species of nightshade grown for its edible fruit. Eggplant is the common name in North America, Australia and New Zealand; in British English, it is aubergine, and in South Asia and South Africa, brinjal.\r\n\r\nThe fruit is widely used in cooking. As a member of the genus Solanum, it is related to the tomato and the potato. It was originally domesticated from the wild nightshade species, the thorn or bitter apple, S. incanum, probably with two independent domestications, one in South Asia and one in East Asia.', 'Vegetable'),
(485, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 514, 'Paella Rice', 'Paella[a] is a Valencian rice dish that has ancient roots but its modern form originated in the mid-19th century in the area around Albufera lagoon on the east coast of Spain, adjacent to the city of Valencia. Many non-Spaniards view paella as Spain-s national dish, but most Spaniards consider it to be a regional Valencian dish. Valencians, in turn, regard paella as one of their identifying symbols.\r\n\r\nTypes of paella include Valencian paella, vegetable paella (Spanish: paella de verduras), seafood paella (Spanish: paella de mariscos), and mixed paella (Spanish: paella mixta), among many others. Valencian paella is believed to be the original recipe and consists of white rice, green beans (bajoqueta and tavella), meat (chicken, duck and rabbit), white beans (garrofón), snails, and seasoning such as saffron and rosemary. Another very common but seasonal ingredient is artichokes. Seafood paella replaces meat with seafood and omits beans and green vegetables. Mixed paella is a free-style combination of meat from land animals, seafood, vegetables, and sometimes beans. Most paella chefs use bomba rice due to it being less likely to overcook, but Valencians tend to use a slightly stickier (and thus more susceptible to overcooking) variety known as Senia. All types of paellas use olive oil.', ''),
(486, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 515, 'Scotch Bonnet', 'Scotch bonnet, also known as bonney peppers, or Caribbean red peppers, is a variety of chili pepper named for its resemblance to a tam o- shanter hat. Also called ata rodo by Yoruba speakers of Nigeria, it is found mainly in the Caribbean islands; it is also found in Guyana (where it is called the ball-of-fire pepper), the Maldives Islands (where it is called githeyo mirus), Panama (where it is called aji chombo) and West Africa. Most Scotch bonnets have a heat rating of 100,000–350,000 Scoville units. For comparison, most jalapeño peppers have a heat rating of 2,500 to 8,000 on the Scoville scale. However, completely sweet varieties of Scotch bonnet are grown on some of the Caribbean islands, called cachucha peppers.\r\n\r\nThese peppers are used to flavour many different dishes and cuisines worldwide and are often used in hot sauces and condiments. The Scotch bonnet has a sweeter flavour and stouter shape, distinct from its habanero relative with which it is often confused, and gives jerk dishes (pork/chicken) and other Caribbean dishes their unique flavour. Scotch bonnets are mostly used in West African, Antiguan, Kittitian/Nevisian, Anguilan, Dominican, St. Lucian, St Vincentian, Grenadian, Trinidadian, Jamaican, Barbadian, Guyanese, Surinamese, Haitian and Cayman cuisines and pepper sauces, though they often show up in other Caribbean recipes. It is also used in Costa Rica and Panama for Caribbean-styled recipes such as rice and beans, Rondón, saus, beef patties, and Ceviche.\r\n\r\nFresh, ripe Scotch bonnets can change from green to yellow to scarlet red, however many other breeds of this pepper can ripen to orange, yellow, peach, or even a chocolate brown.', 'Vegetable'),
(487, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 516, 'Oxtail', 'Oxtail (occasionally spelled ox tail or ox-tail) is the culinary name for the tail of cattle. Formerly, it referred only to the tail of an ox or steer, a bullock (a castrated male).[citation needed] An oxtail typically weighs 2 to 4 lbs. (1–1.8 kg) and is skinned and cut into short lengths for sale.\r\n\r\nOxtail is a bony, gelatin-rich meat, which is usually slow-cooked as a stew[1] or braised. It is a traditional stock base for a soup. Traditional preparations involve slow cooking, so some modern recipes take a shortcut using a pressure cooker. Oxtail is the main ingredient of the Italian dish coda alla vaccinara (a classic of Roman cuisine). It is a popular flavour for powder, instant and premade canned soups in the United Kingdom and Ireland. Oxtails are also one of the popular bases for Russian aspic appetizer dishes (холодец or студень), along with pig trotters or ears or cow \"knees\", but are the preferred ingredients among Russian Jews because they can be Kosher.\r\n\r\nVersions of oxtail soup are popular traditional dishes in South America, West Africa, China, Spain [2] and Indonesia. In Chinese cuisine, it-s usually made into a soup called 牛尾汤 (niúwěi tāng, \"oxtail soup\"). In Korean cuisine, a soup made with oxtail is called kkori gomtang (see gomguk). It is a thick soup seasoned with salt and eaten with a bowl of rice. It can be used as a stock for making tteokguk (rice cake soup). Stewed oxtail with butter bean or as main dish (with rice) is popular in Jamaica, Trinidad, and other West Indian cultures. Oxtail is also very popular in South Africa where it is often cooked in a traditional skillet called a potjie, which is a three-legged cast iron pot placed over an open fire. Oxtail is also eaten in other southern parts of Africa like Zimbabwe and served with sadza and greens. In the United States, oxtail is a mainstay in African American and West Indian households. In Cuban cuisine, a stew can be made from oxtail called rabo encendido. In the Philippines, it is prepared in a peanut based stew called Kare-kare. In Iran, Oxtail is slow-cooked and served as a substitute for shank in a main dish called Baghla-Poli-Mahicheh which is prepared with rice, shank (or oxtail) and a mixture of herbs including dill, coriander, parsley and garlic.\r\n\r\nIn the United States, oxtail has the meat-cutting classification NAMP 1791.', 'Meat'),
(488, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 517, 'Broad Beans', 'Vicia faba, also known as the broad bean, fava bean, faba bean, field bean, bell bean, or tic bean, is a species of flowering plant in the pea and bean family Fabaceae. It is native to North Africa[dubious – discuss] southwest and south Asia, and extensively cultivated elsewhere.[citation needed] A variety Vicia faba var. equina Pers. – horse bean has been previously recognized.', 'Vegetable'),
(489, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 518, 'Red Snapper', 'The northern red snapper (Lutjanus campechanus) is a species of snapper native to the western Atlantic Ocean including the Gulf of Mexico, where it inhabits environments associated with reefs. This species is commercially important and is also sought-after as a game fish.\r\n\r\nThe northern red snapper-s body is very similar in shape to other snappers, such as the mangrove snapper, mutton snapper, lane snapper, and dog snapper. All feature a sloped profile, medium-to-large scales, a spiny dorsal fin, and a laterally compressed body. Northern red snapper have short, sharp, needle-like teeth, but they lack the prominent upper canine teeth found on the mutton, dog, and mangrove snappers. This snapper reaches maturity at a length of about 39 cm (15 in). The common adult length is 60 cm (24 in), but may reach 100 cm (39 in). The maximum published weight is 38 kg (84 lb), and the oldest reported age is 100+ years. Coloration of the northern red snapper is light red, with more intense pigment on the back. It has 10 dorsal spines, 14 soft dorsal rays, three anal spines and eight to 9 anal soft rays. Juvenile fish (shorter than 30–35 cm) can also have a dark spot on their sides, below the anterior soft dorsal rays, which fades with age.', 'Fish'),
(490, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 519, 'Malt Vinegar', 'Vinegar is a liquid consisting of about 5–20% acetic acid (CH3COOH), water, and other trace chemicals, which may include flavorings. The acetic acid is produced by the fermentation of ethanol by acetic acid bacteria. Vinegar is now mainly used as a cooking ingredient, or in pickling. As the most easily manufactured mild acid, it has historically had a great variety of industrial, medical, and domestic uses, some of which (such as its use as a general household cleaner) are still commonly practiced today.\r\n\r\nCommercial vinegar is produced either by a fast or a slow fermentation process. In general, slow methods are used in traditional vinegars where fermentation proceeds slowly over the course of a few months or up to a year. The longer fermentation period allows for the accumulation of a non-toxic slime composed of acetic acid bacteria. Fast methods add mother of vinegar (bacterial culture) to the source liquid before adding air to oxygenate and promote the fastest fermentation. In fast production processes, vinegar may be produced between 20 hours to three days.', 'Seasoning'),
(491, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 520, 'Rice Vinegar', 'Rice vinegar is a vinegar made from fermented rice in China, Japan, Korea, and Vietnam.\r\n\r\nChinese rice vinegars are stronger than Japanese ones, and range in colour from clear to various shades of red, brown and black and are therefore known as rice wine vinegar. Chinese and especially Japanese vinegars are less acidic than the distilled Western vinegars which, for that reason, are not appropriate substitutes for rice vinegars. The majority of the Asian rice vinegar types are also more mild and sweet than vinegars typically used in the Western world, with black vinegars as a notable exception. Chinese rice vinegars are made from huangjiu, a type of rice wine.', 'Vinegar'),
(492, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 521, 'Water Chestnut', 'Eleocharis dulcis, the Chinese water chestnut or water chestnut, is a grass-like sedge native to Asia (China, Japan, India, Philippines, etc.), Australia, tropical Africa, and various islands of the Pacific and Indian Oceans. It is grown in many countries for its edible corms.\r\n\r\nThe water chestnut is not a nut at all, but an aquatic vegetable that grows in marshes, under water, in the mud. It has stem-like, tubular green leaves that grow to about 1.5 m. The water caltrop, which also is referred to by the same name, is unrelated and often confused with the water chestnut.\r\n\r\nThe small, rounded corms have a crisp, white flesh and may be eaten raw, slightly boiled, or grilled, and often are pickled or tinned. They are a popular ingredient in Chinese dishes. In China, they are most often eaten raw, sometimes sweetened. They also may be ground into a flour form used for making water chestnut cake, which is common as part of dim sum cuisine. They are unusual among vegetables for remaining crisp even after being cooked or canned, because their cell walls are cross-linked and strengthened by certain phenolic compounds, such as oligomers of ferulic acid. This property is shared by other vegetables that remain crisp in this manner, including the tiger nut and lotus root. The corms contain the antibiotic agent puchiin, which is stable to high temperature. Apart from the edible corms, the leaves can be used for cattlefeed, mulch or compost.\r\n\r\nThe corms are rich in carbohydrates (about 90% by dry weight), especially starch (about 60% by dry weight), and are also a good source of dietary fiber, riboflavin, vitamin B6, potassium, copper, and manganese.\r\n\r\nIf eaten uncooked, the surface of the plants may transmit fasciolopsiasis.', 'Sedge'),
(493, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 522, 'Tofu', 'Tofu, also known as bean curd, is a food cultivated by coagulating soy milk and then pressing the resulting curds into soft white blocks. It is a component in East Asian and Southeast Asian cuisines. Tofu can be soft, firm, or extra firm. Tofu has a subtle flavor and can be used in savory and sweet dishes. It is often seasoned or marinated to suit the dish.\r\n\r\nTofu has a low calorie count and relatively large amounts of protein. It is high in iron, and it can have a high calcium or magnesium content, depending on the coagulants used in manufacturing (e.g. calcium chloride, calcium sulfate, magnesium sulfate).', 'Curd'),
(494, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 523, 'Doubanjiang', 'Doubanjiang (IPA: [tôupântɕjâŋ]), or simply Douban, or Toban-djan, Chili bean sauce, is a spicy, salty paste made from fermented broad beans, soybeans, salt, rice, and various spices. Doubanjiang exists in plain and spicy versions, with the latter containing red chili peppers and called la doubanjiang (辣豆瓣酱; pinyin: là dòubànjiàng; là meaning \"hot\" or \"spicy\").\r\n\r\nIt is used particularly in Sichuan cuisine, and in fact, the people of the province commonly refer to it as \"the soul of Sichuan cuisine\". A particularly well-known variety is called Pixian Douban (simplified Chinese: 郫县豆瓣; traditional Chinese: 郫縣豆瓣; pinyin: Píxiàn dòubàn), named after the district of Pixian, Sichuan.[1]\r\n\r\nThis sauce is sometimes stir-fried with oil and eaten with rice or noodles as a quick meal, and is also commonly used as a primary flavoring for fried tofu dishes and cold tofu salads. It is also frequently mixed with instant noodles.\r\n\r\nIn many Chinese communities and food factories, doubanjiang is produced with only soybeans and salt, and does not contain the broad beans or chili peppers typical of Sichuan-style doubanjiang.\r\n\r\nIn Korean cuisine, a similar form of bean paste is called doenjang.', 'Sauce'),
(495, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 524, 'Fermented Black Beans', 'Douchi (Chinese: 豆豉; pinyin: dòuchǐ), or tochi is a type of fermented and salted black soybean. In English, it is known as fermented black soybeans, Chinese fermented black beans (Chinese: 黑豆豆豉; pinyin: hēidòu dòuchǐ), salted black beans, salty black beans, or just black beans. They are a flavoring most popular in the cuisine of China, where they are most widely used for making black bean sauce dishes.[1][page needed]\r\n\r\nDouchi is made by fermenting and salting black soybeans. The black type soybean is most commonly used and the process turns the beans soft, and mostly semi-dry (if the beans are allowed to dry). Regular soybeans (white soybeans) are also used, but this does not produce \"salted black beans\"; instead, these beans become brown. The smell is sharp, pungent, and spicy; the taste is salty, somewhat bitter and sweet.[citation needed] The product made with white soybeans is called mianchi.\r\n\r\nThe process and product are similar to ogiri and iru, both being African fermented bean products[citation needed].\r\n\r\nDouchi, \"Chinese salted black beans\", and \"black soybeans\" should not be confused with the black turtle bean, a variety of common bean that is commonly used in the cuisines of Central America, South America, and the Caribbean.', 'Bean'),
(496, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 525, 'Scallions', 'Scallions (green onion, spring onion and salad onion) are vegetables of various Allium onion species. Scallions have a milder taste than most onions. Their close relatives include the garlic, shallot, leek, chive, and Chinese onion.\r\n\r\nAlthough the bulbs of many Allium species are used as food, the defining characteristic of scallion species is that they lack a fully developed bulb. In common with all Allium species, scallions have hollow, tubular green leaves, growing directly from the bulb. These leaves are used as a vegetable; they are eaten either raw or cooked. The leaves are often chopped into other dishes, in the manner of onions or garlic. Also known as scallions or green onions, spring onions are in fact very young onions, harvested before the bulb has had a chance to swell.', 'Vegetable'),
(497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 526, 'Sichuan Pepper', 'Sichuan pepper, Sichuan peppercorn, or Szechuan pepper, is a commonly used spice in Chinese cuisine. It is derived from at least two species of the global genus Zanthoxylum, including Z. simulans and Z. bungeanum. The genus Zanthoxylum belongs in the rue or citrus family, and, despite its name, is not closely related to either black pepper nor the chili pepper.\r\n\r\nThe husk or hull (pericarp) around the seeds may be used whole, especially in Sichuan cuisine, and the finely ground powder is one of the ingredients for five-spice powder. It is also used in traditional Chinese medicine. The pericarp is most often used, but the leaves of various species are also used in some regions of China.\r\n\r\nAnother species of Zanthoxylum native to China, Z. schinifolium, called xiāng jiāo zi (香椒子, \"aromatic peppercorn\") or qīng huā jiāo (青花椒, \"green flower pepper\"), is used as a spice in Hebei.\r\n\r\nWhile the exact flavour and composition of different species from the genus Zanthoxylum vary, most share the same essential characteristics. So while the terms \"Sichuan pepper\" and sanshō may refer specifically to Z. simulans and Z. piperitum, respectively, the two are commonly used interchangeably.\r\n\r\nRelated species are used in the cuisines of Tibet, Bhutan, Nepal, Thailand, and India (the Konkani and Uttarakhandi people) and Toba Batak peoples. In Bhutan, this pepper is known as thingye and is used liberally in preparation of soups, gruels, and phaag sha paa (pork slices).[citation needed] In Nepal, timur is used in the popular foods momo, thukpa, chow mein, chicken chilli, and other meat dishes. It is also widely used in homemade pickles. People take timur as a medicine for stomach or digestion problems, in a preparation with cloves of garlic and mountain salt with warm water.', 'Spice'),
(498, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:46', NULL, 527, 'Wonton Skin', 'Won ton skin. Paper-thin squares of dough made from flour, water, eggs and salt used to make won tons, egg rolls and gyoza.', 'Pastry'),
(499, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 528, 'Starch', 'Starch or amylum is a polymeric carbohydrate consisting of a large number of glucose units joined by glycosidic bonds. This polysaccharide is produced by most green plants as energy storage. It is the most common carbohydrate in human diets and is contained in large amounts in staple foods like potatoes, wheat, maize (corn), rice, and cassava.\r\n\r\nPure starch is a white, tasteless and odorless powder that is insoluble in cold water or alcohol. It consists of two types of molecules: the linear and helical amylose and the branched amylopectin. Depending on the plant, starch generally contains 20 to 25% amylose and 75 to 80% amylopectin by weight.[4] Glycogen, the glucose store of animals, is a more highly branched version of amylopectin.\r\n\r\nIn industry, starch is converted into sugars, for example by malting, and fermented to produce ethanol in the manufacture of beer, whisky and biofuel. It is processed to produce many of the sugars used in processed foods. Mixing most starches in warm water produces a paste, such as wheatpaste, which can be used as a thickening, stiffening or gluing agent. The biggest industrial non-food use of starch is as an adhesive in the papermaking process. Starch can be applied to parts of some garments before ironing, to stiffen them.', 'Side'),
(500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 529, 'Rice wine', 'Rice wine is an alcoholic beverage fermented and distilled from rice, traditionally consumed in East Asia, Southeast Asia and South Asia. Rice wine is made from the fermentation of rice starch that has been converted to sugars. Microbes are the source of the enzymes that convert the starches to sugar.[1]\r\n\r\nRice wine typically has an alcohol content of 18–25% ABV. Rice wines are used in Asian gastronomy at formal dinners and banquets and in cooking. They are also used in a religious and ceremonial context.', 'Wine'),
(501, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 530, 'Cooking wine', 'Splash into casseroles, sauces and marinades for a rounded vibrant flavour.', 'Wine'),
(502, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 531, 'Duck Sauce', 'Duck sauce (or orange sauce) is a condiment with a sweet and sour flavor and a translucent orange appearance similar to a thin jelly. Offered at Chinese-American restaurants, it is used as a dip for deep-fried dishes such as wonton strips, spring rolls, egg rolls, duck, chicken, fish, or with rice or noodles. It is often provided in single-serving packets along with soy sauce, mustard, hot sauce or red chili powder. It may be used as a glaze on foods, such as poultry. Despite its name the sauce is not prepared using duck meat.', 'Sauce'),
(503, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 532, 'Gochujang', 'Gochujang or red chili paste is a savory, sweet, and spicy fermented condiment made from chili powder, glutinous rice, meju powder, yeotgireum, and salt.', 'Sauce'),
(504, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 533, 'Bean Sprouts', 'Bean sprouts are a common ingredient across the world. They are particularly common in Eastern Asian cuisine.\r\n\r\nThere are two types of common bean sprouts:\r\n\r\nMung bean sprout is made from the greenish-capped mung beans\r\nSoybean sprout is made from yellow, larger-grained soybean\r\nIt typically takes one week for them to become fully grown. The sprouted beans are more nutritious than the original beans and they require much less cooking time.', 'Vegetable'),
(505, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 534, 'Noodles', 'Noodles are a staple food in many cultures. They are made from unleavened dough which is stretched, extruded, or rolled flat and cut into one of a variety of shapes. While long, thin strips may be the most common, many varieties of noodles are cut into waves, helices, tubes, strings, or shells, or folded over, or cut into other shapes. Noodles are usually cooked in boiling water, sometimes with cooking oil or salt added. They are often pan-fried or deep-fried. Noodles are often served with an accompanying sauce or in a soup. Noodles can be refrigerated for short-term storage or dried and stored for future use. The material composition or geocultural origin must be specified when discussing noodles. The word derives from the German word Nudel.[1]', 'Side'),
(506, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 535, 'Wood Ear Mushrooms', 'Auricularia auricula-judae, known as the Jew-s ear, wood ear, jelly ear or by a number of other common names, is a species of edible Auriculariales fungus found worldwide. The fruiting body is distinguished by its noticeably ear-like shape and brown colouration; it grows upon wood, especially elder. Its specific epithet is derived from the belief that Judas Iscariot hanged himself from an elder tree; the common name \"Judas-s ear\" was largely eclipsed by the corruption \"Jew-s ear\", while today \"jelly ear\" and other names are sometimes used. The fungus can be found throughout the year in temperate regions worldwide, where it grows upon both dead and living wood.\r\n\r\nIn the West, A. auricula-judae was used in folk medicine as recently as the 19th century for complaints including sore throats, sore eyes and jaundice, and as an astringent. Although it is not widely consumed in the West, it has long been popular in China, to the extent that Australia exported large volumes to China in the early twentieth century. Today, the fungus is a popular ingredient in many Chinese dishes, such as hot and sour soup, and also used in Chinese medicine. It is also used in Ghana, as a blood tonic. Modern research into possible medical applications has variously concluded that A. auricula-judae has antitumour, hypoglycemic, anticoagulant and cholesterol-lowering properties.', 'Vegetable'),
(507, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 536, 'Dark Rum', 'Rum is a distilled alcoholic drink made from sugarcane byproducts, such as molasses, or directly from sugarcane juice, by a process of fermentation and distillation. The distillate, a clear liquid, is then usually aged in oak barrels.\r\n\r\nThe majority of the world-s rum production occurs in the Caribbean and Latin America. Rum is also produced in Australia, Portugal, Austria, Canada, Fiji, India, Japan, Mauritius, Nepal, New Zealand, the Philippines, Reunion Island, South Africa, Spain, Sweden, Taiwan, Thailand, the United Kingdom and the United States.\r\n\r\nRums are produced in various grades. Light rums are commonly used in cocktails, whereas \"golden\" and \"dark\" rums were typically consumed straight or neat, on the rocks, or used for cooking, but are now commonly consumed with mixers. Premium rums are also available, made to be consumed either straight or iced.\r\n\r\nRum plays a part in the culture of most islands of the West Indies as well as in The Maritimes and Newfoundland. This drink has famous associations with the Royal Navy (where it was mixed with water or beer to make grog) and piracy (where it was consumed as bumbo). Rum has also served as a popular medium of economic exchange, used to help fund enterprises such as slavery (see Triangular trade), organized crime, and military insurgencies (e.g., the American Revolution and Australia-s Rum Rebellion).', 'Spirit'),
(508, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 537, 'Light Rum', 'Rum is a distilled alcoholic drink made from sugarcane byproducts, such as molasses, or directly from sugarcane juice, by a process of fermentation and distillation. The distillate, a clear liquid, is then usually aged in oak barrels.\r\n\r\nThe majority of the world-s rum production occurs in the Caribbean and Latin America. Rum is also produced in Australia, Portugal, Austria, Canada, Fiji, India, Japan, Mauritius, Nepal, New Zealand, the Philippines, Reunion Island, South Africa, Spain, Sweden, Taiwan, Thailand, the United Kingdom and the United States.\r\n\r\nRums are produced in various grades. Light rums are commonly used in cocktails, whereas \"golden\" and \"dark\" rums were typically consumed straight or neat, on the rocks, or used for cooking, but are now commonly consumed with mixers. Premium rums are also available, made to be consumed either straight or iced.\r\n\r\nRum plays a part in the culture of most islands of the West Indies as well as in The Maritimes and Newfoundland. This drink has famous associations with the Royal Navy (where it was mixed with water or beer to make grog) and piracy (where it was consumed as bumbo). Rum has also served as a popular medium of economic exchange, used to help fund enterprises such as slavery (see Triangular trade), organized crime, and military insurgencies (e.g., the American Revolution and Australia-s Rum Rebellion).', 'Spirit'),
(509, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 538, 'Rum', 'Rum is a distilled alcoholic drink made from sugarcane byproducts, such as molasses, or directly from sugarcane juice, by a process of fermentation and distillation. The distillate, a clear liquid, is then usually aged in oak barrels.\r\n\r\nThe majority of the world-s rum production occurs in the Caribbean and Latin America. Rum is also produced in Australia, Portugal, Austria, Canada, Fiji, India, Japan, Mauritius, Nepal, New Zealand, the Philippines, Reunion Island, South Africa, Spain, Sweden, Taiwan, Thailand, the United Kingdom and the United States.\r\n\r\nRums are produced in various grades. Light rums are commonly used in cocktails, whereas \"golden\" and \"dark\" rums were typically consumed straight or neat, on the rocks, or used for cooking, but are now commonly consumed with mixers. Premium rums are also available, made to be consumed either straight or iced.\r\n\r\nRum plays a part in the culture of most islands of the West Indies as well as in The Maritimes and Newfoundland. This drink has famous associations with the Royal Navy (where it was mixed with water or beer to make grog) and piracy (where it was consumed as bumbo). Rum has also served as a popular medium of economic exchange, used to help fund enterprises such as slavery (see Triangular trade), organized crime, and military insurgencies (e.g., the American Revolution and Australia-s Rum Rebellion).', 'Spirit'),
(510, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 539, 'English Muffins', 'English muffins are a small, round, flat yeast-leavened bread which is commonly sliced horizontally, toasted, and buttered.[2] Toasted English muffins, which are often used in the United States as a breakfast food, may be served with sweet toppings (e.g., fruit jam, or honey) or savoury toppings (e.g., eggs, sausage rounds, bacon, or cheese). English muffins are also used as the bread in a variety of breakfast sandwiches, and are an essential ingredient in Eggs Benedict and most of its variations.\r\n\r\nIn the United States and U.S.-influenced territories, they are called English muffins to distinguish them from U.S. muffins, which are larger and sweeter miniature baked quick breads. They are very similar to bolo do caco in Portuguese cuisine.', 'Bread'),
(511, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 540, 'Muffins', 'A muffin is an individual-sized, baked product. It can refer to two distinct items, a part-raised flatbread and a cupcake-like quickbread. The flatbread is of British or European derivation, and dates from at least the early 18th century, while the quickbread originated in North America during the 19th century. Both are common worldwide today.', 'Bread'),
(512, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 541, 'White Wine Vinegar', 'Wine vinegar is made from red or white wine, and is the most commonly used vinegar in Southern and Central Europe, Cyprus and Israel. As with wine, there is a considerable range in quality. Better-quality wine vinegars are matured in wood for up to two years, and exhibit a complex, mellow flavor. Wine vinegar tends to have a lower acidity than white or cider vinegars. More expensive wine vinegars are made from individual varieties of wine, such as champagne, sherry, or pinot gris.', 'Dressing'),
(513, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 542, 'Smoked Salmon', 'Smoked salmon is a preparation of salmon, typically a fillet that has been cured and hot or cold smoked. Due to its moderately high price, smoked salmon is considered a delicacy. Although the term lox is sometimes applied to smoked salmon, they are different products.', 'Fish'),
(514, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 543, 'Mars Bar', 'Mars is a variety of chocolate bar produced by Mars, Incorporated. It was first manufactured in 1932 in Slough, England by Forrest Mars, Sr. The bar was sold in two different formulations. In its original British version the bar consists of milk chocolate surrounding caramel and nougat, developed to resemble the American candy bar known as the Milky Way, which had been introduced a decade earlier. An American version of the Mars Bar was produced which had nougat and toasted almonds covered in milk chocolate; later, caramel was added to the recipe as well. The American version was discontinued in 2002, though it has been revived for short runs since then.', 'Confectionery'),
(515, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 544, 'Rice Krispies', 'Rice Krispies (also known as Rice Bubbles in Australia and New Zealand) is a breakfast cereal marketed by Kellogg-s in 1927 and released to the public in 1928. Rice Krispies are made of crisped rice (rice and sugar paste that is formed into rice shapes or \"berries\", cooked, dried and toasted), and expand forming very thin and hollowed out walls that are crunchy and crisp. When milk is added to the cereal the walls tend to collapse, creating the \"Snap, crackle and pop\" sounds.\r\n\r\nRice Krispies cereal has a long advertising history, with the elf cartoon characters Snap, Crackle and Pop touting the brand. In 1963, The Rolling Stones recorded a short song for a Rice Krispies television advertisement.', 'Cereal'),
(516, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 545, 'Ancho Chillies', '', ''),
(517, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 546, 'Almond Milk', '', ''),
(518, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 548, 'Allspice', '', ''),
(519, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 550, 'Almond Extract', 'The almond (Prunus dulcis, syn. Prunus amygdalus) is a species of tree native to Mediterranean climate regions of the Middle East, but widely cultivated elsewhere. The almond is also the name of the edible and widely cultivated seed of this tree. Within the genus Prunus, it is classified with the peach in the subgenus Amygdalus, distinguished from the other subgenera by corrugations on the shell (endocarp) surrounding the seed.\r\n\r\nThe fruit of the almond is a drupe, consisting of an outer hull and a hard shell with the seed, which is not a true nut, inside. Shelling almonds refers to removing the shell to reveal the seed. Almonds are sold shelled or unshelled. Blanched almonds are shelled almonds that have been treated with hot water to soften the seedcoat, which is then removed to reveal the white embryo.', 'Fruit'),
(520, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 552, 'Tripe', 'Tripe is a type of edible lining from the stomachs of various farm animals. Most tripe is from cattle and sheep.', 'Meat');
INSERT INTO `meals` (`idMeal`, `strMeal`, `strDrinkAlternate`, `strCategory`, `strArea`, `strInstructions`, `strMealThumb`, `strTags`, `strYoutube`, `strIngredient1`, `strIngredient2`, `strIngredient3`, `strIngredient4`, `strIngredient5`, `strIngredient6`, `strIngredient7`, `strIngredient8`, `strIngredient9`, `strIngredient10`, `strIngredient11`, `strIngredient12`, `strIngredient13`, `strIngredient14`, `strIngredient15`, `strIngredient16`, `strIngredient17`, `strIngredient18`, `strIngredient19`, `strIngredient20`, `strMeasure1`, `strMeasure2`, `strMeasure3`, `strMeasure4`, `strMeasure5`, `strMeasure6`, `strMeasure7`, `strMeasure8`, `strMeasure9`, `strMeasure10`, `strMeasure11`, `strMeasure12`, `strMeasure13`, `strMeasure14`, `strMeasure15`, `strMeasure16`, `strMeasure17`, `strMeasure18`, `strMeasure19`, `strMeasure20`, `strSource`, `strImageSource`, `strCreativeCommonsConfirmed`, `dateModified`, `created_at`, `updated_at`, `idIngredient`, `strIngredient`, `strDescription`, `strType`) VALUES
(521, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 553, 'Goat Meat', 'The domestic goat or simply goat (Capra aegagrus hircus) is a subspecies of C. aegagrus domesticated from the wild goat of Southwest Asia and Eastern Europe. The goat is a member of the animal family Bovidae and the goat—antelope subfamily Caprinae, meaning it is closely related to the sheep. There are over 300 distinct breeds of goat. Goats are one of the oldest domesticated species of animal, and have been used for milk, meat, fur, and skins across much of the world. Milk from goats is often turned into goat cheese.', 'Meat'),
(522, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 554, 'Black Beans', 'The black turtle bean is a small, shiny variety of the common bean (Phaseolus vulgaris) especially popular in Latin American cuisine, though it can also be found in the Cajun and Creole cuisines of south Louisiana. Like most common beans, it is native to the Americas, but has been introduced around the world. It is also used in East Indian cooking, Punjabi cuisine, and in Maharashtrian cuisine, it is known as Kala Ghevada. It is used interchangeably with vigna mungo (black gram) in countries such as the United States. The black turtle bean is often simply called the black bean (frijoles negros, zaragoza, judía negra, poroto negro, or caraota o habichuela negra in Spanish; and feijão preto in Portuguese), although this terminology can cause confusion with other black beans.', 'Bean'),
(523, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 555, 'Anchovy Fillet', 'Anchovies are tiny, silvery fish that come from the Mediterranean and southern European coasts. They-re sold salt-cured, usually oil-packed, and filleted. Commonly they come either flat or rolled in cans or jars, or ground and mixed with oil or butter to make a paste that is sold in tubes. On their own, anchovies are very salty but mixed into sauces, dressings, or pastas they add a wonderful depth of flavor.', 'Fish'),
(524, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 556, 'Ras el hanout', 'Ras el hanout or rass el hanout (Arabic: راس الحانوت‎ raʾs al-ḥānūt, pronounced [rɑʔs ælħɑːnuːt] (About this soundlisten)) is a spice mix found in varying forms in Tunisia, Algeria, and Morocco.[1] It plays a similar role in North African cuisine as garam masala does in Indian cuisine. The name in Arabic means \"head of the shop\" and implies a mixture of the best spices the seller has to offer. Ras el hanout is used in many savory dishes, sometimes rubbed on meat or fish, or stirred into couscous or rice.\r\n\r\nThere is no definitive composition of spices that makes up ras el hanout. Each shop, company, or family may have their own blend. The mixture usually consists of over a dozen spices, in different proportions. Commonly used ingredients include cardamom, cumin, clove, cinnamon, nutmeg, mace, allspice, dry ginger, chili peppers, coriander seed, peppercorn, sweet and hot paprika, fenugreek, and dry turmeric. Some spices may be particular to the region, such as ash berries, chufa, grains of paradise, orris root, monk-s pepper, cubebs, dried rosebud, fennel seed or aniseed, galangal, long pepper. Ingredients may be toasted before being ground or pounded in a mortar and mixed together. Some preparations include salt or sugar, but that is generally not the accepted practice. Garlic, saffron, nuts or dry herbs are generally not included, as they are usually added to dishes individually, but some commercial preparations, particularly in Europe and North America, may contain them.\r\n\r\nThe composition of ras el hanout differs somewhat from the Baharat spice mix, but they differ more by the types of dishes they are associated with and by region rather than the ingredients in them. Although used by Berber people, it should not be confused with \"berbere\" spice mix from Ethiopia.\r\n\r\nCertain supposed aphrodisiacs, including the notoriously dangerous \"green metallic beetles\", cantharides, have appeared in many Moroccan prescriptions, but these seem to be irrelevant for flavouring purposes.', 'Spice'),
(525, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 557, 'Filo Pastry', 'Filo or phyllo (Greek: φύλλο \"leaf\") is a very thin unleavened dough used for making pastries such as baklava and börek in Middle Eastern and Balkan cuisines. Filo-based pastries are made by layering many sheets of filo brushed with oil or butter; the pastry is then baked.', 'Pastry'),
(526, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 558, 'Orange Blossom Water', 'Orange flower water, or orange blossom water, is the clear, perfumed by-product of the distillation of fresh bitter-orange blossoms for their essential oil.\r\n\r\nUses\r\nMediterranean Relief.jpg\r\nThis essential water has traditionally been used as an aromatizer in many Mediterranean traditional dessert dishes, such as in France for the gibassier and pompe à l-huile or in Spain for the Roscón de Reyes (King cake), or the Samsa in Tunisia or in Moroccan coffee, but has more recently found its way into other cuisines. For example, orange flower water is used in Europe to flavor madeleines, in Mexico to flavor little wedding cakes and Pan de muerto, and in the United States to make orange blossom scones and marshmallows. Orange flower water is also used as an ingredient in some cocktails, such as the Ramos Gin Fizz. In Malta and many North African as well as Middle Eastern countries, orange blossom water is widely used as medicine for stomach ache and given to small children as well as adults.\r\n\r\nOrange flower water has been a traditional ingredient used often in North African as well as in Middle Eastern cooking. In Arab variants of baklava, orange blossom water is often mixed with the sweet syrup for flavor. Orange blossoms are believed to be used in this manner because they are seen as the traditional bridal flower and, therefore, symbolize purity (white, small and delicate). It is also added to plain water in the Middle East to mask high mineral content and other unpleasant flavors (e.g. those arising from storage in a qulla, a type of clay jug that keeps water cool in a manner similar to the zeer); some add the fragrance irrespective of the taste of the plain water.', 'Drink'),
(527, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 559, 'Candied Peel', 'Candied fruit, also known as crystallized fruit or glacé fruit, has existed since the 14th century. Whole fruit, smaller pieces of fruit, or pieces of peel, are placed in heated sugar syrup, which absorbs the moisture from within the fruit and eventually preserves it.', 'Confectionery'),
(528, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 560, 'Grand Marnier', 'Grand Marnier is a French brand of liqueurs. The brand-s best-known product is Grand Marnier Cordon Rouge, an orange-flavored liqueur created in 1880 by Alexandre Marnier-Lapostolle. It is made from a blend of Cognac brandy, distilled essence of bitter orange, and sugar. Grand Marnier Cordon Rouge is 40% alcohol.', 'Liqueur'),
(529, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 561, 'Sherry', 'Sherry is a fortified wine made from white grapes that are grown near the city of Jerez de la Frontera in Andalusia, Spain.', 'Wine'),
(530, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 562, 'Rose water', 'Rose water is a flavoured water made by steeping rose petals in water. Additionally, it is the hydrosol portion of the distillate of rose petals, a by-product of the production of rose oil for use in perfume. It is used to flavour food, as a component in some cosmetic and medical preparations, and for religious purposes throughout Europe and Asia.', 'Drink'),
(531, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 563, 'Mixed Spice', 'Mixed spice, also called pudding spice, is a British[1] blend of sweet spices, similar to the pumpkin pie spice used in the United States. Cinnamon is the dominant flavour, with nutmeg and allspice. It is often used in baking, or to complement fruits or other sweet foods.', 'Spice'),
(532, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 564, 'Mincemeat', 'Mincemeat is a mixture of chopped dried fruit, distilled spirits and spices, and sometimes beef suet, beef, or venison. Originally, mincemeat always contained meat. Many modern recipes contain beef suet, though vegetable shortening is sometimes used in its place.', 'Spice'),
(533, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 565, 'Sweet Potatoes', 'The sweet potato or sweetpotato is a dicotyledonous plant that belongs to the bindweed or morning glory family, Convolvulaceae. Its large, starchy, sweet-tasting, tuberous roots are a root vegetable. The young leaves and shoots are sometimes eaten as greens.', 'Root Vegetable'),
(534, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 566, 'Bread Rolls', 'A roll is a small, usually round or oblong individual loaf of bread served as a meal accompaniment (eaten plain or with butter) A roll can be served and eaten whole or cut transversely and dressed with filling between the two halves. Rolls are also commonly used to make sandwiches similar to those produced using slices of bread. They are found in most cuisines all over the world. In the Deipnosophistae, the author Athenaeus (c. 170 – c. 230) describes some of the bread, cakes, and pastries available in the Classical world. Among the breads mentioned are griddle cakes, honey-and-oil bread, mushroom-shaped loaves covered in poppy seeds, and the military specialty of rolls baked on a spit.', 'Bread'),
(535, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 567, 'Bun', 'A bun is a small, sometimes sweet, bread-based item[1] or roll. Though they come in many shapes and sizes, they are most commonly hand-sized or smaller, with a round top and flat bottom.', 'Bread'),
(536, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 568, 'Potatoe Buns', 'Potato bread is a form of bread in which potato flour or potato replaces a portion of the regular wheat flour. It is cooked in a variety of ways, including baking it on a hot griddle or pan, or in an oven. It may be leavened or unleavened, and may have a variety of other ingredients baked into it. The ratio of potato to wheat flour varies significantly from recipe to recipe, with some recipes having a majority of potato, and others having a majority of wheat flour. Some recipes call for mashed potatoes, with others calling for dehydrated potato flakes. It is available as a commercial product in many countries, with similar variations in ingredients, cooking method, and other variables.', 'Bread'),
(537, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 569, 'Ground Pork', 'Ground meat, called mince or minced meat outside of North America (i.e. in U.K. and Commonwealth countries), and keema or qeema (Hindustani: क़ीमा (Devanagari), قیمہ (Nastaleeq), (pronounced [ˈqiːmaː])) in the Indian subcontinent, is meat finely chopped by a meat grinder or a chopping knife. A common type of ground meat is ground beef, but many other types of meats are prepared in a similar fashion, including pork, lamb, and poultry. In the Indian subcontinent, both mutton and goat meat are also minced to produce keema.', 'Meat'),
(538, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 570, 'Pork Chops', 'A pork chop, like other meat chops, is a loin cut taken perpendicular to the spine of the pig and usually containing a rib or part of a vertebra. Pork chops are not processed and are leaner than other cuts of pork. Chops are commonly served as an individual portion.', 'Meat'),
(539, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 571, 'Yukon Gold Potatoes', 'Yukon Gold is a large cultivar of potato most distinctly characterized by its thin, smooth, eye-free skin and yellow-tinged flesh. This potato was developed in the 1960s by Garnet Johnston in Guelph, Ontario, Canada, with the help of Geoff Rowberry at the University of Guelph. The official cross was made in 1966 and Yukon Gold was finally released into the market in 1980.', 'Root Vegetable'),
(540, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 572, 'Yellow Onion', 'The brown onion or yellow onion is a variety of dry onion with a strong flavour. They have a greenish-white, light yellow, or white inside; its layers of papery skin have a yellow-brown or pale golden colour', 'Vegetable'),
(541, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 573, 'Beef Stock Concentrate', 'Stock, sometimes called bone broth, is a savory cooking liquid that forms the basis of many dishes, particularly soups, stews and sauces. Making stock involves simmering animal bones or meat, seafood, or vegetables in water or wine, often for an extended period of time. Mirepoix or other aromatics may be added for more flavor.', 'Stock'),
(542, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 574, 'Chicken Stock Concentrate', 'Stock, sometimes called bone broth, is a savory cooking liquid that forms the basis of many dishes, particularly soups, stews and sauces. Making stock involves simmering animal bones or meat, seafood, or vegetables in water or wine, often for an extended period of time. Mirepoix or other aromatics may be added for more flavor.', 'Stock'),
(543, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 575, 'Persian Cucumber', 'Cucumber (Cucumis sativus) is a widely cultivated plant in the gourd family, Cucurbitaceae. It is a creeping vine that bears cucumiform fruits that are used as vegetables. There are three main varieties of cucumber: slicing, pickling, and seedless. Within these varieties, several cultivars have been created. In North America, the term \"wild cucumber\" refers to plants in the genera Echinocystis and Marah, but these are not closely related. The cucumber is originally from South Asia, but now grows on most continents. Many different types of cucumber are traded on the global market.', 'Vegetable'),
(544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 576, 'Mayonnaise', 'Mayonnaise, informally mayo is a thick cold condiment or dressing commonly used in sandwiches and composed salads or on French fries. It is also a base in sauces such as Tartar sauce.', 'Sauce'),
(545, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 577, 'Sriracha', 'Sriracha is a type of hot sauce or chili sauce made from a paste of chili peppers, distilled vinegar, garlic, sugar, and salt.', 'Sauce'),
(546, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 578, 'Rhubarb', 'Rhubarb is a general term used for the cultivated plants in the genus Rheum in the family Polygonaceae. It is a herbaceous perennial growing from short, thick rhizomes. Historically, different plants have been called \"rhubarb\" in English.', 'Vegetable'),
(547, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 579, 'Pita Bread', 'Pita or pitta, is a family of yeast-leavened round flatbreads baked from wheat flour, common in the Mediterranean, Middle East, and neighboring areas.', 'Bread'),
(548, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 580, 'Bulgur Wheat', 'Bulgur is a cereal food made from the cracked parboiled groats of several different wheat species, most often from durum wheat. It originates in Middle Eastern cuisine.', 'Cereal'),
(549, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 581, 'Quinoa', 'Quinoa is a flowering plant in the amaranth family. It is an herbaceous annual plant grown as a crop primarily for its edible seeds; the seeds are rich in protein, dietary fiber, B vitamins, and dietary minerals in amounts greater than in many grains.', 'Grain'),
(550, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 582, 'Dill Pickles', 'A pickled cucumber is a cucumber that has been pickled in a brine, vinegar, or other solution and left to ferment for a period of time, by either immersing the cucumbers in an acidic solution or through souring by lacto-fermentation. Pickled cucumbers are often part of mixed pickles.', 'Vegetable'),
(551, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 583, 'Sesame Seed Burger Buns', 'A bun is a small, sometimes sweet, bread-based item or roll. Though they come in many shapes and sizes, they are most commonly hand-sized or smaller, with a round top and flat bottom. Buns are usually made from flour, sugar, milk, yeast and butter.', 'Bread'),
(552, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 585, 'Buns', 'A bun is a small, sometimes sweet, bread-based item or roll. Though they come in many shapes and sizes, they are most commonly hand-sized or smaller, with a round top and flat bottom. Buns are usually made from flour, sugar, milk, yeast and butter.', 'Bread'),
(553, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 586, 'Iceberg Lettuce', 'Iceberg is a variety of lettuce with crisp leaves that grow in a spherical head resembling cabbage. It is considered one of the sweeter lettuce varieties like romaine and butterhead. Mature iceberg lettuce grows to about one foot in diameter.', 'Vegetable'),
(554, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 587, 'Gherkin Relish', 'A relish is a cooked and pickled product made of chopped vegetables, fruits or herbs and is a food item typically used as a condiment to enhance a staple. Examples are chutneys and the North American relish, a pickled cucumber jam eaten with hot dogs or hamburgers.', 'Sauce'),
(555, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 588, 'Cheese Slices', 'Processed cheese is a food product made from cheese and other unfermented dairy ingredients mixed with emulsifiers. Additional ingredients, such as vegetable oils, salt, food coloring, or sugar may be included. As a result, many flavors, colors, and textures of processed cheese exist.', 'Cheese'),
(556, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 589, 'Shortening', 'Shortening is any fat that is a solid at room temperature and used to make crumbly pastry and other food products. Although butter is solid at room temperature and is frequently used in making pastry, the term \"shortening\" seldom refers to butter, but is more closely related to margarine.', 'Fat'),
(557, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 590, 'Warm Water', 'Water is an inorganic, transparent, tasteless, odorless, and nearly colorless chemical substance, which is the main constituent of Earth-s hydrosphere and the fluids of most living organisms. It is vital for all known forms of life, even though it provides no calories or organic nutrients. Its chemical formula is H2O, meaning that each of its molecules contains one oxygen and two hydrogen atoms, connected by covalent bonds. Water is the name of the liquid state of H2O at standard ambient temperature and pressure. It forms precipitation in the form of rain and aerosols in the form of fog. Clouds are formed from suspended droplets of water and ice, its solid state. When finely divided, crystalline ice may precipitate in the form of snow. The gaseous state of water is steam or water vapor. Water moves continually through the water cycle of evaporation, transpiration (evapotranspiration), condensation, precipitation, and runoff, usually reaching the sea.', 'Liquid'),
(558, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 591, 'Boiling Water', 'Water is an inorganic, transparent, tasteless, odorless, and nearly colorless chemical substance, which is the main constituent of Earth-s hydrosphere and the fluids of most living organisms. It is vital for all known forms of life, even though it provides no calories or organic nutrients. Its chemical formula is H2O, meaning that each of its molecules contains one oxygen and two hydrogen atoms, connected by covalent bonds. Water is the name of the liquid state of H2O at standard ambient temperature and pressure. It forms precipitation in the form of rain and aerosols in the form of fog. Clouds are formed from suspended droplets of water and ice, its solid state. When finely divided, crystalline ice may precipitate in the form of snow. The gaseous state of water is steam or water vapor. Water moves continually through the water cycle of evaporation, transpiration (evapotranspiration), condensation, precipitation, and runoff, usually reaching the sea.', 'Liquid'),
(559, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 592, 'Pickle Juice', 'Pickling is the process of preserving or extending the shelf life of food by either anaerobic fermentation in brine or immersion in vinegar. In East Asia, vinaigrette is also used as a pickling medium. The pickling procedure typically affects the food-s texture, taste and flavor.', 'Juice'),
(560, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 593, 'Powdered Sugar', 'Powdered sugar, also called confectioners- sugar or icing sugar, is a finely ground sugar produced by milling granulated sugar into a powdered state. It usually contains a small amount of anti-caking agent to prevent clumping and improve flow', 'Sugar'),
(561, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 594, 'Kielbasa', 'Kielbasa is any type of meat sausage from Poland, and a staple of Polish cuisine. In American English the word typically refers to a coarse, U-shaped smoked sausage of any kind of meat, which closely resembles the Wiejska sausage in British English.', 'Meat'),
(562, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 595, 'Polish Sausage', 'Kielbasa is any type of meat sausage from Poland, and a staple of Polish cuisine. In American English the word typically refers to a coarse, U-shaped smoked sausage of any kind of meat, which closely resembles the Wiejska sausage in British English.', 'Meat'),
(563, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 596, 'Sauerkraut', 'Sauerkraut is finely cut raw cabbage that has been fermented by various lactic acid bacteria. It has a long shelf life and a distinctive sour flavor, both of which result from the lactic acid formed when the bacteria ferment the sugars in the cabbage leaves.', 'Vegetable'),
(564, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 597, 'Caraway Seed', 'Caraway, also known as meridian fennel and Persian cumin (Carum carvi), is a biennial plant ... For example, it is used in goulash, sauerkraut, and caraway seed cake. The roots may be cooked as a vegetable like parsnips or carrots', 'Spice'),
(565, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 598, 'Herring', 'Herring are forage fish, mostly belonging to the family Clupeidae. Herring often move in large schools around fishing banks and near the coast, found particularly in shallow, temperate waters of the North Pacific and North Atlantic Oceans, including the Baltic Sea, as well as off the west coast of South America.', 'Fish'),
(566, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 599, 'Jam', 'Fruit preserves are preparations of fruits, vegetables and sugar, often stored in glass jam jars and Mason jars.\r\n\r\nMany varieties of fruit preserves are made globally, including sweet fruit preserves, such as those made from strawberry or apricot, and savory preserves, such as those made from tomatoes or squash. The ingredients used and how they are prepared determine the type of preserves; jams, jellies, and marmalades are all examples of different styles of fruit preserves that vary based upon the fruit used. In English, the word, in plural form, \"preserves\" is used to describe all types of jams and jellies.', 'Preserve'),
(567, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 600, 'Mulukhiyah', 'Mulukhiyah , molokheyya ,molokhia or mulukhiyyah (Arabic: ملوخية‎ mulūkhiyyah) Greek : molokha is the leaves of Corchorus olitorius, commonly known in English as jute, nalta jute, tossa jute , jute mallow or Jew-s mallow. It is used as a vegetable. It is popular in Middle East, East African and North African countries and is called “Saluyot” in the Philippines. Mulukhiyah is rather bitter, and when boiled, the resulting liquid is a thick, highly mucilaginous broth; it is often described as \"slimy\", rather like cooked okra. Mulukhiyah is generally eaten cooked, not raw, and is most frequently turned into a kind of soup or stew, typically bearing the same name as the vegetable in the local language. Traditionally mulukhiyah is cooked with chicken or at least chicken stock for flavor and is served with white rice, accompanied with lemon or lime.', 'Vegetable'),
(568, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 601, 'Sushi Rice', 'As the dietary staple of Japan, knowing how to cook Japanese rice is an important first step to becoming a Japanese cooking master. Perfectly prepared Japanese rice should be light, fluffy, and slightly sticky when cooked', 'Rice'),
(569, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 602, 'Figs', 'Ficus carica is an Asian species of flowering plant in the mulberry family, known as the common fig. It is the source of the fruit also called the fig and as such is an important crop in those areas where it is grown commercially.', 'Fruit'),
(570, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 603, 'Cider', 'Cider (/ˈsaɪdər/ SY-dər) is an alcoholic beverage made from the fermented juice of apples. Cider is widely available in the United Kingdom (particularly in the West Country) and the Republic of Ireland. The UK has the world-s highest per capita consumption, as well as its largest cider-producing companies. Ciders from the South West of England are generally stronger. Cider is also popular in many Commonwealth countries, such as India, Canada, Australia, and New Zealand. As well as the UK and its former colonies, cider is popular in Portugal (mainly in Minho and Madeira), France (particularly Normandy and Brittany), northern Italy (Piedmont and Friuli), and northern Spain (especially the Principality of Asturias and the Basque Country). Central Europe also has its own types of cider with Rhineland-Palatinate and Hesse producing a particularly tart version known as Apfelwein. In the U.S., varieties of fermented cider are often called hard cider to distinguish alcoholic cider from non-alcoholic apple cider or \"sweet cider\", also made from apples. In Canada, cider cannot be called cider if there are no apples. Furthermore, according to the Food and Drug Regulations in Canada, cider cannot contain less than 2.5% or over 13% absolute alcohol by volume.', 'Drink'),
(571, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 604, 'Beetroot', 'The beetroot is the taproot portion of a beet plant, usually known in Canada and the USA as beets while the vegetable is referred to as beetroot in British English, and also known as the table beet, garden beet, red beet, dinner beet or golden beet.', 'Vegetable'),
(572, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 605, 'Sardines', '\"Sardine\" and \"pilchard\" are common names that refer to various small, oily forage fish in the herring family Clupeidae. The term \"sardine\" was first used in English during the early 15th century and may come from the Mediterranean island of Sardinia, around which sardines were once abundant.', 'Seafood'),
(573, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 606, 'Ciabatta', 'Ciabatta is an Italian white bread made from wheat flour, water, salt, yeast and olive oil, created in 1982 by a baker in Adria, province of Rovigo, Veneto, Italy, in response to the popularity of French baguettes.', 'Bread'),
(574, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-06 22:02:47', NULL, 607, 'Buckwheat', 'Buckwheat (Fagopyrum esculentum), or common buckwheat, is a plant cultivated for its grain-like seeds and as a cover crop. The name \"buckwheat\" is used for several other species, such as Fagopyrum tataricum, a domesticated food plant raised in Asia. Despite the name, buckwheat is not closely related to wheat, as it is not a grass. Instead, buckwheat is related to sorrel, knotweed, and rhubarb. Buckwheat is referred to as a pseudocereal because its seeds- culinary use is the same as cereals-, owing to their composition of complex carbohydrates.', 'Grain');

-- --------------------------------------------------------

--
-- Estrutura para tabela `media`
--

CREATE TABLE `media` (
  `id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `collection_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` bigint UNSIGNED NOT NULL,
  `uuid` bigint UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `order_column` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `medicos`
--

CREATE TABLE `medicos` (
  `id` int NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `especialidade_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(1) NOT NULL,
  `nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `hospital_ids` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `convenios_ids` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int DEFAULT '1',
  `telefone1` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefone2` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sus` int NOT NULL DEFAULT '0',
  `gender` int NOT NULL,
  `descricao` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `datavisita` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user1_id` int DEFAULT NULL,
  `user2_id` int DEFAULT NULL,
  `agenda` int NOT NULL DEFAULT '1',
  `cidade` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rua` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SP',
  `bairro` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ibge` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cep` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataagenda` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hora` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `medicos`
--

INSERT INTO `medicos` (`id`, `user_id`, `especialidade_id`, `type`, `nome`, `value`, `created_at`, `updated_at`, `hospital_ids`, `convenios_ids`, `status`, `telefone1`, `telefone2`, `sus`, `gender`, `descricao`, `datavisita`, `user1_id`, `user2_id`, `agenda`, `cidade`, `rua`, `state`, `bairro`, `numero`, `ibge`, `cep`, `dataagenda`, `hora`) VALUES
(1, 3, '4', 1, 'Dr. Renato Augusto Ramires Judice', '0', '2021-07-16 23:35:47', '2021-11-06 02:24:32', '2', '2', 1, '1939351292', NULL, 1, 1, NULL, '2021-07-19', 3, NULL, 1, 'Indaiatuba', 'Rua Archimedes Prandini', 'SP', 'Jardim Moacyr Arruda', '2121', NULL, '13338-430', NULL, '19:02'),
(2, 3, '9', 1, 'Dr. Renato Cassani', '0', '2021-07-17 21:44:11', '2021-07-17 21:44:11', '2', '2,4,6', 1, '1939351292', NULL, 0, 0, NULL, '2021-07-17', NULL, NULL, 1, 'Indaiatuba', 'Rua Archimedes Prandini', 'SP', 'Jardim Moacyr Arruda', '1212', NULL, '13338-430', NULL, '15:43'),
(3, 3, '1', 1, 'Geronimo Andre', '1', '2021-11-12 23:26:25', '2021-11-12 23:26:25', '2', '2', 1, '12121212', NULL, 1, 1, NULL, '2021-11-12', NULL, NULL, 1, NULL, NULL, 'SP', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 1, '1', 1, 'Dr Mario de Almeida', '0', '2022-06-18 21:36:01', '2022-06-18 21:36:01', NULL, '2', 1, '19991891955', '19991871655', 1, 1, 'Email:mario@maior.com\n Visitado por:Paulo, Douglas\n Onde atende:Coplan\n OBS:', '2022-06-11', NULL, NULL, 1, 'Indaiatuba', NULL, 'SP', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 1, '17', 1, 'Dr Mario de Almeida 2', '0', '2022-06-18 21:51:46', '2022-06-18 21:51:46', NULL, '2', 1, '19991891955', '19991871655', 1, 1, 'Email:mario@maior.com\n Visitado por:Paulo, Douglas\n Onde atende:Coplan\n OBS:', '2022-06-04', NULL, NULL, 1, 'Indaiatuba', NULL, 'SP', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `menulist`
--

CREATE TABLE `menulist` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `menulist`
--

INSERT INTO `menulist` (`id`, `name`) VALUES
(1, 'sidebar menu'),
(2, 'top menu');

-- --------------------------------------------------------

--
-- Estrutura para tabela `menus`
--

CREATE TABLE `menus` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `href` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `menu_id` int UNSIGNED NOT NULL,
  `sequence` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `menus`
--

INSERT INTO `menus` (`id`, `name`, `href`, `icon`, `slug`, `parent_id`, `menu_id`, `sequence`) VALUES
(1, 'Dashboard', '/', 'cil-speedometer', 'link', NULL, 1, 1),
(2, 'Settings', NULL, 'cil-calculator', 'dropdown', NULL, 1, 2),
(3, 'Notes', '/notes', NULL, 'link', 2, 1, 3),
(4, 'Users', '/users', NULL, 'link', 2, 1, 4),
(5, 'Edit menu', '/menu/menu', NULL, 'link', 2, 1, 5),
(6, 'Edit menu elements', '/menu/element', NULL, 'link', 2, 1, 6),
(7, 'Edit roles', '/roles', NULL, 'link', 2, 1, 7),
(8, 'Media', '/media', NULL, 'link', 2, 1, 8),
(9, 'BREAD', '/bread', NULL, 'link', 2, 1, 9),
(10, 'Email', '/mail', NULL, 'link', 2, 1, 10),
(11, 'Login', '/login', 'cil-account-logout', 'link', NULL, 1, 11),
(12, 'Register', '/register', 'cil-account-logout', 'link', NULL, 1, 12),
(13, 'Theme', NULL, NULL, 'title', NULL, 1, 13),
(14, 'Colors', '/colors', 'cil-drop1', 'link', NULL, 1, 14),
(15, 'Typography', '/typography', 'cil-pencil', 'link', NULL, 1, 15),
(16, 'Base', NULL, 'cil-puzzle', 'dropdown', NULL, 1, 16),
(17, 'Breadcrumb', '/base/breadcrumb', NULL, 'link', 16, 1, 17),
(18, 'Cards', '/base/cards', NULL, 'link', 16, 1, 18),
(19, 'Carousel', '/base/carousel', NULL, 'link', 16, 1, 19),
(20, 'Collapse', '/base/collapse', NULL, 'link', 16, 1, 20),
(21, 'Forms', '/base/forms', NULL, 'link', 16, 1, 21),
(22, 'Jumbotron', '/base/jumbotron', NULL, 'link', 16, 1, 22),
(23, 'List group', '/base/list-group', NULL, 'link', 16, 1, 23),
(24, 'Navs', '/base/navs', NULL, 'link', 16, 1, 24),
(25, 'Pagination', '/base/pagination', NULL, 'link', 16, 1, 25),
(26, 'Popovers', '/base/popovers', NULL, 'link', 16, 1, 26),
(27, 'Progress', '/base/progress', NULL, 'link', 16, 1, 27),
(28, 'Scrollspy', '/base/scrollspy', NULL, 'link', 16, 1, 28),
(29, 'Switches', '/base/switches', NULL, 'link', 16, 1, 29),
(30, 'Tables', '/base/tables', NULL, 'link', 16, 1, 30),
(31, 'Tabs', '/base/tabs', NULL, 'link', 16, 1, 31),
(32, 'Tooltips', '/base/tooltips', NULL, 'link', 16, 1, 32),
(33, 'Buttons', NULL, 'cil-cursor', 'dropdown', NULL, 1, 33),
(34, 'Buttons', '/buttons/buttons', NULL, 'link', 33, 1, 34),
(35, 'Buttons Group', '/buttons/button-group', NULL, 'link', 33, 1, 35),
(36, 'Dropdowns', '/buttons/dropdowns', NULL, 'link', 33, 1, 36),
(37, 'Brand Buttons', '/buttons/brand-buttons', NULL, 'link', 33, 1, 37),
(38, 'Charts', '/charts', 'cil-chart-pie', 'link', NULL, 1, 38),
(39, 'Icons', NULL, 'cil-star', 'dropdown', NULL, 1, 39),
(40, 'CoreUI Icons', '/icon/coreui-icons', NULL, 'link', 39, 1, 40),
(41, 'Flags', '/icon/flags', NULL, 'link', 39, 1, 41),
(42, 'Brands', '/icon/brands', NULL, 'link', 39, 1, 42),
(43, 'Notifications', NULL, 'cil-bell', 'dropdown', NULL, 1, 43),
(44, 'Alerts', '/notifications/alerts', NULL, 'link', 43, 1, 44),
(45, 'Badge', '/notifications/badge', NULL, 'link', 43, 1, 45),
(46, 'Modals', '/notifications/modals', NULL, 'link', 43, 1, 46),
(47, 'Widgets', '/widgets', 'cil-calculator', 'link', NULL, 1, 47),
(48, 'Extras', NULL, NULL, 'title', NULL, 1, 48),
(49, 'Pages', NULL, 'cil-star', 'dropdown', NULL, 1, 49),
(50, 'Login', '/login', NULL, 'link', 49, 1, 50),
(51, 'Register', '/register', NULL, 'link', 49, 1, 51),
(52, 'Error 404', '/404', NULL, 'link', 49, 1, 52),
(53, 'Error 500', '/500', NULL, 'link', 49, 1, 53),
(54, 'Download CoreUI', 'https://coreui.io', 'cil-cloud-download', 'link', NULL, 1, 54),
(55, 'Try CoreUI PRO', 'https://coreui.io/pro/', 'cil-layers', 'link', NULL, 1, 55),
(56, 'Pages', NULL, '', 'dropdown', NULL, 2, 56),
(57, 'Dashboard', '/', NULL, 'link', 56, 2, 57),
(58, 'Notes', '/notes', NULL, 'link', 56, 2, 58),
(59, 'Users', '/users', NULL, 'link', 56, 2, 59),
(60, 'Settings', NULL, '', 'dropdown', NULL, 2, 60),
(61, 'Edit menu', '/menu/menu', NULL, 'link', 60, 2, 61),
(62, 'Edit menu elements', '/menu/element', NULL, 'link', 60, 2, 62),
(63, 'Edit roles', '/roles', NULL, 'link', 60, 2, 63),
(64, 'Media', '/media', NULL, 'link', 60, 2, 64),
(65, 'BREAD', '/bread', NULL, 'link', 60, 2, 65);

-- --------------------------------------------------------

--
-- Estrutura para tabela `menu_role`
--

CREATE TABLE `menu_role` (
  `id` bigint UNSIGNED NOT NULL,
  `role_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `menus_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `menu_role`
--

INSERT INTO `menu_role` (`id`, `role_name`, `menus_id`) VALUES
(1, 'guest', 1),
(2, 'user', 1),
(3, 'admin', 1),
(4, 'admin', 2),
(5, 'admin', 3),
(6, 'admin', 4),
(7, 'admin', 5),
(8, 'admin', 6),
(9, 'admin', 7),
(10, 'admin', 8),
(11, 'admin', 9),
(12, 'admin', 10),
(13, 'guest', 11),
(14, 'guest', 12),
(15, 'user', 13),
(16, 'admin', 13),
(17, 'user', 14),
(18, 'admin', 14),
(19, 'user', 15),
(20, 'admin', 15),
(21, 'user', 16),
(22, 'admin', 16),
(23, 'user', 17),
(24, 'admin', 17),
(25, 'user', 18),
(26, 'admin', 18),
(27, 'user', 19),
(28, 'admin', 19),
(29, 'user', 20),
(30, 'admin', 20),
(31, 'user', 21),
(32, 'admin', 21),
(33, 'user', 22),
(34, 'admin', 22),
(35, 'user', 23),
(36, 'admin', 23),
(37, 'user', 24),
(38, 'admin', 24),
(39, 'user', 25),
(40, 'admin', 25),
(41, 'user', 26),
(42, 'admin', 26),
(43, 'user', 27),
(44, 'admin', 27),
(45, 'user', 28),
(46, 'admin', 28),
(47, 'user', 29),
(48, 'admin', 29),
(49, 'user', 30),
(50, 'admin', 30),
(51, 'user', 31),
(52, 'admin', 31),
(53, 'user', 32),
(54, 'admin', 32),
(55, 'user', 33),
(56, 'admin', 33),
(57, 'user', 34),
(58, 'admin', 34),
(59, 'user', 35),
(60, 'admin', 35),
(61, 'user', 36),
(62, 'admin', 36),
(63, 'user', 37),
(64, 'admin', 37),
(65, 'user', 38),
(66, 'admin', 38),
(67, 'user', 39),
(68, 'admin', 39),
(69, 'user', 40),
(70, 'admin', 40),
(71, 'user', 41),
(72, 'admin', 41),
(73, 'user', 42),
(74, 'admin', 42),
(75, 'user', 43),
(76, 'admin', 43),
(77, 'user', 44),
(78, 'admin', 44),
(79, 'user', 45),
(80, 'admin', 45),
(81, 'user', 46),
(82, 'admin', 46),
(83, 'user', 47),
(84, 'admin', 47),
(85, 'user', 48),
(86, 'admin', 48),
(87, 'user', 49),
(88, 'admin', 49),
(89, 'user', 50),
(90, 'admin', 50),
(91, 'user', 51),
(92, 'admin', 51),
(93, 'user', 52),
(94, 'admin', 52),
(95, 'user', 53),
(96, 'admin', 53),
(97, 'guest', 54),
(98, 'user', 54),
(99, 'admin', 54),
(100, 'guest', 55),
(101, 'user', 55),
(102, 'admin', 55),
(103, 'guest', 56),
(104, 'user', 56),
(105, 'admin', 56),
(106, 'guest', 57),
(107, 'user', 57),
(108, 'admin', 57),
(109, 'user', 58),
(110, 'admin', 58),
(111, 'admin', 59),
(112, 'admin', 60),
(113, 'admin', 61),
(114, 'admin', 62),
(115, 'admin', 63),
(116, 'admin', 64),
(117, 'admin', 65);

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_10_11_085455_create_notes_table', 1),
(5, '2019_10_12_115248_create_status_table', 1),
(6, '2019_11_08_102827_create_menus_table', 1),
(7, '2019_11_13_092213_create_menurole_table', 1),
(8, '2019_12_10_092113_create_permission_tables', 1),
(9, '2019_12_11_091036_create_menulist_table', 1),
(10, '2019_12_18_092518_create_role_hierarchy_table', 1),
(11, '2020_01_07_093259_create_folder_table', 1),
(12, '2020_01_08_184500_create_media_table', 1),
(13, '2020_01_21_161241_create_form_field_table', 1),
(14, '2020_01_21_161242_create_form_table', 1),
(15, '2020_01_21_161243_create_example_table', 1),
(16, '2020_03_12_111400_create_email_template_table', 1),
(17, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(18, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(19, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(20, '2016_06_01_000004_create_oauth_clients_table', 2),
(21, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(22, '2019_05_03_000001_create_customer_columns', 2),
(23, '2019_05_03_000002_create_subscriptions_table', 2),
(24, '2019_05_03_000003_create_subscription_items_table', 2),
(25, '2019_06_19_104931_create_files_table', 2),
(26, '2019_06_19_115702_add_file_id_to_users_table', 2),
(27, '2019_08_21_065240_create_clients_table', 2),
(28, '2019_12_14_000001_create_personal_access_tokens_table', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 10),
(2, 'App\\Models\\User', 11);

-- --------------------------------------------------------

--
-- Estrutura para tabela `notes`
--

CREATE TABLE `notes` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `applies_to_date` date NOT NULL,
  `users_id` int UNSIGNED NOT NULL,
  `status_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `notes`
--

INSERT INTO `notes` (`id`, `title`, `content`, `note_type`, `applies_to_date`, `users_id`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 'Odio et non.', 'Cumque et sequi dolores placeat saepe ut. Sequi odit provident sit autem necessitatibus. Perspiciatis aut ullam voluptatibus quia blanditiis eum omnis.', 'autem', '2010-12-19', 7, 3, NULL, NULL),
(2, 'Quos ipsum quo.', 'Quos aut temporibus vel corporis odio enim dolor atque. Repudiandae tempora animi et dolores rerum rerum libero voluptatibus. Et odio numquam perspiciatis quod voluptates necessitatibus non repellat. Consequatur voluptatem provident laborum eos. Modi ex dolor et est magni.', 'harum', '1974-10-15', 4, 1, NULL, NULL),
(3, 'Fugiat voluptatem dolorem.', 'Nihil vel placeat omnis quae sit quo non quas. Aut commodi voluptates hic voluptatem neque magnam. Optio ut et quia incidunt praesentium et.', 'omnis', '1973-03-21', 7, 2, NULL, NULL),
(4, 'Ut et odit quod vel aut.', 'Porro voluptates qui ut reprehenderit accusantium nisi culpa. Reiciendis iusto ducimus dolores doloribus. Repellat est dolores est nisi fuga. Iure consequatur non eveniet hic minus necessitatibus ut.', 'suscipit natus', '2001-02-19', 8, 4, NULL, NULL),
(5, 'Ratione vitae itaque.', 'Voluptatibus adipisci nobis nihil incidunt quo. Perspiciatis sunt dolore sed qui non ea. Placeat hic corporis aliquam quisquam. Ipsa mollitia fugiat voluptatem alias omnis.', 'consectetur', '1974-04-01', 5, 4, NULL, NULL),
(6, 'Sed fuga quia nihil.', 'Sapiente et iste consequatur corporis explicabo enim maxime. Laborum error optio voluptatem fugiat. Cumque rerum odio sit quia ea placeat. Voluptatem quia voluptates excepturi omnis cumque modi. Nobis non illo corrupti non autem quod voluptatem et.', 'assumenda', '1972-04-03', 2, 3, NULL, NULL),
(7, 'Eos animi excepturi soluta.', 'Voluptas et qui ad vel omnis et. Ab aut non voluptatem facilis. Mollitia voluptate molestiae quo eligendi est est est.', 'rerum sunt', '2019-08-10', 6, 4, NULL, NULL),
(8, 'Vel qui aut modi omnis cupiditate.', 'Incidunt ducimus consectetur cumque aut eos. Et provident praesentium vel. Facilis quisquam exercitationem velit velit in dolorem. Facere id id rem facilis facilis.', 'aut', '1973-01-06', 9, 4, NULL, NULL),
(9, 'Repellendus illum vitae voluptatem nam.', 'Similique rem occaecati tempora exercitationem eius mollitia. Aliquam fugit modi et sunt dolore accusantium accusamus. Architecto aut non numquam repudiandae consequuntur odit aut.', 'quisquam rerum', '1993-12-10', 3, 2, NULL, NULL),
(10, 'Voluptas dicta quod magni ad.', 'Pariatur ipsum ad architecto at aut. Voluptate quis eum quo nemo et quod. Et non nesciunt iste laborum voluptatum autem. Dolores illo ratione ut cumque error.', 'est enim', '1984-04-11', 8, 4, NULL, NULL),
(11, 'Est labore et ullam quo.', 'Porro accusamus esse eligendi ipsa est rerum inventore. Id sit quam itaque mollitia temporibus sunt. Rem voluptate ipsam voluptas aut aut incidunt nesciunt.', 'eos', '1973-01-06', 5, 4, NULL, NULL),
(12, 'Ea omnis neque nesciunt.', 'Totam aut vel voluptas quisquam sed. Hic quo ea ipsa eum veniam eum culpa dolores. Error qui asperiores enim occaecati et. Officia dolorem cum et dolore ea est quae impedit.', 'pariatur', '1996-04-15', 11, 4, NULL, NULL),
(13, 'Officia at sed sed quis ipsa.', 'Odit reprehenderit nihil voluptas est. Id dolore accusamus voluptatibus quo excepturi ad. Sed ipsum quod quisquam. Exercitationem corrupti laborum voluptatem iure debitis.', 'dicta asperiores', '2019-09-29', 5, 1, NULL, NULL),
(14, 'A ut esse explicabo et.', 'Quasi mollitia fuga laboriosam consectetur fuga officiis reiciendis dolor. Sequi amet odio veniam quibusdam eaque.', 'in deserunt', '1977-10-04', 5, 1, NULL, NULL),
(15, 'Dolorem perferendis et distinctio.', 'Nihil qui aut ut. Reiciendis error dolorem eos facilis aut ipsum numquam.', 'enim ea', '1983-10-09', 3, 4, NULL, NULL),
(16, 'Quod nobis dolores modi possimus.', 'Debitis in illo voluptatem atque ad. Tempora maxime et qui molestias eius. Quidem autem aliquam sed maiores.', 'consectetur', '2006-06-03', 9, 4, NULL, NULL),
(17, 'Sunt rerum reprehenderit.', 'Quia corrupti aut ut ducimus earum nam. Illum autem id consectetur aperiam voluptatem non non magnam. Est aut et officiis nostrum nostrum nostrum assumenda.', 'rerum', '2011-01-26', 9, 3, NULL, NULL),
(18, 'Cupiditate nesciunt minima est.', 'Porro sint magnam sed veritatis. Iure commodi exercitationem nemo aliquam voluptate aliquid. Cum dicta aut vitae eaque.', 'quos cumque', '2007-06-19', 10, 4, NULL, NULL),
(19, 'Voluptatem est porro praesentium ut.', 'Aliquid et voluptas sed. Qui consectetur ut et voluptas illo distinctio. Occaecati ratione ut molestiae labore fugiat et dolores. Quam quis sint voluptatem amet debitis id eos quos.', 'numquam', '1979-02-05', 4, 1, NULL, NULL),
(20, 'Deserunt inventore ut est.', 'Quo dolor maiores nemo harum. Odio quidem ullam recusandae dolor. Quia atque totam est architecto reprehenderit.', 'optio', '1973-06-02', 5, 4, NULL, NULL),
(21, 'Architecto culpa quibusdam.', 'Ipsa quam quasi qui dolorem eius tenetur nihil. Id magnam id iusto consectetur ut quia autem quia. Ipsum aut recusandae ut quia ipsum.', 'ut non', '2017-11-30', 9, 3, NULL, NULL),
(22, 'Amet est ullam sit odit sit.', 'Sint aut eius qui nihil. Sint possimus vero voluptatibus ipsa maxime. Ut inventore et sit autem error. Minus amet praesentium est quo deleniti mollitia et harum.', 'perferendis et', '1980-10-13', 11, 3, NULL, NULL),
(23, 'Reiciendis eveniet ad exercitationem.', 'Iusto dicta et exercitationem dolorem odio nihil itaque. Ut voluptatem expedita ea voluptatem sed. Laboriosam similique soluta omnis natus optio. Deserunt et dolorum sint ad aspernatur nihil velit.', 'impedit sint', '2016-07-09', 4, 1, NULL, NULL),
(24, 'Rerum modi alias aut quod.', 'Qui amet sunt ad dicta. Numquam iusto et iusto ipsam consectetur consequatur et sed. Ducimus saepe iusto non et illo ut itaque.', 'culpa fugiat', '2021-10-23', 9, 1, NULL, NULL),
(25, 'Quasi officiis quidem.', 'Voluptatum voluptatum temporibus omnis voluptas eius sit labore. Aut et sed et non. Eligendi eum mollitia sit quidem voluptate voluptates.', 'enim', '1978-05-06', 9, 1, NULL, NULL),
(26, 'Doloremque sunt molestiae nihil.', 'Sunt qui odit veniam laborum ea accusantium sunt. Velit omnis omnis non architecto sequi iste et voluptates. Tempora aut explicabo ut omnis nisi perferendis maxime odit. Temporibus placeat provident inventore et quis nihil nesciunt. Qui omnis ut dignissimos aut.', 'sit eaque', '1998-06-18', 7, 4, NULL, NULL),
(27, 'Dignissimos cum autem ducimus autem.', 'Totam exercitationem nostrum veritatis quia est maiores id natus. Voluptatem quisquam accusamus qui eligendi ipsam vel assumenda. Dolorem enim vel qui.', 'et', '1977-09-20', 6, 4, NULL, NULL),
(28, 'Incidunt et voluptas consequatur dolore.', 'Iste quaerat et earum quo eligendi neque. Suscipit error deleniti iusto officia fugiat. Cum nobis ullam illo ipsam. Ut necessitatibus autem eum eos consequatur omnis. Architecto molestiae optio natus architecto natus totam.', 'quia dolores', '2009-05-27', 11, 4, NULL, NULL),
(29, 'Reiciendis minus id consequatur.', 'Voluptatem quos inventore quae tenetur. Et fugiat non facilis sequi aspernatur et libero.', 'a', '2019-02-13', 2, 2, NULL, NULL),
(30, 'Non ea aut aut omnis nostrum.', 'Et inventore ea natus voluptatibus suscipit. Accusamus iure voluptatem debitis ut aliquid eius eum ad. Maiores totam eum mollitia eum similique. Doloremque maxime qui reiciendis temporibus repellendus asperiores suscipit.', 'labore', '2019-02-20', 6, 3, NULL, NULL),
(31, 'Beatae cupiditate iusto aperiam.', 'Iusto et et sed incidunt a est doloremque vel. Sequi non neque in delectus sunt. Ut enim distinctio enim exercitationem placeat dolorem.', 'quia', '1994-05-07', 9, 1, NULL, NULL),
(32, 'Hic unde hic.', 'Assumenda reiciendis ducimus aut earum a. Vel iure et accusantium eum in. Et officiis blanditiis omnis dolorum.', 'sint', '2003-09-18', 2, 3, NULL, NULL),
(33, 'Et possimus alias optio possimus provident.', 'Laborum aperiam quis provident. Debitis enim vero reprehenderit reiciendis architecto quidem. Est unde alias et.', 'sapiente est', '2018-04-29', 10, 3, NULL, NULL),
(34, 'Sed adipisci nobis veritatis.', 'Assumenda et recusandae eos. Ipsam facere quia sint non.', 'officiis', '2000-11-29', 6, 4, NULL, NULL),
(35, 'Et aliquam aperiam beatae qui quisquam.', 'Aut aut nulla nihil similique exercitationem. Magni incidunt neque repudiandae tenetur. Eos quis vitae aut et eos odio qui.', 'quam', '2020-04-14', 11, 2, NULL, NULL),
(36, 'Excepturi perferendis odit ab.', 'Aut a corrupti consequatur et quos deserunt. Corrupti et voluptatum ex earum. Vitae quis ipsa impedit.', 'velit', '1998-09-24', 6, 1, NULL, NULL),
(37, 'Quos exercitationem delectus alias eum nesciunt.', 'Magni voluptas quo asperiores quia at qui autem. Eum dicta et quia totam exercitationem. Ratione rerum dolorem et consectetur dolor.', 'eaque ut', '2021-08-24', 11, 1, NULL, NULL),
(38, 'Expedita consequatur eaque.', 'Voluptatem iste saepe numquam est pariatur et blanditiis eos. Aspernatur excepturi temporibus eum et laudantium qui officia. Dolorum impedit doloribus veritatis aliquam. Voluptatum non sapiente veniam doloremque libero voluptatum.', 'aut molestiae', '1977-05-17', 7, 2, NULL, NULL),
(39, 'Quo omnis incidunt et placeat sed.', 'In eos iste est blanditiis ipsam totam iure ut. Molestias laboriosam explicabo et. Quisquam voluptatem vero sequi consequatur dignissimos et. Nostrum incidunt dolore est pariatur.', 'voluptas repellendus', '1999-07-19', 3, 1, NULL, NULL),
(40, 'Sunt cupiditate pariatur unde.', 'Dolorem nisi quas sed reprehenderit nulla ducimus. Placeat rerum voluptas et porro omnis et non. Ut doloribus quam ea veritatis. Et omnis earum recusandae doloribus laudantium aspernatur.', 'explicabo', '2000-12-26', 4, 1, NULL, NULL),
(41, 'Voluptas quia voluptatem.', 'Id qui repellat est quis labore est delectus aspernatur. Quia reiciendis voluptatem eius voluptatum et unde. Natus aspernatur quis ullam aliquid laboriosam dolore voluptatem. Qui exercitationem totam quo commodi vel aut temporibus autem.', 'aliquam distinctio', '1970-12-24', 7, 1, NULL, NULL),
(42, 'Saepe recusandae facilis molestiae numquam ea.', 'Itaque qui magni alias maxime molestias ducimus sunt. Architecto eos voluptas eum et nesciunt voluptate suscipit. Ipsa et omnis doloremque ut et voluptates in. At vero itaque velit est odio aspernatur ut.', 'sint quia', '1975-04-14', 4, 4, NULL, NULL),
(43, 'Aliquid voluptas natus.', 'At cupiditate sed illum non facere vel. Rerum omnis dolorem a rerum dignissimos maiores amet. Placeat possimus explicabo atque pariatur asperiores. Ea provident necessitatibus iste repellat explicabo quis et.', 'delectus consequatur', '1971-04-23', 10, 4, NULL, NULL),
(44, 'Voluptatem magnam iusto ut.', 'Beatae et et rerum. Sequi eos praesentium reiciendis voluptatem aut. Quia velit quod cupiditate doloremque dignissimos.', 'provident quibusdam', '1990-03-01', 7, 4, NULL, NULL),
(45, 'Est aut corrupti dolorem.', 'Ut consequatur accusantium molestiae quibusdam consequatur consequuntur ut fugit. Officiis necessitatibus possimus eligendi natus est error. Autem non sed eos sit qui repudiandae impedit.', 'est', '1983-01-21', 5, 4, NULL, NULL),
(46, 'Quaerat repudiandae rem sit voluptatum.', 'Suscipit illum iusto eum. Possimus et sed fugiat aspernatur expedita cumque. Voluptatem dolorem esse explicabo qui maxime. Perferendis numquam ea nulla dolorem velit ex.', 'aspernatur quas', '2008-05-12', 9, 1, NULL, NULL),
(47, 'Quo architecto possimus.', 'Perspiciatis sequi placeat eos dolore quo. Rerum distinctio est non doloremque sed iusto id. Reprehenderit natus voluptatum sunt cum vel.', 'atque', '1982-08-26', 8, 3, NULL, NULL),
(48, 'Et dolorem libero.', 'Enim quia enim possimus ut ut. Et quisquam omnis illo architecto odit quos et. Quis nesciunt eos nihil ab. Dolore excepturi qui vitae autem quam.', 'accusantium', '2021-11-12', 10, 4, NULL, NULL),
(49, 'Corrupti sint consequatur est odit odit.', 'Quos voluptate est officia velit doloremque quo. Aut aut praesentium ipsa magni. Quas laudantium cum assumenda alias aut repudiandae sit.', 'impedit tempora', '2013-03-28', 5, 4, NULL, NULL),
(50, 'Nam molestiae quisquam.', 'Ut officiis voluptas eum cumque quia dolor. Libero quaerat magni aut est aut sit repellendus. Labore ipsum quam placeat ea repellat.', 'voluptatem', '2000-11-23', 3, 3, NULL, NULL),
(51, 'Repellendus aliquam distinctio quod.', 'Dolorem distinctio consequatur vitae in. Sed dolorem qui nihil deleniti vero possimus iste. Inventore unde saepe accusamus cumque. Voluptatibus qui natus optio nemo quis ut qui qui.', 'fugiat aut', '2018-02-15', 2, 4, NULL, NULL),
(52, 'Dolor quam nesciunt dolorem nam.', 'Beatae debitis officiis quas veniam odio. Voluptatem animi eaque magnam neque tenetur est. Dolore ut debitis sint ut doloribus. Voluptatem vitae et quis est repellat et qui et.', 'nobis', '2014-07-30', 2, 2, NULL, NULL),
(53, 'Quasi soluta illum molestiae sunt.', 'Quae ratione repudiandae vel reiciendis. Esse maiores et ea pariatur omnis molestiae. A labore aut tempore quis voluptas soluta. Maxime sint cum unde iusto iste. Impedit quam molestiae beatae provident.', 'fugit in', '1984-06-01', 4, 4, NULL, NULL),
(54, 'Fugiat veniam et.', 'Velit est et recusandae quia non architecto molestiae. Mollitia ea ab facilis voluptatibus iure quaerat non. Est sunt similique nam non. Est consequatur aut ullam aperiam.', 'itaque', '2020-01-26', 5, 4, NULL, NULL),
(55, 'Ullam optio iste porro saepe.', 'Nobis ex et est qui alias. Possimus quaerat aut deserunt in autem sit molestias. Fugit est perferendis minima est laborum aliquam. Et et dolor occaecati inventore quia molestias. Maxime autem autem architecto consectetur.', 'corporis', '2003-03-26', 3, 3, NULL, NULL),
(56, 'Odit aut illo explicabo officia nemo.', 'Numquam quam ad laudantium error. Enim ab consequatur corporis sunt eveniet et.', 'voluptatibus officiis', '1971-02-25', 4, 4, NULL, NULL),
(57, 'Est qui est quod.', 'Aut accusamus et consequatur autem enim. Nostrum nostrum atque officia itaque explicabo repellat et. Ullam sed ea laborum. Doloribus quibusdam laborum odit minus labore. Natus delectus dolorum eveniet nesciunt assumenda dolores et.', 'nihil aliquid', '2016-10-23', 4, 4, NULL, NULL),
(58, 'Repellendus mollitia commodi nostrum veritatis.', 'Ab atque animi vel qui porro saepe nobis. Asperiores ut omnis aliquam dolorem quo. Nobis soluta delectus inventore. Est eveniet esse sapiente sit ut delectus consequatur nemo.', 'et nisi', '2012-01-06', 11, 2, NULL, NULL),
(59, 'Ullam non illum provident est natus.', 'Eum molestiae et ut unde. Blanditiis ut est incidunt pariatur repellat corporis sint laudantium. Voluptas adipisci modi temporibus non illum accusantium minus id.', 'nesciunt', '2020-08-25', 5, 1, NULL, NULL),
(60, 'Enim voluptates sed modi mollitia nobis.', 'Quaerat ad reiciendis qui ipsum quam facere. Saepe tenetur sunt fuga nemo rerum non. Molestias sunt vel non eos.', 'numquam', '1992-05-17', 10, 4, NULL, NULL),
(61, 'Qui officia et dolorem tempore temporibus.', 'Quos ea nulla id quis in voluptatem illo explicabo. Possimus laudantium ut aut est quis qui. Delectus alias eligendi sed recusandae.', 'ducimus', '2011-12-13', 4, 2, NULL, NULL),
(62, 'Ut qui dolor maxime.', 'Doloribus veniam dolorum in voluptatem tempora facilis eum. Aut sint similique aut laborum provident excepturi.', 'dolor odio', '1975-11-08', 8, 4, NULL, NULL),
(63, 'Sequi ipsa harum asperiores libero aliquid.', 'Similique velit voluptatem at praesentium inventore optio. Odio ipsam consequuntur et exercitationem est delectus dolores modi. Beatae quas ab delectus dignissimos fugiat. Et et laborum modi maiores asperiores quibusdam. Ipsum ullam aut magni natus unde nostrum odio.', 'ut et', '1977-04-10', 5, 4, NULL, NULL),
(64, 'Atque ea saepe at eaque.', 'Veritatis voluptatem molestiae odio quibusdam excepturi quas. Corporis architecto et rerum dolor odit. Facere quam voluptas quia dolorum. Placeat impedit consequatur aut.', 'soluta', '2003-01-31', 10, 3, NULL, NULL),
(65, 'Architecto odio voluptatem vel nostrum officiis.', 'Sunt ut consectetur exercitationem eaque architecto nemo. Enim mollitia dolor vel harum ut nemo.', 'dolore', '1973-05-06', 2, 4, NULL, NULL),
(66, 'Ut ea nihil accusantium.', 'Et sapiente atque velit et molestiae iure veniam. Sapiente accusantium tempora officia iure odio nam eum culpa. Quasi corporis aut similique repellendus impedit ex provident totam.', 'sit', '1992-02-17', 3, 4, NULL, NULL),
(67, 'Aut quos non.', 'Mollitia sint aliquid soluta ratione est in reiciendis suscipit. Hic voluptatem animi et asperiores dolore autem cum nesciunt. Sit omnis sunt et explicabo rerum hic ut. Modi neque iusto atque rerum possimus.', 'impedit', '1973-10-20', 5, 4, NULL, NULL),
(68, 'Vero laborum molestias.', 'Explicabo nesciunt libero sunt repellendus aut. Pariatur suscipit qui in provident iste. Dignissimos id facilis deserunt rerum natus est ipsam. Molestiae illo nisi eum iusto. Qui accusantium quod fugit vitae alias.', 'voluptatum ex', '1978-05-22', 2, 2, NULL, NULL),
(69, 'Cupiditate quae ad voluptas ullam.', 'Dolorum magni soluta soluta qui mollitia fugiat rerum. Incidunt velit deleniti laudantium sed. Possimus rem voluptates numquam non. Qui velit nam qui omnis optio nulla. Mollitia cupiditate ut dolores animi explicabo iure et.', 'sit dolores', '1999-12-21', 3, 2, NULL, NULL),
(70, 'Dolores doloremque harum corporis corporis.', 'Voluptatem in corporis laborum amet ut deleniti. Aliquid ab qui rerum delectus facilis. Harum voluptatem non quo quis neque.', 'incidunt', '1979-02-05', 11, 2, NULL, NULL),
(71, 'Temporibus vel ratione aliquam cupiditate.', 'Impedit qui ipsam cum quam non. Hic adipisci ut tempore voluptate facilis. Temporibus quia quibusdam aut magnam.', 'veritatis', '2011-04-19', 7, 3, NULL, NULL),
(72, 'Ut assumenda ut aliquam.', 'Ducimus fuga odit eligendi temporibus. Id ab animi qui veritatis architecto.', 'est laborum', '2012-11-20', 5, 4, NULL, NULL),
(73, 'Consequatur libero aut voluptas velit.', 'Aut eius ut dolore nihil dolores. Illum nihil aut et tempore. Laborum distinctio et esse sunt odio ut velit.', 'fugit vero', '2000-07-27', 2, 2, NULL, NULL),
(74, 'Repudiandae voluptatem perferendis velit maiores dignissimos.', 'Aliquid quia iure adipisci consectetur reprehenderit consequuntur. In earum labore dignissimos aut aut voluptatibus fuga et. Non velit officiis nam laudantium dolorum. Quisquam voluptas aliquam deleniti sit earum sapiente cumque aspernatur.', 'sint', '2003-07-12', 7, 4, NULL, NULL),
(75, 'Excepturi molestias quasi ipsam atque.', 'Sed cumque similique ex dolores perspiciatis inventore rerum. Dolorum vitae rerum molestiae. Nihil similique non laborum ut.', 'nam neque', '2016-08-30', 11, 3, NULL, NULL),
(76, 'Modi impedit doloremque.', 'Cum maxime eligendi nostrum nulla laboriosam magni dignissimos. Dolor fuga doloremque nesciunt dolorem sed et culpa. Iste modi voluptatem esse nisi aperiam accusantium.', 'maxime maxime', '2014-05-24', 10, 2, NULL, NULL),
(77, 'Est quo qui odit.', 'Voluptatem sed id ut blanditiis. Doloremque est eum sit et aliquam. Consequatur sunt error temporibus quia voluptatem hic suscipit.', 'et vel', '2009-04-16', 9, 2, NULL, NULL),
(78, 'In ut voluptate ratione.', 'Aut est quibusdam cumque ullam. Ipsam assumenda aspernatur pariatur cumque aliquam est. Accusamus praesentium repellat est id harum porro amet.', 'qui', '2007-05-18', 9, 1, NULL, NULL),
(79, 'Commodi voluptatibus optio repudiandae quas rem.', 'Est odio nulla facere laudantium. Cupiditate cumque eligendi est nisi. Molestias corrupti a provident et. Omnis suscipit ratione possimus.', 'eos', '2022-04-19', 10, 4, NULL, NULL),
(80, 'Eligendi aliquid vel accusantium in.', 'Et excepturi voluptas nostrum id nesciunt quibusdam. Atque quia accusamus deserunt aut quis. Quibusdam commodi quam alias fugiat qui ut quia voluptatem.', 'nesciunt', '1993-04-16', 5, 1, NULL, NULL),
(81, 'Qui et error consequatur.', 'Et repellat harum et accusantium autem. Ut inventore minus laudantium architecto. Accusamus error deserunt hic tempore occaecati.', 'quis nam', '1985-09-23', 2, 3, NULL, NULL),
(82, 'Quo est deserunt ut quaerat.', 'Ab explicabo et magnam et dolor. Atque omnis provident nesciunt voluptatibus alias inventore. Voluptatum qui nisi enim voluptatem rerum consectetur accusantium mollitia. Repellendus sapiente aliquam et eveniet.', 'nostrum quo', '2001-06-21', 3, 4, NULL, NULL),
(83, 'Expedita facilis est mollitia.', 'Recusandae quidem dolor asperiores velit repudiandae. Culpa mollitia eaque qui. Voluptatibus velit id id non voluptas. Ut accusamus culpa eos provident aut cupiditate.', 'iure', '2019-01-14', 3, 4, NULL, NULL),
(84, 'Impedit dolorum rerum voluptatum.', 'Vel id qui qui sunt. Dolorum iure quam dolore quod.', 'quaerat eos', '1998-09-05', 6, 4, NULL, NULL),
(85, 'Est nostrum sunt error.', 'Harum aut hic ratione praesentium. Mollitia delectus placeat veritatis veniam minima. Culpa voluptatem soluta sed earum quo debitis aperiam. Ea sunt hic tenetur nam dolor labore consequatur.', 'omnis', '2017-05-12', 8, 1, NULL, NULL),
(86, 'Tempore est omnis et qui.', 'Adipisci qui consequatur id repudiandae. Quia reprehenderit sit omnis consectetur eaque. Expedita nulla voluptates neque consequatur ullam culpa est. Voluptas qui ad repellendus excepturi nihil sapiente dolor.', 'qui natus', '1979-01-29', 11, 4, NULL, NULL),
(87, 'Et rerum eius dignissimos et.', 'At dolores accusantium odit molestiae perspiciatis libero sequi. Fugiat quo aperiam dolore. Eaque est architecto est aut mollitia. Ut quia ducimus aperiam.', 'et quasi', '1987-01-25', 9, 3, NULL, NULL),
(88, 'Nesciunt aut eum quas ea veritatis.', 'Eum magni rerum dolores aliquam iusto. Inventore perspiciatis totam enim mollitia. Cumque quod ullam in. Aut earum qui reprehenderit molestiae est. Dicta eveniet excepturi sunt aspernatur vel dolorum esse voluptatem.', 'ducimus nihil', '2011-12-11', 6, 2, NULL, NULL),
(89, 'Excepturi cupiditate dolor possimus nisi.', 'Eos quia illum voluptate tempore necessitatibus pariatur eligendi quaerat. Quod et aspernatur dolorem ipsa facilis sed modi. Provident maxime consequatur quaerat voluptatem dignissimos aut itaque. Iusto doloribus iure itaque consequuntur vero. Eos et omnis voluptatem.', 'tempora dignissimos', '1997-03-20', 10, 1, NULL, NULL),
(90, 'Est sed qui quia.', 'Qui aut incidunt quia. Qui temporibus voluptas velit eos voluptatem corrupti.', 'quas quidem', '2018-01-10', 6, 3, NULL, NULL),
(91, 'Aliquid molestias blanditiis illo dolorem accusamus.', 'Est adipisci et architecto modi velit. Ut architecto tenetur deleniti quaerat. Nostrum officia consequatur ut animi.', 'ut', '2017-02-07', 5, 1, NULL, NULL),
(92, 'Ducimus minus quo inventore delectus voluptatem.', 'Consequuntur autem maxime eligendi accusamus quae et vero. Unde quos aliquid cupiditate incidunt rem repudiandae. Facere debitis eaque autem ut odio occaecati doloribus. Quae repellendus numquam placeat ut commodi.', 'ipsum et', '1988-01-24', 8, 1, NULL, NULL),
(93, 'Explicabo dolor occaecati fugiat minima ducimus.', 'Odit ut laborum sequi explicabo. In eligendi ea quas fugit est et eum. Ea facere vero quo deserunt. Inventore ullam error autem molestiae quidem et pariatur.', 'soluta', '2013-03-13', 9, 2, NULL, NULL),
(94, 'Amet voluptas earum repellat.', 'Officia aperiam ab autem repellendus. At quae sed voluptas aut magni eaque. Repellendus ut delectus minima. Voluptates saepe et sunt.', 'culpa aliquid', '2004-08-19', 2, 1, NULL, NULL),
(95, 'Natus consectetur id.', 'Id facilis repellat qui alias ipsum quos voluptatem consequuntur. Hic officia facere enim sed repudiandae quia. Rerum repudiandae qui dolorem sunt.', 'delectus molestiae', '1980-07-05', 4, 2, NULL, NULL),
(96, 'Sint perspiciatis modi facere beatae.', 'Assumenda quam nihil vel. Minus dolorum aliquid consequuntur a.', 'beatae', '1985-09-28', 10, 3, NULL, NULL),
(97, 'Aliquid nam rem dolorem.', 'Vero similique placeat aut excepturi necessitatibus provident ex. Aut voluptate et optio et quibusdam ea natus. Nisi culpa officiis est quae tempore incidunt.', 'consequatur', '1987-05-13', 4, 1, NULL, NULL),
(98, 'Recusandae voluptas qui blanditiis.', 'Totam nihil exercitationem minus. Mollitia vel sed nihil autem hic voluptatem consequuntur. Laudantium quo ex dicta libero aut hic. Exercitationem officiis quo distinctio omnis velit.', 'nihil odio', '2007-07-23', 6, 3, NULL, NULL),
(99, 'Et facere laborum et.', 'Beatae repudiandae eum cupiditate recusandae. Et eaque voluptatem repellat in ut sunt non.', 'praesentium', '2012-10-29', 3, 4, NULL, NULL),
(100, 'Necessitatibus fugiat velit voluptatem.', 'Dolores eum consequatur totam aliquam corrupti ducimus vel. Exercitationem illo sit dicta assumenda corporis maxime. Excepturi libero ratione sed ea earum eius officiis suscipit. Aliquam dolorem est quaerat numquam.', 'amet', '2021-04-01', 5, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `notifications`
--

CREATE TABLE `notifications` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `player_id` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `texto` text COLLATE utf8mb4_general_ci NOT NULL,
  `sended_by` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `player_id`, `texto`, `sended_by`, `created_at`, `updated_at`) VALUES
(1, 26, '9eca27fe-2f6d-40b8-96fe-4df419a4a3a9', 'Nova mensagem de teste', 25, '2023-06-24 02:12:11', '2023-06-23 23:12:11');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `periodos`
--

CREATE TABLE `periodos` (
  `id` int NOT NULL,
  `position` int NOT NULL,
  `inicio` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `fim` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `periodos`
--

INSERT INTO `periodos` (`id`, `position`, `inicio`, `fim`, `user_id`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, '06h00', '07h00', 3, '2023-06-02 18:43:39', NULL, 1),
(2, 2, '07h00', '08h00', 3, '2023-06-02 18:44:08', NULL, 1),
(3, 3, '08h00', '09h00', 3, '2023-06-02 18:44:08', NULL, 1),
(4, 4, '09h00', '10h00', 3, '2023-06-02 18:43:39', NULL, 1),
(5, 5, '10h00', '11h00', 3, '2023-06-02 18:44:08', NULL, 1),
(6, 6, '11h00', '12h00', 3, '2023-06-02 18:44:08', NULL, 1),
(7, 7, '12h00', '13h00', 3, '2023-06-02 18:44:08', NULL, 1),
(8, 8, '13h00', '14h00', 3, '2023-06-02 18:44:08', NULL, 1),
(9, 9, '14h00', '15h00', 3, '2023-06-02 18:44:08', NULL, 1),
(10, 10, '15h00', '16h00', 3, '2023-06-02 18:44:08', NULL, 1),
(11, 11, '16h00', '17h00', 3, '2023-06-02 18:44:08', NULL, 1),
(12, 12, '17h00', '18h00', 3, '2023-06-02 18:44:08', NULL, 1),
(13, 13, '18h00', '19h00', 3, '2023-06-02 18:44:08', NULL, 1),
(14, 14, '19h00', '20h00', 3, '2023-06-02 18:44:08', NULL, 1),
(15, 15, '20h00', '21h00', 3, '2023-06-02 18:44:08', NULL, 1),
(16, 16, '21h00', '22h00', 3, '2023-06-02 18:44:08', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'browse bread 1', 'web', '2022-05-27 17:31:49', '2022-05-27 17:31:49'),
(2, 'read bread 1', 'web', '2022-05-27 17:31:49', '2022-05-27 17:31:49'),
(3, 'edit bread 1', 'web', '2022-05-27 17:31:49', '2022-05-27 17:31:49'),
(4, 'add bread 1', 'web', '2022-05-27 17:31:49', '2022-05-27 17:31:49'),
(5, 'delete bread 1', 'web', '2022-05-27 17:31:49', '2022-05-27 17:31:49');

-- --------------------------------------------------------

--
-- Estrutura para tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `plantonistas`
--

CREATE TABLE `plantonistas` (
  `id` int NOT NULL,
  `inicio` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fim` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `indaiatuba_1` int NOT NULL,
  `indaiatuba_2` int NOT NULL,
  `salto_1` int NOT NULL,
  `salto_2` int NOT NULL,
  `itu_1` int NOT NULL,
  `itu_2` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `plantonistas`
--

INSERT INTO `plantonistas` (`id`, `inicio`, `fim`, `indaiatuba_1`, `indaiatuba_2`, `salto_1`, `salto_2`, `itu_1`, `itu_2`, `created_at`, `updated_at`, `status`, `user_id`) VALUES
(1, '2022-06-06', '2022-06-12', 17, 18, 19, 20, 21, 22, '2022-06-04 18:35:25', '2022-06-07 17:27:45', 1, 1),
(2, '2022-06-13', '2022-06-19', 1, 18, 19, 19, 3, 23, '2022-06-07 19:51:10', '2022-06-07 16:51:10', 1, 1),
(3, '2022-06-20', '2022-06-26', 1, 18, 19, 19, 23, 3, '2022-06-21 22:26:31', '2022-06-21 19:26:31', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `product_items`
--

CREATE TABLE `product_items` (
  `id` int NOT NULL,
  `category_id` int NOT NULL,
  `subcategory_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `promotional` int NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `unitprice` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `imgurl` text COLLATE utf8mb4_general_ci NOT NULL,
  `obs` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `product_items`
--

INSERT INTO `product_items` (`id`, `category_id`, `subcategory_id`, `created_at`, `updated_at`, `status`, `promotional`, `name`, `unitprice`, `imgurl`, `obs`) VALUES
(1, 4, 1, '2023-06-09 15:39:17', '2023-06-19 14:55:56', 1, 1, 'Long Hair', '15.0', 'https://res.cloudinary.com/beleza-na-web/image/upload/w_100,f_auto,fl_progressive,q_auto:best/v1/imagens/5/kerastase-densifique-bain-densite-shampoo-250ml-46916-8788758772485934401.jpg', NULL),
(2, 2, 1, '2023-06-09 15:51:45', '2023-06-19 14:50:07', 1, 1, 'Shampoo Antiqueda', '7.0', 'https://static.vecteezy.com/system/resources/previews/006/046/341/original/barbershop-logo-vintage-classic-style-salon-fashion-haircut-pomade-badge-icon-simple-minimalist-modern-barber-pole-razor-shave-scissor-razor-blade-retro-symbol-luxury-elegant-design-free-vector.jpg', NULL),
(3, 2, 2, '2023-06-09 15:51:45', '2023-06-11 01:28:21', 1, 1, 'Pizza Pepperoni', '40.99', 'https://www.receiteria.com.br/wp-content/uploads/receitas-de-pizza-de-pepperoni-0.jpg', NULL),
(4, 2, 2, '2023-06-09 15:51:45', '2023-06-11 01:30:17', 1, 0, 'Pizza Mix', '11.20', 'http://icube.milliyet.com.tr/YeniAnaResim/2016/10/24/tavada-pizza-tarifi-7857137.Jpeg', NULL),
(5, 2, 2, '2023-06-09 15:51:45', NULL, 1, 1, 'Neapolitan Pizza', '12.10', 'https://img.grouponcdn.com/deal/2SVzinBnAH17zHrq3HNpurto2gpK/2S-700x420/v1/c700x420.jpg', NULL),
(6, 2, 3, '2023-06-09 15:51:45', '2023-06-11 01:31:19', 1, 0, 'Espeto de tomate e alho', '16.60', 'https://images.squarespace-cdn.com/content/v1/5cbb41b0fd679350c74ea497/1624719414474-4JK4QFQCRL2X68IC3QN4/Kofta+kebabs+with+tomato+sauce+and+yogurt-garlic+sauce.jpg', NULL),
(7, 2, 3, '2023-06-09 15:51:45', NULL, 1, 0, 'Adana Kebab', '15.0', 'http://www.muslumkebap.com/Contents/Upload/MuslumAdana_qyz0b34a.p3w.jpg', NULL),
(8, 2, 3, '2023-06-09 15:51:45', NULL, 1, 0, 'Eggplant Kebab', '18.0', 'http://www.muslumkebap.com/Contents/Upload/MuslumPatlicanKebap_y41olk55.kpc.jpg', NULL),
(9, 2, 3, '2023-06-09 15:51:45', NULL, 1, 1, 'Shish Kebab', '10.0', 'http://2.bp.blogspot.com/-4_8T6g3qOCU/VVz3oASO5lI/AAAAAAAAUHo/rEw1XlZoxqQ/s1600/Shish.jpg', NULL),
(10, 2, 4, '2023-06-09 15:51:45', NULL, 1, 0, 'Pistachio Baklava', '10.0', 'http://www.karakoygulluoglu.com/fistikli-kare-baklava-32-15-B.jpg', NULL),
(11, 2, 4, '2023-06-09 15:51:45', NULL, 1, 0, 'Palace Pistachio Baklava', '12.50', 'http://www.karakoygulluoglu.com/fistikli-havuc-dilim-baklava-1kg-31-14-B.jpg', NULL),
(12, 2, 4, '2023-06-09 15:51:45', NULL, 1, 0, 'Mixed Baklava in Tray', '60.0', 'http://www.karakoygulluoglu.com/karisik-baklava-1-tepsi-66-31-B.jpg', NULL),
(13, 2, 4, '2023-06-09 15:51:45', NULL, 1, 0, 'Tel Kadayıf with Pistachio', '9.0', 'http://www.karakoygulluoglu.com/fistikli-tel-kadayif-1-39-44-B.jpg', NULL),
(14, 3, 5, '2023-06-09 15:51:45', NULL, 1, 0, '0.5 liter', '0.30', 'http://cdn.avansas.com/assets/59479/erikli-su-0-5-lt-12-li-1-zoom.jpg', NULL),
(15, 3, 6, '2023-06-09 15:51:45', NULL, 1, 0, 'Coca Cola 0.3l', '0.70', 'https://images-na.ssl-images-amazon.com/images/I/818i%2BQm07UL._SL1500_.jpg', NULL),
(16, 3, 6, '2023-06-09 15:51:45', NULL, 1, 0, 'Coca Cola 0.2l', '1.0', 'https://images-na.ssl-images-amazon.com/images/I/511rL-aYd9L._SL1000_.jpg', NULL),
(17, 3, 6, '2023-06-09 15:51:45', NULL, 1, 0, 'Fanta 0.3l', '0.70', 'http://www.germandeli.com/product-images/Fanta-Orange-Orange-Soda-33l_main-1.jpg', NULL),
(18, 3, 6, '2023-06-09 15:51:45', NULL, 1, 0, 'Fanta 0.5l', '1.10', 'http://www.germandeli.com/product-images/Fanta-Orange-0-5-liter-bottle_main-1.jpg', NULL),
(19, 3, 6, '2023-06-09 15:51:45', NULL, 1, 0, 'Sprite 0.5l', '1.10', 'https://cdn.grofers.com/app/images/products/full_screen/pro_312.jpg', NULL),
(20, 3, 7, '2023-06-09 15:51:45', NULL, 1, 0, 'Turkish Tea', '20.0', 'https://images.hepsiburada.net/assets/Taris/500/Taris_3092120.jpg', NULL),
(21, 3, 8, '2023-06-09 15:51:45', NULL, 1, 0, 'Turkish Coffee', '20.0', 'https://cdn3.volusion.com/p3y5v.vg2ps/v/vspfiles/photos/TCW-XME02-2.jpg?1500568557', NULL),
(22, 3, 9, '2023-06-09 15:51:45', NULL, 1, 0, 'Mixed Fruit Juice', '1.0', 'https://images.hepsiburada.net/assets/Taris/500/Taris_4791763.jpg', NULL),
(23, 3, 9, '2023-06-09 15:51:45', NULL, 1, 0, 'Apricot Fruit Juice', '1.0', 'http://cdn.avansas.com/assets/53313/cappy-meyve-suyu-kayisi-1-lt-0-zoom.jpg', NULL),
(24, 3, 9, '2023-06-09 15:51:45', NULL, 1, 0, 'Orange Fruit Juice', '1.0', 'https://images.hepsiburada.net/assets/Taris/500/Taris_4791980.jpg', NULL),
(25, 4, 10, '2023-06-09 15:51:45', NULL, 1, 0, 'Black T-Shirt', '20.0', 'https://www.kaft.com/static/images/tee/0628_1.jpg', NULL),
(26, 4, 10, '2023-06-09 15:51:45', NULL, 1, 0, 'Blue T-Shirt', '20.0', 'https://www.kaft.com/static/images/tee/0428_1.jpg', NULL),
(27, 4, 10, '2023-06-09 15:51:45', NULL, 1, 0, 'White T-Shirt', '20.0', 'https://www.kaft.com/static/images/tee/0603_1.jpg', NULL),
(28, 4, 11, '2023-06-09 15:51:45', NULL, 1, 0, 'Blue Jean', '30.0', 'https://sky-static.mavi.com/sys-master/maviTrImages/h61/h8c/8959419908126/0037823516_image_3.jpg_Default-MainProductImage', NULL),
(29, 4, 11, '2023-06-09 15:51:45', NULL, 1, 0, 'Dark Colored Jean', '30.0', 'https://www.mensfitness.com/sites/mensfitness.com/files/styles/gallery_slideshow_image/public/1280-nudie-lean-jean.jpg?itok=rFDKRlFd', NULL),
(30, 4, 12, '2023-06-09 15:51:45', NULL, 1, 0, 'Winter Jacket', '90.0', 'https://images.thenorthface.com/is/image/TheNorthFace/NF0A2TCN_7D6_hero?$PDP-SCHEMA$', NULL),
(31, 4, 12, '2023-06-09 15:51:45', NULL, 1, 0, 'Leather Jacket', '110.0', 'https://www.revzilla.com/product_images/0091/7906/scorpion1909_leather_jacket_black.jpg', NULL),
(32, 4, 13, '2023-06-09 15:51:45', NULL, 1, 0, 'White Polo Shirt', '30.99', 'https://www.hemington.com.tr/beyaz-triko-polo-giza-pamuk-tshirt-5513-86-B.jpg', NULL),
(33, 4, 13, '2023-06-09 15:51:45', NULL, 1, 0, 'Fernando Muslera', '999.99', 'http://cdn.gsstore.org/UPLOAD/PRODUCT/thumb/K023-E75365_401_1_large.JPG', NULL),
(34, 4, 14, '2023-06-09 15:51:45', NULL, 1, 0, 'Galatasaray Short', '999.99', 'http://static.barcin.com/web/images/products/659037-628/nike-galatasaray-2015-2016-sezonu-dis-saha-erkek-sort-original-big.jpg', NULL),
(35, 4, 14, '2023-06-09 15:51:45', NULL, 1, 0, 'LeBron Basketball Short', '40.0', 'http://www.swishbasketball.co.uk/media/catalog/product/cache/1/image/1500x/b661d95dd61f6b4c6be8ac50936dce4f/n/k/nk-718924-657_1.jpg', NULL),
(36, 4, 15, '2023-06-09 15:51:45', NULL, 1, 0, 'NY Sweatshirt', '50.99', 'https://www.aksesuarix.com/images/products/03/18/21/31821_buyuk.jpg', NULL),
(37, 4, 15, '2023-06-09 15:51:45', NULL, 1, 0, 'Disnet Women Sweatshirt', '45.50', 'https://uniqlo.scene7.com/is/image/UNIQLO/goods_09_182987', NULL),
(38, 4, 16, '2023-06-09 15:51:45', NULL, 1, 0, 'Vans Shoes', '67.30', 'https://m.media-amazon.com/images/G/01/2017/home/october2017/3424427-p-MULTIVIEW._CB514432018_.jpg', NULL),
(39, 4, 16, '2023-06-09 15:51:45', NULL, 1, 0, 'Converse All Star', '55.44', 'https://m.media-amazon.com/images/G/01/zappos/landing/pages/mensclothing/MelodyTest1/MensShoes1._V506596164_.jpg', NULL),
(40, 4, 17, '2023-06-09 15:51:45', NULL, 1, 0, 'Silver Bracelet', '220.0', 'https://www.brighton.com/photos/product/giant/369560S17291/-/size-os.jpg', NULL),
(41, 4, 17, '2023-06-09 15:51:45', NULL, 1, 0, 'Gold Bracelet', '330.0', 'http://scene7.zumiez.com/is/image/zumiez/pdp_hero/The-Gold-Gods-Gold-Cuban-Link-Bracelet-_244592-front.jpg', NULL),
(42, 4, 17, '2023-06-09 15:51:45', NULL, 1, 0, 'Leather Bracelet', '30.0', 'https://images-na.ssl-images-amazon.com/images/I/71TtlBcKFWL._UL1500_.jpg', NULL),
(43, 5, 18, '2023-06-09 15:51:45', NULL, 1, 0, 'Apple iMac i5', '1710.0', 'https://www.apple.com/v/imac/e/images/overview/og_image.png?201709270947', NULL),
(44, 5, 18, '2023-06-09 15:51:45', NULL, 1, 0, 'Apple MacBook i7', '1200.0', 'https://brain-images-ssl.cdn.dixons.com/3/2/10165823/l_10165823_001.jpg', NULL),
(45, 5, 19, '2023-06-09 15:51:45', NULL, 1, 0, 'Galaxy 8inch Tablet', '660.0', 'http://images.samsung.com/is/image/samsung/p5/tr/tablets/galaxy-tab-s2-001.png?$ORIGIN_PNG$', NULL),
(46, 5, 19, '2023-06-09 15:51:45', NULL, 1, 0, 'Asus ZenPad 10inch', '340.0', 'https://images-na.ssl-images-amazon.com/images/I/91aibqJgIDL._SL1500_.jpg', NULL),
(47, 5, 19, '2023-06-09 15:51:45', NULL, 1, 0, 'iPad Mini 4', '780.0', 'https://www.bhphotovideo.com/images/images2500x2500/apple_mk9n2ll_a_128gb_ipad_mini_4_1185478.jpg', NULL),
(48, 5, 19, '2023-06-09 15:51:45', NULL, 1, 0, 'iPad Pro', '1110.0', 'https://www.bhphotovideo.com/images/images2500x2500/apple_mlmv2ll_a_9_7_ipad_pro_128gb_1241265.jpg', NULL),
(49, 5, 20, '2023-06-09 15:51:45', NULL, 1, 0, 'Samsung S8', '555.0', 'https://s7d2.scene7.com/is/image/SamsungUS/GS8_Front_20170712?$product-details-jpg$', NULL),
(50, 5, 20, '2023-06-09 15:51:45', NULL, 1, 0, 'iPhone 7', '660.0', 'https://centrecomstatic.s3.amazonaws.com/images/upload/0038722_0.png', NULL),
(51, 5, 20, '2023-06-09 15:51:45', NULL, 1, 0, 'iPhone X', '1259.00', 'https://cdn.macrumors.com/article-new/2017/09/iphonexdesign.jpg', NULL),
(52, 5, 20, '2023-06-09 15:51:45', NULL, 1, 0, 'LG G6', '440.0', 'http://www.lg.com/au/images/smartphones/MD05812152/gallery/G6-medium06.jpg', NULL),
(53, 5, 20, '2023-06-09 15:51:45', NULL, 1, 0, 'Xiaomi Mi Mix 2', '350.0', 'https://image4.geekbuying.com/ggo_pic/2017-09-11/Xiaomi-Mi-Mix-2-5-99-Inch-6GB-64GB-Smartphone-Black-465274-.jpg', NULL),
(54, 5, 20, '2023-06-09 15:51:45', NULL, 1, 0, 'Galaxy Note 8', '880.0', 'https://images-na.ssl-images-amazon.com/images/I/41GZvrGM5bL.jpg', NULL),
(55, 5, 21, '2023-06-09 15:51:45', NULL, 1, 0, 'Samsung 40inch TV', '330.0', 'https://multimedia.bbycastatic.ca/multimedia/products/1500x1500/103/10317/10317673.jpg', NULL),
(56, 5, 22, '2023-06-09 15:51:45', NULL, 1, 0, 'Canon EOS 650D', '925.0', 'https://shop.usa.canon.com/wcsstore/ExtendedSitesCatalogAssetStore/eos-t7i-18-55_1_xl.jpg', NULL),
(57, 5, 22, '2023-06-09 15:51:45', NULL, 1, 0, 'Go Pro 5', '1300.0', 'https://www.bhphotovideo.com/images/images2500x2500/gopro_chdhx_501_hero5_black_1274419.jpg', NULL),
(58, 5, 22, '2023-06-09 15:51:45', NULL, 1, 0, 'Nikon 5600D', '800.0', 'https://cdn-4.nikon-cdn.com/e/Q5NM96RZZo-YRYNeYvAi9beHK4x3L-8go_p7JUL6JpQM8B_IxDfxyg==/Views/1575_D5600_left.png', NULL),
(59, 5, 23, '2023-06-09 15:51:45', NULL, 1, 0, 'Playstation 4 Pro', '420.99', 'https://rukminim1.flixcart.com/image/1408/1408/gamingconsole/g/a/t/playstation-4-ps4-500-sony-dualshock-4-controller-original-imadrhehpvvetkgf.jpeg?q=90', NULL),
(60, 5, 23, '2023-06-09 15:51:45', NULL, 1, 0, 'FİFA 18', '40.0', 'https://compass-ssl.xbox.com/assets/79/b1/79b130b1-d2a5-4858-98c8-5eecc16902bf.jpg?n=FF18_GLP-Page-Hero-1084_1920x600_02.jpg', NULL),
(61, 5, 23, '2023-06-09 15:51:45', NULL, 1, 0, 'NBA 2K 18', '40.0', 'https://static-ca.ebgames.ca/images/products/731461/3max.jpg', NULL),
(62, 5, 23, '2023-06-09 15:51:45', NULL, 1, 0, 'Footbal Manager 18', '40.0', 'http://www-footballmanager-com-18-public.s3.amazonaws.com/footballmanager/news/fm_2018_release_date_7.png', NULL),
(64, 5, 23, '2023-06-09 15:51:45', NULL, 1, 0, 'Playstation 4 Controller', '30.0', 'http://media.4rgos.it/i/Argos/6257637_R_Z001A?$Web$&$DefaultPDP570$&$WebPDPBadge570$&topright=empty&bottomleft=empty', NULL),
(65, 5, 23, '2023-06-09 15:51:45', NULL, 1, 0, 'Call of Duty WW2', '40.0', 'https://img.bolumsonucanavari.com/images/Upload/2dbedeb3-21a7-4294-8940-7ab68832e3f2.jpg', NULL),
(66, 5, 24, '2023-06-09 15:51:45', NULL, 1, 0, 'Galaxy Gear S2', '220.0', 'http://media.4rgos.it/i/Argos/5207042_R_Z002A?$Web$&$DefaultPDP570$', NULL),
(67, 5, 24, '2023-06-09 15:51:45', NULL, 1, 0, 'Galaxy Gear S3', '330.0', 'http://www.samsung.com/global/galaxy/gear-s3/images/gear-s3-highlights_design_ft.jpg', NULL),
(68, 5, 24, '2023-06-09 15:51:45', NULL, 1, 0, 'Apple Watch', '440.0', 'https://brain-images-ssl.cdn.dixons.com/2/9/10151992/l_10151992_001.jpg', NULL),
(69, 5, 24, '2023-06-09 15:51:45', NULL, 1, 0, 'Xiaomi Mi Band 2', '20.0', 'https://image4.geekbuying.com/ggo_pic/2016-06-03/201606309322239menyh.jpg', NULL),
(70, 5, 5, '2023-06-19 18:08:15', '2023-06-19 15:08:15', 1, 1, 'Barba Forte', '125.99', 'https://images.tcdn.com.br/img/img_prod/686591/combo_danger_shampoo_condicionador_oleo_barba_forte_3_produtos_43_1_97e7b59b4d9278c9a88cf952cb361c24.jpg', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2022-05-27 17:31:48', '2022-05-27 17:31:48'),
(2, 'user', 'web', '2022-05-27 17:31:48', '2022-05-27 17:31:48'),
(3, 'guest', 'web', '2022-05-27 17:31:48', '2022-05-27 17:31:48');

-- --------------------------------------------------------

--
-- Estrutura para tabela `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `role_hierarchy`
--

CREATE TABLE `role_hierarchy` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` int UNSIGNED NOT NULL,
  `hierarchy` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `role_hierarchy`
--

INSERT INTO `role_hierarchy` (`id`, `role_id`, `hierarchy`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `semanais`
--

CREATE TABLE `semanais` (
  `id` int NOT NULL,
  `segunda` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `terca` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `quarta` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `quinta` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `sexta` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `sabado` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `domingo` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `semanais`
--

INSERT INTO `semanais` (`id`, `segunda`, `terca`, `quarta`, `quinta`, `sexta`, `sabado`, `domingo`, `user_id`, `created_at`, `updated_at`, `status`) VALUES
(1, '', '4,5,6,7,8,9,10,11', '4,5,6,7,8,9,10,11', '4,5,6,7,8,9,10,11', '4,5,6,7,8,9,10,11', '4,5,6,7,8,9,10,11', '4,5,6', 2, '2023-06-02 16:03:38', NULL, 1),
(2, '', '4,5,6,7,8,9,10,11', '4,5,6,7,8,9,10,11', '4,5,6,7,8,9,10,11', '4,5,6,7,8,9,10,11', '4,5,6,7,8,9,10,11', '4,5,6', 3, '2023-06-02 16:03:38', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicos`
--

CREATE TABLE `servicos` (
  `id` int NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `changed_by_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `std_price` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_at` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `servicos`
--

INSERT INTO `servicos` (`id`, `name`, `changed_by_id`, `created_at`, `updated_at`, `status`, `std_price`, `expire_at`, `deleted_at`) VALUES
(1, 'Corte', 25, '2023-05-18 16:56:06', '2023-06-18 20:21:12', 1, '25,00', '', NULL),
(2, 'Franja', 1, '2023-05-18 16:56:06', NULL, 1, '25,00', '', NULL),
(3, 'Corte Feminino', 1, '2023-05-18 16:58:46', NULL, 1, '35,00', '', NULL),
(4, 'Escova', 1, '2023-05-18 16:58:46', NULL, 1, '15,00', '', NULL),
(5, 'Prancha', 1, '2023-05-18 16:58:46', NULL, 1, '35,00', '', NULL),
(6, 'Aplicação', 1, '2023-05-18 16:58:46', NULL, 1, '15,00', '', NULL),
(7, 'Reflexo', 1, '2023-05-18 16:58:46', NULL, 1, '35,00', '', NULL),
(8, 'Mechas', 1, '2023-05-18 16:58:46', NULL, 1, '15,00', '', NULL),
(9, 'Tintura', 1, '2023-05-18 16:58:46', NULL, 1, '35,00', '', NULL),
(10, 'Balayage', 1, '2023-05-18 16:58:46', NULL, 1, '15,00', '', NULL),
(11, 'Relaxamento', 1, '2023-05-18 16:58:46', NULL, 1, '35,00', '', NULL),
(12, 'Cauterização', 1, '2023-05-18 16:58:46', NULL, 1, '15,00', '', NULL),
(13, 'Florzinha', 1, '2023-05-18 19:56:06', NULL, 1, '25,00', '', NULL),
(14, 'Axila', 1, '2023-05-18 19:56:06', NULL, 1, '25,00', '', NULL),
(15, 'Virilha', 1, '2023-05-18 19:58:46', NULL, 1, '35,00', '', NULL),
(16, 'Buço', 1, '2023-05-18 19:58:46', NULL, 1, '15,00', '', NULL),
(17, 'Dep.Íntima', 1, '2023-05-18 19:58:46', NULL, 1, '35,00', '', NULL),
(18, 'Meia Perna', 1, '2023-05-18 19:58:46', NULL, 1, '15,00', '', NULL),
(19, 'Perna Inteira', 1, '2023-05-18 19:58:46', NULL, 1, '35,00', '', NULL),
(20, 'Banho de Lua', 1, '2023-05-18 19:58:46', NULL, 1, '15,00', '', NULL),
(21, 'Depilação', 1, '2023-05-18 19:58:46', NULL, 1, '35,00', '', NULL),
(22, 'Esfoliação de pé', 1, '2023-05-18 19:58:46', NULL, 1, '15,00', '', NULL),
(23, 'Esfoliação de mão', 1, '2023-05-18 19:58:46', NULL, 1, '35,00', '', NULL),
(24, 'Colocação de unha', 1, '2023-05-18 19:58:46', NULL, 1, '15,00', '', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `status`
--

CREATE TABLE `status` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `status`
--

INSERT INTO `status` (`id`, `name`, `class`) VALUES
(1, 'ongoing', 'badge badge-pill badge-primary'),
(2, 'stopped', 'badge badge-pill badge-secondary'),
(3, 'completed', 'badge badge-pill badge-success'),
(4, 'expired', 'badge badge-pill badge-warning');

-- --------------------------------------------------------

--
-- Estrutura para tabela `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `category_id` int NOT NULL,
  `updated_at` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `subcategory`
--

INSERT INTO `subcategory` (`id`, `name`, `category_id`, `updated_at`, `created_at`, `status`) VALUES
(1, 'Shampu', 2, '2023-06-19 14:45:10', '2023-06-09 15:18:16', 1),
(2, 'Condicionadores', 2, '2023-06-19 14:45:56', '2023-06-09 15:18:16', 1),
(3, 'Tinturas', 2, '2023-06-10 19:54:54', '2023-06-09 15:18:16', 1),
(4, 'Matizadores', 2, '2023-06-11 01:29:05', '2023-06-09 15:18:16', 1),
(5, 'Máscara', 3, '2023-06-19 14:48:39', '2023-06-09 15:18:16', 1),
(6, 'Soda', 3, NULL, '2023-06-09 15:18:16', 1),
(7, 'Cha', 3, NULL, '2023-06-09 15:18:16', 1),
(8, 'Cafe', 3, NULL, '2023-06-09 15:18:16', 1),
(9, 'Suco de Frutas', 3, NULL, '2023-06-09 15:18:16', 1),
(10, 'Camiseta', 4, NULL, '2023-06-09 15:18:16', 1),
(11, 'Jeans', 4, NULL, '2023-06-09 15:18:16', 1),
(12, 'Jaqueta', 4, NULL, '2023-06-09 15:18:16', 1),
(13, 'Polo', 4, NULL, '2023-06-09 15:18:16', 1),
(14, 'Short', 4, NULL, '2023-06-09 15:18:16', 1),
(15, 'Sweatshirt', 4, NULL, '2023-06-09 15:18:16', 1),
(16, 'Sapatos', 4, NULL, '2023-06-09 15:18:16', 1),
(17, 'Acessórios', 4, NULL, '2023-06-09 15:18:16', 1),
(18, 'Computador', 5, NULL, '2023-06-09 15:18:16', 1),
(19, 'Tablet', 5, NULL, '2023-06-09 15:18:16', 1),
(20, 'Celular', 5, NULL, '2023-06-09 15:18:16', 1),
(21, 'Tv e Vídeo', 5, NULL, '2023-06-09 15:18:16', 1),
(22, 'Câmera e Foto', 5, NULL, '2023-06-09 15:18:16', 1),
(23, 'Vídeo Game', 5, NULL, '2023-06-09 15:18:16', 1),
(24, 'Wearable', 5, NULL, '2023-06-09 15:18:16', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `codigo` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `codigo`, `created_at`, `updated_at`) VALUES
(6, 'artesdazena@gmail.com', 178206, '2023-05-30 22:03:01', '2023-05-30 19:03:01');

-- --------------------------------------------------------

--
-- Estrutura para tabela `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint UNSIGNED NOT NULL,
  `subscription_id` bigint UNSIGNED NOT NULL,
  `stripe_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_product` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `times`
--

CREATE TABLE `times` (
  `id` int NOT NULL,
  `nome` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int DEFAULT NULL,
  `convenio_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `obs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `file_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `endereco` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cidade` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rua` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cidadeufbairrostr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categoria` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'cab',
  `isadmin` int NOT NULL DEFAULT '0',
  `membro` int DEFAULT NULL COMMENT '1=colih, 2=fac, 3=gvp, 4=outros',
  `concordo` int DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `menuroles` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pm_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pm_last_four` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `player_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `versionname` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `versioncode` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token_firebase` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inicio` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codigo` int DEFAULT NULL,
  `imagem` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `historico` text COLLATE utf8mb4_unicode_ci,
  `usernamecad` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Onesignal_device_id` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `file_id`, `name`, `email`, `telefone`, `endereco`, `cidade`, `rua`, `cidadeufbairrostr`, `area_id`, `categoria`, `isadmin`, `membro`, `concordo`, `email_verified_at`, `password`, `menuroles`, `remember_token`, `created_at`, `status`, `updated_at`, `deleted_at`, `stripe_id`, `pm_type`, `pm_last_four`, `trial_ends_at`, `player_id`, `versionname`, `versioncode`, `token_firebase`, `inicio`, `codigo`, `imagem`, `historico`, `usernamecad`, `Onesignal_device_id`) VALUES
(25, NULL, 'Paulo Sergio', 'dep.limpeza@gmail.com', '19991891961', NULL, 'Localização não informada', NULL, 'Localização não informada', '1,6', 'cab', 1, NULL, 1, NULL, '$2y$10$nrhNaE5PP51yVuALAab0reSCbTiFBj4obHkkEuR/k3gxY2kElgvjK', 'user', NULL, '2023-05-30 20:39:58', 1, '2023-07-12 15:24:38', NULL, NULL, NULL, NULL, NULL, '264240cc-088a-49d5-bf09-9083238ea805', '1.0', '1', NULL, NULL, 385443, '25.jpg', 'Tenho alergia de alguns produtos capilares, dermatite de contato ou eczema de contato. Trata-se de uma reação inflamatória na pele devido à exposição a certas substâncias, os alérgenos - receita medica', NULL, '0e2f35b7-d64d-46c8-88a7-89ad3f5b5bc0'),
(26, NULL, 'Paulo Souza', 'paulovinteeum@gmail.com', '19991891969', NULL, 'Indaiatuba-SP', NULL, 'Indaiatuba-SP', '1, 2, 3', 'cab', 1, NULL, 1, NULL, '$2y$10$Zrtb86pw0bIbI263yM.GrO0t81PLVztYTlQIpgdqH5Mh4tlBND5xi', 'user', NULL, '2023-05-30 20:43:55', 1, '2023-06-15 23:51:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, NULL, 'Juliana Silva', 'sistemazenadigital@gmail.com', '1999189155', NULL, 'Indaiatuba', NULL, NULL, '1', 'cab', 0, NULL, 1, NULL, '$2y$10$Zrtb86pw0bIbI263yM.GrO0t81PLVztYTlQIpgdqH5Mh4tlBND5xi', 'user', NULL, '2023-05-30 20:43:55', 1, '2023-05-30 20:43:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, NULL, 'Zenete Oliveira', 'artesdazena@gmail.com', '19991891962', NULL, 'Indaiatuba', NULL, NULL, '2', 'cab', 0, NULL, 1, NULL, '$2y$10$Zrtb86pw0bIbI263yM.GrO0t81PLVztYTlQIpgdqH5Mh4tlBND5xi', 'user', NULL, '2023-05-30 20:43:55', 1, '2023-05-30 20:43:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, NULL, 'Juliana Oliveira', 'adazena@gmail.com', '19991891965', NULL, 'Indaiatuba', NULL, NULL, '', 'cab', 0, NULL, 1, NULL, '$2y$10$Zrtb86pw0bIbI263yM.GrO0t81PLVztYTlQIpgdqH5Mh4tlBND5xi', 'user', NULL, '2023-05-30 20:43:55', 1, '2023-06-18 21:18:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, NULL, 'Véra Lucia Batista', 'vrbatista@gmail.com', '19991891960', NULL, 'Indaiatuba', NULL, NULL, '', 'cab', 0, NULL, 1, NULL, '$2y$10$Zrtb86pw0bIbI263yM.GrO0t81PLVztYTlQIpgdqH5Mh4tlBND5xi', 'user', NULL, '2023-05-30 20:43:55', 1, '2023-05-30 20:43:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, NULL, 'Tiago Batista', 'thiagobatista@gmail.com', '19991891951', NULL, 'Localização não informada', NULL, 'Localização não informada', '', 'cab', 0, NULL, 1, NULL, '$2y$10$Zrtb86pw0bIbI263yM.GrO0t81PLVztYTlQIpgdqH5Mh4tlBND5xi', 'user', NULL, '2023-05-30 20:43:55', 0, '2023-06-19 15:42:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, NULL, 'Reginaldo Santos', 'rginaldo@gmail.com', '1997854321', NULL, 'Indaiatuba - SP', NULL, 'Indaiatuba - SP', '9,11', 'cab', 0, NULL, NULL, NULL, '$2y$10$Dt8PAn36F6PXIj/YByvoY.LpmUhsEA3bI4Tp79njEPx8bIOGCDV0S', 'user', NULL, '2023-06-18 22:06:09', 1, '2023-06-18 22:06:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, NULL, 'Paulo Senha', 'paulo2@gmail.com', '19981916453', NULL, 'Indaiatuba-SP', NULL, 'Indaiatuba-SP', '1,2,3,4,6,11,12,22,23,24', 'cab', 0, NULL, 1, NULL, '$2y$10$fJd7Vs9C1lebZgTLtGiCReUoo.d3D7VoLs55FswCe.ZjY/nbMX4zm', 'user', NULL, '2023-06-22 23:09:49', 1, '2023-06-23 15:43:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01/06/2023', NULL, '39.jpg', NULL, NULL, NULL),
(40, NULL, 'Nomer 3', 'paulo3@gmail.com', '1992121', NULL, 'wqqwqw', NULL, NULL, '1, 2, 3', 'cab', 0, NULL, 1, NULL, '$2y$10$G5t/qflF3kQNOeGYVIMh2eD/KtzuGgLMi9Z26Csj7.S0qm5rVWOSm', 'user', NULL, '2023-06-22 23:12:36', 1, '2023-06-22 23:12:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01/06/2023', NULL, NULL, NULL, NULL, NULL),
(41, NULL, 'Paulo 4', 'paulo4@gmail.com', '1989898900', NULL, 'asasas', NULL, NULL, '1, 2', 'cab', 0, NULL, 1, NULL, '$2y$10$vw5js.bphrh59qsSQsJ9PetUeXRtzO5ZADvR5eo2IwRNzJZUqPgMW', 'user', NULL, '2023-06-22 23:14:39', 1, '2023-06-22 23:14:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01/06/2023', NULL, NULL, NULL, NULL, NULL),
(42, NULL, 'Paulo 5', 'paulo5@gmail.com', '12121212', NULL, 'hshdsjhsakd', NULL, NULL, '1, 2, 3', 'cab', 0, NULL, 1, NULL, '$2y$10$LyLe88byq6JlHgBZxVfvh.Vt7.pNImk1.YvhkepMfL8lWhg4Nbg1O', 'user', NULL, '2023-06-22 23:17:32', 1, '2023-06-22 23:17:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01/06/2023', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `valoreseservicos`
--

CREATE TABLE `valoreseservicos` (
  `id` int NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `valor` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `created_by` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `deleted_at` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alias` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `agendamentos`
--
ALTER TABLE `agendamentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `ajustes`
--
ALTER TABLE `ajustes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `Android`
--
ALTER TABLE `Android`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `convenios`
--
ALTER TABLE `convenios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `coresdosistemas`
--
ALTER TABLE `coresdosistemas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `dadoslinks`
--
ALTER TABLE `dadoslinks`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `daysons`
--
ALTER TABLE `daysons`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `disponible_days`
--
ALTER TABLE `disponible_days`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `especialidades_user_id_foreign` (`user_id`);

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `financeiros`
--
ALTER TABLE `financeiros`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `folder`
--
ALTER TABLE `folder`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `form_field`
--
ALTER TABLE `form_field`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `listadeespecialidades`
--
ALTER TABLE `listadeespecialidades`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `logotipoeimagems`
--
ALTER TABLE `logotipoeimagems`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`idMeal`);

--
-- Índices de tabela `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Índices de tabela `medicos`
--
ALTER TABLE `medicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `menulist`
--
ALTER TABLE `menulist`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `menu_role`
--
ALTER TABLE `menu_role`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Índices de tabela `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Índices de tabela `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Índices de tabela `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Índices de tabela `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Índices de tabela `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Índices de tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices de tabela `periodos`
--
ALTER TABLE `periodos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices de tabela `plantonistas`
--
ALTER TABLE `plantonistas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `product_items`
--
ALTER TABLE `product_items`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Índices de tabela `role_hierarchy`
--
ALTER TABLE `role_hierarchy`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `semanais`
--
ALTER TABLE `semanais`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscriptions_stripe_id_unique` (`stripe_id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Índices de tabela `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_items_subscription_id_stripe_price_unique` (`subscription_id`,`stripe_price`),
  ADD UNIQUE KEY `subscription_items_stripe_id_unique` (`stripe_id`);

--
-- Índices de tabela `times`
--
ALTER TABLE `times`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

--
-- Índices de tabela `valoreseservicos`
--
ALTER TABLE `valoreseservicos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `administradores`
--
ALTER TABLE `administradores`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `agendamentos`
--
ALTER TABLE `agendamentos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `ajustes`
--
ALTER TABLE `ajustes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `Android`
--
ALTER TABLE `Android`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `convenios`
--
ALTER TABLE `convenios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `coresdosistemas`
--
ALTER TABLE `coresdosistemas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `dadoslinks`
--
ALTER TABLE `dadoslinks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `daysons`
--
ALTER TABLE `daysons`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `disponible_days`
--
ALTER TABLE `disponible_days`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `email_template`
--
ALTER TABLE `email_template`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `features`
--
ALTER TABLE `features`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `financeiros`
--
ALTER TABLE `financeiros`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `folder`
--
ALTER TABLE `folder`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `form`
--
ALTER TABLE `form`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `form_field`
--
ALTER TABLE `form_field`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `listadeespecialidades`
--
ALTER TABLE `listadeespecialidades`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `logotipoeimagems`
--
ALTER TABLE `logotipoeimagems`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `meals`
--
ALTER TABLE `meals`
  MODIFY `idMeal` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=575;

--
-- AUTO_INCREMENT de tabela `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `medicos`
--
ALTER TABLE `medicos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `menulist`
--
ALTER TABLE `menulist`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de tabela `menu_role`
--
ALTER TABLE `menu_role`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de tabela `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `periodos`
--
ALTER TABLE `periodos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `plantonistas`
--
ALTER TABLE `plantonistas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `product_items`
--
ALTER TABLE `product_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de tabela `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `role_hierarchy`
--
ALTER TABLE `role_hierarchy`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `semanais`
--
ALTER TABLE `semanais`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `status`
--
ALTER TABLE `status`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `times`
--
ALTER TABLE `times`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de tabela `valoreseservicos`
--
ALTER TABLE `valoreseservicos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
