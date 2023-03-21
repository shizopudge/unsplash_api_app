import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../bloc/auth_bloc/auth_bloc.dart';
import '../../bloc/image_bloc/image_bloc.dart';
import '../../core/colors.dart';
import '../../data/models/unsplash_image/unsplash_image.dart';
import 'auth_suggestion_dialog.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    super.key,
    required this.image,
    required this.isFavorite,
    required this.onDoubleTap,
    required this.onUnlikedTap,
    required this.likedOpacityValueNotifier,
    required this.likedImageIdValueNotifier,
  });

  final UnsplashImage image;
  final bool isFavorite;
  final void Function()? onDoubleTap;
  final void Function()? onUnlikedTap;
  final ValueNotifier<double> likedOpacityValueNotifier;
  final ValueNotifier<String> likedImageIdValueNotifier;

  @override
  Widget build(BuildContext context) {
    final AuthState authState = context.watch<AuthBloc>().state;
    return InkWell(
      borderRadius: BorderRadius.circular(21),
      onTap: () {
        isFavorite
            ? context.go(
                '/home/favorite/image',
              )
            : context.go(
                '/home/image',
              );
        context.read<ImageBloc>().add(
              ImageEvent.getOneImage(
                id: image.id,
              ),
            );
      },
      onDoubleTap: authState is AuthAuthorizedState
          ? onDoubleTap
          : () => showDialog(
                context: context,
                builder: ((context) => const AuthSuggestionDialog()),
              ),
      child: CachedNetworkImage(
        imageUrl: image.urls.regular,
        imageBuilder: (context, imageProvider) => Stack(
          children: [
            Card(
              margin: const EdgeInsets.all(8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(21),
              ),
              elevation: 8,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
                child: Align(
                  alignment: Alignment.topRight,
                  child: image.liked_by_user
                      ? InkWell(
                          onTap: onUnlikedTap,
                          borderRadius: BorderRadius.circular(5),
                          child: Container(
                            margin: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                            ),
                            padding: const EdgeInsets.all(2),
                            child: Icon(
                              Icons.favorite,
                              color: Colors.deepOrange.shade900,
                              size: 21,
                            ),
                          ),
                        )
                      : const SizedBox(
                          height: 0,
                          width: 0,
                        ),
                ),
              ),
            ),
            // ValueListenableBuilder(
            //   valueListenable: widget.likedImageIdValueNotifier,
            //   builder: (context, isItLikedImage, child) =>
            //       isItLikedImage == widget.image.id
            //           ? Align(
            //               alignment: Alignment.center,
            //               child: OpacityAnimatedIcon(
            //                 color: Colors.red.shade900,
            //                 notifier: widget.likedOpacityValueNotifier,
            //                 icon: Icons.favorite_rounded,
            //                 size: 21.0,
            //               ),
            //             )
            //           : const SizedBox(),
            // ),
          ],
        ),
        placeholder: (context, url) => Card(
          margin: const EdgeInsets.all(8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(21),
          ),
          elevation: 8,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              gradient: AppColors.silverPlaceholderGradient,
            ),
          ),
        ),
        errorWidget: (context, url, error) => Card(
          margin: const EdgeInsets.all(8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(21),
          ),
          elevation: 8,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              gradient: AppColors.silverPlaceholderGradient,
            ),
            child: ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (bounds) => AppColors.linearGradientPink,
              child: const Icon(
                Icons.photo_rounded,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
