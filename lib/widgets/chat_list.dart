import 'package:flutter/material.dart';
import 'package:telegram/data/chats.dart';
import 'package:telegram/widgets/chat_tile.dart';

class ChatList extends StatelessWidget {
  const ChatList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, ix) {
        final chat = OwlData.chats[ix];
        return ChatTile(chat);
      },
      separatorBuilder: (context, ix) {
        return const Divider(
          color: Colors.grey,
        );
      },
      itemCount: OwlData.chats.length,
    );
  }
}
