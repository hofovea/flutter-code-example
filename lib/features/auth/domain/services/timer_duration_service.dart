import 'package:shared_preferences/shared_preferences.dart';

class TimerDurationService {
  static const String _expirationTimeKey = 'lastResend';
  static const Duration _standardDuration = Duration(minutes: 1);

  static Future<Duration> setExpirationTime() async {
    final storage = await SharedPreferences.getInstance();
    final DateTime expirationTime = DateTime.now().add(_standardDuration);
    await storage.setString(
      _expirationTimeKey,
      expirationTime.toIso8601String(),
    );
    return _standardDuration;
  }

  static Future<Duration> getDurationTillExpiration() async {
    final storage = await SharedPreferences.getInstance();
    final currentTime = DateTime.now();
    String? expirationTimeString = storage.getString(_expirationTimeKey);
    if (expirationTimeString != null) {
      DateTime expirationTime = DateTime.parse(expirationTimeString);
      if (currentTime.isAfter(expirationTime)) {
        return Duration.zero;
      } else {
        return expirationTime.difference(currentTime);
      }
    } else {
      return Duration.zero;
    }
  }
}
