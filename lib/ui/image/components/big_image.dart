import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../bloc/auth_bloc/auth_bloc.dart';
import '../../../bloc/image_bloc/image_bloc.dart';
import '../../../core/colors.dart';
import '../../../data/models/unsplash_image/unsplash_image.dart';
import '../../common/animated_icon.dart';
import '../../common/circular_loader.dart';
import '../../common/auth_suggestion_dialog.dart';
import '../state/image_cubit.dart';
import 'container_like.dart';

class BigImage extends StatelessWidget {
  final UnsplashImage image;
  final ValueNotifier<double> likedOpacityValueNotifier;
  final bool isFromFavorite;
  const BigImage({
    super.key,
    required this.image,
    required this.likedOpacityValueNotifier,
    required this.isFromFavorite,
  });

  @override
  Widget build(BuildContext context) {
    final AuthState authState = context.watch<AuthBloc>().state;
    return SizedBox.expand(
      child: GestureDetector(
        onVerticalDragUpdate: (details) {
          if (details.delta.dy < 0) {
            context.read<ImageCubit>().isImageBig(false);
          }
        },
        child: Column(
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CachedNetworkImage(
                    key: const Key('image'),
                    imageUrl: image.urls.raw,
                    imageBuilder: (context, imageProvider) => GestureDetector(
                      onDoubleTap: () {
                        if (authState is AuthAuthorizedState) {
                          if (image.liked_by_user) {
                            context.read<ImageBloc>().add(
                                  ImageEvent.unlikeImage(
                                    image: image,
                                  ),
                                );
                          } else {
                            context.read<ImageBloc>().add(
                                  ImageEvent.likeImage(
                                    image: image,
                                  ),
                                );
                            likedOpacityValueNotifier.value = 1.0;
                            Future.delayed(
                              const Duration(
                                milliseconds: 1000,
                              ),
                              () => likedOpacityValueNotifier.value = 0,
                            );
                          }
                        } else {
                          showDialog(
                            context: context,
                            builder: ((context) =>
                                const AuthSuggestionDialog()),
                          );
                        }
                      },
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    placeholder: (context, url) => Opacity(
                      opacity: .85,
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          gradient: AppColors.silverPlaceholderGradient,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const CircularLoader(),
                      ),
                    ),
                    errorWidget: (context, url, error) => Container(
                      width: double.infinity,
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        gradient: AppColors.silverPlaceholderGradient,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ShaderMask(
                        blendMode: BlendMode.srcIn,
                        shaderCallback: (bounds) =>
                            AppColors.linearGradientPink,
                        child: const Icon(
                          Icons.photo_rounded,
                          size: 100,
                        ),
                      ),
                    ),
                  ),
                  ContainerLike(
                      authState: authState,
                      image: image,
                      likedOpacityValueNotifier: likedOpacityValueNotifier),
                  GestureDetector(
                    onTap: () => context.pop(),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        margin: const EdgeInsets.all(15),
                        padding: const EdgeInsets.all(4),
                        child: const Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.black,
                          size: 21,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => isFromFavorite
                        ? context.goNamed(
                            'full_image_from_fav',
                            queryParams: {
                              'image': image.urls.raw,
                            },
                          )
                        : context.goNamed(
                            'full_image',
                            queryParams: {
                              'image': image.urls.raw,
                            },
                          ),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        margin: const EdgeInsets.all(15),
                        padding: const EdgeInsets.all(4),
                        child: const Icon(
                          Icons.fullscreen,
                          color: Colors.black,
                          size: 21,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: OpacityAnimatedIcon(
                      color: Colors.red.shade900,
                      notifier: likedOpacityValueNotifier,
                      icon: Icons.favorite_rounded,
                      size: 50.0,
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () => context.read<ImageCubit>().isImageBig(false),
              borderRadius: BorderRadius.circular(21),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.arrow_drop_down_rounded,
                    size: 32,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
