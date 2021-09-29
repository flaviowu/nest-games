import { Test, TestingModule } from '@nestjs/testing';
import { GamesOnAccountController } from './games-on-account.controller';
import { GamesOnAccountService } from './games-on-account.service';

describe('GamesOnAccountController', () => {
  let controller: GamesOnAccountController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [GamesOnAccountController],
      providers: [GamesOnAccountService],
    }).compile();

    controller = module.get<GamesOnAccountController>(GamesOnAccountController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
