import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import '../../../core/colors.dart';
import '../../common/circular_loader.dart';

class FullScreenImage extends StatefulWidget {
  final String? image;
  const FullScreenImage({
    super.key,
    required this.image,
  });

  @override
  State<FullScreenImage> createState() => _FullScreenImageState();
}

class _FullScreenImageState extends State<FullScreenImage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topRight,
        children: [
          CachedNetworkImage(
            key: const Key('image'),
            imageUrl: widget.image ?? '',
            imageBuilder: (context, imageProvider) => InteractiveViewer(
              child: Container(
                //? margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
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
                //? margin: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  gradient: AppColors.silverPlaceholderGradient,
                ),
                child: const CircularLoader(),
              ),
            ),
            errorWidget: (context, url, error) => Container(
              width: double.infinity,
              //? margin: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                gradient: AppColors.silverPlaceholderGradient,
              ),
              child: ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bounds) => AppColors.linearGradientPink,
                child: const Icon(
                  Icons.photo_rounded,
                  size: 100,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => context.pop(),
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(4),
              child: const Icon(
                Icons.fullscreen_exit_rounded,
                color: Colors.black,
                size: 21,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
