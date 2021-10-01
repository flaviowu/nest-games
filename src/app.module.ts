import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { UserModule } from './user/user.module';
import { ProfileModule } from './profile/profile.module';
import { GamesOnGenreModule } from './games-on-genre/games-on-genre.module';
import { GamesOnAccountModule } from './games-on-account/games-on-account.module';
import { GamesOnAccountResolver } from './games-on-account/games-on-account.resolver';
import { GamesOnAccountResolver } from './games-on-account/games-on-account.resolver';
import { GamesOnAccountService } from './games-on-account/games-on-account.service';
import { GamesOnGenreModule } from './games-on-genre/games-on-genre.module';
import { GamesOnAccountModule } from './games-on-account/games-on-account.module';
import { GenreModule } from './genre/genre.module';
import { GameModule } from './game/game.module';
import { GameModule } from './game/game.module';
import { GenreModule } from './genre/genre.module';
import { AccountModule } from './account/account.module';
import { PrismaService } from './prisma/prisma.service';
import { ProfileModule } from './profile/profile.module';

@Module({
  imports: [UserModule, ProfileModule, GameModule, GenreModule, AccountModule, GamesOnAccountModule, GamesOnGenreModule],
  controllers: [AppController],
  providers: [AppService, PrismaService, GamesOnAccountService, GamesOnAccountResolver],
})
export class AppModule {}
