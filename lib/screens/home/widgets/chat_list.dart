import 'package:flutter/material.dart';
import 'package:telegram/data/data.dart';
import 'package:telegram/screens/home/widgets/chat_tile.dart';

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
