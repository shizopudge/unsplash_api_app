import 'package:animated_app/core/utils.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rive/rive.dart';

import '../../../bloc/auth_bloc/auth_bloc.dart';
import '../../../bloc/image_bloc/image_bloc.dart';
import '../../../bloc/user_bloc/user_bloc.dart';
import '../../../core/colors.dart';
import '../../../core/fonts.dart';
import '../../../data/models/unsplash_image/unsplash_image.dart';
import '../state/image_cubit.dart';

class ImageView extends StatelessWidget {
  final UnsplashImage image;
  final ValueNotifier<bool> isSharingOrDownloadingValueNotifier;
  const ImageView({
    super.key,
    required this.image,
    required this.isSharingOrDownloadingValueNotifier,
  });

  @override
  Widget build(BuildContext context) {
    final AuthState authState = context.watch<AuthBloc>().state;
    return Column(
      children: [
        Expanded(
          child: InkWell(
            onTap: () => context.read<ImageCubit>().isImageBig(true),
            borderRadius: BorderRadius.circular(21),
            child: Stack(
              alignment: Alignment.topLeft,
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
                                style: AppFonts.defaultStyle
                                    .copyWith(fontSize: 16),
                              ),
                              Text(
                                image.likes.toString(),
                                style: AppFonts.smallStyle.copyWith(
                                  color: Colors.grey,
                                  fontSize: 14,
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
                                style: AppFonts.defaultStyle
                                    .copyWith(fontSize: 16),
                              ),
                              Text(
                                image.downloads.toString(),
                                style: AppFonts.smallStyle.copyWith(
                                  color: Colors.grey,
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
                        onPressed: () {
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
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.red.shade900,
                          size: 28,
                        ),
                      ),
                    )
                  else
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        onPressed: () {
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
                        icon: Icon(
                          Icons.favorite_outline,
                          color: Colors.red.shade900,
                          size: 32,
                        ),
                      ),
                    ),
                  PopupMenuButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                    ),
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        padding: const EdgeInsets.all(8),
                        onTap: () => AppUtils()
                            .linkShare(htmlLink: image.links.html ?? ''),
                        child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Link',
                                style: AppFonts.smallStyle,
                              ),
                              const Icon(
                                Icons.ios_share_rounded,
                                size: 28,
                              ),
                            ],
                          ),
                        ),
                      ),
                      PopupMenuItem(
                        padding: const EdgeInsets.all(8),
                        onTap: () {
                          isSharingOrDownloadingValueNotifier.value = true;
                          AppUtils()
                              .picShare(imageLink: image.links.download ?? '')
                              .whenComplete(
                                () => isSharingOrDownloadingValueNotifier
                                    .value = false,
                              );
                        },
                        child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Picture',
                                style: AppFonts.smallStyle,
                              ),
                              const Icon(
                                Icons.share,
                                size: 28,
                              ),
                            ],
                          ),
                        ),
                      ),
                      PopupMenuItem(
                        onTap: () {
                          isSharingOrDownloadingValueNotifier.value = true;
                          AppUtils()
                              .savePictureToGallery(
                                  downloadLink: image.links.download ?? '')
                              .whenComplete(
                            () {
                              isSharingOrDownloadingValueNotifier.value = false;
                              ScaffoldMessenger.of(context)
                                ..hideCurrentSnackBar()
                                ..showSnackBar(
                                  SnackBar(
                                    padding: const EdgeInsets.all(8),
                                    content: Center(
                                      child: Text(
                                        'Image successfully saved into gallery',
                                        style: AppFonts.smallStyle,
                                      ),
                                    ),
                                  ),
                                );
                            },
                          );
                        },
                        padding: const EdgeInsets.all(8),
                        child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Download',
                                style: AppFonts.smallStyle,
                              ),
                              const Icon(
                                Icons.download,
                                size: 28,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
