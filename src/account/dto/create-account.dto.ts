import { Account } from '../entities/account.entity';
import { Prisma } from '@prisma/client';
import { IsEmail, IsNotEmpty, IsOptional, IsString } from 'class-validator';

export class CreateAccountDto extends Account {
  @IsString()
  @IsNotEmpty()
  name: string;

  @IsString()
  @IsNotEmpty()
  surname: string;

  @IsEmail()
  email: string;

  @IsString()
  @IsNotEmpty()
  password: string;

  @IsString()
  cpf: string;

  @IsOptional()
  profiles?: Prisma.ProfileUncheckedCreateNestedManyWithoutAccountInput;

  @IsOptional()
  gamesOwned?: Prisma.GamesOnAccountUncheckedCreateNestedManyWithoutAccountInput;
}
