import { Prisma } from '@prisma/client';

export class GamesOnAccount
  implements Prisma.GamesOnAccountUncheckedCreateInput
{
  accountId: number;
  gameId: number;
  assignedAt?: Date | string;
}
