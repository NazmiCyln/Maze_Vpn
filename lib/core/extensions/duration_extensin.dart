extension DurationExtansions on Duration {
  String get formatDurationHHmmss {
    String twoDigit(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigit(inMinutes.remainder(60));
    final seconds = twoDigit(inSeconds.remainder(60));
    final hours = twoDigit(inHours.remainder(60));

    return '$hours: $minutes: $seconds';
  }
}
