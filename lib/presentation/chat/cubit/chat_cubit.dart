import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:perpl/domain/entities/entities.dart';
import 'package:perpl/domain/usecases/send_message.dart';

part 'chat_state.dart';
part 'chat_cubit.freezed.dart';

class ChatCubit extends Cubit<ChatState> {
  final SendMessage sendMessageUseCase;

  ChatCubit({
    required this.sendMessageUseCase,
  }) : super(const ChatState.initial());

  // Возможно, нужно будет добавить репозиторий/UseCase для истории!
  Future<void> loadChatHistory() async {
    emit(const ChatState.loading());
    try {
      // Здесь — история если есть, иначе просто пусто
      final messages = <MessageEntity>[];
      emit(ChatState.loaded(messages));
    } catch (e) {
      emit(ChatState.error(e.toString()));
    }
  }

  /// Основной метод — отправляем user сообщение, получаем ответ ассистента
  Future<void> sendUserMessage(MessageEntity userMessage) async {
    emit(const ChatState.loading());
    try {
      // Отправляем вопрос, получаем completion (ответ ассистента)
      final aiAnswer = await sendMessageUseCase(userMessage);

      // Тут можно накапливать историю, если нужно
      final messages = <MessageEntity>[userMessage, aiAnswer];

      emit(ChatState.loaded(messages));
    } catch (e) {
      emit(ChatState.error(e.toString()));
    }
  }

  void showError(String message) {
    emit(ChatState.error(message));
  }

  void reset() {
    emit(const ChatState.initial());
  }
}
