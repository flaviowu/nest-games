import { Prisma } from '@prisma/client';
export declare class User implements Prisma.UserUncheckedCreateInput {
    id?: number;
    createAt?: Date;
    name: string;
    surname: string;
    email: string;
    password: string;
    profiles?: Prisma.ProfileUncheckedCreateNestedManyWithoutUserInput;
    favGames?: Prisma.GameUncheckedCreateNestedManyWithoutUserInput;
}
