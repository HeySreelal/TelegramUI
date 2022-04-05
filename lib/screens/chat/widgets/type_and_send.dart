import 'package:flutter/material.dart';

class TypeAndSend extends StatefulWidget {
  const TypeAndSend({
    Key? key,
  }) : super(key: key);

  @override
  State<TypeAndSend> createState() => _TypeAndSendState();
}

class _TypeAndSendState extends State<TypeAndSend> {
  bool isTextEmpty = true;
  bool isVoice = true;

  void changeVoiceCam() {
    setState(() {
      isVoice = !isVoice;
    });
  }

  final TextEditingController _text = TextEditingController();

  void changeValue(String v) {
    setState(() {
      isTextEmpty = v.isEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
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
              onChanged: changeValue,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.attach_file),
          ),
          isTextEmpty
              ? isVoice
                  ? IconButton(
                      onPressed: changeVoiceCam,
                      icon: const Icon(Icons.mic),
                    )
                  : IconButton(
                      onPressed: changeVoiceCam,
                      icon: const Icon(Icons.camera),
                    )
              : IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.send),
                ),
        ],
      ),
    );
  }
}
