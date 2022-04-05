import 'package:flutter/material.dart';
import 'package:telegram/screens/home.dart';
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
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primaryColor: OwlTheme.primaryBlack,
        colorScheme: const ColorScheme.dark(),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          foregroundColor: OwlTheme.white,
          backgroundColor: OwlTheme.lightBlue,
        ),
      ),
    );
  }
}
