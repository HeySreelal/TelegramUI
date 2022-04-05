class Message {
  int id;
  String? message;
  String? photo;
  DateTime date;
  int from;

  Message({
    required this.date,
    required this.from,
    required this.id,
    this.message,
    this.photo,
  });
}
