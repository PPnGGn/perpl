import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perpl/domain/entities/entities.dart';
import 'package:perpl/presentation/chat/widgets/message_bubble.dart';
import 'package:perpl/presentation/chat/widgets/message_input.dart';
import 'cubit/chat_cubit.dart';

@RoutePage()
class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Perplexity Chat Clone')),
      body: BlocBuilder<ChatCubit, ChatState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text('...')),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (messages) => Column(
              children: [
                Expanded(
                  child: messages.isEmpty
                      ? const Center(child: Text('История пуста'))
                      : ListView.builder(
                          reverse: true,
                          itemCount: messages.length,
                          itemBuilder: (context, index) {
                            final msg = messages[messages.length - 1 - index];
                            return MessageBubble(message: msg, isUser: msg.role == 'user');
                          },
                        ),
                ),
                MessageInput(
                  controller: _controller,
                  onSend: () {
                    final text = _controller.text.trim();
                    if (text.isNotEmpty) {
                      final message = MessageEntity(content: text, role: 'user');
                      context.read<ChatCubit>().sendUserMessage(message);
                      _controller.clear();
                    }
                  },
                ),
              ],
            ),
            error: (msg) => Center(
              child: Text(
                'Ошибка: $msg',
                style: const TextStyle(color: Colors.red),
                textAlign: TextAlign.center,
              ),
            ),
          );
        },
      ),
    );
  }
}
