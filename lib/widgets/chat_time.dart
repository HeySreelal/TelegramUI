import 'package:flutter/material.dart';
import 'package:telegram/models/chat.dart';
import 'package:telegram/utils/date.dart';

class ChatTime extends StatelessWidget {
  const ChatTime(
    this.chat, {
    Key? key,
  }) : super(key: key);

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return Text(DateUtil(chat.time).getTime());
  }
}
