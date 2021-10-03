-- --------------------------------------------------------
-- Servidor:                     localhost
-- Versão do servidor:           8.0.25 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para nest_games
CREATE DATABASE IF NOT EXISTS `nest_games` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `nest_games`;

-- Copiando estrutura para tabela nest_games.account
CREATE TABLE IF NOT EXISTS `account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpf` char(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Account_email_key` (`email`),
  UNIQUE KEY `Account_cpf_key` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela nest_games.account: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` (`id`, `createdAt`, `name`, `surname`, `email`, `password`, `cpf`, `isAdmin`) VALUES
	(1, '2021-10-02 17:28:53.048', 'Goku', 'Son', 'songoku@dbz.com', 'dragonball', '12345678911', 0),
	(2, '2021-10-02 17:29:56.109', 'Anakin', 'Skywalker', 'vader@galaticempire.com', 'iamyourfather', '11987654321', 0),
	(3, '2021-10-02 17:32:01.884', 'Admin', 'System', 'admin@system.com', 'admin', '00000000000', 1);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;

-- Copiando estrutura para tabela nest_games.game
CREATE TABLE IF NOT EXISTS `game` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trailer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gameplay` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela nest_games.game: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
INSERT INTO `game` (`id`, `title`, `cover`, `year`, `description`, `trailer`, `gameplay`, `rating`, `createdAt`) VALUES
	(1, 'Horizon: Zero Dawn', 'https://cdn.thegamesdb.net/images/original/boxart/front/29523-1.jpg', '2017', 'Viva a experiência de Aloy em sua busca lendária para desvendar os mistérios de uma Terra do futuro controlada por máquinas.', 'https://youtu.be/u4-FCsiF5x4', 'https://youtu.be/T5Xx3MdqdgM', 5, '2021-10-02 21:15:48.873'),
	(2, 'Days Gone', 'https://cdn.thegamesdb.net/images/original/boxart/front/38442-1.jpg', '2019', 'Viaje e lute pelos Estados Unidos num cenário pós-pandêmico e mortífero. Jogue com Deacon St. John, um andarilho e caçador de recompensas que segue um caminho tortuoso.', 'https://www.youtube.com/watch?v=FKtaOY9lMvM', 'https://www.youtube.com/watch?v=bGej8K1r8KI', 3, '2021-10-02 21:19:04.822'),
	(3, 'Marvel\'s Spider-Man', 'https://cdn.thegamesdb.net/images/original/boxart/front/68417-1.jpg', '2019', 'Esse não é o Spider-Man que você conhece ou já viu antes. É um Peter Parker experiente, que domina melhor a arte de combater os grandes criminosos na cidade de Nova York.', 'https://www.youtube.com/watch?v=q4GdJVvdxss', 'https://www.youtube.com/watch?v=K4zm30yeHHE&t=1s', 5, '2021-10-02 21:24:39.451'),
	(4, 'The Last of Us', 'https://cdn.thegamesdb.net/images/original/boxart/front/21182-1.jpg', '2014', 'Joel e Ellie, devem unir forças para saírem vivos da sua jornada pelos Estados Unidos dizimado por uma praga.', 'https://www.youtube.com/watch?v=qPNiIeKMHyg', 'https://www.youtube.com/watch?v=GApCMW1F7a0', 5, '2021-10-02 21:35:16.836'),
	(5, 'Mortal Kombat 11', 'https://cdn.thegamesdb.net/images/original/boxart/front/62524-1.jpg', '2019', 'Mortal Kombat está de volta, melhor do que nunca, em uma evolução da icônica franquia.', 'https://www.youtube.com/watch?v=D2wkVrkPeu4', 'https://youtu.be/v8scLToiiks', 4, '2021-10-02 21:39:59.080'),
	(6, 'Cuphead', 'https://cdn.thegamesdb.net/images/original/boxart/front/75238-1.jpg', '2020', 'Cuphead é um jogo de ação e tiros clássico, com enorme ênfase nas batalhas de chefes.', 'https://www.youtube.com/watch?v=NN-9SQXoi50', 'https://www.youtube.com/watch?v=7sQh7CfZI14', 5, '2021-10-02 21:47:37.813'),
	(7, 'God of War', 'https://cdn.thegamesdb.net/images/original/boxart/front/52805-1.jpg', '2018', 'Vivendo como um homem, fora da sombra dos deuses, Kratos deve se adaptar a terras desconhecidas, ameaças inesperadas e a uma segunda oportunidade de ser pai.', 'https://www.youtube.com/watch?v=FyIwEFXOcaE', 'https://www.youtube.com/watch?v=CJ_GCPaKywg', 5, '2021-10-02 21:52:27.221'),
	(8, 'Call of Duty: Modern Warfare', 'https://cdn.thegamesdb.net/images/original/boxart/front/65402-1.jpg', '2019', 'Realize uma campanha visceral ou forme uma equipe em uma derradeira experiência online com diversos desafios.', 'https://www.youtube.com/watch?v=X8Do_zXNc_E&t=1s', 'https://www.youtube.com/watch?v=ZVfeahf5gmY&t=1s', 3, '2021-10-02 21:55:55.508'),
	(9, 'Unravel TWO', 'https://cdn.thegamesdb.net/images/original/boxart/front/65159-1.jpg', '2018', 'Comece sua aventura em uma terra fria e imponente e, então, veja uma nova vida se desenvolver em seu entorno à medida que busca aventuras.', 'https://www.youtube.com/watch?v=ga_0MncEBvQ', 'https://www.youtube.com/watch?v=6We59QfrTk4', 4, '2021-10-02 22:00:14.436'),
	(10, 'Need for Speed: Heat', 'https://cdn.thegamesdb.net/images/original/boxart/front/67038-1.jpg', '2019', 'Trabalhe de dia e arrisque tudo à noite no Need for Speed™ Heat, um jogo de corrida emocionante.', 'https://www.youtube.com/watch?v=9ewiJJe_nYI', 'https://www.youtube.com/watch?v=04KPiGmC7Lc', 2, '2021-10-02 22:05:35.366'),
	(11, 'Dragon Quest XI: Echoes of an Elusive Age', 'https://cdn.thegamesdb.net/images/original/boxart/front/60765-1.jpg', '2018', 'Embarca numa aventura épica na pele do Luminary: o escolhido num mundo que jurou caçá-lo.', 'https://www.youtube.com/watch?v=bg0oBJ9cXYM', 'https://www.youtube.com/watch?v=-bLrBCtSwqg', 4, '2021-10-02 22:09:12.855'),
	(12, 'The Last Guardian', 'https://cdn.thegamesdb.net/images/original/boxart/front/34990-1.jpg', '2016', 'Em uma nação mística e incomum, um garoto descobre uma misteriosa criatura, com quem ele forma um vínculo profundo e indestrutível.', 'https://www.youtube.com/watch?v=zXLZvsSmBIs', 'https://www.youtube.com/watch?v=rQ4eNHMsw9o', 5, '2021-10-02 22:16:36.398'),
	(13, 'Shadow of the Colossus', 'https://cdn.thegamesdb.net/images/original/boxart/front/52796-1.jpg', '2017', 'SHADOW OF THE COLOSSUS é uma jornada espetacular por terras antigas em busca de feras gigantes.', 'https://www.youtube.com/watch?v=pdZQ98mWeto', 'https://www.youtube.com/watch?v=Otu9-fGSVmU', 5, '2021-10-02 22:19:51.069');
/*!40000 ALTER TABLE `game` ENABLE KEYS */;

-- Copiando estrutura para tabela nest_games.gamesonaccount
CREATE TABLE IF NOT EXISTS `gamesonaccount` (
  `accountId` int NOT NULL,
  `gameId` int NOT NULL,
  `assignedAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`accountId`,`gameId`),
  KEY `GamesOnAccount_gameId_fkey` (`gameId`),
  CONSTRAINT `GamesOnAccount_accountId_fkey` FOREIGN KEY (`accountId`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `GamesOnAccount_gameId_fkey` FOREIGN KEY (`gameId`) REFERENCES `game` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela nest_games.gamesonaccount: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `gamesonaccount` DISABLE KEYS */;
/*!40000 ALTER TABLE `gamesonaccount` ENABLE KEYS */;

-- Copiando estrutura para tabela nest_games.gamesongenre
CREATE TABLE IF NOT EXISTS `gamesongenre` (
  `gameId` int NOT NULL,
  `genreId` int NOT NULL,
  PRIMARY KEY (`gameId`,`genreId`),
  KEY `GamesOnGenre_genreId_fkey` (`genreId`),
  CONSTRAINT `GamesOnGenre_gameId_fkey` FOREIGN KEY (`gameId`) REFERENCES `game` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `GamesOnGenre_genreId_fkey` FOREIGN KEY (`genreId`) REFERENCES `genre` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela nest_games.gamesongenre: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `gamesongenre` DISABLE KEYS */;
INSERT INTO `gamesongenre` (`gameId`, `genreId`) VALUES
	(11, 1),
	(7, 2),
	(11, 2),
	(12, 2),
	(13, 2),
	(10, 3),
	(1, 4),
	(2, 4),
	(3, 4),
	(4, 4),
	(5, 4),
	(7, 4),
	(8, 4),
	(10, 4),
	(13, 4),
	(1, 5),
	(2, 5),
	(3, 5),
	(4, 5),
	(6, 5),
	(7, 5),
	(9, 5),
	(11, 5),
	(12, 5),
	(13, 5),
	(8, 6),
	(2, 7),
	(4, 7),
	(5, 8),
	(6, 9),
	(9, 9),
	(12, 10),
	(13, 10);
/*!40000 ALTER TABLE `gamesongenre` ENABLE KEYS */;

-- Copiando estrutura para tabela nest_games.genre
CREATE TABLE IF NOT EXISTS `genre` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela nest_games.genre: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` (`id`, `name`, `createdAt`) VALUES
	(1, 'RPG', '2021-10-02 22:21:05.185'),
	(2, 'Fantasia', '2021-10-02 22:21:05.185'),
	(3, 'Corrida', '2021-10-02 22:21:05.185'),
	(4, 'Ação', '2021-10-02 22:21:05.185'),
	(5, 'Aventura', '2021-10-02 22:21:05.185'),
	(6, 'FPS', '2021-10-02 22:22:19.452'),
	(7, 'Terror', '2021-10-02 22:23:49.109'),
	(8, 'Luta', '2021-10-02 22:27:06.315'),
	(9, 'Plataforma', '2021-10-02 22:28:12.452'),
	(10, 'Quebra-Cabeça', '2021-10-02 22:34:31.769');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;

-- Copiando estrutura para tabela nest_games.profile
CREATE TABLE IF NOT EXISTS `profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accountId` int NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  KEY `Profile_accountId_fkey` (`accountId`),
  CONSTRAINT `Profile_accountId_fkey` FOREIGN KEY (`accountId`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela nest_games.profile: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;

-- Copiando estrutura para tabela nest_games._prisma_migrations
CREATE TABLE IF NOT EXISTS `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela nest_games._prisma_migrations: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `_prisma_migrations` DISABLE KEYS */;
INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
	('520c8007-e87f-4f7f-8298-dbfc87cc7e5a', 'c99a702b1a4bf85344e812e552668cc2da40023960414f084e64a2daeffa6c14', '2021-10-02 17:26:10.270', '20210927001706_nest_games', NULL, NULL, '2021-10-02 17:26:09.551', 1),
	('597b1c27-37db-4675-a6bc-53948483cd2f', '61ef58857333dc6586be8be338c5e60bc34a69d8ba72c4e8bf54b9864cee9717', '2021-10-02 17:26:11.798', '20210929004847_change_is_admin_default', NULL, NULL, '2021-10-02 17:26:11.774', 1),
	('6bc7e215-c9e1-4ff4-878a-92df1b396094', '34910bf99c2a3ff716d35adc08c493034002c6b07b945a5b9a1ea4c582585036', '2021-10-02 17:26:09.547', '20210926231809_npx_prisma_studio', NULL, NULL, '2021-10-02 17:26:08.942', 1),
	('af7053c6-5398-48ff-b5f4-80d5042cf640', 'efce8935e5113102477ba242f84e67ade0317cb32575bc2c514e4fafe64de0f8', '2021-10-02 17:26:08.939', '20210925010729_nest_games', NULL, NULL, '2021-10-02 17:26:08.572', 1),
	('eb20fe1d-6044-4a5c-a03a-b9d77e347f63', '96cfa268a224568a03f3e402efdc32b5b6a5d48218ffce0632df7ae652748a3b', '2021-10-02 17:26:11.771', '20210929004710_new', NULL, NULL, '2021-10-02 17:26:11.192', 1),
	('f77e9414-1e69-48f7-adcd-2abf4e49e2f3', 'd732b3f946c757932a2898b36679fd18c86ad7a372515d8412c38688cee9d7dd', '2021-10-02 17:26:11.189', '20210927005852_nest_games', NULL, NULL, '2021-10-02 17:26:10.279', 1);
/*!40000 ALTER TABLE `_prisma_migrations` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
