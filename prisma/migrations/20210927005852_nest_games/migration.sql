/*
  Warnings:

  - You are about to drop the column `genreId` on the `game` table. All the data in the column will be lost.
  - You are about to drop the column `profileId` on the `game` table. All the data in the column will be lost.
  - You are about to drop the `_gametogenre` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `_gametogenre` DROP FOREIGN KEY `_gametogenre_ibfk_1`;

-- DropForeignKey
ALTER TABLE `_gametogenre` DROP FOREIGN KEY `_gametogenre_ibfk_2`;

-- DropForeignKey
ALTER TABLE `game` DROP FOREIGN KEY `Game_genreId_fkey`;

-- DropForeignKey
ALTER TABLE `game` DROP FOREIGN KEY `Game_profileId_fkey`;

-- AlterTable
ALTER TABLE `game` DROP COLUMN `genreId`,
    DROP COLUMN `profileId`;

-- DropTable
DROP TABLE `_gametogenre`;

-- CreateTable
CREATE TABLE `GamesOnAccount` (
    `accountId` INTEGER NOT NULL,
    `gameId` INTEGER NOT NULL,
    `assignedAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`accountId`, `gameId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `GamesOnGenre` (
    `gameId` INTEGER NOT NULL,
    `genreId` INTEGER NOT NULL,

    PRIMARY KEY (`gameId`, `genreId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `GamesOnAccount` ADD CONSTRAINT `GamesOnAccount_accountId_fkey` FOREIGN KEY (`accountId`) REFERENCES `Account`(`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GamesOnAccount` ADD CONSTRAINT `GamesOnAccount_gameId_fkey` FOREIGN KEY (`gameId`) REFERENCES `Game`(`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GamesOnGenre` ADD CONSTRAINT `GamesOnGenre_gameId_fkey` FOREIGN KEY (`gameId`) REFERENCES `Game`(`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GamesOnGenre` ADD CONSTRAINT `GamesOnGenre_genreId_fkey` FOREIGN KEY (`genreId`) REFERENCES `Genre`(`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
