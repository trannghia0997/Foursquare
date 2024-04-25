import 'package:pocketbase/pocketbase.dart';
import "package:http/http.dart" as http;
import 'package:shared_preferences/shared_preferences.dart';

class PBApp {
  static late final PocketBase? _instance;

  static PocketBase get instance {
    if (_instance == null) {
      throw Exception('Pocketbase is not initialized');
    }
    return _instance!;
  }

  static Future<void> init({
    String baseUrl = "http://127.0.0.1:8090",
    String lang = "en-US",
    http.Client Function()? httpClientFactory,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    final store = AsyncAuthStore(
      save: (String data) async => prefs.setString('pb_auth', data),
      initial: prefs.getString('pb_auth'),
    );
    _instance = PocketBase(
      baseUrl,
      lang: lang,
      authStore: store,
      httpClientFactory: httpClientFactory,
    );
  }
}
