import 'package:flutter/material.dart';
import 'package:telegram/data/data.dart';
import 'package:telegram/models/message.dart';
import 'package:telegram/screens/chat/widgets/msg_wrapper.dart';

class MsgsList extends StatelessWidget {
  const MsgsList({
    Key? key,
    required this.msgs,
  }) : super(key: key);

  final List<Message> msgs;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      reverse: true,
      itemCount: msgs.length,
      itemBuilder: (context, ix) {
        final msg = msgs[ix];
        return Row(
          mainAxisAlignment: msg.from == OwlData.me.id
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          children: [
            MessageWrapper(msg: msg),
          ],
        );
      },
    );
  }
}
