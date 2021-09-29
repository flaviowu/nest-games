import { Prisma } from '@prisma/client';

export class Game implements Prisma.GameUncheckedCreateInput {
  id?: number;
  createdAt?: Date | string;
  title: string;
  cover: string;
  year: string;
  description: string;
  trailer: string;
  gameplay: string;
  rating?: number | null;
  inGenre?: Prisma.GamesOnGenreUncheckedCreateNestedManyWithoutGameInput;
  ownedByAcc?: Prisma.GamesOnAccountUncheckedCreateNestedManyWithoutGameInput;
}
