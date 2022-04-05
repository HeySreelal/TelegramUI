import 'package:flutter/material.dart';
import 'package:telegram/models/chat.dart';

class ChatTitle extends StatelessWidget {
  const ChatTitle({
    Key? key,
    required this.chat,
  }) : super(key: key);

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("images/${chat.avatar}"),
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              chat.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "last seen ${chat.lastSeen}",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[500],
              ),
            ),
          ],
        )
      ],
    );
  }
}
