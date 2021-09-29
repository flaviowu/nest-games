import { Test, TestingModule } from '@nestjs/testing';
import { GamesOnGenreController } from './games-on-genre.controller';
import { GamesOnGenreService } from './games-on-genre.service';

describe('GamesOnGenreController', () => {
  let controller: GamesOnGenreController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [GamesOnGenreController],
      providers: [GamesOnGenreService],
    }).compile();

    controller = module.get<GamesOnGenreController>(GamesOnGenreController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
