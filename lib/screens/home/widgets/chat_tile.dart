import 'package:flutter/material.dart';
import 'package:telegram/models/chat.dart';
import 'package:telegram/screens/home/widgets/chat_time.dart';
import 'package:telegram/screens/home/widgets/unread_trailing.dart';

class ChatTile extends StatelessWidget {
  const ChatTile(
    this.chat, {
    Key? key,
  }) : super(key: key);

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(2),
      leading: CircleAvatar(
        backgroundImage: AssetImage("images/${chat.avatar}"),
      ),
      title: Text(
        chat.name,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(chat.lastMessage.message ?? "..."),
      trailing: chat.unread ? UnreadTrailing(chat) : ChatTime(chat),
      onTap: () {},
      style: ListTileStyle.list,
    );
  }
}
