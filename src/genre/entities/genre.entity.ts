import { Prisma } from '@prisma/client';

export class Genre implements Prisma.GenreUncheckedCreateInput {
  id?: number;
  createdAt?: Date | string;
  name: string;
  inGame?: Prisma.GamesOnGenreUncheckedCreateNestedManyWithoutGenreInput;
}
