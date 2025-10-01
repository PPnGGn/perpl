
import 'package:perpl/domain/entities/entities.dart' show MessageEntity;
import 'package:perpl/domain/repositories/chat_repository.dart';


class SendMessage {
  final ChatRepository repository;
  SendMessage(this.repository);

  Future<MessageEntity> call(MessageEntity userMessage) async {
    return await repository.sendMessage(userMessage);
  }
}
