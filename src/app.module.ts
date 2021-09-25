import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { UserModule } from './user/user.module';
import { ProfileModule } from './profile/profile.module';
import { GameModule } from './game/game.module';
import { GenreModule } from './genre/genre.module';

@Module({
  imports: [UserModule, ProfileModule, GameModule, GenreModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
