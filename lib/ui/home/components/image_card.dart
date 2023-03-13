import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../bloc/image_bloc/image_bloc.dart';
import '../../../core/colors.dart';
import '../../../data/models/unsplash_image/unsplash_image.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    super.key,
    required this.image,
    required this.index,
  });

  final UnsplashImage image;
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(21),
      onTap: () {
        context.go(
          '/home/image',
        );
        context.read<ImageBloc>().add(
              ImageEvent.getOneImage(
                id: image.id,
              ),
            );
      },
      child: CachedNetworkImage(
        imageUrl: image.urls.regular,
        imageBuilder: (context, imageProvider) => Card(
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
            // child: Align(
            //   alignment: Alignment.topRight,
            //   child: Container(
            //     margin: const EdgeInsets.all(8),
            //     width: 25,
            //     height: 25,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(12),
            //       color: Colors.white,
            //     ),
            //     child: IconButton(
            //       onPressed: () {},
            //       icon: image.liked_by_user
            //           ? Icon(
            //               Icons.favorite,
            //               color: Colors.deepOrange.shade900,
            //               size: 10,
            //             )
            //           : const Icon(
            //               Icons.favorite_outline,
            //               color: Colors.black,
            //               size: 10,
            //             ),
            //     ),
            //   ),
            // ),
          ),
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
              gradient: AppColors.placeholderGradient,
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
