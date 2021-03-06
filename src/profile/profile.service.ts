import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { CreateProfileDto } from './dto/create-profile.dto';
import { UpdateProfileDto } from './dto/update-profile.dto';

@Injectable()
export class ProfileService {
  constructor(private readonly prisma: PrismaService) {}

  create(data: CreateProfileDto) {
    // return 'This action adds a new profile';
    return this.prisma.profile.create({
      data,
    });
  }

  findAll() {
    // return `This action returns all profile`;
    return this.prisma.profile.findMany();
  }

  findOne(id: number) {
    // return `This action returns a #${id} profile`;
    return this.prisma.profile.findUnique({ where: { id } });
  }

  update(id: number, data: UpdateProfileDto) {
    // return `This action updates a #${id} profile`;
    return this.prisma.profile.update({
      where: { id },
      data,
    });
  }

  remove(id: number) {
    // return `This action removes a #${id} profile`;
    return this.prisma.profile.delete({
      where: { id },
    });
  }
}
