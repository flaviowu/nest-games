/*
  Warnings:

  - You are about to drop the column `isAdmin` on the `profile` table. All the data in the column will be lost.
  - You are about to drop the `sysadmin` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `gamesonaccount` DROP FOREIGN KEY `GamesOnAccount_accountId_fkey`;

-- DropForeignKey
ALTER TABLE `gamesonaccount` DROP FOREIGN KEY `GamesOnAccount_gameId_fkey`;

-- DropForeignKey
ALTER TABLE `gamesongenre` DROP FOREIGN KEY `GamesOnGenre_gameId_fkey`;

-- DropForeignKey
ALTER TABLE `gamesongenre` DROP FOREIGN KEY `GamesOnGenre_genreId_fkey`;

-- DropIndex
DROP INDEX `Account_name_key` ON `account`;

-- AlterTable
ALTER TABLE `account` ADD COLUMN `isAdmin` BOOLEAN NOT NULL DEFAULT true;

-- AlterTable
ALTER TABLE `profile` DROP COLUMN `isAdmin`;

-- DropTable
DROP TABLE `sysadmin`;

-- AddForeignKey
ALTER TABLE `GamesOnAccount` ADD CONSTRAINT `GamesOnAccount_accountId_fkey` FOREIGN KEY (`accountId`) REFERENCES `Account`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GamesOnAccount` ADD CONSTRAINT `GamesOnAccount_gameId_fkey` FOREIGN KEY (`gameId`) REFERENCES `Game`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GamesOnGenre` ADD CONSTRAINT `GamesOnGenre_gameId_fkey` FOREIGN KEY (`gameId`) REFERENCES `Game`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GamesOnGenre` ADD CONSTRAINT `GamesOnGenre_genreId_fkey` FOREIGN KEY (`genreId`) REFERENCES `Genre`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
