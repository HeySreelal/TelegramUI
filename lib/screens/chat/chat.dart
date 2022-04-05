import 'package:flutter/material.dart';
import 'package:telegram/models/chat.dart';

class ChatScreen extends StatefulWidget {
  final Chat chat;
  const ChatScreen(
    this.chat, {
    Key? key,
  }) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
