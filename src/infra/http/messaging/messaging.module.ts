import { DatabaseModule } from '@infra/database/database.module';
import { Module } from '@nestjs/common';

@Module({
  imports: [DatabaseModule],
  providers: [],
  controllers: [],
})
export class MessagingModule {}
