String timeConversion(final String s) {
  final time = s.split(':');
  final hour = int.parse(time[0]);
  final minute = int.parse(time[1]);
  final last = time[2];
  final ampm = s.substring(8, 10);

  // remove AM/PM
  final s1 = last.replaceAll(ampm, '');

  final second = int.parse(s1);

  final hour24 = ampm == 'AM' ? hour : hour + 12;
  var hour24Str = hour24.toString().padLeft(2, '0');
  if (hour == 12) {
    hour24Str = '00';
  }

  final minuteStr = minute.toString().padLeft(2, '0');
  final secondStr = second.toString().padLeft(2, '0');
  return '$hour24Str:$minuteStr:$secondStr';
}
