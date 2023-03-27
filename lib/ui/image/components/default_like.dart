import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/auth_bloc/auth_bloc.dart';
import '../../../bloc/image_bloc/image_bloc.dart';
import '../../../data/models/unsplash_image/unsplash_image.dart';
import '../../common/auth_suggestion_dialog.dart';

class DefaultLike extends StatelessWidget {
  const DefaultLike({
    super.key,
    required this.authState,
    required this.image,
    required this.likedOpacityValueNotifier,
  });

  final AuthState authState;
  final UnsplashImage image;
  final ValueNotifier<double> likedOpacityValueNotifier;

  @override
  Widget build(BuildContext context) {
    if (image.liked_by_user) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
          onPressed: () {
            if (authState is AuthAuthorizedState) {
              context.read<ImageBloc>().add(
                    ImageEvent.unlikeImage(
                      image: image,
                    ),
                  );
            } else {
              showDialog(
                context: context,
                builder: (context) => const AuthSuggestionDialog(),
              );
            }
          },
          icon: Icon(
            Icons.favorite,
            color: Colors.red.shade900,
            size: 28,
          ),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
          onPressed: () {
            if (authState is AuthAuthorizedState) {
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
            } else {
              showDialog(
                context: context,
                builder: (context) => const AuthSuggestionDialog(),
              );
            }
          },
          icon: Icon(
            Icons.favorite_outline,
            color: Colors.red.shade900,
            size: 32,
          ),
        ),
      );
    }
  }
}
