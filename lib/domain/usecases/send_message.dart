import 'package:dartz/dartz.dart';
import 'package:perpl/core/error/failures.dart';
import 'package:perpl/domain/entities/entities.dart' show MessageEntity;
import 'package:perpl/domain/repositories/chat_repository.dart';

class SendMessage {
  final ChatRepository repository;

  SendMessage(this.repository);

  Future<Either<Failure, MessageEntity>> call(List<MessageEntity> history) {
    return repository.sendMessage(history);
  }
}
