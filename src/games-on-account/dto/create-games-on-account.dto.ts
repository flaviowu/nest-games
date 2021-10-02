import { IsNotEmpty, IsNumber } from 'class-validator';
import { GamesOnAccount } from '../entities/games-on-account.entity';

export class CreateGamesOnAccountDto extends GamesOnAccount {
  @IsNumber()
  @IsNotEmpty()
  accountId: number;

  @IsNumber()
  @IsNotEmpty()
  gameId: number;
}
