import { Injectable } from '@nestjs/common';
import { CreateGamesOnGenreDto } from './dto/create-games-on-genre.dto';
import { UpdateGamesOnGenreDto } from './dto/update-games-on-genre.dto';

@Injectable()
export class GamesOnGenreService {
  create(createGamesOnGenreDto: CreateGamesOnGenreDto) {
    return 'This action adds a new gamesOnGenre';
  }

  findAll() {
    return `This action returns all gamesOnGenre`;
  }

  findOne(id: number) {
    return `This action returns a #${id} gamesOnGenre`;
  }

  update(id: number, updateGamesOnGenreDto: UpdateGamesOnGenreDto) {
    return `This action updates a #${id} gamesOnGenre`;
  }

  remove(id: number) {
    return `This action removes a #${id} gamesOnGenre`;
  }
}
