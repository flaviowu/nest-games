import { Module } from '@nestjs/common';
import { GamesOnGenreService } from './games-on-genre.service';
import { GamesOnGenreController } from './games-on-genre.controller';

@Module({
  controllers: [GamesOnGenreController],
  providers: [GamesOnGenreService]
})
export class GamesOnGenreModule {}
