import 'package:flutter/material.dart';
import 'package:telegram/models/chat.dart';
import 'package:telegram/utils/date.dart';
import 'package:telegram/utils/theme.dart';

class ChatTime extends StatelessWidget {
  const ChatTime(
    this.chat, {
    Key? key,
  }) : super(key: key);

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(DateUtil(chat.lastMessageTime).getTime()),
        const SizedBox(
          height: 8,
        ),
        Container(
          width: 25,
          height: 25,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(
              chat.lastMessage.read ? Icons.done_all_sharp : Icons.done,
              size: 22,
              color: OwlTheme.lightBlue,
            ),
          ),
        ),
      ],
    );
  }
}
