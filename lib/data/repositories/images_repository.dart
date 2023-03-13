import 'package:animated_app/core/constants.dart';
import 'package:animated_app/data/models/unsplash_image/unsplash_image.dart';
import 'package:dio/dio.dart';

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

  Future<ImagesResults> searchImages({
    required String query,
    required int page,
  }) async {
    final Response res = await dio.get(
      '/search/photos',
      queryParameters: {
        'client_id': 'BSIUcRsrwuHgjHVAttP3mENNdT8AhmqHqQkR6OpPYdU',
        'query': query,
        'page': page,
        'per_page': 30,
      },
    );
    final ImagesResults results = ImagesResults.fromJson(res.data);
    return results;
  }

  Future<List<UnsplashImage>> getImages({required int page}) async {
    final List<UnsplashImage> images = [];
    final Response res = await dio.get(
      '/photos',
      queryParameters: {
        'client_id': 'BSIUcRsrwuHgjHVAttP3mENNdT8AhmqHqQkR6OpPYdU',
        'page': page,
        'per_page': 30,
      },
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

  Future<UnsplashImage> getOneImage({required String id}) async {
    final Response res = await dio.get(
      '/photos/$id',
      queryParameters: {
        'client_id': 'BSIUcRsrwuHgjHVAttP3mENNdT8AhmqHqQkR6OpPYdU',
      },
    );
    final UnsplashImage image = UnsplashImage.fromJson(res.data);
    return image;
  }

  Future<UnsplashImage> getRandomImage() async {
    final Response res = await dio.get(
      '/photos/random',
      queryParameters: {
        'client_id': 'BSIUcRsrwuHgjHVAttP3mENNdT8AhmqHqQkR6OpPYdU',
      },
    );
    final UnsplashImage image = UnsplashImage.fromJson(res.data);
    return image;
  }
}
