import 'package:flutter/material.dart';
import 'package:telegram/data/data.dart';
import 'package:telegram/models/chat.dart';
import 'package:telegram/models/message.dart';
import 'package:telegram/utils/date.dart';
import 'package:telegram/utils/theme.dart';

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

  void changeVoidCam() {
    setState(() {
      isVoice = !isVoice;
    });
  }

  final TextEditingController _text = TextEditingController();

  late List<Message> msgs;

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
        leading: IconButton(
          onPressed: () {
            Navigator.maybePop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("images/${widget.chat.avatar}"),
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.chat.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "last seen ${widget.chat.lastSeen}",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white12,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.emoji_emotions),
            ),
            Expanded(
              child: TextField(
                  controller: _text,
                  decoration: const InputDecoration(
                    hintText: "Type a message...",
                    border: InputBorder.none,
                  ),
                  onChanged: (v) {
                    setState(() {
                      isTextEmpty = v.isEmpty;
                    });
                  }),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.attach_file),
            ),
            isTextEmpty
                ? isVoice
                    ? IconButton(
                        onPressed: changeVoidCam,
                        icon: const Icon(Icons.mic),
                      )
                    : IconButton(
                        onPressed: changeVoidCam,
                        icon: const Icon(Icons.camera),
                      )
                : IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.send),
                  ),
          ],
        ),
      ),
      body: ListView.builder(
        reverse: true,
        itemCount: widget.chat.messages.length,
        itemBuilder: (context, ix) {
          final msg = msgs[ix];
          return Row(
            mainAxisAlignment: msg.from == OwlData.me.id
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      constraints: const BoxConstraints(
                        maxWidth: 250,
                      ),
                      child: Text(msg.message!),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      DateUtil(msg.date).getTime(false),
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[500],
                      ),
                    ),
                    if (msg.from == OwlData.me.id) ...[
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 25,
                        height: 25,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: msg.read
                              ? const Icon(
                                  Icons.done_all,
                                  color: OwlTheme.lightBlue,
                                  size: 18,
                                )
                              : const Icon(
                                  Icons.done,
                                  color: OwlTheme.lightBlue,
                                  size: 18,
                                ),
                        ),
                      ),
                    ]
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
