class Chat {
  int id;
  String name;
  String lastMessage;
  DateTime time;
  bool isOnline;
  bool unread;
  int unreadCount;

  String get avatar => name + '.jpg';

  Chat({
    required this.id,
    required this.name,
    required this.lastMessage,
    required this.time,
    required this.isOnline,
    required this.unread,
    this.unreadCount = 0,
  });
}
