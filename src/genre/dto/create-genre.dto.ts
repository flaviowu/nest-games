import { Genre } from '../entities/genre.entity';
import { Prisma } from '@prisma/client';
import { IsNotEmpty, IsOptional, IsString } from 'class-validator';

export class CreateGenreDto extends Genre {
  @IsString()
  @IsNotEmpty()
  name: string;

  @IsOptional()
  inGame?: Prisma.GamesOnGenreUncheckedCreateNestedManyWithoutGenreInput;
}
