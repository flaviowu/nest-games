import { Game } from '../entities/game.entity';
import { Prisma } from '@prisma/client';
import {
  IsNumber,
  IsString,
  IsNotEmpty,
  IsOptional,
  IsUrl,
} from 'class-validator';

export class CreateGameDto extends Game {
  @IsString()
  @IsNotEmpty()
  title: string;

  @IsString()
  @IsNotEmpty()
  cover: string;

  @IsString()
  @IsNotEmpty()
  year: string;

  @IsString()
  @IsNotEmpty()
  description: string;

  @IsString()
  @IsNotEmpty()
  @IsUrl()
  trailer: string;

  @IsString()
  @IsNotEmpty()
  @IsUrl()
  gameplay: string;

  @IsNumber()
  rating?: number;

  @IsOptional()
  inGenre?: Prisma.GamesOnGenreUncheckedCreateNestedManyWithoutGameInput;

  @IsOptional()
  ownedByAcc?: Prisma.GamesOnAccountUncheckedCreateNestedManyWithoutGameInput;
}
