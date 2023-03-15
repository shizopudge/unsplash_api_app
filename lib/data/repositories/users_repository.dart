import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../core/constants.dart';
import '../models/user/user.dart';

class UsersRepository {
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

  final FlutterSecureStorage storage = const FlutterSecureStorage();

  Future<Profile> getCurrentUser() async {
    final String? accessToken = await storage.read(key: 'accessToken');
    final Response res = await dio.get(
      '/me',
      queryParameters: {
        'client_id': AppConstants.clientId,
      },
      options: Options(
        headers: {
          'Authorization': accessToken,
        },
      ),
    );
    final Profile user = Profile.fromJson(res.data);
    return user;
  }

  Future<Profile> getUser({required String username}) async {
    final String? accessToken = await storage.read(key: 'accessToken');
    final Response res = await dio.get(
      '/users/$username',
      queryParameters: {
        'client_id': AppConstants.clientId,
      },
      options: Options(
        headers: {
          'Authorization': accessToken,
        },
      ),
    );
    final Profile user = Profile.fromJson(res.data);
    return user;
  }
}
