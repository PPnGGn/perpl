import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perpl/domain/entities/entities.dart';
import 'package:perpl/presentation/chat/widgets/message_bubble.dart';
import 'package:perpl/presentation/chat/widgets/message_input.dart';
import 'cubit/chat_cubit.dart';

@RoutePage()
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<ChatCubit>().loadChatHistory();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Perplexity Chat Clone')),
      body: BlocBuilder<ChatCubit, ChatState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text('Начните новый чат!')),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (messages) => Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    reverse: true,
                    itemCount: messages.length,
                    itemBuilder: (context, index) {
                      final msg = messages[messages.length - 1 - index];
                      return MessageBubble(
                        message: msg,
                        isUser: msg.role == 'user',
                      );
                    },
                  ),
                ),
                MessageInput(
                  controller: _controller,
                  onSend: () {
                    final text = _controller.text.trim();
                    if (text.isNotEmpty) {
                      // вызов Cubit:
                      final message = MessageEntity(
                        content: text,
                        role: 'user',
                      );
                      context.read<ChatCubit>().sendUserMessage(message);
                      _controller.clear();
                    }
                  },
                ),
              ],
            ),
            error: (msg) => Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.error_outline, color: Colors.red, size: 48),
                  const SizedBox(height: 16),
                  Text(
                    'Ошибка: $msg',
                    style: const TextStyle(color: Colors.red),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () =>
                        context.read<ChatCubit>().loadChatHistory(),
                    child: const Text('Повторить'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
