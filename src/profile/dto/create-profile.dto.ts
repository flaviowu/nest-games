import { Profile } from '../entities/profile.entity';
import { IsNotEmpty, IsNumber, IsString } from 'class-validator';

export class CreateProfileDto extends Profile {
  @IsNotEmpty()
  @IsString()
  title: string;

  @IsNotEmpty()
  @IsString()
  image: string;

  @IsNotEmpty()
  @IsNumber()
  accountId: number;
}
