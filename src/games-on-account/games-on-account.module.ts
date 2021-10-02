import { Module } from '@nestjs/common';
import { GamesOnAccountService } from './games-on-account.service';
import { GamesOnAccountController } from './games-on-account.controller';
import { PrismaService } from 'src/prisma/prisma.service';

@Module({
  controllers: [GamesOnAccountController],
  providers: [GamesOnAccountService, PrismaService],
})
export class GamesOnAccountModule {}
