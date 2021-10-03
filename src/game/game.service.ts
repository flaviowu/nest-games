import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { CreateGameDto } from './dto/create-game.dto';
import { UpdateGameDto } from './dto/update-game.dto';

@Injectable()
export class GameService {
  constructor(private readonly prisma: PrismaService) {}

  create(data: CreateGameDto) {
    // return 'This action adds a new game';
    return this.prisma.game.create({
      data,
    });
  }

  findAll() {
    // return `This action returns all game`;
    return this.prisma.game.findMany();
  }

  findOne(id: number) {
    // return `This action returns a #${id} game`;
    return this.prisma.game.findUnique({
      where: { id },
    });
  }

  update(id: number, data: UpdateGameDto) {
    // return `This action updates a #${id} game`;
    return this.prisma.game.update({
      where: { id },
      data,
    })
  }

  remove(id: number) {
    // return `This action removes a #${id} game`;
    return this.prisma.game.delete({
      where: { id },
    });
  }
}
