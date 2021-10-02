import { Module } from '@nestjs/common';
import { GamesOnGenreService } from './games-on-genre.service';
import { GamesOnGenreController } from './games-on-genre.controller';
import { PrismaService } from 'src/prisma/prisma.service';

@Module({
  controllers: [GamesOnGenreController],
  providers: [GamesOnGenreService, PrismaService],
})
export class GamesOnGenreModule {}
