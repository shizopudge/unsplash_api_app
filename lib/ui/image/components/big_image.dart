import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rive/rive.dart';

import '../../../bloc/auth_bloc/auth_bloc.dart';
import '../../../bloc/image_bloc/image_bloc.dart';
import '../../../core/colors.dart';
import '../../../data/models/unsplash_image/unsplash_image.dart';
import '../state/image_cubit.dart';

class BigImage extends StatelessWidget {
  final UnsplashImage image;
  const BigImage({
    super.key,
    required this.image,
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
                    imageUrl: image.urls.raw,
                    imageBuilder: (context, imageProvider) => Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
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
                        child: const RiveAnimation.asset(
                          'assets/loading.riv',
                          fit: BoxFit.cover,
                        ),
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
                  if (image.liked_by_user)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          if (authState is AuthAuthorizedState) {
                            context.read<ImageBloc>().add(
                                  ImageEvent.unlikeImage(
                                    image: image,
                                  ),
                                );
                          } else {
                            //?showDialog
                          }
                        },
                        borderRadius: BorderRadius.circular(21),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          margin: const EdgeInsets.all(15),
                          padding: const EdgeInsets.all(4),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red.shade900,
                            size: 24,
                          ),
                        ),
                      ),
                    )
                  else
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          if (authState is AuthAuthorizedState) {
                            context.read<ImageBloc>().add(
                                  ImageEvent.likeImage(
                                    image: image,
                                  ),
                                );
                          } else {
                            //?showDialog
                          }
                        },
                        borderRadius: BorderRadius.circular(21),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          margin: const EdgeInsets.all(15),
                          padding: const EdgeInsets.all(4),
                          child: Icon(
                            Icons.favorite_outline,
                            color: Colors.red.shade900,
                            size: 24,
                          ),
                        ),
                      ),
                    ),
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
                    onTap: () => context.goNamed(
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