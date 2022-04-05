import 'package:flutter/material.dart';
import 'package:telegram/models/message.dart';
import 'package:telegram/screens/chat/widgets/msgs_list.dart';

class ChatWithBackground extends StatelessWidget {
  const ChatWithBackground({
    Key? key,
    required this.msgs,
  }) : super(key: key);

  final List<Message> msgs;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/chatbg.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: MsgsList(msgs: msgs),
    );
  }
}
