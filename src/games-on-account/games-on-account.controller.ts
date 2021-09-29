import { Controller } from '@nestjs/common';
import { GamesOnAccountService } from './games-on-account.service';

@Controller('games-on-account')
export class GamesOnAccountController {
  constructor(private readonly gamesOnAccountService: GamesOnAccountService) {}
}
