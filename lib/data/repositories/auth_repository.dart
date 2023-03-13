import 'package:dio/dio.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';

import '../../core/constants.dart';

class AuthRepository {
  final dio = Dio(
    BaseOptions(
      baseUrl: AppConstants.baseUrl,
      sendTimeout: const Duration(
        milliseconds: 5000,
      ),
      connectTimeout: const Duration(
        milliseconds: 5000,
      ),
      receiveTimeout: const Duration(
        milliseconds: 5000,
      ),
      contentType: 'application/json',
    ),
  );

  Future auth() async {
    final url = Uri.https('unsplash.com', 'oauth/authorize', {
      'response_type': 'code',
      'client_id': 'BSIUcRsrwuHgjHVAttP3mENNdT8AhmqHqQkR6OpPYdU',
      'redirect_uri': 'com.example.unsplashapp:/',
      'scope': 'public+read_user+write_user+write_likes+write_followers',
    });
    final result = await FlutterWebAuth2.authenticate(
        url: url.toString().replaceAll("%2B", "+"),
        callbackUrlScheme: "com.example.unsplashapp");
    final code = Uri.parse(result).queryParameters['code'];
    print(code);
  }
}
