import 'package:flutter/material.dart';
import 'package:telegram/models/message.dart';
import 'package:telegram/utils/date.dart';

class MessageTime extends StatelessWidget {
  const MessageTime({
    Key? key,
    required this.msg,
  }) : super(key: key);

  final Message msg;

  @override
  Widget build(BuildContext context) {
    return Text(
      DateUtil(msg.date).getTime(false),
      style: TextStyle(
        fontSize: 12,
        color: Colors.grey[500],
      ),
    );
  }
}
