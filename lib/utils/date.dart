class DateUtil {
  DateTime date;
  DateTime now = DateTime.now();

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

  String getTime([bool showWeek = true]) {
    if (showWeek && date.isBefore(DateTime(now.year, now.month, now.day))) {
      return getWeek();
    }

    return "${date.hour < 10 ? '0' : ''}${date.hour}:${date.minute < 10 ? '0' : ''}${date.minute}";
  }

  String getWeek() {
    return weekDays[date.weekday].toString().substring(0, 3);
  }
}
