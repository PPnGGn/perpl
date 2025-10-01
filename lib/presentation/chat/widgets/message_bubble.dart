import 'package:flutter/material.dart';
import 'package:perpl/domain/entities/entities.dart';

class MessageBubble extends StatelessWidget {
  final MessageEntity message;
  final bool isUser;

  const MessageBubble({super.key, required this.message, required this.isUser});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
          color: isUser ? Colors.blue.shade100 : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: isUser
                ? CrossAxisAlignment.end
                : CrossAxisAlignment.start,
            children: [
              Text(
                message.content,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
