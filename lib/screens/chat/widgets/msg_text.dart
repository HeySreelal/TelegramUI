import 'package:flutter/material.dart';
import 'package:telegram/models/message.dart';

class MessageText extends StatelessWidget {
  const MessageText({
    Key? key,
    required this.msg,
  }) : super(key: key);

  final Message msg;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 250,
      ),
      child: Text(msg.message!),
    );
  }
}
