import { PartialType } from '@nestjs/mapped-types';
import { CreateGamesOnAccountDto } from './create-games-on-account.dto';

export class UpdateGamesOnAccountDto extends PartialType(CreateGamesOnAccountDto) {}
