import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { runInThisContext } from 'vm';
import { CreateGenreDto } from './dto/create-genre.dto';
import { UpdateGenreDto } from './dto/update-genre.dto';

@Injectable()
export class GenreService {
  constructor(private readonly prisma: PrismaService) {}

  create(data: CreateGenreDto) {
    // return 'This action adds a new genre';
    return this.prisma.genre.create({
      data,
    });
  }

  findAll() {
    // return `This action returns all genre`;
    return this.prisma.genre.findMany();
  }

  findOne(id: number) {
    // return `This action returns a #${id} genre`;
    return this.prisma.genre.findUnique({
      where: { id },
    });
  }

  update(id: number, data: UpdateGenreDto) {
    // return `This action updates a #${id} genre`;
    return this.prisma.genre.update({
      where: { id },
      data,
    });
  }

  remove(id: number) {
    // return `This action removes a #${id} genre`;
    return this.prisma.genre.delete({
      where: { id },
    });
  }
}
