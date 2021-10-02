import { Prisma } from '@prisma/client';

export class GamesOnGenre implements Prisma.GamesOnGenreUncheckedCreateInput {
  gameId: number;
  genreId: number;
}
