import 'package:telegram/models/chat.dart';
import 'package:telegram/models/message.dart';

class OwlData {
  // The current user :)
  static Chat get me => Chat(
        id: 0,
        name: "Peter Parker",
        isOnline: true,
      );

  // All chats to be listed in the chat list
  static List<Chat> chats = [
    Chat(
      id: 1,
      name: "James Octavio",
      isOnline: false,
    ),
    Chat(
      id: 2,
      name: "Juliana Robes",
      isOnline: true,
    ),
    Chat(
      id: 3,
      name: "Juan Carlos",
      isOnline: false,
    ),
    Chat(
      id: 4,
      name: "Mia Holling",
      isOnline: false,
    ),
    Chat(
      id: 5,
      name: "Thomas Jose",
      isOnline: true,
    ),
  ];

  // All messages
  static List<Message> get messages {
    return [
      // James Octavio
      Message(
        date: DateTime(2022, 4, 5, 6, 0, 0),
        from: 1,
        chatId: 1,
        id: 1,
        message: "Heyy, you up?",
        read: false,
      ),
      Message(
        date: DateTime(2022, 4, 5, 6, 0, 10),
        from: 1,
        chatId: 1,
        id: 2,
        message: "Mahnn!! Wake up, mannnn",
        read: false,
      ),
      Message(
        date: DateTime(2022, 4, 5, 6, 0, 20),
        from: 1,
        chatId: 1,
        id: 3,
        message: "Cmooonnn! Let's go out!",
        read: false,
      ),
      Message(
        date: DateTime(2022, 4, 5, 6, 0, 30),
        from: 1,
        chatId: 1,
        id: 4,
        message: "Maahnn, I'm coming!",
        read: false,
      ),
      Message(
        date: DateTime(2022, 4, 5, 6, 0, 40),
        from: 1,
        chatId: 1,
        id: 5,
        message: "Buddy! I've got a new project for you.",
        read: false,
      ),

      // Messages from Juliana Robes
      // chat id 2, from 2
      Message(
        date: DateTime(2022, 4, 5, 8, 0, 50),
        from: 2,
        chatId: 2,
        id: 6,
        message: "Hey, thank you for that free ticket!",
      ),
      Message(
        date: DateTime(2022, 4, 5, 8, 0, 55),
        from: 2,
        chatId: 2,
        id: 7,
        message: "I'm going to the cinema with my friends.",
      ),
      Message(
        date: DateTime(2022, 4, 5, 8, 2, 12),
        from: 0,
        chatId: 2,
        id: 8,
        message: "Have some fun, babe!",
      ),
      Message(
        date: DateTime(2022, 4, 5, 8, 3, 20),
        from: 2,
        chatId: 2,
        id: 9,
        message: "Sure thing.",
        read: false,
      ),
      Message(
        date: DateTime(2022, 4, 5, 8, 4, 40),
        from: 2,
        chatId: 2,
        id: 10,
        message: "😂😂😂",
        read: false,
      ),

      // Messages from Juan Carlos
      // chat id 3, from 3
      Message(
        date: DateTime(2022, 4, 5, 9, 0, 42),
        from: 3,
        chatId: 3,
        id: 11,
        message: "Hey, how are you?",
      ),
      Message(
        date: DateTime(2022, 4, 5, 9, 10),
        from: 0,
        chatId: 3,
        id: 12,
        message: "I'm doing fine, thanks!",
      ),

      // Messages from Mia Holling
      // chat id 4, from 4
      Message(
        date: DateTime(2022, 4, 5, 18, 0, 13),
        from: 0,
        chatId: 4,
        id: 13,
        message: "Hey, Mia!",
      ),
      Message(
        date: DateTime(2022, 4, 5, 18, 0, 15),
        from: 0,
        chatId: 4,
        id: 14,
        message: "I need that class notes Mr. James given last week.",
      ),
      Message(
        date: DateTime(2022, 4, 5, 18, 0, 20),
        from: 4,
        chatId: 4,
        id: 15,
        message: "Would you mind sharing them with me? 😉",
      ),
      Message(
        date: DateTime(2022, 4, 5, 18, 1, 30),
        from: 4,
        chatId: 4,
        id: 16,
        message: "Sure, I'll send them to you.",
      ),
      Message(
        date: DateTime(2022, 4, 5, 18, 2, 40),
        from: 4,
        chatId: 4,
        id: 17,
        message: "Thanks!",
      ),
      Message(
        date: DateTime(2022, 4, 5, 18, 2, 50),
        from: 0,
        chatId: 4,
        id: 18,
        message: "Btw, was there any homework for the class?",
        read: false,
      ),

      // Messages from Thomas Jose
      // chat id 5, from 5
      Message(
        date: DateTime(2022, 4, 4, 16, 4, 10),
        from: 5,
        chatId: 5,
        id: 19,
        message: "Bro, I'm going out this weekend.",
        read: false,
      ),
      Message(
        date: DateTime(2022, 4, 4, 16, 4, 20),
        from: 5,
        chatId: 5,
        id: 20,
        message: "Are you in? 😋",
        read: false,
      ),
    ];
  }
}
