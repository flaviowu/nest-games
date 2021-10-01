import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { GamesOnGenreService } from './games-on-genre.service';
import { CreateGamesOnGenreDto } from './dto/create-games-on-genre.dto';
import { UpdateGamesOnGenreDto } from './dto/update-games-on-genre.dto';

@Controller('games-on-genre')
export class GamesOnGenreController {
  constructor(private readonly gamesOnGenreService: GamesOnGenreService) {}

  @Post()
  create(@Body() createGamesOnGenreDto: CreateGamesOnGenreDto) {
    return this.gamesOnGenreService.create(createGamesOnGenreDto);
  }

  @Get()
  findAll() {
    return this.gamesOnGenreService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.gamesOnGenreService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateGamesOnGenreDto: UpdateGamesOnGenreDto) {
    return this.gamesOnGenreService.update(+id, updateGamesOnGenreDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.gamesOnGenreService.remove(+id);
  }
}
