import 'package:flutter/material.dart';

class BackBtn extends StatelessWidget {
  const BackBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.maybePop(context);
      },
      icon: const Icon(
        Icons.arrow_back_ios,
      ),
    );
  }
}
