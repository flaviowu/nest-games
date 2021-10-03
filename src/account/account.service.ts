import { Injectable } from '@nestjs/common';
import { CreateAccountDto } from './dto/create-account.dto';
import { UpdateAccountDto } from './dto/update-account.dto';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class AccountService {
  constructor(private readonly prisma: PrismaService) {}

  create(createAccountDto: CreateAccountDto) {
    return 'This action adds a new account';
  }

  findAll() {
    // return `This action returns all account`;
    return this.prisma.account.findMany({
      include: {
        profiles: {
          select: {
            id: true,
            title: true,
            image: true,
          },
        },
        gamesOwned: {
          select: {
            gameId: true,
          },
        },
      },
    });
  }

  findOne(id: number) {
    // return `This action returns a #${id} account`;
    return this.prisma.account.findUnique({
      where: { id },
      include: {
        profiles: {
          select: {
            id: true,
            title: true,
            image: true,
          },
        },
        gamesOwned: {
          select: {
            gameId: true,
          },
        },
      },
    });
  }

  update(id: number, updateAccountDto: UpdateAccountDto) {
    return `This action updates a #${id} account`;
  }

  remove(id: number) {
    return `This action removes a #${id} account`;
  }
}
