import 'package:animated_app/data/models/collection/collection.dart';
import 'package:animated_app/data/models/unsplash_image/unsplash_image.dart';
import 'package:animated_app/ui/common/cover_image_card.dart';
import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/fonts.dart';
import '../../data/models/cover_image/cover_image.dart';

class HorizontalUploadedImageGridView extends StatelessWidget {
  final List<CoverImage> images;
  const HorizontalUploadedImageGridView({
    super.key,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 25,
      ),
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          final CoverImage image = images[index];
          return CoverImageCard(image: image);
        },
      ),
    );
  }
}

class HorizontalCollectionsImageGridView extends StatelessWidget {
  final List<Collection> collections;
  const HorizontalCollectionsImageGridView({
    super.key,
    required this.collections,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 25,
      ),
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: collections.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          final Collection collection = collections[index];
          return Column(
            children: [
              CoverImageCard(image: collection.cover_photo),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${collection.title} /n ${collection.total_photos}',
                  textAlign: TextAlign.center,
                  style: AppFonts.smallStyle.copyWith(
                    foreground: Paint()..shader = AppColors.linearGradientRed,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class HorizontalLikedImageGridView extends StatelessWidget {
  final List<UnsplashImage> images;
  const HorizontalLikedImageGridView({
    super.key,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 25,
      ),
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          final CoverImage image = CoverImage(
            id: images[index].id,
            links: images[index].links,
            urls: images[index].urls,
          );
          return CoverImageCard(image: image);
        },
      ),
    );
  }
}
