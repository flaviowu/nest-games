import { Prisma } from '@prisma/client';

export class Account implements Prisma.AccountUncheckedCreateInput {
  id?: number;
  createdAt?: Date | string;
  isAdmin?: boolean;
  name: string;
  surname: string;
  email: string;
  password: string;
  cpf: string;
  profiles?: Prisma.ProfileUncheckedCreateNestedManyWithoutAccountInput;
  gamesOwned?: Prisma.GamesOnAccountUncheckedCreateNestedManyWithoutAccountInput;
}
