/*
  Warnings:

  - You are about to drop the column `gameId` on the `genre` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[cpf]` on the table `Account` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `cpf` to the `Account` table without a default value. This is not possible if the table is not empty.
  - Added the required column `genreId` to the `Game` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `game` DROP FOREIGN KEY `Game_profileId_fkey`;

-- DropForeignKey
ALTER TABLE `genre` DROP FOREIGN KEY `Genre_gameId_fkey`;

-- DropIndex
DROP INDEX `Account_password_key` ON `account`;

-- AlterTable
ALTER TABLE `account` ADD COLUMN `cpf` CHAR(11) NOT NULL,
    MODIFY `password` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `game` ADD COLUMN `genreId` INTEGER NOT NULL;

-- AlterTable
ALTER TABLE `genre` DROP COLUMN `gameId`;

-- CreateTable
CREATE TABLE `_GameToGenre` (
    `A` INTEGER NOT NULL,
    `B` INTEGER NOT NULL,

    UNIQUE INDEX `_GameToGenre_AB_unique`(`A`, `B`),
    INDEX `_GameToGenre_B_index`(`B`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateIndex
CREATE UNIQUE INDEX `Account_cpf_key` ON `Account`(`cpf`);

-- AddForeignKey
ALTER TABLE `Game` ADD CONSTRAINT `Game_profileId_fkey` FOREIGN KEY (`profileId`) REFERENCES `Profile`(`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Game` ADD CONSTRAINT `Game_genreId_fkey` FOREIGN KEY (`genreId`) REFERENCES `Genre`(`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_GameToGenre` ADD FOREIGN KEY (`A`) REFERENCES `Game`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_GameToGenre` ADD FOREIGN KEY (`B`) REFERENCES `Genre`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
