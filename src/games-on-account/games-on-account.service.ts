import { Injectable } from '@nestjs/common';
import { CreateGamesOnAccountDto } from './dto/create-games-on-account.dto';
import { UpdateGamesOnAccountDto } from './dto/update-games-on-account.dto';

@Injectable()
export class GamesOnAccountService {
  create(createGamesOnAccountDto: CreateGamesOnAccountDto) {
    return 'This action adds a new gamesOnAccount';
  }

  findAll() {
    return `This action returns all gamesOnAccount`;
  }

  findOne(id: number) {
    return `This action returns a #${id} gamesOnAccount`;
  }

  update(id: number, updateGamesOnAccountDto: UpdateGamesOnAccountDto) {
    return `This action updates a #${id} gamesOnAccount`;
  }

  remove(id: number) {
    return `This action removes a #${id} gamesOnAccount`;
  }
}
