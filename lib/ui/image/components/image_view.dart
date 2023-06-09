import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../bloc/auth_bloc/auth_bloc.dart';
import '../../../bloc/user_bloc/user_bloc.dart';
import '../../../core/colors.dart';
import '../../../core/fonts.dart';
import '../../../core/utils.dart';
import '../../../data/models/unsplash_image/unsplash_image.dart';
import '../../common/animated_icon.dart';
import '../../common/circular_loader.dart';
import '../state/image_cubit.dart';
import 'default_like.dart';
import 'image_actions_popup.dart';

class ImageView extends StatelessWidget {
  final UnsplashImage image;
  final ValueNotifier<bool> isSharingOrDownloadingValueNotifier;
  final ValueNotifier<double> likedOpacityValueNotifier;
  final bool isFromFavorite;
  const ImageView({
    super.key,
    required this.image,
    required this.isSharingOrDownloadingValueNotifier,
    required this.likedOpacityValueNotifier,
    required this.isFromFavorite,
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
              children: [
                CachedNetworkImage(
                  key: const Key('image'),
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
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              RichText(
                overflow: TextOverflow.visible,
                text: TextSpan(
                  text: 'Photo by ',
                  style: AppFonts.smallStyle,
                  children: [
                    TextSpan(
                      text: image.user.name,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => AppUtils().openUrl(
                              link: image.user.links.html ?? '',
                            ),
                      style: AppFonts.smallStyle.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: ' on ',
                      style: AppFonts.smallStyle,
                    ),
                    TextSpan(
                      text: 'Unsplash',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => AppUtils().openUrl(
                              link: 'https://unsplash.com/',
                            ),
                      style: AppFonts.smallStyle.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: isFromFavorite
                        ? () {
                            context.read<UserBloc>().add(
                                  UserGetUserEvent(
                                    username: image.user.username,
                                  ),
                                );
                            context.go(
                              '/home/favorite/image/user_profile_from_fav',
                            );
                          }
                        : () {
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
                  DefaultLike(
                      authState: authState,
                      image: image,
                      likedOpacityValueNotifier: likedOpacityValueNotifier),
                  ImageActionsPopup(
                      image: image,
                      isSharingOrDownloadingValueNotifier:
                          isSharingOrDownloadingValueNotifier),
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
