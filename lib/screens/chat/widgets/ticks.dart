import 'package:flutter/material.dart';
import 'package:telegram/models/message.dart';
import 'package:telegram/utils/theme.dart';

class Ticks extends StatelessWidget {
  const Ticks({
    Key? key,
    required this.msg,
  }) : super(key: key);

  final Message msg;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
