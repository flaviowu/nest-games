import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';

import { PrismaModule } from './prisma/prisma.module';
import { GamesOnGenreModule } from './games-on-genre/games-on-genre.module';
import { GamesOnAccountModule } from './games-on-account/games-on-account.module';

import { GenreModule } from './genre/genre.module';

import { GameModule } from './game/game.module';

import { AccountModule } from './account/account.module';
import { PrismaService } from './prisma/prisma.service';
import { ProfileModule } from './profile/profile.module';

@Module({
  imports: [
    ProfileModule,
    GameModule,
    GenreModule,
    AccountModule,
    GamesOnAccountModule,
    GamesOnGenreModule,
    PrismaModule,
  ],
  controllers: [AppController],
  providers: [AppService, PrismaService],
})
export class AppModule {}
