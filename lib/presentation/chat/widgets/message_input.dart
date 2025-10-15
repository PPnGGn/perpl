import 'package:flutter/material.dart';

class MessageInput extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback? onSend;

  const MessageInput({super.key, required this.controller, this.onSend});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        color: Colors.grey.shade100,
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: controller,
                minLines: 1,
                maxLines: 5,
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  hintText: 'Введите сообщение...',
                  border: OutlineInputBorder(),
                ),

                onSubmitted: (_) => onSend?.call(),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.send, color: Colors.blue),
              onPressed: onSend,
            ),
          ],
        ),
      ),
    );
  }
}
