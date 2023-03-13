import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rive/rive.dart';

import '../../bloc/user_bloc/user_bloc.dart';
import '../../core/colors.dart';
import '../../core/fonts.dart';
import 'components/social_widget.dart';
import 'components/stat_widget.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final UserState state = context.watch<UserBloc>().state;
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
      ),
      body: Stack(
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
            loaded: (user) => SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CachedNetworkImage(
                    imageUrl: user.profile_image.large,
                    imageBuilder: (context, imageProvider) => CircleAvatar(
                      backgroundColor: Colors.grey.shade100,
                      backgroundImage: imageProvider,
                      radius: 90,
                    ),
                    placeholder: (context, url) => ShaderMask(
                      blendMode: BlendMode.srcIn,
                      shaderCallback: (bounds) => AppColors.linearGradientRed,
                      child: const CircleAvatar(
                        radius: 90,
                      ),
                    ),
                    errorWidget: (context, url, error) => CircleAvatar(
                      radius: 90,
                      child: ShaderMask(
                        blendMode: BlendMode.srcIn,
                        shaderCallback: (bounds) => AppColors.linearGradientRed,
                        child: const Icon(
                          Icons.photo_rounded,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            user.username,
                            style: AppFonts.headerStyle.copyWith(
                              foreground: Paint()
                                ..shader = AppColors.linearGradientPink,
                            ),
                          ),
                        ),
                        Text(
                          user.name,
                          style: AppFonts.defaultStyle.copyWith(
                            color: Colors.grey.shade800,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.share,
                                  color: Colors.blue.shade900,
                                  size: 45,
                                ),
                              ),
                              if (user.followed_by_user)
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite,
                                    color: Colors.red.shade900,
                                    size: 45,
                                  ),
                                )
                              else
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite_outline,
                                    color: Colors.red.shade900,
                                    size: 45,
                                  ),
                                ),
                            ],
                          ),
                        ),
                        if (user.bio != null)
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              user.bio ?? '',
                              textAlign: TextAlign.justify,
                              style: AppFonts.defaultStyle.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        if (user.location != null)
                          Text(
                            user.location ?? '',
                            style: AppFonts.defaultStyle.copyWith(
                              color: Colors.grey.shade800,
                            ),
                          ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            children: [
                              StatWidget(
                                icon: Icons.favorite,
                                text: user.total_likes.toString(),
                                color: Colors.red.shade900,
                              ),
                              StatWidget(
                                icon: Icons.download,
                                text: user.downloads.toString(),
                                color: Colors.lightGreen.shade900,
                              ),
                              StatWidget(
                                icon: Icons.people,
                                text: user.followers_count.toString(),
                                color: Colors.blue.shade900,
                              ),
                              StatWidget(
                                icon: Icons.collections,
                                text: user.total_photos.toString(),
                                color: Colors.purple.shade900,
                              ),
                            ],
                          ),
                        ),
                        if (user.social.instagram_username != null ||
                            user.social.twitter_username != null)
                          Wrap(
                            alignment: WrapAlignment.center,
                            children: [
                              if (user.social.instagram_username != null)
                                SocialWidget(
                                  imagePath: 'assets/icons/instagram.png',
                                  imageColor: Colors.blue.shade900,
                                  text: user.social.instagram_username ?? '',
                                ),
                              if (user.social.twitter_username != null)
                                SocialWidget(
                                  imagePath: 'assets/icons/twitter.png',
                                  imageColor: Colors.blue.shade900,
                                  text: user.social.twitter_username ?? '',
                                ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
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
    );
  }
}
