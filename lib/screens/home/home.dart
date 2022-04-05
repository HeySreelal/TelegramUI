import 'package:flutter/material.dart';
import 'package:telegram/data/chats.dart';
import 'package:telegram/screens/home/widgets/chat_list.dart';
import 'package:telegram/screens/home/widgets/spider_drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    OwlData.chats.sort((a, b) => b.time.compareTo(a.time));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Telegram"),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      drawer: const SpiderDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.edit,
        ),
      ),
      body: const ChatList(),
    );
  }
}
