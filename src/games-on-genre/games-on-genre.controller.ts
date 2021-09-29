import { Controller } from '@nestjs/common';
import { GamesOnGenreService } from './games-on-genre.service';

@Controller('games-on-genre')
export class GamesOnGenreController {
  constructor(private readonly gamesOnGenreService: GamesOnGenreService) {}
}
