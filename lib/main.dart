import 'package:flutter/material.dart';
import 'package:telegram/screens/home/home.dart';
import 'package:telegram/utils/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Telegram',
      home: const Home(),
      theme: OwlTheme.theme,
    );
  }
}
