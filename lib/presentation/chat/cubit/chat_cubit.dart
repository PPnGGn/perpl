import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:perpl/domain/entities/entities.dart';
import 'package:perpl/domain/usecases/send_message_stream.dart';

part 'chat_cubit.freezed.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  final SendMessageStream sendMessageStreamUseCase;
  final List<MessageEntity> _messages = [];

  ChatCubit({required this.sendMessageStreamUseCase}) : super(const ChatState.loading()) {
    _loadHistory();
  }

  void _loadHistory() async {
    // Пока просто переход в loaded сразу, потом надо добавить загрузку из дрифта:
    emit(ChatState.loaded(List.from(_messages)));
  }

  void sendUserMessage(MessageEntity userMessage) {
    _messages.add(userMessage);
    emit(const ChatState.loading());

    String aiContent = '';
    final stream = sendMessageStreamUseCase(List.from(_messages));

    stream.listen(
      (chunk) {
        aiContent += chunk;
        if (_messages.isEmpty || _messages.last.role != 'assistant') {
          _messages.add(MessageEntity(role: 'assistant', content: aiContent));
        } else {
          _messages[_messages.length - 1] = MessageEntity(role: 'assistant', content: aiContent);
        }
        emit(ChatState.loaded(List.from(_messages)));
      },
      onError: (e) {
        emit(ChatState.error(e.toString()));
      },
    );
  }

  void resetChat() {
    _messages.clear();
    emit(const ChatState.initial());
  }
}
