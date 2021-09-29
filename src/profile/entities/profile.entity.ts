import { Prisma } from '@prisma/client';

export class Profile implements Prisma.ProfileUncheckedCreateInput {
  id?: number;
  createdAt?: Date | string;
  title: string;
  image: string;
  accountId: number;
}
