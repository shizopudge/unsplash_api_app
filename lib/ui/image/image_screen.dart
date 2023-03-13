import 'dart:ui';

import 'package:animated_app/bloc/user_bloc/user_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rive/rive.dart';

import '../../bloc/image_bloc/image_bloc.dart';
import '../../core/colors.dart';
import '../../core/fonts.dart';
import '../../data/models/unsplash_image/unsplash_image.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ImageState state = context.watch<ImageBloc>().state;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(
              Icons.share_rounded,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(
              Icons.download,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 10),
              ),
            ),
            const RiveAnimation.asset(
              "assets/bg.riv",
              fit: BoxFit.cover,
            ),
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                child: const SizedBox(),
              ),
            ),
            state.when(
              initial: () => Center(
                child: SizedBox(
                  height: screenHeight * .3,
                  child: const RiveAnimation.asset(
                    'assets/loading.riv',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              loading: () => Center(
                child: SizedBox(
                  height: screenHeight * .3,
                  child: const RiveAnimation.asset(
                    'assets/loading.riv',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              loaded: (image) => ImageView(image: image),
              error: (error) => Center(
                child: Text(
                  error,
                  textAlign: TextAlign.center,
                  style: AppFonts.defaultStyle.copyWith(
                    foreground: Paint()..shader = AppColors.linearGradientRed,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageView extends StatelessWidget {
  final UnsplashImage image;
  const ImageView({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: CachedNetworkImage(
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
                shaderCallback: (bounds) => AppColors.linearGradientPink,
                child: const Icon(
                  Icons.photo_rounded,
                  size: 100,
                ),
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      context.read<UserBloc>().add(
                            UserGetUserEvent(
                              username: image.user.username,
                            ),
                          );
                      context.go(
                        '/home/image/user_profile',
                      );
                    },
                    borderRadius: BorderRadius.circular(21),
                    child: CachedNetworkImage(
                      imageUrl: image.user.profile_image.medium,
                      imageBuilder: (context, imageProvider) => CircleAvatar(
                        backgroundColor: Colors.grey.shade100,
                        backgroundImage: imageProvider,
                        radius: 32,
                      ),
                      placeholder: (context, url) => ShaderMask(
                        blendMode: BlendMode.srcIn,
                        shaderCallback: (bounds) => AppColors.linearGradientRed,
                        child: const CircleAvatar(
                          radius: 32,
                        ),
                      ),
                      errorWidget: (context, url, error) => CircleAvatar(
                        radius: 32,
                        child: ShaderMask(
                          blendMode: BlendMode.srcIn,
                          shaderCallback: (bounds) =>
                              AppColors.linearGradientRed,
                          child: const Icon(
                            Icons.photo_rounded,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          image.user.name,
                          overflow: TextOverflow.ellipsis,
                          style: AppFonts.defaultStyle,
                        ),
                        Text(
                          image.user.username,
                          overflow: TextOverflow.ellipsis,
                          style: AppFonts.defaultStyle.copyWith(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              if (image.description != null)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    image.description ?? '',
                    overflow: TextOverflow.visible,
                    style: AppFonts.defaultStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Likes',
                                style: AppFonts.defaultStyle,
                              ),
                              Text(
                                image.likes.toString(),
                                style: AppFonts.defaultStyle.copyWith(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Downloads',
                                style: AppFonts.defaultStyle,
                              ),
                              Text(
                                image.downloads.toString(),
                                style: AppFonts.defaultStyle.copyWith(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (image.liked_by_user)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.red.shade900,
                          size: 32,
                        ),
                      ),
                    )
                  else
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_outline,
                          color: Colors.red.shade900,
                          size: 32,
                        ),
                      ),
                    ),
                ],
              ),
              if (image.location?.city != null &&
                  image.location?.country != null)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        '${image.location?.city}, ${image.location?.country}',
                        style: AppFonts.defaultStyle.copyWith(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
