class Message {
  int id;
  String? message;
  String? photo;
  DateTime date;
  int from;
  int chatId;
  bool read;

  Message({
    required this.date,
    required this.from,
    required this.chatId,
    required this.id,
    this.message,
    this.photo,
    this.read = true,
  });
}
