import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:perpl/domain/entities/entities.dart';
import 'package:perpl/domain/usecases/send_message.dart';

part 'chat_state.dart';

part 'chat_cubit.freezed.dart';

class ChatCubit extends Cubit<ChatState> {
  final SendMessage sendMessageUseCase;
  final List<MessageEntity> _messageHistory = [];

  ChatCubit({required this.sendMessageUseCase}) : super(const ChatState.initial());

  Future<void> loadChatHistory() async {
    emit(const ChatState.loading());
    _messageHistory.clear(); // сбрасываем историю (можно добавить локальный кэш)
    emit(ChatState.loaded(List.from(_messageHistory)));
  }

  Future<void> sendUserMessage(MessageEntity userMessage) async {
    emit(const ChatState.loading());
    _messageHistory.add(userMessage);
    final result = await sendMessageUseCase(_messageHistory); // Передаём всю историю!
    result.fold((failure) => emit(ChatState.error(failure.toString())), (aiAnswer) {
      _messageHistory.add(aiAnswer);
      emit(ChatState.loaded(List.from(_messageHistory)));
    });
  }

  void reset() {
    /* ... */
  }
}
