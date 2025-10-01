

import 'package:perpl/domain/entities/entities.dart';

abstract class ChatRepository {

  /// Отправить новое сообщение и получить ответ AI
  Future<MessageEntity> sendMessage(MessageEntity message);
}
