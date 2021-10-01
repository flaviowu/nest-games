import { PartialType } from '@nestjs/mapped-types';
import { CreateGamesOnGenreDto } from './create-games-on-genre.dto';

export class UpdateGamesOnGenreDto extends PartialType(CreateGamesOnGenreDto) {}
