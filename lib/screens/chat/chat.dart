import 'package:flutter/material.dart';
import 'package:telegram/models/chat.dart';
import 'package:telegram/models/message.dart';
import 'package:telegram/screens/chat/widgets/chat_title.dart';
import 'package:telegram/screens/chat/widgets/chat_with_bg.dart';
import 'package:telegram/screens/chat/widgets/type_and_send.dart';
import 'package:telegram/screens/common/back.dart';

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
  bool isTextEmpty = true;
  bool isVoice = true;

  void changeVoiceCam() {
    setState(() {
      isVoice = !isVoice;
    });
  }

  final TextEditingController _text = TextEditingController();

  late List<Message> msgs;
  void changeValue(String v) {
    setState(() {
      isTextEmpty = v.isEmpty;
    });
  }

  @override
  void initState() {
    msgs = widget.chat.messages;
    msgs.sort((a, b) => b.date.compareTo(a.date));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackBtn(),
        title: ChatTitle(chat: widget.chat),
        actions: chatActions,
      ),
      bottomNavigationBar: TypeAndSend(
        text: _text,
        changeValue: changeValue,
        isVoice: isVoice,
        changeVoiceCam: changeVoiceCam,
        isTextEmpty: isTextEmpty,
      ),
      body: ChatWithBackground(msgs: msgs),
    );
  }

  List<Widget> get chatActions {
    return [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.call),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.more_vert),
      ),
    ];
  }
}
