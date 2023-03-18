import 'package:animated_app/core/constants.dart';
import 'package:animated_app/data/models/unsplash_image/unsplash_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../models/images_results/images_results.dart';

class ImagesRepository {
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

  Future<ImagesResults> searchImages({
    required String query,
    required int page,
  }) async {
    final String? accessToken = await storage.read(key: 'accessToken');
    final Response res = await dio.get(
      '/search/photos',
      queryParameters: {
        'client_id': AppConstants.clientId,
        'query': query,
        'page': page,
        'per_page': 30,
      },
      options: Options(
        headers: {
          'Authorization': accessToken,
        },
      ),
    );
    final ImagesResults results = ImagesResults.fromJson(res.data);
    return results;
  }

  Future<List<UnsplashImage>> getImages({required int page}) async {
    final String? accessToken = await storage.read(key: 'accessToken');
    final List<UnsplashImage> images = [];
    final Response res = await dio.get(
      '/photos',
      queryParameters: {
        'client_id': AppConstants.clientId,
        'page': page,
        'per_page': 30,
      },
      options: Options(
        headers: {
          'Authorization': accessToken,
        },
      ),
    );
    for (int i = 0; i < 30; i++) {
      images.add(
        UnsplashImage.fromJson(
          res.data[i],
        ),
      );
    }
    return images;
  }

  Future<List<UnsplashImage>> getLikedImages(
      {required int page, required String username}) async {
    final String? accessToken = await storage.read(key: 'accessToken');
    final List<UnsplashImage> images = [];
    final Response res = await dio.get(
      '/users/$username/likes',
      queryParameters: {
        'client_id': AppConstants.clientId,
        'page': page,
        'per_page': 5,
      },
      options: Options(
        headers: {
          'Authorization': accessToken,
        },
      ),
    );
    final List imagesList = res.data;
    for (int i = 0; i < imagesList.length; i++) {
      images.add(
        UnsplashImage.fromJson(
          res.data[i],
        ),
      );
    }
    return images;
  }

  Future<UnsplashImage> getOneImage({required String id}) async {
    final String? accessToken = await storage.read(key: 'accessToken');
    final Response res = await dio.get(
      '/photos/$id',
      queryParameters: {
        'client_id': AppConstants.clientId,
      },
      options: Options(
        headers: {
          'Authorization': accessToken,
        },
      ),
    );
    final UnsplashImage image = UnsplashImage.fromJson(res.data);
    return image;
  }

  Future<UnsplashImage> getRandomImage() async {
    final String? accessToken = await storage.read(key: 'accessToken');
    final Response res = await dio.get(
      '/photos/random',
      queryParameters: {
        'client_id': AppConstants.clientId,
      },
      options: Options(
        headers: {
          'Authorization': accessToken,
        },
      ),
    );
    final UnsplashImage image = UnsplashImage.fromJson(res.data);
    return image;
  }

  Future likeImage({required String id}) async {
    final String? accessToken = await storage.read(key: 'accessToken');
    await dio.post(
      '/photos/$id/like',
      queryParameters: {
        'client_id': AppConstants.clientId,
      },
      options: Options(
        headers: {
          'Authorization': accessToken,
        },
      ),
    );
  }

  Future unlikeImage({required String id}) async {
    final String? accessToken = await storage.read(key: 'accessToken');
    await dio.delete(
      '/photos/$id/like',
      queryParameters: {
        'client_id': AppConstants.clientId,
      },
      options: Options(
        headers: {
          'Authorization': accessToken,
        },
      ),
    );
  }
}
