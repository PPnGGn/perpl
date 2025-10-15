import 'package:dartz/dartz.dart';
import 'package:perpl/core/error/failures.dart';
import 'package:perpl/domain/entities/entities.dart';

abstract class ChatRepository {
  Future<Either<Failure, MessageEntity>> sendMessage(List<MessageEntity> messageHistory);
}
