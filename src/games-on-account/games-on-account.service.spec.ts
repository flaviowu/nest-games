import { Test, TestingModule } from '@nestjs/testing';
import { GamesOnAccountService } from './games-on-account.service';

describe('GamesOnAccountService', () => {
  let service: GamesOnAccountService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [GamesOnAccountService],
    }).compile();

    service = module.get<GamesOnAccountService>(GamesOnAccountService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
