import 'package:flutter/material.dart';

class TypeAndSend extends StatelessWidget {
  final TextEditingController text;
  final Function(String) changeValue;
  final bool isVoice;
  final VoidCallback changeVoiceCam;
  final bool isTextEmpty;
  const TypeAndSend({
    Key? key,
    required this.changeValue,
    required this.isVoice,
    required this.changeVoiceCam,
    required this.isTextEmpty,
    required this.text,
  }) : super(key: key);

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
              controller: text,
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
