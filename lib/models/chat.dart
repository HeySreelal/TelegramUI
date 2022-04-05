import 'package:telegram/data/data.dart';
import 'package:telegram/models/message.dart';

class Chat {
  int id;
  String name;
  bool isOnline;
  String lastSeen;

  Chat({
    required this.id,
    required this.name,
    required this.isOnline,
    this.lastSeen = "recently",
  }) {
    messages.sort((a, b) => a.date.compareTo(b.date));
  }

  String get avatar => name + '.jpg';
  DateTime get lastMessageTime => lastMessage.date;
  Message get lastMessage => messages.last;

  int get unreadCount => messages
      .where(
        (msg) => !msg.read && msg.from != OwlData.me.id,
      )
      .toList()
      .length;

  bool get unread => unreadCount > 0;
  List<Message> get messages => OwlData.messages
      .where(
        (msg) => msg.chatId == id,
      )
      .toList();
}
