import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../bloc/images_bloc/images_bloc.dart';
import '../../bloc/liked_images_bloc/liked_images_bloc.dart';
import '../../data/models/unsplash_image/unsplash_image.dart';
import 'image_card.dart';
import '../home/state/home_grid_cubit.dart';

class GridViewRefresher extends StatefulWidget {
  final RefreshController refreshController;
  final void Function()? onLoading;
  final void Function()? onRefresh;
  final List<UnsplashImage> images;
  final bool isFavorite;
  final bool isRefreshable;
  const GridViewRefresher({
    super.key,
    required this.refreshController,
    this.onLoading,
    this.onRefresh,
    required this.images,
    required this.isFavorite,
    required this.isRefreshable,
  });

  @override
  State<GridViewRefresher> createState() => _GridViewRefresherState();
}

class _GridViewRefresherState extends State<GridViewRefresher> {
  final ValueNotifier<double> _likedOpacityValueNotifier =
      ValueNotifier<double>(0);
  final ValueNotifier<String> _likedImageIdValueNotifier =
      ValueNotifier<String>('');
  @override
  Widget build(BuildContext context) {
    final int state = context.watch<HomeGridTypeCubit>().state;
    return SmartRefresher(
      controller: widget.refreshController,
      enablePullUp: true,
      enablePullDown: widget.isRefreshable,
      onRefresh: widget.onRefresh,
      onLoading: widget.onLoading,
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
                  final UnsplashImage image = widget.images[index];
                  return ImageCard(
                    image: image,
                    isFavorite: widget.isFavorite,
                    likedOpacityValueNotifier: _likedOpacityValueNotifier,
                    likedImageIdValueNotifier: _likedImageIdValueNotifier,
                    onUnlikedTap: () {
                      if (widget.isFavorite) {
                        context.read<LikedImagesBloc>().add(
                              LikedImagesEvent.unlikeImage(
                                imageId: image.id,
                                images: widget.images,
                              ),
                            );
                      } else {
                        context.read<ImagesBloc>().add(
                              ImagesEvent.unlikeImage(
                                imageId: image.id,
                                images: widget.images,
                              ),
                            );
                      }
                    },
                    onDoubleTap: image.liked_by_user
                        ? () {
                            if (widget.isFavorite) {
                              context.read<LikedImagesBloc>().add(
                                    LikedImagesEvent.unlikeImage(
                                      imageId: image.id,
                                      images: widget.images,
                                    ),
                                  );
                            } else {
                              context.read<ImagesBloc>().add(
                                    ImagesEvent.unlikeImage(
                                      imageId: image.id,
                                      images: widget.images,
                                    ),
                                  );
                            }
                          }
                        : () {
                            if (widget.isFavorite) {
                              context.read<LikedImagesBloc>().add(
                                    LikedImagesEvent.likeImage(
                                      imageId: image.id,
                                      images: widget.images,
                                    ),
                                  );
                              // _likedImageIdValueNotifier.value = image.id;
                              // _likedOpacityValueNotifier.value = 1.0;
                              // Future.delayed(
                              //   const Duration(
                              //     milliseconds: 1000,
                              //   ),
                              //   () => _likedOpacityValueNotifier.value = 0,
                              // );
                            } else {
                              context.read<ImagesBloc>().add(
                                    ImagesEvent.likeImage(
                                      imageId: image.id,
                                      images: widget.images,
                                    ),
                                  );
                              // _likedImageIdValueNotifier.value = image.id;
                              // _likedOpacityValueNotifier.value = 1.0;
                              // Future.delayed(
                              //   const Duration(
                              //     milliseconds: 1000,
                              //   ),
                              //   () => _likedOpacityValueNotifier.value = 0,
                              // );
                            }
                          },
                  );
                },
                childCount: widget.images.length,
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
                      final UnsplashImage image = widget.images[index];
                      return ImageCard(
                        image: image,
                        isFavorite: widget.isFavorite,
                        likedOpacityValueNotifier: _likedOpacityValueNotifier,
                        likedImageIdValueNotifier: _likedImageIdValueNotifier,
                        onUnlikedTap: () {
                          if (widget.isFavorite) {
                            context.read<LikedImagesBloc>().add(
                                  LikedImagesEvent.unlikeImage(
                                    imageId: image.id,
                                    images: widget.images,
                                  ),
                                );
                          } else {
                            context.read<ImagesBloc>().add(
                                  ImagesEvent.unlikeImage(
                                    imageId: image.id,
                                    images: widget.images,
                                  ),
                                );
                          }
                        },
                        onDoubleTap: image.liked_by_user
                            ? () {
                                if (widget.isFavorite) {
                                  context.read<LikedImagesBloc>().add(
                                        LikedImagesEvent.unlikeImage(
                                          imageId: image.id,
                                          images: widget.images,
                                        ),
                                      );
                                } else {
                                  context.read<ImagesBloc>().add(
                                        ImagesEvent.unlikeImage(
                                          imageId: image.id,
                                          images: widget.images,
                                        ),
                                      );
                                }
                              }
                            : () {
                                if (widget.isFavorite) {
                                  context.read<LikedImagesBloc>().add(
                                        LikedImagesEvent.likeImage(
                                          imageId: image.id,
                                          images: widget.images,
                                        ),
                                      );
                                  _likedImageIdValueNotifier.value = image.id;
                                  _likedOpacityValueNotifier.value = 1.0;
                                  Future.delayed(
                                    const Duration(
                                      milliseconds: 1000,
                                    ),
                                    () => _likedOpacityValueNotifier.value = 0,
                                  );
                                } else {
                                  context.read<ImagesBloc>().add(
                                        ImagesEvent.likeImage(
                                          imageId: image.id,
                                          images: widget.images,
                                        ),
                                      );
                                  _likedImageIdValueNotifier.value = image.id;
                                  _likedOpacityValueNotifier.value = 1.0;
                                  Future.delayed(
                                    const Duration(
                                      milliseconds: 1000,
                                    ),
                                    () => _likedOpacityValueNotifier.value = 0,
                                  );
                                }
                              },
                      );
                    },
                    childCount: widget.images.length,
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
                        childCount: widget.images.length,
                        (context, index) {
                          final UnsplashImage image = widget.images[index];
                          return ImageCard(
                            image: image,
                            isFavorite: widget.isFavorite,
                            likedOpacityValueNotifier:
                                _likedOpacityValueNotifier,
                            likedImageIdValueNotifier:
                                _likedImageIdValueNotifier,
                            onUnlikedTap: () {
                              if (widget.isFavorite) {
                                context.read<LikedImagesBloc>().add(
                                      LikedImagesEvent.unlikeImage(
                                        imageId: image.id,
                                        images: widget.images,
                                      ),
                                    );
                              } else {
                                context.read<ImagesBloc>().add(
                                      ImagesEvent.unlikeImage(
                                        imageId: image.id,
                                        images: widget.images,
                                      ),
                                    );
                              }
                            },
                            onDoubleTap: image.liked_by_user
                                ? () {
                                    if (widget.isFavorite) {
                                      context.read<LikedImagesBloc>().add(
                                            LikedImagesEvent.unlikeImage(
                                              imageId: image.id,
                                              images: widget.images,
                                            ),
                                          );
                                    } else {
                                      context.read<ImagesBloc>().add(
                                            ImagesEvent.unlikeImage(
                                              imageId: image.id,
                                              images: widget.images,
                                            ),
                                          );
                                    }
                                  }
                                : () {
                                    if (widget.isFavorite) {
                                      context.read<LikedImagesBloc>().add(
                                            LikedImagesEvent.likeImage(
                                              imageId: image.id,
                                              images: widget.images,
                                            ),
                                          );
                                      _likedImageIdValueNotifier.value =
                                          image.id;
                                      _likedOpacityValueNotifier.value = 1.0;
                                      Future.delayed(
                                        const Duration(
                                          milliseconds: 1000,
                                        ),
                                        () => _likedOpacityValueNotifier.value =
                                            0,
                                      );
                                    } else {
                                      context.read<ImagesBloc>().add(
                                            ImagesEvent.likeImage(
                                              imageId: image.id,
                                              images: widget.images,
                                            ),
                                          );
                                      _likedImageIdValueNotifier.value =
                                          image.id;
                                      _likedOpacityValueNotifier.value = 1.0;
                                      Future.delayed(
                                        const Duration(
                                          milliseconds: 1000,
                                        ),
                                        () => _likedOpacityValueNotifier.value =
                                            0,
                                      );
                                    }
                                  },
                          );
                        },
                      ),
                    )
                  : state == 4
                      ? GridView.builder(
                          itemCount: widget.images.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          itemBuilder: (context, index) {
                            final UnsplashImage image = widget.images[index];
                            return ImageCard(
                              image: image,
                              isFavorite: widget.isFavorite,
                              likedOpacityValueNotifier:
                                  _likedOpacityValueNotifier,
                              likedImageIdValueNotifier:
                                  _likedImageIdValueNotifier,
                              onUnlikedTap: () {
                                if (widget.isFavorite) {
                                  context.read<LikedImagesBloc>().add(
                                        LikedImagesEvent.unlikeImage(
                                          imageId: image.id,
                                          images: widget.images,
                                        ),
                                      );
                                } else {
                                  context.read<ImagesBloc>().add(
                                        ImagesEvent.unlikeImage(
                                          imageId: image.id,
                                          images: widget.images,
                                        ),
                                      );
                                }
                              },
                              onDoubleTap: image.liked_by_user
                                  ? () {
                                      if (widget.isFavorite) {
                                        context.read<LikedImagesBloc>().add(
                                              LikedImagesEvent.unlikeImage(
                                                imageId: image.id,
                                                images: widget.images,
                                              ),
                                            );
                                      } else {
                                        context.read<ImagesBloc>().add(
                                              ImagesEvent.unlikeImage(
                                                imageId: image.id,
                                                images: widget.images,
                                              ),
                                            );
                                      }
                                    }
                                  : () {
                                      if (widget.isFavorite) {
                                        context.read<LikedImagesBloc>().add(
                                              LikedImagesEvent.likeImage(
                                                imageId: image.id,
                                                images: widget.images,
                                              ),
                                            );
                                        _likedImageIdValueNotifier.value =
                                            image.id;
                                        _likedOpacityValueNotifier.value = 1.0;
                                        Future.delayed(
                                          const Duration(
                                            milliseconds: 1000,
                                          ),
                                          () => _likedOpacityValueNotifier
                                              .value = 0,
                                        );
                                      } else {
                                        context.read<ImagesBloc>().add(
                                              ImagesEvent.likeImage(
                                                imageId: image.id,
                                                images: widget.images,
                                              ),
                                            );
                                        _likedImageIdValueNotifier.value =
                                            image.id;
                                        _likedOpacityValueNotifier.value = 1.0;
                                        Future.delayed(
                                          const Duration(
                                            milliseconds: 1000,
                                          ),
                                          () => _likedOpacityValueNotifier
                                              .value = 0,
                                        );
                                      }
                                    },
                            );
                          },
                        )
                      : GridView.builder(
                          itemCount: widget.images.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 1),
                          itemBuilder: (context, index) {
                            final UnsplashImage image = widget.images[index];
                            return ImageCard(
                              image: image,
                              isFavorite: widget.isFavorite,
                              likedOpacityValueNotifier:
                                  _likedOpacityValueNotifier,
                              likedImageIdValueNotifier:
                                  _likedImageIdValueNotifier,
                              onUnlikedTap: () {
                                if (widget.isFavorite) {
                                  context.read<LikedImagesBloc>().add(
                                        LikedImagesEvent.unlikeImage(
                                          imageId: image.id,
                                          images: widget.images,
                                        ),
                                      );
                                } else {
                                  context.read<ImagesBloc>().add(
                                        ImagesEvent.unlikeImage(
                                          imageId: image.id,
                                          images: widget.images,
                                        ),
                                      );
                                }
                              },
                              onDoubleTap: image.liked_by_user
                                  ? () {
                                      if (widget.isFavorite) {
                                        context.read<LikedImagesBloc>().add(
                                              LikedImagesEvent.unlikeImage(
                                                imageId: image.id,
                                                images: widget.images,
                                              ),
                                            );
                                      } else {
                                        context.read<ImagesBloc>().add(
                                              ImagesEvent.unlikeImage(
                                                imageId: image.id,
                                                images: widget.images,
                                              ),
                                            );
                                      }
                                    }
                                  : () {
                                      if (widget.isFavorite) {
                                        context.read<LikedImagesBloc>().add(
                                              LikedImagesEvent.likeImage(
                                                imageId: image.id,
                                                images: widget.images,
                                              ),
                                            );
                                        _likedImageIdValueNotifier.value =
                                            image.id;
                                        _likedOpacityValueNotifier.value = 1.0;
                                        Future.delayed(
                                          const Duration(
                                            milliseconds: 1000,
                                          ),
                                          () => _likedOpacityValueNotifier
                                              .value = 0,
                                        );
                                      } else {
                                        context.read<ImagesBloc>().add(
                                              ImagesEvent.likeImage(
                                                imageId: image.id,
                                                images: widget.images,
                                              ),
                                            );
                                        _likedImageIdValueNotifier.value =
                                            image.id;
                                        _likedOpacityValueNotifier.value = 1.0;
                                        Future.delayed(
                                          const Duration(
                                            milliseconds: 1000,
                                          ),
                                          () => _likedOpacityValueNotifier
                                              .value = 0,
                                        );
                                      }
                                    },
                            );
                          },
                        ),
    );
  }
}
