import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../data/models/unsplash_image/unsplash_image.dart';
import 'image_card.dart';
import '../home/state/home_grid_cubit.dart';

class GridViewRefresher extends StatelessWidget {
  final RefreshController refreshController;
  final void Function()? onLoading;
  final void Function()? onRefresh;
  final List<UnsplashImage> images;
  final bool isFavorite;
  const GridViewRefresher({
    super.key,
    required this.refreshController,
    this.onLoading,
    this.onRefresh,
    required this.images,
    required this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {
    final int state = context.watch<HomeGridTypeCubit>().state;
    return SmartRefresher(
      controller: refreshController,
      enablePullUp: true,
      enablePullDown: true,
      onRefresh: onRefresh,
      onLoading: onLoading,
      header: const WaterDropMaterialHeader(
        distance: 150.0,
        backgroundColor: Colors.white,
        color: Colors.pink,
      ),
      child: state == 1
          ? GridView.custom(
              gridDelegate: SliverWovenGridDelegate.count(
                crossAxisCount: 2,
                pattern: [
                  const WovenGridTile(1),
                  const WovenGridTile(
                    5 / 7,
                    crossAxisRatio: 0.95,
                    alignment: AlignmentDirectional.centerEnd,
                  ),
                ],
              ),
              childrenDelegate: SliverChildBuilderDelegate(
                (context, index) {
                  final UnsplashImage image = images[index];
                  return ImageCard(
                    image: image,
                    isFavorite: isFavorite,
                  );
                },
                childCount: images.length,
              ),
            )
          : state == 2
              ? GridView.custom(
                  gridDelegate: SliverQuiltedGridDelegate(
                    crossAxisCount: 6,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    repeatPattern: QuiltedGridRepeatPattern.inverted,
                    pattern: const [
                      QuiltedGridTile(4, 4),
                      QuiltedGridTile(2, 2),
                      QuiltedGridTile(2, 2),
                    ],
                  ),
                  childrenDelegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final UnsplashImage image = images[index];
                      return ImageCard(
                        image: image,
                        isFavorite: isFavorite,
                      );
                    },
                    childCount: images.length,
                  ),
                )
              : state == 3
                  ? GridView.custom(
                      gridDelegate: SliverQuiltedGridDelegate(
                        crossAxisCount: 4,
                        mainAxisSpacing: 4,
                        crossAxisSpacing: 4,
                        repeatPattern: QuiltedGridRepeatPattern.inverted,
                        pattern: [
                          const QuiltedGridTile(2, 2),
                          const QuiltedGridTile(1, 1),
                          const QuiltedGridTile(1, 1),
                          const QuiltedGridTile(1, 2),
                        ],
                      ),
                      childrenDelegate: SliverChildBuilderDelegate(
                        childCount: images.length,
                        (context, index) {
                          final UnsplashImage image = images[index];
                          return ImageCard(
                            image: image,
                            isFavorite: isFavorite,
                          );
                        },
                      ),
                    )
                  : state == 4
                      ? GridView.builder(
                          itemCount: images.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          itemBuilder: (context, index) {
                            final UnsplashImage image = images[index];
                            return ImageCard(
                              image: image,
                              isFavorite: isFavorite,
                            );
                          },
                        )
                      : GridView.builder(
                          itemCount: images.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 1),
                          itemBuilder: (context, index) {
                            final UnsplashImage image = images[index];
                            return ImageCard(
                              image: image,
                              isFavorite: isFavorite,
                            );
                          },
                        ),
    );
  }
}
