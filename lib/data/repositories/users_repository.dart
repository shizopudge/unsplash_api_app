import 'package:dio/dio.dart';

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

  Future<Profile> getUser({required String username}) async {
    final Response res = await dio.get(
      '/users/$username',
      queryParameters: {
        'client_id': 'BSIUcRsrwuHgjHVAttP3mENNdT8AhmqHqQkR6OpPYdU',
      },
    );
    final Profile user = Profile.fromJson(res.data);
    return user;
  }
}
