import 'package:perpl/domain/entities/entities.dart';

abstract class ChatRepository {
  Stream<String> sendMessageStream(List<MessageEntity> messageHistory);
}