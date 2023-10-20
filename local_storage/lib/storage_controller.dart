import 'package:shared_preferences/shared_preferences.dart';

class StorageController {
  final String _storageKey = "userDataKey";

  // save data in local storage
  void saveInStorage(String textValue) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_storageKey, textValue);
  }

  // get data from local storage
  Future<String> getFromStorage() async {
    final storage = await SharedPreferences.getInstance();
    final detail = storage.getString(_storageKey) ?? '';
    return detail;
  }
}
