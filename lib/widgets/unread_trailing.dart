import 'package:flutter/material.dart';
import 'package:telegram/models/chat.dart';
import 'package:telegram/utils/date.dart';
import 'package:telegram/utils/theme.dart';

class UnreadTrailing extends StatelessWidget {
  const UnreadTrailing(
    this.chat, {
    Key? key,
  }) : super(key: key);

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(DateUtil(chat.time).getTime()),
        const SizedBox(
          height: 8,
        ),
        Container(
          width: 25,
          height: 25,
          decoration: const BoxDecoration(
            color: OwlTheme.lightBlue,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              chat.unreadCount.toString(),
            ),
          ),
        ),
      ],
    );
  }
}
