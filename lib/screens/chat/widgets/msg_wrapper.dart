import 'package:flutter/material.dart';
import 'package:telegram/data/data.dart';
import 'package:telegram/models/message.dart';
import 'package:telegram/screens/chat/widgets/msg_text.dart';
import 'package:telegram/screens/chat/widgets/msg_time.dart';
import 'package:telegram/screens/chat/widgets/ticks.dart';
import 'package:telegram/utils/theme.dart';

class MessageWrapper extends StatelessWidget {
  const MessageWrapper({
    Key? key,
    required this.msg,
  }) : super(key: key);

  final Message msg;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: OwlTheme.primaryBlack,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          MessageText(msg: msg),
          const SizedBox(
            width: 10,
          ),
          MessageTime(msg: msg),
          if (msg.from == OwlData.me.id) ...[
            const SizedBox(
              width: 10,
            ),
            Ticks(msg: msg),
          ]
        ],
      ),
    );
  }
}
