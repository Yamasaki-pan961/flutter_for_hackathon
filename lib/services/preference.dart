import 'package:shared_preferences/shared_preferences.dart';

class Preference {
  final preference = SharedPreferences.getInstance();

  Future<List<String>> getData() async {
    final SharedPreferences prefs = await preference;
    //TODO JSONに変換する必要がある
    return prefs.getStringList('run') ?? [];
  }

  Future<void> storeData() async {
    final SharedPreferences prefs = await preference;
    //TODO JSONに変換する必要がある
    prefs.setStringList('run', []);
  }
}
