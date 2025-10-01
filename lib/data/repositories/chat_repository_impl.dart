import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:perpl/core/constants/app_constants.dart' show ApiConstants;
import 'package:perpl/domain/entities/entities.dart';

import '../../domain/repositories/chat_repository.dart';
import '../datasources/chat_remote_datasource.dart';

@LazySingleton(as: ChatRepository)
class ChatRepositoryImpl implements ChatRepository {
  final ChatRemoteDatasource remoteDatasource;

  ChatRepositoryImpl({required this.remoteDatasource});

  @override
  Future<List<MessageEntity>> getMessages() async {
    // если нужен отдельный call для истории чата — используешь соответствующий метод
    try {
      final models = await remoteDatasource.getMessages();
      return models.map((e) => e.toEntity()).toList();
    } catch (e) {
      debugPrint('Error getting messages: $e');
      rethrow;
    }
  }

  @override
  Future<MessageEntity> sendMessage(MessageEntity message) async {
    try {
      // Собираем тело запроса под Perplexity
      final requestBody = {
        "model":  ApiConstants.defaultModel,
        "messages": [
          {
            "role": message.role,   // user/assistant
            "content": message.content,
          }
        ]
      };

      // Передаем API_KEY в header
      final apiKey = ApiConstants.apiKey; // вынеси в secure storage/ .env !!!
      

      final result = await remoteDatasource.getCompletion(
        'Bearer $apiKey',               // header Authorization
        requestBody,                    // тело { model, messages }
      );
    debugPrint('API raw model: $result');

      return result.toEntity();
    } catch (e, stack) {
      debugPrint('Error sending message: $e\n$stack');
      // Лучше использовать Failure либо обработку ошибок для UI
      rethrow;
    }
  }
}
