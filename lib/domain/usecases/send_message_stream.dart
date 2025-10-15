import 'package:perpl/domain/entities/entities.dart';
import 'package:perpl/domain/repositories/chat_repository.dart';

class SendMessageStream {
  final ChatRepository repository;

  SendMessageStream(this.repository);

  // Просто проксируем вызов
  Stream<String> call(List<MessageEntity> messageHistory) {
    return repository.sendMessageStream(messageHistory);
  }
}
