import { Module } from '@nestjs/common';
import { GamesOnAccountService } from './games-on-account.service';
import { GamesOnAccountController } from './games-on-account.controller';

@Module({
  controllers: [GamesOnAccountController],
  providers: [GamesOnAccountService]
})
export class GamesOnAccountModule {}
