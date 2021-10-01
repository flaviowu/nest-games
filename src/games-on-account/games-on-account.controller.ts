import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { GamesOnAccountService } from './games-on-account.service';
import { CreateGamesOnAccountDto } from './dto/create-games-on-account.dto';
import { UpdateGamesOnAccountDto } from './dto/update-games-on-account.dto';

@Controller('games-on-account')
export class GamesOnAccountController {
  constructor(private readonly gamesOnAccountService: GamesOnAccountService) {}

  @Post()
  create(@Body() createGamesOnAccountDto: CreateGamesOnAccountDto) {
    return this.gamesOnAccountService.create(createGamesOnAccountDto);
  }

  @Get()
  findAll() {
    return this.gamesOnAccountService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.gamesOnAccountService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateGamesOnAccountDto: UpdateGamesOnAccountDto) {
    return this.gamesOnAccountService.update(+id, updateGamesOnAccountDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.gamesOnAccountService.remove(+id);
  }
}
