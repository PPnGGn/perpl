import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:perpl/domain/entities/entities.dart';

class ChatRemoteDatasource {
  final Dio dio;

  ChatRemoteDatasource(this.dio);

  Stream<String> sendMessageStream(List<MessageEntity> messageHistory) async* {
    final requestBody = {
      'model': 'sonar',
      'messages': messageHistory.map((msg) => {'role': msg.role, 'content': msg.content}).toList(),
      'stream': true,
    };

    final response = await dio.post(
      '/chat/completions',
      data: requestBody,
      options: Options(
        responseType: ResponseType.stream,
        headers: {'Accept': 'text/event-stream', 'Cache-Control': 'no-cache'},
      ),
    );

    final stream = response.data.stream as Stream<List<int>>;
    String buffer = '';

    await for (final chunk in stream) {
      buffer += utf8.decode(chunk);
      final lines = buffer.split('\n');
      buffer = lines.removeLast();

      for (final line in lines) {
        if (line.trim().isEmpty) continue;
        if (line.startsWith('data: ')) {
          final data = line.substring(6).trim();
          if (data == '[DONE]') return;
          try {
            final json = jsonDecode(data);
            final content = json['choices']?[0]?['delta']?['content'];
            if (content != null && content is String) yield content;
          } catch (_) {}
        }
      }
    }
  }
}
