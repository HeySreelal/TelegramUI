class DateUtil {
  DateTime date;

  DateUtil(this.date);

  List<String> weekDays = [
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
  ];

  String getTime() {
    return "${date.hour}:${date.minute}";
  }

  String getWeek() {
    return weekDays[date.weekday].toString().substring(0, 3);
  }
}
