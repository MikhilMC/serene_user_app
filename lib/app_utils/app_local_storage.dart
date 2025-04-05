import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:serene_user_app/app_constants/app_local_storage_keys.dart';

class AppLocalStorage {
  static Future<void> disableIntroScreen() async {
    final FlutterSecureStorage storage = FlutterSecureStorage();
    await storage.write(
      key: AppLocalStorageKeys.isFirstLaunch,
      value: false.toString(),
    );
  }

  static Future<void> userLogin({
    required String username,
    required int userId,
  }) async {
    final FlutterSecureStorage storage = FlutterSecureStorage();
    await storage.write(
      key: AppLocalStorageKeys.isLoggedIn,
      value: true.toString(),
    );
    await storage.write(
      key: AppLocalStorageKeys.userId,
      value: userId.toString(),
    );
    await storage.write(
      key: AppLocalStorageKeys.username,
      value: username,
    );
  }

  static Future<void> userLogout() async {
    final FlutterSecureStorage storage = FlutterSecureStorage();
    await storage.delete(key: AppLocalStorageKeys.userId);
    await storage.delete(key: AppLocalStorageKeys.username);
    await storage.write(
      key: AppLocalStorageKeys.isLoggedIn,
      value: false.toString(),
    );
  }

  static Future<bool> getIntroScreenStatus() async {
    final FlutterSecureStorage storage = FlutterSecureStorage();
    String? isFirstLaunchString =
        await storage.read(key: AppLocalStorageKeys.isFirstLaunch);
    return bool.parse(isFirstLaunchString ?? true.toString());
  }

  static Future<bool> getLoginStatus() async {
    final FlutterSecureStorage storage = FlutterSecureStorage();
    String? isLoggedIn =
        await storage.read(key: AppLocalStorageKeys.isLoggedIn);
    return bool.parse(isLoggedIn ?? false.toString());
  }

  static Future<int> getUserId() async {
    final FlutterSecureStorage storage = FlutterSecureStorage();
    String? userId = await storage.read(key: AppLocalStorageKeys.userId);
    return int.parse(userId ?? 0.toString());
  }

  static Future<String> getUsername() async {
    final FlutterSecureStorage storage = FlutterSecureStorage();
    String? username = await storage.read(key: AppLocalStorageKeys.username);
    return username ?? "";
  }
}
