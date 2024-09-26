import 'package:flutter/foundation.dart';
import 'package:global_plug/constants/locals.dart';

class APIHeaders {
  static Map<String, String> appHeaders() {
    String token = getStorageInstance.read(TOKEN);
    String refreshToken = getStorageInstance.read(REFRESH_TOKEN);

    if (kDebugMode) print("TOKEN FROM HEADERS: $token");
    if (kDebugMode) print("REFRESH-TOKEN FROM HEADERS: $refreshToken");

    return {
      'Accept': '*/*',
      'Authorization': 'Bearer  $token',
      'Content-Type': 'application/json'
    };
  }
}
