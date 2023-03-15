import 'package:animated_app/core/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';

class AuthRepository {
  final FlutterSecureStorage storage = const FlutterSecureStorage();

  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://unsplash.com',
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
      'client_id': AppConstants.clientId,
      'redirect_uri': AppConstants.redirectUri,
      'scope': AppConstants.scope,
    });
    final result = await FlutterWebAuth2.authenticate(
      url: url.toString().replaceAll("%2B", "+"),
      callbackUrlScheme: AppConstants.callbackUrlScheme,
    );
    final String? code = Uri.parse(result).queryParameters['code'];
    final Response res = await dio.post(
      '/oauth/token',
      queryParameters: {
        'client_id': AppConstants.clientId,
        'client_secret': AppConstants.clientSecret,
        'redirect_uri': AppConstants.redirectUri,
        'code': code,
        'grant_type': 'authorization_code',
      },
    );
    final String accessToken = res.data['access_token'];
    await storage.write(key: 'accessToken', value: 'Bearer $accessToken');
  }

  Future<bool> isAuthorized() async {
    final String? accessToken = await storage.read(key: 'accessToken');
    if (accessToken != null) {
      return true;
    } else {
      return false;
    }
  }

  Future logout() async {
    await storage.deleteAll();
  }
}
