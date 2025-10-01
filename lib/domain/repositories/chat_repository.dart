

import 'package:perpl/domain/entities/entities.dart';

abstract class ChatRepository {
  /// Получить список истории сообщений (опционально)
  Future<List<MessageEntity>> getMessages();

  /// Отправить новое сообщение и получить ответ AI
  Future<MessageEntity> sendMessage(MessageEntity message);
}
