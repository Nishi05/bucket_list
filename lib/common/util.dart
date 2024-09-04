int remainingDays(DateTime selectedDate) {
  final now = DateTime.now();
  final todayMidnight = DateTime(now.year, now.month, now.day);

  return selectedDate.difference(DateTime.now()).inHours < 0
      ? 0
      : selectedDate.difference(todayMidnight).inHours ~/ 24;
}
