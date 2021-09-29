import { Test, TestingModule } from '@nestjs/testing';
import { GamesOnGenreService } from './games-on-genre.service';

describe('GamesOnGenreService', () => {
  let service: GamesOnGenreService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [GamesOnGenreService],
    }).compile();

    service = module.get<GamesOnGenreService>(GamesOnGenreService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
