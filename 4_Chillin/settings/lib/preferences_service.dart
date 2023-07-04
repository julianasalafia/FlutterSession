import 'package:settings/models.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesService {
  Future saveSettings(Settings settings) async {
    final preferences = await SharedPreferences.getInstance();

    await preferences.setString('username', settings.username);
    await preferences.setBool('isEmployed', settings.isEmployed);
    await preferences.setInt('gender', settings.gender.index);
    await preferences.setStringList(
        'programmingLanguages',
        settings.programmingLanguages
            .map((lang) => lang.index.toString())
            .toList());

    print('saved settings');
  }
}
