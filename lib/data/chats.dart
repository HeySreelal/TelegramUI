import 'package:telegram/models/chat.dart';

class OwlData {
  static List<Chat> chats = [
    Chat(
      id: 1,
      name: "James Octavio",
      lastMessage: "Where are you now?",
      time: DateTime(2020, 4, 4, 12, 30),
      isOnline: false,
      unread: true,
      unreadCount: 8,
    ),
    Chat(
      id: 2,
      name: "Juliana Robes",
      lastMessage: "I'm fine, thanks",
      time: DateTime(2020, 4, 4, 18, 22),
      isOnline: true,
      unread: false,
    ),
    Chat(
      id: 3,
      name: "Juan Carlos",
      lastMessage: "Okay, I'll update you.",
      time: DateTime(2020, 4, 4, 18, 30),
      isOnline: false,
      unread: false,
    ),
    Chat(
      id: 4,
      name: "Mia Holling",
      lastMessage: "😂😂😂",
      time: DateTime(2020, 4, 4, 10, 30),
      isOnline: false,
      unread: true,
      unreadCount: 4,
    ),
    Chat(
      id: 5,
      name: "Thomas Jose",
      lastMessage: "Hey buddy! I've got a new project for you.",
      time: DateTime(2020, 4, 4, 7, 30),
      isOnline: true,
      unread: true,
      unreadCount: 10,
    ),
  ];
}
